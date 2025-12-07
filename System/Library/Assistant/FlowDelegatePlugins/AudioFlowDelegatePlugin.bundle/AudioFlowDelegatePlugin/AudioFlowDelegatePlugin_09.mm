unint64_t sub_10D408()
{
  result = qword_34C170;
  if (!qword_34C170)
  {
    sub_2CCFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C170);
  }

  return result;
}

uint64_t sub_10D460()
{
  v6 = sub_2CDE30();
  v7 = &protocol witness table for DeviceResolutionProvider;
  sub_F390(&v5);
  sub_2CDE20();
  v3 = sub_2CC710();
  v4 = &protocol witness table for SharedContextProvider;
  *&v2 = sub_2CC700();
  type metadata accessor for DetermineFlowStrategy();
  v0 = swift_allocObject();
  sub_F338(&v5, v0 + 16);
  result = sub_F338(&v2, v0 + 56);
  qword_35F728 = v0;
  return result;
}

uint64_t sub_10D500()
{
  result = sub_BC4F4();
  qword_35F730 = result;
  return result;
}

id sub_10D520()
{
  result = [objc_allocWithZone(type metadata accessor for DetermineIntentHandler()) init];
  static Determine.intentHandler = result;
  return result;
}

uint64_t *Determine.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  return &static Determine.intentHandler;
}

id static Determine.intentHandler.getter()
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Determine.intentHandler;

  return v0;
}

void static Determine.intentHandler.setter(uint64_t a1)
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Determine.intentHandler;
  static Determine.intentHandler = a1;
}

uint64_t (*static Determine.intentHandler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10D780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v20 = a1;
  v5 = sub_2CE990();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE180();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CC360();
  v33 = &protocol witness table for StringsFileResolver;
  sub_F390(&v31);
  sub_2CC350();
  v13 = sub_2CC2B0();
  v29 = v13;
  v30 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v28);
  sub_2CC2A0();
  v26 = v13;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v14 = type metadata accessor for SiriAudioOutputProvider();
  v15 = swift_allocObject();
  sub_F338(&v25, v15 + 16);
  v26 = v14;
  v27 = &off_337EB0;
  *&v25 = v15;
  sub_2C9A00();
  v22 = sub_2CB7A0();
  v23 = &protocol witness table for TCCProvider;
  sub_F390(&v21);
  sub_2CB790();
  sub_20410(a2, a3);
  v16 = swift_allocObject();
  sub_2CE170();
  sub_2CE980();
  v17 = sub_2CBA00();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  *(v16 + 64) = v17;
  *(v16 + 16) = v20;
  sub_F338(&v31, v16 + 24);
  sub_F338(&v28, v16 + 72);
  sub_F338(&v25, v16 + 112);
  sub_F338(&v24, v16 + 152);
  sub_F338(&v21, v16 + 192);
  return v16;
}

uint64_t sub_10DA64()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_286F0(v21, &v14);
  if (v15)
  {

    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_28760(&v14);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

void *sub_10DE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2CB4A0();
  v26 = v8;
  v27 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v25 = a2;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v24[3] = v9;
  v24[4] = &off_337EB0;
  v24[0] = a3;
  _s11descr32D959O18NeedsValueStrategyCMa();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v24, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for SearchForMediaCatDialogService();
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000011;
  v16[3] = 0x80000000002DA8D0;
  v16[5] = 0xD000000000000014;
  v16[6] = 0x80000000002DCFE0;
  v16[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v23[3] = sub_2CC2B0();
  v23[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v23);
  sub_2CC2A0();
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);
  sub_2CC350();
  v17 = sub_2CB490();
  v21[3] = v8;
  v21[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v21[0] = v17;
  type metadata accessor for SearchForMediaDialogProvider(0);
  v18 = swift_allocObject();
  v18[15] = v16;
  sub_EEAC(v23, (v18 + 16));
  sub_EEAC(v21, (v18 + 21));
  sub_EEAC(v22, (v18 + 3));
  sub_EEAC(v21, (v18 + 8));
  sub_306C(a4);
  sub_306C(v21);
  sub_306C(v22);
  sub_306C(v23);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v25, (v10 + 3));
  sub_306C(v24);
  return v10;
}

void *sub_10E10C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v26 = v8;
  v27 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v25 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v24[3] = v9;
  v24[4] = &off_337EB0;
  v24[0] = a4;
  type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v24, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for SearchForMediaCatDialogService();
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000011;
  v16[3] = 0x80000000002DA8D0;
  v16[5] = 0xD000000000000014;
  v16[6] = 0x80000000002DCFE0;
  v16[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v23[3] = sub_2CC2B0();
  v23[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v23);
  sub_2CC2A0();
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);
  sub_2CC350();
  v17 = sub_2CB490();
  v21[3] = v8;
  v21[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v21[0] = v17;
  type metadata accessor for SearchForMediaDialogProvider(0);
  v18 = swift_allocObject();
  v18[15] = v16;
  sub_EEAC(v23, (v18 + 16));
  sub_EEAC(v21, (v18 + 21));
  sub_EEAC(v22, (v18 + 3));
  sub_EEAC(v21, (v18 + 8));
  sub_306C(a2);
  sub_306C(v21);
  sub_306C(v22);
  sub_306C(v23);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v25, (v10 + 3));
  sub_306C(v24);
  return v10;
}

uint64_t sub_10E3A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2CB4A0();
  v26[3] = v7;
  v26[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v26[0] = a3;
  type metadata accessor for SearchForMediaCatDialogService();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[5] = 0xD000000000000014;
  v8[6] = 0x80000000002DCFE0;
  v8[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v9 = sub_2CC2B0();
  v24 = v9;
  v25 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v23);
  sub_2CC2A0();
  v10 = sub_2CC360();
  v21 = v10;
  v22 = &protocol witness table for StringsFileResolver;
  sub_F390(&v20);
  sub_2CC350();
  v18 = v7;
  v19 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v17 = sub_2CB490();
  type metadata accessor for SearchForMediaDialogProvider(0);
  v11 = swift_allocObject();
  v11[15] = v8;
  sub_EEAC(&v23, (v11 + 16));
  sub_EEAC(&v17, (v11 + 21));
  sub_EEAC(&v20, v16);
  sub_F338(&v17, v15);
  sub_306C(&v20);
  sub_306C(&v23);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v16, (v11 + 3));
  sub_F338(v15, (v11 + 8));
  type metadata accessor for SearchForMediaViewProvider(0);
  v12 = swift_allocObject();
  sub_BBDC8(&v23);
  *(v12 + 16) = v11;
  sub_F338(&v23, v12 + 24);
  sub_EEAC(v26, &v23);
  v21 = v9;
  v22 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v20);

  sub_2CC2A0();
  v18 = v10;
  v19 = &protocol witness table for StringsFileResolver;
  sub_F390(&v17);
  sub_2CC350();
  *(a4 + 112) = &off_32FFC0;

  sub_306C(a2);
  sub_306C(v26);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  sub_F338(&v23, a4 + 32);
  sub_F338(&v20, a4 + 72);
  sub_F338(&v17, a4 + 120);
  return a4;
}

uint64_t sub_10E65C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for SearchForMediaCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000014;
  v9[6] = 0x80000000002DCFE0;
  v9[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for SearchForMediaDialogProvider(0);
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_10E8F4()
{
  v0 = sub_2CC2B0();
  v94 = *(v0 - 8);
  __chkstk_darwin(v0);
  v93 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2CC360();
  v90 = *(v80 - 8);
  __chkstk_darwin(v80);
  v86 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_351548, &qword_2D4538);
  v91 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v89 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v79 - v6);
  sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  v87 = sub_334A0(0, &qword_351550, INSearchForMediaIntentResponse_ptr);
  sub_2C9780();
  v8 = sub_10DA64();
  sub_2C9A00();
  v9 = sub_2CB4A0();
  v10 = sub_2CB490();
  _s11descr32D959O27NeedsDisambiguationStrategyCMa(0);
  v11 = swift_allocObject();
  v12 = sub_10E3A8(v8, &v127, v10, v11);

  *&v127 = v12;
  sub_10FE64(&qword_351558, _s11descr32D959O27NeedsDisambiguationStrategyCMa, &protocol conformance descriptor for MediaItemDisambiguationStrategy<A>);
  sub_2C96A0();

  sub_2C9760();
  v13 = sub_10DA64();
  v14 = sub_2CB490();
  v128 = v0;
  v129 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v127);

  sub_2CC2A0();
  v15 = type metadata accessor for SiriAudioOutputProvider();
  v16 = swift_allocObject();
  sub_F338(&v127, v16 + 16);
  sub_2C9A00();
  v17 = sub_10DE70(v13, v14, v16, &v127);

  *&v127 = v17;
  _s11descr32D959O18NeedsValueStrategyCMa();
  sub_10FE64(&qword_351560, _s11descr32D959O18NeedsValueStrategyCMa, &unk_2D0F50);
  sub_2C9630();

  sub_2C96F0();
  v18 = sub_10DA64();
  sub_2C9A00();
  _s11descr32D959O25NeedsConfirmationStrategyCMa(0);
  swift_allocObject();
  v19 = sub_F4FE4(v18, &v127);

  *&v127 = v19;
  sub_10FE64(&qword_351568, _s11descr32D959O25NeedsConfirmationStrategyCMa, &unk_2D8300);
  sub_2C9690();

  v96 = v3;
  sub_2C9750();
  v20 = sub_10DA64();
  sub_2C9A00();
  v21 = sub_2CB490();
  _s11descr32D959O21ConfirmIntentStrategyCMa(0);
  v22 = swift_allocObject();
  v23 = sub_10E65C(v20, &v127, v21, v22);

  *&v127 = v23;
  sub_10FE64(&qword_351570, _s11descr32D959O21ConfirmIntentStrategyCMa, &unk_2D89E0);
  sub_2C96C0();

  sub_2C9720();
  v24 = sub_10DA64();
  sub_2CC350();
  sub_2C9A00();
  v25 = sub_2CB490();
  v125 = v9;
  v126 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v124 = v25;
  v122 = v0;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);
  sub_2CC2A0();
  v119 = v0;
  v120 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v118);
  sub_2CC2A0();
  v26 = swift_allocObject();
  sub_F338(&v118, v26 + 16);
  v119 = v15;
  v120 = &off_337EB0;
  *&v118 = v26;
  v85 = type metadata accessor for SearchForMedia.HandleIntentStrategy();
  v27 = swift_allocObject();
  v28 = sub_F9A0(&v118, v15);
  __chkstk_darwin(v28);
  v30 = (&v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v116 = v15;
  v117 = &off_337EB0;
  v88 = v15;
  *&v115 = v32;
  v84 = type metadata accessor for SearchForMediaCatDialogService();
  v33 = swift_allocObject();
  v83 = 0x80000000002DCFE0;
  v33[2] = 0xD000000000000011;
  v33[3] = 0x80000000002DA8D0;
  v33[5] = 0xD000000000000014;
  v33[6] = 0x80000000002DCFE0;
  v33[4] = v24;
  v27[7] = v33;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v92 = v0;
  v113 = v0;
  v114 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v112);
  sub_2CC2A0();
  v34 = v80;
  v111[3] = v80;
  v111[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v111);
  sub_2CC350();
  v35 = sub_2CB490();
  *(&v109 + 1) = v9;
  v110 = &protocol witness table for SiriKitTaskLoggingProvider;
  v95 = v9;
  *&v108 = v35;
  v81 = type metadata accessor for SearchForMediaDialogProvider(0);
  v36 = swift_allocObject();
  v36[15] = v33;
  sub_EEAC(&v112, (v36 + 16));
  sub_EEAC(&v108, (v36 + 21));
  sub_EEAC(v111, &v105);
  sub_F338(&v108, &v102);
  sub_306C(v111);
  sub_306C(&v112);
  v36[13] = 0xD000000000000011;
  v36[14] = 0x80000000002DA8D0;
  v36[2] = v24;
  sub_F338(&v105, (v36 + 3));
  sub_F338(&v102, (v36 + 8));
  v27[24] = v36;
  v82 = type metadata accessor for SearchForMediaViewProvider(0);
  v37 = swift_allocObject();

  sub_BBDC8(&v112);

  v90[1](v86, v34);
  *(v37 + 16) = v36;
  sub_F338(&v112, v37 + 24);
  v27[23] = v37;
  sub_F338(&v127, (v27 + 2));
  sub_F338(&v124, (v27 + 8));
  sub_F338(&v121, (v27 + 13));
  sub_F338(&v115, (v27 + 18));
  sub_306C(&v118);
  *&v127 = v27;
  sub_10FE64(&qword_351578, type metadata accessor for SearchForMedia.HandleIntentStrategy, &protocol conformance descriptor for SearchForMedia.HandleIntentStrategy);
  sub_2C9640();

  v90 = v7;
  sub_2C9700();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v38 = CATDefaultMode;
  v39 = sub_2CBC00();
  v40 = sub_2CBBF0();
  sub_2C9A00();
  v41 = v93;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v42 = swift_allocObject();
  v125 = &type metadata for StringsBackedAppNameResolver;
  v86 = sub_2869C();
  v126 = v86;
  *&v124 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
  v122 = v39;
  v123 = &protocol witness table for MorphunProvider;
  v120 = &protocol witness table for FeatureFlagProvider;
  *&v121 = v40;
  v43 = v92;
  v119 = v92;
  v44 = sub_F390(&v118);
  (*(v94 + 16))(v44, v41, v43);
  *(v42 + 296) = v38;
  sub_EEAC(&v118, v42 + 256);
  sub_EEAC(&v124, &v115);
  sub_EEAC(&v121, &v112);
  sub_EEAC(&v127, v111);
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v45 = sub_2CCA30();

  v46 = sub_2CCA20();
  v106 = v45;
  v107 = &protocol witness table for MultiUserConnectionProvider;
  *&v105 = v46;
  v47 = sub_2CB9E0();
  v103 = v47;
  v104 = &protocol witness table for DeviceProvider;
  sub_F390(&v102);
  sub_2CB9C0();
  sub_EEAC(&v115, v42 + 16);
  sub_EEAC(&v112, v42 + 216);
  sub_EEAC(v111, v42 + 56);
  sub_EEAC(&v105, v42 + 96);
  sub_EEAC(&v102, v42 + 176);
  sub_286F0(&v108, &v97);
  if (v98)
  {

    sub_28760(&v108);
    sub_306C(v111);
    sub_306C(&v112);
    sub_306C(&v115);
    (*(v94 + 8))(v93, v43);
    sub_306C(&v127);
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v102);
    sub_306C(&v105);
    sub_F338(&v97, &v99);
  }

  else
  {
    sub_EEAC(v111, &v99);
    v48 = v42;
    v49 = sub_2C9E60();
    swift_allocObject();
    v50 = sub_2C9E50();
    v100 = v49;
    v101 = &protocol witness table for ContactsManager;
    v42 = v48;

    *&v99 = v50;
    sub_28760(&v108);
    sub_306C(v111);
    sub_306C(&v112);
    sub_306C(&v115);
    (*(v94 + 8))(v93, v43);
    sub_306C(&v127);
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v102);
    sub_306C(&v105);
    if (v98)
    {
      sub_28760(&v97);
    }
  }

  sub_F338(&v99, v42 + 136);
  v51 = swift_allocObject();
  v52 = v83;
  v51[2] = 0xD000000000000011;
  v51[3] = 0x80000000002DA8D0;
  v51[5] = 0xD000000000000014;
  v51[6] = v52;
  v51[4] = v42;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v125 = v43;
  v126 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v124);
  sub_2CC2A0();
  v122 = v34;
  v123 = &protocol witness table for StringsFileResolver;
  sub_F390(&v121);
  sub_2CC350();
  v53 = v95;
  v54 = sub_2CB490();
  v119 = v53;
  v120 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v118 = v54;
  v55 = swift_allocObject();
  v56 = v42;
  v85 = v42;
  v57 = v55;
  *(v55 + 120) = v51;
  sub_EEAC(&v124, v55 + 128);
  sub_EEAC(&v118, (v57 + 21));
  sub_EEAC(&v121, &v115);
  sub_EEAC(&v118, &v112);
  sub_306C(&v127);
  sub_306C(&v118);
  sub_306C(&v121);
  sub_306C(&v124);
  v57[13] = 0xD000000000000011;
  v57[14] = 0x80000000002DA8D0;
  v57[2] = v56;
  sub_F338(&v115, (v57 + 3));
  sub_F338(&v112, (v57 + 8));
  v58 = swift_allocObject();
  swift_retain_n();
  sub_BBDC8((v58 + 24));
  v59 = v86;
  v128 = &type metadata for StringsBackedAppNameResolver;
  v129 = v86;
  *&v127 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v127 + 16);
  v125 = v47;
  v126 = &protocol witness table for DeviceProvider;
  sub_F390(&v124);
  sub_2CB9C0();
  v122 = v43;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);
  sub_2CC2A0();
  v119 = sub_2CC810();
  v120 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v118);
  sub_2CC800();
  v116 = sub_2CC590();
  v117 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v115);
  sub_2CC580();
  sub_20410(&qword_3512B0, &qword_2D4250);
  v60 = swift_allocObject();
  v61 = class metadata base offset for CommonAppResolver;
  v62 = v60 + *(*v60 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v62, "resolutionType");
  v62[15] = -18;
  sub_EEAC(&v127, v60 + *(*v60 + v61 + 16));
  sub_EEAC(&v124, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v121, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v118, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v115, v60 + *(*v60 + class metadata base offset for CommonAppResolver + 48));
  v63 = sub_2CCF50();
  sub_306C(&v115);
  sub_306C(&v118);
  sub_306C(&v121);
  sub_306C(&v124);
  sub_306C(&v127);
  sub_2C9A00();
  v125 = &type metadata for StringsBackedAppNameResolver;
  v126 = v59;
  *&v124 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
  v122 = v43;
  v123 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v121);
  sub_2CC2A0();
  v119 = v43;
  v120 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v118);
  sub_2CC2A0();
  v64 = v88;
  v65 = swift_allocObject();
  sub_F338(&v118, v65 + 16);
  v119 = v64;
  v120 = &off_337EB0;
  *&v118 = v65;
  swift_setDeallocating();
  sub_306C((v58 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_351580, &qword_2D4540);
  v66 = swift_allocObject();
  v66[26] = 0;
  v66[2] = v63;
  v66[3] = v57;
  v66[4] = sub_107D74;
  v66[5] = 0;
  sub_F338(&v127, (v66 + 6));
  sub_F338(&v124, (v66 + 11));
  sub_F338(&v121, (v66 + 16));
  sub_F338(&v118, (v66 + 21));
  *&v127 = v66;
  sub_72068(&qword_351588, &qword_351580, &qword_2D4540, &unk_2D7C94);
  sub_2C9660();

  v67 = v96;
  v68 = v90;
  sub_2C9710();
  *&v127 = sub_10D780(v57, &qword_351590, &qword_2D4548);
  sub_20410(&qword_351590, &qword_2D4548);
  sub_72068(&qword_351598, &qword_351590, &qword_2D4548, &unk_2D2FD8);
  sub_2C96B0();

  sub_2C9770();
  v69 = sub_10DA64();
  sub_2C9A00();
  v70 = sub_2CB490();
  v71 = v92;
  v125 = v92;
  v126 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v124);

  sub_2CC2A0();
  v72 = swift_allocObject();
  sub_F338(&v124, v72 + 16);
  v73 = sub_10E10C(v69, &v127, v70, v72);

  *&v127 = v73;
  type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
  sub_10FE64(&qword_3515A0, type metadata accessor for SearchForMedia.UnsupportedValueStrategy, &protocol conformance descriptor for SearchForMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  v128 = v71;
  v129 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v127);
  sub_2CC2A0();
  v74 = swift_allocObject();
  sub_F338(&v127, v74 + 16);
  v128 = v64;
  v129 = &off_337EB0;
  *&v127 = v74;
  sub_20410(&qword_3515A8, &qword_2D4550);
  v75 = swift_allocObject();
  v75[8] = 0xD000000000000025;
  v75[9] = 0x80000000002DA520;
  v75[10] = 0x7461447475706E69;
  v75[11] = 0xE900000000000061;
  v75[2] = v57;
  sub_F338(&v127, (v75 + 3));
  *&v127 = v75;
  sub_72068(&qword_3515B0, &qword_3515A8, &qword_2D4550, &unk_2D0918);
  sub_2C9680();

  sub_2C9730();
  v76 = v91;
  (*(v91 + 16))(v89, v68, v67);
  sub_20410(&qword_3515B8, &qword_2D4558);
  swift_allocObject();
  v77 = sub_2C96E0();

  (*(v76 + 8))(v68, v67);
  return v77;
}

uint64_t sub_10FE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10FEB4()
{
  v0 = sub_2CC360();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC350();
  v9 = v0;
  v10 = &protocol witness table for StringsFileResolver;
  v4 = sub_F390(&v8);
  (*(v1 + 32))(v4, v3, v0);
  type metadata accessor for ConfirmationViewProvider();
  v5 = swift_allocObject();
  result = sub_269C4(&v8, v5 + 16);
  qword_35F740 = v5;
  return result;
}

double sub_10FFB4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = a1;
  *&v68 = sub_2C8EC0();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v64 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v58 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v61 = v12;
  v60 = v7 + 16;
  v59 = v13;
  v13(v11, v12, v6);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "ConfirmationViewProvider#makeYesNoConfirmationViews Creating confirmation views", v16, 2u);
  }

  v17 = *(v7 + 8);
  v65 = v6;
  v63 = v7 + 8;
  v62 = v17;
  v17(v11, v6);
  sub_35E0((v3 + 16), *(v3 + 40));
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v58[2] = sub_2CC620();
  v66 = v21;

  v22 = v67[1];
  v23 = v68;
  v22(v5, v68);
  sub_35E0((v3 + 16), *(v3 + 40));
  v24 = [v19 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v25 = sub_2CC620();

  v22(v5, v23);
  v77 = 0;
  v78 = v72;
  v79 = v73;
  *v80 = *v74;
  *&v80[15] = *&v74[15];
  v81 = 2;
  v26 = sub_234C04();
  if (!v26)
  {
    goto LABEL_10;
  }

  v27 = v26;
  v75 = 1;
  v76 = 2;
  v28 = sub_234C04();
  if (!v28)
  {

LABEL_10:

    sub_CE5B0();
    swift_allocError();
    v70();

    return result;
  }

  v29 = v28;
  sub_334A0(0, &qword_351698, SAUIConfirmationOption_ptr);
  sub_2CE270();
  v58[1] = v25;
  sub_2CE270();
  v30 = sub_20410(&unk_351900, &unk_2D0960);
  v31 = swift_allocObject();
  v68 = xmmword_2D0770;
  *(v31 + 16) = xmmword_2D0770;
  *(v31 + 32) = v27;
  v67 = v27;
  v32 = sub_2CEA60();
  sub_2CE270();
  sub_2CE270();
  v66 = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = v68;
  *(v33 + 32) = v29;
  v34 = v29;
  v35 = sub_2CEA60();
  sub_334A0(0, &qword_3516A0, SAUIConfirmationView_ptr);
  v36 = v35;
  v37 = v32;
  v38 = sub_2CEA00();
  v39 = v64;
  v40 = v65;
  v59(v64, v61, v65);
  v41 = v38;
  v42 = sub_2CDFE0();
  v43 = sub_2CE690();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v36;
    v46 = v45;
    v71 = v45;
    *v44 = 136315138;
    v47 = [v41 debugDescription];
    v48 = sub_2CE270();
    v49 = v34;
    v51 = v50;

    v52 = sub_3F08(v48, v51, &v71);
    v34 = v49;

    *(v44 + 4) = v52;
    _os_log_impl(&dword_0, v42, v43, "ConfirmationViewProvider#makeYesNoConfirmationViews Created view: %s", v44, 0xCu);
    sub_306C(v46);
    v36 = v61;

    v53 = v64;
    v54 = v65;
  }

  else
  {

    v53 = v39;
    v54 = v40;
  }

  v62(v53, v54);
  v56 = swift_allocObject();
  *(v56 + 16) = v68;
  *(v56 + 32) = v41;
  v57 = v41;
  (v70)(v56, 0);

  return result;
}

uint64_t sub_110834()
{
  sub_306C((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Int sub_110890()
{
  sub_2CEF50();
  sub_2CEF60(0);
  return sub_2CEF80();
}

Swift::Int sub_1108FC(uint64_t a1)
{
  sub_2CEF50();
  sub_2CEF60(0);
  return sub_2CEF80();
}

double sub_11093C(void (*a1)(void), uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "ConfirmationViewProvider#makePromptForConfirmationViews Creating yes/no confirmation views for intent", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return sub_10FFB4(a1, a2);
}

uint64_t getEnumTagSinglePayload for ConfirmationPromptCreationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConfirmationPromptCreationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_110BF0()
{
  result = qword_3516A8;
  if (!qword_3516A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516A8);
  }

  return result;
}

uint64_t sub_110C44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13)
{
  v82 = a8;
  v83 = a9;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v23);
  v26 = &v75 - v25;
  __chkstk_darwin(v24);
  v29 = &v75 - v28;
  if (a4 && !a7)
  {
    v77 = v27;
    v79 = a12;
    v78 = a11;
    v80 = a10;

    v36 = sub_2CB650();
    v37 = sub_2CBD70();
    v81 = a5;
    if (v37 == a3 && v38 == a4)
    {

      if ((v36 & (a6 != 0)) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v39 = sub_2CEEA0();

      if ((v39 & v36 & 1) == 0)
      {
        goto LABEL_34;
      }

      a5 = v81;
      if (!a6)
      {
        goto LABEL_35;
      }
    }

    if (sub_2CBE10() == a5 && v40 == a6)
    {
      goto LABEL_16;
    }

    v41 = a5;
    v42 = sub_2CEEA0();

    if (v42)
    {
      goto LABEL_18;
    }

    if (sub_2CBDD0() == v41 && v53 == a6)
    {
LABEL_16:

LABEL_18:

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v43 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      (*(v19 + 16))(v29, v43, v18);

      v44 = sub_2CDFE0();
      v45 = sub_2CE690();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v85[0] = v76;
        *v46 = 136315394;
        v47 = v81;
        v48 = sub_3F08(v81, a6, v85);

        *(v46 + 4) = v48;
        *(v46 + 12) = 2080;
        v49 = sub_2CBE10();
        v51 = sub_3F08(v49, v50, v85);
        a5 = v47;

        *(v46 + 14) = v51;
        _os_log_impl(&dword_0, v44, v45, "UpdateMediaIntent#amend bundleId is AirPlay and representedBundleId is Apple Music: %s, replacing with music: %s", v46, 0x16u);
        swift_arrayDestroy();

        (*(v19 + 8))(v29, v18);
      }

      else
      {

        (*(v19 + 8))(v29, v18);
        a5 = v81;
      }

      a3 = sub_2CBE10();
      a4 = v52;
      goto LABEL_35;
    }

    v54 = sub_2CEEA0();

    if (v54)
    {
      goto LABEL_18;
    }

    sub_35E0(v80, v80[3]);
    if (sub_2CC410())
    {

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v55 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      (*(v19 + 16))(v26, v55, v18);

      v56 = sub_2CDFE0();
      v57 = sub_2CE690();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v85[0] = v59;
        *v58 = 136315138;
        v60 = v81;
        *(v58 + 4) = sub_3F08(v81, a6, v85);
        _os_log_impl(&dword_0, v56, v57, "UpdateMediaIntent#amend bundleId is AirPlay, replacing bundleId with representedBundleId %s and may attempt to execute on the device of the requesting user", v58, 0xCu);
        sub_306C(v59);

        a5 = v60;

        (*(v19 + 8))(v26, v18);
        a3 = v60;
      }

      else
      {

        (*(v19 + 8))(v26, v18);
        a5 = v81;
        a3 = v81;
      }

      a4 = a6;
LABEL_35:
      if (a3 == sub_2CBDE0() && a4 == v61)
      {

        if (!a6)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v62 = sub_2CEEA0();

        if ((v62 & 1) == 0)
        {
          goto LABEL_50;
        }

        a5 = v81;
        if (!a6)
        {
          goto LABEL_50;
        }
      }

      if (sub_2CBE40() == a5 && v63 == a6)
      {
      }

      else
      {
        v64 = sub_2CEEA0();

        if ((v64 & 1) == 0)
        {
LABEL_50:
          sub_35E0(v78, v78[3]);
          sub_EEAC(v80, v85);
          sub_EEAC(v79, v84);
          v72 = swift_allocObject();
          v73 = v83;
          v72[2] = v82;
          v72[3] = v73;
          sub_F338(v85, (v72 + 4));
          sub_F338(v84, (v72 + 9));
          v72[14] = a13;
          v72[15] = a3;
          v72[16] = a4;

          v74 = a13;
          sub_2CC300();
        }
      }

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v65 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      v66 = v77;
      (*(v19 + 16))(v77, v65, v18);

      v67 = sub_2CDFE0();
      v68 = sub_2CE690();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v85[0] = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_3F08(v81, a6, v85);
        _os_log_impl(&dword_0, v67, v68, "UpdateMediaIntent#amend bundleId is remote player service and representedBundleId is Classical: %s, setting bundle id to Classical", v69, 0xCu);
        sub_306C(v70);
      }

      (*(v19 + 8))(v66, v18);
      a3 = sub_2CBE40();
      a4 = v71;
      goto LABEL_50;
    }

LABEL_34:
    a5 = v81;
    goto LABEL_35;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v22, v30, v18);
  v31 = sub_2CDFE0();
  v32 = sub_2CE680();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "UpdateMediaIntent#amend failed to get bundleId for now playing app", v33, 2u);
  }

  v34 = (*(v19 + 8))(v22, v18);
  return v82(v34);
}

uint64_t sub_111654(char *a1, void (*a2)(void), uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v117 = a7;
  v118 = a8;
  v119 = a6;
  v120 = a1;
  v108 = a5;
  v115 = a4;
  v121 = a3;
  v122 = a2;
  v8 = sub_2CD540();
  v9 = *(v8 - 8);
  v112 = v8;
  v113 = v9;
  __chkstk_darwin(v8);
  v102 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v11 = __chkstk_darwin(v111);
  v106 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v116 = &v94[-v13];
  v14 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v15 = __chkstk_darwin(v14 - 8);
  v104 = &v94[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v101 = &v94[-v18];
  v19 = __chkstk_darwin(v17);
  v107 = &v94[-v20];
  v21 = __chkstk_darwin(v19);
  v105 = &v94[-v22];
  v23 = __chkstk_darwin(v21);
  v103 = &v94[-v24];
  v25 = __chkstk_darwin(v23);
  v109 = &v94[-v26];
  __chkstk_darwin(v25);
  v110 = &v94[-v27];
  v28 = sub_2CE000();
  v114 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v94[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v31);
  v33 = &v94[-v32];
  v34 = sub_2CBAF0();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v94[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v40 = &v94[-v39];
  sub_F3F4(v120, v33, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v33, &qword_34FF00, &qword_2D3EB0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = sub_3ED0(v28, static Logger.default);
    swift_beginAccess();
    v42 = v114;
    (*(v114 + 16))(v30, v41, v28);
    v43 = sub_2CDFE0();
    v44 = sub_2CE680();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "UpdateMediaIntent#amend failed to get now playing info", v45, 2u);
    }

    v46 = (*(v42 + 8))(v30, v28);
    return (v122)(v46);
  }

  (*(v35 + 32))(v40, v33, v34);
  v114 = v35;
  v48 = *(v35 + 16);
  v100 = v40;
  v48(v38, v40, v34);
  type metadata accessor for NowPlayingIntent(0);
  swift_allocObject();
  v120 = sub_D4274(v38);
  sub_35E0(v115, v115[3]);
  if (sub_2CC4A0())
  {
    v98 = v34;
    v49 = v108[3];
    v50 = v108[4];
    v51 = sub_35E0(v108, v49);
    v52 = v110;
    v99 = v51;
    v115 = v49;
    v108 = v50;
    sub_2CD8D0();
    v53 = v112;
    v54 = v113;
    v55 = v109;
    v97 = *(v113 + 104);
    v97(v109, enum case for CommonAudio.MediaType.artist(_:), v112);
    v96 = *(v54 + 56);
    v96(v55, 0, 1, v53);
    v56 = *(v111 + 48);
    v57 = v116;
    sub_F3F4(v52, v116, &qword_34D6D0, qword_2D34A0);
    v58 = v57;
    sub_F3F4(v55, &v57[v56], &qword_34D6D0, qword_2D34A0);
    v59 = *(v54 + 48);
    if (v59(v58, 1, v53) == 1)
    {
      sub_30B8(v55, &qword_34D6D0, qword_2D34A0);
      v60 = v116;
      sub_30B8(v52, &qword_34D6D0, qword_2D34A0);
      v61 = v59(&v60[v56], 1, v53);
      v34 = v98;
      if (v61 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v62 = v103;
      sub_F3F4(v58, v103, &qword_34D6D0, qword_2D34A0);
      if (v59((v58 + v56), 1, v53) != 1)
      {
        v69 = v113;
        v70 = v58 + v56;
        v71 = v102;
        (*(v113 + 32))(v102, v70, v53);
        sub_1137D8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
        v95 = sub_2CE250();
        v72 = *(v69 + 8);
        v72(v71, v53);
        sub_30B8(v109, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v110, &qword_34D6D0, qword_2D34A0);
        v72(v62, v53);
        v34 = v98;
        sub_30B8(v116, &qword_34D6D0, qword_2D34A0);
        if (v95)
        {
          goto LABEL_24;
        }

LABEL_14:
        v63 = v105;
        sub_2CD8D0();
        v64 = v107;
        v65 = v112;
        v97(v107, enum case for CommonAudio.MediaType.album(_:), v112);
        v96(v64, 0, 1, v65);
        v66 = *(v111 + 48);
        v67 = v106;
        sub_F3F4(v63, v106, &qword_34D6D0, qword_2D34A0);
        sub_F3F4(v64, &v67[v66], &qword_34D6D0, qword_2D34A0);
        if (v59(v67, 1, v65) == 1)
        {
          sub_30B8(v64, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v63, &qword_34D6D0, qword_2D34A0);
          if (v59(&v67[v66], 1, v65) == 1)
          {
            v60 = v67;
LABEL_17:
            sub_30B8(v60, &qword_34D6D0, qword_2D34A0);
LABEL_24:
            v78 = v104;
            sub_2CD8D0();
            v79 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
            v80 = v120;
            swift_beginAccess();
            sub_6FC1C(v78, &v80[v79]);
            swift_endAccess();
            goto LABEL_25;
          }
        }

        else
        {
          v68 = v101;
          sub_F3F4(v67, v101, &qword_34D6D0, qword_2D34A0);
          if (v59(&v67[v66], 1, v65) != 1)
          {
            v73 = v113;
            v74 = &v67[v66];
            v75 = v102;
            (*(v113 + 32))(v102, v74, v65);
            sub_1137D8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
            v76 = sub_2CE250();
            v77 = *(v73 + 8);
            v77(v75, v65);
            sub_30B8(v107, &qword_34D6D0, qword_2D34A0);
            sub_30B8(v63, &qword_34D6D0, qword_2D34A0);
            v77(v68, v65);
            sub_30B8(v67, &qword_34D6D0, qword_2D34A0);
            if ((v76 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          sub_30B8(v107, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v63, &qword_34D6D0, qword_2D34A0);
          (*(v113 + 8))(v68, v65);
        }

        sub_30B8(v67, &qword_34D6A8, &unk_2D15A0);
        goto LABEL_25;
      }

      sub_30B8(v109, &qword_34D6D0, qword_2D34A0);
      v60 = v116;
      sub_30B8(v110, &qword_34D6D0, qword_2D34A0);
      (*(v113 + 8))(v62, v53);
      v34 = v98;
    }

    sub_30B8(v60, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_14;
  }

LABEL_25:

  v82 = sub_691B0(v81, 0, 0);

  objc_opt_self();
  v83 = v119;
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    v84 = [v83 backingStore];
    if (v86)
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        v87 = v82;
        v82 = v84;
        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        v87 = v82;
        v82 = v84;
        goto LABEL_36;
      }
    }

    goto LABEL_33;
  }

  v84 = [v83 backingStore];
  objc_opt_self();
  v85 = swift_dynamicCastObjCClass();
  if (v85)
  {
LABEL_33:
    v88 = v85;
    v87 = INIntentSlotValueTransformToMediaSearch();
    [v88 setMediaSearch:v87];

    goto LABEL_36;
  }

  v87 = v82;
  v82 = v84;
LABEL_36:
  v89 = v114;

  v90 = sub_230B38(v117, v118, 0, 0);
  v91 = [v83 backingStore];
  objc_opt_self();
  v92 = swift_dynamicCastObjCClass();
  v93 = v100;
  if (!v92)
  {
  }

  [v92 setIntentMetadata:v90];

  v122();

  return (*(v89 + 8))(v93, v34);
}

uint64_t INUpdateMediaAffinityIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v80 = sub_2CA870();
  v78 = *(v80 - 8);
  v1 = __chkstk_darwin(v80);
  v77 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v76 = &v68 - v3;
  v81 = sub_2CE000();
  v87 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v86 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = &v68 - v6;
  v73 = sub_2C9900();
  v72 = *(v73 - 1);
  __chkstk_darwin(v73);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34D658, &qword_2D1530);
  __chkstk_darwin(v8 - 8);
  v70 = &v68 - v9;
  v10 = sub_20410(&qword_34D660, &qword_2D1538);
  __chkstk_darwin(v10 - 8);
  v69 = &v68 - v11;
  v12 = sub_20410(&qword_34D668, &qword_2D1540);
  __chkstk_darwin(v12 - 8);
  v14 = &v68 - v13;
  v15 = sub_2CAFE0();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = __chkstk_darwin(v15);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  sub_20410(&qword_34D670, &qword_2D1548);
  v20 = swift_allocObject();
  v88 = xmmword_2D0090;
  *(v20 + 16) = xmmword_2D0090;
  v21 = swift_allocObject();
  *(v21 + 16) = v88;
  v22 = swift_allocObject();
  *(v22 + 16) = v88;
  v23 = swift_allocObject();
  *(v23 + 16) = v88;
  v24 = swift_allocObject();
  *(v24 + 16) = v88;
  sub_2CABB0();
  v25 = enum case for TerminalElement.Value.semantic(_:);
  v26 = sub_2CABD0();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v14, v25, v26);
  (*(v27 + 56))(v14, 0, 1, v26);
  *(v24 + 56) = sub_2CAC70();
  *(v24 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v24 + 32));
  sub_2CAC50();
  v28 = sub_2CACD0();
  *(v23 + 56) = v28;
  *(v23 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v23 + 32));
  sub_2CACC0();
  *(v22 + 56) = v28;
  *(v22 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v22 + 32));
  sub_2CACC0();
  *(v21 + 56) = v28;
  *(v21 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v21 + 32));
  sub_2CACC0();
  *(v20 + 56) = v28;
  *(v20 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v20 + 32));
  sub_2CACC0();
  v91 = v28;
  v92 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v90);
  sub_2CACC0();
  v29 = sub_2CAFB0();
  (*(*(v29 - 8) + 56))(v69, 1, 1, v29);
  v30 = sub_2CACE0();
  (*(*(v30 - 8) + 56))(v70, 1, 1, v30);
  sub_2CAFD0();
  (*(v72 + 13))(v71, enum case for SiriKitConfirmationState.unset(_:), v73);
  v91 = sub_2CCFE0();
  v92 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v90);
  sub_2CCFD0();
  sub_2CA860();
  swift_allocObject();
  v72 = v74;
  *&v88 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = v81;
  v32 = sub_3ED0(v81, static Logger.default);
  swift_beginAccess();
  v33 = v87;
  v71 = *(v87 + 16);
  (v71)(v83, v32, v31);
  v35 = v84;
  v34 = v85;
  v36 = *(v84 + 16);
  v74 = (v84 + 16);
  v73 = v36;
  v36(v82, v19, v85);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v75 = v19;
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315138;
    sub_1137D8(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v45 = v82;
    v46 = sub_2CEE70();
    v47 = v41;
    v49 = v48;
    v50 = *(v42 + 8);
    v50(v45, v47);
    v51 = sub_3F08(v46, v49, &v89);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_0, v37, v38, "INUpdateMediaAffinityIntent#toServerConversionParse nlIntent:%s", v43, 0xCu);
    sub_306C(v44);
    v31 = v81;

    v52 = v87;
  }

  else
  {

    v50 = *(v35 + 8);
    v50(v82, v41);
    v52 = v40;
  }

  v53 = *(v52 + 8);
  v53(v83, v31);
  (v71)(v86, v32, v31);
  v54 = v72;
  v55 = sub_2CDFE0();
  v56 = sub_2CE670();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v31;
    v59 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v59 = v54;
    v60 = v54;
    _os_log_impl(&dword_0, v55, v56, "INUpdateMediaAffinityIntent#toServerConversionParse sirikitIntent:%@", v57, 0xCu);
    sub_30B8(v59, &unk_34FC00, &unk_2D0150);
    v31 = v58;
  }

  v53(v86, v31);
  v61 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v62 = v76;
  v63 = v75;
  v64 = v85;
  v73(v76, v75, v85);
  *&v62[v61] = v88;
  v65 = v78;
  v66 = v80;
  (*(v78 + 104))(v62, enum case for Parse.NLv3IntentPlusServerConversion(_:), v80);
  (*(v65 + 16))(v77, v62, v66);
  sub_2CA7A0();
  (*(v65 + 8))(v62, v66);
  return (v50)(v63, v64);
}

uint64_t sub_113174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v48 = a6;
  v47 = a5;
  v46 = a4;
  v44 = a3;
  v45 = a2;
  v42 = a1;
  v10 = sub_2CD4C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v18 = __chkstk_darwin(v17 - 8);
  v43 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v40 - v21;
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v52[3] = a7;
  v52[4] = a8;
  sub_F390(v52);
  (*(*(a7 - 8) + 16))();
  sub_2CD840();
  (*(v11 + 104))(v22, enum case for CommonAudio.Verb.like(_:), v10);
  (*(v11 + 56))(v22, 0, 1, v10);
  v25 = *(v14 + 56);
  sub_F3F4(v24, v16, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v22, &v16[v25], &qword_34D6B8, &qword_2D15B0);
  v26 = *(v11 + 48);
  if (v26(v16, 1, v10) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    v27 = v26(&v16[v25], 1, v10);
    v28 = v48;
    if (v27 == 1)
    {
      sub_30B8(v16, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F3F4(v16, v43, &qword_34D6B8, &qword_2D15B0);
  if (v26(&v16[v25], 1, v10) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    (*(v11 + 8))(v43, v10);
    v28 = v48;
LABEL_6:
    sub_30B8(v16, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v29 = &v16[v25];
  v30 = v41;
  (*(v11 + 32))(v41, v29, v10);
  sub_1137D8(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v31 = v43;
  sub_2CE250();
  v32 = *(v11 + 8);
  v32(v30, v10);
  sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
  v32(v31, v10);
  sub_30B8(v16, &qword_34D6B8, &qword_2D15B0);
  v28 = v48;
LABEL_8:
  v33 = [v28 backingStore];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    [v34 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v35 = v45;
  sub_35E0(v45, v45[3]);
  sub_EEAC(v44, v51);
  sub_EEAC(v35, v50);
  sub_EEAC(v52, v49);
  v36 = swift_allocObject();
  v37 = v47;
  v36[2] = v46;
  v36[3] = v37;
  sub_F338(v51, (v36 + 4));
  sub_F338(v50, (v36 + 9));
  sub_F338(v49, (v36 + 14));
  v36[19] = v28;

  v38 = v28;
  sub_2CC2F0();

  return sub_306C(v52);
}

uint64_t sub_1137D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_113820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6647407;
  }

  else
  {
    v3 = 1936287860;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6647407;
  }

  else
  {
    v5 = 1936287860;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_1138B8()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

double sub_11392C(uint64_t a1)
{
  sub_2CE310();

  return result;
}

Swift::Int sub_11398C(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

void sub_1139FC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_32FFF0;
  v7._object = v3;
  v5 = sub_2CEDF0(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_113A5C(uint64_t *a1@<X8>)
{
  v2 = 1936287860;
  if (*v1)
  {
    v2 = 6647407;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for MediaPlayerReference(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlayerReference(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_113BEC()
{
  result = qword_3516B0;
  if (!qword_3516B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516B0);
  }

  return result;
}

uint64_t sub_113C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_113DDC();
  v5 = sub_113E30();
  v6 = sub_113E84();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_113CC8()
{
  result = qword_3516B8;
  if (!qword_3516B8)
  {
    sub_2DB30(&qword_3516C0, &qword_2D4738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516B8);
  }

  return result;
}

unint64_t sub_113D30()
{
  result = qword_3516C8;
  if (!qword_3516C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516C8);
  }

  return result;
}

unint64_t sub_113D88()
{
  result = qword_3516D0;
  if (!qword_3516D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516D0);
  }

  return result;
}

unint64_t sub_113DDC()
{
  result = qword_3516D8;
  if (!qword_3516D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516D8);
  }

  return result;
}

unint64_t sub_113E30()
{
  result = qword_3516E0;
  if (!qword_3516E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516E0);
  }

  return result;
}

unint64_t sub_113E84()
{
  result = qword_3516E8;
  if (!qword_3516E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516E8);
  }

  return result;
}

id DetermineIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetermineIntentHandler.init()()
{
  v0 = sub_2CC040();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC030();
  v4 = sub_2CB4A0();
  v5 = sub_2CB490();
  v13[3] = v0;
  v13[4] = &protocol witness table for NowPlayingProvider;
  v6 = sub_F390(v13);
  (*(v1 + 16))(v6, v3, v0);
  v12[3] = v4;
  v12[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v12[0] = v5;
  v7 = type metadata accessor for DetermineIntentHandler();
  v8 = objc_allocWithZone(v7);
  sub_EEAC(v13, v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider);
  sub_EEAC(v12, v8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v1 + 8))(v3, v0);
  sub_306C(v12);
  sub_306C(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t DetermineIntentHandler.resolveNowPlayingIntentInfo(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v57 = a2;
  v4 = sub_2CB980();
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v52 = *(v8 + 16);
  v53 = v14;
  v52(v13, v14, v7);
  v15 = sub_2CDFE0();
  v16 = sub_2CE670();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "DetermineIntentHandler#resolveNowPlayingIntentInfo Reached logic", v17, 2u);
  }

  v54 = *(v8 + 8);
  v54(v13, v7);
  v56 = swift_allocBox();
  v18 = *(v62 + 104);
  v60 = v19;
  v18();
  if ([a1 queueLocation] == &dword_0 + 2)
  {
    v20 = v7;
    v21 = a1;
    v22 = v11;
    v23 = &enum case for QueuePosition.next(_:);
  }

  else
  {
    if ([a1 queueLocation] != &dword_0 + 3)
    {
      goto LABEL_10;
    }

    v20 = v7;
    v21 = a1;
    v22 = v11;
    v23 = &enum case for QueuePosition.previous(_:);
  }

  v24 = v61;
  v25 = v60;
  (*(v62 + 8))(v60, v61);
  (v18)(v25, *v23, v24);
  v11 = v22;
  a1 = v21;
  v7 = v20;
LABEL_10:
  v26 = [a1 targetDeviceIds];
  if (!v26)
  {
LABEL_16:
    v45 = v58;
    sub_35E0(&v58[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], *&v58[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24]);
    v46 = swift_allocObject();
    v48 = v56;
    v47 = v57;
    v46[2] = v45;
    v46[3] = v47;
    v46[4] = v59;
    v46[5] = v48;
    v49 = v45;

    sub_2CC2F0();
    goto LABEL_17;
  }

  v27 = v26;
  v28 = sub_2CE410();

  if (!*(v28 + 16))
  {

    goto LABEL_16;
  }

  v52(v11, v53, v7);

  v29 = sub_2CDFE0();
  v30 = sub_2CE670();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63 = v32;
    *v31 = 136315138;
    v33 = sub_2CE420();
    v35 = sub_3F08(v33, v34, &v63);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v29, v30, "DetermineIntentHandler#resolveNowPlayingIntentInfo targetDeviceIds present: %s", v31, 0xCu);
    sub_306C(v32);
  }

  v54(v11, v7);
  v36 = swift_allocObject();
  *(v36 + 16) = _swiftEmptyArrayStorage;
  v37 = v58;
  v38 = *&v58[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24];
  v54 = *&v58[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 32];
  sub_35E0(&v58[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], v38);
  v40 = v61;
  v39 = v62;
  v41 = v55;
  (*(v62 + 16))(v55, v60, v61);
  v42 = swift_allocObject();
  v42[2] = v37;
  v42[3] = v36;
  v43 = v59;
  v42[4] = v57;
  v42[5] = v43;
  v44 = v37;

  sub_2CC320();

  (*(v39 + 8))(v41, v40);
LABEL_17:
}

double sub_114728(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v108 = a5;
  v109 = a4;
  v166 = a2;
  v167 = a3;
  v126 = sub_2CCB20();
  v165 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CBAF0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v128 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v124 = &v108 - v12;
  __chkstk_darwin(v11);
  v163 = &v108 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v161 = &v108 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v160 = &v108 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v159 = &v108 - v19;
  v158 = sub_2CB970();
  v20 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2CCB30();
  v22 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2CCAC0();
  v24 = *(v154 - 8);
  __chkstk_darwin(v154);
  v153 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2CE000();
  v26 = *(v152 - 8);
  v27 = __chkstk_darwin(v152);
  v127 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v123 = &v108 - v29;
  v164 = sub_2CC2E0();
  v30 = *(v164 - 8);
  v31 = __chkstk_darwin(v164);
  v122 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v108 - v33;
  v151 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v151);
  v38 = &v108 - v36;
  v39 = *(a1 + 16);
  if (v39)
  {
    v148 = (v166 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider);
    v40 = a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v121 = (v8 + 32);
    v147 = *(v35 + 72);
    v146 = (v26 + 16);
    v145 = (v8 + 16);
    v144 = (v8 + 8);
    v143 = (v26 + 8);
    v142 = enum case for AdditionalMetricsDescription.ModuleName.dih(_:);
    v141 = (v24 + 104);
    v140 = (v22 + 104);
    v120 = (v165 + 104);
    v139 = enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:);
    v119 = (v165 + 8);
    v138 = (v22 + 8);
    v118 = enum case for AdditionalMetricsDescription.StatusReason.success(_:);
    v137 = (v24 + 8);
    v136 = enum case for TypeOfIntent.determine(_:);
    v135 = (v20 + 104);
    v117 = enum case for ActivityType.completed(_:);
    v134 = (v20 + 8);
    v116 = (v30 + 32);
    v115 = (v30 + 16);
    v133 = (v30 + 8);
    v114 = enum case for SiriKitReliabilityCodes.success(_:);
    v113 = enum case for ActivityType.failed(_:);
    *&v37 = 136446210;
    v111 = v37;
    *&v37 = 136315138;
    v110 = v37;
    v112 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v162 = v34;
    v149 = &v108 - v36;
    v150 = v7;
    do
    {
      v165 = v40;
      v166 = v39;
      sub_1186D0(v40, v38);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v164;
        (*v116)(v34, v38, v164);
        v58 = v152;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v59 = sub_3ED0(v58, static Logger.default);
        swift_beginAccess();
        v60 = v123;
        (*v146)(v123, v59, v58);
        v61 = v122;
        (*v115)(v122, v34, v57);
        v62 = sub_2CDFE0();
        v63 = sub_2CE670();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v168 = v65;
          *v64 = v111;
          sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError, &protocol conformance descriptor for NowPlayingInfoError);
          v66 = sub_2CEEF0();
          v68 = v67;
          (*v133)(v61, v164);
          v69 = sub_3F08(v66, v68, &v168);

          *(v64 + 4) = v69;
          _os_log_impl(&dword_0, v62, v63, "DetermineIntentHandler#resolveNowPlayingIntentInfo failure with error in WHA use case: %{public}s", v64, 0xCu);
          sub_306C(v65);
        }

        else
        {

          (*v133)(v61, v57);
        }

        (*v143)(v60, v58);
        v41 = v153;
        v42 = v154;
        (*v141)(v153, v142, v154);
        v43 = v155;
        v44 = v156;
        (*v140)(v155, v139, v156);
        sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError, &protocol conformance descriptor for NowPlayingInfoError);
        sub_2CEEF0();
        v132 = sub_2CCAE0();

        (*v138)(v43, v44);
        (*v137)(v41, v42);
        v45 = v148[3];
        v131 = v148[4];
        sub_35E0(v148, v45);
        v46 = v157;
        v47 = v158;
        (*v135)(v157, v136, v158);
        v48 = sub_2C9C20();
        v49 = *(v48 - 8);
        v50 = v159;
        (*(v49 + 104))(v159, v113, v48);
        (*(v49 + 56))(v50, 0, 1, v48);
        v51 = sub_2CA130();
        v52 = v160;
        (*(*(v51 - 8) + 56))(v160, 1, 1, v51);
        v53 = sub_2C98F0();
        v54 = *(v53 - 8);
        v55 = v161;
        (*(v54 + 104))(v161, v112, v53);
        (*(v54 + 56))(v55, 0, 1, v53);
        sub_2CB4C0();

        sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v52, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v50, &qword_34CB88, &unk_2D0D90);
        (*v134)(v46, v47);
        type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
        static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(1);
        v56 = v167;
        swift_beginAccess();
        sub_2CE3F0();
        if (*(&dword_10 + (*(v56 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v56 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2CE430();
        }

        sub_2CE460();
        swift_endAccess();
        v34 = v162;
        (*v133)(v162, v164);
        v7 = v150;
      }

      else
      {
        v70 = v163;
        (*v121)(v163, v38, v7);
        v71 = v128;
        v72 = v124;
        v73 = v152;
        v74 = v127;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v75 = sub_3ED0(v73, static Logger.default);
        swift_beginAccess();
        (*v146)(v74, v75, v73);
        v76 = *v145;
        (*v145)(v72, v70, v7);
        v77 = sub_2CDFE0();
        v78 = sub_2CE670();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v168 = v80;
          *v79 = v110;
          v76(v71, v72, v7);
          v81 = v7;
          v82 = sub_2CE2A0();
          v84 = v83;
          v132 = *v144;
          v132(v72, v81);
          v85 = sub_3F08(v82, v84, &v168);
          v71 = v128;

          *(v79 + 4) = v85;
          v7 = v81;
          _os_log_impl(&dword_0, v77, v78, "DetermineIntentHandler#resolveNowPlayingIntentInfo got back nowPlayingInfo in WHA use case: %s", v79, 0xCu);
          sub_306C(v80);
          v86 = v163;

          (*v143)(v127, v73);
        }

        else
        {

          v132 = *v144;
          v132(v72, v7);
          (*v143)(v74, v73);
          v86 = v70;
        }

        type metadata accessor for NowPlayingIntentInfo();
        v76(v71, v86, v7);
        v87 = sub_82B50(v71);
        type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
        v131 = v87;
        static NowPlayingIntentInfoResolutionResult.success(with:)(v87);
        v88 = v167;
        swift_beginAccess();
        sub_2CE3F0();
        if (*(&dword_10 + (*(v88 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v88 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_2CE430();
        }

        sub_2CE460();
        swift_endAccess();
        v89 = v153;
        v90 = v154;
        (*v141)(v153, v142, v154);
        v91 = v155;
        v92 = v156;
        (*v140)(v155, v139, v156);
        v93 = v125;
        v94 = v126;
        (*v120)(v125, v118, v126);
        v130 = sub_2CCAD0();
        (*v119)(v93, v94);
        (*v138)(v91, v92);
        (*v137)(v89, v90);
        v95 = v148[3];
        v129 = v148[4];
        sub_35E0(v148, v95);
        v96 = v157;
        v97 = v158;
        (*v135)(v157, v136, v158);
        v98 = sub_2C9C20();
        v99 = *(v98 - 8);
        v100 = v159;
        (*(v99 + 104))(v159, v117, v98);
        (*(v99 + 56))(v100, 0, 1, v98);
        v101 = sub_2CA130();
        v102 = v160;
        (*(*(v101 - 8) + 56))(v160, 1, 1, v101);
        v103 = sub_2C98F0();
        v104 = *(v103 - 8);
        v105 = v161;
        (*(v104 + 104))(v161, v114, v103);
        (*(v104 + 56))(v105, 0, 1, v103);
        sub_2CB4C0();

        sub_30B8(v105, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v102, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v100, &qword_34CB88, &unk_2D0D90);
        (*v134)(v96, v97);
        v7 = v150;
        v132(v163, v150);
        v34 = v162;
      }

      v38 = v149;
      v40 = v165 + v147;
      v39 = v166 - 1;
    }

    while (v166 != 1);
  }

  swift_beginAccess();

  v109(v106);

  return result;
}

void sub_115CCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, void (*a9)(void), uint64_t a10, uint64_t a11)
{
  v103 = a8;
  v92 = a7;
  v91 = a3;
  v104 = a9;
  v105 = a10;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v102 = &v86 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v101 = &v86 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v100 = &v86 - v17;
  v106 = sub_2CB970();
  v99 = *(v106 - 8);
  __chkstk_darwin(v106);
  v98 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CCB20();
  v96 = *(v19 - 8);
  v97 = v19;
  __chkstk_darwin(v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCB30();
  v94 = *(v22 - 8);
  v95 = v22;
  __chkstk_darwin(v22);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2CCAC0();
  v25 = *(v93 - 8);
  __chkstk_darwin(v93);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2CB980();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v86 - v34;
  v90 = a11;
  v36 = a4;
  v37 = swift_projectBox();
  if (a4 && !v92)
  {
    v106 = v37;
    v63 = qword_34BF58;

    if (v63 != -1)
    {
      swift_once();
    }

    v64 = sub_3ED0(v29, static Logger.default);
    swift_beginAccess();
    (*(v30 + 16))(v35, v64, v29);

    v65 = sub_2CDFE0();
    v66 = sub_2CE670();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v105;
    v69 = v91;
    if (v67)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v107[0] = v71;
      *v70 = 136315138;

      v72 = sub_3F08(v69, v36, v107);
      v73 = v36;
      v74 = v72;

      *(v70 + 4) = v74;
      v36 = v73;
      v69 = v91;
      _os_log_impl(&dword_0, v65, v66, "DetermineIntentHandler#resolveNowPlayingIntentInfo got back bundleId: %s", v70, 0xCu);
      sub_306C(v71);
    }

    (*(v30 + 8))(v35, v29);
    v75 = v69;
    v76 = v103;
    v77 = *&v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24];
    v105 = *&v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 32];
    sub_35E0(&v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], v77);
    v78 = v106;
    swift_beginAccess();
    v79 = v88;
    v80 = v87;
    v81 = v89;
    (*(v88 + 16))(v87, v78, v89);
    v82 = swift_allocObject();
    v83 = v104;
    v82[2] = v76;
    v82[3] = v83;
    v82[4] = v68;
    v82[5] = v75;
    v84 = v90;
    v82[6] = v36;
    v82[7] = v84;
    v85 = v76;

    sub_2CC310();

    (*(v79 + 8))(v80, v81);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v29, static Logger.default);
    swift_beginAccess();
    (*(v30 + 16))(v33, v38, v29);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "DetermineIntent#resolveNowPlayingIntentInfo failed to get bundleId for now playing app", v41, 2u);
    }

    (*(v30 + 8))(v33, v29);
    v42 = v93;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v93);
    v44 = v94;
    v43 = v95;
    (*(v94 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v95);
    v46 = v96;
    v45 = v97;
    (*(v96 + 104))(v21, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v97);
    v92 = sub_2CCAD0();
    v91 = v47;
    (*(v46 + 8))(v21, v45);
    (*(v44 + 8))(v24, v43);
    (*(v25 + 8))(v27, v42);
    v48 = &v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider];
    v49 = *&v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24];
    v103 = *&v103[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32];
    sub_35E0(v48, v49);
    v51 = v98;
    v50 = v99;
    (*(v99 + 104))(v98, enum case for TypeOfIntent.determine(_:), v106);
    v52 = enum case for ActivityType.failed(_:);
    v53 = sub_2C9C20();
    v54 = *(v53 - 8);
    v55 = v100;
    (*(v54 + 104))(v100, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = sub_2CA130();
    v57 = v101;
    (*(*(v56 - 8) + 56))(v101, 1, 1, v56);
    v58 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v59 = sub_2C98F0();
    v60 = *(v59 - 8);
    v61 = v102;
    (*(v60 + 104))(v102, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    sub_2CB4C0();

    sub_30B8(v61, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v57, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v55, &qword_34CB88, &unk_2D0D90);
    (*(v50 + 8))(v51, v106);
    sub_2CC230();
    sub_2CC1B0();
    sub_20410(&unk_351900, &unk_2D0960);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2D0770;
    type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
    *(v62 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(2);
    v104(v62);
  }
}

uint64_t sub_11689C(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v158 = a7;
  v152 = a6;
  v151 = a5;
  v172 = a4;
  v173 = a3;
  v160 = a2;
  v157 = a1;
  v149 = sub_2CCB20();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2CB980();
  v156 = *(v155 - 8);
  v8 = __chkstk_darwin(v155);
  v154 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v142 - v10;
  v11 = sub_2CBAF0();
  v166 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v150 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v142 - v14;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v16 - 8);
  v167 = &v142 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v18 - 8);
  v169 = &v142 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v20 - 8);
  v170 = &v142 - v21;
  v175 = sub_2CB970();
  v171 = *(v175 - 8);
  __chkstk_darwin(v175);
  v168 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2CCB30();
  v165 = *(v159 - 8);
  __chkstk_darwin(v159);
  v162 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_2CCAC0();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v161 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_2CE000();
  v176 = *(v174 - 1);
  v25 = __chkstk_darwin(v174);
  v146 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v142 - v28;
  __chkstk_darwin(v27);
  v31 = &v142 - v30;
  v32 = sub_2CC2E0();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v36);
  v38 = &v142 - v37;
  v39 = swift_projectBox();
  sub_1186D0(v157, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v33 + 32))(v35, v38, v32);
    sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError, &protocol conformance descriptor for NowPlayingInfoError);
    v40 = sub_2CEEF0();
    v42 = v41;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v157 = v35;
    v158 = v33;
    v166 = v32;
    v43 = v174;
    v44 = sub_3ED0(v174, static Logger.default);
    swift_beginAccess();
    v45 = v176;
    (*(v176 + 16))(v31, v44, v43);

    v46 = sub_2CDFE0();
    v47 = sub_2CE670();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v179 = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_3F08(v40, v42, &v179);
      _os_log_impl(&dword_0, v46, v47, "DetermineIntentHandler#resolveNowPlayingIntentInfo failure with error: %{public}s", v48, 0xCu);
      sub_306C(v49);
    }

    (*(v45 + 8))(v31, v43);
    v50 = v163;
    v51 = v161;
    v52 = v164;
    (*(v163 + 104))(v161, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v164);
    v53 = v165;
    v54 = v162;
    v55 = v159;
    (*(v165 + 104))(v162, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v159);
    v176 = sub_2CCAE0();
    v174 = v56;

    (*(v53 + 8))(v54, v55);
    (*(v50 + 8))(v51, v52);
    v57 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
    v165 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
    sub_35E0((v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v57);
    v58 = v171;
    v59 = v168;
    (*(v171 + 104))(v168, enum case for TypeOfIntent.determine(_:), v175);
    v60 = enum case for ActivityType.failed(_:);
    v61 = sub_2C9C20();
    v62 = *(v61 - 8);
    v63 = v170;
    (*(v62 + 104))(v170, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    v64 = sub_2CA130();
    v65 = v169;
    (*(*(v64 - 8) + 56))(v169, 1, 1, v64);
    v66 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v67 = sub_2C98F0();
    v68 = *(v67 - 8);
    v69 = v167;
    (*(v68 + 104))(v167, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    sub_2CB4C0();

    sub_30B8(v69, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v65, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v63, &qword_34CB88, &unk_2D0D90);
    (*(v58 + 8))(v59, v175);
    sub_2CC230();
    sub_2CC1B0();
    sub_20410(&unk_351900, &unk_2D0960);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2D0770;
    type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
    *(v70 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(3);
    v173(v70);

    return (*(v158 + 8))(v157, v166);
  }

  else
  {
    v72 = v166;
    v73 = *(v166 + 32);
    v158 = v11;
    v73(v15, v38, v11);
    v74 = v72;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v75 = v174;
    v76 = sub_3ED0(v174, static Logger.default);
    swift_beginAccess();
    v77 = *(v176 + 16);
    v143 = v76;
    v157 = (v176 + 16);
    v144 = v77;
    v77(v29, v76, v75);
    v78 = sub_2CDFE0();
    v79 = sub_2CE670();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "DetermineIntentHandler#resolveNowPlayingIntentInfo got now playing info", v80, 2u);
      v75 = v174;
    }

    v81 = *(v176 + 8);
    v176 += 8;
    v81(v29, v75);
    type metadata accessor for NowPlayingIntentInfo();
    v82 = *(v74 + 16);
    v83 = v150;
    v82(v150, v15, v158);
    v84 = sub_82B50(v83);
    v85 = sub_2CE260();
    v174 = v84;
    [v84 setAppBundleId:v85];

    swift_beginAccess();
    v86 = v156;
    v87 = v153;
    v88 = v155;
    (*(v156 + 16))(v153, v39, v155);
    v89 = v154;
    (*(v86 + 104))(v154, enum case for QueuePosition.next(_:), v88);
    sub_118750(&qword_351728, &type metadata accessor for QueuePosition, &protocol conformance descriptor for QueuePosition);
    sub_2CE3E0();
    sub_2CE3E0();
    v90 = *(v86 + 8);
    v90(v89, v88);
    v90(v87, v88);
    v145 = v15;
    if (v178 == v177 && (v91 = sub_2CBA80(), v91 != 2) && (v91 & 1) != 0)
    {
      v92 = v146;
      v144(v146, v143, v75);
      v93 = sub_2CDFE0();
      v94 = sub_2CE680();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "DetermineIntentHandler#resolveNowPlayingIntentInfo user asked about up next but queue is empty", v95, 2u);
      }

      v81(v92, v75);
      v96 = v163;
      v97 = v161;
      v98 = v164;
      (*(v163 + 104))(v161, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v164);
      v99 = v165;
      v100 = v162;
      v101 = v159;
      (*(v165 + 104))(v162, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v159);
      v176 = sub_2CCAE0();
      v157 = v102;
      (*(v99 + 8))(v100, v101);
      (*(v96 + 8))(v97, v98);
      v103 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
      v165 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
      sub_35E0((v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v103);
      v104 = v171;
      v105 = v168;
      (*(v171 + 104))(v168, enum case for TypeOfIntent.determine(_:), v175);
      v106 = enum case for ActivityType.completed(_:);
      v107 = sub_2C9C20();
      v108 = *(v107 - 8);
      v109 = v170;
      (*(v108 + 104))(v170, v106, v107);
      (*(v108 + 56))(v109, 0, 1, v107);
      v110 = sub_2CA130();
      v111 = v169;
      (*(*(v110 - 8) + 56))(v169, 1, 1, v110);
      v112 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
      v113 = sub_2C98F0();
      v114 = *(v113 - 8);
      v115 = v167;
      (*(v114 + 104))(v167, v112, v113);
      (*(v114 + 56))(v115, 0, 1, v113);
      sub_2CB4C0();

      sub_30B8(v115, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v111, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v109, &qword_34CB88, &unk_2D0D90);
      (*(v104 + 8))(v105, v175);
      sub_20410(&unk_351900, &unk_2D0960);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_2D0770;
      type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
      *(v116 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(4);
      v173(v116);
    }

    else
    {
      v117 = v163;
      v118 = v161;
      v119 = v164;
      (*(v163 + 104))(v161, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v164);
      v120 = v165;
      v121 = v162;
      v122 = v159;
      (*(v165 + 104))(v162, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v159);
      v123 = v147;
      v124 = v148;
      v125 = v149;
      (*(v148 + 104))(v147, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v149);
      v176 = sub_2CCAD0();
      v157 = v126;
      (*(v124 + 8))(v123, v125);
      (*(v120 + 8))(v121, v122);
      (*(v117 + 8))(v118, v119);
      v127 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
      v165 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
      sub_35E0((v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v127);
      v128 = v171;
      v129 = v168;
      (*(v171 + 104))(v168, enum case for TypeOfIntent.determine(_:), v175);
      v130 = enum case for ActivityType.completed(_:);
      v131 = sub_2C9C20();
      v132 = *(v131 - 8);
      v133 = v170;
      (*(v132 + 104))(v170, v130, v131);
      (*(v132 + 56))(v133, 0, 1, v131);
      v134 = sub_2CA130();
      v135 = v169;
      (*(*(v134 - 8) + 56))(v169, 1, 1, v134);
      v136 = enum case for SiriKitReliabilityCodes.success(_:);
      v137 = sub_2C98F0();
      v138 = *(v137 - 8);
      v139 = v167;
      (*(v138 + 104))(v167, v136, v137);
      (*(v138 + 56))(v139, 0, 1, v137);
      sub_2CB4C0();

      sub_30B8(v139, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v135, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v133, &qword_34CB88, &unk_2D0D90);
      (*(v128 + 8))(v129, v175);
      sub_20410(&unk_351900, &unk_2D0960);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_2D0770;
      type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
      v141 = v174;
      *(v140 + 32) = static NowPlayingIntentInfoResolutionResult.success(with:)(v174);
      v173(v140);
    }

    return (*(v166 + 8))(v145, v158);
  }
}

void sub_11807C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  isa = sub_2CE400().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_118118(uint64_t a1, void (*a2)(char *), uint64_t a3, const char *a4, uint64_t a5)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE670();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, a4, v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = [objc_allocWithZone(type metadata accessor for DetermineIntentResponse()) init];
  v17 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v16[v17] = a5;
  [v16 setUserActivity:0];
  a2(v16);
}

void sub_118350(void *a1, int a2, void *a3, void *aBlock, const char *a5, uint64_t a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  sub_1184A0(v10, a5, a6);
  _Block_release(v10);
  _Block_release(v10);
}

id DetermineIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetermineIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1184A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = [objc_allocWithZone(type metadata accessor for DetermineIntentResponse()) init];
  v15 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v14[v15] = a3;
  [v14 setUserActivity:0];
  (*(a1 + 16))(a1, v14);
}

uint64_t sub_1186D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_118750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id Parse.getSiriKitIntent(nowPlayingProvider:featureFlags:)(void *a1, uint64_t a2)
{
  v344 = a2;
  v343 = a1;
  v353 = sub_2CD4C0();
  v357 = *(v353 - 8);
  __chkstk_darwin(v353);
  v331 = &v309 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v3 = __chkstk_darwin(v346);
  v339 = &v309 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v352 = &v309 - v5;
  v6 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v7 = __chkstk_darwin(v6 - 8);
  v326 = &v309 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v337 = &v309 - v10;
  v11 = __chkstk_darwin(v9);
  v338 = &v309 - v12;
  v13 = __chkstk_darwin(v11);
  v350 = (&v309 - v14);
  v15 = __chkstk_darwin(v13);
  v345 = &v309 - v16;
  __chkstk_darwin(v15);
  v354 = &v309 - v17;
  v18 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v18 - 8);
  v349 = &v309 - v19;
  v361 = type metadata accessor for AudioNLv3Intent(0);
  v348 = *(v361 - 1);
  v20 = __chkstk_darwin(v361);
  v336 = &v309 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v356 = (&v309 - v22);
  v23 = sub_2CAFE0();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v347 = &v309 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v309 - v27;
  v333 = sub_2CA810();
  v334 = *(v333 - 8);
  __chkstk_darwin(v333);
  v340 = &v309 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v30 - 8);
  v323 = &v309 - v31;
  v318 = sub_2CA970();
  v317 = *(v318 - 8);
  __chkstk_darwin(v318);
  v316 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_2CAA00();
  v330 = *(v329 - 8);
  __chkstk_darwin(v329);
  v319 = &v309 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CE000();
  v364 = *(v34 - 8);
  v365 = v34;
  v35 = __chkstk_darwin(v34);
  v351 = &v309 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v322 = &v309 - v38;
  v39 = __chkstk_darwin(v37);
  v327 = &v309 - v40;
  v41 = __chkstk_darwin(v39);
  v321 = &v309 - v42;
  v43 = __chkstk_darwin(v41);
  v342 = &v309 - v44;
  v45 = __chkstk_darwin(v43);
  v335 = &v309 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v309 - v48;
  v50 = __chkstk_darwin(v47);
  v312 = &v309 - v51;
  v52 = __chkstk_darwin(v50);
  v314 = &v309 - v53;
  v54 = __chkstk_darwin(v52);
  v313 = &v309 - v55;
  v56 = __chkstk_darwin(v54);
  v332 = (&v309 - v57);
  v58 = __chkstk_darwin(v56);
  v311 = &v309 - v59;
  v60 = __chkstk_darwin(v58);
  v310 = &v309 - v61;
  v62 = __chkstk_darwin(v60);
  v309 = &v309 - v63;
  __chkstk_darwin(v62);
  v315 = &v309 - v64;
  v324 = sub_2CA8F0();
  v325 = *(v324 - 8);
  v65 = __chkstk_darwin(v324);
  v67 = &v309 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v328 = &v309 - v68;
  v69 = sub_2CA870();
  v70 = *(v69 - 8);
  v71 = __chkstk_darwin(v69);
  v341 = &v309 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v75 = &v309 - v74;
  v76 = __chkstk_darwin(v73);
  v78 = &v309 - v77;
  v79 = __chkstk_darwin(v76);
  v355 = &v309 - v80;
  __chkstk_darwin(v79);
  v82 = (&v309 - v81);
  v83 = *(v70 + 16);
  v362 = v70 + 16;
  v360 = v83;
  v83(&v309 - v81, v366, v69);
  v84 = (*(v70 + 88))(v82, v69);
  v358 = v24;
  v363 = v69;
  v359 = v70;
  if (v84 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v70 + 96))(v82, v69);
    (*(v24 + 32))(v28, v82, v23);
    v85 = v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v86 = v365;
    v87 = sub_3ED0(v365, static Logger.default);
    swift_beginAccess();
    v88 = v364;
    v89 = *(v364 + 16);
    v334 = v87;
    v333 = v364 + 16;
    v332 = v89;
    v89(v49, v87, v86);
    v90 = *(v24 + 16);
    v91 = v347;
    v340 = v28;
    v90(v347, v28, v23);
    v92 = sub_2CDFE0();
    v93 = sub_2CE670();
    v94 = os_log_type_enabled(v92, v93);
    v320 = v23;
    if (v94)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v367 = v96;
      *v95 = 136315138;
      sub_11C944(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v97 = sub_2CEE70();
      v99 = v98;
      v347 = *(v24 + 8);
      (v347)(v91, v85);
      v100 = sub_3F08(v97, v99, &v367);
      v88 = v364;

      *(v95 + 4) = v100;
      _os_log_impl(&dword_0, v92, v93, "Parse#getSiriKitIntent .NLv3IntentOnly %s", v95, 0xCu);
      sub_306C(v96);
      v86 = v365;
    }

    else
    {

      v347 = *(v24 + 8);
      (v347)(v91, v23);
    }

    v111 = *(v88 + 8);
    (v111)(v49, v86);
    v112 = v350;
    v113 = v349;
    v114 = v355;
    v360(v355, v366, v363);
    sub_2B6170(v114, v113);
    v115 = (*(v348 + 48))(v113, 1, v361);
    v116 = v354;
    v117 = v352;
    if (v115 == 1)
    {
      sub_30B8(v113, &qword_34D360, &qword_2D11E0);
      v118 = v342;
      v332(v342, v334, v86);
      v119 = sub_2CDFE0();
      v120 = sub_2CE680();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_0, v119, v120, "Parse#getSiriKitIntent Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v121, 2u);
      }

      (v111)(v118, v86);
      (v347)(v340, v320);
      return 0;
    }

    sub_D416C(v113, v356);
    if (qword_34C080 != -1)
    {
      swift_once();
    }

    v132 = qword_357108;
    v133 = sub_11C944(&unk_351730, type metadata accessor for AudioNLv3Intent, &unk_2D95F8);
    v349 = v132;
    v348 = v133;
    sub_2CACA0();
    v134 = (v357 + 7);
    v330 = v111;
    if (v367 == 11)
    {
      v135 = *v134;
      v136 = v116;
      v137 = 1;
    }

    else
    {
      sub_DEB38(v367, v116);
      v135 = *v134;
      v136 = v116;
      v137 = 0;
    }

    v153 = v353;
    (v135)(v136, v137, 1, v353);
    v154 = v357;
    v155 = v345;
    v342 = v357[13];
    (v342)(v345, enum case for CommonAudio.Verb.like(_:), v153);
    v350 = v135;
    (v135)(v155, 0, 1, v153);
    v156 = *(v346 + 48);
    sub_F7598(v116, v117);
    sub_F7598(v155, v117 + v156);
    v157 = v116;
    v158 = v154[6];
    if (v158(v117, 1, v153) == 1)
    {
      sub_30B8(v155, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
      v159 = v158(v117 + v156, 1, v353);
      v160 = v320;
      if (v159 == 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_F7598(v117, v112);
      if (v158(v117 + v156, 1, v153) != 1)
      {
        v192 = v117;
        v193 = v357;
        v194 = v192 + v156;
        v195 = v331;
        (v357[4])(v331, v194, v153);
        sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        LODWORD(v329) = sub_2CE250();
        v196 = v193[1];
        v196(v195, v153);
        sub_30B8(v345, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v354, &qword_34D6B8, &qword_2D15B0);
        v196(v112, v153);
        v160 = v320;
        sub_30B8(v352, &qword_34D6B8, &qword_2D15B0);
        v161 = v350;
        if (v329)
        {
          goto LABEL_72;
        }

LABEL_39:
        sub_2CACA0();
        v162 = v338;
        if (v367 == 11)
        {
          v163 = v338;
          v164 = 1;
        }

        else
        {
          sub_DEB38(v367, v338);
          v163 = v162;
          v164 = 0;
        }

        v171 = v353;
        v161(v163, v164, 1, v353);
        v172 = v337;
        (v342)(v337, enum case for CommonAudio.Verb.unlike(_:), v171);
        v161(v172, 0, 1, v171);
        v173 = *(v346 + 48);
        v174 = v339;
        sub_F7598(v162, v339);
        sub_F7598(v172, v174 + v173);
        if (v158(v174, 1, v171) == 1)
        {
          sub_30B8(v172, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
          if (v158(v174 + v173, 1, v171) == 1)
          {
            v117 = v174;
LABEL_50:
            sub_30B8(v117, &qword_34D6B8, &qword_2D15B0);
LABEL_72:
            v217 = v335;
            v218 = v365;
            v332(v335, v334, v365);
            v219 = sub_2CDFE0();
            v220 = sub_2CE690();
            if (os_log_type_enabled(v219, v220))
            {
              v221 = swift_slowAlloc();
              v222 = swift_slowAlloc();
              *&v367 = v222;
              *v221 = 136446210;
              v223 = sub_2CCC80();
              v225 = sub_3F08(v223, v224, &v367);

              *(v221 + 4) = v225;
              _os_log_impl(&dword_0, v219, v220, "Parse#getSiriKitIntent %{public}s Returning UpdateMediaAffinity flow", v221, 0xCu);
              sub_306C(v222);
            }

            (v330)(v217, v218);
            v226 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            v227 = v356;
            v228 = v336;
            sub_11C8D4(v356, v336);
            v229 = v226;
            v230 = dispatch_group_create();
            dispatch_group_enter(v230);
            v231 = swift_allocObject();
            *(v231 + 16) = v229;
            *(v231 + 24) = v230;
            v232 = v229;
            v233 = v230;
            sub_11BB54(v228, v343, v344, sub_11C938, v231, v232);

            sub_FED50(v228);
            sub_2CE960();

            sub_FED50(v227);
            (v347)(v340, v160);
            return v232;
          }
        }

        else
        {
          v175 = v326;
          sub_F7598(v174, v326);
          if (v158(v174 + v173, 1, v171) != 1)
          {
            v214 = v357;
            v215 = v331;
            (v357[4])(v331, v174 + v173, v171);
            sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            LODWORD(v361) = sub_2CE250();
            v216 = v214[1];
            v216(v215, v171);
            sub_30B8(v172, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
            v216(v175, v171);
            v160 = v320;
            sub_30B8(v174, &qword_34D6B8, &qword_2D15B0);
            if (v361)
            {
              goto LABEL_72;
            }

            goto LABEL_54;
          }

          sub_30B8(v172, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
          (v357[1])(v175, v171);
        }

        sub_30B8(v174, &qword_34D6B0, &unk_2D4FC0);
LABEL_54:
        sub_FED50(v356);
        (v347)(v340, v160);
        v126 = v364;
        v128 = v365;
        v122 = v363;
LABEL_105:
        v131 = v351;
        v129 = v360;
        v130 = v341;
        goto LABEL_106;
      }

      sub_30B8(v345, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v354, &qword_34D6B8, &qword_2D15B0);
      (v357[1])(v112, v353);
      v160 = v320;
    }

    sub_30B8(v117, &qword_34D6B0, &unk_2D4FC0);
    v161 = v350;
    goto LABEL_39;
  }

  if (v84 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    if (v84 == enum case for Parse.directInvocation(_:))
    {
      v122 = v363;
      (*(v359 + 96))(v82, v363);
      v123 = v334;
      v124 = v340;
      v125 = v333;
      (*(v334 + 32))(v340, v82, v333);
      sub_238E4C(v124, &v370);
      v126 = v364;
      v127 = v351;
      if (v373 == 4)
      {
        v204 = v370;

        v205 = v365;
        if (!v204)
        {
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v270 = sub_3ED0(v205, static Logger.default);
          swift_beginAccess();
          v271 = v312;
          (*(v126 + 16))(v312, v270, v205);
          v272 = sub_2CDFE0();
          v273 = sub_2CE680();
          if (os_log_type_enabled(v272, v273))
          {
            v274 = swift_slowAlloc();
            *v274 = 0;
            _os_log_impl(&dword_0, v272, v273, "Parse#getSiriKitIntent PlayMediaShim directinvocation is missing audioExperience", v274, 2u);
          }

          (*(v126 + 8))(v271, v205);
          (*(v123 + 8))(v340, v125);
          return 0;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v206 = sub_3ED0(v205, static Logger.default);
        swift_beginAccess();
        v207 = v314;
        (*(v126 + 16))(v314, v206, v205);
        v208 = sub_2CDFE0();
        v209 = sub_2CE690();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          *v210 = 0;
          _os_log_impl(&dword_0, v208, v209, "Parse#getSiriKitIntent Constructing INPlayMediaIntent", v210, 2u);
        }

        (*(v126 + 8))(v207, v205);
        v211 = [objc_allocWithZone(INPlayMediaIntent) init];
        sub_2CDBC0();
        sub_2CDBB0();
        sub_2CDBA0();

        v212 = sub_2CDBD0();
        v213 = sub_1BA200(v204, v212, 0, 0);

        (*(v334 + 8))(v340, v125);
        return v213;
      }

      v128 = v365;
      if (v373 != 255)
      {
        sub_30B8(&v370, &qword_34CCB0, &qword_2D5710);
      }

      (*(v123 + 8))(v124, v125);
    }

    else
    {
      v126 = v364;
      v127 = v351;
      if (v84 != enum case for Parse.pommesResponse(_:))
      {
        if (v84 != enum case for Parse.uso(_:))
        {
          v234 = v360;
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v235 = v365;
          v236 = sub_3ED0(v365, static Logger.default);
          swift_beginAccess();
          (*(v126 + 16))(v322, v236, v235);
          v237 = v363;
          v234(v75, v366, v363);
          v238 = v234;
          v239 = sub_2CDFE0();
          v240 = sub_2CE680();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            v361 = swift_slowAlloc();
            *&v367 = v361;
            *v241 = 136315138;
            v238(v355, v75, v237);
            v242 = sub_2CE2A0();
            v244 = v243;
            v245 = *(v359 + 8);
            v245(v75, v237);
            v246 = sub_3F08(v242, v244, &v367);
            v247 = v365;

            *(v241 + 4) = v246;
            v248 = v240;
            v128 = v247;
            _os_log_impl(&dword_0, v239, v248, "Parse#getSiriKitIntent parse is not supported %s", v241, 0xCu);
            sub_306C(v361);

            (*(v364 + 8))(v322, v247);
            v122 = v237;
          }

          else
          {
            v289 = v126;

            v245 = *(v359 + 8);
            v245(v75, v237);
            (*(v289 + 8))(v322, v235);
            v122 = v237;
            v128 = v235;
          }

          v245(v82, v122);
          v126 = v364;
          goto LABEL_105;
        }

        v122 = v363;
        (*(v359 + 96))(v82, v363);
        v176 = v325;
        v177 = v328;
        v178 = v82;
        v179 = v324;
        (*(v325 + 32))(v328, v178, v324);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v180 = v365;
        v181 = sub_3ED0(v365, static Logger.default);
        swift_beginAccess();
        v182 = *(v126 + 16);
        v183 = v315;
        v358 = v181;
        v357 = (v126 + 16);
        v356 = v182;
        (v182)(v315, v181, v180);
        (*(v176 + 16))(v67, v177, v179);
        v184 = sub_2CDFE0();
        v185 = sub_2CE670();
        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          *&v367 = v187;
          *v186 = 136380675;
          v188 = sub_2CA8C0();
          v190 = v189;
          v361 = *(v325 + 8);
          v361(v67, v179);
          v191 = sub_3F08(v188, v190, &v367);
          v122 = v363;

          *(v186 + 4) = v191;
          _os_log_impl(&dword_0, v184, v185, "Parse#getSiriKitIntent found .uso in primary parse of input %{private}s", v186, 0xCu);
          sub_306C(v187);
          v126 = v364;
        }

        else
        {

          v361 = *(v176 + 8);
          v361(v67, v179);
        }

        v275 = *(v126 + 8);
        v275(v183, v180);
        v276 = v180;
        v277 = v316;
        sub_2CA8E0();
        v278 = sub_2CA960();
        (*(v317 + 8))(v277, v318);
        v279 = v329;
        if (*(v278 + 16))
        {
          v330[2](v319, v278 + ((*(v330 + 80) + 32) & ~*(v330 + 80)), v329);

          if (sub_2CA9D0())
          {
            sub_2CD700();
            swift_allocObject();

            v280 = sub_2CD6B0();
            if (sub_4259C())
            {
              v281 = v309;
              (v356)(v309, v358, v276);
              v282 = sub_2CDFE0();
              v283 = sub_2CE690();
              if (os_log_type_enabled(v282, v283))
              {
                v284 = swift_slowAlloc();
                *v284 = 0;
                _os_log_impl(&dword_0, v282, v283, "Parse#getSiriKitIntent uso affinity task", v284, 2u);
              }

              v275(v281, v276);
              v285 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
              v286 = dispatch_group_create();
              dispatch_group_enter(v286);
              v287 = swift_allocObject();
              *(v287 + 16) = v285;
              *(v287 + 24) = v286;
              v232 = v285;
              v288 = v286;
              sub_11C170(v280, v343, v344, sub_11C9E8, v287, v232);

              sub_2CE960();

              (v330[1])(v319, v279);
              v361(v328, v324);
              return v232;
            }

            (v330[1])(v319, v279);
            v361(v328, v324);
            v131 = v351;
            v129 = v360;
            v130 = v341;
            v128 = v276;
LABEL_106:
            if (qword_34BF58 != -1)
            {
              swift_once();
            }

            v290 = sub_3ED0(v128, static Logger.default);
            swift_beginAccess();
            (*(v126 + 16))(v131, v290, v128);
            v129(v130, v366, v122);
            v291 = v129;
            v292 = sub_2CDFE0();
            v293 = sub_2CE680();
            if (os_log_type_enabled(v292, v293))
            {
              v294 = swift_slowAlloc();
              v295 = swift_slowAlloc();
              v369 = v295;
              *v294 = 136315138;
              v291(v355, v130, v122);
              v296 = sub_2CE2A0();
              v298 = v297;
              (*(v359 + 8))(v130, v122);
              v299 = sub_3F08(v296, v298, &v369);

              *(v294 + 4) = v299;
              _os_log_impl(&dword_0, v292, v293, "Parse#getSiriKitIntent Could not generate intent from parse: %s", v294, 0xCu);
              sub_306C(v295);

              (*(v126 + 8))(v351, v365);
            }

            else
            {

              (*(v359 + 8))(v130, v122);
              (*(v126 + 8))(v131, v128);
            }

            return 0;
          }

          v305 = v310;
          (v356)(v310, v358, v276);
          v306 = sub_2CDFE0();
          v307 = sub_2CE690();
          if (os_log_type_enabled(v306, v307))
          {
            v308 = swift_slowAlloc();
            *v308 = 0;
            _os_log_impl(&dword_0, v306, v307, "Parse#getSiriKitIntent failed to get task from usoParse", v308, 2u);
          }

          v275(v305, v276);
          (v330[1])(v319, v279);
        }

        else
        {

          v300 = v311;
          (v356)(v311, v358, v276);
          v301 = sub_2CDFE0();
          v302 = sub_2CE690();
          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            *v303 = 0;
            _os_log_impl(&dword_0, v301, v302, "Parse#getSiriKitIntent firstUserDialogAct No user dialog act found in usoParse", v303, 2u);
          }

          v275(v300, v276);
        }

        v361(v328, v324);
        return 0;
      }

      (*(v359 + 96))(v82, v363);
      v138 = *v82;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v139 = v365;
      v140 = sub_3ED0(v365, static Logger.default);
      swift_beginAccess();
      v141 = *(v126 + 16);
      v141(v332, v140, v139);
      v142 = v138;
      v143 = sub_2CDFE0();
      v144 = sub_2CE670();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *v145 = 138412290;
        *(v145 + 4) = v142;
        *v146 = v142;
        v147 = v142;
        _os_log_impl(&dword_0, v143, v144, "Parse#getSiriKitIntent found .pommesResponse in primary parse of input %@", v145, 0xCu);
        sub_30B8(v146, &unk_34FC00, &unk_2D0150);
      }

      v148 = *(v364 + 8);
      v148(v332, v365);
      v149 = sub_1B7F14();
      if (v149)
      {
        v150 = v149;
        v151 = v323;
        sub_2CDA40();

        v152 = 0;
      }

      else
      {
        v152 = 1;
        v151 = v323;
      }

      (v330[7])(v151, v152, 1, v329);
      sub_2CD700();
      v249 = sub_2CD600();
      if (!v249)
      {
        v251 = v313;
        v252 = v365;
        v141(v313, v140, v365);
        v253 = sub_2CDFE0();
        v254 = sub_2CE680();
        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          *v255 = 0;
          _os_log_impl(&dword_0, v253, v254, "Parse#getSiriKitIntent AudioUsoIntent failed to be constructed", v255, 2u);
        }

        else
        {
        }

        v148(v251, v252);
        return 0;
      }

      *&v367 = v249;
      if (sub_2CD940())
      {
        v250 = sub_1B8014();

        return v250;
      }

      v126 = v364;
      v128 = v365;
      v122 = v363;
    }

    v129 = v360;
    v130 = v341;
    v131 = v127;
    goto LABEL_106;
  }

  v101 = v363;
  (*(v359 + 96))(v82, v363);
  sub_20410(&qword_353070, &unk_2D0FB0);
  sub_D2F98(v366, &v367);
  if (!v368)
  {
    sub_30B8(&v367, &qword_34CF98, &unk_2D1A40);
    v165 = v365;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v166 = sub_3ED0(v165, static Logger.default);
    swift_beginAccess();
    v167 = v327;
    (*(v364 + 16))(v327, v166, v165);
    v168 = sub_2CDFE0();
    v169 = sub_2CE680();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_0, v168, v169, "Parse#getSiriKitIntent Cannot get AudioIntent from NLv3IntentPlusServerConversion parse for INUpdateMediaAffinityIntent", v170, 2u);
    }

    (*(v364 + 8))(v167, v165);
    (*(v358 + 8))(v82, v23);
    return 0;
  }

  sub_420A4(&v367, &v370);
  v102 = sub_2CA830();
  objc_opt_self();
  v103 = swift_dynamicCastObjCClass();
  v104 = v365;
  if (v103)
  {
    v105 = sub_2CA830();
    objc_opt_self();
    v106 = swift_dynamicCastObjCClassUnconditional();
    v107 = v371;
    v108 = v372;
    v109 = sub_35E0(&v370, v371);
    v110 = sub_11C750(v109, v343, v344, v106, v366, v107, v108);

LABEL_64:
    sub_306C(&v370);
    (*(v358 + 8))(v82, v23);
    return v110;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2CA830();
    objc_opt_self();
    v110 = swift_dynamicCastObjCClassUnconditional();
    v197 = dispatch_group_create();
    dispatch_group_enter(v197);
    v198 = v371;
    v199 = v372;
    v200 = sub_35E0(&v370, v371);
    v201 = swift_allocObject();
    *(v201 + 16) = v197;
    v202 = v197;
    sub_6F9E8(v200, v343, v344, sub_11BB4C, v201, v110, v198, v199);

    sub_2CE960();

    goto LABEL_64;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v256 = sub_3ED0(v104, static Logger.default);
  swift_beginAccess();
  v257 = v364;
  (*(v364 + 16))(v321, v256, v104);
  v258 = v360;
  v360(v78, v366, v101);
  v259 = sub_2CDFE0();
  LODWORD(v361) = sub_2CE670();
  if (os_log_type_enabled(v259, v361))
  {
    v260 = swift_slowAlloc();
    v356 = v259;
    v261 = v260;
    v357 = swift_slowAlloc();
    v369 = v357;
    *v261 = 136315138;
    v258(v355, v78, v101);
    v262 = v257;
    v263 = sub_2CE2A0();
    v264 = v101;
    v266 = v265;
    (*(v359 + 8))(v78, v264);
    v267 = sub_3F08(v263, v266, &v369);

    v268 = v261;
    *(v261 + 4) = v267;
    v269 = v356;
    _os_log_impl(&dword_0, v356, v361, "Parse#getSiriKitIntent found .NLv3IntentPlusServerConversion %s", v268, 0xCu);
    sub_306C(v357);

    (*(v262 + 8))(v321, v365);
  }

  else
  {

    (*(v359 + 8))(v78, v101);
    (*(v257 + 8))(v321, v104);
  }

  v304 = sub_2CA7D0();

  sub_306C(&v370);
  (*(v358 + 8))(v82, v23);
  return v304;
}

void sub_11B930(void *a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "Parse#getSiriKitIntent returning intent: %@", v12, 0xCu);
    sub_30B8(v13, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v7, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_11BB54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v44 = a6;
  v43 = a5;
  v42 = a4;
  v40 = a3;
  v41 = a2;
  v7 = sub_2CD4C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v15 = __chkstk_darwin(v14 - 8);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - v18;
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v48[3] = type metadata accessor for AudioNLv3Intent(0);
  v48[4] = sub_11C944(&qword_34F600, type metadata accessor for AudioNLv3Intent, &unk_2D9460);
  v22 = sub_F390(v48);
  sub_11C8D4(a1, v22);
  sub_2CD840();
  (*(v8 + 104))(v19, enum case for CommonAudio.Verb.like(_:), v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v23 = *(v11 + 56);
  sub_F7598(v21, v13);
  sub_F7598(v19, &v13[v23]);
  v24 = *(v8 + 48);
  if (v24(v13, 1, v7) == 1)
  {
    sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    v25 = v24(&v13[v23], 1, v7);
    v26 = v44;
    if (v25 == 1)
    {
      sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F7598(v13, v39);
  if (v24(&v13[v23], 1, v7) == 1)
  {
    sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    (*(v8 + 8))(v39, v7);
    v26 = v44;
LABEL_6:
    sub_30B8(v13, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v27 = &v13[v23];
  v28 = v38;
  (*(v8 + 32))(v38, v27, v7);
  sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v29 = v39;
  sub_2CE250();
  v30 = *(v8 + 8);
  v30(v28, v7);
  sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
  v30(v29, v7);
  sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
  v26 = v44;
LABEL_8:
  v31 = [v26 backingStore];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    [v32 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v33 = v41;
  sub_35E0(v41, v41[3]);
  sub_EEAC(v40, v47);
  sub_EEAC(v33, v46);
  sub_EEAC(v48, v45);
  v34 = swift_allocObject();
  v35 = v43;
  v34[2] = v42;
  v34[3] = v35;
  sub_F338(v47, (v34 + 4));
  sub_F338(v46, (v34 + 9));
  sub_F338(v45, (v34 + 14));
  v34[19] = v26;

  v36 = v26;
  sub_2CC2F0();

  return sub_306C(v48);
}

uint64_t sub_11C170(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v39 = a3;
  v40 = a2;
  v7 = sub_2CD4C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v15 = __chkstk_darwin(v14 - 8);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - v18;
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v47[3] = sub_2CD700();
  v47[4] = &protocol witness table for AudioUsoIntent;
  v47[0] = a1;

  sub_2CD840();
  (*(v8 + 104))(v19, enum case for CommonAudio.Verb.like(_:), v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v22 = *(v11 + 56);
  sub_F7598(v21, v13);
  sub_F7598(v19, &v13[v22]);
  v23 = *(v8 + 48);
  if (v23(v13, 1, v7) == 1)
  {
    sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    v24 = v23(&v13[v22], 1, v7);
    v25 = v43;
    if (v24 == 1)
    {
      sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F7598(v13, v38);
  if (v23(&v13[v22], 1, v7) == 1)
  {
    sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
    (*(v8 + 8))(v38, v7);
    v25 = v43;
LABEL_6:
    sub_30B8(v13, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v26 = &v13[v22];
  v27 = v37;
  (*(v8 + 32))(v37, v26, v7);
  sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v28 = v38;
  sub_2CE250();
  v29 = *(v8 + 8);
  v29(v27, v7);
  sub_30B8(v19, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v21, &qword_34D6B8, &qword_2D15B0);
  v29(v28, v7);
  sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
  v25 = v43;
LABEL_8:
  v30 = [v25 backingStore];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    [v31 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v32 = v40;
  sub_35E0(v40, v40[3]);
  sub_EEAC(v39, v46);
  sub_EEAC(v32, v45);
  sub_EEAC(v47, v44);
  v33 = swift_allocObject();
  v34 = v42;
  v33[2] = v41;
  v33[3] = v34;
  sub_F338(v46, (v33 + 4));
  sub_F338(v45, (v33 + 9));
  sub_F338(v44, (v33 + 14));
  v33[19] = v25;

  v35 = v25;
  sub_2CC2F0();

  return sub_306C(v47);
}

id sub_11C750(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  __chkstk_darwin(a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = v15;
  v17 = a4;
  v18 = v15;
  sub_113174(v14, a2, a3, sub_11C9E8, v16, v17, a6, a7);

  sub_2CE960();

  v19 = *(v12 + 8);
  v20 = v17;
  v19(v14, a6);
  return v20;
}

uint64_t sub_11C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11C98C()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));
  sub_306C((v0 + 112));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_11C9EC()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_351740 = v8;
  return result;
}

uint64_t sub_11CB84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  v10[2] = sub_CEEA8;
  v10[3] = v9;
  v10[4] = a6;

  sub_20410(&qword_3519E8, &qword_2D49F0);
  sub_2CB710();
}

uint64_t sub_11CCA8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_20410(&qword_3519E8, &qword_2D49F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  sub_F3F4(a1, &v20 - v11, &qword_3519E8, &qword_2D49F0);
  v13 = sub_20410(&qword_3519F0, &qword_2D49F8);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_30B8(v12, &qword_3519E8, &qword_2D49F0);
    v15 = 0;
  }

  else
  {
    v15 = *v12;

    sub_30B8(&v12[*(v13 + 64)], &unk_356F60, qword_2D4A00);
  }

  swift_beginAccess();
  v16 = *(a4 + 16);
  *(a4 + 16) = v15;

  sub_F3F4(a1, v10, &qword_3519E8, &qword_2D49F0);
  if (v14(v10, 1, v13) == 1)
  {
    sub_30B8(v10, &qword_3519E8, &qword_2D49F0);
    v17 = 0;
  }

  else
  {

    v17 = *(v10 + 1);
    sub_30B8(&v10[*(v13 + 64)], &unk_356F60, qword_2D4A00);
  }

  *(a4 + 24) = v17;

  return a2(v18);
}

void sub_11CED8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  v13 = a6;

  sub_1220F8(a3, a4, sub_CEEA8, v12, a5, v13);
}

uint64_t sub_11CFB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  sub_123808(sub_CEEA8, v6, a3);
}

uint64_t sub_11D050(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 48);
  *(a4 + 48) = a1;
  v8 = a1;

  return a2();
}

uint64_t sub_11D0C0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_35E0((a2 + 24), *(a2 + 48));
  v10 = swift_allocObject();
  v10[2] = sub_CE4A8;
  v10[3] = v9;
  v10[4] = a4;

  sub_204218(a3, sub_12447C, v10);
}

uint64_t sub_11D1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  *(a5 + 56) = a1;
  *(a5 + 64) = a2;

  return a3(v9);
}

void sub_11D224(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void (*a9)(uint64_t, uint64_t), void (*a10)(char *, unint64_t), char a11)
{
  v102 = a7;
  v103 = a8;
  v97 = a5;
  v98 = a6;
  v96 = a4;
  v99 = a3;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v100 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v94[0] = v94 - v18;
  v19 = __chkstk_darwin(v17);
  v101 = (v94 - v20);
  v21 = __chkstk_darwin(v19);
  v23 = v94 - v22;
  __chkstk_darwin(v21);
  v25 = v94 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v27 = *(v14 + 16);
  v105 = v14 + 16;
  v106 = v26;
  v104 = v27;
  v27(v25, v26, v13);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  v30 = os_log_type_enabled(v28, v29);
  v108 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v28, v29, "PlayMediaViewProvider#makeViews building MediaRemote section...", v31, 2u);
    a1 = v108;
  }

  v33 = *(v14 + 8);
  v32 = v14 + 8;
  v107 = v33;
  v33(v25, v13);
  v95 = [objc_allocWithZone(SACardSnippet) init];
  swift_beginAccess();
  v34 = a1[8];
  v35 = _swiftEmptyArrayStorage;
  if (v34)
  {
    v94[1] = v32;
    v36 = a1[7];
    v104(v23, v106, v13);

    v37 = sub_2CDFE0();
    v38 = v13;
    v39 = sub_2CE670();
    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v113[0] = v41;
      *v40 = 136315138;
      v42 = sub_3F08(v36, v34, v113);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_0, v37, v39, "PlayMediaViewProvider#makeViews removing snippet from sections since we have an uiAssertion: %s ", v40, 0xCu);
      sub_306C(v41);
      v35 = _swiftEmptyArrayStorage;
    }

    else
    {
    }

    v107(v23, v38);
    v13 = v38;
    swift_beginAccess();
    *(a2 + 16) = _swiftEmptyArrayStorage;

    a1 = v108;
  }

  v43 = sub_120630();
  swift_beginAccess();
  if (!a1[4])
  {
    swift_beginAccess();
    v46 = *(a2 + 16);
    if (v46 >> 62)
    {
      sub_334A0(0, &unk_351910, SFCardSection_ptr);

      v47 = sub_2CED90();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_2CEEB0();
      sub_334A0(0, &unk_351910, SFCardSection_ptr);
      v47 = v46;
    }

    swift_beginAccess();
    v48 = a1[2];
    v112 = v48;
    v111 = _swiftEmptyArrayStorage;
    v49 = v48;
    if (v48)
    {
      v50 = v49;
      sub_2CE3F0();
      if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2CE430();
      }

      sub_2CE460();
      v35 = v111;
    }

    sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
    sub_30B8(&v112, &unk_351920, &unk_2D4998);
    v111 = v47;
    sub_80E40(v35);
    v45 = sub_2CE650();

    swift_beginAccess();
    if (!a1[3])
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((v43 & 1) == 0)
  {
    swift_beginAccess();
    v53 = *(a2 + 16);
    if (v53 >> 62)
    {
      sub_334A0(0, &unk_351910, SFCardSection_ptr);

      v54 = sub_2CED90();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_2CEEB0();
      sub_334A0(0, &unk_351910, SFCardSection_ptr);
      v54 = v53;
    }

    swift_beginAccess();
    v55 = a1[4];
    v109 = v55;
    v111 = _swiftEmptyArrayStorage;
    v56 = v55;
    if (v55)
    {
      v57 = v56;
      sub_2CE3F0();
      if (*(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v111 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_2CE430();
      }

      sub_2CE460();
      v35 = v111;
    }

    sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
    sub_30B8(&v109, &unk_351920, &unk_2D4998);
    v111 = v54;
    sub_80E40(v35);
    v45 = sub_2CE650();

    swift_beginAccess();
    if (!a1[5])
    {
LABEL_30:
      v58 = v45;
      v52.super.isa = 0;
      goto LABEL_31;
    }

LABEL_22:
    v51 = v45;

    sub_20410(&unk_351990, &unk_2D49A8);
    v52.super.isa = sub_2CE400().super.isa;

LABEL_31:
    [v45 setReferencedCommands:v52.super.isa];

    goto LABEL_32;
  }

  swift_beginAccess();
  if (*(a2 + 16) >> 62)
  {
    sub_334A0(0, &unk_351910, SFCardSection_ptr);

    sub_2CED90();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_2CEEB0();
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
  }

  sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
  v44 = sub_2CE650();

  v45 = v44;
LABEL_32:
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  swift_beginAccess();
  v59 = v13;
  if (a1[8])
  {
    v60 = v45;

    v61 = sub_2CE260();
  }

  else
  {
    v62 = v45;
    v61 = 0;
  }

  [v45 setCorrespondingSessionID:v61];

  v63 = [objc_allocWithZone(SAUISash) init];
  v64 = sub_2CE260();
  [v63 setApplicationBundleIdentifier:v64];

  v98 = v63;
  [v45 setSash:v63];

  sub_20410(&unk_351900, &unk_2D0960);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_2D0770;
  *(v65 + 32) = v45;
  v110 = v65;
  sub_123A10(v102, v103);
  if (v66)
  {
    v67 = v66;

    v104(v101, v106, v13);
    v68 = sub_2CDFE0();
    v69 = sub_2CE670();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "PlayMediaViewProvider#makeViews adding broadcast radio button to views.", v70, 2u);
    }

    v107(v101, v13);
    v71 = v108;
    swift_beginAccess();
    if (v71[8])
    {
      v72 = v67;

      v73 = sub_2CE260();
    }

    else
    {
      v74 = v67;
      v73 = 0;
    }

    [v67 setCorrespondingSessionID:v73];

    v75 = sub_2CE260();
    [v67 setViewId:v75];

    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_2D48E0;
    *(v65 + 32) = v67;
    *(v65 + 40) = v45;
    v76 = v45;

    v110 = v65;
  }

  v101 = a9;
  v77 = v108;
  swift_beginAccess();
  v78 = v77[6];
  v79 = v99;
  if (v78)
  {
    v80 = v78;
    sub_2CE3F0();
    if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_2CE430();
    }

    sub_2CE460();

    v65 = v110;
  }

  sub_35E0(v79 + 23, v79[26]);
  if (sub_2CC430())
  {
    type metadata accessor for PlayMediaDialogProvider(0);
    v81 = swift_dynamicCastClass();
    if (v81)
    {
      v82 = v81;
      v83 = v45;

      sub_1A4A6C(a11 & 1, v102, v103, v82, v83, v101, a10, v65);

      swift_bridgeObjectRelease_n();
    }

    else
    {

      v87 = v94[0];
      v104(v94[0], v106, v59);
      v88 = sub_2CDFE0();
      v89 = sub_2CE680();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_0, v88, v89, "PlayMediaViewProvider#makeViews dialogProvider not instance of PlayMediaDialogProvider", v90, 2u);
      }

      v107(v87, v59);
      v91 = sub_2CB850();
      sub_124424();
      v92 = swift_allocError();
      (*(*(v91 - 8) + 104))(v93, enum case for PlaybackCode.ceGE66(_:), v91);
      v101(v92, 1);
    }
  }

  else
  {
    v104(v100, v106, v59);
    v84 = sub_2CDFE0();
    v85 = sub_2CE660();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_0, v84, v85, "PlayMediaViewProvider#makeViews pym not enabled, returning snippet", v86, 2u);
    }

    v107(v100, v59);
    v101(v65, 0);
  }
}

uint64_t sub_11E134(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  v149 = a5;
  v150 = a4;
  v151 = a3;
  v143 = a2;
  v6 = sub_2CE000();
  v152 = *(v6 - 8);
  v153 = v6;
  v7 = __chkstk_darwin(v6);
  v147 = v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v132 - v10;
  __chkstk_darwin(v9);
  v144 = v132 - v12;
  v148 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = __chkstk_darwin(v148);
  v142 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v141 = v132 - v16;
  v17 = __chkstk_darwin(v15);
  v145 = v132 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v132 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v132 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v132 - v26;
  __chkstk_darwin(v25);
  v29 = v132 - v28;
  v30 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v30);
  v32 = v132 - v31;
  sub_F3F4(a1, v132 - v31, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = v153;
    v34 = sub_3ED0(v153, static Logger.default);
    swift_beginAccess();
    v35 = v152;
    (*(v152 + 16))(v11, v34, v33);
    swift_errorRetain();
    v36 = sub_2CDFE0();
    v37 = sub_2CE680();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v155[0] = v39;
      *v38 = 136446210;
      swift_getErrorValue();
      v40 = sub_2CEEF0();
      v42 = sub_3F08(v40, v41, v155);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_0, v36, v37, "PlayMediaViewProvider#makeViews pym templating evaluation failed: %{public}s", v38, 0xCu);
      sub_306C(v39);
    }

    (*(v35 + 8))(v11, v33);
    v151(v149, 0);
  }

  else
  {
    sub_24BE0(v32, v29);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = v153;
    v45 = sub_3ED0(v153, static Logger.default);
    swift_beginAccess();
    v46 = v152;
    v47 = *(v152 + 16);
    v48 = v144;
    v140 = v45;
    v139 = v152 + 16;
    v138 = v47;
    v47(v144, v45, v44);
    sub_F3F4(v29, v27, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v29, v24, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v29, v21, &qword_34C6E8, &unk_2D0FF0);
    v49 = sub_2CDFE0();
    v50 = sub_2CE690();
    v51 = os_log_type_enabled(v49, v50);
    v146 = v29;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v154[0] = v137;
      *v52 = 136446978;
      v53 = sub_2CCC90();
      v136 = v49;
      v55 = sub_3F08(v53, v54, v154);
      v135 = v50;
      v56 = v55;

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      v57 = v145;
      sub_F3F4(v27, v145, &qword_34C6E8, &unk_2D0FF0);
      v58 = v148;

      v59 = sub_2CA0D0();
      v61 = v60;
      v134 = v21;
      sub_30B8(v27, &qword_34C6E8, &unk_2D0FF0);
      v62 = sub_2CA130();
      v63 = *(v62 - 8);
      v64 = *(v63 + 8);
      v65 = v63 + 8;
      v64(v57, v62);
      v132[1] = v65;
      v133 = v64;
      v66 = sub_3F08(v59, v61, v154);

      *(v52 + 14) = v66;
      *(v52 + 22) = 2082;
      sub_F3F4(v24, v57, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA100();
      v64(v57, v62);
      v67 = sub_2CE420();
      v69 = v68;

      v70 = v24;
      v71 = v58;
      sub_30B8(v70, &qword_34C6E8, &unk_2D0FF0);
      v72 = sub_3F08(v67, v69, v154);

      *(v52 + 24) = v72;
      *(v52 + 32) = 2082;
      v73 = v134;
      sub_F3F4(v134, v57, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA110();
      v133(v57, v62);
      v29 = v146;
      v74 = sub_2CE420();
      v76 = v75;

      sub_30B8(v73, &qword_34C6E8, &unk_2D0FF0);
      v77 = sub_3F08(v74, v76, v154);

      *(v52 + 34) = v77;
      v78 = v136;
      _os_log_impl(&dword_0, v136, v135, "PlayMediaViewProvider#makeViews %{public}s pym templating evaluation: dialogId:%{public}s, print: %{public}s, speak: %{public}s", v52, 0x2Au);
      swift_arrayDestroy();

      v79 = v144;
      v144 = *(v152 + 8);
      (v144)(v79, v153);
    }

    else
    {

      sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v24, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v27, &qword_34C6E8, &unk_2D0FF0);
      v144 = *(v46 + 8);
      (v144)(v48, v44);
      v71 = v148;
    }

    v80 = v141;
    sub_F3F4(v29, v141, &qword_34C6E8, &unk_2D0FF0);

    v81 = sub_2CA100();
    v82 = sub_2CA130();
    v83 = *(v82 - 8);
    v84 = *(v83 + 8);
    v85 = v83 + 8;
    v84(v80, v82);
    v86 = (v81 + 40);
    v87 = *(v81 + 16) + 1;
    while (--v87)
    {
      v89 = *(v86 - 1);
      v88 = *v86;
      v86 += 2;
      v90 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v90 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {

        goto LABEL_19;
      }
    }

    v88 = 0;
LABEL_19:

    v91 = v142;
    sub_F3F4(v29, v142, &qword_34C6E8, &unk_2D0FF0);

    v92 = sub_2CA110();
    v142 = v84;
    v84(v91, v82);
    v93 = (v92 + 40);
    v94 = *(v92 + 16) + 1;
    v137 = v85;
    while (--v94)
    {
      v95 = *(v93 - 1);
      v96 = *v93;
      v93 += 2;
      v97 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v97 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v97)
      {

        goto LABEL_26;
      }
    }

    v96 = 0;
LABEL_26:

    v98 = [objc_allocWithZone(SADialogText) init];
    if (v88)
    {

      v99 = sub_2CE260();
    }

    else
    {
      v99 = 0;
    }

    [v98 setText:v99];

    v100 = v96 != 0;
    if (v96)
    {

      v101 = sub_2CE260();
    }

    else
    {
      v101 = 0;
    }

    [v98 setSpeakableTextOverride:v101];

    v102 = [objc_allocWithZone(SADialog) init];
    [v102 setCanUseServerTTS:1];
    sub_2CBC60();
    sub_35E0(v154, v154[3]);
    v103 = sub_2CBE50();
    sub_306C(v154);
    [v102 setPrintedOnly:(v103 & 1) == 0];

    if (v88)
    {

      v100 = 0;
    }

    v104 = v151;
    v105 = v153;
    [v102 setSpokenOnly:v100];
    v106 = v98;
    [v102 setCaption:v106];
    [v102 setContent:v106];

    v107 = v145;
    sub_F3F4(v146, v145, &qword_34C6E8, &unk_2D0FF0);

    sub_2CA0D0();
    v108 = sub_2CE260();

    (v142)(v107, v82);
    [v102 setDialogIdentifier:v108];

    [v143 setDialog:v102];
    v109 = v147;
    v138(v147, v140, v105);
    v110 = v102;
    v111 = sub_2CDFE0();
    v112 = sub_2CE690();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v154[0] = v115;
      *v113 = 136447490;
      v116 = sub_2CCC90();
      v118 = sub_3F08(v116, v117, v154);

      *(v113 + 4) = v118;
      *(v113 + 12) = 1026;
      v119 = [v110 printedOnly];

      *(v113 + 14) = v119;
      *(v113 + 18) = 1026;
      v120 = [v110 spokenOnly];

      *(v113 + 20) = v120;
      *(v113 + 24) = 2114;
      v121 = [v110 caption];
      *(v113 + 26) = v121;
      *v114 = v121;
      *(v113 + 34) = 2114;
      v122 = [v110 content];
      *(v113 + 36) = v122;
      v114[1] = v122;
      *(v113 + 44) = 2114;
      v123 = [v110 dialogIdentifier];
      if (v123)
      {
        v124 = v123;
        v125 = sub_2CE270();
        v127 = v126;

        sub_10C40();
        swift_allocError();
        *v128 = v125;
        v128[1] = v127;
        v104 = v151;
        v123 = _swift_stdlib_bridgeErrorToNSError();
        v129 = v123;
      }

      else
      {
        v129 = 0;
      }

      *(v113 + 46) = v123;
      v114[2] = v129;
      _os_log_impl(&dword_0, v111, v112, "PlayMediaViewProvider#makeViews %{public}s pym built and set SADialog printedOnly:%{BOOL,public}d, spokenOnly:%{BOOL,public}d, caption:%{public}@, content:%{public}@, dialogIdentifier:%{public}@", v113, 0x36u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();

      sub_306C(v115);

      v131 = v153;
      v130 = v147;
    }

    else
    {

      v130 = v109;
      v131 = v105;
    }

    (v144)(v130, v131);
    v104(v149, 0);

    return sub_30B8(v146, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_11F0B8(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v35 - v13;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v15 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v12, v15, v8);
    swift_errorRetain();
    v16 = sub_2CDFE0();
    v17 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = a4;
      v35[1] = a1;
      v20 = a3;
      v21 = v19;
      v36 = v19;
      *v18 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v22 = sub_2CE2A0();
      v24 = sub_3F08(v22, v23, &v36);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_0, v16, v17, "PlayMediaViewProvider#makeSuggestionView error while creating suggestionView: %{public}s", v18, 0xCu);
      sub_306C(v21);
      a3 = v20;
    }

    (*(v9 + 8))(v12, v8);
    a1 = 0;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v14, v25, v8);
    v26 = a1;
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    sub_A41AC(a1, 0);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35[0] = a4;
      v30 = a3;
      v31 = v29;
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v26;
      *v32 = a1;
      v33 = v26;
      _os_log_impl(&dword_0, v27, v28, "PlayMediaViewProvider#makeSuggestionView created snippet: %@", v31, 0xCu);
      sub_30B8(v32, &unk_34FC00, &unk_2D0150);

      a3 = v30;
    }

    (*(v9 + 8))(v14, v8);
  }

  return a3(a1);
}

uint64_t sub_11F4BC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  sub_20410(&qword_3519C8, &qword_2D49D0);
  v2[12] = swift_task_alloc();
  v3 = sub_2CD1D0();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_2CE000();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_11F61C, 0, 0);
}

uint64_t sub_11F61C()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = sub_3ED0(v2, static Logger.default);
  *(v0 + 160) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 168) = v5;
  *(v0 + 176) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2CDFE0();
  v7 = sub_2CE660();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PlayMediaViewProvider#suggestionView Creating suggestions view.", v8, 2u);
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);

  v12 = *(v11 + 8);
  *(v0 + 184) = v12;
  v12(v9, v10);
  sub_2CE270();
  sub_2CD1C0();
  sub_2CD1B0();
  *(v0 + 192) = sub_2CD1A0();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v13 = sub_90968(_swiftEmptyArrayStorage);
  *(v0 + 200) = v13;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_11FA38;
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)(v15, v16, 0, 0, v0 + 16, v13, 0, 0);
}

uint64_t sub_11FA38()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  sub_30B8(v2 + 16, &unk_3519D0, &unk_2D49E0);

  if (v0)
  {
    v3 = sub_11FD40;
  }

  else
  {
    v3 = sub_11FBAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_11FBAC()
{
  v1 = *(v0 + 96);
  v2 = sub_2CD160();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  if (v4 == 1)
  {
    (*(v6 + 8))(*(v0 + 120), *(v0 + 104));
    sub_30B8(v1, &qword_3519C8, &qword_2D49D0);
    v8 = 0;
  }

  else
  {
    v8 = sub_2CD150();
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v1, v2);
  }

  **(v0 + 80) = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_11FD40()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
  swift_errorRetain();
  v1 = sub_2CDFE0();
  v2 = sub_2CE680();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "PlayMediaViewProvider#suggestionView Error SiriSuggestions view: %@", v3, 0xCu);
    sub_30B8(v4, &unk_34FC00, &unk_2D0150);
  }

  else
  {
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 128));
  **(v0 + 80) = 0;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_11FF18(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), unint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v44 = a1;
  v45 = a2;
  v8 = sub_20410(&qword_3519E8, &qword_2D49F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = sub_1D2364(&off_330390);
  sub_F1954(&unk_3303B0);
  if ((v21 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a3, &off_3303C0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v15, v22, v11);
    v23 = sub_2CDFE0();
    v24 = sub_2CE690();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "PlayMediaViewProvider won't build alternatives for story telling.", v25, 2u);
    }

    (*(v12 + 8))(v15, v11);
LABEL_8:
    v26 = sub_20410(&qword_3519F0, &qword_2D49F8);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v44(v10);
    return sub_30B8(v10, &qword_3519E8, &qword_2D49F0);
  }

  v28 = [a3 hashedRouteUIDs];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2CE410();

    v31 = *(v30 + 16);

    if (v31)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v32 = sub_3ED0(v11, static Logger.default);
      swift_beginAccess();
      (*(v12 + 16))(v18, v32, v11);
      v33 = sub_2CDFE0();
      v34 = sub_2CE690();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "PlayMediaViewProvider won't build alternatives for whole house audio requests. hashedRouteUIDs present.", v35, 2u);
      }

      (*(v12 + 8))(v18, v11);
      goto LABEL_8;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v20, v36, v11);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "PlayMediaViewProvider building alternative section...", v39, 2u);
  }

  (*(v12 + 8))(v20, v11);
  sub_35E0((a4 + 144), *(a4 + 168));
  v40 = swift_allocObject();
  *(v40 + 16) = v44;
  *(v40 + 24) = v45;

  sub_2ABBA8(v42, v43, a3, sub_13D8C, v40);
}

uint64_t sub_1204B8()
{
  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  sub_306C((v0 + 144));
  sub_306C((v0 + 184));

  return sub_306C((v0 + 232));
}

uint64_t sub_1204FC()
{

  sub_306C((v0 + 24));

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  sub_306C((v0 + 144));
  sub_306C((v0 + 184));

  sub_306C((v0 + 232));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayMediaViewProvider(uint64_t a1)
{
  result = qword_351770;
  if (!qword_351770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_120630()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  if (sub_2CB460())
  {

    sub_2CB130();

    v23 = sub_2CD3F0();

    sub_2CB130();

    v7 = sub_2CD3B0();
  }

  else
  {
    v7 = 0;
    v23 = 0;
  }

  v22 = v7;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v1;
    *v12 = 67109120;
    *(v12 + 4) = v23 & 1;
    _os_log_impl(&dword_0, v10, v11, "PlayMediaViewProvider#doesSnippetNeedUISessionID isSystemApertureEnabled: %{BOOL}d", v12, 8u);
    v1 = v21;
  }

  v13 = *(v1 + 8);
  v13(v6, v0);
  v9(v4, v8, v0);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v22;
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v17 & 1;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaViewProvider#doesSnippetNeedUISessionID isInAmbient: %{BOOL}d", v18, 8u);
  }

  v13(v4, v0);
  return (v23 | v17) & 1;
}

uint64_t sub_120964(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v189 = a5;
  v194 = a4;
  v195 = a3;
  v11 = sub_2CDFD0();
  v191 = *(v11 - 8);
  v192 = v11;
  v12 = __chkstk_darwin(v11);
  v186 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v13;
  __chkstk_darwin(v12);
  v190 = &v178 - v14;
  v184 = sub_2C8E80();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v200 = v16;
  v201 = v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v187 = &v178 - v22;
  v23 = __chkstk_darwin(v21);
  v193 = &v178 - v24;
  v25 = __chkstk_darwin(v23);
  v188 = &v178 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v178 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v178 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v178 - v34;
  __chkstk_darwin(v33);
  v37 = &v178 - v36;
  v38 = swift_allocObject();
  v197 = a6;
  *(v38 + 16) = a6;
  *(v38 + 24) = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_121F80;
  *(v39 + 24) = v38;
  v198 = v39;
  v196 = a7;
  v40 = a2;

  v199 = v38;

  if (sub_2CE860())
  {
    sub_2CCF90();
    if (v41)
    {
      v42 = sub_2CBDB0();

      if (v42)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v43 = v200;
        v44 = sub_3ED0(v200, static Logger.default);
        swift_beginAccess();
        (*(v201 + 16))(v37, v44, v43);
        v45 = sub_2CDFE0();
        v46 = sub_2CE670();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_0, v45, v46, "PlayMediaViewProvider#makeViews fallbackImplicitRecommendation scenario, override bundleIdentifier with fallback", v47, 2u);
        }

        v48 = v37;
        v49 = v200;
        (*(v201 + 8))(v48, v200);
        v50 = sub_2CBE10();
        v52 = v51;
LABEL_11:
        if (!sub_2CE810())
        {

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v63 = sub_3ED0(v49, static Logger.default);
          swift_beginAccess();
          v64 = v201;
          (*(v201 + 16))(v35, v63, v49);
          v65 = sub_2CDFE0();
          v66 = sub_2CE670();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_0, v65, v66, "PlayMediaViewProvider#makeViews won't return an AceView because no view actions on next/later destinations (or create radio)", v67, 2u);
          }

          (*(v64 + 8))(v35, v49);
          goto LABEL_81;
        }

        v55 = [a1 mediaItems];
        if (v55)
        {
          v56 = v55;
          sub_334A0(0, &qword_356F50, INMediaItem_ptr);
          v57 = sub_2CE410();

          if (v57 >> 62)
          {
            if (sub_2CEDA0())
            {
              goto LABEL_15;
            }
          }

          else if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_15:
            if ([v195 code] != &dword_4 && objc_msgSend(v195, "code") != &dword_0 + 1)
            {

              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v82 = sub_3ED0(v49, static Logger.default);
              swift_beginAccess();
              v83 = v201;
              v84 = v187;
              (*(v201 + 16))(v187, v82, v49);
              v85 = v49;
              v86 = v195;
              v87 = sub_2CDFE0();
              v88 = sub_2CE660();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                v205 = v90;
                *v89 = 136446210;
                v204 = [v86 code];
                v91 = sub_2CEE70();
                v93 = sub_3F08(v91, v92, &v205);

                *(v89 + 4) = v93;
                _os_log_impl(&dword_0, v87, v88, "PlayMediaViewProvider#makeViews won't return an AceView because non-success code: %{public}s", v89, 0xCu);
                sub_306C(v90);
              }

              (*(v83 + 8))(v84, v85);
              goto LABEL_81;
            }

            if (sub_2CB640())
            {

              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v58 = sub_3ED0(v49, static Logger.default);
              swift_beginAccess();
              v59 = v201;
              (*(v201 + 16))(v29, v58, v49);
              v60 = sub_2CDFE0();
              v61 = sub_2CE660();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                *v62 = 0;
                _os_log_impl(&dword_0, v60, v61, "PlayMediaViewProvider#makeViews won't return an AceView for CarPlay", v62, 2u);
              }

              (*(v59 + 8))(v29, v49);
LABEL_81:
              v205 = _swiftEmptyArrayStorage;
              v206 = 0;
              v197(&v205);
            }

            v187 = v57;
            v76 = sub_2CCF90();
            v78 = v77;
            v79 = sub_2CBE10();
            if (v78)
            {
              v81 = v193;
              if (v76 == v79 && v78 == v80)
              {

LABEL_46:

                goto LABEL_47;
              }

              v94 = sub_2CEEA0();

              if (v94)
              {
LABEL_47:
                v96 = sub_2CE830();
                v97 = v194;
                if ((v96 ^ v194))
                {
LABEL_48:
                  v98 = [objc_allocWithZone(SFMediaRemoteControlCardSection) init];
                  v99 = v182;
                  sub_2C8E70();
                  sub_2C8E50();
                  (*(v183 + 8))(v99, v184);
                  v100 = sub_2CE260();

                  [v98 setCardSectionId:v100];

                  sub_2CCF90();
                  if (v101)
                  {
                    v102 = sub_2CE260();
                  }

                  else
                  {
                    v102 = 0;
                  }

                  [v98 setPlaybackBundleIdentifier:v102];

                  v119 = [a1 hashedRouteUIDs];
                  v120 = v201;
                  v181 = a1;
                  v180 = v52;
                  v179 = v50;
                  if (v119)
                  {
                    v121 = v119;
                    v122 = sub_2CE410();

                    if (v122[2])
                    {
                      v124 = v122[4];
                      v123 = v122[5];

                      if (qword_34BF58 != -1)
                      {
                        swift_once();
                      }

                      v125 = sub_3ED0(v49, static Logger.default);
                      swift_beginAccess();
                      (*(v120 + 16))(v81, v125, v49);

                      v126 = sub_2CDFE0();
                      v127 = sub_2CE660();

                      if (os_log_type_enabled(v126, v127))
                      {
                        v128 = swift_slowAlloc();
                        v129 = v49;
                        v130 = swift_slowAlloc();
                        v205 = v130;
                        *v128 = 136315138;
                        *(v128 + 4) = sub_3F08(v124, v123, &v205);
                        _os_log_impl(&dword_0, v126, v127, "PlayMediaViewProvider#makeViews rendering snippet with route: %s", v128, 0xCu);
                        sub_306C(v130);

                        v131 = v129;
                        a1 = v181;
                        (*(v120 + 8))(v193, v131);
                      }

                      else
                      {

                        (*(v120 + 8))(v81, v49);
                      }

                      v132 = sub_2CE260();

                      [v98 setPlaybackRouteUniqueIdentifier:v132];

                      [v98 setPlaybackRouteUniqueIdentifierIsEncrypted:1];
                    }

                    else
                    {
                    }
                  }

                  v133 = swift_allocObject();
                  sub_20410(&unk_351900, &unk_2D0960);
                  v134 = swift_allocObject();
                  *(v134 + 16) = xmmword_2D0770;
                  *(v134 + 32) = v98;
                  v201 = v133;
                  *(v133 + 16) = v134;
                  v135 = qword_34BF98;
                  v136 = v98;
                  if (v135 != -1)
                  {
                    swift_once();
                  }

                  v137 = qword_35F760;
                  v138 = v190;
                  sub_2CDFB0();
                  v139 = sub_2CE9E0();
                  sub_2CDF90(v139, &dword_0, v137, "playMediaAceViewProviderMakeAlternativesBroadcastViews", 54, 2, v138, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
                  sub_120630();
                  v140 = swift_allocObject();
                  *(v140 + 16) = 0u;
                  *(v140 + 32) = 0u;
                  *(v140 + 48) = 0u;
                  *(v140 + 64) = 0;
                  if (qword_34BF90 != -1)
                  {
                    swift_once();
                  }

                  v200 = qword_351740;
                  sub_20410(&qword_34F2A8, &qword_2D4990);
                  v141 = swift_allocObject();
                  *(v141 + 16) = xmmword_2D1010;
                  v142 = swift_allocObject();
                  v143 = v189;
                  v142[2] = v189;
                  v142[3] = v40;
                  v144 = v143;
                  v142[4] = v187;
                  v142[5] = a1;
                  v142[6] = v140;
                  *(v141 + 32) = sub_121FC4;
                  *(v141 + 40) = v142;
                  v145 = swift_allocObject();
                  v145[2] = v144;
                  v145[3] = v40;
                  v145[4] = a1;
                  v145[5] = v140;
                  v145[6] = v136;
                  *(v141 + 48) = sub_121FDC;
                  *(v141 + 56) = v145;
                  v146 = swift_allocObject();
                  *(v146 + 16) = v144;
                  *(v146 + 24) = v140;
                  *(v141 + 64) = sub_12200C;
                  *(v141 + 72) = v146;
                  v147 = swift_allocObject();
                  v147[2] = v144;
                  v147[3] = a1;
                  v147[4] = v140;
                  *(v141 + 80) = sub_122014;
                  *(v141 + 88) = v147;
                  v196 = v40;
                  v148 = v191;
                  v149 = *(v191 + 16);
                  v193 = v140;
                  v150 = v186;
                  v149(v186, v138, v192);
                  v151 = (*(v148 + 80) + 40) & ~*(v148 + 80);
                  v152 = (v185 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v153 = (v152 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v154 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v188 = ((v154 + 15) & 0xFFFFFFFFFFFFFFF8);
                  v155 = (v154 + 39) & 0xFFFFFFFFFFFFFFF8;
                  v156 = swift_allocObject();
                  v197 = v136;
                  v157 = v156;
                  v158 = v201;
                  v156[2] = v140;
                  v156[3] = v158;
                  v156[4] = v189;
                  v159 = v150;
                  v160 = v192;
                  (*(v148 + 32))(v156 + v151, v159, v192);
                  v161 = (v157 + v152);
                  v162 = v180;
                  *v161 = v179;
                  v161[1] = v162;
                  *(v157 + v153) = v196;
                  v163 = v181;
                  *(v157 + v154) = v181;
                  v164 = &v188[v157];
                  v165 = v198;
                  *v164 = sub_333BC;
                  *(v164 + 1) = v165;
                  v164[16] = v194 & 1;
                  v166 = v195;
                  *(v157 + v155) = v195;
                  swift_retain_n();
                  swift_retain_n();
                  v167 = v163;
                  swift_retain_n();
                  v168 = v167;
                  v169 = v197;
                  v170 = v168;

                  v171 = v166;
                  sub_2CCC70();

                  (*(v191 + 8))(v190, v160);
                }

                v103 = v96;

                v104 = v97 & 1;
                v105 = v103 & 1;
LABEL_51:

                v106 = v201;
                if (qword_34BF58 != -1)
                {
                  swift_once();
                }

                v107 = v200;
                v108 = sub_3ED0(v200, static Logger.default);
                swift_beginAccess();
                v109 = v188;
                (*(v106 + 16))(v188, v108, v107);
                v110 = sub_2CDFE0();
                v111 = sub_2CE660();
                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  v113 = swift_slowAlloc();
                  v205 = v113;
                  *v112 = 136446722;
                  v114 = sub_2CCC90();
                  v116 = v104;
                  v117 = sub_3F08(v114, v115, &v205);

                  *(v112 + 4) = v117;
                  *(v112 + 12) = 1026;
                  *(v112 + 14) = v116;
                  *(v112 + 18) = 1026;
                  *(v112 + 20) = v105;
                  _os_log_impl(&dword_0, v110, v111, "PlayMediaViewProvider#makeViews %{public}s suppressing view: interstitial?:%{BOOL,public}d renderInHandle: %{BOOL,public}d", v112, 0x18u);
                  sub_306C(v113);

                  (*(v106 + 8))(v188, v107);
                }

                else
                {

                  (*(v106 + 8))(v109, v107);
                }

                goto LABEL_81;
              }
            }

            else
            {

              v81 = v193;
            }

            if (v50 == sub_2CBE30() && v52 == v95)
            {
              goto LABEL_46;
            }

            v118 = sub_2CEEA0();

            if ((v118 & 1) == 0)
            {
              if (v194)
              {
                goto LABEL_48;
              }

              v105 = 0;
              v104 = 0;
              goto LABEL_51;
            }

            goto LABEL_47;
          }
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v172 = sub_3ED0(v49, static Logger.default);
        swift_beginAccess();
        v173 = v201;
        (*(v201 + 16))(v32, v172, v49);
        v174 = sub_2CDFE0();
        v175 = sub_2CE680();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&dword_0, v174, v175, "PlayMediaViewProvider#makeViews won't return an AceView because nil or empty mediaItems", v176, 2u);
        }

        (*(v173 + 8))(v32, v49);
        goto LABEL_81;
      }
    }
  }

  v53 = sub_2CCF90();
  if (v54)
  {
    v50 = v53;
    v52 = v54;
    v49 = v200;
    goto LABEL_11;
  }

  v68 = v200;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v69 = sub_3ED0(v68, static Logger.default);
  swift_beginAccess();
  v70 = v201;
  (*(v201 + 16))(v20, v69, v68);
  v71 = sub_2CDFE0();
  v72 = sub_2CE680();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "PlayMediaViewProvider#makeViews missing app bundle identifier", v73, 2u);
  }

  (*(v70 + 8))(v20, v68);
  sub_10C40();
  v74 = swift_allocError();
  *v75 = 0xD00000000000001DLL;
  v75[1] = 0x80000000002DD6F0;
  v202 = v74;
  v203 = 1;
  v197(&v202);
}

uint64_t sub_121F80(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

void sub_122020()
{
  v1 = *(sub_2CDFD0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_11D224(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1220F8(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, uint64_t a5, void *a6)
{
  v112 = a6;
  v113 = a3;
  v114 = a4;
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v8 - 8);
  v10 = &v105 - v9;
  v11 = sub_2C8E80();
  v12 = *(v11 - 8);
  v110 = v11;
  *&v111 = v12;
  __chkstk_darwin(v11);
  v109 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v105 - v20;
  __chkstk_darwin(v19);
  v23 = &v105 - v22;
  v24 = [a2 mediaItems];
  if (!v24)
  {
    goto LABEL_57;
  }

  v25 = v24;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v26 = sub_2CE410();

  if (v26 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_4;
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_56;
  }

LABEL_4:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_66;
    }

    v27 = *(v26 + 32);
  }

  v28 = v27;

  v29 = [v28 privateMediaItemValueData];

  if (v29)
  {
    v108 = v29;
    v30 = sub_2CCF90();
    v32 = v31;
    v33 = sub_2CBE10();
    if (v32)
    {
      if (v30 == v33 && v32 == v34)
      {

        v35 = 0;
      }

      else
      {
        v36 = sub_2CEEA0();

        v35 = v36 ^ 1;
      }
    }

    else
    {

      v35 = 1;
    }

    v26 = v108;
    v37 = [v108 provider];
    if (!v37)
    {
      goto LABEL_47;
    }

    v38 = v37;
    v39 = sub_2CE270();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    v43 = (v41 & 0x2000000000000000) == 0;
    v26 = v108;
    if (v43)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v35 & 1 | (v42 == 0))
    {
      goto LABEL_47;
    }

    v44 = [v108 bundleId];
    if (v44)
    {
      v45 = v44;
      v46 = sub_2CE270();
      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        v49 = [v26 providerAppName];
        if (v49)
        {
          v50 = v49;
          v51 = sub_2CE270();
          v53 = HIBYTE(v52) & 0xF;
          if ((v52 & 0x2000000000000000) == 0)
          {
            v53 = v51 & 0xFFFFFFFFFFFFLL;
          }

          if (v53)
          {
            v107 = v51;
            v54 = v26;
            v55 = [objc_allocWithZone(SAUIAppPunchOut) init];
            [v55 setBundleId:v45];

            [v55 setAppDisplayName:v50];
            [v55 setAppAvailableInStorefront:1];
            v56 = v55;
            v57 = v109;
            sub_2C8E70();
            sub_2C8E50();
            v58 = *(v111 + 8);
            *&v111 = v111 + 8;
            v106 = v58;
            v58(v57, v110);
            v59 = sub_2CE260();

            [v56 setAceId:v59];

            v60 = [v54 universalResourceLink];
            if (v60)
            {
              v61 = v60;
              v62 = sub_2CE270();
              v64 = v63;

              v65 = HIBYTE(v64) & 0xF;
              if ((v64 & 0x2000000000000000) == 0)
              {
                v65 = v62 & 0xFFFFFFFFFFFFLL;
              }

              if (v65)
              {
                v66 = [v108 universalResourceLink];
                if (!v66)
                {

                  __break(1u);
                  return;
                }

                v67 = v66;

                sub_2CE270();

                sub_2C8D80();

                v68 = sub_2C8D90();
                v69 = *(v68 - 8);
                v71 = 0;
                if ((*(v69 + 48))(v10, 1, v68) != 1)
                {
                  sub_2C8D50(v70);
                  v71 = v72;
                  (*(v69 + 8))(v10, v68);
                }

                [v56 setPunchOutUri:v71];

                goto LABEL_52;
              }
            }

LABEL_52:
            v83 = v56;
            v84 = sub_2C9C60();

            v85 = [objc_allocWithZone(SFAttributionFooterCardSection) init];
            v86 = sub_2C9C50();

            [v85 setTrailingAttribution:v86];

            v87 = v85;
            v88 = v109;
            sub_2C8E70();
            sub_2C8E50();
            v106(v88, v110);
            v89 = sub_2CE260();

            [v87 setCardSectionId:v89];

            sub_20410(&unk_351900, &unk_2D0960);
            v90 = swift_allocObject();
            v111 = xmmword_2D0770;
            *(v90 + 16) = xmmword_2D0770;
            *(v90 + 32) = v84;
            sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
            v91 = v84;
            isa = sub_2CE400().super.isa;

            [v87 setCommands:isa];

            v93 = swift_allocObject();
            *(v93 + 16) = v111;
            *(v93 + 32) = v83;
            swift_beginAccess();
            v94 = *(a5 + 32);
            *(a5 + 32) = v87;
            *(a5 + 40) = v93;
            v95 = v87;
            v96 = v83;
            v97 = v95;

            v98 = swift_beginAccess();
            if (*(a5 + 32))
            {
              v98 = [v112 setSeparatorStyle:1];
            }

            v113(v98);

            return;
          }
        }

        else
        {
          v50 = v45;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v77 = sub_3ED0(v14, static Logger.default);
        swift_beginAccess();
        (*(v15 + 16))(v18, v77, v14);
        v78 = sub_2CDFE0();
        v79 = sub_2CE670();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_0, v78, v79, "PlayMediaViewProvider won't build broadcast radio card section because providerAppName is empty.", v80, 2u);
          v26 = v108;
        }

        (*(v15 + 8))(v18, v14);
LABEL_47:
        swift_beginAccess();
        v81 = *(a5 + 32);
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;

        v82 = swift_beginAccess();
        if (*(a5 + 32))
        {
          v82 = [v112 setSeparatorStyle:1];
        }

        v113(v82);

        return;
      }
    }

    if (qword_34BF58 == -1)
    {
LABEL_37:
      v73 = sub_3ED0(v14, static Logger.default);
      swift_beginAccess();
      (*(v15 + 16))(v21, v73, v14);
      v74 = sub_2CDFE0();
      v75 = sub_2CE670();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v74, v75, "PlayMediaViewProvider won't build broadcast radio card section because bundleId is empty.", v76, 2u);
        v26 = v108;
      }

      (*(v15 + 8))(v21, v14);
      goto LABEL_47;
    }

LABEL_66:
    swift_once();
    goto LABEL_37;
  }

LABEL_57:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v99 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v23, v99, v14);
  v100 = sub_2CDFE0();
  v101 = sub_2CE670();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_0, v100, v101, "PlayMediaViewProvider won't build broadcast radio card section - no privateMediaItemValueData present", v102, 2u);
  }

  (*(v15 + 8))(v23, v14);
  swift_beginAccess();
  v103 = *(a5 + 32);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;

  v104 = swift_beginAccess();
  if (*(a5 + 32))
  {
    v104 = [v112 setSeparatorStyle:1];
  }

  v113(v104);
}

uint64_t sub_122DB0(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v14, v17, v10);
    swift_errorRetain();
    v18 = sub_2CDFE0();
    v19 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v39 = a3;
      v23 = v22;
      v41 = a1;
      v42[0] = v22;
      *v21 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v24 = sub_2CE2A0();
      v26 = sub_3F08(v24, v25, v42);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v18, v19, "PlayMediaViewProvider#makeSuggestionView error while creating suggestionView: %{public}s", v21, 0xCu);
      sub_306C(v23);
      a3 = v39;
    }

    (*(v11 + 8))(v14, v10);
    swift_beginAccess();
    v27 = *(a5 + 48);
    *(a5 + 48) = 0;
  }

  else
  {
    v40 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v16, v28, v10);
    v29 = a1;
    v30 = sub_2CDFE0();
    v31 = sub_2CE680();
    sub_A41AC(a1, 0);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = a3;
      v33 = v32;
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v29;
      *v34 = a1;
      v35 = v29;
      _os_log_impl(&dword_0, v30, v31, "PlayMediaViewProvider#makeSuggestionView created snippet: %@", v33, 0xCu);
      sub_30B8(v34, &unk_34FC00, &unk_2D0150);

      a3 = v39;
    }

    (*(v11 + 8))(v16, v10);
    swift_beginAccess();
    v27 = *(a5 + 48);
    *(a5 + 48) = a1;
    v36 = v29;
  }

  return a3();
}

uint64_t sub_1231F4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_350500, &unk_2D3B50);
  __chkstk_darwin(v6 - 8);
  v48 = &v46 - v7;
  v8 = sub_2C8E80();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v46 = v10;
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v46 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = swift_allocObject();
  v53 = a1;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_124488;
  *(v19 + 24) = v18;
  v56 = v19;
  v20 = qword_34BF58;
  v54 = a2;

  v55 = a3;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v22 = *(v13 + 16);
  v22(v17, v21, v12);
  v23 = sub_2CDFE0();
  v24 = sub_2CE660();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "PlayMediaViewProvider#suggestionView...", v25, 2u);
  }

  v26 = *(v13 + 8);
  v26(v17, v12);
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD390();
    v28 = v27;

    if (v28)
    {
      v29 = v48;
      sub_2C8E40();

      v31 = v50;
      v30 = v51;
      if ((*(v50 + 48))(v29, 1, v51) != 1)
      {
        v39 = *(v31 + 32);
        v40 = v49;
        v39(v49, v29, v30);
        v41 = swift_allocObject();
        v42 = v56;
        *(v41 + 16) = sub_124494;
        *(v41 + 24) = v42;
        v43 = v47;
        (*(v31 + 16))(v47, v40, v30);
        v44 = (*(v31 + 80) + 16) & ~*(v31 + 80);
        v45 = swift_allocObject();
        v39((v45 + v44), v43, v30);

        sub_20410(&qword_3519C0, &qword_2D49C8);
        sub_2CE4F0();

        (*(v31 + 8))(v49, v30);
      }

      sub_30B8(v29, &qword_350500, &unk_2D3B50);
    }
  }

  v32 = v52;
  v22(v52, v21, v12);
  v33 = sub_2CDFE0();
  v34 = sub_2CE660();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "PlayMediaViewProvider#makeSuggestionsView No active requestId. Not creating suggestions view.", v35, 2u);
  }

  v26(v32, v12);
  v36 = v54;

  v37 = v55;

  sub_122DB0(0, 0, v53, v36, v37);
}

uint64_t sub_123808(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_34BF58;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);
  v12 = sub_2CDFE0();
  v13 = sub_2CE660();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "PlayMediaViewProvider#makeSuggestionView...", v14, 2u);
  }

  (*(v7 + 8))(v9, v6);

  sub_1231F4(a1, a2, a3);
}

void sub_123A10(uint64_t a1, void *a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v81 - v9;
  __chkstk_darwin(v8);
  v12 = &v81 - v11;
  v13 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v13 - 8);
  v84 = &v81 - v14;
  v15 = sub_2C8E80();
  v85 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 mediaItems];
  if (!v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v20 = sub_2CE410();

  if (!(v20 >> 62))
  {
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_54;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 privateMediaItemValueData];

  if (!v23)
  {
LABEL_55:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v77 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v7, v77, v3);
    v78 = sub_2CDFE0();
    v79 = sub_2CE670();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "PlayMediaViewProvider#makeBroadcastRadioButton no privateMediaItemValueData present", v80, 2u);
    }

    (*(v4 + 8))(v7, v3);
    return;
  }

  v24 = sub_2CCF90();
  v26 = v25;
  v27 = sub_2CBE10();
  if (v26)
  {
    if (v24 == v27 && v26 == v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_2CEEA0();
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = [v23 provider];
  if (!v30)
  {
    goto LABEL_36;
  }

  v83 = v23;
  v31 = v30;
  v32 = sub_2CE270();
  v34 = v33;

  if ((v29 & 1) == 0)
  {

    return;
  }

  v35 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v34) & 0xF;
  }

  v23 = v83;
  if (!v35)
  {
LABEL_36:

    return;
  }

  v36 = [v83 bundleId];
  if (!v36)
  {
LABEL_39:
    if (qword_34BF58 == -1)
    {
LABEL_40:
      v64 = sub_3ED0(v3, static Logger.default);
      swift_beginAccess();
      (*(v4 + 16))(v10, v64, v3);
      v65 = sub_2CDFE0();
      v66 = sub_2CE670();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "PlayMediaViewProvider#makeBroadcastRadioButton bundleId is empty.", v67, 2u);
      }

      (*(v4 + 8))(v10, v3);
      return;
    }

LABEL_62:
    swift_once();
    goto LABEL_40;
  }

  v37 = v36;
  v38 = sub_2CE270();
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    goto LABEL_39;
  }

  v41 = [v23 providerAppName];
  if (!v41)
  {
    v42 = v37;
LABEL_45:

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v68 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v12, v68, v3);
    v69 = sub_2CDFE0();
    v70 = sub_2CE670();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "PlayMediaViewProvider#makeBroadcastRadioButton providerAppName is empty.", v71, 2u);
    }

    (*(v4 + 8))(v12, v3);
    return;
  }

  v42 = v41;
  v43 = sub_2CE270();
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

    goto LABEL_45;
  }

  v46 = v23;
  v47 = [objc_allocWithZone(SAUIAppPunchOut) init];
  [v47 setBundleId:v37];

  v82 = v42;
  [v47 setAppDisplayName:v42];
  [v47 setAppAvailableInStorefront:1];
  v48 = v47;
  sub_2C8E70();
  sub_2C8E50();
  (*(v85 + 8))(v17, v15);
  v49 = sub_2CE260();

  [v48 setAceId:v49];

  v50 = [v46 universalResourceLink];
  if (!v50)
  {
LABEL_51:

LABEL_52:
    v72 = [objc_allocWithZone(SAUIButton) init];
    sub_20410(&unk_351900, &unk_2D0960);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_2D0770;
    *(v73 + 32) = v48;
    v74 = v48;
    sub_20410(&unk_351990, &unk_2D49A8);
    isa = sub_2CE400().super.isa;

    [v72 setCommands:isa];

    v76 = v82;
    [v72 setText:v82];

    return;
  }

  v51 = v50;
  v52 = sub_2CE270();
  v54 = v53;

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    goto LABEL_51;
  }

  v56 = [v83 universalResourceLink];
  if (v56)
  {
    v57 = v56;

    sub_2CE270();

    v58 = v84;
    sub_2C8D80();

    v59 = sub_2C8D90();
    v60 = *(v59 - 8);
    v62 = 0;
    if ((*(v60 + 48))(v58, 1, v59) != 1)
    {
      sub_2C8D50(v61);
      v62 = v63;
      (*(v60 + 8))(v58, v59);
    }

    [v48 setPunchOutUri:v62];

    goto LABEL_52;
  }

  __break(1u);
}

unint64_t sub_124424()
{
  result = qword_34CCA8;
  if (!qword_34CCA8)
  {
    sub_2CB850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CCA8);
  }

  return result;
}

uint64_t sub_1244D4(uint64_t a1)
{
  v4 = *(sub_2C8E80() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_11F4BC(a1, v1 + v5);
}

uint64_t sub_1245B0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_124608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB730;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000015;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_124C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD900;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_125310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD8D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002FLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002FLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002FLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_125994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD8A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002ELL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_126018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_12669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_126D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1273A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD870;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000025, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000025;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_127A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD840;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1280AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_128730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_128DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD820;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000017;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_129438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_129ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13D84;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}