uint64_t sub_1BA058188(void *a1)
{
  v76 = sub_1BA4A1798();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v2);
  v74 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BA4A4428();
  v4 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v5);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ContentConfigurationItem(0);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v7);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = &v74 - v12;
  v14 = [a1 dictionaryWithPropertyValues];
  v15 = sub_1BA4A6628();

  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = sub_1BA021B74(*(v15 + 16), 0);
    v20 = sub_1BA023A08(&v96, (v19 + 4), v16, v15);
    v21 = v96;
    v92 = v99;
    v93 = v20;

    sub_1B9F52E48(v21);
    if (v93 != v16)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v17 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v96 = v19;
  sub_1BA054A80(&v96);

  v22 = v96;
  v19 = *(v96 + 16);
  if (v19)
  {
    v101 = v17;
    sub_1BA066F00(0, v19, 0);
    v23 = v22 + 32;
    v24 = v101;
    v83 = objc_opt_self();
    v82 = *MEMORY[0x1E69DDD80];
    v81 = objc_opt_self();
    v25 = 0;
    v80 = *MEMORY[0x1E69DDCF8];
    v79 = (v4 + 16);
    v78 = (v4 + 8);
    v85 = v22;
    v84 = v19;
    while (v25 < *(v22 + 16))
    {
      sub_1BA058FF0(v23, &v96, sub_1BA058C84);
      v93 = v24;
      v91 = sub_1BA4A7D28();
      v27 = v26;
      sub_1B9F0AD9C(&v100, v94);
      v90 = sub_1BA4A6808();
      v28 = v86;
      sub_1BA4A4198();

      sub_1BA4A43B8();
      v29 = v83;
      v30 = [v83 preferredFontForTextStyle_];
      v31 = sub_1BA4A4238();
      v92 = v23;
      v32 = v31;
      sub_1BA4A41E8();
      v32(v94, 0);
      v33 = v81;
      v34 = [v81 secondaryLabelColor];
      v35 = sub_1BA4A4238();
      sub_1BA4A41F8();
      v35(v94, 0);

      sub_1BA4A41A8();
      v36 = [v29 preferredFontForTextStyle_];
      v37 = sub_1BA4A4318();
      sub_1BA4A41E8();
      v37(v94, 0);
      v38 = [v33 labelColor];
      v39 = sub_1BA4A4318();
      sub_1BA4A41F8();
      v39(v94, 0);
      v40 = v88;
      *(v13 + 12) = v88;
      *(v13 + 13) = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 9);
      (*v79)(boxed_opaque_existential_1, v28, v40);
      v42 = v89;
      v43 = *(v89 + 40);
      v44 = sub_1BA4A4168();
      (*(*(v44 - 8) + 56))(&v13[v43], 1, 1, v44);
      v95 = 0;
      memset(v94, 0, sizeof(v94));
      (*v78)(v28, v40);
      sub_1BA058FF0(v94, (v13 + 16), sub_1B9F2F31C);
      *&v13[v42[12]] = 0;
      *&v13[v42[13]] = 0;
      *v13 = v91;
      *(v13 + 1) = v27;
      v13[112] = 0;
      *(v13 + 15) = MEMORY[0x1E69E7CC0];
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      v45 = v42[11];
      v24 = v93;
      v46 = &v13[v45];
      *v46 = 0;
      *(v46 + 1) = 0;

      sub_1BA059058(v94, sub_1B9F2F31C);

      sub_1BA059058(&v96, sub_1BA058C84);
      v101 = v24;
      v48 = *(v24 + 16);
      v47 = *(v24 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1BA066F00((v47 > 1), v48 + 1, 1);
        v24 = v101;
      }

      v25 = (v25 + 1);
      *(v24 + 16) = v48 + 1;
      sub_1BA058CEC(v13, v24 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v48);
      v23 = v92 + 72;
      v19 = v84;
      v22 = v85;
      if (v84 == v25)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_13:
  static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)(0x706F7250206C6C41, 0xEE00736569747265, 0, 0, v77);
  v49 = sub_1B9FE5788(v24);

  v50 = v74;
  sub_1BA4A1788();
  v51 = sub_1BA4A1748();
  v53 = v52;
  v54 = *(v75 + 8);
  v55 = v76;
  v54(v50, v76);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v57 = Array<A>.identifierToIndexDict()(v56);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1BA4B5480;
  *(v58 + 32) = 0;
  *(v58 + 40) = 0;
  *(v58 + 48) = v49;
  *(v58 + 56) = v57;
  *(v58 + 64) = v51;
  *(v58 + 72) = v53;
  v96 = 0x3C53447961727241;
  v97 = 0xE800000000000000;
  sub_1BA4A1788();
  v59 = sub_1BA4A1748();
  v61 = v60;
  v54(v50, v55);
  MEMORY[0x1BFAF1350](v59, v61);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v62 = v96;
  v63 = v97;
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v64 = sub_1B9F348D8(v58, v62, v63);

  v98 = v89;
  v99 = sub_1BA058D50();
  v65 = __swift_allocate_boxed_opaque_existential_1(&v96);
  sub_1BA058CEC(v77, v65);
  sub_1B9F0A534(&v96, v94);
  v66 = swift_allocObject();
  sub_1B9F1134C(v94, v66 + 16);
  sub_1BA001A4C(0);
  v67 = swift_allocObject();
  v67[4] = v64;
  v67[5] = sub_1B9F79BC8;
  v67[6] = v66;
  v69 = v64[5];
  v68 = v64[6];
  v67[2] = v69;
  v67[3] = v68;

  __swift_destroy_boxed_opaque_existential_1(&v96);
  sub_1BA058DA8(0);
  v70 = swift_allocObject();
  v70[4] = v67;
  v70[5] = sub_1BA0590E0;
  v70[6] = 0;
  v70[2] = v69;
  v70[3] = v68;
  v71 = swift_allocObject();
  v71[2] = sub_1BA0590E4;
  v71[3] = 0;
  v71[4] = v70;
  sub_1BA058DE4(0, &qword_1EBBEAAF8, sub_1BA058DA8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  *(v72 + 24) = v69;
  *(v72 + 32) = v68;
  *(v72 + 40) = 0;
  *(v72 + 48) = sub_1BA058E50;
  *(v72 + 56) = v71;
  swift_bridgeObjectRetain_n();

  return v72;
}

void sub_1BA058C84()
{
  if (!qword_1EBBEAAE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAAE0);
    }
  }
}

uint64_t sub_1BA058CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentConfigurationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA058D50()
{
  result = qword_1EDC664A0;
  if (!qword_1EDC664A0)
  {
    type metadata accessor for ContentConfigurationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC664A0);
  }

  return result;
}

void sub_1BA058DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA058E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F2F7BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA058EEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F2F7BC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA058FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA059058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id HealthURLActivityItemProvider.__allocating_init(title:url:image:thumbnailImage:subtitle:)(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a6;
  v39 = a7;
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A15D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v8;
  v23 = objc_allocWithZone(v8);
  v24 = &v23[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  *v24 = a1;
  *(v24 + 1) = a2;
  v25 = *(v19 + 16);
  v37 = a3;
  v25(&v23[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], a3, v18);
  *&v23[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = a4;
  v26 = a5;
  if (!a5)
  {
    v27 = a4;
    v26 = a4;
  }

  *&v23[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v26;
  v28 = &v23[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  v30 = a5;
  v31 = a4;
  sub_1BA4A15C8();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v33 = sub_1BA4A1548();
    v34 = *(v19 + 8);
    v34(v22, v18);
    v40.receiver = v23;
    v40.super_class = v36;
    v35 = objc_msgSendSuper2(&v40, sel_initWithPlaceholderItem_, v33);

    v34(v37, v18);
    return v35;
  }

  return result;
}

double sub_1BA059388()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  qword_1EBBEAB18 = qword_1EBBEF2A8;
  unk_1EBBEAB20 = unk_1EBBEF2B0;

  return result;
}

uint64_t static String.defaultURLProviderSubtitle.getter()
{
  if (qword_1EBBE8298 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEAB18;

  return v0;
}

id HealthURLActivityItemProvider.init(title:url:image:thumbnailImage:subtitle:)(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v37 = a7;
  sub_1BA011090(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A15D8();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  *v24 = a1;
  *(v24 + 1) = a2;
  (*(v19 + 16))(&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], a3, v18, v21);
  *&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = a4;
  v25 = a5;
  if (!a5)
  {
    v26 = a4;
    v25 = a4;
  }

  *&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v25;
  v27 = &v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  v29 = a5;
  v30 = a4;
  sub_1BA4A15C8();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    v32 = sub_1BA4A1548();
    v33 = *(v19 + 8);
    v33(v23, v18);
    v34 = type metadata accessor for HealthURLActivityItemProvider(0);
    v38.receiver = v8;
    v38.super_class = v34;
    v35 = objc_msgSendSuper2(&v38, sel_initWithPlaceholderItem_, v32);

    v33(a3, v18);
    return v35;
  }

  return result;
}

uint64_t type metadata accessor for HealthURLActivityItemProvider(uint64_t a1)
{
  result = qword_1EBBEAB30;
  if (!qword_1EBBEAB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA05984C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage);
  v5 = v2;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696ECA0]);
  v8 = v4;
  v9 = [v7 init];
  v10 = sub_1BA4A6758();
  [v9 setTitle_];

  v11 = sub_1BA4A1548();
  [v9 setOriginalURL_];

  v12 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
  [v9 setImage_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v9 setImageProvider_];

  v14 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v9 setIconProvider_];

  v15 = sub_1BA4A6758();
  [v9 setSummary_];

  return v9;
}

id HealthURLActivityItemProvider.__allocating_init(placeholderItem:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithPlaceholderItem_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthURLActivityItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthURLActivityItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA059C24(uint64_t a1)
{
  result = sub_1BA4A15D8();
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

id UINavigationItem.configureForAppearOnScroll(scrollDistance:)(double a1)
{
  result = [v1 _autoScrollEdgeTransitionDistance];
  if (v4 != a1)
  {
    [v1 _setManualScrollEdgeAppearanceEnabled_];
    [v1 _setAutoScrollEdgeTransitionDistance_];

    return [v1 _setManualScrollEdgeAppearanceEnabled_];
  }

  return result;
}

void *DataSourceWithAdaptiveSectionItemLimit.__allocating_init(source:limits:defaultLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1BA05A1B0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

void *DataSourceWithAdaptiveSectionItemLimit.init(source:limits:defaultLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA05A190(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BA059E48()
{
  sub_1B9F7A684(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_1B9F264D0();
  sub_1B9F0D950(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v6 = v5;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v8 = v0;
  sub_1B9F3BC30(v6);
  return v8;
}

uint64_t DataSourceWithAdaptiveSectionItemLimit.deinit()
{
  v0 = DataSourceWithSectionItemLimit.deinit();

  return v0;
}

uint64_t DataSourceWithAdaptiveSectionItemLimit.__deallocating_deinit()
{
  DataSourceWithSectionItemLimit.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA05A0E8(void *a1)
{
  v2 = *(v1 + qword_1EDC84A98);
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (*(v2 + 16) && (v5 = sub_1B9F82C68(v4), (v6 & 1) != 0))
  {
    v7 = (*(v2 + 56) + 8 * v5);
  }

  else
  {
    v7 = (v1 + qword_1EDC84AA0);
  }

  v8 = *v7;

  sub_1BA2A168C(v8);
}

void *sub_1BA05A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EDC84A98) = a2;
  *(v3 + qword_1EDC84AA0) = a3;
  return sub_1BA2A2328(a1, a3);
}

void *sub_1BA05A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataSourceWithAdaptiveSectionItemLimit(0, *(v4 + 240), *(v4 + 248), a4);
  v8 = swift_allocObject();
  *(v8 + qword_1EDC84A98) = a2;
  *(v8 + qword_1EDC84AA0) = a3;
  return sub_1BA2A2328(a1, a3);
}

id Presentation.cellHighlightColor.getter()
{
  v1 = *v0;
  if ((v1 - 6) < 2)
  {
    v9 = objc_opt_self();
    v10 = [v9 systemGray5Color];
    v11 = [v9 tertiarySystemGroupedBackgroundColor];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = v11;
    v12[4] = 0;
    v12[5] = v10;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v12;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_7;
    goto LABEL_9;
  }

  if (v1 == 4 || v1 == 12)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemGray5Color];
    v5 = [v3 systemGray4Color];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v5;
    v6[4] = 0;
    v6[5] = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_14_0;
LABEL_9:
    v19 = sub_1B9F7EBBC;
    v20 = v8;
    v13 = _Block_copy(&v17);
    v14 = [v7 initWithDynamicProvider_];
    _Block_release(v13);

    return v14;
  }

  v16 = [objc_opt_self() systemGray5Color];

  return v16;
}

id sub_1BA05A5E8(SEL *a1, SEL *a2)
{
  v5 = *v2 - 4;
  v6 = objc_opt_self();
  if ((v5 & 0xF7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = [v6 *v7];

  return v8;
}

id static UIColor.customDynamicColor(defaultColor:darkColor:defaultHighContrastColor:darkHighContrastColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17[4] = sub_1B9FE1088;
  v17[5] = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B9F7EBBC;
  v17[3] = &block_descriptor_21;
  v10 = _Block_copy(v17);
  v11 = a3;
  v12 = a1;
  v13 = a4;
  v14 = a2;
  v15 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v15;
}

id sub_1BA05A768(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if ([a1 userInterfaceStyle] != 2)
  {
    v9 = a4;
    if (!a4)
    {
      v9 = a5;
    }

    v12 = a4;
    a3 = a5;
    if ([a1 accessibilityContrast] != 1)
    {
      goto LABEL_5;
    }

    return v9;
  }

  v9 = a2;
  if (!a2)
  {
    v9 = a3;
  }

  v10 = a2;
  if ([a1 accessibilityContrast] == 1)
  {
    return v9;
  }

LABEL_5:

  return a3;
}

id static UIColor.collectionViewCellHighlightColor.getter()
{
  v0 = [objc_opt_self() systemGray5Color];

  return v0;
}

id static UIColor.collectionViewCellBackgroundColor.getter()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

  return v0;
}

id static UIColor.tableViewCellGroupedBackgroundColor.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1B9FE1088;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B9F7EBBC;
  v7[3] = &block_descriptor_28;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

id sub_1BA05AA48(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 systemGray5Color];
  v9 = [v7 *a1];
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = v9;
  v10[4] = 0;
  v10[5] = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v15[4] = a3;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B9F7EBBC;
  v15[3] = a4;
  v12 = _Block_copy(v15);
  v13 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  return v13;
}

id Presentation.cellBackgroundColor(for:)()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemBackgroundColor;
  if (((v1 - 4) & 0xF7) != 0)
  {
    v3 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v4 = [v2 *v3];
  if (sub_1BA4A4068())
  {
    if ((v1 - 6) < 2)
    {
      v15 = objc_opt_self();
      v16 = [v15 systemGray5Color];
      v17 = [v15 tertiarySystemGroupedBackgroundColor];
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = v17;
      v18[4] = 0;
      v18[5] = v16;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v18;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_56;
      goto LABEL_15;
    }

    if (v1 == 4 || v1 == 12)
    {
      v5 = objc_opt_self();
      v6 = [v5 systemGray5Color];
      v7 = [v5 systemGray4Color];
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = v7;
      v8[4] = 0;
      v8[5] = v6;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v8;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_63;
LABEL_15:
      v29 = sub_1B9F7EBBC;
      v30 = v10;
      v23 = _Block_copy(&v27);
      v24 = [v9 initWithDynamicProvider_];
      _Block_release(v23);

      return v24;
    }
  }

  else
  {
    if ((sub_1BA4A4078() & 1) == 0)
    {
      return v4;
    }

    if ((v1 - 6) < 2)
    {
      v19 = objc_opt_self();
      v20 = [v19 systemGray5Color];
      v21 = [v19 tertiarySystemGroupedBackgroundColor];
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = v21;
      v22[4] = 0;
      v22[5] = v20;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v22;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_42;
      goto LABEL_15;
    }

    if (v1 == 4 || v1 == 12)
    {
      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 systemGray4Color];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v14;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_49;
      goto LABEL_15;
    }
  }

  v26 = [objc_opt_self() systemGray5Color];

  return v26;
}

id Presentation.cellSelectedColor.getter()
{
  v1 = *v0;
  if ((v1 - 6) < 2)
  {
    v9 = objc_opt_self();
    v10 = [v9 systemGray5Color];
    v11 = [v9 tertiarySystemGroupedBackgroundColor];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = v11;
    v12[4] = 0;
    v12[5] = v10;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v12;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_70;
    goto LABEL_9;
  }

  if (v1 == 12 || v1 == 4)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemGray5Color];
    v5 = [v3 systemGray4Color];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v5;
    v6[4] = 0;
    v6[5] = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_77;
LABEL_9:
    v19 = sub_1B9F7EBBC;
    v20 = v8;
    v13 = _Block_copy(&v17);
    v14 = [v7 initWithDynamicProvider_];
    _Block_release(v13);

    return v14;
  }

  v16 = [objc_opt_self() systemGray5Color];

  return v16;
}

uint64_t sub_1BA05B274()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEAB40 = result;
  *algn_1EBBEAB48 = v1;
  return result;
}

double sub_1BA05B32C()
{
  if (qword_1EBBE8630 != -1)
  {
    swift_once();
  }

  qword_1EBBEAB50 = qword_1EBBEF888;
  *algn_1EBBEAB58 = unk_1EBBEF890;

  return result;
}

uint64_t sub_1BA05B398()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEAB60 = result;
  *algn_1EBBEAB68 = v1;
  return result;
}

id sub_1BA05B460()
{
  result = [objc_allocWithZone(type metadata accessor for LastSyncedDateFormatter(0)) init];
  qword_1EBBEAB70 = result;
  return result;
}

uint64_t sub_1BA05B494(void *a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore) = a1;
  v10 = a1;
  v11 = [v10 profileIdentifier];
  v12 = [v11 type];

  if (v12 == 1 && ([objc_opt_self() isRunningStoreDemoMode] & 1) == 0)
  {
    v14 = type metadata accessor for CloudSyncStateObserver();
    memset(v30, 0, sizeof(v30));
    v31 = 0;
    v15 = objc_allocWithZone(v14);
    v16 = v10;
    v17 = CloudSyncStateObserver.init(healthStore:store:)(v16, v30);
    v18 = *(v1 + v8);
    *(v1 + v8) = v17;

    sub_1B9FF6758();
    inited = swift_initStackObject();
    v29 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1BA05DD4C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = v29;
    v21 = type metadata accessor for CloudSyncDataSourceItem(0);
    swift_allocObject();
    v22 = sub_1BA247E24();
    *(v20 + 56) = v21;
    *(v20 + 64) = sub_1BA05DD04(&qword_1EBBEAB98, type metadata accessor for CloudSyncDataSourceItem, &unk_1BA4C8ED0);
    *(v20 + 32) = v22;
    sub_1BA4A1788();
    v23 = sub_1BA4A1748();
    v25 = v24;
    (*(v4 + 8))(v7, v3);
    v26 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v26);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v20;
    v27 = Array<A>.identifierToIndexDict()(v20);

    *(inited + 56) = v27;
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v13 = sub_1B9F1DAFC(inited, 1, sub_1BA05B800, 0);

    sub_1BA05B91C();
  }

  else
  {

    type metadata accessor for CloudSyncDataSource(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

id sub_1BA05B800()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D2B0;
  v14[5] = *&qword_1EDC6D2C0;
  v14[6] = xmmword_1EDC6D2D0;
  v14[7] = unk_1EDC6D2E0;
  v14[0] = xmmword_1EDC6D270;
  v14[1] = *&qword_1EDC6D280;
  v14[2] = xmmword_1EDC6D290;
  v14[3] = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D270;
  v5 = qword_1EDC6D280;
  v0 = *algn_1EDC6D288;
  v2 = xmmword_1EDC6D290;
  v1 = qword_1EDC6D2A0;
  v9 = *(&xmmword_1EDC6D2B0 + 8);
  v10 = unk_1EDC6D2C8;
  v11 = *(&xmmword_1EDC6D2D0 + 8);
  v12 = qword_1EDC6D2E8;
  v8 = *algn_1EDC6D2A8;
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

void sub_1BA05B91C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
    v7 = v3;

    v6(sub_1BA05DBD0, v4);

    v8 = *(v1 + v2);
    if (v8)
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = *((*v5 & *v8) + 0xB8);
      v11 = v8;

      v10(sub_1BA05DBD8, v9);

      v12 = *(v1 + v2);
      if (v12)
      {
        v13 = *((*v5 & *v12) + 0x118);
        v14 = v12;
        v13();
      }
    }
  }
}

uint64_t sub_1BA05BAFC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1BA4A6478();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A64C8();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2D28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v15 = sub_1BA4A7308();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  (*(v12 + 32))(v17 + v16, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1BA05DE7C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_31;
  v18 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA05DD04(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BA05DD4C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v6, v18);
  _Block_release(v18);

  (*(v23 + 8))(v6, v3);
  return (*(v21 + 8))(v10, v22);
}

uint64_t sub_1BA05BEB4(uint64_t a1)
{
  v1 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (sub_1BA4A2D18())
    {
      swift_storeEnumTagMultiPayload();
      sub_1BA05C430(v4);

      return sub_1BA05D968(v4);
    }

    else
    {
      type metadata accessor for CloudSyncDataSourceItem(0);
      swift_allocObject();
      v7 = sub_1BA247E24();
      v7[4] = 0;
      v7[5] = 0xE000000000000000;

      v7[6] = 0;
      v7[7] = 0xE000000000000000;

      sub_1BA05CAB4(v7);

      v8 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
      if (v8)
      {
        v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x110);
        v10 = v8;
        v9();
      }
    }
  }

  return result;
}

uint64_t sub_1BA05C040(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_1BA4A6478();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A64C8();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2918();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v15 = sub_1BA4A7308();
  sub_1BA05D9C4(a1, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  sub_1BA05DA28(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1BA05DCD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA05DD04(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BA05DD4C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v6, v18);
  _Block_release(v18);

  (*(v23 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v22);
}

uint64_t sub_1BA05C3D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA05C430(a2);
  }

  return result;
}

uint64_t sub_1BA05C430(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v54 - v5;
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v54 - v14;
  v16 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05D9C4(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (qword_1EDC69368 != -1)
      {
        swift_once();
      }

      v43 = &qword_1EDC69370;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return sub_1BA05CCE0();
    }

    goto LABEL_24;
  }

  if (!EnumCaseMultiPayload)
  {
    if (qword_1EBBE8610 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EBBEF7C8;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v8 + 32))(v11, v19, v7);
    sub_1BA05D14C(v11);
    return (*(v8 + 8))(v11, v7);
  }

  v21 = sub_1BA4A28E8();
  v23 = v22;
  if (v21 == sub_1BA4A28E8() && v23 == v24)
  {

    goto LABEL_36;
  }

  v26 = sub_1BA4A8338();

  if (v26)
  {
LABEL_36:
    if (qword_1EBBE85F0 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EBBEF768;
    goto LABEL_39;
  }

  v27 = sub_1BA4A28E8();
  v29 = v28;
  if (v27 == sub_1BA4A28E8() && v29 == v30)
  {

    goto LABEL_41;
  }

  v32 = sub_1BA4A8338();

  if (v32)
  {
LABEL_41:
    if (qword_1EBBE85E8 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EBBEF738;
    goto LABEL_39;
  }

  v33 = sub_1BA4A28E8();
  v35 = v34;
  if (v33 == sub_1BA4A28E8() && v35 == v36)
  {

    goto LABEL_45;
  }

  v38 = sub_1BA4A8338();

  if (v38)
  {
LABEL_45:
    if (qword_1EBBE8600 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EBBEF798;
    goto LABEL_39;
  }

  v39 = sub_1BA4A28E8();
  v41 = v40;
  if (v39 == sub_1BA4A28E8() && v41 == v42)
  {

    return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
  }

  v50 = sub_1BA4A8338();

  if (v50)
  {
    return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
  }

  v51 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
  if (!v51)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_54;
  }

  v52 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xF8);
  v53 = v51;
  v52();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_54:
    sub_1BA05DB44(v6);
LABEL_24:
    if (qword_1EBBE85E0 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EBBEF708;
LABEL_39:
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    v48 = v43[4];
    v49 = v43[5];
    v54[0] = *v43;
    v54[1] = v45;
    v54[2] = v46;
    v54[3] = v47;
    v54[4] = v48;
    v54[5] = v49;

    sub_1BA05CDFC(v54, a1);
  }

  (*(v8 + 32))(v15, v6, v7);
  sub_1BA05D14C(v15);
  return (*(v8 + 8))(v15, v7);
}

uint64_t sub_1BA05CAB4(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v15 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA05DD4C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = v15;
  *(v8 + 56) = type metadata accessor for CloudSyncDataSourceItem(0);
  *(v8 + 64) = sub_1BA05DD04(&qword_1EBBEAB98, type metadata accessor for CloudSyncDataSourceItem, &unk_1BA4C8ED0);
  *(v8 + 32) = a1;

  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v12 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v12);
  *(inited + 40) = 0;
  *(inited + 32) = 0;

  *(inited + 48) = v8;
  v13 = Array<A>.identifierToIndexDict()(v8);

  *(inited + 56) = v13;
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA05CCE0()
{
  type metadata accessor for CloudSyncDataSourceItem(0);
  swift_allocObject();
  v0 = sub_1BA247E24();
  if (qword_1EBBE82A0 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EBBEAB48;
  v0[4] = qword_1EBBEAB40;
  v0[5] = v1;

  if (qword_1EBBE82A8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EBBEAB58;
  v0[6] = qword_1EBBEAB50;
  v0[7] = v2;

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync) = 1;
  sub_1BA05CAB4(v0);
}

uint64_t sub_1BA05CDFC(uint64_t *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_1BA4A2918();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v25 - v9);
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v30 = *a1;
  v31 = v12;
  v29 = v13;
  v14 = a1[4];
  v15 = a1[5];
  v26 = v14;
  type metadata accessor for CloudSyncDataSourceItem(0);
  swift_allocObject();

  v16 = sub_1BA247E24();
  v17 = type metadata accessor for CloudSyncAction(0);
  v18 = (v10 + *(v17 + 20));
  v19 = swift_allocObject();
  swift_weakInit();
  sub_1BA05D9C4(v28, v6);
  v20 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_1BA05DA28(v6, v21 + v20);
  *v18 = sub_1BA05DA8C;
  v18[1] = v21;
  type metadata accessor for CloudSyncTarget(0);
  swift_storeEnumTagMultiPayload();
  *v10 = v26;
  v10[1] = v15;
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();
  sub_1BA05D8D4(v10, v16 + v22);
  swift_endAccess();
  v16[4] = v30;
  v16[5] = v11;

  v23 = v29;
  v16[6] = v31;
  v16[7] = v23;

  sub_1BA05CAB4(v16);
}

void sub_1BA05D0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
    sub_1BA2FAA50(a3);
  }
}

uint64_t sub_1BA05D14C(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v25 - v5);
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudSyncDataSourceItem(0);
  swift_allocObject();
  v12 = sub_1BA247E24();
  if (qword_1EBBE82B8 != -1)
  {
    swift_once();
  }

  v29 = v1;
  sub_1BA4A1718();
  v13 = sub_1BA0A4EC4(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1;
  v15 = v14;
  (*(v8 + 8))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12[4] = v13;
  v12[5] = v15;

  if (qword_1EBBE82B0 != -1)
  {
    swift_once();
  }

  v27 = *algn_1EBBEAB68;
  v28 = qword_1EBBEAB60;
  v16 = type metadata accessor for CloudSyncAction(0);
  v17 = (v6 + *(v16 + 20));
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v8 + 32))(v20 + v19, v11, v7);
  *v17 = sub_1BA05D8A8;
  v17[1] = v20;
  type metadata accessor for CloudSyncTarget(0);
  swift_storeEnumTagMultiPayload();
  v21 = v27;
  *v6 = v28;
  v6[1] = v21;
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();

  sub_1BA05D8D4(v6, v12 + v22);
  swift_endAccess();
  if (qword_1EBBE82A8 != -1)
  {
    swift_once();
  }

  v23 = *algn_1EBBEAB58;
  v12[6] = qword_1EBBEAB50;
  v12[7] = v23;

  sub_1BA05CAB4(v12);
}

uint64_t sub_1BA05D50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v9 = sub_1BA4A1728();
    (*(*(v9 - 8) + 16))(v7, a3, v9);
    swift_storeEnumTagMultiPayload();
    v10 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
    sub_1BA2FAA50(v7);

    return sub_1BA05D968(v7);
  }

  return result;
}

void sub_1BA05D68C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore);
}

uint64_t sub_1BA05D6CC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA05D7AC()
{
  sub_1BA05D6CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudSyncDataSource(uint64_t a1)
{
  result = qword_1EBBEAB80;
  if (!qword_1EBBEAB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA05D8D4(uint64_t a1, uint64_t a2)
{
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05D968(uint64_t a1)
{
  v2 = sub_1BA4A2918();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA05D9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A2918();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05DA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A2918();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05DAB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_1BA05DB44(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(sub_1BA4A2918() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_1BA4A1728();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BA05DD04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA05DD4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1BA05DEA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1BA05DF98(uint64_t a1, uint64_t a2)
{
  sub_1B9F7EC24(0, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0D950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConfigurationFeedItemActionContent.actionHandlerUserData.getter()
{
  v1 = *(v0 + 48);
  sub_1B9F6AD84(v1, *(v0 + 56));
  return v1;
}

uint64_t ConfigurationFeedItemActionContent.actionHandlerUserData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F6AC8C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ConfigurationFeedItemActionContent.providedContext.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ConfigurationFeedItemActionContent.init(objectID:viewModel:actionHandlerUserData:providedContext:presentingViewController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 8) = 0u;
  *(a7 + 56) = 0xF000000000000000;
  *a7 = a1;
  sub_1BA05DF98(a2, a7 + 8);
  result = sub_1B9F6AC8C(*(a7 + 48), *(a7 + 56));
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

void ConfigurationFeedItemActionContent.presentation.getter()
{
  v2 = [*(v1 + 72) traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();
}

__n128 AnyConfigurationActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *AnyConfigurationActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t AnyConfigurationActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TabActionHandlerPresentation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

Swift::Void __swiftcall TabActionHandler.didSelect()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 16))(&v9);
  v5 = v9;
  v6 = *(v2 + 88);
  v7 = (*(v3 + 24))(v4, v3);
  v8 = v7;
  if (v5 == 1)
  {
    [v6 showDetailViewController:v7 sender:v2];
  }

  else
  {
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

void *TabActionHandler.deselectionBehavior(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  result = (*(a2 + 16))(&v6, a1, a2);
  if (v6)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  return result;
}

Swift::Void __swiftcall DismissibleConfigurationActionHandler.defaultPlatformDidTapDismiss()()
{
  v3 = v1;
  v4 = v0;
  if ((*(v1 + 16))())
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = sub_1BA4A1B78();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v6;
    v7[5] = v5;
    v13 = sub_1BA05EB68;
    v14 = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1B9F0B040;
    v12 = &block_descriptor_13;
    v8 = _Block_copy(v11);
    v9 = v6;
    v10 = v5;

    [v9 performBlock_];
    _Block_release(v8);
  }
}

void sub_1BA05E6B4(void *a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = &v40 - v14;
  v16 = [a1 objectWithID_];
  sub_1BA4A27B8();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    [v17 setHideInDiscover_];
    v42 = 0;
    if ([a1 save_])
    {
      v18 = v42;
      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v6;
        v41 = a3;
        v23 = v22;
        v42 = v22;
        *v21 = 136446210;
        swift_getMetatypeMetadata();
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v42);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s]: Dismiss occurred; updating Summary feed", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);

        (*(v7 + 8))(v15, v40);
      }

      else
      {

        (*(v7 + 8))(v15, v6);
      }

      sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
      v33 = sub_1BA4A7198();
      sub_1BA4A2588();
      v34 = objc_allocWithZone(sub_1BA4A3518());
      v35 = sub_1BA4A3508();
      [v33 addOperation_];
    }

    else
    {
      v36 = v42;
      v37 = sub_1BA4A1488();

      swift_willThrow();
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v42 = 0xD000000000000023;
      v43 = 0x80000001BA4E6390;
      v41 = v37;
      v38 = v37;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v39 = sub_1BA4A6828();
      MEMORY[0x1BFAF1350](v39);

      sub_1BA4A8018();
      __break(1u);
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v27 = a2;
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1B9F07000, v28, v29, "Background context could not find object with id: '%@'", v30, 0xCu);
      sub_1B9F8C6C8(v31);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1BA05EB78()
{
  result = qword_1EBBEABA0;
  if (!qword_1EBBEABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEABA0);
  }

  return result;
}

char *CategoryDataTypesDataSource.init(_:dateRange:sectionIdentifier:layoutType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1EBC09440;
  v10 = sub_1BA4A0FA8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + v9, a2, v10);
  v12 = qword_1EBC09448;
  v13 = sub_1BA4A3BD8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4 + v12, a3, v13);
  sub_1BA05EEB4(a4, v4 + qword_1EBC09450);
  v15 = FetchedResultsControllerDataSource.init(_:)(a1);
  sub_1BA05EF34(a4);
  (*(v14 + 8))(a3, v13);
  (*(v11 + 8))(a2, v10);
  return v15;
}

uint64_t sub_1BA05EEB4(uint64_t a1, uint64_t a2)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05EF34(uint64_t a1)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *CategoryDataTypesDataSource.__allocating_init(_:dateRange:sectionIdentifier:layout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v25 = a2;
  v28 = a1;
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v25 - v8);
  v10 = sub_1BA4A3BD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A0FA8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a2, v15, v18);
  (*(v11 + 16))(v14, a3, v10);
  *v9 = v26;
  v21 = type metadata accessor for LayoutConfigurationType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v22 = objc_allocWithZone(v27);
  v23 = CategoryDataTypesDataSource.init(_:dateRange:sectionIdentifier:layoutType:)(v28, v20, v14, v9);
  (*(v11 + 8))(a3, v10);
  (*(v16 + 8))(v25, v15);
  return v23;
}

uint64_t sub_1BA05F248@<X0>(void *a1@<X8>)
{
  v33 = a1;
  v32 = sub_1BA4A4428();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - v8;
  v10 = sub_1BA4A3BD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v31 = sub_1BA4A3C28();
  v17 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C08();
  (*(v11 + 16))(v14, v1 + qword_1EBC09448, v10);
  sub_1BA4A3BE8();
  v21 = sub_1BA4A3BF8();
  v23 = v22;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v24 = v32;
  (*(v2 + 16))(v5, v9, v32);
  v25 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v21, v23, 0, 0, 0, 0, v5, 0, 0);
  v27 = v26;
  (*(v2 + 8))(v9, v24);
  v28 = v33;
  v33[3] = v25;
  v28[4] = sub_1B9F322A8(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  *v28 = v27;
  return (*(v17 + 8))(v20, v31);
}

uint64_t sub_1BA05F600()
{
  sub_1BA05EF34(v0 + qword_1EBC09450);
  v1 = qword_1EBC09440;
  v2 = sub_1BA4A0FA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBC09448;
  v4 = sub_1BA4A3BD8();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1BA05F6D0(uint64_t a1)
{
  sub_1BA05EF34(a1 + qword_1EBC09450);
  v2 = qword_1EBC09440;
  v3 = sub_1BA4A0FA8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EBC09448;
  v5 = sub_1BA4A3BD8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *CategoryDataSource.init(_:headerTitle:footerText:reuseIdentifier:layoutType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + qword_1EBC09460);
  *v11 = a6;
  v11[1] = a7;
  v12 = (v8 + qword_1EBC09468);
  *v12 = a2;
  v12[1] = a3;
  v13 = (v8 + qword_1EBC09470);
  *v13 = a4;
  v13[1] = a5;
  sub_1BA05EEB4(a8, v8 + qword_1EBC09458);
  v14 = FetchedResultsControllerDataSource.init(_:)(a1);
  sub_1BA05EF34(a8);
  return v14;
}

char *CategoryDataSource.__allocating_init(_:headerTitle:footerText:reuseIdentifier:layout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v9 = v8;
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v29 - v20);
  v22 = a8[5];
  v21[4] = a8[4];
  v21[5] = v22;
  v23 = a8[7];
  v21[6] = a8[6];
  v21[7] = v23;
  v24 = a8[1];
  *v21 = *a8;
  v21[1] = v24;
  v25 = a8[3];
  v21[2] = a8[2];
  v21[3] = v25;
  v26 = type metadata accessor for LayoutConfigurationType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  v27 = objc_allocWithZone(v9);
  return CategoryDataSource.init(_:headerTitle:footerText:reuseIdentifier:layoutType:)(a1, a2, a3, a4, a5, a6, a7, v21);
}

uint64_t sub_1BA05FA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A4428();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - v18;
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v20 == a2)
  {

LABEL_13:
    v26 = *(v47 + qword_1EBC09468 + 8);
    if (v26)
    {
      v27 = *(v47 + qword_1EBC09468);

      _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
      (*(v12 + 16))(v15, v19, v11);
      v28 = type metadata accessor for HeaderItem(0);
      swift_allocObject();
      HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v27, v26, 0, 0, 0, 0, v15, 0, 0);
      v30 = v29;
      (*(v12 + 8))(v19, v11);
      a3[3] = v28;
      result = sub_1B9F322A8(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
      a3[4] = result;
      *a3 = v30;
      return result;
    }

    goto LABEL_18;
  }

  v45 = v7;
  v46 = v6;
  v22 = sub_1BA4A8338();

  if (v22)
  {
    goto LABEL_13;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v23 == a2)
  {
  }

  else
  {
    v25 = sub_1BA4A8338();

    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v32 = *(v47 + qword_1EBC09470 + 8);
  if (v32)
  {
    v33 = *(v47 + qword_1EBC09470);
    v48 = 0x74497265746F6F46;
    v49 = 0xEB000000005F6D65;

    sub_1BA4A1788();
    v34 = sub_1BA4A1748();
    v36 = v35;
    (*(v45 + 8))(v10, v46);
    MEMORY[0x1BFAF1350](v34, v36);

    v37 = v48;
    v38 = v49;
    v39 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    a3[3] = v39;
    a3[4] = sub_1B9F322A8(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v48 = type metadata accessor for CollectionViewGroupedFooterCell();
    sub_1BA0603B0();
    *boxed_opaque_existential_1 = sub_1BA4A6808();
    boxed_opaque_existential_1[1] = v41;
    v42 = boxed_opaque_existential_1 + *(v39 + 32);
    *v42 = 0u;
    *(v42 + 1) = 0u;
    v42[32] = 1;
    v43 = (boxed_opaque_existential_1 + *(v39 + 28));
    *v43 = v33;
    v43[1] = v32;
    type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    result = swift_storeEnumTagMultiPayload();
    boxed_opaque_existential_1[2] = v37;
    boxed_opaque_existential_1[3] = v38;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    return result;
  }

LABEL_18:
  a3[3] = &type metadata for EmptyHeaderItem;
  a3[4] = sub_1B9FDA1B0();
  *a3 = swift_allocObject();
  return EmptyHeaderItem.init()();
}

uint64_t sub_1BA05FEE0@<X0>(uint64_t a1@<X8>)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for LayoutConfigurationType(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05EEB4(v1 + qword_1EBC09458, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA05EF34(v6);
    sub_1B9FF8124(0);
    v13 = *(v12 + 48);
    if (qword_1EDC6CBB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for ListLayoutConfiguration(0);
    v15 = __swift_project_value_buffer(v14, qword_1EDC6CBB8);
    sub_1B9F37E38(v15, a1);
    *(a1 + v13) = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1BA06044C(v6, v11);
    sub_1BA06044C(v11, a1);
  }

  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t sub_1BA0600D4()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v0, v1);
}

uint64_t sub_1BA0601AC()
{
  sub_1BA05EF34(v0 + qword_1EBC09458);
}

id sub_1BA060230(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x158), *((*MEMORY[0x1E69E7D40] & *v1) + 0x160));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA0602A8(uint64_t a1)
{
  sub_1BA05EF34(a1 + qword_1EBC09458);
}

unint64_t sub_1BA0603B0()
{
  result = qword_1EDC63330[0];
  if (!qword_1EDC63330[0])
  {
    type metadata accessor for CollectionViewGroupedFooterCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC63330);
  }

  return result;
}

void sub_1BA0603F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA06044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfigurationType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA0604F8(uint64_t a1)
{
  sub_1BA0603F8(319, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  if (v1 <= 0x3F)
  {
    sub_1BA4A0FA8();
    if (v2 <= 0x3F)
    {
      sub_1BA4A3BD8();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1BA0606BC(uint64_t a1)
{
  sub_1BA0603F8(319, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_1BA060940(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  v5 = [objc_allocWithZone(type metadata accessor for ActivityIndicatorDetailView(0)) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v4] = v5;
  v6 = &v2[OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item];
  v7 = type metadata accessor for CloudSyncCollectionViewCell();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v12.receiver = v2;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1BA060A74();
  }

  return v9;
}

void sub_1BA060A74()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5890;
  v6 = [*&v1[v3] leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [*&v1[v3] trailingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-16.0];
  *(v5 + 40) = v13;
  v14 = [*&v1[v3] topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v5 + 48) = v17;
  v18 = [*&v1[v3] bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v5 + 56) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v4 activateConstraints_];
}

uint64_t sub_1BA060D50()
{
  sub_1BA06138C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v5], v27);
  if (!v28)
  {
    sub_1B9F43A50(v27, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    return sub_1B9F43A50(&v24, &qword_1EBBEABB8, &qword_1EBBEABC0, &protocol descriptor for ActivityIndicatorDetailItem);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EBBEABC0, &protocol descriptor for ActivityIndicatorDetailItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    return sub_1B9F43A50(&v24, &qword_1EBBEABB8, &qword_1EBBEABC0, &protocol descriptor for ActivityIndicatorDetailItem);
  }

  if (!*(&v25 + 1))
  {
    return sub_1B9F43A50(&v24, &qword_1EBBEABB8, &qword_1EBBEABC0, &protocol descriptor for ActivityIndicatorDetailItem);
  }

  sub_1B9F1134C(&v24, v27);
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView];
  v7 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v8 = *(*v7 + 40);
  v21 = *(*v7 + 32);
  v9 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v11 = *(*v9 + 48);
  v10 = *(*v9 + 56);
  v12 = *__swift_project_boxed_opaque_existential_1(v27, v28);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();
  sub_1BA0613E4(v12 + v13, v4);
  LOBYTE(v13) = *(*__swift_project_boxed_opaque_existential_1(v27, v28) + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync);
  v14 = v6;

  sub_1BA3915A8(v21, v8, v11, v10, v4, v13 & 1);

  sub_1BA061448(v4);
  sub_1B9F68124(&v0[v5], v22);
  if (v23)
  {
    sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    if (swift_dynamicCast())
    {
      v15 = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v16 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
        (*(v16 + 8))(v15, v16);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1(&v24);
        if (v18)
        {
          v19 = sub_1BA4A6758();
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v22, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_1B9F43A50(&v24, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
  v19 = 0;
LABEL_15:
  [v0 setAccessibilityIdentifier_];

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id sub_1BA061104(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudSyncCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA0611B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA06120C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA060D50();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA061290(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0612F4;
}

uint64_t sub_1BA0612F4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA060D50();
  }

  return result;
}

void sub_1BA061328(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setAccessibilityIdentifier_];
}

void sub_1BA06138C(uint64_t a1)
{
  if (!qword_1EBBEAB90)
  {
    type metadata accessor for CloudSyncAction(255);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAB90);
    }
  }
}

uint64_t sub_1BA0613E4(uint64_t a1, uint64_t a2)
{
  sub_1BA06138C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA061448(uint64_t a1)
{
  sub_1BA06138C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *NotificationSettingsViewController.init(healthExperienceStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34NotificationSettingsViewController_viewControllerTitle;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v4 = (v1 + v3);
  *v4 = sub_1BA4A1318();
  v4[1] = v5;
  sub_1B9F0A534(a1, v13);
  type metadata accessor for NotificationSettingsDataSource(0);
  swift_allocObject();
  sub_1BA0621C4(v13);
  sub_1B9F0A534(a1, v13);
  type metadata accessor for NotificationInvalidAuthorizationDataSource(0);
  swift_allocObject();
  v6 = sub_1BA062450(v13);
  sub_1BA0637A4(0);
  swift_allocObject();

  v8 = sub_1BA063C7C(v7, v6, sub_1BA064A2C, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  (*(*v8 + 184))(sub_1BA061750, 0);
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 32) = v8;
  *(v9 + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v10 = CompoundSectionedDataSource.init(_:)(v9);
  v11 = CompoundDataSourceCollectionViewController.init(dataSource:)(v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

BOOL sub_1BA061750(uint64_t a1, uint64_t a2)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUIP33_A4493740400C52C858983AD72DFA1B2D42NotificationInvalidAuthorizationDataSource_platformAlertDataSource);
  v10 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, v4);
  v11 = sub_1BA4A4538();
  (*(v5 + 8))(v8, v4);
  v12 = *(v11 + 16);

  return v12 == 0;
}

void sub_1BA061884()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NotificationSettingsViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  sub_1BA061C4C();
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v0 navigationItem];
    [v6 setLargeTitleDisplayMode_];

    v7 = [v0 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissProfile_];
    [v7 setRightBarButtonItem_];
  }

  else
  {
    __break(1u);
  }
}

id NotificationSettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void NotificationSettingsViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34NotificationSettingsViewController_viewControllerTitle;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = (v0 + v1);
  *v2 = sub_1BA4A1318();
  v2[1] = v3;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA061C4C()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setPreservesSuperviewLayoutMargins_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 contentInset];
  [v7 setContentInset_];
}

id sub_1BA061D64()
{
  v1 = v0;
  sub_1B9F36938();
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v4, v5);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1B9F437FC();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  sub_1B9F439C8();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  sub_1B9FF5A98();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  sub_1B9FF5B9C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v11, v12);
}

void sub_1BA061F60()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x1E69A2C40], v1, v4);
  v7 = sub_1BA4A35B8();
  (*(v2 + 8))(v6, v1);
  [v0 setUserActivity_];
}

id NotificationSettingsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id NotificationSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0621C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_1BA4A1B68();
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  type metadata accessor for NotificationSettingsDefaultsDataSource(0);
  swift_allocObject();
  v4 = sub_1BA4A2188();
  *(v3 + 32) = sub_1BA18E254(v2, v4, v5);
  *(v3 + 40) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for NotificationSettingsFeaturesDataSource(0);
  swift_allocObject();
  v6 = v2;
  v7 = sub_1BA18ED54(v6);

  *(v3 + 48) = v7;
  *(v3 + 56) = &protocol witness table for CompoundSectionedDataSource;
  type metadata accessor for NotificationSettingsSharingDataSource(0);
  swift_allocObject();
  v8 = v6;
  v9 = sub_1BA047450();

  *(v3 + 64) = v9;
  *(v3 + 72) = &protocol witness table for MutableArrayDataSource;
  v10 = CompoundSectionedDataSource.init(_:)(v3);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1BA062364()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA062450(void *a1)
{
  sub_1B9F35664(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v37 - v4;
  sub_1BA4A1FF8();
  sub_1BA4A27B8();
  sub_1B9F35664(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v37 = xmmword_1BA4B5480;
  *(v9 + 16) = xmmword_1BA4B5480;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69A3B80], v6);
  v10 = sub_1BA4A0FA8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = sub_1BA4A1D78();
  *(v11 + 40) = 0;
  v12 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v5);
  v13 = v12;
  v14 = sub_1BA4A26C8();

  [v14 setFetchLimit_];
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5470;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v15 + 32) = v18;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v19 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1BA4A1B68();
  v21 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v14 managedObjectContext:v20 sectionNameKeyPath:0 cacheName:0];
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v49[4] = xmmword_1EDC6D458;
  v49[5] = *&qword_1EDC6D468;
  v49[6] = xmmword_1EDC6D478;
  v49[7] = xmmword_1EDC6D488;
  v49[0] = xmmword_1EDC6D418;
  v49[1] = *&qword_1EDC6D428;
  v49[2] = xmmword_1EDC6D438;
  v49[3] = xmmword_1EDC6D448;
  v39 = xmmword_1EDC6D418;
  v40 = qword_1EDC6D428;
  v22 = unk_1EDC6D430;
  v24 = xmmword_1EDC6D438;
  v23 = xmmword_1EDC6D448;
  v44 = *(&xmmword_1EDC6D458 + 8);
  v45 = *&qword_1EDC6D470;
  v46 = *(&xmmword_1EDC6D478 + 8);
  v47 = *(&xmmword_1EDC6D488 + 1);
  v43 = *(&xmmword_1EDC6D448 + 8);
  sub_1B9F1D9A4(v49, &v48);
  sub_1B9F1DA18(v22, v24, *(&v24 + 1), v23);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v41 = 0u;
  v42 = 0u;
  v25 = sub_1B9F293A8(&v39);
  sub_1BA0649AC(0);
  v27 = objc_allocWithZone(v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v29 = &v27[qword_1EDC61AF0];
  *v29 = sub_1BA064A10;
  v29[1] = v28;
  v30 = v21;
  v31 = v25;
  v32 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v30);
  *(v38 + OBJC_IVAR____TtC18HealthExperienceUIP33_A4493740400C52C858983AD72DFA1B2D42NotificationInvalidAuthorizationDataSource_platformAlertDataSource) = v32;
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = v37;
  *(v33 + 32) = v32;
  *(v33 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v34 = v32;
  v35 = CompoundSectionedDataSource.init(_:)(v33);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v35;
}

uint64_t sub_1BA062A48()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA062B5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = *(a1 + 16);
  v15 = *a3;
  swift_beginAccess();
  v16 = v7 + 16;
  v17 = *(v7 + 16);
  v41 = v14;
  v17(v13, v14 + v15, v6);
  v18 = sub_1BA4A4548();
  v21 = *(v7 + 8);
  v19 = v7 + 8;
  v20 = v21;
  result = (v21)(v13, v6);
  if (v18 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v18)
    {
      v39 = v18;
      v40 = v20;
      v23 = 0;
      v24 = 0;
      v36 = v17;
      v37 = v19;
      v35 = v16;
      v25 = v40;
      do
      {
        v17(v13, v41 + v15, v6);
        v26 = sub_1BA4A4548();
        v25(v13, v6);
        if (v24 < v26)
        {
          v27 = v41;
          v17(v13, v41 + v15, v6);
          v28 = v17;
          v29 = v38;
          v28(v38, v27 + v15, v6);
          v30 = sub_1BA4A4578();
          result = (v25)(v29, v6);
          if (v24 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v31 = v15;
          v33 = *(v30 + v23 + 32);
          v32 = *(v30 + v23 + 40);

          v42 = v33;
          v43 = v32;
          v15 = v31;
          v34 = sub_1BA4A44A8();

          v25(v13, v6);
          v17 = v36;
          if (v34 > 0)
          {
            return 1;
          }
        }

        ++v24;
        v23 += 16;
      }

      while (v39 != v24);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA062E20(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  swift_beginAccess();
  v46 = a1;
  v11 = *(a1 + 104);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = sub_1BA4A4548();
  v17 = *(v4 + 8);
  v15 = v4 + 8;
  v16 = v17;
  result = (v17)(v10, v3);
  if (v14 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      v19 = 0;
      v20 = 0;
      v41 = v14;
      v42 = v3;
      v44 = v16;
      v45 = v15;
      do
      {
        v21 = *(v46 + 104);
        v22 = swift_getObjectType();
        v23 = *(v21 + 16);
        swift_unknownObjectRetain();
        v23(v22, v21);
        v24 = v44;
        swift_unknownObjectRelease();
        v25 = sub_1BA4A4548();
        v24(v10, v3);
        if (v20 < v25)
        {
          v26 = v46;
          v27 = *(v46 + 104);
          v28 = swift_getObjectType();
          v29 = *(v27 + 16);
          swift_unknownObjectRetain();
          v29(v28, v27);
          swift_unknownObjectRelease();
          v30 = *(v26 + 104);
          v3 = v42;
          v31 = swift_getObjectType();
          v32 = *(v30 + 16);
          swift_unknownObjectRetain();
          v33 = v10;
          v34 = v43;
          v32(v31, v30);
          v35 = v44;
          swift_unknownObjectRelease();
          v36 = sub_1BA4A4578();
          result = v35(v34, v3);
          if (v20 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v38 = *(v36 + v19 + 32);
          v37 = *(v36 + v19 + 40);

          v47 = v38;
          v48 = v37;
          v39 = sub_1BA4A44A8();

          v35(v33, v3);
          v10 = v33;
          v14 = v41;
          if (v39 > 0)
          {
            return 1;
          }
        }

        ++v20;
        v19 += 16;
      }

      while (v14 != v20);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA06316C(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - v9;
  v49 = a1;
  sub_1BA0FBDE0();
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  v14(ObjectType, v12);
  swift_unknownObjectRelease();
  v15 = sub_1BA4A4548();
  v18 = *(v4 + 8);
  v16 = v4 + 8;
  v17 = v18;
  result = (v18)(v10, v3);
  if (v15 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v15)
    {
      v20 = 0;
      v21 = 0;
      v44 = v16;
      v45 = v3;
      v47 = v15;
      v48 = v17;
      do
      {
        sub_1BA0FBDE0();
        v23 = v22;
        v24 = swift_getObjectType();
        v25 = *(v23 + 16);
        swift_unknownObjectRetain();
        v26 = v24;
        v27 = v48;
        v25(v26, v23);
        swift_unknownObjectRelease();
        v28 = sub_1BA4A4548();
        v27(v10, v3);
        if (v21 < v28)
        {
          sub_1BA0FBDE0();
          v30 = v29;
          v31 = swift_getObjectType();
          v32 = *(v30 + 16);
          swift_unknownObjectRetain();
          v32(v31, v30);
          swift_unknownObjectRelease();
          v3 = v45;
          sub_1BA0FBDE0();
          v34 = v33;
          v35 = swift_getObjectType();
          v36 = *(v34 + 16);
          swift_unknownObjectRetain();
          v37 = v46;
          v38 = v35;
          v39 = v48;
          v36(v38, v34);
          swift_unknownObjectRelease();
          v40 = sub_1BA4A4578();
          result = v39(v37, v3);
          if (v21 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v41 = *(v40 + v20 + 32);
          v42 = *(v40 + v20 + 40);

          v50 = v41;
          v51 = v42;
          v43 = sub_1BA4A44A8();

          v39(v10, v3);
          if (v43 >= 1)
          {
            return 1;
          }
        }

        ++v21;
        v20 += 16;
      }

      while (v47 != v21);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA0634AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = *a3;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v40 = a1;
  v41 = v14;
  v15(v13, a1 + v14, v6);
  v16 = sub_1BA4A4548();
  v17 = *(v7 + 8);
  v18 = v7 + 8;
  result = v17(v13, v6);
  if (v16 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v16)
    {
      v39 = v17;
      v20 = 0;
      v21 = 0;
      v36 = v16;
      v37 = v7 + 16;
      do
      {
        v15(v13, v40 + v41, v6);
        v22 = sub_1BA4A4548();
        v23 = v39;
        v39(v13, v6);
        if (v21 < v22)
        {
          v24 = v40;
          v25 = v41;
          v15(v13, v40 + v41, v6);
          v26 = v24 + v25;
          v27 = v15;
          v28 = v38;
          v29 = v27;
          v27(v38, v26, v6);
          v30 = sub_1BA4A4578();
          result = v23(v28, v6);
          if (v21 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v31 = v18;
          v33 = *(v30 + v20 + 32);
          v32 = *(v30 + v20 + 40);

          v42 = v33;
          v43 = v32;
          v34 = sub_1BA4A44A8();

          v18 = v31;
          v23(v13, v6);
          v15 = v29;
          v16 = v36;
          if (v34 > 0)
          {
            return 1;
          }
        }

        ++v21;
        v20 += 16;
      }

      while (v16 != v21);
    }

    return 0;
  }

  return result;
}

void sub_1BA0637A4(uint64_t a1)
{
  if (!qword_1EBBEABD0)
  {
    v4[0] = type metadata accessor for NotificationSettingsDataSource(255);
    v4[1] = type metadata accessor for NotificationInvalidAuthorizationDataSource(255);
    v4[2] = &protocol witness table for CompoundSectionedDataSource;
    v4[3] = &protocol witness table for CompoundSectionedDataSource;
    v2 = type metadata accessor for PrimarySecondaryDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEABD0);
    }
  }
}

void *sub_1BA063820(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062B44;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = a1[3];
  v11 = a1[4];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v13 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = a1[2];
  swift_beginAccess();
  v15 = *(v14 + 16);

  [v15 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  swift_beginAccess();
  [*(v16 + 16) registerObserver_];
  return v3;
}

void *sub_1BA063A28(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062B50;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = a1[3];
  v11 = a1[4];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = a1[2];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);

  [v16 registerObserver_];
  swift_beginAccess();
  v17 = *(v3[8] + 16);
  swift_beginAccess();
  [*(v17 + 16) registerObserver_];
  return v3;
}

void *sub_1BA063C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = v5;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:v12];

  v9[2] = v15;
  v9[5] = a3;
  v9[6] = 0;
  sub_1BA4A7DF8();

  v16 = (a1 + *a4);
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x1BFAF1350](v17, v18);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v19 = (a2 + *a5);
  v20 = *v19;
  v21 = v19[1];

  MEMORY[0x1BFAF1350](v20, v21);

  v9[3] = 0xD000000000000011;
  v9[4] = 0x80000001BA4E6710;
  v9[7] = a1;
  v9[8] = a2;
  swift_beginAccess();
  v22 = *(a1 + 16);

  [v22 registerObserver_];
  swift_beginAccess();
  v23 = v9[8];
  swift_beginAccess();
  [*(v23 + 16) registerObserver_];
  return v9;
}

void *sub_1BA063F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062E14;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v11 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v15 = *(a1 + v14);

  [v15 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  swift_beginAccess();
  [*(v16 + 16) registerObserver_];
  return v3;
}

void *sub_1BA064154(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v5[2] = v11;
  v5[5] = a3;
  v5[6] = 0;
  sub_1BA4A7DF8();

  v12 = *&a1[qword_1EDC84AD0];
  v13 = *&a1[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v12, v13);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v14 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v15 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v14, v15);

  v5[3] = 0xD000000000000011;
  v5[4] = 0x80000001BA4E6710;
  v5[7] = a1;
  v5[8] = a2;
  v16 = qword_1EBBEA528;
  swift_beginAccess();
  v17 = *&a1[v16];
  v18 = a1;

  [v17 registerObserver_];
  swift_beginAccess();
  v19 = v5[8];
  swift_beginAccess();
  [*(v19 + 16) registerObserver_];
  return v5;
}

void *sub_1BA064364(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA064A30;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *&a1[qword_1EDC84AD0];
  v11 = *&a1[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = qword_1EBBEA528;
  swift_beginAccess();
  v15 = *&a1[v14];
  v16 = a1;

  [v15 registerObserver_];
  swift_beginAccess();
  v17 = *(v3[8] + 32);
  swift_beginAccess();
  [*(v17 + 16) registerObserver_];
  return v3;
}

void *sub_1BA064594(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = v4;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  v7[2] = v13;
  v7[5] = a3;
  v7[6] = 0;
  sub_1BA4A7DF8();

  v14 = a1[3];
  v15 = a1[4];

  MEMORY[0x1BFAF1350](v14, v15);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v16 = (a2 + *a4);
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x1BFAF1350](v17, v18);

  v7[3] = 0xD000000000000011;
  v7[4] = 0x80000001BA4E6710;
  v7[7] = a1;
  v7[8] = a2;
  swift_beginAccess();
  v19 = a1[2];

  [v19 registerObserver_];
  swift_beginAccess();
  v20 = v7[8];
  swift_beginAccess();
  [*(v20 + 16) registerObserver_];
  return v7;
}

void *sub_1BA064790(uint64_t a1, char *a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA064A34;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v11 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *&a2[qword_1EDC84AD0];
  v13 = *&a2[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  swift_beginAccess();
  v14 = *(a1 + 16);

  v15 = a2;
  [v14 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  v17 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v16 + v17) registerObserver_];
  return v3;
}

void sub_1BA0649AC(uint64_t a1)
{
  if (!qword_1EDC61AE0)
  {
    v2 = sub_1BA4A27B8();
    v3 = sub_1B9F15730();
    v5 = type metadata accessor for FetchedResultsWithLayoutDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC61AE0);
    }
  }
}

uint64_t PDFVStackWithFixedWidth.init(width:spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = a4;
  *(a2 + 16) = a3;
  return result;
}

double PDFVStackWithFixedWidth.render(context:document:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v6 = sub_1BA20F244(a2);
  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v5, 0);

  PDFVStack.render(context:document:)(a1, v6);

  swift_initStackObject();
  v7 = sub_1BA20F244(a2);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v5, 0);
  PDFVStack.boundingRectForContent(in:)(v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  Height = CGRectGetHeight(v27);
  v28.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  v21 = v28.size.height;
  v22 = CGRectGetMinX(v28) + 0.0;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = v21;
  v23 = Height + CGRectGetMinY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = v21;
  v24 = CGRectGetWidth(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = v21;
  v25 = CGRectGetHeight(v31);

  result = v25 - Height;
  *(a2 + 168) = v22;
  *(a2 + 176) = v23;
  *(a2 + 184) = v24;
  *(a2 + 192) = v25 - Height;
  *(a2 + 200) = 0;
  return result;
}

double PDFVStackWithFixedWidth.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_initStackObject();
  v4 = sub_1BA20F244(a1);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v3, 0);
  PDFVStack.boundingRectForContent(in:)(v4, v5);
  v7 = v6;

  return v7;
}

double PDFVStackWithFixedWidth.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_initStackObject();
  v4 = sub_1BA20F244(a1);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v3, 0);
  PDFVStack.boundingRectForContent(in:)(v4, v5);
  v7 = v6;

  return v7;
}

void SnapshotDataSource.firstItem.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = SnapshotDataSource.numberOfSections.getter(a1, a2);
  if (v6 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v7 == v9)
      {
        goto LABEL_12;
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_14;
      }

      v10 = SnapshotDataSource.numberOfItems(in:)(v9++);
      v8 += 16;
    }

    while (v10 <= 0);
    v11 = SnapshotDataSource.sectionIdentifiers.getter(a1, a2);
    if (v9 - 1 >= *(v11 + 16))
    {
      goto LABEL_15;
    }

    v12 = *(v11 + v8 + 16);
    v13 = *(v11 + v8 + 24);

    v14 = SnapshotDataSource.itemIdentifiers(in:)(v12, v13, a1, a2);

    if (!v14[2])
    {

LABEL_12:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v15 = v14[4];
    v16 = v14[5];

    (*(a2 + 24))(v15, v16, a1, a2);
  }
}

uint64_t NSDiffableDataSourceSnapshot.snapshotWithoutUpdateOperations()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = a1[2];
  v38 = sub_1BA4A7AA8();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v37 = &v30 - v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 1);
  v30 = v11;
  v31 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v40 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BA4A4598();
  sub_1BA4A6BF8();
  swift_getWitnessTable();
  v17 = sub_1BA4A6E78();

  if (v17)
  {
    v43 = sub_1BA4A45B8();
    v18 = sub_1BA4A6E78();

    if (v18)
    {
      v43 = sub_1BA4A45A8();
      sub_1BA4A6BF8();
      swift_getWitnessTable();
      v19 = sub_1BA4A6E78();

      if (v19)
      {
        return (*(v31 + 16))(v32, v3, a1);
      }
    }
  }

  sub_1BA4A45D8();
  v39 = a1;
  v36 = v3;
  v21 = sub_1BA4A4578();
  if (sub_1BA4A6BC8())
  {
    v22 = 0;
    v42 = (v8 + 16);
    v34 = (v41 + 8);
    v35 = v8 + 56;
    v33 = v8 + 8;
    do
    {
      v23 = sub_1BA4A6BA8();
      sub_1BA4A6B48();
      if (v23)
      {
        v24 = *(v8 + 16);
        v24(v12, (v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22), v5);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1BA4A7E18();
        if (v30 != 8)
        {
          __break(1u);
          return result;
        }

        v43 = result;
        v24 = *v42;
        (*v42)(v12, &v43, v5);
        swift_unknownObjectRelease();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v41 = v25;
      sub_1BA066AFC(v5, v5);
      swift_allocObject();
      sub_1BA4A6B38();
      v24(v26, v12, v5);
      sub_1BA4A6BF8();
      sub_1BA4A44C8();

      sub_1BA4A4528();
      v27 = v12;
      v28 = v37;
      (*(v8 + 56))(v37, 1, 1, v5);
      sub_1BA4A4448();

      v29 = v28;
      v12 = v27;
      (*v34)(v29, v38);
      (*(v8 + 8))(v27, v5);
      ++v22;
    }

    while (v41 != sub_1BA4A6BC8());
  }

  return (*(v31 + 32))(v32, v40, v39);
}

unint64_t NSDiffableDataSourceSnapshot<>.description.getter()
{
  sub_1BA4A7DF8();

  v23 = 0xD000000000000019;
  v24 = 0x80000001BA4E67C0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  sub_1BA4A4548();
  v0 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0x6920666F2023202CLL, 0xEE00203A736D6574);
  v22[0] = sub_1BA4A44B8();
  v1 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  v21 = sub_1BA4A4578();
  v2 = *(v21 + 16);
  if (v2)
  {
    v3 = (v21 + 40);
    v4 = MEMORY[0x1E69E6158];
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      sub_1BA4A7DF8();

      strcpy(v22, "In section: ");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      MEMORY[0x1BFAF1350](v6, v5);
      MEMORY[0x1BFAF1350](2618, 0xE200000000000000);
      MEMORY[0x1BFAF1350](v22[0], v22[1]);

      v7 = sub_1BA4A4528();

      v8 = MEMORY[0x1BFAF1560](v7, v4);
      v10 = v9;

      v22[0] = v8;
      v22[1] = v10;
      MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
      MEMORY[0x1BFAF1350](v8, v10);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1BA4A7DF8();

  sub_1BA4A45B8();
  v11 = MEMORY[0x1BFAF1560]();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E67E0);

  sub_1BA4A7DF8();

  sub_1BA4A4598();
  v14 = MEMORY[0x1BFAF1560]();
  v16 = v15;

  MEMORY[0x1BFAF1350](v14, v16);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000010, 0x80000001BA4E6800);

  sub_1BA4A7DF8();

  sub_1BA4A45A8();
  v17 = MEMORY[0x1BFAF1560]();
  v19 = v18;

  MEMORY[0x1BFAF1350](v17, v19);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E6820);

  return v23;
}

void sub_1BA065994(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v41 = *a2;
  sub_1BA4A3D88();

  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FB8();

  v17 = os_log_type_enabled(v15, v16);
  v42 = v14;
  if (!v17)
  {

    (*(v10 + 8))(v13, v9);
    goto LABEL_7;
  }

  v40 = v10;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v44 = v19;
  *v18 = 136315650;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v39 = v9;
  v20 = *(a3 + 16);
  if (v14 >= v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = v19;
  v36 = v16;
  v37 = a4;
  v38 = v4;
  v21 = a3 + 32;
  v22 = (a3 + 32 + 40 * v14);
  v23 = v21;
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v24 = sub_1BA4A2D58();
  v26 = sub_1B9F0B82C(v24, v25, &v44);

  *(v18 + 4) = v26;
  *(v18 + 12) = 2080;
  sub_1B9F0A534(v22, v43);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  v27 = sub_1BA4A6808();
  v29 = sub_1B9F0B82C(v27, v28, &v44);

  *(v18 + 14) = v29;
  *(v18 + 22) = 2080;
  if (v41 < v20)
  {
    sub_1B9F0A534(v23 + 40 * v41, v43);
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, &v44);

    *(v18 + 24) = v32;
    _os_log_impl(&dword_1B9F07000, v15, v36, "Duplicate key when creating cache map %s left: %s right: %s", v18, 0x20u);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v33, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);

    (*(v40 + 8))(v13, v39);
    a4 = v37;
LABEL_7:
    *a4 = v42;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1BA065CAC(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v51 = *a2;
  sub_1BA4A3D88();

  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FB8();

  if (!os_log_type_enabled(v15, v16))
  {

    (*(v10 + 8))(v13, v9);
    goto LABEL_7;
  }

  v50 = v16;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v58 = v18;
  *v17 = 136315650;
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v14;
  v20 = *(a3 + 16);
  if (v19 >= v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v45 = v18;
  v46 = v19;
  v47 = v9;
  v48 = a4;
  v49 = v4;
  v21 = a3 + 32;
  v22 = (a3 + 32 + 48 * v19);
  v23 = v22[4];
  v24 = v22[5];

  v25 = sub_1B9F0B82C(v23, v24, &v58);

  *(v17 + 4) = v25;
  *(v17 + 12) = 2080;
  v26 = v22[1];
  v28 = v22[2];
  v27 = v22[3];
  v29 = v22[4];
  v30 = v22[5];
  v52 = *v22;
  v53 = v26;
  v54 = v28;
  v55 = v27;
  v56 = v29;
  v57 = v30;

  v31 = sub_1BA4A6808();
  v33 = sub_1B9F0B82C(v31, v32, &v58);

  *(v17 + 14) = v33;
  *(v17 + 22) = 2080;
  if (v51 < v20)
  {
    v34 = (v21 + 48 * v51);
    v35 = v34[1];
    v37 = v34[2];
    v36 = v34[3];
    v38 = v34[4];
    v39 = v34[5];
    v52 = *v34;
    v53 = v35;
    v54 = v37;
    v55 = v36;
    v56 = v38;
    v57 = v39;

    v40 = sub_1BA4A6808();
    v42 = sub_1B9F0B82C(v40, v41, &v58);

    *(v17 + 24) = v42;
    _os_log_impl(&dword_1B9F07000, v15, v50, "Duplicate key when creating cache map %s left: %s right: %s", v17, 0x20u);
    v43 = v45;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v43, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v10 + 8))(v13, v47);
    a4 = v48;
    v14 = v46;
LABEL_7:
    *a4 = v14;
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t SnapshotDataSource.doesIndexPathExist(_:)(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = sub_1BA4A1998();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v66 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = &v64 - v19;
  v20 = sub_1BA4A3EA8();
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v64 - v26;
  v28 = sub_1BA4A1968();
  v71 = v3;
  if (v28 >= SnapshotDataSource.numberOfSections.getter(a2, a3))
  {
    v66 = a2;
    sub_1BA4A3D88();
    v33 = v69;
    v34 = *(v69 + 16);
    v34(v13, a1, v7);
    v34(v70, a1, v7);
    swift_unknownObjectRetain();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v73 = v38;
      *v37 = 134218498;
      v39 = sub_1BA4A1968();
      v40 = *(v33 + 8);
      v40(v13, v7);
      *(v37 + 4) = v39;
      *(v37 + 12) = 2048;
      v41 = v70;
      v42 = sub_1BA4A1958();
      v40(v41, v7);
      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      v72 = v71;
      swift_unknownObjectRetain();
      v43 = sub_1BA4A6808();
      v45 = sub_1B9F0B82C(v43, v44, &v73);

      *(v37 + 24) = v45;
      _os_log_impl(&dword_1B9F07000, v35, v36, "The indexpath's section with section %ld and item %ld requested does not exist in the data source %s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    else
    {
      v62 = *(v33 + 8);
      v62(v70, v7);
      v62(v13, v7);
    }

    (*(v67 + 8))(v23, v68);
  }

  else
  {
    v29 = v69;
    v30 = sub_1BA4A1958();
    v31 = sub_1BA4A1968();
    if (v30 < SnapshotDataSource.numberOfItems(in:)(v31))
    {
      return 1;
    }

    v46 = v27;
    sub_1BA4A3D88();
    v47 = v29;
    v48 = *(v29 + 16);
    v49 = v65;
    v50 = v7;
    v48(v65, a1, v7);
    v51 = v66;
    v48(v66, a1, v50);
    swift_unknownObjectRetain();
    v52 = sub_1BA4A3E88();
    v53 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73 = v70;
      *v54 = 134218498;
      v55 = sub_1BA4A1968();
      v56 = *(v47 + 8);
      v56(v49, v50);
      *(v54 + 4) = v55;
      *(v54 + 12) = 2048;
      v57 = sub_1BA4A1958();
      v56(v51, v50);
      *(v54 + 14) = v57;
      *(v54 + 22) = 2080;
      v72 = v71;
      swift_unknownObjectRetain();
      v58 = sub_1BA4A6808();
      v60 = sub_1B9F0B82C(v58, v59, &v73);

      *(v54 + 24) = v60;
      _os_log_impl(&dword_1B9F07000, v52, v53, "The indexpath's item with section %ld and item %ld requested does not exist in the data source %s", v54, 0x20u);
      v61 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v54, -1, -1);
    }

    else
    {
      v63 = *(v47 + 8);
      v63(v51, v50);
      v63(v49, v50);
    }

    (*(v67 + 8))(v46, v68);
  }

  return 0;
}

uint64_t NSDiffableDataSourceSnapshot.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = *(a2 + 24);
  v6 = sub_1BA4A7AA8();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = v41 - v8;
  v46 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = sub_1BA4A7AA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v41 - v16;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[1] = a1;
  sub_1BA4A4568();
  if ((*(v18 + 48))(v17, 1, v12) == 1)
  {
    (*(v14 + 8))(v17, v13);
LABEL_10:
    v35 = 1;
    v36 = v48;
LABEL_11:
    v37 = sub_1BA4A1998();
    return (*(*(v37 - 8) + 56))(v36, v35, 1, v37);
  }

  (*(v18 + 32))(v22, v17, v12);
  v23 = sub_1BA4A44E8();
  if (v24)
  {
LABEL_9:
    (*(v18 + 8))(v22, v12);
    goto LABEL_10;
  }

  v25 = v23;
  v41[0] = sub_1BA4A4528();
  v49 = v41[0];
  v26 = v46;
  sub_1BA4A6BF8();
  swift_getWitnessTable();
  v27 = v45;
  sub_1BA4A6E68();
  v28 = v47;
  if ((*(v47 + 48))(v27, 1, v26) == 1)
  {
    (*(v18 + 8))(v22, v12);
    (*(v42 + 8))(v27, v43);

    goto LABEL_10;
  }

  v43 = v25;
  v29 = v44;
  (*(v28 + 32))(v44, v27, v26);

  v30 = sub_1BA4A4468();
  if (v31 & 1) != 0 || (v32 = v30, result = sub_1BA4A4468(), (v34))
  {
    (*(v28 + 8))(v29, v26);
    goto LABEL_9;
  }

  v38 = __OFSUB__(result, v32);
  v39 = result - v32;
  v36 = v48;
  if (!v38)
  {
    sub_1B9F1BFA8(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BA4B5460;
    *(v40 + 32) = v43;
    *(v40 + 40) = v39;
    MEMORY[0x1BFAEC320]();
    (*(v28 + 8))(v29, v26);
    (*(v18 + 8))(v22, v12);
    v35 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BA066AFC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    sub_1B9F1BFA8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {

    sub_1BA4A82E8();
  }
}

void *sub_1BA066B80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  *v3 = result;
  return result;
}

char *sub_1BA066BB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0679A8(a1, a2, a3, *v3, sub_1BA069A54);
  *v3 = result;
  return result;
}

void *sub_1BA066BEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  *v3 = result;
  return result;
}

void *sub_1BA066C24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066C44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06734C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066C64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066C84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0675AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066CA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066CC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEA648, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C80]);
  *v3 = result;
  return result;
}

void *sub_1BA066D14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066D34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0679A8(a1, a2, a3, *v3, sub_1B9F7A684);
  *v3 = result;
  return result;
}

char *sub_1BA066D68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066D88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068954(a1, a2, a3, *v3, &qword_1EBBEAC80, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row);
  *v3 = result;
  return result;
}

void *sub_1BA066DC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066DE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067D2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066E00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAC20, sub_1BA00ADAC, sub_1BA00ADAC);
  *v3 = result;
  return result;
}

void *sub_1BA066E50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, type metadata accessor for SummarySharingSelectableDataTypeItem);
  *v3 = result;
  return result;
}

void *sub_1BA066EA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA067FB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066EC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0681CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066EE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0682D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066F00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, type metadata accessor for ContentConfigurationItem);
  *v3 = result;
  return result;
}

char *sub_1BA066F50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0685B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066F70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA0686E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066F90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066FB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068954(a1, a2, a3, *v3, &qword_1EBBEACA0, &qword_1EDC6B670, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

char *sub_1BA066FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EBBEAC38, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  *v3 = result;
  return result;
}

char *sub_1BA067060(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067080(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC5DC80, qword_1EDC69430, &protocol descriptor for PDFRenderable);
  *v3 = result;
  return result;
}

void *sub_1BA0670B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EDC6B438, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E18]);
  *v3 = result;
  return result;
}

void *sub_1BA067108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAC30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1BA067158(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA069280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067178(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA069510(a1, a2, a3, *v3, &qword_1EBBEAC98, sub_1B9FE983C, sub_1B9FE983C);
  *v3 = result;
  return result;
}

void *sub_1BA0671C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EBBEAC28, &qword_1EBBE9B10, &protocol descriptor for SourcesItem);
  *v3 = result;
  return result;
}

void *sub_1BA067200(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA069920(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EDC5E5C8, MEMORY[0x1E69E6530], &type metadata for EmbeddedDataSourceCollectionViewCell.Item, "offset element ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA06734C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DC50, &type metadata for EmbeddedDataSourceCollectionViewCell.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA067488(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA0675AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA069B20(0, &qword_1EBBEA8A0, &qword_1EDC6E1A0, MEMORY[0x1E69E6720]);
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
    sub_1BA069708(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA06772C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BA067838(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA0698C8(0, &qword_1EDC5DBF8, &qword_1EDC5E718, sub_1B9FD8844);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069998(0, &qword_1EDC5E718, sub_1B9FD8844);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA0679A8(char *result, int64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1BA067AA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA067BC0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA069B20(0, &unk_1EDC6B420, &qword_1EDC6B688, MEMORY[0x1E69E62F8]);
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
    sub_1BA069708(0, &qword_1EDC6B688, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA067D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC90, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA067E64(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F25CF4(0, &qword_1EBBEA628, sub_1BA025410, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA025410(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA067FB0(void *result, int64_t a2, char a3, void *a4)
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

  sub_1BA0698C8(0, &qword_1EBBEAC50, &qword_1EBBEAC58, sub_1BA0699FC);
  sub_1BA069998(0, &qword_1EBBEAC58, sub_1BA0699FC);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1BA069998(0, &qword_1EBBEAC58, sub_1BA0699FC);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1BA0681CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC40, MEMORY[0x1E69A3C50], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BA0682D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA06986C(0, &qword_1EBBEAC18, &qword_1EBBEAAA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EE8]);
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
    sub_1B9F1BFA8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EE8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA068454(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA069774(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EBBEAAE0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, "key value ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA0685B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DCA8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA0686E8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA06986C(0, &unk_1EDC5DC10, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1BFA8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA068854(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9FE91CC();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA068954(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1BA06986C(0, a5, a6, a7, MEMORY[0x1E69E62F8]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1BFA8(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_1BA068ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BA068BC8(void *result, int64_t a2, char a3, void *a4)
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

  sub_1BA0697F0(0);
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1BA068DDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F25CF4(0, &qword_1EDC5DB90, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1BA068F20(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1BA069708(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1BA06908C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B9F25CF4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1BA069280(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC00, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E6F90]);
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

void *sub_1BA0693A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA069B8C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EBBEA6A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "key value ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA069510(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1B9F25CF4(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1BA069708(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA069774(uint64_t a1)
{
  if (!qword_1EBBEA600)
  {
    sub_1BA069C00(255, &qword_1EBBEAAE0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, "key value ");
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA600);
    }
  }
}

void sub_1BA0697F0(uint64_t a1)
{
  if (!qword_1EBBEAC08)
  {
    sub_1B9F117BC(255, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAC08);
    }
  }
}

void sub_1BA06986C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F1BFA8(255, a3, a4, a5);
    v6 = sub_1BA4A82E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0698C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA069998(255, a3, a4);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA069920(uint64_t a1)
{
  if (!qword_1EDC5DBE0)
  {
    sub_1BA069C00(255, &qword_1EDC5E5C8, MEMORY[0x1E69E6530], &type metadata for EmbeddedDataSourceCollectionViewCell.Item, "offset element ");
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DBE0);
    }
  }
}

void sub_1BA069998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BA0699FC()
{
  if (!qword_1EBBEAC60)
  {
    v0 = sub_1BA4A4778();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC60);
    }
  }
}

void sub_1BA069A54(uint64_t a1)
{
  if (!qword_1EBBEAC68)
  {
    sub_1BA069AC8(255, &qword_1EBBEAC70, &qword_1EBBEAC78, &protocol descriptor for ReusableView, 0);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAC68);
    }
  }
}

uint64_t sub_1BA069AC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  result = *a2;
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, a5 & 1);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA069B20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BA069708(255, a3, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], a4);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA069B8C(uint64_t a1)
{
  if (!qword_1EBBEA698)
  {
    sub_1BA069C00(255, &qword_1EBBEA6A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "key value ");
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA698);
    }
  }
}

void sub_1BA069C00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t PDFVerticalSeparator.init(lineWidth:horizontalMargin:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

double PDFVerticalSeparator.render(context:document:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v28 = *v2;
  v5 = *(v2 + 16);
  v6 = [a1 CGContext];
  CGContextSaveGState(v6);
  v29.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = v4 + CGRectGetMinX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v12 = CGRectGetMinY(v30) + 0.0;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v13 = CGRectGetWidth(v31) - v4;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v14 = CGRectGetHeight(v32);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = v14;
  *(a2 + 200) = 0;
  CGContextSetLineWidth(v6, v28);
  sub_1BA069EC4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v16 = *(a2 + 168);
  v33.origin.y = *(a2 + 176);
  v33.size.width = *(a2 + 184);
  v33.size.height = *(a2 + 192);
  *(v15 + 32) = v16;
  *(v15 + 40) = v33.origin.y;
  v33.origin.x = v16;
  MaxY = CGRectGetMaxY(v33);
  *(v15 + 48) = v16;
  *(v15 + 56) = MaxY;
  sub_1BA4A6F08();

  CGContextSetStrokeColorWithColor(v6, v5);
  CGContextStrokePath(v6);
  CGContextRestoreGState(v6);
  v18 = v28 + v4;
  v19 = *(a2 + 168);
  v20 = *(a2 + 176);
  v21 = *(a2 + 184);
  v22 = *(a2 + 192);
  v34.origin.x = v19;
  v34.origin.y = v20;
  v34.size.width = v21;
  v34.size.height = v22;
  v23 = CGRectGetMinX(v34) + 0.0;
  v35.origin.x = v19;
  v35.origin.y = v20;
  v35.size.width = v21;
  v35.size.height = v22;
  v24 = v18 + CGRectGetMinY(v35);
  v36.origin.x = v19;
  v36.origin.y = v20;
  v36.size.width = v21;
  v36.size.height = v22;
  v25 = CGRectGetWidth(v36);
  v37.origin.x = v19;
  v37.origin.y = v20;
  v37.size.width = v21;
  v37.size.height = v22;
  v26 = CGRectGetHeight(v37);

  result = v26 - v18;
  *(a2 + 168) = v23;
  *(a2 + 176) = v24;
  *(a2 + 184) = v25;
  *(a2 + 192) = v26 - v18;
  *(a2 + 200) = 0;
  return result;
}

void sub_1BA069EC4(uint64_t a1)
{
  if (!qword_1EDC5DB80)
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DB80);
    }
  }
}

uint64_t DeviceSourcesDataSource.__allocating_init(healthStore:)(void *a1)
{
  v11[3] = &type metadata for HealthStoreDeviceProvider;
  v11[4] = &off_1F38030B0;
  v11[0] = a1;
  type metadata accessor for DeviceSourcesDataSource(0);
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for HealthStoreDeviceProvider);
  v4 = MEMORY[0x1EEE9AC00](v3, v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = sub_1BA06D4C4(a1, *v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t type metadata accessor for DeviceSourcesDataSource(uint64_t a1)
{
  result = qword_1EBBEACB0;
  if (!qword_1EBBEACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA06A060(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EBBF0B98);
  sub_1B9F37E38(v8, v7);
  v7[6] = 0x4034000000000000;
  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

void sub_1BA06A148(void *a1)
{
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 sources];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 orderedDeviceSources];
    sub_1B9F0ADF8(0, &qword_1EBBE99E8, 0x1E69A44B8);
    v13 = sub_1BA4A6B08();

    sub_1BA06A418(v13);
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      v21[1] = v3;
      *v16 = 136446210;
      swift_getMetatypeMetadata();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] App data sources did not get fetched", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

double sub_1BA06A440(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices);

  sub_1BA06A870(a2, v3);

  return result;
}

uint64_t sub_1BA06A4A0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider + 24));

  sub_1BA06D908(v1, v0);
}

uint64_t sub_1BA06A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = sub_1BA4A6478();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A64C8();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v15 = sub_1BA4A7308();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AE40(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AE40(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v14, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

double sub_1BA06A814(uint64_t a1, uint64_t a2)
{

  sub_1BA06A870(v3, a2);

  return result;
}

void sub_1BA06A870(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v15 = sub_1BA4A7308();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v16 = sub_1BA4A6528();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources;
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources) = a1;

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices) = a2;

    a1 = *(v3 + v17);
    if (!a1)
    {

      return;
    }

    if (!a2)
    {
      return;
    }

    if (!(a1 >> 62))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:

LABEL_12:
        sub_1BA06AD78(a1, a2);
        v19 = v18;

        v36 = v19;

        sub_1BA06C4D0(&v36);

        v20 = sub_1B9FE598C(v36);

        v21 = sub_1B9FE4F98(v20);

        sub_1BA0EB668(0, v21, 1);

        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  if (sub_1BA4A7CC8())
  {
    goto LABEL_6;
  }

LABEL_10:
  if ((a2 & 0xC000000000000001) != 0)
  {

    if (sub_1BA4A7CC8())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v22 = *(a2 + 16);

    if (v22)
    {
      goto LABEL_12;
    }
  }

  sub_1B9FF6758();
  inited = swift_initStackObject();
  v35 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  if (qword_1EBBE8278 != -1)
  {
    swift_once();
  }

  v25 = unk_1EBC093B0;
  *&v35 = qword_1EBC093A8;
  v26 = type metadata accessor for EmptyIconSourcesItem();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  v29 = [v28 init];
  *(v27 + 40) = v25;
  *(v27 + 48) = v29;
  *(v27 + 32) = v35;
  *(v27 + 56) = 1;
  *(v24 + 56) = v26;
  *(v24 + 64) = sub_1B9F0AE40(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem, &protocol conformance descriptor for EmptyIconSourcesItem);
  *(v24 + 32) = v27;
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  (*(v7 + 8))(v10, v6);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v34 = Array<A>.identifierToIndexDict()(v33);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v24;
  *(inited + 56) = v34;
  *(inited + 64) = v30;
  *(inited + 72) = v32;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  sub_1B9FF7224(inited + 32);
}

void sub_1BA06AD78(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41[0] = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CC0];

  sub_1BA06D804(a1, v3, v41, &v40);
  v36 = v3;

  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1B9F0ADF8(0, &qword_1EBBE9E48, 0x1E696C0B8);
    sub_1BA06DC94();
    sub_1BA4A6DA8();
    a2 = v41[1];
    v6 = v41[2];
    v7 = v41[3];
    v8 = v41[4];
    v9 = v41[5];
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v35 = a2;
  while (a2 < 0)
  {
    if (!sub_1BA4A7CF8() || (sub_1B9F0ADF8(0, &qword_1EBBE9E48, 0x1E696C0B8), swift_dynamicCast(), countAndFlagsBits = v39.uniqueIdentifier._countAndFlagsBits, v16 = v8, v17 = v9, !v39.uniqueIdentifier._countAndFlagsBits))
    {
LABEL_29:
      sub_1B9F52E48(a2);

      return;
    }

LABEL_18:
    sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
    v19 = [objc_opt_self() localDevice];
    v20 = sub_1BA4A7798();

    if ((v20 & 1) != 0 || [countAndFlagsBits _isAppleManufacturer] && objc_msgSend(countAndFlagsBits, sel__isAppleModel) && objc_msgSend(countAndFlagsBits, sel__isAppleHardwareVersion))
    {

      v8 = v16;
      v9 = v17;
    }

    else
    {
      v38 = v17;
      v21 = *(v36 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore);
      v22 = countAndFlagsBits;
      DeviceSourcesItem.init(device:healthStore:)(&v39, v22, v21);
      v23 = v39.uniqueIdentifier._countAndFlagsBits;
      object = v39.uniqueIdentifier._object;
      v25 = v39.name._object;
      v37 = v39.name._countAndFlagsBits;
      isa = v39.device.super.isa;
      v27 = v39.healthStore.super.isa;
      v28 = v41[0];

      LOBYTE(v28) = sub_1BA3D30B0(v23, object, v28);

      if (v28)
      {

        v8 = v16;
        v9 = v38;
        a2 = v35;
      }

      else
      {
        v33 = v27;

        sub_1BA0E1C3C(&v39, v23, object);

        v29 = v40;
        v34 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1BA27FC24(0, v29[2] + 1, 1, v29);
        }

        a2 = v35;
        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1BA27FC24((v30 > 1), v31 + 1, 1, v29);
        }

        v39.name._object = &type metadata for DeviceSourcesItem;
        v39.device.super.isa = sub_1BA06DCFC();
        v32 = swift_allocObject();
        v39.uniqueIdentifier._countAndFlagsBits = v32;
        v32[2] = v23;
        v32[3] = object;
        v32[4] = v37;
        v32[5] = v34;
        v32[6] = isa;
        v32[7] = v33;
        v29[2] = v31 + 1;
        sub_1B9F1134C(&v39.uniqueIdentifier._countAndFlagsBits, &v29[5 * v31 + 4]);
        v40 = v29;
        v8 = v16;
        v9 = v38;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    countAndFlagsBits = *(*(a2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!countAndFlagsBits)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_29;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1BA06B1F0(id *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = [*a1 source];
  v9 = [v8 _isHiddenSource];

  if ((v9 & 1) == 0)
  {
    v10 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore);
    LOBYTE(v24) = 2;
    v11 = type metadata accessor for AppSourcesItem();
    swift_allocObject();
    v12 = v7;
    v13 = v10;
    v14 = sub_1BA0B115C(v12, v13, &v24);

    v15 = *a3;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);

    LOBYTE(v13) = sub_1BA3D30B0(v16, v17, v15);

    if (v13)
    {
    }

    else
    {
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      sub_1BA0E1C3C(&v24, v19, v18);

      v20 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1BA27FC24(0, v20[2] + 1, 1, v20);
        *a4 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1BA27FC24((v22 > 1), v23 + 1, 1, v20);
        *a4 = v20;
      }

      v25 = v11;
      v26 = sub_1B9F0AE40(&qword_1EBBEACC8, type metadata accessor for AppSourcesItem, &protocol conformance descriptor for AppSourcesItem);
      *&v24 = v14;
      v20[2] = v23 + 1;
      sub_1B9F1134C(&v24, &v20[5 * v23 + 4]);
    }
  }
}

uint64_t sub_1BA06B470()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider));
}

uint64_t DeviceSourcesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider));
  return v0;
}

uint64_t DeviceSourcesDataSource.__deallocating_deinit()
{
  DeviceSourcesDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA06B63C(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v66 = a5;
  v67 = a6;
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v64 - v22;
  if (a2)
  {
    v24 = v21;
    v65 = a3;
    sub_1BA4A3D88();
    v25 = a2;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = a4;
      v30 = v29;
      v71 = a2;
      aBlock[0] = v29;
      *v28 = 136446210;
      v31 = a2;
      sub_1B9F0CF6C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, aBlock);

      *(v28 + 4) = v34;
      v35 = v67;
      _os_log_impl(&dword_1B9F07000, v26, v27, "Unable to retrieve Bluetooth devices, %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v36 = v30;
      a4 = v64;
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v24 + 8))(v23, v15);
      a3 = v65;
LABEL_17:
      v53 = v66;
LABEL_23:
      v61 = swift_allocObject();
      v61[2] = a3;
      v61[3] = a4;
      v61[4] = v53;
      v61[5] = v35;
      aBlock[4] = sub_1BA06DD60;
      aBlock[5] = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA06C40C;
      aBlock[3] = &block_descriptor_46_0;
      v62 = _Block_copy(aBlock);

      v63 = a4;

      [v63 healthPeripheralsWithFilter:1 handler:v62];
      _Block_release(v62);
      return;
    }

    (*(v24 + 8))(v23, v15);
    a3 = v65;
LABEL_22:
    v53 = v66;
    v35 = v67;
    goto LABEL_23;
  }

  v70 = v10;
  if (!a1)
  {
    goto LABEL_19;
  }

  v37 = v11;
  if (!(a1 >> 62))
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_7;
    }

LABEL_19:
    v56 = v21;
    sub_1BA4A3D88();
    v57 = sub_1BA4A3E88();
    v58 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v15;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1B9F07000, v57, v58, "BTLE services not returned", v60, 2u);
      MEMORY[0x1BFAF43A0](v60, -1, -1);

      (*(v56 + 8))(v18, v59);
    }

    else
    {

      (*(v56 + 8))(v18, v15);
    }

    goto LABEL_22;
  }

  v54 = v21;
  v55 = sub_1BA4A7CC8();
  v21 = v54;
  v38 = v55;
  if (!v55)
  {
    goto LABEL_19;
  }

LABEL_7:
  v64 = a4;
  v65 = a3;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    v40 = aBlock[0];
    v41 = a1;
    v68 = a1 & 0xC000000000000001;
    v69 = a1;
    v42 = (v37 + 8);
    do
    {
      v43 = v38;
      if (v68)
      {
        v44 = MEMORY[0x1BFAF2860](v39, v41);
      }

      else
      {
        v44 = *(v41 + 8 * v39 + 32);
      }

      v45 = v44;
      v46 = [v44 identifier];
      sub_1BA4A1778();

      v47 = sub_1BA4A1748();
      v49 = v48;

      (*v42)(v14, v70);
      aBlock[0] = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1B9F1C360((v50 > 1), v51 + 1, 1);
        v40 = aBlock[0];
      }

      ++v39;
      *(v40 + 16) = v51 + 1;
      v52 = v40 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      v38 = v43;
      v41 = v69;
    }

    while (v43 != v39);
    a3 = v65;
    swift_beginAccess();
    sub_1B9FE271C(v40);
    swift_endAccess();
    v35 = v67;
    a4 = v64;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1BA06BC20(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v70 = a4;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A3EA8();
  v17 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a5;
  if (a2)
  {
    v23 = v19;
    v68 = a3;
    v69 = a6;
    sub_1BA4A3D88();
    v24 = a2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      aBlock[6] = a2;
      v29 = a2;
      sub_1B9F0CF6C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v25, v26, "BTLE services not returned %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v17 + 8))(v22, v23);
    a6 = v69;
    goto LABEL_44;
  }

  v74 = v11;
  v75 = v15;
  v72 = v12;
  if (a1)
  {
    v68 = a3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
    {
      v35 = MEMORY[0x1E69E7CC0];
      v69 = a6;
      if (i)
      {
        v36 = 0;
        a6 = a1 & 0xC000000000000001;
        do
        {
          if (a6)
          {
            v37 = MEMORY[0x1BFAF2860](v36, a1, v20);
          }

          else
          {
            if (v36 >= *(v33 + 16))
            {
              goto LABEL_37;
            }

            v37 = *(a1 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if ([v37 type])
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }

          ++v36;
        }

        while (v39 != i);
        v40 = aBlock[0];
        a6 = v69;
        v35 = MEMORY[0x1E69E7CC0];
        v41 = v72;
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
        v41 = v72;
        if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
        {
LABEL_22:
          if ((v40 & 0x4000000000000000) == 0)
          {
            v33 = *(v40 + 16);
            if (!v33)
            {
              goto LABEL_42;
            }

            goto LABEL_24;
          }
        }
      }

      v58 = v40;
      v33 = sub_1BA4A7CC8();
      v40 = v58;
      if (!v33)
      {
LABEL_42:

        v44 = MEMORY[0x1E69E7CC0];
LABEL_43:
        swift_beginAccess();
        sub_1B9FE271C(v44);
        swift_endAccess();
        break;
      }

LABEL_24:
      v42 = v40;
      aBlock[0] = v35;
      sub_1B9F1C360(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v43 = 0;
      v44 = aBlock[0];
      v45 = v42;
      v72 = v42;
      v73 = v42 & 0xC000000000000001;
      v46 = (v41 + 8);
      while (1)
      {
        a6 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v73)
        {
          v47 = MEMORY[0x1BFAF2860](v43, v45);
        }

        else
        {
          if (v43 >= *(v45 + 16))
          {
            goto LABEL_39;
          }

          v47 = *(v45 + 8 * v43 + 32);
        }

        v48 = v47;
        v49 = [v47 identifier];
        if (!v49)
        {
          goto LABEL_46;
        }

        v50 = v49;
        sub_1BA4A1778();

        v51 = sub_1BA4A1748();
        v52 = v75;
        v53 = v51;
        v55 = v54;

        (*v46)(v52, v74);
        aBlock[0] = v44;
        a1 = *(v44 + 16);
        v56 = *(v44 + 24);
        if (a1 >= v56 >> 1)
        {
          sub_1B9F1C360((v56 > 1), a1 + 1, 1);
          v44 = aBlock[0];
        }

        *(v44 + 16) = a1 + 1;
        v57 = v44 + 16 * a1;
        *(v57 + 32) = v53;
        *(v57 + 40) = v55;
        ++v43;
        v45 = v72;
        if (a6 == v33)
        {

          a6 = v69;
          goto LABEL_43;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }
  }

LABEL_44:
  v59 = objc_allocWithZone(MEMORY[0x1E696C0E0]);
  v60 = [v59 initWithHealthStore_];
  swift_beginAccess();

  sub_1B9F12EB8(v61);

  v62 = sub_1BA4A6D68();

  v63 = *MEMORY[0x1E696B768];
  v64 = swift_allocObject();
  *(v64 + 16) = v71;
  *(v64 + 24) = a6;
  aBlock[4] = sub_1BA06DD6C;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA06C35C;
  aBlock[3] = &block_descriptor_52;
  v65 = _Block_copy(aBlock);
  v66 = v63;

  [v60 fetchGymkitAndBluetoothDevicesMatchingValues:v62 forProperty:v66 completion:v65];
  _Block_release(v65);
}

double sub_1BA06C2B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v4 = v6;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  a3(v4);

  return result;
}

double sub_1BA06C35C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBE9E48, 0x1E696C0B8);
    sub_1BA06DC94();
    v4 = sub_1BA4A6D78();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

double sub_1BA06C434(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, a4, a5);
    v6 = sub_1BA4A6B08();
  }

  v8 = a3;
  v7(v6, a3);

  return result;
}

void sub_1BA06C4D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442EE4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1BA06C53C(v4);
  *a1 = v2;
}

void sub_1BA06C53C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B9F0D950(0, &qword_1EBBE9B10, &protocol descriptor for SourcesItem);
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA06C7F4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BA06C648(0, v2, 1, a1);
  }
}

uint64_t sub_1BA06C648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v15 = v6;
    v16 = v5;
    while (1)
    {
      sub_1B9F0A534(v5, &v20);
      sub_1B9F0A534(v5 - 40, v17);
      v7 = v21;
      v8 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      (*(v8 + 16))(v7, v8);
      v10 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 16))(v10, v9);
      sub_1B9F252FC();
      v11 = sub_1BA4A7B88();

      __swift_destroy_boxed_opaque_existential_1(v17);
      result = __swift_destroy_boxed_opaque_existential_1(&v20);
      if ((v11 & 1) == 0)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        v6 = v15 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1B9F1134C(v5, &v20);
      v12 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v12;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1B9F1134C(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BA06C7F4(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v10 = sub_1BA442D80(v10);
    }

    v124 = v10;
    v96 = *(v10 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v6;
        if (!*v6)
        {
          goto LABEL_126;
        }

        v6 = (v96 - 1);
        v98 = *(v10 + 16 * v96);
        v99 = v10;
        v100 = *(v10 + 16 * (v96 - 1) + 32);
        v10 = *(v10 + 16 * (v96 - 1) + 40);
        sub_1BA06D06C((v97 + 40 * v98), (v97 + 40 * v100), v97 + 40 * v10, v7);
        if (v5)
        {
          break;
        }

        if (v10 < v98)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1BA442D80(v99);
        }

        if (v96 - 2 >= *(v99 + 2))
        {
          goto LABEL_116;
        }

        v101 = &v99[16 * v96];
        *v101 = v98;
        *(v101 + 1) = v10;
        v124 = v99;
        sub_1BA442CF4(v6);
        v10 = v124;
        v96 = *(v124 + 16);
        v6 = a3;
      }

      while (v96 > 1);
    }

LABEL_100:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v20 = v9 + 1;
    }

    else
    {
      v115 = v8;
      v107 = v10;
      v11 = *v6;
      sub_1B9F0A534(*v6 + 40 * (v9 + 1), &v121);
      v12 = 40 * v9;
      v110 = v11 + 40 * v9;
      sub_1B9F0A534(v110, v118);
      v13 = v9;
      v15 = v122;
      v14 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, v122);
      (*(v14 + 16))(v15, v14);
      v17 = v119;
      v16 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      (*(v16 + 16))(v17, v16);
      sub_1B9F252FC();
      v113 = sub_1BA4A7B88();

      __swift_destroy_boxed_opaque_existential_1(v118);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v105 = v13;
      v18 = v13 + 2;
      v19 = v110 + 80;
      while (1)
      {
        v20 = v115;
        if (v115 == v18)
        {
          break;
        }

        sub_1B9F0A534(v19, &v121);
        sub_1B9F0A534(v19 - 40, v118);
        v22 = v122;
        v21 = v123;
        __swift_project_boxed_opaque_existential_1(&v121, v122);
        (*(v21 + 16))(v22, v21);
        v24 = v119;
        v23 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        (*(v23 + 16))(v24, v23);
        v25 = sub_1BA4A7B88() & 1;

        __swift_destroy_boxed_opaque_existential_1(v118);
        __swift_destroy_boxed_opaque_existential_1(&v121);
        ++v18;
        v19 += 40;
        if ((v113 & 1) != v25)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v10 = v107;
      v6 = a3;
      v7 = a1;
      v9 = v105;
      if (v113)
      {
        if (v20 < v105)
        {
          goto LABEL_119;
        }

        if (v105 < v20)
        {
          v26 = v20;
          v27 = 40 * v20 - 40;
          v116 = v20;
          v28 = v105;
          do
          {
            if (v28 != --v26)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v29 = v33 + v12;
              v30 = v33 + v27;
              sub_1B9F1134C((v33 + v12), &v121);
              v31 = *(v30 + 32);
              v32 = *(v30 + 16);
              *v29 = *v30;
              *(v29 + 16) = v32;
              *(v29 + 32) = v31;
              sub_1B9F1134C(&v121, v30);
            }

            ++v28;
            v27 -= 40;
            v12 += 40;
          }

          while (v28 < v26);
          v10 = v107;
          v7 = a1;
          v20 = v116;
        }
      }
    }

    v34 = v6[1];
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
          v35 = v6[1];
        }

        else
        {
          v35 = v9 + a4;
        }

        if (v35 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v35)
        {
          break;
        }
      }
    }

    v36 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
    }

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v10 = sub_1BA27F470((v37 > 1), v38 + 1, 1, v10);
    }

    *(v10 + 16) = v39;
    v40 = v10 + 16 * v38;
    *(v40 + 32) = v9;
    *(v40 + 40) = v36;
    v41 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v111 = v36;
    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 32);
          v44 = *(v10 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_48:
          if (v46)
          {
            goto LABEL_106;
          }

          v59 = (v10 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_109;
          }

          v65 = (v10 + 32 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_113;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v69 = (v10 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_62:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = v10 + 16 * v42;
        v74 = *(v72 + 32);
        v73 = *(v72 + 40);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_69:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
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

        if (!*v6)
        {
          goto LABEL_124;
        }

        v81 = *(v10 + 32 + 16 * v80);
        v82 = *(v10 + 32 + 16 * v42 + 8);
        sub_1BA06D06C((*v6 + 40 * v81), (*v6 + 40 * *(v10 + 32 + 16 * v42)), *v6 + 40 * v82, v41);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v82 < v81)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v80 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v83 = v10 + 16 * v80;
        *(v83 + 32) = v81;
        *(v83 + 40) = v82;
        v124 = v10;
        sub_1BA442CF4(v42);
        v10 = v124;
        v39 = *(v124 + 16);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = v10 + 32 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_104;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_105;
      }

      v54 = (v10 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_107;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_110;
      }

      if (v58 >= v50)
      {
        v76 = (v10 + 32 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_114;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v111;
    if (v111 >= v8)
    {
      goto LABEL_90;
    }
  }

  v106 = v9;
  v108 = v10;
  v102 = v5;
  v84 = *v6;
  v85 = v84 + 40 * v20;
  v86 = v9 - v20;
  v112 = v35;
LABEL_81:
  v114 = v85;
  v117 = v20;
  v87 = v86;
  v88 = v85;
  while (1)
  {
    sub_1B9F0A534(v88, &v121);
    sub_1B9F0A534(v88 - 40, v118);
    v89 = v122;
    v90 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, v122);
    (*(v90 + 16))(v89, v90);
    v91 = v119;
    v92 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v92 + 16))(v91, v92);
    sub_1B9F252FC();
    v93 = sub_1BA4A7B88();

    __swift_destroy_boxed_opaque_existential_1(v118);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    if ((v93 & 1) == 0)
    {
LABEL_80:
      v20 = v117 + 1;
      v85 = v114 + 40;
      --v86;
      v36 = v112;
      if (v117 + 1 != v112)
      {
        goto LABEL_81;
      }

      v5 = v102;
      v10 = v108;
      v6 = a3;
      v7 = a1;
      v9 = v106;
      if (v112 < v106)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v84)
    {
      break;
    }

    sub_1B9F1134C(v88, &v121);
    v94 = *(v88 - 24);
    *v88 = *(v88 - 40);
    *(v88 + 16) = v94;
    *(v88 + 32) = *(v88 - 8);
    sub_1B9F1134C(&v121, v88 - 40);
    v88 -= 40;
    if (__CFADD__(v87++, 1))
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
}

uint64_t sub_1BA06D06C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[40 * v10] <= a4)
    {
      v26 = a3;
      memmove(a4, a2, 40 * v10);
      a3 = v26;
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v25 = v5;
      goto LABEL_34;
    }

    v27 = v5;
    v48 = v6;
    while (1)
    {
      __dst = v27;
      v28 = (v27 - 40);
      v29 = (v12 - 40);
      v30 = a3 - 40;
      v56 = v27 - 40;
      while (1)
      {
        v33 = v4;
        v34 = v29 + 40;
        v35 = v30;
        v36 = (v30 + 40);
        sub_1B9F0A534(v29, v53);
        sub_1B9F0A534(v28, v50);
        v37 = v54;
        v38 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v38 + 16))(v37, v38);
        v40 = v51;
        v39 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v39 + 16))(v40, v39);
        sub_1B9F252FC();
        v41 = sub_1BA4A7B88();

        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        if (v41)
        {
          break;
        }

        v4 = v33;
        if (v36 != v34)
        {
          v42 = *v29;
          v43 = *(v29 + 16);
          *(v35 + 32) = *(v29 + 32);
          *v35 = v42;
          *(v35 + 16) = v43;
        }

        v31 = v29 - 40;
        v30 = v35 - 40;
        v32 = v29 > v33;
        v29 -= 40;
        v28 = v56;
        if (!v32)
        {
          v12 = (v31 + 40);
          v25 = __dst;
          goto LABEL_34;
        }
      }

      v4 = v33;
      v25 = v56;
      a3 = v35;
      if (v36 != __dst)
      {
        v44 = *v56;
        v45 = *(v56 + 1);
        *(v35 + 32) = *(v56 + 4);
        *v35 = v44;
        *(v35 + 16) = v45;
      }

      v12 = (v29 + 40);
      if (v34 > v33)
      {
        v27 = v25;
        if (v25 > v48)
        {
          continue;
        }
      }

      v12 = (v29 + 40);
      goto LABEL_34;
    }
  }

  if (a4 != __src || &__src[40 * v8] <= a4)
  {
    v11 = a3;
    memmove(a4, __src, 40 * v8);
    a3 = v11;
  }

  v12 = &v4[40 * v8];
  if (v7 < 40 || v5 >= a3)
  {
    v25 = v6;
    goto LABEL_34;
  }

  do
  {
    v13 = a3;
    v14 = v12;
    sub_1B9F0A534(v5, v53);
    sub_1B9F0A534(v4, v50);
    v15 = v4;
    v16 = v5;
    v17 = v54;
    v18 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v18 + 16))(v17, v18);
    v20 = v51;
    v19 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v19 + 16))(v20, v19);
    sub_1B9F252FC();
    v21 = sub_1BA4A7B88();

    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (v21)
    {
      v22 = v16;
      v5 = v16 + 40;
      v4 = v15;
      if (v6 == v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v6 + 4) = *(v22 + 4);
      *v6 = v23;
      *(v6 + 1) = v24;
      goto LABEL_12;
    }

    v22 = v15;
    v4 = v15 + 40;
    v5 = v16;
    if (v6 != v15)
    {
      goto LABEL_11;
    }

LABEL_12:
    v6 += 40;
    v12 = v14;
    if (v4 >= v14)
    {
      break;
    }

    a3 = v13;
  }

  while (v5 < v13);
  v25 = v6;
LABEL_34:
  v46 = (v12 - v4) / 40;
  if (v25 != v4 || v25 >= &v4[40 * v46])
  {
    memmove(v25, v4, 40 * v46);
  }

  return 1;
}

uint64_t sub_1BA06D4C4(void *a1, uint64_t a2, uint64_t a3)
{
  v24[3] = &type metadata for HealthStoreDeviceProvider;
  v24[4] = &off_1F38030B0;
  v24[0] = a2;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources) = 0;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices) = 0;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore) = a1;
  sub_1B9F0A534(v24, a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider);
  v5 = objc_allocWithZone(MEMORY[0x1E69A44D0]);
  v6 = a1;
  v7 = [v5 initWithHealthStore_];
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource) = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA06A060, 0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource;
  v11 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource);

  [v11 setShouldIncludeSpecialSources_];
  [*(v9 + v10) setDeliverUpdates_];
  [*(v9 + v10) fetchSources];
  [*(v9 + v10) registerObserver_];
  v12 = *__swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider), *(v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider + 24));
  swift_retain_n();
  v13 = [v12 profileIdentifier];
  v14 = [v13 type];

  if (v14 == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    v16 = sub_1BA4A6AE8();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v12;
    v17[4] = sub_1BA06DE08;
    v17[5] = v9;
    aBlock[4] = sub_1BA06DDD0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA06C420;
    aBlock[3] = &block_descriptor_62;
    v18 = _Block_copy(aBlock);

    v19 = v12;

    [v19 healthPeripheralsWithCustomProperties:v16 withCompletion:v18];
    _Block_release(v18);
  }

  else
  {
    if (v8 >> 62 && sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v20 = v22;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CD0];
    }

    sub_1BA06A4FC(v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  return v9;
}

void sub_1BA06D804(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAF2860](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1BA06B1F0(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

double sub_1BA06D908(void *a1, uint64_t a2)
{

  v4 = [a1 profileIdentifier];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    v7 = sub_1BA4A6AE8();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a1;
    v8[4] = sub_1BA06DD50;
    v8[5] = a2;
    v14[4] = sub_1BA06DD54;
    v14[5] = v8;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1BA06C420;
    v14[3] = &block_descriptor_40_0;
    v9 = _Block_copy(v14);

    v10 = a1;

    [v10 healthPeripheralsWithCustomProperties:v7 withCompletion:v9];
    _Block_release(v9);
  }

  else
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v12 = v13;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CD0];
    }

    sub_1BA06A4FC(v12);
  }

  return result;
}

unint64_t sub_1BA06DC94()
{
  result = qword_1EBBE9E50;
  if (!qword_1EBBE9E50)
  {
    sub_1B9F0ADF8(255, &qword_1EBBE9E48, 0x1E696C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9E50);
  }

  return result;
}

unint64_t sub_1BA06DCFC()
{
  result = qword_1EBBEACC0;
  if (!qword_1EBBEACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEACC0);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProfileCharacteristicsWithAutoAvatarImageViewController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v2 = sub_1BA4A1B08();
  v3 = sub_1BA4A1AF8();
  v6[3] = v2;
  v6[4] = MEMORY[0x1E69A3B38];
  v6[0] = v3;
  v4 = (*(ObjectType + 176))(v1, v6);
  swift_deallocPartialClassInstance();
  return v4;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BA06F854(a1, a2);

  return v6;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.init(healthStore:healthExperienceStore:)(void *a1, void *a2)
{
  v3 = sub_1BA06F854(a1, a2);

  return v3;
}

uint64_t sub_1BA06E024(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1B9F3DA8C(0);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44C60(0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [swift_getObjCClassFromMetadata() avatarImageSize];
  v14 = v13;
  v15 = [objc_opt_self() mainScreen];
  [v15 scale];
  v17 = v16;

  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v33 = v14;
  v34 = v17;
  v35 = qword_1EDC63688;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = ObjectType;
  v20 = MEMORY[0x1E695BED0];
  sub_1B9F3D93C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F3DB14();

  v21 = a1;
  sub_1BA4A4FE8();

  v22 = sub_1B9F3DBAC(&qword_1EDC5F690, sub_1B9F3DA8C, MEMORY[0x1E695BD60]);
  v23 = sub_1B9F3DB68(&qword_1EDC5F498, &qword_1EDC5F490, v20, MEMORY[0x1E695BED8]);
  v24 = v30;
  MEMORY[0x1BFAEFB60](v30, v22, v23);
  (*(v29 + 8))(v8, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F3DBAC(&qword_1EDC5F6B0, sub_1B9F44C60, MEMORY[0x1E695BD00]);
  v25 = v32;
  v26 = sub_1BA4A5148();

  (*(v31 + 8))(v12, v25);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = v26;
}

uint64_t sub_1BA06E420@<X0>(void **a1@<X0>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v47 = a5;
  sub_1BA06FA80(0, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v40 - v10;
  sub_1BA06FED4(0);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA06FF80(0);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D93C(0, &unk_1EDC5F410, MEMORY[0x1E695C010]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v40 - v24;
  v26 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (v26)
    {
      v48 = v26;
      sub_1B9F3C928(0);
      v29 = v26;
      sub_1BA4A4E78();
      sub_1BA07003C();
      v30 = sub_1BA4A4F98();

      result = (*(v8 + 8))(v11, v7);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore), *(Strong + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore + 24));
      v32 = sub_1BA4A1B68();
      type metadata accessor for HealthKitProfileInformationDataSource(0);
      swift_allocObject();
      v48 = *(sub_1BA2B8F0C(v32, v41, 0, 0, sub_1BA0700C4, 0) + qword_1EDC6A560);
      v33 = MEMORY[0x1E695BF98];
      sub_1BA06FD34(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
      sub_1BA06FDD4(&qword_1EDC6B730, &qword_1EDC6B720, v33, MEMORY[0x1E695BFB0]);
      v48 = sub_1BA4A4F98();
      v34 = MEMORY[0x1E695BED0];
      sub_1BA06FD34(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
      sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v34, MEMORY[0x1E695BED8]);

      sub_1BA4A4FB8();

      v35 = swift_allocObject();
      v36 = v42;
      *(v35 + 16) = v28;
      *(v35 + 24) = v36;
      sub_1B9F3C928(0);
      sub_1B9F3DBAC(&qword_1EBBEAD30, sub_1BA06FF80, MEMORY[0x1E695BCC0]);
      v37 = v28;
      v38 = v44;
      sub_1BA4A4FE8();

      sub_1B9F3DBAC(&qword_1EBBEAD40, sub_1BA06FED4, MEMORY[0x1E695BD60]);
      v39 = v46;
      v30 = sub_1BA4A4F98();

      (*(v45 + 8))(v15, v39);
      result = (*(v43 + 8))(v19, v38);
    }
  }

  else
  {
    sub_1B9F3C928(0);
    sub_1BA4A4E88();
    sub_1B9F3DB68(&qword_1EBBEAD38, &unk_1EDC5F410, MEMORY[0x1E695C010], MEMORY[0x1E695C018]);
    v30 = sub_1BA4A4F98();
    result = (*(v22 + 8))(v25, v21);
  }

  *v47 = v30;
  return result;
}

uint64_t sub_1BA06EA9C@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_1BA06FE18(a1, &v14 - v8);
  v10 = sub_1BA4A2888();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1BA06F9D0(v9);
    v13 = 0;
  }

  else
  {
    sub_1BA4A27F8();
    (*(v11 + 8))(v9, v10);
    [swift_getObjCClassFromMetadata() avatarImageSize];
    v13 = sub_1BA4A2DF8();
  }

  *a4 = v13;
  return result;
}

uint64_t sub_1BA06EC30(void *a1)
{
  v2 = v1;
  sub_1BA06FC68(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore + 24));
  v10 = sub_1BA4A1B68();
  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  v11 = sub_1BA2B8F0C(v10, a1, 0, 0, sub_1BA0700C4, 0);
  v17 = *(v11 + qword_1EDC6A560);
  v12 = MEMORY[0x1E695BF98];
  sub_1BA06FD34(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA06FDD4(&qword_1EDC6B730, &qword_1EDC6B720, v12, MEMORY[0x1E695BFB0]);
  v17 = sub_1BA4A4F98();
  v13 = MEMORY[0x1E695BED0];
  sub_1BA06FD34(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F3C928(0);
  sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v13, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F3DBAC(&qword_1EBBEAD18, sub_1BA06FC68, MEMORY[0x1E695BD60]);
  v14 = sub_1BA4A5148();

  (*(v6 + 8))(v9, v5);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = v14;

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource) = v11;
}