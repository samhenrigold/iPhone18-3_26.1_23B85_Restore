void AssetBackedTokenInputDenyListBundle.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E2614(v2);
  v3 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v3);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C8E58();
  sub_18E2706EC(&qword_1EABE2270, &qword_18E4AAC78);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1CAE74();
  sub_18E1C975C();
  v6 = sub_18E224800();
  sub_18E1CF90C(&type metadata for AssetBackedTokenInputDenyListBundle.CodingKeys, v7, v6);
  if (!v1)
  {
    v8 = sub_18E1E63B4();
    sub_18E2706EC(v8, v9);
    sub_18E240610();
    sub_18E1C6B74();
    sub_18E1E1638(v10, v11, &qword_18E4AAC80, v12);
    sub_18E1E2D5C();
    sub_18E44F26C();
    sub_18E1E2AEC();
    sub_18E1D5E94();
    sub_18E2243B8();
    sub_18E1C68E8();
    sub_18E44F26C();
    sub_18E242C9C();
    sub_18E23386C();
    sub_18E1E33AC();
    sub_18E2C4300();
    sub_18E1D0108();
    sub_18E44F26C();
    sub_18E22461C();
    sub_18E1C86E0();
    v13 = swift_allocObject();
    sub_18E1CFEE4(v13);
    sub_18E2402BC();
    sub_18E1C86E0();
    v14 = swift_allocObject();
    v15 = sub_18E1D001C(v14);
    memcpy(v15, v16, 0xD8uLL);

    sub_18E22EA6C();

    sub_18E44E54C();
    sub_18E1E6510(&qword_18E4AAC80);
    if (v17)
    {
      v18 = sub_18E1CBE2C();
      v19(v18);
      sub_18E1E8F44(&qword_18E4AAC80, &qword_1EABE2FE0, &qword_18E49CE00);
      sub_18E1FF2C8();
    }

    else
    {
      v20 = sub_18E44E49C();
      v22 = sub_18E1E2B98(v20, v21);
      v23(v22);
      sub_18E212008();
      v24 = sub_18E202CF4();
      v25(v24);

      sub_18E1E6458();
    }

    sub_18E1E195C();
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

void sub_18E205194()
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
  sub_18E221BD4();
  sub_18E44E28C();

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E1E2388();
  if (v18)
  {
    sub_18E1E3320();
    sub_18E3EF9F0();
    v16 = v53;
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
      sub_18E22324C();
      sub_18E44E28C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v16 = v54;
      }

      sub_18E2F79B8();
      if (v18)
      {
        sub_18E1E3320();
        sub_18E3EF9F0();
        v16 = v55;
      }

      sub_18E1CA184();
      sub_18E1EA5D4();
      v29();
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
  if (v30)
  {
    v31 = sub_18E1E3DDC();
    v32(v31);
    sub_18E2405F8();
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v33 = sub_18E44E83C();
    sub_18E1C95EC(v33, qword_1ED6A9858);
    v34 = sub_18E223FF0();
    v35(v34);
    v36 = sub_18E44E80C();
    v37 = sub_18E44EE0C();
    if (sub_18E201860(v37))
    {
      v38 = sub_18E2342D4();
      v39 = sub_18E2202BC();
      sub_18E2F7E00(v39);
      sub_18E232ED8(4.8151e-34);
      sub_18E2F0564();
      sub_18E1E1DB4();
      v40 = sub_18E44F39C();
      sub_18E2F86D4(v40, v41);
      sub_18E233674();
      sub_18E220B30();
      v42 = sub_18E223294();
      v43(v42);
      v44 = sub_18E1C5BFC();
      sub_18E1C9624(v44, v45, v46);
      sub_18E233674();
      *(v38 + 14) = v7;
      sub_18E1EA5F8(&dword_18E1C1000, v47, v48, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      sub_18E2F7A80();
      v49 = sub_18E1D1964();
      MEMORY[0x193ACD400](v49);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v50 = sub_18E223294();
      v51(v50);
    }

    sub_18E201938();
    v52 = sub_18E1E3DF8();
    v7(v52);
  }

  sub_18E216A6C();
  sub_18E1C5544();
}

uint64_t _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE4costAA11CostProfileVvg_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 24))(v8);
  v3 = v8[9];

  result = sub_18E1FE044(v8);
  if (v3)
  {
    if (*(v3 + 16))
    {
      memcpy(__dst, (v3 + 32), sizeof(__dst));
      sub_18E1FF650(__dst, v6);

      sub_18E327BB0(&__dst[64], v6);
      result = sub_18E1FF6D4(__dst);
      v5 = *&__dst[80];
      *a2 = *&__dst[64];
      *(a2 + 16) = v5;
      *(a2 + 32) = __dst[96];
      return result;
    }
  }

  *(a2 + 5) = 0;
  *a2 = 0;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t AssetBackedModelConfigurationReplacementBase.configuration.getter()
{
  memcpy(__dst, v0, 0xC1uLL);
  v1 = sub_18E1C5BFC();
  memcpy(v1, v2, 0xC1uLL);
  return sub_18E200C0C(__dst, v4);
}

uint64_t sub_18E2057AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = sub_18E1C6C0C();
  return sub_18E204BF4(v9, v8);
}

ModelCatalog::InferenceProvider::InferenceProviderOptions_optional __swiftcall InferenceProvider.InferenceProviderOptions.init(rawValue:)(Swift::String rawValue)
{
  sub_18E220CF8();
  v2 = sub_18E44F19C();

  v4 = 13;
  if (v2 < 0xD)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t InferenceProvider.hostedOnServer.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {

    v2._countAndFlagsBits = sub_18E1CF50C();
    InferenceProvider.InferenceProviderOptions.init(rawValue:)(v2);
    v1 = 0;
    switch(v23)
    {
      case 3:
      case 4:
      case 6:
      case 9:
      case 10:
        v1 = 1;
        goto LABEL_4;
      case 13:
        if (qword_1ED6A8418 != -1)
        {
          sub_18E1C8AB4(&qword_1ED6A8418);
        }

        v15 = sub_18E44E83C();
        sub_18E1C95EC(v15, qword_1ED6A9858);

        v16 = sub_18E44E80C();
        v17 = sub_18E44EDEC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v23 = v19;
          *v18 = 136315138;
          v20 = sub_18E1CF50C();
          *(v18 + 4) = sub_18E1C9624(v20, v21, v22);
          _os_log_impl(&dword_18E1C1000, v16, v17, "InferenceProvider.hostedOnServer could not find valid inference provider options from: %s", v18, 0xCu);
          sub_18E1C9934(v19);
          sub_18E1C5008();
          sub_18E1C5008();
        }

        LOBYTE(v1) = 0;
        return v1 & 1;
      default:
LABEL_4:
        if (qword_1ED6A8418 != -1)
        {
          sub_18E1C8AB4(&qword_1ED6A8418);
        }

        v3 = sub_18E44E83C();
        sub_18E1C95EC(v3, qword_1ED6A9858);
        v4 = sub_18E44E80C();
        v5 = sub_18E44EDEC();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_13;
        }

        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v23 = v7;
        *v6 = 67109378;
        *(v6 + 4) = v1;
        *(v6 + 8) = 2080;
        v8 = sub_18E44EAFC();
        v10 = sub_18E1C9624(v8, v9, &v23);

        *(v6 + 10) = v10;
        _os_log_impl(&dword_18E1C1000, v4, v5, "InferenceProvider.hostedOnServer returning hostedOnServer: %{BOOL}d for %s", v6, 0x12u);
        sub_18E1C9934(v7);
        sub_18E1C5008();
        break;
    }

    goto LABEL_12;
  }

  if (qword_1ED6A8418 != -1)
  {
    sub_18E1C8AB4(&qword_1ED6A8418);
  }

  v11 = sub_18E44E83C();
  sub_18E1C95EC(v11, qword_1ED6A9858);
  v4 = sub_18E44E80C();
  v12 = sub_18E44EDEC();
  if (os_log_type_enabled(v4, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v1 & 1;
    _os_log_impl(&dword_18E1C1000, v4, v12, "InferenceProvider.hostedOnServer returning override: %{BOOL}d", v13, 8u);
LABEL_12:
    sub_18E1C5008();
  }

LABEL_13:

  return v1 & 1;
}

void sub_18E205BD0()
{
  sub_18E1C575C();
  v66 = v4;
  v6 = v0[5];
  v5 = v0[6];
  v64 = v7;
  v65 = v5;
  sub_18E1E15F4(v0 + 2, v6);
  sub_18E1C5780();
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v19 = sub_18E21674C(v11, v12, v13, v14, v15, v16, v17, v18, v64);
  v1(v19);
  sub_18E220AAC();
  sub_18E211EDC();
  v21 = sub_18E23392C(v20);
  if (v22)
  {
    sub_18E211EDC();
    v21 = sub_18E2F817C(v62);
  }

  v23 = MEMORY[0x1EEE9AC00](v21);
  v31 = sub_18E242CC8(v23, v24, v25, v26, v27, v28, v29, v30, v64);
  v1(v31);
  sub_18E1DF2A8(v2, v9, &v71, v6, *(v65 + 8));
  v32 = sub_18E2F81A0();
  v33(v32);
  sub_18E2F7D7C();
  if (v68[3])
  {
    v34 = sub_18E1E8728();
    v64(v34);
    v35 = v70;
    sub_18E1E15F4(&v69, v70);
    sub_18E2349BC();
    v67 = v36;
    sub_18E1C5780();
    v38 = MEMORY[0x1EEE9AC00](v37);
    v46 = sub_18E1E89D0(v38, v39, v40, v41, v42, v43, v44, v45, v64);
    (v3)(v46);
    sub_18E2F7F1C();
    if (v22)
    {
      sub_18E2F79AC();
      sub_18E211EDC();
      sub_18E2F817C(v63);
    }

    sub_18E2F81DC();
    v48 = MEMORY[0x1EEE9AC00](v47);
    sub_18E1CEAD0(v48, v49, v50, v51, v52, v53, v54, v55, v64);
    sub_18E223BDC();
    v3();
    v56 = sub_18E1CF9A0();
    sub_18E1DF2A8(v56, v57, v58, v35, v59);
    v60 = sub_18E221A60();
    v61(v60);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v68, v0, &v64);
  }

  sub_18E1C5544();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMWithDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E1D456C();
  static Catalog.Resource.LLM.DraftModel.CodeLM()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV1ANE3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMV1ANE3B()();
  sub_18E1D456C();
  static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B()();
  sub_18E1C7F10();
  sub_18E1E67A0(41);
}

void static Catalog.ResourceBundle.Motion.CoreMotionPednetFoundationModel()()
{
  sub_18E1E1FB0();
  sub_18E2430A0();
  static Catalog.Resource.Motion.Model.Pednet(variant:)(v1);
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
    sub_18E221904("com.apple.fm.coremotion.pednet_v1.base");
  }
}

unint64_t sub_18E205FC8()
{
  result = qword_1EABE0868;
  if (!qword_1EABE0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0868);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer(variant:)(v1, v2);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.DistilledMessagesAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.DistilledMessagesAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer(variant:)(v1, v2);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.DistilledMessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.DistilledMessagesReply(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_18E2062CC()
{
  result = qword_1EABE01E8;
  if (!qword_1EABE01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE01E8);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMBackgroundPrompt()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt()();
  sub_18E246F88();
  sub_18E1E67A0(57);
}

uint64_t static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPeopleGrounding()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding()();
  sub_18E246F88();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPromptRewriting()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.ADMPromptRewriting()();
  static Catalog.Resource.LLM.DraftModel.ADMPromptRewriting()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ADMPromptRewriting()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ADMPromptRewriting(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.FactualConsistencyClassifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier()();
  sub_18E246F88();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesActionSmall()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MessagesActionSmall()();
  sub_18E246F88();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesActionSmall()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesActionSmall(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReplyWatch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MessagesReplyWatch()();
  sub_18E246F88();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesReplyWatch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesReplyWatch(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MiscSafety()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.MiscSafety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MiscSafety(variant:)(v1);
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

uint64_t static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E216A0C();
    v10 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v10, v11, v10, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v12, v13);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v14, v15, v16, v17, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafetyCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized(variant:)(v1);
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

id sub_18E206E44()
{
  if (qword_1ED6A9428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = [objc_opt_self() interfaceWithProtocol_];
  if (qword_1ED6A9040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(off_1ED6A8DD0 + 2);
  if (v1)
  {
    v2 =  + 48;
    do
    {
      v3 = *(v2 - 16);
      v4 = *(v2 - 8);
      v2 += 24;

      v5 = sub_18E44ED9C();

      [v0 setClasses:v5 forSelector:v3 argumentIndex:v4 ofReply:0];

      --v1;
    }

    while (v1);
  }

  if (qword_1ED6A8DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *(off_1ED6A8DC0 + 2);
  if (v6)
  {
    v7 =  + 48;
    do
    {
      v8 = *(v7 - 16);
      v9 = *(v7 - 8);
      v7 += 24;

      v10 = sub_18E44ED9C();

      [v0 setClasses:v10 forSelector:v8 argumentIndex:v9 ofReply:1];

      --v6;
    }

    while (v6);
  }

  return v0;
}

void sub_18E207128()
{
  sub_18E1C575C();
  v6 = v1;
  v7 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v7);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CA5EC();
  sub_18E44E38C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  sub_18E2217DC(v10);
  if (qword_1ED6A8360 != -1)
  {
LABEL_20:
    sub_18E1CF494(&qword_1ED6A8360);
  }

  if (*(off_1ED6A8720 + 2) && (sub_18E1CBD4C(), (v11 & 1) != 0) && (sub_18E222EB0(), v2 = sub_18E21654C(v2, v6, v3), , v2))
  {
    v6 = 0;
    sub_18E249B9C(v2);

    sub_18E201EAC();
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = (v12 + 16 * v5);
      if (v4 == v5)
      {

        goto LABEL_16;
      }

      if (v5 >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v14 = *(v13 - 1);
      v15 = *v13;

      sub_18E1E2AF8();
      sub_18E44E37C();

      MEMORY[0x193ACBAD0](v14, v15);

      sub_18E44E2FC();
      sub_18E44E32C();
      v16 = sub_18E44E54C();
      sub_18E220124(v0, 1, v16);
      if (v17)
      {
        break;
      }

      type metadata accessor for CatalogIndex(0);
      sub_18E1C5D78();
      v2 = v0;
      static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();

      v18 = sub_18E1E2A8C();
      v19(v18);
      sub_18E1E1C3C();
      v20 = sub_18E1E3DF8();
      v21(v20);
      v5 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E264698();
        v5 = v22;
      }

      v0 = *(v5 + 16);
      v3 = v0 + 1;
      if (v0 >= *(v5 + 24) >> 1)
      {
        sub_18E264698();
        v5 = v23;
      }

      sub_18E1E6B4C();
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    sub_18E1C5544();
  }
}

void sub_18E20747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  memcpy(v8, v9, 0xD8uLL);
  sub_18E207128();
}

uint64_t static Catalog.Resource.LLM.Adapter.PQAVerification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PQAVerification(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000006DLL);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.MMSafety()();
  sub_18E246F88();
  sub_18E1E87BC();
}

void static Catalog.Resource.LLM.Adapter.MMSafety()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.MMSafety(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PQAVerification()();
  sub_18E246F88();
  sub_18E1E67A0(52);
}

void Platform.encode(to:)()
{
  sub_18E1C62A0();
  v2 = v1;
  sub_18E2706EC(&qword_1EABE3440, &qword_18E4B0F78);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C57AC();
  sub_18E1E1D50(v2);
  sub_18E200BB8();
  sub_18E1E2A60();
  sub_18E1E3634();
  sub_18E44F4EC();
  sub_18E20798C();
  sub_18E1CF790();
  sub_18E44F35C();
  if (!v0)
  {
    sub_18E237084();
    sub_18E1CFB6C();
    sub_18E44F31C();
  }

  v4 = sub_18E1D4BF4();
  v5(v4);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

unint64_t sub_18E20798C()
{
  result = qword_1EABE00E0;
  if (!qword_1EABE00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE00E0);
  }

  return result;
}

BOOL sub_18E207A34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_18E207A4C()
{
  result = qword_1EABE06A0;
  if (!qword_1EABE06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06A0);
  }

  return result;
}

uint64_t sub_18E207AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 184) = v6;

  return sub_18E44F2FC();
}

uint64_t sub_18E207AF0()
{

  return sub_18E44F3CC();
}

void sub_18E207B20(uint64_t a1)
{

  sub_18E3EF9F0();
}

void sub_18E207B38()
{

  JUMPOUT(0x193ACC300);
}

uint64_t XPCServiceClientConnection.deinit()
{
  v1 = *(v0 + 16);
  sub_18E1CFF9C();
  v9[2] = *(v2 + 80);
  sub_18E1CFF9C();
  v10 = *(v3 + 88);
  v6 = type metadata accessor for XPCServiceClientConnection.State(0, v4, v10, v5);

  v7 = sub_18E2706EC(&qword_1EABE93C0, &qword_18E4E3B78);
  sub_18E224B04(sub_18E224BDC, v9, v1, v6, v7);

  sub_18E207C54(v0 + 32);
  return v0;
}

uint64_t sub_18E207C7C(uint64_t a1)
{
  result = MEMORY[0x193ACC550](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_18E207D3C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_18E207D3C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18E44F48C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  sub_18E1C5B14();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_18E44F3CC() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_18E207E84(a2, a3, v11);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_18E207E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CA234();
  if (!(!v21 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      sub_18E24634C(v8 + 1);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_18E3F49C4(v8 + 1);
LABEL_11:
      v16 = *v3;
      sub_18E44F48C();
      sub_18E44EB4C();
      sub_18E44F4CC();
      sub_18E1C5B14();
      v19 = ~v18;
      while (1)
      {
        a3 = v17 & v19;
        if (((*(v16 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v20 = (*(v16 + 48) + 16 * a3);
        v21 = *v20 == a1 && v20[1] == a2;
        if (v21 || (sub_18E44F3CC() & 1) != 0)
        {
          goto LABEL_20;
        }

        v17 = a3 + 1;
      }
    }

    sub_18E3F4028();
  }

LABEL_8:
  sub_18E1E3A70();
  sub_18E1C8610();
  v12 = (v11 + 16 * a3);
  *v12 = a1;
  v12[1] = a2;
  sub_18E1CEA30();
  if (v15)
  {
    __break(1u);
LABEL_20:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v14;
  }
}

uint64_t sub_18E207FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 168) = a6;

  return sub_18E44E83C();
}

uint64_t sub_18E207FF8()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E208050@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 80) = a2;
  *(result + 88) = 808334898;
  *(result + 96) = v2;
  return result;
}

__n128 sub_18E208064(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u8[0] = 2;
  a1[2].n128_u64[1] = 808334641;
  a1[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

Swift::Void __swiftcall ResourceBundleContainer.encode(with:)(NSCoder with)
{
  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleData);
  v3 = sub_18E44E60C();
  sub_18E1C5144();
  v4 = sub_18E44EA8C();
  sub_18E1CB068(v4, sel_encodeObject_forKey_);

  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType);
  v5 = sub_18E44EA8C();
  sub_18E1C5144();
  v6 = sub_18E44EA8C();
  sub_18E1CB068(v6, sel_encodeObject_forKey_);

  v7 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_assetBacked);
  sub_18E1C6C90();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

void AssetBackedTokenInputDenyListBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E223548();
  sub_18E1C826C();
  v15 = sub_18E1CD9B8(v7, v8, v9, v10, v11, v12, v13, v14, v61, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240);
  sub_18E1D0338(v15, v16, v17, v18, v19, v20, v21, v22, v62);
  sub_18E1E3BD4();
  v25 = sub_18E21D09C(18, v23, v24);
  if (v4)
  {
    goto LABEL_7;
  }

  if (!v244 || !*(v244 + 16))
  {
    v57 = sub_18E2D0B44();
    v58 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v57);
    sub_18E1E6860(v58, v59);
    sub_18E221DDC(v60, 41);

LABEL_7:

    sub_18E1FE044(&v243);
    goto LABEL_8;
  }

  v33 = sub_18E223A20(v25, v26, v27, v28, v29, v30, v31, v32, v63, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v243);
  sub_18E1C973C(v33, v34, v35, v36, v37, v38, v39, v40, v64, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169);
  v49 = sub_18E1D5E70(v41, v42, v43, v44, v45, v46, v47, v48, v65, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v243);
  sub_18E1D4410(v49, v50, v51, v52, v53, v54, v55, v56, v66);
  *(v6 + 200) = v5;
  *(v6 + 208) = v3;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t static Catalog.Resource.LLM.Adapter.TamalePOI()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TamalePOI(variant:)(v1);
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

unint64_t sub_18E2083A8()
{
  result = qword_1EABE02B8;
  if (!qword_1EABE02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE02B8);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextPersonExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextPersonExtraction()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.TextPersonExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextPersonExtraction(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.DeviceSummarizationTextSummarizer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextSummarizer()();
  static Catalog.Resource.LLM.DraftModel.TextSummarizer()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.DraftModel.Textunderstanding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.Textunderstanding(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdParty()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()();
  sub_18E246F88();
  sub_18E1E87BC();
}

uint64_t static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.UIGrounding()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UIGrounding()();
  sub_18E246F88();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.DraftModel.UIPreviews()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.UIPreviews(variant:)(v1);
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

uint64_t static Catalog.Resource.Tokenizer.InstructServerTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1);
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

void static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()()
{
  sub_18E1C52FC();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220EB0();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer()();
  static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer()();
  sub_18E1C7F10();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerBulletsTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerBulletsTransform()();
  static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerConciseTone(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFitnessWorkoutVoice()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice()();
  static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFriendlyTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

void static Catalog.Resource.LLM.Adapter.OpenEndedInteraction()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.OpenEndedInteraction(variant:)();
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

uint64_t static Catalog.Resource.LLM.Model.ChatGPT()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.ChatGPT(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000034);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.OpenEndedSchema()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.OpenEndedSchema(variant:)(v1);
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

uint64_t sub_18E2092F8()
{
}

uint64_t sub_18E209314()
{

  return sub_18E44EA3C();
}

uint64_t sub_18E20933C()
{
}

void sub_18E20937C()
{

  JUMPOUT(0x193ACC300);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TakeawaysTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TakeawaysTransform()();
  static Catalog.Resource.LLM.DraftModel.TakeawaysTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.TakeawaysTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TakeawaysTransform(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.TakeawaysTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TakeawaysTransform(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.TamalePOI()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TamalePOI()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextEventExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextEventExtraction()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.TextEventExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextEventExtraction(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.TextEventExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.TextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextSummarizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.TextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TextSummarizer(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdPartySD()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty()();
  static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.UIGrounding()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UIGrounding(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.UIPreviews()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UIPreviews(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.SmallMessagesReplyWatch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase()();
  static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch()();
  sub_18E246F88();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Model.InstructServerBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1);
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

void static Catalog.Resource.LLM.Adapter.ServerBulletsTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerBulletsTransform(variant:)();
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

void static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerConciseTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

void static Catalog.Resource.LLM.Adapter.ServerConciseTone()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerConciseTone(variant:)();
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

void static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice(variant:)();
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

void static Catalog.Resource.LLM.Adapter.ServerFriendlyTone()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerFriendlyTone(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerFriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerFriendlyTone(variant:)(v1);
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

void static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMagicRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedTone()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

void static Catalog.Resource.LLM.Adapter.ServerMagicRewrite()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerMagicRewrite(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.ServerMagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerMagicRewrite(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite()();
  sub_18E1C7F10();
  sub_18E1E67A0(69);
}

void static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000067);
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyQA()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyQA()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

void static Catalog.Resource.LLM.Adapter.ServerMailReplyQA()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyQA(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223BC4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesUserRequest()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.MessagesUserRequest()();
  static Catalog.Resource.LLM.DraftModel.MessagesUserRequest()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

void static Catalog.Resource.LLM.DraftModel.MessagesUserRequest()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.MessagesUserRequest(variant:)();
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

void static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedInteraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedInteraction()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

void static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedReflection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedReflection()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedReflection()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

void static Catalog.Resource.LLM.Adapter.OpenEndedReflection()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.OpenEndedReflection(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.OpenEndedReflection()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.OpenEndedReflection(variant:)();
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedSchema()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.OpenEndedSchema()();
  static Catalog.Resource.LLM.DraftModel.OpenEndedSchema()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

uint64_t static Catalog.Resource.LLM.Adapter.OpenEndedSchema()()
{
  sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.OpenEndedSchema(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2329C8();
    v2 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v2, v3, v2, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v4, v5);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v6, v7, v8, v9, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Safety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.Safety()();
  sub_18E246F88();
  sub_18E1E67A0(42);
}

void static Catalog.Resource.LLM.Adapter.Safety()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.Safety(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuralIntegrity()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralIntegrity(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized(variant:)(v1);
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

uint64_t static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000076);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesis()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AnswerSynthesis()();
  static Catalog.Resource.LLM.DraftModel.AnswerSynthesis()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FullPayloadCorrection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FullPayloadCorrection()();
  sub_18E246F88();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AutoTagger()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AutoTagger()();
  sub_18E246F88();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.InstructBaseAdapter()();
  sub_18E246F88();
  sub_18E1E67A0(38);
}

uint64_t static Catalog.Resource.LLM.Adapter.InstructBaseAdapter()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.InstructBaseAdapter(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ConciseTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ConciseTone()();
  static Catalog.Resource.LLM.DraftModel.ConciseTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.Adapter.ConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ConciseTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ConciseTone(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221FA0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.ContextAwareness()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ContextAwareness(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContextProgram()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContextProgram()();
  static Catalog.Resource.LLM.DraftModel.ContextProgram()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.ContextProgram()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ContextProgram(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.ContextProgram()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ContextProgram(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.FitnessSummary()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FitnessSummary()();
  sub_18E246F88();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.FitnessSummary()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FitnessSummary(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructFMApiGeneric()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric()();
  static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.FriendlyTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.FriendlyTone()();
  static Catalog.Resource.LLM.DraftModel.FriendlyTone()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.FriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FriendlyTone(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.FriendlyTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.FriendlyTone(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsClassification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.JournalMomentsClassification()();
  static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification()();
  sub_18E1C7F10();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.Adapter.JournalMomentsClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.JournalMomentsClassification(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsReflection()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.JournalMomentsReflection()();
  static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.JournalMomentsReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.JournalMomentsReflection(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MagicRewrite(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReply()();
  static Catalog.Resource.LLM.DraftModel.MailReply()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReply(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MailReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReply(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormBasic()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic()();
  static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite()();
  static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyQA()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MailReplyQA()();
  static Catalog.Resource.LLM.DraftModel.MailReplyQA()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.MailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MailReplyQA(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MailReplyQA()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MailReplyQA(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesAction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MessagesAction()();
  static Catalog.Resource.LLM.DraftModel.MessagesAction()();
  sub_18E1C7F10();
  sub_18E1E67A0(49);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesAction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesAction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MessagesReply()();
  static Catalog.Resource.LLM.DraftModel.MessagesReply()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.MessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MessagesReply(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.MessagesReply()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.MessagesReply(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(42);
}

uint64_t static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EB00C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Nutrition()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.Nutrition()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(43);
}

uint64_t static Catalog.Resource.LLM.Adapter.Nutrition()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Nutrition(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingMM()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(65);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM(variant:)(v1);
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

uint64_t static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingT2T()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T()();
  sub_18E246F88();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(72);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(69);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b()();
  sub_18E1C7F10();
  sub_18E1E67A0(61);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationTitle3b()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV4()();
  static Catalog.Resource.LLM.DraftModel.PlannerV4()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV5(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV6()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV6()();
  static Catalog.Resource.LLM.DraftModel.PlannerV6()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV6(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ProfessionalTone()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ProfessionalTone()();
  static Catalog.Resource.LLM.DraftModel.ProfessionalTone()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.ProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ProfessionalTone(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ProfessionalTone(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ProofreadingReview()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ProofreadingReview()();
  static Catalog.Resource.LLM.DraftModel.ProofreadingReview()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.ProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ProofreadingReview(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ProofreadingReview(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItems()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()();
  sub_18E246F88();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV4()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV4(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV5(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV6(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.SafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SafetyGuardrail()();
  static Catalog.Resource.LLM.DraftModel.SafetyGuardrail()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.DraftModel.SafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SafetyGuardrail(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.SmartAppActions()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SmartAppActions()();
  static Catalog.Resource.LLM.DraftModel.SmartAppActions()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.SmartAppActions()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SmartAppActions(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.SmartAppActions()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SmartAppActions(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.StructuralExtraction()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer()();
  sub_18E1C5364();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuralExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuralExtraction(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuredExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.StructuredExtraction()();
  static Catalog.Resource.LLM.DraftModel.StructuredExtraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.StructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.StructuredExtraction(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.StructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.StructuredExtraction(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafety()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PrepubescentSafety()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.PrepubescentSafety()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PrepubescentSafety(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafetyCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(66);
}

uint64_t static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized(variant:)(v1);
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

uint64_t static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000075);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrity()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.StructuralIntegrity()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrityCustomized()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized()();
  sub_18E1E36A8();
  static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor()();
  sub_18E1CA298();
  sub_18E1E67A0(67);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextGuardSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail()();
  sub_18E246F88();
  sub_18E1E67A0(46);
}

uint64_t static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.VIContentClassifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase()();
  static Catalog.Resource.LLM.Adapter.VIContentClassifier()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M()();
  sub_18E1C5364();
  sub_18E1E67A0(57);
}

uint64_t static Catalog.Resource.LLM.Adapter.VIContentClassifier()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.VIContentClassifier(variant:)(v1);
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

uint64_t static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1, v2);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000042);
    v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Adapter.AnswerSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AnswerSynthesis(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.AnswerSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AnswerSynthesis(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.AutoTagger()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AutoTagger(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.AutonamingMessages()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.AutonamingMessages()();
  static Catalog.Resource.LLM.DraftModel.AutonamingMessages()();
  sub_18E1C7F10();
  sub_18E1E67A0(53);
}

uint64_t static Catalog.Resource.LLM.Adapter.AutonamingMessages()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AutonamingMessages(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.AutonamingMessages()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AutonamingMessages(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.BulletsTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.BulletsTransform()();
  static Catalog.Resource.LLM.DraftModel.BulletsTransform()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.BulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.BulletsTransform(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.BulletsTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.BulletsTransform(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContextAwareness()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContextAwareness()();
  sub_18E246F88();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000067);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesTitle()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle()();
  sub_18E1C7F10();
  sub_18E1E67A0(55);
}

uint64_t static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV4(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV4(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV5()();
  static Catalog.Resource.LLM.DraftModel.PlannerV5()();
  sub_18E1C7F10();
  sub_18E1D7FB0();
}

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV5(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV6(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV5()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV6()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV6()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6()();
  sub_18E1C7F10();
  sub_18E1DD330();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingOnDevice()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice()();
  static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3B()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B()();
  sub_18E1C7F10();
  sub_18E1E67A0(61);
}

uint64_t static Catalog.Resource.LLM.Adapter.FullPayloadCorrection()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.FullPayloadCorrection(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.SafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SafetyGuardrail(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItems()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()();
  sub_18E246F88();
  sub_18E1E67A0(54);
}

uint64_t static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.Summarization()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.Summarization()();
  static Catalog.Resource.LLM.DraftModel.Summarization()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.Resource.LLM.Adapter.Summarization()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Summarization(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.Summarization()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.Summarization(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.TablesTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TablesTransform()();
  static Catalog.Resource.LLM.DraftModel.TablesTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(50);
}

uint64_t static Catalog.Resource.LLM.Adapter.TablesTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.TablesTransform(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.TablesTransform()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.TablesTransform(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.UIPreviews()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UIPreviews()();
  static Catalog.Resource.LLM.DraftModel.UIPreviews()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.UrgencyClassification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.UrgencyClassification()();
  sub_18E246F88();
  sub_18E1DD330();
}

uint64_t static Catalog.Resource.LLM.Adapter.UrgencyClassification()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.UrgencyClassification(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223E1C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.AccessibilityMagnifier()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(64);
}

uint64_t static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormBasic()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic()();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic()();
  sub_18E1C7F10();
  sub_18E1E67A0(67);
}

void static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E3258();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic(variant:)();
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

void static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E207B38();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer(variant:)(v1);
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

void static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2289AC();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.Adapter.MessagesUserRequest()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.MessagesUserRequest(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E20937C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrailServer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(49);
}

uint64_t AssetBackedLLMBundle.resources.getter()
{
  AssetBackedLLMBundle.assetBackedResources.getter();
  sub_18E1DF33C(v1);
  sub_18E1C5D78();

  return v0;
}

uint64_t sub_18E211288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);

  return sub_18E27418C(va, v38 - 224);
}

uint64_t sub_18E2112A0()
{

  return sub_18E44E6DC();
}

unint64_t sub_18E211300(uint64_t a1)
{

  return sub_18E1D5D44(a1);
}

void sub_18E211324(uint64_t *a1@<X8>)
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
  *(v3 + 96) = 150000;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0;
}

void sub_18E21139C()
{
  sub_18E1C62A0();
  v5 = v0;
  v7 = v6;
  sub_18E44E27C();
  swift_allocObject();
  sub_18E44E26C();
  sub_18E2F66D4(v7, v487, &qword_1EABE1010, &unk_18E4E24D0);
  if (!v487[3])
  {
    goto LABEL_114;
  }

  sub_18E2F66D4(v487, v486, &qword_1EABE1010, &unk_18E4E24D0);
  v8 = sub_18E2706EC(&qword_1EABE2AE8, &unk_18E4AF6D0);
  v15 = sub_18E1CFC78(v8, v9, v10, &type metadata for ImageSpatialPhotosReliveBundle, v11, v12, v13, v14, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
  if (!v15)
  {
    v31 = sub_18E1CFC78(v15, v16, v17, &type metadata for AssetBackedImageSpatialPhotosReliveBundle, v19, v20, v21, v22, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v31)
    {
      v39 = sub_18E224EBC(v31, v32, v33, v34, v35, v36, v37, v38, v448);
      memcpy(v39, v40, 0x60uLL);
      v41 = sub_18E2F6E6C();
      sub_18E233C44(v41, &type metadata for AssetBackedImageSpatialPhotosReliveBundle, v41, v42, v43, v44, v45, v46, v448);
      if (v1)
      {
        sub_18E2F0534(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F0534(v80);
      goto LABEL_17;
    }

    v47 = sub_18E1CFC78(v31, v32, v33, &type metadata for MotionBundle, v35, v36, v37, v38, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v47)
    {
      v55 = sub_18E224EBC(v47, v48, v49, v50, v51, v52, v53, v54, v448);
      memcpy(v55, v56, 0x60uLL);
      v57 = sub_18E2F6E18();
      sub_18E233C44(v57, &type metadata for MotionBundle, v57, v58, v59, v60, v61, v62, v448);
      if (v1)
      {
        sub_18E231E1C(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1CFE98();
      sub_18E231E1C(v94);
      sub_18E240570();
      v2 = 0xE600000000000000;
LABEL_115:
      sub_18E1E8F44(v487, &qword_1EABE1010, &unk_18E4E24D0);
      v443 = objc_allocWithZone(v5);
      v444 = sub_18E233460();
      ResourceBundleContainer.init(resourceBundleData:resourceBundleType:assetBacked:)(v444, v445, v3, v2, v4);

      goto LABEL_116;
    }

    v64 = sub_18E1CFC78(v47, v48, v49, &type metadata for AssetBackedMotionBundle, v51, v52, v53, v54, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v64)
    {
      v72 = sub_18E224EBC(v64, v65, v66, v67, v68, v69, v70, v71, v448);
      memcpy(v72, v73, 0x60uLL);
      v74 = sub_18E2F6DC4();
      sub_18E233C44(v74, &type metadata for AssetBackedMotionBundle, v74, v75, v76, v77, v78, v79, v448);
      if (v1)
      {
        sub_18E2AE120(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1CFE98();
      sub_18E2AE120(v108);
      sub_18E1C9934(v486);
      v2 = 0xE600000000000000;
      goto LABEL_18;
    }

    v81 = sub_18E1CFC78(v64, v65, v66, &type metadata for DefaultOverridesBundle, v68, v69, v70, v71, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v81)
    {
      sub_18E1C61E0();
      v88 = sub_18E2F6D70();
      sub_18E233C44(v88, &type metadata for DefaultOverridesBundle, v88, v89, v90, v91, v92, v93, v448);
      if (v1)
      {
        sub_18E2F0964(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0964(v125);
      goto LABEL_31;
    }

    v95 = sub_18E1CFC78(v81, v82, v83, &type metadata for AssetBackedDefaultOverridesBundle, v84, v85, v86, v87, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v95)
    {
      sub_18E1C61E0();
      v102 = sub_18E2F6D1C();
      sub_18E233C44(v102, &type metadata for AssetBackedDefaultOverridesBundle, v102, v103, v104, v105, v106, v107, v448);
      if (v1)
      {
        sub_18E2F08A8(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F08A8(v143);
      goto LABEL_36;
    }

    v109 = sub_18E1CFC78(v95, v96, v97, &type metadata for TokenInputDenyListBundle, v98, v99, v100, v101, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v109)
    {
      v117 = sub_18E224EBC(v109, v110, v111, v112, v113, v114, v115, v116, v448);
      memcpy(v117, v118, 0x60uLL);
      v119 = sub_18E2F6CC8();
      sub_18E233C44(v119, &type metadata for TokenInputDenyListBundle, v119, v120, v121, v122, v123, v124, v448);
      if (v1)
      {
        sub_18E2F0AAC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0AAC(v161);
      sub_18E1E9FC8();
      v3 = v162 | 4;
      goto LABEL_115;
    }

    v127 = sub_18E1CFC78(v109, v110, v111, &type metadata for AssetBackedTokenInputDenyListBundle, v113, v114, v115, v116, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v127)
    {
      v135 = sub_18E224EBC(v127, v128, v129, v130, v131, v132, v133, v134, v448);
      memcpy(v135, v136, 0x60uLL);
      v137 = sub_18E24AF88();
      sub_18E233C44(v137, &type metadata for AssetBackedTokenInputDenyListBundle, v137, v138, v139, v140, v141, v142, v448);
      if (v1)
      {
        sub_18E203F7C(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E203F7C(v179);
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v180 | 4;
      goto LABEL_18;
    }

    v145 = sub_18E1CFC78(v127, v128, v129, &type metadata for TokenInputDenyListWithDefaultsBundle, v131, v132, v133, v134, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v145)
    {
      v153 = sub_18E224EBC(v145, v146, v147, v148, v149, v150, v151, v152, v448);
      memcpy(v153, v154, 0x88uLL);
      v155 = sub_18E2F6C74();
      sub_18E233C44(v155, &type metadata for TokenInputDenyListWithDefaultsBundle, v155, v156, v157, v158, v159, v160, v448);
      if (v1)
      {
        sub_18E2F0CCC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0CCC(v197);
      sub_18E1E9FC8();
      v3 = v198 + 16;
      goto LABEL_115;
    }

    v163 = sub_18E1CFC78(v145, v146, v147, &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle, v149, v150, v151, v152, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v163)
    {
      v171 = sub_18E224EBC(v163, v164, v165, v166, v167, v168, v169, v170, v448);
      memcpy(v171, v172, 0x88uLL);
      v173 = sub_18E2F6C20();
      sub_18E233C44(v173, &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle, v173, v174, v175, v176, v177, v178, v448);
      if (v1)
      {
        sub_18E2F0C10(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0C10(v215);
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v216 + 16;
      goto LABEL_18;
    }

    v181 = sub_18E1CFC78(v163, v164, v165, &type metadata for TokenOutputDenyListBundle, v167, v168, v169, v170, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v181)
    {
      v189 = sub_18E224EBC(v181, v182, v183, v184, v185, v186, v187, v188, v448);
      memcpy(v189, v190, 0x60uLL);
      v191 = sub_18E2F6BCC();
      sub_18E233C44(v191, &type metadata for TokenOutputDenyListBundle, v191, v192, v193, v194, v195, v196, v448);
      if (v1)
      {
        sub_18E2F0E44(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0E44(v233);
      sub_18E240570();
      sub_18E2F7FAC();
      goto LABEL_115;
    }

    v199 = sub_18E1CFC78(v181, v182, v183, &type metadata for AssetBackedTokenOutputDenyListBundle, v185, v186, v187, v188, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v199)
    {
      v207 = sub_18E224EBC(v199, v200, v201, v202, v203, v204, v205, v206, v448);
      memcpy(v207, v208, 0x60uLL);
      v209 = sub_18E2F6B78();
      sub_18E233C44(v209, &type metadata for AssetBackedTokenOutputDenyListBundle, v209, v210, v211, v212, v213, v214, v448);
      if (v1)
      {
        sub_18E2F0D88(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0D88(v250);
      sub_18E1C9934(v486);
      sub_18E2F7FAC();
      goto LABEL_18;
    }

    v217 = sub_18E1CFC78(v199, v200, v201, &type metadata for TokenOutputDenyListWithDefaultsBundle, v203, v204, v205, v206, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v217)
    {
      v225 = sub_18E224EBC(v217, v218, v219, v220, v221, v222, v223, v224, v448);
      memcpy(v225, v226, 0x88uLL);
      v227 = sub_18E2F6B24();
      sub_18E233C44(v227, &type metadata for TokenOutputDenyListWithDefaultsBundle, v227, v228, v229, v230, v231, v232, v448);
      if (v1)
      {
        sub_18E2F1010(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F1010(v264);
      sub_18E1E9FC8();
      v3 = v265 + 17;
      goto LABEL_115;
    }

    v234 = sub_18E1CFC78(v217, v218, v219, &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle, v221, v222, v223, v224, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v234)
    {
      v242 = sub_18E224EBC(v234, v235, v236, v237, v238, v239, v240, v241, v448);
      memcpy(v242, v243, 0x88uLL);
      v244 = sub_18E2F6AD0();
      sub_18E233C44(v244, &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle, v244, v245, v246, v247, v248, v249, v448);
      if (v1)
      {
        sub_18E2F0F54(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F0F54(v279);
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v280 + 17;
      goto LABEL_18;
    }

    v251 = sub_18E1CFC78(v234, v235, v236, &type metadata for TokenOutputRetainListBundle, v238, v239, v240, v241, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v251)
    {
      sub_18E1C61E0();
      v258 = sub_18E2F6A7C();
      sub_18E233C44(v258, &type metadata for TokenOutputRetainListBundle, v258, v259, v260, v261, v262, v263, v448);
      if (v1)
      {
        sub_18E2F11DC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F11DC(v294);
      goto LABEL_73;
    }

    v266 = sub_18E1CFC78(v251, v252, v253, &type metadata for AssetBackedTokenOutputRetainListBundle, v254, v255, v256, v257, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v266)
    {
      sub_18E1C61E0();
      v273 = sub_18E2F6A28();
      sub_18E233C44(v273, &type metadata for AssetBackedTokenOutputRetainListBundle, v273, v274, v275, v276, v277, v278, v448);
      if (v1)
      {
        sub_18E2F10CC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F10CC(v309);
      goto LABEL_78;
    }

    v281 = sub_18E1CFC78(v266, v267, v268, &type metadata for SecureAnalyticsBundle, v269, v270, v271, v272, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v281)
    {
      sub_18E1C61E0();
      v288 = sub_18E2F69D4();
      sub_18E233C44(v288, &type metadata for SecureAnalyticsBundle, v288, v289, v290, v291, v292, v293, v448);
      if (v1)
      {
        sub_18E2F13A8(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E21697C();
      sub_18E2F13A8(v327);
      sub_18E240570();
      goto LABEL_87;
    }

    v296 = sub_18E1CFC78(v281, v282, v283, &type metadata for AssetBackedSecureAnalyticsBundle, v284, v285, v286, v287, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v296)
    {
      sub_18E1C61E0();
      v303 = sub_18E2F6980();
      sub_18E233C44(v303, &type metadata for AssetBackedSecureAnalyticsBundle, v303, v304, v305, v306, v307, v308, v448);
      if (v1)
      {
        sub_18E2F12EC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E21697C();
      sub_18E2F12EC(v344);
      sub_18E1C9934(v486);
      v4 = 1;
LABEL_87:
      v2 = 0xEF73636974796C61;
      goto LABEL_115;
    }

    v311 = sub_18E1CFC78(v296, v297, v298, &type metadata for LLMBundle, v299, v300, v301, v302, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v311)
    {
      v319 = sub_18E224EBC(v311, v312, v313, v314, v315, v316, v317, v318, v448);
      memcpy(v319, v320, 0x128uLL);
      v321 = sub_18E2F692C();
      sub_18E233C44(v321, &type metadata for LLMBundle, v321, v322, v323, v324, v325, v326, v448);
      if (v1)
      {
        sub_18E231EAC(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E231EAC(v358);
      sub_18E1E9FC8();
      v3 = v359 - 5;
      goto LABEL_115;
    }

    v328 = sub_18E1CFC78(v311, v312, v313, &type metadata for AssetBackedLLMBundle, v315, v316, v317, v318, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v328)
    {
      v336 = sub_18E224EBC(v328, v329, v330, v331, v332, v333, v334, v335, v448);
      memcpy(v336, v337, 0x128uLL);
      v338 = sub_18E21210C();
      sub_18E233C44(v338, &type metadata for AssetBackedLLMBundle, v338, v339, v340, v341, v342, v343, v448);
      if (v1)
      {
        sub_18E212684(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E212684(v373);
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v374 - 5;
      goto LABEL_18;
    }

    v345 = sub_18E1CFC78(v328, v329, v330, &type metadata for LLMCompileDraftBundle, v332, v333, v334, v335, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v345)
    {
      sub_18E1C61E0();
      v352 = sub_18E2F68D8();
      sub_18E233C44(v352, &type metadata for LLMCompileDraftBundle, v352, v353, v354, v355, v356, v357, v448);
      if (v1)
      {
        sub_18E2F16C4(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F16C4(v391);
LABEL_73:
      sub_18E1E9FC8();
      v3 = v295 | 7;
      goto LABEL_115;
    }

    v360 = sub_18E1CFC78(v345, v346, v347, &type metadata for AssetBackedLLMCompileDraftBundle, v348, v349, v350, v351, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v360)
    {
      sub_18E1C61E0();
      v367 = sub_18E2F6884();
      sub_18E233C44(v367, &type metadata for AssetBackedLLMCompileDraftBundle, v367, v368, v369, v370, v371, v372, v448);
      if (v1)
      {
        sub_18E2F1608(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F1608(v408);
LABEL_78:
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v310 | 7;
      goto LABEL_18;
    }

    v375 = sub_18E1CFC78(v360, v361, v362, &type metadata for LLMDraftBundle, v363, v364, v365, v366, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v375)
    {
      v383 = sub_18E224EBC(v375, v376, v377, v378, v379, v380, v381, v382, v448);
      memcpy(v383, v384, 0x60uLL);
      v385 = sub_18E2F6830();
      sub_18E233C44(v385, &type metadata for LLMDraftBundle, v385, v386, v387, v388, v389, v390, v448);
      if (v1)
      {
        sub_18E2F183C(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F183C(v425);
      goto LABEL_12;
    }

    v392 = sub_18E1CFC78(v375, v376, v377, &type metadata for AssetBackedLLMDraftBundle, v379, v380, v381, v382, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v392)
    {
      v400 = sub_18E224EBC(v392, v393, v394, v395, v396, v397, v398, v399, v448);
      memcpy(v400, v401, 0x60uLL);
      v402 = sub_18E2F67DC();
      sub_18E233C44(v402, &type metadata for AssetBackedLLMDraftBundle, v402, v403, v404, v405, v406, v407, v448);
      if (v1)
      {
        sub_18E2F1780(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E2F8040();
      sub_18E1E0FD0();
      sub_18E2F1780(v442);
LABEL_17:
      sub_18E1C9934(v486);
LABEL_18:
      v4 = 1;
      goto LABEL_115;
    }

    v409 = sub_18E1CFC78(v392, v393, v394, &type metadata for DiffusionBundle, v396, v397, v398, v399, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v409)
    {
      v417 = sub_18E224EBC(v409, v410, v411, v412, v413, v414, v415, v416, v448);
      memcpy(v417, v418, 0x60uLL);
      v419 = sub_18E2F6788();
      sub_18E233C44(v419, &type metadata for DiffusionBundle, v419, v420, v421, v422, v423, v424, v448);
      if (v1)
      {
        sub_18E2F19B4(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F19B4(v446);
LABEL_31:
      sub_18E1E9FC8();
      v3 = v126 | 2;
      goto LABEL_115;
    }

    v426 = sub_18E1CFC78(v409, v410, v411, &type metadata for AssetBackedDiffusionBundle, v413, v414, v415, v416, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485);
    if (v426)
    {
      v434 = sub_18E224EBC(v426, v427, v428, v429, v430, v431, v432, v433, v448);
      memcpy(v434, v435, 0x60uLL);
      v436 = sub_18E2F6734();
      sub_18E233C44(v436, &type metadata for AssetBackedDiffusionBundle, v436, v437, v438, v439, v440, v441, v448);
      if (v1)
      {
        sub_18E2F18F8(&v448);
        goto LABEL_111;
      }

      sub_18E1E9DE8();
      sub_18E1E0FD0();
      sub_18E2F18F8(v447);
LABEL_36:
      sub_18E1C9934(v486);
      sub_18E221BD4();
      v3 = v144 | 2;
      goto LABEL_18;
    }

    sub_18E1C9934(v486);
LABEL_114:
    v4 = 0;
    v3 = 0;
    v2 = 0xE000000000000000;
    goto LABEL_115;
  }

  v23 = sub_18E224EBC(v15, v16, v17, v18, v19, v20, v21, v22, v448);
  memcpy(v23, v24, 0x60uLL);
  v25 = sub_18E2F6EC0();
  sub_18E233C44(v25, &type metadata for ImageSpatialPhotosReliveBundle, v25, v26, v27, v28, v29, v30, v448);
  if (!v1)
  {
    sub_18E1E9DE8();
    sub_18E2F8040();
    sub_18E1E0FD0();
    sub_18E2F0648(v63);
LABEL_12:
    sub_18E240570();
    goto LABEL_115;
  }

  sub_18E2F0648(&v448);
LABEL_111:

  sub_18E1C9934(v486);
  sub_18E1E8F44(v487, &qword_1EABE1010, &unk_18E4E24D0);
LABEL_116:
  sub_18E1C6650();
}

void sub_18E211EDC()
{
  sub_18E1CADE0();
  if ((v3 & 1) == 0 || (sub_18E1C5534(), v4 == v5))
  {
LABEL_6:
    sub_18E1C5AD8();
    if (v2)
    {
      v6 = sub_18E2706EC(&qword_1EABE0E90, &unk_18E4E26B0);
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

    v9 = sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
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

double sub_18E211F98(uint64_t a1)
{

  return sub_18E26C3FC(v2, (v1 + 968));
}

unint64_t sub_18E2120B8()
{
  result = qword_1EABE0388;
  if (!qword_1EABE0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0388);
  }

  return result;
}

unint64_t sub_18E21210C()
{
  result = qword_1EABE0498;
  if (!qword_1EABE0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0498);
  }

  return result;
}

unint64_t sub_18E212184()
{
  result = qword_1EABE0C10;
  if (!qword_1EABE0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0C10);
  }

  return result;
}

unint64_t sub_18E212238()
{
  result = qword_1ED6A7E90;
  if (!qword_1ED6A7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7E90);
  }

  return result;
}

uint64_t sub_18E212294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0 && *(a1 + 216))
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

  return sub_18E1CFA04(v2);
}

unint64_t sub_18E2122D0()
{
  result = qword_1EABE0CC0;
  if (!qword_1EABE0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0CC0);
  }

  return result;
}

unint64_t sub_18E212324()
{
  result = qword_1EABE08D8;
  if (!qword_1EABE08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE08D8);
  }

  return result;
}

void UseCase.AssetRequired.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E1C62A0();
  sub_18E2706EC(&qword_1EABE3458, &qword_18E4B0F88);
  sub_18E1C4EAC();
  v63 = v28;
  v64 = v27;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1CAF50();
  v62 = v30;
  sub_18E2706EC(&qword_1EABE3460, &qword_18E4B0F90);
  sub_18E1C4EAC();
  v60 = v32;
  v61 = v31;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1E6530(v34, v53);
  sub_18E2706EC(&qword_1EABE3468, &qword_18E4B0F98);
  sub_18E1C4EAC();
  v57 = v36;
  v58 = v35;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1CAF50();
  v56 = v38;
  sub_18E2706EC(&qword_1EABE3470, &qword_18E4B0FA0);
  sub_18E1C4EAC();
  v54 = v40;
  v55 = v39;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1E88C0();
  v42 = sub_18E2706EC(&unk_1EABE3478, &qword_18E4B0FA8);
  sub_18E1C4EAC();
  v44 = v43;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v45);
  sub_18E1C8E58();
  v46 = *v24;
  v47 = sub_18E1E2F3C();
  sub_18E1DD34C(v47, v48);
  v49 = sub_18E200B50();
  sub_18E2169D8(&type metadata for UseCase.AssetRequired.CodingKeys, &type metadata for UseCase.AssetRequired.CodingKeys, v49);
  switch(v46)
  {
    case 1:
      sub_18E237084();
      sub_18E1E8B0C();
      v50 = v56;
      sub_18E247028();
      sub_18E44F2AC();
      v52 = v57;
      v51 = v58;
      goto LABEL_6;
    case 2:
      sub_18E1E33AC();
      sub_18E22476C();
      v50 = v59;
      sub_18E247028();
      sub_18E44F2AC();
      v52 = v60;
      v51 = v61;
      goto LABEL_6;
    case 3:
      sub_18E23346C();
      sub_18E327E44();
      v50 = v62;
      sub_18E247028();
      sub_18E44F2AC();
      v52 = v63;
      v51 = v64;
LABEL_6:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      sub_18E327E98();
      sub_18E247028();
      sub_18E44F2AC();
      (*(v54 + 8))(v25, v55);
      break;
  }

  (*(v44 + 8))(v26, v42);
  sub_18E1C6650();
}

uint64_t sub_18E212AA0()
{

  return sub_18E1CEB5C((v0 + 16));
}

void CostProfile.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  v23 = v22;
  sub_18E2706EC(&unk_1EABE3410, &unk_18E4B0F58);
  sub_18E1C4EAC();
  v25 = v24;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v26);
  sub_18E1E88C0();
  v27 = v23[3];
  v28 = v23;
  v30 = v29;
  sub_18E1DD34C(v28, v27);
  sub_18E200570();
  sub_18E1E1F54();
  sub_18E44F4EC();
  sub_18E44F34C();
  if (!v20)
  {
    sub_18E1D0280(1);
    sub_18E1E696C();
    sub_18E44F32C();
    sub_18E1D0280(2);
    sub_18E1E696C();
    sub_18E44F32C();
    sub_18E1D0280(3);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E1D0280(4);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E1D0280(5);
    sub_18E1CFD70();
    sub_18E44F32C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C892C(&unk_1EABE0088, MEMORY[0x1E69E6160]);
    sub_18E1E3CAC();
    sub_18E44F35C();
    sub_18E1D0280(7);
    sub_18E1CFD70();
    sub_18E44F34C();
    sub_18E1D0280(8);
    sub_18E1CFD70();
    sub_18E44F32C();
  }

  (*(v25 + 8))(v21, v30);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

void static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)()
{
  sub_18E1D41F8();
  sub_18E1E8CC8();
  v2 = sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  v3 = sub_18E1E1920(v2);
  *(v3 + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A8918 != -1)
  {
    sub_18E1C8950(&qword_1ED6A8918);
  }

  sub_18E1E2BE0(qword_1ED6A8920);
  *(v3 + 112) = MEMORY[0x1E69E7CC0];
  *(v3 + 120) = 1;
  *(v3 + 128) = 0;
  sub_18E1CE8FC();
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v4 = sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v5 = sub_18E1E8670(v4);
  v6 = sub_18E1E2EAC(v5, xmmword_18E4B0120);
  sub_18E1C8B84(v6);
  sub_18E1CD5C8();
  sub_18E1E87F8();
  sub_18E1E1470();
  *(v0 + 24) = &type metadata for LLMAdapterBase;
  *(v0 + 32) = sub_18E22402C();
  sub_18E220B24();
  v7 = swift_allocObject();
  sub_18E1E266C(v7);

  sub_18E211FC4();
  LLMAdapterBase.init(configuration:variant:)();
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1E1BF0();
}

void LLMBundle.id.getter()
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
  sub_18E1E15F4(v2 + 7, v36);
  sub_18E1C5608();
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
      sub_18E1E15F4(v2 + 7, v43);
      sub_18E1C5608();
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

  sub_18E2F66D4((v2 + 12), &v142, &qword_1EABE12F0, &unk_18E49ED90);
  if (v143)
  {
    sub_18E1D48D8();
    v51 = sub_18E1CB00C();
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
        LOBYTE(v1) = v140;
        v39 = v141;
        sub_18E1E15F4(v139, v140);
        v56 = sub_18E1CB00C();
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
    sub_18E1E8F44(&v142, &qword_1EABE12F0, &unk_18E49ED90);
  }

  sub_18E2F66D4((v2 + 17), &v142, &qword_1EABE12F8, &qword_18E4AAE90);
  if (v143)
  {
    sub_18E1C551C(&v142, v139);
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
    sub_18E1E8F44(&v142, &qword_1EABE12F8, &qword_18E4AAE90);
  }

  sub_18E2F66D4((v2 + 22), &v142, &qword_1EABE2568, &qword_18E4AAE98);
  if (v143)
  {
    sub_18E1C551C(&v142, v139);
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
    sub_18E1E8F44(&v142, &qword_1EABE2568, &qword_18E4AAE98);
  }

  sub_18E2F66D4((v2 + 27), &v142, &qword_1EABE2570, &qword_18E4AAEA0);
  if (v143)
  {
    sub_18E1D48D8();
    v79 = sub_18E1C8FFC();
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
        LOBYTE(v1) = v140;
        v39 = v141;
        sub_18E1E15F4(v139, v140);
        v84 = sub_18E1C8FFC();
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
    sub_18E1E8F44(&v142, &qword_1EABE2570, &qword_18E4AAEA0);
  }

  sub_18E2F66D4((v2 + 32), &v142, &qword_1EABE2578, &qword_18E4AAEA8);
  if (v143)
  {
    sub_18E1C551C(&v142, v139);
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
    sub_18E1E8F44(&v142, &qword_1EABE2578, &qword_18E4AAEA8);
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
    sub_18E1DF090(v2, v139);
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
      sub_18E231EAC(v139);
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

      sub_18E231EAC(v139);
    }

    v117 = *(v136 + 8);

    v118 = sub_18E1E63C0();
    v117(v118);
  }

  *v137 = v97;
  v137[1] = v98;
  sub_18E1C5544();
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

unint64_t sub_18E216784()
{
  result = qword_1ED6A9138;
  if (!qword_1ED6A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9138);
  }

  return result;
}

uint64_t sub_18E2167E8(uint64_t a1)
{

  return sub_18E30B3A8(a1);
}

void sub_18E216810(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_18E216840()
{
}

void *sub_18E216880()
{

  return memcpy((v0 + 24), (v0 + 424), 0xC1uLL);
}

uint64_t sub_18E21689C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  *(v2 + 52) = 0;
  return result;
}

void sub_18E216910()
{

  JUMPOUT(0x193ACC300);
}

unint64_t sub_18E216928()
{
  result = qword_1ED6A9058;
  if (!qword_1ED6A9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9058);
  }

  return result;
}

uint64_t sub_18E2169D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4EC();
}

void sub_18E216A0C()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E216A24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44E28C();
}

uint64_t sub_18E216A88()
{
}

unint64_t sub_18E216AA0()
{
  result = qword_1ED6A88E8;
  if (!qword_1ED6A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88E8);
  }

  return result;
}

uint64_t sub_18E216B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18E44E99C();
}

void sub_18E216B38()
{
  v1 = *(v0 + 880);
  *(v0 + 72) = *(v0 + 888);
  *(v0 + 80) = v1;
  *(v0 + 64) = *(v0 + 896);
  *(v0 + 1591) = 10;
}

__n128 *sub_18E216B64(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E216B74()
{

  return sub_18E1CEB5C((v0 + 16));
}

uint64_t sub_18E216B90()
{
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Motion.Model.Pednet()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Motion.Model.Pednet(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000042);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesis()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.HandwritingSynthesizer.HandwritingSynthesis(variant:)(v1);
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

void static Catalog.Resource.LLM.DraftModel.MessagesAction(variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_18E1C6878();
  a47 = v51;
  a48 = v52;
  v76 = v49;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(sub_18E1E1920(v59) + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40(&qword_1ED6A89E8);
  }

  sub_18E221764();
  v60 = qword_1ED6A8958;

  if (v60 != -1)
  {
    sub_18E1C7780(&qword_1ED6A8958);
  }

  sub_18E211324(&qword_1ED6A8960);
  v61 = MEMORY[0x1E69E7CC0];
  sub_18E224720();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E3CDDEC();
  v63 = v62;
  v64 = sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v65 = sub_18E1CF518(v64);
  v66 = sub_18E1E32C4(v65, xmmword_18E49D9C0);
  sub_18E1C85D4(v66, v67 | 0x322E0000u);
  sub_18E25E1E4();
  sub_18E1E29F8();
  sub_18E202CE4();
  a13 = v69;
  a14 = v68 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  sub_18E3EAE38();
  a15 = v70;
  a16 = 0x800000018E452730;
  sub_18E2235D0();
  a21 = v71;
  sub_18E1DD2AC();
  a22 = v72;
  a23 = v73;
  a24 = v74 + 22;
  a25 = v48;
  a26 = v74;
  a27 = v50;
  sub_18E3EAE4C();
  a32 = v61;
  a33 = v63;
  sub_18E1E8610();
  *(v58 + 24) = &type metadata for AssetBackedLLMDraftModelBase;
  *(v58 + 32) = sub_18E1E7BB4();
  sub_18E1C86E0();
  v75 = swift_allocObject();
  sub_18E1E266C(v75);

  AssetBackedLLMDraftModelBase.init(configuration:variant:)(&a11, v56, v54);
  if (v76)
  {
    sub_18E287190(v58);
  }

  sub_18E1CA12C();
}

uint64_t sub_18E21D09C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_18E1D45EC(v4, a2, a3);
}

void sub_18E21D144(uint64_t a1@<X8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = v1;
  *(v2 + 88) = v1;
  *(v2 + 96) = 256;
  *(v2 + 104) = v1;
}

__n128 sub_18E21D1B0()
{
  result = *(v1 - 448);
  *v0 = result.n128_u32[0];
  return result;
}

void sub_18E22013C()
{
  v3 = *(v0 + 8);
  *(v2 + 200) = v1;
  *(v2 + 208) = v3;
}

void sub_18E220158()
{
  v2 = *(v0 - 536);
}

unint64_t sub_18E220170()
{
  result = qword_1ED6A8678;
  if (!qword_1ED6A8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8678);
  }

  return result;
}

uint64_t sub_18E2201D0(uint64_t a1)
{

  return sub_18E44F3CC();
}

void *sub_18E22026C(void *a1)
{

  return memcpy(a1, (v1 + 752), 0xD8uLL);
}

void sub_18E2202A4()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E2202BC()
{

  return swift_slowAlloc();
}

uint64_t sub_18E2202F0()
{

  return sub_18E44EA6C();
}

unint64_t sub_18E220354()
{
  result = qword_1ED6A8300;
  if (!qword_1ED6A8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8300);
  }

  return result;
}

void AssetBackedSecureAnalyticsBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E223548();
  sub_18E1C826C();
  v15 = sub_18E1CD9B8(v7, v8, v9, v10, v11, v12, v13, v14, v62, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241);
  sub_18E1D0338(v15, v16, v17, v18, v19, v20, v21, v22, v63);
  sub_18E1E3BD4();
  v26 = sub_18E237058(v23, v24, v25);
  if (v4)
  {
    goto LABEL_7;
  }

  if (!v245 || !*(v245 + 16))
  {
    v58 = sub_18E2D0B44();
    v59 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v58);
    sub_18E1E6860(v59, v60);
    sub_18E221DDC(v61, 41);

LABEL_7:

    sub_18E1FE044(&v244);
    goto LABEL_8;
  }

  v34 = sub_18E223A20(v26, v27, v28, v29, v30, v31, v32, v33, v64, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v244);
  sub_18E1C973C(v34, v35, v36, v37, v38, v39, v40, v41, v65, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170);
  v50 = sub_18E1D5E70(v42, v43, v44, v45, v46, v47, v48, v49, v66, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v244);
  sub_18E1D4410(v50, v51, v52, v53, v54, v55, v56, v57, v67);
  *(v6 + 200) = v5;
  *(v6 + 208) = v3;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t sub_18E220478()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E2204C4()
{

  return sub_18E44F03C();
}

void sub_18E220504(uint64_t *a1@<X8>)
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
  *(v1 + 96) = 10000;
  *(v1 + 104) = 1;
  *(v1 + 105) = 0;
}

void *sub_18E220844()
{

  return memcpy((v0 + 696), (v0 + 952), 0xD8uLL);
}

uint64_t sub_18E22086C(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_18E2208A8(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

double sub_18E2208C4@<D0>(unsigned __int16 a1@<W8>)
{
  *(v1 + 96) = a1 | 0x30000u;
  *&result = 0x10000000100;
  *(v1 + 104) = 256;
  return result;
}

__n128 sub_18E2208D8()
{
  result = *(v1 - 400);
  *v0 = result.n128_u32[0];
  return result;
}

uint64_t sub_18E220940(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E220998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_18E44F0DC();
}

void *sub_18E220A28()
{

  return memcpy((v0 + 64), (v0 + 320), 0xD8uLL);
}

uint64_t sub_18E220A44()
{
  v5 = *(*(v2 + 8) + 8);

  return sub_18E244FC8(v1, (v3 - 168), v0, v5);
}

uint64_t sub_18E220A68()
{

  return sub_18E44E6DC();
}

void sub_18E220AE0(uint64_t a1@<X8>)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = a1;
  *(v1 + 104) = a1;
  *(v1 + 112) = 256;
  *(v1 + 120) = a1;
}

uint64_t sub_18E220AFC(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E220B30()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
}

id sub_18E220B64()
{

  return v0;
}

void *sub_18E220B7C(void *a1)
{

  return memcpy(a1, (v1 + 1496), 0xD8uLL);
}

unint64_t sub_18E220BC8()
{
  result = qword_1ED6A9270;
  if (!qword_1ED6A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9270);
  }

  return result;
}

void sub_18E220C34()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E220C68()
{

  return sub_18E1E8C38(v1, v0 + 616);
}

uint64_t sub_18E220C80()
{

  return swift_slowAlloc();
}

uint64_t sub_18E220C9C()
{
}

uint64_t sub_18E220CD8()
{

  return sub_18E44F35C();
}

unint64_t sub_18E220D24()
{
  result = qword_1ED6A8AB8;
  if (!qword_1ED6A8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8AB8);
  }

  return result;
}

void sub_18E220DF0()
{
  *(v0 + 96) = 250000;
  *(v0 + 104) = 0;
  *(v0 + 108) = 0;
}

void AssetBackedEmbeddingPreprocessorBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1DD340();
  memcpy(v10, v11, v12);
  sub_18E1D5FB4();
  v16 = sub_18E237058(v13, v14, v15);
  if (v4)
  {

    sub_18E1FE044(v178);
  }

  else
  {
    v24 = sub_18E223A20(v16, v17, v18, v19, v20, v21, v22, v23, v48, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178[0]);
    sub_18E1C973C(v24, v25, v26, v27, v28, v29, v30, v31, v49, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128);
    v40 = sub_18E1D5E70(v32, v33, v34, v35, v36, v37, v38, v39, v50, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178[0]);
    sub_18E1D4410(v40, v41, v42, v43, v44, v45, v46, v47, v51);
    *(v6 + 200) = v5;
    *(v6 + 208) = v3;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

void sub_18E220EB0()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E221494(uint64_t a1)
{

  return sub_18E44F3CC();
}

void sub_18E2214B4()
{
  v3 = *(v0 + 8);
  *(v2 + 200) = v1;
  *(v2 + 208) = v3;
}

uint64_t sub_18E2214E8()
{
  *(v1 - 328) = v0;
}

void *sub_18E221668()
{

  return memcpy((v0 + 1168), (v0 + 1384), 0xD8uLL);
}

__n128 sub_18E221684()
{
  *(v0 + 200) = *(v1 + 200);
  result = *(v1 + 216);
  *(v0 + 216) = result;
  return result;
}

uint64_t sub_18E22169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E2216D0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E2216E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, __int128 a60, uint64_t a61, uint64_t a62, char a63)
{
  *(&a60 + 5) = 0;
  *&a60 = 0;
  a61 = v63;
  a62 = 1;
  a63 = 0;

  return sub_18E292124(&a60);
}

void sub_18E221770()
{
  v1 = *(v0 + 152);
  *(v0 + 144) = *(v0 + 144);
  *(v0 + 152) = v1;
}

void sub_18E22177C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = a1;
}

uint64_t sub_18E22179C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1D45EC(v4, v3, a3);
}

uint64_t sub_18E2217B8(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

BOOL sub_18E2217FC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_18E2218AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1DF2A8(v6, v3, a3, v4, v5);
}

uint64_t sub_18E2218EC()
{
}

double sub_18E221904@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 88) = 0;
  result = 0.0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *v1 = v2;
  *(v1 + 8) = (a1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_18E221924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18E1D45EC(0xD000000000000013, a2, va);
}

void sub_18E221960()
{
  *(v0 + 16) = v2;
  v7 = v0 + v6 * v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v7 + 48) = v5;
}

void sub_18E2219B0()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_18E2219D4()
{
  *(v2 - 72) = v1;
  *(v0 + 536) = 1;

  return sub_18E44F2EC();
}

unint64_t sub_18E221A84()
{
  result = qword_1ED6A8468;
  if (!qword_1ED6A8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8468);
  }

  return result;
}

uint64_t sub_18E221AD8()
{
}

uint64_t sub_18E221AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

void *sub_18E221B14()
{

  return memcpy((v0 + 480), (v0 + 952), 0xD8uLL);
}

void sub_18E221B50()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E221BE0(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

void sub_18E221C04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_18E221C48@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(0xD000000000000010, (a1 - 32) | 0x8000000000000000, v1);
}

void sub_18E221C7C(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

uint64_t sub_18E221C94(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  return result;
}

void sub_18E221CE4()
{

  JUMPOUT(0x193ACD400);
}

int8x8_t sub_18E221D28(int8x8_t a1)
{

  return sub_18E3CFA54(1, 3, a1);
}

void sub_18E221D4C()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E221D64()
{
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v1;
  *(v5 - 72) = *(v4 + 16);
  v0[2] = v4 + 32;
}

uint64_t sub_18E221D8C()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;

  return sub_18E44F28C();
}

uint64_t sub_18E221DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F26C();
}

uint64_t sub_18E221DDC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 16) = a3;
  *(a2 + 24) = v3;

  return swift_willThrow();
}

BOOL sub_18E221E1C()
{

  return os_log_type_enabled(v0, v1);
}

void *sub_18E221E40()
{
  *(v0 + 176) = *(v0 + 60);
  *(v0 + 184) = *(v0 + 168);
  v4 = *(v2 - 96);
  *(v0 + 8) = v4;
  *(v0 + 192) = v4;
  *(v0 + 193) = *(v0 + 56);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 208) = v6;
  *(v0 + 16) = v1;
  *(v0 + 216) = v1;
  *(v0 + 224) = v5;
  *(v0 + 232) = *(v0 + 40);
  LODWORD(v5) = *(v2 - 104);
  *(v0 + 12) = v5;
  *(v0 + 240) = v5;

  return memcpy((v0 + 241), (v0 + 2440), 0xC0uLL);
}

uint64_t sub_18E221EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4DC();
}

void sub_18E221EF4(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
}

void sub_18E221F7C()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E221FA0()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E221FC8()
{

  return sub_18E44EA3C();
}

double sub_18E221FE0(unint64_t a1)
{
  STACK[0x200] = v2;
  STACK[0x208] = 0;
  LOBYTE(STACK[0x210]) = 0;
  result = 0.0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  *(v3 + 170) = 0u;
  STACK[0x260] = 0;
  STACK[0x258] = 0;
  STACK[0x268] = v2;
  STACK[0x270] = v1;
  STACK[0x278] = a1;
  LOBYTE(STACK[0x280]) = 0;
  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMLargeV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMLargeV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMSmallV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMSmallV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_18E222EB0()
{
}

void AssetBackedHandwritingSynthesizerBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1DD340();
  memcpy(v10, v11, v12);
  sub_18E1D5FB4();
  v15 = sub_18E21D09C(22, v13, v14);
  if (v4)
  {

    sub_18E1FE044(v177);
  }

  else
  {
    v23 = sub_18E223A20(v15, v16, v17, v18, v19, v20, v21, v22, v47, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177[0]);
    sub_18E1C973C(v23, v24, v25, v26, v27, v28, v29, v30, v48, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
    v39 = sub_18E1D5E70(v31, v32, v33, v34, v35, v36, v37, v38, v49, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177[0]);
    sub_18E1D4410(v39, v40, v41, v42, v43, v44, v45, v46, v50);
    *(v6 + 200) = v5;
    *(v6 + 208) = v3;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

BOOL sub_18E2230F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_18E23458C();
  sub_18E44F48C();
  sub_18E1CAE1C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  sub_18E1C5B14();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == v4 && v12[1] == v3)
    {
      break;
    }

    sub_18E1C8F70();
    v14 = sub_18E44F3CC();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_18E2231EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_18E223208()
{
  *(v0 - 65) = 0;

  return sub_18E44F22C();
}

void sub_18E223258()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E2232D0(void *a1)
{

  return memcpy(a1, (v1 + 480), 0xD8uLL);
}

uint64_t sub_18E223308()
{
  v3 = *(v1 - 168);

  return sub_18E2706EC(v0, v3);
}

void *sub_18E22332C()
{
  *(v0 + 880) = v1;
  *(v0 + 881) = *(v0 + 2641);
  *(v0 + 884) = *(v0 + 2644);
  *(v0 + 888) = *(v0 + 168);
  *(v0 + 896) = *(v0 + 8);
  *(v0 + 897) = *(v0 + 56);
  *(v0 + 898) = *(v0 + 2634);
  *(v0 + 902) = *(v3 - 98);
  *(v0 + 904) = *(v0 + 48);
  *(v0 + 912) = *(v0 + 160);
  *(v0 + 920) = *(v0 + 16);
  *(v0 + 928) = *(v0 + 152);
  *(v0 + 936) = *(v0 + 40);
  *(v0 + 944) = *(v0 + 12);

  return memcpy((v2 + 65), (v0 + 2440), 0xC0uLL);
}

uint64_t sub_18E2233E0(uint64_t result)
{
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = v1;
  return result;
}

__n128 sub_18E223470()
{
  result = *(v0 + 130);
  *(v1 + 170) = result;
  return result;
}

double sub_18E2234A0(double a1)
{

  return sub_18E3CF2CC(2, a1);
}

uint64_t sub_18E223510()
{
}

uint64_t sub_18E223530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18E44E99C();
}

uint64_t sub_18E22355C()
{
}

uint64_t sub_18E223580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E22359C(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3288626;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E2235B8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

void *sub_18E2235E0(void *a1)
{

  return memcpy(a1, (v1 + 1280), 0xD8uLL);
}

void sub_18E223604(uint64_t a1)
{

  sub_18E3F0110(a1, v2, 1, v1);
}

void sub_18E223644()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E223668(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_18E327BB0(v2 - 128, va);
}

uint64_t sub_18E223680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_18E2236A4()
{

  return memcpy((v0 + 320), (v0 + 536), 0xD8uLL);
}

uint64_t sub_18E2236C0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

void sub_18E2236F8(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;
  *(v1 - 120) = 0;
  *(v1 - 116) = 0;
}

void *sub_18E223730(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 320), 0xD8uLL);
}

__n128 *sub_18E223764(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E223960()
{

  return sub_18E44E50C();
}

uint64_t sub_18E223994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E2239AC()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E2239F0()
{
  *(v1 - 192) = v0;

  return swift_slowAlloc();
}

void *sub_18E223A20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t __dst, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(&__dst, &__src, 0xC1uLL);
}

void sub_18E223A60()
{
  *(v0 + 232) = v1;
  *(v0 + 240) = v1;
  *(v0 + 248) = 256;
  *(v0 + 256) = v1;
}

uint64_t sub_18E223A74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v3;
  *(v1 + 40) = result;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  return result;
}

void *sub_18E223AC4(uint64_t a1, ...)
{

  return sub_18E44F48C();
}

uint64_t sub_18E223B08(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_18E223B20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E223B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F2FC();
}

uint64_t sub_18E223B70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
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

uint64_t sub_18E223BA0()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

void sub_18E223BC4()
{

  JUMPOUT(0x193ACC300);
}

void *sub_18E223C30(void *a1)
{

  return memcpy(a1, (v1 + 160), 0xD8uLL);
}

uint64_t sub_18E223C68()
{
  *(v0 + 72) = v1;

  return Catalog.LLM.Model.AFMTextInstruct300MBase.init()();
}

uint64_t sub_18E223CC0()
{

  return sub_18E44E6DC();
}

void sub_18E223D34(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

__n128 *sub_18E223D50(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E223D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E223DD0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;

  return sub_18E44E38C();
}

void sub_18E223E1C()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E223E58()
{

  return swift_slowAlloc();
}

uint64_t sub_18E223EB0()
{
}

double sub_18E223EC8()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t sub_18E223ED8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = a2;

  return sub_18E44E38C();
}

uint64_t sub_18E223F08(uint64_t result)
{
  v1[4] = result;
  v1[5] = 0;
  *(v1 + 45) = 0;
  return result;
}

uint64_t sub_18E223F28(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E223F78@<X0>(__int16 a1@<W8>)
{
  *(v1 + 1558) = a1;
  *(v1 + 1560) = v3;
  *(v1 + 1568) = v2;
  *(v1 + 1576) = *(v1 + 24);
  return v1 + 880;
}

uint64_t sub_18E223FC4()
{
  *(v0 + 1590) = 14;

  return sub_18E44F1CC();
}

unint64_t sub_18E22402C()
{
  result = qword_1ED6A93B8;
  if (!qword_1ED6A93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93B8);
  }

  return result;
}

uint64_t sub_18E2240C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E2240EC()
{

  return sub_18E44E50C();
}

uint64_t sub_18E22413C()
{
}

void sub_18E224160()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E224198(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
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

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

uint64_t sub_18E224264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  v10 = memcpy(v8, v9, 0xD8uLL);
  return sub_18E200C68(v10, v11);
}

uint64_t sub_18E2242E4(char a1)
{
  if (!a1)
  {
    return sub_18E221A10();
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000011;
}

unint64_t sub_18E224364()
{
  result = qword_1ED6A8570;
  if (!qword_1ED6A8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8570);
  }

  return result;
}

unint64_t sub_18E2243B8()
{
  result = qword_1ED6A7B30;
  if (!qword_1ED6A7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B30);
  }

  return result;
}

_OWORD *sub_18E224478(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_18E2244FC(uint64_t a1)
{

  return sub_18E44F20C();
}

uint64_t sub_18E22453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;
  *(v10 + 48) = a7;
  *(v10 + 56) = 1;
  *(v10 + 64) = a8;
  *(v10 + 72) = v9;
  *(v10 + 80) = v8;
  return v10 + 81;
}

uint64_t sub_18E22459C()
{

  return sub_18E44E46C();
}

uint64_t sub_18E2245EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E224604(uint64_t a1)
{

  sub_18E26F1E0(a1, v1, 0);
}

unint64_t sub_18E22461C()
{
  result = qword_1ED6A9198;
  if (!qword_1ED6A9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9198);
  }

  return result;
}

ModelCatalog::RequestResourcesKey_optional __swiftcall RequestResourcesKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E44F19C();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void *sub_18E2246CC()
{

  return memcpy((v0 + 880), ((v0 + 2440) | 7), 0xB9uLL);
}

uint64_t sub_18E2246EC()
{

  return swift_slowAlloc();
}

uint64_t sub_18E22472C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

unint64_t sub_18E22476C()
{
  result = qword_1ED6A82D0;
  if (!qword_1ED6A82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82D0);
  }

  return result;
}

uint64_t sub_18E2247D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18E44F2AC();
}

unint64_t sub_18E224800()
{
  result = qword_1EABE06D0;
  if (!qword_1EABE06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06D0);
  }

  return result;
}

unint64_t sub_18E224854()
{
  result = qword_1EABDF850;
  if (!qword_1EABDF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestResourcesKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t XPCServiceClientConnection.__deallocating_deinit()
{
  XPCServiceClientConnection.deinit();
  v0 = sub_18E1E1AE0();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t CatalogClient.deinit()
{

  sub_18E1C9934((v0 + 24));

  return v0;
}

uint64_t CatalogIndex.deinit()
{

  v1 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL;
  sub_18E44E54C();
  sub_18E1C4EEC();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CatalogIndex.__deallocating_deinit()
{
  CatalogIndex.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

void sub_18E224A7C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t CatalogClient.__deallocating_deinit()
{
  CatalogClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

id *sub_18E224BDC@<X0>(id *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result invalidate];
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t SubscriptionManagerProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18E224C68()
{

  return sub_18E44F35C();
}

uint64_t sub_18E224C88(uint64_t a1)
{

  return sub_18E44F22C();
}

uint64_t sub_18E224CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1D4B84(a1, a2);
  v4 = v2(v3);
  sub_18E1D432C(v4, v5);

  return sub_18E44F4CC();
}

uint64_t sub_18E224D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_18E224D5C()
{

  return memcpy((v0 + 488), (v0 + 920), 0xD8uLL);
}

uint64_t sub_18E224D78(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F31C();
}

void *sub_18E224DA8()
{

  return memcpy((v0 + 16), (v0 + 488), 0xD8uLL);
}

uint64_t sub_18E224DC4()
{
}

uint64_t sub_18E224DFC()
{

  return swift_allocObject();
}

uint64_t sub_18E224E4C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 10000;
  *(v1 + 64) = 1;
  *(v1 + 65) = 0;
  return result;
}

uint64_t sub_18E224E88(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

void sub_18E224ED8()
{
  v2 = *(v0 - 424);
}

void sub_18E224EF4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = sub_18E1C2A94(a1, v8, a2, a3, a4, a5, a6, a7, v13, v14);
  memcpy(v10, v11, v12);
  sub_18E1DF210(a8);
}

void *sub_18E224F3C()
{

  return memcpy((v0 + 1344), (v0 + 1016), 0xD8uLL);
}

uint64_t sub_18E224F80()
{

  return sub_18E44F35C();
}

uint64_t sub_18E224FA0()
{
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = v1;
  *(v0 + 192) = 0;
  return v1;
}

uint64_t static Catalog.Resource.ImageMagicCleanUp.GenerativeEditsMagicCleanUp()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.ImageMagicCleanUp.GenerativeEditsMagicCleanUp(variant:)(v1);
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

unint64_t sub_18E225350()
{
  result = qword_1ED6A8EF8;
  if (!qword_1ED6A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EF8);
  }

  return result;
}

void ManagedRuntimeInformation.encode(to:)()
{
  sub_18E1C62A0();
  sub_18E2706EC(&unk_1EABE33B8, &qword_18E4B0F28);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C6BA8();
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  v6 = *(v0 + 5);
  v18 = *(v0 + 4);
  v19 = v6;
  v20 = *(v0 + 96);
  v7 = sub_18E1D5F00();
  sub_18E1DD34C(v7, v8);
  sub_18E1EA24C();

  sub_18E1E6748();
  sub_18E44F4EC();
  *&v15 = v3;
  *(&v15 + 1) = v4;
  LOBYTE(v16) = v5;
  LOBYTE(v13[0]) = 0;
  sub_18E228910();
  sub_18E216A40();
  sub_18E44F35C();

  if (v1)
  {
    v9 = sub_18E1E37E4();
    v10(v9);
  }

  else
  {
    LOBYTE(v13[0]) = 1;

    sub_18E216A40();
    sub_18E1E696C();
    sub_18E44F2FC();

    sub_18E1DD5A0();
    sub_18E1E696C();
    sub_18E44F2BC();
    v15 = v18;
    v16 = v19;
    v17 = v20;
    sub_18E23346C();
    sub_18E327BB0(&v18, v13);
    sub_18E232D2C();
    sub_18E1E696C();
    sub_18E44F35C();
    v13[0] = v15;
    v13[1] = v16;
    LOBYTE(v14) = v17;
    sub_18E292124(v13);
    v11 = sub_18E1E11B4();
    v12(v11);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

void AssetBackedImageMagicCleanUpBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E228740();
  sub_18E1C826C();
  sub_18E1DD340();
  memcpy(v7, v8, v9);
  sub_18E1DD340();
  memcpy(v10, v11, v12);
  sub_18E1D5FB4();
  v16 = sub_18E233268(v13, v14, v15);
  if (v4)
  {

    sub_18E1FE044(v178);
  }

  else
  {
    v24 = sub_18E223A20(v16, v17, v18, v19, v20, v21, v22, v23, v48, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178[0]);
    sub_18E1C973C(v24, v25, v26, v27, v28, v29, v30, v31, v49, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128);
    v40 = sub_18E1D5E70(v32, v33, v34, v35, v36, v37, v38, v39, v50, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178[0]);
    sub_18E1D4410(v40, v41, v42, v43, v44, v45, v46, v47, v51);
    *(v6 + 200) = v5;
    *(v6 + 208) = v3;
  }

  sub_18E1CFAAC();
  sub_18E1CD624();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStorytellerV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2()();
  static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(71);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.Planner()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.Planner()();
  static Catalog.Resource.LLM.DraftModel.Planner()();
  sub_18E1C7F10();
  sub_18E1E67A0(48);
}

uint64_t static Catalog.Resource.LLM.Adapter.Planner()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.Planner(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV2(variant:)(v1);
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

void static Catalog.Resource.LLM.Adapter.PlannerV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PlannerV3(variant:)();
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV7()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV7()();
  static Catalog.Resource.LLM.DraftModel.PlannerV7()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV8(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV9()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV9(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.PlannerV9()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.PlannerV9(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ServerProfessionalTone()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerProfessionalTone(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ServerProofreadingReview()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerProofreadingReview(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.RemindersAutoCategorizeList()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.RemindersAutoCategorizeList(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV7()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV7()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV7()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV7()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV7(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.ResponseGenerationV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ResponseGenerationV8(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ResponseGenerationV8()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ResponseGenerationV8(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingServer()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer()();
  static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingServer()();
  sub_18E1C7F10();
  sub_18E1E67A0(67);
}

uint64_t sub_18E226BE8()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFC4(v0);
  *(v1 + 16) = xmmword_18E4B0C40;
  *(v1 + 32) = 0x11201011101012FLL;
  return sub_18E1E86B0(v1, 2.3708e-38);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerStructuredExtraction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerStructuredExtraction()();
  static Catalog.Resource.LLM.DraftModel.ServerStructuredExtraction()();
  sub_18E1C7F10();
  sub_18E1E67A0(62);
}

uint64_t static Catalog.Resource.LLM.Adapter.ServerStructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.ServerStructuredExtraction(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.DraftModel.ServerStructuredExtraction()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.ServerStructuredExtraction(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E221F7C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.STXMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.STXMultimodal(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Adapter.SuperAutofillMultimodal()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.SuperAutofillMultimodal(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTakeawaysTransform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerTakeawaysTransform()();
  static Catalog.Resource.LLM.DraftModel.ServerTakeawaysTransform()();
  sub_18E1C7F10();
  sub_18E1E67A0(60);
}

void static Catalog.Resource.LLM.Adapter.ServerTakeawaysTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.ServerTakeawaysTransform(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E220C34();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.Resource.LLM.DraftModel.ServerTakeawaysTransform()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.ServerTakeawaysTransform(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E233484();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.SummarizationTextSummarizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.SummarizationTextSummarizer(variant:)(v1);
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

uint64_t static Catalog.Resource.LLM.Model.PQAVerificationBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.PQAVerificationBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase(variant:)(v1);
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

uint64_t static Catalog.Resource.Diffusion.Model.VisualGenerationBase()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23368C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E6A38();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.DraftModel.Planner()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.Planner(variant:)(v1);
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

void static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.PlannerV2()();
  static Catalog.Resource.LLM.DraftModel.PlannerV2()();
  sub_18E1C7F10();
  sub_18E1CC4B8();
}

void static Catalog.Resource.LLM.DraftModel.PlannerV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.DraftModel.PlannerV3(variant:)();
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

uint64_t static Catalog.Resource.LLM.Adapter.PlannerV7()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.PlannerV7(variant:)(v1);
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