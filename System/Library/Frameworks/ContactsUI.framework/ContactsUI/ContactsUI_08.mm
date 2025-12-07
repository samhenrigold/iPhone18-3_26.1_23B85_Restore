uint64_t sub_199B59944(uint64_t a1)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199B5548C(a1, v1 + v4, v5);
}

unint64_t sub_199B599F0()
{
  result = qword_1EAF75960;
  if (!qword_1EAF75960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75960);
  }

  return result;
}

unint64_t sub_199B59A7C()
{
  result = qword_1EAF71318;
  if (!qword_1EAF71318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75968, &qword_199E41448);
    sub_199B59B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71318);
  }

  return result;
}

unint64_t sub_199B59B08()
{
  result = qword_1EAF71398;
  if (!qword_1EAF71398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75970, &qword_199E41450);
    sub_199AA0B90(&qword_1EAF713B8, &qword_1EAF75978, &qword_199E41458, MEMORY[0x1E697DDD0]);
    sub_199AA0B90(&qword_1EAF71138, &qword_1EAF75980, &qword_199E41460, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71398);
  }

  return result;
}

unint64_t sub_199B59BEC()
{
  result = qword_1EAF712B0;
  if (!qword_1EAF712B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759D0, &qword_199E41530);
    sub_199B59CA4();
    sub_199AA0B90(&qword_1EAF71248, &qword_1EAF759F0, &qword_199E41588, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712B0);
  }

  return result;
}

unint64_t sub_199B59CA4()
{
  result = qword_1EAF71310;
  if (!qword_1EAF71310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759E8, &unk_199E41578);
    sub_199B58020(&qword_1EAF71250, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71310);
  }

  return result;
}

unint64_t sub_199B59D8C()
{
  result = qword_1EAF71278;
  if (!qword_1EAF71278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759E0, &qword_199E41570);
    sub_199B59E44();
    sub_199AA0B90(&qword_1EAF71240, &qword_1EAF75A00, &qword_199E41598, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71278);
  }

  return result;
}

unint64_t sub_199B59E44()
{
  result = qword_1EAF712D0;
  if (!qword_1EAF712D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF759F8, &qword_199E41590);
    sub_199B59EFC();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712D0);
  }

  return result;
}

unint64_t sub_199B59EFC()
{
  result = qword_1EAF71198;
  if (!qword_1EAF71198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71198);
  }

  return result;
}

unint64_t sub_199B59F50()
{
  result = qword_1EAF71280;
  if (!qword_1EAF71280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A08, &qword_199E415D0);
    sub_199B5A008();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71280);
  }

  return result;
}

unint64_t sub_199B5A008()
{
  result = qword_1EAF712D8;
  if (!qword_1EAF712D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A10, &unk_199E415D8);
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712D8);
  }

  return result;
}

void sub_199B5A0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_199ACE3F8(a1, a2, a3 & 1);

    sub_199DF81AC();
  }
}

void sub_199B5A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_199ACE3E8(a1, a2, a3 & 1);
  }
}

uint64_t sub_199B5A218(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_199B5A29C()
{
  result = qword_1EAF75A30;
  if (!qword_1EAF75A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A28, &qword_199E41640);
    sub_199B5A320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A30);
  }

  return result;
}

unint64_t sub_199B5A320()
{
  result = qword_1EAF75A38;
  if (!qword_1EAF75A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A40, &qword_199E41648);
    sub_199AD5A34();
    sub_199AA0B90(&qword_1EAF758F0, &qword_1EAF758F8, &qword_199E412A8, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A38);
  }

  return result;
}

uint64_t objectdestroy_202Tm()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  MEMORY[0x19A8FA290](v0 + v3 + 8);
  v6 = v1[7];
  v7 = sub_199DF884C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_199AC6290(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_199DF886C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B5A578()
{
  v2 = *(type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7688;

  return sub_199B54A50(v0 + v3);
}

unint64_t sub_199B5A644()
{
  result = qword_1EAF75A68;
  if (!qword_1EAF75A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A50, &qword_199E41668);
    sub_199B5A6D0();
    sub_199B5A808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A68);
  }

  return result;
}

unint64_t sub_199B5A6D0()
{
  result = qword_1EAF75A70;
  if (!qword_1EAF75A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A20, &qword_199E41638);
    sub_199B5A75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A70);
  }

  return result;
}

unint64_t sub_199B5A75C()
{
  result = qword_1EAF75A78;
  if (!qword_1EAF75A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75A48, &qword_199E41660);
    sub_199AA0B90(&qword_1EAF75A80, &qword_1EAF75A88, &qword_199E41680, MEMORY[0x1EEE7D278]);
    sub_199B596DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A78);
  }

  return result;
}

unint64_t sub_199B5A808()
{
  result = qword_1EAF75A90;
  if (!qword_1EAF75A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75A90);
  }

  return result;
}

id sub_199B5A864(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_scrollDirection] = 1;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cardSizeMultiplier] = 0x3FE6666666666666;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  v5 = &v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes] = v6;
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete] = v6;
  v7 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition;
  v8 = sub_199DF738C();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_mode] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_199B5A9EC()
{
  v1 = v0;
  v20 = sub_199DF738C();
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_199DF72CC();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B18, &qword_199E41748);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  sub_199DF72DC();
  v9 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete;
  sub_199DF72FC();
  sub_199B5EB10(&qword_1EAF75B20, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v21 = v0;
  ++v22;
  v19 = v23 + 32;
  while (1)
  {
    sub_199DFA2BC();
    sub_199B5EB10(&qword_1EAF75B28, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v10 = sub_199DF9EDC();
    (*v22)(v5, v3);
    if (v10)
    {
      break;
    }

    v11 = sub_199DFA2DC();
    v13 = *v12;
    v11(v25, 0);
    sub_199DFA2CC();
    MEMORY[0x19A8F5130](v13, 0);
    v14 = *(v1 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v9) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_199AB2B7C(0, v14[2] + 1, 1, v14);
      *(v1 + v9) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_199AB2B7C((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    (*(v23 + 32))(v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v24, v20);
    v1 = v21;
    *(v21 + v9) = v14;
  }

  return sub_199A79A04(v8, &qword_1EAF75B18, &qword_199E41748);
}

uint64_t sub_199B5AD88@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_199B5EAA0(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v18 = *(v7 + 32);
    v18(v12, v5, v6);
    v18(a1, v12, v6);
    goto LABEL_9;
  }

  sub_199A79A04(v5, &qword_1EAF75C30, &qword_199E41740);
  v13 = *(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete);
  if (!*(v13 + 16))
  {
    v19 = 1;
    return (*(v7 + 56))(a1, v19, 1, v6);
  }

  (*(v7 + 16))(v9, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  sub_199B5C204();
  if ((v14 & 1) == 0)
  {
    (*(v7 + 32))(a1, v9, v6);
    goto LABEL_9;
  }

  v15 = sub_199DF736C();
  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (!v16)
  {
    MEMORY[0x19A8F5110](result, 0);
    (*(v7 + 8))(v9, v6);
LABEL_9:
    v19 = 0;
    return (*(v7 + 56))(a1, v19, 1, v6);
  }

  __break(1u);
  return result;
}

void sub_199B5B0D0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v106 - v4;
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  v15 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0);
  v137.receiver = v2;
  v137.super_class = v15;
  objc_msgSendSuper2(&v137, sel_prepareLayout);
  v16 = [v2 collectionView];
  if (!v16)
  {
    return;
  }

  v111 = v5;
  v112 = v11;
  v114 = v16;
  [v16 bounds];
  v18 = v17 * 0.7;
  *&v132 = v19;
  v20 = v19 * 0.7;
  v21 = &v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize];
  *v21 = v17 * 0.7;
  v21[1] = v19 * 0.7;
  v113 = v21;
  *&v133 = v17;
  v22 = v17 * 0.3;
  v23 = v17 * 0.3 / -3.8;
  if (*&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_mode] != 1)
  {
    v23 = 0.0;
  }

  v107 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing;
  v125 = v23;
  *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing] = v23;
  v24 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v25 = MEMORY[0x1E69E7CC0];
  *&v2[v24] = MEMORY[0x1E69E7CC0];

  v26 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  *&v2[v26] = v25;

  v27 = *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  if (v27)
  {
    v28 = *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider + 8];

    v30 = (v27)(v29);
    sub_199A9A5FC(v27, v28);
  }

  else
  {
    v30 = sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  }

  *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses] = v30;

  v31 = &v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = *&v132;
  *(v31 + 2) = v133;
  *(v31 + 3) = v32;
  v33 = v114;
  v34 = [v114 numberOfItemsInSection_];
  v146.size.height = v113[1];
  tx = (v32 - v146.size.height) * 0.5;
  v110 = v22 * 0.5;
  v36 = 0.0;
  v146.origin.x = 0.0;
  v146.origin.y = tx;
  x = v22 * 0.5 - v125;
  v146.size.width = x;
  height = v146.size.height;
  *v31 = CGRectUnion(*v31, v146);
  if (v34 < 0)
  {
    goto LABEL_87;
  }

  v127 = v6;
  v126 = v34;
  v131 = v24;
  if (v34)
  {
    v121 = *&v133 * 0.5;
    v120 = *&v132 * 0.5;
    v39 = (*&v132 - v20) / 2.8;
    v40 = objc_opt_self();
    v41 = v7;
    v42 = 0;
    v118 = *MEMORY[0x1E69DDC00];
    v109 = v41;
    v117 = (*&v41 + 8);
    v116 = 0.7;
    v108 = tx;
    v43 = tx;
    v44 = x;
    v45 = height;
    v124 = v18;
    v123 = v20;
    v122 = v39;
    v119 = v26;
    do
    {
      v46 = v36;
      v47 = v125 + CGRectGetMaxX(*(&v43 - 1));
      v139.origin.x = v47;
      v139.origin.y = v39;
      v139.size.width = v18;
      v139.size.height = v20;
      v48 = CGRectGetMidX(v139) - v121;
      v140.origin.x = v47;
      v140.origin.y = v39;
      v140.size.width = v18;
      v140.size.height = v20;
      v49 = CGRectGetMidY(v140) - v120;
      MEMORY[0x19A8F5130](v42, 0);
      v50 = sub_199DF730C();
      v51 = v40;
      v52 = [v40 layoutAttributesForCellWithIndexPath_];

      [v52 setFrame_];
      swift_beginAccess();
      v53 = v52;
      MEMORY[0x19A8F7E80]();
      if (*((*&v2[v24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      v130 = v47;
      sub_199DFA10C();
      swift_endAccess();
      v54 = sub_199DF736C();
      v55 = COERCE_DOUBLE(sub_199B5C420(v54));
      v57 = 0;
      if (v56)
      {
        v55 = 0.0;
      }

      v129 = v55;
      v58 = v118;
      v59 = sub_199DF730C();
      v60 = v51;
      v61 = [v51 layoutAttributesForSupplementaryViewOfKind:v58 withIndexPath:v59];

      v62 = [v2 collectionView];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 traitCollection];

        [v64 displayScale];
        v57 = v65;
      }

      v128 = v57;
      CGAffineTransformMakeScale(&v138, v116, v116);
      v141.origin.x = v48;
      v141.origin.y = v49;
      v66 = *&v133;
      *&v141.size.width = v133;
      v67 = *&v132;
      *&v141.size.height = v132;
      CGRectApplyAffineTransform(v141, &v138);
      UIRectCenteredIntegralRectScale();
      v68 = v48;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v142.origin.x = v68;
      v142.origin.y = v49;
      v142.size.width = v66;
      v142.size.height = v67;
      CGRectGetHeight(v142);
      v143.origin.x = v70;
      v143.origin.y = v72;
      v143.size.width = v74;
      v143.size.height = v76;
      CGRectGetMaxY(v143);
      UIRectRoundToScale();
      [v61 setFrame_];
      v77 = v129;
      [v61 setAlpha_];
      if (v77 <= 0.75)
      {
        v78 = 0;
      }

      else
      {
        v78 = 250;
      }

      [v61 setZIndex_];
      v79 = v119;
      swift_beginAccess();
      v80 = v61;
      MEMORY[0x19A8F7E80]();
      if (*((*&v2[v79] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v79] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      ++v42;
      sub_199DFA10C();
      swift_endAccess();
      v36 = v130;
      v147.origin.x = v130;
      v39 = v122;
      v147.origin.y = v122;
      v18 = v124;
      v147.size.width = v124;
      v20 = v123;
      v147.size.height = v123;
      v144 = CGRectUnion(*v31, v147);
      x = v144.origin.x;
      y = v144.origin.y;
      width = v144.size.width;
      ty = v144.size.height;

      v6 = v127;
      (*v117)(v14, v127);
      *v31 = x;
      *(v31 + 1) = y;
      v43 = v39;
      v44 = v18;
      v45 = v20;
      *(v31 + 2) = width;
      *(v31 + 3) = ty;
      v34 = v126;
      v40 = v60;
      v24 = v131;
    }

    while (v126 != v42);
    v83 = v18;
    v33 = v114;
    v7 = v109;
    tx = v108;
  }

  else
  {
    v39 = tx;
    v20 = height;
    v83 = x;
  }

  v84 = v36;
  v85 = v39;
  v86 = v20;
  v148.origin.x = CGRectGetMaxX(*(&v83 - 2));
  v148.size.height = v113[1];
  v148.origin.y = tx;
  v148.size.width = v110;
  *v31 = CGRectUnion(*v31, v148);
  [v33 contentOffset];
  height = v87;
  v27 = v111;
  sub_199B5AD88(v111);
  v88 = (*(*&v7 + 48))(v27, 1, v6);
  v33 = v112;
  if (v88 != 1)
  {
    (*(*&v7 + 32))(v112, v27, v6);
    v89 = sub_199DF737C();
    if (v89 + 0x4000000000000000 < 0)
    {
      goto LABEL_88;
    }

    v27 = v89;
    v90 = sub_199DF736C();
    v24 = v90 + 2 * v27;
    if (__OFADD__(v90, 2 * v27))
    {
LABEL_89:
      __break(1u);
    }

    else
    {
      v91 = *&v2[v131];
      if (!(v91 >> 62))
      {
        v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_30;
      }
    }

    v92 = sub_199DFA87C();
    if ((v92 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_92;
    }

LABEL_30:
    if (v24 >= v92)
    {
      (*(*&v7 + 8))(v33, v6);
      goto LABEL_37;
    }

    v27 = *&v2[v131];
    if ((v27 & 0xC000000000000001) == 0)
    {
      if (v24 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_94;
      }

      v24 = *(v27 + 8 * v24 + 32);
LABEL_34:
      [v24 frame];
      x = CGRectGetMinX(v145);
      if (x == 0.0)
      {
        (*(*&v7 + 8))(v33, v6);

        height = x;
LABEL_37:
        v24 = v131;
        goto LABEL_38;
      }

      tx = *v113;
      ty = *(v31 + 2);
      v101 = *&v2[v131];
      if (!(v101 >> 62))
      {
        v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v102)
        {
          goto LABEL_65;
        }

        goto LABEL_74;
      }

LABEL_94:
      v102 = sub_199DFA87C();
      if (v102 < 0)
      {
        __break(1u);
      }

      v6 = v127;
      v34 = v126;
      v33 = v112;
      if (v102)
      {
LABEL_65:
        height = 0.0;
        while (1)
        {
          v103 = v102 == 1 ? *&v2[v107] * 0.5 : *&v2[v107];
          v104 = height + tx + v103;
          if (x < v104 && v104 < ty)
          {
            break;
          }

          height = v104;
          if (!--v102)
          {
            goto LABEL_74;
          }
        }

        ty = v104;
        goto LABEL_76;
      }

LABEL_74:
      height = 0.0;
LABEL_76:

      (*(*&v7 + 8))(v33, v6);
      v24 = v131;
      if (vabdd_f64(height, x) >= vabdd_f64(ty, x))
      {
        if (*(v31 + 2) - tx >= ty)
        {
          height = ty;
        }

        else
        {
          height = *(v31 + 2) - tx;
        }
      }

      goto LABEL_38;
    }

LABEL_92:
    sub_199DF81AC();
    v24 = MEMORY[0x19A8F8520](v24, v27);

    goto LABEL_34;
  }

  sub_199A79A04(v27, &qword_1EAF75C30, &qword_199E41740);
LABEL_38:
  if (v34)
  {
    v33 = 0;
    *&v93 = COERCE_DOUBLE(llround(height / v18));
    v94 = __OFSUB__(0, v93) && v93 < 0;
    v31 = (*&v7 + 8);
    if (v93 < 0)
    {
      v93 = -v93;
    }

    v130 = *&v93;
    v6 = 100;
    x = round(height / v18);
    v27 = &selRef_setTitleLabel_;
    do
    {
      if (v18 == 0.0)
      {
        v7 = 0.0;
      }

      else
      {
        if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        if (x <= -9.22337204e18)
        {
          goto LABEL_84;
        }

        if (x >= 9.22337204e18)
        {
          goto LABEL_85;
        }

        v7 = v130;
        if (v94)
        {
          goto LABEL_86;
        }
      }

      v24 = *&v2[v24];
      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_199DF81AC();
        v34 = MEMORY[0x19A8F8520](v33, v24);

        v95 = 100 - v33;
        if (__OFSUB__(100, v33))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v33 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v34 = *(v24 + 8 * v33 + 32);
        v95 = 100 - v33;
        if (__OFSUB__(100, v33))
        {
LABEL_60:
          __break(1u);
          break;
        }
      }

      if (__OFSUB__(v95, *&v7))
      {
        goto LABEL_82;
      }

      [v34 setZIndex_];
      v7 = *&v115;
      MEMORY[0x19A8F5130](v33, 0);
      [v34 frame];
      sub_199B5BF3C(&v138, v96, v97, v98, v99, height);
      tx = v138.tx;
      ty = v138.ty;
      v100 = *v31;
      v133 = *&v138.a;
      v132 = *&v138.c;
      v100(*&v7, v127);
      v134[1] = v132;
      v134[0] = v133;
      v135 = tx;
      v136 = ty;
      [v34 setTransform_];

      ++v33;
      v24 = v131;
    }

    while (v126 != v33);
  }
}

void sub_199B5BF3C(__int128 *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v13 = [v6 collectionView];
  v14 = xmmword_199E416B0;
  v15 = xmmword_199E416C0;
  v16 = 0uLL;
  if (v13)
  {
    v17 = v13;
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    if (CGRectIsEmpty(v53))
    {

      v15 = xmmword_199E416C0;
      v14 = xmmword_199E416B0;
      v16 = 0uLL;
    }

    else
    {
      v18 = v17;
      [v18 bounds];
      v20 = v19;
      v21 = [v18 traitCollection];

      [v21 displayScale];
      v54.origin.x = a2;
      v54.origin.y = a3;
      v54.size.width = a4;
      v54.size.height = a5;
      v22 = v20 * 0.5 + a6 - CGRectGetMidX(v54);
      v23 = v20 * -0.0365;
      v24 = fabs(v22 / (a4 * 0.33));
      if (v24 <= 1.0)
      {
        v23 = v23 * v24;
      }

      if (v22 <= 0.0)
      {
        v25 = -0.1085;
      }

      else
      {
        v25 = -0.009;
      }

      v47 = v23 + v22 * v25;
      v26 = 0.0;
      v27 = 0.7;
      if (a4 <= 0.0)
      {
        v28 = 0.0;
        v29 = 0.7;
      }

      else
      {
        v28 = 0.0;
        v29 = 0.7;
        if (a5 > 0.0)
        {
          CGAffineTransformMakeScale(&t1, 0.7, 0.7);
          v55.origin.x = a2;
          v55.origin.y = a3;
          v55.size.width = a4;
          v55.size.height = a5;
          CGRectApplyAffineTransform(v55, &t1);
          BSSizeRoundForScale();
          v29 = v30 / a4;
          v27 = v31 / a5;
          BSRectWithSize();
          UIRectCenteredRect();
          v33 = v32;
          v35 = v34;
          BSRectRoundForScale();
          v26 = v36 - v35;
          v28 = v37 - v33;
        }
      }

      CGAffineTransformMakeScale(&t1, v29, v27);
      tx = t1.tx;
      ty = t1.ty;
      v40 = v47 + v28;
      v45 = *&t1.c;
      v48 = *&t1.a;
      CGAffineTransformMakeTranslation(&t1, v40, v26);
      v41 = *&t1.a;
      v42 = *&t1.c;
      v43 = *&t1.tx;
      *&t1.a = v48;
      *&t1.c = v45;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v41;
      *&t2.c = v42;
      *&t2.tx = v43;
      CGAffineTransformConcat(&v50, &t1, &t2);
      v46 = *&v50.a;
      v49 = *&v50.c;
      v44 = *&v50.tx;

      v16 = v44;
      v15 = v46;
      v14 = v49;
    }
  }

  *a1 = v15;
  a1[1] = v14;
  a1[2] = v16;
}

void sub_199B5C204()
{
  v1 = v0;
  v2 = sub_199DF738C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 numberOfItemsInSection_];

    v10 = *&v1[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = __OFSUB__(v9, 1);
      v13 = v9 - 1;
      if (!v12)
      {
        v14 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v15 = v3 + 16;
        v25 = (v3 + 8);
        sub_199DF81AC();
        v16 = 0;
        while (v16 < *(v10 + 16))
        {
          (*(v3 + 16))(v6, v14 + *(v3 + 72) * v16, v2);
          if (sub_199DF736C() == v13)
          {
            v17 = v15;
            v18 = v14;
            v19 = v10;
            v20 = v11;
            v21 = v13;
            v22 = sub_199DF736C();
            (*v25)(v6, v2);
            v23 = v22 <= 0;
            v13 = v21;
            v11 = v20;
            v10 = v19;
            v14 = v18;
            v15 = v17;
            if (!v23)
            {
LABEL_12:

              return;
            }
          }

          else
          {
            (*v25)(v6, v2);
          }

          if (v11 == ++v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_199B5C420(uint64_t a1)
{
  v3 = sub_199DF738C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v24 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete);
  v10 = *(v9 + 16);
  result = sub_199DF81AC();
  v31 = v10;
  if (v10)
  {
    v12 = 0;
    v29 = (v4 + 32);
    v30 = v4 + 16;
    v25 = (v4 + 8);
    v13 = MEMORY[0x1E69E7CC0];
    v27 = v3;
    v28 = a1;
    v26 = v9;
    while (v12 < *(v9 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      (*(v4 + 16))(v8, v9 + v14 + v15 * v12, v3);
      if (sub_199DF736C() > a1)
      {
        result = (*v25)(v8, v3);
      }

      else
      {
        v16 = *v29;
        (*v29)(v32, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_199A9C70C(0, *(v13 + 16) + 1, 1);
          v13 = v33;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_199A9C70C((v18 > 1), v19 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v19 + 1;
        v3 = v27;
        result = (v16)(v13 + v14 + v19 * v15, v32, v27);
        a1 = v28;
        v9 = v26;
      }

      if (v31 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v20 = *(v13 + 16);

  result = a1 + v20;
  if (__OFADD__(a1, v20))
  {
    goto LABEL_19;
  }

  v21 = *(v24 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses);
  if (*(v21 + 16) && (v22 = sub_199B4AB20(result), (v23 & 1) != 0))
  {
    return *(*(v21 + 56) + 8 * v22);
  }

  else
  {
    return 0;
  }
}

char *sub_199B5C700(uint64_t a1)
{
  v3 = v1;
  v27 = sub_199DF738C();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v28 = a1;
  v11 = sub_199DF736C();
  v12 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v13 = *&v12[v3];
  if (v13 >> 62)
  {
    goto LABEL_28;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v11 < v14)
  {
    v2 = *&v12[v3];
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v11 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v2 + 8 * v11 + 32);
        goto LABEL_7;
      }

      __break(1u);
LABEL_32:
      v17 = sub_199DFA87C();
      goto LABEL_11;
    }

    while (1)
    {
      sub_199DF81AC();
      v22 = MEMORY[0x19A8F8520](v11, v2);

      v15 = v22;
LABEL_7:
      v25 = v15;
      v11 = [v15 indexPath];
      sub_199DF732C();

      if (sub_199DF731C())
      {
        (*(v5 + 8))(v10, v27);
        return v25;
      }

      v3 = *&v12[v3];
      if (v3 >> 62)
      {
        goto LABEL_32;
      }

      v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      sub_199DF81AC();
      if (!v17)
      {
        break;
      }

      v24 = v10;
      v2 = 0;
      v26 = v3 & 0xC000000000000001;
      v10 = (v3 & 0xFFFFFFFFFFFFFF8);
      v18 = (v5 + 8);
      v23[1] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v26)
        {
          v19 = MEMORY[0x19A8F8520](v2, v3);
        }

        else
        {
          if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v19 = *(v3 + 8 * v2 + 32);
        }

        v12 = v19;
        v20 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v21 = [v19 indexPath];
        sub_199DF732C();

        v5 = sub_199DF731C();
        v11 = *v18;
        (*v18)(v7, v27);
        if (v5)
        {
          (v11)(v24, v27);

          return v12;
        }

        ++v2;
        if (v20 == v17)
        {
          (v11)(v24, v27);
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v14 = sub_199DFA87C();
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    (*(v5 + 8))(v10, v27);
LABEL_23:
  }

  return 0;
}

unint64_t sub_199B5CA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_199DF736C();
  if (sub_199DF9F8C() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_199DFA99C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (v11 >> 62)
  {
    result = sub_199DFA87C();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= result)
  {
    return 0;
  }

  v10 = *(v3 + v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_18:
    sub_199DF81AC();
    v13 = MEMORY[0x19A8F8520](v6, v10);

    return v13;
  }

  if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v10 + 8 * v6 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_199B5CBCC(uint64_t a1)
{
  v2 = v1;
  v51 = sub_199DF738C();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  v12 = *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
  v13 = *(v12 + 16);
  if (v13)
  {
    v46 = a1;
    v47 = v2;
    v48 = v8;
    v49 = v4;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v50 = v15;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v45[1] = v12;
    sub_199DF81AC();
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = v51;
      v50(v11, v16, v51);
      v20 = sub_199DF736C();
      (*(v14 - 8))(v11, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_199AB2840(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_199AB2840((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      *&v18[8 * v22 + 32] = v20;
      v16 += v17;
      --v13;
    }

    while (v13);

    v8 = v48;
    v4 = v49;
    v2 = v47;
    a1 = v46;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_199DF736C();
  v24 = *(v18 + 2);
  v25 = 32;
  do
  {
    if (!v24)
    {

      v43 = sub_199DF730C();
      v44 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0);
      v52.receiver = v2;
      v52.super_class = v44;
      a = COERCE_DOUBLE(objc_msgSendSuper2(&v52, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, v43));

      return *&a;
    }

    v26 = *&v18[v25];
    v25 += 8;
    --v24;
  }

  while (v26 != v23);

  (*(v4 + 16))(v8, a1, v51);
  sub_199B5C204();
  v28 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_199DF734C();
  v30 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v31 = sub_199DF737C();
    v32 = v45[0];
    MEMORY[0x19A8F5110](v30, v31);
    v33 = v51;
    (*(v4 + 8))(v8, v51);
    (*(v4 + 32))(v8, v32, v33);
LABEL_16:
    v34 = sub_199DF730C();
    v35 = [v2 layoutAttributesForItemAtIndexPath_];

    if (v35 && ([v35 copy], v35, sub_199DFA66C(), swift_unknownObjectRelease(), sub_199B5EB58(), (swift_dynamicCast() & 1) != 0))
    {
      a = v53.a;
      if (v28)
      {
        v37 = sub_199DF730C();
        v38 = [v2 layoutAttributesForItemAtIndexPath_];

        if (v38)
        {
          [v38 transform];
          [*&a setTransform_];
        }
      }

      v39 = [v2 collectionView];
      if (v39)
      {
        v40 = v39;
        [v39 bounds];
        v42 = v41;
      }

      else
      {
        v42 = 0.0;
      }

      [*&a transform];
      CGAffineTransformTranslate(&v53, &v54, 0.0, v42 / -0.7);
      v54 = v53;
      [*&a setTransform_];
      [*&a setZIndex_];
      (*(v4 + 8))(v8, v51);
    }

    else
    {
      (*(v4 + 8))(v8, v51);
      a = 0.0;
    }

    return *&a;
  }

  __break(1u);
  return result;
}

id sub_199B5D13C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

char *sub_199B5D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = sub_199DF738C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = *&v4[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete];
  v17 = *(v16 + 16);
  if (v17)
  {
    v46 = a3;
    v47 = a1;
    v48 = a2;
    v49 = v4;
    v50 = v12;
    v51 = v8;
    v52 = *(v8 + 16);
    v18 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v20 = (v8 + 8);
    v45 = v16;
    sub_199DF81AC();
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = v53;
      v52(v15, v18, v53);
      v23 = sub_199DF736C();
      (*v20)(v15, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_199AB2840(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_199AB2840((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      *&v21[8 * v25 + 32] = v23;
      v18 += v19;
      --v17;
    }

    while (v17);

    v12 = v50;
    v8 = v51;
    v4 = v49;
    a3 = v46;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_199DF736C();
  v27 = *(v21 + 2);
  v28 = 32;
  do
  {
    if (!v27)
    {

      v40 = sub_199DF9F5C();
      v41 = sub_199DF730C();
      v42 = type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0);
      v54.receiver = v4;
      v54.super_class = v42;
      v39 = objc_msgSendSuper2(&v54, sel_finalLayoutAttributesForDisappearingSupplementaryElementOfKind_atIndexPath_, v40, v41);

      return v39;
    }

    v29 = *&v21[v28];
    v28 += 8;
    --v27;
  }

  while (v29 != v26);

  (*(v8 + 16))(v12, a3, v53);
  sub_199B5C204();
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_199DF734C();
  v32 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v33 = sub_199DF737C();
    v34 = v44;
    MEMORY[0x19A8F5110](v32, v33);
    v35 = v53;
    (*(v8 + 8))(v12, v53);
    (*(v8 + 32))(v12, v34, v35);
LABEL_16:
    v36 = sub_199DF9F5C();
    v37 = sub_199DF730C();
    v38 = [v4 layoutAttributesForSupplementaryViewOfKind:v36 atIndexPath:v37];

    if (v38 && ([v38 copy], v38, sub_199DFA66C(), swift_unknownObjectRelease(), sub_199B5EB58(), (swift_dynamicCast() & 1) != 0))
    {
      v39 = v55;
      [v55 setAlpha_];
      [v39 setZIndex_];
      (*(v8 + 8))(v12, v53);
    }

    else
    {
      (*(v8 + 8))(v12, v53);
      return 0;
    }

    return v39;
  }

  __break(1u);
  return result;
}

id sub_199B5D6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_199DF9F8C();
  v13 = v12;
  sub_199DF732C();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

uint64_t sub_199B5D860(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v91 = sub_199DF738C();
  v11 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v93 = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v92 = v5;
  v20 = *(v5 + v19);
  if (v20 >> 62)
  {
    v21 = sub_199DFA87C();
    if (v21 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v92;
  v22 = sub_199B5E668(0, v21 - 1, a1, a2, a3, a4);
  if (v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v22;
  if (v22 < 0)
  {
    goto LABEL_47;
  }

  v5 = *&v92[v19];
  v4 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22)
    {
      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v49 = sub_199DFA87C();
    v6 = v86;
    if (v49 < v86)
    {
      goto LABEL_58;
    }

    v18 = v49;
    if (sub_199DFA87C() < v6)
    {
      goto LABEL_59;
    }

    if (sub_199DFA87C() >= v18)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_48:
  if (sub_199DFA87C() < 0)
  {
    goto LABEL_57;
  }

  if (sub_199DFA87C() < v6)
  {
    goto LABEL_50;
  }

LABEL_9:
  v88 = v19;
  if ((v5 & 0xC000000000000001) == 0 || v6 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_199B5EB58();
    swift_bridgeObjectRetain_n();
    v26 = 0;
    do
    {
      v27 = v26 + 1;
      sub_199DFA73C();
      v26 = v27;
    }

    while (v6 != v27);
  }

  v84 = v15;
  v86 = v6;
  if (v4)
  {
    v85 = sub_199DFA88C();
    v29 = v31;
    v28 = v32;
    v34 = v33;

    v30 = v34 >> 1;
  }

  else
  {
    v28 = 0;
    v85 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v30 = v6;
  }

  v87 = v11;
  if (v30 != v28)
  {
    v35 = (v11 + 8);
    v89 = MEMORY[0x1E69E7CC0];
    v36 = v30;
    while (!__OFSUB__(v36--, 1))
    {
      if (v36 < v28 || v36 >= v30)
      {
        goto LABEL_43;
      }

      v38 = *(v29 + 8 * v36);
      [v38 frame];
      MaxX = CGRectGetMaxX(v94);
      v95.origin.x = a1;
      v95.origin.y = a2;
      v95.size.width = a3;
      v95.size.height = a4;
      if (CGRectGetMinX(v95) > MaxX)
      {

        goto LABEL_34;
      }

      v40 = [v38 indexPath];
      sub_199DF732C();

      v41 = [v92 collectionView];
      if (v41)
      {
        v42 = v41;
        v43 = sub_199DF736C();
        v44 = [v42 numberOfItemsInSection_];

        (*v35)(v18, v91);
        if (v43 < v44)
        {
          v45 = v38;
          MEMORY[0x19A8F7E80]();
          if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();

          v89 = v93;
        }

        else
        {
        }
      }

      else
      {

        (*v35)(v18, v91);
      }

      if (v36 == v28)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_34:
  swift_unknownObjectRelease();
  v5 = *&v92[v88];
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v86;
  v46 = v87;
  if (v18 < v86)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    while (v6 != v18)
    {
      if (v6 < v18)
      {
        sub_199B5EB58();
        swift_bridgeObjectRetain_n();
        v47 = v6;
        do
        {
          v48 = v47 + 1;
          sub_199DFA73C();
          v47 = v48;
        }

        while (v18 != v48);
        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v46 = v87;
      if ((v5 & 0xC000000000000001) == 0)
      {
        break;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_62:

  if (v4)
  {
    v50 = sub_199DFA88C();
    v88 = v51;
    v6 = v52;
    v54 = v53;

    v18 = v54 >> 1;
  }

  else
  {
    v50 = v5 & 0xFFFFFFFFFFFFFF8;
    v88 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v55 = v84;
  swift_unknownObjectRetain();
  if (v6 != v18)
  {
    v56 = (v46 + 8);
    v85 = v18 - 1;
    v86 = v50;
    v57 = v6;
    while (1)
    {
      v58 = v57;
      while (1)
      {
        if (v57 < v6 || v58 >= v18)
        {
          goto LABEL_105;
        }

        v59 = *(v88 + 8 * v58);
        [v59 frame];
        MinX = CGRectGetMinX(v96);
        v97.origin.x = a1;
        v97.origin.y = a2;
        v97.size.width = a3;
        v97.size.height = a4;
        if (MinX > CGRectGetMaxX(v97))
        {

          goto LABEL_81;
        }

        v61 = [v59 indexPath];
        sub_199DF732C();

        v62 = [v92 collectionView];
        v63 = v55;
        if (v62)
        {
          break;
        }

        (*v56)(v55, v91);
LABEL_69:
        if (v18 == ++v58)
        {
          goto LABEL_81;
        }
      }

      v64 = v62;
      v65 = sub_199DF736C();
      v66 = [v64 numberOfItemsInSection_];

      (*v56)(v63, v91);
      v55 = v63;
      if (v65 >= v66)
      {
        break;
      }

      v67 = v59;
      MEMORY[0x19A8F7E80]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      v57 = v58 + 1;
      sub_199DFA10C();

      v89 = v93;
      if (v85 == v58)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_69;
  }

LABEL_81:
  swift_unknownObjectRelease_n();
  v18 = v89;
  if (v89 >> 62)
  {
    goto LABEL_106;
  }

  for (i = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v69 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes;
    sub_199DF81AC();
    v88 = v69;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v70 = 0;
    v71 = v18 & 0xC000000000000001;
    v72 = v18 & 0xFFFFFFFFFFFFFF8;
    v73 = (v87 + 8);
    while (1)
    {
      if (v71)
      {
        v74 = MEMORY[0x19A8F8520](v70, v18);
      }

      else
      {
        if (v70 >= *(v72 + 16))
        {
          goto LABEL_102;
        }

        v74 = *(v18 + 8 * v70 + 32);
      }

      v75 = v74;
      v76 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      v77 = i;
      v78 = [v74 indexPath];
      v79 = v90;
      sub_199DF732C();

      v80 = sub_199DF736C();
      (*v73)(v79, v91);
      v18 = *&v92[v88];
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_199DF81AC();
        MEMORY[0x19A8F8520](v80, v18);
      }

      else
      {
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v80 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v81 = *(v18 + 8 * v80 + 32);
      }

      MEMORY[0x19A8F7E80](v81);
      v18 = v89;
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
        v18 = v89;
      }

      sub_199DFA10C();

      ++v70;
      i = v77;
      if (v76 == v77)
      {
        v82 = v93;
        goto LABEL_100;
      }
    }

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
    ;
  }

  v82 = v18;
LABEL_100:

  return v82;
}

unint64_t sub_199B5E274(CGFloat MinX)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-v7];
  v9 = sub_199DF738C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199B5AD88(v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = v12;
    v15 = sub_199DF737C();
    if (v15 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v15;
      v16 = sub_199DF736C();
      v14 = v16 + 2 * v8;
      if (!__OFADD__(v16, 2 * v8))
      {
        v8 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
        swift_beginAccess();
        v17 = *(v4 + v8);
        if (!(v17 >> 62))
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_8;
        }

LABEL_32:
        result = sub_199DFA87C();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_34;
        }

LABEL_8:
        if (v14 >= result)
        {
          v20 = *(v10 + 8);
          v10 += 8;
          result = v20(v12, v9);
          if (MinX != 0.0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v8 = *(v4 + v8);
          if ((v8 & 0xC000000000000001) != 0)
          {
            goto LABEL_36;
          }

          if (v14 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v8 + 8 * v14 + 32);
            goto LABEL_12;
          }

          __break(1u);
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  result = sub_199A79A04(v8, &qword_1EAF75C30, &qword_199E41740);
  if (MinX != 0.0)
  {
LABEL_15:
    while (1)
    {
      v2 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
      v14 = v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
      v3 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
      v9 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
      swift_beginAccess();
      v21 = *(v4 + v9);
      if (!(v21 >> 62))
      {
        break;
      }

LABEL_34:
      result = sub_199DFA87C();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_36:
      sub_199DF81AC();
      v18 = MEMORY[0x19A8F8520](v14, v8);

LABEL_12:
      [v18 frame];
      MinX = CGRectGetMinX(v27);

      v19 = *(v10 + 8);
      v10 += 8;
      result = v19(v12, v9);
      if (MinX == 0.0)
      {
        return result;
      }
    }

    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
    if (result)
    {
      v22 = 0.0;
      do
      {
        if (result == 1)
        {
          v23 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5;
        }

        else
        {
          v23 = *(v4 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
        }

        v24 = v22 + v2 + v23;
        if (MinX < v24 && v24 < v3)
        {
          break;
        }

        v22 = v24;
        --result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_199B5E668(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v16 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  result = swift_beginAccess();
  v10 = *(v7 + v16);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:
    sub_199DF81AC();
    v18 = MEMORY[0x19A8F8520](v6, v10);

LABEL_8:
    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxX <= CGRectGetMinX(v28))
      {
        v25 = v6 + 1;
        v21 = v14;
        v22 = v13;
        v23 = v12;
        v20 = v8;
        v24 = v11;
      }

      else
      {
        v20 = v6 - 1;
        v21 = v14;
        v22 = v13;
        v23 = v12;
        v24 = v11;
        v25 = v9;
      }

      v6 = sub_199B5E668(v25, v20, v21, v22, v23, v24);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v10 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_199B5E850()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNAvatarPosterPairCollectionViewLayout(uint64_t a1)
{
  result = qword_1EAF75B00;
  if (!qword_1EAF75B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B5E970(uint64_t a1)
{
  sub_199B5EA48(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199B5EA48(uint64_t a1)
{
  if (!qword_1EAF75B10)
  {
    sub_199DF738C();
    v1 = sub_199DFA63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF75B10);
    }
  }
}

uint64_t sub_199B5EAA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B5EB10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B5EB58()
{
  result = qword_1EAF75B30;
  if (!qword_1EAF75B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF75B30);
  }

  return result;
}

void sub_199B5EBA4()
{
  v1 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_scrollDirection) = 1;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cardSizeMultiplier) = 0x3FE6666666666666;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_maximumVerticalRevealFraction) = 0x3FD0000000000000;
  v3 = (v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedSupplementaryFooterAttributes) = v4;
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgresses) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete) = v4;
  v5 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_indexPathToMaintainForTransition;
  v6 = sub_199DF738C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  sub_199DFA85C();
  __break(1u);
}

UIColor AvatarPosterConfiguration.backgroundColor.getter()
{
  sub_199A9E488();
  v0 = sub_199DF81AC();
  return UIColor.init(avatarColorDescription:)(v0);
}

ContactsUI::AvatarPosterConfiguration::UserInfoKey_optional __swiftcall AvatarPosterConfiguration.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

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

unint64_t AvatarPosterConfiguration.UserInfoKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_199B5EDD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "tactRelation";
  }

  else
  {
    v4 = "backgroundColorDescription";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "backgroundColorDescription";
  }

  else
  {
    v7 = "tactRelation";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_199DFA99C();
  }

  return v9 & 1;
}

uint64_t sub_199B5EE84()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5EF04(uint64_t a1)
{
  sub_199DF9FEC();
}

uint64_t sub_199B5EF70(uint64_t a1)
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5EFEC@<X0>(char *a2@<X8>)
{
  v3 = sub_199DFA8DC();

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

  *a2 = v5;
  return result;
}

void sub_199B5F04C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "tactRelation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

ContactsUI::AvatarPosterConfiguration::ColorDescriptionKey_optional __swiftcall AvatarPosterConfiguration.ColorDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AvatarPosterConfiguration.ColorDescriptionKey.rawValue.getter()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_199B5F154()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199B5F1FC(uint64_t a1)
{
  sub_199DF9FEC();
}

uint64_t sub_199B5F290(uint64_t a1)
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

void sub_199B5F340(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
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

ContactsUI::AvatarPosterConfiguration::BoundingShape_optional __swiftcall AvatarPosterConfiguration.BoundingShape.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_199B5F3C8()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1 - 1);
  return sub_199DFAABC();
}

uint64_t sub_199B5F440(uint64_t a1)
{
  v2 = *v1;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v2 - 1);
  return sub_199DFAABC();
}

uint64_t AvatarPosterConfiguration.backgroundColorDescription.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.getter()
{
  v1 = *(v0 + 8);
  sub_199AFF43C(v1, *(v0 + 16));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.getter()
{
  v1 = *(v0 + 24);
  sub_199AFF43C(v1, *(v0 + 32));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarImageData.getter()
{
  v1 = *(v0 + 48);
  sub_199AFF43C(v1, *(v0 + 56));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_199A9EF20(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

UIColor __swiftcall UIColor.init(avatarColorDescription:)(Swift::OpaquePointer avatarColorDescription)
{
  if (!*(avatarColorDescription._rawValue + 2))
  {
    v3 = 1.0;
    v4 = 1.0;
LABEL_14:
    v7 = 1.0;
LABEL_15:
    v10 = 1.0;
    goto LABEL_16;
  }

  v2 = sub_199AEF9E8(6579570, 0xE300000000000000);
  v3 = 1.0;
  v4 = 1.0;
  if (v5)
  {
    v4 = *(*(avatarColorDescription._rawValue + 7) + 8 * v2);
  }

  if (!*(avatarColorDescription._rawValue + 2))
  {
    goto LABEL_14;
  }

  v6 = sub_199AEF9E8(0x6E65657267, 0xE500000000000000);
  v7 = 1.0;
  if (v8)
  {
    v7 = *(*(avatarColorDescription._rawValue + 7) + 8 * v6);
  }

  if (!*(avatarColorDescription._rawValue + 2))
  {
    goto LABEL_15;
  }

  v9 = sub_199AEF9E8(1702194274, 0xE400000000000000);
  v10 = 1.0;
  if (v11)
  {
    v3 = *(*(avatarColorDescription._rawValue + 7) + 8 * v9);
  }

  if (*(avatarColorDescription._rawValue + 2))
  {
    v12 = sub_199AEF9E8(0x6168706C61, 0xE500000000000000);
    if (v13)
    {
      v10 = *(*(avatarColorDescription._rawValue + 7) + 8 * v12);
    }
  }

LABEL_16:

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v14 initWithRed:v4 green:v7 blue:v3 alpha:v10];
}

uint64_t AvatarPosterConfiguration.init(backgroundColor:avatarRecordData:avatarPoseData:hasBody:avatarImageData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 8) = xmmword_199E3FAE0;
  *(a9 + 24) = xmmword_199E3FAE0;
  *(a9 + 48) = xmmword_199E3FAE0;
  v18 = UIColor.avatarColorDescription.getter();

  *a9 = v18;
  sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = sub_199A9EF20(0, 0xF000000000000000);
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t UIColor.avatarColorDescription.getter()
{
  v9[17] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  v6 = 0;
  v7 = 0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B38, &qword_199E41770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E41750;
  *(inited + 32) = 6579570;
  *(inited + 40) = 0xE300000000000000;
  v2 = v8;
  *(inited + 48) = v9[0];
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  v3 = v6;
  *(inited + 96) = v7;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v3;
  v4 = sub_199B4B26C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B40, &qword_199E41778);
  swift_arrayDestroy();
  return v4;
}

uint64_t AvatarPosterConfiguration.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

void AvatarPosterConfiguration.renderingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) >> 60 == 15)
  {
    *a1 = 2 * (*(v1 + 56) >> 60 == 15);
  }

  else
  {
    *a1 = 1;
  }
}

double static AvatarPosterConfiguration.stickerWaistLineHeightFraction(forBoundingShape:)(_BYTE *a1)
{
  result = 0.45;
  if (*a1 == 3)
  {
    return 0.7;
  }

  return result;
}

unint64_t sub_199B5FAD8()
{
  v1 = *v0;
  v2 = 0x6F50726174617661;
  v3 = 0x79646F42736168;
  if (v1 != 3)
  {
    v3 = 0x6D49726174617661;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_199B5FB94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_199B60CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_199B5FBD4(uint64_t a1)
{
  v2 = sub_199B60700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_199B5FC10(uint64_t a1)
{
  v2 = sub_199B60700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarPosterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B48, &qword_199E41780);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v8;
  v11 = *(v1 + 32);
  v29 = *(v1 + 40);
  v12 = *(v1 + 56);
  v22 = *(v1 + 48);
  v23 = v12;
  v24 = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_0(v14, v13);
  sub_199B60700();
  sub_199DF81AC();
  sub_199DFAAEC();
  v27 = v9;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B50, &qword_199E41788);
  sub_199B607FC(&qword_1EAF71128, sub_199B60754, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_199DFA93C();
  if (v2)
  {

    return (*(v5 + 8))(v7, v16);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    v21 = v5;

    v27 = v26;
    v28 = v10;
    v30 = 1;
    sub_199AFF43C(v26, v10);
    sub_199B607A8();
    sub_199DFA91C();
    sub_199A9EF20(v27, v28);
    v27 = v19;
    v28 = v18;
    v30 = 2;
    sub_199AFF43C(v19, v18);
    sub_199DFA91C();
    sub_199A9EF20(v27, v28);
    v20 = v21;
    LOBYTE(v27) = 3;
    sub_199DFA92C();
    v27 = v22;
    v28 = v23;
    v30 = 4;
    sub_199AFF43C(v22, v23);
    sub_199DFA91C();
    sub_199A9EF20(v27, v28);
    return (*(v20 + 8))(v7, v16);
  }
}

uint64_t AvatarPosterConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B58, &qword_199E41790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_199B60700();
  sub_199DFAADC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_199A9EF20(0, 0xF000000000000000);
    sub_199A9EF20(0, 0xF000000000000000);
    return sub_199A9EF20(0, 0xF000000000000000);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75B50, &qword_199E41788);
    LOBYTE(v25) = 0;
    sub_199B607FC(&qword_1EAF71120, sub_199B60880, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_199DFA90C();
    v24 = v29;
    LOBYTE(v25) = 1;
    sub_199B608D4();
    sub_199DFA8EC();
    v22 = v30;
    v23 = v29;
    sub_199A9EF20(0, 0xF000000000000000);
    LOBYTE(v25) = 2;
    sub_199DFA8EC();
    v21 = a2;
    v9 = v29;
    v10 = v30;
    sub_199A9EF20(0, 0xF000000000000000);
    LOBYTE(v29) = 3;
    v39 = sub_199DFA8FC();
    v40 = 4;
    sub_199DFA8EC();
    v39 &= 1u;
    (*(v6 + 8))(v8, v5);
    v12 = v37;
    v11 = v38;
    sub_199A9EF20(0, 0xF000000000000000);
    v13 = v23;
    *&v25 = v24;
    *(&v25 + 1) = v23;
    v14 = v22;
    *&v26 = v22;
    *(&v26 + 1) = v9;
    *&v27 = v10;
    v15 = v39;
    BYTE8(v27) = v39;
    *&v28 = v12;
    *(&v28 + 1) = v11;
    v16 = v26;
    v17 = v21;
    *v21 = v25;
    v17[1] = v16;
    v18 = v28;
    v17[2] = v27;
    v17[3] = v18;
    sub_199B60928(&v25, &v29);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v29 = v24;
    v30 = v13;
    v31 = v14;
    v32 = v9;
    v33 = v10;
    v34 = v15;
    v35 = v12;
    v36 = v11;
    return sub_199B60960(&v29);
  }
}

BOOL _s10ContactsUI25AvatarPosterConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v23 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 48);
  if ((sub_199B733D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v19 = v6;
      sub_199AFF43C(v2, v4);
      sub_199AFF43C(v7, v8);
      sub_199A9EF20(v2, v4);
      goto LABEL_8;
    }

LABEL_6:
    sub_199AFF43C(v2, v4);
    sub_199AFF43C(v7, v8);
    sub_199A9EF20(v2, v4);
    v12 = v7;
    v13 = v8;
LABEL_14:
    sub_199A9EF20(v12, v13);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v19 = v6;
  sub_199AFF43C(v2, v4);
  sub_199AFF43C(v7, v8);
  v14 = sub_199B48F70(v2, v4, v7, v8);
  sub_199A9EF20(v7, v8);
  sub_199A9EF20(v2, v4);
  if (!v14)
  {
    return 0;
  }

LABEL_8:
  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_199AFF43C(v3, v5);
      sub_199AFF43C(v9, v10);
      sub_199A9EF20(v3, v5);
      if (v23 == v11)
      {
LABEL_19:
        if (v19 >> 60 == 15)
        {
          v17 = v21;
          if (v21 >> 60 == 15)
          {
            sub_199AFF43C(v22, v19);
            sub_199AFF43C(v20, v21);
            sub_199A9EF20(v22, v19);
            return 1;
          }
        }

        else
        {
          v17 = v21;
          if (v21 >> 60 != 15)
          {
            sub_199AFF43C(v22, v19);
            sub_199AFF43C(v20, v21);
            v18 = sub_199B48F70(v22, v19, v20, v21);
            sub_199A9EF20(v20, v21);
            sub_199A9EF20(v22, v19);
            return v18;
          }
        }

        sub_199AFF43C(v22, v19);
        sub_199AFF43C(v20, v17);
        sub_199A9EF20(v22, v19);
        v12 = v20;
        v13 = v17;
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_13;
  }

  if (v10 >> 60 == 15)
  {
LABEL_13:
    sub_199AFF43C(v3, v5);
    sub_199AFF43C(v9, v10);
    sub_199A9EF20(v3, v5);
    v12 = v9;
    v13 = v10;
    goto LABEL_14;
  }

  sub_199AFF43C(v3, v5);
  sub_199AFF43C(v9, v10);
  v16 = sub_199B48F70(v3, v5, v9, v10);
  sub_199A9EF20(v9, v10);
  sub_199A9EF20(v3, v5);
  result = 0;
  if (v16 && ((v23 ^ v11) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_199B60700()
{
  result = qword_1EAF71BE8;
  if (!qword_1EAF71BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BE8);
  }

  return result;
}

unint64_t sub_199B60754()
{
  result = qword_1EAF714D0;
  if (!qword_1EAF714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714D0);
  }

  return result;
}

unint64_t sub_199B607A8()
{
  result = qword_1EAF714E8;
  if (!qword_1EAF714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714E8);
  }

  return result;
}

uint64_t sub_199B607FC(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75B50, &qword_199E41788);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B60880()
{
  result = qword_1EAF714C0;
  if (!qword_1EAF714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714C0);
  }

  return result;
}

unint64_t sub_199B608D4()
{
  result = qword_1EAF714E0;
  if (!qword_1EAF714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF714E0);
  }

  return result;
}

unint64_t sub_199B60994()
{
  result = qword_1EAF75B60;
  if (!qword_1EAF75B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B60);
  }

  return result;
}

unint64_t sub_199B609EC()
{
  result = qword_1EAF75B68;
  if (!qword_1EAF75B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B68);
  }

  return result;
}

unint64_t sub_199B60A44()
{
  result = qword_1EAF75B70;
  if (!qword_1EAF75B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B70);
  }

  return result;
}

unint64_t sub_199B60A9C()
{
  result = qword_1EAF75B78;
  if (!qword_1EAF75B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B78);
  }

  return result;
}

uint64_t sub_199B60AF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_199B60B38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_199B60BEC()
{
  result = qword_1EAF75B80;
  if (!qword_1EAF75B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75B80);
  }

  return result;
}

unint64_t sub_199B60C44()
{
  result = qword_1EAF71BD8;
  if (!qword_1EAF71BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BD8);
  }

  return result;
}

unint64_t sub_199B60C9C()
{
  result = qword_1EAF71BE0;
  if (!qword_1EAF71BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BE0);
  }

  return result;
}

uint64_t sub_199B60CF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000199E44010 == a2 || (sub_199DFA99C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000199E44AD0 == a2 || (sub_199DFA99C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F50726174617661 && a2 == 0xEE00617461446573 || (sub_199DFA99C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79646F42736168 && a2 == 0xE700000000000000 || (sub_199DFA99C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 4;
  }

  else
  {
    v5 = sub_199DFA99C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_199B60F1C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B60FD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B61028(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__allocating_init(with:contact:contactForSharedProfile:mode:delegate:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_199B6AA90(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.init(with:contact:contactForSharedProfile:mode:delegate:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_199B6AA90(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v8;
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNAvatarPosterPairCollectionViewControllerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewControllerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B61334(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = 0;
  v11 = &v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v11 = 0;
  v11[1] = 0;
  v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 5;
  v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_configuration] = a1;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact] = a2;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contactForSharedProfile] = a3;
  v12 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode;
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode] = a4;
  swift_unknownObjectWeakAssign();
  v37 = a1;
  v13 = a2;
  v14 = a3;
  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v17 = (v16 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v18 = [objc_opt_self() mainThreadScheduler];
  v19 = type metadata accessor for CNAvatarPosterPairCollectionViewModel(0);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
  *v21 = 0;
  v21[8] = 1;
  v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 0;
  *&v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel____lazy_storage___pairDeduper] = 0;
  *&v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact] = v13;
  *&v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile] = v14;
  *&v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode] = v17;
  v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode] = 1;
  *&v20[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue] = v18;
  swift_beginAccess();
  v41 = MEMORY[0x1E69E7CC0];
  v22 = v13;
  v23 = v14;
  v24 = v22;
  v25 = v23;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0, &qword_199E41F00);
  sub_199DF83FC();
  swift_endAccess();
  v40.receiver = v20;
  v40.super_class = v19;
  v26 = objc_msgSendSuper2(&v40, sel_init);
  v27 = *&v26[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  aBlock[4] = sub_199B6B6FC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_132;
  v29 = _Block_copy(aBlock);
  v30 = v26;
  swift_unknownObjectRetain();

  [v27 performBlock_];
  _Block_release(v29);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] = v30;
  v31 = *&v6[v12];
  v32 = objc_allocWithZone(type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0));
  v33 = sub_199B5A864(v31);
  *&v6[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout] = v33;
  v38.receiver = v6;
  v38.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v34 = v33;
  v35 = objc_msgSendSuper2(&v38, sel_initWithCollectionViewLayout_, v34);

  swift_unknownObjectRelease();
  return v35;
}

id sub_199B617FC()
{
  if (*&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber])
  {

    sub_199DF83AC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199B619D0(uint64_t a1, __n128 a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  sub_199B6488C();
  v3 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v3[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  v6 = *&v3[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider];
  v7 = *&v3[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemRevealProgressProvider + 8];
  *v5 = sub_199B6B65C;
  v5[1] = v4;
  v8 = v3;

  sub_199A9A5FC(v6, v7);

  sub_199B64AF4();
}

char *sub_199B61AEC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v4;
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v37 = &v33 - v7;
  result = [a2 collectionView];
  if (result)
  {
    v9 = result;
    v10 = [result visibleCells];

    sub_199A7A02C(0, &unk_1EAF75C90, 0x1E69DC7F8);
    v11 = sub_199DFA0CC();

    if (v11 >> 62)
    {
LABEL_21:
      v39 = sub_199DFA87C();
      if (v39)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v39 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_4:
        v12 = 0;
        v13 = v11 & 0xC000000000000001;
        v14 = v11 & 0xFFFFFFFFFFFFFF8;
        v33 = v11 & 0xC000000000000001;
        v38 = v11 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v13)
          {
            v15 = MEMORY[0x19A8F8520](v12, v11);
          }

          else
          {
            if (v12 >= *(v14 + 16))
            {
              goto LABEL_20;
            }

            v15 = *(v11 + 8 * v12 + 32);
          }

          v16 = v15;
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          type metadata accessor for CNAvatarPosterPairCollectionViewCell();
          result = swift_dynamicCastClass();
          if (!result)
          {
            goto LABEL_5;
          }

          v18 = *&result[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollableContentView];
          if (!v18)
          {
            __break(1u);
            goto LABEL_24;
          }

          v19 = *(*&v18[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel] + OBJC_IVAR____TtC10ContactsUI27CNAvatarPosterPairViewModel_avatarPosterPair);
          if (v19)
          {
            v20 = v18;
            v21 = v19;
            v22 = [v20 traitCollection];
            v23 = [v22 userInterfaceIdiom];

            if (v23)
            {
            }

            else
            {
              v24 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
              swift_beginAccess();
              v25 = v37;
              sub_199AAD408(&v20[v24], v37, &unk_1EAF73C00, &unk_199E3B930);
              v26 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v27 = v34;
              sub_199AAD408(v25, v34, &unk_1EAF73C00, &unk_199E3B930);
              v28 = v11;
              v29 = (*(v36 + 80) + 24) & ~*(v36 + 80);
              v30 = swift_allocObject();
              *(v30 + 16) = v26;
              v31 = v30 + v29;
              v11 = v28;
              v32 = v27;
              v13 = v33;
              sub_199AB7794(v32, v31, &unk_1EAF73C00, &unk_199E3B930);

              sub_199AD93F0(v21, sub_199ADA628, v30);

              sub_199A79A04(v37, &unk_1EAF73C00, &unk_199E3B930);
            }

            v14 = v38;
          }

          else
          {
LABEL_5:
          }

          ++v12;
        }

        while (v17 != v39);
      }
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_199B61ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_199B620C8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72678, &qword_199E37C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72680, &qword_199E37C78);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72688, &qword_199E37C80);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = sub_199DF729C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v45.receiver = v2;
  v45.super_class = v17;
  objc_msgSendSuper2(&v45, sel_viewIsAppearing_, a1 & 1);
  sub_199DF728C();
  v18 = sub_199DF724C();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  v43 = 0xD00000000000002BLL;
  v44 = 0x8000000199E498C0;
  MEMORY[0x19A8F7E00](v18, v20);

  v21 = v44;
  v22 = &v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v22 = v43;
  v22[1] = v21;
  sub_199DF81AC();

  v23 = [objc_allocWithZone(CNPRUISPosterSnapshotController) init];
  v24 = sub_199DF9F5C();

  [v23 acquireKeepActiveAssertionForReason_];

  v25 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber;
  if (!*&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber])
  {
    v26 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
    swift_beginAccess();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726A0, &qword_199E37C88);
    v37 = v12;
    sub_199DF840C();
    swift_endAccess();

    v28 = [objc_opt_self() mainRunLoop];
    v43 = v28;
    v29 = sub_199DFA62C();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_199A7A02C(0, &qword_1EAF726A8, 0x1E695DFD0);
    sub_199AA0B90(&qword_1EAF726B0, &qword_1EAF72688, &qword_199E37C80, MEMORY[0x1E695C068]);
    sub_199B6B608(&qword_1EAF726B8, &qword_1EAF726A8, 0x1E695DFD0, MEMORY[0x1E696A010]);
    v30 = v40;
    v31 = v38;
    v32 = v37;
    sub_199DF846C();
    sub_199A79A04(v6, &qword_1EAF72678, &qword_199E37C70);

    sub_199AA0B90(&qword_1EAF726C0, &qword_1EAF72680, &qword_199E37C78, MEMORY[0x1E695BE98]);
    v33 = v42;
    v34 = sub_199DF844C();
    (*(v41 + 8))(v30, v33);
    (*(v39 + 8))(v32, v31);
    v43 = v34;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF726C8, &unk_199E37C90);
    sub_199AA0B90(&qword_1EAF726D0, &qword_1EAF726C8, &unk_199E37C90, MEMORY[0x1E695BED8]);
    v35 = sub_199DF848C();

    *&v2[v25] = v35;
  }

  if (v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] == 1)
  {
    v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
    sub_199B6890C();
  }
}

void sub_199B626C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_199DF841C();

  if (v27 >> 62)
  {
    goto LABEL_16;
  }

  v6 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_17:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v27 >> 62)
    {
      goto LABEL_40;
    }

    v11 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_19:
    v12 = 0;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x19A8F8520](v12);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v10 = v13;

          goto LABEL_30;
        }
      }

      else
      {
        if (v12 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          v11 = sub_199DFA87C();
          if (!v11)
          {
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        v13 = *(v27 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_28;
        }
      }

      if (!v13[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type])
      {
        goto LABEL_29;
      }

      ++v12;
      if (v14 == v11)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_4:
  v7 = 0;
  while ((v27 & 0xC000000000000001) == 0)
  {
    if (v7 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_16:
      v6 = sub_199DFA87C();
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_4;
    }

    v8 = *(v27 + 8 * v7 + 32);
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v8[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] == 1)
    {
      goto LABEL_14;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_17;
    }
  }

  v8 = MEMORY[0x19A8F8520](v7);
  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v10 = v8;

LABEL_30:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *&v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
    if (v17 == 1)
    {
      v18 = v10;
      v5 = 0;
    }

    else
    {
      v5 = v17;
      v18 = v10;
    }

    v19 = *&v18[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (v19 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *&v18[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    }

    v21 = v18[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];
    v22 = v18;
    sub_199AA2284(*&v18[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster]);
    [v16 avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:v5 poster:v20 backedByRecents:v21];

    swift_unknownObjectRelease();
    sub_199AA2294(v19);
  }

  else
  {
    v5 = v10;
  }

LABEL_42:

  v23 = [v3 view];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 window];

    v26 = [v25 windowScene];
    if (v26)
    {

      sub_199B6890C();
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_199B62AF0(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  result = objc_msgSendSuper2(&v8, sel_viewWillDisappear_, v2 & 1);
  v4 = &v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  if (*&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason + 8])
  {
    v5 = objc_allocWithZone(CNPRUISPosterSnapshotController);
    sub_199DF81AC();
    v6 = [v5 init];
    v7 = sub_199DF9F5C();

    [v6 releaseKeepActiveAssertionForReason_];

    *v4 = 0;
    *(v4 + 1) = 0;
  }

  return result;
}

void sub_199B62CE8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
  v5 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v20[0] & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v20[0] + 8 * v5 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v6 = MEMORY[0x19A8F8520](v5, v20[0]);
LABEL_5:
  v7 = v6;

  v8 = sub_199DF9F5C();
  v9 = sub_199DF730C();
  v10 = [a1 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

  type metadata accessor for CNAvatarPosterPairCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    *(v11 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_delegate + 8) = &off_1F0CE2800;
    swift_unknownObjectWeakAssign();
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v7;
    v14[4] = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_199B6B5FC;
    *(v15 + 24) = v14;
    v20[4] = sub_199B12B7C;
    v20[5] = v15;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_199B630A0;
    v20[3] = &block_descriptor_111;
    v16 = _Block_copy(v20);
    v17 = v10;
    v7 = v7;
    v18 = v2;

    [v13 performWithoutAnimation_];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
}

void sub_199B62FE8(char *a1, void *a2, uint64_t a3)
{
  sub_199AF112C(a2, *(a3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact));
  v4 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction;
  v5 = *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction];
  *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  if (v5 != 0.25)
  {
    [a1 bounds];
    v8 = *&a1[OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView];
    if (v8)
    {
      v9 = v7 * (*&a1[v4] + 1.0);

      [v8 setContentSize_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B631DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_199DF9F5C();
  v6 = sub_199DF9F5C();
  v7 = sub_199DF730C();
  v8 = [a1 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:v7];

  type metadata accessor for CNAvatarPosterPairRemovalView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    *(v9 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_delegate + 8) = &off_1F0CE27F0;
    swift_unknownObjectWeakAssign();
    v11 = sub_199DF736C();
    v12 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
    v13 = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_199DF841C();

    if (v24 >> 62)
    {
      v15 = sub_199DFA87C();
    }

    else
    {
      v15 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 < v15)
    {
      v16 = *(v3 + v12);
      v17 = sub_199DF736C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if ((v24 & 0xC000000000000001) == 0)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v17 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v24 + 8 * v17 + 32);
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_19;
      }

      v18 = MEMORY[0x19A8F8520](v17);
LABEL_9:
      v19 = v18;

      v20 = *(v10 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair);
      *(v10 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair) = v19;
      v21 = v19;

      v22 = *(v10 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton);
      if (v22)
      {
        [v22 setHidden_];

        return;
      }

LABEL_19:
      __break(1u);
    }
  }

  else
  {

    v23 = objc_allocWithZone(MEMORY[0x1E69DC7E8]);

    [v23 init];
  }
}

void sub_199B63700(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v21 - v9;
  v11 = [v2 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 indexPathForCell_];

    if (v13)
    {
      sub_199DF732C();

      v14 = sub_199DF738C();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    }

    else
    {
      v14 = sub_199DF738C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    sub_199AB7794(v6, v10, &qword_1EAF75C30, &qword_199E41740);
    sub_199DF738C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      sub_199A79A04(v10, &qword_1EAF75C30, &qword_199E41740);
      return;
    }

    v16 = sub_199DF736C();
    (*(v15 + 8))(v10, v14);
    v17 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_199DF841C();

    if ((v22 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A8F8520](v16, v22);
      goto LABEL_11;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v22 + 8 * v16 + 32);
LABEL_11:
      v20 = v19;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_199B63A58(uint64_t a1, void *a2)
{
  v32 = a2;
  v30 = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  sub_199DF9EEC();
  v9 = MEMORY[0x1E69E7CC0];
  sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v10 = *(v4 + 8);
  v31 = v3;
  v10(v7, v3);
  v11 = sub_199DF9F5C();

  v33 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:0];

  sub_199DF9EEC();
  sub_199AA8A84(v7, v9);
  v10(v7, v3);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = v32;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;

  v15 = v14;
  v16 = sub_199DF9F5C();

  v38 = sub_199B6B070;
  v39 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_199B6406C;
  v37 = &block_descriptor_84;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
  _Block_release(v17);

  sub_199DF9EEC();
  sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v10(v7, v31);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = sub_199DF9F5C();

  v38 = sub_199B6B078;
  v39 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v22 = v19;
  v23 = v33;
  v36 = sub_199B6406C;
  v37 = &block_descriptor_88;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v21 style:1 handler:v24];
  _Block_release(v24);

  [v23 addAction_];
  [v23 addAction_];
  [v23 setPreferredAction_];
  v26 = [v2 traitCollection];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 1)
  {
    v28 = [v23 popoverPresentationController];
    if (v28)
    {
      v29 = v28;
      [v28 setSourceView_];
    }
  }

  [v2 presentViewController:v23 animated:1 completion:{0, v30}];
}

void sub_199B63F78(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
    v7 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
    sub_199B43A58(a3);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      [v8 avatarPosterPairCollectionDidDeletePosterPair];
      swift_unknownObjectRelease();
    }

    if (*(*&v5[v6] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair) == 1 && (v9 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      [v9 avatarPosterPairCollectionDidDeleteCurrentPosterPair];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199B6406C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_199B640D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result collectionView];
  if (!result)
  {
    goto LABEL_24;
  }

  v4 = result;
  v5 = [result visibleCells];

  sub_199A7A02C(0, &unk_1EAF75C90, 0x1E69DC7F8);
  v6 = sub_199DFA0CC();

  v24 = v3;
  if (v6 >> 62)
  {
LABEL_20:
    v7 = sub_199DFA87C();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_21:
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_5:
  v8 = 0;
  v25 = v27;
  v9 = &qword_1EAF73000;
  v10 = &selRef_containers;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x19A8F8520](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      goto LABEL_6;
    }

    v15 = v14;
    result = *(v14 + v9[367]);
    if (!result)
    {
      break;
    }

    [result v10[29]];
    if (v17 != 0.0 || v16 != 0.0)
    {
      v18 = v9;
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v15;
      v27[2] = sub_199B6B080;
      v27[3] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v27[0] = sub_199AB45A0;
      v27[1] = &block_descriptor_94;
      v21 = _Block_copy(aBlock);
      v22 = v12;

      v23 = v19;
      v9 = v18;
      v10 = &selRef_containers;
      [v23 animateWithDuration:v21 animations:0.3];

      _Block_release(v21);
      goto LABEL_7;
    }

LABEL_6:

LABEL_7:
    ++v8;
    if (v13 == v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_199B64398(void *a1, void *a2)
{
  if (!a2)
  {
LABEL_5:
    sub_199DFA2FC();
    v10 = CNUILogPosters();
    sub_199DF7FEC();

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration);
  if (v6)
  {
    sub_199A7A02C(0, &qword_1EAF71048, off_1E74DEC80);
    v7 = a2;
    v8 = v6;
    v9 = sub_199DFA4EC();

    if (v9)
    {

      goto LABEL_5;
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(v4 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v14 = *&v13[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v19[4] = sub_199AA22D4;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_199AB45A0;
  v19[3] = &block_descriptor_77_0;
  v16 = _Block_copy(v19);
  v17 = v13;
  swift_unknownObjectRetain();

  [v14 performBlock_];
  _Block_release(v16);

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong avatarPosterPairCollectionDidEditPoster_];
    swift_unknownObjectRelease();
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_199B6467C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = sub_199B646DC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_199B646DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E3CC90;
  *(inited + 32) = v0;
  *(inited + 40) = v1;
  v4 = v0;
  v5 = v1;
  sub_199B6A530(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_199A7A02C(0, &qword_1EAF75C70, 0x1E696AD98);
  sub_199B6B608(&qword_1EAF75C78, &qword_1EAF75C70, 0x1E696AD98, MEMORY[0x1E69E81B8]);
  v6 = sub_199DFA23C();

  v7 = [v2 privateConfigurationForTypes_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) initWithConfiguration_];
  return v8;
}

void sub_199B6488C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CNAvatarPosterPairRemovalView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = *MEMORY[0x1E69DDC00];
    v5 = sub_199DF9F5C();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v6 = swift_getObjCClassFromMetadata();
    v7 = sub_199DF9F5C();
    [v2 registerClass:v6 forCellWithReuseIdentifier:v7];

    v8 = objc_opt_self();
    v9 = v2;
    v10 = [v8 systemBackgroundColor];
    [v9 setBackgroundColor_];

    v11 = *MEMORY[0x1E69DE3A0];
    v12 = v9;
    [v12 setDecelerationRate_];
    [v12 setContentInsetAdjustmentBehavior_];
    [v12 setShowsHorizontalScrollIndicator_];
    [v12 setAlwaysBounceHorizontal_];
  }
}

unint64_t sub_199B64A88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  }

  v2 = Strong;
  v3 = sub_199B69A04();

  return v3;
}

void sub_199B64AF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0, &unk_199E3CA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v105 - v3;
  v120 = sub_199DF9F4C();
  v5 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_199DF6FFC();
  v124 = *(v8 - 8);
  v125 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v105 - v11;
  v130 = sub_199DFA5BC();
  v133 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_199DFA55C();
  v132 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_199DFA5EC();
  v122 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v105 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v105 - v19;
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) initWithFrame_];
  v22 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  v23 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = v21;
  v24 = v21;

  if (!v24)
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = objc_opt_self();
  v26 = [v25 tertiaryLabelColor];
  [v24 setPageIndicatorTintColor_];

  v27 = *&v1[v22];
  if (!v27)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v28 = v27;
  v121 = v25;
  v29 = [v25 labelColor];
  [v28 setCurrentPageIndicatorTintColor_];

  v30 = *&v1[v22];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v30 setHidesForSinglePage_];
  v31 = *&v1[v22];
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v31 setAllowsContinuousInteraction_];
  v32 = *&v1[v22];
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v32 _setPreferredNumberOfVisibleIndicators_];
  v33 = *&v1[v22];
  if (!v33)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v33 _setCustomVerticalPadding_];
  v34 = *&v1[v22];
  if (!v34)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v34 addTarget:v1 action:sel_pageControlDidChangePage_ forControlEvents:4096];
  v35 = *&v1[v22];
  if (!v35)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v35 setMaximumContentSizeCategory_];
  v36 = *&v1[v22];
  if (!v36)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v36 setTintAdjustmentMode_];
  v37 = [v1 collectionView];
  if (!v37)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v38 = v37;
  v39 = [v37 numberOfItemsInSection_];

  v40 = *&v1[v22];
  if (!v40)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ([v40 numberOfPages] == v39)
  {
    goto LABEL_15;
  }

  v41 = *&v1[v22];
  if (v41)
  {
    [v41 setNumberOfPages_];
    sub_199B683B0(0, 1);
LABEL_15:
    v42 = [v1 view];
    if (v42)
    {
      v116 = v4;
      v117 = v15;
      if (*&v1[v22])
      {
        v43 = v42;
        [v42 addSubview_];

        sub_199DFA5DC();
        v44 = *MEMORY[0x1E69DC4F0];
        v45 = *(v132 + 104);
        v132 += 104;
        v114 = v45;
        v45(v126, v44, v127);
        sub_199DFA56C();
        v46 = sub_199DFA53C();
        sub_199DF80DC();
        v46(v134, 0);
        v47 = v121;
        v48 = [v121 labelColor];
        sub_199DFA5AC();
        v49 = [v47 secondarySystemBackgroundColor];
        sub_199DFA59C();
        v50 = *(v133 + 104);
        v113 = *MEMORY[0x1E69DC558];
        v133 += 104;
        v112 = v50;
        v50(v129);
        sub_199DFA54C();
        sub_199DFA58C();
        v51 = v123;
        sub_199DF6FEC();
        v134[0] = [objc_opt_self() _preferredFontForTextStyle_weight_];
        sub_199B054CC();
        sub_199DF700C();
        sub_199DF9EEC();
        v52 = MEMORY[0x1E69E7CC0];
        sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
        v54 = v53;
        v55 = *(v5 + 8);
        v56 = v5 + 8;
        v57 = v120;
        v119 = v55;
        v55(v7, v120);
        (*(v124 + 16))(v118, v51, v125);
        sub_199DF81AC();
        v58 = v116;
        v108 = v54;
        sub_199DF6FBC();
        v59 = sub_199DF6FAC();
        (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
        sub_199DFA57C();
        v60 = sub_199A7A02C(0, &qword_1EAF73590, 0x1E69DC738);
        v61 = *(v122 + 16);
        v116 = v20;
        v110 = v122 + 16;
        v109 = v61;
        v61(v128, v20, v131);
        v62 = sub_199A7A02C(0, &unk_1EAF75C50, 0x1E69DC628);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_199DFA51C();
        v111 = v60;
        v63 = sub_199DFA5FC();
        v64 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
        v115 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
        *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = v63;

        v134[0] = v52;
        v65 = [v1 traitCollection];
        v66 = [v65 userInterfaceIdiom];

        v118 = v62;
        if (!v66)
        {
          sub_199DF9EEC();
          sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
          v106 = v7;
          v107 = v56;
          v119(v7, v57);
          v67 = sub_199DF9F5C();
          v68 = [objc_opt_self() systemImageNamed_];

          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_199DFA51C();
          MEMORY[0x19A8F7E80]();
          if (*((v134[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();
          v57 = v120;
          v7 = v106;
        }

        sub_199DF9EEC();
        sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
        v119(v7, v57);
        v69 = sub_199DF9F5C();
        v70 = objc_opt_self();
        v71 = [v70 systemImageNamed_];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_199DFA51C();
        MEMORY[0x19A8F7E80]();
        if (*((v134[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();
        v72 = v115;
        v73 = *&v1[v115];
        v74 = v117;
        v75 = v116;
        if (v73)
        {
          if (v134[0] >> 62)
          {
            sub_199A7A02C(0, &unk_1EAF755D8, 0x1E69DCC78);
            v104 = v73;
            sub_199DF81AC();
            sub_199DFA86C();
          }

          else
          {
            v76 = v73;
            sub_199DF81AC();
            sub_199DFA9AC();
            sub_199A7A02C(0, &unk_1EAF755D8, 0x1E69DCC78);
          }

          sub_199A7A02C(0, &unk_1EAF75C60, 0x1E69DCC60);
          v77 = sub_199DFA46C();
          [v73 setMenu_];

          v78 = *&v1[v72];
          if (v78)
          {
            v79 = *MEMORY[0x1E69DDC40];
            [v78 setMaximumContentSizeCategory_];
            v80 = *&v1[v72];
            if (v80)
            {
              [v80 setTintAdjustmentMode_];
              v81 = [v1 view];
              if (v81)
              {
                if (*&v1[v72])
                {
                  v82 = v81;
                  [v81 addSubview_];

                  v83 = *&v1[v72];
                  if (v83)
                  {
                    v84 = [v83 currentPreferredSymbolConfiguration];
                    v85 = objc_opt_self();
                    if (v84)
                    {
                      v86 = [v85 configurationWithWeight_];
                      v87 = [v84 configurationByApplyingConfiguration_];
                    }

                    else
                    {
                      v87 = [v85 configurationWithPointSize:6 weight:2 scale:18.0];
                    }

                    sub_199DFA5DC();
                    v88 = sub_199DF9F5C();
                    v89 = [v70 systemImageNamed_];

                    sub_199DFA5CC();
                    v90 = v87;
                    sub_199DFA52C();
                    v114(v126, *MEMORY[0x1E69DC508], v127);
                    sub_199DFA56C();
                    v91 = v121;
                    v92 = [v121 whiteColor];
                    sub_199DFA5AC();
                    v93 = [v91 tintColor];
                    sub_199DFA59C();
                    v112(v129, v113, v130);
                    sub_199DFA54C();
                    v109(v128, v74, v131);
                    swift_allocObject();
                    swift_unknownObjectWeakInit();
                    sub_199DFA51C();
                    v94 = sub_199DFA5FC();
                    [v94 setMaximumContentSizeCategory_];
                    [v94 setTintAdjustmentMode_];
                    v95 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton;
                    v96 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
                    *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = v94;
                    v97 = v94;

                    v98 = [v1 view];
                    if (v98)
                    {
                      v99 = *&v1[v95];
                      if (v99)
                      {
                        v100 = v98;
                        v101 = v99;

                        [v100 addSubview_];

                        v102 = *(v122 + 8);
                        v103 = v131;
                        v102(v74, v131);
                        (*(v124 + 8))(v123, v125);
                        v102(v75, v103);
                        return;
                      }

                      goto LABEL_58;
                    }

LABEL_57:
                    __break(1u);
LABEL_58:
                    __break(1u);
                    goto LABEL_59;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_59:
  __break(1u);
}

void sub_199B65C54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_199B6740C();
    if (!v4)
    {

      return;
    }

    v5 = v4;
    if (*(v4 + OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type) != 3 && !*&v3[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode])
    {
      sub_199B6740C();
      if (v7)
      {
        v9 = *&v7[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
        v8 = *&v7[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
        v11 = *&v7[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
        v10 = *&v7[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
        v12 = v7;
        sub_199B492C4(v9, v8, v11, v10);

        if (v9 != 1)
        {
          if (v8)
          {
            v13 = swift_unknownObjectWeakLoadStrong();
            if (v13)
            {
              [v13 avatarPosterPairCollectionDidSelectEditAvatar_];

              swift_unknownObjectRelease();
              sub_199B49278(v9, v8, v11, v10);
              return;
            }

            sub_199B49278(v9, v8, v11, v10);
            goto LABEL_15;
          }

          sub_199B49278(v9, v8, v11, v10);
        }
      }
    }

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 avatarPosterPairCollectionDidSelectCreateNew];

      swift_unknownObjectRelease();
      return;
    }

LABEL_15:
  }
}

void sub_199B65DF8(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_199B6740C();
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
      v6 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];
      v7 = v4;
      sub_199AA2284(v5);

      if (v5 >= 2)
      {
        if ((v6 & 1) == 0)
        {
LABEL_10:
          sub_199AA2294(v5);
          goto LABEL_12;
        }

        v8 = objc_opt_self();
        v9 = v5;
        v10 = [v9 posterData];
        v11 = sub_199DF71FC();
        v13 = v12;

        v14 = sub_199DF71DC();
        sub_199A9EF34(v11, v13);
        aBlock[0] = 0;
        v15 = [v8 unarchiveCNConfigurationFromData:v14 error:aBlock];

        if (v15)
        {
          v16 = qword_1EAF718E0;
          v17 = aBlock[0];
          if (v16 != -1)
          {
            swift_once();
          }

          v18 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact;
          v19 = *&v3[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact];
          v20 = [v9 &selRef_numberFromString_ + 1];
          v21 = sub_199DF71FC();
          v23 = v22;

          v24 = sub_199B73B70(v21, v23, v19);
          sub_199A9EF34(v21, v23);

          if ((v24 & 1) == 0)
          {
            v28 = *&v3[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration];
            *&v3[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = v15;
            v29 = v15;

            v30 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*&v3[v18] showName:1];
            v31 = [objc_allocWithZone(CNPRUISPosterEditingViewController) initWithExistingConfiguration:v29 context:v30];
            [v31 setDelegate_];
            [v31 setModalPresentationStyle_];
            v32 = swift_allocObject();
            v32[2] = v31;
            aBlock[4] = sub_199B6B05C;
            aBlock[5] = v32;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199AB45A0;
            aBlock[3] = &block_descriptor_71;
            v33 = _Block_copy(aBlock);
            v34 = v31;

            [v3 presentViewController:v34 animated:1 completion:v33];
            _Block_release(v33);

            sub_199AA2294(v5);
            sub_199AA2294(v5);
LABEL_15:

            return;
          }

          sub_199AA2294(v5);
          goto LABEL_10;
        }

        v25 = aBlock[0];
        sub_199AA2294(v5);
        v26 = sub_199DF717C();

        swift_willThrow();
        sub_199AA2294(v5);
      }
    }

LABEL_12:
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      [v27 avatarPosterPairCollectionDidEditPoster_];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_15;
  }
}

void sub_199B66208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_199B6740C();
    if (v4)
    {
      v6 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
      v5 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
      v8 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
      v7 = *&v4[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
      v9 = v4;
      sub_199B492C4(v6, v5, v8, v7);

      if (v6 != 1)
      {
        if (v5)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            [v10 avatarPosterPairCollectionDidSelectEditAvatar_];

            swift_unknownObjectRelease();
            sub_199B49278(v6, v5, v8, v7);
            return;
          }
        }

        sub_199B49278(v6, v5, v8, v7);
      }
    }
  }
}

void sub_199B66310(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 avatarPosterPairCollectionDidSelectCreateNew];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199B66394()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0, &unk_199E3CA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C38, &unk_199E41EE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = sub_199DF9F4C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_199DF6FFC();
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  sub_199B6740C();
  if (v23)
  {
    v24 = v23[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type];

    v25 = v24 == 3;
  }

  else
  {
    v25 = 0;
  }

  sub_199B6740C();
  if (!v26)
  {
    v29 = 1;
    goto LABEL_12;
  }

  v27 = (*&v26[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar] == 1) | *&v26[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  if (*&v26[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster] != 1)
  {
    v28 = *&v26[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];

    if (v27)
    {
      goto LABEL_11;
    }

LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = 1;
LABEL_11:
  v29 = v28 ^ 1;
LABEL_12:
  v30 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  if (!v30)
  {
    __break(1u);
    goto LABEL_37;
  }

  [v30 setHidden_];
  v31 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
  if (!v31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = v4;
  v65 = v29;
  [v31 setHidden_];
  sub_199DF6FEC();
  v74 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_199B054CC();
  v69 = v22;
  sub_199DF700C();
  v70 = v25;
  sub_199DF9EEC();
  sub_199AA8A84(v17, MEMORY[0x1E69E7CC0]);
  v68 = v32;
  (*(v15 + 8))(v17, v14);
  v33 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
  v34 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
  if (!v34)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v35 = v34;
  sub_199DFA60C();
  v36 = sub_199DFA5EC();
  v37 = *(*(v36 - 8) + 48);
  if (v37(v13, 1, v36))
  {
    sub_199AAD408(v13, v73, &qword_1EAF75C38, &unk_199E41EE8);
    sub_199DFA61C();

    sub_199A79A04(v13, &qword_1EAF75C38, &unk_199E41EE8);
  }

  else
  {
    v38 = *(v71 + 16);
    v62 = v1;
    v38(v64, v69, v72);
    sub_199DF81AC();
    v39 = v63;
    sub_199DF6FBC();
    v40 = sub_199DF6FAC();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    sub_199DFA57C();
    v1 = v62;
    sub_199DFA61C();
  }

  v41 = *&v1[v33];
  v42 = v67;
  if (!v41)
  {
    goto LABEL_39;
  }

  v43 = v41;
  sub_199DFA60C();
  if (v37(v42, 1, v36))
  {
    sub_199AAD408(v42, v73, &qword_1EAF75C38, &unk_199E41EE8);
    sub_199DFA61C();

    sub_199A79A04(v42, &qword_1EAF75C38, &unk_199E41EE8);
  }

  else
  {
    v44 = objc_opt_self();
    v45 = &selRef_whiteColor;
    if (!v70)
    {
      v45 = &selRef_labelColor;
    }

    v46 = [v44 *v45];
    sub_199DFA5AC();
    sub_199DFA61C();
  }

  v47 = v66;
  v48 = *&v1[v33];
  if (!v48)
  {
    goto LABEL_40;
  }

  v49 = v48;
  sub_199DFA60C();
  if (v37(v47, 1, v36))
  {
    sub_199AAD408(v47, v73, &qword_1EAF75C38, &unk_199E41EE8);
    sub_199DFA61C();

    sub_199A79A04(v47, &qword_1EAF75C38, &unk_199E41EE8);
    v50 = v70;
  }

  else
  {
    v51 = objc_opt_self();
    v52 = &selRef_tintColor;
    v50 = v70;
    if (!v70)
    {
      v52 = &selRef_secondarySystemBackgroundColor;
    }

    v53 = [v51 *v52];
    sub_199DFA59C();
    sub_199DFA61C();
  }

  v54 = *&v1[v33];
  if (!v54)
  {
    goto LABEL_41;
  }

  [v54 setHidden_];
  v55 = *&v1[v33];
  if (!v55)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v56 = v55;

  v57 = v69;
  if (v50)
  {
    v58 = 0;
  }

  else
  {
    v59 = [v1 traitCollection];
    v60 = [v59 userInterfaceIdiom];

    v58 = v60 == 0;
  }

  [v56 setShowsMenuAsPrimaryAction_];

  (*(v71 + 8))(v57, v72);
}

id sub_199B66B8C@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v42 - v16;
  result = [v4 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = result;
  [result visibleSize];
  v21 = v20;
  v23 = v22;

  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = v21;
  v45.size.height = v23;
  if (CGRectIsEmpty(v45))
  {
    result = [v4 collectionView];
    if (result)
    {
      v24 = result;
      v25 = [result indexPathsForVisibleItems];

      v26 = sub_199DF738C();
      v27 = sub_199DFA0CC();

      if (*(v27 + 16))
      {
        v43 = *(v26 - 8);
        (*(v43 + 16))(a1, v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v26);

        v28 = *(v43 + 56);
        v29 = a1;
        v30 = 0;
      }

      else
      {

        v28 = *(*(v26 - 8) + 56);
        v29 = a1;
        v30 = 1;
      }

      return v28(v29, v30, 1, v26);
    }

    goto LABEL_24;
  }

  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = v21;
  v46.size.height = v23;
  MidX = CGRectGetMidX(v46);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = v21;
  v47.size.height = v23;
  MidY = CGRectGetMidY(v47);
  result = [v4 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = [result indexPathForItemAtPoint_];

  if (v34)
  {
    sub_199DF732C();

    v35 = sub_199DF738C();
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
  }

  else
  {
    v35 = sub_199DF738C();
    (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  }

  sub_199AB7794(v13, v17, &qword_1EAF75C30, &qword_199E41740);
  sub_199AAD408(v17, v10, &qword_1EAF75C30, &qword_199E41740);
  sub_199DF738C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v10, 1, v35) != 1)
  {
    sub_199A79A04(v17, &qword_1EAF75C30, &qword_199E41740);
    (*(v36 + 32))(a1, v10, v35);
    return (*(v36 + 56))(a1, 0, 1, v35);
  }

  result = [v4 collectionView];
  if (!result)
  {
    goto LABEL_26;
  }

  v38 = result;
  v39 = [result indexPathsForVisibleItems];

  v40 = sub_199DFA0CC();
  if (*(v40 + 16))
  {
    (*(v36 + 16))(a1, v40 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v35);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  sub_199A79A04(v17, &qword_1EAF75C30, &qword_199E41740);
  (*(v36 + 56))(a1, v41, 1, v35);
  result = (v37)(v10, 1, v35);
  if (result != 1)
  {
    return sub_199A79A04(v10, &qword_1EAF75C30, &qword_199E41740);
  }

  return result;
}

id sub_199B6713C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v13 = result;
    [result contentOffset];
    v15 = v14;
    v17 = v16;

    sub_199B66B8C(v6, v15, v17);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_199A79A04(v6, &qword_1EAF75C30, &qword_199E41740);
    }

    else
    {
      v18 = *(v8 + 32);
      v18(v11, v6, v7);
      v19 = sub_199DF736C();
      v20 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel];
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = v20;
      sub_199DF841C();

      if (v25 >> 62)
      {
        v22 = sub_199DFA87C();
      }

      else
      {
        v22 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < v22)
      {
        v18(a1, v11, v7);
        v23 = 0;
        return (*(v8 + 56))(a1, v23, 1, v7);
      }

      (*(v8 + 8))(v11, v7);
    }

    v23 = 1;
    return (*(v8 + 56))(a1, v23, 1, v7);
  }

  __break(1u);
  return result;
}

void sub_199B6740C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_199DF738C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_199A79A04(v3, &qword_1EAF75C30, &qword_199E41740);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v9 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x19A8F8520](v9, v12);
    goto LABEL_7;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = *(v12 + 8 * v9 + 32);
LABEL_7:

  (*(v5 + 8))(v7, v4);
}

void sub_199B67650()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v131 - v3;
  v5 = sub_199DF738C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v143.origin.x = v13;
  v143.origin.y = v15;
  v143.size.width = v17;
  v143.size.height = v19;
  Width = CGRectGetWidth(v143);
  v144.origin.x = v13;
  v144.origin.y = v15;
  v144.size.width = v17;
  v144.size.height = v19;
  if (CGRectGetHeight(v144) < Width)
  {
    v145.origin.x = v13;
    v145.origin.y = v15;
    v145.size.width = v17;
    v145.size.height = v19;
    Height = CGRectGetHeight(v145);
    v146.origin.x = v13;
    v146.origin.y = v15;
    v146.size.width = v17;
    v146.size.height = v19;
    v19 = CGRectGetWidth(v146);
    v17 = Height;
  }

  v22 = [v1 traitCollection];
  [v22 displayScale];
  v24 = v23;

  v25 = [v1 collectionViewLayout];
  v26 = [v1 collectionView];
  if (!v26)
  {
    goto LABEL_46;
  }

  v27 = v26;
  [v26 contentOffset];
  v29 = v28;
  v31 = v30;

  sub_199B66B8C(v4, v29, v31);
  v32 = *(v6 + 48);
  if (v32(v4, 1, v5) == 1)
  {
    MEMORY[0x19A8F5130](0, 0);
    if (v32(v4, 1, v5) != 1)
    {
      sub_199A79A04(v4, &qword_1EAF75C30, &qword_199E41740);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  v141 = v17;
  v142 = v19;
  v33 = sub_199DF730C();
  (*(v6 + 8))(v9, v5);
  v34 = [v25 layoutAttributesForItemAtIndexPath_];

  v140 = v15;
  if (v34)
  {
    [v34 frame];
    v36 = v35;
    v38 = v37;
    MaxX = v39;
    v41 = v40;
  }

  else
  {
    v36 = 0.0;
    v38 = 0.0;
    MaxX = 0.0;
    v41 = 0.0;
  }

  v42 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  v43 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
  if (!v43)
  {
    goto LABEL_47;
  }

  v44 = v13;
  v137 = v24;
  [v43 sizeForNumberOfPages_];
  v46 = v45;
  v48 = v47;
  v147.origin.x = v36;
  v147.origin.y = v38;
  v49 = MaxX;
  v147.size.width = MaxX;
  v147.size.height = v41;
  MinX = CGRectGetMinX(v147);
  v148.origin.x = v36;
  v148.origin.y = v38;
  v148.size.width = v49;
  v148.size.height = v41;
  MaxY = CGRectGetMaxY(v148);
  v149.origin.x = v36;
  v149.origin.y = v38;
  v149.size.width = v49;
  v149.size.height = v41;
  v50 = CGRectGetWidth(v149);
  v138 = v44;
  v150.origin.x = v44;
  v150.origin.y = v140;
  v150.size.width = v141;
  v150.size.height = v142;
  v51 = CGRectGetHeight(v150);
  v151.origin.x = v36;
  v151.origin.y = v38;
  v151.size.width = v49;
  MinY = v41;
  v151.size.height = v41;
  v52 = CGRectGetMaxY(v151);
  v53 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton;
  v54 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton];
  if (!v54)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v134 = v38;
  v135 = v36;
  v55 = v51 - v52 - (v48 + v48) + -8.0;
  [v54 sizeThatFits_];
  v56 = [v1 traitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 == 1)
  {
    v58 = v140;
    v59 = v141;
    v60 = v138;
    v61 = v142;
  }

  else
  {
    v60 = v138;
    v152.origin.x = v138;
    v58 = v140;
    v59 = v141;
    v152.origin.y = v140;
    v152.size.width = v141;
    v61 = v142;
    v152.size.height = v142;
    CGRectGetWidth(v152);
    v153.origin.y = MaxY;
    v153.origin.x = MinX;
    v153.size.width = v50;
    v153.size.height = v55;
    CGRectGetHeight(v153);
  }

  BSSizeCeilForScale();
  MaxY = v62;
  v64 = v63;
  v154.origin.x = v60;
  v154.origin.y = v58;
  v154.size.width = v59;
  v154.size.height = v61;
  MinX = CGRectGetMidX(v154);
  v155.origin.x = v60;
  v155.origin.y = v58;
  v155.size.width = v59;
  v155.size.height = v61;
  CGRectGetMaxY(v155);
  v156.origin.x = v60;
  v156.origin.y = v58;
  v156.size.width = v59;
  v156.size.height = v61;
  CGRectGetMaxY(v156);
  v66 = v134;
  v65 = v135;
  v157.origin.x = v135;
  v157.origin.y = v134;
  v67 = MaxX;
  v157.size.width = MaxX;
  v68 = MinY;
  v157.size.height = MinY;
  CGRectGetMaxY(v157);
  v69 = *&v1[v53];
  if (!v69)
  {
    goto LABEL_49;
  }

  v70 = v69;
  MaxY = v64;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v70 setFrame_];

  v158.origin.x = v65;
  v158.origin.y = v66;
  v158.size.width = v67;
  v158.size.height = v68;
  CGRectGetMaxY(v158);
  v71 = *&v1[v53];
  if (!v71)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v71 frame];
  CGRectGetMinY(v159);
  v72 = v138;
  v160.origin.x = v138;
  v73 = v140;
  v160.size.width = v141;
  v160.origin.y = v140;
  v160.size.height = v142;
  CGRectGetMidX(v160);
  v74 = *&v1[v42];
  if (!v74)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v75 = v74;
  BSRectWithSize();
  UIRectCenteredAboutPointScale();
  [v75 setFrame_];

  v76 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton;
  v77 = *&v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton];
  if (!v77)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v78 = v77;
  BSSizeCeilForScale();
  BSRectWithSize();
  [v78 setBounds_];

  v79 = *&v1[v53];
  if (!v79)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v79 frame];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = [v1 view];
  if (!v88)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v89 = v88;
  v90 = [v88 effectiveUserInterfaceLayoutDirection];

  if (v90)
  {
    v161.origin.x = v72;
    v161.origin.y = v73;
    v92 = v141;
    v91 = v142;
    v161.size.width = v141;
    v161.size.height = v142;
    MaxX = CGRectGetMinX(v161);
    v162.origin.x = v81;
    v162.origin.y = v83;
    v162.size.width = v85;
    v162.size.height = v87;
    MinY = CGRectGetMinY(v162);
    v163.origin.x = v81;
    v163.origin.y = v83;
    v163.size.width = v85;
    v163.size.height = v87;
    v93 = CGRectGetMinX(v163);
    v164.origin.x = v72;
    v164.origin.y = v140;
    v164.size.width = v92;
    v164.size.height = v91;
    v94 = CGRectGetMinX(v164);
  }

  else
  {
    v165.origin.x = v81;
    v165.origin.y = v83;
    v165.size.width = v85;
    v165.size.height = v87;
    MaxX = CGRectGetMaxX(v165);
    v166.origin.x = v81;
    v166.origin.y = v83;
    v166.size.width = v85;
    v166.size.height = v87;
    MinY = CGRectGetMinY(v166);
    v167.origin.x = v72;
    v167.origin.y = v73;
    v167.size.width = v141;
    v167.size.height = v142;
    v93 = CGRectGetMaxX(v167);
    v168.origin.x = v81;
    v168.origin.y = v83;
    v168.size.width = v85;
    v168.size.height = v87;
    v94 = CGRectGetMaxX(v168);
  }

  v95 = v93 - v94;
  v169.origin.x = v81;
  v169.origin.y = v83;
  v169.size.width = v85;
  v169.size.height = v87;
  v96 = CGRectGetHeight(v169);
  v97 = [v1 view];
  if (!v97)
  {
    goto LABEL_55;
  }

  v98 = v97;
  v99 = [v97 effectiveUserInterfaceLayoutDirection];

  v100 = MaxX;
  v101 = MinY;
  v102 = v95;
  v103 = v96;
  if (v99)
  {
    v104 = CGRectGetMinX(*&v100);
    v105 = *&v1[v76];
    if (!v105)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v106 = v104;
    [v105 frame];
    v107 = CGRectGetWidth(v170);
    v108 = *&v1[v76];
    if (!v108)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    MidX = v106 + v107 * 1.5;
    [v108 frame];
    v110 = (MidX + CGRectGetWidth(v171)) * 0.5;
    v172.origin.x = v81;
    v172.origin.y = v83;
    v172.size.width = v85;
    v172.size.height = v87;
    v111 = v110 < CGRectGetMinX(v172);
    goto LABEL_34;
  }

  v112 = CGRectGetMaxX(*&v100);
  v113 = *&v1[v76];
  if (!v113)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v114 = v112;
  [v113 frame];
  v115 = CGRectGetWidth(v173);
  v116 = *&v1[v76];
  if (v116)
  {
    MidX = v114 + v115 * -1.5;
    [v116 frame];
    v117 = (MidX - CGRectGetWidth(v174)) * 0.5;
    v175.origin.x = v81;
    v175.origin.y = v83;
    v175.size.width = v85;
    v175.size.height = v87;
    v111 = CGRectGetMaxX(v175) < v117;
LABEL_34:
    v118 = v111;
    v119 = [v1 traitCollection];
    v120 = [v119 userInterfaceIdiom];

    v121 = *&v1[v76];
    v122 = MaxX;
    v123 = MinY;
    if (v120 == 1 && v118)
    {
      if (!v121)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v124 = v121;
    }

    else
    {
      if (!v121)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v124 = v121;
      v176.origin.x = v122;
      v176.origin.y = v123;
      v176.size.width = v95;
      v176.size.height = v96;
      MidX = CGRectGetMidX(v176);
    }

    v177.origin.x = v122;
    v177.origin.y = v123;
    v177.size.width = v95;
    v177.size.height = v96;
    [v124 setCenter_];

    v125 = *&v1[v76];
    if (v125)
    {
      v126 = v125;
      [v126 frame];
      BSPointRoundForScale();
      v128 = v127;
      v130 = v129;
      [v126 frame];
      [v126 setFrame_];

      return;
    }

    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
}

void sub_199B68098(void *a1)
{
  v2 = v1;
  v4 = sub_199DF738C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 currentPage];
  v10 = [v2 collectionView];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  MEMORY[0x19A8F5130](v9, 0);
  v12 = sub_199DF730C();
  (*(v5 + 8))(v8, v4);
  v13 = [v11 layoutAttributesForItemAtIndexPath_];

  if (!v13)
  {
    return;
  }

  [v13 frame];
  MinX = CGRectGetMinX(v31);
  v15 = MinX;
  if (MinX != 0.0)
  {
    v16 = MinX;
    v17 = *&v2[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
    v18 = *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
    v19 = v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
    v20 = *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
    v21 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
    swift_beginAccess();
    v22 = *(v17 + v21);
    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v24 = v16;
      if (v23)
      {
        v15 = 0.0;
        while (1)
        {
          v25 = v23 == 1 ? *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
          v26 = v15 + v18 + v25;
          if (v24 < v26 && v26 < v20)
          {
            break;
          }

          v15 = v26;
          if (!--v23)
          {
            goto LABEL_16;
          }
        }

        v20 = v26;
      }

      else
      {
LABEL_16:
        v15 = 0.0;
      }

      if (vabdd_f64(v15, v24) >= vabdd_f64(v20, v24))
      {
        if (*(v19 + 16) - v18 >= v20)
        {
          v15 = v20;
        }

        else
        {
          v15 = *(v19 + 16) - v18;
        }
      }

      goto LABEL_22;
    }

    v23 = sub_199DFA87C();
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v28 = [v2 collectionView];
  if (!v28)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setContentOffset:1 animated:{v15, 0.0}];
}

id sub_199B683B0(id a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v14 - v7;
  if (a2)
  {
    sub_199B6713C(&v14 - v7);
    v10 = sub_199DF738C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_199A79A04(v9, &qword_1EAF75C30, &qword_199E41740);
    }

    a1 = sub_199DF736C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result currentPage];
  if (result == a1)
  {
    return result;
  }

  result = *(v3 + v13);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setCurrentPage_];
}

void sub_199B68528(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_199DF738C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 collectionView];
  if (!v13)
  {
    goto LABEL_41;
  }

  v14 = v13;
  MEMORY[0x19A8F5130](a1, 0);
  v15 = sub_199DF730C();
  (*(v9 + 8))(v12, v8);
  v16 = [v14 layoutAttributesForItemAtIndexPath_];

  if (!v16)
  {
    return;
  }

  [v16 frame];
  MinX = CGRectGetMinX(v45);
  v18 = MinX;
  if (MinX != 0.0)
  {
    v19 = MinX;
    v20 = *&v4[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
    v21 = *(v20 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
    v22 = v20 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
    v23 = *(v20 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
    v24 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
    swift_beginAccess();
    v25 = *(v20 + v24);
    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v27 = v19;
      if (v26)
      {
        v18 = 0.0;
        while (1)
        {
          v28 = v26 == 1 ? *(v20 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v20 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
          v29 = v18 + v21 + v28;
          if (v27 < v29 && v29 < v23)
          {
            break;
          }

          v18 = v29;
          if (!--v26)
          {
            goto LABEL_16;
          }
        }

        v23 = v29;
      }

      else
      {
LABEL_16:
        v18 = 0.0;
      }

      if (vabdd_f64(v18, v27) >= vabdd_f64(v23, v27))
      {
        if (*(v22 + 16) - v21 >= v23)
        {
          v18 = v23;
        }

        else
        {
          v18 = *(v22 + 16) - v21;
        }
      }

      goto LABEL_22;
    }

    v26 = sub_199DFA87C();
    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_22:
  v31 = [v4 collectionView];
  v32 = v31;
  if (a2 & 1) != 0 && (a3)
  {
    if (v31)
    {
      [v31 _setContentOffsetWithDecelerationAnimation_];

      return;
    }

    goto LABEL_43;
  }

  if (!v31)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  [v31 setContentOffset:a2 & 1 animated:{v18, 0.0}];

  if (a2)
  {
    goto LABEL_37;
  }

  sub_199B683B0(0, 1);
  sub_199B6740C();
  if (!v33)
  {
    goto LABEL_37;
  }

  v34 = v33;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_37:
    return;
  }

  v36 = Strong;
  v37 = sub_199B691B8();
  sub_199B6740C();
  if (v38 && (v39 = v38[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type], v38, v39 == 3) || (sub_199B6740C(), !v40) || (v41 = *&v40[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster], v42 = v40, sub_199AA2284(v41), v42, v41 == 1))
  {
    v41 = 0;
  }

  sub_199B69270();
  [v36 avatarPosterPairCollectionDidSelectAvatar:v37 poster:v41 selectionDidChange:v43 & 1 isShared:v34[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 1];

  swift_unknownObjectRelease();
}

void sub_199B6890C()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  if (!CGRectEqualToRect(v30, v31))
  {
    v11 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = [v0 collectionView];
    v15 = v14;
    if (v13)
    {
      if (!v14)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      [v14 reloadData];

      sub_199B68528(0, 0, 0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      if (!v14)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v18;
      *(v17 + 24) = v12;
      v19 = swift_allocObject();
      v16 = sub_199B6B02C;
      *(v19 + 16) = sub_199B6B02C;
      *(v19 + 24) = v17;
      aBlock[4] = sub_199B12788;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199B630A0;
      aBlock[3] = &block_descriptor_16;
      v20 = _Block_copy(aBlock);

      [v15 performBatchUpdates:v20 completion:0];
      _Block_release(v20);
    }

    sub_199B683B0(0, 1);
    v21 = [v0 collectionView];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 numberOfItemsInSection_];

      v24 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
      v25 = *&v0[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl];
      if (v25)
      {
        if ([v25 numberOfPages] == v23)
        {
LABEL_16:
          sub_199B66394();
          sub_199A9A5FC(v16, v17);
          return;
        }

        v26 = *&v0[v24];
        if (v26)
        {
          [v26 setNumberOfPages_];
          sub_199B683B0(0, 1);
          goto LABEL_16;
        }

LABEL_22:
        __break(1u);
        return;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_199DFA31C();
  v27 = CNUILogPosters();
  sub_199DF7FEC();
}

void sub_199B68C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_199DF72FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout);
    sub_199DF72EC();
    sub_199B5A9EC();

    (*(v4 + 8))(v6, v3);
    v10 = [v8 collectionView];
    if (v10)
    {
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722D8, &qword_199E38C20);
      sub_199DF738C();
      *(swift_allocObject() + 16) = xmmword_199E37D40;
      MEMORY[0x19A8F5130](a2, 0);
      v12 = sub_199DFA0BC();

      [v11 deleteItemsAtIndexPaths_];

      v13 = *&v8[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex;
      *v13 = 0;
      *(v13 + 8) = 1;
      sub_199B68EA0();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_199B68EA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_199DF738C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_199A79A04(v3, &qword_1EAF75C30, &qword_199E41740);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v9 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v22 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v22 + 8 * v9 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x19A8F8520](v9, v22);
LABEL_7:
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_199B691B8();
    sub_199B6740C();
    if (v15 && (v16 = v15[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type], v15, v16 == 3) || (sub_199B6740C(), !v17) || (v18 = *&v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster], v19 = v17, sub_199AA2284(v18), v19, v18 == 1))
    {
      v18 = 0;
    }

    sub_199B69270();
    [v13 avatarPosterPairCollectionDidSelectAvatar:v14 poster:v18 selectionDidChange:v20 & 1 isShared:v11[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 1];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_199B691B8()
{
  sub_199B6740C();
  if (v0)
  {
    v1 = v0[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type];

    if (v1 == 3)
    {
      return 0;
    }
  }

  sub_199B6740C();
  if (!v2)
  {
    return 0;
  }

  v3 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  v4 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  v5 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 16];
  v6 = *&v2[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 24];
  v7 = v2;
  sub_199B492C4(v3, v4, v5, v6);

  if (v3 == 1)
  {
    return 0;
  }

  v8 = v3;
  sub_199B49278(v3, v4, v5, v6);
  return v3;
}

void sub_199B69270()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_199DF738C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_199A79A04(v4, &qword_1EAF75C30, &qword_199E41740);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel;
  v10 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  v11 = sub_199DF736C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x19A8F8520](v11, v16);
LABEL_7:
    v11 = v12;

    (*(v6 + 8))(v8, v5);
    v13 = *(v1 + v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_199DF841C();

    if (!(v16 >> 62))
    {
LABEL_8:

      return;
    }

LABEL_11:
    sub_199DFA87C();
    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v16 + 8 * v11 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_199B695AC(void *a1)
{
  v2 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling;
  if ((v1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] & 1) == 0)
  {
    v3 = [a1 _isAnimatingScroll];
    v4 = v1[v2];
    v1[v2] = v3;
    if ((v3 & 1) == 0)
    {
      if (v4)
      {
        sub_199B683B0(0, 1);
      }
    }
  }

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 visibleCells];

    sub_199A7A02C(0, &unk_1EAF75C90, 0x1E69DC7F8);
    v8 = sub_199DFA0CC();

    if (v8 >> 62)
    {
LABEL_24:
      v9 = sub_199DFA87C();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        v10 = 0;
        v11 = &qword_1EAF73000;
        v12 = &selRef_containers;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x19A8F8520](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v13 = *(v8 + 8 * v10 + 32);
          }

          v14 = v13;
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          type metadata accessor for CNAvatarPosterPairCollectionViewCell();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {
            goto LABEL_9;
          }

          v17 = v16;
          v18 = *(v16 + v11[367]);
          if (!v18)
          {
            __break(1u);
            goto LABEL_27;
          }

          [v18 v12[29]];
          if (v20 == 0.0 && v19 == 0.0)
          {
LABEL_9:
          }

          else
          {
            v21 = v11;
            v22 = objc_opt_self();
            v23 = swift_allocObject();
            *(v23 + 16) = v17;
            aBlock[4] = sub_199B6B6EC;
            aBlock[5] = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_199AB45A0;
            aBlock[3] = &block_descriptor_101;
            v24 = _Block_copy(aBlock);
            v25 = v14;

            v26 = v22;
            v11 = v21;
            v12 = &selRef_containers;
            [v26 animateWithDuration:v24 animations:0.3];

            _Block_release(v24);
          }

          ++v10;
        }

        while (v15 != v9);
      }
    }

    sub_199B66394();
    sub_199B68EA0();
  }

  else
  {
LABEL_27:
    __break(1u);
  }
}

unint64_t sub_199B69A04()
{
  v1 = v0;
  v2 = sub_199DF738C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_199B4B6FC(MEMORY[0x1E69E7CC0]);
  v6 = &selRef_cnui_footnoteFontDescriptor;
  v7 = [v0 collectionView];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [v7 indexPathsForVisibleItems];

  v10 = sub_199DFA0CC();
  v51 = *(v10 + 16);
  if (!v51)
  {
LABEL_29:

    return v48;
  }

  v11 = 0;
  v49 = (v3 + 8);
  v50 = v3 + 16;
  v46 = v10;
  v47 = v5;
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
    v12 = [v1 v6[27]];
    if (!v12)
    {
      goto LABEL_33;
    }

    v13 = v12;
    v14 = sub_199DF730C();
    v15 = [v13 cellForItemAtIndexPath_];

    if (!v15)
    {
      goto LABEL_5;
    }

    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {

LABEL_5:
      (*v49)(v5, v2);
      goto LABEL_6;
    }

    v17 = v16;
    v18 = sub_199DF736C();
    v19 = OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView;
    v20 = *(v17 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_scrollView);
    if (!v20)
    {
      goto LABEL_34;
    }

    [v20 bounds];
    v22 = v21 * *(v17 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_maximumVerticalRevealFraction);
    v23 = 0.0;
    if (v22 > 0.0)
    {
      v24 = *(v17 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }

      [v24 contentOffset];
      v26 = v25 / v22;
      if (v25 / v22 <= 0.0)
      {
        v26 = 0.0;
      }

      v23 = 1.0;
      if (v26 <= 1.0)
      {
        v23 = v26;
      }
    }

    v27 = v3;
    v28 = v2;
    v29 = v1;
    v30 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v30;
    v33 = sub_199B4AB20(v18);
    v34 = *(v30 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_31;
    }

    v37 = v32;
    if (*(v30 + 24) >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_199B75AF8();
      }
    }

    else
    {
      sub_199B74F8C(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_199B4AB20(v18);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v33 = v38;
    }

    v40 = v52;
    v48 = v52;
    if (v37)
    {
      *(v52[7] + 8 * v33) = v23;

      v5 = v47;
      v2 = v28;
      (*v49)(v47, v28);
    }

    else
    {
      v52[(v33 >> 6) + 8] |= 1 << v33;
      *(v40[6] + 8 * v33) = v18;
      *(v40[7] + 8 * v33) = v23;

      v5 = v47;
      v2 = v28;
      (*v49)(v47, v28);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_32;
      }

      v40[2] = v43;
    }

    v1 = v29;
    v3 = v27;
    v6 = &selRef_cnui_footnoteFontDescriptor;
    v10 = v46;
LABEL_6:
    if (v51 == ++v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

void sub_199B69E34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_199DF738C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6713C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_199A79A04(v4, &qword_1EAF75C30, &qword_199E41740);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = [v0 collectionView];
    if (!v9)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = sub_199DF730C();
    v12 = [v10 cellForItemAtIndexPath_];

    if (v12)
    {
      type metadata accessor for CNAvatarPosterPairCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        *(v13 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow) = 0;
        sub_199AF074C();
      }
    }

    (*(v6 + 8))(v8, v5);
  }

  v14 = [v1 collectionView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_199DF730C();
  v17 = [v15 cellForItemAtIndexPath_];

  if (v17)
  {
    type metadata accessor for CNAvatarPosterPairCollectionViewCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      *(v18 + OBJC_IVAR____TtC10ContactsUI36CNAvatarPosterPairCollectionViewCell_showShadow) = 1;
      sub_199AF074C();
    }
  }
}

void sub_199B6A140(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v2;
}

uint64_t sub_199B6A1C0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B6A238(uint64_t a1)
{
  v2 = sub_199DF77BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA8, &qword_199E41F08);
    v9 = sub_199DFA6FC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_199B6B664(&unk_1EAF714A0, MEMORY[0x1E6996958]);
      v16 = sub_199DF9EBC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_199B6B664(&qword_1EAF71498, MEMORY[0x1E6996960]);
          v23 = sub_199DF9EDC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_199B6A530(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_199DFA87C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75C80, &qword_199E41EF8);
      v3 = sub_199DFA6FC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_199DFA87C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x19A8F8520](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_199DFA4DC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_199A7A02C(0, &qword_1EAF75C70, 0x1E696AD98);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_199DFA4EC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_199DFA4DC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_199A7A02C(0, &qword_1EAF75C70, 0x1E696AD98);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_199DFA4EC();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_199B6A820(void *a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_199DF738C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v8 = [v2 collectionView];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 indexPathsForVisibleItems];

    v11 = sub_199DFA0CC();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v23 = v4 + 16;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        (*(v4 + 16))(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
        v14 = [v24 collectionView];
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = v14;
        v16 = sub_199DF730C();
        v17 = [v15 cellForItemAtIndexPath_];

        (*(v4 + 8))(v7, v3);
        if (v17)
        {

          if (v17 == v22)
          {
            break;
          }
        }

        if (v12 == ++v13)
        {
          goto LABEL_11;
        }
      }

      v18 = *&v24[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout];
      v19 = [v18 _invalidationContextForRefreshingVisibleElementAttributes];
      if (!v19)
      {
        goto LABEL_16;
      }

      v20 = v19;
      [v18 invalidateLayoutWithContext_];
    }

    else
    {
LABEL_11:
    }
  }

  else
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

id sub_199B6AA90(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = &unk_1F0DF2790;
  swift_unknownObjectRetain();
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
  }

  v40 = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v9 = objc_allocWithZone(v40);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration] = 0;
  v10 = &v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason];
  *v10 = 0;
  v10[1] = 0;
  v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators] = 5;
  v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_configuration] = a1;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contact] = a2;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_contactForSharedProfile] = a3;
  v11 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode;
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode] = a4;
  swift_unknownObjectWeakAssign();
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v39 = v12;
  v15 = v13;
  v16 = v14;
  v17 = [MEMORY[0x1E69DC938] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = (v18 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  v20 = [objc_opt_self() mainThreadScheduler];
  v21 = type metadata accessor for CNAvatarPosterPairCollectionViewModel(0);
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
  *v23 = 0;
  v23[8] = 1;
  v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 0;
  *&v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel____lazy_storage___pairDeduper] = 0;
  *&v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact] = v15;
  *&v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile] = v16;
  *&v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode] = v19;
  v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode] = 1;
  *&v22[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue] = v20;
  swift_beginAccess();
  v46 = MEMORY[0x1E69E7CC0];
  v24 = v15;
  v25 = v16;
  v26 = v24;
  v27 = v25;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0, &qword_199E41F00);
  sub_199DF83FC();
  swift_endAccess();
  v45.receiver = v22;
  v45.super_class = v21;
  v28 = objc_msgSendSuper2(&v45, sel_init);
  v29 = *&v28[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  aBlock[4] = sub_199B6B6FC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_139;
  v31 = _Block_copy(aBlock);
  v32 = v28;
  swift_unknownObjectRetain();

  [v29 performBlock_];
  _Block_release(v31);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel] = v32;
  v33 = *&v9[v11];
  v34 = objc_allocWithZone(type metadata accessor for CNAvatarPosterPairCollectionViewLayout(0));
  v35 = sub_199B5A864(v33);
  *&v9[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout] = v35;
  v43.receiver = v9;
  v43.super_class = v40;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v43, sel_initWithCollectionViewLayout_, v36);

  swift_unknownObjectRelease();
  *&v41[OBJC_IVAR____TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper_viewController] = v37;
  v42.receiver = v41;
  v42.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewControllerWrapper();
  return objc_msgSendSuper2(&v42, sel_init);
}

void sub_199B6B088()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_centeredPosterButton) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_addPosterButton) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_lastPosterConfiguration) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_activePosterSnapshotKeepActiveAssertionReason);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_needsReload) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControlPreferredNumberOfVisibleIndicators) = 5;
  *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling) = 0;
  sub_199DFA85C();
  __break(1u);
}

void sub_199B6B178()
{
  sub_199B6740C();
  if (!v1)
  {
    goto LABEL_9;
  }

  if (v1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 3)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_mode);
  if (v2 != 1)
  {
    if (!v2)
    {
      v3 = &OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    [Strong avatarPosterPairCollectionDidSelectCreateNew];
    goto LABEL_11;
  }

  v3 = &OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
LABEL_7:
  if (*&v1[*v3] == 1)
  {
    goto LABEL_8;
  }

  v8 = v1;
  v5 = v1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sel_avatarPosterPairCollectionDidTapDismiss;
LABEL_20:
      [v6 v7];

LABEL_11:

      swift_unknownObjectRelease();
      return;
    }
  }

  else if (v6)
  {
    v7 = sel_avatarPosterPairCollectionDidConfirmSelection;
    goto LABEL_20;
  }
}

uint64_t sub_199B6B2C4(double *a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75C30, &qword_199E41740);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_199DF738C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  if (*a1 == 0.0)
  {
    v15 = *a1;
    goto LABEL_23;
  }

  v16 = a1[1];
  v17 = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_layout);
  v18 = *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemSize);
  v19 = v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds;
  v20 = *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds + 16);
  v21 = OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v22 = *(v17 + v21);
  if (v22 >> 62)
  {
    result = sub_199DFA87C();
    if (result < 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v16;
  if (result)
  {
    v15 = 0.0;
    while (1)
    {
      v24 = result == 1 ? *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing) * 0.5 : *(v17 + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_minimumInterimSpacing);
      v25 = v15 + v18 + v24;
      if (v14 < v25 && v25 < v20)
      {
        break;
      }

      v15 = v25;
      if (!--result)
      {
        goto LABEL_15;
      }
    }

    v20 = v25;
  }

  else
  {
LABEL_15:
    v15 = 0.0;
  }

  if (fabs(a2) >= 0.05)
  {
    if (a2 < 0.0)
    {
      goto LABEL_23;
    }
  }

  else if (vabdd_f64(v15, v14) < vabdd_f64(v20, v14))
  {
    goto LABEL_23;
  }

  v15 = *(v19 + 16) - v18;
  if (v15 >= v20)
  {
    v15 = v20;
  }

LABEL_23:
  *a1 = v15;
  a1[1] = v13;
  sub_199B66B8C(v8, v15, v13);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_199A79A04(v8, &qword_1EAF75C30, &qword_199E41740);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_199B69E34();
  v27 = sub_199DF736C();
  v28 = OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_pageControl);
  if (!result)
  {
    goto LABEL_32;
  }

  if ([result currentPage] == v27)
  {
    return (*(v10 + 8))(v12, v9);
  }

  result = *(v3 + v28);
  if (result)
  {
    [result setCurrentPage_];
    return (*(v10 + 8))(v12, v9);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_199B6B608(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_199A7A02C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199B6B664(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_199DF77BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199B6B72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_199B6B774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B6B7F4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_199DF9B5C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CB0, &qword_199E41FF0);
  sub_199B6B978(a1, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CB8, &qword_199E41FF8) + 36);
  v7 = *(sub_199DF896C() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_199DF8D1C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #10.0 }

  *v6 = _Q0;
  v15 = [objc_opt_self() systemGray6Color];
  v16 = sub_199DF969C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CC0, &qword_199E42000);
  *&v6[*(v17 + 52)] = v16;
  *&v6[*(v17 + 56)] = 256;
  v18 = sub_199DF9B5C();
  v20 = v19;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CC8, &qword_199E42008) + 36)];
  *v21 = v18;
  v21[1] = v20;
  v22 = sub_199DF96DC();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CD0, &qword_199E42040);
  v25 = (a2 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = v22;
  return result;
}

uint64_t sub_199B6B978@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CD8, &qword_199E42048);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CE0, &qword_199E42050);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - v11;
  *v12 = sub_199DF8D4C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CE8, &qword_199E42058);
  sub_199B6BEFC(a1, &v12[*(v13 + 44)]);
  LOBYTE(a1) = sub_199DF917C();
  sub_199DF84FC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CF0, &unk_199E42060) + 36)];
  *v22 = a1;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(a1) = sub_199DF918C();
  sub_199DF84FC();
  v23 = &v12[*(v10 + 44)];
  *v23 = a1;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  v29 = sub_199DF919C();
  *(inited + 32) = v29;
  v30 = sub_199DF91BC();
  *(inited + 33) = v30;
  v31 = sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v29)
  {
    v31 = sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v30)
  {
    v31 = sub_199DF91AC();
  }

  sub_199DF84FC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_199AB7794(v12, v8, &qword_1EAF75CE0, &qword_199E42050);
  v40 = &v8[*(v3 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_199AB7794(v8, v5, &qword_1EAF75CD8, &qword_199E42048);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CF8, &qword_199E42070);
  v62 = &v60;
  v42 = *(v41 - 8);
  v43 = v42[8];
  MEMORY[0x1EEE9AC00](v41);
  v44 = sub_199DF99DC();
  v61 = &v60;
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF99CC();
  sub_199DF919C();
  v60 = v5;
  sub_199B6DE48(v48);
  sub_199DF94AC();
  v49 = (*(v45 + 8))(v47, v44);
  v61 = &v60;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_199AAD408(v5, v51, &qword_1EAF75CD8, &qword_199E42048);
  v63 = &v60;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v54 = &v60 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v42[2];
  v55(v54, v54, v41, v53);
  v56 = v64;
  sub_199AAD408(v51, v64, &qword_1EAF75CD8, &qword_199E42048);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D00, &qword_199E42078);
  (v55)(v56 + *(v57 + 48), v54, v41);
  v58 = v42[1];
  v58(v54, v41);
  sub_199A79A04(v60, &qword_1EAF75CD8, &qword_199E42048);
  v58(v54, v41);
  return sub_199A79A04(v51, &qword_1EAF75CD8, &qword_199E42048);
}

uint64_t sub_199B6BEFC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  if (*a1)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D10, &qword_199E42088);
    v65 = *(v63 - 1);
    v2 = v65;
    v3 = *(v65 + 64);
    MEMORY[0x1EEE9AC00](v63);
    v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v4;
    sub_199B6C790(v4);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D08, &qword_199E42080);
    v62 = &v53;
    v5 = *(v64 - 8);
    v6 = v5[8];
    MEMORY[0x1EEE9AC00](v64);
    v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199B6CBC8();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D30, &qword_199E420A8);
    v61 = &v53;
    MEMORY[0x1EEE9AC00](v59);
    v8 = &v53 - v7;
    v60 = &v53;
    v10 = MEMORY[0x1EEE9AC00](v9);
    v11 = v4;
    v12 = *(v2 + 16);
    v13 = v4;
    v14 = v63;
    v15 = v12(v11, v13, v63, v10);
    v58 = &v53;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v17 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v5[2];
    v19 = v64;
    v18(v17, v17, v64, v16);
    (v12)(v8, v11, v14);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D38, &qword_199E420B0);
    (v18)(&v8[*(v20 + 48)], v17, v19);
    v21 = v5[1];
    v54 = (v5 + 1);
    v55 = v21;
    v21(v17, v19);
    v22 = *(v65 + 8);
    v65 += 8;
    v22(v11, v14);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D28, &qword_199E420A0);
    v53 = &v53;
    MEMORY[0x1EEE9AC00](v23);
    sub_199AAD408(v8, &v53 - v24, &qword_1EAF75D30, &qword_199E420A8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D18, &qword_199E42090);
    v25 = MEMORY[0x1E6981F48];
    sub_199AA0B90(&qword_1EAF71148, &qword_1EAF75D30, &qword_199E420A8, MEMORY[0x1E6981F48]);
    sub_199AA0B90(&qword_1EAF71150, &qword_1EAF75D18, &qword_199E42090, v25);
    sub_199DF8EDC();
    sub_199A79A04(v8, &qword_1EAF75D30, &qword_199E420A8);
    v55(v56, v64);
    return (v22)(v57, v63);
  }

  else
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D08, &qword_199E42080);
    v65 = *(v54 - 8);
    v27 = v65;
    v28 = *(v65 + 64);
    MEMORY[0x1EEE9AC00](v54);
    v58 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199B6CBC8();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D10, &qword_199E42088);
    v63 = &v53;
    v64 = v29;
    v30 = *(v29 - 8);
    v31 = v30[8];
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v32;
    sub_199B6C790(v32);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D18, &qword_199E42090);
    v62 = &v53;
    MEMORY[0x1EEE9AC00](v60);
    v34 = &v53 - v33;
    v61 = &v53;
    v36 = MEMORY[0x1EEE9AC00](v35);
    v37 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = *(v27 + 16);
    v39 = v54;
    v40 = v38(v37, v37, v54, v36);
    v59 = &v53;
    v41 = MEMORY[0x1EEE9AC00](v40);
    v42 = v32;
    v43 = v30[2];
    v44 = v32;
    v45 = v64;
    v43(v42, v44, v64, v41);
    (v38)(v34, v37, v39);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D20, &qword_199E42098);
    (v43)(&v34[*(v46 + 48)], v42, v45);
    v47 = v30[1];
    v55 = (v30 + 1);
    v56 = v47;
    (v47)(v42, v45);
    v48 = *(v65 + 8);
    v65 += 8;
    v49 = v39;
    v48(v37, v39);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D28, &qword_199E420A0);
    v53 = &v53;
    MEMORY[0x1EEE9AC00](v50);
    sub_199AAD408(v34, &v53 - v51, &qword_1EAF75D18, &qword_199E42090);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D30, &qword_199E420A8);
    v52 = MEMORY[0x1E6981F48];
    sub_199AA0B90(&qword_1EAF71148, &qword_1EAF75D30, &qword_199E420A8, MEMORY[0x1E6981F48]);
    sub_199AA0B90(&qword_1EAF71150, &qword_1EAF75D18, &qword_199E42090, v52);
    sub_199DF8EDC();
    sub_199A79A04(v34, &qword_1EAF75D18, &qword_199E42090);
    (v56)(v57, v64);
    return (v48)(v58, v49);
  }
}

uint64_t sub_199B6C790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40[1] = a1;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D40, &qword_199E420B8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  sub_199DF9EEC();
  v10 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  v13 = *(v2 + 24);
  v41[0] = *(v2 + 8);
  v41[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48, &qword_199E420C0);
  sub_199DF999C();
  *&v41[0] = v10;
  *(&v41[0] + 1) = v12;
  sub_199A9C458();
  sub_199DF9BEC();
  v14 = [objc_opt_self() labelColor];
  v15 = sub_199DF969C();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D50, &qword_199E420C8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(v15) = sub_199DF917C();
  sub_199DF84FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D58, &unk_199E420D0) + 36)];
  *v26 = v15;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  LOBYTE(v15) = sub_199DF918C();
  sub_199DF84FC();
  v27 = &v9[*(v7 + 36)];
  *v27 = v15;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = swift_allocObject();
  v33 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = *(v2 + 80);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = sub_199DF880C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6D280(v2, v41);
  sub_199DF87FC();
  sub_199B6DECC(&qword_1EAF71260, &qword_1EAF75D40, &qword_199E420B8, sub_199B6DE9C);
  sub_199DF963C();

  (*(v36 + 8))(v38, v35);
  return sub_199A79A04(v9, &qword_1EAF75D40, &qword_199E420B8);
}

uint64_t sub_199B6CBC8()
{
  v1 = v0;
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D58, &unk_199E420D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  sub_199DF9EEC();
  v9 = sub_199AA8A84(v5, MEMORY[0x1E69E7CC0]);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = *(v1 + 56);
  v30[0] = *(v1 + 40);
  v30[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48, &qword_199E420C0);
  sub_199DF999C();
  *&v30[0] = v9;
  *(&v30[0] + 1) = v11;
  sub_199A9C458();
  sub_199DF9BEC();
  v13 = [objc_opt_self() labelColor];
  v14 = sub_199DF969C();
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D50, &qword_199E420C8) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  LOBYTE(v14) = sub_199DF917C();
  sub_199DF84FC();
  v17 = &v8[*(v6 + 36)];
  *v17 = v14;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = swift_allocObject();
  v23 = *(v1 + 48);
  *(v22 + 48) = *(v1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(v1 + 64);
  *(v22 + 96) = *(v1 + 80);
  v24 = *(v1 + 16);
  *(v22 + 16) = *v1;
  *(v22 + 32) = v24;
  v25 = sub_199DF880C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B6D280(v1, v30);
  sub_199DF87FC();
  sub_199B6DE9C();
  sub_199DF963C();

  (*(v26 + 8))(v28, v25);
  return sub_199A79A04(v8, &qword_1EAF75D58, &unk_199E420D0);
}

void sub_199B6CF7C(uint64_t a1)
{
  v7 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870, &unk_199E41060);
  sub_199DF984C();
  v2 = v6;
  v3 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48, &qword_199E420C0);
  MEMORY[0x19A8F7740](&v6, v4);
  v5 = sub_199DF9F5C();

  [v2 setGivenName_];
}

void sub_199B6D038(uint64_t a1)
{
  v7 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870, &unk_199E41060);
  sub_199DF984C();
  v2 = v6;
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D48, &qword_199E420C0);
  MEMORY[0x19A8F7740](&v6, v4);
  v5 = sub_199DF9F5C();

  [v2 setFamilyName_];
}

uint64_t sub_199B6D0F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = v1[2];
  v8 = v1[4];
  v23 = v1[3];
  v24 = v8;
  v25 = *(v1 + 10);
  v9 = v1[1];
  v20 = *v1;
  v21 = v9;
  v22 = v7;
  sub_199DF9EEC();
  v10 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  v13 = swift_allocObject();
  v14 = v23;
  v15 = v24;
  *(v13 + 48) = v22;
  *(v13 + 64) = v14;
  *(v13 + 80) = v15;
  *(v13 + 96) = v25;
  v16 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v16;
  *a1 = v10;
  a1[1] = v12;
  a1[2] = sub_199B6D278;
  a1[3] = v13;
  return sub_199B6D280(&v20, v19);
}

uint64_t sub_199B6D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749C0, &qword_199E3E2B8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v30 = a1;
  v31 = a2;
  sub_199A9C458();
  sub_199DF81AC();
  v8 = sub_199DF93CC();
  v10 = v9;
  v12 = v11;
  v28 = v13;
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D0, &unk_199E42250) + 36)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF749D8, &unk_199E3E2D0) + 28);
  v16 = *MEMORY[0x1E6980FD8];
  v17 = sub_199DF937C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  (*(v18 + 56))(v14 + v15, 0, 1, v17);
  *v14 = swift_getKeyPath();
  *v7 = v8;
  *(v7 + 1) = v10;
  v7[16] = v12 & 1;
  *(v7 + 3) = v28;
  v19 = sub_199DF92FC();
  KeyPath = swift_getKeyPath();
  v21 = &v7[*(v5 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_199DF926C();
  sub_199B1B8A4();
  v22 = v29;
  sub_199DF942C();
  sub_199A79A04(v7, &qword_1EAF749C0, &qword_199E3E2B8);
  v23 = [objc_opt_self() secondaryLabelColor];
  v24 = sub_199DF969C();
  v25 = swift_getKeyPath();
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D68, &qword_199E422C8) + 36));
  *v26 = v25;
  v26[1] = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D70, &qword_199E422D0);
  *(v22 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_199B6D558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v30 = a7;
  type metadata accessor for CNWallpaperSuggestionsGallerySection.TitleView(255, a5, a6, a4);
  v8 = sub_199DF889C();
  WitnessTable = swift_getWitnessTable();
  v42 = MEMORY[0x1E697E5D8];
  v29 = MEMORY[0x1E697E858];
  v39 = v8;
  v40 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_199DF9BFC();
  swift_getWitnessTable();
  v9 = sub_199DF994C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = sub_199DF889C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  sub_199DF8D5C();
  v31 = a5;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  sub_199DF993C();
  sub_199DF9B5C();
  v22 = swift_getWitnessTable();
  sub_199DF95CC();
  (*(v10 + 8))(v12, v9);
  v37 = v22;
  v38 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_199AC8AF0();
  v20 = *(v14 + 8);
  v20(v16, v13);
  sub_199AC8AF0();
  return (v20)(v19, v13);
}

uint64_t sub_199B6D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a4;
  v50 = a3;
  v7 = a1;
  v52 = a6;
  v51 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &OpaqueTypeConformance2 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &OpaqueTypeConformance2 - v10;
  v45 = v11;
  v46 = v12;
  type metadata accessor for CNWallpaperSuggestionsGallerySection.TitleView(255, v11, v12, v13);
  v14 = sub_199DF889C();
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  *&v65 = v14;
  *(&v65 + 1) = v15;
  v16 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v44 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v47 = &OpaqueTypeConformance2 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &OpaqueTypeConformance2 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &OpaqueTypeConformance2 - v23;
  *&v62 = v7;
  *(&v62 + 1) = a2;
  sub_199DF81AC();
  sub_199DF917C();
  swift_checkMetadataState();
  sub_199DF95FC();

  v62 = v65;
  v63 = v66;
  v64[0] = v67[0];
  *(v64 + 9) = *(v67 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E39320;
  LOBYTE(v7) = sub_199DF919C();
  *(inited + 32) = v7;
  v26 = sub_199DF91BC();
  *(inited + 33) = v26;
  sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v7)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v26)
  {
    sub_199DF91AC();
  }

  v27 = swift_checkMetadataState();
  sub_199DF94AC();
  v60[0] = v62;
  v60[1] = v63;
  v61[0] = v64[0];
  *(v61 + 9) = *(v64 + 9);
  (*(*(v27 - 8) + 8))(v60, v27);
  v58 = v27;
  v59 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v24;
  v28 = v44;
  sub_199AC8AF0();
  v29 = v43;
  v42 = *(v43 + 8);
  v30 = v42(v21, v28);
  v31 = v48;
  v50(v30);
  v33 = v45;
  v32 = v46;
  sub_199AC8AF0();
  v34 = v51;
  v50 = *(v51 + 8);
  (v50)(v31, v33);
  v35 = v47;
  (*(v29 + 16))(v47, v53, v28);
  v58 = v35;
  v36 = v54;
  (*(v34 + 16))(v31, v54, v33);
  v59 = v31;
  v57[0] = v28;
  v57[1] = v33;
  v55 = OpaqueTypeConformance2;
  v56 = v32;
  sub_199AE0778(&v58, 2uLL, v57);
  v37 = v36;
  v38 = v50;
  (v50)(v37, v33);
  v39 = v42;
  v42(v53, v28);
  (v38)(v31, v33);
  return v39(v35, v28);
}

unint64_t sub_199B6DE48(__n128 a1)
{
  result = qword_1EAF71168;
  if (!qword_1EAF71168)
  {
    sub_199DF99DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71168);
  }

  return result;
}

uint64_t sub_199B6DECC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_199B6DF50()
{
  result = qword_1EAF712C8;
  if (!qword_1EAF712C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D50, &qword_199E420C8);
    sub_199B6E008();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712C8);
  }

  return result;
}

unint64_t sub_199B6E008()
{
  result = qword_1EAF71160;
  if (!qword_1EAF71160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73278, &qword_199E39F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71160);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_199B6E0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_199B6E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_199B6E224()
{
  result = qword_1EAF71298;
  if (!qword_1EAF71298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D70, &qword_199E422D0);
    sub_199B6E2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71298);
  }

  return result;
}

unint64_t sub_199B6E2B0()
{
  result = qword_1EAF712F8;
  if (!qword_1EAF712F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75D68, &qword_199E422C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF749C0, &qword_199E3E2B8);
    sub_199B1B8A4();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712F8);
  }

  return result;
}

id sub_199B6E430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarView.Listener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AvatarView.init(contact:listener:)@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_199E37DF0;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for AvatarView.Listener();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v15.receiver = v7;
  v15.super_class = v6;
  v8 = a1;
  objc_msgSendSuper2(&v15, sel_init);
  sub_199A7BB24(&qword_1ED615BF8, v9, type metadata accessor for AvatarView.Listener, &unk_199E425F4);
  sub_199DF781C();
  swift_allocObject();
  v10 = sub_199DF77FC();
  swift_unknownObjectRelease();

  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v11 = type metadata accessor for AvatarView(0);
  v12 = *(v11 + 20);
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90, &unk_199E398C0);
  result = swift_storeEnumTagMultiPayload();
  v14 = a3 + *(v11 + 24);
  *v14 = sub_199B6F868;
  *(v14 + 8) = v10;
  *(v14 + 16) = 0;
  return result;
}

uint64_t AvatarView.init(contacts:listener:)@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for AvatarView.Listener();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v12.receiver = v5;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_init);
  sub_199A7BB24(&qword_1ED615BF8, v6, type metadata accessor for AvatarView.Listener, &unk_199E425F4);
  sub_199DF781C();
  swift_allocObject();
  v7 = sub_199DF77FC();
  swift_unknownObjectRelease();
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v8 = type metadata accessor for AvatarView(0);
  v9 = *(v8 + 20);
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90, &unk_199E398C0);
  result = swift_storeEnumTagMultiPayload();
  v11 = a3 + *(v8 + 24);
  *v11 = sub_199B700D4;
  *(v11 + 8) = v7;
  *(v11 + 16) = 0;
  return result;
}

uint64_t AvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AvatarView(0);
  sub_199DF781C();
  sub_199A7BB24(&qword_1EAF71DA8, 255, MEMORY[0x1E6996980], MEMORY[0x1E6996978]);
  sub_199DF85AC();
  sub_199DF782C();
  KeyPath = swift_getKeyPath();
  v4 = sub_199A7B8E8(*v1, *(v1 + 8));
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D80, &qword_199E42360) + 36));
  *v5 = KeyPath;
  v5[1] = v4;
  v6 = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D88, &qword_199E42398) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75D90, &qword_199E423A0) + 28);
  sub_199AC3FC4((v7 + v8));
  v9 = sub_199DF774C();
  result = (*(*(v9 - 8) + 56))(v7 + v8, 0, 1, v9);
  *v7 = v6;
  return result;
}

uint64_t sub_199B6E92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75DB0, &qword_199E42678);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_199B70064(a1, &v5 - v3);
  return sub_199DF8A6C();
}

uint64_t UITraitCollection.avatarBackgroundStyle.getter()
{
  sub_199A7C58C();
  sub_199DFA3DC();
  return v1;
}

uint64_t sub_199B6EA04(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v2);

  return UIMutableTraits.avatarBackgroundStyle.setter(v4, v2, v3);
}

uint64_t sub_199B6EA78()
{
  v0 = sub_199DF774C();
  __swift_allocate_value_buffer(v0, qword_1EAF86F38);
  __swift_project_value_buffer(v0, qword_1EAF86F38);
  return sub_199DF771C();
}

uint64_t sub_199B6EAF0()
{
  v0 = sub_199DF774C();
  __swift_allocate_value_buffer(v0, qword_1EAF87100);
  v1 = __swift_project_value_buffer(v0, qword_1EAF87100);
  if (qword_1EAF71D60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EAF86F38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *UITraitCollection.avatarBorderStyle.getter()
{
  sub_199B6F870();

  return sub_199DFA3DC();
}

uint64_t UIMutableTraits.avatarBorderStyle.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_199DF774C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  sub_199B6F870();
  sub_199DF807C();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_199B6ED58(uint64_t a1, uint64_t a2)
{
  v4 = sub_199DF774C();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  return UIMutableTraits.avatarBorderStyle.setter(v7, v9, v10);
}

uint64_t sub_199B6EE60@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_199DF774C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_199B6EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199A7BB24(&qword_1EAF75DA8, 255, MEMORY[0x1E6996910], MEMORY[0x1E6996918]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t UIMutableTraits.avatarBackgroundStyle.getter(uint64_t a1, uint64_t a2)
{
  sub_199A7C58C();
  sub_199DF806C();
  return v3;
}

void (*UIMutableTraits.avatarBackgroundStyle.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_199A7C58C();
  sub_199DF806C();
  return sub_199B6F098;
}

void sub_199B6F098(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {

    sub_199A7C58C();
    sub_199DF807C();
  }

  else
  {
    *v2 = v3;
    sub_199A7C58C();
    sub_199DF807C();
  }

  free(v2);
}

void *UIMutableTraits.avatarBorderStyle.getter()
{
  sub_199B6F870();

  return sub_199DF806C();
}

uint64_t sub_199B6F1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_199DF774C();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return UIMutableTraits.avatarBorderStyle.setter(v10, v5, v6);
}

void (*UIMutableTraits.avatarBorderStyle.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_199DF774C();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_199B6F870();
  sub_199DF806C();
  return sub_199B6F3C0;
}

void sub_199B6F3C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    UIMutableTraits.avatarBorderStyle.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UIMutableTraits.avatarBorderStyle.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentValues.avatarBackgroundStyle.getter()
{
  sub_199A7BAC4();
  sub_199DF8C7C();
  return v1;
}

void *sub_199B6F4C8@<X0>(void *a1@<X8>)
{
  sub_199A7BAC4();
  result = sub_199DF8C7C();
  *a1 = v3;
  return result;
}

uint64_t sub_199B6F518(uint64_t *a1)
{
  sub_199A7BAC4();

  return sub_199DF8C8C();
}

void (*EnvironmentValues.avatarBackgroundStyle.modify(void *a1))(uint64_t *a1, char a2, __n128 a3)
{
  a1[2] = v1;
  a1[3] = sub_199A7BAC4();
  sub_199DF8C7C();
  return sub_199B6F614;
}

void sub_199B6F614(uint64_t *a1, char a2, __n128 a3)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_199DF8C8C();
  }

  else
  {
    sub_199DF8C8C();
  }
}

uint64_t sub_199B6F724(uint64_t a1)
{
  v2 = sub_199DF774C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_199B6F8C4();
  sub_199DF8C8C();
  return (*(v3 + 8))(v9, v2);
}

unint64_t sub_199B6F870()
{
  result = qword_1EAF71D58;
  if (!qword_1EAF71D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D58);
  }

  return result;
}

unint64_t sub_199B6F8C4()
{
  result = qword_1EAF71D68;
  if (!qword_1EAF71D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71D68);
  }

  return result;
}

uint64_t EnvironmentValues.avatarBorderStyle.setter(uint64_t a1)
{
  v2 = sub_199DF774C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_199B6F8C4();
  sub_199DF8C8C();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.avatarBorderStyle.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_199DF774C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_199B6F8C4();
  sub_199DF8C7C();
  return sub_199B6FB54;
}

void sub_199B6FB54(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_199DF8C8C();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_199DF8C8C();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}