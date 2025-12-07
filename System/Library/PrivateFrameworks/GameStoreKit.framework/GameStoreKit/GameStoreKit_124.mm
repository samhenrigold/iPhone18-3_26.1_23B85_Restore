uint64_t ProxyImpressionsTracker.__allocating_init(proxy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProxyImpressionsTracker.init(proxy:)(a1);
  return v2;
}

uint64_t ProxyImpressionsTracker.init(proxy:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  return v1;
}

double ProxyImpressionsTracker.proxy.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

id ProxyImpressionsTracker.switchProxy(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  [v3 lock];
  sub_24F2A8EF4(v1, a1);

  return [v3 unlock];
}

void sub_24F2A8EF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

id sub_24F2A8F8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A9038(v3, a1, a2, a3, &v9);

  return [v7 unlock];
}

void sub_24F2A9038(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, BOOL *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  v11 = a1[2];
  if (v11)
  {
    v12 = *(v10 + 80);
    v13 = *(v10 + 88);
    swift_unknownObjectRetain();
    a4(a2, a3, v12, v13);
    swift_unknownObjectRelease();
  }

  *a5 = v11 == 0;
}

uint64_t sub_24F2A913C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A91E0(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

void sub_24F2A91E0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (a1[2])
  {
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    swift_unknownObjectRetain();
    v13 = a4(a2, a3, v11, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a5 = v13;
}

Swift::Void __swiftcall ProxyImpressionsTracker.removeAllImpressions()()
{
  v1 = v0[3];
  [v1 lock];
  sub_24F2A9348(v0, &v2);

  [v1 unlock];
}

void sub_24F2A9348(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  if (v4)
  {
    swift_unknownObjectRetain();
    sub_24F9296B8();
    swift_unknownObjectRelease();
  }

  *a2 = v4 == 0;
}

uint64_t sub_24F2A93F4()
{
  sub_24F2A98E4();
  sub_24F92ABA8();
  swift_getWitnessTable();
  return v1;
}

uint64_t sub_24F2A94AC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v3 = swift_allocObject();
  v4 = swift_unknownObjectRetain();
  result = ProxyImpressionsTracker.init(proxy:)(v4);
  *a2 = v3;
  return result;
}

uint64_t ProxyImpressionsTracker.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ProxyImpressionsTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ProxyImpressionsTracker<>.consumeFastImpressions(in:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  [v7 lock];
  sub_24F2A96FC(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

uint64_t sub_24F2A96FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (a1[2])
  {
    result = (*(a4 + 8))(a2, a3, *(v10 + 80), a4);
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  *a5 = result;
  return result;
}

uint64_t sub_24F2A97D0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24F2A98E4()
{
  result = qword_27F23DD48;
  if (!qword_27F23DD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F23DD48);
  }

  return result;
}

uint64_t sub_24F2A9944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F2A9A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FinishChallengeCreationIntent(uint64_t a1)
{
  result = qword_27F23DD50;
  if (!qword_27F23DD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2A9B10(uint64_t a1)
{
  sub_24F2A9BA4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F2A9BA4(uint64_t a1)
{
  if (!qword_27F21FB48)
  {
    type metadata accessor for GameActivityDraftGameInfo(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21FB48);
    }
  }
}

unint64_t sub_24F2A9BFC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 16) = xmmword_24F942000;
  *(inited + 40) = 0xEB00000000444965;
  v3 = MEMORY[0x277D837D0];
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x656D614E656D6167;
  *(inited + 96) = 0xE800000000000000;
  v7 = v1[2];
  v8 = v1[3];
  *(inited + 128) = v3;
  *(inited + 136) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x800000024FA72010;
  LOBYTE(v7) = *(v1 + 32);
  v9 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v9;
  *(inited + 160) = v7;
  strcpy((inited + 200), "dismissalStyle");
  *(inited + 215) = -18;
  v10 = type metadata accessor for FinishChallengeCreationIntent(0);
  v11 = (v1 + *(v10 + 32));
  v12 = *v11;
  v13 = v11[1];
  *(inited + 240) = v3;
  *(inited + 248) = v6;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 256) = 0x6F666E49656D6167;
  *(inited + 264) = 0xE800000000000000;
  v14 = *(v10 + 28);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  *(inited + 304) = sub_24F2A9E68();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E8F2274(v1 + v14, boxed_opaque_existential_1);

  v16 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v17 = sub_24E80FFAC(v16);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24F2A9E68()
{
  result = qword_27F23DD60;
  if (!qword_27F23DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F212B28, &qword_24F939910);
    sub_24F2A9EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD60);
  }

  return result;
}

unint64_t sub_24F2A9EEC()
{
  result = qword_27F22E350;
  if (!qword_27F22E350)
  {
    type metadata accessor for GameActivityDraftGameInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E350);
  }

  return result;
}

double AppStoreDeepLink.init(userActivity:refApp:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v80 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = sub_24F91F4A8();
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = type metadata accessor for AppStoreDeepLink(0);
  v79 = *(v21 - 8);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v25 = [a1 activityType];
  v26 = sub_24F92B0D8();
  v28 = v27;

  if (sub_24F92B0D8() == v26 && v29 == v28)
  {
  }

  else
  {
    v30 = sub_24F92CE08();

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = [v83 webpageURL];
  if (v31)
  {
    v32 = v31;
    sub_24F91F428();

    v33 = v78;
    (*(v78 + 32))(v20, v17, v13);
    v76 = *(v33 + 16);
    (v76)(v24, v20, v13);
    v34 = sub_24F91F398();
    v35 = &v24[*(v21 + 20)];
    *v35 = v34;
    v35[1] = v36;
    v37 = v82;
    if (!v82)
    {
      v38 = [v83 _sourceApplication];
      if (v38)
      {
        v39 = v38;
        v81 = sub_24F92B0D8();
        v37 = v40;
      }

      else
      {
        v81 = 0;
        v37 = 0;
      }
    }

    v44 = &v24[*(v21 + 24)];
    *v44 = v81;
    v44[1] = v37;

    v45 = [v83 referrerURL];
    v82 = v37;
    v74 = v20;
    if (v45)
    {
      v46 = v45;
      sub_24F91F428();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v76;
    v76 = v21;
    v49 = *(v33 + 56);
    v49(v9, v47, 1, v13);
    sub_24E911D90(v9, v12);
    if ((*(v33 + 48))(v12, 1, v13))
    {
      sub_24E70E058(v12);
      v50 = 0;
      v51 = v48;
      v52 = 0;
    }

    else
    {
      v53 = v75;
      v48(v75, v12, v13);
      sub_24E70E058(v12);
      v51 = v48;
      v50 = sub_24F91F398();
      v52 = v54;
      (*(v33 + 8))(v53, v13);
    }

    v55 = &v24[*(v76 + 28)];
    v75 = v50;
    *v55 = v50;
    v55[1] = v52;
    v56 = v77;
    v51(v77, v24, v13);
    v49(v56, 0, 1, v13);

    v57 = v83;
    v58 = [v83 _originatingProcess];
    v59 = [v57 _sourceApplication];
    if (v59)
    {
      v60 = v59;
      v61 = sub_24F92B0D8();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = v77;
    v65 = v81;
    v66 = v82;
    sub_24EDC3D6C(v77, v58, v61, v63, &v84);

    sub_24E70E058(v64);
    (*(v78 + 8))(v74, v13);
    v67 = v84;
    v68 = v85;
    v69 = v75;
    v70 = v76;
    v71 = &v24[*(v76 + 32)];
    *v71 = v84;
    v71[8] = v68;
    v72 = &v24[*(v70 + 36)];
    *v72 = v65;
    *(v72 + 1) = v66;
    *(v72 + 2) = v69;
    *(v72 + 3) = v52;
    *(v72 + 4) = v67;
    v72[40] = v68;
    v73 = v80;
    sub_24EB76568(v24, v80);
    (*(v79 + 56))(v73, 0, 1, v70);
    return sub_24E90BCC4(v67, v68);
  }

LABEL_9:

  v41 = v80;
  v42 = *(v79 + 56);

  v42(v41, 1, 1, v21);
  return result;
}

uint64_t ShareSheetNotesMetadata.itemName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetNotesMetadata.developer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);

  return v1;
}

uint64_t ShareSheetNotesMetadata.category.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);

  return v1;
}

uint64_t ShareSheetNotesMetadata.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);

  return v1;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_24E911D90(a3, v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
  v19 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
  *v20 = a6;
  v20[1] = a7;
  v21 = v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
  *v21 = a8;
  *(v21 + 8) = a9 & 1;
  v22 = (v18 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
  *v22 = a10;
  v22[1] = a11;
  return v18;
}

uint64_t ShareSheetNotesMetadata.init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_24E911D90(a3, v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
  v17 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
  *v17 = a4;
  v17[1] = a5;
  v18 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
  *v18 = a6;
  v18[1] = a7;
  v19 = v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
  *v19 = a8;
  *(v19 + 8) = a9 & 1;
  v20 = (v11 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
  *v20 = a10;
  v20[1] = a11;
  return v11;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetNotesMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v43 = a2;
  v3 = v2;
  v42 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = a1;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v14, v8);
  if (v17)
  {
    v3[2] = v15;
    v3[3] = v17;
    v19 = v44;
    sub_24F928398();
    sub_24F928268();
    v18(v11, v8);
    sub_24E911D90(v7, v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);
    sub_24F928398();
    v20 = sub_24F928348();
    v22 = v21;
    v18(v11, v8);
    v23 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
    *v23 = v20;
    v23[1] = v22;
    sub_24F928398();
    v24 = sub_24F928348();
    v26 = v25;
    v18(v11, v8);
    v27 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
    *v27 = v24;
    v27[1] = v26;
    sub_24F928398();
    v28 = sub_24F9282D8();
    LOBYTE(v26) = v29;
    v18(v11, v8);
    v30 = v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize;
    *v30 = v28;
    v30[8] = v26 & 1;
    sub_24F928398();
    v31 = sub_24F928348();
    v33 = v32;
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v43, v34);
    v18(v19, v8);
    v18(v11, v8);
    v35 = (v3 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
    *v35 = v31;
    v35[1] = v33;
  }

  else
  {
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v37 = 0x656D614E6D657469;
    v38 = v42;
    v37[1] = 0xE800000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v43, v39);
    v18(v44, v8);
    type metadata accessor for ShareSheetNotesMetadata(0);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for ShareSheetNotesMetadata(uint64_t a1)
{
  result = qword_27F23DD68;
  if (!qword_27F23DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareSheetNotesMetadata.deinit()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);

  return v0;
}

uint64_t ShareSheetNotesMetadata.__deallocating_deinit()
{

  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url);

  return swift_deallocClassInstance();
}

uint64_t *sub_24F2AAF04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetNotesMetadata(0);
  v7 = swift_allocObject();
  result = ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F2AAF78(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F2AB094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2AB0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2AB15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDA8, &qword_24F9DE850);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (&v65 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDB0, &qword_24F9DE858);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDB8, &qword_24F9DE860);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  *v6 = sub_24F927608();
  v6[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDC0, &qword_24F9DE868);
  sub_24F2AB734(a1, v6 + *(v14 + 44));
  v15 = sub_24F925868();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDC8, &qword_24F9DE870) + 36);
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_24F9257F8();
  sub_24F923318();
  v26 = v6 + *(v4 + 44);
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  v31 = *(a1 + 72);
  sub_24E7538CC(a1, v68);
  v32 = v69 != 0;
  sub_24EA418B4(v68);
  v33 = &v9[*(v7 + 36)];
  *v33 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for LargeButtonForegroundStyleViewModifier(0);
  v35 = v33 + v34[5];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *(v33 + v34[6]) = v31;
  *(v33 + v34[7]) = v32;
  v36 = v33 + v34[8];
  *v36 = 0;
  v36[8] = 1;
  v37 = v33 + v34[9];
  *v37 = 0;
  v37[8] = 1;
  v38 = v33 + v34[10];
  *v38 = 0x406E000000000000;
  v38[8] = 0;
  sub_24E6009C8(v6, v9, &qword_27F23DDA8, &qword_24F9DE850);
  sub_24E7538CC(a1, v68);
  sub_24EA418B4(v68);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v39 = sub_24F9248C8();
  __swift_project_value_buffer(v39, qword_27F39F078);
  sub_24F2AC364();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F23DDB0, &qword_24F9DE858);
  v69 = sub_24F9271D8();
  v70 = sub_24F2AC564(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_24F924B38();
  (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, v41, v42);
  v43 = v67;
  sub_24E60169C(v68, v67, &qword_27F23DDF8, &qword_24F9DE8E0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DDA0, &qword_24F9DE848);
  v46 = v65;
  v45 = v66;
  (*(v65 + 16))(v43 + v44[9], v12, v66);
  v47 = v43 + v44[10];
  *v47 = sub_24F923398() & 1;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49 & 1;
  v50 = v43 + v44[11];
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = v45;
  v52 = v46;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v53 = qword_27F24E488;
  v54 = sub_24F923398();
  v56 = v55;
  v58 = v57;
  v59 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD90, &qword_24F9DE840) + 36);
  *v59 = v53;
  *(v59 + 8) = v54 & 1;
  *(v59 + 16) = v56;
  *(v59 + 24) = v58 & 1;
  LOBYTE(v53) = sub_24F923398();
  v61 = v60;
  LOBYTE(v56) = v62;
  sub_24E601704(v68, &qword_27F23DDF8, &qword_24F9DE8E0);
  (*(v52 + 8))(v12, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD78, &qword_24F9DE838);
  v64 = v43 + *(result + 36);
  *v64 = v53 & 1;
  *(v64 + 8) = v61;
  *(v64 + 16) = v56 & 1;
  return result;
}

uint64_t sub_24F2AB734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE00, &qword_24F9DE910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE08, &qword_24F9DE918);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE10, &qword_24F9DE920);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE18, &qword_24F9DE928);
  MEMORY[0x28223BE20](v17 - 8);
  v48 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = &v46 - v20;
  v23 = *(a1 + 72);
  if (*(a1 + 72))
  {
    (*(v14 + 56))(&v46 - v20, 1, 1, v13, v21);
  }

  else
  {
    *v16 = sub_24F924C88();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE20, &qword_24F9DE930);
    sub_24F2ABC18(a1, &v16[*(v24 + 44)]);
    v46 = v12;
    v25 = *(v13 + 36);
    v26 = v22;
    v27 = a1;
    v28 = v9;
    v29 = *MEMORY[0x277CE13C0];
    v30 = sub_24F927748();
    v31 = &v16[v25];
    v12 = v46;
    v32 = v29;
    v9 = v28;
    a1 = v27;
    v22 = v26;
    (*(*(v30 - 8) + 104))(v31, v32, v30);
    sub_24E6009C8(v16, v26, &qword_27F23DE10, &qword_24F9DE920);
    (*(v14 + 56))(v26, 0, 1, v13, v33);
  }

  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE20, &qword_24F9DE930);
  sub_24F2ABC18(a1, &v5[*(v34 + 44)]);
  sub_24E7538CC(a1, v51);
  v35 = v51[3];
  sub_24EA418B4(v51);
  if (v23)
  {
    if (v23 != 1 && v35)
    {
      v36 = sub_24F926C88();
LABEL_11:
      v51[0] = v36;
      goto LABEL_12;
    }

LABEL_10:
    v36 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_11;
  }

  if (!v35)
  {
    goto LABEL_10;
  }

  sub_24F926C88();
  v37 = v9;
  v38 = sub_24F926D08();

  v51[0] = v38;
  v9 = v37;
LABEL_12:
  v39 = sub_24F9238D8();
  sub_24E6009C8(v5, v9, &qword_27F23DE00, &qword_24F9DE910);
  *&v9[*(v49 + 36)] = v39;
  sub_24E6009C8(v9, v12, &qword_27F23DE08, &qword_24F9DE918);
  v40 = v12;
  v41 = v48;
  sub_24E60169C(v22, v48, &qword_27F23DE18, &qword_24F9DE928);
  v42 = v50;
  sub_24E60169C(v12, v50, &qword_27F23DE08, &qword_24F9DE918);
  v43 = v47;
  sub_24E60169C(v41, v47, &qword_27F23DE18, &qword_24F9DE928);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE28, &qword_24F9DE938);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F23DE08, &qword_24F9DE918);
  sub_24E601704(v40, &qword_27F23DE08, &qword_24F9DE918);
  sub_24E601704(v22, &qword_27F23DE18, &qword_24F9DE928);
  sub_24E601704(v42, &qword_27F23DE08, &qword_24F9DE918);
  return sub_24E601704(v41, &qword_27F23DE18, &qword_24F9DE928);
}

uint64_t sub_24F2ABC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730) - 8;
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218840, &unk_24F949538);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;

  v12 = sub_24F926DF8();
  v13 = sub_24F925898();
  KeyPath = swift_getKeyPath();
  v44 = v12;
  v45 = KeyPath;
  v46 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
  sub_24E60156C();
  sub_24F9268B8();

  v15 = &v11[*(v7 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v17 = *MEMORY[0x277CE1048];
  v18 = sub_24F926E78();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  v19 = a1[6];
  v44 = a1[5];
  v45 = v19;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  LOBYTE(v16) = v23;
  sub_24F925A18();
  v24 = sub_24F925C98();
  v26 = v25;
  LOBYTE(v15) = v27;
  v29 = v28;

  sub_24E600B40(v20, v22, v16 & 1);

  v44 = v24;
  v45 = v26;
  LOBYTE(v15) = v15 & 1;
  LOBYTE(v46) = v15;
  v47 = v29;
  v30 = v39;
  sub_24F9268B8();
  sub_24E600B40(v24, v26, v15);

  v31 = swift_getKeyPath();
  v32 = v40;
  v33 = v30 + *(v41 + 44);
  *v33 = v31;
  *(v33 + 8) = 1;
  *(v33 + 16) = 0;
  sub_24E60169C(v11, v32, &qword_27F218840, &unk_24F949538);
  v34 = v30;
  v35 = v42;
  sub_24E60169C(v30, v42, &qword_27F214B70, &unk_24F93E730);
  v36 = v43;
  sub_24E60169C(v32, v43, &qword_27F218840, &unk_24F949538);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE30, &qword_24F9DE9D0);
  sub_24E60169C(v35, v36 + *(v37 + 48), &qword_27F214B70, &unk_24F93E730);
  sub_24E601704(v34, &qword_27F214B70, &unk_24F93E730);
  sub_24E601704(v11, &qword_27F218840, &unk_24F949538);
  sub_24E601704(v35, &qword_27F214B70, &unk_24F93E730);
  return sub_24E601704(v32, &qword_27F218840, &unk_24F949538);
}

uint64_t sub_24F2AC024()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F9232F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24E7538CC(v1, v13);
  sub_24F2AC180(v1, v11);
  v6 = swift_allocObject();
  v7 = v12[0];
  v6[3] = v11[2];
  v6[4] = v7;
  *(v6 + 73) = *(v12 + 9);
  v8 = v11[1];
  v6[1] = v11[0];
  v6[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DD78, &qword_24F9DE838);
  sub_24F2AC210();
  return sub_24F921788();
}

uint64_t sub_24F2AC1B8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

unint64_t sub_24F2AC210()
{
  result = qword_27F23DD80;
  if (!qword_27F23DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DD78, &qword_24F9DE838);
    sub_24F2AC29C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD80);
  }

  return result;
}

unint64_t sub_24F2AC29C()
{
  result = qword_27F23DD88;
  if (!qword_27F23DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DD90, &qword_24F9DE840);
    sub_24E602068(&qword_27F23DD98, &qword_27F23DDA0, &qword_24F9DE848, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DD88);
  }

  return result;
}

unint64_t sub_24F2AC364()
{
  result = qword_27F23DDD0;
  if (!qword_27F23DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDB0, &qword_24F9DE858);
    sub_24F2AC420();
    sub_24F2AC564(&qword_27F215EA0, type metadata accessor for LargeButtonForegroundStyleViewModifier, &unk_24F951898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDD0);
  }

  return result;
}

unint64_t sub_24F2AC420()
{
  result = qword_27F23DDD8;
  if (!qword_27F23DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDA8, &qword_24F9DE850);
    sub_24F2AC4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDD8);
  }

  return result;
}

unint64_t sub_24F2AC4AC()
{
  result = qword_27F23DDE0;
  if (!qword_27F23DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23DDC8, &qword_24F9DE870);
    sub_24E602068(&qword_27F23DDE8, &qword_27F23DDF0, &qword_24F9DE8D8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DDE0);
  }

  return result;
}

uint64_t sub_24F2AC564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GameOverlayPreConsentFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v11 = v1[1];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9[0]) = 1;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F929A28();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    if (v11 & v4)
    {
      v8 = MEMORY[0x277D839B0];
    }

    else
    {
      v8 = MEMORY[0x277D839B0];
      v10 = MEMORY[0x277D839B0];
      LOBYTE(v9[0]) = 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      result = __swift_destroy_boxed_opaque_existential_1(v9);
    }

    if ((v6 & v5 & 1) == 0)
    {
      v10 = v8;
      LOBYTE(v9[0]) = 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  return result;
}

double sub_24F2AC800(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #3.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x4010000000000000;
  *(v2 + 416) = xmmword_24F9DEA70;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4014000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F97EE70;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4018000000000000;
  *(v2 + 736) = xmmword_24F97EE80;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x401C000000000000;
  *(v2 + 896) = xmmword_24F97EE90;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4020000000000000;
  *(v2 + 1056) = xmmword_24F9DEA80;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x4028000000000000;
  *(v2 + 1216) = xmmword_24F9DEA90;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

uint64_t ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 24))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24EE0F5B8(&v14);
    return 0;
  }

  return v12;
}

double ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F2ACCB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Game(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24F2ACE48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Game(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for LeaderboardsOverviewPageIntent(uint64_t a1)
{
  result = qword_27F23DE48;
  if (!qword_27F23DE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2ACFFC(uint64_t a1)
{
  sub_24E7EC9EC(319, &qword_27F21D948, type metadata accessor for Page.Background);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Game(319);
    if (v2 <= 0x3F)
    {
      sub_24E7EC9EC(319, &qword_27F214988, type metadata accessor for Player);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F2AD0E0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x756F72676B636162;
  *(inited + 40) = 0xEA0000000000646ELL;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 80) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Game(0);
  *(inited + 136) = sub_24E7EDC68(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F2ADF80(v2 + v7, v8, type metadata accessor for Game);
  strcpy((inited + 144), "gameDescriptor");
  *(inited + 159) = -18;
  v9 = (v2 + v6[6]);
  v10 = sub_24F2ADFE8();
  v11 = swift_allocObject();
  v12 = *v9;
  v13 = v9[1];
  *(inited + 184) = &type metadata for GameDescriptor;
  *(inited + 192) = v10;
  *(inited + 160) = v11;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(inited + 200) = 0x726579616C70;
  *(inited + 208) = 0xE600000000000000;
  v14 = v6[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 248) = sub_24E7EDBB4();
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v14, v15, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v16 = *(v2 + v6[8]);
  v17 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v17;
  *(inited + 272) = v16;
  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F2AD3BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE70, &unk_24F9DEBC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2ADE24();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  type metadata accessor for Page.Background(0);
  sub_24E7EDC68(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
    LOBYTE(v14) = 1;
    type metadata accessor for Game(0);
    sub_24E7EDC68(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_24F2ADF2C();
    sub_24F92CD48();
    LOBYTE(v14) = 3;
    type metadata accessor for Player(0);
    sub_24E7EDC68(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    LOBYTE(v14) = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F2AD6A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - v4;
  v5 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v25 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DE58, &qword_24F9DEBB8);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v25 - v10;
  v12 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2ADE24();
  v30 = v11;
  v15 = v32;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  type metadata accessor for Page.Background(0);
  LOBYTE(v33) = 0;
  sub_24E7EDC68(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v17 = v28;
  sub_24F92CC18();
  sub_24E6009C8(v17, v14, &qword_27F21D8F8, &qword_24F95ADB0);
  LOBYTE(v33) = 1;
  sub_24E7EDC68(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  v18 = v12;
  sub_24E636644(v7, v16 + *(v12 + 20));
  v35 = 2;
  sub_24F2ADE78();
  sub_24F92CC68();
  v19 = (v16 + *(v12 + 24));
  v20 = v34;
  *v19 = v33;
  v19[1] = v20;
  type metadata accessor for Player(0);
  LOBYTE(v33) = 3;
  sub_24E7EDC68(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v21 = v27;
  sub_24F92CC18();
  v22 = v29;
  sub_24E6009C8(v21, v16 + *(v18 + 28), &unk_27F23E1F0, &unk_24F9549C0);
  LOBYTE(v33) = 4;
  v23 = sub_24F92CC38();
  (*(v22 + 8))(v30, v31);
  *(v16 + *(v18 + 32)) = v23 & 1;
  sub_24F2ADF80(v16, v26, type metadata accessor for LeaderboardsOverviewPageIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F2ADECC(v16, type metadata accessor for LeaderboardsOverviewPageIntent);
}

uint64_t sub_24F2ADC78()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x63736544656D6167;
  v4 = 0x726579616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F2ADD1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F2AE164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F2ADD44(uint64_t a1)
{
  v2 = sub_24F2ADE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2ADD80(uint64_t a1)
{
  v2 = sub_24F2ADE24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F2ADE24()
{
  result = qword_27F23DE60;
  if (!qword_27F23DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE60);
  }

  return result;
}

unint64_t sub_24F2ADE78()
{
  result = qword_27F23DE68;
  if (!qword_27F23DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE68);
  }

  return result;
}

uint64_t sub_24F2ADECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F2ADF2C()
{
  result = qword_27F23DE78;
  if (!qword_27F23DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE78);
  }

  return result;
}

uint64_t sub_24F2ADF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F2ADFE8()
{
  result = qword_27F23DE80;
  if (!qword_27F23DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE80);
  }

  return result;
}

unint64_t sub_24F2AE060()
{
  result = qword_27F23DE88;
  if (!qword_27F23DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE88);
  }

  return result;
}

unint64_t sub_24F2AE0B8()
{
  result = qword_27F23DE90;
  if (!qword_27F23DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23DE90);
  }

  return result;
}

unint64_t sub_24F2AE110()
{
  result = qword_27F23DE98[0];
  if (!qword_27F23DE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23DE98);
  }

  return result;
}

uint64_t sub_24F2AE164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63736544656D6167 && a2 == 0xEE00726F74706972 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F2AE328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24F2AE380()
{
  result = qword_27F23A780;
  if (!qword_27F23A780)
  {
    type metadata accessor for GameCenterDashboardAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A780);
  }

  return result;
}

void sub_24F2AE3D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a3;
  v7 = sub_24F928AE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928418();
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_24F92AAE8();
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = qword_27F210578;
    v18 = a1;
    if (v17 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(&v33 + 1) = sub_24E69A5C4(0, &qword_27F22FC90, 0x277CF0CD0);
    *&v32 = v18;
    v19 = v18;
    sub_24F9283D8();
    sub_24E857CC8(&v32);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v7);
    sub_24F92A9C8();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v20 = v14;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, qword_27F39C3C8);
    (*(v20 + 16))(v16, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    if (a2)
    {
      swift_getErrorValue();
      v22 = v30[2];
      v23 = v31;
      *(&v33 + 1) = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v22, v23);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_24F9283E8();
    sub_24E857CC8(&v32);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    (*(v20 + 8))(v16, v13);
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      type metadata accessor for GameCenterDashboardActionImplementation.Error(0, a4, v25, v26);
      swift_getWitnessTable();
      v27 = swift_allocError();
      *v28 = 0;
    }

    v29 = a2;
    sub_24F92A9A8();
  }
}

void sub_24F2AE9B4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v4 = sub_24F92A9E8();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_24F92B0D8();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    aBlock = sub_24F92B0D8();
    v32 = v13;

    sub_24F92C7F8();
    v14 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v15 = sub_24F92B098();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_24E69A5C4(0, qword_27F238A10, 0x277CBEBC0);
      *(inited + 72) = v16;
      aBlock = sub_24F92B0D8();
      v32 = v17;
      sub_24F92C7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_24F93A400;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x72616F6268736164;
      *(v18 + 56) = 0xE900000000000064;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_24E6086DC(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(inited + 144) = v19;
      sub_24E608210(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470, &qword_24F93ADD0);
      swift_arrayDestroy();
      v20 = sub_24F92AE28();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_24F92B098();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v35 = sub_24F2AF000;
        v36 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_24E6251C8;
        v34 = &block_descriptor_136;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for GameCenterDashboardActionImplementation.Error(0, a2, v27, v28);
    swift_getWitnessTable();
    v29 = swift_allocError();
    *v30 = 1;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F2AEFC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_136(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static AppleAccountBranding.localizedString(_:)(uint64_t a1, void *a2)
{
  v4 = sub_24F91FE58();
  v12 = v4;
  v13 = sub_24F17D9D0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11._countAndFlagsBits);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v4);
  LOBYTE(v4) = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(&v11);
  if (v4)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;

    MEMORY[0x253050C20](0x444E41524245525FLL, 0xE800000000000000);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v11, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

int *ArcadePageIntent.init(url:isSubscribed:isTrialAvailable:isTrialEnrolled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F91F4A8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ArcadePageIntent(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for ArcadePageIntent(uint64_t a1)
{
  result = qword_27F23DFB0;
  if (!qword_27F23DFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall ArcadePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result.super.isa;
  v9 = sub_24F91F398();
  v7 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v9, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_24F92C328();
  v8 = type metadata accessor for ArcadePageIntent(0);
  result.super.isa = [v3 valueWithBool:*(v1 + v8[5]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_24F92C328();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[6]) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  result.super.isa = [v3 valueWithBool:*(v1 + v8[7]) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();

    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_24F2AF538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2AF598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F2AF678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F2AF730(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TopChartsPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TopChartsPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall TopChartsPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    v4 = result.super.isa;
    v7 = sub_24F91F398();
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TopChartsPageIntent(uint64_t a1)
{
  result = qword_27F23DFD0;
  if (!qword_27F23DFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2AFAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2AFB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F2AFB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t ImpressionIdScrollObserver.__allocating_init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_24F929598();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t ImpressionIdScrollObserver.init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_24F929598();
  (*(*(v8 - 8) + 32))(v3 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v3;
}

void ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v5 = sub_24F91F968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = Strong, v11 = [Strong collectionViewLayout], v10, !v11))
  {
    [a1 contentOffset];
    v16 = v18;
    v17 = [a1 contentSize];
    if (!*(v2 + 16))
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = v2;
  v13 = *(a2 + *(type metadata accessor for ShelfLayoutContext(0) + 20));
  v14 = [v11 _orthogonalScrollingSections];
  sub_24F91F8D8();

  LOBYTE(v14) = sub_24F91F918();
  (*(v6 + 8))(v8, v5);
  if ((v14 & 1) == 0)
  {

    return;
  }

  [v11 _layoutFrameForSection_];
  [v11 _offsetForOrthogonalScrollingSection_];
  v16 = v15;

  if (*(v12 + 16))
  {
LABEL_7:
    v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
    *&v24[-48] = v16;
    *&v24[-40] = 0;
    *&v24[-32] = v19;
    *&v24[-24] = v20;
    *&v24[-16] = v22;
    *&v24[-8] = v21;
    sub_24EB0B828(sub_24EB0E868, &v24[-64], v23);
  }
}

uint64_t ImpressionIdScrollObserver.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_collectionView);
  return v0;
}

uint64_t ImpressionIdScrollObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_24F929598();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_collectionView);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionIdScrollObserver(uint64_t a1)
{
  result = qword_27F23DFE8;
  if (!qword_27F23DFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2B0148(uint64_t a1)
{
  result = sub_24F929598();
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

double TransparentButton.init(action:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, uint64_t a7@<X3>)
{
  *a6 = a1;
  a6[1] = a2;
  type metadata accessor for TransparentButton(0, a4, a5, a7);

  a3(v8);

  return result;
}

void sub_24F2B02D4(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_24F2B10CC;
  a2[1] = v5;
}

uint64_t TransparentButton.action.getter()
{
  v1 = *v0;

  return v1;
}

void TransparentButton.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TransparentButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_24F9241F8();
  v32 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &OpaqueTypeMetadata2 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_24F926FC8();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &OpaqueTypeMetadata2 - v9;
  WitnessTable = swift_getWitnessTable();
  v31 = WitnessTable;
  v30 = sub_24E8EB434();
  v46 = v8;
  v47 = v4;
  v48 = WitnessTable;
  v49 = v30;
  v34 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &OpaqueTypeMetadata2 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  v14 = sub_24F924038();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &OpaqueTypeMetadata2 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v33 = &OpaqueTypeMetadata2 - v18;
  v41 = v6;
  v42 = v7;
  v43 = v2;

  sub_24F926F88();
  v19 = v37;
  sub_24F9241E8();
  v21 = v31;
  v20 = v32;
  v22 = v30;
  sub_24F926178();
  (*(v39 + 8))(v19, v20);
  (*(v38 + 8))(v10, v8);
  v46 = v8;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F115AD8();
  v24 = OpaqueTypeMetadata2;
  sub_24F926268();
  (*(v35 + 8))(v13, v24);
  v25 = sub_24F2B09EC();
  v44 = OpaqueTypeConformance2;
  v45 = v25;
  swift_getWitnessTable();
  v26 = v33;
  sub_24E7896B8();
  v27 = *(v36 + 8);
  v27(v16, v14);
  sub_24E7896B8();
  return (v27)(v26, v14);
}

uint64_t sub_24F2B08E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransparentButton(0, v6, v7, v8);
  sub_24E7896B8();
  sub_24E7896B8();
  return (*(v3 + 8))(v5, a2);
}

unint64_t sub_24F2B09EC()
{
  result = qword_27F212A60;
  if (!qword_27F212A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212A60);
  }

  return result;
}

uint64_t sub_24F2B0A98@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24E972460;
  a2[1] = v5;
}

__n128 sub_24F2B0B14(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_24F2B0B20(uint64_t a1)
{
  result = sub_24E6C5550();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F2B0BA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24F2B0D2C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_24F2B0F7C(__n128 a1)
{
  sub_24F926FC8();
  sub_24F9241F8();
  swift_getWitnessTable();
  sub_24E8EB434();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340, &qword_24F939830);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F2B09EC();
  return swift_getWitnessTable();
}

uint64_t sub_24F2B1094()
{

  return swift_deallocObject();
}

uint64_t sub_24F2B110C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for BreakoutDetails.Badge(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_24F9234D8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = _s9ViewModelVMa(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_24F2B12E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for BreakoutDetails.Badge(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_24F9234D8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = _s9ViewModelVMa(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for LargeBreakoutOverlayViewModel(uint64_t a1)
{
  result = qword_27F23E078;
  if (!qword_27F23E078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F2B14EC(uint64_t a1)
{
  type metadata accessor for BreakoutDetails.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24E658094(319);
    if (v2 <= 0x3F)
    {
      sub_24F9234D8();
      if (v3 <= 0x3F)
      {
        _s9ViewModelVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t SearchEntity.rawValue.getter()
{
  v1 = 0x65706F6C65766564;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x79726F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

GameStoreKit::SearchEntity_optional __swiftcall SearchEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void SearchEntity.jsRepresentation(in:)(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_24F2B171C()
{
  result = qword_27F23E088;
  if (!qword_27F23E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E088);
  }

  return result;
}

uint64_t sub_24F2B1770()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F2B1828(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2B18CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2B198C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_24F2B1AB0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  v7 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v7;
  *a1 = v6;
  a1[1] = v2;
}

uint64_t PrivacyHeaderLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t PrivacyHeaderLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyOnlyBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t PrivacyHeaderLayout.Metrics.init(bodyTopSpace:bodyBottomSpace:supplementaryItemsTopSpace:supplementaryItemsPadding:supplementaryItemsBottomSpace:actionButtonLeadingMargin:bodyOnlyBottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = a9 + 280;
  *(a9 + 312) = 0;
  *(a9 + 280) = 0u;
  *(a9 + 296) = 0u;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  sub_24E612C80(a7, a9 + 240);

  return sub_24EA63A70(a8, v17);
}

__n128 PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)@<Q0>(void *__src@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(a8, __src, 0x140uLL);
  *(a8 + 320) = a2;
  sub_24E612C80(a3, a8 + 328);
  *(a8 + 368) = a4;
  v15 = *(a5 + 16);
  *(a8 + 376) = *a5;
  *(a8 + 392) = v15;
  *(a8 + 408) = *(a5 + 32);
  result = *a6;
  v17 = *(a6 + 16);
  *(a8 + 416) = *a6;
  *(a8 + 432) = v17;
  *(a8 + 448) = *(a6 + 32);
  *(a8 + 456) = a7;
  return result;
}

double static PrivacyHeaderLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_24F9225E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_24F922618();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 104))(v8, *MEMORY[0x277D22788], v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v21);
  v15 = sub_24F9229A8();
  v16 = MEMORY[0x277D228E0];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v21);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  return v18;
}

uint64_t PrivacyHeaderLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 224);
  __swift_project_boxed_opaque_existential_1((v4 + 200), v12);
  sub_24E8ED7D8(v12);
  v13 = sub_24F9223A8();
  v28 = *(v9 + 8);
  v28(v11, v8);
  v14 = *(v4 + 456);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    v17 = 0.0;
    v18 = a2;
    do
    {
      sub_24E615E00(v16, &v29);
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      sub_24F922288();
      v20 = v19;
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v18 = v18 - v20 - v13;
      if (v17 <= v22)
      {
        v17 = v22;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = a2;
  }

  sub_24E60169C(v4 + 280, &v29, &qword_27F22F780, &qword_24F968620);
  v23 = v30;
  if (v30)
  {
    __swift_project_boxed_opaque_existential_1(&v29, v30);
    sub_24E8ED7D8(v23);
    v24 = sub_24F9223A8();
    v25 = v28;
    v28(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v24 < v18)
    {
      v18 = v24;
    }
  }

  else
  {
    sub_24E601704(&v29, &qword_27F22F780, &qword_24F968620);
    v25 = v28;
  }

  sub_24F2B2714(&v29);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, v18, a3);

  if ((*(v4 + 320) & 1) == 0)
  {
    v27 = *(v4 + 264);
    __swift_project_boxed_opaque_existential_1((v4 + 240), v27);
    sub_24E8ED7D8(v27);
    sub_24F9223A8();
    return v25(v11, v8);
  }

  return result;
}

uint64_t sub_24F2B2714@<X0>(uint64_t a1@<X8>)
{
  v75 = 0;
  LODWORD(v3) = *(v1 + 320);
  if (v3 == 1)
  {
    sub_24E60169C(v1 + 376, &v67, &qword_27F229780, &unk_24F965BB0);
    if (*(&v68 + 1))
    {
      sub_24E612C80(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x277D839F8];
      *&v59 = MEMORY[0x277D22A30];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_24E615E00(&v54, &v67);
      sub_24E615E00(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v4 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_24E617A24((v5 > 1), v6 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v6 + 1;
      v7 = &v4[136 * v6];
      *(v7 + 2) = v57;
      v8 = v58;
      v9 = v59;
      v10 = v61;
      *(v7 + 5) = v60;
      *(v7 + 6) = v10;
      *(v7 + 3) = v8;
      *(v7 + 4) = v9;
      v11 = v62;
      v12 = v63;
      v13 = v64;
      *(v7 + 20) = v65;
      *(v7 + 8) = v12;
      *(v7 + 9) = v13;
      *(v7 + 7) = v11;
    }

    else
    {
      sub_24E601704(&v67, &qword_27F229780, &unk_24F965BB0);
      v4 = MEMORY[0x277D84F90];
    }

    sub_24E615E00(v1 + 328, &v57);
    sub_24E615E00(v1, &v54);
    sub_24E615E00(v1 + 40, v66);
  }

  else
  {
    sub_24E615E00(v1 + 328, &v57);
    *(&v55 + 1) = MEMORY[0x277D839F8];
    *&v56 = MEMORY[0x277D22A30];
    *&v54 = 0;
    v66[3] = MEMORY[0x277D839F8];
    v66[4] = MEMORY[0x277D22A30];
    v66[0] = 0;
    v4 = MEMORY[0x277D84F90];
  }

  sub_24E612C80(&v57, &v67);
  sub_24E615E00(&v54, v70);
  sub_24E60169C(v66, &v71, &qword_27F22F780, &qword_24F968620);
  WORD4(v69) = 0;
  v74 = 8;
  sub_24E601704(v66, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  sub_24E9D682C(&v67, &v57);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v4 = sub_24E617A24(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_24E617A24((v14 > 1), v15 + 1, 1, v4);
  }

  result = sub_24E9D6888(&v67);
  *(v4 + 2) = v15 + 1;
  v17 = &v4[136 * v15];
  v18 = v61;
  v20 = v58;
  v19 = v59;
  *(v17 + 5) = v60;
  *(v17 + 6) = v18;
  *(v17 + 3) = v20;
  *(v17 + 4) = v19;
  v22 = v63;
  v21 = v64;
  v23 = v62;
  *(v17 + 20) = v65;
  *(v17 + 8) = v22;
  *(v17 + 9) = v21;
  *(v17 + 7) = v23;
  *(v17 + 2) = v57;
  if (v3)
  {
    sub_24E60169C(v1 + 416, &v67, &qword_27F229780, &unk_24F965BB0);
    v50 = a1;
    if (*(&v68 + 1))
    {
      sub_24E612C80(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x277D839F8];
      *&v59 = MEMORY[0x277D22A30];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_24E615E00(&v54, &v67);
      sub_24E615E00(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v25 = *(v4 + 2);
      v24 = *(v4 + 3);
      if (v25 >= v24 >> 1)
      {
        v4 = sub_24E617A24((v24 > 1), v25 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v25 + 1;
      v26 = &v4[136 * v25];
      *(v26 + 2) = v57;
      v27 = v58;
      v28 = v59;
      v29 = v61;
      *(v26 + 5) = v60;
      *(v26 + 6) = v29;
      *(v26 + 3) = v27;
      *(v26 + 4) = v28;
      v30 = v62;
      v31 = v63;
      v32 = v64;
      *(v26 + 20) = v65;
      *(v26 + 8) = v31;
      *(v26 + 9) = v32;
      *(v26 + 7) = v30;
    }

    else
    {
      result = sub_24E601704(&v67, &qword_27F229780, &unk_24F965BB0);
    }

    v33 = 0;
    v34 = *(v1 + 368);
    v35 = *(v34 + 16);
    a1 = 136;
    while (1)
    {
      v36 = 0uLL;
      v3 = v35;
      v37 = 0uLL;
      v38 = 0uLL;
      if (v33 != v35)
      {
        if (v33 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v3 = v33 + 1;
        *&v67 = v33;
        result = sub_24E615E00(v34 + 32 + 40 * v33, &v67 + 8);
        v36 = v67;
        v37 = v68;
        v38 = v69;
      }

      v54 = v36;
      v55 = v37;
      v56 = v38;
      if (!v38)
      {
        a1 = v50;
        break;
      }

      v51 = v36;
      sub_24E612C80((&v54 + 8), v66);
      v39 = *(v34 + 16);
      if (v51)
      {
        *(&v58 + 1) = sub_24F922418();
        *&v59 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(&v57);
        sub_24F922408();
      }

      else
      {
        sub_24E615E00(v1 + 80, &v57);
      }

      v40 = 120;
      if (v51 == v39 - 1)
      {
        v40 = 160;
      }

      sub_24E615E00(v1 + v40, v52);
      sub_24E615E00(v66, &v67);
      sub_24E615E00(&v57, v70);
      v71 = v52[0];
      v72 = v52[1];
      v73 = v53;
      WORD4(v69) = 1;
      v74 = 3;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_24E9D682C(&v67, &v57);
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_24E617A24((v41 > 1), v42 + 1, 1, v4);
      }

      sub_24E9D6888(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(v66);
      *(v4 + 2) = v42 + 1;
      v43 = &v4[136 * v42];
      *(v43 + 2) = v57;
      v44 = v58;
      v45 = v59;
      v46 = v61;
      *(v43 + 5) = v60;
      *(v43 + 6) = v46;
      *(v43 + 3) = v44;
      *(v43 + 4) = v45;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      *(v43 + 20) = v65;
      *(v43 + 8) = v48;
      *(v43 + 9) = v49;
      *(v43 + 7) = v47;
      v33 = v3;
    }
  }

  *a1 = v75;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PrivacyHeaderLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v43 = a2;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 224);
  __swift_project_boxed_opaque_existential_1((v7 + 200), v16);
  sub_24E8ED7D8(v16);
  v17 = sub_24F9223A8();
  v42 = *(v13 + 8);
  v42(v15, v12);
  v48.origin.x = a3;
  v48.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v48.size.width = a5;
  v48.size.height = a6;
  MaxX = CGRectGetMaxX(v48);
  v19 = *(v7 + 456);
  v20 = *(v19 + 16);
  v44.origin.x = a3;
  v44.origin.y = a4;
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      sub_24E615E00(v21, &v46);
      __swift_project_boxed_opaque_existential_1(&v46, v47);
      width = v44.size.width;
      height = v44.size.height;
      sub_24F922288();
      v45 = v24;
      v26 = MaxX - v25;
      v49.origin.x = v44.origin.x;
      v49.origin.y = v44.origin.y;
      v49.size.width = width;
      v49.size.height = height;
      CGRectGetMinY(v49);
      __swift_project_boxed_opaque_existential_1(&v46, v47);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v46);
      MaxX = v26 - v17;
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  x = v44.origin.x;
  y = v44.origin.y;
  v30 = v44.size.width;
  v29 = v44.size.height;
  CGRectGetMaxX(v44);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v30;
  v50.size.height = v29;
  CGRectGetWidth(v50);
  sub_24E60169C(v7 + 280, &v46, &qword_27F22F780, &qword_24F968620);
  v31 = v47;
  if (v47)
  {
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    sub_24E8ED7D8(v31);
    sub_24F9223A8();
    v42(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    v30 = v44.size.width;
    v29 = v44.size.height;
  }

  else
  {
    sub_24E601704(&v46, &qword_27F22F780, &qword_24F968620);
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v30;
  v51.size.height = v29;
  CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = v30;
  v52.size.height = v29;
  CGRectGetMinY(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v30;
  v53.size.height = v29;
  CGRectGetHeight(v53);
  sub_24F92C1D8();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_24F2B2714(&v46);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v43, v33, v35, v37, v39);
}

uint64_t sub_24F2B317C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2B31C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2B3294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2B32DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24F2B3380()
{
  result = [objc_allocWithZone(type metadata accessor for HostProcessIdentifier()) init];
  qword_27F23E090 = result;
  return result;
}

id HostProcessIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24F2B342C()
{
  result = sub_24F92B098();
  qword_27F23E098 = result;
  return result;
}

void sub_24F2B34AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F928418();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_27F2110A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F23E0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v11 = MEMORY[0x277D837D0];
  v9 = a1;
  v10 = a2;

  sub_24F9283E8();
  sub_24E857CC8(&v9);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v7 = (v2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;

  v8 = [objc_opt_self() defaultCenter];
  if (qword_27F211098 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_27F23E098 object:0 userInfo:0];
}

uint64_t sub_24F2B37D8()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24F2B38AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24F2B390C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24F2B39D8()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v2 = v1[1];
  if (v2)
  {
    if (*v1 == 0xD000000000000016 && v2 == 0x800000024FA583C0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_24F92CE08();
    }
  }

  else
  {
    if (qword_27F2110A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F23E0A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_24F2B3B90()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23E0A0);
  __swift_project_value_buffer(v4, qword_27F23E0A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id HostProcessIdentifier.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId];
  v2 = type metadata accessor for HostProcessIdentifier();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id HostProcessIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostProcessIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24F2B3DD8@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

JSValue __swiftcall ShelvesIntent.makeValue(in:)(JSContext in)
{
  v46 = sub_24F91F4A8();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v38 = objc_opt_self();
  isa = in.super.isa;
  result.super.isa = [v38 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220690, &qword_24F963DA0);
  v8 = sub_24F92CB28();
  v9 = v8;
  v10 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = v3;
  v41 = v3 + 8;
  v42 = v3 + 16;
  v40 = v8 + 64;
  result.super.isa = v7;
  v37 = result.super.isa;
  v15 = 0;
  v43 = v9;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_11:
      v19 = v16 | (v15 << 6);
      sub_24E65864C(*(v5 + 48) + 40 * v19, v49);
      v20 = v5;
      v21 = *(v5 + 56);
      v23 = v44;
      v22 = v45;
      v24 = v46;
      (*(v44 + 16))(v45, v21 + *(v44 + 72) * v19, v46);
      v48 = sub_24F91F398();
      v26 = v25;
      result.super.isa = (*(v23 + 8))(v22, v24);
      *(v40 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v9 = v43;
      v27 = *(v43 + 48) + 40 * v19;
      v28 = v49[0];
      v29 = v49[1];
      *(v27 + 32) = v50;
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = (*(v9 + 56) + 16 * v19);
      *v30 = v48;
      v30[1] = v26;
      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v9 + 16) = v33;
      v5 = v20;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v15 >= v14)
    {
      break;
    }

    v18 = *(v10 + 8 * v15);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  *&v49[0] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0C0, &qword_24F9DF568);
  v34 = [v38 valueWithObject:sub_24F92CF68() inContext:isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_19;
  }

  v35 = v37;
  sub_24F92C328();

  return v35;
}

unint64_t sub_24F2B4308()
{
  result = qword_27F23E0C8;
  if (!qword_27F23E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0C8);
  }

  return result;
}

unint64_t sub_24F2B4364()
{
  result = qword_27F23E0D0;
  if (!qword_27F23E0D0)
  {
    type metadata accessor for ShelfBatch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0D0);
  }

  return result;
}

uint64_t FlowPreviewActionsConfiguration.__allocating_init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  swift_beginAccess();
  *(v12 + 48) = a5;
  *(v12 + 56) = a6 & 1;
  return v12;
}

double FlowPreviewActionsConfiguration.actions.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t FlowPreviewActionsConfiguration.actions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void FlowPreviewActionsConfiguration.destructiveActionIndex.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
}

uint64_t FlowPreviewActionsConfiguration.init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  swift_beginAccess();
  *(v6 + 48) = a5;
  *(v6 + 56) = a6 & 1;
  return v6;
}

uint64_t FlowPreviewActionsConfiguration.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t FlowPreviewActionsConfiguration.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = a2;
  v46 = sub_24F9285B8();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_24F92AC28();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  *(v2 + 48) = 0;
  v38 = v2 + 48;
  *(v2 + 56) = 1;
  sub_24F928398();
  sub_24F9282B8();
  v18 = *(v8 + 8);
  v42 = v7;
  v40 = v8 + 8;
  v37 = v18;
  v18(v13, v7);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_24E8F2EE8(v6);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v15 + 32))(v17, v6, v14);
    v20 = type metadata accessor for Action(0);
    MEMORY[0x28223BE20](v20);
    v21 = v48;
    *(&v36 - 2) = v22;
    *(&v36 - 1) = v21;
    v23 = v44;
    v19 = sub_24F92ABB8();
    v44 = v23;
    (*(v15 + 8))(v17, v14);
  }

  v24 = v41;
  *(v41 + 16) = v19;
  type metadata accessor for OfferDisplayProperties();
  v25 = v45;
  sub_24F928398();
  v26 = v43;
  (*(v43 + 16))(v39, v48, v46);
  sub_24F2B4BF8();
  sub_24F929548();
  *(v24 + 24) = v47[0];
  sub_24F928398();
  v27 = sub_24F928258();
  v29 = v28;
  v30 = v42;
  v31 = v37;
  v37(v10, v42);
  *(v24 + 32) = v27;
  *(v24 + 40) = v29 & 1;
  sub_24F928398();
  v32 = sub_24F928258();
  v34 = v33;
  v31(v25, v30);
  v31(v10, v30);
  (*(v26 + 8))(v48, v46);
  swift_beginAccess();
  *(v24 + 48) = v32;
  *(v24 + 56) = v34 & 1;
  return v24;
}

unint64_t sub_24F2B4BF8()
{
  result = qword_27F225B10;
  if (!qword_27F225B10)
  {
    type metadata accessor for OfferDisplayProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B10);
  }

  return result;
}

uint64_t FlowPreviewActionsConfiguration.deinit()
{

  return v0;
}

uint64_t FlowPreviewActionsConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B4CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Resize.init(_:size:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v27 = a1;
  v28 = a2;
  v7 = sub_24F922AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  sub_24E615E00(a1, v29);
  v20 = MEMORY[0x277D85048];
  v21 = MEMORY[0x277D225F8];
  *(v19 + 3) = MEMORY[0x277D85048];
  *(v19 + 4) = v21;
  *v19 = a3;
  v22 = *MEMORY[0x277D22980];
  v23 = *(v8 + 104);
  v23(v19, v22, v7);
  *(v16 + 3) = v20;
  *(v16 + 4) = v21;
  *v16 = a4;
  v23(v16, v22, v7);
  v24 = *MEMORY[0x277D22988];
  v23(v13, v24, v7);
  v23(v10, v24, v7);
  sub_24F922AF8();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t ImpressionsScrollObserver.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = sub_24E611020(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ImpressionsScrollObserver.init(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = sub_24E611020(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  return v1;
}

void ImpressionsScrollObserver.collectionView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ImpressionsScrollObserver.collectionView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24F2B5150;
}

void sub_24F2B5150(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall ImpressionsScrollObserver.didScroll(in:)(UIScrollView *in)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 && ([(UIScrollView *)in safeAreaInsets], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v13 = v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), *v13 = v6, *(v13 + 8) = v8, *(v13 + 16) = v10, *(v13 + 24) = v12, *(v13 + 32) = 0, [(UIScrollView *)in bounds], v14 = *(v3 + 16), v15 = *(v14 + 16), v16 = v3 + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_viewSafeAreaInsets, swift_beginAccess(), v15))
  {
    v17 = 0;
    v18 = (v14 + 40);
    while (v17 < *(v14 + 16))
    {
      if (*v18 != 1 || (*(v16 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_24F92C208();
      }

      ++v17;
      sub_24F929B08();

      v18 += 16;
      if (v15 == v17)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    swift_beginAccess();
    v19 = 0;
    v20 = *(v2 + 32);
    v23 = *(v20 + 64);
    v21 = v20 + 64;
    v22 = v23;
    v24 = 1 << *(v21 - 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_13:
      v26 &= v26 - 1;
    }

    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v27)
      {
        return;
      }

      v26 = *(v21 + 8 * v28);
      ++v19;
      if (v26)
      {
        v19 = v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ImpressionsScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A8D8, &qword_24F9DF710);
  MEMORY[0x28223BE20](v66);
  v67 = &v54[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v68 = &v54[-v9];
  MEMORY[0x28223BE20](v10);
  v69 = &v54[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54[-v13];
  v15 = sub_24F929598();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  v24 = sub_24F929608();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    return sub_24E601704(v14, &qword_27F213E68, &unk_24F93BC80);
  }

  sub_24F9295B8();
  (*(v25 + 8))(v14, v24);
  v27 = v16[4];
  v70 = v23;
  v59 = v27;
  v60 = v16 + 4;
  v27(v23, v20, v15);
  v28 = *(a2 + *(type metadata accessor for ShelfLayoutContext(0) + 20));
  swift_beginAccess();
  v29 = *(v2 + 32);
  v30 = *(v29 + 16);
  v31 = v16;
  v61 = a2;
  v57 = v28;
  v58 = v3;
  if (v30 && (v32 = sub_24E7728CC(v28), (v33 & 1) != 0))
  {
    v34 = *(*(v29 + 56) + 8 * v32);

    swift_endAccess();
    v36 = v67;
    v35 = v68;
    if (v34)
    {
      v37 = v31[2];
      v62 = v34;
      v38 = v34 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID;
      v39 = v69;
      v37(v69, v38, v15);
      v40 = v31[7];
      v40(v39, 0, 1, v15);
      v55 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    swift_endAccess();
    v36 = v67;
    v35 = v68;
  }

  v40 = v31[7];
  v55 = 1;
  v39 = v69;
  v40(v69, 1, 1, v15);
  v62 = 0;
  v37 = v31[2];
LABEL_9:
  v56 = v37;
  v37(v35, v70, v15);
  v40(v35, 0, 1, v15);
  v41 = *(v66 + 48);
  sub_24EE32C14(v39, v36);
  sub_24EE32C14(v35, v36 + v41);
  v67 = v31;
  v42 = v31[6];
  if (v42(v36, 1, v15) == 1)
  {
    sub_24E601704(v35, &qword_27F228618, &qword_24F982808);
    sub_24E601704(v39, &qword_27F228618, &qword_24F982808);
    if (v42(v36 + v41, 1, v15) == 1)
    {
      sub_24E601704(v36, &qword_27F228618, &qword_24F982808);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v43 = v63;
  sub_24EE32C14(v36, v63);
  if (v42(v36 + v41, 1, v15) == 1)
  {
    sub_24E601704(v68, &qword_27F228618, &qword_24F982808);
    sub_24E601704(v69, &qword_27F228618, &qword_24F982808);
    (*(v67 + 1))(v43, v15);
LABEL_14:
    sub_24E601704(v36, &qword_27F22A8D8, &qword_24F9DF710);
    v44 = v59;
LABEL_15:
    v45 = v58;
    v46 = *(v58 + 16);
    v47 = v65;
    v56(v65, v70, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    type metadata accessor for ImpressionIdScrollObserver(0);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v49 + 16) = v46;
    v44(v49 + OBJC_IVAR____TtC12GameStoreKit26ImpressionIdScrollObserver_impressionID, v47, v15);
    swift_unknownObjectWeakAssign();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v45 + 32);
    *(v45 + 32) = 0x8000000000000000;
    sub_24E8206C4(v49, v57, isUniquelyReferenced_nonNull_native);
    *(v45 + 32) = v71;
    swift_endAccess();
LABEL_18:
    ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(v64, v61);

    return (*(v67 + 1))(v70, v15);
  }

  v51 = v65;
  v44 = v59;
  v59(v65, (v36 + v41), v15);
  sub_24F2B5C80();
  v52 = sub_24F92AFF8();
  v53 = *(v67 + 1);
  v53(v51, v15);
  sub_24E601704(v68, &qword_27F228618, &qword_24F982808);
  sub_24E601704(v69, &qword_27F228618, &qword_24F982808);
  v53(v63, v15);
  sub_24E601704(v36, &qword_27F228618, &qword_24F982808);
  if ((v52 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ((v55 & 1) == 0)
  {
    goto LABEL_18;
  }

  return (*(v67 + 1))(v70, v15);
}

uint64_t ImpressionsScrollObserver.deinit()
{

  MEMORY[0x2530543E0](v0 + 24);

  return v0;
}

uint64_t ImpressionsScrollObserver.__deallocating_deinit()
{

  MEMORY[0x2530543E0](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_24F2B5C80()
{
  result = qword_27F21BCF0;
  if (!qword_27F21BCF0)
  {
    sub_24F929598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BCF0);
  }

  return result;
}

uint64_t sub_24F2B5CD8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_24F2B5DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(v2 + qword_27F39C790) & 1) == 0)
  {
    v4 = *(v2 + qword_27F22F198);
    if (v4)
    {
      v7 = (v4 + *(*v4 + 184));
      swift_beginAccess();
      v8 = *v7 == a1 && v7[1] == a2;
      if (!v8 && (sub_24F92CE08() & 1) == 0)
      {
        *v7 = a1;
        v7[1] = a2;

        v9 = sub_24F2B7534(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for DynamicPage<A>);
        v10 = *(v9 + 56);
        v11 = type metadata accessor for SearchChartsAndCategoriesPage(0);
        v12 = v10(v11, v9);
        v13 = MEMORY[0x277D84F90];
        if (*(v12 + 16))
        {
          v16 = v7;
          v14 = *v7;
          v15 = v16[1];

          v17 = sub_24E7728F0(v14, v15);
          v19 = v18;

          if (v19)
          {
            v20 = *(*(v12 + 56) + 8 * v17);
          }

          else
          {
            v20 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v21 = qword_27F22F1A0;
        *(v3 + qword_27F22F1A0) = v20;

        v22 = *(v3 + v21);
        v33 = v13;
        v23 = *(v22 + 16);
        v24 = qword_27F39C780;

        swift_beginAccess();
        if (v23)
        {
          v25 = 0;
          v26 = v22 + 32;
          while (1)
          {
            v27 = v26 + 40 * v25;
            v28 = v25;
            while (1)
            {
              if (v28 >= *(v22 + 16))
              {
                __break(1u);
                return;
              }

              sub_24E65864C(v27, &v31);
              if (*(*(v3 + v24) + 16))
              {
                break;
              }

LABEL_16:
              ++v28;
              sub_24E6585F8(&v31);
              v27 += 40;
              if (v23 == v28)
              {
                goto LABEL_24;
              }
            }

            sub_24E76D934(&v31);
            if ((v29 & 1) == 0)
            {
              break;
            }

            v30 = sub_24E6585F8(&v31);
            MEMORY[0x253050F00](v30);
            if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v25 = v28 + 1;
            sub_24F92B638();
            v13 = v33;
            v26 = v22 + 32;
            if (v23 - 1 == v28)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_16;
        }

LABEL_24:

        v31 = v13;
        v32 = 0;
        sub_24F92AD88();
      }
    }
  }
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39E1C0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.columnCount.getter()
{
  v1 = v0 + qword_27F39E1C8;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24F2B6B28(a1, a2);

  return v4;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.init(objectGraph:pageUrl:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F2B6B28(a1, a2);

  return v2;
}

double sub_24F2B6274(void *a1, char a2)
{
  sub_24F2F7418(a1, a2);
  v4 = *(a1 + qword_27F39CEE0);
  v5 = *(a1 + qword_27F39CEE0 + 8);
  v6 = v2 + qword_27F39E1C8;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  v7 = *(a1 + qword_27F39CEE8);
  v8 = qword_27F39E1D0;
  swift_beginAccess();
  *(v2 + v8) = v7;

  return result;
}

uint64_t sub_24F2B6334(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v50 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v44 - v11, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v13 = v1[3];
  swift_beginAccess();
  v14 = v1[4];
  type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter(0);
  v15 = swift_allocObject();
  v45 = v12;
  sub_24E60169C(v12, v9, &qword_27F228530, &unk_24F93C6E0);
  v16 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v17 = swift_allocObject();
  v46 = v17;
  sub_24E911D90(v9, v17 + v16);
  *(v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v44 = v6;
  sub_24E60169C(v12, v6, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v6, v51, &qword_27F228530, &unk_24F93C6E0);
  *(v15 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;
  v47 = v14;

  swift_retain_n();
  v48 = v13;

  *(v15 + v19) = sub_24E60986C(v18);
  v20 = (v15 + qword_27F22F1A8);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_27F22F1B0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_27F22F1B8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_27F22F1C0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1C8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_27F39C788);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v26 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC80, &unk_24F9DF850);
  swift_allocObject();
  *(v15 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v15 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC98, &unk_24F9DF860);
  swift_allocObject();
  *(v15 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  v32 = sub_24F92ADA8();
  sub_24E601704(v44, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v45, &qword_27F228530, &unk_24F93C6E0);
  *(v15 + v31) = v32;
  v33 = qword_27F22F1E0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v35 = *(*(v34 - 8) + 56);
  v35(v15 + v33, 1, 1, v34);
  v36 = v34;
  v37 = v49;
  v35(v15 + qword_27F22F1E8, 1, 1, v36);
  v38 = v51;
  *(v15 + 16) = v50;
  sub_24E911D90(v38, v15 + qword_27F39C7D0);
  v39 = v46;
  *v20 = sub_24F0568D0;
  v20[1] = v39;
  *v22 = 0;
  v22[1] = 0;
  if (v37)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    v41 = sub_24E965688;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  *v21 = v41;
  v21[1] = v40;
  *v23 = 0;
  v23[1] = 0;
  *v24 = 0;
  v24[1] = 0;
  v42 = v47;
  *(v15 + qword_27F22F1F0) = v48;
  *(v15 + qword_27F39C7D8) = v42;

  return v15;
}

Swift::Void __swiftcall SearchChartsAndCategoriesDiffablePagePresenter.updateTab(for:)(Swift::String a1)
{
  if (*(v1 + qword_27F39CC00))
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0D8, &unk_24F9DF7B0);
    if (swift_dynamicCastClass())
    {

      sub_24F2B5DC0(countAndFlagsBits, object);
    }
  }
}

double sub_24F2B69FC()
{

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBFE68();

  return v0;
}

uint64_t SearchChartsAndCategoriesDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBBFE68();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B6B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v5 = sub_24F92BEE8();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BE88();
  MEMORY[0x28223BE20](v8);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v40 = &v38 - v11;
  v13 = (v2 + qword_27F39E1C0);
  *v13 = 0;
  v13[1] = 0;
  v14 = v2 + qword_27F39E1C8;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v2 + qword_27F39E1D0) = 0;
  sub_24E60169C(a2, v12, &qword_27F228530, &unk_24F93C6E0);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  *(v2 + qword_27F39CC00) = 0;
  *(v2 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v2 + qword_27F2326C8) = 0;
  v15 = *(*v2 + 640);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC78, &unk_24F989CA0);
  v17 = *(*(v16 - 8) + 56);
  v17(v2 + v15, 1, 1, v16);
  v18 = *(*v2 + 648);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  v20 = *(*v2 + 656);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC68, &qword_24F989C90);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  v17(v3 + *(*v3 + 664), 1, 1, v16);
  v22 = *(*v2 + 672);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  v24 = *(*v2 + 680);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = *(*v2 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  v44 = MEMORY[0x277D84F90];
  sub_24F2B7534(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v38 + 104))(v7, *MEMORY[0x277D85260], v39);
  *(v2 + v26) = sub_24F92BF38();
  sub_24EBD3128(v3 + *(*v3 + 696));
  v27 = (v3 + *(*v3 + 704));
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  v28 = *(*v2 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v2 + v28) = sub_24F92ADA8();
  v29 = *(*v2 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v2 + v29) = sub_24F92ADA8();
  v30 = *(*v2 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v2 + v30) = sub_24F92ADA8();
  *(v2 + *(*v2 + 736)) = 0;
  v31 = (v3 + *(*v3 + 752));
  *v31 = 0;
  v31[1] = 0;
  v32 = v40;
  sub_24E60169C(v40, v2 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v45, v3 + *(*v3 + 744), &qword_27F229490, &unk_24F984C40);
  v33 = type metadata accessor for InlineUnifiedMessagePresenter();
  v43.receiver = objc_allocWithZone(v33);
  v43.super_class = v33;
  *(v3 + qword_27F39CC08) = objc_msgSendSuper2(&v43, sel_init);

  v35 = sub_24EBBA1F8(v34, 0, 0, 0);
  v36 = *(*v35 + 1112);

  *(v35 + qword_27F39CC00) = v36(0);

  sub_24EBCAA28(0);

  sub_24E601704(v41, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v45, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v32, &qword_27F228530, &unk_24F93C6E0);
  return v35;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F23E0E0;
  if (!qword_27F23E0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2B73D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F2B74FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2B7534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2B759C()
{
  if (*v0)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F2B75E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F2B76C0(uint64_t a1)
{
  v2 = sub_24F2B796C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2B76FC(uint64_t a1)
{
  v2 = sub_24F2B796C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F2B7758@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F2B7788(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_24F2B7788(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E0F0, &qword_24F9DF940);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2B796C();
  sub_24F92D108();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_24F92CC28();
    v10 = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F2B796C()
{
  result = qword_27F23E0F8;
  if (!qword_27F23E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E0F8);
  }

  return result;
}

unint64_t sub_24F2B79D4()
{
  result = qword_27F23E100;
  if (!qword_27F23E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E100);
  }

  return result;
}

unint64_t sub_24F2B7A2C()
{
  result = qword_27F23E108;
  if (!qword_27F23E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E108);
  }

  return result;
}

unint64_t sub_24F2B7A84()
{
  result = qword_27F23E110;
  if (!qword_27F23E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E110);
  }

  return result;
}

void BorderView.borderColor.setter(void *a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    v4 = [a1 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void BorderView.borderWidth.setter(double a1)
{
  v3 = [v1 layer];
  [v3 setBorderWidth_];
}

void BorderView.roundedCorners.setter(char a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 3;
      if ((a1 & 8) == 0)
      {
LABEL_13:
        if ((a1 & 4) != 0 && (v4 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((a1 & 4) != 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = v3;
  [v3 setMaskedCorners_];
}

id BorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BorderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id BorderView.borderColor.getter()
{
  v1 = [v0 layer];
  v2 = [v1 borderColor];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

  return v3;
}

void sub_24F2B7F00(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_24F2B7F94(void **a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  if (v2)
  {
    v4 = [v2 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void (*BorderView.borderColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_24F2B80E0;
}

void sub_24F2B80E0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v4 = [v2 layer];
    if (v6)
    {
      v5 = [v3 CGColor];
    }

    else
    {
      v5 = 0;
    }

    [v4 setBorderColor_];

    v6 = v3;
  }

  else
  {
    v3 = [v2 layer];
    if (v6)
    {
      v4 = [v6 CGColor];
    }

    else
    {
      v4 = 0;
    }

    [v3 setBorderColor_];
  }
}

double BorderView.borderWidth.getter()
{
  v1 = [v0 layer];
  [v1 borderWidth];
  v3 = v2;

  return v3;
}

void sub_24F2B825C(double *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  [v3 setBorderWidth_];
}

void (*BorderView.borderWidth.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a1 = v5;
  return sub_24F2B8340;
}

void sub_24F2B8340(uint64_t a1)
{
  v1 = *a1;
  v2 = [*(a1 + 8) layer];
  [v2 setBorderWidth_];
}

uint64_t BorderView.roundedCorners.getter()
{
  v1 = [v0 layer];
  v2 = [v1 maskedCorners];

  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      result = 3;
      if ((v2 & 8) == 0)
      {
LABEL_13:
        if ((v2 & 4) != 0 && (result & 4) == 0)
        {
          return result | 4;
        }

        return result;
      }

      goto LABEL_12;
    }

    result = 1;
    if ((v2 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      result = 2;
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    result = 0;
    if ((v2 & 8) != 0)
    {
LABEL_12:
      result |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((v2 & 4) != 0)
  {
    return result | 4;
  }

  return result;
}

void (*BorderView.roundedCorners.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 maskedCorners];

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = 2;
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v5 = 0;
    if ((v4 & 8) != 0)
    {
LABEL_12:
      v5 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v4 & 2) == 0)
  {
    v5 = 1;
    if ((v4 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = 3;
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v4 & 4) != 0 && (v5 & 4) == 0)
  {
LABEL_15:
    v5 |= 4uLL;
  }

LABEL_16:
  *a1 = v5;
  return sub_24F2B850C;
}

void sub_24F2B850C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = [a1[1] layer];
  if (a2)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 2;
      if ((v3 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    if ((v3 & 2) != 0)
    {
      v5 = 3;
      if ((v3 & 8) == 0)
      {
LABEL_16:
        if ((v3 & 4) != 0 && (v5 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v5 = 1;
      if ((v3 & 8) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v5 |= 8uLL;
    goto LABEL_16;
  }

  if (v3)
  {
    goto LABEL_10;
  }

  if ((v3 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
LABEL_18:
    v5 |= 4uLL;
  }

LABEL_19:
  v6 = v4;
  [v4 setMaskedCorners_];
}

id BorderView.backgroundColor.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

void BorderView.backgroundColor.setter(void *a1)
{
  sub_24F2B8880();
}

void (*BorderView.backgroundColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [objc_opt_self() clearColor];
  return sub_24F2B8740;
}

void sub_24F2B8740(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_24F2B8880();
  }

  else
  {
    v2 = *a1;
    sub_24F2B8880();
  }
}

uint64_t (*BorderView.clipsToBounds.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = 0;
  return sub_24F2B8824;
}

id BorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F2B8880()
{
  swift_getObjectType();
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD00000000000002BLL, 0x800000024FA72530);
  sub_24F91F6C8();
}

uint64_t _s12GameStoreKit10BorderViewC13clipsToBoundsSbvs_0()
{
  swift_getObjectType();
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA72500);
  sub_24F91F6C8();
}

void sub_24F2B89F8(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_24F2B8A58@<X0>(uint64_t *a1@<X8>)
{
  result = BorderView.roundedCorners.getter();
  *a1 = result;
  return result;
}

uint64_t EditorialQuote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialQuote.attribution.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialQuote.__allocating_init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a5;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E60169C(a1, &v26, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v21 = a6;
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v24 = v15;
    v25 = v17;
    a6 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  v18 = v30;
  *(v14 + 48) = v29;
  *(v14 + 64) = v18;
  *(v14 + 80) = v31;
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(a6, v14 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v19 = v23;
  *(v14 + 32) = v22;
  *(v14 + 40) = v19;
  return v14;
}

uint64_t EditorialQuote.init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v23 = a4;
  v24 = a5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v27, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v22 = a6;
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    v25 = v16;
    v26 = v18;
    a6 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v19 = v31;
  *(v7 + 48) = v30;
  *(v7 + 64) = v19;
  *(v7 + 80) = v32;
  sub_24E65E0D4(a6, v7 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v20 = v24;
  *(v7 + 32) = v23;
  *(v7 + 40) = v20;
  return v7;
}

uint64_t EditorialQuote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F9285B8();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v54 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = 0xE400000000000000;
  sub_24F928398();
  v61 = sub_24F928348();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v18, v9);
  if (!v21)
  {
    v35 = 1954047348;
    v27 = v9;
    v28 = a1;
LABEL_7:
    v36 = v65;
    v37 = sub_24F92AC38();
    sub_24F2B97E4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = v35;
    v38[1] = v19;
    v38[2] = v64;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v67 + 8))(v74, v36);
    v22(v28, v27);
    return v36;
  }

  v63 = v21;
  v19 = 0xEB000000006E6F69;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v26 = v15;
  v27 = v9;
  v22(v26, v9);
  v28 = a1;
  v55 = v25;
  if (!v25)
  {
    v35 = 0x7475626972747461;

    goto LABEL_7;
  }

  v64 = v23;
  sub_24F929608();
  sub_24F928398();
  v29 = v65;
  (*(v67 + 16))(v59, v74, v65);
  sub_24F929548();
  v30 = v60;
  v31 = v28;
  sub_24F928398();
  v32 = sub_24F928348();
  v54 = v22;
  if (v33)
  {
    *&v70 = v32;
    *(&v70 + 1) = v33;
    sub_24F92C7F8();
    v34 = v30;
  }

  else
  {
    v39 = v56;
    sub_24F91F6A8();
    v40 = v30;
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v57 + 8))(v39, v58);
    *&v70 = v41;
    *(&v70 + 1) = v43;
    sub_24F92C7F8();
    v34 = v40;
  }

  v44 = v27;
  v22(v34, v27);
  v45 = v62;
  sub_24E60169C(v66, v62, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for EditorialQuote(0);
  v36 = swift_allocObject();
  sub_24E60169C(v73, &v70, &qword_27F235830, &qword_24F93B8C0);
  v46 = v63;
  if (*(&v71 + 1))
  {
    v47 = v71;
    *(v36 + 48) = v70;
    *(v36 + 64) = v47;
    *(v36 + 80) = v72;
  }

  else
  {
    v48 = v56;
    sub_24F91F6A8();
    v49 = sub_24F91F668();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v68 = v49;
    v69 = v51;
    v46 = v63;
    v29 = v65;
    sub_24F92C7F8();
    sub_24E601704(&v70, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v67 + 8))(v74, v29);
  v54(v31, v44);
  sub_24E601704(v73, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v66, &qword_27F213E68, &unk_24F93BC80);
  sub_24E65E0D4(v45, v36 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics);
  *(v36 + 16) = v61;
  *(v36 + 24) = v46;
  v52 = v55;
  *(v36 + 32) = v64;
  *(v36 + 40) = v52;
  return v36;
}

uint64_t type metadata accessor for EditorialQuote(uint64_t a1)
{
  result = qword_27F23E120;
  if (!qword_27F23E120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialQuote.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t EditorialQuote.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14EditorialQuote_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F2B97E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2B983C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = EditorialQuote.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F2B98AC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t TabsInfoProvider.setupFlowAuthority(asPartOf:selectedTabId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v9 = *(v3 + 6);
  type metadata accessor for ASKBagContract(0);
  v16 = *v3;
  sub_24F928F28();
  v10 = ASKBagContract.tabs(withFallback:bagKey:)(v6, v16);
  v11 = v7(a2, v10);

  v5(a2, v11);
  v17[2] = v6;
  v17[3] = v5;
  v17[4] = v8;
  v17[5] = v7;
  v17[6] = v9;
  sub_24F2BA384(v11);
  v17[0] = v12;
  v17[1] = v13;
  sub_24F92C7F8();

  sub_24E65864C(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8B8, &qword_24F9DD050);
  sub_24F927178();
  sub_24E60169C(a3, v17, &qword_27F23D8B8, &qword_24F9DD050);
  type metadata accessor for FlowAction(0);
  sub_24F2BAAB4(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_24F2BAAB4(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  sub_24F921858();
  sub_24E6585F8(v18);
  return v11;
}

uint64_t TabsInfoProvider.makeTabs(asPartOf:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 5);
  type metadata accessor for ASKBagContract(0);
  v11 = *v2;
  sub_24F928F28();
  v7 = ASKBagContract.tabs(withFallback:bagKey:)(v4, v11);
  v8 = v6(a2, v7);

  v9 = v5(a2, v8);
  sub_24F2BA384(v8);
  sub_24F92C7F8();

  return v9;
}

uint64_t TabsInfoProvider.init(tabsBagKey:defaultTabIdentifiers:fallbackTabs:overrideTabs:tabsToFlowActionsConverter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a6;
  a8[4] = a7;
  a8[5] = a4;
  a8[6] = a5;
  return result;
}

uint64_t sub_24F2B9CCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v9;
  v10 = sub_24F91F9B8();
  v54 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E130, &qword_24F9DFC10);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128, &qword_24F970418);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v53 = a1;
  v24 = sub_24ED0F5A8();
  if (!v25)
  {
    return 0;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_16;
  }

  v46 = v4;
  v47 = v6;
  v48 = v5;
  v49 = v25;
  v45 = v24;
  sub_24F91F9A8();
  v27 = *(v54 + 56);
  v27(v23, 0, 1, v10);
  v28 = sub_24F92B098();
  v29 = [v53 stringForKey_];

  if (v29)
  {
    sub_24F92B0D8();

    sub_24F91F978();
  }

  else
  {
    v27(v20, 1, 1, v10);
  }

  v31 = *(v12 + 48);
  sub_24E60169C(v23, v14, &qword_27F224128, &qword_24F970418);
  sub_24E60169C(v20, &v14[v31], &qword_27F224128, &qword_24F970418);
  v32 = *(v54 + 48);
  if (v32(v14, 1, v10) == 1)
  {
    sub_24E601704(v20, &qword_27F224128, &qword_24F970418);
    sub_24E601704(v23, &qword_27F224128, &qword_24F970418);
    if (v32(&v14[v31], 1, v10) == 1)
    {
      sub_24E601704(v14, &qword_27F224128, &qword_24F970418);
      goto LABEL_19;
    }

LABEL_15:
    sub_24E601704(v14, &qword_27F23E130, &qword_24F9DFC10);
    goto LABEL_16;
  }

  sub_24E60169C(v14, v17, &qword_27F224128, &qword_24F970418);
  if (v32(&v14[v31], 1, v10) == 1)
  {
    sub_24E601704(v20, &qword_27F224128, &qword_24F970418);
    sub_24E601704(v23, &qword_27F224128, &qword_24F970418);
    (*(v54 + 8))(v17, v10);
    goto LABEL_15;
  }

  v33 = v54;
  v34 = &v14[v31];
  v35 = v52;
  (*(v54 + 32))(v52, v34, v10);
  sub_24F2BAAB4(&qword_27F23E138, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
  v36 = sub_24F92AFF8();
  v37 = *(v33 + 8);
  v37(v35, v10);
  sub_24E601704(v20, &qword_27F224128, &qword_24F970418);
  sub_24E601704(v23, &qword_27F224128, &qword_24F970418);
  v37(v17, v10);
  sub_24E601704(v14, &qword_27F224128, &qword_24F970418);
  if ((v36 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = v46;
  sub_24ED0F6A4(v46);
  v40 = v47;
  v39 = v48;
  if ((*(v47 + 48))(v38, 1, v48) == 1)
  {

    sub_24E601704(v38, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  v41 = v50;
  (*(v40 + 32))(v50, v38, v39);
  v42 = v51;
  sub_24F91F638();
  v43 = Date.hasPassed(hourOfDay:since:)(3, v41);
  v44 = *(v40 + 8);
  v44(v42, v39);
  v44(v41, v39);
  if (v43)
  {
LABEL_16:

    return 0;
  }

  return v45;
}

void sub_24F2BA384(uint64_t a1)
{
  v3 = type metadata accessor for StoreTab(0);
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v43 = *(v1 + 40);
    v44 = v8;
    v45 = v7;
    v46 = a1;
    v48 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v11, 0);
    v12 = v48;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *v13;
      if (*v13 <= 4)
      {
        if (v14 <= 1)
        {
          if (v14)
          {
            if (v14 != 1)
            {
LABEL_28:
              v15 = *(v13 - 1);
              v16 = *v13;
              goto LABEL_29;
            }

            v16 = 0xE500000000000000;
            v15 = 0x73656D6167;
          }

          else
          {
            v16 = 0xE500000000000000;
            v15 = 0x7961646F74;
          }
        }

        else
        {
          switch(v14)
          {
            case 2:
              v16 = 0xE400000000000000;
              v15 = 1936748641;
              break;
            case 3:
              v16 = 0xE700000000000000;
              v15 = 0x73657461647075;
              break;
            case 4:
              v16 = 0xE600000000000000;
              v15 = 0x686372616573;
              break;
            default:
              goto LABEL_28;
          }
        }
      }

      else if (v14 > 7)
      {
        switch(v14)
        {
          case 8:
            v16 = 0xE600000000000000;
            v15 = 0x737472616863;
            break;
          case 9:
            v15 = 0x6573616863727570;
            v16 = 0xE900000000000064;
            break;
          case 10:
            v16 = 0xE900000000000073;
            v15 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_28;
        }
      }

      else
      {
        switch(v14)
        {
          case 5:
            v16 = 0xE600000000000000;
            v15 = 0x656461637261;
            break;
          case 6:
            v16 = 0xE800000000000000;
            v15 = 0x6465727574616566;
            break;
          case 7:
            v15 = 0x69726F6765746163;
            v16 = 0xEA00000000007365;
            break;
          default:
            goto LABEL_28;
        }
      }

LABEL_29:
      sub_24E8E2880(*(v13 - 1), v14);
      v48 = v12;
      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_24F4578E0((v17 > 1), v18 + 1, 1);
        v12 = v48;
      }

      v13 += 2;
      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      if (!--v11)
      {
        a1 = v46;
        v8 = v44;
        v7 = v45;
        v9 = v43;
        break;
      }
    }
  }

  v48 = v6;
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_24F2B9CCC(v20);
  v23 = v22;

  if (v23)
  {
    v25 = *(v12 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v25 >= *(v12 + 3) >> 1)
    {
      v12 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v12);
      v52 = v12;
    }

    sub_24EDAB2A8(0, 0, 1, v21, v23);
  }

  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v48 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v27, 0);
    v28 = v48;
    v30 = a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v31 = *(v47 + 72);
    do
    {
      sub_24E9E8284(v30, v5, v29);
      v32 = v5[1];
      if (v32 <= 4)
      {
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            v34 = 0xE400000000000000;
            v33 = 1936748641;
          }

          else if (v32 == 3)
          {
            v34 = 0xE700000000000000;
            v33 = 0x73657461647075;
          }

          else
          {
            v34 = 0xE600000000000000;
            v33 = 0x686372616573;
          }

          goto LABEL_64;
        }

        if (v32)
        {
          if (v32 != 1)
          {
LABEL_63:
            v33 = *v5;
            v34 = v5[1];
            goto LABEL_64;
          }

          v34 = 0xE500000000000000;
          v33 = 0x73656D6167;
        }

        else
        {
          v34 = 0xE500000000000000;
          v33 = 0x7961646F74;
        }
      }

      else
      {
        if (v32 <= 7)
        {
          if (v32 == 5)
          {
            v34 = 0xE600000000000000;
            v33 = 0x656461637261;
          }

          else if (v32 == 6)
          {
            v34 = 0xE800000000000000;
            v33 = 0x6465727574616566;
          }

          else
          {
            v33 = 0x69726F6765746163;
            v34 = 0xEA00000000007365;
          }

          goto LABEL_64;
        }

        switch(v32)
        {
          case 8:
            v34 = 0xE600000000000000;
            v33 = 0x737472616863;
            break;
          case 9:
            v33 = 0x6573616863727570;
            v34 = 0xE900000000000064;
            break;
          case 10:
            v34 = 0xE900000000000073;
            v33 = 0x64616F6C6E776F64;
            break;
          default:
            goto LABEL_63;
        }
      }

LABEL_64:
      v35.n128_f64[0] = sub_24E8E2880(*v5, v32);
      v24 = sub_24E9E834C(v5, v35);
      v48 = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        v24 = sub_24F4578E0((v36 > 1), v37 + 1, 1);
        v28 = v48;
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v34;
      v30 += v31;
      --v27;
    }

    while (v27);
  }

  v39 = *(v12 + 2);
  if (v39)
  {
    v40 = 0;
    v41 = (v12 + 40);
    while (v40 < *(v12 + 2))
    {
      v42 = *v41;
      v48 = *(v41 - 1);
      *&v49 = v42;
      MEMORY[0x28223BE20](v24);
      *(&v43 - 2) = &v48;

      if (sub_24E6159B8(sub_24E7FA94C, (&v43 - 2), v28))
      {

        goto LABEL_75;
      }

      ++v40;
      v41 += 2;
      if (v39 == v40)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_72:

    if (*(v28 + 16))
    {
    }

LABEL_75:
  }
}

uint64_t sub_24F2BAA10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F2BAA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F2BAAB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F2BAAFC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8618B8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24F2BD558(v5);
  *a1 = v2;
  return result;
}

void *TodayCardTriggerController.__allocating_init(builder:bag:fastExpirationEnabled:persistantStore:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v107 = a4;
  v98 = a2;
  v111 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = v91 - v6;
  v97 = sub_24F92BEE8();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v94 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24F92BE88();
  v91[1] = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v91 - v13;
  v15 = sub_24F9288E8();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F91F648();
  isUniquelyReferenced_nonNull_native = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = v91 - v22;
  sub_24F91F638();
  if (a3)
  {
    v23 = 60.0;
  }

  else
  {
    if (qword_27F210940 != -1)
    {
LABEL_63:
      swift_once();
    }

    (*(v16 + 104))(v18, *MEMORY[0x277D21C38], v15);
    sub_24F92A368();
    v24 = *(v16 + 8);
    v16 += 8;
    v24(v18, v15);
    sub_24F92A408();
    (*(v12 + 8))(v14, v11);
    v23 = *&v117;
  }

  v12 = 0;
  v14 = 0;
  v104 = (isUniquelyReferenced_nonNull_native + 48);
  v99 = (isUniquelyReferenced_nonNull_native + 32);
  v15 = MEMORY[0x277D84F98];
  v102 = (isUniquelyReferenced_nonNull_native + 8);
  v110 = xmmword_24F950E90;
  v100 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  do
  {
    v18 = byte_2861C1FE0[v12 + 32];
    v25 = v111[3];
    v26 = v111[4];
    __swift_project_boxed_opaque_existential_1(v111, v25);
    LOBYTE(v112[0]) = v18;
    v11 = 0;
    (*(v26 + 8))(&v114, v112, v25, v26);
    if (v115)
    {
      sub_24E612E28(&v114, &v117);
      v27 = v107[3];
      v28 = v107[4];
      __swift_project_boxed_opaque_existential_1(v107, v27);
      LOBYTE(v114) = v18;
      v29 = v106;
      (*(v28 + 16))(&v114, v27, v28);
      v30 = v109;
      if ((*v104)(v29, 1, v109) == 1)
      {
        sub_24E601704(v29, &unk_27F22EC30, &qword_24F939880);
        sub_24E615E00(&v117, &v114);
        v31 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_24E61A188(0, v31[2] + 1, 1, v31);
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          v31 = sub_24E61A188((v32 > 1), v33 + 1, 1, v31);
        }

        v31[2] = v33 + 1;
        v108 = v31;
        v34 = &v31[5 * v33];
        goto LABEL_40;
      }

      (*v99)(v105, v29, v30);
      sub_24F91F558();
      v43 = v42;
      v44 = v118;
      v45 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, v118);
      if (v43 <= v23)
      {
        if (((*(v45 + 48))(v44, v45) & 1) == 0)
        {
          sub_24E615E00(&v117, &v114);
          v59 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_24E61A188(0, v59[2] + 1, 1, v59);
          }

          v61 = v59[2];
          v60 = v59[3];
          if (v61 >= v60 >> 1)
          {
            v59 = sub_24E61A188((v60 > 1), v61 + 1, 1, v59);
          }

          v59[2] = v61 + 1;
          v108 = v59;
          sub_24E612E28(&v114, &v59[5 * v61 + 4]);
          v62 = v118;
          v63 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, v118);
          (*(v63 + 40))(v62, v63);
          goto LABEL_46;
        }

        sub_24E615E00(&v117, &v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_24E61A188(0, v101[2] + 1, 1, v101);
        }

        v54 = v101[2];
        v53 = v101[3];
        v55 = v54 + 1;
        if (v54 >= v53 >> 1)
        {
          v101 = sub_24E61A188((v53 > 1), v54 + 1, 1, v101);
        }

        (*v102)(v105, v109);
        v56 = &v121;
      }

      else
      {
        if ((*(v45 + 56))(v44, v45))
        {
          sub_24E615E00(&v117, &v114);
          v46 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_24E61A188(0, v46[2] + 1, 1, v46);
          }

          v48 = v46[2];
          v47 = v46[3];
          if (v48 >= v47 >> 1)
          {
            v46 = sub_24E61A188((v47 > 1), v48 + 1, 1, v46);
          }

          v46[2] = v48 + 1;
          v108 = v46;
          sub_24E612E28(&v114, &v46[5 * v48 + 4]);
LABEL_46:
          v64 = v107[3];
          v65 = v107[4];
          __swift_project_boxed_opaque_existential_1(v107, v64);
          v16 = v118;
          v66 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, v118);
          (*(v66 + 8))(&v114, v16, v66);
          (*(v65 + 24))(&v114, v64, v65);
          (*v102)(v105, v109);
          goto LABEL_47;
        }

        sub_24E615E00(&v117, &v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_24E61A188(0, v100[2] + 1, 1, v100);
        }

        v54 = v100[2];
        v57 = v100[3];
        v55 = v54 + 1;
        if (v54 >= v57 >> 1)
        {
          v100 = sub_24E61A188((v57 > 1), v54 + 1, 1, v100);
        }

        (*v102)(v105, v109);
        v56 = &v120;
      }

      v58 = *(v56 - 32);
      *(v58 + 16) = v55;
      v34 = (v58 + 40 * v54);
LABEL_40:
      sub_24E612E28(&v114, (v34 + 4));
LABEL_47:
      __swift_destroy_boxed_opaque_existential_1(&v117);
      goto LABEL_6;
    }

    sub_24E601704(&v114, &qword_27F23E148, &qword_24F9DFC20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v15;
    v35 = sub_24E76EAD8(v18);
    v37 = v15[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v11 = v36;
    if (v15[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = v35;
        sub_24E8B68B0();
        v35 = v67;
        v15 = v117;
        if (v11)
        {
LABEL_27:
          v49 = v15[7] + 24 * v35;
          v50 = *v49;
          v51 = *(v49 + 8);
          *v49 = v110;
          v52 = *(v49 + 16);
          *(v49 + 16) = 3;
          sub_24EC7B180(v50, v51, v52);
          goto LABEL_6;
        }

        goto LABEL_49;
      }
    }

    else
    {
      sub_24E8A8F14(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_24E76EAD8(v18);
      if ((v11 & 1) != (v41 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }
    }

    v15 = v117;
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_49:
    v15[(v35 >> 6) + 8] |= 1 << v35;
    *(v15[6] + v35) = v18;
    v68 = v15[7] + 24 * v35;
    *v68 = v110;
    *(v68 + 16) = 3;
    v69 = v15[2];
    v39 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v39)
    {
      goto LABEL_62;
    }

    v15[2] = v70;
LABEL_6:
    ++v12;
  }

  while (v12 != 4);
  sub_24E615E00(v107, &v117);
  type metadata accessor for TodayCardTriggerController();
  v71 = swift_allocObject();
  sub_24E74EC40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  *&v114 = v72;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v96 + 104))(v95, *MEMORY[0x277D85260], v97);
  v73 = sub_24F92BF38();
  v74 = v108;
  v71[9] = v108;
  v75 = MEMORY[0x277D84F90];
  v71[10] = MEMORY[0x277D84F90];
  v71[11] = v75;
  v76 = v101;
  v77 = v100;
  v71[12] = v101;
  v71[13] = v77;
  v71[7] = v73;
  v71[8] = v15;
  sub_24E615E00(&v117, (v71 + 2));
  if (v74[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E140, &qword_24F9DFC18);
    v78 = sub_24F92A9E8();
  }

  else
  {
    v79 = v76[2];
    v80 = MEMORY[0x277D84F90];
    if (v79)
    {
      v113 = MEMORY[0x277D84F90];

      sub_24F45814C(0, v79, 0);
      v80 = v113;
      v81 = (v76 + 4);
      do
      {
        sub_24E615E00(v81, &v114);
        v82 = v115;
        v83 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, v115);
        (*(v83 + 16))(v112, v82, v83);
        __swift_destroy_boxed_opaque_existential_1(&v114);
        v84 = v112[0];
        v85 = v112[1];
        v113 = v80;
        v87 = *(v80 + 16);
        v86 = *(v80 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_24F45814C((v86 > 1), v87 + 1, 1);
          v80 = v113;
        }

        *(v80 + 16) = v87 + 1;
        v88 = v80 + 16 * v87;
        *(v88 + 32) = v84;
        *(v88 + 40) = v85;
        v81 += 40;
        --v79;
      }

      while (v79);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E140, &qword_24F9DFC18);
    *&v114 = v80;
    v78 = sub_24F92A988();
  }

  v89 = v78;

  __swift_destroy_boxed_opaque_existential_1(&v117);
  (*v102)(v103, v109);
  v71[14] = v89;
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v111);
  return v71;
}

uint64_t sub_24F2BBD44()
{
  sub_24F2BBFE4();
}

uint64_t sub_24F2BBD70(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E150, &qword_24F9DFC28);
  sub_24F92BF18();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  TriggerPersistantStore.markTriggersSeen(_:)(v7[0]);
  v2 = *(v7[0]._rawValue + 2);
  if (v2)
  {
    v3 = v7[0]._rawValue + 32;
    do
    {
      sub_24E615E00(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 32))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

double sub_24F2BBE7C@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E158, &qword_24F9DFC30);
  sub_24F92BF18();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

void sub_24F2BBF00(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[8];
  swift_beginAccess();
  v5 = a1[9];
  swift_beginAccess();
  v6 = a1[10];
  swift_beginAccess();
  *&v7 = v6;
  v8 = a1[12];
  *(&v7 + 1) = a1[11];
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *a2 = v9;
  *(a2 + 16) = v7;
  v10 = a1[13];
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
}

double sub_24F2BBFE4()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 56);
  aBlock[4] = sub_24F2BD45C;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_137;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v12 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);

  return result;
}

void sub_24F2BC284(uint64_t a1)
{
  v2 = sub_24F927D88();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927D98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = *(v12 + 16);
  if (v13)
  {
    v33 = sub_24E74EC40();
    v32 = v2;
    v31 = v4;
    v30 = v8;
    v14 = v12 + 32;
    v29 = *MEMORY[0x277D851C8];
    v28 = (v9 + 104);
    v27 = (v9 + 8);
    v26 = v37;
    v25 = (v34 + 8);
    ++v24;
    v22 = v12;

    v23 = v11;
    do
    {
      sub_24E615E00(v14, v39);
      v15 = v23;
      v16 = v30;
      (*v28)(v23, v29, v30);
      v34 = sub_24F92BF48();
      (*v27)(v15, v16);
      sub_24E612E28(v39, v38);
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      sub_24E612E28(v38, v17 + 24);
      v37[2] = sub_24F2BD480;
      v37[3] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v37[0] = sub_24EAF8248;
      v37[1] = &block_descriptor_20_3;
      v18 = _Block_copy(aBlock);

      sub_24F927DA8();
      v35 = MEMORY[0x277D84F90];
      sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v19 = v31;
      v20 = v32;
      sub_24F92C6A8();
      v21 = v34;
      MEMORY[0x2530518B0](0, v7, v19, v18);
      _Block_release(v18);

      (*v25)(v19, v20);
      (*v24)(v7, v5);

      v14 += 40;
      --v13;
    }

    while (v13);
  }
}

double sub_24F2BC784(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_24E612E28(v9, v6 + 24);
  v7 = *(v4 + 24);

  v7(sub_24F2BD504, v6, v3, v4);

  return result;
}

double sub_24F2BC884(char a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v21 = v5;
    v16 = a3[3];
    v17 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v16);
    (*(v17 + 8))(&v23, v16, v17);
    LOBYTE(v16) = v23;
    sub_24F927D78();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    *(v18 + 25) = a1 & 1;
    aBlock[4] = sub_24F2BD548;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_32;
    v19 = _Block_copy(aBlock);

    sub_24F927DA8();
    MEMORY[0x2530518B0](0, v8, v12, v19);
    _Block_release(v19);
    (*(v6 + 8))(v8, v21);
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_24F2BCB24(void *a1, void *a2, char a3)
{
  swift_beginAccess();
  v6 = a1[9];
  v45 = *(v6 + 16);
  if (v45)
  {
    v44 = a1;
    v7 = v6 + 32;
    v8 = 0x800000024FA42E60;

    v9 = 0;
    v10 = a2;
    while (1)
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_66;
      }

      sub_24E615E00(v7, v51);
      v11 = v52;
      v12 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      (*(v12 + 8))(&v48, v11, v12);
      v13 = 0xD000000000000013;
      v14 = v48 == 2 ? 0x686374615777656ELL : 0xD000000000000013;
      v15 = v48 == 2 ? 0xEF676E6972696150 : 0x800000024FA42E60;
      v16 = v48 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v17 = v48 ? 0x800000024FA42E30 : 0xED000065726F7453;
      v18 = v48 <= 1u ? v16 : v14;
      a2 = (v48 <= 1u ? v17 : v15);
      if (v10 == 2)
      {
        v13 = 0x686374615777656ELL;
        v19 = 0xEF676E6972696150;
      }

      else
      {
        v19 = 0x800000024FA42E60;
      }

      v20 = v10 ? 0xD000000000000010 : 0x7070416F5477656ELL;
      v21 = v10 ? 0x800000024FA42E30 : 0xED000065726F7453;
      v22 = v10 <= 1 ? v20 : v13;
      v23 = (v10 <= 1 ? v21 : v19);
      if (v18 == v22 && a2 == v23)
      {
        break;
      }

      v24 = sub_24F92CE08();

      __swift_destroy_boxed_opaque_existential_1(v51);
      if (v24)
      {
        goto LABEL_43;
      }

      ++v9;
      v7 += 40;
      if (v45 == v9)
      {
        goto LABEL_63;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_43:

    v8 = a1;
    swift_beginAccess();
    sub_24EA0EAC0(v9, v51);
    swift_endAccess();
    if (a3)
    {
      sub_24E615E00(v51, &v48);
      swift_beginAccess();
      a2 = a1[11];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1[11] = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_45:
        v27 = a2[2];
        v26 = a2[3];
        if (v27 >= v26 >> 1)
        {
          a2 = sub_24E61A188((v26 > 1), v27 + 1, 1, a2);
        }

        a2[2] = v27 + 1;
        sub_24E612E28(&v48, &a2[5 * v27 + 4]);
        v8[11] = a2;
        goto LABEL_53;
      }

LABEL_66:
      a2 = sub_24E61A188(0, a2[2] + 1, 1, a2);
      v8[11] = a2;
      goto LABEL_45;
    }

    sub_24E615E00(v51, &v48);
    swift_beginAccess();
    v28 = a1[10];
    v29 = swift_isUniquelyReferenced_nonNull_native();
    a1[10] = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_24E61A188(0, v28[2] + 1, 1, v28);
      a1[10] = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_24E61A188((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_24E612E28(&v48, &v28[5 * v31 + 4]);
    v44[10] = v28;
LABEL_53:
    swift_endAccess();
    if (*(v8[9] + 16))
    {
      __swift_destroy_boxed_opaque_existential_1(v51);
      return;
    }

    swift_beginAccess();
    *&v48 = v8[11];

    sub_24EA0C184(v32);

    sub_24F2BAAFC(&v48);

    v33 = v48;
    v34 = *(v48 + 16);
    if (v34)
    {
      v47 = MEMORY[0x277D84F90];
      sub_24F45814C(0, v34, 0);
      v35 = v47;
      v36 = v33 + 32;
      do
      {
        sub_24E615E00(v36, &v48);
        v37 = v49;
        v38 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, v49);
        (*(v38 + 16))(v46, v37, v38);
        __swift_destroy_boxed_opaque_existential_1(&v48);
        v39 = v46[0];
        v40 = v46[1];
        v47 = v35;
        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_24F45814C((v41 > 1), v42 + 1, 1);
          v35 = v47;
        }

        *(v35 + 16) = v42 + 1;
        v43 = v35 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
        v36 += 40;
        --v34;
      }

      while (v34);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    *&v48 = v35;
    sub_24F92A9C8();
    __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_63:
  }
}

void sub_24F2BD054(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = *(a1 + 16);
  if (v23)
  {
    v22 = a1 + 32;
    swift_beginAccess();
    v4 = 0;
    v24 = MEMORY[0x277D84F90];
    v21 = a2;
    do
    {
      v30 = v4;
      v6 = (v22 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = *(a2 + 88);
      v10 = *(v9 + 16);

      if (v10)
      {
        v11 = 0;
        v12 = v9 + 32;
        while (1)
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return;
          }

          sub_24E615E00(v12, &v27);
          v13 = v28;
          v14 = v29;
          __swift_project_boxed_opaque_existential_1(&v27, v28);
          (*(v14 + 16))(v25, v13, v14);
          if (v25[0] == v8 && v25[1] == v7)
          {

            goto LABEL_17;
          }

          v16 = sub_24F92CE08();

          if (v16)
          {
            break;
          }

          ++v11;
          __swift_destroy_boxed_opaque_existential_1(&v27);
          v12 += 40;
          if (v10 == v11)
          {
            goto LABEL_3;
          }
        }

LABEL_17:

        sub_24E612E28(&v27, v26);
        sub_24E612E28(v26, &v27);
        sub_24E615E00(&v27, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a2 = v21;
        v5 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_24E61A188(0, v24[2] + 1, 1, v24);
        }

        v19 = v24[2];
        v18 = v24[3];
        if (v19 >= v18 >> 1)
        {
          v24 = sub_24E61A188((v18 > 1), v19 + 1, 1, v24);
        }

        __swift_destroy_boxed_opaque_existential_1(&v27);
        v24[2] = v19 + 1;
        sub_24E612E28(v26, &v24[5 * v19 + 4]);
      }

      else
      {
LABEL_3:

        a2 = v21;
        v5 = v30;
      }

      v4 = v5 + 1;
    }

    while (v4 != v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  *a3 = v24;
}

uint64_t TodayCardTriggerController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t TodayCardTriggerController.__deallocating_deinit()
{
  TodayCardTriggerController.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2BD48C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_60()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24F2BD510()
{

  return swift_deallocObject();
}

uint64_t sub_24F2BD558(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A20, &qword_24F93B5D8);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24F2BD7B4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24F2BD660(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24F2BD660(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_24E615E00(v8, &v21);
      sub_24E615E00(v8 - 40, v18);
      v9 = v22;
      v10 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v11 = TodayCardTrigger.displayRank.getter(v9, v10);
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = TodayCardTrigger.displayRank.getter(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (v11 >= v14)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 += 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_24E612E28(v8, &v21);
      v15 = *(v8 - 24);
      *v8 = *(v8 - 40);
      *(v8 + 16) = v15;
      *(v8 + 32) = *(v8 - 8);
      result = sub_24E612E28(&v21, v8 - 40);
      v8 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F2BD7B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24E86164C(v8);
      v8 = result;
    }

    v118 = v8;
    v95 = *(v8 + 16);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = *(v8 + 16 * v95);
        v97 = v8;
        v98 = *(v8 + 16 * (v95 - 1) + 32);
        v8 = *(v8 + 16 * (v95 - 1) + 40);
        sub_24F2BDF44((*a3 + 40 * v96), (*a3 + 40 * v98), *a3 + 40 * v8, v7);
        if (v5)
        {
        }

        if (v8 < v96)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_24E86164C(v97);
        }

        if (v95 - 2 >= *(v97 + 2))
        {
          goto LABEL_116;
        }

        v99 = &v97[16 * v95];
        *v99 = v96;
        *(v99 + 1) = v8;
        v118 = v97;
        result = sub_24E8615C0(v95 - 1);
        v8 = v118;
        v95 = *(v118 + 16);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v20 = v7 + 1;
    }

    else
    {
      v110 = v6;
      v102 = v5;
      v10 = *a3;
      sub_24E615E00(*a3 + 40 * (v7 + 1), &v115);
      v11 = 40 * v7;
      v12 = v10 + 40 * v7;
      sub_24E615E00(v12, v112);
      v13 = v116;
      v14 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v107 = TodayCardTrigger.displayRank.getter(v13, v14);
      v15 = v113;
      v16 = v114;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v17 = TodayCardTrigger.displayRank.getter(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v112);
      result = __swift_destroy_boxed_opaque_existential_1(&v115);
      v104 = v7;
      v18 = v7 + 2;
      v19 = v12 + 80;
      while (1)
      {
        v20 = v110;
        if (v110 == v18)
        {
          break;
        }

        sub_24E615E00(v19, &v115);
        sub_24E615E00(v19 - 40, v112);
        v21 = v116;
        v22 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v23 = TodayCardTrigger.displayRank.getter(v21, v22);
        v24 = v113;
        v7 = v114;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v25 = TodayCardTrigger.displayRank.getter(v24, v7);
        __swift_destroy_boxed_opaque_existential_1(v112);
        result = __swift_destroy_boxed_opaque_existential_1(&v115);
        ++v18;
        v19 += 40;
        if (v107 < v17 == v23 >= v25)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v5 = v102;
      v9 = v104;
      if (v107 < v17)
      {
        if (v20 < v104)
        {
          goto LABEL_119;
        }

        if (v104 < v20)
        {
          v26 = v8;
          v27 = 40 * v20 - 40;
          v28 = v20;
          v29 = v20;
          do
          {
            if (v9 != --v29)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v30 = v33 + v11;
              v7 = v33 + v27;
              sub_24E612E28((v33 + v11), &v115);
              v31 = *(v7 + 32);
              v32 = *(v7 + 16);
              *v30 = *v7;
              *(v30 + 16) = v32;
              *(v30 + 32) = v31;
              result = sub_24E612E28(&v115, v7);
            }

            ++v9;
            v27 -= 40;
            v11 += 40;
          }

          while (v9 < v29);
          v8 = v26;
          v9 = v104;
          v20 = v28;
        }
      }
    }

    v34 = a3[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v9))
      {
        goto LABEL_118;
      }

      if (v20 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v34)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v7)
        {
          break;
        }
      }
    }

    v7 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v36 = *(v8 + 16);
    v35 = *(v8 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_24E615ED8((v35 > 1), v36 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 16 * v36;
    *(v38 + 32) = v9;
    *(v38 + 40) = v7;
    v39 = *v106;
    if (!*v106)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v8 + 32);
          v42 = *(v8 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_48:
          if (v44)
          {
            goto LABEL_106;
          }

          v57 = (v8 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = (v8 + 32 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_113;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v67 = (v8 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_62:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = v8 + 16 * v40;
        v72 = *(v70 + 32);
        v71 = *(v70 + 40);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_111;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_69:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = *(v8 + 32 + 16 * v78);
        v80 = *(v8 + 32 + 16 * v40 + 8);
        sub_24F2BDF44((*a3 + 40 * v79), (*a3 + 40 * *(v8 + 32 + 16 * v40)), *a3 + 40 * v80, v39);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v78 >= *(v8 + 16))
        {
          goto LABEL_103;
        }

        v81 = v8 + 16 * v78;
        *(v81 + 32) = v79;
        *(v81 + 40) = v80;
        v118 = v8;
        result = sub_24E8615C0(v40);
        v8 = v118;
        v37 = *(v118 + 16);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = v8 + 32 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_104;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_105;
      }

      v52 = (v8 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_107;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = (v8 + 32 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_114;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v100 = v8;
  v103 = v5;
  v105 = v9;
  v82 = *a3;
  v83 = *a3 + 40 * v20;
  v84 = v9 - v20;
  v108 = v7;
LABEL_81:
  v111 = v20;
  v85 = v84;
  v86 = v83;
  while (1)
  {
    sub_24E615E00(v86, &v115);
    sub_24E615E00(v86 - 40, v112);
    v87 = v116;
    v88 = v117;
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v89 = TodayCardTrigger.displayRank.getter(v87, v88);
    v90 = v113;
    v91 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    v92 = TodayCardTrigger.displayRank.getter(v90, v91);
    __swift_destroy_boxed_opaque_existential_1(v112);
    result = __swift_destroy_boxed_opaque_existential_1(&v115);
    if (v89 >= v92)
    {
LABEL_80:
      v20 = v111 + 1;
      v83 += 40;
      --v84;
      v7 = v108;
      if (v111 + 1 != v108)
      {
        goto LABEL_81;
      }

      v5 = v103;
      v9 = v105;
      v8 = v100;
      if (v108 < v105)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    sub_24E612E28(v86, &v115);
    v93 = *(v86 - 24);
    *v86 = *(v86 - 40);
    *(v86 + 16) = v93;
    *(v86 + 32) = *(v86 - 8);
    sub_24E612E28(&v115, v86 - 40);
    v86 -= 40;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24F2BDF44(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v49 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v24 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v25 = (v5 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v26 + 40);
        v29 = (v4 + 40);
        sub_24E615E00(v26, v46);
        v5 = v25;
        sub_24E615E00(v25, v43);
        v30 = v47;
        v31 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v32 = TodayCardTrigger.displayRank.getter(v30, v31);
        v34 = v44;
        v33 = v45;
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v35 = TodayCardTrigger.displayRank.getter(v34, v33);
        __swift_destroy_boxed_opaque_existential_1(v43);
        __swift_destroy_boxed_opaque_existential_1(v46);
        if (v32 < v35)
        {
          break;
        }

        v13 = v49;
        if (v29 != v12)
        {
          v36 = *v26;
          v37 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v36;
          *(v4 + 16) = v37;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v28 = v26 > v13;
        v26 -= 40;
        v25 = v5;
        if (!v28)
        {
          v12 = (v27 + 40);
          v24 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v49;
      v24 = v5;
      if (v29 != __dsta)
      {
        v38 = *v5;
        v39 = *(v5 + 1);
        *(v4 + 32) = *(v5 + 4);
        *v4 = v38;
        *(v4 + 16) = v39;
      }

      if (v12 <= v13 || v5 <= v6)
      {
        v12 = (v26 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v24 = v6;
    v13 = v49;
    goto LABEL_35;
  }

  v13 = v49;
  do
  {
    sub_24E615E00(v5, v46);
    sub_24E615E00(v13, v43);
    v14 = v47;
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v16 = TodayCardTrigger.displayRank.getter(v14, v15);
    v17 = v44;
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v19 = TodayCardTrigger.displayRank.getter(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (v16 < v19)
    {
      v20 = v5;
      v21 = v6 == v5;
      v5 += 40;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = *v20;
      v23 = *(v20 + 1);
      *(v6 + 4) = *(v20 + 4);
      *v6 = v22;
      *(v6 + 1) = v23;
      goto LABEL_14;
    }

    v20 = v13;
    v21 = v6 == v13;
    v13 += 40;
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v24 = v6;
LABEL_35:
  v40 = (v12 - v13) / 40;
  if (v24 != v13 || v24 >= &v13[40 * v40])
  {
    memmove(v24, v13, 40 * v40);
  }

  return 1;
}

void sub_24F2BE2E4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30);
    sub_24ECFF898();
    sub_24F92BAE8();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &qword_27F23E1B0, 0x277CF7D30), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_24:
      sub_24E6586B4(v1);
      return;
    }

LABEL_17:
    v12 = [v11 type];
    v13 = v12 - 1;
    if ((v12 - 1) <= 2)
    {
      v14 = [v11 value];
      v19 = sub_24F92B0D8();
      v20 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E6189EC(0, *(v21 + 2) + 1, 1, v21);
      }

      v17 = *(v21 + 2);
      v16 = *(v21 + 3);
      if (v17 >= v16 >> 1)
      {
        v21 = sub_24E6189EC((v16 > 1), v17 + 1, 1, v21);
      }

      *(v21 + 2) = v17 + 1;
      v18 = &v21[24 * v17];
      v18[32] = v13;
      *(v18 + 5) = v19;
      *(v18 + 6) = v20;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_24F2BE598(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_24F92C738();
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x253052270](v3, a1);
    }

    else
    {
      if (v3 >= *(v13 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_24F92B0D8();
    v9 = v8;

    LOBYTE(v6) = sub_24ED7C5F0(&v12, v7, v9);

    if ((v6 & 1) == 0)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_24F2BE704(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_24F2BE760@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 providerManager];

  v9 = [v3 defaultProvider];
  v4 = [v3 providers];
  sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
  v5 = sub_24F92B5A8();

  v6 = [v3 faceTimeProvider];
  v7 = [v3 telephonyProvider];

  *a1 = v3;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;

  return v9;
}

void sub_24F2BE8A0(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v75 = a3;
  v3 = a1[1];
  v88 = *a1;
  v4 = a1[2];
  v82 = a1[3];
  v83 = v3;
  v84 = a1[4];
  v85 = v4;
  v5 = a1[6];
  v76 = a1[7];
  v77 = v5;
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v78 = a2[2];
  v79 = v6;
  v9 = a2[4];
  v72 = a2[5];
  v73 = v9;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 providerManager];

  if (v7)
  {

    v12 = v8;
  }

  else
  {
    v13 = [v11 providers];
    sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
    v12 = sub_24F92B5A8();
  }

  v91 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v80 = v11;
    v81 = v7;
    v74 = v8;
    if (i)
    {
      v15 = 0;
      v7 = 0;
      v86 = v12 & 0xFFFFFFFFFFFFFF8;
      v87 = v12 & 0xC000000000000001;
      while (1)
      {
        if (v87)
        {
          v16 = MEMORY[0x253052270](v15, v12);
        }

        else
        {
          if (v15 >= *(v86 + 16))
          {
            goto LABEL_55;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v8 = v12;
        v19 = [v16 identifier];
        v20 = sub_24F92B0D8();
        v22 = v21;

        v89 = v20;
        v90 = v22;
        MEMORY[0x28223BE20](v23);
        v71 = &v89;
        v11 = sub_24E6159B8(sub_24E7FA94C, v70, v88);

        if (v11)
        {
          v11 = &v91;
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        else
        {
        }

        ++v15;
        if (v18 == i)
        {
          v11 = v91;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v7 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_19:

    if (!v85)
    {
      break;
    }

    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      v24 = sub_24F92C738();

      if (!v24)
      {
LABEL_60:

        v26 = 0;
LABEL_61:
        v55 = v26;
        if (!v84)
        {
          goto LABEL_42;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v24 = *(v11 + 16);

      if (!v24)
      {
        goto LABEL_60;
      }
    }

    v12 = 0;
    v8 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v25 = MEMORY[0x253052270](v12, v11);
      }

      else
      {
        if (v12 >= *(v11 + 16))
        {
          goto LABEL_57;
        }

        v25 = *(v11 + 8 * v12 + 32);
      }

      v26 = v25;
      v27 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v28 = [v25 identifier];
      v29 = sub_24F92B0D8();
      v31 = v30;

      if (v29 == v83 && v85 == v31)
      {

LABEL_53:

        goto LABEL_61;
      }

      v33 = sub_24F92CE08();

      if (v33)
      {
        goto LABEL_53;
      }

      ++v12;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  if (v81 && v79)
  {
    v34 = v79;
  }

  else
  {
    v34 = [v80 defaultProvider];
  }

  v26 = v34;
  v35 = [v34 identifier];
  v36 = sub_24F92B0D8();
  v38 = v37;

  v89 = v36;
  v90 = v38;
  MEMORY[0x28223BE20](v39);
  v71 = &v89;
  LOBYTE(v35) = sub_24E6159B8(sub_24E7FAFB0, v70, v88);

  if (v35)
  {
    goto LABEL_61;
  }

  v26 = 0;
  if (v84)
  {
LABEL_62:

    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      goto LABEL_82;
    }

    for (j = *(v11 + 16); j; j = sub_24F92C738())
    {
      v57 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x253052270](v57, v11);
        }

        else
        {
          if (v57 >= *(v11 + 16))
          {
            goto LABEL_81;
          }

          v58 = *(v11 + 8 * v57 + 32);
        }

        v41 = v58;
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v60 = [v58 identifier];
        v61 = sub_24F92B0D8();
        v63 = v62;

        if (v61 == v82 && v84 == v63)
        {

LABEL_79:

          goto LABEL_84;
        }

        v65 = sub_24F92CE08();

        if (v65)
        {
          goto LABEL_79;
        }

        ++v57;
        if (v59 == j)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      ;
    }

LABEL_83:

    v41 = 0;
    goto LABEL_84;
  }

LABEL_42:
  if (v81 && v78)
  {
    v40 = v78;
  }

  else
  {
    v40 = [v80 defaultProvider];
  }

  v41 = v40;
  if (![v40 supportsAudioAndVideo])
  {

LABEL_50:
    v41 = 0;
    v47 = v80;
    v48 = v81;
    if (v81)
    {
      goto LABEL_85;
    }

LABEL_51:
    v49 = v47;
    v50 = [v49 faceTimeProvider];
    v51 = v47;
    v52 = [v49 telephonyProvider];

    v53 = v26;
    v54 = v41;
    goto LABEL_86;
  }

  v42 = [v41 identifier];
  v43 = sub_24F92B0D8();
  v45 = v44;

  v89 = v43;
  v90 = v45;
  MEMORY[0x28223BE20](v46);
  v71 = &v89;
  LOBYTE(v42) = sub_24E6159B8(sub_24E7FAFB0, v70, v88);

  if ((v42 & 1) == 0)
  {

    goto LABEL_50;
  }

LABEL_84:
  v66 = v41;
  v47 = v80;
  v48 = v81;
  if (!v81)
  {
    goto LABEL_51;
  }

LABEL_85:
  v67 = v73;
  v50 = v73;
  v68 = v72;
  v51 = v47;
  v52 = v72;
  sub_24F2D4698(v48, v79, v78, v74, v67, v68);
  v53 = v41;
  v54 = v26;
LABEL_86:

  v69 = v75;
  *v75 = v51;
  v69[1] = v26;
  v69[2] = v41;
  v69[3] = v11;
  v69[4] = v50;
  v69[5] = v52;
}

void sub_24F2BF054(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Score(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v36 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v37 = a3;
    v55 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_24F2CC85C(v55, &v36 - v11, type metadata accessor for Score);
    if (v14 == 1)
    {
LABEL_3:
      v15 = v37;
      sub_24F2CC924(v13, v37, type metadata accessor for Score);
      (*(v7 + 56))(v15, 0, 1, v6);
    }

    else
    {
      v50 = a2 + 12;
      v46 = a2 + 15;
      v47 = a2 + 13;
      v39 = a2 + 16;
      v40 = a2 + 14;
      v45 = a2 + 17;
      v38 = a2 + 18;
      v53 = a2 + 22;
      v54 = a2 + 19;
      v48 = a2 + 23;
      v49 = a2 + 20;
      v41 = a2 + 24;
      v42 = a2 + 21;
      v51 = a2 + 27;
      v52 = a2 + 25;
      v43 = a2 + 28;
      v44 = a2 + 26;
      v16 = 1;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_24F2CC85C(v55 + *(v7 + 72) * v16, v9, type metadata accessor for Score);
        sub_24F91F5C8();
        v19 = exp(v18 * 0.693147181 / a2[11]);
        v20 = *v13;
        if (v20 <= 2)
        {
          v21 = v50;
          if (*v13)
          {
            v21 = v47;
            if (v20 != 1)
            {
              v21 = v40;
            }
          }
        }

        else if (*v13 > 4u)
        {
          v21 = v45;
          if (v20 != 5)
          {
            v21 = v38;
          }
        }

        else
        {
          v21 = v46;
          if (v20 != 3)
          {
            v21 = v39;
          }
        }

        v22 = *v21;
        v23 = v13[1];
        if (v23 > 2)
        {
          v24 = v53;
          if (v23 != 3)
          {
            v24 = v48;
            if (v23 != 4)
            {
              v24 = v41;
            }
          }
        }

        else
        {
          v24 = v54;
          if (v13[1])
          {
            v24 = v49;
            if (v23 != 1)
            {
              v24 = v42;
            }
          }
        }

        v25 = *v24;
        if (v13[2] > 1u)
        {
          v26 = v51;
          if (v13[2] != 2)
          {
            v26 = v43;
          }
        }

        else
        {
          v26 = v52;
          if (v13[2])
          {
            v26 = v44;
          }
        }

        v27 = *v26;
        sub_24F91F5C8();
        v29 = exp(v28 * 0.693147181 / a2[11]);
        v30 = *v9;
        if (v30 <= 2)
        {
          v31 = v50;
          if (*v9)
          {
            v31 = v47;
            if (v30 != 1)
            {
              v31 = v40;
            }
          }
        }

        else if (*v9 > 4u)
        {
          v31 = v45;
          if (v30 != 5)
          {
            v31 = v38;
          }
        }

        else
        {
          v31 = v46;
          if (v30 != 3)
          {
            v31 = v39;
          }
        }

        v32 = *v31;
        v33 = v9[1];
        if (v33 > 2)
        {
          v34 = v53;
          if (v33 != 3)
          {
            v34 = v48;
            if (v33 != 4)
            {
              v34 = v41;
            }
          }
        }

        else
        {
          v34 = v54;
          if (v9[1])
          {
            v34 = v49;
            if (v33 != 1)
            {
              v34 = v42;
            }
          }
        }

        if (v9[2] > 1u)
        {
          v35 = v51;
          if (v9[2] != 2)
          {
            v35 = v43;
          }
        }

        else
        {
          v35 = v52;
          if (v9[2])
          {
            v35 = v44;
          }
        }

        if (v19 * v22 * v25 * v27 >= v29 * v32 * *v34 * *v35)
        {
          sub_24F2CC8C4(v9, type metadata accessor for Score);
        }

        else
        {
          sub_24F2CC8C4(v13, type metadata accessor for Score);
          sub_24F2CC924(v9, v13, type metadata accessor for Score);
        }

        ++v16;
        if (v17 == v14)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    (*(v7 + 56))(a3, 1, 1, v6, v12);
  }
}

void *sub_24F2BF550(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  if (sub_24F92B0D8() == a1 && v8 == a2)
  {

    v12 = v6;
    return v6;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    v11 = v6;
    return v6;
  }

  if (sub_24F92B0D8() == a1 && v13 == a2)
  {

    goto LABEL_33;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
LABEL_33:
    v35 = v7;
    return v7;
  }

  v16 = sub_24F92B198();
  v18 = v17;
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v20 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x253052270](v20, v5);
      }

      else
      {
        if (v20 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v22 = *(v5 + 8 * v20 + 32);
      }

      v6 = v22;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v22 identifier];
      sub_24F92B0D8();

      v25 = sub_24F92B198();
      v27 = v26;

      if (v25 == v16 && v27 == v18)
      {
LABEL_35:

LABEL_36:

        return v6;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        goto LABEL_36;
      }

      v30 = [v6 bundleIdentifier];
      if (v30)
      {
        v31 = v30;
        sub_24F92B0D8();

        v32 = sub_24F92B198();
        v34 = v33;

        if (v32 == v16 && v34 == v18)
        {
          goto LABEL_35;
        }

        v21 = sub_24F92CE08();

        if (v21)
        {
          goto LABEL_36;
        }
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_40:

  return 0;
}