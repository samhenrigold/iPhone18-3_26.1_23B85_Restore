uint64_t sub_24ED78AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    goto LABEL_2;
  }

  sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v3, &qword_27F228530, &unk_24F93C6E0);
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_24E601704(v3, &qword_27F228530, &unk_24F93C6E0);
    v4 = 0;
    return v4 & 1;
  }

  v7 = v0;
  v8 = sub_24F91F398();
  v10 = v9;
  (*(v6 + 8))(v3, v5);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
    if (*(v7 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy))
    {
      v12 = 0x800000024FA42F40;
    }

    else
    {
      v12 = 0xEA00000000006461;
    }

    if (*(v7 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) == 1 && 0x800000024FA42F40 == v12)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_24F92CE08();
    }
  }

  return v4 & 1;
}

uint64_t sub_24ED78CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_24ED8F50C(&qword_27F2363D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v21 = sub_24F92AF78();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_24ED78F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

_BYTE *sub_24ED78FB8()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden])
  {
    goto LABEL_18;
  }

  sub_24E60169C(&v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v8, &qword_27F228530, &unk_24F93C6E0);
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    v11 = sub_24F91F398();
    v13 = v12;
    (*(v10 + 8))(v8, v9);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      goto LABEL_18;
    }

    if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy])
    {
      v15 = 0x800000024FA42F40;
    }

    else
    {
      v15 = 0xEA00000000006461;
    }

    if (v1[OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy] == 1 && 0x800000024FA42F40 == v15)
    {
    }

    else
    {
      v17 = sub_24F92CE08();

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!*(*(v1 + 3) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;
      v20 = type metadata accessor for PrefetchMarkerItem();
      v21 = swift_allocObject();
      sub_24F91F6A8();
      v22 = sub_24F91F668();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25[0] = v22;
      v25[1] = v24;
      sub_24F92C7F8();
      *(v19 + 56) = v20;
      *(v19 + 64) = sub_24ED8F50C(&qword_27F22F070, type metadata accessor for PrefetchMarkerItem, &protocol conformance descriptor for PrefetchMarkerItem);
      *(v19 + 32) = v21;
      LOBYTE(v25[0]) = 94;
      v1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v25, 1, 2);

      return v1;
    }
  }

LABEL_18:

  return v1;
}

id Shelf.withId(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v90 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v87 - v5;
  v6 = sub_24F91F6B8();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  sub_24E65864C(a1, v149);
  v117 = *(v2 + 16);
  v109 = *(v2 + 17);
  v111 = v2[3];
  v115 = v2[5];
  v120 = v19;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v19, &qword_27F228530, &unk_24F93C6E0);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v116 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v108 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v114 = v20;
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v103 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v102 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v105 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v21 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *&v122 = v21;
  v106 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v154 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v152 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v153 = v22;
  v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v23 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v107 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v127 = v28;
  LODWORD(v126) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v150 = v24;
  v151 = v23;
  v119 = v13;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v13, &unk_27F22EC30, &qword_24F939880);
  v121 = v10;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v10, &qword_27F213E68, &unk_24F93BC80);
  v118 = v16;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v16, &qword_27F228530, &unk_24F93C6E0);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics);
  v29 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v125 = v4;
  v31 = swift_allocObject();
  sub_24E60169C(v149, &v146, &qword_27F235830, &qword_24F93B8C0);
  v93 = v29;
  v100 = v26;
  v101 = v25;
  v97 = v27;
  if (*(&v147 + 1))
  {
    v143 = v146;
    v144 = v147;
    v145 = v148;

    v32 = v116;
    sub_24ED8F454(v116);
    v33 = v26;
    v34 = v107;
    sub_24E951F10(v33, v27, v107, v127, v126);
  }

  else
  {

    sub_24ED8F454(v116);
    v35 = v26;
    v34 = v107;
    sub_24E951F10(v35, v27, v107, v127, v126);

    v36 = v87;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v88 + 8))(v36, v89);
    *&v139 = v37;
    *(&v139 + 1) = v39;
    sub_24F92C7F8();
    sub_24E601704(&v146, &qword_27F235830, &qword_24F93B8C0);
    v32 = v116;
  }

  v40 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v41 = v144;
  *v40 = v143;
  *(v40 + 16) = v41;
  *(v40 + 32) = v145;
  sub_24E60169C(v121, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v42 = v117;
  *(v31 + 16) = v117;
  *(v31 + 17) = v109;
  *(v31 + 18) = 1;
  v43 = v111;
  *(v31 + 24) = v111;
  LOBYTE(v143) = v42;
  swift_bridgeObjectRetain_n();
  v44 = sub_24F2EBA74(v43, &v143);

  *(v31 + 32) = v44;
  sub_24E60169C(v120, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v113;
  v45 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v47 = v114;
  v46 = v115;
  *v45 = v108;
  v45[1] = v47;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v112;
  *(v31 + 40) = v46;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v110;
  v48 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v49 = v153;
  *(v48 + 32) = v152;
  *(v48 + 48) = v49;
  *(v48 + 64) = v154;
  v50 = v151;
  *v48 = v150;
  *(v48 + 16) = v50;
  v91 = v30;
  if (v32 <= 1)
  {

    sub_24EA1F04C(&v150, &v143);
    v51 = v105;
    v52 = v106;
LABEL_6:
    v53 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v54 = v96;
    v55 = v122;
    *v53 = v95;
    v53[1] = v55;
    *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v54;
    *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v32;

    goto LABEL_7;
  }

  v82 = objc_opt_self();

  sub_24EA1F04C(&v150, &v143);
  result = [v82 defaultWorkspace];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v83 = result;
  v84 = sub_24F92B098();
  v85 = [v83 applicationIsInstalled_];

  v51 = v105;
  v52 = v106;
  if (v85)
  {
    goto LABEL_6;
  }

  sub_24ED8F464(v32);

  v86 = (v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v86 = 0;
  v86[1] = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_7:
  sub_24E60169C(v119, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v118, v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  v56 = v99;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v98;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v56;
  LOBYTE(v56) = v103;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v104;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v56;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v102;
  v57 = v100;
  if (v51)
  {
  }

  else
  {
    LOBYTE(v143) = v117;

    v51 = sub_24F2EBC94();
  }

  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v51;
  v58 = v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v59 = v97;
  *v58 = v57;
  *(v58 + 8) = v59;
  v60 = v127;
  *(v58 + 16) = v34;
  *(v58 + 24) = v60;
  *(v58 + 32) = v126;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v52;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v101;
  v126 = v31;
  v61 = *(v31 + 24);
  v62 = sub_24EA90A64();

  v63 = 0;
  v142 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v62);
  v64 = (v61 + 32);
  v65 = 0uLL;
  v122 = xmmword_24F950E90;
  v127 = (v61 + 32);
  while (2)
  {
    v66 = *(v61 + 16);
    if (v63 == v66)
    {
LABEL_14:
      v134 = 0;
      v63 = v66;
      v132 = v65;
      v133 = v65;
      goto LABEL_18;
    }

    while (1)
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v77 = sub_24F92C738();
        if (!v77)
        {
          goto LABEL_43;
        }

LABEL_36:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
        if (v77 >= 1)
        {
          v127 = (v62 & 0xC000000000000001);
          v78 = (v90 + 8);

          v79 = 0;
          v80 = v62;
          do
          {
            if (v127)
            {
              MEMORY[0x253052270](v79, v62);
            }

            else
            {
            }

            ++v79;
            sub_24E602068(&qword_27F226838, &qword_27F225160, &unk_24F97B620, MEMORY[0x277D21A98]);
            sub_24F9288B8();
            v81 = v123;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v143);
            (*v78)(v81, v124);
            v62 = v80;
          }

          while (v77 != v79);

          v63 = v126;
          goto LABEL_43;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (v63 >= *(v61 + 16))
      {
        goto LABEL_48;
      }

      sub_24E615E00(v64 + 40 * v63++, &v132);
LABEL_18:
      v130[0] = v132;
      v130[1] = v133;
      v131 = v134;
      if (!*(&v133 + 1))
      {
        memset(v135, 0, 24);
        *(&v135[1] + 8) = v122;
LABEL_26:
        sub_24E601704(v135, &qword_27F226830, &unk_24F97B610);
        v141 = 0;
        v139 = 0u;
        v140 = 0u;
        goto LABEL_27;
      }

      sub_24E612C80(v130, v129);
      sub_24E615E00(v129, &v128);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v135, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v129);
      if (*(&v135[1] + 1) == 1)
      {
        goto LABEL_26;
      }

      v136 = v135[0];
      v137 = v135[1];
      v138 = *&v135[2];
      if (*(&v135[1] + 1))
      {
        break;
      }

      sub_24E601704(&v136, &qword_27F222730, &unk_24F9E1470);
      v65 = 0uLL;
      if (v63 == v66)
      {
        goto LABEL_14;
      }
    }

    *(&v137 + 1) = *(&v135[1] + 1);
    result = sub_24E60169C(&v136, v135, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v135[1] + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_24E612C80(v135, &v139);
    sub_24E601704(&v136, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v140 + 1))
    {
LABEL_27:
      sub_24E601704(&v139, &qword_27F222730, &unk_24F9E1470);
      v143 = 0u;
      v144 = 0u;
      v145 = 0;
      goto LABEL_28;
    }

    sub_24E612C80(&v139, &v146);
    v70 = *(&v147 + 1);
    v71 = v148;
    v72 = __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
    v73 = v70;
    v62 = v72;
    if ((PersonalizableModel.needsClientPersonalization.getter(v73, v71) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v146);
LABEL_12:
      v64 = v127;
      v65 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v146, &v143);
LABEL_28:
  v146 = v143;
  v147 = v144;
  v148 = v145;
  if (*(&v144 + 1))
  {
    sub_24E612C80(&v146, &v139);
    v67 = *(&v140 + 1);
    v68 = v141;
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    (*(v68 + 16))(&v136, v67, v68);
    LOBYTE(v68) = v136;
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v62 = &v142;
    sub_24ED7CC74(&v143, v68);
    goto LABEL_12;
  }

  v63 = v126;
  *(v126 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v142;
  v74 = (v63 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v75 = v93;
  *v74 = v94;
  v74[1] = v75;
  v76 = v91;
  v74[2] = v92;
  v74[3] = v76;
  v62 = *(v63 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v62 >> 62)
  {
    goto LABEL_49;
  }

  v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
    goto LABEL_36;
  }

LABEL_43:
  sub_24E601704(v118, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v121, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v119, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v120, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v149, &qword_27F235830, &qword_24F93B8C0);
  return v63;
}

id Shelf.withURL(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v96 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v92 - v5;
  v6 = sub_24F91F6B8();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v92 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  sub_24E65864C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v153);
  LODWORD(v125) = *(v2 + 16);
  v116 = *(v2 + 17);
  v118 = v2[3];
  v120 = v2[5];
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  v22 = *(v21 + 56);
  v123 = v19;
  v22(v19, 0, 1, v20);
  v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v115 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v101 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  v131 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v114 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v23 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v119 = v23;
  v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v108 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v107 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v100 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v111 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v158 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v156 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v157 = v25;
  v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v28 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v29 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v31 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v112 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v130 = v31;
  LODWORD(v129) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v154 = v27;
  v155 = v26;
  v122 = v13;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v13, &unk_27F22EC30, &qword_24F939880);
  v124 = v10;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v10, &qword_27F213E68, &unk_24F93BC80);
  v121 = v16;
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v16, &qword_27F228530, &unk_24F93C6E0);
  v102 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics);
  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24);
  v97 = v33;
  v128 = v4;
  v35 = swift_allocObject();
  sub_24E60169C(v153, &v150, &qword_27F235830, &qword_24F93B8C0);
  v105 = v29;
  v106 = v28;
  v103 = v24;
  if (*(&v151 + 1))
  {
    v147 = v150;
    v148 = v151;
    v149 = v152;

    sub_24ED8F454(v131);
    v36 = v30;
    v37 = v30;
    v38 = v112;
    sub_24E951F10(v29, v37, v112, v130, v129);
  }

  else
  {

    sub_24ED8F454(v131);
    v92 = v30;
    v39 = v30;
    v38 = v112;
    sub_24E951F10(v29, v39, v112, v130, v129);

    v40 = v93;
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v42 = v32;
    v44 = v43;
    (*(v94 + 8))(v40, v95);
    *&v143 = v41;
    *(&v143 + 1) = v44;
    v32 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v150, &qword_27F235830, &qword_24F93B8C0);
    v36 = v92;
  }

  v45 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v46 = v148;
  *v45 = v147;
  *(v45 + 16) = v46;
  *(v45 + 32) = v149;
  sub_24E60169C(v124, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v47 = v125;
  *(v35 + 16) = v125;
  *(v35 + 17) = v116;
  *(v35 + 18) = 1;
  v48 = v118;
  *(v35 + 24) = v118;
  LOBYTE(v147) = v47;
  swift_bridgeObjectRetain_n();
  v49 = sub_24F2EBA74(v48, &v147);

  *(v35 + 32) = v49;
  sub_24E60169C(v123, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v117;
  v50 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v52 = v119;
  v51 = v120;
  *v50 = v113;
  v50[1] = v52;
  v53 = v114;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v115;
  *(v35 + 40) = v51;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v53;
  v54 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v55 = v157;
  *(v54 + 32) = v156;
  *(v54 + 48) = v55;
  *(v54 + 64) = v158;
  v56 = v155;
  *v54 = v154;
  *(v54 + 16) = v56;
  v98 = v32;
  if (!v131)
  {
    v57 = 0;
    goto LABEL_10;
  }

  v57 = v131;
  if (v131 == 1)
  {
LABEL_10:

    sub_24EA1F04C(&v154, &v147);
    v63 = v110;
    v64 = v111;
    goto LABEL_11;
  }

  v58 = objc_opt_self();

  sub_24EA1F04C(&v154, &v147);
  result = [v58 defaultWorkspace];
  if (!result)
  {
    goto LABEL_54;
  }

  v60 = result;
  v61 = sub_24F92B098();
  v62 = [v60 applicationIsInstalled_];

  v63 = v110;
  v64 = v111;
  if ((v62 & 1) == 0)
  {
    sub_24ED8F464(v57);

    v65 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    *v65 = 0;
    v65[1] = 0;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
    goto LABEL_12;
  }

LABEL_11:
  v66 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v67 = v101;
  v68 = v103;
  *v66 = v100;
  v66[1] = v68;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v67;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v57;

LABEL_12:
  sub_24E60169C(v122, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v121, v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v102;
  v69 = v105;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v104;
  v70 = v108;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v109;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v70;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v107;
  if (v63)
  {
  }

  else
  {
    LOBYTE(v147) = v125;

    v63 = sub_24F2EBC94();
  }

  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v63;
  v71 = v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v71 = v69;
  *(v71 + 8) = v36;
  v72 = v130;
  *(v71 + 16) = v38;
  *(v71 + 24) = v72;
  *(v71 + 32) = v129;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v64;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v106;
  v129 = v35;
  v73 = *(v35 + 24);
  v74 = sub_24EA90A64();

  v75 = 0;
  v146 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v74);
  v131 = (v73 + 32);
  v76 = 0uLL;
  v125 = xmmword_24F950E90;
  v130 = v34;
  while (2)
  {
    while (2)
    {
      v77 = *(v73 + 16);
      if (v75 == v77)
      {
LABEL_17:
        v138 = 0;
        v75 = v77;
        v136 = v76;
        v137 = v76;
        goto LABEL_21;
      }

      while (1)
      {
        if ((v75 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v75 >= *(v73 + 16))
        {
          goto LABEL_49;
        }

        sub_24E615E00(v131 + 40 * v75++, &v136);
LABEL_21:
        v134[0] = v136;
        v134[1] = v137;
        v135 = v138;
        if (!*(&v137 + 1))
        {
          memset(v139, 0, 24);
          *(&v139[1] + 8) = v125;
LABEL_29:
          sub_24E601704(v139, &qword_27F226830, &unk_24F97B610);
          v145 = 0;
          v143 = 0u;
          v144 = 0u;
          goto LABEL_30;
        }

        sub_24E612C80(v134, v133);
        sub_24E615E00(v133, &v132);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v139, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v133);
        if (*(&v139[1] + 1) == 1)
        {
          goto LABEL_29;
        }

        v140 = v139[0];
        v141 = v139[1];
        v142 = *&v139[2];
        if (*(&v139[1] + 1))
        {
          break;
        }

        sub_24E601704(&v140, &qword_27F222730, &unk_24F9E1470);
        v76 = 0uLL;
        if (v75 == v77)
        {
          goto LABEL_17;
        }
      }

      *(&v141 + 1) = *(&v139[1] + 1);
      result = sub_24E60169C(&v140, v139, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v139[1] + 1))
      {
        goto LABEL_53;
      }

      sub_24E612C80(v139, &v143);
      sub_24E601704(&v140, &qword_27F222730, &unk_24F9E1470);
      if (!*(&v144 + 1))
      {
LABEL_30:
        sub_24E601704(&v143, &qword_27F222730, &unk_24F9E1470);
        v147 = 0u;
        v148 = 0u;
        v149 = 0;
        goto LABEL_31;
      }

      sub_24E612C80(&v143, &v150);
      v81 = *(&v151 + 1);
      v82 = v152;
      v83 = __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      v84 = v81;
      v74 = v83;
      if ((PersonalizableModel.needsClientPersonalization.getter(v84, v82) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v150);
        v34 = v130;
        v76 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v150, &v147);
    v34 = v130;
LABEL_31:
    v150 = v147;
    v151 = v148;
    v152 = v149;
    if (*(&v148 + 1))
    {
      sub_24E612C80(&v150, &v143);
      v78 = *(&v144 + 1);
      v79 = v145;
      __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
      v80 = v78;
      v34 = v130;
      (*(v79 + 16))(&v140, v80, v79);
      LOBYTE(v79) = v140;
      __swift_destroy_boxed_opaque_existential_1(&v143);
      v74 = &v146;
      sub_24ED7CC74(&v147, v79);
      v76 = 0uLL;
      continue;
    }

    break;
  }

  v75 = v129;
  *(v129 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v146;
  v85 = (v75 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  v86 = v98;
  *v85 = v99;
  v85[1] = v86;
  v85[2] = v97;
  v85[3] = v34;
  v74 = *(v75 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (!(v74 >> 62))
  {
    v87 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v87)
    {
      goto LABEL_40;
    }

LABEL_47:
    sub_24E601704(v121, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v124, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v122, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v123, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v153, &qword_27F235830, &qword_24F93B8C0);
    return v75;
  }

LABEL_50:
  v87 = sub_24F92C738();
  if (!v87)
  {
    goto LABEL_47;
  }

LABEL_40:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  if (v87 >= 1)
  {
    v131 = (v74 & 0xC000000000000001);
    v88 = (v96 + 8);

    v89 = 0;
    v90 = v74;
    do
    {
      if (v131)
      {
        MEMORY[0x253052270](v89, v74);
      }

      else
      {
      }

      ++v89;
      sub_24E602068(&qword_27F226838, &qword_27F225160, &unk_24F97B620, MEMORY[0x277D21A98]);
      sub_24F9288B8();
      v91 = v126;
      sub_24F9288C8();

      __swift_destroy_boxed_opaque_existential_1(&v147);
      (*v88)(v91, v127);
      v74 = v90;
    }

    while (v87 != v89);

    v75 = v129;
    goto LABEL_47;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

char *Shelf.replacingContent(with:)(char *a1)
{
  v2 = v1;
  v145 = *v1;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v133 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v106 - v4;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v131 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v141 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v10 - 8);
  v139 = &v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v12 - 8);
  v138 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v140 = &v106 - v15;
  v16 = v1 + 2;
  LOBYTE(v168) = *(v1 + 16);
  v17 = Shelf.ContentType.rawValue.getter();
  v132 = v6;
  if (v17 == 0x6C6F686563616C70 && v18 == 0xEB00000000726564)
  {
  }

  else
  {
    v20 = sub_24F92CE08();

    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v1 + 17) != 104)
  {
    LOBYTE(v168) = *(v1 + 17);
    LOBYTE(v162) = a1[16];
    v21 = Shelf.ContentType.isCompatible(with:)(&v162, v19);
    goto LABEL_8;
  }

LABEL_6:
  v21 = 0;
LABEL_8:
  LOBYTE(v168) = *v16;
  v22 = a1 + 16;
  LOBYTE(v162) = a1[16];
  v23 = Shelf.ContentType.isCompatible(with:)(&v162, v19);
  if ((v21 & 1) == 0 && (v23 & 1) == 0)
  {
    v24 = sub_24F929618();
    sub_24ED8F50C(&qword_27F22F048, MEMORY[0x277D21F98], MEMORY[0x277D21FA0]);
    swift_allocError();
    v25 = *v16;
    *(v26 + 24) = &type metadata for Shelf.ContentType;
    *v26 = v25;
    v27 = *v22;
    *(v26 + 56) = &type metadata for Shelf.ContentType;
    *(v26 + 32) = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D21F90], v24);
    swift_willThrow();
    return a1;
  }

  v106 = v5;
  LOBYTE(v168) = *v16;
  if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v28 == 0xEE0072656B72614DLL)
  {
    goto LABEL_13;
  }

  v29 = sub_24F92CE08();

  if ((v29 & 1) == 0)
  {
    LOBYTE(v168) = *v16;
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v30 == 0xEB00000000726564)
    {
LABEL_13:

      goto LABEL_19;
    }

    v31 = sub_24F92CE08();

    if ((v31 & 1) == 0)
    {
      v22 = (v1 + 2);
    }
  }

LABEL_19:
  v32 = *v22;
  sub_24E65864C(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v173);
  v123 = *(v1 + 17);
  v127 = *(a1 + 3);
  v137 = sub_24EF94F20(*(a1 + 5), v1[5], 0);
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_url], v140, &qword_27F228530, &unk_24F93C6E0);
  v126 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched];
  v125 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy);
  v33 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v124 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v128 = v33;
  v34 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8];
  if (v34)
  {
    v111 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle];
    v117 = v34;
  }

  else
  {
    v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
    v111 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v117 = v35;
  }

  v130 = v32;
  v136 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction];
  if (!v136)
  {
    v136 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  }

  v36 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle];
  v37 = v36;
  if (v36 == 1)
  {
    v37 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
    sub_24ED8F454(v37);
  }

  v135 = v37;
  v122 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden];
  v116 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v115 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior);
  v114 = a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized];
  v118 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v38 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v134 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v120 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel);
  v39 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
  v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v121 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v147 = v40;
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  LODWORD(v142) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 48);
  v170 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 32);
  v171 = v41;
  v172 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 64);
  v42 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata + 16);
  v168 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata);
  v169 = v42;
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v139, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics], v141, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, v138, &qword_27F228530, &unk_24F93C6E0);
  v112 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics];
  v43 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 8];
  v110 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
  v44 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 24];
  v108 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata + 16];
  v45 = swift_allocObject();
  sub_24E60169C(v173, &v165, &qword_27F235830, &qword_24F93B8C0);
  v146 = v45;
  v119 = v38;
  v129 = v39;
  if (*(&v166 + 1))
  {
    v162 = v165;
    v163 = v166;
    v164 = v167;

    v46 = v121;
    sub_24E951F10(v38, v134, v121, v147, v142);

    sub_24ED8F454(v36);
  }

  else
  {

    v46 = v121;
    sub_24E951F10(v38, v134, v121, v147, v142);

    sub_24ED8F454(v36);
    v47 = v131;
    sub_24F91F6A8();
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v132 + 8))(v47, v106);
    *&v159 = v48;
    *(&v159 + 1) = v50;
    v45 = v146;
    sub_24F92C7F8();
    sub_24E601704(&v165, &qword_27F235830, &qword_24F93B8C0);
  }

  v51 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v52 = v163;
  *v51 = v162;
  *(v51 + 16) = v52;
  *(v51 + 32) = v164;
  sub_24E60169C(v141, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v53 = v130;
  *(v45 + 16) = v130;
  *(v45 + 17) = v123;
  *(v45 + 18) = 1;
  v54 = v127;
  *(v45 + 24) = v127;
  LOBYTE(v162) = v53;
  swift_bridgeObjectRetain_n();
  v55 = sub_24F2EBA74(v54, &v162);

  *(v45 + 32) = v55;
  sub_24E60169C(v140, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v126;
  v56 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v57 = v128;
  *v56 = v124;
  v56[1] = v57;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = v125;
  *(v45 + 40) = v137;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v122;
  v58 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  v59 = v171;
  *(v58 + 32) = v170;
  *(v58 + 48) = v59;
  *(v58 + 64) = v172;
  v60 = v169;
  *v58 = v168;
  *(v58 + 16) = v60;
  v109 = v43;
  v107 = v44;
  if (v135)
  {
    v61 = v129;
    if (v135 == 1)
    {

      sub_24EA1F04C(&v168, &v162);
      v62 = v120;
      v63 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
    }

    else
    {
      v64 = objc_opt_self();

      sub_24EA1F04C(&v168, &v162);
      result = [v64 defaultWorkspace];
      if (!result)
      {
LABEL_80:
        __break(1u);
        return result;
      }

      v66 = result;
      v67 = sub_24F92B098();
      v68 = [v66 applicationIsInstalled_];

      v45 = v146;
      v62 = v120;
      v63 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
      if ((v68 & 1) == 0)
      {
        sub_24ED8F464(v135);

        v105 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
        *v105 = 0;
        v105[1] = 0;
        *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
        *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
        goto LABEL_36;
      }
    }
  }

  else
  {

    sub_24EA1F04C(&v168, &v162);
    v62 = v120;
    v63 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle;
    v61 = v129;
  }

  v69 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v70 = v117;
  *v69 = v111;
  v69[1] = v70;
  v71 = v135;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v136;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v71;

LABEL_36:
  sub_24E60169C(v139, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v138, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  v72 = v113;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = v112;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v72;
  LOBYTE(v72) = v115;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v116;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = v72;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = v114;
  v73 = v118;
  v74 = v119;
  if (v118)
  {
  }

  else
  {
    LOBYTE(v162) = v53;

    v63 = &v162;
    v73 = sub_24F2EBC94();
  }

  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v73;
  v75 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v76 = v134;
  *v75 = v74;
  *(v75 + 8) = v76;
  v77 = v147;
  *(v75 + 16) = v46;
  *(v75 + 24) = v77;
  *(v75 + 32) = v142;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v62;
  *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v61;
  v78 = *(v45 + 24);
  v79 = sub_24EA90A64();

  v80 = 0;
  v174 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v79);
  v81 = v78 + 4;
  v82 = 0uLL;
  v83 = &qword_27F222730;
  a1 = &unk_24F9E1470;
  v84 = &unk_27F23A6A0;
  v142 = xmmword_24F950E90;
  v147 = v78;
  while (2)
  {
    while (2)
    {
      v85 = v78[2];
      if (v80 != v85)
      {
LABEL_41:
        if ((v80 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v80 < v78[2])
        {
          sub_24E615E00(&v81[5 * v80++], &v152);
          goto LABEL_45;
        }

        __break(1u);
LABEL_76:
        v101 = sub_24F92C738();
        if (!v101)
        {
          goto LABEL_71;
        }

LABEL_64:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
        if (v101 >= 1)
        {
          *&v142 = v63 & 0xC000000000000001;
          v102 = (v133 + 8);

          v103 = 0;
          v147 = v63;
          do
          {
            if (v142)
            {
              MEMORY[0x253052270](v103, v63);
            }

            else
            {
            }

            ++v103;
            sub_24E602068(&qword_27F226838, &qword_27F225160, &unk_24F97B620, MEMORY[0x277D21A98]);
            sub_24F9288B8();
            v104 = v143;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v162);
            (*v102)(v104, v144);
            v63 = v147;
          }

          while (v101 != v103);

          a1 = v146;
          goto LABEL_71;
        }

        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      while (1)
      {
        v154 = 0;
        v80 = v85;
        v152 = v82;
        v153 = v82;
LABEL_45:
        v150[0] = v152;
        v150[1] = v153;
        v151 = v154;
        if (!*(&v153 + 1))
        {
          memset(v155, 0, 24);
          *(&v155[1] + 8) = v142;
LABEL_53:
          sub_24E601704(v155, &qword_27F226830, &unk_24F97B610);
          v161 = 0;
          v159 = 0u;
          v160 = 0u;
LABEL_54:
          sub_24E601704(&v159, v83, a1);
          v162 = 0u;
          v163 = 0u;
          v164 = 0;
          goto LABEL_55;
        }

        sub_24E612C80(v150, v149);
        sub_24E615E00(v149, &v148);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v84, &unk_24F9549D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v155, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v149);
        if (*(&v155[1] + 1) == 1)
        {
          goto LABEL_53;
        }

        v156 = v155[0];
        v157 = v155[1];
        v158 = *&v155[2];
        if (*(&v155[1] + 1))
        {
          break;
        }

        sub_24E601704(&v156, v83, a1);
        v82 = 0uLL;
        if (v80 != v85)
        {
          goto LABEL_41;
        }
      }

      *(&v157 + 1) = *(&v155[1] + 1);
      result = sub_24E60169C(&v156, v155, v83, a1);
      if (!*(&v155[1] + 1))
      {
        goto LABEL_79;
      }

      sub_24E612C80(v155, &v159);
      sub_24E601704(&v156, v83, a1);
      if (!*(&v160 + 1))
      {
        goto LABEL_54;
      }

      sub_24E612C80(&v159, &v165);
      v94 = *(&v166 + 1);
      v95 = v167;
      v96 = __swift_project_boxed_opaque_existential_1(&v165, *(&v166 + 1));
      v97 = v94;
      v63 = v96;
      if ((PersonalizableModel.needsClientPersonalization.getter(v97, v95) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v165);
        v82 = 0uLL;
        continue;
      }

      break;
    }

    sub_24E612C80(&v165, &v162);
LABEL_55:
    v165 = v162;
    v166 = v163;
    v167 = v164;
    if (*(&v163 + 1))
    {
      sub_24E612C80(&v165, &v159);
      v86 = *(&v160 + 1);
      v87 = a1;
      v88 = v83;
      v89 = v84;
      v90 = v81;
      v91 = v161;
      __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
      v92 = *(v91 + 16);
      v93 = v91;
      v81 = v90;
      v84 = v89;
      v83 = v88;
      a1 = v87;
      v78 = v147;
      v92(&v156, v86, v93);
      LOBYTE(v86) = v156;
      __swift_destroy_boxed_opaque_existential_1(&v159);
      v63 = &v174;
      sub_24ED7CC74(&v162, v86);
      v82 = 0uLL;
      continue;
    }

    break;
  }

  a1 = v146;
  *&v146[OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles] = v174;
  v98 = &a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata];
  v99 = v109;
  *v98 = v110;
  *(v98 + 1) = v99;
  v100 = v107;
  *(v98 + 2) = v108;
  *(v98 + 3) = v100;
  v63 = *&a1[OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents];
  if (v63 >> 62)
  {
    goto LABEL_76;
  }

  v101 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v101)
  {
    goto LABEL_64;
  }

LABEL_71:

  sub_24E601704(v138, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v141, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v139, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v140, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v173, &qword_27F235830, &qword_24F93B8C0);
  return a1;
}

uint64_t sub_24ED7C5F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24F92D068();
  sub_24F92B218();
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24F92CE08() & 1) != 0)
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

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ED85340(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ED7C740(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v47[0] = *a2;
  v47[1] = v5;
  v6 = *(a2 + 3);
  v47[2] = *(a2 + 2);
  v47[3] = v6;
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)(v46);
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v45 = v4 + 56;
  v36 = a2;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = a2[1];
    v44 = a2[2];
    v42 = *a2;
    v43 = a2[3];
    v38 = a2[6];
    v39 = a2[4];
    v40 = a2[7];
    v41 = a2[5];
    v34 = v4;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + (v9 << 6));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      if (v14)
      {
        if (!v11)
        {
          goto LABEL_4;
        }

        v21 = *v13 == v42 && v14 == v11;
        if (!v21 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      v22 = v15 == v44 && v16 == v43;
      if (!v22 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v41)
        {
          goto LABEL_4;
        }

        v23 = v17 == v39 && v18 == v41;
        if (!v23 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v41)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (v40 && (v19 == v38 && v20 == v40 || (sub_24F92CE08() & 1) != 0))
        {
LABEL_33:
          sub_24E805734(v36);
          v24 = (*(v34 + 48) + (v9 << 6));
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[3];
          v46[2] = v24[2];
          v46[3] = v27;
          v46[0] = v25;
          v46[1] = v26;
          v28 = v24[1];
          *a1 = *v24;
          a1[1] = v28;
          v29 = v24[3];
          a1[2] = v24[2];
          a1[3] = v29;
          sub_24E8056D8(v46, v47);
          return 0;
        }
      }

      else if (!v40)
      {
        goto LABEL_33;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v47[0] = *v35;
  sub_24E8056D8(v36, v46);
  sub_24ED854C0(v36, v9, isUniquelyReferenced_nonNull_native);
  *v35 = *&v47[0];
  v32 = v36[1];
  *a1 = *v36;
  a1[1] = v32;
  v33 = v36[3];
  a1[2] = v36[2];
  a1[3] = v33;
  return 1;
}

uint64_t sub_24ED7C9F0(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_24F92D068();
  v18 = a2;
  if (a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (a2)
  {
    v6 = 0x800000024FA421F0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0xD000000000000016 : 0x656461637261;
      v12 = *(*(v4 + 48) + v9) ? 0x800000024FA421F0 : 0xE600000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_24F92CE08();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_24ED85764(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

BOOL sub_24ED7CBB0()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F92B218();
  v2 = sub_24F92D0B8() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_24ED85978(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_24ED7CC74(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_24F92D068();
  v18 = a2;
  if (a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 7304045 : 1701736302;
      v12 = *(*(v4 + 48) + v9) ? 0xE300000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_24F92CE08();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_24ED85A98(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_24ED7CE20(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  MEMORY[0x253052A00](a2);
  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24ED85C98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7CF18(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  v18 = v2;
  v19 = a1;
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_24ED85DE4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE700000000000000;
    v10 = 0x636972656E6567;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6D754E656E6F6870;
    }

    else
    {
      v13 = 0x6464416C69616D65;
    }

    if (v12 == 1)
    {
      v14 = 0xEB00000000726562;
    }

    else
    {
      v14 = 0xEC00000073736572;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6D754E656E6F6870;
    v11 = 0xEB00000000726562;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0x6464416C69616D65;
  v11 = 0xEC00000073736572;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE700000000000000;
  if (v10 != 0x636972656E6567)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = a2;
  return result;
}

uint64_t sub_24ED7D19C(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(a2 + 3);
  v60[2] = *(a2 + 2);
  v60[3] = v5;
  v61 = *(a2 + 32);
  v6 = *(a2 + 1);
  v60[0] = *a2;
  v60[1] = v6;
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)(v58);
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v54 = v4 + 56;
  v45 = a2;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_61:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60[0] = *v44;
    sub_24E627A14(v45, v58);
    sub_24ED860B8(v45, v9, isUniquelyReferenced_nonNull_native);
    *v44 = *&v60[0];
    v39 = *(v45 + 48);
    *(a1 + 32) = *(v45 + 32);
    *(a1 + 48) = v39;
    *(a1 + 64) = *(v45 + 64);
    v40 = *(v45 + 16);
    result = 1;
    *a1 = *v45;
    *(a1 + 16) = v40;
    return result;
  }

  v52 = ~v8;
  v42 = *(a2 + 65);
  v43 = *(a2 + 64);
  v10 = *a2;
  v11 = a2[1];
  v56 = a2[3];
  v57 = a2[2];
  v49 = a2[5];
  v50 = a2[4];
  v47 = a2[7];
  v48 = a2[6];
  v41 = v4;
  v53 = *(v4 + 48);
  while (1)
  {
    v12 = v53 + 72 * v9;
    result = *v12;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v16 = *(v12 + 40);
    v19 = *(v12 + 48);
    v18 = *(v12 + 56);
    v55 = *(v12 + 64);
    v51 = *(v12 + 65);
    if (*v12 != v10 || *(v12 + 8) != v11)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v14 != v57 || v15 != v56)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v17 != v50 || v16 != v49)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (!v19)
    {
      if (v48)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }

    if (!v48)
    {
      goto LABEL_4;
    }

    v23 = *(v19 + 16);
    if (v23 != *(v48 + 16))
    {
      goto LABEL_4;
    }

    if (v23 && v19 != v48)
    {
      break;
    }

LABEL_28:
    if (v18)
    {
      if (!v47)
      {
        goto LABEL_4;
      }

      v25 = *(v18 + 16);
      if (v25 != *(v47 + 16))
      {
        goto LABEL_4;
      }

      if (v25 && v18 != v47)
      {
        v26 = (v18 + 40);
        v27 = (v47 + 40);
        do
        {
          v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
          if (!v28 && (sub_24F92CE08() & 1) == 0)
          {
            goto LABEL_4;
          }

          v26 += 2;
          v27 += 2;
        }

        while (--v25);
      }
    }

    else if (v47)
    {
      goto LABEL_4;
    }

    if (v55 == 2)
    {
      if (v43 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (v43 == 2 || ((v55 ^ v43) & 1) != 0)
    {
      goto LABEL_4;
    }

    if (v51 == 2)
    {
      if (v42 == 2)
      {
        goto LABEL_60;
      }
    }

    else if (v42 != 2 && ((v51 ^ v42) & 1) == 0)
    {
LABEL_60:
      sub_24E627A70(v45);
      v32 = *(v41 + 48) + 72 * v9;
      v58[0] = *v32;
      v34 = *(v32 + 32);
      v33 = *(v32 + 48);
      v35 = *(v32 + 64);
      v58[1] = *(v32 + 16);
      v58[2] = v34;
      v59 = v35;
      v58[3] = v33;
      v36 = *(v32 + 48);
      *(a1 + 32) = *(v32 + 32);
      *(a1 + 48) = v36;
      *(a1 + 64) = *(v32 + 64);
      v37 = *(v32 + 16);
      *a1 = *v32;
      *(a1 + 16) = v37;
      sub_24E627A14(v58, v60);
      return 0;
    }

LABEL_4:
    v9 = (v9 + 1) & v52;
    if (((*(v54 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v29 = (v19 + 40);
  v30 = (v48 + 40);
  while (v23)
  {
    result = *(v29 - 1);
    if (result != *(v30 - 1) || *v29 != *v30)
    {
      result = sub_24F92CE08();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v29 += 2;
    v30 += 2;
    if (!--v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_24ED7D5A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E65864C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a2);
      sub_24E6585F8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24E6585F8(a2);
    sub_24E65864C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E65864C(a2, v16);
    v15 = *v3;
    sub_24ED8648C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24ED7D6EC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  v18 = v2;
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_24ED86604(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v10 = 0x656C6C6174736E69;
    v11 = 0xED0000796C6E4F64;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6E4F656461637261;
    }

    else
    {
      v13 = 0xD000000000000015;
    }

    if (v12 == 1)
    {
      v14 = 0xEA0000000000796CLL;
    }

    else
    {
      v14 = 0x800000024FA3F9F0;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6E4F656461637261;
    v11 = 0xEA0000000000796CLL;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000015;
  v11 = 0x800000024FA3F9F0;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xED0000796C6E4F64;
  if (v10 != 0x656C6C6174736E69)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = a2;
  return result;
}

uint64_t sub_24ED7D974(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24F92D068();
  UpdateListener.RefreshDataType.rawValue.getter();
  sub_24F92B218();

  v7 = sub_24F92D0B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_94:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    sub_24ED868DC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v27;
    result = 1;
    goto LABEL_97;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE300000000000000;
    v12 = 7105633;
    switch(*(*(v6 + 48) + v9))
    {
      case 1:
        v12 = 0x676E656C6C616863;
        v11 = 0xEA00000000007365;
        break;
      case 2:
        v11 = 0xE700000000000000;
        v12 = 0x73646E65697266;
        break;
      case 3:
        v12 = 0x6552646E65697266;
        v11 = 0xEE00737473657571;
        break;
      case 4:
        v12 = 0xD000000000000015;
        v11 = 0x800000024FA41B30;
        break;
      case 5:
        v11 = 0xE500000000000000;
        v12 = 0x73656D6167;
        break;
      case 6:
        v11 = 0xE800000000000000;
        v12 = 0x73656C69666F7270;
        break;
      case 7:
        v11 = 0xE700000000000000;
        v12 = 0x73726579616C70;
        break;
      case 8:
        v12 = 0x6D65766569686361;
        v13 = 1937010277;
        goto LABEL_34;
      case 9:
        v11 = 0xEC00000073647261;
        goto LABEL_12;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x6F746F6870;
        break;
      case 0xB:
        v11 = 0xEF73746553647261;
LABEL_12:
        v12 = 0x6F6272656461656CLL;
        break;
      case 0xC:
        v12 = 0x6E65726566657270;
        v11 = 0xEB00000000736563;
        break;
      case 0xD:
        v11 = 0xE600000000000000;
        v12 = 0x7365726F6373;
        break;
      case 0xE:
        v11 = 0xE500000000000000;
        v12 = 0x736E727574;
        break;
      case 0xF:
        v12 = 0x73736553656D6167;
        goto LABEL_33;
      case 0x10:
        v11 = 0xE700000000000000;
        v12 = 0x73726174617661;
        break;
      case 0x11:
        v12 = 0x50656C69666F7270;
        v11 = 0xEE00796361766972;
        break;
      case 0x12:
        v12 = 0xD00000000000001ALL;
        v11 = 0x800000024FA41BD0;
        break;
      case 0x13:
        v12 = 0xD000000000000014;
        v11 = 0x800000024FA41BF0;
        break;
      case 0x14:
        v12 = 0x796C746E65636572;
        v11 = 0xEE00646579616C50;
        break;
      case 0x15:
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000024FA41C10;
        break;
      case 0x16:
        v12 = 0x4D707041656D6167;
        v11 = 0xEF61746164617465;
        break;
      case 0x17:
        v12 = 0x7262694C656D6167;
        v11 = 0xEB00000000797261;
        break;
      case 0x18:
        v12 = 0xD000000000000014;
        v11 = 0x800000024FA41C50;
        break;
      case 0x19:
        v12 = 0xD000000000000012;
        v11 = 0x800000024FA41C70;
        break;
      case 0x1A:
        v12 = 0x7463697274736572;
LABEL_33:
        v13 = 1936617321;
LABEL_34:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x1B:
        v12 = 0xD000000000000010;
        v11 = 0x800000024FA41C90;
        break;
      case 0x1C:
        v11 = 0xE700000000000000;
        v12 = 0x6C616974696E69;
        break;
      default:
        break;
    }

    v14 = 0xE300000000000000;
    v15 = 7105633;
    switch(a2)
    {
      case 1:
        v14 = 0xEA00000000007365;
        if (v12 == 0x676E656C6C616863)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      case 2:
        v14 = 0xE700000000000000;
        v16 = 0x646E65697266;
        goto LABEL_57;
      case 3:
        v21 = 0x6552646E65697266;
        v22 = 0x737473657571;
        goto LABEL_61;
      case 4:
        v14 = 0x800000024FA41B30;
        if (v12 != 0xD000000000000015)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 5:
        v14 = 0xE500000000000000;
        v17 = 1701667175;
        goto LABEL_64;
      case 6:
        v14 = 0xE800000000000000;
        if (v12 != 0x73656C69666F7270)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 7:
        v14 = 0xE700000000000000;
        v16 = 0x726579616C70;
        goto LABEL_57;
      case 8:
        v20 = 0x6D65766569686361;
        v23 = 1937010277;
        goto LABEL_92;
      case 9:
        v14 = 0xEC00000073647261;
        goto LABEL_47;
      case 10:
        v14 = 0xE500000000000000;
        if (v12 != 0x6F746F6870)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 11:
        v14 = 0xEF73746553647261;
LABEL_47:
        if (v12 != 0x6F6272656461656CLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 12:
        v18 = 0x6E65726566657270;
        v19 = 7562595;
        goto LABEL_82;
      case 13:
        v14 = 0xE600000000000000;
        if (v12 != 0x7365726F6373)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 14:
        v14 = 0xE500000000000000;
        v17 = 1852994932;
LABEL_64:
        if (v12 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 15:
        v20 = 0x73736553656D6167;
        goto LABEL_91;
      case 16:
        v14 = 0xE700000000000000;
        v16 = 0x726174617661;
LABEL_57:
        if (v12 != (v16 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 17:
        v21 = 0x50656C69666F7270;
        v22 = 0x796361766972;
        goto LABEL_61;
      case 18:
        v14 = 0x800000024FA41BD0;
        if (v12 != 0xD00000000000001ALL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 19:
        v14 = 0x800000024FA41BF0;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 20:
        v21 = 0x796C746E65636572;
        v22 = 0x646579616C50;
LABEL_61:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v12 != v21)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 21:
        v14 = 0x800000024FA41C10;
        if (v12 != 0xD00000000000001DLL)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 22:
        v14 = 0xEF61746164617465;
        if (v12 != 0x4D707041656D6167)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 23:
        v18 = 0x7262694C656D6167;
        v19 = 7959137;
LABEL_82:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v18)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 24:
        v14 = 0x800000024FA41C50;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 25:
        v14 = 0x800000024FA41C70;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 26:
        v20 = 0x7463697274736572;
LABEL_91:
        v23 = 1936617321;
LABEL_92:
        v14 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v12 != v20)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 27:
        v14 = 0x800000024FA41C90;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      case 28:
        v14 = 0xE700000000000000;
        v15 = 0x6C616974696E69;
        goto LABEL_85;
      default:
LABEL_85:
        if (v12 != v15)
        {
          goto LABEL_87;
        }

LABEL_86:
        if (v11 != v14)
        {
LABEL_87:
          v24 = sub_24F92CE08();

          if (v24)
          {
            goto LABEL_96;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_94;
          }

          continue;
        }

LABEL_96:
        result = 0;
        LOBYTE(a2) = *(*(v6 + 48) + v9);
LABEL_97:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_24ED7E294(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = Shelf.ContentType.rawValue.getter();
      v12 = v11;
      if (v10 == Shelf.ContentType.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_24F92CE08();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24ED87274(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7E42C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24F92D068();
  sub_24F92B218();
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24F92CE08() & 1) != 0)
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

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ED874B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ED7E57C(uint64_t *a1, uint64_t a2, int64_t a3)
{
  v6 = *v3;
  sub_24F92D068();
  sub_24F204B30(v23, a2, a3);
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_74:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *v20;
    sub_24E8E2880(a2, a3);
    sub_24ED87634(a2, a3, v9, isUniquelyReferenced_nonNull_native);
    *v20 = v23[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v22 = ~v8;
  while (1)
  {
    v10 = (*(v6 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    if (v12 <= 4)
    {
      break;
    }

    if (v12 > 7)
    {
      switch(v12)
      {
        case 8:
          v14 = 0xE600000000000000;
          v13 = 0x737472616863;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        case 9:
          v13 = 0x6573616863727570;
          v14 = 0xE900000000000064;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        case 10:
          v14 = 0xE900000000000073;
          v13 = 0x64616F6C6E776F64;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        default:
          goto LABEL_54;
      }
    }

    else if (v12 == 5)
    {
      v14 = 0xE600000000000000;
      v13 = 0x656461637261;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else if (v12 == 6)
    {
      v14 = 0xE800000000000000;
      v13 = 0x6465727574616566;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v13 = 0x69726F6765746163;
      v14 = 0xEA00000000007365;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

LABEL_36:
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8:
          v15 = 0xE600000000000000;
          if (v13 == 0x737472616863)
          {
            goto LABEL_71;
          }

          break;
        case 9:
          v15 = 0xE900000000000064;
          if (v13 == 0x6573616863727570)
          {
            goto LABEL_71;
          }

          break;
        case 10:
          v15 = 0xE900000000000073;
          if (v13 == 0x64616F6C6E776F64)
          {
            goto LABEL_71;
          }

          break;
        default:
          goto LABEL_70;
      }
    }

    else if (a3 == 5)
    {
      v15 = 0xE600000000000000;
      if (v13 == 0x656461637261)
      {
        goto LABEL_71;
      }
    }

    else if (a3 == 6)
    {
      v15 = 0xE800000000000000;
      if (v13 == 0x6465727574616566)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v15 = 0xEA00000000007365;
      if (v13 == 0x69726F6765746163)
      {
        goto LABEL_71;
      }
    }

LABEL_72:
    v16 = sub_24F92CE08();
    sub_24E8E2880(v11, v12);
    sub_24E8E2880(a2, a3);

    if (v16)
    {
      goto LABEL_76;
    }

    v9 = (v9 + 1) & v22;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 0xE400000000000000;
      v13 = 1936748641;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else if (v12 == 3)
    {
      v14 = 0xE700000000000000;
      v13 = 0x73657461647075;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      v13 = 0x686372616573;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_36;
  }

  if (!v12)
  {
    v14 = 0xE500000000000000;
    v13 = 0x7961646F74;
    if (a3 <= 4)
    {
      goto LABEL_55;
    }

    goto LABEL_36;
  }

  if (v12 == 1)
  {
    v14 = 0xE500000000000000;
    v13 = 0x73656D6167;
    if (a3 <= 4)
    {
      goto LABEL_55;
    }

    goto LABEL_36;
  }

LABEL_54:
  v13 = *v10;
  v14 = v10[1];
  if (a3 > 4)
  {
    goto LABEL_36;
  }

LABEL_55:
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v15 = 0xE400000000000000;
      if (v13 == 1936748641)
      {
        goto LABEL_71;
      }
    }

    else if (a3 == 3)
    {
      v15 = 0xE700000000000000;
      if (v13 == 0x73657461647075)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v13 == 0x686372616573)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_72;
  }

  if (!a3)
  {
    v15 = 0xE500000000000000;
    if (v13 == 0x7961646F74)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (a3 == 1)
  {
    v15 = 0xE500000000000000;
    if (v13 == 0x73656D6167)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

LABEL_70:
  v15 = a3;
  if (v13 != a2)
  {
    goto LABEL_72;
  }

LABEL_71:
  if (v14 != v15)
  {
    goto LABEL_72;
  }

  sub_24E8E2880(v11, v12);
  sub_24E8E2880(a2, a3);

LABEL_76:
  sub_24E8E29C4(a2, a3);
  v19 = *(*(v6 + 48) + 16 * v9);
  *a1 = v19;
  sub_24E8E2880(v19, *(&v19 + 1));
  return 0;
}

uint64_t sub_24ED7EAD4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24F92B0D8();
  sub_24F92D068();
  sub_24F92B218();
  v7 = sub_24F92D0B8();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_24F92B0D8();
      v13 = v12;
      if (v11 == sub_24F92B0D8() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_24F92CE08();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_24ED87BA0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_24ED7EC9C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2530529D0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24ED87D88(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7EDA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  v7 = sub_24F92D0B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E772724(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a2);
      sub_24E772780(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24E772780(a2);
    sub_24E772724(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E772724(a2, v16);
    v15 = *v3;
    sub_24ED87ED0(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24ED7EF08(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24F927D58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24ED8F50C(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
  v33 = a2;
  v11 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21E538, MEMORY[0x277CEC160], MEMORY[0x277CEC170]);
      v21 = sub_24F92AFF8();
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
    sub_24ED8805C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24ED7F204(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_24F92D068();
  sub_24F2032F0(v37, a2);
  v5 = sub_24F92D0B8();
  v35 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v34 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v33 = ~v6;
    v8 = 0xEB00000000646569;
    while (1)
    {
      v9 = *(*(v35 + 48) + v7);
      v36 = v7;
      if (v9 <= 3)
      {
        v12 = 0xD000000000000016;
        if (v9 == 2)
        {
          v13 = 0x800000024FA43300;
        }

        else
        {
          v12 = 0x646E756F72;
          v13 = 0xE500000000000000;
        }

        if (*(*(v35 + 48) + v7))
        {
          v14 = 0x526465646E756F72;
        }

        else
        {
          v14 = 0x6669636570736E75;
        }

        if (*(*(v35 + 48) + v7))
        {
          v15 = 0xEB00000000746365;
        }

        else
        {
          v15 = v8;
        }

        if (*(*(v35 + 48) + v7) <= 1u)
        {
          v11 = v14;
        }

        else
        {
          v11 = v12;
        }

        if (*(*(v35 + 48) + v7) <= 1u)
        {
          v10 = v15;
        }

        else
        {
          v10 = v13;
        }
      }

      else if (*(*(v35 + 48) + v7) <= 5u)
      {
        if (v9 == 4)
        {
          v11 = 0xD000000000000010;
          v10 = 0x800000024FA43320;
        }

        else
        {
          v10 = 0xE400000000000000;
          v11 = 1819044208;
        }
      }

      else if (v9 == 6)
      {
        v10 = 0xE300000000000000;
        v11 = 7364969;
      }

      else if (v9 == 7)
      {
        v10 = 0xE600000000000000;
        v11 = 0x746365527674;
      }

      else
      {
        v11 = 0x656E726F64616E75;
        v10 = 0xE900000000000064;
      }

      v16 = 0x656E726F64616E75;
      if (a2 == 7)
      {
        v16 = 0x746365527674;
      }

      v17 = 0xE900000000000064;
      if (a2 == 7)
      {
        v17 = 0xE600000000000000;
      }

      if (a2 == 6)
      {
        v16 = 7364969;
        v17 = 0xE300000000000000;
      }

      v18 = 1819044208;
      if (a2 == 4)
      {
        v18 = 0xD000000000000010;
      }

      v19 = 0x800000024FA43320;
      if (a2 != 4)
      {
        v19 = 0xE400000000000000;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0xD000000000000016;
      if (a2 == 2)
      {
        v21 = 0x800000024FA43300;
      }

      else
      {
        v20 = 0x646E756F72;
        v21 = 0xE500000000000000;
      }

      if (a2)
      {
        v22 = 0x526465646E756F72;
      }

      else
      {
        v22 = 0x6669636570736E75;
      }

      if (a2)
      {
        v23 = 0xEB00000000746365;
      }

      else
      {
        v23 = v8;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a2 <= 3u ? v20 : v16;
      v25 = a2 <= 3u ? v21 : v17;
      if (v11 == v24 && v10 == v25)
      {
        break;
      }

      v26 = a2;
      v27 = v8;
      v28 = sub_24F92CE08();

      if (v28)
      {
        goto LABEL_64;
      }

      v7 = (v36 + 1) & v33;
      v8 = v27;
      a2 = v26;
      if (((*(v34 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    result = 0;
    LOBYTE(a2) = *(*(v35 + 48) + v36);
  }

  else
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = *v31;
    sub_24ED88460(a2, v7, isUniquelyReferenced_nonNull_native);
    *v31 = v37[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7F584(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  MEMORY[0x253052A00](a2);
  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24ED88810(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED7F67C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_24E602068(&qword_27F22F0A8, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D508]);
  v31 = a2;
  v11 = sub_24F92AEE8();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_24E602068(&qword_27F22F0B0, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D510]);
      v19 = sub_24F92AFF8();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_24ED88970(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_24ED7F960(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24F92A278();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24ED8F50C(&qword_27F22F080, MEMORY[0x277D22300], MEMORY[0x277D22308]);
  v33 = a2;
  v11 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F22F088, MEMORY[0x277D22300], MEMORY[0x277D22310]);
      v21 = sub_24F92AFF8();
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
    sub_24ED88C14(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24ED7FC40(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24F92A2C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24ED8F50C(&qword_27F21E5C8, MEMORY[0x277D22320], MEMORY[0x277D22328]);
  v33 = a2;
  v11 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21E5D0, MEMORY[0x277D22320], MEMORY[0x277D22330]);
      v21 = sub_24F92AFF8();
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
    sub_24ED88EDC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24ED7FF20(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_24F92D068();
  sub_24EDC9B90(v15, a2);
  v6 = sub_24F92D0B8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_24EDD4478(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[0] = *v2;

    sub_24ED891A4(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_24ED800A0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = sub_24F92D058();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_24ED88324(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24ED801C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24F92AA48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24ED8F50C(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
  v33 = a2;
  v11 = sub_24F92AEE8();
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
      sub_24ED8F50C(&qword_27F21BCA8, MEMORY[0x277D224C0], MEMORY[0x277D224D8]);
      v21 = sub_24F92AFF8();
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
    sub_24ED894C0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24ED804C8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_24F92C748();

    if (v17)
    {

      sub_24E69A5C4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_24F92C738();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_24ED80860(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_24ED84E4C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_24ED852BC(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_24E69A5C4(0, a3, a4);
    v19 = sub_24F92C3F8();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_24F92C408();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_24ED89330(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_24ED8073C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_24F92D068();
  v7 = a2 & 1;
  MEMORY[0x253052A00](v7);
  v8 = sub_24F92D0B8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24ED89788(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_24ED80860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_24F92C828();
    v23 = v10;
    sub_24F92C6F8();
    if (sub_24F92C778())
    {
      sub_24E69A5C4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_24ED84E4C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_24F92C3F8();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_24F92C778());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_24ED80A60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E558, &qword_24F95C760);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24F92D068();
      sub_24F92B218();
      v21 = sub_24F92D0B8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED80CC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5F8, &qword_24F95C7F0);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
    v12 = v4 + 56;
    v37 = v4;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v20 = (*(v3 + 48) + ((v17 | (v6 << 6)) << 6));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v39 = v20[6];
      v40 = v20[4];
      v41 = v20[5];
      v42 = v20[7];
      sub_24F92D068();
      if (v21)
      {
        sub_24F92D088();
        v25 = v21;
        sub_24F92B218();
      }

      else
      {
        v25 = 0;
        sub_24F92D088();
      }

      sub_24F92B218();
      sub_24F92D088();
      if (v41)
      {
        sub_24F92B218();
      }

      sub_24F92D088();
      if (v42)
      {
        sub_24F92B218();
      }

      v26 = sub_24F92D0B8();
      v5 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v14 = v22;
        v15 = v42;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v14 = v22;
      v15 = v42;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = (*(v37 + 48) + (v13 << 6));
      v10 = v38;
      *v16 = v14;
      v16[1] = v25;
      v16[2] = v23;
      v16[3] = v24;
      v16[4] = v40;
      v16[5] = v41;
      v16[6] = v39;
      v16[7] = v15;
      ++*(v37 + 16);
      v3 = v36;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED81020(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F120, &qword_24F99BB80);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED812B4(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F108, &qword_24F99BB70);
  v3 = sub_24F92C818();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
LABEL_13:
      sub_24F92D068();
      sub_24F92B218();
      v14 = sub_24F92D0B8();
      v15 = -1 << *(v4 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v11 + 8 * v17);
          if (v21 != -1)
          {
            v12 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_24ED814DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F118, &unk_24FA292D0);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED81758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F100, &qword_24F99BB68);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v17);
      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED819A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E8, &qword_24F99BB50);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED81C60(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F050, &qword_24F99BAF0);
  v3 = sub_24F92C818();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v2 + 48) + 72 * (v10 | (v4 << 6));
      v14 = *(v13 + 16);
      v15 = *(v13 + 48);
      v31 = *(v13 + 32);
      v32 = v15;
      v16 = *(v13 + 16);
      v29 = *v13;
      v30 = v16;
      v17 = *(v13 + 48);
      v26 = v31;
      v27 = v17;
      v33 = *(v13 + 64);
      v28 = *(v13 + 64);
      v24 = v29;
      v25 = v14;
      sub_24F92D068();
      GameActivityDraftPlayerInfo.hash(into:)(v23);
      sub_24F92D0B8();
      v18 = sub_24F92C6D8();
      *(v3 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v3 + 48) + 72 * v18;
      v20 = v32;
      *(v19 + 32) = v31;
      *(v19 + 48) = v20;
      *(v19 + 64) = v33;
      v21 = v30;
      *v19 = v29;
      *(v19 + 16) = v21;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= i)
      {
        break;
      }

      v12 = v5[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v3;
}

void sub_24ED81E98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8, &qword_24F95C7A0);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = sub_24F92C7B8();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED820F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F058, &unk_24FA29070);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED823B8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_24F92C818();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      v21 = sub_24F92D068();
      a4(v21);
      sub_24F92B218();

      v22 = sub_24F92D0B8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

void sub_24ED8262C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E560, &qword_24F95C768);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24F92D068();
      sub_24F92B218();
      v21 = sub_24F92D0B8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED8288C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F110, &qword_24F99BB78);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v22 = (*(v3 + 48) + 16 * (v19 | (v6 << 6)));
      v24 = *v22;
      v23 = v22[1];
      sub_24F92D068();
      sub_24E8E2880(v24, v23);
      sub_24F92B218();

      v13 = sub_24F92D0B8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v14) >> 6;
        while (++v16 != v26 || (v25 & 1) == 0)
        {
          v27 = v16 == v26;
          if (v16 == v26)
          {
            v16 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v16);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v5 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v23;
      ++*(v5 + 16);
      v3 = v30;
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v21 = v7[v6];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED82C74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E598, &qword_24F95C790);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24F92B0D8();
      sub_24F92D068();
      sub_24F92B218();
      v18 = sub_24F92D0B8();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED82EF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F130, &qword_24F99BB90);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x2530529D0](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED8312C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0F0, &qword_24F99BB58);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      sub_24F92D068();
      _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      v19 = sub_24F92D0B8();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED833A0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24F927D58();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E528, &qword_24F95C750);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24ED8F50C(&qword_27F21E530, MEMORY[0x277CEC160], MEMORY[0x277CEC168]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24ED836FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0E0, &qword_24F99BB48);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_24F92D068();
      sub_24F92B218();

      v13 = sub_24F92D0B8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED83A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0D8, &qword_24F99BB40);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v17);
      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED83CC8(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F0B8, &qword_24F99BB28);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24E602068(&qword_27F22F0A8, &qword_27F213980, &qword_24F93B520, MEMORY[0x277D0D508]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24ED84028(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24F92A278();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F090, &qword_24F99BB10);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24ED8F50C(&qword_27F22F080, MEMORY[0x277D22300], MEMORY[0x277D22308]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24ED84384(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24F92A2C8();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5C0, &qword_24F95C7A8);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24ED8F50C(&qword_27F21E5C8, MEMORY[0x277D22320], MEMORY[0x277D22328]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24ED846E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F128, &qword_24F99BB88);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    for (i = v4 + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_24F92D068();
      sub_24EDC9B90(v19, v16);
      sub_24F92D0B8();
      v17 = sub_24F92C6D8();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
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

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      bzero((v3 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v18;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_24ED848C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v28 = v4;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_24F92D058();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v28;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_24ED84ADC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24F92AA48();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F068, &qword_24F99BB00);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_24ED8F50C(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
      v21 = sub_24F92AEE8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_24ED84E4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_24F92C818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_24F92C3F8();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_24ED8506C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E590, &qword_24F95C788);
  v4 = sub_24F92C818();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24F92D068();
      MEMORY[0x253052A00](v17);
      v18 = sub_24F92D0B8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_24ED852BC(uint64_t a1, uint64_t a2)
{
  sub_24F92C3F8();
  result = sub_24F92C6D8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_24ED85340(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24ED80A60(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24ED898F0();
      goto LABEL_16;
    }

    sub_24ED8B188(v8 + 1);
  }

  v10 = *v4;
  sub_24F92D068();
  sub_24F92B218();
  v11 = sub_24F92D0B8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED854C0(__int128 *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_41;
  }

  if (a3)
  {
    sub_24ED80CC0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED89A4C();
      goto LABEL_41;
    }

    sub_24ED8B3C0(v6 + 1);
  }

  v8 = *v3;
  v9 = result[1];
  v45 = *result;
  v46 = v9;
  v10 = result[3];
  v47 = result[2];
  v48 = v10;
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)(v44);
  v11 = sub_24F92D0B8();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  v43 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *(result + 1);
    v42 = *(result + 2);
    v40 = *result;
    v41 = *(result + 3);
    v39 = *(result + 5);
    v34 = *(result + 6);
    v35 = *(result + 4);
    v36 = *(result + 7);
    v15 = *(v8 + 48);
    do
    {
      v16 = (v15 + (a2 << 6));
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      v22 = v16[6];
      v23 = v16[7];
      if (v17)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        v24 = *v16 == v40 && v17 == v14;
        if (!v24 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      v25 = v18 == v42 && v19 == v41;
      if (!v25 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v21)
      {
        if (!v39)
        {
          goto LABEL_11;
        }

        v26 = v20 == v35 && v21 == v39;
        if (!v26 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v39)
      {
        goto LABEL_11;
      }

      if (v23)
      {
        if (v36 && (v22 == v34 && v23 == v36 || (sub_24F92CE08() & 1) != 0))
        {
LABEL_40:
          sub_24F92CF78();
          __break(1u);
          break;
        }
      }

      else if (!v36)
      {
        goto LABEL_40;
      }

LABEL_11:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_41:
  v27 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = (*(v27 + 48) + (a2 << 6));
  v29 = result[1];
  *v28 = *result;
  v28[1] = v29;
  v30 = result[3];
  v28[2] = result[2];
  v28[3] = v30;
  v31 = *(v27 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v33;
  }
}

void sub_24ED85764(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_24ED81020(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED8A80C(&qword_27F22F120, &qword_24F99BB80);
      goto LABEL_28;
    }

    sub_24ED8B6D0(v6 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  if (v5)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0x656461637261;
  }

  if (v5)
  {
    v10 = 0x800000024FA421F0;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  sub_24F92B218();

  v11 = sub_24F92D0B8();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0xD000000000000016 : 0x656461637261;
      v15 = *(*(v8 + 48) + a2) ? 0x800000024FA421F0 : 0xE600000000000000;
      if (v14 == v9 && v15 == v10)
      {
        goto LABEL_31;
      }

      v17 = sub_24F92CE08();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  sub_24F92CF78();
  __break(1u);
}

unint64_t sub_24ED85978(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_24ED812B4(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_24ED8B934(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_24ED89BD0();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

void sub_24ED85A98(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_24ED814DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED8A80C(&qword_27F22F118, &unk_24FA292D0);
      goto LABEL_28;
    }

    sub_24ED8BB20(v6 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  if (v5)
  {
    v9 = 7304045;
  }

  else
  {
    v9 = 1701736302;
  }

  if (v5)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  sub_24F92B218();

  v11 = sub_24F92D0B8();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2) ? 7304045 : 1701736302;
      v15 = *(*(v8 + 48) + a2) ? 0xE300000000000000 : 0xE400000000000000;
      if (v14 == v9 && v15 == v10)
      {
        goto LABEL_31;
      }

      v17 = sub_24F92CE08();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED85C98(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED81758(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24ED89CDC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24ED8BD6C(v5 + 1);
  }

  v8 = *v3;
  sub_24F92D068();
  MEMORY[0x253052A00](result);
  v9 = sub_24F92D0B8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED85DE4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24ED819A8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_24ED8A80C(&qword_27F22F0E8, &qword_24F99BB50);
        goto LABEL_28;
      }

      sub_24ED8BF8C(v6 + 1);
    }

    v8 = *v3;
    sub_24F92D068();
    sub_24F92B218();

    v9 = sub_24F92D0B8();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6D754E656E6F6870;
            v13 = 0xEB00000000726562;
            v14 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0x6464416C69616D65;
            v13 = 0xEC00000073736572;
            v14 = v5;
            if (!v5)
            {
LABEL_24:
              v16 = 0xE700000000000000;
              if (v12 == 0x636972656E6567)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x636972656E6567;
          v14 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6D754E656E6F6870;
        }

        else
        {
          v15 = 0x6464416C69616D65;
        }

        if (v14 == 1)
        {
          v16 = 0xEB00000000726562;
        }

        else
        {
          v16 = 0xEC00000073736572;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_24F92CE08();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    sub_24F92CF78();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_24ED860B8(__int128 *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_68;
  }

  if (a3)
  {
    sub_24ED81C60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED89E1C();
      goto LABEL_68;
    }

    sub_24ED8C214(v6 + 1);
  }

  v8 = *v3;
  v9 = result[3];
  v59 = result[2];
  v60 = v9;
  v61 = *(result + 32);
  v10 = result[1];
  v57 = *result;
  v58 = v10;
  sub_24F92D068();
  GameActivityDraftPlayerInfo.hash(into:)(v56);
  v11 = sub_24F92D0B8();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  v53 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v51 = ~v12;
    v42 = *(result + 65);
    v43 = *(result + 64);
    v13 = *result;
    v14 = *(result + 1);
    v54 = *(result + 3);
    v55 = *(result + 2);
    v48 = *(result + 5);
    v49 = *(result + 4);
    v47 = *(result + 6);
    v44 = *(result + 7);
    v52 = *(v8 + 48);
    do
    {
      v15 = v52 + 72 * a2;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      v21 = *(v15 + 56);
      v22 = *(v15 + 64);
      v50 = *(v15 + 65);
      v23 = *v15 == v13 && *(v15 + 8) == v14;
      if (!v23 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_11;
      }

      v24 = v16 == v55 && v17 == v54;
      if (!v24 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_11;
      }

      v25 = v19 == v49 && v18 == v48;
      if (!v25 && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (!v47)
        {
          goto LABEL_11;
        }

        v26 = *(v20 + 16);
        if (v26 != *(v47 + 16))
        {
          goto LABEL_11;
        }

        if (v26)
        {
          v27 = v20 == v47;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v32 = (v20 + 40);
          v33 = (v47 + 40);
          while (v26)
          {
            v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
            if (!v34 && (sub_24F92CE08() & 1) == 0)
            {
              goto LABEL_11;
            }

            v32 += 2;
            v33 += 2;
            if (!--v26)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
          __break(1u);
LABEL_71:
          __break(1u);
          return;
        }
      }

      else if (v47)
      {
        goto LABEL_11;
      }

LABEL_35:
      if (v21)
      {
        if (!v44)
        {
          goto LABEL_11;
        }

        v28 = *(v21 + 16);
        if (v28 != *(v44 + 16))
        {
          goto LABEL_11;
        }

        if (v28 && v21 != v44)
        {
          v29 = (v21 + 40);
          v30 = (v44 + 40);
          do
          {
            v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
            if (!v31 && (sub_24F92CE08() & 1) == 0)
            {
              goto LABEL_11;
            }

            v29 += 2;
            v30 += 2;
          }

          while (--v28);
        }
      }

      else if (v44)
      {
        goto LABEL_11;
      }

      if (v22 == 2)
      {
        if (v43 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (v43 == 2 || ((v22 ^ v43) & 1) != 0)
      {
        goto LABEL_11;
      }

      if (v50 == 2)
      {
        if (v42 == 2)
        {
          goto LABEL_67;
        }
      }

      else if (v42 != 2 && ((v50 ^ v42) & 1) == 0)
      {
LABEL_67:
        sub_24F92CF78();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v51;
    }

    while (((*(v53 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_68:
  v35 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v36 = *(v35 + 48) + 72 * a2;
  *(v36 + 64) = *(result + 32);
  v37 = result[3];
  *(v36 + 32) = result[2];
  *(v36 + 48) = v37;
  v38 = result[1];
  *v36 = *result;
  *(v36 + 16) = v38;
  v39 = *(v35 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    goto LABEL_71;
  }

  *(v35 + 16) = v41;
}

void sub_24ED8648C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED81E98(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_24ED89FAC();
      goto LABEL_12;
    }

    sub_24ED8C418(v7 + 1);
  }

  v9 = *v3;
  v10 = sub_24F92C7B8();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_24E65864C(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x253052150](v20, result);
      sub_24E6585F8(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED86604(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24ED820F8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_24ED8A80C(&qword_27F22F058, &unk_24FA29070);
        goto LABEL_28;
      }

      sub_24ED8C644(v6 + 1);
    }

    v8 = *v3;
    sub_24F92D068();
    sub_24F92B218();

    v9 = sub_24F92D0B8();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6E4F656461637261;
            v13 = 0xEA0000000000796CLL;
            v14 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xD000000000000015;
            v13 = 0x800000024FA3F9F0;
            v14 = v5;
            if (!v5)
            {
LABEL_24:
              v16 = 0xED0000796C6E4F64;
              if (v12 == 0x656C6C6174736E69)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0x656C6C6174736E69;
          v13 = 0xED0000796C6E4F64;
          v14 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6E4F656461637261;
        }

        else
        {
          v15 = 0xD000000000000015;
        }

        if (v14 == 1)
        {
          v16 = 0xEA0000000000796CLL;
        }

        else
        {
          v16 = 0x800000024FA3F9F0;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_24F92CE08();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    sub_24F92CF78();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_24ED868DC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24ED823B8(v7 + 1, &qword_27F21E620, &qword_24F95C838, UpdateListener.RefreshDataType.rawValue.getter);
    }

    else
    {
      if (v8 > v7)
      {
        sub_24ED8A80C(&qword_27F21E620, &qword_24F95C838);
        goto LABEL_99;
      }

      sub_24ED8C8D4(v7 + 1, &qword_27F21E620, &qword_24F95C838, UpdateListener.RefreshDataType.rawValue.getter);
    }

    v9 = *v3;
    sub_24F92D068();
    UpdateListener.RefreshDataType.rawValue.getter();
    sub_24F92B218();

    v10 = sub_24F92D0B8();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE300000000000000;
        v14 = 7105633;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x676E656C6C616863;
            v13 = 0xEA00000000007365;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x73646E65697266;
            break;
          case 3:
            v14 = 0x6552646E65697266;
            v13 = 0xEE00737473657571;
            break;
          case 4:
            v14 = 0xD000000000000015;
            v13 = 0x800000024FA41B30;
            break;
          case 5:
            v13 = 0xE500000000000000;
            v14 = 0x73656D6167;
            break;
          case 6:
            v13 = 0xE800000000000000;
            v14 = 0x73656C69666F7270;
            break;
          case 7:
            v13 = 0xE700000000000000;
            v14 = 0x73726579616C70;
            break;
          case 8:
            v14 = 0x6D65766569686361;
            v15 = 1937010277;
            goto LABEL_40;
          case 9:
            v14 = 0x6F6272656461656CLL;
            v15 = 1935962721;
            goto LABEL_40;
          case 0xA:
            v13 = 0xE500000000000000;
            v14 = 0x6F746F6870;
            break;
          case 0xB:
            v14 = 0x6F6272656461656CLL;
            v13 = 0xEF73746553647261;
            break;
          case 0xC:
            v14 = 0x6E65726566657270;
            v13 = 0xEB00000000736563;
            break;
          case 0xD:
            v13 = 0xE600000000000000;
            v14 = 0x7365726F6373;
            break;
          case 0xE:
            v13 = 0xE500000000000000;
            v14 = 0x736E727574;
            break;
          case 0xF:
            v14 = 0x73736553656D6167;
            goto LABEL_39;
          case 0x10:
            v13 = 0xE700000000000000;
            v14 = 0x73726174617661;
            break;
          case 0x11:
            v14 = 0x50656C69666F7270;
            v13 = 0xEE00796361766972;
            break;
          case 0x12:
            v14 = 0xD00000000000001ALL;
            v13 = 0x800000024FA41BD0;
            break;
          case 0x13:
            v14 = 0xD000000000000014;
            v13 = 0x800000024FA41BF0;
            break;
          case 0x14:
            v14 = 0x796C746E65636572;
            v13 = 0xEE00646579616C50;
            break;
          case 0x15:
            v14 = 0xD00000000000001DLL;
            v13 = 0x800000024FA41C10;
            break;
          case 0x16:
            v14 = 0x4D707041656D6167;
            v13 = 0xEF61746164617465;
            break;
          case 0x17:
            v14 = 0x7262694C656D6167;
            v13 = 0xEB00000000797261;
            break;
          case 0x18:
            v14 = 0xD000000000000014;
            v13 = 0x800000024FA41C50;
            break;
          case 0x19:
            v14 = 0xD000000000000012;
            v13 = 0x800000024FA41C70;
            break;
          case 0x1A:
            v14 = 0x7463697274736572;
LABEL_39:
            v15 = 1936617321;
LABEL_40:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x1B:
            v14 = 0xD000000000000010;
            v13 = 0x800000024FA41C90;
            break;
          case 0x1C:
            v13 = 0xE700000000000000;
            v14 = 0x6C616974696E69;
            break;
          default:
            break;
        }

        v16 = 0xE300000000000000;
        v17 = 7105633;
        switch(v6)
        {
          case 1:
            v16 = 0xEA00000000007365;
            if (v14 != 0x676E656C6C616863)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 2:
            v16 = 0xE700000000000000;
            v18 = 0x646E65697266;
            goto LABEL_62;
          case 3:
            v24 = 0x6552646E65697266;
            v25 = 0x737473657571;
            goto LABEL_66;
          case 4:
            v16 = 0x800000024FA41B30;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 5:
            v16 = 0xE500000000000000;
            v19 = 1701667175;
            goto LABEL_69;
          case 6:
            v16 = 0xE800000000000000;
            if (v14 != 0x73656C69666F7270)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 7:
            v16 = 0xE700000000000000;
            v18 = 0x726579616C70;
            goto LABEL_62;
          case 8:
            v22 = 0x6D65766569686361;
            v23 = 1937010277;
            goto LABEL_97;
          case 9:
            v22 = 0x6F6272656461656CLL;
            v23 = 1935962721;
            goto LABEL_97;
          case 10:
            v16 = 0xE500000000000000;
            if (v14 != 0x6F746F6870)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 11:
            v16 = 0xEF73746553647261;
            if (v14 != 0x6F6272656461656CLL)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 12:
            v20 = 0x6E65726566657270;
            v21 = 7562595;
            goto LABEL_87;
          case 13:
            v16 = 0xE600000000000000;
            if (v14 != 0x7365726F6373)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 14:
            v16 = 0xE500000000000000;
            v19 = 1852994932;
LABEL_69:
            if (v14 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 15:
            v22 = 0x73736553656D6167;
            goto LABEL_96;
          case 16:
            v16 = 0xE700000000000000;
            v18 = 0x726174617661;
LABEL_62:
            if (v14 != (v18 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 17:
            v24 = 0x50656C69666F7270;
            v25 = 0x796361766972;
            goto LABEL_66;
          case 18:
            v16 = 0x800000024FA41BD0;
            if (v14 != 0xD00000000000001ALL)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 19:
            v16 = 0x800000024FA41BF0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 20:
            v24 = 0x796C746E65636572;
            v25 = 0x646579616C50;
LABEL_66:
            v16 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v24)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 21:
            v16 = 0x800000024FA41C10;
            if (v14 != 0xD00000000000001DLL)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 22:
            v16 = 0xEF61746164617465;
            if (v14 != 0x4D707041656D6167)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 23:
            v20 = 0x7262694C656D6167;
            v21 = 7959137;
LABEL_87:
            v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v20)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 24:
            v16 = 0x800000024FA41C50;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 25:
            v16 = 0x800000024FA41C70;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 26:
            v22 = 0x7463697274736572;
LABEL_96:
            v23 = 1936617321;
LABEL_97:
            v16 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v22)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 27:
            v16 = 0x800000024FA41C90;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          case 28:
            v16 = 0xE700000000000000;
            v17 = 0x6C616974696E69;
            goto LABEL_90;
          default:
LABEL_90:
            if (v14 != v17)
            {
              goto LABEL_92;
            }

LABEL_91:
            if (v13 == v16)
            {
              goto LABEL_102;
            }

LABEL_92:
            v26 = sub_24F92CE08();

            if (v26)
            {
              goto LABEL_103;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_99:
  v27 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v6;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_102:

LABEL_103:
    sub_24F92CF78();
    __break(1u);
    JUMPOUT(0x24ED8718CLL);
  }

  *(v27 + 16) = v30;
}

void sub_24ED87274(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_24ED823B8(v6 + 1, &qword_27F22F0F8, &qword_24F99BB60, Shelf.ContentType.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24ED8A80C(&qword_27F22F0F8, &qword_24F99BB60);
      goto LABEL_16;
    }

    sub_24ED8C8D4(v6 + 1, &qword_27F22F0F8, &qword_24F99BB60, Shelf.ContentType.rawValue.getter);
  }

  v8 = *v3;
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  v9 = sub_24F92D0B8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = Shelf.ContentType.rawValue.getter();
      v14 = v13;
      if (v12 == Shelf.ContentType.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_24F92CE08();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED874B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24ED8262C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_24ED8A138();
      goto LABEL_16;
    }

    sub_24ED8CB18(v8 + 1);
  }

  v10 = *v4;
  sub_24F92D068();
  sub_24F92B218();
  v11 = sub_24F92D0B8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED87634(uint64_t result, int64_t a2, unint64_t a3, char a4)
{
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_24ED8288C(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_24ED8A294();
        goto LABEL_81;
      }

      sub_24ED8CD50(v9 + 1);
    }

    v11 = *v4;
    sub_24F92D068();
    sub_24F204B30(v26, result, a2);
    v4 = v26;
    v12 = sub_24F92D0B8();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v25 = ~v13;
      do
      {
        v14 = (*(v11 + 48) + 16 * a3);
        v4 = *v14;
        v5 = v14[1];
        if (v5 <= 4)
        {
          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v16 = 0xE400000000000000;
              v15 = 1936748641;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else if (v5 == 3)
            {
              v16 = 0xE700000000000000;
              v15 = 0x73657461647075;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v16 = 0xE600000000000000;
              v15 = 0x686372616573;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_62;
          }

          if (!v5)
          {
            v16 = 0xE500000000000000;
            v15 = 0x7961646F74;
            if (a2 > 4)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }

          if (v5 == 1)
          {
            v16 = 0xE500000000000000;
            v15 = 0x73656D6167;
            if (a2 > 4)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v5 <= 7)
          {
            if (v5 == 5)
            {
              v16 = 0xE600000000000000;
              v15 = 0x656461637261;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else if (v5 == 6)
            {
              v16 = 0xE800000000000000;
              v15 = 0x6465727574616566;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v15 = 0x69726F6765746163;
              v16 = 0xEA00000000007365;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_62;
          }

          switch(v5)
          {
            case 8:
              v16 = 0xE600000000000000;
              v15 = 0x737472616863;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            case 9:
              v15 = 0x6573616863727570;
              v16 = 0xE900000000000064;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            case 10:
              v16 = 0xE900000000000073;
              v15 = 0x64616F6C6E776F64;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
          }
        }

        v15 = *v14;
        v16 = v14[1];
        if (a2 > 4)
        {
LABEL_43:
          if (a2 <= 7)
          {
            if (a2 == 5)
            {
              v17 = 0xE600000000000000;
              if (v15 == 0x656461637261)
              {
                goto LABEL_78;
              }
            }

            else if (a2 == 6)
            {
              v17 = 0xE800000000000000;
              if (v15 == 0x6465727574616566)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v17 = 0xEA00000000007365;
              if (v15 == 0x69726F6765746163)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_79;
          }

          switch(a2)
          {
            case 8:
              v17 = 0xE600000000000000;
              if (v15 == 0x737472616863)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
            case 9:
              v17 = 0xE900000000000064;
              if (v15 == 0x6573616863727570)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
            case 10:
              v17 = 0xE900000000000073;
              if (v15 == 0x64616F6C6E776F64)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
          }

          goto LABEL_77;
        }

LABEL_62:
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v17 = 0xE400000000000000;
            if (v15 == 1936748641)
            {
              goto LABEL_78;
            }
          }

          else if (a2 == 3)
          {
            v17 = 0xE700000000000000;
            if (v15 == 0x73657461647075)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v17 = 0xE600000000000000;
            if (v15 == 0x686372616573)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_79;
        }

        if (!a2)
        {
          v17 = 0xE500000000000000;
          if (v15 == 0x7961646F74)
          {
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        if (a2 == 1)
        {
          v17 = 0xE500000000000000;
          if (v15 == 0x73656D6167)
          {
            goto LABEL_78;
          }

          goto LABEL_79;
        }

LABEL_77:
        v17 = a2;
        if (v15 == result)
        {
LABEL_78:
          if (v16 == v17)
          {
            goto LABEL_84;
          }
        }

LABEL_79:
        v18 = sub_24F92CE08();
        sub_24E8E2880(v4, v5);
        sub_24E8E2880(result, a2);

        if (v18)
        {
          goto LABEL_85;
        }

        a3 = (a3 + 1) & v25;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_81:
  v19 = *v24;
  *(*v24 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = result;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_84:
    sub_24E8E2880(v4, v5);
    sub_24E8E2880(result, a2);

LABEL_85:
    sub_24F92CF78();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }
}

void sub_24ED87BA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_24ED82C74(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_24ED8A3F0();
      goto LABEL_16;
    }

    sub_24ED8D114(v7 + 1);
  }

  v9 = *v3;
  sub_24F92B0D8();
  sub_24F92D068();
  sub_24F92B218();
  v10 = sub_24F92D0B8();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_24F92B0D8();
      v15 = v14;
      if (v13 == sub_24F92B0D8() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_24F92CE08();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_24F92CF78();
  __break(1u);
}

void sub_24ED87D88(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24ED82EF0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_24ED8A554();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24ED8D368(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x2530529D0](*(*v3 + 40), v4, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24F92CF78();
  __break(1u);
}