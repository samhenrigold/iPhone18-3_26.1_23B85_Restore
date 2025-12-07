uint64_t sub_1DAA41644()
{
  sub_1DAA41974(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC7630;
  v2 = type metadata accessor for LegacyStocksAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1DAA41A54(qword_1EE126320, type metadata accessor for LegacyStocksAssembly, &unk_1DACD7B88);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for ServiceAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_1DAA41A54(qword_1EE126098, type metadata accessor for ServiceAssembly, &unk_1DACC7120);
  *(v1 + 72) = v5;
  v6 = type metadata accessor for ManagerAssembly();
  v7 = swift_allocObject();
  *(v1 + 136) = v6;
  *(v1 + 144) = sub_1DAA41A54(qword_1EE126138, type metadata accessor for ManagerAssembly, &unk_1DACD4228);
  *(v1 + 112) = v7;
  v8 = type metadata accessor for NewsCoreAssembly();
  v9 = swift_allocObject();
  *(v1 + 176) = v8;
  *(v1 + 184) = sub_1DAA41A54(&qword_1EE1263C8, type metadata accessor for NewsCoreAssembly, &unk_1DACD61CC);
  *(v1 + 152) = v9;
  v10 = type metadata accessor for URLAssembly();
  v11 = swift_allocObject();
  *(v1 + 216) = v10;
  *(v1 + 224) = sub_1DAA41A54(qword_1EE126280, type metadata accessor for URLAssembly, &unk_1DACDE468);
  *(v1 + 192) = v11;
  v12 = type metadata accessor for CacheDatabaseAssembly();
  v13 = swift_allocObject();
  *(v1 + 256) = v12;
  *(v1 + 264) = sub_1DAA41A54(&qword_1EE125E30, type metadata accessor for CacheDatabaseAssembly, &unk_1DACDB744);
  *(v1 + 232) = v13;
  v14 = type metadata accessor for PrivateDataAssembly();
  v15 = swift_allocObject();
  *(v1 + 296) = v14;
  *(v1 + 304) = sub_1DAA41A54(qword_1EE121988, type metadata accessor for PrivateDataAssembly, &unk_1DACC56F4);
  *(v1 + 272) = v15;
  v16 = type metadata accessor for DebugAssembly();
  v17 = swift_allocObject();
  *(v1 + 336) = v16;
  *(v1 + 344) = sub_1DAA41A54(&qword_1EE1261D8, type metadata accessor for DebugAssembly, &unk_1DACC6BDC);
  *(v1 + 312) = v17;
  *(v0 + 16) = v1;
  return v0;
}

void sub_1DAA41974(uint64_t a1)
{
  if (!qword_1EE1252C8)
  {
    sub_1DAA419CC();
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1252C8);
    }
  }
}

unint64_t sub_1DAA419CC()
{
  result = qword_1EE1255C0;
  if (!qword_1EE1255C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1255C0);
  }

  return result;
}

uint64_t sub_1DAA41A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA41B98()
{
  result = sub_1DAA41BBC();
  qword_1EE1242C0 = result;
  qword_1EE1242C8 = v1;
  return result;
}

uint64_t sub_1DAA41BBC()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 contentStoreFrontID];

  if (v1)
  {
    v2 = sub_1DACB9324();
    v4 = v3;

    sub_1DAA41D64(0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DACC1D20;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1DAA443C8();
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v6 = sub_1DACB9AD4();
    v7 = sub_1DACB9914();
    sub_1DACB8C64("using storefront ID %{public}@", 30, 2, &dword_1DAA3F000, v6, v7, v5);
  }

  else
  {
    v2 = 0x313434333431;
    v8 = sub_1DACB9904();
    sub_1DAA41D64(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC1D20;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1DAA443C8();
    *(v9 + 32) = 0x313434333431;
    *(v9 + 40) = 0xE600000000000000;
    sub_1DAA41DCC();
    v6 = sub_1DACB9AD4();
    sub_1DACB8C64("failed to load storefront ID from NewsCore; falling back to US (%{public}@)", 75, 2, &dword_1DAA3F000, v6, v8, v9);
  }

  return v2;
}

void sub_1DAA41D64(uint64_t a1)
{
  if (!qword_1EE123B20)
  {
    sub_1DAA4436C(255, &qword_1EE123B00, MEMORY[0x1E69E7740]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123B20);
    }
  }
}

unint64_t sub_1DAA41DCC()
{
  result = qword_1EE123DB0;
  if (!qword_1EE123DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE123DB0);
  }

  return result;
}

uint64_t sub_1DAA41E48()
{
  v0 = sub_1DACB89B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8384();
  sub_1DAA4208C(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088, MEMORY[0x1E69D6A80]);
  sub_1DACB71F4();
  sub_1DACB8764();

  v4 = *MEMORY[0x1E69D6AD0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1DACB8134();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1DACB8384();
  sub_1DACB8774();

  v5(v3, v4, v0);
  sub_1DACB8134();

  return (v6)(v3, v0);
}

void sub_1DAA4208C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA420F4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAA420F4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1DAA4213C(uint64_t a1)
{
  v96 = a1;
  v87 = sub_1DACB8264();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1DACB89B4();
  v105 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8C04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125E38, &protocol descriptor for WatchlistServiceType, 1);
  sub_1DACB8774();

  v99 = *MEMORY[0x1E69D6BF0];
  v9 = *(v6 + 104);
  v9(v8);
  v94 = v9;
  v98 = v6 + 104;
  sub_1DACB80F4();

  v10 = *(v6 + 8);
  v10(v8, v5);
  v93 = v10;
  v95 = v6 + 8;
  v92 = *MEMORY[0x1E69D6BE8];
  v97 = v5;
  v9(v8);
  sub_1DACB80F4();

  v10(v8, v5);
  v12 = v105;
  v13 = v105 + 104;
  v14 = *(v105 + 104);
  v15 = v4;
  v16 = v4;
  v104 = *MEMORY[0x1E69D6AD0];
  v11 = v104;
  v17 = v2;
  v102 = v2;
  v14(v16, v104, v2);
  v18 = v14;
  v100 = v14;
  v103 = v13;
  v19 = v15;
  sub_1DACB8134();

  v20 = *(v12 + 8);
  v20(v15, v17);
  v101 = v20;
  v105 = v12 + 8;
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125820, &protocol descriptor for WatchlistSortingServiceType, 1);
  sub_1DACB8774();

  v21 = v11;
  v22 = v102;
  v18(v15, v21, v102);
  sub_1DACB8134();

  v20(v15, v22);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125FD8, &protocol descriptor for QuoteServiceType, 1);
  sub_1DACB8774();

  v23 = v8;
  v24 = v8;
  v25 = v97;
  v26 = v94;
  (v94)(v24, v99, v97);
  sub_1DACB80F4();

  v27 = v25;
  v28 = v93;
  v93(v23, v25);
  v29 = v19;
  v30 = v19;
  v31 = v102;
  v32 = v100;
  v100(v30, v104, v102);
  v90 = v29;
  sub_1DACB8134();

  v101(v29, v31);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125CC0, &protocol descriptor for QuoteDetailServiceType, 1);
  sub_1DACB8774();

  (v26)(v23, v99, v27);
  sub_1DACB80F4();

  v28(v23, v27);
  v33 = v90;
  v34 = v102;
  v32(v90, v104, v102);
  sub_1DACB8134();

  v101(v33, v34);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125FE8, &protocol descriptor for ChartServiceType, 1);
  sub_1DACB8774();

  v35 = v99;
  v36 = v97;
  v37 = v94;
  (v94)(v23, v99, v97);
  sub_1DACB80F4();

  v28(v23, v36);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125E50, &protocol descriptor for SparklineServiceType, 1);
  sub_1DACB8774();

  v37(v23, v35, v36);
  v91 = v23;
  sub_1DACB80F4();

  v28(v23, v36);
  v38 = v90;
  v39 = v104;
  v40 = v102;
  v41 = v100;
  v100(v90, v104, v102);
  sub_1DACB8134();

  v42 = v101;
  v101(v38, v40);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125F28, &protocol descriptor for SearchServiceType, 1);
  sub_1DACB8774();

  v41(v38, v39, v40);
  sub_1DACB8134();

  v42(v38, v40);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125E60, &protocol descriptor for LanguageSettingsType, 1);
  sub_1DACB8774();

  v43 = v102;
  v41(v38, v39, v102);
  sub_1DACB8134();

  v42(v38, v43);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125E48, &protocol descriptor for StockFeedServiceType, 1);
  sub_1DACB8774();

  v44 = v91;
  v45 = v97;
  v46 = v94;
  (v94)(v91, v99, v97);
  sub_1DACB80F4();

  v47 = v93;
  v93(v44, v45);
  (v46)(v44, v92, v45);
  sub_1DACB80F4();

  v47(v44, v45);
  v48 = v102;
  v100(v38, v104, v102);
  sub_1DACB8134();

  v101(v38, v48);
  sub_1DACB8384();
  v85[1] = sub_1DAA44440(0, &unk_1EE125A00, &protocol descriptor for StockMetadataServiceType, 1);
  sub_1DACB8774();

  v49 = v99;
  (v46)(v44, v99, v45);
  sub_1DACB80F4();

  v47(v44, v45);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125948, &protocol descriptor for IdentificationServiceType, 1);
  sub_1DACB8774();

  (v46)(v44, v49, v45);
  sub_1DACB80F4();

  v47(v44, v45);
  sub_1DAA44440(0, &unk_1EE1257D0, &protocol descriptor for UserIdentitySourceConfigurable, 1);
  sub_1DACB8114();

  v50 = v90;
  v51 = v104;
  v52 = v102;
  v53 = v100;
  v100(v90, v104, v102);
  sub_1DACB8134();

  v54 = v101;
  v101(v50, v52);
  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125908, &protocol descriptor for AppConfigurationServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125780, &protocol descriptor for AttributionSourceAssetServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125BA8, &protocol descriptor for SDSAuthTokenServiceType, 1);
  sub_1DACB8774();

  v53(v50, v51, v52);
  sub_1DACB8134();

  v54(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  sub_1DACB8774();

  v53(v50, v51, v52);
  sub_1DACB8134();

  v54(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE1257F8, &protocol descriptor for PrivateDataPollingServiceType, 1);
  sub_1DACB8774();

  v55 = v91;
  v56 = v97;
  (v94)(v91, v99, v97);
  sub_1DACB80F4();

  v93(v55, v56);
  v57 = v100;
  v100(v50, v51, v52);
  sub_1DACB8134();

  v54(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE1261E0, &protocol descriptor for UserInfoType, 1);
  sub_1DACB8774();

  v57(v50, v51, v52);
  sub_1DACB8134();

  v58 = v101;
  v101(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125BD8, &protocol descriptor for UserRegionProviderType, 1);
  sub_1DACB8774();

  v57(v50, v51, v52);
  sub_1DACB8134();

  v58(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125CE0, &protocol descriptor for TopStoriesServiceType, 1);
  sub_1DACB71F4();
  sub_1DACB8774();

  v59 = v91;
  v60 = v97;
  (v94)(v91, v92, v97);
  sub_1DACB80F4();

  v93(v59, v60);
  v57(v50, v104, v52);
  sub_1DACB8134();

  v58(v50, v52);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE1258F8, &protocol descriptor for ForYouFeedConfigServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125920, &protocol descriptor for StockFeedConfigServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125F08, &protocol descriptor for NewsFeedServiceType, 1);
  sub_1DACB8774();

  v61 = v97;
  v62 = v94;
  (v94)(v59, v92, v97);
  sub_1DACB80F4();

  v63 = v93;
  v93(v59, v61);
  v64 = v102;
  v100(v50, v104, v102);
  sub_1DACB8134();

  v101(v50, v64);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125D90, &protocol descriptor for FeedLookupServiceType, 1);
  sub_1DACB8774();

  v65 = v97;
  (v62)(v59, v99, v97);
  sub_1DACB80F4();

  v63(v59, v65);
  (v62)(v59, v92, v65);
  sub_1DACB80F4();

  v63(v59, v65);
  v66 = v104;
  v67 = v102;
  v68 = v100;
  v100(v50, v104, v102);
  sub_1DACB8134();

  v69 = v101;
  v101(v50, v67);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE1258E8, &protocol descriptor for NewsUserProfileProviderType, 0);
  sub_1DACB8774();

  v68(v50, v66, v67);
  sub_1DACB8134();

  v69(v50, v67);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125BC0, &protocol descriptor for NewsHeadlineServiceType, 1);
  sub_1DACB8774();

  v68(v50, v66, v67);
  sub_1DACB8134();

  v69(v50, v67);
  sub_1DACB8384();
  sub_1DAA44304(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125950, &protocol descriptor for HeadlineProfileScorerType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  type metadata accessor for PermanentURLFactory();
  sub_1DACB71F4();
  sub_1DACB8764();

  sub_1DACB8394();
  sub_1DAA44440(0, &unk_1EE1257E8, &protocol descriptor for SparklineOperationFactoryType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &unk_1EE1257C0, &protocol descriptor for YahooChartOperationFactoryType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &qword_1EE125938, &protocol descriptor for YahooChartModelEngineType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &qword_1EE1257E0, &protocol descriptor for YahooBaseOperationFactoryType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &unk_1EE1258D8, &protocol descriptor for SDSBaseOperationFactoryType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &qword_1EE1206F0, &protocol descriptor for RemoteConfigurationJSONProvider, 1);
  sub_1DACB8774();

  v70 = v102;
  v68(v50, v104, v102);
  sub_1DACB8134();

  v69(v50, v70);
  sub_1DACB8394();
  sub_1DAA44440(0, &unk_1EE125768, &protocol descriptor for RemoteConfigurationSettingsFactoryType, 1);
  sub_1DACB71F4();
  sub_1DACB8774();

  sub_1DACB83A4();
  __swift_project_boxed_opaque_existential_1(v106, v107);
  sub_1DAA44440(0, &qword_1EE1255A0, MEMORY[0x1E69D68B0], 1);
  v71 = *MEMORY[0x1E69D6500];
  v72 = v89;
  v73 = *(v89 + 104);
  v74 = v86;
  v75 = v87;
  v73(v86, v71, v87);
  sub_1DACB87F4();
  v76 = v72 + 8;
  v77 = *(v72 + 8);
  v89 = v76;
  v77(v74, v75);
  __swift_destroy_boxed_opaque_existential_1(v106);
  sub_1DACB83A4();
  v88 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  sub_1DACB8864();
  v73(v74, v71, v75);
  sub_1DACB87E4();
  v77(v74, v75);
  __swift_destroy_boxed_opaque_existential_1(v106);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125BE8, &protocol descriptor for StockEntityServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE1257A0, &protocol descriptor for WatchlistDeprecationServiceType, 1);
  sub_1DACB8774();

  v78 = v91;
  v79 = v97;
  v80 = v94;
  (v94)(v91, v99, v97);
  sub_1DACB80F4();

  v81 = v93;
  v93(v78, v79);
  v82 = v90;
  v83 = v102;
  v100(v90, v104, v102);
  sub_1DACB8134();

  v101(v82, v83);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125778, &protocol descriptor for NewsStockFeedIdentifierServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125F10, &protocol descriptor for CurrencyServiceType, 1);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &qword_1EE125808, &protocol descriptor for ForYouConfigRecordServiceType, 1);
  sub_1DACB8774();

  (v80)(v78, v92, v79);
  sub_1DACB80F4();

  v81(v78, v79);
  v100(v82, v104, v83);
  sub_1DACB8134();

  v101(v82, v83);
  sub_1DACB8394();
  sub_1DACB8204();
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DAA44440(0, &unk_1EE1257B0, &protocol descriptor for ManagedConfigurationServiceType, 1);
  sub_1DACB8774();
}

void sub_1DAA44304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA4436C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DAA443C8()
{
  result = qword_1EE124020;
  if (!qword_1EE124020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124020);
  }

  return result;
}

uint64_t sub_1DAA44440(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_1DAA44550(uint64_t a1)
{
  v43 = sub_1DACB8264();
  v50 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB89B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB8C04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  sub_1DACB8774();

  (*(v8 + 104))(v10, *MEMORY[0x1E69D6BF0], v7);
  sub_1DACB80F4();

  (*(v8 + 8))(v10, v7);
  v11 = *MEMORY[0x1E69D6AD0];
  v12 = *(v4 + 104);
  v12(v6, v11, v3);
  sub_1DACB8134();

  v13 = *(v4 + 8);
  v13(v6, v3);
  v51 = v4 + 8;
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125958, &protocol descriptor for AppConfigurationStoreType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  type metadata accessor for AppConfiguration(0);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125FE0, &protocol descriptor for QuoteManagerType, 1);
  sub_1DACB8774();

  v49 = v12;
  v12(v6, v11, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125E58, &protocol descriptor for SparklineManagerType, 1);
  sub_1DACB8774();

  v12(v6, v11, v3);
  v52 = v4 + 104;
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125940, &protocol descriptor for StockPriceDataManagerType, 1);
  sub_1DACB8774();

  v14 = v49;
  v49(v6, v11, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125CC8, &protocol descriptor for QuoteDetailManagerType, 1);
  sub_1DACB8774();

  v14(v6, v11, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType, 1);
  sub_1DACB8774();

  v14(v6, v11, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125FF0, &protocol descriptor for ChartManagerType, 0);
  sub_1DACB8774();

  v47 = v11;
  v14(v6, v11, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125F18, &protocol descriptor for CurrencyManagerType, 1);
  sub_1DACB8774();

  v14(v6, v11, v3);
  v15 = v14;
  sub_1DACB8134();

  v13(v6, v3);
  v16 = a1;
  sub_1DACB8384();
  sub_1DAA44440(0, qword_1EE125AF8, &protocol descriptor for CurrencyManagerCacheType, 1);
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125BB8, &protocol descriptor for SDSAuthTokenManagerType, 1);
  sub_1DACB8774();

  v17 = v47;
  v15(v6, v47, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DACB8864();
  sub_1DACB8764();

  v15(v6, v17, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125790, &protocol descriptor for EarningsCalendarEventManagerType, 0);
  sub_1DACB8774();

  v15(v6, v17, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType, 1);
  sub_1DACB8774();

  v18 = *MEMORY[0x1E69D6AB8];
  v15(v6, v18, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE1209B0, &protocol descriptor for ActiveWatchlistProviderType, 1);
  sub_1DACB8774();

  v15(v6, v18, v3);
  sub_1DACB8134();

  v13(v6, v3);
  v48 = v13;
  v45 = v16;
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125930, &protocol descriptor for HeadlineViewingHistoryType, 1);
  sub_1DACB8774();

  v19 = v47;
  v15(v6, v47, v3);
  sub_1DACB8134();

  v13(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125CD0, &protocol descriptor for UserLaunchHistoryType, 0);
  sub_1DACB8774();

  v15(v6, v19, v3);
  sub_1DACB8134();

  v20 = v48;
  v48(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125F20, &protocol descriptor for NetworkMonitorType, 1);
  sub_1DACB8774();

  v15(v6, v19, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125788, &protocol descriptor for AttributionSourceAssetManagerType, 1);
  sub_1DACB8774();

  v21 = v47;
  v15(v6, v47, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125928, &protocol descriptor for RawAttributionProviderType, 1);
  sub_1DACB8774();

  v15(v6, v21, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  sub_1DACB8774();

  v15(v6, v21, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  sub_1DAA469E8(0, &qword_1EE125548, MEMORY[0x1E69E62F8]);
  sub_1DACB8774();

  v15(v6, v21, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  sub_1DAA44440(0, &qword_1EE125918, &protocol descriptor for UnnecessaryWordRemoverType, 1);
  sub_1DACB8774();

  v15(v6, v21, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8384();
  type metadata accessor for SDSAuthTokenRefresher();
  sub_1DACB8764();

  v15(v6, v21, v3);
  sub_1DACB8134();

  v20(v6, v3);
  sub_1DACB8394();
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  sub_1DACB8764();

  sub_1DACB9664();
  sub_1DACB8104();

  v49(v6, v21, v3);
  sub_1DACB8134();

  v48(v6, v3);
  sub_1DACB8394();
  sub_1DACB8764();

  sub_1DACB9664();
  sub_1DACB8104();

  v46 = v3;
  v22 = v49;
  v49(v6, v21, v3);
  sub_1DACB8134();

  v23 = v48;
  v48(v6, v3);
  sub_1DACB8394();
  sub_1DACB8764();

  sub_1DACB9664();
  sub_1DACB8104();

  v24 = v21;
  v25 = v21;
  v26 = v46;
  v22(v6, v24, v46);
  sub_1DACB8134();

  v23(v6, v26);
  sub_1DACB8394();
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DACB8EC4();
  sub_1DACB8774();

  sub_1DACB8394();
  type metadata accessor for WatchlistDeprecationMonitor();
  sub_1DACB8764();

  v27 = v46;
  v22(v6, v25, v46);
  sub_1DACB8134();

  v23(v6, v27);
  sub_1DACB83A4();
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_1DAA44440(0, &qword_1EE1255A0, MEMORY[0x1E69D68B0], 1);
  v41 = *MEMORY[0x1E69D6500];
  v28 = v50;
  v40 = *(v50 + 104);
  v30 = v42;
  v29 = v43;
  v40(v42);
  sub_1DACB87F4();
  v31 = *(v28 + 8);
  v50 = v28 + 8;
  v44 = v31;
  v31(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1DACB83A4();
  v39 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_1DAA44440(0, &unk_1EE125590, MEMORY[0x1E69D6938], 1);
  v32 = v41;
  v33 = v40;
  (v40)(v30, v41, v29);
  sub_1DACB87F4();
  v44(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1DACB83A4();
  v39 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_1DACB86D4();
  v33(v30, v32, v29);
  sub_1DACB87E4();
  v44(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1DACB8394();
  type metadata accessor for SDSAttributionProvider();
  sub_1DACB8764();

  v34 = v47;
  v35 = v46;
  v36 = v49;
  v49(v6, v47, v46);
  sub_1DACB8134();

  v37 = v48;
  v48(v6, v35);
  sub_1DACB8394();
  sub_1DACB8764();

  v36(v6, v34, v35);
  sub_1DACB8134();

  v37(v6, v35);
  sub_1DACB8394();
  type metadata accessor for SDSMetadataCache();
  sub_1DACB8764();

  v36(v6, v34, v35);
  sub_1DACB8134();

  v37(v6, v35);
  sub_1DACB8394();
  type metadata accessor for AppleAttributionProvider();
  sub_1DACB8764();

  v36(v6, v34, v35);
  sub_1DACB8134();

  v37(v6, v35);
  sub_1DACB8394();
  type metadata accessor for YahooAttributionProvider();
  sub_1DACB8764();

  v36(v6, v34, v35);
  sub_1DACB8134();

  return (v37)(v6, v35);
}

uint64_t sub_1DAA45FE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA46020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA46070(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA460C0(uint64_t a1)
{
  sub_1DAA46070(319, &qword_1EE123E50, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DAA46070(319, &qword_1EE123E68, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1DAA46070(319, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1DAA46070(319, &qword_1EE123EF0, &type metadata for ExternalAnalyticsConfiguration, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1DAA46070(319, &qword_1EE123F50, &type metadata for EndpointConfiguration, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1DAA46070(319, &qword_1EE123FB8, &type metadata for StocksKitClientConfig, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1DAA46720();
              if (v7 <= 0x3F)
              {
                sub_1DAA46070(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1DAA46070(319, &unk_1EE11F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1DAA46070(319, &qword_1EE11F780, MEMORY[0x1E69E6810], MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1DAA46070(319, &qword_1EE1211F8, &type metadata for EmbedProxyConfiguration, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1DAA46070(319, qword_1EE1208F8, &type metadata for AppReviewPromptConfiguration, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1DAA46070(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1DAA46778(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1DAA4691C(319, &qword_1EE11FC78, sub_1DAA46980, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1DAA4691C(319, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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
        }
      }
    }
  }
}

void sub_1DAA46720()
{
  if (!qword_1EE123E28)
  {
    v0 = sub_1DACB9834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123E28);
    }
  }
}

void sub_1DAA46778(uint64_t a1)
{
  if (!qword_1EE123E38)
  {
    sub_1DACB7DC4();
    sub_1DAA4680C(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
    v1 = sub_1DACB9834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123E38);
    }
  }
}

uint64_t sub_1DAA4680C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAA46854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA468B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA4691C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA46980(uint64_t a1)
{
  if (!qword_1EE123FE8)
  {
    sub_1DACB88D4();
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE123FE8);
    }
  }
}

void sub_1DAA469E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA44440(255, qword_1EE125A20, &protocol descriptor for SDSMetadataProcessorType, 1);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA46AC8()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB51E8C(0);
  }
}

uint64_t sub_1DAA46B74(uint64_t a1)
{
  v2 = sub_1DACB89B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125490, 0x1E69B5210);
  sub_1DACB8764();

  v6 = *(v3 + 104);
  v7 = *MEMORY[0x1E69D6AD0];
  v6(v5);
  sub_1DACB8134();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1DACB8124();

  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1253E0, 0x1E69B5248);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125388, &protocolRef_FCFavoritesPersonalizer);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE1252E0, &protocolRef_FCPersonalizationAllowlistProvider);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1253F8, 0x1E69B5448);
  sub_1DACB8764();

  v42 = v7;
  (v6)(v5, v7, v2);
  sub_1DACB8134();

  v39 = v8;
  v8(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE125430, &protocolRef_FCPrivateDataContext);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125348, 0x1E69B53B8);
  sub_1DACB8764();

  (v6)(v5, v7, v2);
  sub_1DACB8134();

  v8(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125400, 0x1E69B53C8);
  sub_1DACB8764();

  v9 = v42;
  (v6)(v5, v42, v2);
  v10 = v3 + 104;
  sub_1DACB8134();

  v39(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE1252F8, &protocolRef_FCNewsAppConfigurationManager);
  sub_1DACB8764();

  v11 = a1;
  sub_1DACB8384();
  v37 = sub_1DAA420F4(0, &unk_1EE125410, 0x1E69B5368);
  sub_1DACB8764();

  (v6)(v5, v9, v2);
  sub_1DACB8134();

  v12 = v39;
  v39(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125478, 0x1E69B5558);
  sub_1DACB8764();

  (v6)(v5, v9, v2);
  sub_1DACB8134();

  v12(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1254C0, 0x1E69B5560);
  sub_1DACB8764();

  (v6)(v5, v9, v2);
  sub_1DACB8134();

  v12(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE125338, 0x1E69B5610);
  sub_1DACB8764();

  (v6)(v5, v9, v2);
  sub_1DACB8134();

  v12(v5, v2);
  sub_1DACB8384();
  sub_1DACB8764();

  v13 = v42;
  v40 = v6;
  (v6)(v5, v42, v2);
  sub_1DACB8134();

  v12(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE125340, 0x1E69B53F8);
  sub_1DACB8764();

  (v6)(v5, v13, v2);
  sub_1DACB8134();

  v12(v5, v2);
  v14 = v12;
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125368, 0x1E69B55E8);
  sub_1DACB8764();

  v15 = v42;
  v16 = v10;
  v41 = v11;
  v17 = v40;
  (v40)(v5, v42, v2);
  sub_1DACB8134();

  v14(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE125470, 0x1E69B54F8);
  sub_1DACB8764();

  v18 = v15;
  v17(v5, v15, v2);
  sub_1DACB8134();

  v19 = v39;
  v39(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1253A8, 0x1E69B5530);
  sub_1DACB8764();

  v17(v5, v18, v2);
  sub_1DACB8134();

  v19(v5, v2);
  sub_1DACB8384();
  v37 = sub_1DAA420F4(0, &unk_1EE1253D0, 0x1E69B5300);
  sub_1DACB8764();

  v20 = v18;
  v21 = v18;
  v22 = v40;
  (v40)(v5, v21, v2);
  sub_1DACB8134();

  v19(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125328, &protocolRef_FCIssueReadingHistoryType);
  sub_1DACB8764();

  v22(v5, v20, v2);
  v38 = v16;
  sub_1DACB8134();

  v19(v5, v2);
  sub_1DACB8384();
  sub_1DACB8764();

  v23 = v42;
  v22(v5, v42, v2);
  sub_1DACB8134();

  v19(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1254D0, 0x1E69B5678);
  sub_1DACB8764();

  v24 = v23;
  v22(v5, v23, v2);
  v25 = v22;
  sub_1DACB8134();

  v26 = v39;
  v39(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125378, &protocolRef_FCPaidAccessCheckerType);
  sub_1DACB8764();

  v25(v5, v24, v2);
  sub_1DACB8134();

  v26(v5, v2);
  v27 = v26;
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE1254A0, 0x1E69B51C0);
  sub_1DACB8764();

  v28 = v42;
  v29 = v40;
  (v40)(v5, v42, v2);
  sub_1DACB8134();

  v27(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE125458, &protocolRef_FCAVAssetFactoryType);
  sub_1DACB8764();

  v29(v5, v28, v2);
  v30 = v29;
  sub_1DACB8134();

  v31 = v39;
  v39(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125460, &protocolRef_FCAVAssetPrewarming);
  sub_1DACB8764();

  v30(v5, v28, v2);
  sub_1DACB8134();

  v31(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  v36[3] = *(&xmmword_1EE13E3A8 + 1);
  v37 = xmmword_1EE13E3A8;
  sub_1DACB8764();

  (v40)(v5, v42, v2);
  sub_1DACB8134();

  v31(v5, v2);
  sub_1DACB8384();
  v32 = v31;
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  v36[1] = qword_1EE13E340;
  v36[2] = qword_1EE13E338;
  sub_1DACB8764();

  v33 = v42;
  v34 = v40;
  (v40)(v5, v42, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125310, &protocolRef_FCJSONRecordTreeSourceType);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &qword_1EE1252F0, 0x1E69B54A0);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA44440(0, &unk_1EE125810, &protocol descriptor for NewsConfigurationManagerType, 0);
  sub_1DACB8774();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE125398, &protocolRef_FCReceiptRefresherType);
  sub_1DACB8764();

  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE125320, &protocolRef_FCCoreConfigurationManager);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125438, 0x1E69B5288);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE125420, 0x1E69B54D8);
  sub_1DACB8764();

  sub_1DACB8124();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE1253E8, &protocolRef_FCPurchaseManagerType);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &unk_1EE1253B0, &protocolRef_FCPurchaseProviderType);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA485B8(0, &qword_1EE1252E8, &protocolRef_FCBundleSubscriptionManagerType);
  sub_1DACB8764();

  sub_1DACB8124();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8384();
  sub_1DAA420F4(0, &unk_1EE1254B0, 0x1E69B5648);
  sub_1DACB8764();

  v34(v5, v33, v2);
  sub_1DACB8134();

  v32(v5, v2);
  sub_1DACB8394();
  sub_1DAA420F4(0, &unk_1EE125358, 0x1E69B5378);
  sub_1DACB8764();

  sub_1DACB8394();
  sub_1DACB8764();

  sub_1DACB8394();
  sub_1DAA487C4(0);
  sub_1DACB8774();

  sub_1DACB8394();
  sub_1DACB8774();

  sub_1DACB8394();
  type metadata accessor for FCContextEnvironment(0);
  sub_1DACB8774();
}

uint64_t sub_1DAA485B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1DAA48618()
{
  *&xmmword_1EE13E3A8 = 0x6B636F7453;
  *(&xmmword_1EE13E3A8 + 1) = 0xE500000000000000;
  qword_1EE13E3B8 = 83;
  unk_1EE13E3C0 = 0xE100000000000000;
  *&xmmword_1EE13E3C8 = 45;
  *(&xmmword_1EE13E3C8 + 1) = 0xE100000000000000;
  qword_1EE13E3D8 = 36;
  unk_1EE13E3E0 = 0xE100000000000000;
  *&xmmword_1EE13E3E8 = 0x6C6F626D7973;
  *(&xmmword_1EE13E3E8 + 1) = 0xE600000000000000;
  strcpy(&qword_1EE13E3F8, "stockEntityID");
  unk_1EE13E406 = -4864;
  *&xmmword_1EE13E408 = 0xD000000000000011;
  *(&xmmword_1EE13E408 + 1) = 0x80000001DACE2B90;
  qword_1EE13E418 = 0x4E79616C70736964;
  unk_1EE13E420 = 0xEB00000000656D61;
  strcpy(&xmmword_1EE13E428, "displaySymbol");
  HIWORD(xmmword_1EE13E428) = -4864;
  strcpy(&qword_1EE13E438, "isDeprecated");
  unk_1EE13E445 = 0;
  unk_1EE13E446 = -5120;
  strcpy(&xmmword_1EE13E448, "replacementID");
  HIWORD(xmmword_1EE13E448) = -4864;
}

void sub_1DAA48730()
{
  qword_1EE13E338 = 0xD000000000000012;
  qword_1EE13E340 = 0x80000001DACF0400;
  strcpy(&qword_1EE13E348, "configuration");
  unk_1EE13E356 = -4864;
  qword_1EE13E358 = 0xD000000000000014;
  unk_1EE13E360 = 0x80000001DACE2AB0;
  qword_1EE13E368 = 0xD000000000000016;
  unk_1EE13E370 = 0x80000001DACE2AD0;
  qword_1EE13E378 = 0xD00000000000001DLL;
  unk_1EE13E380 = 0x80000001DACE2AF0;
}

void sub_1DAA487C4(uint64_t a1)
{
  if (!qword_1EE1254F0)
  {
    sub_1DAA485B8(255, &qword_1EE125308, &protocolRef_FCPrivateDataSyncCondition);
    v1 = sub_1DACB9724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1254F0);
    }
  }
}

void sub_1DAA48854(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA488A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACB9724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA488F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA48940(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAA48994(uint64_t a1)
{
  sub_1DACB8384();
  sub_1DACB7AB4();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();
}

uint64_t sub_1DAA48B78(uint64_t a1)
{
  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();

  sub_1DACB8384();
  sub_1DACB8774();
}

uint64_t sub_1DAA48CA0()
{
  v0 = sub_1DACB89B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8384();
  sub_1DAA48EB0();
  sub_1DACB8764();

  v4 = *MEMORY[0x1E69D6AD0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1DACB8134();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1DACB8394();
  sub_1DACB9094();
  sub_1DACB90A4();
  sub_1DACB8764();

  v5(v3, v4, v0);
  sub_1DACB8134();

  return (v6)(v3, v0);
}

unint64_t sub_1DAA48EB0()
{
  result = qword_1EE11F7F8;
  if (!qword_1EE11F7F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F7F8);
  }

  return result;
}

uint64_t sub_1DAA48F14()
{
  v0 = sub_1DACB8264();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB83A4();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1DACB86B4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6500], v0);
  sub_1DACB87E4();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t type metadata accessor for Quote(uint64_t a1)
{
  result = qword_1EE1202D0;
  if (!qword_1EE1202D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA490B8(uint64_t a1)
{
  sub_1DAA49218(319, &qword_1EE11F998, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    sub_1DAA49218(319, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1DAA492B4(319);
      if (v3 <= 0x3F)
      {
        sub_1DAA49218(319, &qword_1EE1237C0, &type metadata for QuoteSource);
        if (v4 <= 0x3F)
        {
          sub_1DACB7CC4();
          if (v5 <= 0x3F)
          {
            sub_1DACB7F54();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DAA49218(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA49264(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA492B4(uint64_t a1)
{
  if (!qword_1EE125280)
  {
    sub_1DACB7CC4();
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE125280);
    }
  }
}

void sub_1DAA4932C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA493B0(uint64_t a1)
{
  sub_1DAA4932C(319, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DAA49610(319);
    if (v2 <= 0x3F)
    {
      sub_1DAA495C0(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DACB7F54();
        if (v4 <= 0x3F)
        {
          sub_1DACB7CC4();
          if (v5 <= 0x3F)
          {
            sub_1DAA495C0(319, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DAA4950C(uint64_t a1)
{
  sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    sub_1DAA495C0(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAA495C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA49610(uint64_t a1)
{
  if (!qword_1EE11FC48)
  {
    sub_1DACB7CC4();
    sub_1DAA49674();
    v1 = sub_1DACB9254();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FC48);
    }
  }
}

unint64_t sub_1DAA49674()
{
  result = qword_1EE123A48;
  if (!qword_1EE123A48)
  {
    sub_1DACB7CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123A48);
  }

  return result;
}

uint64_t type metadata accessor for QuoteDetail(uint64_t a1)
{
  result = qword_1EE1238D0;
  if (!qword_1EE1238D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA49718(uint64_t a1)
{
  sub_1DAA49984(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DAA49984(319, &qword_1EE11F780, MEMORY[0x1E69E6810], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DAA49A38(319, &qword_1EE125280, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1DAA49984(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DAA49A38(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
          if (v5 <= 0x3F)
          {
            sub_1DAA49A38(319, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
            if (v6 <= 0x3F)
            {
              sub_1DAA49984(319, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1DAA49984(319, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_1DACB7CC4();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1DAA49984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA499D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA49A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA49A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1DAA49B10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v2 = [result news_core_ConfigurationManager];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA49BA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125490, 0x1E69B5210);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1DAA49C08(void *a1)
{
  sub_1DAA4A0F8(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &qword_1EE1253E0, 0x1E69B5248);
  v10 = sub_1DACB8244();
  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125810, &protocol descriptor for NewsConfigurationManagerType, 0);
  sub_1DACB8254();
  v12 = v42;
  if (!v42)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = 1;
  v14 = FCURLForContainerizedUserAccountCachesDirectory();
  v38 = v12;
  v39 = v11;
  if (v14)
  {
    v15 = v14;
    sub_1DACB7A44();

    v13 = 0;
  }

  v16 = sub_1DACB7AB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v37 = v9;
  v18(v9, v13, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB8234();
  v40 = *(v17 + 48);
  if (v40(v5, 1, v16) == 1)
  {
    goto LABEL_19;
  }

  v19 = v41;
  (*(v17 + 32))(v41, v5, v16);
  v18(v19, 0, 1, v16);
  v20 = [objc_allocWithZone(type metadata accessor for PrivateDataActionProvider()) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125348, 0x1E69B53B8);
  v21 = sub_1DACB8244();
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE11F858, &protocolRef_FCAppActivityMonitor);
  v23 = sub_1DACB8244();
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &qword_1EE1252F0, 0x1E69B54A0);
  v25 = sub_1DACB8244();
  if (!v25)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = v37;
  if (v40(v37, 1, v16) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_1DACB7A04();
    (*(v17 + 8))(v27, v16);
  }

  v29 = v41;
  if (v40(v41, 1, v16) == 1)
  {
    v30 = 0;
  }

  else
  {
    v31 = v29;
    v30 = sub_1DACB7A04();
    (*(v17 + 8))(v31, v16);
  }

  v32 = objc_allocWithZone(MEMORY[0x1E69B5210]);
  LOWORD(v35) = 0;
  v33 = v39;
  v34 = [v32 initWithConfiguration:v39 configurationManager:v38 contentHostDirectory:v28 privateDataHostDirectory:v30 privateDataActionProvider:v20 networkBehaviorMonitor:v22 appActivityMonitor:v24 desiredHeadlineFieldOptions:0xF8FFFFFC1 feedUsage:2 lockStoreFrontIfNeeded:v35 deviceIsiPad:0 backgroundTaskable:v26 privateDataSyncAvailability:0 pptContext:?];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v34)
  {
    goto LABEL_23;
  }
}

void sub_1DAA4A0F8(uint64_t a1)
{
  if (!qword_1EE1263D0)
  {
    sub_1DACB7AB4();
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1263D0);
    }
  }
}

void *sub_1DAA4A150(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FCContextEnvironment(0);
  result = sub_1DACB8254();
  if ((v3 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E69B5248]) initWithEnvironment_];
  }

  __break(1u);
  return result;
}

void *sub_1DAA4A1D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8254();
  if (v6 <= 3u)
  {
    v5 = 2;
    if (v6 != 2)
    {
      v5 = 3;
    }

    if (v6 <= 1u)
    {
      v4 = v6 != 0;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_15;
  }

  if (v6 <= 5u)
  {
    v4 = 4;
    if (v6 != 4)
    {
      v4 = 6;
    }

    goto LABEL_15;
  }

  if (v6 == 6)
  {
    v4 = 7;
    goto LABEL_15;
  }

  if (v6 == 7)
  {
    v4 = 8;
LABEL_15:
    *a2 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for StockType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

  return (v8 + 1);
}

uint64_t sub_1DAA4A3E4()
{
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();
}

uint64_t sub_1DAA4A46C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAA4A8CC(0, &qword_1EE124138, sub_1DAA4A92C, &type metadata for NewsEnvironment);
  v13[3] = v8;
  v9 = sub_1DACB9324();
  v13[1] = v10;
  v13[2] = v9;
  v22 = 0;
  *v7 = sub_1DACB9324();
  v7[1] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  sub_1DAA4A9E8(0, &qword_1EE123B68, &qword_1EE124148, &type metadata for NewsEnvironment);
  sub_1DAA4AA40(0, &qword_1EE124148, &type metadata for NewsEnvironment);
  *(swift_allocObject() + 16) = xmmword_1DACC7630;
  v21 = 0;
  sub_1DACB8044();
  v20 = 1;
  sub_1DACB8044();
  v19 = 2;
  sub_1DACB8044();
  v18 = 3;
  sub_1DACB8044();
  v17 = 4;
  sub_1DACB8044();
  v16 = 5;
  sub_1DACB8044();
  v15 = 6;
  sub_1DACB8044();
  v14 = 7;
  sub_1DACB8044();
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  sub_1DAA4AA98();
  result = sub_1DACB8064();
  qword_1EE124168 = result;
  return result;
}

void sub_1DAA4A8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1DACB80A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAA4A92C()
{
  result = qword_1EE124E70;
  if (!qword_1EE124E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E70);
  }

  return result;
}

unint64_t sub_1DAA4A994()
{
  result = qword_1EE124E68;
  if (!qword_1EE124E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E68);
  }

  return result;
}

void sub_1DAA4A9E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA4AA40(255, a3, a4);
    v5 = sub_1DACBA124();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA4AA40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACB8054();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAA4AA98()
{
  result = qword_1EE124E78;
  if (!qword_1EE124E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E78);
  }

  return result;
}

uint64_t sub_1DAA4AAEC(uint64_t a1)
{
  v2 = sub_1DAA4AB40();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAA4AB40()
{
  result = qword_1EE124E60;
  if (!qword_1EE124E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E60);
  }

  return result;
}

void sub_1DAA4AB94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x69746375646F7270;
  v5 = 0xE500000000000000;
  v6 = 0x316F6D6564;
  v7 = 0xE500000000000000;
  if (v2 != 6)
  {
    v6 = 0x326F6D6564;
    v5 = 0xE500000000000000;
  }

  v8 = 0x6C65766564;
  if (v2 != 4)
  {
    v8 = 0x786F62646E6173;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 24945;
  if (v2 != 2)
  {
    v10 = 1953719668;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E6967617473;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1DAA4AC78(uint64_t a1)
{
  v2 = sub_1DAA4AB40();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAA4ACCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA4AB40();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

StocksCore::NewsEnvironment_optional __swiftcall NewsEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void *sub_1DAA4AD90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v21)
  {
    v6 = type metadata accessor for NewsConfigurationManager(0);
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers;
    *&v7[v8] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v9 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers;
    *&v7[v9] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v10 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
    v11 = type metadata accessor for AppConfiguration(0);
    (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
    *&v7[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig] = 0;
    v12 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock;
    sub_1DACB8164();
    sub_1DACB8194();
    swift_allocObject();
    *&v7[v12] = sub_1DACB8184();
    sub_1DAA4D678(v20, &v7[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager]);
    v19.receiver = v7;
    v19.super_class = v6;
    v13 = objc_msgSendSuper2(&v19, sel_init);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v16 = *(v15 + 16);
    v17 = v13;
    v16(v14, v15);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_1DACB83D4();

    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_1F5684510;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA4B038()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA4B070@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4B120(v4);
  v5 = type metadata accessor for StubAppConfigurationManager();
  swift_allocObject();
  result = sub_1DAA4CD24(v4);
  a1[3] = v5;
  a1[4] = &off_1F56857B0;
  *a1 = result;
  return result;
}

uint64_t sub_1DAA4B120@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 3872);
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(v3 + 536);
  v5 = sub_1DACB88D4();
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v55 = v3;
  v6(a1 + *(v3 + 560), 1, 1, v5);
  *a1 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v7;
  *(a1 + 24) = xmmword_1DACD4070;
  *(a1 + 40) = xmmword_1DACD4080;
  *(a1 + 56) = vdupq_n_s64(0x64uLL);
  *(a1 + 72) = 1;
  *(a1 + 80) = v7;
  *(a1 + 88) = 257;
  *(a1 + 96) = 0x3F50624DD2F1A9FCLL;
  *(a1 + 104) = 257;
  *(a1 + 112) = vdupq_n_s64(3uLL);
  *(a1 + 128) = xmmword_1DACD4090;
  *(a1 + 144) = xmmword_1DACD40A0;
  *(a1 + 160) = 0x4092C00000000000;
  *(a1 + 168) = 0xD00000000000002CLL;
  *(a1 + 176) = 0x80000001DACEDBE0;
  v8 = vdupq_n_s64(0x4122750000000000uLL);
  *(a1 + 184) = vdupq_n_s64(0x4082C00000000000uLL);
  *(a1 + 200) = v8;
  *(a1 + 216) = v8;
  *(a1 + 232) = xmmword_1DACD40B0;
  *(a1 + 248) = 1;
  *(a1 + 250) = 0;
  *(a1 + 256) = vdupq_n_s64(0xCuLL);
  *(a1 + 272) = vdupq_n_s64(0x40CC200000000000uLL);
  *(a1 + 288) = xmmword_1DACD40C0;
  *(a1 + 304) = xmmword_1DACD40D0;
  *(a1 + 320) = 0x404E000000000000;
  *(a1 + 328) = 2;
  *(a1 + 336) = 0x3FF8000000000000;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0x40F5180000000000;
  strcpy((a1 + 1384), "WS-143441-en");
  *(a1 + 1397) = 0;
  *(a1 + 1398) = -5120;
  *(a1 + 1400) = 257;
  *(a1 + 1408) = xmmword_1DACD40E0;
  strcpy((a1 + 1424), "YS-143441-en");
  *(a1 + 1437) = 0;
  *(a1 + 1438) = -5120;
  *(a1 + 1440) = 0;
  *(a1 + 1448) = 0xE000000000000000;
  *(a1 + 1456) = xmmword_1DACD40F0;
  *(a1 + 1472) = 0x80000001DACE6EB0;
  *(a1 + 1480) = v7;
  *(a1 + 1488) = 0x40D5180000000000;
  *(a1 + 1496) = 0xD00000000000002FLL;
  *(a1 + 1504) = 0x80000001DACEDC10;
  *(a1 + 1512) = v7;
  *(a1 + 1520) = 0xD00000000000005ELL;
  *(a1 + 1528) = 0x80000001DACEDC40;
  *(a1 + 1536) = 23899;
  *(a1 + 1544) = 0xE200000000000000;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 0xE000000000000000;
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0x3FF0000000000000;
  *(a1 + 1584) = 0x3FF0000000000000;
  *(a1 + 400) = v7;
  *(a1 + 408) = v7;
  sub_1DAA4BB18(v57);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EE1242C0;
  v10 = qword_1EE1242C8;
  sub_1DACB71E4();
  v11 = sub_1DAA4BBA0(v9, v10);
  v53 = v12;
  v54 = v11;

  v13 = qword_1EE1242C0;
  v14 = qword_1EE1242C8;
  sub_1DACB71E4();
  v15 = sub_1DAA4C06C(v13, v14);
  v51 = v16;
  v52 = v15;

  v17 = qword_1EE1242C0;
  v18 = qword_1EE1242C8;
  sub_1DACB71E4();
  v19 = sub_1DAA4C248(v17, v18);
  v50 = v20;

  v21 = qword_1EE1242C0;
  v22 = qword_1EE1242C8;
  sub_1DACB71E4();
  v23 = sub_1DAA4C424(v21, v22);
  v25 = v24;

  v26 = qword_1EE1242C0;
  v27 = qword_1EE1242C8;
  sub_1DACB71E4();
  v28 = sub_1DAA4C600(v26, v27);
  v30 = v29;

  *(a1 + 544) = 0u;
  *(a1 + 560) = xmmword_1DACD4100;
  v31 = v57[8];
  v32 = v57[9];
  v33 = v57[6];
  *(a1 + 736) = v57[7];
  *(a1 + 752) = v31;
  *(a1 + 768) = v32;
  v34 = v57[4];
  v35 = v57[5];
  v36 = v57[2];
  *(a1 + 672) = v57[3];
  *(a1 + 688) = v34;
  *(a1 + 704) = v35;
  *(a1 + 720) = v33;
  v37 = v57[0];
  v38 = v57[1];
  *(a1 + 608) = 0u;
  *(a1 + 624) = v37;
  v64 = 1;
  v62 = 1;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 433) = 1;
  *(a1 + 435) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 449) = *v65;
  *(a1 + 452) = *&v65[3];
  *(a1 + 456) = 0;
  *(a1 + 464) = v54;
  *(a1 + 472) = v53;
  *(a1 + 480) = v52;
  *(a1 + 488) = v51;
  *(a1 + 496) = v19;
  *(a1 + 504) = v50;
  *(a1 + 512) = v23;
  *(a1 + 520) = v25;
  *(a1 + 528) = v28;
  *(a1 + 536) = v30;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 784) = v58;
  *(a1 + 640) = v38;
  *(a1 + 656) = v36;
  *(a1 + 792) = 0;
  *(a1 + 800) = v64;
  *(a1 + 801) = *v63;
  *(a1 + 804) = *&v63[3];
  *(a1 + 808) = 0;
  *(a1 + 816) = v62;
  *(a1 + 817) = *v61;
  *(a1 + 820) = *&v61[3];
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0xE000000000000000;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 882) = 0u;
  *(a1 + 898) = v59;
  *(a1 + 902) = v60;
  *(a1 + 904) = 25;
  v39 = MEMORY[0x1E69E7CC0];
  *(a1 + 912) = MEMORY[0x1E69E7CC0];
  *(a1 + 920) = 1;
  __src[0] = 0;
  LOBYTE(v68[0]) = 0;
  LOBYTE(v67[0]) = 0;
  LOBYTE(v66[0]) = 0;
  *(a1 + 928) = xmmword_1DACD4110;
  *(a1 + 944) = 0;
  *(a1 + 945) = v68[0];
  *(a1 + 948) = *(v68 + 3);
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 961) = v67[0];
  *(a1 + 964) = *(v67 + 3);
  *(a1 + 968) = 1;
  *(a1 + 976) = 0;
  v40 = v66[0];
  *(a1 + 980) = *(v66 + 3);
  *(a1 + 977) = v40;
  *(a1 + 984) = 86400;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0x3FA999999999999ALL;
  *(a1 + 1040) = 0;
  *(a1 + 1008) = xmmword_1DACD4120;
  *(a1 + 1024) = 0u;
  *(a1 + 1048) = 0x3FA999999999999ALL;
  *(a1 + 1056) = xmmword_1DACD4130;
  *(a1 + 1072) = xmmword_1DACD4140;
  *(a1 + 1088) = xmmword_1DACD4120;
  *(a1 + 1104) = xmmword_1DACD4150;
  *(a1 + 1120) = xmmword_1DACD4160;
  *(a1 + 1136) = xmmword_1DACD4170;
  *(a1 + 1152) = 0;
  sub_1DAA4C870(__src);
  memcpy(__dst, __src, 0x46BuLL);
  memcpy(&__dst[1136], __src, 0x46BuLL);
  memcpy((a1 + 1592), __dst, 0x8DBuLL);
  *(a1 + 3859) = 0;
  *(a1 + 360) = 1;
  *(a1 + 368) = vdupq_n_s64(0x4143C68000000000uLL);
  *(a1 + 384) = xmmword_1DACD4180;
  *(a1 + 1160) = 32123;
  *(a1 + 1168) = 0xE200000000000000;
  *(a1 + 3864) = 0x3FD0000000000000;
  *v2 = 0;
  *(a1 + 3880) = 2;
  v2[16] = 0;
  *(a1 + 3896) = 2592000;
  v2[32] = 0;
  *(a1 + 3912) = 0x3FF0000000000000;
  v2[48] = 0;
  *(a1 + 3928) = 0x3FF0000000000000;
  v2[64] = 0;
  *(a1 + 3944) = 0;
  v2[80] = 1;
  *(a1 + 1272) = 600;
  *(a1 + 1280) = xmmword_1DACD4190;
  *(a1 + 1296) = 180;
  *(a1 + 1304) = 0x4008000000000000;
  *(a1 + 1312) = 0xD00000000000001CLL;
  *(a1 + 1320) = 0x80000001DACEDCA0;
  *(a1 + 1328) = 0xD00000000000002BLL;
  *(a1 + 1336) = 0x80000001DACEDCC0;
  *(a1 + 1344) = 0;
  *(a1 + 1176) = 0;
  v41 = objc_opt_self();
  [v41 fc_timeIntervalOneDay];
  *(a1 + 3960) = v42;
  *(a1 + 3968) = 0;
  [v41 fc_timeIntervalOneDay];
  *(a1 + 3976) = v43 * 15.0;
  *(a1 + 1184) = 0xFFFFFFFFLL;
  *(a1 + 1192) = v39;
  *(a1 + 3984) = 256;
  *(a1 + 3992) = 0u;
  *(a1 + 1200) = 0xFFFFFFFFLL;
  *(a1 + 1208) = 0xC082C00000000000;
  *(a1 + 1216) = 0x4082C00000000000;
  *(a1 + 1224) = v39;
  *(a1 + 1232) = v39;
  *(a1 + 1240) = v39;
  v2[136] = 1;
  *(a1 + 4016) = xmmword_1DACD41A0;
  *(a1 + 4032) = 1;
  *(a1 + 4040) = 0u;
  *(a1 + 1248) = v39;
  *(a1 + 1256) = v39;
  *(a1 + 1264) = v39;
  *(a1 + 1352) = 1296000;
  v44 = sub_1DAA5518C(&unk_1F567D150);
  swift_arrayDestroy();
  *(a1 + 1360) = v44;
  *(a1 + 1368) = 0u;
  *(a1 + v55[135]) = 0;
  *(a1 + 4056) = 0;
  v2[192] = 0;
  *(a1 + 4072) = 0x7FEFFFFFFFFFFFFFLL;
  v45.f64[0] = NAN;
  v45.f64[1] = NAN;
  *(a1 + 4080) = vnegq_f64(v45);
  *(a1 + 4096) = 0x7FFFFFFFFFFFFFFFLL;
  v2[232] = 0;
  *(a1 + 4112) = 0;
  *(a1 + 4128) = 0;
  *(a1 + 4120) = 0;
  *(a1 + 4136) = 0xE000000000000000;
  *(a1 + 4144) = 0;
  v2[280] = 0;
  *(a1 + 4160) = 0;
  v2[296] = 0;
  *(a1 + 4176) = 0;
  *(a1 + 4192) = 0;
  *(a1 + 4184) = 0;
  *(a1 + 4200) = 0;
  *(a1 + 4208) = 1;
  *(a1 + 4216) = 0x415DA9C000000000;
  v2[352] = 1;
  *(a1 + 4232) = 0;
  *(a1 + 4248) = 0xFFFFFFFFLL;
  *(a1 + 4256) = 0xFFFFFFFFLL;
  sub_1DAA46854(0, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E69E6F90]);
  sub_1DACB7DC4();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1DACC1D40;
  sub_1DACB7DB4();
  sub_1DACB7DB4();
  v47 = sub_1DAA4CB70(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *(a1 + 4264) = v47;
  *(a1 + 4272) = 0;
  *(a1 + 4240) = v39;
  v2[408] = 0;
  *(a1 + 4288) = 0;
  *(a1 + v55[136]) = 0;
  *(a1 + v55[137]) = 1;
  *(a1 + v55[138]) = 0;
  v49 = a1 + v55[139];
  *v49 = 0;
  *(v49 + 8) = 1;
  return result;
}

double sub_1DAA4BB18(uint64_t a1)
{
  result = 0.0;
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
  *(a1 + 160) = 1;
  return result;
}

void sub_1DAA4BB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA4BBA0(uint64_t a1, uint64_t a2)
{
  sub_1DAA4BB3C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC5AA0;
  *(inited + 32) = sub_1DACB9324();
  *(inited + 40) = v5;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001DACE7890;
  *(inited + 64) = sub_1DACB9324();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001DACE78B0;
  *(inited + 96) = sub_1DACB9324();
  *(inited + 104) = v7;
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x80000001DACE78D0;
  *(inited + 128) = sub_1DACB9324();
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = 0x80000001DACE78F0;
  *(inited + 160) = sub_1DACB9324();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001DACE7910;
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    sub_1DACB71E4();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1DAA4BD7C()
{
  if (!qword_1EE123FC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123FC0);
    }
  }
}

unint64_t sub_1DAA4BDD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DAA4BEE0();
    v3 = sub_1DACB9EA4();
    sub_1DACB71F4();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_1DACB71E4();
      sub_1DACB71E4();
      result = sub_1DAA4BF3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_1DAA4BEE0()
{
  if (!qword_1EE123D30)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123D30);
    }
  }
}

unint64_t sub_1DAA4BF3C(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  sub_1DACB9404();
  v4 = sub_1DACBA2C4();

  return sub_1DAA4BFB4(a1, a2, v4);
}

unint64_t sub_1DAA4BFB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DACBA174())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DAA4C06C(uint64_t a1, uint64_t a2)
{
  sub_1DAA4BB3C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC5AA0;
  *(inited + 32) = sub_1DACB9324();
  *(inited + 40) = v5;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001DACE77F0;
  *(inited + 64) = sub_1DACB9324();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001DACE7810;
  *(inited + 96) = sub_1DACB9324();
  *(inited + 104) = v7;
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x80000001DACE7830;
  *(inited + 128) = sub_1DACB9324();
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = 0x80000001DACE7850;
  *(inited + 160) = sub_1DACB9324();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001DACE7870;
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    sub_1DACB71E4();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_1DAA4C248(uint64_t a1, uint64_t a2)
{
  sub_1DAA4BB3C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC5AA0;
  *(inited + 32) = sub_1DACB9324();
  *(inited + 40) = v5;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001DACE7750;
  *(inited + 64) = sub_1DACB9324();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001DACE7770;
  *(inited + 96) = sub_1DACB9324();
  *(inited + 104) = v7;
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x80000001DACE7790;
  *(inited + 128) = sub_1DACB9324();
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = 0x80000001DACE77B0;
  *(inited + 160) = sub_1DACB9324();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001DACE77D0;
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    sub_1DACB71E4();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_1DAA4C424(uint64_t a1, uint64_t a2)
{
  sub_1DAA4BB3C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC5AA0;
  *(inited + 32) = sub_1DACB9324();
  *(inited + 40) = v5;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001DACE76B0;
  *(inited + 64) = sub_1DACB9324();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001DACE76D0;
  *(inited + 96) = sub_1DACB9324();
  *(inited + 104) = v7;
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x80000001DACE76F0;
  *(inited + 128) = sub_1DACB9324();
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = 0x80000001DACE7710;
  *(inited + 160) = sub_1DACB9324();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001DACE7730;
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    sub_1DACB71E4();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_1DAA4C600(uint64_t a1, uint64_t a2)
{
  sub_1DAA4BB3C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC5AA0;
  *(inited + 32) = sub_1DACB9324();
  *(inited + 40) = v5;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001DACE7610;
  *(inited + 64) = sub_1DACB9324();
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001DACE7630;
  *(inited + 96) = sub_1DACB9324();
  *(inited + 104) = v7;
  *(inited + 112) = 0xD000000000000017;
  *(inited + 120) = 0x80000001DACE7650;
  *(inited + 128) = sub_1DACB9324();
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000017;
  *(inited + 152) = 0x80000001DACE7670;
  *(inited + 160) = sub_1DACB9324();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x80000001DACE7690;
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  if (*(v10 + 16) && (v11 = sub_1DAA4BF3C(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    sub_1DACB71E4();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_1DAA4C7EC()
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EE1242C0;
  sub_1DACB71E4();
  return v0;
}

uint64_t sub_1DAA4C8A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DACBA284();
  sub_1DACB9404();
  v8 = sub_1DACBA2C4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_1DACB71E4();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DACB71E4();
    sub_1DAA4C9F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DAA4C9F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DAA99FFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DAB8AA08();
      goto LABEL_16;
    }

    sub_1DAA99DB4(v8 + 1);
  }

  v10 = *v4;
  sub_1DACBA284();
  sub_1DACB9404();
  result = sub_1DACBA2C4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DACBA174();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DACBA1E4();
  __break(1u);
  return result;
}

uint64_t sub_1DAA4CB70(uint64_t a1)
{
  v2 = sub_1DACB7DC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DAA55224();
  result = MEMORY[0x1E1277300](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1DAA5527C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1DAA4CCDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA4CD24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  sub_1DAA55824(a1, v6);
  sub_1DAA4CF18(0, &qword_1EE1240F8, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6550]);
  swift_allocObject();
  *(v1 + 32) = sub_1DACB8424();
  sub_1DAA55824(a1, v6);
  sub_1DAA4CF18(0, &qword_1EE124100, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v7 = sub_1DACB83B4();
  sub_1DAA4CFDC(a1, type metadata accessor for AppConfiguration);
  *(v2 + 24) = v7;
  return v2;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore15FlexiblePaywallVSg(uint64_t a1)
{
  v1 = *(a1 + 160);
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

uint64_t sub_1DAA4CEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

void sub_1DAA4CF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA4CF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4CFDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4D03C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4D09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4D0FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4D15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA4D1D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 536);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAA4D2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 536);

    return v10(v11, a2, v9);
  }
}

void *sub_1DAA4D39C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v5)
  {
    sub_1DAA4D460(&v4, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v3 + 8))(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA4D460(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for NewsConfigurationManager(uint64_t a1)
{
  result = qword_1EE120E18;
  if (!qword_1EE120E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA4D520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA4D584(uint64_t a1)
{
  sub_1DAA4D520(319, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DAA4D678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DAA4D6DC()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE11D798 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v3);
  sub_1DACB7A14();
  return (*(v1 + 8))(v3, v0);
}

void sub_1DAA4D810()
{
  type metadata accessor for AppGroup(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  v2 = sub_1DACB7AB4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001DACECEC0;
  v3 = (v0 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain);
  *v3 = 0xD00000000000001BLL;
  v3[1] = 0x80000001DACECEC0;
  v4 = *MEMORY[0x1E69D6E98];
  v5 = sub_1DACB8034();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DACB92F4();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    *(v0 + OBJC_IVAR____TtC10StocksCore8AppGroup_userDefaults) = v8;
    qword_1EE11D7A0 = v0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for AppGroup(uint64_t a1)
{
  result = qword_1EE125738;
  if (!qword_1EE125738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA4D9B0(uint64_t a1)
{
  sub_1DAA4A0F8(319);
  if (v1 <= 0x3F)
  {
    sub_1DACB8034();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DAA4DA94@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA4A0F8(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_1DAA4DC58(v1 + v9, v8);
  v10 = sub_1DACB7AB4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1DAA4DDD0(v8);
  sub_1DAA4DE2C(a1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1DAA4E108(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1DAA4DC58(uint64_t a1, uint64_t a2)
{
  sub_1DAA4A0F8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAA4DCBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACBA124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA4DD10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA4436C(255, a3, a4);
    v5 = sub_1DACBA124();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA4DD68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA4436C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAA4DDD0(uint64_t a1)
{
  sub_1DAA4A0F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA4DE2C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1DACB92F4();
  v13 = [v11 containerURLForSecurityApplicationGroupIdentifier_];

  if (v13)
  {
    sub_1DACB7A44();

    v14 = *(v5 + 32);
    v14(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    return (v14)(a3, v10, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    v16 = NSTemporaryDirectory();
    v17 = sub_1DACB9324();
    v19 = v18;

    v20 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    v21 = [v20 UUIDString];

    v22 = sub_1DACB9324();
    v24 = v23;

    v25[0] = v17;
    v25[1] = v19;
    sub_1DACB71E4();
    MEMORY[0x1E1276F20](v22, v24);

    sub_1DACB79D4();

    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_1DAA4DDD0(v10);
    }
  }

  return result;
}

uint64_t sub_1DAA4E108(uint64_t a1, uint64_t a2)
{
  sub_1DAA4A0F8(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DAA4E1D0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B53B8]);

  return [v0 initForLoggingOnly];
}

void *sub_1DAA4E208(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA487C4(0);
  result = sub_1DACB8254();
  if (v5)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B54A0]);
    sub_1DAA485B8(0, &qword_1EE125308, &protocolRef_FCPrivateDataSyncCondition);
    v3 = sub_1DACB9634();

    v4 = [v2 initWithConditions_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAA4E2CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA4E470(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACD6140;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69B54B8]) init];
  *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69B54A8]) init];
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69B54C0]) init];
  *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69B54B0]) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v8)
  {
    type metadata accessor for NewsRegionCheck();
    v6 = swift_allocObject();
    result = sub_1DAA4E4E0(&v7, v6 + 16);
    *(v4 + 64) = v6;
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DAA4E420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA4E470(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DACBA124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DAA4E530()
{
  v78 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4F1B0(0);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D520(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v70 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - v11;
  v83 = type metadata accessor for AppConfiguration(0);
  v13 = *(v83 - 8);
  v14 = MEMORY[0x1EEE9AC00](v83);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v70 - v16;
  v81 = *(v0 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock);
  sub_1DACB8144();
  v18 = *(v0 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager + 24);
  v19 = *(v0 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager), v18);
  v20 = v18;
  v21 = v0;
  (*(v19 + 8))(v20, v19);
  v76 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig;
  v77 = v13;
  v22 = *(v0 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig);
  if (!v22)
  {
    goto LABEL_9;
  }

  v74 = v10;
  sub_1DAA55824(v17, v12);
  v23 = v83;
  (*(v13 + 56))(v12, 0, 1, v83);
  v24 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
  swift_beginAccess();
  v25 = *(v75 + 48);
  sub_1DAA4F9FC(v12, v4);
  sub_1DAA4F9FC(v21 + v24, &v4[v25]);
  v26 = *(v13 + 48);
  if (v26(v4, 1, v23) != 1)
  {
    v27 = v74;
    sub_1DAA4F9FC(v4, v74);
    if (v26(&v4[v25], 1, v83) != 1)
    {
      v68 = v82;
      sub_1DAA4F708(&v4[v25], v82);
      swift_unknownObjectRetain();
      v69 = sub_1DAA4FA90(v27);
      sub_1DAA4CF7C(v68, type metadata accessor for AppConfiguration);
      sub_1DAA54190(v12);
      sub_1DAA4CF7C(v27, type metadata accessor for AppConfiguration);
      sub_1DAA54190(v4);
      if (v69)
      {
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
LABEL_9:
      v28 = *(v17 + 180);
      v29 = *(v17 + 181);
      v30 = v82;
      sub_1DAA55824(v17, v82);
      v70 = *(v17 + 183);
      v31 = *(v17 + 184);
      v32 = *(v17 + 185);
      v33 = *(v17 + 186);
      v34 = *(v17 + 1544);
      v88 = *(v17 + 1528);
      v89 = v34;
      v90 = *(v17 + 195);
      v35 = *(v17 + 1512);
      v86 = *(v17 + 1496);
      v87 = v35;
      memcpy(v91, v17 + 1592, sizeof(v91));
      v36 = *(v17 + 51);
      memcpy(v97, v17 + 416, 0x1F9uLL);
      v37 = *(v17 + 61);
      v94 = *(v17 + 60);
      v95 = v37;
      v96 = v17[992];
      v38 = *(v17 + 58);
      v93 = *(v17 + 59);
      v92 = v38;
      v39 = *(v17 + 41);
      v71 = *(v17 + 182);
      v72 = v39;
      v40 = *(v17 + 42);
      v75 = v21;
      v41 = v17[344];
      v43 = *(v17 + 48);
      v42 = *(v17 + 49);
      v73 = v17[3859];
      v74 = type metadata accessor for NewsCoreConfiguration(0);
      v44 = objc_allocWithZone(v74);
      v45 = &v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
      *v45 = v28;
      v45[1] = v29;
      sub_1DAA55824(v30, &v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration]);
      v46 = &v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
      *v46 = v70;
      v46[1] = v31;
      v46[2] = v32;
      v46[3] = v33;
      v47 = &v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
      v48 = v90;
      v50 = v88;
      v49 = v89;
      *(v47 + 1) = v87;
      *(v47 + 2) = v50;
      *(v47 + 3) = v49;
      *(v47 + 8) = v48;
      *v47 = v86;
      memcpy(&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], v91, 0x8DBuLL);
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v36;
      memcpy(&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], v97, 0x1F9uLL);
      v51 = &v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
      v52 = v96;
      v53 = v95;
      v54 = v94;
      *(v51 + 1) = v93;
      *(v51 + 2) = v54;
      *(v51 + 3) = v53;
      v51[64] = v52;
      *v51 = v92;
      v55 = v72;
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v71;
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v55;
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = v40;
      v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v41;
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = v43;
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = v42;
      v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v73;
      v56 = swift_allocObject();
      memcpy((v56 + 16), v97, 0x1F9uLL);
      v85[64] = MEMORY[0x1E69E7CC0];
      sub_1DAA4F398(v97, v85);
      sub_1DAA4F3F4(&v92, v85);
      sub_1DAA4F398(v97, v85);
      sub_1DAA4F3F4(&v92, v85);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAA4F450(&v86, v85);
      sub_1DAA4F4AC(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
      v57 = MEMORY[0x1E69D6420];
      sub_1DAA4D520(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1DAA4F584(&qword_1EE125530, &qword_1EE125540, v57);
      sub_1DACB71E4();
      sub_1DACB9BB4();
      sub_1DAA4F6B0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428);
      swift_allocObject();
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
      v58 = swift_allocObject();
      v59 = v95;
      *(v58 + 48) = v94;
      *(v58 + 64) = v59;
      *(v58 + 80) = v96;
      v60 = v93;
      *(v58 + 16) = v92;
      *(v58 + 32) = v60;
      v85[0] = MEMORY[0x1E69E7CC0];
      sub_1DACB9BB4();
      sub_1DAA4F6B0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430);
      swift_allocObject();
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
      v61 = swift_allocObject();
      memcpy((v61 + 16), v91, 0x8DBuLL);
      v85[0] = MEMORY[0x1E69E7CC0];
      sub_1DACB9BB4();
      sub_1DAA4F6B0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480);
      swift_allocObject();
      *&v44[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
      v84.receiver = v44;
      v84.super_class = v74;
      v62 = objc_msgSendSuper2(&v84, sel_init);
      sub_1DAA4CF7C(v82, type metadata accessor for AppConfiguration);
      v63 = v80;
      sub_1DAA4F708(v17, v80);
      (*(v77 + 56))(v63, 0, 1, v83);
      v64 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
      v65 = v75;
      swift_beginAccess();
      sub_1DAA4F76C(v63, v65 + v64);
      swift_endAccess();
      *(v65 + v76) = v62;
      v66 = v62;
      swift_unknownObjectRelease();
      sub_1DACB8154();
      return v66;
    }

    sub_1DAA54190(v12);
    sub_1DAA4CF7C(v27, type metadata accessor for AppConfiguration);
LABEL_8:
    sub_1DAA4CF7C(v4, sub_1DAA4F1B0);
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  sub_1DAA54190(v12);
  if (v26(&v4[v25], 1, v83) != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  sub_1DAA54190(v4);
LABEL_11:
  sub_1DAA4CF7C(v17, type metadata accessor for AppConfiguration);
  sub_1DACB8154();
  return v22;
}

uint64_t sub_1DAA4EFD4()
{

  if (v0[48] != 1)
  {
    if (v0[28] != 1)
    {
    }

    if (v0[32] != 1)
    {
    }

    if (v0[36] != 1)
    {
    }

    if (v0[40] != 1)
    {
    }

    if (v0[44] != 1)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 521, 7);
}

uint64_t sub_1DAA4F168()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

void sub_1DAA4F1B0(uint64_t a1)
{
  if (!qword_1EE122BE0)
  {
    sub_1DAA4D520(255, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE122BE0);
    }
  }
}

uint64_t type metadata accessor for NewsCoreConfiguration(uint64_t a1)
{
  result = qword_1EE123958;
  if (!qword_1EE123958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA4F290(uint64_t a1)
{
  result = type metadata accessor for AppConfiguration(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAA4F4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA4F4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA4F53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA4F584(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4D520(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA4F5E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58BFC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA4F64C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5D42C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA4F6B0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1DAA420F4(255, a3, a4);
    v5 = sub_1DACB8924();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DAA4F708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA4F76C(uint64_t a1, uint64_t a2)
{
  sub_1DAA4D520(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA4F910(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DAA4F924(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_1DACB71F4();
  }

  return result;
}

uint64_t sub_1DAA4F934()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void (*sub_1DAA4F978(void (*result)(id, void)))(id, void)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1DAA4E530();
    v1(v2, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DAA4F9FC(uint64_t a1, uint64_t a2)
{
  sub_1DAA4D520(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA4FA90(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = sub_1DACB88D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v109 - v13;
  sub_1DAA512C8(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v109 - v20;
  if (*v4 != *v3)
  {
    return 0;
  }

  v119 = v19;
  if ((sub_1DAA513B8(*(v4 + 8), *(v3 + 1)) & 1) == 0 || (sub_1DAA5135C(*(v4 + 16), *(v3 + 2)) & 1) == 0 || *(v4 + 24) != *(v3 + 3) || *(v4 + 32) != *(v3 + 4) || *(v4 + 40) != *(v3 + 5) || *(v4 + 48) != *(v3 + 6) || *(v4 + 56) != *(v3 + 7) || *(v4 + 64) != *(v3 + 8) || *(v4 + 72) != *(v3 + 9) || (sub_1DAA51414(*(v4 + 80), *(v3 + 10)) & 1) == 0 || *(v4 + 88) != v3[88] || *(v4 + 89) != v3[89] || *(v4 + 96) != *(v3 + 12) || *(v4 + 104) != v3[104] || *(v4 + 105) != v3[105] || *(v4 + 112) != *(v3 + 14) || *(v4 + 120) != *(v3 + 15) || *(v4 + 128) != *(v3 + 16) || *(v4 + 136) != *(v3 + 17) || *(v4 + 144) != *(v3 + 18) || *(v4 + 152) != *(v3 + 19) || *(v4 + 160) != *(v3 + 20))
  {
    return 0;
  }

  if ((*(v4 + 168) != *(v3 + 21) || *(v4 + 176) != *(v3 + 22)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + 184) != *(v3 + 23))
  {
    return 0;
  }

  if (*(v4 + 192) != *(v3 + 24))
  {
    return 0;
  }

  if (*(v4 + 200) != *(v3 + 25))
  {
    return 0;
  }

  if (*(v4 + 208) != *(v3 + 26))
  {
    return 0;
  }

  if (*(v4 + 216) != *(v3 + 27))
  {
    return 0;
  }

  if (*(v4 + 224) != *(v3 + 28))
  {
    return 0;
  }

  if (*(v4 + 232) != *(v3 + 29))
  {
    return 0;
  }

  if (*(v4 + 240) != *(v3 + 30))
  {
    return 0;
  }

  if (*(v4 + 248) != v3[248])
  {
    return 0;
  }

  if (*(v4 + 249) != v3[249])
  {
    return 0;
  }

  if (*(v4 + 250) != v3[250])
  {
    return 0;
  }

  if (*(v4 + 256) != *(v3 + 32))
  {
    return 0;
  }

  if (*(v4 + 264) != *(v3 + 33))
  {
    return 0;
  }

  if (*(v4 + 272) != *(v3 + 34))
  {
    return 0;
  }

  if (*(v4 + 280) != *(v3 + 35))
  {
    return 0;
  }

  if (*(v4 + 288) != *(v3 + 36))
  {
    return 0;
  }

  if (*(v4 + 296) != *(v3 + 37))
  {
    return 0;
  }

  if (*(v4 + 304) != *(v3 + 38))
  {
    return 0;
  }

  if (*(v4 + 312) != *(v3 + 39))
  {
    return 0;
  }

  if (*(v4 + 320) != *(v3 + 40))
  {
    return 0;
  }

  if (*(v4 + 328) != *(v3 + 41))
  {
    return 0;
  }

  if (*(v4 + 336) != *(v3 + 42))
  {
    return 0;
  }

  v117 = v4 + 344;
  v118 = v3 + 344;
  if (*(v4 + 344) != v3[344])
  {
    return 0;
  }

  if (*(v4 + 352) != *(v3 + 44))
  {
    return 0;
  }

  if (*(v4 + 360) != *(v3 + 45))
  {
    return 0;
  }

  if (*(v4 + 368) != *(v3 + 46))
  {
    return 0;
  }

  if (*(v4 + 376) != *(v3 + 47))
  {
    return 0;
  }

  if (*(v4 + 384) != *(v3 + 48))
  {
    return 0;
  }

  if (*(v4 + 392) != *(v3 + 49))
  {
    return 0;
  }

  if ((sub_1DAA515D0(*(v4 + 400), *(v3 + 50)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1DAA514A4(*(v4 + 408), *(v3 + 51)) & 1) == 0)
  {
    return 0;
  }

  memcpy(v143, (v4 + 416), 0x1F9uLL);
  memcpy(v121, (v4 + 416), 0x1F9uLL);
  memcpy(v144, v3 + 416, 0x1F9uLL);
  memcpy(v120, v3 + 416, 0x1F9uLL);
  sub_1DAA4F398(v143, v141);
  sub_1DAA4F398(v144, v141);
  LODWORD(v116.f64[1]) = sub_1DAA51900(v121, v120);
  memcpy(v145, v120, 0x1F9uLL);
  sub_1DAA531E4(v145);
  memcpy(v146, v121, 0x1F9uLL);
  sub_1DAA531E4(v146);
  if ((LOBYTE(v116.f64[1]) & 1) == 0)
  {
    return 0;
  }

  v22 = *(v4 + 944);
  v23 = *(v4 + 976);
  v132 = *(v4 + 960);
  v133 = v23;
  v134 = *(v4 + 992);
  v24 = *(v4 + 928);
  v25 = v24;
  v131[1] = *(v4 + 944);
  v131[0] = v24;
  v26 = *(v4 + 976);
  v121[2] = v132;
  v121[3] = v26;
  LOBYTE(v121[4].f64[0]) = *(v4 + 992);
  v121[1] = v22;
  v121[0] = v25;
  v27 = *(v3 + 58);
  v28 = *(v3 + 59);
  v136 = v3[992];
  v29 = *(v3 + 60);
  v135[3] = *(v3 + 61);
  v135[2] = v29;
  v30 = *(v3 + 59);
  v31 = *(v3 + 60);
  v32 = *(v3 + 58);
  v135[0] = v27;
  v135[1] = v30;
  v33 = *(v3 + 61);
  v120[2] = v31;
  v120[3] = v33;
  LOBYTE(v120[4].f64[0]) = v3[992];
  v120[0] = v32;
  v120[1] = v28;
  LODWORD(v116.f64[1]) = sub_1DAA53238(v121, v120);
  v137[2] = v120[2];
  v137[3] = v120[3];
  v138 = LOBYTE(v120[4].f64[0]);
  v137[1] = v120[1];
  v137[0] = v120[0];
  sub_1DAA4F3F4(v131, v141);
  sub_1DAA4F3F4(v135, v141);
  sub_1DAA5337C(v137);
  v139[2] = v121[2];
  v139[3] = v121[3];
  v140 = LOBYTE(v121[4].f64[0]);
  v139[1] = v121[1];
  v139[0] = v121[0];
  sub_1DAA5337C(v139);
  if ((LOBYTE(v116.f64[1]) & 1) == 0)
  {
    return 0;
  }

  v34 = *(v4 + 1112);
  v121[6] = *(v4 + 1096);
  v121[7] = v34;
  v35 = *(v4 + 1144);
  v121[8] = *(v4 + 1128);
  v121[9] = v35;
  v36 = *(v4 + 1048);
  v121[2] = *(v4 + 1032);
  v121[3] = v36;
  v37 = *(v4 + 1080);
  v121[4] = *(v4 + 1064);
  v121[5] = v37;
  v38 = *(v4 + 1016);
  v121[0] = *(v4 + 1000);
  v121[1] = v38;
  v39 = *(v3 + 1112);
  v120[6] = *(v3 + 1096);
  v120[7] = v39;
  v40 = *(v3 + 1144);
  v120[8] = *(v3 + 1128);
  v120[9] = v40;
  v41 = *(v3 + 1048);
  v120[2] = *(v3 + 1032);
  v120[3] = v41;
  v42 = *(v3 + 1080);
  v120[4] = *(v3 + 1064);
  v120[5] = v42;
  v43 = *(v3 + 1016);
  v120[0] = *(v3 + 1000);
  v120[1] = v43;
  if (!sub_1DAA533AC(v121, v120))
  {
    return 0;
  }

  if ((*(v4 + 1160) != *(v3 + 145) || *(v4 + 1168) != *(v3 + 146)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (*(v117 + 832) != v118[832] || *(v4 + 1184) != *(v3 + 148) || (sub_1DAA53460(*(v4 + 1192), *(v3 + 149)) & 1) == 0 || *(v4 + 1200) != *(v3 + 150) || *(v4 + 1208) != *(v3 + 151) || *(v4 + 1216) != *(v3 + 152) || (sub_1DAA51414(*(v4 + 1224), *(v3 + 153)) & 1) == 0 || (sub_1DAA51414(*(v4 + 1232), *(v3 + 154)) & 1) == 0 || (sub_1DAA51414(*(v4 + 1240), *(v3 + 155)) & 1) == 0 || (sub_1DAA51414(*(v4 + 1248), *(v3 + 156)) & 1) == 0 || (sub_1DAA51414(*(v4 + 1256), *(v3 + 157)) & 1) == 0 || (sub_1DAA51414(*(v4 + 1264), *(v3 + 158)) & 1) == 0 || *(v4 + 1272) != *(v3 + 159) || *(v4 + 1280) != *(v3 + 160) || *(v4 + 1288) != *(v3 + 161) || *(v4 + 1296) != *(v3 + 162) || *(v4 + 1304) != *(v3 + 163) || (*(v4 + 1312) != *(v3 + 164) || *(v4 + 1320) != *(v3 + 165)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if ((*(v4 + 1328) != *(v3 + 166) || *(v4 + 1336) != *(v3 + 167)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + 1344) != *(v3 + 168) || *(v4 + 1352) != *(v3 + 169) || (sub_1DAA5355C(*(v4 + 1360), *(v3 + 170)) & 1) == 0 || *(v4 + 1368) != *(v3 + 171) || *(v4 + 1376) != *(v3 + 172) || (*(v4 + 1384) != *(v3 + 173) || *(v4 + 1392) != *(v3 + 174)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (*(v117 + 1056) != v118[1056] || *(v117 + 1057) != v118[1057] || *(v4 + 1408) != *(v3 + 176) || *(v4 + 1416) != *(v3 + 177) || (*(v4 + 1424) != *(v3 + 178) || *(v4 + 1432) != *(v3 + 179)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if ((*(v4 + 1440) != *(v3 + 180) || *(v4 + 1448) != *(v3 + 181)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + 1456) != *(v3 + 182))
  {
    return 0;
  }

  v44 = *(v4 + 1464);
  v113.f64[1] = *(v4 + 1472);
  v116.f64[0] = *(v4 + 1480);
  v45 = *(v4 + 1488);
  v121[0].f64[0] = v44;
  v121[0].f64[1] = v113.f64[1];
  v121[1].f64[0] = v116.f64[0];
  v121[1].f64[1] = v45;
  v46 = *(v3 + 183);
  v113.f64[0] = *(v3 + 184);
  v115 = *(v3 + 185);
  v47 = *(v3 + 186);
  v120[0].f64[0] = v46;
  v120[0].f64[1] = v113.f64[0];
  v120[1].f64[0] = v115;
  v120[1].f64[1] = v47;
  LODWORD(v116.f64[1]) = sub_1DAB2D5D8(v121[0].f64, v120);
  v114 = v120[0].f64[1];
  v112 = v120[1].f64[0];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();

  v116.f64[0] = v121[0].f64[1];

  if ((LOBYTE(v116.f64[1]) & 1) == 0)
  {
    return 0;
  }

  v48 = *(v4 + 1512);
  v49 = *(v4 + 1544);
  v124 = *(v4 + 1528);
  v125 = v49;
  v126 = *(v4 + 1560);
  v50 = *(v4 + 1496);
  v51 = v50;
  v123[1] = *(v4 + 1512);
  v123[0] = v50;
  v52 = *(v4 + 1544);
  v121[2] = v124;
  v121[3] = v52;
  v121[4].f64[0] = *(v4 + 1560);
  v121[1] = v48;
  v121[0] = v51;
  v53 = *(v3 + 1496);
  v54 = *(v3 + 1512);
  v128 = *(v3 + 195);
  v55 = *(v3 + 1528);
  v127[3] = *(v3 + 1544);
  v127[2] = v55;
  v56 = *(v3 + 1512);
  v57 = *(v3 + 1528);
  v58 = *(v3 + 1496);
  v127[0] = v53;
  v127[1] = v56;
  v59 = *(v3 + 1544);
  v120[2] = v57;
  v120[3] = v59;
  v120[4].f64[0] = *(v3 + 195);
  v120[0] = v58;
  v120[1] = v54;
  LODWORD(v116.f64[1]) = sub_1DAA53714(v121, v120);
  v129[2] = v120[2];
  v129[3] = v120[3];
  v130 = v120[4].f64[0];
  v129[1] = v120[1];
  v129[0] = v120[0];
  sub_1DAA4F450(v123, v122);
  sub_1DAA4F450(v127, v122);
  sub_1DAA53A2C(v129);
  v141[2] = v121[2];
  v141[3] = v121[3];
  v142 = v121[4].f64[0];
  v141[1] = v121[1];
  v141[0] = v121[0];
  sub_1DAA53A2C(v141);
  if ((LOBYTE(v116.f64[1]) & 1) == 0)
  {
    return 0;
  }

  if ((*(v117 + 1224) ^ v118[1224]))
  {
    return 0;
  }

  if (*(v4 + 1576) != *(v3 + 197))
  {
    return 0;
  }

  if (*(v4 + 1584) != *(v3 + 198))
  {
    return 0;
  }

  memcpy(v121, (v4 + 1592), 0x8DBuLL);
  memcpy(v120, v3 + 1592, 0x8DBuLL);
  if ((sub_1DAA53A80(v121) & 1) == 0 || *(v117 + 3515) != v118[3515])
  {
    return 0;
  }

  v60 = v118[3528];
  if (*(v117 + 3528))
  {
    if (!v118[3528])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3864) != *(v3 + 483))
    {
      v60 = 1;
    }

    if (v60)
    {
      return 0;
    }
  }

  v61 = v118[3544];
  if (*(v117 + 3544))
  {
    if (!v118[3544])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3880) != *(v3 + 485))
    {
      v61 = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v62 = v118[3560];
  if (*(v117 + 3560))
  {
    if (!v118[3560])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3896) != *(v3 + 487))
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v118[3576];
  if (*(v117 + 3576))
  {
    if (!v118[3576])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3912) != *(v3 + 489))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  v64 = v118[3592];
  if (*(v117 + 3592))
  {
    if (!v118[3592])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3928) != *(v3 + 491))
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v65 = v118[3608];
  if (*(v117 + 3608))
  {
    if (!v118[3608])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 3944) != *(v3 + 493))
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (*(v4 + 3960) != *(v3 + 495) || *(v4 + 3968) != *(v3 + 496) || *(v4 + 3976) != *(v3 + 497) || *(v117 + 3640) != v118[3640] || *(v117 + 3641) != v118[3641] || *(v4 + 3992) != *(v3 + 499))
  {
    return 0;
  }

  v66 = v118[3664];
  if (*(v117 + 3664))
  {
    if (!v118[3664])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 4000) != *(v3 + 500))
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  if (*(v4 + 4016) != *(v3 + 502))
  {
    return 0;
  }

  v67 = *(v4 + 4032);
  v68 = *(v4 + 4040);
  v115 = *(v4 + 4024);
  v116.f64[0] = v68;
  v116.f64[1] = *(v4 + 4048);
  v69 = *(v3 + 503);
  v111 = *(v3 + 504);
  v112 = v69;
  v70 = *(v3 + 506);
  v113.f64[0] = *(v3 + 505);
  v113.f64[1] = v70;
  v114 = v67;
  if (*&v67 == 1)
  {
    sub_1DAA53C24(*&v115, 1, *&v116.f64[0], *&v116.f64[1]);
    if (v111 == 1)
    {
      sub_1DAA53C24(*&v112, 1, *&v113.f64[0], *&v113.f64[1]);
      sub_1DAA53C6C(*&v115, 1, *&v116.f64[0], *&v116.f64[1]);
      goto LABEL_170;
    }

    sub_1DAA53C24(*&v112, v111, *&v113.f64[0], *&v113.f64[1]);
LABEL_168:
    sub_1DAA53C6C(*&v115, *&v114, *&v116.f64[0], *&v116.f64[1]);
    sub_1DAA53C6C(*&v112, v111, *&v113.f64[0], *&v113.f64[1]);
    return 0;
  }

  v121[0].f64[0] = v115;
  v121[0].f64[1] = v114;
  v121[1] = v116;
  if (v111 == 1)
  {
    v72 = *&v114;
    v71 = *&v115;
    v73 = v116;
    sub_1DAA53C24(*&v115, *&v114, *&v116.f64[0], *&v116.f64[1]);
    sub_1DAA53C24(*&v112, 1, *&v113.f64[0], *&v113.f64[1]);
    sub_1DAA53C24(v71, v72, *&v73.f64[0], *&v73.f64[1]);

    goto LABEL_168;
  }

  v120[0].f64[0] = v112;
  *&v120[0].f64[1] = v111;
  v120[1] = v113;
  v110 = sub_1DAB92C10(v121, v120);
  v109[0] = *&v120[0].f64[1];
  v109[1] = *&v120[1].f64[1];
  sub_1DAA53C24(*&v115, *&v114, *&v116.f64[0], *&v116.f64[1]);
  sub_1DAA53C24(*&v112, v111, *&v113.f64[0], *&v113.f64[1]);
  sub_1DAA53C24(*&v115, *&v114, *&v116.f64[0], *&v116.f64[1]);

  v113.f64[1] = v121[1].f64[1];

  sub_1DAA53C6C(*&v115, *&v114, *&v116.f64[0], *&v116.f64[1]);
  if ((v110 & 1) == 0)
  {
    return 0;
  }

LABEL_170:
  v74 = v118[3720];
  if (*(v117 + 3720))
  {
    if (!v118[3720])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 4056) != *(v3 + 507))
    {
      v74 = 1;
    }

    if (v74)
    {
      return 0;
    }
  }

  v75 = *(v4 + 4072);
  v76 = *(v4 + 4080);
  v77 = *(v4 + 4088);
  v78 = *(v4 + 4096);
  v79 = *(v117 + 3760);
  v80 = v118[3760];
  v121[0].f64[0] = v75;
  v121[0].f64[1] = v76;
  v121[1].f64[0] = v77;
  v121[1].f64[1] = v78;
  LOBYTE(v121[2].f64[0]) = v79;
  *(&v121[2] + 8) = *(v118 + 233);
  *(&v121[3] + 8) = *(v118 + 234);
  LOBYTE(v121[4].f64[1]) = v80;
  if (v79)
  {
    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v120[0].f64[0] = v75;
    v120[0].f64[1] = v76;
    v120[1].f64[0] = v77;
    v120[1].f64[1] = v78;
    LOBYTE(v120[2].f64[0]) = 0;
    if ((v80 & 1) != 0 || !sub_1DAA53CB4(v120, &v121[2].f64[1]))
    {
      return 0;
    }
  }

  v81 = *(v4 + 4120);
  v82 = *(v3 + 515);
  if (v81)
  {
    if (!v82 || (*(v4 + 4112) != *(v3 + 514) || v81 != v82) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v82)
  {
    return 0;
  }

  v83 = *(v4 + 4136);
  v84 = *(v3 + 517);
  if (v83)
  {
    if (!v84 || (*(v4 + 4128) != *(v3 + 516) || v83 != v84) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  v85 = v118[3808];
  if (*(v117 + 3808))
  {
    if (!v118[3808])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 4144) != *(v3 + 518))
    {
      v85 = 1;
    }

    if (v85)
    {
      return 0;
    }
  }

  v86 = v118[3824];
  if (*(v117 + 3824))
  {
    if (!v118[3824])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 4160) != *(v3 + 520))
    {
      v86 = 1;
    }

    if (v86)
    {
      return 0;
    }
  }

  v87 = *(v4 + 4184);
  v88 = *(v3 + 523);
  if (v87)
  {
    if (!v88 || (*(v4 + 4176) != *(v3 + 522) || v87 != v88) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v88)
  {
    return 0;
  }

  v89 = v118[3856];
  if (*(v117 + 3856))
  {
    if (!v118[3856])
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 4192) != *(v3 + 524))
    {
      v89 = 1;
    }

    if (v89)
    {
      return 0;
    }
  }

  if (*(v4 + 4208) != *(v3 + 526) || *(v4 + 4216) != *(v3 + 527) || *(v117 + 3880) != v118[3880] || *(v4 + 4232) != *(v3 + 529) || (sub_1DAA51414(*(v4 + 4240), *(v3 + 530)) & 1) == 0 || *(v4 + 4248) != *(v3 + 531) || *(v4 + 4256) != *(v3 + 532) || (sub_1DAA53CF0(*(v4 + 4264), *(v3 + 533)) & 1) == 0 || *(v4 + 4272) != *(v3 + 534) || *(v117 + 3936) != v118[3936])
  {
    return 0;
  }

  v90 = *(v3 + 536);
  v117 = *(v4 + 4288);
  if (v117)
  {
    if (!v90)
    {
      return 0;
    }

    v118 = v90;
    sub_1DACB71E4();
    LODWORD(v117) = sub_1DABDAC20(v117, v118);

    if ((v117 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  v91 = type metadata accessor for AppConfiguration(0);
  v117 = *(v91 + 536);
  v118 = v91;
  *&v116.f64[0] = *(v119 + 48);
  *&v116.f64[1] = MEMORY[0x1E69D6A58];
  sub_1DAA540A0(v4 + v117, v21, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
  sub_1DAA540A0(&v3[v117], &v21[*&v116.f64[0]], &qword_1EE11FF70, *&v116.f64[1]);
  v116.f64[1] = *(v6 + 48);
  v117 = v6 + 48;
  if ((*&v116.f64[1])(v21, 1, v5) != 1)
  {
    sub_1DAA540A0(v21, v14, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    if ((*&v116.f64[1])(&v21[*&v116.f64[0]], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v21[*&v116.f64[0]], v5);
      sub_1DAA4680C(&qword_1EE11FF78, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
      LODWORD(v114) = sub_1DACB9264();
      v92 = *(v6 + 8);
      *&v115 = v6 + 8;
      *&v116.f64[0] = v92;
      v92(v8, v5);
      (*&v116.f64[0])(v14, v5);
      sub_1DAA54120(v21, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
      if ((LOBYTE(v114) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_242;
    }

    (*(v6 + 8))(v14, v5);
LABEL_240:
    sub_1DAC8EE90(v21, sub_1DAA512C8);
    return 0;
  }

  if ((*&v116.f64[1])(&v21[*&v116.f64[0]], 1, v5) != 1)
  {
    goto LABEL_240;
  }

  sub_1DAA54120(v21, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
LABEL_242:
  if (*(v4 + *(v118 + 135)) == *&v3[*(v118 + 135)])
  {
    v93 = *(v118 + 136);
    v94 = *(v4 + v93);
    v95 = *&v3[v93];
    if (v94)
    {
      if (!v95)
      {
        return 0;
      }

      sub_1DACB71E4();
      v96 = sub_1DABDAC20(v94, v95);

      if ((v96 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v95)
    {
      return 0;
    }

    if (*(v4 + *(v118 + 137)) != v3[*(v118 + 137)] || *(v4 + *(v118 + 138)) != v3[*(v118 + 138)])
    {
      return 0;
    }

    v97 = *(v118 + 139);
    v98 = (v4 + v97);
    v99 = *(v4 + v97 + 8);
    v100 = &v3[v97];
    v101 = v3[v97 + 8];
    if (v99)
    {
      if (!v101)
      {
        return 0;
      }
    }

    else
    {
      if (*v98 != *v100)
      {
        LOBYTE(v101) = 1;
      }

      if (v101)
      {
        return 0;
      }
    }

    v102 = *(v119 + 48);
    v103 = MEMORY[0x1E69D6A58];
    v104 = v4 + *(v118 + 140);
    v105 = *(v118 + 140);
    sub_1DAA540A0(v104, v18, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    sub_1DAA540A0(&v3[v105], &v18[v102], &qword_1EE11FF70, v103);
    if ((*&v116.f64[1])(v18, 1, v5) == 1)
    {
      if ((*&v116.f64[1])(&v18[v102], 1, v5) == 1)
      {
        sub_1DAA54120(v18, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
        return 1;
      }

      goto LABEL_261;
    }

    sub_1DAA540A0(v18, v12, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    if ((*&v116.f64[1])(&v18[v102], 1, v5) == 1)
    {
      (*(v6 + 8))(v12, v5);
LABEL_261:
      sub_1DAC8EE90(v18, sub_1DAA512C8);
      return 0;
    }

    (*(v6 + 32))(v8, &v18[v102], v5);
    sub_1DAA4680C(&qword_1EE11FF78, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v106 = sub_1DACB9264();
    v107 = *(v6 + 8);
    v107(v8, v5);
    v107(v12, v5);
    sub_1DAA54120(v18, &qword_1EE11FF70, MEMORY[0x1E69D6A58]);
    if (v106)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1DAA512C8(uint64_t a1)
{
  if (!qword_1EE11FF68)
  {
    sub_1DAA4691C(255, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FF68);
    }
  }
}

uint64_t sub_1DAA5135C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA513B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA51414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAA514A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    v8 = sub_1DAB23C84(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_1DAB244EC(__dst, v10);
    sub_1DAB244EC(v14, v10);
    sub_1DAB68598(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_1DAB68598(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 272;
    v5 += 272;
  }

  return 1;
}

uint64_t sub_1DAA515D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v49 = a2 + 32;
    v50 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_79;
      }

      v6 = v4 + 80 * v3;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v10 = *(v6 + 24);
      v9 = *(v6 + 32);
      v12 = *(v6 + 40);
      v11 = *(v6 + 48);
      v13 = v5 + 80 * v3;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v18 = *(v13 + 40);
      v19 = *(v13 + 48);
      v51 = *(v13 + 72);
      v52 = *(v6 + 72);
      v53 = *(v13 + 64);
      v54 = *(v6 + 64);
      v55 = *(v13 + 56);
      v56 = *(v6 + 56);
      if (v7)
      {
        if (!v14)
        {
          return 0;
        }

        result = *v6;
        if (*v6 != *v13 || v7 != v14)
        {
          v47 = *(v6 + 16);
          v48 = *(v6 + 48);
          v21 = v3;
          v22 = *(v6 + 32);
          v23 = v2;
          v24 = *(v13 + 32);
          result = sub_1DACBA174();
          v16 = v24;
          v2 = v23;
          v8 = v47;
          v11 = v48;
          v9 = v22;
          v3 = v21;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v10)
      {
        if (!v17)
        {
          return 0;
        }

        if (v8 != v15 || v10 != v17)
        {
          v26 = v9;
          v27 = v16;
          result = sub_1DACBA174();
          v16 = v27;
          v9 = v26;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v17)
      {
        return 0;
      }

      if (v12)
      {
        if (!v18)
        {
          return 0;
        }

        if (v9 != v16 || v12 != v18)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v18)
      {
        return 0;
      }

      v29 = *(v11 + 16);
      if (v29 != *(v19 + 16))
      {
        return 0;
      }

      if (v29)
      {
        v30 = v11 == v19;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v44 = (v11 + 40);
        v45 = (v19 + 40);
        while (v29)
        {
          result = *(v44 - 1);
          if (result != *(v45 - 1) || *v44 != *v45)
          {
            result = sub_1DACBA174();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v44 += 2;
          v45 += 2;
          if (!--v29)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_79:
        __break(1u);
        return result;
      }

LABEL_39:
      v31 = *(v56 + 16);
      if (v31 != *(v55 + 16))
      {
        return 0;
      }

      if (v31 && v56 != v55)
      {
        break;
      }

LABEL_55:
      if (v54 != v53)
      {
        return 0;
      }

      v40 = *(v52 + 16);
      if (v40 != *(v51 + 16))
      {
        return 0;
      }

      if (v40 && v52 != v51)
      {
        v41 = (v52 + 40);
        v42 = (v51 + 40);
        do
        {
          v43 = *(v41 - 1) == *(v42 - 1) && *v41 == *v42;
          if (!v43 && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }

          v41 += 2;
          v42 += 2;
        }

        while (--v40);
      }

      ++v3;
      result = 1;
      v5 = v49;
      v4 = v50;
      if (v3 == v2)
      {
        return result;
      }
    }

    v32 = (v56 + 56);
    v33 = (v55 + 56);
    while (1)
    {
      v34 = *(v32 - 1);
      v35 = *v32;
      v36 = *(v33 - 1);
      v37 = *v33;
      v38 = *(v32 - 3) == *(v33 - 3) && *(v32 - 2) == *(v33 - 2);
      if (!v38 && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }

      v39 = v34 == v36 && v35 == v37;
      if (!v39 && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }

      v32 += 4;
      v33 += 4;
      if (!--v31)
      {
        goto LABEL_55;
      }
    }
  }

  return 1;
}

uint64_t sub_1DAA51900(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v9 = *(a1 + 19);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v206 = *(a1 + 40);
  v205 = *(a1 + 56);
  v204 = *(a1 + 64);
  v203 = *(a1 + 72);
  v200 = *(a1 + 80);
  v199 = *(a1 + 88);
  v196 = *(a1 + 96);
  v195 = *(a1 + 104);
  v190 = *(a1 + 112);
  v189 = *(a1 + 120);
  v179 = *(a1 + 128);
  v185 = *(a1 + 144);
  v186 = *(a1 + 136);
  v183 = *(a1 + 152);
  v181 = *(a1 + 160);
  v178 = *(a1 + 168);
  v168 = *(a1 + 176);
  v13 = *(a1 + 352);
  v248[8] = *(a1 + 336);
  v248[9] = v13;
  v158 = *(a1 + 376);
  v249 = *(a1 + 368);
  v14 = *(a1 + 288);
  v248[4] = *(a1 + 272);
  v248[5] = v14;
  v15 = *(a1 + 304);
  v248[7] = *(a1 + 320);
  v248[6] = v15;
  v16 = *(a1 + 224);
  v248[0] = *(a1 + 208);
  v248[1] = v16;
  v17 = *(a1 + 240);
  v248[3] = *(a1 + 256);
  v248[2] = v17;
  v18 = *(a2 + 352);
  v250[8] = *(a2 + 336);
  v250[9] = v18;
  v157 = *(a2 + 376);
  v251 = *(a2 + 368);
  v19 = *(a2 + 288);
  v250[4] = *(a2 + 272);
  v250[5] = v19;
  v20 = *(a2 + 304);
  v250[7] = *(a2 + 320);
  v250[6] = v20;
  v21 = *(a2 + 224);
  v250[0] = *(a2 + 208);
  v250[1] = v21;
  v22 = *(a2 + 240);
  v250[3] = *(a2 + 256);
  v250[2] = v22;
  v166 = *(a1 + 184);
  v164 = *(a1 + 192);
  v162 = *(a1 + 200);
  v159 = *(a1 + 384);
  v156 = *(a1 + 400);
  v148 = *(a1 + 408);
  v152 = *(a1 + 392);
  v153 = *(a1 + 416);
  v150 = *(a1 + 424);
  v146 = *(a1 + 432);
  v142 = *(a1 + 440);
  v144 = *(a1 + 448);
  v140 = *(a1 + 456);
  v138 = *(a1 + 464);
  v135 = *(a1 + 472);
  v136 = *(a1 + 480);
  v129 = *(a1 + 481);
  v130 = *(a1 + 488);
  v131 = *(a1 + 496);
  v132 = *(a1 + 504);
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v26 = *(a2 + 17);
  v27 = *(a2 + 18);
  v28 = *(a2 + 19);
  v29 = *(a2 + 24);
  v30 = *(a2 + 32);
  v32 = *(a2 + 40);
  v31 = *(a2 + 48);
  v33 = *(a2 + 56);
  v202 = *(a2 + 64);
  v201 = *(a2 + 72);
  v198 = *(a2 + 80);
  v197 = *(a2 + 88);
  v194 = *(a2 + 96);
  v193 = *(a2 + 104);
  v188 = *(a2 + 112);
  v34 = *(a2 + 128);
  v187 = *(a2 + 120);
  v35 = *(a2 + 136);
  v184 = *(a2 + 144);
  v182 = *(a2 + 152);
  v180 = *(a2 + 160);
  v177 = *(a2 + 168);
  v167 = *(a2 + 176);
  v165 = *(a2 + 184);
  v163 = *(a2 + 192);
  v161 = *(a2 + 200);
  v160 = *(a2 + 384);
  v151 = *(a2 + 392);
  v155 = *(a2 + 400);
  v147 = *(a2 + 408);
  v154 = *(a2 + 416);
  v149 = *(a2 + 424);
  v145 = *(a2 + 432);
  v141 = *(a2 + 440);
  v143 = *(a2 + 448);
  v139 = *(a2 + 456);
  v137 = *(a2 + 464);
  v133 = *(a2 + 472);
  v134 = *(a2 + 480);
  v125 = *(a2 + 481);
  v126 = *(a2 + 488);
  v127 = *(a2 + 496);
  v128 = *(a2 + 504);
  if (v4)
  {
    if (!v23)
    {
      return 0;
    }

    v121 = v9;
    v123 = v8;
    v119 = v10;
    v173 = *(a2 + 128);
    v175 = *(a2 + 136);
    v117 = v11;
    v36 = v12;
    v37 = v7;
    v113 = v6;
    v114 = *(a2 + 16);
    v38 = v5;
    v169 = *(a2 + 40);
    v171 = *(a2 + 48);
    v39 = *(a2 + 56);
    v40 = *(a2 + 32);
    v115 = *(a2 + 24);
    v41 = *(a2 + 19);
    v191 = *(a2 + 18);
    v42 = *(a2 + 17);
    v43 = *(a2 + 8);
    v44 = sub_1DAA51414(v4, v23);
    v24 = v43;
    v6 = v113;
    v25 = v114;
    v26 = v42;
    v27 = v191;
    v28 = v41;
    v29 = v115;
    v30 = v40;
    v32 = v169;
    v31 = v171;
    v33 = v39;
    v5 = v38;
    v7 = v37;
    v12 = v36;
    v34 = v173;
    v35 = v175;
    v11 = v117;
    v10 = v119;
    v9 = v121;
    v8 = v123;
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v5)
  {
    if (!v24)
    {
      return 0;
    }

    v45 = v25;
    v122 = v28;
    v124 = v26;
    v192 = v27;
    v120 = v30;
    v170 = v32;
    v172 = v31;
    v116 = v33;
    v118 = v12;
    v174 = v34;
    v176 = v35;
    v46 = v6;
    v47 = v7;
    v48 = sub_1DAA51414(v5, v24);
    result = 0;
    if ((v48 & 1) == 0)
    {
      return result;
    }

    if (v46 != v45)
    {
      return result;
    }

    if (v47 != v124)
    {
      return result;
    }

    if (v8 != v192)
    {
      return result;
    }

    if (v9 != v122)
    {
      return result;
    }

    if (v10 != v29)
    {
      return result;
    }

    if (v11 != v120)
    {
      return result;
    }

    v31 = v172;
    v33 = v116;
    v12 = v118;
    v34 = v174;
    v35 = v176;
    if (v206 != v170)
    {
      return result;
    }

LABEL_25:
    if ((v12 != v31 || v205 != v33) && (sub_1DACBA174() & 1) == 0 || (v204 != v202 || v203 != v201) && (sub_1DACBA174() & 1) == 0 || (v200 != v198 || v199 != v197) && (sub_1DACBA174() & 1) == 0 || (v196 != v194 || v195 != v193) && (sub_1DACBA174() & 1) == 0 || (v190 != v188 || v189 != v187) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }

    if (v186)
    {
      if (!v35)
      {
        return 0;
      }

      if (v179 == v34 && v186 == v35)
      {
        result = 0;
      }

      else
      {
        v50 = sub_1DACBA174();
        result = 0;
        if ((v50 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      result = 0;
      if (v35)
      {
        return result;
      }
    }

    if (v185 != v184 || v183 != v182 || v181 != v180)
    {
      return result;
    }

    if (v178)
    {
      if (!v177)
      {
        return 0;
      }

      sub_1DACB71E4();
      v51 = sub_1DAC379E4(v178, v177);

      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v177)
    {
      return 0;
    }

    if (v168)
    {
      if (!v167 || (sub_1DAC37B3C(v168, v167) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v167)
    {
      return 0;
    }

    if (v166)
    {
      if (!v165 || (sub_1DAC37B3C(v166, v165) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v165)
    {
      return 0;
    }

    if (v164)
    {
      if (!v163 || (sub_1DAC37B3C(v164, v163) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v163)
    {
      return 0;
    }

    if (v162)
    {
      if (!v161 || (sub_1DAC37B3C(v162, v161) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v161)
    {
      return 0;
    }

    v52 = *(a1 + 320);
    v53 = *(a1 + 352);
    __src[8] = *(a1 + 336);
    __src[9] = v53;
    v54 = *(a1 + 256);
    v55 = *(a1 + 288);
    __src[4] = *(a1 + 272);
    __src[5] = v55;
    v57 = *(a1 + 288);
    v56 = *(a1 + 304);
    v58 = v56;
    __src[7] = *(a1 + 320);
    __src[6] = v56;
    v59 = *(a1 + 224);
    __src[0] = *(a1 + 208);
    __src[1] = v59;
    v60 = *(a1 + 240);
    v62 = *(a1 + 208);
    v61 = *(a1 + 224);
    v63 = v60;
    __src[3] = *(a1 + 256);
    __src[2] = v60;
    v64 = *(a2 + 352);
    *(&__src[18] + 8) = *(a2 + 336);
    *(&__src[19] + 8) = v64;
    v65 = *(a2 + 320);
    *(&__src[16] + 8) = *(a2 + 304);
    *(&__src[17] + 8) = v65;
    v66 = *(a2 + 240);
    *(&__src[13] + 8) = *(a2 + 256);
    v67 = *(a2 + 288);
    *(&__src[14] + 8) = *(a2 + 272);
    *(&__src[15] + 8) = v67;
    v68 = *(a2 + 224);
    *(&__src[10] + 8) = *(a2 + 208);
    *(&__src[11] + 8) = v68;
    *(&__src[12] + 8) = v66;
    v69 = *(a1 + 352);
    v246[8] = __src[8];
    v246[9] = v69;
    v246[4] = __src[4];
    v246[5] = v57;
    v246[7] = v52;
    v246[6] = v58;
    v246[0] = v62;
    v246[1] = v61;
    v70 = *(a2 + 368);
    *&__src[10] = *(a1 + 368);
    *(&__src[20] + 1) = v70;
    v247 = *(a1 + 368);
    v246[3] = v54;
    v246[2] = v63;
    if (sub_1DAA525E8(v246) == 1)
    {
      v71 = *(a2 + 352);
      __dst[8] = *(a2 + 336);
      __dst[9] = v71;
      *&__dst[10] = *(a2 + 368);
      v72 = *(a2 + 288);
      __dst[4] = *(a2 + 272);
      __dst[5] = v72;
      v73 = *(a2 + 304);
      __dst[7] = *(a2 + 320);
      __dst[6] = v73;
      v74 = *(a2 + 224);
      __dst[0] = *(a2 + 208);
      __dst[1] = v74;
      v75 = *(a2 + 240);
      __dst[3] = *(a2 + 256);
      __dst[2] = v75;
      if (sub_1DAA525E8(__dst) == 1)
      {
        v242 = __src[8];
        v243 = __src[9];
        v244 = *&__src[10];
        v238 = __src[4];
        v239 = __src[5];
        v241 = __src[7];
        v240 = __src[6];
        v234 = __src[0];
        v235 = __src[1];
        v237 = __src[3];
        v236 = __src[2];
        sub_1DAA5265C(v248, &v222);
        sub_1DAA5265C(v250, &v222);
        sub_1DAA52740(&v234);
LABEL_86:
        if (v159)
        {
          if (!v160)
          {
            return 0;
          }
        }

        else
        {
          v110 = v160;
          if (v158 != v157)
          {
            v110 = 1;
          }

          if (v110)
          {
            return 0;
          }
        }

        if (v156)
        {
          if (!v155)
          {
            return 0;
          }
        }

        else
        {
          v111 = v155;
          if (v152 != v151)
          {
            v111 = 1;
          }

          if (v111)
          {
            return 0;
          }
        }

        if (v153)
        {
          if (!v154 || (v148 != v147 || v153 != v154) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v154)
        {
          return 0;
        }

        if ((v150 != v149 || v146 != v145) && (sub_1DACBA174() & 1) == 0)
        {
          return 0;
        }

        if (v144)
        {
          if (!v143 || (v142 != v141 || v144 != v143) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v143)
        {
          return 0;
        }

        if (v140 == v139 && v138 == v137 && v135 == v133 && v136 == v134 && v129 == v125 && v130 == v126)
        {
          if (v131)
          {
            if (v127)
            {
              sub_1DACB71E4();
              v112 = sub_1DAA527C0(v131, v127);

              if (v112)
              {
                return v132 ^ v128 ^ 1u;
              }
            }
          }

          else if (!v127)
          {
            return v132 ^ v128 ^ 1u;
          }
        }

        return 0;
      }

      sub_1DAA5265C(v248, &v234);
      sub_1DAA5265C(v250, &v234);
    }

    else
    {
      v76 = *(a1 + 320);
      v77 = *(a1 + 352);
      v242 = *(a1 + 336);
      v243 = v77;
      v78 = *(a1 + 256);
      v79 = *(a1 + 288);
      v238 = *(a1 + 272);
      v239 = v79;
      v81 = *(a1 + 288);
      v80 = *(a1 + 304);
      v82 = v80;
      v241 = *(a1 + 320);
      v240 = v80;
      v83 = *(a1 + 224);
      v234 = *(a1 + 208);
      v235 = v83;
      v84 = *(a1 + 240);
      v86 = *(a1 + 208);
      v85 = *(a1 + 224);
      v87 = v84;
      v237 = *(a1 + 256);
      v236 = v84;
      v88 = *(a1 + 352);
      v230 = v242;
      v231 = v88;
      v226 = v238;
      v227 = v81;
      v229 = v76;
      v228 = v82;
      v222 = v86;
      v223 = v85;
      v244 = *(a1 + 368);
      v232 = *(a1 + 368);
      v225 = v78;
      v224 = v87;
      v89 = *(a2 + 352);
      __dst[8] = *(a2 + 336);
      __dst[9] = v89;
      *&__dst[10] = *(a2 + 368);
      v90 = *(a2 + 288);
      __dst[4] = *(a2 + 272);
      __dst[5] = v90;
      v91 = *(a2 + 304);
      __dst[7] = *(a2 + 320);
      __dst[6] = v91;
      v92 = *(a2 + 224);
      __dst[0] = *(a2 + 208);
      __dst[1] = v92;
      v93 = *(a2 + 240);
      __dst[3] = *(a2 + 256);
      __dst[2] = v93;
      if (sub_1DAA525E8(__dst) != 1)
      {
        v99 = *(a2 + 352);
        v219 = *(a2 + 336);
        v220 = v99;
        v221 = *(a2 + 368);
        v100 = *(a2 + 288);
        v215 = *(a2 + 272);
        v216 = v100;
        v101 = *(a2 + 304);
        v218 = *(a2 + 320);
        v217 = v101;
        v102 = *(a2 + 224);
        v211 = *(a2 + 208);
        v212 = v102;
        v103 = *(a2 + 240);
        v214 = *(a2 + 256);
        v213 = v103;
        sub_1DAA5265C(v248, v209);
        sub_1DAA5265C(v250, v209);
        sub_1DAA5265C(&v234, v209);
        v104 = _s10StocksCore15FlexiblePaywallV2eeoiySbAC_ACtFZ_0(&v222, &v211);
        v207[8] = v219;
        v207[9] = v220;
        v208 = v221;
        v207[4] = v215;
        v207[5] = v216;
        v207[6] = v217;
        v207[7] = v218;
        v207[0] = v211;
        v207[1] = v212;
        v207[2] = v213;
        v207[3] = v214;
        sub_1DAB3DCE4(v207);
        v209[8] = v230;
        v209[9] = v231;
        v210 = v232;
        v209[4] = v226;
        v209[5] = v227;
        v209[6] = v228;
        v209[7] = v229;
        v209[0] = v222;
        v209[1] = v223;
        v209[2] = v224;
        v209[3] = v225;
        sub_1DAB3DCE4(v209);
        v105 = *(a1 + 352);
        v219 = *(a1 + 336);
        v220 = v105;
        v221 = *(a1 + 368);
        v106 = *(a1 + 288);
        v215 = *(a1 + 272);
        v216 = v106;
        v107 = *(a1 + 304);
        v218 = *(a1 + 320);
        v217 = v107;
        v108 = *(a1 + 224);
        v211 = *(a1 + 208);
        v212 = v108;
        v109 = *(a1 + 240);
        v214 = *(a1 + 256);
        v213 = v109;
        sub_1DAA52740(&v211);
        if ((v104 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
      }

      v94 = *(a1 + 352);
      v219 = *(a1 + 336);
      v220 = v94;
      v221 = *(a1 + 368);
      v95 = *(a1 + 288);
      v215 = *(a1 + 272);
      v216 = v95;
      v96 = *(a1 + 304);
      v218 = *(a1 + 320);
      v217 = v96;
      v97 = *(a1 + 224);
      v211 = *(a1 + 208);
      v212 = v97;
      v98 = *(a1 + 240);
      v214 = *(a1 + 256);
      v213 = v98;
      sub_1DAA5265C(v248, v209);
      sub_1DAA5265C(v250, v209);
      sub_1DAA5265C(&v234, v209);
      sub_1DAB3DCE4(&v211);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1DAB3DC00(__dst);
    return 0;
  }

  result = 0;
  if (!v24 && v6 == v25 && v7 == v26 && v8 == v27 && v9 == v28 && v10 == v29 && v11 == v30 && v206 == v32)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1DAA525E8(uint64_t a1)
{
  v1 = *(a1 + 160);
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

void sub_1DAA5260C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAA5265C(uint64_t a1, uint64_t a2)
{
  sub_1DAA5260C(0, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA526E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
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

uint64_t sub_1DAA52740(uint64_t a1)
{
  sub_1DAA5260C(0, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA527C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA52DE4(0);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AudioUpsellConfig(0);
  v13 = MEMORY[0x1EEE9AC00](v47);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v18 = (&v40 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (v19 && a1 != a2)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v20;
    v22 = a2 + v20;
    v40 = (v5 + 32);
    v41 = v9;
    v42 = (v5 + 8);
    v44 = *(v16 + 72);
    v45 = (v5 + 48);
    v23 = v47;
    do
    {
      sub_1DAC3CDD8(v21, v18, type metadata accessor for AudioUpsellConfig);
      v49 = v21;
      sub_1DAC3CDD8(v22, v15, type metadata accessor for AudioUpsellConfig);
      v25 = *v18 == *v15 && v18[1] == v15[1];
      if (!v25 && (sub_1DACBA174() & 1) == 0)
      {
LABEL_35:
        sub_1DAA85404(v15, type metadata accessor for AudioUpsellConfig);
        sub_1DAA85404(v18, type metadata accessor for AudioUpsellConfig);
        return 0;
      }

      v26 = v23[5];
      v27 = *(v48 + 48);
      sub_1DAC3CDD8(v18 + v26, v12, sub_1DAA4A0F8);
      sub_1DAC3CDD8(v15 + v26, &v12[v27], sub_1DAA4A0F8);
      v28 = *v45;
      if ((*v45)(v12, 1, v4) == 1)
      {
        if (v28(&v12[v27], 1, v4) != 1)
        {
          goto LABEL_34;
        }

        sub_1DAA85404(v12, sub_1DAA4A0F8);
      }

      else
      {
        v29 = v12;
        v30 = v12;
        v31 = v41;
        sub_1DAC3CDD8(v29, v41, sub_1DAA4A0F8);
        if (v28((v30 + v27), 1, v4) == 1)
        {
          (*v42)(v31, v4);
          v12 = v30;
LABEL_34:
          sub_1DAA85404(v12, sub_1DAA52DE4);
          goto LABEL_35;
        }

        v32 = v46;
        (*v40)(v46, v30 + v27, v4);
        sub_1DAC3CE40();
        v43 = sub_1DACB9264();
        v33 = *v42;
        (*v42)(v32, v4);
        v33(v31, v4);
        sub_1DAA85404(v30, sub_1DAA4A0F8);
        v12 = v30;
        v23 = v47;
        if ((v43 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (*(v18 + v23[6]) != *(v15 + v23[6]))
      {
        goto LABEL_35;
      }

      v34 = v23[7];
      if (*(v18 + v34))
      {
        if (*(v18 + v34) == 1)
        {
          v35 = 0xE600000000000000;
          v36 = 0x656C6464696DLL;
          v37 = *(v15 + v34);
          if (!v37)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v35 = 0xE300000000000000;
          v36 = 6581861;
          v37 = *(v15 + v34);
          if (!v37)
          {
LABEL_25:
            v38 = 0xE900000000000067;
            if (v36 != 0x6E696E6E69676562)
            {
              goto LABEL_5;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        v36 = 0x6E696E6E69676562;
        v35 = 0xE900000000000067;
        v37 = *(v15 + v34);
        if (!v37)
        {
          goto LABEL_25;
        }
      }

      if (v37 == 1)
      {
        v38 = 0xE600000000000000;
        if (v36 != 0x656C6464696DLL)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v38 = 0xE300000000000000;
        if (v36 != 6581861)
        {
          goto LABEL_5;
        }
      }

LABEL_30:
      if (v35 == v38)
      {

        goto LABEL_6;
      }

LABEL_5:
      v24 = sub_1DACBA174();

      if ((v24 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_6:
      sub_1DAA85404(v15, type metadata accessor for AudioUpsellConfig);
      sub_1DAA85404(v18, type metadata accessor for AudioUpsellConfig);
      v22 += v44;
      v21 = v49 + v44;
      --v19;
    }

    while (v19);
  }

  return 1;
}

void sub_1DAA52DE4(uint64_t a1)
{
  if (!qword_1EE1252A0)
  {
    sub_1DAA4A0F8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1252A0);
    }
  }
}

uint64_t type metadata accessor for AudioUpsellConfig(uint64_t a1)
{
  result = qword_1EE124D50;
  if (!qword_1EE124D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA52E94(uint64_t a1)
{
  sub_1DAA5311C(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DAA52F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA52FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA53000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA53064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA530C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA5311C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA53180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_1DAA53238(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = *(a2 + 64);
  if (v4)
  {
    if (!v13)
    {
      return 0;
    }

    v31 = *(a2 + 56);
    v29 = *(a2 + 8);
    v22 = *(a1 + 48);
    v33 = *(a2 + 48);
    v34 = *(a2 + 32);
    v32 = *(a1 + 16);
    v30 = *(a2 + 16);
    v23 = sub_1DAA51414(v4, v13);
    v15 = v30;
    v6 = v32;
    v19 = v33;
    v17 = v34;
    v10 = v22;
    v14 = v29;
    v20 = v31;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v14)
    {
      v24 = v15;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v16)
    {
      v25 = v17;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v18)
    {
      v26 = v19;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if ((v12 & 1) == 0)
  {
    if (v11 == v20)
    {
      v28 = v21;
    }

    else
    {
      v28 = 1;
    }

    return (v28 & 1) == 0;
  }

  return (v21 & 1) != 0;
}

BOOL sub_1DAA533AC(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))))) & 1) != 0 && a1[8].f64[0] == a2[8].f64[0] && a1[8].f64[1] == a2[8].f64[1] && a1[9].f64[0] == a2[9].f64[0])
  {
    return a1[9].f64[1] == a2[9].f64[1];
  }

  return result;
}

uint64_t sub_1DAA53460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 16);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1DACBA174();
        result = 0;
        if (v12 & 1) == 0 || ((v5 ^ v8))
        {
          return result;
        }
      }

      v14 = v6 == v9 && v7 == v10;
      if (!v14 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAA5355C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DACBA284();
    sub_1DACB71E4();
    sub_1DACB9404();
    v16 = sub_1DACBA2C4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA53714(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v15 = a1[8];
  v16 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v13 = a2[8];
  v14 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (sub_1DAA51414(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_1DACBA174() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t sub_1DAA5386C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 12)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v25 = v3[1];
      v23 = v3[3];
      v24 = v3[2];
      v19 = v3[5];
      v20 = v3[4];
      v15 = v3[7];
      v16 = v3[6];
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      v11 = i[1];
      v21 = i[3];
      v22 = i[2];
      v17 = i[5];
      v18 = i[4];
      v13 = i[7];
      v14 = i[6];
      if ((*(v3 - 4) != *(i - 4) || *(v3 - 3) != *(i - 3)) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if ((v5 != v9 || v6 != v8) && (sub_1DACBA174() & 1) == 0 || (v7 != v10 || v25 != v11) && (sub_1DACBA174() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DACBA174() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DACBA174() & 1) == 0 || (v16 != v14 || v15 != v13) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAA53A80(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(v11, v1, 0x46BuLL);
  if (sub_1DAA53C08(v11) == 1)
  {
    memcpy(__dst, v3, 0x46BuLL);
    if (sub_1DAA53C08(__dst) != 1)
    {
LABEL_9:
      v5 = 0;
      return v5 & 1;
    }
  }

  else
  {
    memcpy(v9, v4, 0x46BuLL);
    memcpy(__dst, v3, 0x46BuLL);
    if (sub_1DAA53C08(__dst) == 1)
    {
      goto LABEL_9;
    }

    memcpy(v8, v3, 0x46AuLL);
    if ((_s10StocksCore13ScoringConfigV2eeoiySbAC_ACtFZ_0(v9, v8) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  memcpy(__dst, v4 + 1136, 0x46BuLL);
  if (sub_1DAA53C08(__dst) != 1)
  {
    memcpy(v8, v4 + 1136, 0x46BuLL);
    memcpy(v9, (v3 + 1136), 0x46BuLL);
    if (sub_1DAA53C08(v9) != 1)
    {
      memcpy(v7, (v3 + 1136), 0x46AuLL);
      v5 = _s10StocksCore13ScoringConfigV2eeoiySbAC_ACtFZ_0(v8, v7);
      return v5 & 1;
    }

    goto LABEL_9;
  }

  memcpy(v9, (v3 + 1136), 0x46BuLL);
  v5 = sub_1DAA53C08(v9) == 1;
  return v5 & 1;
}

uint64_t sub_1DAA53C08(uint64_t a1)
{
  if (*(a1 + 1130))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1DAA53C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

void sub_1DAA53C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1DAA53CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7DC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1DAA4680C(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
      v26 = sub_1DACB91E4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1DAA4680C(&qword_1EE125268, MEMORY[0x1E6969680], MEMORY[0x1E6969698]);
        v31 = sub_1DACB9264();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA540A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA4691C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA54120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA4691C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA54190(uint64_t a1)
{
  sub_1DAA4D520(0, &qword_1EE124E18, type metadata accessor for AppConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAA5423C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DACB78B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t NewsCoreConfiguration.endpointConfigsByEnvironment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations);
  v2 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v40 = *(v1 + 16);
  if (!v40)
  {
LABEL_35:
    v37 = sub_1DAA54738(v2);

    return v37;
  }

  v3 = 0;
  v4 = (v1 + 32);
  v39 = v1;
  while (v3 < *(v1 + 16))
  {
    v41 = v4;
    v42 = v3;
    memcpy(__dst, v4, sizeof(__dst));
    v6 = __dst[25];
    sub_1DAB244EC(__dst, &v44);
    v7 = sub_1DACB92F4();
    v8 = FCEndpointEnvironmentForEnvironment();

    v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v9 = sub_1DACB92F4();
    v10 = sub_1DACB92F4();
    v11 = sub_1DACB92F4();
    v12 = sub_1DACB92F4();
    if (v6)
    {
      v13 = sub_1DACB92F4();
      if (__dst[27])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0;
      if (__dst[27])
      {
LABEL_8:
        v14 = sub_1DACB92F4();
        if (__dst[29])
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    v14 = 0;
    if (__dst[29])
    {
LABEL_9:
      v15 = sub_1DACB92F4();
      if (__dst[31])
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

LABEL_14:
    v15 = 0;
    if (__dst[31])
    {
LABEL_10:
      v16 = sub_1DACB92F4();
      if (__dst[33])
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_15:
    v16 = 0;
    if (__dst[33])
    {
LABEL_11:
      v17 = sub_1DACB92F4();
      goto LABEL_17;
    }

LABEL_16:
    v17 = 0;
LABEL_17:
    v18 = [objc_allocWithZone(MEMORY[0x1E69B5278]) initWithClientAPIBaseURLString:v9 notificationsBaseURLString:v10 staticAssetBaseURLString:v11 remoteDataSourceBaseURLString:v12 newsletterAPIBaseURLString:0 appAnalyticsBaseURLString:0 fairPlayBaseURLString:0 searchAPIBaseURLString:0 puzzlesArchiveAPIBaseURLString:0 appAnalyticsNotificationReceiptBaseURLString:0 authTokenAPIBaseURLString:0 sportsDataVisualizationAPIBaseURLString:0 fineGrainedNewsletterSubscriptionBaseURLString:0 appAnalyticsSportsEventsBaseURLString:0 appAnalyticsAppHealthBaseURLString:0 ckOrderFeedBaseURLString:v13 ckMultiFetchBaseURLString:v14 ckRecordFetchBaseURLString:v15 ckEdgeCachedOrderFeedBaseURLString:v16 ckEdgeCachedMultiFetchBaseURLString:v17];

    v19 = v18;
    if (v18)
    {
      v20 = v46;
      if ((v46 & 0xC000000000000001) != 0)
      {
        if (v46 >= 0)
        {
          v20 = v46 & 0xFFFFFFFFFFFFFF8;
        }

        v21 = sub_1DACB9E14();
        if (__OFADD__(v21, 1))
        {
          goto LABEL_38;
        }

        v20 = sub_1DAB6012C(v20, v21 + 1);
        v46 = v20;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v20;
      v23 = sub_1DAB09598(v43);
      v25 = *(v20 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (*(v20 + 24) >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }

        v34 = v23;
        sub_1DAB65AA0();
        v23 = v34;
        v31 = v44;
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v32 = v31[7];
        v33 = *(v32 + 8 * v23);
        *(v32 + 8 * v23) = v19;
      }

      else
      {
        sub_1DAB60A14(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_1DAB09598(v43);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_40;
        }

LABEL_28:
        v31 = v44;
        if (v29)
        {
          goto LABEL_29;
        }

LABEL_31:
        v31[(v23 >> 6) + 8] |= 1 << v23;
        *(v31[6] + 8 * v23) = v43;
        *(v31[7] + 8 * v23) = v19;
        v35 = v31[2];
        v27 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v27)
        {
          goto LABEL_39;
        }

        v31[2] = v36;
      }

      sub_1DAB68598(__dst);
      v46 = v31;
      goto LABEL_4;
    }

    v5 = sub_1DAB5FD2C(v43);

    sub_1DAB68598(__dst);
LABEL_4:
    v3 = v42 + 1;
    v4 = v41 + 272;
    v1 = v39;
    if (v40 == v42 + 1)
    {
      v2 = v46;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAA54738(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1DACB9E14())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1DAA96D8C();
  v3 = sub_1DACB9EA4();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = sub_1DACB9E04();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = v3 + 64;
  sub_1DACB71F4();
  result = sub_1DACB71E4();
  v15 = 0;
  v36 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v26 = sub_1DACB9E34();
    if (!v26 || (v28 = v27, *&v37 = v26, sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98), swift_dynamicCast(), *&v45[0] = v28, sub_1DAA420F4(0, &unk_1EE11F840, 0x1E69B5278), swift_dynamicCast(), v25 = v41, v19 = v15, v21 = v7, !v41))
    {
LABEL_34:
      sub_1DAA54B38(v36);

      return v3;
    }

LABEL_25:
    *&v45[0] = v25;
    sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
    swift_dynamicCast();
    sub_1DAA420F4(0, &unk_1EE11F840, 0x1E69B5278);
    swift_dynamicCast();
    v41 = v37;
    v42 = v38;
    v43 = v39;
    sub_1DAA5616C(&v40, v44);
    v37 = v41;
    v38 = v42;
    v39 = v43;
    sub_1DAA5616C(v44, v45);
    result = sub_1DACB9BF4();
    v29 = -1 << *(v3 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) != 0)
    {
      v16 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v8 = v36;
    }

    else
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      v8 = v36;
      do
      {
        if (++v31 == v33 && (v32 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v31);
      }

      while (v35 == -1);
      v16 = __clz(__rbit64(~v35)) + (v31 << 6);
    }

    *(v13 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = *(v3 + 48) + 40 * v16;
    *v17 = v37;
    *(v17 + 16) = v38;
    *(v17 + 32) = v39;
    result = sub_1DAA5616C(v45, (*(v3 + 56) + 32 * v16));
    ++*(v3 + 16);
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_21:
    v21 = (v18 - 1) & v18;
    v22 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v23 = *(*(v8 + 48) + v22);
    v24 = *(*(v8 + 56) + v22);
    v25 = v23;
    v24;
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_34;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v36;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DACB71F4();
}

void sub_1DAA54EC0(const void *a1@<X0>, void *a2@<X8>)
{
  __dst[284] = *MEMORY[0x1E69E9840];
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  memcpy(__dst, a1, 0x8DBuLL);
  sub_1DAA55138();
  v4 = sub_1DACB7584();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_1DACB7B44();
  __dst[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:__dst];

  if (!v9)
  {
    v14 = __dst[0];
    v15 = sub_1DACB78C4();

    swift_willThrow();
    goto LABEL_6;
  }

  v10 = __dst[0];
  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAA61100();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v13 = [objc_allocWithZone(MEMORY[0x1E69B5480]) init];
    sub_1DAA563C0(v4, v6);
    goto LABEL_7;
  }

  sub_1DAA55EB0(v16);
  v11 = objc_allocWithZone(MEMORY[0x1E69B5480]);
  v12 = sub_1DACB9114();

  v13 = [v11 initWithPersonalizationTreatmentDictionary_];

  if (v13)
  {
    sub_1DAA563C0(v4, v6);

LABEL_7:
    *a2 = v13;
    return;
  }

  __break(1u);
}

unint64_t sub_1DAA55138()
{
  result = qword_1EE124500;
  if (!qword_1EE124500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124500);
  }

  return result;
}

uint64_t sub_1DAA5518C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E1277300](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_1DACB71E4();
      sub_1DAA4C8A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1DAA55224()
{
  result = qword_1EE125270;
  if (!qword_1EE125270)
  {
    sub_1DACB7DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125270);
  }

  return result;
}

uint64_t sub_1DAA5527C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DACB7DC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
  v33 = a2;
  v11 = sub_1DACB91E4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DAA4CCDC(&qword_1EE125268, MEMORY[0x1E6969680], MEMORY[0x1E6969698]);
      v21 = sub_1DACB9264();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DAA5555C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1DAA5555C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1DACB7DC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DAB898C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DAB8AB74();
      goto LABEL_12;
    }

    sub_1DAB8B31C(v10 + 1);
  }

  v12 = *v3;
  sub_1DAA4CCDC(&qword_1EE125270, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
  v13 = sub_1DACB91E4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1DAA4CCDC(&qword_1EE125268, MEMORY[0x1E6969680], MEMORY[0x1E6969698]);
      v21 = sub_1DACB9264();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DACBA1E4();
  __break(1u);
  return result;
}

uint64_t sub_1DAA55824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAA559E4(void *a1)
{
  v3 = v1;
  sub_1DAA55BB4(0, &qword_1EE123BB0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8 - 8];
  memcpy(v13, (v3 + 1136), sizeof(v13));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA55C18();
  sub_1DACBA304();
  memcpy(v12, v3, sizeof(v12));
  v14 = 0;
  sub_1DAA55E44();
  sub_1DACBA074();
  if (!v2)
  {
    memcpy(v12, v13, sizeof(v12));
    v14 = 1;
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1DAA55BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA55C18();
    v7 = a3(a1, &type metadata for NewsPersonalizationTreatment.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAA55C18()
{
  result = qword_1EE124518;
  if (!qword_1EE124518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124518);
  }

  return result;
}

unint64_t sub_1DAA55C70()
{
  result = qword_1EE124508;
  if (!qword_1EE124508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124508);
  }

  return result;
}

void sub_1DAA55CC4(void *a1, SEL *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125490, 0x1E69B5210);
  v3 = sub_1DACB8244();
  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 *a2];

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1DAA55D60(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125810, &protocol descriptor for NewsConfigurationManagerType, 0);
  sub_1DACB8254();
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAA55DF0()
{
  result = qword_1EE124510;
  if (!qword_1EE124510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124510);
  }

  return result;
}

unint64_t sub_1DAA55E44()
{
  result = qword_1EE124FB8;
  if (!qword_1EE124FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FB8);
  }

  return result;
}

uint64_t sub_1DAA55EB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DAA96D8C();
    v2 = sub_1DACB9EA4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1DACB71F4();
  result = sub_1DACB71E4();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAA7C694(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;
    sub_1DACB71E4();
    swift_dynamicCast();
    sub_1DAA5616C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1DAA5616C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DAA5616C(v31, v32);
    result = sub_1DACB9BF4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1DAA5616C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_1DAA5616C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1DAA5617C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &qword_1EE1252F0, 0x1E69B54A0);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (!v15[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1257B0, &protocol descriptor for ManagedConfigurationServiceType, 1);
  result = sub_1DACB8254();
  if (!v14[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BD8, &protocol descriptor for UserRegionProviderType, 1);
  result = sub_1DACB8254();
  if (v13)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    MEMORY[0x1EEE9AC00](v6);
    v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_1DAA566A4(v5, v15, v14, *v8);
    __swift_destroy_boxed_opaque_existential_1(v12);
    result = type metadata accessor for FeatureAvailability();
    a2[3] = result;
    a2[4] = &off_1F568D358;
    *a2 = v10;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DAA563C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DAA56414@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DACB7E44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserRegionProvider(0);
  v7 = swift_allocObject();
  sub_1DACB7DF4();
  sub_1DACB7DE4();
  result = (*(v3 + 8))(v5, v2);
  a1[3] = v6;
  a1[4] = &off_1F5687160;
  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for UserRegionProvider(uint64_t a1)
{
  result = qword_1EE121CE8;
  if (!qword_1EE121CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA5656C(uint64_t a1)
{
  sub_1DAA565FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAA565FC(uint64_t a1)
{
  if (!qword_1EE125260)
  {
    sub_1DACB7DC4();
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE125260);
    }
  }
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

void *sub_1DAA566A4(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v20[3] = v7;
  v20[4] = &off_1F5687160;
  v20[0] = a4;
  type metadata accessor for FeatureAvailability();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v17 - v10);
  (*(v12 + 16))(&v17 - v10);
  v13 = *v11;
  v19[3] = v7;
  v19[4] = &off_1F5687160;
  v19[0] = v13;
  v8[7] = a1;
  sub_1DAA4D678(a2, (v8 + 8));
  sub_1DAA4D678(a3, (v8 + 13));
  sub_1DAA4D678(v19, (v8 + 18));
  sub_1DAA4D678(a2, v18);
  v14 = type metadata accessor for PaidBundleViaOfferFeatureAvailability();
  v15 = swift_allocObject();
  sub_1DAA4D460(v18, v15 + 16);
  v8[5] = v14;
  v8[6] = &off_1F5692780;
  v8[2] = v15;
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v8;
}

uint64_t sub_1DAA568EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1130))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAA56918()
{
  type metadata accessor for BlankAllowListProvider();

  return swift_allocObject();
}

id sub_1DAA56970(void *a1)
{
  v1 = a1;
  sub_1DACB88F4();

  return v3;
}

void *sub_1DAA569DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E38, &protocol descriptor for WatchlistServiceType, 1);
  result = sub_1DACB8254();
  if (v7[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType, 1);
    result = sub_1DACB8254();
    if (v6[3])
    {
      v5 = type metadata accessor for WatchlistManager();
      swift_allocObject();
      result = sub_1DAA59144(v7, v6);
      a2[3] = v5;
      a2[4] = &off_1F5692AD8;
      *a2 = result;
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

void sub_1DAA56AEC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA5A8BC(0, &qword_1ECBE9A78, &type metadata for WatchlistManager.WatchlistsState, MEMORY[0x1E69E8300]);
  }
}

void sub_1DAA56B4C()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA59DC0(0, &qword_1ECBE9A80, sub_1DAC9E590, MEMORY[0x1E69E8300]);
  }
}

void sub_1DAA56BB8()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA59DC0(0, &qword_1ECBE9A90, sub_1DAC9E5C4, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA56C5C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = a1(0);
  swift_allocObject();
  result = a3();
  a5[3] = v8;
  a5[4] = a4;
  *a5 = result;
  return result;
}

uint64_t sub_1DAA56CEC()
{
  v1 = v0;
  v2 = sub_1DACB8FB4();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB9944();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DACB9004();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v13 = v12;
  v14 = sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v22[1] = "ervice";
  v22[2] = v14;
  sub_1DACB8FE4();
  aBlock[0] = v13;
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v15 = MEMORY[0x1E69E8030];
  sub_1DAA57198(0, &qword_1EE123E78, MEMORY[0x1E69E8030]);
  sub_1DAA573D4(&qword_1EE123E70, &qword_1EE123E78, v15);
  sub_1DACB9BB4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v23);
  *(v0 + 32) = sub_1DACB9974();
  v16 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  aBlock[4] = sub_1DAA57C50;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v29 = v16;
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  v20 = v26;
  v19 = v27;
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v11, v20, v17);
  _Block_release(v17);
  (*(v28 + 8))(v20, v19);
  (*(v24 + 8))(v11, v25);

  return v1;
}

void sub_1DAA57198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA571EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA57250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA572B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA572FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA57344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5738C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA573D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57198(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57424(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5802C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA57488(uint64_t a1)
{
  v20 = MEMORY[0x1E69E7CC0];
  v2 = 51;
  sub_1DAA57914(0, 51, 0);
  v3 = 0;
  v4 = v20;
  while (1)
  {
    sub_1DAA58284(0, 0, v18);
    v20 = v4;
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1DAA57914((v5 > 1), v6 + 1, 1);
      v4 = v20;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 136 * v6;
    *(v7 + 32) = v18[0];
    v8 = v18[1];
    v9 = v18[2];
    v10 = v18[4];
    *(v7 + 80) = v18[3];
    *(v7 + 96) = v10;
    *(v7 + 48) = v8;
    *(v7 + 64) = v9;
    v11 = v18[5];
    v12 = v18[6];
    v13 = v18[7];
    *(v7 + 160) = v19;
    *(v7 + 128) = v12;
    *(v7 + 144) = v13;
    *(v7 + 112) = v11;
    if (v3 != 50)
    {
      break;
    }

    v14 = 0;
LABEL_7:
    if (!--v2)
    {
      sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
      sub_1DAA59F54();
      v16 = sub_1DACB94F4();

      os_unfair_lock_lock((a1 + 16));
      v17 = *(a1 + 24);
      sub_1DACB71E4();
      os_unfair_lock_unlock((a1 + 16));
      sub_1DAA5A1E0(v16);
      os_unfair_lock_lock((a1 + 16));

      *(a1 + 24) = v17;
      os_unfair_lock_unlock((a1 + 16));
      return;
    }

    v15 = v3 == 50;
    v3 = v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v14 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}