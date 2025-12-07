void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV8()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV8()();
  static Catalog.Resource.LLM.DraftModel.PlannerV8()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.DraftModel.SuperAutofillMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SuperAutofillMultimodal(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTablesTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerTablesTransform()();
  static Catalog.Resource.LLM.DraftModel.ServerTablesTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(57);
}

uint64_t static Catalog.Resource.LLM.Adapter.FinancialInsights()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FinancialInsights(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.Animation()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Animation(variant:)(v1);
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

uint64_t sub_18E2281F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E228208()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E228288()
{
  sub_18E1C575C();
  sub_18E1D625C(v2, v3);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v0 + 40);
  sub_18E1C5040(v1 + 2, v10);
  v11(v10);
  sub_18E201EA0();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E232E1C(v12);
  sub_18E1E2238();

  if (v10)
  {
LABEL_10:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2F81FC();
  v16 = v1[5];
  v15 = v1[6];
  sub_18E1C5040(v1 + 2, v16);
  v17(v16);
  sub_18E1D0274();
  sub_18E216A24(v18, 0x800000018E465FF0, v19);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388();
  if (v20)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v16 = v55;
  }

  *(v16 + 16) = v15;
  sub_18E1CFBC0();
  v22 = sub_18E1CF778(v21);
  v23(v22);
  sub_18E224178();
LABEL_11:
  v24 = v1[10];
  sub_18E1C5040(v1 + 7, v24);
  v25(v24);
  sub_18E201EA0();
  if (v14 && v27 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E232E1C(v26);
    sub_18E1CF9C4();

    if ((v24 & 1) == 0)
    {
      v29 = v1[10];
      sub_18E1C5040(v1 + 7, v29);
      v30(v29);
      sub_18E1CF6A4();
      sub_18E22362C();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v16 = v56;
      }

      sub_18E2F79B8();
      if (v20)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v16 = v57;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v31();
    }
  }

  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v16 + 16))
  {
    sub_18E2F85FC();
    sub_18E2F85E4();
    if (v5)
    {

      __break(1u);
      return;
    }

    sub_18E2F85CC();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v32)
  {
    v33 = sub_18E1E3DDC();
    v34(v33);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v35 = sub_18E44E83C();
    sub_18E1C95EC(v35, qword_1ED6A9858);
    v36 = sub_18E223FF0();
    v37(v36);
    v38 = sub_18E44E80C();
    v39 = sub_18E44EE0C();
    if (sub_18E201860(v39))
    {
      v40 = sub_18E2342D4();
      v41 = sub_18E2202BC();
      sub_18E2F7E00(v41);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v42 = sub_18E44F39C();
      sub_18E2F86D4(v42, v43);
      sub_18E233674();
      sub_18E220B30();
      v44 = sub_18E223294();
      v45(v44);
      v46 = sub_18E1C5BFC();
      sub_18E1C9624(v46, v47, v48);
      sub_18E233674();
      *(v40 + 14) = v7;
      sub_18E1EA5F8(&dword_18E1C1000, v49, v50, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v51 = sub_18E1D1964();
      MEMORY[0x193ACD400](v51);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v52 = sub_18E223294();
      v53(v52);
    }

    sub_18E201938();
    v54 = sub_18E1E3DF8();
    v7(v54);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

uint64_t sub_18E228724@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 80) = 3;
  *(result + 88) = a2;
  *(result + 96) = v2;
  *(result + 104) = 5;
  *(result + 112) = a2;
  *(result + 120) = v2;
  return result;
}

uint64_t sub_18E228810()
{
}

double sub_18E22887C(double a1)
{

  return sub_18E3CF2CC(2, a1);
}

uint64_t sub_18E2288AC()
{

  return sub_18E44E28C();
}

void sub_18E2288EC()
{

  JUMPOUT(0x193ACC300);
}

unint64_t sub_18E228910()
{
  result = qword_1EABE0528;
  if (!qword_1EABE0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0528);
  }

  return result;
}

uint64_t sub_18E22897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return a3;
}

unint64_t sub_18E228994()
{

  return sub_18E2AE554();
}

void sub_18E2289AC()
{

  JUMPOUT(0x193ACC300);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.OpenEndedTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.BaseAdapter()();
  sub_18E246F88();
  sub_18E1E67A0(61);
}

void static Catalog.Resource.LLM.Adapter.BaseAdapter()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponse()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponse()();
  sub_18E246F88();
  sub_18E1E67A0(71);
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponse()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponse(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponseV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponseV2()();
  sub_18E246F88();
  sub_18E1E67A0(74);
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponseV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponseV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2239AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosCommon()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosCommon()();
  static Catalog.Resource.LLM.DraftModel.PhotosCommon()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosCommon()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosCommon(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosCommon()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosCommon(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCuration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCuration()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCuration()();
  sub_18E1C7F10();
  sub_18E1E67A0(71);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCuration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCuration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCuration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCuration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E228208();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(74);
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2239AC();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006CLL);
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits()();
  sub_18E1C7F10();
  sub_18E1E67A0(70);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAED8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000068);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(73);
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAFF4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3()();
  sub_18E1C7F10();
  sub_18E1E67A0(73);
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAFF4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding()();
  sub_18E1C7F10();
  sub_18E1E67A0(76);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000068);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006ELL);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(79);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000071);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3()();
  sub_18E1C7F10();
  sub_18E1E67A0(79);
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAF50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000071);
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller()();
  sub_18E1C7F10();
  sub_18E1E67A0(68);
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2239AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E228208();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV3()();
  static Catalog.Resource.LLM.DraftModel.PlannerV3()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV7()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV7(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV8(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV9()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV9()();
  static Catalog.Resource.LLM.DraftModel.PlannerV9()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProfessionalTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

void static Catalog.Resource.LLM.Adapter.ServerProfessionalTone()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerProfessionalTone(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProofreadingReview()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerProofreadingReview()();
  static Catalog.Resource.LLM.DraftModel.ServerProofreadingReview()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerProofreadingReview(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeList()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.RemindersAutoCategorizeList()();
  static Catalog.Resource.LLM.DraftModel.RemindersAutoCategorizeList()();
  sub_18E1C7F10();
  sub_18E1E67A0(72);
}

uint64_t static Catalog.Resource.LLM.DraftModel.RemindersAutoCategorizeList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.RemindersAutoCategorizeList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006ALL);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGeneration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGeneration()();
  static Catalog.Resource.LLM.DraftModel.ResponseGeneration()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGeneration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGeneration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGeneration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGeneration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV2()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

void static Catalog.Resource.LLM.Adapter.ResponseGenerationV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV3()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV3()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

void static Catalog.Resource.LLM.Adapter.ResponseGenerationV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.LLM.Adapter.ResponseGenerationV7()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV7(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingServer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAFF4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction()();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(65);
}

uint64_t static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.STXMultimodal()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.STXMultimodal()();
  static Catalog.Resource.LLM.DraftModel.STXMultimodal()();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.STXMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.STXMultimodal(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3D84();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SuperAutofillMultimodal()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.SuperAutofillMultimodal()();
  static Catalog.Resource.LLM.DraftModel.SuperAutofillMultimodal()();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(66);
}

void static Catalog.Resource.LLM.Adapter.ServerTablesTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerTablesTransform(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.ServerTablesTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerTablesTransform(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SummarizationTextSummarizer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.SummarizationTextSummarizer()();
  static Catalog.Resource.LLM.DraftModel.SummarizationTextSummarizer()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.SummarizationTextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SummarizationTextSummarizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.VisualIntelligence()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.BaseAdapter()();
  sub_18E246F88();
  sub_18E1E67A0(60);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FinancialInsights()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.FinancialInsights()();
  sub_18E246F88();
  sub_18E1DD330();
}

void static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t sub_18E22EA6C()
{

  return sub_18E44E50C();
}

unint64_t sub_18E22EAB0()
{
  result = qword_1EABE0BD0;
  if (!qword_1EABE0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0BD0);
  }

  return result;
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.DiffusionBase()()
{
  sub_18E1E1FB0();
  sub_18E2430A0();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    v2 = sub_18E223A10();
    MEMORY[0x193ACC300](v2);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1CD52C("Fatal error", v3, v4, v5, v6, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  else
  {
    sub_18E221904("com.apple.fm.visual.image_diffusion_v1.base");
  }
}

uint64_t static Catalog.Resource.Diffusion.Adapter.Emoji()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Emoji(variant:)(v1);
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

uint64_t static Catalog.Resource.Diffusion.Adapter.Illustration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Illustration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E243360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E224160();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221D4C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.Refiner()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Refiner(variant:)(v1, v2);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Diffusion.Adapter.Sketch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Sketch(variant:)(v1);
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

uint64_t static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji(variant:)(v1);
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

uint64_t static Catalog.Resource.Diffusion.Adapter.Scribble()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Adapter.Scribble(variant:)(v1);
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

uint64_t static Catalog.Resource.Tokenizer.NLRouterTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.NLRouterTokenizer(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Model.NLRouterBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.NLRouterBase(variant:)(v1);
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

uint64_t static Catalog.Resource.Tokenizer.ChatGPTTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.ChatGPTTokenizer(variant:)(v1);
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

uint64_t static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin(variant:)(v1);
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

unint64_t sub_18E231008()
{
  result = qword_1EABE0210;
  if (!qword_1EABE0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0210);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin(variant:)(v1);
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

unint64_t sub_18E23144C()
{
  result = qword_1EABE0660;
  if (!qword_1EABE0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0660);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain(variant:)(v1);
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

uint64_t static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain(variant:)(v1);
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

uint64_t static Catalog.Resource.ModelConfigurationReplacement.All()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v1, v2);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_18E2316AC()
{
  result = qword_1EABE0640;
  if (!qword_1EABE0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0640);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.Overrides.TokenInputDenyList.TokenInputDenyListTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(37);
}

unint64_t sub_18E2319DC()
{
  result = qword_1EABE0620;
  if (!qword_1EABE0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0620);
  }

  return result;
}

uint64_t static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221B50();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.Overrides.TokenOutputDenyList.TokenOutputDenyListTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(38);
}

unint64_t sub_18E231D0C()
{
  result = qword_1EABE0150;
  if (!qword_1EABE0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0150);
  }

  return result;
}

void sub_18E231D60()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      v6 = sub_18E2706EC(&qword_1EABE12E8, &qword_18E4E2690);
      v7 = sub_18E1CA780(v6);
      sub_18E1D61B8(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_18E1CB0D4();
        sub_18E24E604(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = sub_18E2706EC(&qword_1EABE2AE8, &unk_18E4AF6D0);
    sub_18E1CFC20(v9);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_18E231EE8(uint64_t a1)
{
  v4 = sub_18E1C2A68(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18E3F656C(v4, 1, v5);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_18E1E1018();
  if (v8 != v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_18E1CF9A0();
  sub_18E2706EC(v9, v10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return;
  }

  v11 = *(v7 + 16);
  v6 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v6)
  {
    *(v7 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_18E231FB8()
{
  sub_18E1C575C();
  sub_18E223ED8(v4, v5);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v11 = *(v0 + 40);
  sub_18E1C5040((v3 + 16), v11);
  v12(v11);
  sub_18E235A6C();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E1D5EF4();
  sub_18E223B20(v15, v16, v17);
  sub_18E1E2238();

  if (v1)
  {
LABEL_10:
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v18 = *(v3 + 40);
  sub_18E1C5040((v3 + 16), v18);
  v19(v18);
  sub_18E1D0274();
  sub_18E2F8058();
  sub_18E1E2414(22, v20, v21);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E223F94();
  if (v22)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v18 = v44;
  }

  sub_18E1CA184();
  sub_18E1EA5D4();
  v23();
LABEL_11:
  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v18 + 16))
  {
    sub_18E2F87C4();
    sub_18E2F87AC();
    if (v7)
    {

      __break(1u);
      return;
    }

    sub_18E2F8794();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v24)
  {
    v25 = sub_18E1CF4F4();
    v26(v25);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v27 = sub_18E44E83C();
    sub_18E1C95EC(v27, qword_1ED6A9858);
    v28 = sub_18E216A78();
    (v2)(v28);
    v29 = sub_18E44E80C();
    v30 = sub_18E44EE0C();
    if (sub_18E2333E4(v30))
    {
      sub_18E2342D4();
      v31 = sub_18E220C80();
      sub_18E2F7F74(v31);
      sub_18E2217B8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v32 = sub_18E44F39C();
      sub_18E2F86EC(v32, v33);
      sub_18E233674();
      sub_18E243EAC();
      v34 = sub_18E209370();
      v35(v34);
      v36 = sub_18E1C5BFC();
      sub_18E1C9624(v36, v37, v38);
      sub_18E233674();
      *(v2 + 14) = v9;
      sub_18E1D81D8(&dword_18E1C1000, v39, v40, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E232B30();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v41 = sub_18E209370();
      v42(v41);
    }

    sub_18E2F877C();
    v43 = sub_18E1E3DF8();
    v9(v43);
  }

  sub_18E202D00();
  sub_18E1C5544();
}

void sub_18E23236C()
{
  sub_18E1C575C();
  v76 = v3;
  v75 = v4;
  v79 = v5;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  sub_18E44E38C();
  sub_18E1C4EAC();
  v80 = v14;
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v77 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v78 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v20 = v0[5];
  sub_18E1C5040(v0 + 2, v20);
  v22 = v21(v20);
  if (v22 == 0x636972656E6567 && v23 == 0xE700000000000000)
  {

    goto LABEL_10;
  }

  v25 = sub_18E223B20(v22, v23, 0x636972656E6567);

  if (v25)
  {
LABEL_10:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v74 = v12;
  v26 = v0[5];
  sub_18E1C5040(v0 + 2, v26);
  v27(v26);
  sub_18E1D0274();
  sub_18E216A24(v28, 0x800000018E450680, v29);

  sub_18E220AAC();
  sub_18E3EF9F0();
  v31 = v30;
  v32 = *(v30 + 16);
  if (v32 >= *(v30 + 24) >> 1)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v31 = v71;
  }

  *(v31 + 16) = v32 + 1;
  sub_18E220C1C();
  sub_18E1C6730();
  v35(v33 + v34 * v32, v19, v77);
  v12 = v74;
LABEL_11:
  sub_18E2F66D4((v0 + 7), v86, v9, v7);
  if (v86[3])
  {
    v79(v86, v83);
    v36 = v84;
    v37 = v85;
    sub_18E1C5040(v83, v84);
    v39 = v38(v36);
    if (v39 == 0x636972656E6567 && v40 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E223B20(v39, v40, 0x636972656E6567);
      sub_18E1E6A20();
      if ((v37 & 1) == 0)
      {
        v42 = v84;
        sub_18E1C5040(v83, v84);
        v43(v42);
        v44 = sub_18E1CF874();
        sub_18E2452D8(v44);
        sub_18E44E28C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v31 = v72;
        }

        v45 = *(v31 + 16);
        if (v45 >= *(v31 + 24) >> 1)
        {
          sub_18E3EF9F0();
          v31 = v73;
        }

        *(v31 + 16) = v45 + 1;
        sub_18E1E2708();
        v48(v31 + v46 + *(v47 + 40) * v45, v2, v77);
      }
    }

    sub_18E1C9934(v83);
  }

  else
  {
    sub_18E1E8F44(v86, v9, v7);
  }

  sub_18E44E37C();
  v50 = *v10;
  v49 = v10[1];

  v51 = sub_18E1D5F00();
  MEMORY[0x193ACBAD0](v51);
  if (*(v31 + 16))
  {
    v83[0] = v31;

    sub_18E2EEDB8(v83);

    sub_18E44E2FC();
  }

  else
  {
  }

  v52 = sub_18E44E36C();
  if (v53)
  {
    v54 = v52;
    v55 = v53;
    (*(v80 + 8))(v1, v81);
    v50 = v54;
    v49 = v55;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v56 = sub_18E44E83C();
    sub_18E1C95EC(v56, qword_1ED6A9858);
    v57 = sub_18E2F7CA0();
    v75(v57);
    v58 = sub_18E44E80C();
    v59 = sub_18E44EE0C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = sub_18E2342D4();
      v61 = sub_18E2202BC();
      v74 = v12;
      v82 = v61;
      *v60 = 136315394;
      sub_18E1E1B74(v61, v86);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v62 = sub_18E44F39C();
      v64 = sub_18E1C9624(v62, v63, &v82);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v65 = v83[0];

      v76(v83);
      v66 = sub_18E1E33F0();
      sub_18E1C9624(v66, v67, v68);
      sub_18E2F7964();

      *(v60 + 14) = v65;
      _os_log_impl(&dword_18E1C1000, v58, v59, "Unable to construct resource bundle identifier from %s. Falling back to %s", v60, 0x16u);
      swift_arrayDestroy();
      v12 = v74;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v76(v83);
    }

    v69 = *(v80 + 8);

    v70 = sub_18E202CF4();
    v69(v70);
  }

  *v12 = v50;
  v12[1] = v49;
  sub_18E1C5544();
}

void sub_18E2329C8()
{

  JUMPOUT(0x193ACC300);
}

void InferenceProvider.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&unk_1EABE3328, &qword_18E4B0EB8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C57AC();
  v2 = sub_18E1E2898();
  sub_18E1DD34C(v2, v3);
  sub_18E1EA49C();
  sub_18E1E2A60();
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E1C5774();
    sub_18E1CF790();
    sub_18E44F2CC();
  }

  v4 = sub_18E1D4BF4();
  v5(v4);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

uint64_t sub_18E232B30()
{

  return swift_arrayDestroy();
}

void AssetBackedDiffusionAdapterBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v59, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v60);
  sub_18E1E3BD4();
  v23 = sub_18E233268(v20, v21, v22);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v242 || !*(v242 + 16))
  {
    v55 = sub_18E2D0B44();
    v56 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v55);
    sub_18E1E6860(v56, v57);
    sub_18E221DDC(v58, 41);

LABEL_7:

    sub_18E1FE044(&v241);
    goto LABEL_8;
  }

  v31 = sub_18E223A20(v23, v24, v25, v26, v27, v28, v29, v30, v61, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v241);
  sub_18E1C973C(v31, v32, v33, v34, v35, v36, v37, v38, v62, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167);
  v47 = sub_18E1D5E70(v39, v40, v41, v42, v43, v44, v45, v46, v63, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v241);
  sub_18E1D4410(v47, v48, v49, v50, v51, v52, v53, v54, v64);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

unint64_t sub_18E232C4C()
{
  result = qword_1ED6A8F38;
  if (!qword_1ED6A8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F38);
  }

  return result;
}

void sub_18E232CA0(int a1@<W8>)
{
  v1[74] = a1;
  v1[76] = a1;
  v1[78] = a1;
}

uint64_t sub_18E232CB0()
{

  return sub_18E44E50C();
}

void sub_18E232CD0()
{
  *(v2 + 32) = v0;
  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
}

void sub_18E232CE0()
{
}

unint64_t sub_18E232D2C()
{
  result = qword_1EABE0580;
  if (!qword_1EABE0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0580);
  }

  return result;
}

unint64_t sub_18E232D9C()
{
  result = qword_1ED6A9098;
  if (!qword_1ED6A9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9098);
  }

  return result;
}

uint64_t sub_18E232E1C(uint64_t a1)
{

  return sub_18E44F3CC();
}

void sub_18E232E48()
{
  *(v0 + 96) = 150000;
  *(v0 + 104) = 0;
  *(v0 + 108) = 0;
}

uint64_t sub_18E232E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18E1E8C38(v4, va);
}

uint64_t sub_18E232E84(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

double sub_18E232EB8(uint64_t a1)
{

  return sub_18E3CFB64(a1, 0, 2);
}

uint64_t sub_18E232ED8(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t sub_18E232EFC()
{

  return sub_18E44F4AC();
}

uint64_t sub_18E232F14(uint64_t result)
{
  *(result + 104) = 3;
  *(result + 112) = 841888049;
  *(result + 120) = v1;
  return result;
}

id sub_18E232F2C(id a1, SEL a2)
{

  return [a1 a2];
}

void *sub_18E232F4C()
{

  return memcpy(((v0 + 2440) | 7), (v0 + 1920), 0xB9uLL);
}

unint64_t sub_18E232F84()
{
  result = qword_1EABE0260;
  if (!qword_1EABE0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0260);
  }

  return result;
}

uint64_t sub_18E232FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_18E232FF4()
{

  return swift_unknownObjectRelease();
}

__n128 sub_18E233024(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void *sub_18E233040()
{

  return memcpy((v0 + 696), (v0 + 1128), 0xD8uLL);
}

void AssetSubscriptionInformation.encode(to:)()
{
  sub_18E1C62A0();
  v2 = sub_18E2706EC(&qword_1EABE33A0, &qword_18E4B0F18);
  sub_18E1C4EAC();
  v4 = v3;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C57AC();
  v6 = sub_18E1C89D0();
  sub_18E1DD34C(v6, v7);
  sub_18E1FF21C();
  sub_18E1E2A60();
  sub_18E44F4EC();
  sub_18E1E26FC();
  sub_18E44F31C();
  if (!v0)
  {
    sub_18E224E3C();
    sub_18E1CFB6C();
    sub_18E44F31C();
    sub_18E1CFB6C();
    sub_18E44F31C();
    sub_18E1CFB6C();
    sub_18E44F2EC();
    sub_18E23340C();
    sub_18E1CFB6C();
    sub_18E44F2FC();
  }

  (*(v4 + 8))(v1, v2);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

uint64_t sub_18E233268(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1D45EC(0xD000000000000011, a2, a3);
}

uint64_t sub_18E233290()
{
  v1 = *&STACK[0x450];
  *&STACK[0x560] = *&STACK[0x440];
  *&STACK[0x570] = v1;
  LOBYTE(STACK[0x580]) = STACK[0x460];

  return sub_18E292124(&STACK[0x560]);
}

uint64_t sub_18E2332CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

void sub_18E2332FC()
{
  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v2;
  *(v5 - 72) = *(v4 + 16);
  v0[2] = v4 + 32;
}

uint64_t sub_18E233330(uint64_t a1)
{

  return sub_18E44F4DC();
}

void sub_18E233370()
{
  *(v0 + 16) = v2;
  v6 = v0 + 24 * v3;
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;
}

__n128 sub_18E23339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v10;
  result = a10;
  *(a1 + 40) = a10;
  return result;
}

void *sub_18E2333B0()
{

  return memcpy((v0 + 952), (v0 + 1384), 0xD8uLL);
}

BOOL sub_18E2333E4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_18E23340C()
{
  result = qword_1EABE04C0;
  if (!qword_1EABE04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE04C0);
  }

  return result;
}

void sub_18E233484()
{

  JUMPOUT(0x193ACC300);
}

void UseCase.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  sub_18E2706EC(&unk_1EABE34B0, &qword_18E4B0FD8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C57AC();
  sub_18E1C5628(v2);
  sub_18E200840();
  sub_18E1E2A60();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E233620();
  sub_18E1CF790();
  sub_18E44F35C();
  if (!v0)
  {
    sub_18E237084();
    sub_18E1CF790();
    sub_18E44F32C();
    sub_18E234018();
    sub_18E1CF790();
    sub_18E44F35C();
  }

  v4 = sub_18E1D4BF4();
  v5(v4);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

unint64_t sub_18E233620()
{
  result = qword_1EABE0850;
  if (!qword_1EABE0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0850);
  }

  return result;
}

uint64_t sub_18E233674()
{
}

void sub_18E23368C()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E2336BC()
{

  return memcpy((v0 + 480), (v0 + 8), 0xD8uLL);
}

uint64_t UseCaseIdentifier.encode(to:)(void *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE1240, &qword_18E49E5F0);
  sub_18E1C4EAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  sub_18E1E15F4(a1, a1[3]);
  sub_18E1FFB10();
  sub_18E44F4EC();
  v12 = v9;
  sub_18E2338D8();
  sub_18E44F35C();
  return (*(v5 + 8))(v8, v3);
}

void *sub_18E23386C()
{
  v0[1] = v1;

  return memcpy(v0 + 43, v0 + 70, 0xD8uLL);
}

double sub_18E2338A0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

unint64_t sub_18E2338D8()
{
  result = qword_1EABE0860;
  if (!qword_1EABE0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0860);
  }

  return result;
}

uint64_t sub_18E23392C(uint64_t result)
{
  *(v2 - 88) = result;
  *(v2 - 184) = v1;
  *(v2 - 176) = result;
  return result;
}

uint64_t static Catalog.Resource.ImageCuratedPrompts.All()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageCuratedPrompts.All(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235360();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_18E233B70@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18E1C6DAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void AssetBackedImageCuratedPromptsBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  v10 = memcpy(v7, v8, v9);
  v13 = sub_18E221924(v10, 0x800000018E49F080, v11, v12);
  if (v1)
  {

    sub_18E1FE044(v175);
  }

  else
  {
    v21 = sub_18E223A20(v13, v14, v15, v16, v17, v18, v19, v20, v45, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175[0]);
    sub_18E1C973C(v21, v22, v23, v24, v25, v26, v27, v28, v46, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125);
    v37 = sub_18E1D5E70(v29, v30, v31, v32, v33, v34, v35, v36, v47, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175[0]);
    sub_18E1D4410(v37, v38, v39, v40, v41, v42, v43, v44, v48);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

uint64_t sub_18E233C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_18E44E25C();
}

uint64_t sub_18E233C70()
{
}

unint64_t sub_18E233C8C()
{
  result = qword_1ED6A9510;
  if (!qword_1ED6A9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9510);
  }

  return result;
}

void static Catalog.Resource.ImageScaler.GenerativePlaygroundsUpscaler(variant:)()
{
  sub_18E1C62A0();
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69E7CC0];
  sub_18E1E69F4(v10, v5, v11, v12, v13, v14, v15, v16, v43, v10, v1, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v52, v53);
  sub_18E24530C();
  sub_18E1D44C0();
  sub_18E3CF698(2.92149628e-308, 0x2000000220002);
  sub_18E1E8758();
  sub_18E1E25D8();
  v17 = sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v18 = sub_18E1CF518(v17);
  v19 = sub_18E1CFF8C(v18, xmmword_18E49D9C0);
  v21 = sub_18E1CBE5C(v19, v20 | 0x322E0000u);
  *(v21 + 88) = 3288626;
  *(v21 + 96) = 0xE300000000000000;
  __src[0] = 0x6163536567616D49;
  __src[1] = 0xEB0000000072656CLL;
  __src[2] = 0xD00000000000001DLL;
  __src[3] = v0;
  __src[4] = 0xD000000000000028;
  __src[5] = v3;
  __src[6] = v9;
  LOBYTE(__src[7]) = 0;
  __src[8] = v9;
  __src[9] = 0;
  LOBYTE(__src[10]) = v4;
  sub_18E1C5BB4();
  __src[11] = v22;
  __src[12] = v23;
  __src[13] = v24 + 15;
  __src[14] = v2;
  sub_18E1E8A48(v25, v24 + 6);
  v8[3] = &type metadata for AssetBackedImageScalerBase;
  v8[4] = sub_18E233FB0();
  sub_18E1C86E0();
  v26 = swift_allocObject();
  *v8 = v26;
  sub_18E234338(v26, v27, v28, v29, v30, v31, v32, v33, v44, v46, v48, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v52, *(&v52 + 1));

  sub_18E1D45EC(0x6163536567616D49, 0xEB0000000072656CLL, v50);
  if (v49)
  {

    sub_18E1FE044(__src);
    sub_18E287190(v8);
  }

  else
  {
    memcpy(__dst, __src, 0xC1uLL);
    v34 = v47;
    sub_18E1D46CC(v47, v6);
    sub_18E234338(v35, v36, v37, v38, v39, v40, v41, v42, v45, v47, 0, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v52, *(&v52 + 1));
    memcpy(v26 + 2, v50, 0xC8uLL);
    v26[27] = v34;
    v26[28] = v6;
  }

  sub_18E1C6650();
}

void static Catalog.Resource.ImageScaler.GenerativePlaygroundsUpscaler()()
{
  sub_18E1C52FC();
  static Catalog.Resource.ImageScaler.GenerativePlaygroundsUpscaler(variant:)();
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

uint64_t sub_18E233F98()
{
}

unint64_t sub_18E233FB0()
{
  result = qword_1ED6A8F70;
  if (!qword_1ED6A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F70);
  }

  return result;
}

unint64_t sub_18E234018()
{
  result = qword_1EABE00F8;
  if (!qword_1EABE00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00F8);
  }

  return result;
}

void static Catalog.Resource.ImageFilter.Conditioning(variant:)()
{
  sub_18E1C62A0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  sub_18E1E69F4(v6, v4, v11, v12, v13, v14, v15, v16, v43, v46, v0, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v51[22], v51[23], v51[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v53, v54);
  sub_18E24530C();
  sub_18E1D44C0();
  v47 = v7;
  sub_18E3C6A40(v7, v5);
  sub_18E1E25D8();
  v17 = sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v18 = sub_18E1CF518(v17);
  v19 = sub_18E1CFF8C(v18, xmmword_18E49D9C0);
  sub_18E1C5854(v19, v20 | 0x322E0000u);
  __src[0] = 0x6C69466567616D49;
  __src[1] = 0xEB00000000726574;
  strcpy(&__src[2], "Conditioning");
  BYTE5(__src[3]) = 0;
  HIWORD(__src[3]) = -5120;
  sub_18E221790();
  __src[4] = v21 + 11;
  __src[5] = v2;
  __src[6] = v10;
  LOBYTE(__src[7]) = 0;
  __src[8] = v10;
  __src[9] = 0;
  LOBYTE(__src[10]) = v3;
  sub_18E1C5BB4();
  __src[11] = v22;
  __src[12] = v23;
  __src[13] = v24 + 9;
  __src[14] = v1;
  sub_18E1E8A48(v25, v24);
  v9[3] = &type metadata for AssetBackedImageFilterBase;
  v9[4] = sub_18E234280();
  sub_18E1C86E0();
  v26 = swift_allocObject();
  *v9 = v26;
  sub_18E234338(v26, v27, v28, v29, v30, v31, v32, v33, v44, v47, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v51[22], v51[23], v51[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v53, *(&v53 + 1));

  sub_18E1D45EC(0x6C69466567616D49, 0xEB00000000726574, v51);
  if (v50)
  {

    sub_18E1FE044(__src);
    sub_18E287190(v9);
  }

  else
  {
    memcpy(__dst, __src, 0xC1uLL);
    v34 = v48;
    sub_18E1D46CC(v48, v5);
    sub_18E234338(v35, v36, v37, v38, v39, v40, v41, v42, v45, v48, 0, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v51[22], v51[23], v51[24], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], v53, *(&v53 + 1));
    memcpy(v26 + 2, v51, 0xC8uLL);
    v26[27] = v34;
    v26[28] = v5;
  }

  sub_18E1C6650();
}

unint64_t sub_18E234280()
{
  result = qword_1ED6A8FA8;
  if (!qword_1ED6A8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FA8);
  }

  return result;
}

uint64_t sub_18E2342D4()
{

  return swift_slowAlloc();
}

uint64_t sub_18E2342F8(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

void *sub_18E234338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t __dst, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0xC1uLL);
}

uint64_t static Catalog.Resource.DisabledUseCaseList.All()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.DisabledUseCaseList.All(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000040);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_18E2345AC()
{

  return sub_18E44E6DC();
}

void sub_18E2345D8(Swift::Int_optional a1@<0:X0, 8:W1.1>, uint64_t a2@<X2>, uint64_t a3@<X4>, Swift::Int_optional a4@<0:X6, 8:W7.1>, ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::DeviceSpecialTokensMap *a5@<X8>, Swift::String_optional a6@<Q0>, Swift::String_optional a7@<Q1>, __n128 a8@<Q2>, Swift::String_optional a9@<Q3>, Swift::String_optional a10@<Q4>, Swift::String_optional a11, Swift::String_optional a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, Swift::String_optional chatRoleSystem, uint64_t a20, uint64_t a21, Swift::String_optional chatRoleAssistant, uint64_t a23, uint64_t a24, Swift::String_optional chatComponentTurnend, __int128 a26, Swift::Int_optional stopTokenInt, Swift::String_optional stopTokenStr, __int128 a29, Swift::Int_optional startExecutableInt, Swift::String_optional a31, uint64_t a32, uint64_t a33, Swift::Int_optional startImageTokenInt)
{
  chatComponentTurnend.value._countAndFlagsBits = v42;
  *v45 = v41;
  *&v45[8] = a8;
  v46.is_nil = v40;
  v46.value = v39;
  *&v45[24] = v38;
  stopTokenStra.is_nil = v37;
  stopTokenStra.value = v36;
  a11.value._countAndFlagsBits = v43;

  LLMAdapterMetadataOverrideAssetMetadata.DeviceSpecialTokensMap.init(startPromptToken:startPromptTokenStr:endPromptToken:endPromptTokenInt:chatRoleSystem:chatRoleUser:chatRoleAssistant:chatRoleTool:chatComponentTurnend:chatRoleSystemDefault:stopTokenInt:stopTokenStr:startExecutableStr:startExecutableInt:endExecutableStr:endExecutableInt:startImageTokenInt:startImageTokenStr:endImageTokenInt:endImageTokenStr:)(a5, a1, *&a2, *&a3, a4, a11, a12, *v45, *&v45[16], a6, a7, v46, a9, a10, *&chatComponentTurnend.value._countAndFlagsBits, a26, stopTokenInt, stopTokenStra, a29, startExecutableInt, a31);
}

void sub_18E23467C(uint64_t a1@<X8>)
{
  v1[12] = sub_18E42C220;
  v1[13] = a1;
  v1[14] = v2;
}

unint64_t sub_18E234694()
{
  result = qword_1ED6A8EC0;
  if (!qword_1ED6A8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EC0);
  }

  return result;
}

void AssetBackedDisabledUseCaseListBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  v10 = memcpy(v7, v8, v9);
  v13 = sub_18E221924(v10, 0x800000018E49F000, v11, v12);
  if (v1)
  {

    sub_18E1FE044(v175);
  }

  else
  {
    v21 = sub_18E223A20(v13, v14, v15, v16, v17, v18, v19, v20, v45, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175[0]);
    sub_18E1C973C(v21, v22, v23, v24, v25, v26, v27, v28, v46, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125);
    v37 = sub_18E1D5E70(v29, v30, v31, v32, v33, v34, v35, v36, v47, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175[0]);
    sub_18E1D4410(v37, v38, v39, v40, v41, v42, v43, v44, v48);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

uint64_t sub_18E23492C()
{
  sub_18E1C551C((v0 + 104), v1 + 16);

  return sub_18E1C551C((v0 + 64), v1 + 56);
}

__n128 *sub_18E234960(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E23497C@<X0>(uint64_t *a1@<X8>)
{
  result = Platform.PlatformType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E2349E4(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

uint64_t Platform.PlatformType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7565161;
      break;
    case 2:
      result = 0x736F63616DLL;
      break;
    case 3:
      result = 0x736F6863746177;
      break;
    case 4:
      result = 1936684660;
      break;
    case 5:
      result = 0x736F6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static Catalog.Resource.TokenInputDenyList.CodeIntelligenceBaseInputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenInputDenyList.CodeIntelligenceBaseInputDenyList(variant:)(v1);
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

uint64_t sub_18E23507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E23509C()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E235264()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E23527C()
{

  bzero((v0 + 96), 0xC8uLL);
}

uint64_t sub_18E2352DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_18E2491A4(a1, a2 | 0x8000000000000000, v2);
}

void *sub_18E235304()
{

  return memcpy((v0 + 224), (v0 + 424), 0xC1uLL);
}

uint64_t sub_18E235320@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  return result;
}

void sub_18E235360()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E235538()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E235A4C()
{

  return memcpy((v0 + 856), (v0 + 1048), 0xB9uLL);
}

uint64_t sub_18E235A78()
{
}

uint64_t sub_18E237058(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1D45EC(0xD000000000000015, a2, a3);
}

uint64_t sub_18E237090()
{
  v1 = *&STACK[0x360];
  *&STACK[0x530] = *&STACK[0x350];
  *&STACK[0x540] = v1;
  LOBYTE(STACK[0x550]) = STACK[0x370];

  return sub_18E327BB0(&STACK[0x590], &STACK[0x260]);
}

uint64_t sub_18E2370C0(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

void sub_18E237298()
{
  v1 = *(v0 + 192);
  *(v0 + 184) = *(v0 + 184);
  *(v0 + 192) = v1;
}

uint64_t sub_18E2372B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E2372E8()
{

  return swift_unknownObjectRelease();
}

void *sub_18E237318()
{

  return memcpy((v0 + 8), (v0 + 224), 0xD8uLL);
}

double sub_18E2379D0()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFC4(v0);
  *(v1 + 16) = xmmword_18E4B0C40;
  *(v1 + 32) = 0x4F02004B02004ELL;
  *&result = 33572866;
  *(v1 + 40) = 33572866;
  *(v1 + 44) = 47;
  *(v1 + 46) = 2;
  return result;
}

uint64_t sub_18E237D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18E44E99C();
}

uint64_t sub_18E238438()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFC4(v0);
  *(v1 + 16) = xmmword_18E4B0C40;
  *(v1 + 32) = 0x12F010112010111;
  return sub_18E1E86B0(v1, 2.3708e-38);
}

uint64_t sub_18E2387D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E2387E8()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E2389A4()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E238EA8()
{

  return sub_18E1E8C38(v1 + 56, v0 + 448);
}

void *sub_18E239C14()
{
  *(v0 + 184) = *(v1 + 8);
  v3 = *(v1 + 16);
  *(v0 + 176) = *(v1 + 17);
  *(v0 + 180) = v3;
  v4 = *(v1 + 24);
  *(v0 + 160) = *(v1 + 32);
  *(v0 + 168) = v4;
  v5 = *(v1 + 40);
  *(v0 + 144) = *(v1 + 48);
  *(v0 + 152) = v5;
  *(v0 + 128) = *(v1 + 56);
  *(v0 + 140) = *(v1 + 64);

  return memcpy((v0 + 1240), (v1 + 72), 0xB9uLL);
}

void sub_18E239C88(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
}

id sub_18E239C9C()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

unint64_t sub_18E23A548()
{
  result = qword_1ED6A9168;
  if (!qword_1ED6A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9168);
  }

  return result;
}

void AssetBackedTokenOutputDenyListBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v13 = sub_18E1CD9B8(v5, v6, v7, v8, v9, v10, v11, v12, v60, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239);
  v21 = sub_18E1D0338(v13, v14, v15, v16, v17, v18, v19, v20, v61);
  v24 = sub_18E221924(v21, v4 | 0x8000000000000000, v22, v23);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v243 || !*(v243 + 16))
  {
    v56 = sub_18E2D0B44();
    v57 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v56);
    sub_18E1E6860(v57, v58);
    sub_18E221DDC(v59, 41);

LABEL_7:

    sub_18E1FE044(&v242);
    goto LABEL_8;
  }

  v32 = sub_18E223A20(v24, v25, v26, v27, v28, v29, v30, v31, v62, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v242);
  sub_18E1C973C(v32, v33, v34, v35, v36, v37, v38, v39, v63, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168);
  v48 = sub_18E1D5E70(v40, v41, v42, v43, v44, v45, v46, v47, v64, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v242);
  sub_18E1D4410(v48, v49, v50, v51, v52, v53, v54, v55, v65);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t static Catalog.Resource.TokenOutputDenyList.CodeIntelligenceBaseOutputDenyList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.TokenOutputDenyList.CodeIntelligenceBaseOutputDenyList(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

BOOL sub_18E23CA28()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_18E23CA5C()
{
}

uint64_t sub_18E23D5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_18E23E28C()
{
  result = qword_1ED6A8878;
  if (!qword_1ED6A8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8878);
  }

  return result;
}

uint64_t sub_18E23ED64()
{
  *v2 = *(v3 - 168);
  *(v2 + 8) = v1;
  *(v2 + 16) = *(v3 - 72);
  return sub_18E1C9934(v0);
}

unint64_t sub_18E23F0E4()
{
  result = qword_1ED6A8430;
  if (!qword_1ED6A8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8430);
  }

  return result;
}

void AssetBackedImageSpatialPhotosReliveBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v58, v64, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v59);
  sub_18E1E3BD4();
  v22 = sub_18E21D09C(24, v20, v21);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v241 || !*(v241 + 16))
  {
    v54 = sub_18E2D0B44();
    v55 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v54);
    sub_18E1E6860(v55, v56);
    sub_18E221DDC(v57, 41);

LABEL_7:

    sub_18E1FE044(&v240);
    goto LABEL_8;
  }

  v30 = sub_18E223A20(v22, v23, v24, v25, v26, v27, v28, v29, v60, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v240);
  sub_18E1C973C(v30, v31, v32, v33, v34, v35, v36, v37, v61, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166);
  v46 = sub_18E1D5E70(v38, v39, v40, v41, v42, v43, v44, v45, v62, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v240);
  sub_18E1D4410(v46, v47, v48, v49, v50, v51, v52, v53, v63);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

unint64_t sub_18E2402BC()
{
  result = qword_1ED6A84E0;
  if (!qword_1ED6A84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84E0);
  }

  return result;
}

void AssetBackedEmbeddingDenyListBase.init(configuration:variant:)()
{
  sub_18E223548();
  sub_18E1C826C();
  v12 = sub_18E1CD9B8(v4, v5, v6, v7, v8, v9, v10, v11, v59, v65, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238);
  sub_18E1D0338(v12, v13, v14, v15, v16, v17, v18, v19, v60);
  sub_18E1E3BD4();
  v23 = sub_18E233268(v20, v21, v22);
  if (v1)
  {
    goto LABEL_7;
  }

  if (!v242 || !*(v242 + 16))
  {
    v55 = sub_18E2D0B44();
    v56 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v55);
    sub_18E1E6860(v56, v57);
    sub_18E221DDC(v58, 41);

LABEL_7:

    sub_18E1FE044(&v241);
    goto LABEL_8;
  }

  v31 = sub_18E223A20(v23, v24, v25, v26, v27, v28, v29, v30, v61, v66, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v241);
  sub_18E1C973C(v31, v32, v33, v34, v35, v36, v37, v38, v62, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167);
  v47 = sub_18E1D5E70(v39, v40, v41, v42, v43, v44, v45, v46, v63, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v241);
  sub_18E1D4410(v47, v48, v49, v50, v51, v52, v53, v54, v64);
  *(v3 + 200) = v2;
  *(v3 + 208) = v0;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t sub_18E24050C()
{

  return sub_18E44F4AC();
}

uint64_t sub_18E240548()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *v1 = v3;
  v1[1] = v4;
  v1[2] = *(v0 + 56);
  *(v0 + 208) = 9;

  return sub_18E2C132C(v3, v4);
}

uint64_t sub_18E240598@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 136) = result;
  return result;
}

unint64_t sub_18E2405A4()
{
  result = qword_1ED6A8E60;
  if (!qword_1ED6A8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E60);
  }

  return result;
}

void AssetBackedServerConfigurationBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1D5FB4();
  v12 = sub_18E21D09C(23, v10, v11);
  if (v1)
  {

    sub_18E1FE044(v174);
  }

  else
  {
    v20 = sub_18E223A20(v12, v13, v14, v15, v16, v17, v18, v19, v44, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174[0]);
    sub_18E1C973C(v20, v21, v22, v23, v24, v25, v26, v27, v45, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124);
    v36 = sub_18E1D5E70(v28, v29, v30, v31, v32, v33, v34, v35, v46, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v174[0]);
    sub_18E1D4410(v36, v37, v38, v39, v40, v41, v42, v43, v47);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

uint64_t sub_18E240914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E24095C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

void sub_18E240BE4()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_18E240E4C(uint64_t a1)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E241788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_18E44EAEC();
}

uint64_t sub_18E2417C4()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E241A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18E1E8C38(v4, va);
}

uint64_t sub_18E242CFC()
{

  return sub_18E44F35C();
}

uint64_t sub_18E2430B0(uint64_t a1)
{

  return sub_18E44F3CC();
}

double sub_18E2430E8()
{
  result = 0.0;
  *(v0 + 130) = 0u;
  return result;
}

uint64_t sub_18E243104(uint64_t a1)
{
  *(v1 + 224) = a1;

  return sub_18E44EA8C();
}

void sub_18E243360()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E243EAC()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
}

uint64_t sub_18E243ED0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 16) = a3;
  *(a2 + 24) = v3;

  return swift_willThrow();
}

void sub_18E243EFC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_18E243F14()
{
}

int8x8_t sub_18E243F30(int8x8_t a1)
{

  return sub_18E3CFA54(0, 2, a1);
}

uint64_t sub_18E244890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_18E44EB4C();
}

int8x8_t sub_18E2448AC(int8x8_t a1)
{

  return sub_18E3CFA54(1, 1, a1);
}

void AssetBackedAppleDeviceTrackingBase.init(configuration:variant:)()
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v4, v5, v6);
  sub_18E1DD340();
  v10 = memcpy(v7, v8, v9);
  v13 = sub_18E221924(v10, 0x800000018E49EFD0, v11, v12);
  if (v1)
  {

    sub_18E1FE044(v175);
  }

  else
  {
    v21 = sub_18E223A20(v13, v14, v15, v16, v17, v18, v19, v20, v45, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175[0]);
    sub_18E1C973C(v21, v22, v23, v24, v25, v26, v27, v28, v46, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125);
    v37 = sub_18E1D5E70(v29, v30, v31, v32, v33, v34, v35, v36, v47, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v175[0]);
    sub_18E1D4410(v37, v38, v39, v40, v41, v42, v43, v44, v48);
    *(v3 + 200) = v2;
    *(v3 + 208) = v0;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

unint64_t sub_18E244E08()
{
  result = qword_1ED6A84A0;
  if (!qword_1ED6A84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84A0);
  }

  return result;
}

uint64_t sub_18E244FC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_18E1C5780();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  sub_18E24512C(sub_18E2451D0);
  v12 = *(*a2 + 16);
  sub_18E245188(v12, sub_18E2451D0);
  v13 = sub_18E1CF9A0();
  v14(v13);
  sub_18E1DF2A8(v12, v4, a2, a3, a4);
  return (*(v10 + 8))(a1, a3);
}

uint64_t sub_18E245114()
{

  return sub_18E44ED2C();
}

uint64_t sub_18E24512C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_18E245188(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_18E2451D0()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      v6 = sub_18E2706EC(&qword_1EABE0E98, &unk_18E4E2640);
      v7 = sub_18E1CA780(v6);
      sub_18E1D61B8(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_18E1CB0D4();
        sub_18E24E604(v8);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v9 = sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
    sub_18E1CFC20(v9);
    goto LABEL_11;
  }

  sub_18E1E1CA8();
  if (!v4)
  {
    sub_18E1C5E88();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t static Sideload.fetchResourceBundles(at:resources:)(uint64_t a1, unint64_t a2)
{
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  if (byte_1ED6A98A0)
  {
    v9 = MEMORY[0x1E69E7CC0];

    sub_18E245400(a1, 0x6552656C646E7562, 0xEE00656372756F73, a2, &v9);
    result = v9;
    if (v2)
    {
    }
  }

  else
  {
    v6 = sub_18E1DD2D0();
    v7 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v6);
    return sub_18E1C56E0(v7, v8);
  }

  return result;
}

uint64_t sub_18E245400(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v80 = a5;
  v82 = a2;
  v83 = a3;
  v87[1] = *MEMORY[0x1E69E9840];
  v84 = sub_18E44E54C();
  v8 = *(v84 - 8);
  v9 = MEMORY[0x1EEE9AC00](v84);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v70 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - v16;
  if (qword_1ED6A94A8 != -1)
  {
LABEL_36:
    swift_once();
  }

  if (byte_1ED6A98A0 != 1)
  {
    sub_18E3064D0();
    swift_allocError();
    *v33 = 0xD000000000000029;
    *(v33 + 8) = 0x800000018E477B00;
    *(v33 + 16) = 2;
    swift_willThrow();
  }

  v73 = v13;
  v74 = a4;
  v78 = v6;
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_18E44E4AC();
  v87[0] = 0;
  v20 = [v18 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:0 options:5 error:v87];

  v21 = v87[0];
  if (!v20)
  {
    v69 = v87[0];
    sub_18E44E44C();

    swift_willThrow();
  }

  a4 = v84;
  v22 = sub_18E44EC9C();
  v23 = v21;

  v24 = a4;
  v25 = 0;
  v81 = *(v22 + 16);
  v85 = (v8 + 8);
  v86 = v8 + 16;
  v76 = (v8 + 32);
  v71 = MEMORY[0x1E69E7CC0];
  while (v81 != v25)
  {
    if (v25 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    v6 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    (*(v8 + 16))(v17, &v6[v22 + v26 * v25], v24);
    if (sub_18E44E47C() == v82 && v27 == v83)
    {

LABEL_14:
      v24 = v84;
      v13 = *v76;
      (*v76)(v77, v17, v84);
      v29 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v29;
      v87[0] = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18E26F240();
        v24 = v84;
        v31 = v87[0];
      }

      a4 = v31[2];
      v32 = a4 + 1;
      if (a4 >= v31[3] >> 1)
      {
        v75 = a4 + 1;
        sub_18E26F240();
        v32 = v75;
        v24 = v84;
        v31 = v87[0];
      }

      ++v25;
      v31[2] = v32;
      v71 = v31;
      v13(&v6[v31 + a4 * v26], v77, v24);
    }

    else
    {
      a4 = sub_18E44F3CC();

      if (a4)
      {
        goto LABEL_14;
      }

      v24 = v84;
      (*v85)(v17, v84);
      ++v25;
    }
  }

  v35 = v71[2];
  if (v35)
  {
    v36 = v71 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v83 = *(v8 + 72);
    v37 = *(v8 + 16);
    *&v34 = 136315394;
    v72 = v34;
    v39 = v73;
    v38 = v74;
    v41 = v78;
    v40 = v79;
    v42 = v80;
    v82 = v37;
    do
    {
      v37(v40, v36, v24);
      sub_18E3ED1C8(v40, v38, v42);
      if (v41)
      {
        if (qword_1ED6A94F8 != -1)
        {
          swift_once();
        }

        v43 = sub_18E44E83C();
        sub_18E1C95EC(v43, qword_1ED6A98C0);
        v44 = v40;
        v45 = v84;
        v37(v39, v44, v84);
        v46 = v41;
        v47 = v39;
        v48 = sub_18E44E80C();
        v49 = sub_18E44EE2C();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v78 = v41;
          v76 = v51;
          v81 = swift_slowAlloc();
          v87[0] = v81;
          *v50 = v72;
          sub_18E3F6D08(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v52 = v47;
          v53 = sub_18E44F39C();
          v55 = v54;
          LODWORD(v75) = v49;
          v77 = *v85;
          (v77)(v52, v45);
          v56 = sub_18E1C9624(v53, v55, v87);

          *(v50 + 4) = v56;
          *(v50 + 12) = 2112;
          v57 = v78;
          v58 = v78;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 14) = v59;
          v60 = v76;
          *v76 = v59;
          _os_log_impl(&dword_18E1C1000, v48, v75, "Failed to read side-load file %s: %@", v50, 0x16u);
          sub_18E1E8EEC(v60, &unk_1EABE9120, &qword_18E4E3A90);
          v61 = v60;
          v38 = v74;
          MEMORY[0x193ACD400](v61, -1, -1);
          v62 = v81;
          sub_18E1C9934(v81);
          MEMORY[0x193ACD400](v62, -1, -1);
          v63 = v50;
          v42 = v80;
          MEMORY[0x193ACD400](v63, -1, -1);

          v64 = v79;
          (v77)(v79, v45);
          v41 = 0;
          v24 = v45;
          v39 = v73;
        }

        else
        {

          v65 = v38;
          v66 = v47;
          v67 = *v85;
          (*v85)(v66, v45);
          v64 = v79;
          (v67)(v79, v45);
          v41 = 0;
          v24 = v45;
          v39 = v66;
          v38 = v65;
          v42 = v80;
        }

        v40 = v64;
        v37 = v82;
      }

      else
      {
        (*v85)(v40, v24);
      }

      v36 += v83;
      --v35;
    }

    while (v35);
  }
}

uint64_t sub_18E245C30(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t static XPCService.respectedEntitlements.getter()
{
  sub_18E1CD8B8();
  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  v1 = sub_18E1D8004();
  *(inited + 32) = v2(v1);
  *(inited + 40) = v3;
  v4 = sub_18E207C7C(inited);
  v5 = sub_18E1D8004();
  v7 = v6(v5);
  return sub_18E2461E4(v7, v4);
}

uint64_t static Sideload.defaultSideloadAssetsURL.getter()
{
  v0 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v0);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E22459C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  (*(v5 + 104))(v4 - v3, *MEMORY[0x1E6968F58]);
  sub_18E44E54C();
  v6 = sub_18E1D4DCC();
  sub_18E201DC8(v6, v7, 1, v8);
  sub_18E1D5ED0();
  return sub_18E44E51C();
}

uint64_t sub_18E245E4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    a1 = swift_once();
  }

  sub_18E1C5A2C(a1);
}

uint64_t CatalogIndex.__allocating_init(sideloadURL:)()
{
  swift_allocObject();
  v1 = sub_18E1C5D78();
  CatalogIndex.init(sideloadURL:)(v1);
  return v0;
}

uint64_t sub_18E245EE8()
{
  v1 = v0;
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  sub_18E1C8054();
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_18E2462E8(0xD00000000000001DLL, 0x800000018E459220);
    v10 = v7;
    if (v7)
    {
      v11 = v7;
      v12 = sub_18E44EA8C();
      v13 = [v11 stringForKey_];

      if (v13)
      {

        v14 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources;
        sub_18E1CD7C8(v15, v16, v17);
        v18 = *(v1 + v14);

        v19 = static TestCatalog.Resource.fetchAllResources()();
        sub_18E231EE8(v19);
        v20 = sub_18E201DF0();
        sub_18E231EE8(v20);

        return v18;
      }
    }

    v25 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources;
    sub_18E1CD7C8(v7, v8, v9);
    v26 = *(v1 + v25);

    sub_18E201DF0();
    v28 = v26;
    sub_18E1C6488();
    sub_18E231EE8(v27);
  }

  else
  {
    v22 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources;
    sub_18E1CD7C8(v2, v3, v4);
    v23 = *(v1 + v22);

    sub_18E201DF0();
    v28 = v23;
    sub_18E1C6488();
    sub_18E231EE8(v24);
  }

  return v28;
}

uint64_t static CatalogService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C(&qword_1ED6A9020);
  }

  v2 = sub_18E44E83C();
  v3 = sub_18E1C95EC(v2, qword_1ED6A9028);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_18E2461E4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_18E207D3C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_18E2462E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_18E44EA8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_18E24634C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  result = sub_18E44EFCC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_18E3F1C90(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_18E44F48C();
    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

id static XPCService.xpcInterface()()
{
  sub_18E1CD8B8();
  v3 = (*(v2 + 16))();
  v4 = [objc_opt_self() interfaceWithProtocol_];

  v18 = v1;
  v16 = (*(v0 + 48))(v1, v0);
  v5 = *(v16 + 16);
  if (v5)
  {
    v6 = v16 + 48;
    do
    {
      v7 = *(v6 - 16);
      v8 = *(v6 - 8);
      v6 += 24;

      v9 = sub_18E44ED9C();

      [v4 setClasses:v9 forSelector:v7 argumentIndex:v8 ofReply:0];

      --v5;
    }

    while (v5);
  }

  v17 = (*(v0 + 56))(v18);
  v10 = *(v17 + 16);
  if (v10)
  {
    v11 = v17 + 48;
    do
    {
      v12 = *(v11 - 16);
      v13 = *(v11 - 8);
      v11 += 24;

      v14 = sub_18E44ED9C();

      [v4 setClasses:v14 forSelector:v12 argumentIndex:v13 ofReply:1];

      --v10;
    }

    while (v10);
  }

  (*(v0 + 72))(v4, v18);
  return v4;
}

id static CatalogService.interface.getter(uint64_t a1)
{
  if (qword_1ED6A9428 != -1)
  {
    a1 = sub_18E1C844C(&qword_1ED6A9428);
  }

  sub_18E1C5A2C(a1);
  v1 = qword_1ED6A8DB8;

  return v1;
}

uint64_t sub_18E246888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E246880() & 1;
}

uint64_t CatalogIndex.sideloadURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL;
  sub_18E44E54C();
  sub_18E1C4EEC();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

Swift::Void __swiftcall AcquireCoherenceTokenResponse.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens);
  if (v3)
  {
    sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
    v3 = sub_18E44E97C();
  }

  v4 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

id AcquireCoherenceTokenResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
  sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
  v5 = sub_18E44EECC();
  if (v5)
  {
    sub_18E246C68(v5);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *&v2[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = v7;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

void sub_18E246C68(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E44EF8C())
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E2706EC(&unk_1EABE10E0, &qword_18E49DD58);
  sub_18E44F17C();
  if (v2)
  {
LABEL_4:
    v3 = sub_18E44F11C();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(a1 + 32);
  v5 = ~v8;
  v4 = a1 + 64;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v6 = v10 & *(a1 + 64);
  v7 = a1;
LABEL_11:
  v11 = (v5 + 64) >> 6;

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_18E44F13C())
    {
      goto LABEL_22;
    }

    sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
    swift_dynamicCast();
    sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
    swift_dynamicCast();
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = v6;
    v13 = 0;
    if (!v6)
    {
      v14 = 0;
      while (1)
      {
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
          goto LABEL_22;
        }

        v12 = *(v4 + 8 * v13);
        ++v14;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }

LABEL_17:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v12)));
    v16 = *(*(v7 + 56) + v15);
    v17 = *(*(v7 + 48) + v15);
    v16;
    if (!v17)
    {
LABEL_22:
      sub_18E246F7C();

      return;
    }
  }

  sub_18E44EA9C();
LABEL_24:
  __break(1u);
}

void sub_18E246F88()
{

  bzero((v0 + 136), 0xA0uLL);
}

void *sub_18E246FA0()
{
  *(v2 + 257) = *v1;
  *(v0 + 1140) = *(v1 + 3);
  v4 = *(v0 + 112);
  *(v0 + 1144) = *(v0 + 104);
  *(v0 + 1152) = v4;
  v5 = *(v0 + 128);
  *(v0 + 1160) = *(v0 + 120);
  *(v0 + 1168) = v5;
  v6 = *(v0 + 144);
  *(v0 + 1176) = *(v0 + 136);
  *(v0 + 1184) = v6;
  v7 = *(v0 + 88);
  *(v0 + 1192) = *(v0 + 96);
  *(v0 + 1200) = v7;
  v8 = *(v0 + 72);
  *(v0 + 1208) = *(v0 + 80);
  *(v0 + 1216) = v8;
  *(v0 + 1224) = *(v0 + 64);

  return memcpy((v2 + 352), (v0 + 2112), 0x140uLL);
}

uint64_t sub_18E247034(uint64_t a1)
{

  return swift_once();
}

void sub_18E247054(char a1@<W8>)
{
  *(v4 + 32) = v2;
  *(v4 + 40) = v6;
  *(v4 + 48) = v3;
  *(v4 + 56) = v1;
  *(v4 + 64) = v5;
  *(v4 + 72) = a1;
}

void sub_18E247088(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for LLMModelAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43E3F4(v5, &v125);
      sub_18E43E3F4(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E212208(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E212208(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E212208(v5);
        sub_18E212208(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E248080();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for LLMModelAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for LLMModelAssetContents);

  v64 = v116;
  sub_18E430664(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for LLMModelAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1B98, &qword_18E4E3980);
      sub_18E2491F8(v61, type metadata accessor for LLMModelAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43E3F4(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E212208(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for LLMModelAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E212208(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for LLMModelAssetContents);
    v85(v75, v79);
  }
}

uint64_t sub_18E248000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_18E248038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_18E1CBD4C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_18E248080()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMModelBase;
    v17[4] = sub_18E43E450();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMModelBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E3F4(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E2483E8()
{

  do
  {
    while (1)
    {
      v0 = sub_18E44EB9C();
      if (!v1)
      {

        sub_18E44EB9C();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_18E44EB9C();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_18E44F3CC();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

void sub_18E24852C()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v115 = sub_18E44E46C();
  sub_18E1C4EAC();
  v113 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E1E68C4(v8 - v7);
  v114 = sub_18E44E54C();
  sub_18E1C4EAC();
  v112 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1E68C4(v12 - v11);
  v13 = v0[5];
  v109 = v0[12];
  v14 = v0[20];
  v121 = v14 != 0;
  v117 = v0[4];
  v116 = v13;
  v108 = v0[16];
  v107 = v0[15];
  if (!v14)
  {

    sub_18E1E682C();
    v18 = v13;
    if ((sub_18E2483E8() & 1) == 0)
    {

      sub_18E43801C();
      v18 = v31;
    }

    sub_18E1DD3B4();
    v20 = sub_18E44EA8C();

    v32 = [v2 assetNamed_];
    goto LABEL_17;
  }

  v15 = v0[19];
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    v105 = v101;
    swift_once();
    v15 = v105;
  }

  if ((byte_1ED6A98A0 & 1) == 0)
  {
    *&v119[0] = v15;
    *(&v119[0] + 1) = v14;

    v33 = sub_18E1CF3BC();
    MEMORY[0x193ACC300](v33, 0xE800000000000000);
    v18 = v14;
    sub_18E1DD3B4();
    v20 = sub_18E44EA8C();
    v32 = [v2 assetNamed_];
LABEL_17:
    v34 = v32;
    goto LABEL_20;
  }

  v104 = v15;
  v106 = v4;
  sub_18E2168D4();
  *(v16 - 256) = v13;

  v17 = sub_18E1CE96C();
  MEMORY[0x193ACC300](v17);
  v103 = v0[25];
  v102 = v0[26];
  MEMORY[0x193ACC300]();
  v18 = *(&v119[0] + 1);
  v19 = sub_18E44EA8C();
  v20 = [v2 assetNamed_];

  if (v20)
  {
    v21 = [v20 metadata];
    v22 = sub_18E44E98C();

    v23 = sub_18E44EAAC();
    v25 = sub_18E2491A4(v23, v24, v22);
    v27 = v26;

    v28 = sub_18E44EAAC();
    if (v27)
    {
      if (v25 == v28 && v27 == v29)
      {

LABEL_42:
        if (qword_1ED6A8AB0 != -1)
        {
          sub_18E1C6D78();
          swift_once();
        }

        v86 = sub_18E44E83C();
        sub_18E1CE8B4(v86, qword_1ED6A9870);
        v87 = sub_18E247068();
        v88(v87);
        v34 = sub_18E44E80C();
        v89 = sub_18E44EE2C();
        v4 = v106;
        if (os_log_type_enabled(v34, v89))
        {
          sub_18E1E2FE8();
          v90 = swift_slowAlloc();
          sub_18E1CA69C();
          v122 = swift_slowAlloc();
          *&v119[0] = v122;
          *v90 = 136315138;
          v91 = v103 == 0x636972656E6567 && v102 == 0xE700000000000000;
          if (v91 || (sub_18E1CFFC0(), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
          {
          }

          else
          {
            static VariantHelpers.createResourceIdentifier(with:variant:)();
          }

          v94 = sub_18E2245BC();
          v95(v94);
          v96 = sub_18E1CF9A0();
          v99 = sub_18E1C9624(v96, v97, v98);

          *(v90 + 4) = v99;
          _os_log_impl(&dword_18E1C1000, v34, v89, "Using asset from asset root for resource %s", v90, 0xCu);
          sub_18E1C9934(v122);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          v100 = sub_18E1CFC40();
          MEMORY[0x193ACD400](v100);

          v4 = v106;
        }

        else
        {

          v92 = sub_18E2245BC();
          v93(v92);
        }

        v38 = v20;
        v121 = 0;
LABEL_22:
        if ([v38 location])
        {
          sub_18E1C5D78();

          sub_18E44E4CC();

          if (v121)
          {
            *&v120 = v117;
            *(&v120 + 1) = v116;
            v119[0] = v120;
            (*(v113 + 104))(v111, *MEMORY[0x1E6968F70], v115);
            sub_18E24D39C();

            sub_18E44E52C();

            (*(v113 + 8))(v111, v115);
            sub_18E43C8E8(&v120);
            (*(v112 + 8))(v4, v114);
            (*(v112 + 32))(v4, v110, v114);
            goto LABEL_40;
          }
        }

        else
        {
          if (qword_1ED6A8AB0 != -1)
          {
            sub_18E1C6D78();
            swift_once();
          }

          v49 = sub_18E44E83C();
          sub_18E1CE8B4(v49, qword_1ED6A9870);

          v38 = v38;
          v50 = sub_18E44E80C();
          v51 = sub_18E44EE0C();

          if (os_log_type_enabled(v50, v51))
          {
            sub_18E1C9700();
            v52 = swift_slowAlloc();
            sub_18E1CA638();
            *&v119[0] = swift_slowAlloc();
            *v52 = 136315394;
            v53 = sub_18E1DD3B4();
            *(v52 + 4) = sub_18E1C9624(v53, v54, v55);
            *(v52 + 12) = 2080;
            v118 = v51;
            v56 = [v38 metadata];
            sub_18E44E98C();

            sub_18E1E2000();
            v57 = sub_18E44E99C();
            v59 = v58;

            v60 = sub_18E1C9624(v57, v59, v119);

            *(v52 + 14) = v60;
            _os_log_impl(&dword_18E1C1000, v50, v118, "Asset %s does not have a location. Metadata: %s", v52, 0x16u);
            swift_arrayDestroy();
            sub_18E1C6164();
            MEMORY[0x193ACD400]();
            v61 = sub_18E1CFC40();
            MEMORY[0x193ACD400](v61);
          }

          *&v119[0] = 0;
          *(&v119[0] + 1) = 0xE000000000000000;
          sub_18E44EFFC();

          sub_18E2168D4();
          *(v62 - 256) = v18;
          v63 = sub_18E1CF71C();
          MEMORY[0x193ACC300](v63);
          sub_18E1E31F4();
          v64 = *(&v119[0] + 1);
          sub_18E3FDB10();
          sub_18E1D0098();
          v65 = swift_allocError();
          *v66 = v18;
          v66[1] = v64;
          sub_18E1C69B4(v65, v66);
          swift_willThrow();
        }

        goto LABEL_40;
      }

      sub_18E44F3CC();
      sub_18E235348();

      if (v25)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  *&v119[0] = v104;
  *(&v119[0] + 1) = v14;

  v35 = sub_18E1CF3BC();
  MEMORY[0x193ACC300](v35, 0xE800000000000000);
  v18 = v14;
  sub_18E1DD3B4();
  v36 = sub_18E44EA8C();
  v34 = [v2 assetNamed_];

  v4 = v106;
LABEL_20:

  v37 = v34;
  if (v37)
  {
    v38 = v37;
    goto LABEL_22;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v39 = sub_18E44E83C();
  sub_18E1CE8B4(v39, qword_1ED6A9870);
  v40 = sub_18E247068();
  v41(v40);

  v42 = sub_18E44E80C();
  v43 = sub_18E44EE2C();

  if (os_log_type_enabled(v42, v43))
  {
    sub_18E1C9700();
    swift_slowAlloc();
    sub_18E1E2DDC();
    *&v119[0] = swift_slowAlloc();
    *v4 = 136315394;
    v44 = sub_18E1DD3B4();
    *(v4 + 4) = sub_18E1C9624(v44, v45, v46);
    sub_18E224E7C();
    if (v109)
    {

      v47 = v108;

      v48 = v107;
    }

    else
    {
      v47 = 0x800000018E462F20;
      v48 = 0xD000000000000016;
    }

    v69 = sub_18E2245BC();
    v70(v69);

    sub_18E1D62B8();
    v71 = sub_18E1C9624(v48, v47, v119);

    *(v4 + 14) = v71;
    sub_18E1D5C68();
    _os_log_impl(v72, v73, v74, v75, v76, v77);
    swift_arrayDestroy();
    v78 = sub_18E1CFC40();
    MEMORY[0x193ACD400](v78);
    v79 = sub_18E1D6214();
    MEMORY[0x193ACD400](v79);
  }

  else
  {

    v67 = sub_18E2245BC();
    v68(v67);
  }

  sub_18E2168D4();
  *(v80 - 256) = v18;
  v81 = sub_18E1C8D78();
  MEMORY[0x193ACC300](v81, v82 & 0xFFFF0000FFFFLL | 0xEB00000000740000);
  sub_18E1E31F4();
  v83 = *(&v119[0] + 1);
  sub_18E3FDB10();
  sub_18E1D0098();
  v84 = swift_allocError();
  *v85 = v18;
  v85[1] = v83;
  sub_18E1C69B4(v84, v85);
  swift_willThrow();
LABEL_40:
  sub_18E1C6650();
}

uint64_t sub_18E249148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_18E1C4EEC();
  v4 = sub_18E1C5BFC();
  v5(v4);
  return a2;
}

uint64_t sub_18E2491A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_18E1CBD4C();
    if (v3)
    {
    }
  }

  return sub_18E1C5BFC();
}

uint64_t sub_18E2491F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_18E1C4EEC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18E249250()
{

  sub_18E1D04C8();

  return v0;
}

uint64_t sub_18E249294()
{
  v0 = sub_18E249250();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t CoherentAssetLock.__deallocating_deinit()
{
  CoherentAssetLock.deinit();
  sub_18E1CADEC();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t CoherentAssetLock.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

void ResourceBundleQuery.init(uri:)()
{
  sub_18E1C62A0();
  v68 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E2BC();
  sub_18E1C4EAC();
  v76 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  v10 = v9 - v8;
  v11 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v11);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = sub_18E44E38C();
  sub_18E1C4EAC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C4EDC();
  v21 = v20 - v19;
  v22 = sub_18E44E49C();
  v66 = v23;
  v67 = v22;
  sub_18E44E31C();
  if (sub_18E1CAF28(v14, 1, v15) == 1)
  {
    sub_18E1E8EEC(v14, &qword_1EABE0DB0, &unk_18E4E24B0);
LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  (*(v17 + 32))(v21, v14, v15);
  v25 = sub_18E44E2EC();
  if (!v25)
  {
    (*(v17 + 8))(v21, v15);
    goto LABEL_22;
  }

  v26 = v25;
  v61 = v21;
  v62 = v17;
  v63 = v15;
  v64 = v4;
  v65 = v2;
  v27 = sub_18E44E9AC();
  v28 = v26;
  v75 = *(v26 + 16);
  if (!v75)
  {
LABEL_20:

    (*(v62 + 8))(v61, v63);
    v4 = v64;
    v2 = v65;
LABEL_23:
    v56._object = v66;
    v56._countAndFlagsBits = v67;
    v24.value._rawValue = v27;
    ResourceBundleQuery.init(configurationIdentifier:arguments:)(v56, v24);
    sub_18E44E54C();
    sub_18E1C4EEC();
    (*(v58 + 8))(v2);
    if (!v57)
    {
      v59 = v78;
      *v4 = v77;
      *(v4 + 16) = v59;
    }

    sub_18E1C6650();
    return;
  }

  v29 = 0;
  sub_18E1C96E4();
  v74 = v26 + v30;
  v72 = v31 + 8;
  v73 = v31 + 16;
  v70 = v10;
  v71 = v5;
  v69 = v26;
  while (v29 < *(v28 + 16))
  {
    (*(v76 + 16))(v10, v74 + *(v76 + 72) * v29, v5);
    v32 = sub_18E44E2AC();
    if (v33)
    {
      v79 = v33;
      v34 = v32;
      v35 = sub_18E44E29C();
      v37 = v36;
      swift_isUniquelyReferenced_nonNull_native();
      *&v77 = v27;
      v38 = sub_18E1CBD4C();
      if (__OFADD__(v27[2], (v39 & 1) == 0))
      {
        goto LABEL_27;
      }

      v40 = v38;
      v41 = v39;
      sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
      if (sub_18E44F0EC())
      {
        sub_18E1CBD4C();
        sub_18E1C8870();
        if (!v43)
        {
          goto LABEL_29;
        }

        v40 = v42;
      }

      if (v41)
      {

        v27 = v77;
        v44 = (*(v77 + 56) + 16 * v40);
        *v44 = v34;
        v44[1] = v79;

        v5 = v71;
        v10 = v70;
        v45 = sub_18E1C89D0();
        v46(v45);
      }

      else
      {
        v27 = v77;
        *(v77 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v49 = (v27[6] + 16 * v40);
        *v49 = v35;
        v49[1] = v37;
        v50 = (v27[7] + 16 * v40);
        *v50 = v34;
        v50[1] = v79;
        v5 = v71;
        v10 = v70;
        v51 = sub_18E1C89D0();
        v52(v51);
        v53 = v27[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_28;
        }

        v27[2] = v55;
      }

      v28 = v69;
    }

    else
    {
      v47 = sub_18E1C89D0();
      v48(v47);
    }

    if (v75 == ++v29)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_18E44F41C();
  __break(1u);
}

void *sub_18E249828(uint64_t a1, unint64_t a2)
{
  v3 = sub_18E2498E4(a1, a2);
  sub_18E2499FC(&unk_1F0108FC0);
  return v3;
}

void *sub_18E249874(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(&qword_1EABE0DF8, &qword_18E49D1A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_18E2498E4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_18E44EBAC())
  {
    result = sub_18E249874(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18E44EFEC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_18E44F07C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18E2499FC(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_18E2535AC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

ModelCatalog::ResourceBundleQuery __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResourceBundleQuery.addArguments(_:shouldOverride:)(Swift::OpaquePointer _, Swift::Bool shouldOverride)
{
  v4 = *(v2 + 16);
  if (v4)
  {

    v7 = sub_18E26CEBC(v6, v4, shouldOverride);

    v8 = sub_18E1CA270();
    v10.value._rawValue = v7;
  }

  else
  {

    v8 = sub_18E1CA270();
    v10.value = _;
  }

  return ResourceBundleQuery.init(configurationIdentifier:arguments:)(*&v8, v10);
}

uint64_t sub_18E249B9C(uint64_t a1)
{
  v32 = sub_18E44E2BC();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v24[1] = v1;
  v39 = MEMORY[0x1E69E7CC0];
  sub_18E1CA37C();
  v7 = v39;
  result = sub_18E249F38();
  v11 = result;
  v12 = 0;
  v38 = a1 + 64;
  v30 = v3 + 32;
  v31 = v3;
  v26 = v9;
  v27 = v6;
  v25 = a1 + 72;
  v28 = a1;
  v29 = v5;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    if ((*(v38 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (*(a1 + 36) != v9)
    {
      goto LABEL_25;
    }

    if (!*(*(*(a1 + 56) + 8 * v11) + 16))
    {
      goto LABEL_26;
    }

    v36 = v11 >> 6;
    v37 = 1 << v11;
    v34 = v12;
    v35 = v9;
    v33 = v10;

    sub_18E44E28C();

    v39 = v7;
    v13 = *(v7 + 16);
    if (v13 >= *(v7 + 24) >> 1)
    {
      sub_18E1CA37C();
      v7 = v39;
    }

    *(v7 + 16) = v13 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v13, v29, v32);
    a1 = v28;
    v14 = 1 << *(v28 + 32);
    if (v11 >= v14)
    {
      goto LABEL_27;
    }

    v15 = *(v38 + 8 * v36);
    if ((v15 & v37) == 0)
    {
      goto LABEL_28;
    }

    if (*(v28 + 36) != v35)
    {
      goto LABEL_29;
    }

    v16 = v15 & (-2 << (v11 & 0x3F));
    if (v16)
    {
      v14 = __clz(__rbit64(v16)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v17 = v27;
      v18 = v34;
    }

    else
    {
      v19 = v36 << 6;
      v20 = v36 + 1;
      v21 = (v25 + 8 * v36);
      v17 = v27;
      while (v20 < (v14 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_18E249F2C(v11, v35, v33 & 1);
          v14 = __clz(__rbit64(v22)) + v19;
          goto LABEL_20;
        }
      }

      result = sub_18E249F2C(v11, v35, v33 & 1);
LABEL_20:
      v18 = v34;
    }

    v10 = 0;
    v12 = v18 + 1;
    v11 = v14;
    v9 = v26;
    if (v12 == v17)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E249F2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_18E249F80()
{
  sub_18E1C575C();
  sub_18E1D625C(v2, v3);
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v0 + 40);
  sub_18E1C5040(v1 + 2, v10);
  v11(v10);
  sub_18E201EA0();
  v14 = v14 && v13 == 0xE700000000000000;
  if (v14)
  {

    goto LABEL_10;
  }

  sub_18E232E1C(v12);
  sub_18E1E2238();

  if (v10)
  {
LABEL_10:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2F81FC();
  v16 = v1[5];
  v15 = v1[6];
  sub_18E1C5040(v1 + 2, v16);
  v17(v16);
  sub_18E1D0274();
  sub_18E2016C0();
  sub_18E44E28C();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388();
  if (v18)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v16 = v55;
  }

  *(v16 + 16) = v15;
  sub_18E1CFBC0();
  v20 = sub_18E1CF778(v19);
  v21(v20);
  sub_18E224178();
LABEL_11:
  v22 = v1[10];
  sub_18E1C5040(v1 + 7, v22);
  v23(v22);
  sub_18E201EA0();
  if (v14 && v25 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E232E1C(v24);
    sub_18E1CF9C4();

    if ((v22 & 1) == 0)
    {
      v27 = v1[10];
      sub_18E1C5040(v1 + 7, v27);
      v28(v27);
      sub_18E1D0274();
      sub_18E22362C();
      sub_18E1E2414(19, v29, v30);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v16 = v56;
      }

      sub_18E2F79B8();
      if (v18)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v16 = v57;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v31();
    }
  }

  sub_18E44E37C();
  sub_18E223EB0();
  sub_18E201E40();
  if (*(v16 + 16))
  {
    sub_18E2F85FC();
    sub_18E2F85E4();
    if (v5)
    {

      __break(1u);
      return;
    }

    sub_18E2F85CC();
  }

  else
  {
  }

  sub_18E44E36C();
  if (v32)
  {
    v33 = sub_18E1E3DDC();
    v34(v33);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v35 = sub_18E44E83C();
    sub_18E1C95EC(v35, qword_1ED6A9858);
    v36 = sub_18E223FF0();
    v37(v36);
    v38 = sub_18E44E80C();
    v39 = sub_18E44EE0C();
    if (sub_18E201860(v39))
    {
      v40 = sub_18E2342D4();
      v41 = sub_18E2202BC();
      sub_18E2F7E00(v41);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v42 = sub_18E44F39C();
      sub_18E2F86D4(v42, v43);
      sub_18E233674();
      sub_18E220B30();
      v44 = sub_18E223294();
      v45(v44);
      v46 = sub_18E1C5BFC();
      sub_18E1C9624(v46, v47, v48);
      sub_18E233674();
      *(v40 + 14) = v7;
      sub_18E1EA5F8(&dword_18E1C1000, v49, v50, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v51 = sub_18E1D1964();
      MEMORY[0x193ACD400](v51);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v52 = sub_18E223294();
      v53(v52);
    }

    sub_18E201938();
    v54 = sub_18E1E3DF8();
    v7(v54);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

void sub_18E24A450()
{
  sub_18E1C575C();
  v87 = v3;
  v86 = v4;
  v5 = v0;
  v90 = v6;
  v89 = sub_18E1CFD4C();
  sub_18E1C4EAC();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_18E1E1FD8();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CA704();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v15 = v0[5];
  sub_18E1C5040(v0 + 2, v15);
  v16(v15);
  sub_18E201EA0();
  v19 = v19 && v18 == 0xE700000000000000;
  if (v19)
  {

    goto LABEL_10;
  }

  sub_18E232E1C(v17);
  sub_18E1E2238();

  if (v15)
  {
LABEL_10:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v85 = v2;
  v21 = v0[5];
  v20 = v0[6];
  sub_18E1C5040(v5 + 2, v5[5]);
  v22(v21);
  sub_18E1D0274();
  sub_18E1E2414(22, 0x800000018E465F90, v23);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E2F7F8C();
  if (v24)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v21 = v79;
  }

  *(v21 + 16) = v20;
  sub_18E1CFBC0();
  sub_18E1E1938();
  v27(v25 + v26 * "embeddingDenyListVariant", v14, v9);
LABEL_11:
  v28 = v5[10];
  v29 = v5[11];
  sub_18E1C5040(v5 + 7, v28);
  v30(v28);
  sub_18E232B70();
  if (v19 && v32 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8(v31, v28);
    sub_18E1E6A20();
    if ((v29 & 1) == 0)
    {
      v85 = v9;
      v34 = v5[10];
      v35 = v5[11];
      sub_18E1C5040(v5 + 7, v34);
      v36(v34);
      sub_18E223AE4();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v21 = v80;
      }

      sub_18E221FB8();
      if (v24)
      {
        sub_18E207B20(v37 > 1);
        v21 = v81;
      }

      v38 = v85;
      *(v21 + 16) = v34;
      sub_18E1CFBC0();
      sub_18E1E1938();
      v41(v39 + v40 * v35, v1, v38);
    }
  }

  v42 = v5[15];
  v43 = v5[16];
  sub_18E1C5040(v5 + 12, v42);
  v44(v42);
  sub_18E232B70();
  if (v19 && v46 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2208A8(v45, v42);
    sub_18E1E6A20();
    if ((v43 & 1) == 0)
    {
      v42 = v5[15];
      sub_18E1C5040(v5 + 12, v42);
      v48(v42);
      sub_18E223AE4();
      sub_18E2F82C4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v21 = v82;
      }

      sub_18E221FB8();
      if (v24)
      {
        sub_18E207B20(v49 > 1);
        v21 = v83;
      }

      *(v21 + 16) = v42;
      sub_18E1E2708();
      sub_18E1EA5D4();
      v50();
    }
  }

  sub_18E44E37C();
  v51 = *v5;
  v52 = v5[1];

  MEMORY[0x193ACBAD0](v51, v52);
  if (*(v21 + 16))
  {
    v93 = v21;

    sub_18E2EEDB8(&v93);

    sub_18E44E2FC();
  }

  else
  {
  }

  v53 = sub_18E44E36C();
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    v57 = sub_18E1CF9A0();
    v58(v57);
    v51 = v55;
    v52 = v56;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v59 = sub_18E44E83C();
    sub_18E1C95EC(v59, qword_1ED6A9858);
    v60 = sub_18E2F7CA0();
    v86(v60);
    v61 = sub_18E44E80C();
    v62 = sub_18E44EE0C();
    if (sub_18E201860(v62))
    {
      v42 = sub_18E2342D4();
      v63 = sub_18E2202BC();
      v92 = v63;
      *v42 = 136315394;
      sub_18E1E1B74(v63, &v91);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v64 = sub_18E44F39C();
      v66 = v65;
      sub_18E1C9624(v64, v65, &v92);
      sub_18E223638();

      sub_18E223BA0();
      v67 = sub_18E2202E0();
      v68(v67);
      v69 = sub_18E2016D4();
      sub_18E1C9624(v69, v70, v71);
      sub_18E1E6C9C();

      *(v42 + 14) = v66;
      sub_18E2F8344(&dword_18E1C1000, v72, v73, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v74 = sub_18E1D1964();
      MEMORY[0x193ACD400](v74);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v75 = sub_18E2202E0();
      v76(v75);
    }

    sub_18E2F82A4();
    v77 = sub_18E1CF9A0();
    (v42)(v77);
  }

  sub_18E220C1C();
  *v78 = v51;
  v78[1] = v52;
  sub_18E1C5544();
}

uint64_t sub_18E24AACC(uint64_t a1, void *a2)
{
  if (a2[2] && (v3 = a1, sub_18E224D14(a2[5], a1), sub_18E1C5B14(), v6 = v5 & ~v4, ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) != 0))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = 0xEF31765F65677261;
      v9 = 0x6C5F6D6C65646F63;
      switch(*(a2[6] + v6))
      {
        case 1:
          break;
        case 2:
          v9 = sub_18E1C5914();
          goto LABEL_22;
        case 3:
          v9 = sub_18E1C5914();
          goto LABEL_13;
        case 4:
          v9 = sub_18E1C5914();
          goto LABEL_20;
        case 5:
          v9 = sub_18E1C5914();
          goto LABEL_16;
        case 6:
          v9 = 0x735F6D6C65646F63;
          v8 = 0xED00007974656661;
          break;
        case 7:
          v9 = sub_18E1C4EC0();
          v8 = 0xEF31765F65677261;
          break;
        case 8:
          v9 = sub_18E1C4EC0();
LABEL_22:
          v8 = 0xEF32765F65677261;
          break;
        case 9:
          v9 = sub_18E1C4EC0();
LABEL_13:
          v8 = 0xEF33765F65677261;
          break;
        case 0xA:
          v9 = sub_18E1C4EC0();
LABEL_20:
          v8 = 0xEF34765F65677261;
          break;
        case 0xB:
          v9 = sub_18E1C4EC0();
LABEL_16:
          v8 = 0xEF35765F65677261;
          break;
        case 0xC:
          v9 = 0xD000000000000016;
          v8 = 0x800000018E45B3A0;
          break;
        case 0xD:
          sub_18E1E6940();
          v9 = v11 - 1;
          v8 = 0x800000018E45B3C0;
          break;
        case 0xE:
          sub_18E1E6940();
          v9 = v10 - 2;
          v8 = 0x800000018E45B3E0;
          break;
        default:
          v9 = 0xD000000000000016;
          v8 = 0x800000018E45B2D0;
          break;
      }

      v12 = 0x6C5F6D6C65646F63;
      v13 = 0xEF31765F65677261;
      switch(v3)
      {
        case 1:
          break;
        case 2:
          sub_18E1C574C();
          goto LABEL_41;
        case 3:
          sub_18E1C574C();
          goto LABEL_32;
        case 4:
          sub_18E1C574C();
          goto LABEL_39;
        case 5:
          sub_18E1C574C();
          goto LABEL_35;
        case 6:
          v12 = 0x735F6D6C65646F63;
          v13 = 0xED00007974656661;
          break;
        case 7:
          sub_18E1C7E3C();
          v13 = 0xEF31765F65677261;
          break;
        case 8:
          sub_18E1C7E3C();
LABEL_41:
          v13 = 0xEF32765F65677261;
          break;
        case 9:
          sub_18E1C7E3C();
LABEL_32:
          v13 = 0xEF33765F65677261;
          break;
        case 10:
          sub_18E1C7E3C();
LABEL_39:
          v13 = 0xEF34765F65677261;
          break;
        case 11:
          sub_18E1C7E3C();
LABEL_35:
          v13 = 0xEF35765F65677261;
          break;
        case 12:
          v12 = 0xD000000000000016;
          v13 = 0x800000018E45B3A0;
          break;
        case 13:
          sub_18E1E6940();
          v12 = v15 - 1;
          v13 = 0x800000018E45B3C0;
          break;
        case 14:
          sub_18E1E6940();
          v12 = v14 - 2;
          v13 = 0x800000018E45B3E0;
          break;
        default:
          v12 = 0xD000000000000016;
          v13 = 0x800000018E45B2D0;
          break;
      }

      if (v9 == v12 && v8 == v13)
      {
        break;
      }

      v17 = sub_18E44F3CC();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_18E24AEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E24AEE0();
}

uint64_t sub_18E24AF3C(uint64_t a1)
{
  v2 = *v1;
  sub_18E44F48C();
  v3 = sub_18E1C6DAC(v2);
  sub_18E1D432C(v3, v4);

  return sub_18E44F4CC();
}

unint64_t sub_18E24AF88()
{
  result = qword_1EABE0190;
  if (!qword_1EABE0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0190);
  }

  return result;
}

void AssetBackedTokenInputDenyListBundle.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E1D848C();
  sub_18E2706EC(&qword_1EABE2280, &qword_18E4AAC88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E88C0();
  sub_18E1D60D8();
  v2 = sub_18E224800();
  sub_18E1E394C(&type metadata for AssetBackedTokenInputDenyListBundle.CodingKeys, v3, v2);
  sub_18E223988();
  AssetBackedTokenInputDenyListBundle.id.getter();
  sub_18E1CD638();
  v21[256] = 0;
  v4 = sub_18E1E33F0();
  sub_18E2706EC(v4, v5);
  sub_18E1C828C(&qword_1EABE02E8);
  sub_18E1EA540();
  if (v0)
  {

    v6 = sub_18E1E3D10();
    v7(v6);
  }

  else
  {
    sub_18E2F7C48();
    sub_18E2F7C30();
    v8 = sub_18E2706EC(&qword_1EABE2288, &qword_18E4AAC90);
    if (sub_18E1E69D8(v8, v9, v8, &type metadata for AssetBackedTokenInputDenyListBase))
    {
      sub_18E1E851C();
      sub_18E224D5C();
      sub_18E1E20AC();
      sub_18E24B240();
      sub_18E220CD8();
      sub_18E24B30C(&v22);
      sub_18E238EA8();
      v16 = sub_18E2706EC(&qword_1EABE2290, &qword_18E4AAC98);
      if (sub_18E223580(v16, v17, v16, &type metadata for AssetBackedEmbeddingDenyListBase))
      {
        sub_18E1E1400();
        sub_18E224DA8();
        sub_18E223E10();
        sub_18E2C4354();
        sub_18E224F80();
        v18 = sub_18E1E6C0C();
        v19(v18);
        sub_18E2CFAB0(v21);
        goto LABEL_7;
      }

      v20 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v20);
      sub_18E1E835C();
    }

    else
    {
      v10 = sub_18E228994();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v10);
      sub_18E1E835C();
      v13 = v12 | 1;
    }

    sub_18E2231EC(v11, v13);
    v14 = sub_18E1E6C0C();
    v15(v14);
  }

LABEL_7:
  sub_18E1E2968();
  sub_18E1C6650();
}

unint64_t sub_18E24B240()
{
  result = qword_1EABE0B40;
  if (!qword_1EABE0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B40);
  }

  return result;
}

unint64_t sub_18E24B2E4@<X0>(unint64_t *a1@<X8>)
{
  result = RequestResourcesKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E24B33C()
{
  result = qword_1EABE1330;
  if (!qword_1EABE1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1330);
  }

  return result;
}

void sub_18E24B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v32 = sub_18E1CD5F8(v29, v30, v31);
  v33 = sub_18E1C5E70(v32, &a14);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E2219B0();
  sub_18E212AA0();
  if (v21)
  {
    goto LABEL_2;
  }

  sub_18E1C6260();
  if (!v38)
  {
    v81 = sub_18E2885F0();
    v82 = sub_18E1C8558(&type metadata for XPCServiceError, v81);
    sub_18E1CBDCC(v82, v83);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  sub_18E223B94(v38);
  os_unfair_lock_unlock((v23 + 24));
  sub_18E223DB8();
  sub_18E1CC560();
  v39.n128_u64[0] = 136315138;
  sub_18E1E23AC(v39);
  v40.n128_u64[0] = 136315650;
  sub_18E1E334C(v40);
  sub_18E1E3684();
  while (1)
  {
    if (v41 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v42 = &qword_1F018ABF0;
    sub_18E1CC494();
    v43 = swift_allocObject();
    v44 = sub_18E1E2DEC(v43);
    v165 = sub_18E44D310;
    v166 = v44;
    sub_18E1C8480();
    sub_18E1C80EC();
    v163 = v45;
    v164 = &unk_1F018BB78;
    _Block_copy(&v161);
    sub_18E1CF544();

    v46 = sub_18E1E32D8(&v162);
    v48 = [v46 v47];
    v49 = sub_18E1CF9C4();
    _Block_release(v49);
    sub_18E1CC494();
    v50 = swift_allocObject();
    sub_18E223EA4(v50);
    sub_18E1CC494();
    v51 = swift_allocObject();
    sub_18E1D1A18(v51);
    sub_18E1CD8AC();
    v52 = swift_allocObject();
    sub_18E223B08(v52);
    sub_18E1CD8AC();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_18E1E10D4;
    *(v53 + 24) = v23;
    v54 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v54 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v55 = sub_18E221A54();
    sub_18E1CE8B4(v55, qword_1ED6A9888);
    sub_18E233C70();
    v56 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v57)
    {
      sub_18E1C5F74();
      sub_18E1CA69C();
      v58 = swift_slowAlloc();
      v59 = sub_18E1CA340(v58);
      sub_18E200E1C(v59);
      sub_18E1E2FD0(&dword_18E1C1000, v56, v60, "requesting resource container for %s");
      sub_18E221850();
      v25 = v22;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E6C6C();
    }

    else
    {

      v42 = v160;
    }

    sub_18E1D45C8();
    v61 = sub_18E44EA8C();
    v165 = sub_18E288AA8;
    v166 = v53;
    sub_18E1C8480();
    sub_18E1E15E8();
    v163 = sub_18E1E0EE0;
    v164 = &unk_1F018BC18;
    _Block_copy(&v161);
    sub_18E1CC324();

    v62 = sub_18E1CD984();
    sub_18E232F2C(v62, v63);
    _Block_release(v24);

    sub_18E1E6580();
    v20 = *v42;
    if (!v20)
    {
      break;
    }

    sub_18E220B64();
    v64 = v20;
    sub_18E223A9C();
    sub_18E1E3B68();
    sub_18E280314(v65, v66);
    sub_18E1E3C94();
    if ((v61 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v67, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0();
        sub_18E1D5EF4();
        v101();
        v102 = v20;
        v103 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v104 = sub_18E1CADF8();
          sub_18E1CFFE8(v104);
          sub_18E21D1B0();
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v105 = sub_18E1D84BC();
          sub_18E1C9624(v105, &qword_1EABE9328, v106);
          sub_18E1C97B8();
          sub_18E1E1520();
          v107 = v20;
          v108 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v108);
          sub_18E1C8D90();
          _os_log_impl(v109, v110, v111, v112, v113, 0x20u);
          sub_18E32F548(v26);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5904();
          v114 = sub_18E1C69C4();
          v115(v114);
        }

        else
        {

          sub_18E1C5904();
          sub_18E1E1028();
          v116();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E1CEB50();

        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v67 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v68 = sub_18E1C9090();
    sub_18E1C95AC(v68, qword_1ED6A9028);
    sub_18E1CFC50();
    sub_18E1D42A4();
    v69();
    v70 = v20;
    v71 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v23 = swift_slowAlloc();
      sub_18E20809C();
      v72 = swift_slowAlloc();
      sub_18E1CA69C();
      v73 = swift_slowAlloc();
      sub_18E240E98(v73);
      sub_18E21D1B0();
      v22 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v74 = sub_18E24707C();
      sub_18E1C9624(v74, v25, v75);
      sub_18E44D3C4();
      *(v23 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v76;
      *v72 = v76;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v71, v53, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v72);
      sub_18E1E6C6C();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v77 = sub_18E1C6838();
      v78(v77);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v79 = sub_18E1C6838();
      v80(v79);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v84 = v24[2];
  if (v84)
  {
    v85 = v84;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v85 = swift_once();
    }

    sub_18E1CB0FC(v85, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v86 = sub_18E1D6224();
    v87(v86);
    v88 = v84;
    v89 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v90 = sub_18E1CADF8();
      sub_18E1E18E4(v90);
      sub_18E21D1B0();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v91 = sub_18E1E3D6C();
      sub_18E1C9624(v91, &qword_1EABE9328, v92);
      sub_18E1C97B8();
      sub_18E1E3098();
      v93 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v93);
      sub_18E1C8D90();
      _os_log_impl(v94, v95, v96, v97, v98, 0x20u);
      sub_18E32F548(v26);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5904();
      v99 = sub_18E1C69C4();
      v100(v99);
      sub_18E1E383C();
    }

    else
    {

      v137 = sub_18E1C8C3C();
      v138(v137);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v117 = swift_beginAccess();
  v118 = *(v25 + 16);
  if (v118)
  {
    v119 = v118;
    sub_18E1D49FC();
    if (!v121)
    {
      sub_18E1C6A1C();
      v120 = swift_once();
    }

    sub_18E1CB0FC(v120, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v122 = sub_18E1D6224();
    v123(v122);
    v124 = sub_18E44E80C();
    v125 = sub_18E44EDFC();
    if (sub_18E1E115C(v125))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v126 = swift_slowAlloc();
      sub_18E1E2408(v126);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v127 = sub_18E1D5C74();
      sub_18E1C9624(v127, &qword_1EABE9328, v128);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CEB50();
      swift_unknownObjectRelease();
      sub_18E1C5904();
      v135 = sub_18E1C69C4();
      v136(v135);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E1CEB50();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v152 = sub_18E1C8C3C();
      v153(v152);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
    sub_18E240AB4();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v117 = swift_once();
    }

    sub_18E1C8658(v117, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v140 = sub_18E212088();
    v141(v140);
    v142 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v142, v143))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v144 = swift_slowAlloc();
      sub_18E221F1C(v144);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v145 = sub_18E1D5C74();
      sub_18E1C9624(v145, &qword_1EABE9328, v146);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v147, v148, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v149 = sub_18E1C614C();
      v150(v149);
      sub_18E1D62D8();
    }

    else
    {

      v154 = sub_18E1C614C();
      v155(v154);
      sub_18E1E84AC();
    }

    v156 = sub_18E2885F0();
    v157 = sub_18E1C8558(&type metadata for XPCServiceError, v156);
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E1CEB50();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

uint64_t sub_18E24BF80()
{
  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E24BFB8()
{
  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E24BFEC()
{

  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

void sub_18E24C058(uint64_t a1, unint64_t a2)
{
  v4 = a1 == 0xD000000000000028 && 0x800000018E463A40 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {
    v7 = "nner.nlrouter.base";
    v8 = 0xD000000000000027;
LABEL_7:
    v9 = v7 | 0x8000000000000000;
    goto LABEL_8;
  }

  v12 = a1 == 0xD000000000000023 && 0x800000018E463A70 == a2;
  if (v12 || (sub_18E44F3CC() & 1) != 0)
  {
    v7 = "n.summarizer_ajax.base";
    v8 = 0xD000000000000022;
    goto LABEL_7;
  }

  v8 = a1;
  v9 = a2;
LABEL_8:
  v10 = sub_18E24C02C(v8, v9);
  if (!v3)
  {
    v11 = v10;
    ResourceContainer.toResource()();
  }
}

void sub_18E24C19C(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v116 = a2;
  v118 = a3;
  v7 = type metadata accessor for TokenizerAssetContents(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v109 - v12;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_18E44E46C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18E44E54C();
  v124 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v127 = &v109 - v28;
  v122 = *(v5 + 32);
  v29 = *(v5 + 40);
  v30 = *(v5 + 56);
  v123 = v4;
  v121 = v29;
  v119 = v26;
  v117 = v31;
  v113 = a1;
  if (v30)
  {
    v32 = *MEMORY[0x1E6968F58];
    v112 = v17;
    v33 = *(v17 + 104);
    v33(v19, v32, v16);
    sub_18E201DC8(v15, 1, 1, v20);
    sub_18E44E51C();
    v34 = *(v5 + 200);
    v35 = *(v5 + 208);
    v110 = v5;
    v36 = v34 == 0x636972656E6567 && v35 == 0xE700000000000000;
    if (v36 || (sub_18E44F3CC() & 1) != 0)
    {
      v37 = v121;

      v38 = v122;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v37 = v54;
    }

    v125 = v38;
    v126 = v37;
    v33(v19, *MEMORY[0x1E6968F70], v16);
    sub_18E24D39C();
    v55 = v127;
    sub_18E44E53C();
    (*(v112 + 8))(v19, v16);
    v56 = v55;

    v57 = v124;
    v58 = v119;
    v112 = *(v124 + 8);
    (v112)(v25, v119);
    v111 = sub_18E44E9AC();
    v59 = *(v57 + 16);
    v5 = v110;
  }

  else
  {
    v109 = v27;
    v39 = *(v5 + 120);
    v40 = *(v5 + 128);
    v41 = *(a1 + 16);
    v112 = *(v5 + 96);
    if (v112)
    {

      v42 = v39;
      v43 = v40;
    }

    else
    {
      v42 = v39;
      v39 = 0xD000000000000016;
      v43 = 0x800000018E462F20;
    }

    v44 = v40;

    v45 = sub_18E248038(v39, v43, v41);

    if (!v45)
    {
      v127 = v40;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v46 = 0xD000000000000016;
      v47 = sub_18E44E83C();
      sub_18E1C95EC(v47, qword_1ED6A9870);
      sub_18E43C88C(v5, &v125);
      sub_18E43C88C(v5, &v125);
      v48 = sub_18E44E80C();
      v49 = sub_18E44EE0C();
      v50 = v42;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v125 = v52;
        *v51 = 136315394;
        v111 = v50;
        if (v112)
        {

          v53 = v127;

          v46 = v50;
        }

        else
        {
          v53 = 0x800000018E462F20;
        }

        sub_18E2121D8(v5);

        v99 = sub_18E1C9624(v46, v53, &v125);

        *(v51 + 4) = v99;
        *(v51 + 12) = 2080;
        v100 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v100 || (sub_18E44F3CC() & 1) != 0)
        {
          v101 = v121;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v122 = v102;
          v101 = v103;
        }

        v50 = v111;
        sub_18E2121D8(v5);
        v104 = sub_18E1C9624(v122, v101, &v125);

        *(v51 + 14) = v104;
        _os_log_impl(&dword_18E1C1000, v48, v49, "Failed to find token for asset set: %s for %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v52, -1, -1);
        MEMORY[0x193ACD400](v51, -1, -1);
      }

      else
      {

        sub_18E2121D8(v5);
        sub_18E2121D8(v5);
      }

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_18E44EFFC();

      v105 = v127;
      if (v112)
      {
      }

      else
      {
        v105 = 0x800000018E462F20;
        v50 = 0xD000000000000016;
      }

      v125 = v50;
      v126 = v105;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v106 = v125;
      v107 = v126;
      sub_18E3FDB10();
      swift_allocError();
      *v108 = v106;
      *(v108 + 8) = v107;
      *(v108 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v112)
    {
    }

    else
    {
      v42 = 0xD000000000000016;
      v44 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v66 = v45;

    v67 = sub_18E266508();
    v68 = v66;
    v69 = v123;
    v70 = sub_18E424758(v42, v44, v67, v45);
    if (v69)
    {

      return;
    }

    v71 = *(v70 + 16);
    v72 = v109;
    sub_18E24852C();
    v74 = v73;

    v123 = 0;
    v110 = *(v124 + 16);
    v97 = v127;
    v58 = v119;
    v110(v127, v72, v119);
    v98 = [v74 metadata];
    v111 = sub_18E44E98C();

    v56 = v97;

    v112 = *(v124 + 8);
    (v112)(v72, v58);
    v59 = v110;
  }

  v60 = v113;
  v61 = v120;
  v110 = v59;
  v59(v120, v56, v58);
  v62 = v114;
  sub_18E249148(v61, v114, type metadata accessor for TokenizerAssetContents);
  v63 = v115;
  sub_18E249148(v62, v115, type metadata accessor for TokenizerAssetContents);

  v64 = v116;
  sub_18E430AD8(0, 0, 1, v63, v111, v60 | 0x8000000000000000, v116 & 1, v118);
  sub_18E2491F8(v62, type metadata accessor for TokenizerAssetContents);
  if (v64)
  {
    v65 = v123;
    sub_18E204B54();
    if (v65)
    {
      sub_18E1E8EEC(v118, &qword_1EABE1D98, &qword_18E4A5768);
      sub_18E2491F8(v61, type metadata accessor for TokenizerAssetContents);
      (v112)(v127, v58);
      return;
    }

    v123 = 0;
  }

  v75 = v127;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v76 = sub_18E44E83C();
  sub_18E1C95EC(v76, qword_1ED6A9870);
  v77 = v117;
  v110(v117, v75, v58);
  sub_18E43C88C(v5, &v125);
  v78 = sub_18E44E80C();
  v79 = v58;
  v80 = sub_18E44EE2C();
  if (os_log_type_enabled(v78, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v125 = v82;
    *v81 = 136315394;
    v83 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v83 || (sub_18E44F3CC() & 1) != 0)
    {
      v84 = v121;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v122 = v86;
      v84 = v87;
    }

    sub_18E2121D8(v5);
    v88 = sub_18E1C9624(v122, v84, &v125);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v89 = v117;
    v90 = v119;
    v91 = sub_18E44F39C();
    v93 = v92;
    v94 = v89;
    v95 = v112;
    (v112)(v94, v90);
    v96 = sub_18E1C9624(v91, v93, &v125);

    *(v81 + 14) = v96;
    _os_log_impl(&dword_18E1C1000, v78, v80, "fetchLockedAsset for %s successfully returning asset from URL: %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v82, -1, -1);
    MEMORY[0x193ACD400](v81, -1, -1);

    sub_18E2491F8(v120, type metadata accessor for TokenizerAssetContents);
    v95(v127, v90);
  }

  else
  {
    sub_18E2121D8(v5);

    v85 = v112;
    (v112)(v77, v79);
    sub_18E2491F8(v61, type metadata accessor for TokenizerAssetContents);
    v85(v75, v79);
  }
}

void CatalogAsset.metadata.getter()
{
  sub_18E1C62A0();
  v2 = v1;
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  (*(*(v2 + 40) + 16))(*(v2 + 24));
  sub_18E44E58C();
  if (v0)
  {
    v4 = sub_18E1D5F00();
    v5(v4);
  }

  else
  {
    sub_18E221954();
    v6 = sub_18E1D5F00();
    v7(v6);
    sub_18E44E24C();
    swift_allocObject();
    sub_18E44E23C();
    sub_18E44E22C();

    v8 = sub_18E1DD5A0();
    sub_18E1FDFE0(v8, v9);
  }

  sub_18E1C6650();
}

uint64_t sub_18E24D27C()
{
  v0 = sub_18E44E46C();
  sub_18E1C4EAC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C4EDC();
  v6 = v5 - v4;
  sub_18E1D4DD8();
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F70], v0);
  sub_18E24D39C();
  sub_18E44E52C();
  return (*(v2 + 8))(v6, v0);
}

unint64_t sub_18E24D39C()
{
  result = qword_1ED6A80E8;
  if (!qword_1ED6A80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A80E8);
  }

  return result;
}

uint64_t sub_18E24D448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E44E83C();
  sub_18E24D4C0(v5, a2);
  sub_18E1C95EC(v5, a2);
  return sub_18E44E81C();
}

uint64_t *sub_18E24D4C0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_18E24D524(uint64_t a1)
{
  result = sub_18E44E54C();
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

uint64_t sub_18E24D5D0()
{
  result = os_variant_has_internal_content();
  byte_1ED6A98A0 = result;
  return result;
}

uint64_t sub_18E24D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E24D664(uint64_t a1)
{
  result = sub_18E24D68C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E24D68C()
{
  result = qword_1ED6A93E8;
  if (!qword_1ED6A93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93E8);
  }

  return result;
}

unint64_t sub_18E24D6E0(uint64_t a1)
{
  result = sub_18E24D708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E24D708()
{
  result = qword_1ED6A93F0;
  if (!qword_1ED6A93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93F0);
  }

  return result;
}

void sub_18E24D75C()
{
  sub_18E1C575C();
  v97 = v0;
  v98 = v1;
  v96 = v2;
  sub_18E44E2BC();
  sub_18E1C4EAC();
  v99 = v4;
  v100 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C86C0();
  v94 = (v5 - v6);
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v87 - v8;
  v9 = sub_18E2706EC(&qword_1EABE9048, &unk_18E4E24E0);
  sub_18E1C5B08(v9);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAF50();
  v90 = v11;
  v12 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v12);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1CAF50();
  v93 = v14;
  v95 = sub_18E44E38C();
  sub_18E1C4EAC();
  v92 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C4EDC();
  v91 = v18 - v17;
  v19 = sub_18E245EE8();
  v20 = 0;
  v21 = *(v19 + 16);
  v22 = v19 + 32;
  v23 = MEMORY[0x1E69E7CC0];
  while (v21 != v20)
  {
    if (v20 >= *(v19 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);

      sub_18E1C9934(&v106);

      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    sub_18E1E8C38(v22, &v106);
    if (sub_18E24E108(&v106))
    {
      sub_18E1C551C(&v106, &v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_18E1CC468();
        sub_18E22429C(v25, v26, v27);
        v23 = v105;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        v30 = sub_18E1C8C60(v28);
        sub_18E22429C(v30, v29 + 1, 1);
        v23 = v105;
      }

      *(v23 + 16) = v29 + 1;
      sub_18E1C551C(&v102, v23 + 40 * v29 + 32);
    }

    else
    {
      sub_18E1C9934(&v106);
    }

    v22 += 40;
    ++v20;
  }

  v31 = 0;
  v32 = *(v23 + 16);
  v33 = v23 + 32;
  v35 = v97;
  v34 = v98;
  while (v32 != v31)
  {
    if (v31 >= *(v23 + 16))
    {
      goto LABEL_59;
    }

    sub_18E1E8C38(v33, &v102);
    v36 = v103;
    v37 = v104;
    sub_18E1E15F4(&v102, v103);
    if ((*(v37 + 24))(v36, v37) == v35 && v38 == v34)
    {

LABEL_26:
      sub_18E1C551C(&v102, &v106);
      v44 = v107;
      v45 = v96;
      *v96 = v106;
      *(v45 + 1) = v44;
      v45[4] = v108;
      goto LABEL_27;
    }

    v40 = sub_18E44F3CC();

    if (v40)
    {

      goto LABEL_26;
    }

    sub_18E1C9934(&v102);
    v33 += 40;
    ++v31;
  }

  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v41 = v93;
  sub_18E44E35C();
  if (sub_18E1CAF28(v41, 1, v95) == 1)
  {
    sub_18E1E8EEC(&v106, &qword_1EABE0FF0, &qword_18E49DA48);
    sub_18E1E8EEC(v41, &qword_1EABE0DB0, &unk_18E4E24B0);
    v42 = v96;
    v43 = 0uLL;
    goto LABEL_23;
  }

  v46 = sub_18E208090();
  v47(v46);
  v48 = sub_18E44E33C();
  v50 = v49;
  v51 = sub_18E44E2EC();
  if (!v51)
  {
    goto LABEL_49;
  }

  v52 = v51;
  v88 = v48;
  v89 = v50;
  v53 = 0;
  v54 = *(v51 + 16);
  v55 = v100;
  v56 = (v99 + 8);
  v97 = (v99 + 32);
  v98 = MEMORY[0x1E69E7CC0];
  while (v54 != v53)
  {
    if (v53 >= *(v52 + 16))
    {
      goto LABEL_60;
    }

    v57 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v58 = *(v99 + 72);
    (*(v99 + 16))(v101, v52 + v57 + v58 * v53, v55);
    sub_18E44E29C();
    sub_18E1E381C();
    if (v60 == v61 && v59 == 0xE700000000000000)
    {

LABEL_39:
      v55 = v100;
      v93 = *v97;
      v93(v94, v101, v100);
      v63 = v98;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v63;
      *&v102 = v63;
      if ((v64 & 1) == 0)
      {
        sub_18E1CC468();
        sub_18E1CA37C();
        v55 = v100;
        v65 = v102;
      }

      v33 = *(v65 + 16);
      v66 = *(v65 + 24);
      v67 = v33 + 1;
      if (v33 >= v66 >> 1)
      {
        sub_18E1C8C60(v66);
        v98 = v68;
        sub_18E1CA37C();
        v67 = v98;
        v55 = v100;
        v65 = v102;
      }

      ++v53;
      *(v65 + 16) = v67;
      v98 = v65;
      v93(v65 + v57 + v33 * v58, v94, v55);
    }

    else
    {
      sub_18E1D0380();
      v33 = sub_18E44F3CC();

      if (v33)
      {
        goto LABEL_39;
      }

      v55 = v100;
      (*v56)(v101, v100);
      ++v53;
    }
  }

  v69 = v90;
  sub_18E2FD058(v98, v90);

  if (sub_18E1CAF28(v69, 1, v55) == 1)
  {
    sub_18E1E8EEC(v69, &qword_1EABE9048, &unk_18E4E24E0);
    v50 = v89;
    goto LABEL_48;
  }

  v33 = sub_18E44E2AC();
  v71 = v70;
  v72 = sub_18E1CF9A0();
  v73(v72);
  v50 = v89;
  if (v71)
  {
    v48 = v88;
    goto LABEL_50;
  }

LABEL_48:
  v48 = v88;
LABEL_49:

  v71 = 0xE700000000000000;
  sub_18E21D184();
LABEL_50:
  static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase()();
  v75 = v103;
  v74 = v104;
  sub_18E1E15F4(&v102, v103);
  if (v48 == (*(*(*(*(v74 + 8) + 8) + 8) + 104))(v75) && v50 == v76)
  {

    sub_18E1C9934(&v102);
    goto LABEL_57;
  }

  v78 = sub_18E44F3CC();

  sub_18E1C9934(&v102);
  if (v78)
  {
LABEL_57:
    static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase(variant:)(&v102, v33, v71);

    v81 = v103;
    v82 = v104;
    sub_18E1E15F4(&v102, v103);
    v83 = v96;
    v96[3] = v81;
    v83[4] = *(*(*(v82 + 8) + 8) + 8);
    sub_18E1E1774(v83);
    sub_18E1C82B8();
    (*(v84 + 16))();
    v85 = sub_18E1CF700();
    v86(v85);
    sub_18E1E8EEC(&v106, &qword_1EABE0FF0, &qword_18E49DA48);
    sub_18E1C9934(&v102);
    goto LABEL_27;
  }

  v79 = sub_18E1CF700();
  v80(v79);

  sub_18E1E8EEC(&v106, &qword_1EABE0FF0, &qword_18E49DA48);
  v43 = 0uLL;
  v42 = v96;
LABEL_23:
  *v42 = v43;
  *(v42 + 1) = v43;
  v42[4] = 0;
LABEL_27:
  sub_18E1C5544();
}

unint64_t sub_18E24E024(uint64_t a1)
{
  result = sub_18E24E078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E24E078()
{
  result = qword_1ED6A9400;
  if (!qword_1ED6A9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9400);
  }

  return result;
}

uint64_t sub_18E24E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

BOOL sub_18E24E108(void *a1)
{
  v1 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  v2 = sub_18E221CB8();
  v4 = v3(v2, v1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_18E24E580(0, v5, 0);
    v6 = v17;
    v7 = *(v17 + 16);
    v8 = 32;
    do
    {
      v9 = *(v4 + v8);
      v10 = *(v17 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_18E24E580(v10 > 1, v7 + 1, 1);
      }

      *(v17 + 16) = v7 + 1;
      *(v17 + v7 + 32) = v9;
      v8 += 24;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v11 = (v6 + 32);
  v12 = *(v6 + 16);
  while (2)
  {
    v13 = v12;
    if (v12-- != 0)
    {
      switch(*v11)
      {
        case 1:

          break;
        default:
          v15 = sub_18E44F3CC();

          ++v11;
          if ((v15 & 1) == 0)
          {
            continue;
          }

          break;
      }
    }

    break;
  }

  return v13 != 0;
}

uint64_t sub_18E24E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E24E438();
}

unint64_t sub_18E24E3B0()
{
  result = qword_1ED6A9420;
  if (!qword_1ED6A9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9420);
  }

  return result;
}

uint64_t sub_18E24E438()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    if (qword_1EABE0D08 != -1)
    {
      sub_18E1C6C24();
      swift_once();
    }

    v1 = qword_1EABE2F98;
  }

  return v1;
}

void sub_18E24E4A4(char a1, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_18E1C5534();
    if (v9 != v10)
    {
      sub_18E1E1CA8();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_18E2706EC(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[v11] <= v15)
    {
      memmove(v15, v16, v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v11);
  }
}

unint64_t sub_18E24E5B0()
{
  result = qword_1ED6A9410;
  if (!qword_1ED6A9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9410);
  }

  return result;
}

char *sub_18E24E608(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_18E1C69D4(a3, result);
  }

  return result;
}

unint64_t sub_18E24E630()
{
  result = qword_1ED6A9408;
  if (!qword_1ED6A9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9408);
  }

  return result;
}

uint64_t sub_18E24E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xF8uLL);
  return sub_18E24E438();
}

unint64_t sub_18E24E6C0(uint64_t a1)
{
  result = sub_18E24E6E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E24E6E8()
{
  result = qword_1ED6A8FD8;
  if (!qword_1ED6A8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FD8);
  }

  return result;
}

uint64_t sub_18E24E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  v10 = memcpy(v8, v9, 0xF8uLL);
  return sub_18E200C68(v10, v11);
}

unint64_t sub_18E24E778(uint64_t a1)
{
  result = sub_18E24FDBC();
  *(a1 + 8) = result;
  return result;
}

void sub_18E24E7A0()
{
  sub_18E1C62A0();
  v4 = v0;
  v6 = v5;
  sub_18E44E27C();
  swift_allocObject();
  sub_18E44E26C();
  sub_18E202008(v6, v4394, &qword_1EABE0FF0, &qword_18E49DA48);
  v7 = v4395;
  if (v4395)
  {
    v2 = v4396;
    sub_18E1E15F4(v4394, v4395);
    (*(v2 + 72))(v7, v2);
    sub_18E1C9934(v4394);
  }

  else
  {
    sub_18E2CF0FC(v4394, &qword_1EABE0FF0);
  }

  sub_18E202008(v6, v4398, &qword_1EABE0FF0, &qword_18E49DA48);
  if (!v4398[3])
  {
    goto LABEL_250;
  }

  sub_18E202008(v4398, v4397, &qword_1EABE0FF0, &qword_18E49DA48);
  v8 = sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
  v15 = sub_18E1CAD2C(v8, v9, v10, &type metadata for AppleDeviceTrackingBase, v11, v12, v13, v14, v1003, v1112, v1221, v1326, v1431, v1536, v1641, v1746, v1851, v1956, v2061, v2166, v2271, v2376, v2481, v2586, v2691, v2796, v2901, v3006, v3111, v3216, v3321, v3426, v3531, v3636, v3741, v3846, v3951, v4056, v4161, v4266, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
  if (!v15)
  {
    v32 = sub_18E1CAD2C(v15, v16, v17, &type metadata for AssetBackedAppleDeviceTrackingBase, v19, v20, v21, v22, v1004, v1113, v1222, v1327, v1432, v1537, v1642, v1747, v1852, v1957, v2062, v2167, v2272, v2377, v2482, v2587, v2692, v2797, v2902, v3007, v3112, v3217, v3322, v3427, v3532, v3637, v3742, v3847, v3952, v4057, v4162, v4267, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v32)
    {
      v40 = sub_18E1DD568(v32, v33, v34, v35, v36, v37, v38, v39, v1006, v1115, v1224, v1329, v1434, v1539, v1644, v1749, v1854, v1959, v2064, v2169, v2274, v2379, v2484, v2589, v2694, v2799, v2904, v3009, v3114, v3219, v3324, v3429, v3534, v3639, v3744, v3849, v3954, v4059, v4164, v4269, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v40, v41, v42, v43, v44, v45, v46, v47, v1007, v1116, v1225, v1330, v1435, v1540, v1645, v1750, v1855, v1960, v2065, v2170, v2275, v2380, v2485, v2590, v2695, v2800, v2905, v3010, v3115, v3220, v3325, v3430, v3535, v3640, v3745, v3850, v3955, v4060, v4165, v4270, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v48 = sub_18E2C3090();
      sub_18E1CC4C8(v48, &type metadata for AssetBackedAppleDeviceTrackingBase, v48);
      if (v1)
      {

        sub_18E2CFC30(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CFC30(v84);
      goto LABEL_19;
    }

    v49 = sub_18E1CAD2C(v32, v33, v34, &type metadata for DiffusionAdapterBase, v36, v37, v38, v39, v1006, v1115, v1224, v1329, v1434, v1539, v1644, v1749, v1854, v1959, v2064, v2169, v2274, v2379, v2484, v2589, v2694, v2799, v2904, v3009, v3114, v3219, v3324, v3429, v3534, v3639, v3744, v3849, v3954, v4059, v4164, v4269, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v49)
    {
      v57 = sub_18E1DD568(v49, v50, v51, v52, v53, v54, v55, v56, v1008, v1117, v1226, v1331, v1436, v1541, v1646, v1751, v1856, v1961, v2066, v2171, v2276, v2381, v2486, v2591, v2696, v2801, v2906, v3011, v3116, v3221, v3326, v3431, v3536, v3641, v3746, v3851, v3956, v4061, v4166, v4271, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v57, v58, v59, v60, v61, v62, v63, v64, v1009, v1118, v1227, v1332, v1437, v1542, v1647, v1752, v1857, v1962, v2067, v2172, v2277, v2382, v2487, v2592, v2697, v2802, v2907, v3012, v3117, v3222, v3327, v3432, v3537, v3642, v3747, v3852, v3957, v4062, v4167, v4272, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v65 = sub_18E2C3210();
      sub_18E1CC4C8(v65, &type metadata for DiffusionAdapterBase, v65);
      if (v1)
      {

        sub_18E2CFC00(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFC00(v103);
      goto LABEL_29;
    }

    v67 = sub_18E1CAD2C(v49, v50, v51, &type metadata for AssetBackedDiffusionAdapterBase, v53, v54, v55, v56, v1008, v1117, v1226, v1331, v1436, v1541, v1646, v1751, v1856, v1961, v2066, v2171, v2276, v2381, v2486, v2591, v2696, v2801, v2906, v3011, v3116, v3221, v3326, v3431, v3536, v3641, v3746, v3851, v3956, v4061, v4166, v4271, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v67)
    {
      v75 = sub_18E1DD568(v67, v68, v69, v70, v71, v72, v73, v74, v1010, v1119, v1228, v1333, v1438, v1543, v1648, v1753, v1858, v1963, v2068, v2173, v2278, v2383, v2488, v2593, v2698, v2803, v2908, v3013, v3118, v3223, v3328, v3433, v3538, v3643, v3748, v3853, v3958, v4063, v4168, v4273, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v75, v76, v77, v78, v79, v80, v81, v82, v1011, v1120, v1229, v1334, v1439, v1544, v1649, v1754, v1859, v1964, v2069, v2174, v2279, v2384, v2489, v2594, v2699, v2804, v2909, v3014, v3119, v3224, v3329, v3434, v3539, v3644, v3749, v3854, v3959, v4064, v4169, v4274, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v83 = sub_18E2C3560();
      sub_18E1CC4C8(v83, &type metadata for AssetBackedDiffusionAdapterBase, v83);
      if (v1)
      {

        sub_18E2CFBD0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFBD0(v121);
      goto LABEL_29;
    }

    v86 = sub_18E1CAD2C(v67, v68, v69, &type metadata for DiffusionModelBase, v71, v72, v73, v74, v1010, v1119, v1228, v1333, v1438, v1543, v1648, v1753, v1858, v1963, v2068, v2173, v2278, v2383, v2488, v2593, v2698, v2803, v2908, v3013, v3118, v3223, v3328, v3433, v3538, v3643, v3748, v3853, v3958, v4063, v4168, v4273, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v86)
    {
      v94 = sub_18E1DD568(v86, v87, v88, v89, v90, v91, v92, v93, v1012, v1121, v1230, v1335, v1440, v1545, v1650, v1755, v1860, v1965, v2070, v2175, v2280, v2385, v2490, v2595, v2700, v2805, v2910, v3015, v3120, v3225, v3330, v3435, v3540, v3645, v3750, v3855, v3960, v4065, v4170, v4275, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v94, v95, v96, v97, v98, v99, v100, v101, v1013, v1122, v1231, v1336, v1441, v1546, v1651, v1756, v1861, v1966, v2071, v2176, v2281, v2386, v2491, v2596, v2701, v2806, v2911, v3016, v3121, v3226, v3331, v3436, v3541, v3646, v3751, v3856, v3961, v4066, v4171, v4276, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v102 = sub_18E2C36E0();
      sub_18E1CC4C8(v102, &type metadata for DiffusionModelBase, v102);
      if (v1)
      {

        sub_18E2CFBA0(&v4371);
        goto LABEL_247;
      }

      sub_18E211FFC();
      sub_18E2349A4();
      sub_18E2CFBA0(v140);
      goto LABEL_38;
    }

    v104 = sub_18E1CAD2C(v86, v87, v88, &type metadata for AssetBackedDiffusionModelBase, v90, v91, v92, v93, v1012, v1121, v1230, v1335, v1440, v1545, v1650, v1755, v1860, v1965, v2070, v2175, v2280, v2385, v2490, v2595, v2700, v2805, v2910, v3015, v3120, v3225, v3330, v3435, v3540, v3645, v3750, v3855, v3960, v4065, v4170, v4275, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v104)
    {
      v112 = sub_18E1DD568(v104, v105, v106, v107, v108, v109, v110, v111, v1014, v1123, v1232, v1337, v1442, v1547, v1652, v1757, v1862, v1967, v2072, v2177, v2282, v2387, v2492, v2597, v2702, v2807, v2912, v3017, v3122, v3227, v3332, v3437, v3542, v3647, v3752, v3857, v3962, v4067, v4172, v4277, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v112, v113, v114, v115, v116, v117, v118, v119, v1015, v1124, v1233, v1338, v1443, v1548, v1653, v1758, v1863, v1968, v2073, v2178, v2283, v2388, v2493, v2598, v2703, v2808, v2913, v3018, v3123, v3228, v3333, v3438, v3543, v3648, v3753, v3858, v3963, v4068, v4173, v4278, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v120 = sub_18E2C3A30();
      sub_18E1CC4C8(v120, &type metadata for AssetBackedDiffusionModelBase, v120);
      if (v1)
      {

        sub_18E2CFB70(&v4371);
        goto LABEL_247;
      }

      sub_18E211FFC();
      sub_18E2349A4();
      sub_18E2CFB70(v158);
LABEL_38:
      sub_18E1C9934(v4397);
      v3 = 0xEF6C65646F4D2E6ELL;
      goto LABEL_251;
    }

    v123 = sub_18E1CAD2C(v104, v105, v106, &type metadata for DisabledUseCaseListBase, v108, v109, v110, v111, v1014, v1123, v1232, v1337, v1442, v1547, v1652, v1757, v1862, v1967, v2072, v2177, v2282, v2387, v2492, v2597, v2702, v2807, v2912, v3017, v3122, v3227, v3332, v3437, v3542, v3647, v3752, v3857, v3962, v4067, v4172, v4277, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v123)
    {
      v131 = sub_18E1DD568(v123, v124, v125, v126, v127, v128, v129, v130, v1016, v1125, v1234, v1339, v1444, v1549, v1654, v1759, v1864, v1969, v2074, v2179, v2284, v2389, v2494, v2599, v2704, v2809, v2914, v3019, v3124, v3229, v3334, v3439, v3544, v3649, v3754, v3859, v3964, v4069, v4174, v4279, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v131, v132, v133, v134, v135, v136, v137, v138, v1017, v1126, v1235, v1340, v1445, v1550, v1655, v1760, v1865, v1970, v2075, v2180, v2285, v2390, v2495, v2600, v2705, v2810, v2915, v3020, v3125, v3230, v3335, v3440, v3545, v3650, v3755, v3860, v3965, v4070, v4175, v4280, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v139 = sub_18E2C3BB0();
      sub_18E1CC4C8(v139, &type metadata for DisabledUseCaseListBase, v139);
      if (v1)
      {

        sub_18E2CFB40(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CFB40(v176);
      goto LABEL_47;
    }

    v141 = sub_18E1CAD2C(v123, v124, v125, &type metadata for AssetBackedDisabledUseCaseListBase, v127, v128, v129, v130, v1016, v1125, v1234, v1339, v1444, v1549, v1654, v1759, v1864, v1969, v2074, v2179, v2284, v2389, v2494, v2599, v2704, v2809, v2914, v3019, v3124, v3229, v3334, v3439, v3544, v3649, v3754, v3859, v3964, v4069, v4174, v4279, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v141)
    {
      v149 = sub_18E1DD568(v141, v142, v143, v144, v145, v146, v147, v148, v1018, v1127, v1236, v1341, v1446, v1551, v1656, v1761, v1866, v1971, v2076, v2181, v2286, v2391, v2496, v2601, v2706, v2811, v2916, v3021, v3126, v3231, v3336, v3441, v3546, v3651, v3756, v3861, v3966, v4071, v4176, v4281, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v149, v150, v151, v152, v153, v154, v155, v156, v1019, v1128, v1237, v1342, v1447, v1552, v1657, v1762, v1867, v1972, v2077, v2182, v2287, v2392, v2497, v2602, v2707, v2812, v2917, v3022, v3127, v3232, v3337, v3442, v3547, v3652, v3757, v3862, v3967, v4072, v4177, v4282, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v157 = sub_18E2C3E84();
      sub_18E1CC4C8(v157, &type metadata for AssetBackedDisabledUseCaseListBase, v157);
      if (v1)
      {

        sub_18E2CFB10(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CFB10(v194);
LABEL_47:
      v85 = "DisabledUseCaseList";
      goto LABEL_20;
    }

    v159 = sub_18E1CAD2C(v141, v142, v143, &type metadata for EmbeddingDenyListBase, v145, v146, v147, v148, v1018, v1127, v1236, v1341, v1446, v1551, v1656, v1761, v1866, v1971, v2076, v2181, v2286, v2391, v2496, v2601, v2706, v2811, v2916, v3021, v3126, v3231, v3336, v3441, v3546, v3651, v3756, v3861, v3966, v4071, v4176, v4281, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v159)
    {
      v167 = sub_18E1DD568(v159, v160, v161, v162, v163, v164, v165, v166, v1020, v1129, v1238, v1343, v1448, v1553, v1658, v1763, v1868, v1973, v2078, v2183, v2288, v2393, v2498, v2603, v2708, v2813, v2918, v3023, v3128, v3233, v3338, v3443, v3548, v3653, v3758, v3863, v3968, v4073, v4178, v4283, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v167, v168, v169, v170, v171, v172, v173, v174, v1021, v1130, v1239, v1344, v1449, v1554, v1659, v1764, v1869, v1974, v2079, v2184, v2289, v2394, v2499, v2604, v2709, v2814, v2919, v3024, v3129, v3234, v3339, v3444, v3549, v3654, v3759, v3864, v3969, v4074, v4179, v4284, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v175 = sub_18E2C4004();
      sub_18E1CC4C8(v175, &type metadata for EmbeddingDenyListBase, v175);
      if (v1)
      {

        sub_18E2CFAE0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFAE0(v212);
      goto LABEL_29;
    }

    v177 = sub_18E1CAD2C(v159, v160, v161, &type metadata for AssetBackedEmbeddingDenyListBase, v163, v164, v165, v166, v1020, v1129, v1238, v1343, v1448, v1553, v1658, v1763, v1868, v1973, v2078, v2183, v2288, v2393, v2498, v2603, v2708, v2813, v2918, v3023, v3128, v3233, v3338, v3443, v3548, v3653, v3758, v3863, v3968, v4073, v4178, v4283, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v177)
    {
      v185 = sub_18E1DD568(v177, v178, v179, v180, v181, v182, v183, v184, v1022, v1131, v1240, v1345, v1450, v1555, v1660, v1765, v1870, v1975, v2080, v2185, v2290, v2395, v2500, v2605, v2710, v2815, v2920, v3025, v3130, v3235, v3340, v3445, v3550, v3655, v3760, v3865, v3970, v4075, v4180, v4285, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v185, v186, v187, v188, v189, v190, v191, v192, v1023, v1132, v1241, v1346, v1451, v1556, v1661, v1766, v1871, v1976, v2081, v2186, v2291, v2396, v2501, v2606, v2711, v2816, v2921, v3026, v3131, v3236, v3341, v3446, v3551, v3656, v3761, v3866, v3971, v4076, v4181, v4286, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v193 = sub_18E2C4354();
      sub_18E1CC4C8(v193, &type metadata for AssetBackedEmbeddingDenyListBase, v193);
      if (v1)
      {

        sub_18E2CFAB0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFAB0(v230);
      goto LABEL_29;
    }

    v195 = sub_18E1CAD2C(v177, v178, v179, &type metadata for EmbeddingPreprocessorBase, v181, v182, v183, v184, v1022, v1131, v1240, v1345, v1450, v1555, v1660, v1765, v1870, v1975, v2080, v2185, v2290, v2395, v2500, v2605, v2710, v2815, v2920, v3025, v3130, v3235, v3340, v3445, v3550, v3655, v3760, v3865, v3970, v4075, v4180, v4285, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v195)
    {
      v203 = sub_18E1DD568(v195, v196, v197, v198, v199, v200, v201, v202, v1024, v1133, v1242, v1347, v1452, v1557, v1662, v1767, v1872, v1977, v2082, v2187, v2292, v2397, v2502, v2607, v2712, v2817, v2922, v3027, v3132, v3237, v3342, v3447, v3552, v3657, v3762, v3867, v3972, v4077, v4182, v4287, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v203, v204, v205, v206, v207, v208, v209, v210, v1025, v1134, v1243, v1348, v1453, v1558, v1663, v1768, v1873, v1978, v2083, v2188, v2293, v2398, v2503, v2608, v2713, v2818, v2923, v3028, v3133, v3238, v3343, v3448, v3553, v3658, v3763, v3868, v3973, v4078, v4183, v4288, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v211 = sub_18E2C44D4();
      sub_18E1CC4C8(v211, &type metadata for EmbeddingPreprocessorBase, v211);
      if (v1)
      {

        sub_18E2CFA80(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFA80(v248);
      goto LABEL_65;
    }

    v213 = sub_18E1CAD2C(v195, v196, v197, &type metadata for AssetBackedEmbeddingPreprocessorBase, v199, v200, v201, v202, v1024, v1133, v1242, v1347, v1452, v1557, v1662, v1767, v1872, v1977, v2082, v2187, v2292, v2397, v2502, v2607, v2712, v2817, v2922, v3027, v3132, v3237, v3342, v3447, v3552, v3657, v3762, v3867, v3972, v4077, v4182, v4287, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v213)
    {
      v221 = sub_18E1DD568(v213, v214, v215, v216, v217, v218, v219, v220, v1026, v1135, v1244, v1349, v1454, v1559, v1664, v1769, v1874, v1979, v2084, v2189, v2294, v2399, v2504, v2609, v2714, v2819, v2924, v3029, v3134, v3239, v3344, v3449, v3554, v3659, v3764, v3869, v3974, v4079, v4184, v4289, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v221, v222, v223, v224, v225, v226, v227, v228, v1027, v1136, v1245, v1350, v1455, v1560, v1665, v1770, v1875, v1980, v2085, v2190, v2295, v2400, v2505, v2610, v2715, v2820, v2925, v3030, v3135, v3240, v3345, v3450, v3555, v3660, v3765, v3870, v3975, v4080, v4185, v4290, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v229 = sub_18E1DF530();
      sub_18E1CC4C8(v229, &type metadata for AssetBackedEmbeddingPreprocessorBase, v229);
      if (v1)
      {

        sub_18E2CFA50(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFA50(v266);
      goto LABEL_65;
    }

    v231 = sub_18E1CAD2C(v213, v214, v215, &type metadata for HandwritingSynthesizerBase, v217, v218, v219, v220, v1026, v1135, v1244, v1349, v1454, v1559, v1664, v1769, v1874, v1979, v2084, v2189, v2294, v2399, v2504, v2609, v2714, v2819, v2924, v3029, v3134, v3239, v3344, v3449, v3554, v3659, v3764, v3869, v3974, v4079, v4184, v4289, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v231)
    {
      v239 = sub_18E1DD568(v231, v232, v233, v234, v235, v236, v237, v238, v1028, v1137, v1246, v1351, v1456, v1561, v1666, v1771, v1876, v1981, v2086, v2191, v2296, v2401, v2506, v2611, v2716, v2821, v2926, v3031, v3136, v3241, v3346, v3451, v3556, v3661, v3766, v3871, v3976, v4081, v4186, v4291, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v239, v240, v241, v242, v243, v244, v245, v246, v1029, v1138, v1247, v1352, v1457, v1562, v1667, v1772, v1877, v1982, v2087, v2192, v2297, v2402, v2507, v2612, v2717, v2822, v2927, v3032, v3137, v3242, v3347, v3452, v3557, v3662, v3767, v3872, v3977, v4082, v4187, v4292, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v247 = sub_18E2C4880();
      sub_18E1CC4C8(v247, &type metadata for HandwritingSynthesizerBase, v247);
      if (v1)
      {

        sub_18E2CFA20(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CFA20(v285);
      goto LABEL_74;
    }

    v249 = sub_18E1CAD2C(v231, v232, v233, &type metadata for AssetBackedHandwritingSynthesizerBase, v235, v236, v237, v238, v1028, v1137, v1246, v1351, v1456, v1561, v1666, v1771, v1876, v1981, v2086, v2191, v2296, v2401, v2506, v2611, v2716, v2821, v2926, v3031, v3136, v3241, v3346, v3451, v3556, v3661, v3766, v3871, v3976, v4081, v4186, v4291, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v249)
    {
      v257 = sub_18E1DD568(v249, v250, v251, v252, v253, v254, v255, v256, v1030, v1139, v1248, v1353, v1458, v1563, v1668, v1773, v1878, v1983, v2088, v2193, v2298, v2403, v2508, v2613, v2718, v2823, v2928, v3033, v3138, v3243, v3348, v3453, v3558, v3663, v3768, v3873, v3978, v4083, v4188, v4293, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v257, v258, v259, v260, v261, v262, v263, v264, v1031, v1140, v1249, v1354, v1459, v1564, v1669, v1774, v1879, v1984, v2089, v2194, v2299, v2404, v2509, v2614, v2719, v2824, v2929, v3034, v3139, v3244, v3349, v3454, v3559, v3664, v3769, v3874, v3979, v4084, v4189, v4294, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v265 = sub_18E2C4B54();
      sub_18E1CC4C8(v265, &type metadata for AssetBackedHandwritingSynthesizerBase, v265);
      if (v1)
      {

        sub_18E2CF9F0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF9F0(v303);
LABEL_74:
      sub_18E1C8E30();
      v2 = v304 + 3;
      goto LABEL_251;
    }

    v268 = sub_18E1CAD2C(v249, v250, v251, &type metadata for ImageCuratedPromptsBase, v253, v254, v255, v256, v1030, v1139, v1248, v1353, v1458, v1563, v1668, v1773, v1878, v1983, v2088, v2193, v2298, v2403, v2508, v2613, v2718, v2823, v2928, v3033, v3138, v3243, v3348, v3453, v3558, v3663, v3768, v3873, v3978, v4083, v4188, v4293, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v268)
    {
      v276 = sub_18E1DD568(v268, v269, v270, v271, v272, v273, v274, v275, v1032, v1141, v1250, v1355, v1460, v1565, v1670, v1775, v1880, v1985, v2090, v2195, v2300, v2405, v2510, v2615, v2720, v2825, v2930, v3035, v3140, v3245, v3350, v3455, v3560, v3665, v3770, v3875, v3980, v4085, v4190, v4295, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v276, v277, v278, v279, v280, v281, v282, v283, v1033, v1142, v1251, v1356, v1461, v1566, v1671, v1776, v1881, v1986, v2091, v2196, v2301, v2406, v2511, v2616, v2721, v2826, v2931, v3036, v3141, v3246, v3351, v3456, v3561, v3666, v3771, v3876, v3981, v4086, v4191, v4296, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v284 = sub_18E2C4CD4();
      sub_18E1CC4C8(v284, &type metadata for ImageCuratedPromptsBase, v284);
      if (v1)
      {

        sub_18E2CF9C0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CF9C0(v322);
      goto LABEL_83;
    }

    v286 = sub_18E1CAD2C(v268, v269, v270, &type metadata for AssetBackedImageCuratedPromptsBase, v272, v273, v274, v275, v1032, v1141, v1250, v1355, v1460, v1565, v1670, v1775, v1880, v1985, v2090, v2195, v2300, v2405, v2510, v2615, v2720, v2825, v2930, v3035, v3140, v3245, v3350, v3455, v3560, v3665, v3770, v3875, v3980, v4085, v4190, v4295, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v286)
    {
      v294 = sub_18E1DD568(v286, v287, v288, v289, v290, v291, v292, v293, v1034, v1143, v1252, v1357, v1462, v1567, v1672, v1777, v1882, v1987, v2092, v2197, v2302, v2407, v2512, v2617, v2722, v2827, v2932, v3037, v3142, v3247, v3352, v3457, v3562, v3667, v3772, v3877, v3982, v4087, v4192, v4297, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v294, v295, v296, v297, v298, v299, v300, v301, v1035, v1144, v1253, v1358, v1463, v1568, v1673, v1778, v1883, v1988, v2093, v2198, v2303, v2408, v2513, v2618, v2723, v2828, v2933, v3038, v3143, v3248, v3353, v3458, v3563, v3668, v3773, v3878, v3983, v4088, v4193, v4298, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v302 = sub_18E2C4FA8();
      sub_18E1CC4C8(v302, &type metadata for AssetBackedImageCuratedPromptsBase, v302);
      if (v1)
      {

        sub_18E2CF990(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CF990(v340);
LABEL_83:
      v85 = "ImageCuratedPrompts";
      goto LABEL_20;
    }

    v305 = sub_18E1CAD2C(v286, v287, v288, &type metadata for ImageFilterBase, v290, v291, v292, v293, v1034, v1143, v1252, v1357, v1462, v1567, v1672, v1777, v1882, v1987, v2092, v2197, v2302, v2407, v2512, v2617, v2722, v2827, v2932, v3037, v3142, v3247, v3352, v3457, v3562, v3667, v3772, v3877, v3982, v4087, v4192, v4297, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v305)
    {
      v313 = sub_18E1DD568(v305, v306, v307, v308, v309, v310, v311, v312, v1036, v1145, v1254, v1359, v1464, v1569, v1674, v1779, v1884, v1989, v2094, v2199, v2304, v2409, v2514, v2619, v2724, v2829, v2934, v3039, v3144, v3249, v3354, v3459, v3564, v3669, v3774, v3879, v3984, v4089, v4194, v4299, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v313, v314, v315, v316, v317, v318, v319, v320, v1037, v1146, v1255, v1360, v1465, v1570, v1675, v1780, v1885, v1990, v2095, v2200, v2305, v2410, v2515, v2620, v2725, v2830, v2935, v3040, v3145, v3250, v3355, v3460, v3565, v3670, v3775, v3880, v3985, v4090, v4195, v4300, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v321 = sub_18E2C5128();
      sub_18E1CC4C8(v321, &type metadata for ImageFilterBase, v321);
      if (v1)
      {

        sub_18E2CF960(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6C69466500000000;
      sub_18E2CF960(&v4371);
      goto LABEL_92;
    }

    v323 = sub_18E1CAD2C(v305, v306, v307, &type metadata for AssetBackedImageFilterBase, v309, v310, v311, v312, v1036, v1145, v1254, v1359, v1464, v1569, v1674, v1779, v1884, v1989, v2094, v2199, v2304, v2409, v2514, v2619, v2724, v2829, v2934, v3039, v3144, v3249, v3354, v3459, v3564, v3669, v3774, v3879, v3984, v4089, v4194, v4299, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v323)
    {
      v331 = sub_18E1DD568(v323, v324, v325, v326, v327, v328, v329, v330, v1038, v1147, v1256, v1361, v1466, v1571, v1676, v1781, v1886, v1991, v2096, v2201, v2306, v2411, v2516, v2621, v2726, v2831, v2936, v3041, v3146, v3251, v3356, v3461, v3566, v3671, v3776, v3881, v3986, v4091, v4196, v4301, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v331, v332, v333, v334, v335, v336, v337, v338, v1039, v1148, v1257, v1362, v1467, v1572, v1677, v1782, v1887, v1992, v2097, v2202, v2307, v2412, v2517, v2622, v2727, v2832, v2937, v3042, v3147, v3252, v3357, v3462, v3567, v3672, v3777, v3882, v3987, v4092, v4197, v4302, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v339 = sub_18E2C53FC();
      sub_18E1CC4C8(v339, &type metadata for AssetBackedImageFilterBase, v339);
      if (v1)
      {

        sub_18E2CF930(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6C69466500000000;
      sub_18E2CF930(&v4371);
      goto LABEL_92;
    }

    v341 = sub_18E1CAD2C(v323, v324, v325, &type metadata for ImageMagicCleanUpBase, v327, v328, v329, v330, v1038, v1147, v1256, v1361, v1466, v1571, v1676, v1781, v1886, v1991, v2096, v2201, v2306, v2411, v2516, v2621, v2726, v2831, v2936, v3041, v3146, v3251, v3356, v3461, v3566, v3671, v3776, v3881, v3986, v4091, v4196, v4301, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v341)
    {
      v349 = sub_18E1DD568(v341, v342, v343, v344, v345, v346, v347, v348, v1040, v1149, v1258, v1363, v1468, v1573, v1678, v1783, v1888, v1993, v2098, v2203, v2308, v2413, v2518, v2623, v2728, v2833, v2938, v3043, v3148, v3253, v3358, v3463, v3568, v3673, v3778, v3883, v3988, v4093, v4198, v4303, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v349, v350, v351, v352, v353, v354, v355, v356, v1041, v1150, v1259, v1364, v1469, v1574, v1679, v1784, v1889, v1994, v2099, v2204, v2309, v2414, v2519, v2624, v2729, v2834, v2939, v3044, v3149, v3254, v3359, v3464, v3569, v3674, v3779, v3884, v3989, v4094, v4199, v4304, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v357 = sub_18E2C557C();
      sub_18E1CC4C8(v357, &type metadata for ImageMagicCleanUpBase, v357);
      if (v1)
      {

        sub_18E2CF900(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF900(v392);
      goto LABEL_29;
    }

    v358 = sub_18E1CAD2C(v341, v342, v343, &type metadata for AssetBackedImageMagicCleanUpBase, v345, v346, v347, v348, v1040, v1149, v1258, v1363, v1468, v1573, v1678, v1783, v1888, v1993, v2098, v2203, v2308, v2413, v2518, v2623, v2728, v2833, v2938, v3043, v3148, v3253, v3358, v3463, v3568, v3673, v3778, v3883, v3988, v4093, v4198, v4303, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v358)
    {
      v366 = sub_18E1DD568(v358, v359, v360, v361, v362, v363, v364, v365, v1042, v1151, v1260, v1365, v1470, v1575, v1680, v1785, v1890, v1995, v2100, v2205, v2310, v2415, v2520, v2625, v2730, v2835, v2940, v3045, v3150, v3255, v3360, v3465, v3570, v3675, v3780, v3885, v3990, v4095, v4200, v4305, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v366, v367, v368, v369, v370, v371, v372, v373, v1043, v1152, v1261, v1366, v1471, v1576, v1681, v1786, v1891, v1996, v2101, v2206, v2311, v2416, v2521, v2626, v2731, v2836, v2941, v3046, v3151, v3256, v3361, v3466, v3571, v3676, v3781, v3886, v3991, v4096, v4201, v4306, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v374 = sub_18E2C5850();
      sub_18E1CC4C8(v374, &type metadata for AssetBackedImageMagicCleanUpBase, v374);
      if (v1)
      {

        sub_18E2CF8D0(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF8D0(v410);
LABEL_29:
      sub_18E1C8E30();
      v2 = v122 - 2;
      goto LABEL_251;
    }

    v375 = sub_18E1CAD2C(v358, v359, v360, &type metadata for ImageScalerBase, v362, v363, v364, v365, v1042, v1151, v1260, v1365, v1470, v1575, v1680, v1785, v1890, v1995, v2100, v2205, v2310, v2415, v2520, v2625, v2730, v2835, v2940, v3045, v3150, v3255, v3360, v3465, v3570, v3675, v3780, v3885, v3990, v4095, v4200, v4305, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v375)
    {
      v383 = sub_18E1DD568(v375, v376, v377, v378, v379, v380, v381, v382, v1044, v1153, v1262, v1367, v1472, v1577, v1682, v1787, v1892, v1997, v2102, v2207, v2312, v2417, v2522, v2627, v2732, v2837, v2942, v3047, v3152, v3257, v3362, v3467, v3572, v3677, v3782, v3887, v3992, v4097, v4202, v4307, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v383, v384, v385, v386, v387, v388, v389, v390, v1045, v1154, v1263, v1368, v1473, v1578, v1683, v1788, v1893, v1998, v2103, v2208, v2313, v2418, v2523, v2628, v2733, v2838, v2943, v3048, v3153, v3258, v3363, v3468, v3573, v3678, v3783, v3888, v3993, v4098, v4203, v4308, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v391 = sub_18E2C59D0();
      sub_18E1CC4C8(v391, &type metadata for ImageScalerBase, v391);
      if (v1)
      {

        sub_18E2CF8A0(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6163536500000000;
      sub_18E2CF8A0(&v4371);
      goto LABEL_110;
    }

    v393 = sub_18E1CAD2C(v375, v376, v377, &type metadata for AssetBackedImageScalerBase, v379, v380, v381, v382, v1044, v1153, v1262, v1367, v1472, v1577, v1682, v1787, v1892, v1997, v2102, v2207, v2312, v2417, v2522, v2627, v2732, v2837, v2942, v3047, v3152, v3257, v3362, v3467, v3572, v3677, v3782, v3887, v3992, v4097, v4202, v4307, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v393)
    {
      v401 = sub_18E1DD568(v393, v394, v395, v396, v397, v398, v399, v400, v1046, v1155, v1264, v1369, v1474, v1579, v1684, v1789, v1894, v1999, v2104, v2209, v2314, v2419, v2524, v2629, v2734, v2839, v2944, v3049, v3154, v3259, v3364, v3469, v3574, v3679, v3784, v3889, v3994, v4099, v4204, v4309, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v401, v402, v403, v404, v405, v406, v407, v408, v1047, v1156, v1265, v1370, v1475, v1580, v1685, v1790, v1895, v2000, v2105, v2210, v2315, v2420, v2525, v2630, v2735, v2840, v2945, v3050, v3155, v3260, v3365, v3470, v3575, v3680, v3785, v3890, v3995, v4100, v4205, v4310, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v409 = sub_18E2C5CA4();
      sub_18E1CC4C8(v409, &type metadata for AssetBackedImageScalerBase, v409);
      if (v1)
      {

        sub_18E2CF870(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6163536500000000;
      sub_18E2CF870(&v4371);
LABEL_110:
      sub_18E1C9934(v4397);
      sub_18E2D0B5C();
      v3 = v445 - 8;
      goto LABEL_251;
    }

    v411 = sub_18E1CAD2C(v393, v394, v395, &type metadata for ImageSpatialPhotosReliveBase, v397, v398, v399, v400, v1046, v1155, v1264, v1369, v1474, v1579, v1684, v1789, v1894, v1999, v2104, v2209, v2314, v2419, v2524, v2629, v2734, v2839, v2944, v3049, v3154, v3259, v3364, v3469, v3574, v3679, v3784, v3889, v3994, v4099, v4204, v4309, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v411)
    {
      v419 = sub_18E1DD568(v411, v412, v413, v414, v415, v416, v417, v418, v1048, v1157, v1266, v1371, v1476, v1581, v1686, v1791, v1896, v2001, v2106, v2211, v2316, v2421, v2526, v2631, v2736, v2841, v2946, v3051, v3156, v3261, v3366, v3471, v3576, v3681, v3786, v3891, v3996, v4101, v4206, v4311, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v419, v420, v421, v422, v423, v424, v425, v426, v1049, v1158, v1267, v1372, v1477, v1582, v1687, v1792, v1897, v2002, v2107, v2212, v2317, v2422, v2527, v2632, v2737, v2842, v2947, v3052, v3157, v3262, v3367, v3472, v3577, v3682, v3787, v3892, v3997, v4102, v4207, v4312, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v427 = sub_18E2C5DA8();
      sub_18E1CC4C8(v427, &type metadata for ImageSpatialPhotosReliveBase, v427);
      if (v1)
      {

        sub_18E2CF840(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF840(v463);
      goto LABEL_119;
    }

    v428 = sub_18E1CAD2C(v411, v412, v413, &type metadata for AssetBackedImageSpatialPhotosReliveBase, v415, v416, v417, v418, v1048, v1157, v1266, v1371, v1476, v1581, v1686, v1791, v1896, v2001, v2106, v2211, v2316, v2421, v2526, v2631, v2736, v2841, v2946, v3051, v3156, v3261, v3366, v3471, v3576, v3681, v3786, v3891, v3996, v4101, v4206, v4311, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v428)
    {
      v436 = sub_18E1DD568(v428, v429, v430, v431, v432, v433, v434, v435, v1050, v1159, v1268, v1373, v1478, v1583, v1688, v1793, v1898, v2003, v2108, v2213, v2318, v2423, v2528, v2633, v2738, v2843, v2948, v3053, v3158, v3263, v3368, v3473, v3578, v3683, v3788, v3893, v3998, v4103, v4208, v4313, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v436, v437, v438, v439, v440, v441, v442, v443, v1051, v1160, v1269, v1374, v1479, v1584, v1689, v1794, v1899, v2004, v2109, v2214, v2319, v2424, v2529, v2634, v2739, v2844, v2949, v3054, v3159, v3264, v3369, v3474, v3579, v3684, v3789, v3894, v3999, v4104, v4209, v4314, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v444 = sub_18E2C5F50();
      sub_18E1CC4C8(v444, &type metadata for AssetBackedImageSpatialPhotosReliveBase, v444);
      if (v1)
      {

        sub_18E2CF810(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF810(v481);
LABEL_119:
      sub_18E1C8E30();
      v2 = v482 + 5;
      goto LABEL_251;
    }

    v446 = sub_18E1CAD2C(v428, v429, v430, &type metadata for ImageTokenizerBase, v432, v433, v434, v435, v1050, v1159, v1268, v1373, v1478, v1583, v1688, v1793, v1898, v2003, v2108, v2213, v2318, v2423, v2528, v2633, v2738, v2843, v2948, v3053, v3158, v3263, v3368, v3473, v3578, v3683, v3788, v3893, v3998, v4103, v4208, v4313, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v446)
    {
      v454 = sub_18E1DD568(v446, v447, v448, v449, v450, v451, v452, v453, v1052, v1161, v1270, v1375, v1480, v1585, v1690, v1795, v1900, v2005, v2110, v2215, v2320, v2425, v2530, v2635, v2740, v2845, v2950, v3055, v3160, v3265, v3370, v3475, v3580, v3685, v3790, v3895, v4000, v4105, v4210, v4315, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v454, v455, v456, v457, v458, v459, v460, v461, v1053, v1162, v1271, v1376, v1481, v1586, v1691, v1796, v1901, v2006, v2111, v2216, v2321, v2426, v2531, v2636, v2741, v2846, v2951, v3056, v3161, v3266, v3371, v3476, v3581, v3686, v3791, v3896, v4001, v4106, v4211, v4316, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v462 = sub_18E2C6054();
      sub_18E1CC4C8(v462, &type metadata for ImageTokenizerBase, v462);
      if (v1)
      {

        sub_18E2CF7E0(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6B6F546500000000;
      sub_18E2CF7E0(&v4371);
      goto LABEL_128;
    }

    v464 = sub_18E1CAD2C(v446, v447, v448, &type metadata for AssetBackedImageTokenizerBase, v450, v451, v452, v453, v1052, v1161, v1270, v1375, v1480, v1585, v1690, v1795, v1900, v2005, v2110, v2215, v2320, v2425, v2530, v2635, v2740, v2845, v2950, v3055, v3160, v3265, v3370, v3475, v3580, v3685, v3790, v3895, v4000, v4105, v4210, v4315, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v464)
    {
      v472 = sub_18E1DD568(v464, v465, v466, v467, v468, v469, v470, v471, v1054, v1163, v1272, v1377, v1482, v1587, v1692, v1797, v1902, v2007, v2112, v2217, v2322, v2427, v2532, v2637, v2742, v2847, v2952, v3057, v3162, v3267, v3372, v3477, v3582, v3687, v3792, v3897, v4002, v4107, v4212, v4317, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v472, v473, v474, v475, v476, v477, v478, v479, v1055, v1164, v1273, v1378, v1483, v1588, v1693, v1798, v1903, v2008, v2113, v2218, v2323, v2428, v2533, v2638, v2743, v2848, v2953, v3058, v3163, v3268, v3373, v3478, v3583, v3688, v3793, v3898, v4003, v4108, v4213, v4318, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v480 = sub_18E212324();
      sub_18E1CC4C8(v480, &type metadata for AssetBackedImageTokenizerBase, v480);
      if (v1)
      {

        sub_18E2CF7B0(&v4371);
        goto LABEL_247;
      }

      sub_18E1CA2A8();
      v2 = v2 | 0x6B6F546500000000;
      sub_18E2CF7B0(&v4371);
LABEL_128:
      sub_18E1C9934(v4397);
      v521 = 2053729893;
LABEL_129:
      v522 = v521 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
LABEL_130:
      v3 = v522 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      goto LABEL_251;
    }

    v483 = sub_18E1CAD2C(v464, v465, v466, &type metadata for LLMAdapterBase, v468, v469, v470, v471, v1054, v1163, v1272, v1377, v1482, v1587, v1692, v1797, v1902, v2007, v2112, v2217, v2322, v2427, v2532, v2637, v2742, v2847, v2952, v3057, v3162, v3267, v3372, v3477, v3582, v3687, v3792, v3897, v4002, v4107, v4212, v4317, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v483)
    {
      v491 = sub_18E216864(v483, v484, v485, v486, v487, v488, v489, v490, v1056, v1165, v1274, v1379, v1484, v1589, v1694, v1799, v1904, v2009, v2114, v2219, v2324, v2429, v2534, v2639, v2744, v2849, v2954, v3059, v3164, v3269, v3374, v3479, v3584, v3689, v3794, v3899, v4004, v4109, v4214, v4319, v4371);
      v493 = memcpy(v491, v492, 0xF8uLL);
      v501 = sub_18E1D48CC(v493, v494, v495, v496, v497, v498, v499, v500, v1057, v1166);
      memcpy(v501, v502, 0xF8uLL);
      v503 = sub_18E2CF708();
      sub_18E1CC4C8(v503, &type metadata for LLMAdapterBase, v503);
      if (v1)
      {

        sub_18E2CF75C(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x7061644100000000;
      sub_18E2CF75C(&v4371);
      goto LABEL_92;
    }

    v504 = sub_18E1CAD2C(v483, v484, v485, &type metadata for AssetBackedLLMAdapterBase, v487, v488, v489, v490, v1056, v1165, v1274, v1379, v1484, v1589, v1694, v1799, v1904, v2009, v2114, v2219, v2324, v2429, v2534, v2639, v2744, v2849, v2954, v3059, v3164, v3269, v3374, v3479, v3584, v3689, v3794, v3899, v4004, v4109, v4214, v4319, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v504)
    {
      v512 = sub_18E1DD568(v504, v505, v506, v507, v508, v509, v510, v511, v1058, v1167, v1275, v1380, v1485, v1590, v1695, v1800, v1905, v2010, v2115, v2220, v2325, v2430, v2535, v2640, v2745, v2850, v2955, v3060, v3165, v3270, v3375, v3480, v3585, v3690, v3795, v3900, v4005, v4110, v4215, v4320, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v512, v513, v514, v515, v516, v517, v518, v519, v1059, v1168, v1276, v1381, v1486, v1591, v1696, v1801, v1906, v2011, v2116, v2221, v2326, v2431, v2536, v2641, v2746, v2851, v2956, v3061, v3166, v3271, v3376, v3481, v3586, v3691, v3796, v3901, v4006, v4111, v4216, v4321, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v520 = sub_18E212238();
      sub_18E1CC4C8(v520, &type metadata for AssetBackedLLMAdapterBase, v520);
      if (v1)
      {

        sub_18E2CF6D8(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x7061644100000000;
      sub_18E2CF6D8(&v4371);
LABEL_92:
      sub_18E1C9934(v4397);
      v3 = 0xEB00000000726574;
      goto LABEL_251;
    }

    v523 = sub_18E1CAD2C(v504, v505, v506, &type metadata for LLMAdapterMetadataOverrideBase, v508, v509, v510, v511, v1058, v1167, v1275, v1380, v1485, v1590, v1695, v1800, v1905, v2010, v2115, v2220, v2325, v2430, v2535, v2640, v2745, v2850, v2955, v3060, v3165, v3270, v3375, v3480, v3585, v3690, v3795, v3900, v4005, v4110, v4215, v4320, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v523)
    {
      v531 = sub_18E1DD568(v523, v524, v525, v526, v527, v528, v529, v530, v1060, v1169, v1277, v1382, v1487, v1592, v1697, v1802, v1907, v2012, v2117, v2222, v2327, v2432, v2537, v2642, v2747, v2852, v2957, v3062, v3167, v3272, v3377, v3482, v3587, v3692, v3797, v3902, v4007, v4112, v4217, v4322, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v531, v532, v533, v534, v535, v536, v537, v538, v1061, v1170, v1278, v1383, v1488, v1593, v1698, v1803, v1908, v2013, v2118, v2223, v2328, v2433, v2538, v2643, v2748, v2853, v2958, v3063, v3168, v3273, v3378, v3483, v3588, v3693, v3798, v3903, v4008, v4113, v4218, v4323, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v539 = sub_18E2C64B8();
      sub_18E1CC4C8(v539, &type metadata for LLMAdapterMetadataOverrideBase, v539);
      if (v1)
      {

        sub_18E2CF6A8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF6A8(v578);
      goto LABEL_147;
    }

    v540 = sub_18E1CAD2C(v523, v524, v525, &type metadata for AssetBackedLLMAdapterMetadataOverrideBase, v527, v528, v529, v530, v1060, v1169, v1277, v1382, v1487, v1592, v1697, v1802, v1907, v2012, v2117, v2222, v2327, v2432, v2537, v2642, v2747, v2852, v2957, v3062, v3167, v3272, v3377, v3482, v3587, v3692, v3797, v3902, v4007, v4112, v4217, v4322, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v540)
    {
      v548 = sub_18E1DD568(v540, v541, v542, v543, v544, v545, v546, v547, v1062, v1171, v1279, v1384, v1489, v1594, v1699, v1804, v1909, v2014, v2119, v2224, v2329, v2434, v2539, v2644, v2749, v2854, v2959, v3064, v3169, v3274, v3379, v3484, v3589, v3694, v3799, v3904, v4009, v4114, v4219, v4324, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v548, v549, v550, v551, v552, v553, v554, v555, v1063, v1172, v1280, v1385, v1490, v1595, v1700, v1805, v1910, v2015, v2120, v2225, v2330, v2435, v2540, v2645, v2750, v2855, v2960, v3065, v3170, v3275, v3380, v3485, v3590, v3695, v3800, v3905, v4010, v4115, v4220, v4325, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v556 = sub_18E2C698C();
      sub_18E1CC4C8(v556, &type metadata for AssetBackedLLMAdapterMetadataOverrideBase, v556);
      if (v1)
      {

        sub_18E2CF678(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF678(v596);
LABEL_147:
      sub_18E1C8E30();
      v2 = v597 | 8;
      goto LABEL_251;
    }

    v557 = sub_18E1CAD2C(v540, v541, v542, &type metadata for LLMDraftModelBase, v544, v545, v546, v547, v1062, v1171, v1279, v1384, v1489, v1594, v1699, v1804, v1909, v2014, v2119, v2224, v2329, v2434, v2539, v2644, v2749, v2854, v2959, v3064, v3169, v3274, v3379, v3484, v3589, v3694, v3799, v3904, v4009, v4114, v4219, v4324, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v557)
    {
      v565 = sub_18E216864(v557, v558, v559, v560, v561, v562, v563, v564, v1064, v1173, v1281, v1386, v1491, v1596, v1701, v1806, v1911, v2016, v2121, v2226, v2331, v2436, v2541, v2646, v2751, v2856, v2961, v3066, v3171, v3276, v3381, v3486, v3591, v3696, v3801, v3906, v4011, v4116, v4221, v4326, v4371);
      v567 = memcpy(v565, v566, 0xF8uLL);
      v575 = sub_18E1D48CC(v567, v568, v569, v570, v571, v572, v573, v574, v1065, v1174);
      memcpy(v575, v576, 0xF8uLL);
      v577 = sub_18E2CF5D0();
      sub_18E1CC4C8(v577, &type metadata for LLMDraftModelBase, v577);
      if (v1)
      {

        sub_18E2CF624(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x6661724400000000;
      sub_18E2CF624(&v4371);
      goto LABEL_156;
    }

    v579 = sub_18E1CAD2C(v557, v558, v559, &type metadata for AssetBackedLLMDraftModelBase, v561, v562, v563, v564, v1064, v1173, v1281, v1386, v1491, v1596, v1701, v1806, v1911, v2016, v2121, v2226, v2331, v2436, v2541, v2646, v2751, v2856, v2961, v3066, v3171, v3276, v3381, v3486, v3591, v3696, v3801, v3906, v4011, v4116, v4221, v4326, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v579)
    {
      v587 = sub_18E1DD568(v579, v580, v581, v582, v583, v584, v585, v586, v1066, v1175, v1282, v1387, v1492, v1597, v1702, v1807, v1912, v2017, v2122, v2227, v2332, v2437, v2542, v2647, v2752, v2857, v2962, v3067, v3172, v3277, v3382, v3487, v3592, v3697, v3802, v3907, v4012, v4117, v4222, v4327, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v587, v588, v589, v590, v591, v592, v593, v594, v1067, v1176, v1283, v1388, v1493, v1598, v1703, v1808, v1913, v2018, v2123, v2228, v2333, v2438, v2543, v2648, v2753, v2858, v2963, v3068, v3173, v3278, v3383, v3488, v3593, v3698, v3803, v3908, v4013, v4118, v4223, v4328, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v595 = sub_18E2122D0();
      sub_18E1CC4C8(v595, &type metadata for AssetBackedLLMDraftModelBase, v595);
      if (v1)
      {

        sub_18E2CF5A0(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x6661724400000000;
      sub_18E2CF5A0(&v4371);
LABEL_156:
      sub_18E1C9934(v4397);
      v522 = 0x6C65646F4D74;
      goto LABEL_130;
    }

    v598 = sub_18E1CAD2C(v579, v580, v581, &type metadata for LLMModelBase, v583, v584, v585, v586, v1066, v1175, v1282, v1387, v1492, v1597, v1702, v1807, v1912, v2017, v2122, v2227, v2332, v2437, v2542, v2647, v2752, v2857, v2962, v3067, v3172, v3277, v3382, v3487, v3592, v3697, v3802, v3907, v4012, v4117, v4222, v4327, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v598)
    {
      v606 = sub_18E216864(v598, v599, v600, v601, v602, v603, v604, v605, v1068, v1177, v1284, v1389, v1494, v1599, v1704, v1809, v1914, v2019, v2124, v2229, v2334, v2439, v2544, v2649, v2754, v2859, v2964, v3069, v3174, v3279, v3384, v3489, v3594, v3699, v3804, v3909, v4014, v4119, v4224, v4329, v4371);
      v608 = memcpy(v606, v607, 0xF8uLL);
      v616 = sub_18E1D48CC(v608, v609, v610, v611, v612, v613, v614, v615, v1069, v1178);
      memcpy(v616, v617, 0xF8uLL);
      v618 = sub_18E2CF4F8();
      sub_18E1CC4C8(v618, &type metadata for LLMModelBase, v618);
      if (v1)
      {

        sub_18E2CF54C(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x65646F4D00000000;
      sub_18E2CF54C(&v4371);
      goto LABEL_165;
    }

    v619 = sub_18E1CAD2C(v598, v599, v600, &type metadata for AssetBackedLLMModelBase, v602, v603, v604, v605, v1068, v1177, v1284, v1389, v1494, v1599, v1704, v1809, v1914, v2019, v2124, v2229, v2334, v2439, v2544, v2649, v2754, v2859, v2964, v3069, v3174, v3279, v3384, v3489, v3594, v3699, v3804, v3909, v4014, v4119, v4224, v4329, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v619)
    {
      v627 = sub_18E1DD568(v619, v620, v621, v622, v623, v624, v625, v626, v1070, v1179, v1285, v1390, v1495, v1600, v1705, v1810, v1915, v2020, v2125, v2230, v2335, v2440, v2545, v2650, v2755, v2860, v2965, v3070, v3175, v3280, v3385, v3490, v3595, v3700, v3805, v3910, v4015, v4120, v4225, v4330, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v627, v628, v629, v630, v631, v632, v633, v634, v1071, v1180, v1286, v1391, v1496, v1601, v1706, v1811, v1916, v2021, v2126, v2231, v2336, v2441, v2546, v2651, v2756, v2861, v2966, v3071, v3176, v3281, v3386, v3491, v3596, v3701, v3806, v3911, v4016, v4121, v4226, v4331, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v635 = sub_18E1DF4DC();
      sub_18E1CC4C8(v635, &type metadata for AssetBackedLLMModelBase, v635);
      if (v1)
      {

        sub_18E212208(&v4371);
        goto LABEL_247;
      }

      sub_18E1D6314();
      v2 = v2 | 0x65646F4D00000000;
      sub_18E212208(&v4371);
LABEL_165:
      sub_18E1C9934(v4397);
      v3 = 0xE90000000000006CLL;
      goto LABEL_251;
    }

    v636 = sub_18E1CAD2C(v619, v620, v621, &type metadata for ServerConfigurationBase, v623, v624, v625, v626, v1070, v1179, v1285, v1390, v1495, v1600, v1705, v1810, v1915, v2020, v2125, v2230, v2335, v2440, v2545, v2650, v2755, v2860, v2965, v3070, v3175, v3280, v3385, v3490, v3595, v3700, v3805, v3910, v4015, v4120, v4225, v4330, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v636)
    {
      v644 = sub_18E1DD568(v636, v637, v638, v639, v640, v641, v642, v643, v1072, v1181, v1287, v1392, v1497, v1602, v1707, v1812, v1917, v2022, v2127, v2232, v2337, v2442, v2547, v2652, v2757, v2862, v2967, v3072, v3177, v3282, v3387, v3492, v3597, v3702, v3807, v3912, v4017, v4122, v4227, v4332, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v644, v645, v646, v647, v648, v649, v650, v651, v1073, v1182, v1288, v1393, v1498, v1603, v1708, v1813, v1918, v2023, v2128, v2233, v2338, v2443, v2548, v2653, v2758, v2863, v2968, v3073, v3178, v3283, v3388, v3493, v3598, v3703, v3808, v3913, v4018, v4123, v4228, v4333, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v652 = sub_18E2C6FA0();
      sub_18E1CC4C8(v652, &type metadata for ServerConfigurationBase, v652);
      if (v1)
      {

        sub_18E2CF4C8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF4C8(v687);
      goto LABEL_174;
    }

    v653 = sub_18E1CAD2C(v636, v637, v638, &type metadata for AssetBackedServerConfigurationBase, v640, v641, v642, v643, v1072, v1181, v1287, v1392, v1497, v1602, v1707, v1812, v1917, v2022, v2127, v2232, v2337, v2442, v2547, v2652, v2757, v2862, v2967, v3072, v3177, v3282, v3387, v3492, v3597, v3702, v3807, v3912, v4017, v4122, v4227, v4332, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v653)
    {
      v661 = sub_18E1DD568(v653, v654, v655, v656, v657, v658, v659, v660, v1074, v1183, v1289, v1394, v1499, v1604, v1709, v1814, v1919, v2024, v2129, v2234, v2339, v2444, v2549, v2654, v2759, v2864, v2969, v3074, v3179, v3284, v3389, v3494, v3599, v3704, v3809, v3914, v4019, v4124, v4229, v4334, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v661, v662, v663, v664, v665, v666, v667, v668, v1075, v1184, v1290, v1395, v1500, v1605, v1710, v1815, v1920, v2025, v2130, v2235, v2340, v2445, v2550, v2655, v2760, v2865, v2970, v3075, v3180, v3285, v3390, v3495, v3600, v3705, v3810, v3915, v4020, v4125, v4230, v4335, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v669 = sub_18E2C7274();
      sub_18E1CC4C8(v669, &type metadata for AssetBackedServerConfigurationBase, v669);
      if (v1)
      {

        sub_18E2CF498(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF498(v705);
LABEL_174:
      sub_18E1C8E30();
      v2 = v706 | 4;
      goto LABEL_251;
    }

    v670 = sub_18E1CAD2C(v653, v654, v655, &type metadata for ModelConfigurationReplacementBase, v657, v658, v659, v660, v1074, v1183, v1289, v1394, v1499, v1604, v1709, v1814, v1919, v2024, v2129, v2234, v2339, v2444, v2549, v2654, v2759, v2864, v2969, v3074, v3179, v3284, v3389, v3494, v3599, v3704, v3809, v3914, v4019, v4124, v4229, v4334, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v670)
    {
      v678 = sub_18E1DD568(v670, v671, v672, v673, v674, v675, v676, v677, v1076, v1185, v1291, v1396, v1501, v1606, v1711, v1816, v1921, v2026, v2131, v2236, v2341, v2446, v2551, v2656, v2761, v2866, v2971, v3076, v3181, v3286, v3391, v3496, v3601, v3706, v3811, v3916, v4021, v4126, v4231, v4336, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v678, v679, v680, v681, v682, v683, v684, v685, v1077, v1186, v1292, v1397, v1502, v1607, v1712, v1817, v1922, v2027, v2132, v2237, v2342, v2447, v2552, v2657, v2762, v2867, v2972, v3077, v3182, v3287, v3392, v3497, v3602, v3707, v3812, v3917, v4022, v4127, v4232, v4337, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v686 = sub_18E2C73F4();
      sub_18E1CC4C8(v686, &type metadata for ModelConfigurationReplacementBase, v686);
      if (v1)
      {

        sub_18E2CF468(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF468(v724);
      goto LABEL_183;
    }

    v688 = sub_18E1CAD2C(v670, v671, v672, &type metadata for AssetBackedModelConfigurationReplacementBase, v674, v675, v676, v677, v1076, v1185, v1291, v1396, v1501, v1606, v1711, v1816, v1921, v2026, v2131, v2236, v2341, v2446, v2551, v2656, v2761, v2866, v2971, v3076, v3181, v3286, v3391, v3496, v3601, v3706, v3811, v3916, v4021, v4126, v4231, v4336, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v688)
    {
      v696 = sub_18E1DD568(v688, v689, v690, v691, v692, v693, v694, v695, v1078, v1187, v1293, v1398, v1503, v1608, v1713, v1818, v1923, v2028, v2133, v2238, v2343, v2448, v2553, v2658, v2763, v2868, v2973, v3078, v3183, v3288, v3393, v3498, v3603, v3708, v3813, v3918, v4023, v4128, v4233, v4338, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v696, v697, v698, v699, v700, v701, v702, v703, v1079, v1188, v1294, v1399, v1504, v1609, v1714, v1819, v1924, v2029, v2134, v2239, v2344, v2449, v2554, v2659, v2764, v2869, v2974, v3079, v3184, v3289, v3394, v3499, v3604, v3709, v3814, v3919, v4024, v4129, v4234, v4339, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v704 = sub_18E2C7744();
      sub_18E1CC4C8(v704, &type metadata for AssetBackedModelConfigurationReplacementBase, v704);
      if (v1)
      {

        sub_18E2CF438(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF438(v742);
LABEL_183:
      sub_18E1C8E30();
      v2 = v743 + 10;
      goto LABEL_251;
    }

    v707 = sub_18E1CAD2C(v688, v689, v690, &type metadata for MotionAdapterBase, v692, v693, v694, v695, v1078, v1187, v1293, v1398, v1503, v1608, v1713, v1818, v1923, v2028, v2133, v2238, v2343, v2448, v2553, v2658, v2763, v2868, v2973, v3078, v3183, v3288, v3393, v3498, v3603, v3708, v3813, v3918, v4023, v4128, v4233, v4338, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v707)
    {
      v715 = sub_18E1DD568(v707, v708, v709, v710, v711, v712, v713, v714, v1080, v1189, v1295, v1400, v1505, v1610, v1715, v1820, v1925, v2030, v2135, v2240, v2345, v2450, v2555, v2660, v2765, v2870, v2975, v3080, v3185, v3290, v3395, v3500, v3605, v3710, v3815, v3920, v4025, v4130, v4235, v4340, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v715, v716, v717, v718, v719, v720, v721, v722, v1081, v1190, v1296, v1401, v1506, v1611, v1716, v1821, v1926, v2031, v2136, v2241, v2346, v2451, v2556, v2661, v2766, v2871, v2976, v3081, v3186, v3291, v3396, v3501, v3606, v3711, v3816, v3921, v4026, v4131, v4236, v4341, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v723 = sub_18E2C78C4();
      sub_18E1CC4C8(v723, &type metadata for MotionAdapterBase, v723);
      if (v1)
      {

        sub_18E2CF408(&v4371);
        goto LABEL_247;
      }

      sub_18E1CF47C();
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0x412E000000000000;
      sub_18E2CF408(&v4371);
      goto LABEL_192;
    }

    v725 = sub_18E1CAD2C(v707, v708, v709, &type metadata for AssetBackedMotionAdapterBase, v711, v712, v713, v714, v1080, v1189, v1295, v1400, v1505, v1610, v1715, v1820, v1925, v2030, v2135, v2240, v2345, v2450, v2555, v2660, v2765, v2870, v2975, v3080, v3185, v3290, v3395, v3500, v3605, v3710, v3815, v3920, v4025, v4130, v4235, v4340, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v725)
    {
      v733 = sub_18E1DD568(v725, v726, v727, v728, v729, v730, v731, v732, v1082, v1191, v1297, v1402, v1507, v1612, v1717, v1822, v1927, v2032, v2137, v2242, v2347, v2452, v2557, v2662, v2767, v2872, v2977, v3082, v3187, v3292, v3397, v3502, v3607, v3712, v3817, v3922, v4027, v4132, v4237, v4342, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v733, v734, v735, v736, v737, v738, v739, v740, v1083, v1192, v1298, v1403, v1508, v1613, v1718, v1823, v1928, v2033, v2138, v2243, v2348, v2453, v2558, v2663, v2768, v2873, v2978, v3083, v3188, v3293, v3398, v3503, v3608, v3713, v3818, v3923, v4028, v4133, v4238, v4343, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v741 = sub_18E2C7CE8();
      sub_18E1CC4C8(v741, &type metadata for AssetBackedMotionAdapterBase, v741);
      if (v1)
      {

        sub_18E2CF3D8(&v4371);
        goto LABEL_247;
      }

      sub_18E1CF47C();
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0x412E000000000000;
      sub_18E2CF3D8(&v4371);
LABEL_192:
      sub_18E1C9934(v4397);
      v521 = 1953522020;
      goto LABEL_129;
    }

    v744 = sub_18E1CAD2C(v725, v726, v727, &type metadata for MotionBase, v729, v730, v731, v732, v1082, v1191, v1297, v1402, v1507, v1612, v1717, v1822, v1927, v2032, v2137, v2242, v2347, v2452, v2557, v2662, v2767, v2872, v2977, v3082, v3187, v3292, v3397, v3502, v3607, v3712, v3817, v3922, v4027, v4132, v4237, v4342, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v744)
    {
      v752 = sub_18E1DD568(v744, v745, v746, v747, v748, v749, v750, v751, v1084, v1193, v1299, v1404, v1509, v1614, v1719, v1824, v1929, v2034, v2139, v2244, v2349, v2454, v2559, v2664, v2769, v2874, v2979, v3084, v3189, v3294, v3399, v3504, v3609, v3714, v3819, v3924, v4029, v4134, v4239, v4344, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v752, v753, v754, v755, v756, v757, v758, v759, v1085, v1194, v1300, v1405, v1510, v1615, v1720, v1825, v1930, v2035, v2140, v2245, v2350, v2455, v2560, v2665, v2770, v2875, v2980, v3085, v3190, v3295, v3400, v3505, v3610, v3715, v3820, v3925, v4030, v4135, v4240, v4345, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v760 = sub_18E2C7FE8();
      sub_18E1CC4C8(v760, &type metadata for MotionBase, v760);
      if (v1)
      {

        sub_18E2CF3A8(&v4371);
        goto LABEL_247;
      }

      sub_18E1CF47C();
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0x4D2E000000000000;
      sub_18E2CF3A8(&v4371);
      goto LABEL_201;
    }

    v761 = sub_18E1CAD2C(v744, v745, v746, &type metadata for AssetBackedMotionBase, v748, v749, v750, v751, v1084, v1193, v1299, v1404, v1509, v1614, v1719, v1824, v1929, v2034, v2139, v2244, v2349, v2454, v2559, v2664, v2769, v2874, v2979, v3084, v3189, v3294, v3399, v3504, v3609, v3714, v3819, v3924, v4029, v4134, v4239, v4344, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v761)
    {
      v769 = sub_18E1DD568(v761, v762, v763, v764, v765, v766, v767, v768, v1086, v1195, v1301, v1406, v1511, v1616, v1721, v1826, v1931, v2036, v2141, v2246, v2351, v2456, v2561, v2666, v2771, v2876, v2981, v3086, v3191, v3296, v3401, v3506, v3611, v3716, v3821, v3926, v4031, v4136, v4241, v4346, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v769, v770, v771, v772, v773, v774, v775, v776, v1087, v1196, v1302, v1407, v1512, v1617, v1722, v1827, v1932, v2037, v2142, v2247, v2352, v2457, v2562, v2667, v2772, v2877, v2982, v3087, v3192, v3297, v3402, v3507, v3612, v3717, v3822, v3927, v4032, v4137, v4242, v4347, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v777 = sub_18E2C8264();
      sub_18E1CC4C8(v777, &type metadata for AssetBackedMotionBase, v777);
      if (v1)
      {

        sub_18E2CF378(&v4371);
        goto LABEL_247;
      }

      sub_18E1CF47C();
      v2 = v2 & 0xFFFFFFFFFFFFLL | 0x4D2E000000000000;
      sub_18E2CF378(&v4371);
LABEL_201:
      sub_18E1C9934(v4397);
      v3 = 0xEC0000006C65646FLL;
      goto LABEL_251;
    }

    v778 = sub_18E1CAD2C(v761, v762, v763, &type metadata for PromptAllowListBase, v765, v766, v767, v768, v1086, v1195, v1301, v1406, v1511, v1616, v1721, v1826, v1931, v2036, v2141, v2246, v2351, v2456, v2561, v2666, v2771, v2876, v2981, v3086, v3191, v3296, v3401, v3506, v3611, v3716, v3821, v3926, v4031, v4136, v4241, v4346, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v778)
    {
      v786 = sub_18E1DD568(v778, v779, v780, v781, v782, v783, v784, v785, v1088, v1197, v1303, v1408, v1513, v1618, v1723, v1828, v1933, v2038, v2143, v2248, v2353, v2458, v2563, v2668, v2773, v2878, v2983, v3088, v3193, v3298, v3403, v3508, v3613, v3718, v3823, v3928, v4033, v4138, v4243, v4348, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v786, v787, v788, v789, v790, v791, v792, v793, v1089, v1198, v1304, v1409, v1514, v1619, v1724, v1829, v1934, v2039, v2144, v2249, v2354, v2459, v2564, v2669, v2774, v2879, v2984, v3089, v3194, v3299, v3404, v3509, v3614, v3719, v3824, v3929, v4034, v4139, v4244, v4349, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v794 = sub_18E2C85E0();
      sub_18E1CC4C8(v794, &type metadata for PromptAllowListBase, v794);
      if (v1)
      {

        sub_18E2CF348(&v4371);
        goto LABEL_247;
      }

      sub_18E211FFC();
      sub_18E223E40();
      sub_18E2CF348(v829);
      goto LABEL_210;
    }

    v795 = sub_18E1CAD2C(v778, v779, v780, &type metadata for AssetBackedPromptAllowListBase, v782, v783, v784, v785, v1088, v1197, v1303, v1408, v1513, v1618, v1723, v1828, v1933, v2038, v2143, v2248, v2353, v2458, v2563, v2668, v2773, v2878, v2983, v3088, v3193, v3298, v3403, v3508, v3613, v3718, v3823, v3928, v4033, v4138, v4243, v4348, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v795)
    {
      v803 = sub_18E1DD568(v795, v796, v797, v798, v799, v800, v801, v802, v1090, v1199, v1305, v1410, v1515, v1620, v1725, v1830, v1935, v2040, v2145, v2250, v2355, v2460, v2565, v2670, v2775, v2880, v2985, v3090, v3195, v3300, v3405, v3510, v3615, v3720, v3825, v3930, v4035, v4140, v4245, v4350, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v803, v804, v805, v806, v807, v808, v809, v810, v1091, v1200, v1306, v1411, v1516, v1621, v1726, v1831, v1936, v2041, v2146, v2251, v2356, v2461, v2566, v2671, v2776, v2881, v2986, v3091, v3196, v3301, v3406, v3511, v3616, v3721, v3826, v3931, v4036, v4141, v4246, v4351, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v811 = sub_18E2C8A04();
      sub_18E1CC4C8(v811, &type metadata for AssetBackedPromptAllowListBase, v811);
      if (v1)
      {

        sub_18E2CF318(&v4371);
        goto LABEL_247;
      }

      sub_18E211FFC();
      sub_18E223E40();
      sub_18E2CF318(v847);
LABEL_210:
      sub_18E1C9934(v4397);
      v3 = 0xEF7473694C776F6CLL;
      goto LABEL_251;
    }

    v812 = sub_18E1CAD2C(v795, v796, v797, &type metadata for SecureAnalyticsBase, v799, v800, v801, v802, v1090, v1199, v1305, v1410, v1515, v1620, v1725, v1830, v1935, v2040, v2145, v2250, v2355, v2460, v2565, v2670, v2775, v2880, v2985, v3090, v3195, v3300, v3405, v3510, v3615, v3720, v3825, v3930, v4035, v4140, v4245, v4350, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v812)
    {
      v820 = sub_18E1DD568(v812, v813, v814, v815, v816, v817, v818, v819, v1092, v1201, v1307, v1412, v1517, v1622, v1727, v1832, v1937, v2042, v2147, v2252, v2357, v2462, v2567, v2672, v2777, v2882, v2987, v3092, v3197, v3302, v3407, v3512, v3617, v3722, v3827, v3932, v4037, v4142, v4247, v4352, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v820, v821, v822, v823, v824, v825, v826, v827, v1093, v1202, v1308, v1413, v1518, v1623, v1728, v1833, v1938, v2043, v2148, v2253, v2358, v2463, v2568, v2673, v2778, v2883, v2988, v3093, v3198, v3303, v3408, v3513, v3618, v3723, v3828, v3933, v4038, v4143, v4248, v4353, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v828 = sub_18E2C8D80();
      sub_18E1CC4C8(v828, &type metadata for SecureAnalyticsBase, v828);
      if (v1)
      {

        sub_18E2CF2E8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF2E8(v865);
      goto LABEL_65;
    }

    v830 = sub_18E1CAD2C(v812, v813, v814, &type metadata for AssetBackedSecureAnalyticsBase, v816, v817, v818, v819, v1092, v1201, v1307, v1412, v1517, v1622, v1727, v1832, v1937, v2042, v2147, v2252, v2357, v2462, v2567, v2672, v2777, v2882, v2987, v3092, v3197, v3302, v3407, v3512, v3617, v3722, v3827, v3932, v4037, v4142, v4247, v4352, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v830)
    {
      v838 = sub_18E1DD568(v830, v831, v832, v833, v834, v835, v836, v837, v1094, v1203, v1309, v1414, v1519, v1624, v1729, v1834, v1939, v2044, v2149, v2254, v2359, v2464, v2569, v2674, v2779, v2884, v2989, v3094, v3199, v3304, v3409, v3514, v3619, v3724, v3829, v3934, v4039, v4144, v4249, v4354, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v838, v839, v840, v841, v842, v843, v844, v845, v1095, v1204, v1310, v1415, v1520, v1625, v1730, v1835, v1940, v2045, v2150, v2255, v2360, v2465, v2570, v2675, v2780, v2885, v2990, v3095, v3200, v3305, v3410, v3515, v3620, v3725, v3830, v3935, v4040, v4145, v4250, v4355, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v846 = sub_18E2C90D0();
      sub_18E1CC4C8(v846, &type metadata for AssetBackedSecureAnalyticsBase, v846);
      if (v1)
      {

        sub_18E2CF2B8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF2B8(v883);
      goto LABEL_65;
    }

    v848 = sub_18E1CAD2C(v830, v831, v832, &type metadata for TokenInputDenyListBase, v834, v835, v836, v837, v1094, v1203, v1309, v1414, v1519, v1624, v1729, v1834, v1939, v2044, v2149, v2254, v2359, v2464, v2569, v2674, v2779, v2884, v2989, v3094, v3199, v3304, v3409, v3514, v3619, v3724, v3829, v3934, v4039, v4144, v4249, v4354, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v848)
    {
      v856 = sub_18E1DD568(v848, v849, v850, v851, v852, v853, v854, v855, v1096, v1205, v1311, v1416, v1521, v1626, v1731, v1836, v1941, v2046, v2151, v2256, v2361, v2466, v2571, v2676, v2781, v2886, v2991, v3096, v3201, v3306, v3411, v3516, v3621, v3726, v3831, v3936, v4041, v4146, v4251, v4356, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v856, v857, v858, v859, v860, v861, v862, v863, v1097, v1206, v1312, v1417, v1522, v1627, v1732, v1837, v1942, v2047, v2152, v2257, v2362, v2467, v2572, v2677, v2782, v2887, v2992, v3097, v3202, v3307, v3412, v3517, v3622, v3727, v3832, v3937, v4042, v4147, v4252, v4357, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v864 = sub_18E2C9250();
      sub_18E1CC4C8(v864, &type metadata for TokenInputDenyListBase, v864);
      if (v1)
      {

        sub_18E2CF288(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF288(v901);
      goto LABEL_228;
    }

    v866 = sub_18E1CAD2C(v848, v849, v850, &type metadata for AssetBackedTokenInputDenyListBase, v852, v853, v854, v855, v1096, v1205, v1311, v1416, v1521, v1626, v1731, v1836, v1941, v2046, v2151, v2256, v2361, v2466, v2571, v2676, v2781, v2886, v2991, v3096, v3201, v3306, v3411, v3516, v3621, v3726, v3831, v3936, v4041, v4146, v4251, v4356, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v866)
    {
      v874 = sub_18E1DD568(v866, v867, v868, v869, v870, v871, v872, v873, v1098, v1207, v1313, v1418, v1523, v1628, v1733, v1838, v1943, v2048, v2153, v2258, v2363, v2468, v2573, v2678, v2783, v2888, v2993, v3098, v3203, v3308, v3413, v3518, v3623, v3728, v3833, v3938, v4043, v4148, v4253, v4358, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v874, v875, v876, v877, v878, v879, v880, v881, v1099, v1208, v1314, v1419, v1524, v1629, v1734, v1839, v1944, v2049, v2154, v2259, v2364, v2469, v2574, v2679, v2784, v2889, v2994, v3099, v3204, v3309, v3414, v3519, v3624, v3729, v3834, v3939, v4044, v4149, v4254, v4359, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v882 = sub_18E24B240();
      sub_18E1CC4C8(v882, &type metadata for AssetBackedTokenInputDenyListBase, v882);
      if (v1)
      {

        sub_18E24B30C(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E24B30C(v919);
LABEL_228:
      sub_18E1C8E30();
      v2 = v920 - 1;
      goto LABEL_251;
    }

    v884 = sub_18E1CAD2C(v866, v867, v868, &type metadata for TokenOutputDenyListBase, v870, v871, v872, v873, v1098, v1207, v1313, v1418, v1523, v1628, v1733, v1838, v1943, v2048, v2153, v2258, v2363, v2468, v2573, v2678, v2783, v2888, v2993, v3098, v3203, v3308, v3413, v3518, v3623, v3728, v3833, v3938, v4043, v4148, v4253, v4358, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v884)
    {
      v892 = sub_18E1DD568(v884, v885, v886, v887, v888, v889, v890, v891, v1100, v1209, v1315, v1420, v1525, v1630, v1735, v1840, v1945, v2050, v2155, v2260, v2365, v2470, v2575, v2680, v2785, v2890, v2995, v3100, v3205, v3310, v3415, v3520, v3625, v3730, v3835, v3940, v4045, v4150, v4255, v4360, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v892, v893, v894, v895, v896, v897, v898, v899, v1101, v1210, v1316, v1421, v1526, v1631, v1736, v1841, v1946, v2051, v2156, v2261, v2366, v2471, v2576, v2681, v2786, v2891, v2996, v3101, v3206, v3311, v3416, v3521, v3626, v3731, v3836, v3941, v4046, v4151, v4256, v4361, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v900 = sub_18E2C9678();
      sub_18E1CC4C8(v900, &type metadata for TokenOutputDenyListBase, v900);
      if (v1)
      {

        sub_18E2CF258(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E2CF258(v938);
      goto LABEL_237;
    }

    v902 = sub_18E1CAD2C(v884, v885, v886, &type metadata for AssetBackedTokenOutputDenyListBase, v888, v889, v890, v891, v1100, v1209, v1315, v1420, v1525, v1630, v1735, v1840, v1945, v2050, v2155, v2260, v2365, v2470, v2575, v2680, v2785, v2890, v2995, v3100, v3205, v3310, v3415, v3520, v3625, v3730, v3835, v3940, v4045, v4150, v4255, v4360, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v902)
    {
      v910 = sub_18E1DD568(v902, v903, v904, v905, v906, v907, v908, v909, v1102, v1211, v1317, v1422, v1527, v1632, v1737, v1842, v1947, v2052, v2157, v2262, v2367, v2472, v2577, v2682, v2787, v2892, v2997, v3102, v3207, v3312, v3417, v3522, v3627, v3732, v3837, v3942, v4047, v4152, v4257, v4362, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v910, v911, v912, v913, v914, v915, v916, v917, v1103, v1212, v1318, v1423, v1528, v1633, v1738, v1843, v1948, v2053, v2158, v2263, v2368, v2473, v2578, v2683, v2788, v2893, v2998, v3103, v3208, v3313, v3418, v3523, v3628, v3733, v3838, v3943, v4048, v4153, v4258, v4363, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v918 = sub_18E24FE9C();
      sub_18E1CC4C8(v918, &type metadata for AssetBackedTokenOutputDenyListBase, v918);
      if (v1)
      {

        sub_18E24FF48(&v4371);
        goto LABEL_247;
      }

      sub_18E1C59E0();
      sub_18E24FF48(v956);
LABEL_237:
      v85 = "TokenOutputDenyList";
      goto LABEL_20;
    }

    v921 = sub_18E1CAD2C(v902, v903, v904, &type metadata for TokenOutputRetainListBase, v906, v907, v908, v909, v1102, v1211, v1317, v1422, v1527, v1632, v1737, v1842, v1947, v2052, v2157, v2262, v2367, v2472, v2577, v2682, v2787, v2892, v2997, v3102, v3207, v3312, v3417, v3522, v3627, v3732, v3837, v3942, v4047, v4152, v4257, v4362, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v921)
    {
      v929 = sub_18E1DD568(v921, v922, v923, v924, v925, v926, v927, v928, v1104, v1213, v1319, v1424, v1529, v1634, v1739, v1844, v1949, v2054, v2159, v2264, v2369, v2474, v2579, v2684, v2789, v2894, v2999, v3104, v3209, v3314, v3419, v3524, v3629, v3734, v3839, v3944, v4049, v4154, v4259, v4364, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v929, v930, v931, v932, v933, v934, v935, v936, v1105, v1214, v1320, v1425, v1530, v1635, v1740, v1845, v1950, v2055, v2160, v2265, v2370, v2475, v2580, v2685, v2790, v2895, v3000, v3105, v3210, v3315, v3420, v3525, v3630, v3735, v3840, v3945, v4050, v4155, v4260, v4365, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v937 = sub_18E2C9AA0();
      sub_18E1CC4C8(v937, &type metadata for TokenOutputRetainListBase, v937);
      if (v1)
      {

        sub_18E2CF228(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF228(v978);
      goto LABEL_65;
    }

    v939 = sub_18E1CAD2C(v921, v922, v923, &type metadata for AssetBackedTokenOutputRetainListBase, v925, v926, v927, v928, v1104, v1213, v1319, v1424, v1529, v1634, v1739, v1844, v1949, v2054, v2159, v2264, v2369, v2474, v2579, v2684, v2789, v2894, v2999, v3104, v3209, v3314, v3419, v3524, v3629, v3734, v3839, v3944, v4049, v4154, v4259, v4364, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v939)
    {
      v947 = sub_18E1DD568(v939, v940, v941, v942, v943, v944, v945, v946, v1106, v1215, v1321, v1426, v1531, v1636, v1741, v1846, v1951, v2056, v2161, v2266, v2371, v2476, v2581, v2686, v2791, v2896, v3001, v3106, v3211, v3316, v3421, v3526, v3631, v3736, v3841, v3946, v4051, v4156, v4261, v4366, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v947, v948, v949, v950, v951, v952, v953, v954, v1107, v1216, v1322, v1427, v1532, v1637, v1742, v1847, v1952, v2057, v2162, v2267, v2372, v2477, v2582, v2687, v2792, v2897, v3002, v3107, v3212, v3317, v3422, v3527, v3632, v3737, v3842, v3947, v4052, v4157, v4262, v4367, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v955 = sub_18E2C9EC4();
      sub_18E1CC4C8(v955, &type metadata for AssetBackedTokenOutputRetainListBase, v955);
      if (v1)
      {

        sub_18E2CF1F8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF1F8(v979);
LABEL_65:
      sub_18E1C8E30();
      v2 = v267 + 2;
      goto LABEL_251;
    }

    v2 = 0x657A696E656B6F54;
    v957 = sub_18E1CAD2C(v939, v940, v941, &type metadata for TokenizerBase, v943, v944, v945, v946, v1106, v1215, v1321, v1426, v1531, v1636, v1741, v1846, v1951, v2056, v2161, v2266, v2371, v2476, v2581, v2686, v2791, v2896, v3001, v3106, v3211, v3316, v3421, v3526, v3631, v3736, v3841, v3946, v4051, v4156, v4261, v4366, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v957)
    {
      v965 = sub_18E216864(v957, v958, v959, v960, v961, v962, v963, v964, v1108, v1217, v1323, v1428, v1533, v1638, v1743, v1848, v1953, v2058, v2163, v2268, v2373, v2478, v2583, v2688, v2793, v2898, v3003, v3108, v3213, v3318, v3423, v3528, v3633, v3738, v3843, v3948, v4053, v4158, v4263, v4368, v4371);
      v967 = memcpy(v965, v966, 0xF8uLL);
      v975 = sub_18E1D48CC(v967, v968, v969, v970, v971, v972, v973, v974, v1109, v1218);
      memcpy(v975, v976, 0xF8uLL);
      v977 = sub_18E2CF150();
      sub_18E1CC4C8(v977, &type metadata for TokenizerBase, v977);
      if (v1)
      {

        sub_18E2CF1A4(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2CF1A4(v997);
      goto LABEL_254;
    }

    v980 = sub_18E1CAD2C(v957, v958, v959, &type metadata for AssetBackedTokenizerBase, v961, v962, v963, v964, v1108, v1217, v1323, v1428, v1533, v1638, v1743, v1848, v1953, v2058, v2163, v2268, v2373, v2478, v2583, v2688, v2793, v2898, v3003, v3108, v3213, v3318, v3423, v3528, v3633, v3738, v3843, v3948, v4053, v4158, v4263, v4368, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
    if (v980)
    {
      v988 = sub_18E1DD568(v980, v981, v982, v983, v984, v985, v986, v987, v1110, v1219, v1324, v1429, v1534, v1639, v1744, v1849, v1954, v2059, v2164, v2269, v2374, v2479, v2584, v2689, v2794, v2899, v3004, v3109, v3214, v3319, v3424, v3529, v3634, v3739, v3844, v3949, v4054, v4159, v4264, v4369, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      sub_18E1FF2AC(v988, v989, v990, v991, v992, v993, v994, v995, v1111, v1220, v1325, v1430, v1535, v1640, v1745, v1850, v1955, v2060, v2165, v2270, v2375, v2480, v2585, v2690, v2795, v2900, v3005, v3110, v3215, v3320, v3425, v3530, v3635, v3740, v3845, v3950, v4055, v4160, v4265, v4370, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
      v996 = sub_18E212184();
      sub_18E1CC4C8(v996, &type metadata for AssetBackedTokenizerBase, v996);
      if (v1)
      {

        sub_18E2121D8(&v4371);
        goto LABEL_247;
      }

      sub_18E1C8C84();
      sub_18E2121D8(v1002);
LABEL_254:
      sub_18E1C9934(v4397);
      v3 = 0xE900000000000072;
      goto LABEL_251;
    }

    sub_18E1C9934(v4397);
LABEL_250:
    v2 = 0;
    v3 = 0xE000000000000000;
    goto LABEL_251;
  }

  v23 = sub_18E1DD568(v15, v16, v17, v18, v19, v20, v21, v22, v1004, v1113, v1222, v1327, v1432, v1537, v1642, v1747, v1852, v1957, v2062, v2167, v2272, v2377, v2482, v2587, v2692, v2797, v2902, v3007, v3112, v3217, v3322, v3427, v3532, v3637, v3742, v3847, v3952, v4057, v4162, v4267, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
  sub_18E1FF2AC(v23, v24, v25, v26, v27, v28, v29, v30, v1005, v1114, v1223, v1328, v1433, v1538, v1643, v1748, v1853, v1958, v2063, v2168, v2273, v2378, v2483, v2588, v2693, v2798, v2903, v3008, v3113, v3218, v3323, v3428, v3533, v3638, v3743, v3848, v3953, v4058, v4163, v4268, v4371, v4372, v4373, v4374, v4375, v4376, v4377, v4378, v4379, v4380, v4381, v4382, v4383, v4384, v4385, v4386, v4387, v4388, v4389, v4390, v4391, v4392, v4393);
  v31 = sub_18E2C2DBC();
  sub_18E1CC4C8(v31, &type metadata for AppleDeviceTrackingBase, v31);
  if (!v1)
  {
    sub_18E1C59E0();
    sub_18E2CFC60(v66);
LABEL_19:
    v85 = "AppleDeviceTracking";
LABEL_20:
    v3 = (v85 - 32) | 0x8000000000000000;
    sub_18E1C9934(v4397);
LABEL_251:
    sub_18E2CF0FC(v4398, &qword_1EABE0FF0);
    v998 = objc_allocWithZone(v4);
    v999 = sub_18E1D03EC();
    ResourceContainer.init(resourceData:resourceType:assetBacked:)(v999, v1000, v2, v3, v1001);

    goto LABEL_252;
  }

  sub_18E2CFC60(&v4371);
LABEL_247:
  sub_18E1C9934(v4397);
  sub_18E2CF0FC(v4398, &qword_1EABE0FF0);
LABEL_252:
  sub_18E1C6650();
}