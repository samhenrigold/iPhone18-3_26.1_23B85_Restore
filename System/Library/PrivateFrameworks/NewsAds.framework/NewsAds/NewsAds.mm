id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NMAssembly_assemblies;
  sub_1D76646FC(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7709E80;
  v4 = type metadata accessor for ContextAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1D76647DC(qword_1EE0B22D8, type metadata accessor for ContextAssembly, &unk_1D770EF20);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for CommandAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1D76647DC(qword_1EE0B2378, type metadata accessor for CommandAssembly, &unk_1D7710B88);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for ManagerAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1D76647DC(qword_1EE0B2238, type metadata accessor for ManagerAssembly, &unk_1D77113C0);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for PPTAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1D76647DC(&qword_1EE0B2698, type metadata accessor for PPTAssembly, &unk_1D770B5C8);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for PreviewAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_1D76647DC(&qword_1EE0B2180, type metadata accessor for PreviewAssembly, &unk_1D770E9A8);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for ProviderAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_1D76647DC(qword_1EE0B1FB8, type metadata accessor for ProviderAssembly, &unk_1D7714004);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for RendererAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_1D76647DC(qword_1EE0B1F18, type metadata accessor for RendererAssembly, &unk_1D770B594);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for StoreAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_1D76647DC(&qword_1EE0B2498, type metadata accessor for StoreAssembly, &unk_1D770B928);
  *(v3 + 312) = v19;
  *&v0[v2] = v3;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_1D76646FC(uint64_t a1)
{
  if (!qword_1EE0B0D90)
  {
    sub_1D7664754();
    v1 = sub_1D7704A20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0B0D90);
    }
  }
}

unint64_t sub_1D7664754()
{
  result = qword_1EE0B26A8;
  if (!qword_1EE0B26A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B26A8);
  }

  return result;
}

uint64_t sub_1D76647DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7664938()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7664B2C();
  sub_1D7703540();

  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7703320();

  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1D7703430();
  sub_1D7703540();

  v4(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (v5)(v3, v0);
}

unint64_t sub_1D7664B2C()
{
  result = qword_1EE0B1C08;
  if (!qword_1EE0B1C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1C08);
  }

  return result;
}

uint64_t sub_1D7664B90()
{
  v0 = sub_1D7703420();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D7665880();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6500], v0);
  sub_1D7703560();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1D7703440();
  sub_1D7703520();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D7664D68(uint64_t a1)
{
  v16[0] = sub_1D7703420();
  v17 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v3 = (v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D7703600();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a1;
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B24A0, &protocol descriptor for AdManagerType);
  sub_1D7703540();

  sub_1D7703310();

  v8 = *MEMORY[0x1E69D6AD0];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_1D7703320();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_1D7703430();
  sub_1D7665328(0, &qword_1EE0B1C00, &protocol descriptor for AdSegmentManagerType);
  sub_1D7703540();

  v9(v7, v8, v4);
  sub_1D7703320();

  v10(v7, v4);
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B12E0, &protocol descriptor for AdStatusConditionManagerType);
  sub_1D7703540();

  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_1D7703510();
  v11 = v17;
  v12 = *(v17 + 104);
  v13 = v16[0];
  v12(v3, *MEMORY[0x1E69D6500], v16[0]);
  sub_1D7703550();
  v14 = *(v11 + 8);
  v17 = v11 + 8;
  v14(v3, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1D7703450();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_1D7665328(0, &qword_1EE0B1C08, &protocol descriptor for AdContextBuilderType);
  *v3 = 7368801;
  v3[1] = 0xE300000000000000;
  v12(v3, *MEMORY[0x1E69D6508], v13);
  sub_1D7703560();
  v14(v3, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0B1CA0, &protocol descriptor for VideoAdTrackerType);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7665328(0, &qword_1EE0AF9E8, &protocol descriptor for BannerAdTrackerType);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7665328(0, qword_1EE0AF558, &protocol descriptor for SponsorshipAdTrackerType);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7703520();
}

uint64_t sub_1D7665328(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7665384(uint64_t a1)
{
  sub_1D7703430();
  sub_1D76653F4();
  sub_1D7703540();
}

unint64_t sub_1D76653F4()
{
  result = qword_1EE0B0EC0;
  if (!qword_1EE0B0EC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B0EC0);
  }

  return result;
}

uint64_t sub_1D7665458()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D76658E0();
  sub_1D7703540();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D76655A0(uint64_t a1)
{
  sub_1D7703430();
  type metadata accessor for ContentBannerAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for FeedBannerAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for InterstitialAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for PrerollAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for PrerollAdProvider();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for NativeAdProviderFactory();
  sub_1D7703530();

  sub_1D7703430();
  type metadata accessor for SponsorshipAdProviderFactory();
  sub_1D7703530();

  sub_1D7703440();
  sub_1D7703520();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D7665880()
{
  result = qword_1EE0B26A0;
  if (!qword_1EE0B26A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B26A0);
  }

  return result;
}

unint64_t sub_1D76658E0()
{
  result = qword_1EE0B1D40;
  if (!qword_1EE0B1D40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1D40);
  }

  return result;
}

uint64_t sub_1D7665A00()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7665B48();
  sub_1D7703540();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1D7665B48()
{
  result = qword_1EE0B1890;
  if (!qword_1EE0B1890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0B1890);
  }

  return result;
}

void sub_1D7665BAC(uint64_t a1)
{
  sub_1D77038B0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7665D28()
{
  v0 = sub_1D7703600();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B1608, &protocol descriptor for BannerAdViewRendererType, 1);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B1890, &protocol descriptor for BannerAdLayoutStoreType, 1);
  sub_1D7703540();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7703320();

  (*(v1 + 8))(v3, v0);
  sub_1D7703430();
  type metadata accessor for BannerAdViewLayoutAttributesFactory();
  sub_1D7703530();

  sub_1D7703440();
  sub_1D7703520();

  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B10C8, &protocol descriptor for InterstitialAdViewRendererType, 1);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7666184(0, &qword_1EE0B12C0, &protocol descriptor for InterstitialAdViewStylerType, 1);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B0F60, &protocol descriptor for InterstitialAdViewLayoutAttributesFactoryType, 1);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, qword_1EE0B0F68, &protocol descriptor for DebugJournalSummaryViewRendererType, 1);
  sub_1D7703540();

  sub_1D7703440();
  sub_1D7666184(0, qword_1EE0B1020, &protocol descriptor for DebugJournalSummaryViewStylerType, 1);
  sub_1D7703540();

  sub_1D7703430();
  sub_1D7666184(0, &qword_1EE0B0F58, &protocol descriptor for DebugJournalSummaryViewLayoutAttributesFactoryType, 1);
  sub_1D7703540();
}

uint64_t sub_1D7666184(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D76661F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1D76662B0(uint64_t a1)
{
  sub_1D77038B0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D7666364()
{
  result = qword_1EE0B19E8;
  if (!qword_1EE0B19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B19E8);
  }

  return result;
}

unint64_t sub_1D76663B8()
{
  result = qword_1EE0B19F0[0];
  if (!qword_1EE0B19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B19F0);
  }

  return result;
}

unint64_t sub_1D766640C(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666364();
  result = sub_1D76663B8();
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for ContentBannerAdPlacement(uint64_t a1)
{
  result = qword_1EE0B15F8;
  if (!qword_1EE0B15F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecipeBannerAdPlacement(uint64_t a1)
{
  result = qword_1EE0B1698;
  if (!qword_1EE0B1698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D76664FC(uint64_t a1)
{
  *(a1 + 24) = sub_1D766652C();
  result = sub_1D7666580();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D766652C()
{
  result = qword_1EE0B1898;
  if (!qword_1EE0B1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1898);
  }

  return result;
}

unint64_t sub_1D7666580()
{
  result = qword_1EE0B18A0[0];
  if (!qword_1EE0B18A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B18A0);
  }

  return result;
}

unint64_t sub_1D76665E4(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666614();
  result = sub_1D7666668();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666614()
{
  result = qword_1EE0B1C10;
  if (!qword_1EE0B1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1C10);
  }

  return result;
}

unint64_t sub_1D7666668()
{
  result = qword_1EE0B1C18[0];
  if (!qword_1EE0B1C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B1C18);
  }

  return result;
}

uint64_t sub_1D76666BC(uint64_t a1)
{
  result = sub_1D77038B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D7666750(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666780();
  result = sub_1D76667D4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666780()
{
  result = qword_1EE0B2190;
  if (!qword_1EE0B2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B2190);
  }

  return result;
}

unint64_t sub_1D76667D4()
{
  result = qword_1EE0B2198[0];
  if (!qword_1EE0B2198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B2198);
  }

  return result;
}

unint64_t sub_1D7666838(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666868();
  result = sub_1D76668BC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666868()
{
  result = qword_1EE0B1B38;
  if (!qword_1EE0B1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B38);
  }

  return result;
}

unint64_t sub_1D76668BC()
{
  result = qword_1EE0B1B40;
  if (!qword_1EE0B1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B40);
  }

  return result;
}

unint64_t sub_1D7666948(uint64_t a1)
{
  *(a1 + 24) = sub_1D7666978();
  result = sub_1D76669CC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D7666978()
{
  result = qword_1EE0B1B48;
  if (!qword_1EE0B1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B48);
  }

  return result;
}

unint64_t sub_1D76669CC()
{
  result = qword_1EE0B1B50;
  if (!qword_1EE0B1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B1B50);
  }

  return result;
}

uint64_t sub_1D7666A40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7666A98(uint64_t a1)
{
  result = type metadata accessor for NativeAdInfo.Fulfilled(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7666B0C(uint64_t a1)
{
  sub_1D7666C3C();
  if (v1 <= 0x3F)
  {
    sub_1D7666C8C(319, qword_1EE0B0ED0, type metadata accessor for Journal);
    if (v2 <= 0x3F)
    {
      sub_1D7666C8C(319, qword_1EE0B0DA8, type metadata accessor for AdRequest);
      if (v3 <= 0x3F)
      {
        sub_1D7665328(319, qword_1EE0B1748, &protocol descriptor for NativeAdContentInfoType);
        if (v4 <= 0x3F)
        {
          sub_1D7703D50();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D7666C3C()
{
  if (!qword_1EE0B0DA0)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0DA0);
    }
  }
}

void sub_1D7666C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for NativeAdContext;
    v8[1] = type metadata accessor for NativeAdPlacement(255);
    v8[2] = sub_1D7666D14();
    v8[3] = &protocol witness table for NativeAdPlacement;
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7666D14()
{
  result = qword_1EE0B2188;
  if (!qword_1EE0B2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B2188);
  }

  return result;
}

uint64_t type metadata accessor for NativeAdPlacement(uint64_t a1)
{
  result = qword_1EE0B1E70;
  if (!qword_1EE0B1E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7666DEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdContext(319, a1[2], a1[4], a4);
  if (v4 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1D7666F64(319, qword_1EE0B0E30, &type metadata for AdPreview);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D7666EEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D7666F64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D77046B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7666FB0(uint64_t a1)
{
  sub_1D77038B0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D766705C(uint64_t a1)
{
  *(a1 + 24) = sub_1D766708C();
  result = sub_1D76670E0();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D766708C()
{
  result = qword_1EE0B12C8;
  if (!qword_1EE0B12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12C8);
  }

  return result;
}

unint64_t sub_1D76670E0()
{
  result = qword_1EE0B12D0;
  if (!qword_1EE0B12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12D0);
  }

  return result;
}

unint64_t sub_1D76671A4(uint64_t a1)
{
  *(a1 + 24) = sub_1D76671D4();
  result = sub_1D7667228();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D76671D4()
{
  result = qword_1EE0B12B0;
  if (!qword_1EE0B12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12B0);
  }

  return result;
}

unint64_t sub_1D7667228()
{
  result = qword_1EE0B12B8;
  if (!qword_1EE0B12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B12B8);
  }

  return result;
}

unint64_t sub_1D7667284()
{
  result = qword_1EE0AF790;
  if (!qword_1EE0AF790)
  {
    sub_1D76673E4();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AF790);
  }

  return result;
}

void sub_1D76672F0(void *a1)
{
  v18 = 0;
  v23 = MEMORY[0x1E69E6158];
  v2 = sub_1D7667284();
  if (v3 <= 0x3F)
  {
    v19 = 0;
    v24 = v2;
    type metadata accessor for CGSize(319);
    if (v5 <= 0x3F)
    {
      v20 = 0;
      v25 = v4;
      v6 = a1[2];
      v7 = a1[3];
      v8 = a1[4];
      v9 = a1[5];
      v14 = v6;
      v15 = v7;
      v16 = v8;
      v17 = v9;
      v10 = type metadata accessor for AdRequest(319, &v14);
      if (v11 <= 0x3F)
      {
        v21 = 0;
        v26 = v10;
        v14 = v6;
        v15 = v7;
        v16 = v8;
        v17 = v9;
        v12 = type metadata accessor for Journal(319, &v14);
        if (v13 <= 0x3F)
        {
          v22 = 0;
          v27 = v12;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D76673E4()
{
  result = qword_1EE0AECF0;
  if (!qword_1EE0AECF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AECF0);
  }

  return result;
}

uint64_t sub_1D7667488(uint64_t a1)
{
  result = type metadata accessor for NativeAdHeadline(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D76674F0(uint64_t a1)
{
  sub_1D766759C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NativeAdInfo.Fulfilled(319);
    if (v2 <= 0x3F)
    {
      sub_1D7667600(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D766759C()
{
  result = qword_1EE0AED28;
  if (!qword_1EE0AED28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AED28);
  }

  return result;
}

void sub_1D7667600(uint64_t a1)
{
  if (!qword_1EE0B0ED0[0])
  {
    v4[0] = &type metadata for NativeAdContext;
    v4[1] = type metadata accessor for NativeAdPlacement(255);
    v4[2] = sub_1D7666D14();
    v4[3] = &protocol witness table for NativeAdPlacement;
    v2 = type metadata accessor for Journal(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EE0B0ED0);
    }
  }
}

uint64_t sub_1D7667680(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DebugCommandHandler();
  result = sub_1D7703400();
  if (result)
  {
    swift_getObjectType();
    if (qword_1EE0B07F0 != -1)
    {
      swift_once();
    }

    sub_1D76679B4();
    sub_1D7703F40();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7667794()
{
  type metadata accessor for DebugCommandHandler();
  sub_1D7703530();
}

uint64_t sub_1D76677F4()
{
  type metadata accessor for DebugCommandHandler();

  return swift_allocObject();
}

void sub_1D7667828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DebugJournal);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D766787C()
{
  sub_1D7667828(0, &qword_1EE0B0808, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1D7667828(0, &qword_1EE0B0800, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v4, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7704040();
  qword_1EE0B07F8 = result;
  return result;
}

unint64_t sub_1D76679B4()
{
  result = qword_1EE0AF9E0;
  if (!qword_1EE0AF9E0)
  {
    type metadata accessor for DebugCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF9E0);
  }

  return result;
}

void *sub_1D7667A0C(void *a1)
{
  v2 = sub_1D7702FA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7664B2C();
  result = sub_1D77033E0();
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1D7702F90();
    v9 = sub_1D7702F70();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    (*(v8 + 24))(0x656E656353, 0xE500000000000000, v9, v11, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7667BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7667C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D7667CB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1D7667CD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1D40, &protocol descriptor for AdPreviewQueueType);
  result = sub_1D7703410();
  if (v5[3])
  {
    v4 = type metadata accessor for AdManager();
    swift_allocObject();
    result = AdManager.init(previewQueue:)(v5);
    a2[3] = v4;
    a2[4] = &protocol witness table for AdManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7667D7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AdPreviewQueue();
  v3 = swift_allocObject();
  result = sub_1D7668DF8(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5251CA0;
  *a1 = v3;
  return result;
}

uint64_t sub_1D7667DE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for AdsModuleStartupTask();
  result = sub_1D7703400();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_1D7667EA8(&qword_1EE0B05B8, type metadata accessor for AdsModuleStartupTask, &unk_1D770930C);
    v5[0] = v4;
    sub_1D7703500();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7667EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7667EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1D7703570();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_1D7667F8C@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for AdContextBuilder();
  v4 = swift_allocObject();
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  *(v4 + 40) = sub_1D7703380();
  *(v4 + 48) = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
  result = 0.0;
  *(v4 + 16) = xmmword_1D770EF00;
  *(v4 + 32) = 0xE400000000000000;
  a1[3] = v3;
  a1[4] = &protocol witness table for AdContextBuilder;
  *a1 = v4;
  return result;
}

unint64_t sub_1D76680A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7669AF0(0);
    v3 = sub_1D77048B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D76AE174(v4, &v13, sub_1D76AE48C);
      v5 = v13;
      v6 = v14;
      result = sub_1D76689AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D7667CB8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

void sub_1D76681C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7668218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E7CA0];
    sub_1D766BB6C(0, &qword_1EE0AECB0, MEMORY[0x1E69E7CA0] + 8);
    v4 = sub_1D77048B0();
    v5 = a1 + 32;

    while (1)
    {
      sub_1D76AE2B0(v5, &v14, &qword_1EC9BD5A0, v3 + 8);
      v6 = v14;
      v7 = v15;
      result = sub_1D76689AC(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1D766B74C(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

uint64_t sub_1D7668348(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7665328(0, &qword_1EE0B1C08, &protocol descriptor for AdContextBuilderType);
  return sub_1D77033A0();
}

void sub_1D76683B0(uint64_t a1)
{
  if (!qword_1EE0B0878)
  {
    sub_1D7665328(255, qword_1EE0AF0C8, &protocol descriptor for PromotedContentContextWrapperType);
    v1 = sub_1D77035D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0B0878);
    }
  }
}

uint64_t sub_1D766844C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1D7668494()
{
  result = qword_1EE0B0450;
  if (!qword_1EE0B0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0450);
  }

  return result;
}

unint64_t sub_1D76684E8()
{
  result = qword_1EE0B0458;
  if (!qword_1EE0B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0458);
  }

  return result;
}

uint64_t AdContextBuilderType.pushData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = -1;
  return (*(a4 + 32))(a1, v6, a3, a5, a2, a4);
}

uint64_t AdContextBuilder.pushData<A>(_:namespace:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v26[3] = swift_getMetatypeMetadata();
  v26[0] = a3;
  v24[0] = v7;
  v24[1] = v8;
  v25 = v9;
  v10 = sub_1D766C108(v26, v24);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7708FD0;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D7668854();
  *(v13 + 64) = v15;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;

  v26[0] = AdContextBuilder.path.getter(v16);
  sub_1D7668958(0, &qword_1EE0AED80, v14, MEMORY[0x1E69E62F8]);
  sub_1D7669758();
  v17 = sub_1D7704210();
  v19 = v18;

  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v17;
  *(v13 + 80) = v19;
  v20 = sub_1D77045A0();
  sub_1D7703ED0("Pushing data on context builder for key=%{public}@, contextBuilder=%{public}@", 77, 2, &dword_1D7662000, v23, v20, v13);

  v26[0] = *(v5 + 40);
  MEMORY[0x1EEE9AC00](v21);
  sub_1D7703390();

  sub_1D7703580();
}

unint64_t sub_1D7668808()
{
  result = qword_1EE0AECE0;
  if (!qword_1EE0AECE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AECE0);
  }

  return result;
}

unint64_t sub_1D7668854()
{
  result = qword_1EE0AEDA0;
  if (!qword_1EE0AEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDA0);
  }

  return result;
}

uint64_t AdContextBuilder.path.getter(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    v3 = AdContextBuilder.path.getter(a1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7668958(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708FE0;
  v5 = *(v2 + 32);
  *(inited + 32) = *(v2 + 24);
  *(inited + 40) = v5;

  sub_1D7669540(inited);
  return v3;
}

void sub_1D7668958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D76689AC(uint64_t a1, uint64_t a2)
{
  sub_1D7704AD0();
  sub_1D77042D0();
  v4 = sub_1D7704AF0();

  return sub_1D7668A24(a1, a2, v4);
}

unint64_t sub_1D7668A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D7704A30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D7668ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D7669AF0(0);
  v33 = v4;
  result = sub_1D77048A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1D7667CB8(v24, v34);
      }

      else
      {
        sub_1D7667C54(v24, v34);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D7667CB8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1D7668DA4(uint64_t a1)
{
  *(a1 + 8) = sub_1D7669CEC();
  result = sub_1D7669D40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7668DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76AE078(0, &qword_1EC9BD588, &qword_1EC9BD590, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D77048B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D76689AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

void *AdManager.init(previewQueue:)(void *a1)
{
  if (qword_1EE0B0CE8 != -1)
  {
    swift_once();
  }

  sub_1D7669334();
  swift_allocObject();

  v1[2] = sub_1D7703160();
  v1[13] = sub_1D7668218(MEMORY[0x1E69E7CC0]);
  sub_1D76683B0(0);
  swift_allocObject();
  v1[14] = sub_1D77035C0();
  swift_allocObject();
  v1[15] = sub_1D77035C0();
  sub_1D7667C54(a1, (v1 + 3));
  v5 = type metadata accessor for PromotedContentContextFactory();
  v6 = &off_1F5255DC0;
  *&v4 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D7667CB8(&v4, (v1 + 8));
  return v1;
}

uint64_t sub_1D7669050(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AdContextManager();
  sub_1D7667C54(a1, v5);
  v3 = swift_allocObject();
  sub_1D7667CB8(v5, v3 + 16);
  sub_1D77033F0();
}

uint64_t sub_1D7669118()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7669150()
{
  v0 = sub_1D7703220();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 1;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D7703270();
  qword_1EE0B0CF0 = result;
  return result;
}

void sub_1D7669334()
{
  if (!qword_1EE0B0918)
  {
    v0 = sub_1D7703150();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0918);
    }
  }
}

unint64_t sub_1D7669394()
{
  result = qword_1EE0B0460;
  if (!qword_1EE0B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0460);
  }

  return result;
}

void sub_1D766940C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7669474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D76694D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7669540(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D7669634(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D7669634(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D7669758()
{
  result = qword_1EE0AED78;
  if (!qword_1EE0AED78)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED78);
  }

  return result;
}

void sub_1D76697B0()
{
  if (!qword_1EE0AED80)
  {
    v0 = sub_1D77044B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AED80);
    }
  }
}

uint64_t sub_1D7669800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v12);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_2, a4, a5);
  swift_beginAccess();

  sub_1D76698BC(v12, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1D76698BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D7667CB8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1D766999C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1D76EFB58(a1, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
    sub_1D76EF3CC(a2, a3, v9);

    return sub_1D76EFB58(v9, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
  }

  return result;
}

uint64_t sub_1D766999C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D767EF14();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D7668ADC(v16, a4 & 1);
    v11 = sub_1D76689AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7704A70();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D7667CB8(a1, v22);
  }

  else
  {
    sub_1D7669B68(v11, a2, a3, a1, v21);
  }
}

void sub_1D7669AF0(uint64_t a1)
{
  if (!qword_1EE0AECB8)
  {
    sub_1D7665328(255, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType);
    v1 = sub_1D77048C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AECB8);
    }
  }
}

uint64_t sub_1D7669B68(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D7667CB8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1D7669BD8()
{
  result = qword_1EE0AED30;
  if (!qword_1EE0AED30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AED30);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7669CEC()
{
  result = qword_1EE0AEDB0;
  if (!qword_1EE0AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDB0);
  }

  return result;
}

unint64_t sub_1D7669D40()
{
  result = qword_1EE0AEDB8[0];
  if (!qword_1EE0AEDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AEDB8);
  }

  return result;
}

uint64_t AdContextBuilder.chain(_:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = swift_allocObject();

  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  v13[5] = sub_1D7703380();
  v13[6] = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
  v13[2] = v5;

  if (a4)
  {
    MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](a3, a4);
    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
  }

  v13[3] = a1;
  v13[4] = a2;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7708FE0;
  v22 = AdContextBuilder.path.getter(v15);
  v16 = MEMORY[0x1E69E6158];
  sub_1D7668958(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7669758();
  v17 = sub_1D7704210();
  v19 = v18;

  *(v15 + 56) = v16;
  *(v15 + 64) = sub_1D7668854();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_1D77045A0();
  sub_1D7703ED0("Chaining context builder, contextBuilder=%{public}@", 51, 2, &dword_1D7662000, v14, v20, v15, v22);

  a5[3] = v11;
  a5[4] = &protocol witness table for AdContextBuilder;
  *a5 = v13;
  return result;
}

void *AdRequestStore.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D7703360();
  sub_1D7703390();
  swift_allocObject();
  v0[3] = sub_1D7703380();
  v4 = *(v2 + 96);
  v10[0] = *(v2 + 80);
  v10[1] = v4;
  v5 = type metadata accessor for AdRequest(255, v10);
  v6 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v7 = sub_1D7704440();
  v8 = sub_1D766A1C4(v7, v6, v5, MEMORY[0x1E69E6168]);

  v1[2] = v8;
  return v1;
}

unint64_t sub_1D766A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1D7704470())
  {
    sub_1D77048C0();
    v13 = sub_1D77048B0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D7704470();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1D7704450())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D7704750();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D769D1C8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t Journal.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[13];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  type metadata accessor for AnyProcessor(0, &v8);
  *(v1 + 16) = sub_1D7704180();
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  type metadata accessor for JournalEntry(255, &v8);
  sub_1D77044B0();
  sub_1D77035D0();
  *(v1 + 24) = sub_1D77035B0();
  return v1;
}

void sub_1D766A624(uint64_t a1)
{
  v15 = 0;
  v2 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6158];
  v3 = sub_1D7702F50();
  if (v4 <= 0x3F)
  {
    v16 = 0;
    v23 = v3;
    v24 = v2;
    v17 = 0;
    v25 = &type metadata for JournalEntryStatus;
    sub_1D7666F64(319, &qword_1EE0B0DA0, v2);
    if (v6 <= 0x3F)
    {
      v18 = 0;
      v26 = v5;
      sub_1D7666F64(319, &qword_1EE0AF6B8, &type metadata for AdContextBuilderSnapshot);
      if (v8 <= 0x3F)
      {
        v19 = 0;
        v27 = v7;
        sub_1D7666F64(319, &qword_1EE0AEFF8, &type metadata for AdLayout);
        if (v10 <= 0x3F)
        {
          v20 = 0;
          v28 = v9;
          v11 = *(a1 + 32);
          v14[0] = *(a1 + 16);
          v14[1] = v11;
          type metadata accessor for AdRequest(255, v14);
          v12 = sub_1D77046B0();
          if (v13 <= 0x3F)
          {
            v21 = 0;
            v29 = v12;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t AdRequestManager.init(contextBuilder:adManager:requestStore:journal:host:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12 = *a5;
  v9 = *(a5 + 2);
  v10 = *(a5 + 3);
  sub_1D7667CB8(a1, v5 + 16);
  sub_1D7667CB8(a2, v5 + 56);
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  *(v5 + 112) = v12;
  *(v5 + 128) = v9;
  *(v5 + 136) = v10;
  return v5;
}

uint64_t sub_1D766A7C8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for ContentBannerAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v74 = v5;
  sub_1D766AF78(0);
  inited = swift_initStaticObject();
  v69 = *(v7 + 40);
  v70 = type metadata accessor for ContentBannerAdProvider();
  v9 = type metadata accessor for ContentBannerAdPlacement(0);
  v10 = sub_1D766B03C();
  v69(&v74, inited, &type metadata for ContentBannerAdContext, v70, v9, v3, v10, &protocol witness table for ContentBannerAdPlacement, &protocol witness table for ContentBannerAdProviderFactory, v6, v7);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v74 = v5;
  sub_1D766BC30(0);
  v13 = swift_initStaticObject();
  v14 = *(v11 + 40);
  v15 = type metadata accessor for RecipeBannerAdPlacement(0);
  v14(&v74, v13, &type metadata for ContentBannerAdContext, v70, v15, v3, v10, &protocol witness table for RecipeBannerAdPlacement, &protocol witness table for ContentBannerAdProviderFactory, v12, v11);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = type metadata accessor for FeedBannerAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v74 = v17;
  sub_1D766BCE8(0);
  v20 = swift_initStaticObject();
  v21 = *(v19 + 40);
  v22 = type metadata accessor for FeedBannerAdProvider();
  v23 = type metadata accessor for FeedBannerAdPlacement(0);
  v24 = sub_1D766BDF8();
  v21(&v74, v20, &type metadata for FeedBannerAdContext, v22, v23, v16, v24, &protocol witness table for FeedBannerAdPlacement, &protocol witness table for FeedBannerAdProviderFactory, v18, v19);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = type metadata accessor for InterstitialAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = result;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v74 = v26;
  sub_1D766BE64(0);
  v29 = swift_initStaticObject();
  v30 = *(v28 + 40);
  v71 = type metadata accessor for InterstitialAdProvider();
  v31 = type metadata accessor for InterstitialAdPlacement(0);
  v32 = sub_1D766C450();
  v30(&v74, v29, &type metadata for ArticleInterstitialAdContext, v71, v31, v25, v32, &protocol witness table for InterstitialAdPlacement, &protocol witness table for InterstitialAdProviderFactory, v27, v28);
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v74 = v26;
  sub_1D766C4A4(0);
  v35 = swift_initStaticObject();
  v36 = *(v33 + 40);
  v37 = sub_1D766C544();
  v36(&v74, v35, &type metadata for PreviewInterstitialAdContext, v71, v31, v25, v37, &protocol witness table for InterstitialAdPlacement, &protocol witness table for InterstitialAdProviderFactory, v34, v33);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v38 = type metadata accessor for PrerollAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v39 = result;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v74 = v39;
  sub_1D766C598(0);
  v42 = swift_initStaticObject();
  v43 = *(v41 + 40);
  v72 = type metadata accessor for PrerollAdProvider();
  v44 = type metadata accessor for PrerollAdPlacement(0);
  v45 = sub_1D766C638();
  v43(&v74, v42, &type metadata for ArticlePrerollAdContext, v72, v44, v38, v45, &protocol witness table for PrerollAdPlacement, &protocol witness table for PrerollAdProviderFactory, v40, v41);
  v47 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v74 = v39;
  sub_1D766BFD8(0);
  v48 = swift_initStaticObject();
  v49 = *(v46 + 40);
  v50 = sub_1D766C078();
  v49(&v74, v48, &type metadata for FeedPrerollAdContext, v72, v44, v38, v50, &protocol witness table for PrerollAdPlacement, &protocol witness table for PrerollAdProviderFactory, v47, v46);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v51 = type metadata accessor for NativeAdProviderFactory();
  result = sub_1D7703400();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v52 = result;
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  v74 = v52;
  sub_1D766C68C(0);
  v55 = swift_initStaticObject();
  v56 = *(v54 + 40);
  v57 = type metadata accessor for NativeAdProvider();
  v58 = type metadata accessor for NativeAdPlacement(0);
  v59 = sub_1D7666D14();
  v56(&v74, v55, &type metadata for NativeAdContext, v57, v58, v51, v59, &protocol witness table for NativeAdPlacement, &protocol witness table for NativeAdProviderFactory, v53, v54);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v60 = type metadata accessor for SponsorshipAdProviderFactory();
  result = sub_1D7703400();
  if (result)
  {
    v61 = result;
    v62 = a1[3];
    v63 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v62);
    v74 = v61;
    sub_1D766C744(0);
    v64 = swift_initStaticObject();
    v65 = *(v63 + 40);
    v66 = type metadata accessor for SponsorshipAdProvider();
    v67 = type metadata accessor for SponsorshipAdPlacement(0);
    v68 = sub_1D766C808();
    v65(&v74, v64, &type metadata for SponsorshipAdContext, v66, v67, v60, v68, &protocol witness table for SponsorshipAdPlacement, &protocol witness table for SponsorshipAdProviderFactory, v62, v63);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D766AF04(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1D7667C54(a1, v5);
  a2(0);
  v3 = swift_allocObject();
  sub_1D7667CB8(v5, v3 + 16);
  return v3;
}

void sub_1D766AF78(uint64_t a1)
{
  if (!qword_1EE0AF1B8)
  {
    v4[0] = &type metadata for ContentBannerAdContext;
    v4[1] = type metadata accessor for ContentBannerAdProvider();
    v4[2] = type metadata accessor for ContentBannerAdPlacement(255);
    v4[3] = sub_1D766B03C();
    v4[4] = &protocol witness table for ContentBannerAdProvider;
    v4[5] = &protocol witness table for ContentBannerAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1B8);
    }
  }
}

unint64_t sub_1D766B03C()
{
  result = qword_1EE0AF798;
  if (!qword_1EE0AF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF798);
  }

  return result;
}

uint64_t AdManager.register<A, B, C, D>(factory:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = *a2;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0AF010;
  sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7708FE0;
  v13 = a2[2];
  v14 = a2[3];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D7668854();
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  swift_bridgeObjectRetain_n();
  v15 = sub_1D77045A0();
  sub_1D7703ED0("Registered ad provider factory, ad=%{public}@", 45, 2, &dword_1D7662000, v11, v15, v12);

  (*(v8 + 16))(v10, a1, a3);
  v17 = *(v7 + 96);
  v18 = *(v7 + 104);
  v19 = *(v7 + 128);
  v26[0] = *(v7 + 88);
  v16 = v26[0];
  v26[1] = v17;
  v26[2] = v18;
  v24 = *(v7 + 112);
  v27 = v24;
  v28 = v19;
  v20 = type metadata accessor for Ad(0, v26);
  v21 = sub_1D766B3F0(v10, v20, v17, v16, v18, a3, v24, v19, v25);
  *&v27 = type metadata accessor for AnyFactory(0, v20, v17, v22);
  v26[0] = v21;
  swift_beginAccess();
  sub_1D766B67C(v26, v13, v14);
  return swift_endAccess();
}

uint64_t *sub_1D766B3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for AnyFactory(0, a2, a3, a4);
  swift_allocObject();
  return sub_1D766B4C4(a1, a4, a5, a6, a7, a8, a9);
}

uint64_t *sub_1D766B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(a4 - 8);
  v15 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = *(v13 + 80);
  *(v16 + 3) = *(v13 + 88);
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 6) = a4;
  *(v16 + 7) = a5;
  *(v16 + 8) = a6;
  *(v16 + 9) = a7;
  (*(v14 + 32))(&v16[v15], a1, a4);
  v7[2] = sub_1D767FA24;
  v7[3] = v16;
  return v7;
}

uint64_t sub_1D766B5FC()
{
  (*(*(*(v0 + 48) - 8) + 8))(v0 + ((*(*(*(v0 + 48) - 8) + 80) + 80) & ~*(*(*(v0 + 48) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D766B67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D766B74C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D766B75C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    sub_1D76939B0(a1, &unk_1EE0AEBB0, MEMORY[0x1E69E7CA0] + 8);
    sub_1D76EF538(a2, a3, v10);

    return sub_1D76939B0(v10, &unk_1EE0AEBB0, v8 + 8);
  }

  return result;
}

_OWORD *sub_1D766B74C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_1D766B75C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D76689AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D76E4878();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D766B8AC(v16, a4 & 1);
    v11 = sub_1D76689AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D7704A70();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D766B74C(a1, v22);
  }

  else
  {
    sub_1D766BBC4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D766B8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D766BB6C(0, &qword_1EE0AECB0, MEMORY[0x1E69E7CA0] + 8);
  v33 = v4;
  result = sub_1D77048A0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D766B74C(v24, v34);
      }

      else
      {
        sub_1D767F844(v24, v34);
      }

      sub_1D7704AD0();
      sub_1D77042D0();
      result = sub_1D7704AF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D766B74C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_1D766BB6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D77048C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_1D766BBC4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D766B74C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1D766BC30(uint64_t a1)
{
  if (!qword_1EE0AF1C0)
  {
    v4[0] = &type metadata for ContentBannerAdContext;
    v4[1] = type metadata accessor for ContentBannerAdProvider();
    v4[2] = type metadata accessor for RecipeBannerAdPlacement(255);
    v4[3] = sub_1D766B03C();
    v4[4] = &protocol witness table for ContentBannerAdProvider;
    v4[5] = &protocol witness table for RecipeBannerAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1C0);
    }
  }
}

void sub_1D766BCE8(uint64_t a1)
{
  if (!qword_1EE0AF1D8[0])
  {
    v4[0] = &type metadata for FeedBannerAdContext;
    v4[1] = type metadata accessor for FeedBannerAdProvider();
    v4[2] = type metadata accessor for FeedBannerAdPlacement(255);
    v4[3] = sub_1D766BDF8();
    v4[4] = &protocol witness table for FeedBannerAdProvider;
    v4[5] = &protocol witness table for FeedBannerAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EE0AF1D8);
    }
  }
}

uint64_t type metadata accessor for FeedBannerAdPlacement(uint64_t a1)
{
  result = qword_1EE0B1B28;
  if (!qword_1EE0B1B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D766BDF8()
{
  result = qword_1EE0AF940;
  if (!qword_1EE0AF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF940);
  }

  return result;
}

void sub_1D766BE64(uint64_t a1)
{
  if (!qword_1EE0AF1A8)
  {
    v4[0] = &type metadata for ArticleInterstitialAdContext;
    v4[1] = type metadata accessor for InterstitialAdProvider();
    v4[2] = type metadata accessor for InterstitialAdPlacement(255);
    v4[3] = sub_1D766C450();
    v4[4] = &protocol witness table for InterstitialAdProvider;
    v4[5] = &protocol witness table for InterstitialAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1A8);
    }
  }
}

uint64_t type metadata accessor for InterstitialAdPlacement(uint64_t a1)
{
  result = qword_1EE0B17D8;
  if (!qword_1EE0B17D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PrerollAdPlacement(uint64_t a1)
{
  result = qword_1EE0B1D30;
  if (!qword_1EE0B1D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D766BFD8(uint64_t a1)
{
  if (!qword_1EE0AF1D0)
  {
    v4[0] = &type metadata for FeedPrerollAdContext;
    v4[1] = type metadata accessor for PrerollAdProvider();
    v4[2] = type metadata accessor for PrerollAdPlacement(255);
    v4[3] = sub_1D766C078();
    v4[4] = &protocol witness table for PrerollAdProvider;
    v4[5] = &protocol witness table for PrerollAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1D0);
    }
  }
}

unint64_t sub_1D766C078()
{
  result = qword_1EE0AF868[0];
  if (!qword_1EE0AF868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AF868);
  }

  return result;
}

uint64_t sub_1D766C108(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  result = sub_1D7704B50();
  v8 = result;
  if (v4 != 255)
  {
    if (v4)
    {
    }

    else
    {
      if (v2)
      {
        v6 = 0x676E696C69617274;
      }

      else
      {
        v6 = 0x676E696461656CLL;
      }

      if (v2)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE700000000000000;
      }

      MEMORY[0x1DA6FF0D0](v6, v7);

      v2 = 0x6E6F697461636F6CLL;
      v3 = 0xE90000000000002DLL;
    }

    MEMORY[0x1DA6FF0D0](v2, v3);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    MEMORY[0x1DA6FF0D0](0x617073656D614E2DLL, 0xEB00000000286563);

    return v8;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1D766C2F8(uint64_t a1)
{
  *(a1 + 8) = sub_1D76684E8();
  result = sub_1D7669394();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D766C328()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7704260();
  }

  sub_1D7668808();
  result = sub_1D77046A0();
  qword_1EE0AF010 = result;
  return result;
}

void sub_1D766C3F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D766C450()
{
  result = qword_1EE0AF3F0;
  if (!qword_1EE0AF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3F0);
  }

  return result;
}

void sub_1D766C4A4(uint64_t a1)
{
  if (!qword_1EE0AF1A0)
  {
    v4[0] = &type metadata for PreviewInterstitialAdContext;
    v4[1] = type metadata accessor for InterstitialAdProvider();
    v4[2] = type metadata accessor for InterstitialAdPlacement(255);
    v4[3] = sub_1D766C544();
    v4[4] = &protocol witness table for InterstitialAdProvider;
    v4[5] = &protocol witness table for InterstitialAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1A0);
    }
  }
}

unint64_t sub_1D766C544()
{
  result = qword_1EE0AF3C0;
  if (!qword_1EE0AF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3C0);
  }

  return result;
}

void sub_1D766C598(uint64_t a1)
{
  if (!qword_1EE0AF1B0)
  {
    v4[0] = &type metadata for ArticlePrerollAdContext;
    v4[1] = type metadata accessor for PrerollAdProvider();
    v4[2] = type metadata accessor for PrerollAdPlacement(255);
    v4[3] = sub_1D766C638();
    v4[4] = &protocol witness table for PrerollAdProvider;
    v4[5] = &protocol witness table for PrerollAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1B0);
    }
  }
}

unint64_t sub_1D766C638()
{
  result = qword_1EE0AF700[0];
  if (!qword_1EE0AF700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0AF700);
  }

  return result;
}

void sub_1D766C68C(uint64_t a1)
{
  if (!qword_1EE0AF198)
  {
    v4[0] = &type metadata for NativeAdContext;
    v4[1] = type metadata accessor for NativeAdProvider();
    v4[2] = type metadata accessor for NativeAdPlacement(255);
    v4[3] = sub_1D7666D14();
    v4[4] = &protocol witness table for NativeAdProvider;
    v4[5] = &protocol witness table for NativeAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF198);
    }
  }
}

void sub_1D766C744(uint64_t a1)
{
  if (!qword_1EE0AF1C8)
  {
    v4[0] = &type metadata for SponsorshipAdContext;
    v4[1] = type metadata accessor for SponsorshipAdProvider();
    v4[2] = type metadata accessor for SponsorshipAdPlacement(255);
    v4[3] = sub_1D766C808();
    v4[4] = &protocol witness table for SponsorshipAdProvider;
    v4[5] = &protocol witness table for SponsorshipAdPlacement;
    v2 = type metadata accessor for Ad(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AF1C8);
    }
  }
}

unint64_t sub_1D766C808()
{
  result = qword_1EE0AF860;
  if (!qword_1EE0AF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF860);
  }

  return result;
}

uint64_t type metadata accessor for SponsorshipAdPlacement(uint64_t a1)
{
  result = qword_1EE0B1930;
  if (!qword_1EE0B1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D766C8DC()
{
  result = qword_1EE0AED70;
  if (!qword_1EE0AED70)
  {
    sub_1D76697B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsAds13BannerAdStateO(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

void *sub_1D766C9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0AF7A0, &protocol descriptor for BannerAdViewStylerType, 1);
  result = sub_1D7703410();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B0F68, &protocol descriptor for DebugJournalSummaryViewRendererType, 1);
  result = sub_1D7703410();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B26A0, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7703410();
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for BannerAdViewStyler();
    v21[3] = v12;
    v21[4] = &off_1F52522D8;
    v21[0] = v11;
    v13 = type metadata accessor for BannerAdViewRenderer();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x1EEE9AC00](v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[5] = v12;
    v14[6] = &off_1F52522D8;
    v14[2] = v19;
    sub_1D7667CB8(&v24, (v14 + 7));
    v14[12] = v5;
    v14[13] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v13;
    a2[4] = &protocol witness table for BannerAdViewRenderer;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t get_enum_tag_for_layout_string_7NewsAds18JournalEntryStatusO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D766CCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D766CD2C(uint64_t a1)
{
  *(a1 + 8) = sub_1D766CDD0();
  result = sub_1D766CFCC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D766CD5C()
{
  sub_1D7666184(0, qword_1EE0AF7A0, &protocol descriptor for BannerAdViewStylerType, 1);
  sub_1D7703540();
}

unint64_t sub_1D766CDD0()
{
  result = qword_1EE0B0470;
  if (!qword_1EE0B0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0470);
  }

  return result;
}

uint64_t sub_1D766CE44@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D766CEA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D766CF58(uint64_t a1)
{
  result = type metadata accessor for NativeAd.Headline(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D766CFCC()
{
  result = qword_1EE0B0478[0];
  if (!qword_1EE0B0478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B0478);
  }

  return result;
}

unint64_t BannerAdState.description.getter()
{
  sub_1D766CEFC(v0, v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v10 = *&v15[32];
      v11 = *&v15[48];
      v12 = *&v15[64];
      v8 = *v15;
      v9 = *&v15[16];
      sub_1D7704740();

      v13 = 0xD000000000000010;
      v14 = 0x80000001D7717460;
      v1 = BannerAdState.Recover.description.getter();
      MEMORY[0x1DA6FF0D0](v1);

      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
      v2 = 0xD000000000000010;
      sub_1D76749B8(&v8);
    }

    else
    {
      v6 = vorrq_s8(vorrq_s8(*&v15[8], *&v15[40]), vorrq_s8(*&v15[24], *&v15[56]));
      if (*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *&v15[72] | *v15)
      {
        return 0x676E69646E6570;
      }

      else
      {
        return 0x6C616974696E69;
      }
    }
  }

  else
  {
    sub_1D7667CB8(v15, &v8);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1D7704740();

    v13 = 0xD000000000000017;
    v14 = 0x80000001D7717440;
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    MEMORY[0x1DA6FF0D0](v5);

    MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);
    v2 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  return v2;
}

void *sub_1D766D248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B1020, &protocol descriptor for DebugJournalSummaryViewStylerType, 1);
  result = sub_1D7703410();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7666184(0, &qword_1EE0B26A0, MEMORY[0x1E69D7A90], 0);
    result = sub_1D7703410();
    v5 = v21;
    if (v21)
    {
      v6 = v22;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x1EEE9AC00](v7);
      v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for DebugJournalSummaryViewStyler();
      v20[3] = v12;
      v20[4] = &off_1F5253310;
      v20[0] = v11;
      v13 = type metadata accessor for DebugJournalSummaryViewRenderer();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      MEMORY[0x1EEE9AC00](v15);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      v14[5] = v12;
      v14[6] = &off_1F5253310;
      v14[2] = v19;
      v14[7] = v5;
      v14[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      a2[3] = v13;
      a2[4] = &off_1F5254540;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D766D4E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DebugJournalSummaryViewStyler();
  result = swift_allocObject();
  *(result + 16) = 0x402E000000000000;
  a1[3] = v2;
  a1[4] = &off_1F5253310;
  *a1 = result;
  return result;
}

uint64_t BannerAd.journal.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v12[6] = *(v1 + 200);
  v12[7] = v3;
  v12[8] = *(v1 + 232);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v12[2] = *(v1 + 136);
  v12[3] = v5;
  v12[4] = *(v1 + 168);
  v12[5] = v2;
  v12[0] = *(v1 + 104);
  v12[1] = v4;
  v6 = *(v1 + 184);
  v7 = *(v1 + 216);
  a1[6] = *(v1 + 200);
  a1[7] = v7;
  a1[8] = *(v1 + 232);
  v8 = *(v1 + 120);
  v9 = *(v1 + 152);
  a1[2] = *(v1 + 136);
  a1[3] = v9;
  a1[4] = *(v1 + 168);
  a1[5] = v6;
  *a1 = *(v1 + 104);
  a1[1] = v8;
  return sub_1D766D644(v12, &v11);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t Journal.addProcessor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 96);
  v13[0] = *(v9 + 80);
  v13[1] = v10;
  type metadata accessor for AnyProcessor(0, v13);
  (*(v6 + 16))(v8, a1, a2);
  swift_allocObject();
  v12[1] = sub_1D766D910(v8, a2, a3);
  swift_beginAccess();
  sub_1D77044B0();
  sub_1D7704480();
  return swift_endAccess();
}

uint64_t sub_1D766D83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 488) = ~a2;
    }
  }

  return result;
}

uint64_t *sub_1D766D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v7 + 80);
  *(v10 + 3) = *(v7 + 88);
  *(v10 + 4) = a2;
  *(v10 + 5) = a3;
  (*(v8 + 32))(&v10[v9], a1, a2);
  v3[2] = sub_1D7670700;
  v3[3] = v10;
  return v3;
}

uint64_t sub_1D766DA24()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

void *BannerAdViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 8);
  v27 = *a2;
  LOBYTE(v28) = v7;
  sub_1D76A1900(v26);
  BannerAdViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)(a1, v26, &v27);
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  v24 = v32;
  v25 = v31;
  v12 = v33;
  memcpy(__dst, v34, sizeof(__dst));
  v13 = v35;
  v14 = sub_1D77032E0();
  v14(v8, v9, v10, v11);
  if (v4)
  {
  }

  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v18;

  *a4 = v20;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v25;
  *(a4 + 48) = v24;
  *(a4 + 64) = v12;
  result = memcpy((a4 + 72), __dst, 0x1A1uLL);
  *(a4 + 496) = v13;
  return result;
}

uint64_t sub_1D766DC5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t BannerAdLayoutStore.layout(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D77035E0();

  if (v20)
  {
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7708FE0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D7668854();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    v8 = sub_1D77045A0();
    sub_1D7703ED0("No layout for placement=%{public}@", 34, 2, &dword_1D7662000, v6, v8, v7);
    v9 = v18;
  }

  else
  {
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7708FD0;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D7668854();
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    v9 = v18;

    sub_1D7704850();
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0xE000000000000000;
    v13 = sub_1D77045A0();
    sub_1D7703ED0("Retrieving layout for placement=%{public}@, layout=%{public}@", 61, 2, &dword_1D7662000, v15, v13, v10);
  }

  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v9;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_1D766DED4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BannerAdLayoutStore();
  v3 = swift_allocObject();
  sub_1D766E564();
  swift_allocObject();
  result = sub_1D77035C0();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for BannerAdLayoutStore;
  *a1 = v3;
  return result;
}

void sub_1D766DF6C(uint64_t a1)
{
  if (!qword_1EE0AEBF0)
  {
    sub_1D76864C0();
    v1 = sub_1D7704A20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AEBF0);
    }
  }
}

void *BannerAdViewLayoutAttributesFactory.makeLayoutAttributes(for:with:)@<X0>(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 5);
  v80 = *(a2 + 4);
  v81 = v7;
  v82 = a2[12];
  v8 = *(a2 + 1);
  v76 = *a2;
  v77 = v8;
  v9 = *(a2 + 3);
  v78 = *(a2 + 2);
  v79 = v9;
  if (qword_1EE0B0C70 != -1)
  {
    swift_once();
  }

  sub_1D7674A0C();

  sub_1D7703070();

  v35 = LOBYTE(v70[0]);
  v10 = v3[15];
  v11 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v10);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 8))(v70, v12, v13);
  v14 = v70[0];
  v15 = v70[1];

  sub_1D766E6D8(v70);
  (*(v11 + 8))(__dst, v14, v15, v10, v11);

  v75 = __dst[2];
  v74[1] = __dst[1];
  v74[0] = __dst[0];
  if (__dst[2])
  {
    v16 = *(&v79 + 1);
  }

  else
  {
    v16 = *(&__dst[1] + 1);
  }

  if (__dst[2])
  {
    v17 = *(&v79 + 1);
  }

  else
  {
    v17 = *&__dst[1];
  }

  sub_1D766E5C4(a1, v74, &v76, &v71);
  v18 = v71;
  v19 = v72;
  if (sub_1D77030B0())
  {
    v20 = v4[10];
    v21 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v20);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 8))(v48, v22, v23);
    v64 = v55;
    v65 = v56;
    v66 = v57;
    v60 = v51;
    v61 = v52;
    v63 = v54;
    v62 = v53;
    v59 = v50;
    v58 = v49;
    sub_1D766D644(&v58, v70);
    sub_1D766E6D8(v48);
    v45 = v64;
    v46 = v65;
    v47 = v66;
    v41 = v60;
    v42 = v61;
    v44 = v63;
    v43 = v62;
    v24.n128_u64[1] = *(&v58 + 1);
    v40 = v59;
    v39 = v58;
    v25 = v73;
    if (v73)
    {
      if (v35)
      {
        v24.n128_f64[0] = v17 * 0.5;
      }

      else
      {
        v24.n128_f64[0] = v17;
      }
    }

    else
    {
      v83.origin = v18;
      v83.size = v19;
      v24.n128_u64[0] = CGRectGetMaxY(v83);
    }

    __dst[0] = v76;
    __dst[1] = v77;
    __dst[2] = v78;
    *&__dst[3] = v79;
    (*(v21 + 8))(v37, &v39, __dst, v20, v21, 0.0, v24);
    v36[6] = v45;
    v36[7] = v46;
    v36[8] = v47;
    v36[2] = v41;
    v36[3] = v42;
    v36[4] = v43;
    v36[5] = v44;
    v36[0] = v39;
    v36[1] = v40;
    sub_1D76950E4(v36);
    memcpy(v38, v37, 0x1A1uLL);
    nullsub_1();
    memcpy(v70, v37, 0x1A1uLL);
    if (sub_1D769B214(v70) <= 1)
    {
      nullsub_1();
      MaxY = CGRectGetMaxY(*v27);
      if (v25)
      {
        v28 = v38;
LABEL_26:
        memcpy(__dst, v28, 0x1A1uLL);
        goto LABEL_27;
      }

      v29 = v38;
LABEL_23:
      memcpy(v68, v29, 0x1A1uLL);
      v85.origin = v18;
      v85.size = v19;
      if (CGRectGetHeight(v85) > 0.0)
      {
        MaxY = v16 + MaxY;
        v30 = v68;
        goto LABEL_32;
      }

      v28 = v68;
      goto LABEL_26;
    }

    memcpy(__src, v38, 0x1A1uLL);
    if ((v25 & 1) == 0)
    {
LABEL_22:
      v84.origin = v18;
      v84.size = v19;
      MaxY = CGRectGetMaxY(v84);
      v29 = __src;
      goto LABEL_23;
    }
  }

  else
  {
    sub_1D766E780(__src);
    if ((v73 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(__dst, __src, 0x1A1uLL);
  MaxY = 0.0;
LABEL_27:
  if (sub_1D77030B0())
  {

    sub_1D7703070();

    if (v70[0])
    {
      MaxY = v16 * 0.5 + MaxY;
    }

    else
    {
      MaxY = v16 + MaxY;
    }
  }

  v30 = __dst;
LABEL_32:
  memcpy(v70, v30, 0x1A1uLL);
  v31 = v76;
  v32 = v82 + *(&v79 + 1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v31;
  *(a3 + 24) = MaxY;
  v33 = v72;
  *(a3 + 32) = v71;
  *(a3 + 48) = v33;
  *(a3 + 64) = v73;
  result = memcpy((a3 + 72), v70, 0x1A1uLL);
  *(a3 + 496) = v32;
  return result;
}

void sub_1D766E564()
{
  if (!qword_1EE0B0880)
  {
    v0 = sub_1D77035D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0880);
    }
  }
}

void sub_1D766E5C4(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v18, v7, v8);
  sub_1D766CEFC(&v19, v16);
  sub_1D766E6D8(v18);
  if (v17)
  {
    sub_1D766E72C(v16);
LABEL_4:
    v9 = 0;
    v10 = 1;
    v11 = 0.0;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  if (*(a2 + 32))
  {
    goto LABEL_4;
  }

  v9 = *(a2 + 8);
  if (*a3 >= *a2)
  {
    v12 = *a2;
  }

  else
  {
    v12 = *a3;
  }

  sub_1D7704570();
  v14 = v12 - v13;
  sub_1D7704570();
  v10 = 0;
  v11 = v14 - v15;
LABEL_5:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
}

double sub_1D766E780(uint64_t a1)
{
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 416) = -1;
  return result;
}

unint64_t sub_1D766E844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D76AE1DC(0);
    v3 = sub_1D77048B0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;
      result = sub_1D76689AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1D766E958(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D766EA34()
{
  result = qword_1EE0AF3D8;
  if (!qword_1EE0AF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3D8);
  }

  return result;
}

uint64_t sub_1D766EA88(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void *sub_1D766EAEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40] & *v5;
  sub_1D7667C54(a1, &v5[*(v14 + 0x70)]);
  *&v5[*((*v12 & *v5) + 0x78)] = a2;
  *&v5[*((*v12 & *v5) + 0x80)] = a3;
  *&v5[*((*v12 & *v5) + 0x88)] = a4;
  v15 = *((v13 & v11) + 0x58);
  (*(*(v15 - 8) + 16))(&v5[*((*v12 & *v5) + 0x90)], a5, v15);
  v19[0] = *((v13 & v11) + 0x50);
  v19[1] = v15;
  v20 = *(v14 + 96);
  v16 = type metadata accessor for VideoAdProviderFactory(0, v19);
  v21.receiver = v5;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

unint64_t sub_1D766ECAC()
{
  result = qword_1EE0AF3E0;
  if (!qword_1EE0AF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3E0);
  }

  return result;
}

uint64_t sub_1D766ED00()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.FeedPrefetchDistance(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.FeedPrefetchDistance.init(key:defaultValue:access:)(0xD000000000000036, 0x80000001D7718700, 0, v2);
  qword_1EE0B09C8 = result;
  return result;
}

void *VideoAdProviderFactory.init(adManager:adRequestStore:journal:appConfigurationManager:prerollAdRequester:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1D766EAEC(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x58) - 8) + 8))(a5);
  return v9;
}

uint64_t sub_1D766EEC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 504))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 488);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_7NewsAds13BannerAdStateO7RecoverO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Settings.Ads.Debugging.FeedPrefetchDistance.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[1] = a3;
  v6 = sub_1D7703210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1EE0B0A08;
  sub_1D76681C4(0, &qword_1EE0B0898, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v15 = 0;
  v16 = 3;
  v14 = 1000;
  (*(v7 + 104))(v9, *MEMORY[0x1E69D6E90], v6);
  *(v4 + v10) = sub_1D7703260();
  (*(v7 + 16))(v9, a4, v6);
  v11 = sub_1D77030A0();
  (*(v7 + 8))(a4, v6);
  return v11;
}

uint64_t sub_1D766F150(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84) <= 0x7FFFFFFFu)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v3 + 84);
  }

  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v3 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((*(*(v5 - 8) + 64) + ((v12 + ((v10 + 23) & ~v11)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if (v9 == 0x7FFFFFFF)
    {
      v22 = *(a1 + 1);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v23 = (a1 + v11 + 16) & ~v11;
      if (v4 >= v7)
      {
        return (*(v3 + 48))(v23);
      }

      else
      {
        return (*(v6 + 48))((v12 + v23) & ~v8, v7, v5);
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    v21 = *a1;
  }

  else
  {
    v21 = 0;
  }

  return v9 + (v21 | v20) + 1;
}

uint64_t sub_1D766F350(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a3;
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 96);
  v9 = *(*v3 + 104);
  v17[0] = *(*v3 + 80);
  v6 = v17[0];
  v17[1] = v7;
  v17[2] = v8;
  v17[3] = v9;
  v10 = type metadata accessor for JournalEntry(0, v17);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  v16(a1, a2, v6, v7, v8, v9);
  sub_1D766FFCC(v13, a1, a2);
  return (*(v11 + 8))(v13, v10);
}

void sub_1D766F4E8(uint64_t a1)
{
  if (!qword_1EE0B0868)
  {
    sub_1D766F724(255, &qword_1EE0AF550, MEMORY[0x1E69E6720]);
    v1 = sub_1D7703670();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0B0868);
    }
  }
}

uint64_t AdPolicyLayoutEnvironmentProvider.init()()
{
  sub_1D766F4E8(0);
  swift_allocObject();
  *(v0 + 16) = sub_1D7703630();
  return v0;
}

uint64_t sub_1D766F5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  *&v21 = a3;
  *(&v21 + 1) = a4;
  *&v22 = a5;
  *(&v22 + 1) = a6;
  v16 = type metadata accessor for AdRequest(255, &v21);
  v17 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v21 - v18;
  v25 = a7;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 1;
  (*(*(v16 - 8) + 56))(&v21 - v18, 1, 1, v16);

  return sub_1D766FA5C(a1, a2, &v25, 0, 0, &v24, &v21, v19, a8, a3, a4, a5, a6);
}

void sub_1D766F724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AdPolicyLayoutEnvironment);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *AdPlacementPolicyValidator.init(layoutEnvironmentProvider:viewportEnvironmentProvider:)(__int128 *a1, __int128 *a2)
{
  v11 = a1;
  v12 = a2;
  v10 = sub_1D77045E0();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D77045C0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D7704110();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = MEMORY[0x1E69E7CC0];
  v2[12] = MEMORY[0x1E69E7CC0];
  v13 = v8;
  sub_1D766FC6C(0, &qword_1EE0B0860, sub_1D766FF98, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v2[13] = sub_1D7703630();
  sub_1D7669BD8();
  sub_1D7704100();
  v13 = v8;
  sub_1D76707B0(&qword_1EE0AED38, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D7670994(0);
  sub_1D76707B0(&qword_1EE0AED58, 255, sub_1D7670994, MEMORY[0x1E69E6328]);
  sub_1D77046E0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v10);
  v2[14] = sub_1D7704610();
  sub_1D7667CB8(v11, (v2 + 2));
  sub_1D7667CB8(v12, (v2 + 7));
  return v2;
}

uint64_t sub_1D766FA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a5;
  v53 = a8;
  v50 = a2;
  v51 = a4;
  v49 = a1;
  v47 = a13;
  v45 = a12;
  v17 = sub_1D7702FA0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a6;
  v48 = *(a7 + 32);
  sub_1D7702F90();
  v21 = sub_1D7702F70();
  v23 = v22;
  v24 = *(v18 + 8);
  v25 = *a7;
  v43 = a7[1];
  v44 = v25;
  v26 = *a3;
  v41 = a3[1];
  v42 = v26;
  v24(v20, v17);
  *a9 = v21;
  *(a9 + 1) = v23;
  v54 = a10;
  v55 = a11;
  v27 = v45;
  v28 = v47;
  v56 = v45;
  v57 = v47;
  v29 = type metadata accessor for JournalEntry(0, &v54);
  sub_1D7702F40();
  v30 = &a9[v29[14]];
  v31 = v50;
  *v30 = v49;
  v30[1] = v31;
  v32 = &a9[v29[15]];
  v33 = v41;
  *v32 = v42;
  *(v32 + 1) = v33;
  v34 = &a9[v29[16]];
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;
  *&a9[v29[17]] = v46;
  v36 = &a9[v29[18]];
  v37 = v43;
  *v36 = v44;
  *(v36 + 1) = v37;
  v36[32] = v48;
  v38 = v29[19];
  v54 = a10;
  v55 = a11;
  v56 = v27;
  v57 = v28;
  type metadata accessor for AdRequest(255, &v54);
  v39 = sub_1D77046B0();
  return (*(*(v39 - 8) + 32))(&a9[v38], v53, v39);
}

void sub_1D766FC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D766FCD0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  if (*(v4 + 84) <= 0x7FFFFFFFu)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v7 + 80);
  if (v8 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v9 & 0xF8 | 7;
  v13 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((*(*(v6 - 8) + 64) + ((v13 + v10 + (((v9 & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v17 = 0;
    v18 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v11 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = a2 - 1;
          }
        }

        else
        {
          v22 = ((a1 + v12 + 16) & ~v12);
          if (v5 >= v8)
          {
            if (v5 >= a2)
            {
              v27 = *(v4 + 56);

              v27(v22);
            }

            else if (v13)
            {
              v25 = ~v5 + a2;
              v26 = v22;
              bzero(v22, v13);
              *v26 = v25;
            }
          }

          else
          {
            v23 = *(v7 + 56);
            v24 = (v22 + v13 + v10) & ~v10;

            v23(v24);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v6 - 8) + 64) + ((v13 + v10 + (((*(v4 + 80) & 0xF8) + 23) & ~v12)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v11 + a2;
    v21 = a1;
    bzero(a1, v14);
    a1 = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_1D766FFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  v10 = *(*v3 + 96);
  v11 = *(*v3 + 104);
  v57 = v8;
  *&v58 = v9;
  *(&v58 + 1) = v10;
  v59 = v11;
  v12 = type metadata accessor for JournalEntry(0, &v57);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v45 - v13;
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7709050;
  v50 = v12;
  v51 = v11;
  v15 = (a1 + *(v12 + 60));
  v16 = *v15;
  v17 = *v15 >> 62;
  v53 = v9;
  v54 = v8;
  v52 = v10;
  v46 = v16;
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0x6564726163736944;
LABEL_6:
      v19 = 0xE900000000000064;
      goto LABEL_20;
    }

    v20 = v15[2] | v15[3] | v15[1];
    if (v16 != 0x8000000000000000 || v20 != 0)
    {
      if (v16 == 0x8000000000000008 && v20 == 0)
      {
        v18 = 0x656C756465686353;
      }

      else if (v16 != 0x8000000000000010 || v20)
      {
        if (v16 != 0x8000000000000018 || v20)
        {
          if (v16 != 0x8000000000000020 || v20)
          {
            if (v20)
            {
              v44 = 0;
            }

            else
            {
              v44 = v16 == 0x8000000000000028;
            }

            if (v44)
            {
              v18 = 0x65746E6573657250;
            }

            else
            {
              v18 = 0x657370616C6C6F43;
            }
          }

          else
          {
            v18 = 0x656C6C69666C7546;
          }
        }

        else
        {
          v18 = 0x6574736575716552;
        }
      }

      else
      {
        v18 = 0x656D726177657250;
      }

      goto LABEL_6;
    }

    v19 = 0xE700000000000000;
    v18 = 0x64657461657243;
  }

  else
  {
    v19 = 0xE600000000000000;
    v18 = 0x64656C696146;
  }

LABEL_20:
  v23 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v24 = v14;
  v25 = sub_1D7668854();
  v24[4] = v18;
  v24[5] = v19;
  v24[12] = v23;
  v24[13] = v25;
  v24[8] = v25;
  v24[9] = a2;
  v24[10] = a3;
  v26 = v15[3];
  v57 = v46;
  v58 = *(v15 + 1);
  v59 = v26;

  v27 = JournalEntryStatus.shortDescription.getter();
  v24[17] = v23;
  v24[18] = v25;
  v24[14] = v27;
  v24[15] = v28;
  v29 = sub_1D77045A0();
  sub_1D7703ED0("Adding journal entry=%{public}@, placement=%{public}@, description=%@", 69, 2, &dword_1D7662000, v47, v29, v24);

  v57 = a2;
  *&v58 = a3;

  sub_1D77035E0();

  v30 = v55;
  if (v55)
  {
    v32 = v53;
    v31 = v54;
    v34 = v51;
    v33 = v52;
    v35 = v50;
  }

  else
  {
    v35 = v50;
    v30 = sub_1D7704440();
    v32 = v53;
    v31 = v54;
    v34 = v51;
    v33 = v52;
  }

  v56 = v30;
  (*(v48 + 16))(v49, a1, v35);
  sub_1D77044B0();
  sub_1D7704480();
  v55 = v56;
  v57 = a2;
  *&v58 = a3;

  sub_1D77035F0();

  swift_beginAccess();
  v36 = *(v4 + 16);

  v57 = v31;
  *&v58 = v32;
  *(&v58 + 1) = v33;
  v59 = v34;
  type metadata accessor for AnyProcessor(0, &v57);
  if (sub_1D7704470())
  {
    v37 = 4;
    do
    {
      v38 = v37 - 4;
      v39 = sub_1D7704450();
      sub_1D7704420();
      if (v39)
      {
        v40 = *(v36 + 8 * v37);

        v41 = v37 - 3;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v40 = sub_1D7704750();
        v41 = v37 - 3;
        if (__OFADD__(v38, 1))
        {
LABEL_31:
          __break(1u);
        }
      }

      v42 = *(v40 + 16);

      v42(a1, a2, a3);

      ++v37;
    }

    while (v41 != sub_1D7704470());
  }
}

unint64_t sub_1D767050C()
{
  result = qword_1EE0AEBA8;
  if (!qword_1EE0AEBA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE0AEBA8);
  }

  return result;
}

uint64_t JournalEntryStatus.shortDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {
    v5 = 0x203A64656C696146;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 0x6564726163736944;
LABEL_5:
    v10 = v5;
    MEMORY[0x1DA6FF0D0](v1, v3);
    return v10;
  }

  v7 = v1 | v0[3] | v3;
  if (v2 == 0x8000000000000000 && v7 == 0)
  {
    return 0x64657461657243;
  }

  if (v2 == 0x8000000000000008 && !v7)
  {
    return 0xD000000000000011;
  }

  if (v2 == 0x8000000000000010 && !v7)
  {
    return 0xD000000000000015;
  }

  if (v2 == 0x8000000000000018 && !v7)
  {
    return 0xD000000000000017;
  }

  if (v2 == 0x8000000000000020 && !v7)
  {
    return 0x656C6C69666C7546;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v2 == 0x8000000000000028;
  }

  if (v9)
  {
    return 0x6579616C70736944;
  }

  else
  {
    return 0x657370616C6C6F43;
  }
}

uint64_t sub_1D7670768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D76707B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Journal.createDebugJournal(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v29 = sub_1D7670B60(a1, a2);
  v8 = v7[10];
  v9 = v7[11];
  v10 = v7[12];
  v11 = v7[13];
  v19 = v8;
  *&v20 = v8;
  *(&v20 + 1) = v9;
  *&v21 = v10;
  *(&v21 + 1) = v11;
  type metadata accessor for JournalEntry(255, &v20);
  sub_1D77044B0();
  swift_getWitnessTable();
  if (sub_1D7704510())
  {

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    Journal.addCreatedEntry(placementIdentifier:)(v12);
    sub_1D7670B60(a1, a2);
  }

  sub_1D7670C74(v13, 1, v19, v9, v10, v11, &v20);
  result = get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(&v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v15 = v27;
    a3[6] = v26;
    a3[7] = v15;
    a3[8] = v28;
    v16 = v23;
    a3[2] = v22;
    a3[3] = v16;
    v17 = v25;
    a3[4] = v24;
    a3[5] = v17;
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t sub_1D76709C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t BannerAdViewManager.onUpdate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 96);
  v9 = *(*v3 + 136);
  v10 = *(*v3 + 112);
  v11 = *(*v3 + 128);
  v15[0] = *(*v3 + 104);
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v12 = type metadata accessor for DisposableObserver(0, v15);
  v14 = sub_1D7670C10(a1, a2, v3);
  swift_beginAccess();
  sub_1D77044B0();

  sub_1D7704480();
  swift_endAccess();
  a3[3] = v12;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v14;
  return result;
}

uint64_t sub_1D7670B60(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *&v7[0] = a1;
  *(&v7[0] + 1) = a2;
  v4 = v3;

  sub_1D77035E0();

  result = v8;
  if (!v8)
  {
    v6 = *(v4 + 96);
    v7[0] = *(v4 + 80);
    v7[1] = v6;
    type metadata accessor for JournalEntry(0, v7);
    return sub_1D7704440();
  }

  return result;
}

uint64_t sub_1D7670C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v5;
}

__n128 sub_1D7670C74@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v181 = a2;
  v198 = a7;
  v186 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v178 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v177 = &v158 - v14;
  *&v201 = v15;
  *(&v201 + 1) = v16;
  v202.n128_u64[0] = v17;
  v202.n128_u64[1] = v18;
  v195 = type metadata accessor for AdRequest(255, &v201);
  v194 = sub_1D77046B0();
  v196 = *(v194 - 8);
  v19 = MEMORY[0x1EEE9AC00](v194);
  v185 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v184 = &v158 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v183 = &v158 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v193 = (&v158 - v25);
  v192 = sub_1D7702FA0();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v27 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = a3;
  *&v201 = a3;
  *(&v201 + 1) = a4;
  v197 = a4;
  v189 = a5;
  v202.n128_u64[0] = a5;
  v202.n128_u64[1] = a6;
  v190 = a6;
  v28 = type metadata accessor for JournalEntry(255, &v201);
  v29 = sub_1D77046B0();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v158 - v32;
  v34 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v158 - v35;
  v210 = a1;
  sub_1D77044B0();
  swift_getWitnessTable();
  sub_1D7704200();
  if ((*(v34 + 48))(v33, 1, v28) == 1)
  {
    (*(v30 + 8))(v33, v29);

    sub_1D76EABA4(&v201);
    v37 = v208;
    v38 = v198;
    *(v198 + 96) = v207;
    *(v38 + 112) = v37;
    *(v38 + 128) = v209;
    v39 = v204;
    *(v38 + 32) = v203;
    *(v38 + 48) = v39;
    v40 = v206;
    *(v38 + 64) = v205;
    *(v38 + 80) = v40;
    result = v202;
    *v38 = v201;
    *(v38 + 16) = result;
    return result;
  }

  v187 = a1;
  v172 = v34;
  (*(v34 + 32))(v36, v33, v28);
  sub_1D7702F90();
  v171 = sub_1D7702F70();
  v170 = v42;
  (*(v191 + 8))(v27, v192);
  v43 = &v36[*(v28 + 56)];
  v44 = v43[1];
  v45 = &v36[*(v28 + 64)];
  v46 = *(v45 + 1);
  v47 = &v36[*(v28 + 60)];
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  v179 = v47;
  if (!(v48 >> 62))
  {
    *(&v164 + 1) = 0xE600000000000000;
    *&v164 = 0x64656C696146;
    v52 = v193;
    goto LABEL_30;
  }

  v52 = v193;
  if (v48 >> 62 != 1)
  {
    v55 = v50 | v49 | v51;
    if (v48 != 0x8000000000000000 || v55)
    {
      if (v48 != 0x8000000000000008 || v55)
      {
        if (v48 == 0x8000000000000010 && !v55)
        {
          *(&v164 + 1) = 0xE900000000000064;
          v53 = 0x656D726177657250;
          goto LABEL_28;
        }

        if (v48 == 0x8000000000000018 && !v55)
        {
          *(&v164 + 1) = 0xE900000000000064;
          v53 = 0x6574736575716552;
          goto LABEL_28;
        }

        if (v48 != 0x8000000000000020 || v55)
        {
          *(&v164 + 1) = 0xE900000000000064;
          if (v55)
          {
            v57 = 0;
          }

          else
          {
            v57 = v48 == 0x8000000000000028;
          }

          v53 = 0x657370616C6C6F43;
          if (v57)
          {
            v53 = 0x65746E6573657250;
          }

          goto LABEL_28;
        }

        *(&v164 + 1) = 0xE900000000000064;
        v56 = 0x6C69666C7546;
      }

      else
      {
        *(&v164 + 1) = 0xE900000000000064;
        v56 = 0x756465686353;
      }

      v53 = v56 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
    }

    else
    {
      *(&v164 + 1) = 0xE700000000000000;
      v53 = 0x64657461657243;
    }

LABEL_28:
    v54 = &v195;
    goto LABEL_29;
  }

  *&v164 = 0x6564726163736944;
  v53 = 0xE900000000000064;
  v54 = &v196;
LABEL_29:
  *(v54 - 32) = v53;
LABEL_30:
  v58 = *v43;
  v180 = *v45;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v165 = v49;
  v169 = v50;
  v167 = v51;
  sub_1D7672A08(v48, v49, v50, v51);
  if (qword_1EE0B03B8 != -1)
  {
LABEL_98:
    swift_once();
  }

  v166 = v48;
  v59 = qword_1EE0B03C0;
  v174 = *(v28 + 52);
  v60 = sub_1D7702F20();
  v175 = v59;
  v61 = [v59 stringFromDate_];

  v162 = sub_1D7704260();
  v161 = v62;

  sub_1D7672D94(0, &qword_1EE0AEC50, &qword_1EE0B03B0, MEMORY[0x1E69E6720], MEMORY[0x1E69E6F90]);
  v63 = swift_allocObject();
  v64 = *(v179 + 1);
  v201 = *v179;
  v202 = v64;
  v65 = JournalEntryStatus.shortDescription.getter();
  *(v63 + 32) = xmmword_1D77119E0;
  v160 = v63 + 32;
  *(v63 + 48) = v65;
  *(v63 + 56) = v66;
  *(v63 + 64) = 0xD000000000000014;
  *(v63 + 72) = 0x80000001D77196A0;
  v163 = v58;
  *(v63 + 80) = v58;
  *(v63 + 88) = v44;
  v168 = v44;
  v173 = v28;
  v67 = v196;
  v68 = *(v196 + 2);
  v192 = *(v28 + 76);
  v44 = v194;
  v193 = v68;
  v68(v52, &v36[v192], v194);
  v69 = v195;
  v70 = *(v195 - 1);
  v191 = *(v70 + 48);
  v71 = (v191)(v52, 1, v195);
  v176 = v46;
  v182 = v70;
  if (v71 == 1)
  {
    (*(v67 + 1))(v52, v44);
    v72 = v197;
  }

  else
  {
    v73 = *(v52 + 8);
    v159 = *v52;
    v74 = *(v70 + 8);

    v74(v52, v69);
    v46 = v176;
    v44 = v194;
    v72 = v197;
    if (v73)
    {
      *(v63 + 96) = 0xD000000000000012;
      *(v63 + 104) = 0x80000001D77196C0;
      *(v63 + 112) = v159;
      *(v63 + 120) = v73;
      goto LABEL_36;
    }
  }

  *(v63 + 96) = 0;
  *(v63 + 104) = 0;
  *(v63 + 112) = 0;
  *(v63 + 120) = 0;
LABEL_36:
  v75 = 0x80000001D77196E0;
  v76 = 0xD000000000000012;
  if (!v46)
  {
    v76 = 0;
    v75 = 0;
  }

  *(v63 + 128) = v76;
  *(v63 + 136) = v75;
  v77 = v180;
  if (!v46)
  {
    v77 = 0;
  }

  *(v63 + 144) = v77;
  *(v63 + 152) = v46;
  v78 = v183;
  v193(v183, &v36[v192], v44);
  v79 = (v191)(v78, 1, v69);
  v80 = v182;
  if (v79 == 1)
  {
    v81 = v196;
    (*(v196 + 1))(v78, v44);
LABEL_46:
    *&v203 = 0;
    v201 = 0u;
    v202 = 0u;
    goto LABEL_47;
  }

  (*(v186 + 16))(v177, &v78[*(v69 + 56)], v72);
  (*(v80 + 8))(v78, v69);
  sub_1D7665328(0, &qword_1EE0AFAC0, &protocol descriptor for AdPlacementReusable);
  v82 = swift_dynamicCast();
  v81 = v196;
  if ((v82 & 1) == 0)
  {
    goto LABEL_46;
  }

  v83 = v202.n128_u64[1];
  if (!v202.n128_u64[1])
  {
LABEL_47:
    sub_1D7672E04(&v201, &qword_1EE0AFAB8, &qword_1EE0AFAC0, &protocol descriptor for AdPlacementReusable);
    goto LABEL_48;
  }

  v84 = v203;
  __swift_project_boxed_opaque_existential_1(&v201, v202.n128_i64[1]);
  v85 = *(v84 + 8);
  v86 = v84;
  v69 = v195;
  v87 = v85(v83, v86);
  v89 = v88;
  __swift_destroy_boxed_opaque_existential_1(&v201);
  if (v89)
  {
    *(v63 + 160) = 0xD000000000000018;
    *(v63 + 168) = 0x80000001D7719700;
    *(v63 + 176) = v87;
    *(v63 + 184) = v89;
    goto LABEL_49;
  }

LABEL_48:
  *(v63 + 160) = 0;
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;
  *(v63 + 184) = 0;
LABEL_49:
  v90 = v184;
  v193(v184, &v36[v192], v44);
  if ((v191)(v90, 1, v69) == 1)
  {
    (*(v81 + 1))(v90, v44);
    v91 = v190;
    v92 = v175;
    v52 = &off_1E84DE000;
LABEL_53:
    *(v63 + 192) = 0;
    *(v63 + 200) = 0;
    *(v63 + 208) = 0;
    *(v63 + 216) = 0;
    goto LABEL_54;
  }

  v93 = &v90[*(v69 + 60)];
  v94 = v36;
  v95 = v90;
  v97 = *v93;
  v96 = *(v93 + 1);
  v98 = *(v182 + 8);

  v99 = v95;
  v36 = v94;
  v98(v99, v69);
  v44 = v194;
  v91 = v190;
  v92 = v175;
  v52 = 0x1E84DE000;
  if (!v96)
  {
    goto LABEL_53;
  }

  *(v63 + 192) = 0xD000000000000012;
  *(v63 + 200) = 0x80000001D7719720;
  *(v63 + 208) = v97;
  *(v63 + 216) = v96;
LABEL_54:
  v100 = sub_1D7702F20();
  v48 = [v92 *(v52 + 3560)];

  v101 = sub_1D7704260();
  v103 = v102;

  *(v63 + 224) = xmmword_1D77119F0;
  *(v63 + 240) = v101;
  *(v63 + 248) = v103;
  v104 = v185;
  v193(v185, &v36[v192], v44);
  v105 = v195;
  if ((v191)(v104, 1, v195) == 1)
  {
    (*(v196 + 1))(v104, v44);
    v106 = 0;
    v107 = 0;
    v108 = 0uLL;
    v28 = v198;
    v109 = v187;
    v58 = v197;
  }

  else
  {
    v110 = v186;
    v111 = &v104[*(v105 + 56)];
    v44 = v104;
    v112 = v178;
    v58 = v197;
    (*(v186 + 16))(v178, v111, v197);
    (*(v182 + 8))(v44, v105);
    (*(v91 + 24))(&v201, v58, v91);
    v113 = *(v110 + 8);
    v48 = v110 + 8;
    v113(v112, v58);
    v107 = 0xE900000000000063;
    v106 = 0x6974616D6F747561;
    if (v201)
    {
      v106 = 0x6C61756E616DLL;
      v107 = 0xE600000000000000;
    }

    v108 = xmmword_1D7711A00;
    v28 = v198;
    v109 = v187;
  }

  *(v63 + 256) = v108;
  *(v63 + 272) = v106;
  *(v63 + 280) = v107;
  v195 = v36;
  v114 = sub_1D767309C(v36, v188, v58, v189, v91);
  v46 = 0;
  if (v115)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0;
  }

  v117 = vdup_n_s32(v115 == 0);
  v118.i64[0] = v117.u32[0];
  v118.i64[1] = v117.u32[1];
  *(v63 + 288) = vandq_s8(vcgezq_s64(vshlq_n_s64(v118, 0x3FuLL)), xmmword_1D7711A10);
  *(v63 + 304) = v116;
  *(v63 + 312) = v115;
  v36 = (v63 + 24);
  v196 = MEMORY[0x1E69E7CC0];
LABEL_63:
  if (v46 <= 9)
  {
    v119 = 9;
  }

  else
  {
    v119 = v46;
  }

  v120 = v119 + 1;
  v121 = &v36[32 * v46];
  while (v46 != 9)
  {
    if (v120 == ++v46)
    {
      __break(1u);
      goto LABEL_98;
    }

    v122 = (v121 + 32);
    v44 = *(v121 + 2);
    v121 += 32;
    if (v44)
    {
      v58 = *(v122 - 3);
      v123 = *(v122 - 1);
      v48 = *v122;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = sub_1D76733B0(0, *(v196 + 2) + 1, 1, v196);
      }

      v52 = *(v196 + 2);
      v124 = *(v196 + 3);
      if (v52 >= v124 >> 1)
      {
        v196 = sub_1D76733B0((v124 > 1), v52 + 1, 1, v196);
      }

      v125 = v196;
      *(v196 + 2) = v52 + 1;
      v126 = &v125[32 * v52];
      *(v126 + 4) = v58;
      *(v126 + 5) = v44;
      *(v126 + 6) = v123;
      *(v126 + 7) = v48;
      v28 = v198;
      v109 = v187;
      goto LABEL_63;
    }
  }

  swift_setDeallocating();
  sub_1D76734D4(0, &qword_1EE0B03B0, &type metadata for DebugJournal.Detail, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v127 = v179[3];
  v128 = *v179 >> 62;
  if (v128 == 1)
  {
    v138 = *(v127 + 16);
    if (v138)
    {
      v139 = v127 + 32;
      v131 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D76EABC0(v139, &v201);
        v140 = v201;
        v199 = 0;
        v200 = 0xE000000000000000;

        sub_1D7704850();
        v142 = v199;
        v141 = v200;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1D76733B0(0, *(v131 + 2) + 1, 1, v131);
        }

        v144 = *(v131 + 2);
        v143 = *(v131 + 3);
        if (v144 >= v143 >> 1)
        {
          v131 = sub_1D76733B0((v143 > 1), v144 + 1, 1, v131);
        }

        sub_1D76EAC1C(&v201);
        *(v131 + 2) = v144 + 1;
        v145 = &v131[32 * v144];
        *(v145 + 2) = v140;
        *(v145 + 6) = v142;
        *(v145 + 7) = v141;
        v139 += 48;
        --v138;
      }

      while (v138);
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (!v128)
  {
    v129 = *(v127 + 16);
    if (v129)
    {
      v130 = v127 + 32;
      v131 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D76EABC0(v130, &v201);
        v132 = v201;
        v199 = 0;
        v200 = 0xE000000000000000;

        sub_1D7704850();
        v134 = v199;
        v133 = v200;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1D76733B0(0, *(v131 + 2) + 1, 1, v131);
        }

        v136 = *(v131 + 2);
        v135 = *(v131 + 3);
        if (v136 >= v135 >> 1)
        {
          v131 = sub_1D76733B0((v135 > 1), v136 + 1, 1, v131);
        }

        sub_1D76EAC1C(&v201);
        *(v131 + 2) = v136 + 1;
        v137 = &v131[32 * v136];
        *(v137 + 2) = v132;
        *(v137 + 6) = v134;
        *(v137 + 7) = v133;
        v130 += 48;
        --v129;
      }

      while (v129);
      goto LABEL_95;
    }

LABEL_94:
    v131 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v28 = v198;
    v109 = v187;
    goto LABEL_96;
  }

  v131 = MEMORY[0x1E69E7CC0];
LABEL_96:

  v146 = v195;
  v147 = v188;
  v148 = v197;
  v149 = v189;
  v150 = v190;
  v151 = sub_1D767377C(v195, v188, v197, v189, v190);
  v152 = sub_1D7673E64(v181 & 1, v109, v147, v148, v149, v150);

  (*(v172 + 8))(v146, v173);

  *&v201 = v171;
  *(&v201 + 1) = v170;
  v202.n128_u64[0] = v163;
  v202.n128_u64[1] = v168;
  *&v153 = v180;
  *(&v153 + 1) = v176;
  *&v154 = v166;
  *(&v154 + 1) = v165;
  v203 = v153;
  v204 = v154;
  *&v205 = v169;
  *(&v205 + 1) = v167;
  v206 = v164;
  *&v207 = v162;
  *(&v207 + 1) = v161;
  *&v208 = v196;
  *(&v208 + 1) = v131;
  *&v209 = v152;
  *(&v209 + 1) = v151;
  nullsub_1();
  v155 = v208;
  *(v28 + 96) = v207;
  *(v28 + 112) = v155;
  *(v28 + 128) = v209;
  v156 = v204;
  *(v28 + 32) = v203;
  *(v28 + 48) = v156;
  v157 = v206;
  *(v28 + 64) = v205;
  *(v28 + 80) = v157;
  result = v202;
  *v28 = v201;
  *(v28 + 16) = result;
  return result;
}

void sub_1D76720F0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D7702F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  if (*(v12 + 84) <= 0x7FFFFFFFu)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v14 + 80);
  if (v15 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  v19 = v18 - 1;
  if (v10 > v18 - 1)
  {
    v19 = *(v9 + 84);
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v12 + 80) & 0xF8;
  v22 = v21 | 7;
  v23 = v17 | v21 | 7;
  v24 = v21 + 23;
  v25 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v26 = ((*(*(v11 - 8) + 64) + ((v25 + v17 + ((v21 + 23) & ~(v21 | 7))) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = *(*(v8 - 8) + 64) + 7;
  v29 = ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26;
  v30 = a3 >= v20;
  v31 = a3 - v20;
  if (v31 != 0 && v30)
  {
    if (v29 <= 3)
    {
      v35 = ((v31 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      if (HIWORD(v35))
      {
        v32 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }
      }
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v32 = 0;
  }

  if (v20 < a2)
  {
    v33 = ~v20 + a2;
    if (v29 < 4)
    {
      v34 = (v33 >> (8 * v29)) + 1;
      if (v29)
      {
        v37 = v33 & ~(-1 << (8 * v29));
        bzero(a1, ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26);
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v37;
            if (v32 > 1)
            {
LABEL_60:
              if (v32 == 2)
              {
                *(a1 + v29) = v34;
              }

              else
              {
                *(a1 + v29) = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v32 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v37;
        *(a1 + 2) = BYTE2(v37);
      }

      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, ((v23 + 33 + ((((((((((v27 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + v26);
      *a1 = v33;
      v34 = 1;
      if (v32 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v32)
    {
      *(a1 + v29) = v34;
    }

    return;
  }

  if (v32 > 1)
  {
    if (v32 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v29) = 0;
  }

  else if (v32)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if ((v19 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(a1 + 1) = (a2 - 1);
      return;
    }

    v44 = a2 & 0x7FFFFFFF;
    goto LABEL_50;
  }

  v38 = (a1 + v16 + 16) & ~v16;
  if (v10 == v20)
  {
    v39 = *(v9 + 56);
    v40 = v8;
    v41 = (a1 + v16 + 16) & ~v16;
    v42 = a2;
    v43 = v10;

LABEL_48:
    v39(v41, v42, v43, v40);
    return;
  }

  v28 = v23 + 33;
  a1 = ((v23 + 33 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
  v45 = a2 - v18;
  if (a2 >= v18)
  {
    if (v26)
    {
      bzero(((v28 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23), v26);
      *a1 = v45;
    }
  }

  else
  {
    v46 = (a2 + 1);
    if (v18 == 0x7FFFFFFF)
    {
      if ((v46 & 0x80000000) == 0)
      {
        *(((v28 + ((((((((((v27 + v38) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + 8) = a2;
        return;
      }

      v44 = (a2 - 0x7FFFFFFF);
LABEL_50:
      *a1 = v44;
      *(a1 + 1) = 0;
      return;
    }

    v47 = ((a1 + v24) & ~v22);
    if (v13 < v15)
    {
      v39 = *(v14 + 56);
      v41 = (v47 + v25 + v17) & ~v17;
      v42 = (a2 + 1);
      v43 = v15;
      v40 = v11;

      goto LABEL_48;
    }

    v30 = a2 >= v13;
    v48 = a2 - v13;
    if (v30)
    {
      if (v25)
      {
        v50 = ((a1 + v24) & ~v22);
        bzero(v47, v25);
        *v50 = v48;
      }
    }

    else
    {
      v49 = *(v12 + 56);

      v49(v47, v46);
    }
  }
}

uint64_t sub_1D76725F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D7702F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v14 = *(v7 + 80);
  v15 = *(v12 + 80);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v16 - 1;
  if (v8 > v16 - 1)
  {
    v17 = *(v7 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v10 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = v15 | v20;
  v22 = v19 + 23;
  v23 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 8;
  v24 = *(*(v6 - 8) + 64) + 7;
  v25 = (v15 | v20) + 33;
  v26 = a2 - v18;
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v27 = ((*(*(v9 - 8) + 64) + ((v23 + (v22 & ~v20)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((((((((((v24 + ((v14 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 16;
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((v26 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v31 < 2)
    {
LABEL_36:
      if ((v17 & 0x80000000) != 0)
      {
        v36 = (a1 + v14 + 16) & ~v14;
        if (v8 == v18)
        {
          v37 = *(v7 + 48);

          return v37(v36, v8, v6);
        }

        else
        {
          if (v16 == 0x7FFFFFFF)
          {
            v38 = *(((v25 + ((((((((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 8);
            if (v38 >= 0xFFFFFFFF)
            {
              LODWORD(v38) = -1;
            }

            v39 = v38 + 1;
          }

          else
          {
            v40 = (v22 + ((v25 + ((((((((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v20;
            if (v11 >= v13)
            {
              v39 = (*(v10 + 48))(v40);
            }

            else
            {
              v39 = (*(v12 + 48))((v23 + v40) & ~v15, v13, v9);
            }
          }

          if (v39 >= 2)
          {
            return v39 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v35 = *(a1 + 1);
        if (v35 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        return (v35 + 1);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_36;
  }

LABEL_23:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = v27;
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v18 + (v34 | v32) + 1;
}

unint64_t sub_1D7672A08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v4 = result;
}

uint64_t AdPlacementPolicyValidator.addPolicy(_:)(uint64_t a1)
{
  v3 = sub_1D77040D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7704110();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7667C54(a1, v16);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_1D7667CB8(v16, v11 + 24);
  aBlock[4] = sub_1D76733A4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  sub_1D77040F0();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D76707B0(&qword_1EE0AEDA8, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7672E60(0);
  sub_1D76707B0(&qword_1EE0AED88, 255, sub_1D7672E60, MEMORY[0x1E69E6328]);
  sub_1D77046E0();
  MEMORY[0x1DA6FF3D0](0, v10, v6, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D7672D54()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

void sub_1D7672D94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D76734D4(255, a3, &type metadata for DebugJournal.Detail, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7672E04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7672F1C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7672E60(uint64_t a1)
{
  if (!qword_1EE0AED90)
  {
    sub_1D77040D0();
    v1 = sub_1D77044B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AED90);
    }
  }
}

void sub_1D7672EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7672F1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D7665328(255, a3, a4);
    v5 = sub_1D77046B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7672F74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D7672FBC(uint64_t a1, uint64_t a2)
{
  sub_1D7667C54(a2, v8);
  swift_beginAccess();
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7673574(0, v3[2] + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D7673574((v5 > 1), v6 + 1, 1, v3);
  }

  v3[2] = v6 + 1;
  sub_1D7667CB8(v8, &v3[5 * v6 + 4]);
  *(a1 + 96) = v3;
  return swift_endAccess();
}

uint64_t sub_1D767309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  *&v29 = a2;
  *(&v29 + 1) = a3;
  *&v30 = a4;
  *(&v30 + 1) = a5;
  v9 = type metadata accessor for AdRequest(255, &v29);
  v10 = sub_1D77046B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v18 = type metadata accessor for JournalEntry(0, v28);
  (*(v11 + 16))(v14, v27 + *(v18 + 76), v10);
  v19 = *(v9 - 8);
  if ((*(v19 + 48))(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_6:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_7;
  }

  (*(v15 + 16))(v17, &v14[*(v9 + 56)], a3);
  (*(v19 + 8))(v14, v9);
  sub_1D7665328(0, &qword_1EE0AF6B0, &protocol descriptor for AdPlacementSizeProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v21 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    *&v29 = v22;
    *(&v29 + 1) = v24;
    type metadata accessor for CGSize(0);
    return sub_1D77042B0();
  }

LABEL_7:
  sub_1D7672E04(&v29, &qword_1EE0AF6A8, &qword_1EE0AF6B0, &protocol descriptor for AdPlacementSizeProviding);
  return 0;
}

char *sub_1D76733B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC58, &type metadata for DebugJournal.Detail, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D76734D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7673524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1D7673574(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1D76736D4(0, &qword_1EE0AEC68, &qword_1EE0B0448, &protocol descriptor for AdPolicyType, 1);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7666184(0, &qword_1EE0B0448, &protocol descriptor for AdPolicyType, 1);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D76736D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_1D7666184(255, a3, a4, a5 & 1);
    v6 = sub_1D7704A20();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7673734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

char *sub_1D767377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v46 = a2;
  *(&v46 + 1) = a3;
  *v47 = a4;
  *&v47[8] = a5;
  v10 = type metadata accessor for AdRequest(255, &v46);
  v11 = sub_1D77046B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v16 = type metadata accessor for AdContext(0, a2, a4, v15);
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v41 - v20;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  *v47 = a4;
  *&v47[8] = a5;
  v21 = type metadata accessor for JournalEntry(0, &v46);
  v22 = *(v21 + 76);
  v23 = *(v12 + 16);
  v45 = a1;
  v23(v14, a1 + v22, v11);
  v24 = *(v10 - 8);
  if ((*(v24 + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v27 = v43;
    v26 = v44;
    (*(v43 + 16))(v19, &v14[*(v10 + 52)], v44);
    (*(v24 + 8))(v14, v10);
    v28 = v42;
    (*(v27 + 32))(v42, v19, v26);
    *&v47[8] = a2;
    *&v47[16] = a4;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v46);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_2, v28, a2);
    v47[24] = 0;
    v25 = sub_1D768C4A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(v25 + 2);
    v30 = *(v25 + 3);
    if (v31 >= v30 >> 1)
    {
      v25 = sub_1D768C4A4((v30 > 1), v31 + 1, 1, v25);
    }

    (*(v27 + 8))(v28);
    *(v25 + 2) = v31 + 1;
    v32 = &v25[48 * v31];
    v33 = v46;
    v34 = *v47;
    *(v32 + 57) = *&v47[9];
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
  }

  v35 = *(v45 + *(v21 + 68));
  if (v35)
  {
    v48 = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D768C4A4(0, *(v25 + 2) + 1, 1, v25);
    }

    v37 = *(v25 + 2);
    v36 = *(v25 + 3);
    if (v37 >= v36 >> 1)
    {
      v25 = sub_1D768C4A4((v36 > 1), v37 + 1, 1, v25);
    }

    *(v25 + 2) = v37 + 1;
    v38 = &v25[48 * v37];
    *(v38 + 4) = v35;
    v39 = v46;
    *(v38 + 56) = *v47;
    *(v38 + 40) = v39;
    v38[72] = v48;
  }

  return v25;
}

void *sub_1D7673B94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0AF7A0, &protocol descriptor for BannerAdViewStylerType, 1);
  result = sub_1D7703410();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B0F58, &protocol descriptor for DebugJournalSummaryViewLayoutAttributesFactoryType, 1);
  result = sub_1D7703410();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, &qword_1EE0B1890, &protocol descriptor for BannerAdLayoutStoreType, 1);
  result = sub_1D7703410();
  if (v17)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v3);
    v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = *v5;
    v8 = type metadata accessor for BannerAdViewStyler();
    v15[3] = v8;
    v15[4] = &off_1F52522D8;
    v15[0] = v7;
    type metadata accessor for BannerAdViewLayoutAttributesFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v8);
    MEMORY[0x1EEE9AC00](v10);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v9[5] = v8;
    v9[6] = &off_1F52522D8;
    v9[2] = v14;
    sub_1D7667CB8(&v18, (v9 + 7));
    sub_1D7667CB8(&v16, (v9 + 12));
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1D7673E64(char a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  v29 = a4;
  v30 = a5;
  *&v33 = a5;
  *(&v33 + 1) = a6;
  v10 = type metadata accessor for JournalEntry(0, &v32);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  if ((a1 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v41 = a2;

  if (sub_1D7704470() < 2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D77044B0();
  v14 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v28 = v6;
  do
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1D7704530();
    (*v14)(v13, v10);

    sub_1D7670C74(v23, 0, a3, v29, v30, v6, v31);
    v38 = v31[6];
    v39 = v31[7];
    v40 = v31[8];
    v34 = v31[2];
    v35 = v31[3];
    v36 = v31[4];
    v37 = v31[5];
    v32 = v31[0];
    v33 = v31[1];
    if (get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(&v32) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D7678EC8(0, *(v15 + 2) + 1, 1, v15);
      }

      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      if (v25 >= v24 >> 1)
      {
        v15 = sub_1D7678EC8((v24 > 1), v25 + 1, 1, v15);
      }

      *(v15 + 2) = v25 + 1;
      v16 = &v15[144 * v25];
      *(v16 + 2) = v32;
      v17 = v33;
      v18 = v34;
      v19 = v36;
      *(v16 + 5) = v35;
      *(v16 + 6) = v19;
      *(v16 + 3) = v17;
      *(v16 + 4) = v18;
      v20 = v37;
      v21 = v38;
      v22 = v40;
      *(v16 + 9) = v39;
      *(v16 + 10) = v22;
      *(v16 + 7) = v20;
      *(v16 + 8) = v21;
      v6 = v28;
    }
  }

  while (sub_1D7704470() > 1);

  return v15;
}

uint64_t get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D767412C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7666184(0, qword_1EE0B1020, &protocol descriptor for DebugJournalSummaryViewStylerType, 1);
  result = sub_1D7703410();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for DebugJournalSummaryViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F5253310;
    v17[0] = v8;
    v10 = type metadata accessor for DebugJournalSummaryViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5253310;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &protocol witness table for DebugJournalSummaryViewLayoutAttributesFactory;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t _s7NewsAds13BannerAdStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D766CEFC(a1, &v27);
  sub_1D766CEFC(a2, &v33);
  if (v32)
  {
    if (v32 != 1)
    {
      v4 = vorrq_s8(v29, v30);
      if (v27 | *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v31 | *(&v31 + 1) | *(&v27 + 1) | v28 | *(&v28 + 1))
      {
        if (v38 != 2)
        {
          goto LABEL_20;
        }

        if (v33 != 1)
        {
          goto LABEL_20;
        }

        v5 = vorrq_s8(vorrq_s8(v34, v36), vorrq_s8(v35, v37));
        if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(&v33 + 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v38 != 2)
        {
          goto LABEL_20;
        }

        v15 = vorrq_s8(vorrq_s8(v34, v36), vorrq_s8(v35, v37));
        if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *(&v33 + 1) | v33)
        {
          goto LABEL_20;
        }
      }

      v3 = 1;
      return v3 & 1;
    }

    if (v38 == 1)
    {
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v22 = v27;
      v23 = v28;
      v19 = v35;
      v20 = v36;
      v21 = v37;
      v17 = v33;
      v18 = v34;
      v3 = _s7NewsAds13BannerAdStateO7RecoverO2eeoiySbAE_AEtFZ_0(&v22, &v17);
      sub_1D76749B8(&v17);
      sub_1D76749B8(&v22);
      return v3 & 1;
    }

    sub_1D76749B8(&v27);
LABEL_20:
    sub_1D766E72C(&v33);
    v3 = 0;
    return v3 & 1;
  }

  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    goto LABEL_20;
  }

  sub_1D7667CB8(&v27, &v22);
  sub_1D7667CB8(&v33, &v17);
  v6 = *(&v23 + 1);
  v7 = v24.i64[0];
  __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v11 = v18.i64[1];
  v12 = v19.i64[0];
  __swift_project_boxed_opaque_existential_1(&v17, v18.i64[1]);
  if (v8 == (*(v12 + 8))(v11, v12) && v10 == v13)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D7704A30();
  }

  __swift_destroy_boxed_opaque_existential_1(&v17);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  return v3 & 1;
}

uint64_t static BannerAd.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D7704A30() & 1) == 0 || (_s7NewsAds13BannerAdStateO2eeoiySbAC_ACtFZ_0((a1 + 2), (a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if (a1[13] == a2[13] && a1[14] == a2[14])
  {
    return 1;
  }

  return sub_1D7704A30();
}

uint64_t _s7NewsAds13BannerAdStateO7RecoverO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7674980(a1, &v35);
  sub_1D7674980(a2, &v38);
  if (v36 != 1)
  {
    if (!v36)
    {
      if (!v39)
      {
        goto LABEL_6;
      }

LABEL_9:
      sub_1D76749B8(&v38);
      v3 = 0;
      return v3 & 1;
    }

    if (v39 < 2)
    {
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_9;
    }

    sub_1D7667CB8(&v35, v32);
    sub_1D7667CB8(&v38, v29);
    sub_1D7667CB8(v37, v26);
    sub_1D7667CB8(&v40, v23);
    v4 = v33;
    v5 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    v9 = v30;
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    if (v6 == (*(v10 + 8))(v9, v10) && v8 == v11)
    {
    }

    else
    {
      v13 = sub_1D7704A30();

      v3 = 0;
      if ((v13 & 1) == 0)
      {
LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v23);
        __swift_destroy_boxed_opaque_existential_1(v26);
        __swift_destroy_boxed_opaque_existential_1(v29);
        __swift_destroy_boxed_opaque_existential_1(v32);
        return v3 & 1;
      }
    }

    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v16 = (*(v15 + 8))(v14, v15);
    v18 = v17;
    v19 = v24;
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    if (v16 == (*(v20 + 8))(v19, v20) && v18 == v21)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1D7704A30();
    }

    goto LABEL_22;
  }

  if (v39 != 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = 1;
  return v3 & 1;
}

unint64_t sub_1D7674A0C()
{
  result = qword_1EE0AF0B8;
  if (!qword_1EE0AF0B8)
  {
    type metadata accessor for BannerAdViewLayoutAttributesFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF0B8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AdInsertionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7674B14()
{
  result = qword_1EE0AF3C8;
  if (!qword_1EE0AF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdInsertionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

unint64_t sub_1D7674C50()
{
  result = qword_1EE0AF3D0;
  if (!qword_1EE0AF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3D0);
  }

  return result;
}

NewsAds::AdPolicyLayoutEnvironment __swiftcall AdPolicyLayoutEnvironment.init()()
{
  v1 = v0;
  result.content._rawValue = sub_1D7674DA8(MEMORY[0x1E69E7CC0]);
  v1->content._rawValue = result.content._rawValue;
  return result;
}

unint64_t sub_1D7674CD8()
{
  result = qword_1EE0AF3E8;
  if (!qword_1EE0AF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AF3E8);
  }

  return result;
}

void *sub_1D7674DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D76AE374(0);
  v3 = sub_1D77048B0();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D76B87A4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D76B87A4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double sub_1D7674EE4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void *sub_1D7674F1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D7674F40()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.SponsorshipOverride(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.SponsorshipOverride.init(key:defaultValue:access:)(0xD000000000000034, 0x80000001D7718780, 0, v2);
  qword_1EE0B0A18 = result;
  return result;
}

uint64_t BannerAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedBannerAdPlacement.init(placementIdentifier:boundingSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for FeedBannerAdPlacement(0);
  v11 = a3 + v10[5];
  sub_1D7675210(0);
  v13 = *(v12 + 48);
  *v11 = 1;
  v14 = *MEMORY[0x1E69C5F08];
  v15 = sub_1D7703810();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  v16 = *MEMORY[0x1E69C6028];
  v17 = sub_1D77038B0();
  result = (*(*(v17 - 8) + 104))(v11, v16, v17);
  *(a3 + v10[7]) = 0;
  *a3 = a1;
  a3[1] = a2;
  v19 = (a3 + v10[6]);
  *v19 = a4;
  v19[1] = a5;
  return result;
}

void sub_1D7675210(uint64_t a1)
{
  if (!qword_1EE0AED40)
  {
    sub_1D7703810();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0AED40);
    }
  }
}

uint64_t sub_1D767527C()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.VisualDebugging(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.VisualDebugging.init(key:defaultValue:access:)(0xD000000000000022, 0x80000001D7718DB0, 0, v2);
  qword_1EE0B0C78 = result;
  return result;
}

uint64_t Settings.Ads.Debugging.SponsorshipOverride.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v41 = a4;
  v42 = a1;
  v44 = a3;
  v43 = a2;
  v6 = sub_1D7703220();
  v34 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7703210();
  v40 = *(v10 - 8);
  v11 = v40;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = qword_1EE0B0A60;
  v38 = *MEMORY[0x1E69D6E90];
  v37 = *(v11 + 104);
  v45 = v11 + 104;
  v31 = v10;
  v37(v13);
  v14 = *MEMORY[0x1E69D6EA0];
  v35 = *(v7 + 104);
  v36 = v7 + 104;
  v15 = v9;
  v32 = v14;
  v35(v9, v14, v6);
  v48 = 0;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  v16 = sub_1D7703270();
  v33 = v5;
  *(v5 + v39) = v16;
  v39 = qword_1EE0B0A58;
  v30[1] = "de.tag_eligibility";
  v17 = v38;
  v18 = v37;
  (v37)(v13, v38, v10);
  v19 = v9;
  v20 = v14;
  v22 = v34;
  v21 = v35;
  v35(v19, v20, v34);
  v47 = 0;
  swift_allocObject();
  *(v5 + v39) = sub_1D7703270();
  v39 = qword_1EE0B0A68;
  v23 = v17;
  v24 = v31;
  v18(v13, v23, v31);
  v21(v15, v32, v22);
  v46 = 0;
  swift_allocObject();
  v25 = sub_1D7703270();
  v26 = v40;
  *(v33 + v39) = v25;
  v27 = v41;
  (*(v26 + 16))(v13, v41, v24);
  v28 = sub_1D77030A0();
  (*(v26 + 8))(v27, v24);
  return v28;
}

void *sub_1D7675774(void *result, int a2)
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

uint64_t Settings.Ads.Debugging.VisualDebugging.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v20 = a4;
  v23 = a3;
  v21 = a1;
  v22 = a2;
  v18 = sub_1D7703220();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7703210();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1EE0B0CB8;
  sub_1D7675B68(0, &qword_1EE0B08D8, sub_1D7675C0C, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6EB0]);
  v16[1] = "bugJournalSummaryViewRenderer";
  v16[2] = v11;
  v26 = 0;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6E90], v7);
  sub_1D7676AC4(0, &qword_1EE0AECA0, &qword_1EE0B0900, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode);
  sub_1D7676DD4(0, &qword_1EE0B0900, &type metadata for Settings.Ads.Debugging.VisualDebugging.Mode, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7708FD0;
  v25 = 0;
  sub_1D7703230();
  v24 = 1;
  sub_1D7703230();
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6EA0], v18);
  sub_1D7677E34();
  v12 = sub_1D7703240();
  v13 = v20;
  *(v19 + v17) = v12;
  (*(v8 + 16))(v10, v13, v7);
  v14 = sub_1D77030A0();
  (*(v8 + 8))(v13, v7);
  return v14;
}

void sub_1D7675B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t sub_1D7675C0C()
{
  result = qword_1EE0B0CC0;
  if (!qword_1EE0B0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CC0);
  }

  return result;
}

uint64_t FeedGroupAdData.init(kind:adjacentArticles:tag:keywords:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = FeedGroupAdData.Kind.description.getter();
  v13 = v12;
  sub_1D7676920(v10, v9);
  sub_1D7676AB0(v10, v9);
  v32 = a3;
  v38 = v13;
  if (v9 > 0x2B)
  {
    if (v9 - 44 >= 0x18)
    {
      sub_1D7676AB0(v10, v9);
      if (a3)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_8:
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_19:
    v10 = MEMORY[0x1E69E7CC0];
    v36 = 1;
    v37 = 1;
    goto LABEL_20;
  }

  if (((1 << v9) & 0x7FFFFFF03FDLL) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v9) & 0xBC02) != 0)
  {
    if (a3)
    {
      v37 = [a3 contentProvider];
LABEL_6:
      sub_1D7676AB0(v10, v9);
LABEL_10:
      v14 = [a3 asTopic];
      if (v14 && (v15 = [v14 iAdCategories], swift_unknownObjectRelease(), v15))
      {
        v10 = sub_1D7704400();

        v36 = 0;
      }

      else
      {
        v36 = 0;
        v10 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (a3)
  {
    if (![swift_unknownObjectRetain() asTopic])
    {
LABEL_34:
      v37 = [a3 contentProvider];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D7676AB0(v10, v9);
LABEL_9:
    v37 = 1;
    goto LABEL_10;
  }

LABEL_17:
  sub_1D7676AB0(v10, v9);
  v10 = MEMORY[0x1E69E7CC0];
  v36 = 1;
  v37 = 1;
LABEL_20:
  v35 = sub_1D7676B5C(a2, a4);

  v16 = 0;
  a4 = 0;
  a3 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v17 = a2 + (v16 << 6);
  while (a3 != v16)
  {
    if (v16 >= *(a2 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v18 = (v17 + 64);
    ++v16;
    v19 = *(v17 + 72);
    v17 += 64;
    if (v19)
    {
      v33 = a4;
      v34 = v10;
      v20 = a5;
      v21 = *v18;

      v22 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D7669634(0, *(v9 + 16) + 1, 1, v9);
      }

      v24 = *(v9 + 16);
      v23 = *(v9 + 24);
      if (v24 >= v23 >> 1)
      {
        v9 = sub_1D7669634((v23 > 1), v24 + 1, 1, v9);
      }

      *(v9 + 16) = v24 + 1;
      v25 = v9 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v19;
      v11 = v22;
      a5 = v20;
      a4 = v33;
      v10 = v34;
      goto LABEL_21;
    }
  }

  sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
  sub_1D766C8DC();
  v26 = sub_1D7704330();

  v28 = 0;
  v29 = 0;
  if ((v36 & 1) == 0)
  {
    v30 = [v32 identifier];
    v28 = sub_1D7704260();
    v29 = v31;

    result = swift_unknownObjectRelease();
  }

  *a5 = v11;
  a5[1] = v38;
  a5[2] = v10;
  a5[3] = v35;
  a5[4] = v26;
  a5[5] = v37;
  a5[6] = v28;
  a5[7] = v29;
  a5[8] = a2;
  return result;
}

unint64_t FeedGroupAdData.Kind.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x64657461727543;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x657061707377654ELL;
      break;
    case 2uLL:
      v3 = 0x77654E6C61636F4CLL;
      break;
    case 3uLL:
    case 0x42uLL:
      v3 = 0x676E69646E657254;
      break;
    case 4uLL:
      v3 = 0x756F59726F46;
      break;
    case 5uLL:
      v6 = 0x64657373694DLL;
      goto LABEL_42;
    case 6uLL:
      v6 = 0x74736574614CLL;
LABEL_42:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 7uLL:
      v3 = 0x59726F4665726F4DLL;
      break;
    case 8uLL:
      v3 = 0xD000000000000012;
      break;
    case 9uLL:
      v3 = 0x6F72476369706F54;
      break;
    case 0xAuLL:
      v3 = 0x656E697A6167614DLL;
      break;
    case 0xBuLL:
      v3 = 0x726F76614677654ELL;
      break;
    case 0xCuLL:
      v3 = 0xD000000000000010;
      break;
    case 0xDuLL:
      v3 = 0x6F7661466F747541;
      break;
    case 0xEuLL:
      v3 = 0x6369747241676154;
      break;
    case 0xFuLL:
      v3 = 0x6575737349676154;
      break;
    case 0x10uLL:
      v3 = 0x6C6C6177796150;
      break;
    case 0x11uLL:
      v3 = 25665;
      break;
    case 0x12uLL:
      v5 = 1953460307;
      goto LABEL_44;
    case 0x13uLL:
      v3 = 0x72656874616557;
      break;
    case 0x14uLL:
      v3 = 7364935;
      break;
    case 0x15uLL:
      v3 = 0x746E6F436E656553;
      break;
    case 0x16uLL:
      v3 = 0x6957646572616853;
      break;
    case 0x17uLL:
      v3 = 0x656D656761676E45;
      break;
    case 0x18uLL:
      v3 = 0x536F546F72746E49;
      break;
    case 0x19uLL:
    case 0x1AuLL:
      v3 = 0x7374726F7053794DLL;
      break;
    case 0x1BuLL:
      v3 = 0x65527374726F7053;
      break;
    case 0x1CuLL:
      v3 = 0x63537374726F7053;
      break;
    case 0x1DuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x1EuLL:
      v3 = 0x63537374726F7053;
      break;
    case 0x1FuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x20uLL:
      v3 = 0x61467374726F7053;
      break;
    case 0x21uLL:
      v5 = 1751607624;
LABEL_44:
      v3 = v5 | 0x6867696C00000000;
      break;
    case 0x22uLL:
      v3 = 0x74537374726F7053;
      break;
    case 0x23uLL:
      v3 = 0x72427374726F7053;
      break;
    case 0x24uLL:
      v3 = 0x6F427374726F7053;
      break;
    case 0x25uLL:
      v3 = 0x76457374726F7053;
      break;
    case 0x26uLL:
    case 0x28uLL:
      v3 = 0xD000000000000013;
      break;
    case 0x27uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x29uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x2AuLL:
      v3 = 0x74756374726F6853;
      break;
    case 0x2BuLL:
      v3 = 0xD000000000000017;
      break;
    case 0x2CuLL:
      v3 = 0x6C656E6E616843;
      break;
    case 0x2DuLL:
    case 0x32uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x2EuLL:
      v3 = 0x694C656C7A7A7550;
      break;
    case 0x2FuLL:
      v3 = 0x7241656C7A7A7550;
      break;
    case 0x30uLL:
    case 0x36uLL:
      v4 = 5;
      goto LABEL_63;
    case 0x31uLL:
      v3 = 0x6546656C7A7A7550;
      break;
    case 0x33uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x34uLL:
      v3 = 0x6F59726F46676154;
      break;
    case 0x35uLL:
      v3 = 0xD000000000000016;
      break;
    case 0x37uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x38uLL:
      v4 = 10;
LABEL_63:
      v3 = v4 | 0xD000000000000010;
      break;
    case 0x39uLL:
      v3 = 0x5265746144676154;
      break;
    case 0x3AuLL:
      v3 = 0x614D7374726F7053;
      break;
    case 0x3BuLL:
      v3 = 0x7974696E69666641;
      break;
    case 0x3CuLL:
      v3 = 0x6F74536465766153;
      break;
    case 0x3DuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x3EuLL:
      v3 = 0x506C656E6E616843;
      break;
    case 0x3FuLL:
      v3 = 1685024582;
      break;
    case 0x40uLL:
      v3 = 0x655274736574614CLL;
      break;
    case 0x41uLL:
      v3 = 0x6365526465766153;
      break;
    case 0x43uLL:
      v3 = 0xD000000000000014;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1D7676920(v1, v2);
  return v3;
}

uint64_t sub_1D7676920(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x44)
  {
  }

  return result;
}

uint64_t sub_1D7676934(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v8 = a1[2];
  v1 = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  type metadata accessor for AdRequest(255, &v8);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  type metadata accessor for Journal(255, &v8);
  result = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    v12 = result;
    sub_1D7665328(255, &qword_1EE0AEBD0, MEMORY[0x1E69E7280]);
    result = swift_getTupleTypeMetadata2();
    if (v7 <= 0x3F)
    {
      v13 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D7676A5C()
{
  result = qword_1EE0B0CD8;
  if (!qword_1EE0B0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CD8);
  }

  return result;
}

uint64_t sub_1D7676AB0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x44)
  {
  }

  return result;
}

void sub_1D7676AC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D7676DD4(255, a3, a4, MEMORY[0x1E69D6EA8]);
    v5 = sub_1D7704A20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1D7676B30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D7676ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D7676B5C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D7676B30(0, v2, 0);
    v4 = v22;
    v5 = (v3 + 80);
    do
    {
      v6 = *v5;
      v7 = *(v22 + 16);
      v8 = *(v22 + 24);
      v9 = v7 + 1;

      if (v7 >= v8 >> 1)
      {
        result = sub_1D7676B30((v8 > 1), v7 + 1, 1);
      }

      *(v22 + 16) = v9;
      *(v22 + 8 * v7 + 32) = v6;
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
LABEL_25:

      sub_1D76784F8(0, &qword_1EE0AED80, MEMORY[0x1E69E6158]);
      sub_1D766C8DC();
      v20 = sub_1D7704330();

      sub_1D7669540(v21);
      return v20;
    }
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v10 < *(v4 + 16))
  {
    v12 = *(v4 + 8 * v10 + 32);
    v13 = *(v12 + 16);
    v14 = *(v11 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v11 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_1D7669634(result, v16, 1, v11);
      v11 = result;
      if (*(v12 + 16))
      {
LABEL_21:
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v13)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v11 + 16);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_30;
          }

          *(v11 + 16) = v19;
        }

        goto LABEL_10;
      }
    }

    if (v13)
    {
      goto LABEL_28;
    }

LABEL_10:
    if (v9 == ++v10)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1D7676DD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t SponsorshipAdPlacement.init(placementIdentifier:insertionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for SponsorshipAdPlacement(0);
  v9 = *(v8 + 20);
  *&a4[v9] = 1;
  v10 = *MEMORY[0x1E69C6008];
  v11 = sub_1D77038B0();
  result = (*(*(v11 - 8) + 104))(&a4[v9], v10, v11);
  *a4 = a1;
  *(a4 + 1) = a2;
  a4[*(v8 + 24)] = v7;
  return result;
}

void *sub_1D7676ED4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1D7677E88(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7678458(0, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t AdRequestManager.initiateRequest(for:placement:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a4;
  v114 = a3;
  v129 = a2;
  v123 = a1;
  v121 = a5;
  v109 = *v5;
  v6 = v109[10];
  v7 = v109[13];
  v111 = type metadata accessor for AdContext(0, v6, v7, a4);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v117 = v104 - v8;
  v9 = v109[12];
  v10 = v109[15];
  v122 = v6;
  v130 = v6;
  v131 = v9;
  v124 = v7;
  v132 = v7;
  v133 = v10;
  v11 = type metadata accessor for AdRequest(255, &v130);
  v12 = sub_1D77046B0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v115 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v104 - v17;
  v19 = *(v11 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v112 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v104 - v22;
  v118 = v5;
  v24 = v5[12];
  v25 = *(v10 + 8);
  v127 = v10 + 8;
  v128 = v9;
  v125 = v10;
  v126 = v25;
  v26 = v25(v9, v10);
  LOBYTE(v130) = 1;
  v108 = v24;
  AdRequestStore.request(for:behavior:)(v26, v27, &v130, v18);

  v28 = (*(v19 + 48))(v18, 1, v11);
  v120 = v11;
  if (v28 == 1)
  {
    v119 = v19;
    v30 = *(v13 + 8);
    v29 = v13 + 8;
    v105 = v30;
    v30(v18, v12);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v106 = v29;
    v107 = v12;
    v31 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v104[0] = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7709050;
    v34 = v125;
    v35 = v126(v128, v125);
    v37 = v36;
    v38 = MEMORY[0x1E69E6158];
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1D7668854();
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v40 = *(v123 + 16);
    v41 = *(v123 + 24);
    *(v33 + 96) = v38;
    *(v33 + 104) = v39;
    v116 = v39;
    *(v33 + 64) = v39;
    *(v33 + 72) = v40;
    v104[1] = v40;
    *(v33 + 80) = v41;
    v42 = v118;
    v43 = v118[14];
    v44 = v118[15];
    v45 = v118[17];
    if (v45)
    {
      v46 = v34;
      v47 = v31;
      v48 = v118[16];
      v130 = v118[14];
      v131 = v44;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
      v49 = v48;
      v31 = v47;
      v34 = v46;
      MEMORY[0x1DA6FF0D0](v49, v45);
      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);

      v43 = v130;
      v44 = v131;
    }

    else
    {
    }

    v69 = v116;
    *(v33 + 136) = v38;
    *(v33 + 144) = v69;
    *(v33 + 112) = v43;
    *(v33 + 120) = v44;
    v70 = sub_1D77045A0();
    sub_1D7703ED0("Initiating ad request, placement=%{public}@, ad=%{public}@, host=%{public}@", 75, 2, &dword_1D7662000, v31, v70, v33);

    v71 = v117;
    v114(v42 + 2);
    v79 = v42[10];
    v80 = v42[11];
    __swift_project_boxed_opaque_existential_1(v42 + 7, v79);
    v81 = *(v80 + 16);
    v103 = v80;
    v102 = v34;
    v82 = v112;
    v83 = v71;
    v84 = v128;
    v85 = v34;
    v86 = v122;
    v81(v123, v83, v129, v122, v109[11], v128, v124, v109[14], v102, v79, v103);
    v87 = v42[13];
    v88 = v126;
    v89 = v126(v84, v85);
    Journal.addPrewarmedEntry(request:placementIdentifier:)(v82, v89, v90);

    v91 = v119;
    v92 = v115;
    v93 = v82;
    v94 = v120;
    (*(v119 + 16))(v115, v93, v120);
    (*(v91 + 56))(v92, 0, 1, v94);
    v95 = v88(v84, v85);
    AdRequestStore.store(request:for:)(v92, v95, v96);

    v105(v92, v107);
    (*(v110 + 8))(v117, v111);
    v130 = v86;
    v131 = v84;
    v97 = v124;
    v98 = v125;
    v132 = v124;
    v133 = v125;
    type metadata accessor for Journal(255, &v130);
    v99 = *(swift_getTupleTypeMetadata2() + 48);
    v100 = v121;
    (*(v91 + 32))(v121, v112, v94);
    *(v100 + v99) = v87;
    v130 = v86;
    v131 = v84;
    v132 = v97;
    v133 = v98;
    type metadata accessor for AdRequestResult(0, &v130);
  }

  else
  {
    v50 = v121;
    v51 = *(v19 + 32);
    v119 = v19 + 32;
    v117 = v51;
    (v51)(v23, v18, v11);
    v52 = v23;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v53 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D7709050;
    v55 = v126(v128, v125);
    v57 = v56;
    v58 = MEMORY[0x1E69E6158];
    *(v54 + 56) = MEMORY[0x1E69E6158];
    v59 = sub_1D7668854();
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v61 = *(v123 + 16);
    v60 = *(v123 + 24);
    *(v54 + 96) = v58;
    *(v54 + 104) = v59;
    *(v54 + 64) = v59;
    *(v54 + 72) = v61;
    *(v54 + 80) = v60;
    v62 = v118;
    v63 = v118[14];
    v64 = v118[15];
    v65 = v118[17];
    if (v65)
    {
      v66 = v50;
      v67 = v118[16];
      v130 = v118[14];
      v131 = v64;

      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6FF0D0](40, 0xE100000000000000);
      v68 = v67;
      v50 = v66;
      v58 = MEMORY[0x1E69E6158];
      MEMORY[0x1DA6FF0D0](v68, v65);
      MEMORY[0x1DA6FF0D0](41, 0xE100000000000000);

      v63 = v130;
      v64 = v131;
    }

    else
    {
    }

    *(v54 + 136) = v58;
    *(v54 + 144) = v59;
    *(v54 + 112) = v63;
    *(v54 + 120) = v64;
    v72 = sub_1D77045A0();
    sub_1D7703ED0("Existing request for placement=%{public}@, ad=%{public}@, host=%{public}@", 73, 2, &dword_1D7662000, v53, v72, v54);

    v73 = v122;
    v74 = v128;
    v130 = v122;
    v131 = v128;
    v76 = v124;
    v75 = v125;
    v132 = v124;
    v133 = v125;
    type metadata accessor for Journal(255, &v130);
    v77 = v120;
    v78 = *(swift_getTupleTypeMetadata2() + 48);
    (v117)(v50, v52, v77);
    *(v50 + v78) = v62[13];
    v130 = v73;
    v131 = v74;
    v132 = v76;
    v133 = v75;
    type metadata accessor for AdRequestResult(0, &v130);
  }

  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D7677E34()
{
  result = qword_1EE0B0CC8;
  if (!qword_1EE0B0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CC8);
  }

  return result;
}

void sub_1D7677E88(uint64_t a1)
{
  if (!qword_1EE0AEC00)
  {
    sub_1D7678458(255, &qword_1EE0AED80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1D7704A20();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AEC00);
    }
  }
}

uint64_t sub_1D7677F04()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7677F34(uint64_t a1)
{
  v2 = sub_1D76783B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t AdRequestStore.request(for:behavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v44 = a4;
  v9 = *(*v5 + 96);
  v47[0] = *(*v5 + 80);
  v47[1] = v9;
  v10 = type metadata accessor for AdRequest(255, v47);
  v11 = sub_1D77046B0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v35 - v19;
  v41 = *a3;
  sub_1D7703340();
  swift_beginAccess();
  v42 = a1;
  v43 = v5;
  v45 = a1;
  v46 = a2;

  v21 = MEMORY[0x1E69E6158];
  v22 = v18;
  sub_1D77041C0();

  if ((*(v18 + 48))(v17, 1, v10) == 1)
  {
    (*(v12 + 8))(v17, v11);
    swift_endAccess();
    v23 = 1;
    v24 = v44;
  }

  else
  {
    v36 = v12;
    v37 = v11;
    v38 = *(v18 + 32);
    v39 = v18;
    v38(v20, v17, v10);
    swift_endAccess();
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7708FD0;
    *(v26 + 56) = v21;
    v27 = sub_1D7668854();
    v28 = v41;
    v29 = 7368560;
    if (v41)
    {
      v29 = 1701736302;
    }

    v30 = 0xE300000000000000;
    if (v41)
    {
      v30 = 0xE400000000000000;
    }

    v31 = v42;
    *(v26 + 32) = v42;
    *(v26 + 40) = a2;
    *(v26 + 96) = v21;
    *(v26 + 104) = v27;
    *(v26 + 64) = v27;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;

    v32 = sub_1D77045A0();
    sub_1D7703ED0("Retrieving request from storage for identifier, identifier=%{public}@, behavior=%{public}@", 90, 2, &dword_1D7662000, v25, v32, v26);

    if ((v28 & 1) == 0)
    {
      v45 = v31;
      v46 = a2;
      swift_beginAccess();
      sub_1D77041B0();
      v33 = v40;
      sub_1D77041A0();
      swift_endAccess();
      (*(v36 + 8))(v33, v37);
    }

    v24 = v44;
    v38(v44, v20, v10);
    v23 = 0;
    v22 = v39;
  }

  (*(v22 + 56))(v24, v23, 1, v10);
  return sub_1D7703350();
}

unint64_t sub_1D76783B0()
{
  result = qword_1EE0B0CD0;
  if (!qword_1EE0B0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0CD0);
  }

  return result;
}

void sub_1D7678404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7678458(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D76784A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D76784F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D77044B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsAds15FeedGroupAdDataV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D767855C(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

char *AdContextBuilder.build<A, B, C>(for:build:)@<X0>(uint64_t *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v74 = a3;
  v81 = a2;
  v73 = a4;
  v83 = *v4;
  v82 = *a1;
  v85 = *(v82 + 88);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v73 - v7;
  v8 = sub_1D7703370();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE0AF010;
  sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v75 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7708FD0;
  v13 = a1[2];
  v12 = a1[3];
  v14 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D7668854();
  *(v11 + 64) = v15;
  v76 = v13;
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  v77 = v12;

  v88[0] = AdContextBuilder.path.getter(v16);
  sub_1D7668958(0, &qword_1EE0AED80, v14, MEMORY[0x1E69E62F8]);
  v18 = v17;
  v19 = sub_1D7669758();
  v79 = v18;
  v78 = v19;
  v20 = sub_1D7704210();
  v22 = v21;

  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  v23 = v15;
  *(v11 + 72) = v20;
  *(v11 + 80) = v22;
  v24 = sub_1D77045A0();
  v80 = v9;
  sub_1D7703ED0("Building context for ad=%{public}@, contextBuilder=%{public}@", 61, 2, &dword_1D7662000, v9, v24, v11);

  v25 = v81;
  if (v81)
  {
    v26 = v83;
    v27 = swift_allocObject();

    v28 = v74;
    sub_1D7679268(v25, v74);
    sub_1D7703360();
    sub_1D7703390();
    swift_allocObject();
    v27[5] = sub_1D7703380();
    v27[6] = sub_1D76680A0(MEMORY[0x1E69E7CC0]);
    v27[2] = v5;
    v27[3] = 0x6C61636F6CLL;
    v27[4] = 0xE500000000000000;
    v89 = v26;
    v90 = &protocol witness table for AdContextBuilder;
    v88[0] = v27;

    v25(v88);
    sub_1D7679EA4(v25, v28);
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {

    v27 = v5;
    v26 = v83;
  }

  v89 = v26;
  v90 = &protocol witness table for AdContextBuilder;
  v88[0] = v27;
  v29 = *(v82 + 112);
  v30 = *(v29 + 40);

  v31 = v85;
  v32 = v84;
  v30(v88, v85, v29);
  if (!v32)
  {
    v84 = v29;
    sub_1D7668958(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7708DE0;
    *(inited + 32) = v27;

    v44 = sub_1D767B548();
    v88[0] = inited;
    sub_1D767BF84(v44);
    v45 = v88[0];
    if (v88[0] >> 62)
    {
      v46 = sub_1D7704880();
      if (v46)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v46 = *((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
LABEL_11:
        v83 = v27;
        v91 = MEMORY[0x1E69E7CC0];
        result = sub_1D767C300(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          __break(1u);
          return result;
        }

        v82 = 0;
        v48 = v91;
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = 0;
          do
          {
            v50 = MEMORY[0x1DA6FF530](v49, v45);
            v51 = AdContextBuilder.path.getter(v50);
            swift_beginAccess();
            v52 = *(v50 + 48);

            swift_unknownObjectRelease();
            v91 = v48;
            v54 = v48[2];
            v53 = v48[3];
            if (v54 >= v53 >> 1)
            {
              sub_1D767C300((v53 > 1), v54 + 1, 1);
              v48 = v91;
            }

            ++v49;
            v48[2] = v54 + 1;
            v55 = &v48[2 * v54];
            v55[4] = v51;
            v55[5] = v52;
          }

          while (v46 != v49);
        }

        else
        {
          v64 = 32;
          do
          {
            v65 = *(v45 + v64);

            v67 = AdContextBuilder.path.getter(v66);
            swift_beginAccess();
            v68 = *(v65 + 48);

            v91 = v48;
            v70 = v48[2];
            v69 = v48[3];
            if (v70 >= v69 >> 1)
            {
              sub_1D767C300((v69 > 1), v70 + 1, 1);
              v48 = v91;
            }

            v48[2] = v70 + 1;
            v71 = &v48[2 * v70];
            v71[4] = v67;
            v71[5] = v68;
            v64 += 8;
            --v46;
          }

          while (v46);
        }

        v31 = v85;
        v72 = v86;
LABEL_27:
        v91 = v48;
        return sub_1D767C3F4(v72, &v91, v31, v84, v73);
      }
    }

    v48 = MEMORY[0x1E69E7CC0];
    v72 = v86;
    goto LABEL_27;
  }

  v91 = v32;
  v33 = v32;
  sub_1D7665328(0, &qword_1EE0AEBD0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v34 = v88[0];
    v35 = v88[1];

    v36 = sub_1D7704590();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7709050;
    v38 = MEMORY[0x1E69E6158];
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = v23;
    *(v37 + 32) = v34;
    *(v37 + 40) = v35;
    *(v37 + 96) = v38;
    *(v37 + 104) = v23;
    *(v37 + 72) = v76;
    *(v37 + 80) = v77;

    v87 = AdContextBuilder.path.getter(v39);
    v40 = sub_1D7704210();
    v42 = v41;

    *(v37 + 136) = v38;
    *(v37 + 144) = v23;
    *(v37 + 112) = v40;
    *(v37 + 120) = v42;
    sub_1D7703ED0("Failed to build context, missing data for key=%{public}@, ad=%{public}@, contextBuilder=%{public}@", 98, 2, &dword_1D7662000, v80, v36, v37, v73);
  }

  else
  {

    LODWORD(v86) = sub_1D7704590();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D7709050;
    v57 = MEMORY[0x1E69E6158];
    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = v23;
    v58 = v77;
    *(v56 + 32) = v76;
    *(v56 + 40) = v58;
    swift_getErrorValue();

    v59 = sub_1D7704A80();
    *(v56 + 96) = v57;
    *(v56 + 104) = v23;
    *(v56 + 72) = v59;
    *(v56 + 80) = v60;
    v88[0] = AdContextBuilder.path.getter(v59);
    v61 = sub_1D7704210();
    v63 = v62;

    *(v56 + 136) = v57;
    *(v56 + 144) = v23;
    *(v56 + 112) = v61;
    *(v56 + 120) = v63;
    sub_1D7703ED0("Failed to build context, ad=%{public}@, error=%{public}@ contextBuilder=%{public}@", 82, 2, &dword_1D7662000, v80, v86, v56, v73);
  }

  swift_willThrow();
}