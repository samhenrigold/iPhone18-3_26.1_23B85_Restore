void sub_1A46C083C(id a1, char *a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A446720C();

  if (v12 != a1)
  {
    return;
  }

  v171 = a2;
  v165 = v11;
  v166 = v9;
  v167 = v7;
  [a1 fetchPropertySetsIfNeeded];
  v172 = objc_opt_self();
  v173 = a1;
  v13 = [v172 hardwareDisplayStringsForItem_];
  v169 = v5;
  v170 = v4;
  v168 = v8;
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = sub_1A524C3E4();

  if (!v15)
  {
LABEL_8:
    v23 = 1;
    goto LABEL_11;
  }

  v16 = sub_1A524C674();
  if (*(v15 + 16))
  {
    v18 = sub_1A3C5DCA4(v16, v17);
    v20 = v19;

    if (v20)
    {
      v21 = (*(v15 + 56) + 16 * v18);
      v22 = v21[1];
      v164 = *v21;
      v163 = v22;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_11:
  v24 = sub_1A524C634();
  v25 = PXLocalizedString(v24);

  v164 = sub_1A524C674();
  v163 = v26;

  if (v23)
  {
    v27 = 1;
  }

  else
  {
    v28 = sub_1A524C674();
    if (*(v15 + 16))
    {
      v30 = sub_1A3C5DCA4(v28, v29);
      v32 = v31;

      if (v32)
      {
        v33 = (*(v15 + 56) + 16 * v30);
        v34 = v33[1];
        v162 = *v33;
        v161 = v34;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v27 = 0;
  }

  v35 = sub_1A524C634();
  v36 = PXLocalizedString(v35);

  v162 = sub_1A524C674();
  v161 = v37;

  v38 = sub_1A446720C();
  [v38 fetchPropertySetsIfNeeded];

  v39 = sub_1A446720C();
  v40 = [v39 px_isFrontRear];

  if (v40)
  {
    if ((v27 & 1) == 0)
    {
      v41 = sub_1A524C674();
      if (*(v15 + 16))
      {
        v43 = sub_1A3C5DCA4(v41, v42);
        v45 = v44;

        if (v45)
        {
          v46 = (*(v15 + 56) + 16 * v43);
          v47 = v46[1];
          v160 = *v46;
          v159 = v47;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
      }
    }

    v48 = sub_1A524C634();
    v49 = PXLocalizedString(v48);

    v160 = sub_1A524C674();
    v159 = v50;

    if (v27)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v160 = 0;
  v159 = 0;
  if ((v27 & 1) == 0)
  {
LABEL_27:
    v51 = sub_1A524C674();
    if (*(v15 + 16))
    {
      v53 = sub_1A3C5DCA4(v51, v52);
      v55 = v54;

      if (v55)
      {
        v56 = (*(v15 + 56) + 16 * v53);
        v57 = v56[1];
        v158 = *v56;
        v157 = v57;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }
  }

LABEL_31:
  v58 = sub_1A524C634();
  v59 = PXLocalizedString(v58);

  v158 = sub_1A524C674();
  v157 = v60;

  v61 = v172;
  v62 = v173;
  v63 = [v172 symbolSystemNamesForItem_];
  sub_1A3C52C70(0, &qword_1EB126978, off_1E771E5F0);
  v156 = sub_1A524CA34();

  v64 = [objc_opt_self() cameraSettingsDisplayStringsForItem_];
  v65 = sub_1A524CA34();

  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v65 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v67 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v68 = 4;
    while (1)
    {
      v69 = v68 - 4;
      if ((v65 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1A59097F0](v68 - 4, v65);
      }

      else
      {
        if (v69 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v70 = *(v65 + 8 * v68);
      }

      v71 = v70;
      v62 = v68 - 3;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if ([v70 isEmpty])
      {
      }

      else
      {
        sub_1A524E514();
        v61 = *(aBlock[0] + 16);
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      ++v68;
      if (v62 == i)
      {
        v72 = aBlock[0];
        v61 = v172;
        v62 = v173;
        v67 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_46:

  aBlock[0] = v67;
  if (v72 >> 62)
  {
    v73 = sub_1A524E2B4();
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    v175 = v72 & 0xFFFFFFFFFFFFFF8;
    v176 = v72 & 0xC000000000000001;
    v174 = "PXInfoPanelEXIFVideoHDRBadge";
    v62 = 4;
    while (1)
    {
      v75 = v62 - 4;
      if (v176)
      {
        v76 = MEMORY[0x1A59097F0](v62 - 4, v72);
      }

      else
      {
        if (v75 >= *(v175 + 16))
        {
          goto LABEL_94;
        }

        v76 = *(v72 + 8 * v62);
      }

      v77 = v76;
      v78 = v62 - 3;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_93;
      }

      v65 = v72;
      v79 = [v76 content];
      v80 = sub_1A524C704();
      v82 = v81;
      v83 = sub_1A524C634();
      v84 = PXLocalizedString(v83);

      v61 = sub_1A524C674();
      v86 = v85;

      if (v80 == v61 && v82 == v86)
      {
      }

      else
      {
        v61 = sub_1A524EAB4();

        if ((v61 & 1) == 0)
        {
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
          goto LABEL_52;
        }
      }

LABEL_52:
      v72 = v65;
      ++v62;
      if (v78 == v73)
      {
        v74 = aBlock[0];
        v61 = v172;
        v62 = v173;
        break;
      }
    }
  }

  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    v88 = sub_1A524E2B4();
  }

  else
  {
    v88 = *(v74 + 16);
  }

  v89 = [v62 isVideo];
  v90 = [v62 isHDRVideo];
  v91 = [v61 semanticStylesDisplayStringForItem_];
  if (v91)
  {
    v92 = v91;
    v93 = sub_1A524C674();
    v175 = v94;
    v176 = v93;
  }

  else
  {
    v175 = 0;
    v176 = 0;
  }

  v95 = [v61 megaPixelsDisplayStringForItem:v62 isAccessibility:0];
  if (v95)
  {
    v96 = v95;
    v97 = sub_1A524C674();
    v173 = v98;
    v174 = v97;
  }

  else
  {
    v173 = 0;
    v174 = 0;
  }

  v99 = [v61 megaPixelsDisplayStringForItem:v62 isAccessibility:1];
  if (v99)
  {
    v100 = v99;
    v172 = sub_1A524C674();
    v155 = v101;
  }

  else
  {
    v172 = 0;
    v155 = 0;
  }

  v102 = [v61 resolutionDisplayStringForItem:v62 isAccessibility:0];
  v154 = sub_1A524C674();
  v153 = v103;

  v104 = [v61 resolutionDisplayStringForItem:v62 isAccessibility:1];
  v105 = sub_1A524C674();
  v152 = v106;

  v107 = [v62 originalMetadataProperties];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 originalFilesize];

    if (v109)
    {
      if (qword_1EB175700 != -1)
      {
        swift_once();
      }

      v110 = [qword_1EB175708 stringFromByteCount_];
      v148 = sub_1A524C674();
      v147 = v111;
    }

    else
    {
      v148 = 0;
      v147 = 0;
    }

    v112 = [v62 isVideo];
    v151 = v90;
    v150 = v89;
    v149 = v105;
    v146 = v72;
    v113 = v88;
    if (v112)
    {
      v114 = v171;
      v115 = sub_1A46BF618();
      v116 = *&v114[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue];
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v62;

      v119 = v62;
      v120 = sub_1A4426BCC();
      (*((*MEMORY[0x1E69E7D40] & *v115) + 0x88))(v119, v116, v120, sub_1A46C236C, v118);

      v122 = v169;
      v121 = v170;
      v123 = v167;
      v124 = v164;
    }

    else
    {
      v125 = [v61 localizedFileFormatForItem_];
      if (v125)
      {
        v126 = v125;
        v127 = sub_1A524C674();
        v129 = v128;
      }

      else
      {
        v127 = 0;
        v129 = 0;
      }

      v122 = v169;
      v121 = v170;
      v123 = v167;
      v124 = v164;
      v114 = v171;
      v130 = &v171[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
      swift_beginAccess();
      *v130 = v127;
      v130[1] = v129;
    }

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v131 = sub_1A524D474();
    v132 = swift_allocObject();
    *(v132 + 16) = v114;
    *(v132 + 24) = v124;
    v133 = v162;
    *(v132 + 32) = v163;
    *(v132 + 40) = v133;
    v134 = v160;
    *(v132 + 48) = v161;
    *(v132 + 56) = v134;
    v135 = v158;
    *(v132 + 64) = v159;
    *(v132 + 72) = v135;
    v136 = v156;
    *(v132 + 80) = v157;
    *(v132 + 88) = v136;
    *(v132 + 96) = v146;
    *(v132 + 104) = v113 != 0;
    *(v132 + 105) = v150;
    *(v132 + 106) = v151;
    v137 = v175;
    *(v132 + 112) = v176;
    *(v132 + 120) = v137;
    v138 = v173;
    *(v132 + 128) = v174;
    *(v132 + 136) = v138;
    v139 = v155;
    *(v132 + 144) = v172;
    *(v132 + 152) = v139;
    v140 = v153;
    *(v132 + 160) = v154;
    *(v132 + 168) = v140;
    v141 = v152;
    *(v132 + 176) = v149;
    *(v132 + 184) = v141;
    v142 = v147;
    *(v132 + 192) = v148;
    *(v132 + 200) = v142;
    aBlock[4] = sub_1A46C1EE4;
    aBlock[5] = v132;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_34_4;
    v143 = _Block_copy(aBlock);
    v144 = v114;

    v145 = v165;
    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v145, v123, v143);
    _Block_release(v143);

    (*(v122 + 8))(v123, v121);
    (*(v166 + 8))(v145, v168);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A46C16F4()
{
  PXDisplayCollectionDetailedCountsMake();
  v0 = sub_1A46BF618();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
}

void sub_1A46C1770(double a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__isContentLoaded;
  sub_1A46C1C94(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v4 = v3;
  v5 = *(*(v3 - 8) + 8);
  v5(v1 + v2, v3);
  v5(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__showRawEXIF, v4);
  v6 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel__videoHDRBadgeTitle;
  sub_1A46C1C10(0, &qword_1EB128B38, MEMORY[0x1E695C070]);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_metadataProcessingQueue);
}

id sub_1A46C1BDC()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  qword_1EB175708 = result;
  return result;
}

void sub_1A46C1C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46C1C94(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A46C1C94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for PhotosDetailsEXIFWidgetViewModel(uint64_t a1)
{
  result = qword_1EB18F660;
  if (!qword_1EB18F660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46C1D74(uint64_t a1)
{
  sub_1A46C1C94(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1A46C1C10(319, &qword_1EB128B38, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A46C1EE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_makeAndModelDescription);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46C236C(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1A446720C();

    if (v9 != v5 || (a2 & 1) != 0)
    {

      return result;
    }

    v10 = *(a1 + OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType);
    if (v10 > 3)
    {
      if (v10 == 4 || v10 == 8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if (v10 == 2)
      {
LABEL_14:
        v14 = sub_1A524C634();
        v15 = PXLocalizedString(v14);

        sub_1A524C674();
        goto LABEL_15;
      }
    }

    v11 = sub_1A524D244();
    v12 = sub_1A475874C();
    swift_beginAccess();
    v13 = *v12;
    sub_1A5246DF4(v11, &dword_1A3C1C000, v13, "Encountered unknown PXMetadataUtilitiesHDRType. Falling back to not showing any HDR type.", 89, 2, MEMORY[0x1E69E7CC0]);

LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v8;
    sub_1A52479F4();
    if (![v5 px_isProRes])
    {
      v19 = [objc_opt_self() localizedFileFormatForItem_];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A524C674();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v29 = &v16[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
      swift_beginAccess();
      *v29 = v21;
      v29[1] = v23;
      goto LABEL_27;
    }

    if (*(a1 + OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog) == 1)
    {
      v17 = sub_1A524C634();
      v18 = PXLocalizedString(v17);
    }

    else
    {
      if (![v5 px_isProResRAW])
      {
        v18 = [objc_opt_self() localizedFileFormatForItem_];
        if (!v18)
        {
          v25 = 0;
          v27 = 0;
          goto LABEL_24;
        }

LABEL_23:
        v25 = sub_1A524C674();
        v27 = v26;

LABEL_24:
        v28 = &v16[OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsEXIFWidgetViewModel_localizedFormatDescription];
        swift_beginAccess();
        *v28 = v25;
        v28[1] = v27;
LABEL_27:

        return result;
      }

      v24 = sub_1A524C634();
      v17 = sub_1A524C634();
      v18 = PXLocalizedStringFromTable(v24, v17);
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1A46C2768()
{
  v1 = sub_1A52402A4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_1A5240364();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A46C2880, 0, 0);
}

uint64_t sub_1A46C2880()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v0[2] = sub_1A4121674();
  sub_1A5240294();
  sub_1A4120BE0();
  sub_1A5240284();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A46C2978()
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524CC94();
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1A3DCD53C(0, 0, v2, &unk_1A5357AA0, v4);

  return sub_1A3D97040(v2);
}

uint64_t sub_1A46C2A70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A46C2768();
}

id sub_1A46C2C58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXAppIntentsEngagementCompatibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A46C2C90()
{
  result = qword_1EB140370;
  if (!qword_1EB140370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140370);
  }

  return result;
}

uint64_t sub_1A46C2D04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A46C2768();
}

uint64_t LemonadePickerView.photosImageProvider.getter()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v6 = sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4(v6, &dword_1A3C1C000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v8 = sub_1A3E04274(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

uint64_t LemonadePickerView.init(photoLibrary:configuration:selectionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void LemonadePickerView.makeUIViewController(context:)()
{
  sub_1A46C6FD4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    swift_unknownObjectRetain();
    v11 = off_1E771E000;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    v14 = sub_1A3E04274(v8, 0);
    (*(v5 + 8))(v7, v4, v14);
    v11 = off_1E771E000;
    if (!v23[1])
    {
      goto LABEL_9;
    }
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = [v15 imageManager];
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_9:
  v16 = [objc_opt_self() defaultManager];
LABEL_10:
  sub_1A46C3318(0);
  sub_1A5249FD4();
  v17 = objc_allocWithZone(v11[467]);

  v18 = [v17 initWithImageManager:v16 library:v9];
  type metadata accessor for LemonadePickerRootViewModel(0);
  v19 = sub_1A5244084();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = v9;
  v21 = v18;
  v22 = v10;
  sub_1A3C5A374();
  sub_1A49C7F18(v20, v21, v22, v3);
}

void sub_1A46C32A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  sub_1A46C56F8(a1, a2, a3, a4, v5, ObjectType, a5);
}

void sub_1A46C3318(uint64_t a1)
{
  if (!qword_1EB140378)
  {
    sub_1A46C3374();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140378);
    }
  }
}

unint64_t sub_1A46C3374()
{
  result = qword_1EB140380;
  if (!qword_1EB140380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140380);
  }

  return result;
}

uint64_t LemonadePickerView.makeCoordinator()()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  type metadata accessor for LemonadePickerView.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return v3;
}

uint64_t sub_1A46C343C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double sub_1A46C3488(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_1A46C34DC(uint64_t a1)
{
  v3 = (*(*v1 + 88))();
  v3(a1);

  return result;
}

uint64_t LemonadePickerView.Coordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1A46C35C8@<D0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  type metadata accessor for LemonadePickerView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;

  return result;
}

uint64_t sub_1A46C3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46C3374();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A46C3684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46C3374();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A46C36E8(uint64_t a1)
{
  sub_1A46C3374();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A46C3750(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PickerRootViewControllerFactory();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A46C37F8()
{
  v1 = v0;
  sub_1A46C5DBC(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v62 - v7;
  v9 = type metadata accessor for LemonadePickerRootViewController();
  v63.receiver = v0;
  v63.super_class = v9;
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v10 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel];
  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result bounds];
    v14 = v13;
    v16 = v15;

    result = [v1 view];
    if (result)
    {
      v17 = result;
      v62[3] = v3;
      v62[4] = v5;
      [result safeAreaInsets];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = type metadata accessor for LemonadePickerRootViewModel(0);
      v27 = sub_1A46C70DC(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0A0);
      v64.top = v19;
      v64.left = v21;
      v62[1] = v27;
      v62[2] = v26;
      v64.bottom = v23;
      v64.right = v25;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v16, v14), v64);

      v28 = v1;
      sub_1A3C7A150(v1);

      v29 = [v28 px_splitViewController];
      if (v29)
      {
        v30 = v29;

        sub_1A4655D24(1);

        sub_1A4655DC0([v30 isSidebarVisible]);

        [v30 registerChangeObserver_];
      }

      sub_1A44F4E38(v10, v8);
      KeyPath = swift_getKeyPath();
      v32 = *(v10 + 16);
      sub_1A46C61E4(0);
      v34 = &v8[*(v33 + 36)];
      *v34 = KeyPath;
      v34[1] = v32;
      v35 = swift_getKeyPath();
      v36 = *&v28[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection];
      sub_1A46C60B4(0, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
      v38 = &v8[*(v37 + 36)];
      *v38 = v35;
      v38[1] = v36;
      v39 = swift_getKeyPath();
      v40 = *&v28[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration];
      v41 = MEMORY[0x1E69E7D40];
      v42 = *MEMORY[0x1E69E7D40] & *v40;
      v62[0] = v10;
      v43 = *(v42 + 672);
      v44 = v32;

      LOBYTE(v35) = v43(v45);
      sub_1A46C6128(0);
      v47 = &v8[*(v46 + 36)];
      *v47 = v39;
      v47[8] = v35 & 1;
      v48 = swift_getKeyPath();
      sub_1A46C60B4(0, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
      v50 = &v8[*(v49 + 36)];
      *v50 = v48;
      v50[1] = v40;
      v51 = swift_getKeyPath();
      v52 = *((*v41 & *v40) + 0x2B8);
      v53 = v40;
      v54 = v52();
      sub_1A46C5FF8(0);
      v56 = &v8[*(v55 + 36)];
      *v56 = v51;
      v56[1] = v54;
      v57 = swift_getKeyPath();
      v58 = (*((*v41 & *v53) + 0x558))();
      sub_1A46C5F70(0);
      v60 = &v8[*(v59 + 36)];
      *v60 = v57;
      v60[1] = v58;
      swift_getKeyPath();
      sub_1A46C60B4(0, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
      sub_1A3D63A24(0);
      sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
      v61 = v28;
      sub_1A5245CA4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void *sub_1A46C41B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4187E1C();
  *a1 = v3;
  return result;
}

void sub_1A46C4270()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for LemonadePickerRootViewController();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      type metadata accessor for LemonadePickerRootViewModel(0);
      sub_1A46C70DC(&qword_1EB1403D0, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0A0);
      v18.top = v10;
      v18.left = v12;
      v18.bottom = v14;
      v18.right = v16;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A46C44F4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A46C4590, v5, v4);
}

uint64_t sub_1A46C4590()
{
  v1 = PXLemonadeReroutedProgrammaticDestination(*(v0 + 152));
  *(v0 + 200) = v1;
  if (sub_1A48D52B0(v1))
  {

    v2 = *(v0 + 8);

    return v2(6);
  }

  else
  {
    v4 = *(v0 + 152);
    sub_1A48D530C(v1);
    if ([v4 isLemonadeHome])
    {

      sub_1A4654EB0(MEMORY[0x1E69E7CC0]);
    }

    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1A46C4760;
    v7 = swift_continuation_init();
    sub_1A43A6C50(0);
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A43A6168;
    *(v0 + 104) = &block_descriptor_254;
    *(v0 + 112) = v7;
    [v5 px:v6 dismissPresentedViewControllerWithOptions:v0 + 80 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A46C4760()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A46C4D84;
  }

  else
  {
    v5 = sub_1A46C4890;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A46C4890()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v2 = v0[21];
    v3 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext;
    v0[27] = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext;
    v0[28] = *(v2 + v3);

    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_1A46C49AC;
    v5 = v0[25];
    v6 = v0[20];

    return sub_1A465A32C(v5, v6);
  }

  else
  {
    v8 = v0[25];

    sub_1A48D5578(v8);

    v9 = v0[1];

    return v9(v1);
  }
}

uint64_t sub_1A46C49AC(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A46C4E04;
  }

  else
  {

    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A46C4AC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A46C4AC8()
{
  if (v0[30] == 1)
  {
    v0[32] = *(v0[21] + v0[27]);

    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_1A46C4BDC;
    v2 = v0[25];
    v3 = v0[20];

    return sub_1A465A8EC(v2, v3);
  }

  else
  {
    v5 = v0[25];

    sub_1A48D5578(v5);

    v6 = v0[30];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1A46C4BDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A46C4E84;
  }

  else
  {

    v4[35] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A46C4D0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A46C4D0C()
{
  v1 = v0[25];

  sub_1A48D5578(v1);

  v2 = v0[35];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A46C4D84()
{

  swift_willThrow();
  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C4E04()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C4E84()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46C5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46C5124, v6, v5);
}

uint64_t sub_1A46C5124()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A44D8140;
  v8 = v0[2];
  v7 = v0[3];

  return sub_1A46C44F4(v8, v7);
}

id sub_1A46C51EC()
{
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();

  sub_1A5244234();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadePickerRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46C5370()
{
  sub_1A44D9F04(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    sub_1A52441D4();
    sub_1A3E7CAB0(0);
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = sub_1A5244204();
    (*(v6 + 8))(v3, v9, ObjectType, v6);
    swift_unknownObjectRelease();

    return sub_1A46C6BB4(v3, sub_1A44D9F04);
  }

  return result;
}

void sub_1A46C54B8()
{
  v1 = [v0 childViewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v2 = sub_1A524CA34();

  if (v2 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 contentScrollView];

  if (v5)
  {
    v7 = v5;
    [v0 setContentScrollView:v7 forEdge:15];
    v6 = [v0 parentViewController];
    [v6 setContentScrollView:v7 forEdge:15];
  }
}

void sub_1A46C56F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A46C6FD4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager:a3 library:a1];
  type metadata accessor for LemonadePickerRootViewModel(0);
  v14 = sub_1A5244084();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = a1;
  v16 = v13;
  v17 = a2;
  sub_1A3C5A374();
  sub_1A49C7F18(v15, v16, v17, v12);
}

id sub_1A46C58A0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v30 = a3;
  sub_1A46C6FD4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v28 - v8;
  v28 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel] = a1;
  v12 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration;
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration] = a2;
  *(v11 + 8) = &protocol witness table for LemonadePickerView.Coordinator;
  swift_unknownObjectWeakAssign();
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x360);

  v15 = a2;
  v16 = v14();
  (*((*v13 & *v15) + 0x348))(v16);
  sub_1A5244244();
  swift_allocObject();
  v17 = sub_1A5244214();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection] = v17;
  v18 = *&a4[v12];
  v19 = *((*v13 & *v18) + 0x290);

  v20 = v18;
  v19(v17);

  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LemonadeDetailsContext(0);
  v22 = v29;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  v32 = 3;
  v23 = *(a1 + 56);

  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext] = sub_1A3C799F0(v10, a1, &off_1F1720988, 0, v22, &v32, v23, 2);
  v24 = type metadata accessor for LemonadePickerRootViewController();
  v31.receiver = a4;
  v31.super_class = v24;
  v25 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  sub_1A46C7038();
  v26 = v25;

  sub_1A5244234();

  return v26;
}

uint64_t sub_1A46C5CFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A46C5088(v2, v3, v5, v4);
}

void sub_1A46C5E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A46C708C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A46C5EB4(uint64_t a1)
{
  if (!qword_1EB1403E8)
  {
    sub_1A46C60B4(255, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
    sub_1A46C708C(255, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1403E8);
    }
  }
}

void sub_1A46C5F70(uint64_t a1)
{
  if (!qword_1EB1403F8)
  {
    sub_1A46C5FF8(255);
    sub_1A46C62D4(255, &qword_1EB140428, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1403F8);
    }
  }
}

void sub_1A46C5FF8(uint64_t a1)
{
  if (!qword_1EB140400)
  {
    sub_1A46C60B4(255, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
    sub_1A46C708C(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140400);
    }
  }
}

void sub_1A46C60B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A46C6128(uint64_t a1)
{
  if (!qword_1EB140410)
  {
    sub_1A46C60B4(255, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
    sub_1A46C708C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140410);
    }
  }
}

void sub_1A46C61E4(uint64_t a1)
{
  if (!qword_1EB140420)
  {
    type metadata accessor for LemonadePickerRootView(255);
    sub_1A46C62D4(255, &unk_1EB127770, &qword_1EB126BE0, &qword_1EB126BF0, 0x1E69789A8);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140420);
    }
  }
}

void sub_1A46C626C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A46C62D4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1A46C626C(255, a3, a4, a5, MEMORY[0x1E69E6720]);
    v6 = sub_1A5249F44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A46C6344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A46C63AC(uint64_t a1)
{
  if (!qword_1EB140430)
  {
    sub_1A46C5DBC(255);
    sub_1A46C6410();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140430);
    }
  }
}

unint64_t sub_1A46C6410()
{
  result = qword_1EB140438;
  if (!qword_1EB140438)
  {
    sub_1A46C5DBC(255);
    sub_1A46C64A8();
    sub_1A46C6AD8(&qword_1EB127918, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140438);
  }

  return result;
}

unint64_t sub_1A46C64A8()
{
  result = qword_1EB140440;
  if (!qword_1EB140440)
  {
    sub_1A46C5DEC(255);
    sub_1A46C6540();
    sub_1A46C6AD8(&qword_1EB127940, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140440);
  }

  return result;
}

unint64_t sub_1A46C6540()
{
  result = qword_1EB140448;
  if (!qword_1EB140448)
  {
    sub_1A46C5EB4(255);
    sub_1A46C65D8();
    sub_1A46C6AD8(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140448);
  }

  return result;
}

unint64_t sub_1A46C65D8()
{
  result = qword_1EB140450;
  if (!qword_1EB140450)
  {
    sub_1A46C60B4(255, &qword_1EB1403F0, sub_1A46C5F70, sub_1A3D63A24);
    sub_1A46C66B8();
    sub_1A46C70DC(&qword_1EB1278C0, sub_1A3D63A24, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140450);
  }

  return result;
}

unint64_t sub_1A46C66B8()
{
  result = qword_1EB140458;
  if (!qword_1EB140458)
  {
    sub_1A46C5F70(255);
    sub_1A46C6738();
    sub_1A46C6B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140458);
  }

  return result;
}

unint64_t sub_1A46C6738()
{
  result = qword_1EB140460;
  if (!qword_1EB140460)
  {
    sub_1A46C5FF8(255);
    sub_1A46C67D0();
    sub_1A46C6AD8(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140460);
  }

  return result;
}

unint64_t sub_1A46C67D0()
{
  result = qword_1EB140468;
  if (!qword_1EB140468)
  {
    sub_1A46C60B4(255, &qword_1EB140408, sub_1A46C6128, sub_1A44DA358);
    sub_1A46C68B0();
    sub_1A46C70DC(&qword_1EB122170, sub_1A44DA358, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140468);
  }

  return result;
}

unint64_t sub_1A46C68B0()
{
  result = qword_1EB140470;
  if (!qword_1EB140470)
  {
    sub_1A46C6128(255);
    sub_1A46C6948();
    sub_1A46C6AD8(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140470);
  }

  return result;
}

unint64_t sub_1A46C6948()
{
  result = qword_1EB140478;
  if (!qword_1EB140478)
  {
    sub_1A46C60B4(255, &qword_1EB140418, sub_1A46C61E4, sub_1A44DA2F0);
    sub_1A46C6A28();
    sub_1A46C70DC(&qword_1EB122198, sub_1A44DA2F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140478);
  }

  return result;
}

unint64_t sub_1A46C6A28()
{
  result = qword_1EB140480;
  if (!qword_1EB140480)
  {
    sub_1A46C61E4(255);
    sub_1A46C70DC(&unk_1EB140488, type metadata accessor for LemonadePickerRootView, &unk_1A5344550);
    sub_1A431F958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140480);
  }

  return result;
}

uint64_t sub_1A46C6AD8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A46C708C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A46C6B3C()
{
  result = qword_1EB140498;
  if (!qword_1EB140498)
  {
    sub_1A46C62D4(255, &qword_1EB140428, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140498);
  }

  return result;
}

uint64_t sub_1A46C6BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A46C6C14(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v32 = a3;
  sub_1A46C6FD4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v30 - v10;
  v30 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_delegate + 8] = 0;
  v13 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_rootModel] = a1;
  v14 = OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration;
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_pickerConfiguration] = a2;
  *(v13 + 8) = a5;
  swift_unknownObjectWeakAssign();
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x360);

  v17 = a2;
  v18 = v16();
  (*((*v15 & *v17) + 0x348))(v18);
  sub_1A5244244();
  swift_allocObject();
  v19 = sub_1A5244214();
  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_photosSelection] = v19;
  v20 = *&a4[v14];
  v21 = *((*v15 & *v20) + 0x290);

  v22 = v20;
  v21(v19);

  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for LemonadeDetailsContext(0);
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  v34 = 3;
  v25 = *(a1 + 56);

  *&a4[OBJC_IVAR____TtC12PhotosUICoreP33_9C0F47138E7F57ED0AFD3108BF1ECEE532LemonadePickerRootViewController_navigationContext] = sub_1A3C799F0(v12, a1, &off_1F1720988, 0, v24, &v34, v25, 2);
  v26 = type metadata accessor for LemonadePickerRootViewController();
  v33.receiver = a4;
  v33.super_class = v26;
  v27 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  sub_1A46C7038();
  v28 = v27;

  sub_1A5244234();

  swift_unknownObjectRelease();

  return v28;
}

void sub_1A46C6FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A46C7038()
{
  result = qword_1EB162290[0];
  if (!qword_1EB162290[0])
  {
    type metadata accessor for LemonadePickerRootViewController();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB162290);
  }

  return result;
}

void sub_1A46C708C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A46C70DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A46C74EC(void (*a1)(void **__return_ptr, id *), __n128 a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(a4 + 8 * j + 32);
      }

      v5 = v11;
      v13 = v11;
      a1(v14, &v13);
      if (v6)
      {
        goto LABEL_18;
      }

      v6 = 0;

      v5 = v14[0];
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1A46C769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  sub_1A46C76E8(a1, v5, a3);
}

void sub_1A46C76E8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  swift_getObjectType();
  sub_1A52458F4();
}

void sub_1A46C7B64(uint64_t a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = *(v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  v11 = a1;
  if (v4 >> 62)
  {
    goto LABEL_11;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v4);
      goto LABEL_8;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v4 + 32);
LABEL_8:
      sub_1A47060CC();
    }

    __break(1u);
LABEL_11:
    ;
  }

  v7 = [v3 array];
  v8 = sub_1A524CA34();

  v9 = sub_1A46C7EFC(v8);

  v12[0] = v9;
  sub_1A46C82AC(0, &qword_1EB120C60, sub_1A3D435C4, MEMORY[0x1E69E62F8]);
  SendableTransfer.init(wrappedValue:)(v12, v10, v11);
}

uint64_t sub_1A46C7EFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = a1 + 32;
    do
    {
      sub_1A3C2F0BC(v4, &v5);
      sub_1A3D435C4();
      swift_dynamicCast();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

unint64_t sub_1A46C8180@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(*v2 + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1A59097F0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    result = *(v4 + 8 * result + 32);
LABEL_5:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A46C82AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SharedAlbumsActivityEntryItemList(uint64_t a1)
{
  result = qword_1EB17B2D0;
  if (!qword_1EB17B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A46C84B0()
{
  result = qword_1EB126820;
  if (!qword_1EB126820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126820);
  }

  return result;
}

uint64_t sub_1A46C84FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void LemonadeSavedTodayItemListManager.init(photoLibraryContext:)(void *a1)
{
  v3 = *v1;
  *(v1 + qword_1EB161DE0) = 0;
  *(v1 + qword_1EB17B6A8) = 0;
  *(v1 + qword_1EB1EB1A8) = 0;
  v4 = a1[2];
  v5 = a1[3];
  v6 = objc_opt_self();
  v7 = v4;
  v8 = v5;
  v9 = sub_1A524CA14();
  v10 = sub_1A524C634();
  v11 = [v6 transientCollectionListWithCollections:v9 title:v10 identifier:0 photoLibrary:v7];

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v30 = 2;
  v31 = 1;
  v29 = 2;
  v12 = a1[5];
  if (v12)
  {
    v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x258);
    v14 = v12;
    v15 = v13();
  }

  else
  {
    v15 = 0;
  }

  sub_1A3C6C180(&v23);
  v27 = v23;
  v28 = v24;
  v16 = sub_1A3C30368();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  v19 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v27, 0, &unk_1F171F6E8, 0, 1, &v30, 1, &v29, &aBlock, v16, v17 & 1, v18 & 1, v19 & 1, v15);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v3;
  v21 = v7;
  v22 = v8;
  PhotoKitItemListManager.init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v11, v8, v32, &aBlock, &v23, sub_1A46C968C, v20);
}

id sub_1A46C898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a2;
  v66 = a1;
  v4 = sub_1A52413D4();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  *&v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v19 = sub_1A524BEE4();
  v72 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A524BF64();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  if (sub_1A46C9694())
  {
    sub_1A44291FC(0);
    v24 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
    sub_1A5241104();
    sub_1A5241394();
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v25 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v25 savedTodayToleranceInHours];

    sub_1A5241064();
    sub_1A52412D4();
    v26 = *(v8 + 8);
    (v26)(v12, v7);
    (*(v67 + 8))(v6, v68);
    v72 = v26;
    (v26)(v15, v7);
    v27 = v7;
    if (qword_1EB176AD8 != -1)
    {
      swift_once();
    }

    v28 = sub_1A5246F24();
    __swift_project_value_buffer(v28, qword_1EB176AE0);
    v29 = v73;
    (*(v8 + 16))(v73, v18, v7);
    v30 = sub_1A5246F04();
    v31 = sub_1A524D264();
    v32 = os_log_type_enabled(v30, v31);
    v65 = v27;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v71 = v24;
      v34 = v33;
      aBlock = swift_slowAlloc();
      *v34 = 136446210;
      sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v35 = sub_1A524EA44();
      v37 = v36;
      (v72)(v29, v27);
      sub_1A3C2EF94(v35, v37, &aBlock);
    }

    (v72)(v29, v27);
    sub_1A3C37330(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1A52F9DE0;
    result = [objc_opt_self() predicateForAlbumKind_];
    if (result)
    {
      *(v46 + 32) = result;
      sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
      sub_1A3C7D190(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v47 = swift_allocObject();
      v73 = xmmword_1A52F8E10;
      *(v47 + 16) = xmmword_1A52F8E10;
      v48 = sub_1A5241074();
      *(v47 + 56) = sub_1A3C52C70(0, &qword_1EB1266C8, 0x1E695DF00);
      *(v47 + 64) = sub_1A46CCAFC();
      *(v47 + 32) = v48;
      *(v46 + 40) = sub_1A524D134();
      v49 = sub_1A524CA14();

      v50 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v24 setInternalPredicate_];
      [v24 setWantsIncrementalChangeDetails_];
      sub_1A3C37330(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1A52FC9F0;
      v52 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v53 = sub_1A524C634();
      v54 = [v52 initWithKey:v53 ascending:0];

      v55 = sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
      *(v51 + 56) = v55;
      *(v51 + 32) = v54;
      v56 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v57 = sub_1A524C634();
      v58 = [v56 initWithKey:v57 ascending:1];

      *(v51 + 88) = v55;
      *(v51 + 64) = v58;
      v59 = sub_1A524CA14();

      [v24 setInternalSortDescriptors_];

      v60 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];
      sub_1A3C38BD4(0xD000000000000024);
      v61 = sub_1A524C634();

      [v60 setTitle_];

      v62 = sub_1A524C674();
      v64 = v63;
      aBlock = 0;
      v77 = 0xE000000000000000;
      sub_1A52410D4();
      sub_1A524CEF4();
      aBlock = v62;
      v77 = v64;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  else
  {
    if (qword_1EB176AD8 != -1)
    {
      swift_once();
    }

    v38 = sub_1A5246F24();
    __swift_project_value_buffer(v38, qword_1EB176AE0);
    v39 = sub_1A5246F04();
    v40 = sub_1A524D224();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1A3C1C000, v39, v40, "did not animate today, returning empty with fetch", v41, 2u);
      MEMORY[0x1A590EEC0](v41, -1, -1);
    }

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v42 = sub_1A524D474();
    v43 = swift_allocObject();
    *(v43 + 16) = v70;
    v80 = sub_1A46CCA40;
    v81 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = sub_1A3C2E0D0;
    v79 = &block_descriptor_24_4;
    v44 = _Block_copy(&aBlock);
    sub_1A524BF14();
    v75 = MEMORY[0x1E69E7CC0];
    sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v23, v21, v44);
    _Block_release(v44);

    v72[1](v21, v19);
    (*(v69 + 8))(v23, v71);

    return [objc_opt_self() emptyFetchResultWithPhotoLibrary:v74 fetchType:*MEMORY[0x1E6978DB0]];
  }

  return result;
}

uint64_t sub_1A46C9694()
{
  v0 = sub_1A52413D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1A46CC278(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A3C2CBD8(v6, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_1A5241394();
    sub_1A5241104();
    v14 = sub_1A5241374();
    v15 = *(v8 + 8);
    v15(v10, v7);
    (*(v1 + 8))(v3, v0);
    v15(v13, v7);
  }

  return v14 & 1;
}

uint64_t sub_1A46C9960()
{
  v0 = sub_1A524BFC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-v6];
  v8 = sub_1A52413D4();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24[-v12];
  v14 = sub_1A5241144();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24[-v19];
  sub_1A46CC278(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1A3C2CBD8(v13, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_1A5241394();
    sub_1A5241104();
    v25 = sub_1A5241374();
    v21 = *(v15 + 8);
    v21(v17, v14);
    (*(v26 + 8))(v10, v27);
    result = (v21)(v20, v14);
    if (v25)
    {
      return result;
    }
  }

  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v28, qword_1EB1EB1B0);
  sub_1A524BFA4();
  sub_1A524C014();
  (*(v1 + 8))(v3, v0);
  (*(v1 + 56))(v7, 0, 1, v0);
  swift_beginAccess();
  sub_1A46CC99C(v7, v23);
  return swift_endAccess();
}

uint64_t static LemonadeSavedTodayItemListManager.startOfDay(at:)()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52413D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241394();
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v8 savedTodayToleranceInHours];

  sub_1A5241064();
  sub_1A52412D4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A46C9FE0()
{

  return swift_unknownObjectRelease();
}

uint64_t LemonadeSavedTodayItemListManager.deinit()
{
  sub_1A46CA08C();
  v0 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();
  return v0;
}

void sub_1A46CA08C()
{
  v1 = qword_1EB1EB1A8;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t LemonadeSavedTodayItemListManager.__deallocating_deinit()
{
  sub_1A46CA08C();
  v0 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static LemonadeSavedTodayItemListManager.nextUpdateDate(after:)@<X0>(uint64_t a2@<X8>)
{
  v19[1] = a2;
  v2 = sub_1A52413B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_1A52413D4();
  v6 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241394();
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A48], v2);
  sub_1A5241364();
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v19[0]);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_1A5241064();
    if (v16(v11, 1, v12) != 1)
    {
      sub_1A3C2CBD8(v11, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v17 savedTodayToleranceInHours];

  sub_1A5241064();
  return (*(v13 + 8))(v15, v12);
}

Swift::Void __swiftcall LemonadeSavedTodayItemListManager.didFinishFetch()()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  PXDisplayCollectionDetailedCountsMake();
  v8 = sub_1A46C9694();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v9 = sub_1A524D474();
  v10 = swift_allocObject();
  swift_weakInit();
  if ((v8 & 1) == 0)
  {
    sub_1A52458E4();
  }

  aBlock[4] = sub_1A46CC4F4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_255;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v3, v11);
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A46CA980(uint64_t a1)
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A5241104();
    sub_1A46CAA7C();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1A46CAA7C()
{
  v0 = sub_1A52413D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  sub_1A5241394();
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v16 savedTodayToleranceInHours];

  sub_1A5241064();
  sub_1A52412D4();
  v46 = *(v5 + 8);
  v46(v12, v4);
  (*(v1 + 8))(v3, v0);
  v44 = v15;
  static LemonadeSavedTodayItemListManager.nextUpdateDate(after:)(v9);
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v17 = sub_1A5246F24();
  __swift_project_value_buffer(v17, qword_1EB176AE0);
  v18 = v43;
  (*(v5 + 16))(v43, v9, v4);
  v19 = sub_1A5246F04();
  v20 = sub_1A524D264();
  v21 = v4;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136446210;
    sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v23 = sub_1A524EA44();
    v25 = v24;
    v46(v18, v4);
    sub_1A3C2EF94(v23, v25, aBlock);
  }

  v46(v18, v4);
  v26 = swift_allocObject();
  v27 = v45;
  swift_weakInit();
  v28 = objc_allocWithZone(MEMORY[0x1E695DFF0]);

  v29 = sub_1A5241074();
  aBlock[4] = sub_1A46CCA30;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_14_5;
  v30 = _Block_copy(aBlock);
  v31 = [v28 initWithFireDate:v29 interval:0 repeats:v30 block:0.0];
  _Block_release(v30);

  v32 = qword_1EB17B6A8;
  v33 = *(v27 + qword_1EB17B6A8);
  *(v27 + qword_1EB17B6A8) = v31;
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!v33)
  {
    v37 = v31;
LABEL_12:
    [v33 invalidate];
    v38 = *(v45 + v32);
    if (v38)
    {
      v39 = objc_opt_self();
      v40 = v38;
      v35 = [v39 currentRunLoop];
      [v35 addTimer:v40 forMode:*MEMORY[0x1E695D918]];

      v31 = v40;
    }

    else
    {
      v35 = v33;
    }

    goto LABEL_15;
  }

  sub_1A3C52C70(0, &unk_1EB126680, 0x1E695DFF0);
  v34 = v31;
  v35 = v33;
  v36 = sub_1A524DBF4();

  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = v34;
LABEL_15:

LABEL_16:
  v41 = v46;
  v46(v9, v21);
  return v41(v44, v21);
}

double sub_1A46CB0C4(uint64_t a1)
{
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB176AE0);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "starting animation on timeout", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EB161DE0) = 0;

    sub_1A5241104();
    v10 = sub_1A5241144();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    sub_1A46CC5D4(v3);
    sub_1A43F8A20();
  }

  return result;
}

uint64_t sub_1A46CB2B4()
{
  v0 = sub_1A524BEE4();
  v45 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A524BF64();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - v6;
  v7 = sub_1A524BFC4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1A52413D4();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_1A5241144();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  sub_1A46CC278(v17);
  v25 = (*(v19 + 48))(v17, 1, v18);
  v43 = v11;
  if (v25 == 1)
  {
    sub_1A3C2CBD8(v17, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    sub_1A5241394();
    sub_1A5241104();
    v26 = sub_1A5241374();
    v27 = *(v19 + 8);
    v27(v21, v18);
    (*(v42 + 8))(v14, v12);
    result = (v27)(v24, v18);
    if (v26)
    {
      return result;
    }
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v42 = sub_1A524D474();
  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v5, qword_1EB1EB1B0);
  swift_beginAccess();
  v30 = v44;
  sub_1A46CC8F0(v29, v44, &qword_1EB127068, MEMORY[0x1E69E7FF8]);
  v32 = v46;
  v31 = v47;
  v33 = *(v46 + 48);
  if (v33(v30, 1, v47) == 1)
  {
    v34 = v41;
    sub_1A524BFA4();
    v35 = v43;
    sub_1A524C014();
    (*(v32 + 8))(v34, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_1A3C2CBD8(v30, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720], sub_1A3C7D190);
    }
  }

  else
  {
    v35 = v43;
    (*(v32 + 32))(v43, v30, v31);
  }

  v36 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A46CC4FC;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_9_8;
  v37 = _Block_copy(aBlock);

  v38 = v48;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29DBC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7D190(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v39 = v50;
  sub_1A524E224();
  v40 = v42;
  MEMORY[0x1A5908790](v35, v38, v39, v37);
  _Block_release(v37);

  (*(v45 + 8))(v39, v0);
  (*(v49 + 8))(v38, v51);
  return (*(v32 + 8))(v35, v31);
}

double sub_1A46CBAF4(uint64_t a1)
{
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EB161DE0) = 0;

    sub_1A5241104();
    v6 = sub_1A5241144();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_1A46CC5D4(v3);
    sub_1A43F8A20();
  }

  return result;
}

double sub_1A46CBC20(uint64_t a1)
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB176AE0);
  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v8 = 136446210;
    sub_1A5241104();
    sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v9 = sub_1A524EA44();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_1A3C2EF94(v9, v11, v14);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A43F8A20();
  }

  return result;
}

double sub_1A46CBE84(uint64_t a1)
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v13 = Strong;
  v14 = qword_1EB17B6A8;
  v15 = *(Strong + qword_1EB17B6A8);
  if (!v15)
  {
LABEL_14:

    return result;
  }

  v16 = [v15 fireDate];
  sub_1A52410F4();

  (*(v2 + 32))(v10, v7, v1);
  sub_1A5241104();
  v17 = sub_1A5241084();
  v18 = *(v2 + 8);
  v18(v4, v1);
  if ((v17 & 1) == 0)
  {
    v18(v10, v1);
    goto LABEL_14;
  }

  v19 = *(v13 + v14);
  *(v13 + v14) = 0;
  if (v19)
  {
    [v19 invalidate];
    v20 = *(v13 + v14);
    if (v20)
    {
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 currentRunLoop];
      [v23 addTimer:v22 forMode:*MEMORY[0x1E695D918]];

      v19 = v23;
    }
  }

  if (qword_1EB176AD8 != -1)
  {
    swift_once();
  }

  v24 = sub_1A5246F24();
  __swift_project_value_buffer(v24, qword_1EB176AE0);
  v25 = sub_1A5246F04();
  v26 = sub_1A524D264();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v32 = v27;
    v33 = swift_slowAlloc();
    v34 = v33;
    *v27 = 136446210;
    sub_1A5241104();
    sub_1A3C29DBC(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v28 = sub_1A524EA44();
    v29 = v18;
    v31 = v30;
    v29(v4, v1);
    sub_1A3C2EF94(v28, v31, &v34);
  }

  sub_1A43F8A20();

  v18(v10, v1);
  return result;
}

uint64_t sub_1A46CC278@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1A524C634();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1A5241144();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1A3C2CBD8(v11, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37330);
    v8 = sub_1A5241144();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1A46CC428()
{
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB1B0);
  v2 = __swift_project_value_buffer(v1, qword_1EB1EB1B0);
  v3 = sub_1A524BFC4();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

void sub_1A46CC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3C33378(a6, a7);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1A46CC570()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176AE0);
  __swift_project_value_buffer(v0, qword_1EB176AE0);
  sub_1A5246EF4();
}

uint64_t sub_1A46CC5D4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = MEMORY[0x1E6969530];
  sub_1A3C7D190(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  sub_1A46CC8F0(a1, v10, &qword_1EB12AFE0, v7);
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1A5241074();
    (*(v13 + 8))(v10, v12);
  }

  v15 = sub_1A524C634();
  [v11 setObject:v14 forKey:v15];

  swift_unknownObjectRelease();
  if (qword_1EB17B6A0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_1EB1EB1B0);
  v17 = sub_1A524BFC4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  swift_beginAccess();
  sub_1A46CC99C(v6, v16);
  swift_endAccess();
  return sub_1A3C2CBD8(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D190);
}

uint64_t sub_1A46CC8F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D190(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46CC99C(uint64_t a1, uint64_t a2)
{
  sub_1A3C7D190(0, &qword_1EB127068, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A46CCA40()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v4[4] = sub_1A46CCB64;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3C2E0D0;
  v4[3] = &block_descriptor_30_4;
  v3 = _Block_copy(v4);

  px_perform_after_ca_commit(v3);
  _Block_release(v3);
}

unint64_t sub_1A46CCAFC()
{
  result = qword_1EB1266C0;
  if (!qword_1EB1266C0)
  {
    sub_1A3C52C70(255, &qword_1EB1266C8, 0x1E695DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1266C0);
  }

  return result;
}

void sub_1A46CCC14(unint64_t a1, __n128 a2)
{
  v25 = MEMORY[0x1E69E7CC0];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v5, a1, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = [v7 rootViewController];

    ++v5;
    if (v10)
    {
      MEMORY[0x1A5907D70]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v6 = v25;
      v5 = v9;
    }
  }

  if (!(v6 >> 62))
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_16;
    }

LABEL_29:

    return;
  }

  v11 = sub_1A524E2B4();
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1A59097F0](v12, v6, a2);
      }

      else
      {
        v17 = *(v6 + 8 * v12 + 32);
      }

      v18 = v17;
      v19 = [v17 px_topmostPresentedViewController];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 representedItemDiagnosticDescription];
        v22 = sub_1A524C674();
        v24 = v23;

        MEMORY[0x1A5907B60](v22, v24);

        MEMORY[0x1A5907B60](2570, 0xE200000000000000);
        MEMORY[0x1A5907B60](0x65746E6573657250, 0xEB000000000A3A64);
      }

      ++v12;
      v13 = [v18 representedItemDiagnosticDescription];
      v14 = sub_1A524C674();
      v16 = v15;

      v25 = v14;
      MEMORY[0x1A5907B60](2570, 0xE200000000000000);
      MEMORY[0x1A5907B60](v14, v16);
    }

    while (v11 != v12);
    goto LABEL_29;
  }

  __break(1u);
}

unint64_t sub_1A46CCF0C()
{
  result = qword_1EB1404E8;
  if (!qword_1EB1404E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1404E8);
  }

  return result;
}

uint64_t sub_1A46CCF58@<X0>(uint64_t *a1@<X8>)
{
  sub_1A43F81D8(0, 0, sub_1A46CCFDC, a1);
  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1A46CCFDC(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  a1[3] = &type metadata for LemonadePhototypesDestinationView;
  a1[4] = sub_1A46CD080();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A46CD080()
{
  result = qword_1EB161DF0[0];
  if (!qword_1EB161DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB161DF0);
  }

  return result;
}

void sub_1A46CD100(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1A46CDA04(0, a2);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46CE5C8(0, &qword_1EB140538, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  *&v43[32] = *(v2 + 32);
  v13 = *(v2 + 16);
  *v43 = *v2;
  *&v43[16] = v13;
  v14 = *(*v43 + 16);
  if (v14 == 1)
  {
    sub_1A3C341C8(*v43 + 32, &v37);
    v44[0] = *&v43[8];
    v44[1] = *&v43[24];
    v33 = *&v43[8];
    v34 = *&v43[24];
    sub_1A46CE0F0(v44, v41);
    sub_1A46B6988(&v37, &v33, v41);
    *&v33 = v41[0];
    *(&v33 + 1) = v42;
    v35 = 0;
    v34 = 0uLL;
    v36 = 1;
    v19 = MEMORY[0x1E6981148];
    v20 = MEMORY[0x1E6981138];
    sub_1A46CDE70(0, &qword_1EB140548, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    v32 = v5;
    v31 = a1;
    v30 = v9;
    v21 = MEMORY[0x1E6981910];
    v22 = MEMORY[0x1E6981900];
    sub_1A46CDE70(0, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548, v19, v20);
    sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180, v21, v22);

    sub_1A5249744();
    v23 = v39;
    v24 = v40;
    v25 = v38;
    *v12 = v37;
    *(v12 + 1) = v25;
    *(v12 + 4) = v23;
    v12[40] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A46CDDD8(0);
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04, &unk_1A5356F50);
    sub_1A5249744();
  }

  else
  {
    if (!v14)
    {
      LOBYTE(v33) = 3;
      v15 = MEMORY[0x1E6981148];
      v16 = MEMORY[0x1E6981138];
      sub_1A46B6B2C(&v33, sub_1A46CD784, MEMORY[0x1E6981148], MEMORY[0x1E6981138], &v37);
      v32 = v5;
      v29 = *(&v37 + 1);
      v31 = a1;
      v30 = v9;
      *&v33 = v37;
      *(&v33 + 1) = *(&v37 + 1);
      *&v34 = v38;
      *(&v34 + 1) = BYTE8(v38);
      v35 = v39;
      v36 = 0;
      sub_1A3E75E68(*(&v37 + 1), v38, SBYTE8(v38));
      sub_1A46CDE70(0, &qword_1EB140548, v15, v16);
      v17 = MEMORY[0x1E6981910];
      v18 = MEMORY[0x1E6981900];
      sub_1A46CDE70(0, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
      sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
      sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180, v17, v18);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    LOBYTE(v37) = 2;
    MEMORY[0x1EEE9AC00](v10);
    *(&v29 - 2) = v43;
    sub_1A46CDA98(0);
    v27 = v26;
    v28 = sub_1A46CDCE8(&qword_1EB140530, sub_1A46CDA98, MEMORY[0x1E697CD20]);
    sub_1A46B6B2C(&v37, sub_1A46CDEC0, v27, v28, v7);
    sub_1A46CE308(v7, v12, sub_1A46CDA04);
    swift_storeEnumTagMultiPayload();
    sub_1A46CDDD8(0);
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04, &unk_1A5356F50);
    sub_1A5249744();
    sub_1A46CE3A8(v7, sub_1A46CDA04);
  }
}

void sub_1A46CD784(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001A53E5BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A46CD7B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A46CD80C(void *a1, uint64_t a2)
{
  v15 = a1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(a2 + 24);
  v18[0] = *(a2 + 8);
  v18[1] = v5;
  v6 = *(a2 + 24);
  v16[0] = *(a2 + 8);
  v16[1] = v6;
  v7 = *(v4 + 32);
  sub_1A46CE0F0(v18, v17);
  v7(v17, v16, v3, v4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = sub_1A524B8E4();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v17[0] = v12;
  sub_1A3E429B4();
  sub_1A46CDCE8(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
  return sub_1A5248444();
}

void sub_1A46CDA04(uint64_t a1, double a2)
{
  if (!qword_1EB1404F0)
  {
    sub_1A46CDA98(255);
    v4 = v3;
    v5 = sub_1A46CDCE8(&qword_1EB140530, sub_1A46CDA98, MEMORY[0x1E697CD20]);
    v7 = type metadata accessor for PhototypeRootContainer(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB1404F0);
    }
  }
}

void sub_1A46CDA98(uint64_t a1)
{
  if (!qword_1EB1404F8)
  {
    sub_1A46CDB18(255);
    sub_1A46CDD30();
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1404F8);
    }
  }
}

void sub_1A46CDB18(uint64_t a1)
{
  if (!qword_1EB140500)
  {
    sub_1A46CDBE0(255);
    sub_1A46CDC38(255);
    sub_1A46CDCE8(&qword_1EB140518, sub_1A46CDBE0, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140500);
    }
  }
}

void sub_1A46CDBE0(uint64_t a1)
{
  if (!qword_1EB140508)
  {
    sub_1A3F47C30();
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140508);
    }
  }
}

void sub_1A46CDC38(uint64_t a1)
{
  if (!qword_1EB140510)
  {
    sub_1A3E429B4();
    sub_1A46CDCE8(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    v1 = sub_1A5248454();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140510);
    }
  }
}

uint64_t sub_1A46CDCE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A46CDD30()
{
  result = qword_1EB140520;
  if (!qword_1EB140520)
  {
    sub_1A46CDB18(255);
    sub_1A46CDCE8(&qword_1EB140528, sub_1A46CDC38, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140520);
  }

  return result;
}

void sub_1A46CDDD8(uint64_t a1)
{
  if (!qword_1EB140540)
  {
    sub_1A46CDE70(255, &qword_1EB140548, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    sub_1A46CDE70(255, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140540);
    }
  }
}

void sub_1A46CDE70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for PhototypeRootContainer(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A46CDEC0()
{
  v1 = *(v0 + 16);
  v9 = *v1;
  v2 = v9;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  v8 = v2;
  sub_1A46CE308(&v9, v7, sub_1A46CDBE0);
  sub_1A46CE370(v1, v7);
  sub_1A46CDB18(0);
  sub_1A46CDD30();
  sub_1A524A2C4();

  return sub_1A46CE3A8(&v9, sub_1A46CDBE0);
}

unint64_t sub_1A46CDFE0()
{
  result = qword_1EB140550;
  if (!qword_1EB140550)
  {
    sub_1A46CDDD8(255);
    sub_1A46CE0A0(&qword_1EB140558, &qword_1EB140548, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    sub_1A46CE0A0(&qword_1EB140188, &qword_1EB140180, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140550);
  }

  return result;
}

uint64_t sub_1A46CE0A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A46CDE70(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_73()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A46CE1A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1A46CDBE0(0);
  sub_1A46CDC38(0);
  sub_1A46CDCE8(&qword_1EB140518, sub_1A46CDBE0, MEMORY[0x1E69E6338]);
  sub_1A46CDCE8(&qword_1EB140528, sub_1A46CDC38, MEMORY[0x1E697C090]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46CE308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46CE3A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46CE430()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 16))(v4, v5);
  sub_1A3D5F9DC();
  return sub_1A524B614();
}

unint64_t sub_1A46CE4FC(double a1)
{
  result = qword_1EB140568;
  if (!qword_1EB140568)
  {
    sub_1A46CE5C8(255, &unk_1EB140570, MEMORY[0x1E697F960]);
    sub_1A46CDFE0();
    sub_1A46CDCE8(&qword_1EB140560, sub_1A46CDA04, &unk_1A5356F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140568);
  }

  return result;
}

void sub_1A46CE5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A46CDDD8(255);
    v7 = v6;
    sub_1A46CDA04(255, v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

id PhotosConcreteSelectableItem.photokitObject.getter()
{
  sub_1A52430E4();
  v0 = v4;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v1 = PhotosModel.photokitObject.getter(v0);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v1;
}

id PhotosModel.photokitObject.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(v4 + 16);
  v15(&v25 - v16, v2, a1, v14);
  sub_1A3C652C8(0, &qword_1EB129240, MEMORY[0x1E69C1F28], 0);
  if (swift_dynamicCast())
  {
    v18 = v28[0];
    v17 = v28[1];
    ObjectType = swift_getObjectType();
    v20 = sub_1A46CEB50(v18, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    (v15)(v12, v2, a1);
    sub_1A3C652C8(0, &qword_1EB12A2A8, &protocol descriptor for PhotoKitItemProtocol, 1);
    if (swift_dynamicCast())
    {
      sub_1A3C34460(&v25, v28);
      v21 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v20 = (*(v22 + 16))(v21, v22);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_1A46CEA98(&v25, &qword_1EB12A2A0, &qword_1EB12A2A8, &protocol descriptor for PhotoKitItemProtocol);
      (v15)(v9, v2, a1);
      type metadata accessor for PeopleUnifiedItem();
      if (swift_dynamicCast())
      {
        v20 = PeopleUnifiedItem.value.getter();
      }

      else
      {
        (v15)(v6, v2, a1);
        sub_1A3C652C8(0, &qword_1EB128C90, off_1E77211B8, 1);
        if (swift_dynamicCast())
        {
          sub_1A3C34460(&v25, v28);
          __swift_project_boxed_opaque_existential_1(v28, v29);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
          sub_1A5246234();
        }

        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        sub_1A46CEA98(&v25, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8);
        return 0;
      }
    }
  }

  return v20;
}

uint64_t sub_1A46CEA98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1A46CEAF4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A46CEAF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C652C8(255, a3, a4, 1);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1A46CEB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5242604();
  type metadata accessor for PeopleUnifiedItem();
  if (swift_dynamicCast())
  {
    v5 = PeopleUnifiedItem.value.getter();
  }

  else
  {
    sub_1A5242604();
    sub_1A3C652C8(0, &qword_1EB12A2A8, &protocol descriptor for PhotoKitItemProtocol, 1);
    if (swift_dynamicCast())
    {
      v6 = *(&v10 + 1);
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      v5 = (*(v7 + 16))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(&v9);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      sub_1A46CEA98(&v9, &qword_1EB12A2A0, &qword_1EB12A2A8, &protocol descriptor for PhotoKitItemProtocol);
      return 0;
    }
  }

  return v5;
}

void PhotosModel.collectionKind.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = PhotosModel.photokitObject.getter(a1);
  if (v3)
  {
    v4 = v3;
    PHObject.photosPickerCollectionType.getter(a2);
  }

  else
  {
    *a2 = 24;
  }
}

void PHObject.photosPickerCollectionType.getter(char *a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1A5244D04();
      v11 = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0);
      v43 = v11;
      v42[0] = v10;
      v12 = v1;
      v13 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v13)
      {
LABEL_10:
        v8 = 1;
        goto LABEL_84;
      }

      sub_1A5244824();
      v43 = v11;
      v42[0] = v10;
      v14 = v12;
      v15 = sub_1A5244E84();
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v15)
      {
        goto LABEL_3;
      }

      if ([v10 px_isSharedLibrarySharingSuggestion])
      {
        v8 = 22;
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_14;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = 9;
      goto LABEL_84;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        goto LABEL_83;
      }

      v30 = v29;
      if ([v29 px_isSharedAlbumsFolder] & 1) != 0 || (objc_msgSend(v30, sel_px_isSharedAlbumsAndActivityFolder))
      {
        goto LABEL_26;
      }

      if ([v30 px_isMediaTypesFolder])
      {
        goto LABEL_30;
      }

      if (([v30 px_isUtilitiesFolder] & 1) == 0)
      {
        if (([v30 px_isProjectsFolder] & 1) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_43;
      }

      goto LABEL_45;
    }

    v21 = v20;
    v22 = [v20 transientIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1A524C674();
      v26 = v25;

      v27 = sub_1A524C674();
      if (v26)
      {
        if (v24 == v27 && v26 == v28)
        {

LABEL_34:

          v8 = 2;
          goto LABEL_84;
        }

        v31 = sub_1A524EAB4();

        if (v31)
        {
          goto LABEL_34;
        }

        if (v24 == sub_1A524C674() && v26 == v32)
        {

LABEL_47:

          v8 = 6;
          goto LABEL_84;
        }

        v33 = sub_1A524EAB4();

        if (v33)
        {
          goto LABEL_47;
        }

        if (v24 == sub_1A524C674() && v26 == v34)
        {

LABEL_56:

          v8 = 4;
          goto LABEL_84;
        }

        v35 = sub_1A524EAB4();

        if (v35)
        {
          goto LABEL_56;
        }

        if (v24 == sub_1A524C674() && v26 == v36)
        {

LABEL_65:

          v8 = 8;
          goto LABEL_84;
        }

        v37 = sub_1A524EAB4();

        if (v37)
        {
          goto LABEL_65;
        }

        if (v24 == sub_1A524C674() && v26 == v38)
        {

LABEL_74:

          v8 = 14;
          goto LABEL_84;
        }

        v39 = sub_1A524EAB4();

        if (v39)
        {
          goto LABEL_74;
        }

        if (v24 == sub_1A524C674() && v26 == v40)
        {

          v8 = 21;
          goto LABEL_84;
        }

        v41 = sub_1A524EAB4();

        if (v41)
        {
          v8 = 21;
          goto LABEL_84;
        }

LABEL_29:
        if ([v21 px_isMediaTypeSmartAlbum])
        {
LABEL_30:
          v8 = 11;
          goto LABEL_84;
        }

        if ([v21 px_isFavoritesSmartAlbum])
        {
          v8 = 16;
          goto LABEL_84;
        }

        if ([v21 px_isVideosSmartAlbum])
        {
          v8 = 15;
          goto LABEL_84;
        }

        if (([v21 px_isRecentlyDeletedSmartAlbum] & 1) == 0)
        {
          if ([v21 px_isRecentlySavedCollection])
          {
            v8 = 17;
            goto LABEL_84;
          }

          if ([v21 px_isRecentlyViewedCollection])
          {
            v8 = 18;
            goto LABEL_84;
          }

          if ([v21 px_isRecentlyEditedCollection])
          {
            v8 = 19;
            goto LABEL_84;
          }

          if ([v21 px_isRecentlySharedCollection])
          {
            v8 = 20;
            goto LABEL_84;
          }

          if (([v21 px_isLemonadeUtilitiesAlbum] & 1) == 0)
          {
            if ([v21 px_isUserCreated] & 1) != 0 || (objc_msgSend(v21, sel_px_isMacSyncedAlbum))
            {
              v8 = 0;
              goto LABEL_84;
            }

            if (([v21 px_isSharedAlbum] & 1) == 0)
            {
              if (([v21 px_isSharedLibrarySharingSuggestionsSmartAlbum] & 1) == 0)
              {
                if ([v21 px_isTripsVirtualCollection])
                {
                  goto LABEL_10;
                }

                if ([v21 px_isMemoriesVirtualCollection])
                {
                  goto LABEL_12;
                }

                if (([v21 px_isPeopleVirtualCollection] & 1) == 0)
                {
LABEL_83:
                  v8 = 23;
                  goto LABEL_84;
                }

LABEL_14:
                v8 = 7;
                goto LABEL_84;
              }

LABEL_43:
              v8 = 24;
              goto LABEL_84;
            }

LABEL_26:
            v8 = 13;
            goto LABEL_84;
          }
        }

LABEL_45:
        v8 = 12;
        goto LABEL_84;
      }
    }

    else
    {
      sub_1A524C674();
    }

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    sub_1A524C674();

    goto LABEL_29;
  }

  v4 = v3;
  sub_1A52445C4();
  v5 = sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
  v43 = v5;
  v42[0] = v4;
  v6 = v1;
  v7 = sub_1A5244E84();
  __swift_destroy_boxed_opaque_existential_0(v42);
  if ((v7 & 1) == 0)
  {
    sub_1A52445A4();
    v43 = v5;
    v42[0] = v4;
    v16 = v6;
    v17 = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v17)
    {
      goto LABEL_10;
    }

    sub_1A5244B94();
    v43 = v5;
    v42[0] = v4;
    v18 = v16;
    v19 = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v19)
    {
LABEL_12:
      v8 = 3;
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_3:
  v8 = 5;
LABEL_84:
  *a1 = v8;
}

void LemonadeMemoriesEntryCardTimeSlotProvider.timeSlot.getter()
{
  v1 = v0;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  v3 = *(v2 - 8);
  v12[2] = v2;
  v12[3] = v3;
  MEMORY[0x1EEE9AC00](v2);
  v12[1] = v12 - v4;
  sub_1A3DE714C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v12[0]);
  v10 = sub_1A52413D4();
  MEMORY[0x1EEE9AC00](v10);
  sub_1A5241394();
  v11 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__validationDate;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v11, v6);
  sub_1A5246594();
}

void sub_1A46CFA04()
{
  v0 = sub_1A5241144();
  v6[7] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v6[5] = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6[6] = v6 - v3;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  v6[4] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v5);
  v6[13] = sub_1A4429704(3uLL);
  swift_beginAccess();
  sub_1A52465A4();
}

uint64_t LemonadeMemoriesEntryCardTimeSlotProvider.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__currentIndex;
  sub_1A3C56088(0, &qword_1EB124A78, MEMORY[0x1E69E6530], off_1E7721240);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore41LemonadeMemoriesEntryCardTimeSlotProvider__validationDate;
  sub_1A3DE714C(0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A46D002C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A44D5E5C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46D00CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E18;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A3C66EE8(v3, v4);
  return sub_1A3C784D4(v8, v9);
}

uint64_t sub_1A46D0194()
{
  v1 = (v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A46D01F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A46D0250@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D02D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D0358@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

void *sub_1A46D03C8()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A46D0414(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46D046C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D04F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D057C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46D0604@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

void sub_1A46D0674(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1A46D06D0()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A46D071C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46D07BC()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46D0854(char a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A46D08A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

void sub_1A46D090C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1A46D0960@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

void sub_1A46D09C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1A46D0A1C()
{
  v1 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A46D0A60(char a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1A46D0AB0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (result)
  {
    v2 = result;
    v3 = [result localizedQueryString];

    if (v3)
    {
      v4 = sub_1A524C674();
      v6 = v5;

      sub_1A3C38BD4(0xD00000000000002CLL);
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A52F8E10;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1A3D710E8();
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      v8 = sub_1A524C6C4();

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *PhotosSearchCollectionSectionProvider.init(photoLibrary:)(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_observable;
  *&v1[v3] = [objc_allocWithZone(off_1E77217D8) init];
  v4 = &v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_promotedRankedCollection] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_topCollections] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allCollections;
  *&v1[v6] = sub_1A46D47F8(v5, sub_1A46D51F8, sub_1A46D4FA0, sub_1A46D51F8);
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allPeople] = v5;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo] = 0;
  v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_isDisabled] = 0;
  v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_showsShelfTitle] = 1;
  v7 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultsScores;
  *&v1[v7] = sub_1A3DAF0C0(v5);
  v8 = &v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibraryObservation];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult] = 0;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary] = a1;
  v9 = a1;
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultUUIDs] = sub_1A46D47F8(v5, sub_1A3DAF4EC, sub_1A40FCA64, sub_1A3DAF4EC);
  v10 = sub_1A46D47F8(v5, sub_1A3DAF4EC, sub_1A40FCA64, sub_1A3DAF4EC);
  *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_rankedCollectionResultUUIDs] = v10;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for PhotosSearchCollectionSectionProvider(v10, v11);
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v12;

  PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A46D49C8, v13, v17);

  v15 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibraryObservation;
  swift_beginAccess();
  sub_1A3C6F55C(v17, v14 + v15);
  swift_endAccess();

  return v14;
}

void sub_1A46D0F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x188))();
  v15 = v14;
  if (a1)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    sub_1A3C52C70(0, &qword_1EB1207F0, off_1E771F5C8);
    v16 = a5;
    v17 = a6;
    v18 = a1;
    v19 = sub_1A524DBF4();

    a6 = v17;
    a5 = v16;
    v13 = MEMORY[0x1E69E7D40];

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {

    goto LABEL_11;
  }

  v20 = (*((*v13 & *v7) + 0xF8))();
  sub_1A3DA633C(v20, a2);
  v22 = v21;

  if (v22)
  {
    v24 = (*((*v13 & *v7) + 0x110))(v23);
    sub_1A3DA633C(v24, a3);
    v26 = v25;

    if ((v26 & 1) != 0 && (((*((*v13 & *v7) + 0x1A0))(v27) ^ a5) & 1) == 0 && (((*((*v13 & *v7) + 0x1B8))() ^ a6) & 1) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

LABEL_11:
  v28 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_searchMatchInfo;
  swift_beginAccess();
  v29 = *(v7 + v28);
  *(v7 + v28) = a1;
  v30 = a1;

  v31 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionResultUUIDs;
  swift_beginAccess();
  *(v7 + v31) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46D1298()
{
  if (MEMORY[0x1A590D320]())
  {
    v1 = 0xD000000000000013;
  }

  else
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x288))();
    if (v2 >= 1)
    {
      v3 = v2;
      v4 = sub_1A524C634();
      v5 = PXLocalizedString(v4);

      sub_1A524C674();
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      v7 = MEMORY[0x1E69E6530];
      *(v6 + 16) = xmmword_1A52F8E10;
      v8 = MEMORY[0x1E69E65A8];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v3;
      v9 = sub_1A524C644();

      return v9;
    }

    v1 = 0xD000000000000029;
  }

  return sub_1A3C38BD4(v1);
}

uint64_t sub_1A46D1440()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  sub_1A46D15C8(v2);
  v4 = v3;

  v6 = (*((*v1 & *v0) + 0x170))(v5);
  if (v6 >> 62)
  {
    goto LABEL_9;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {

    v8 = *(v4 + 16);
    if (!v8)
    {
      break;
    }

    v9 = (v4 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = __OFADD__(i, v10);
      i += v10;
      if (v11)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    ;
  }

LABEL_7:

  return i;
}

uint64_t sub_1A46D1570@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >> 62)
  {
    result = sub_1A524E2B4();
    *a2 = result;
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *a2 = result;
  }

  return result;
}

void sub_1A46D15C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3FD1D1C(0, v1, 0);
    v2 = sub_1A524E234();
    if (v2 < 0 || v2 >= 1 << *(a1 + 32))
    {
      __break(1u);
    }

    else if ((*(a1 + 64 + 8 * (v2 >> 6)) & (1 << v2)) != 0)
    {
      swift_getKeyPath();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_1A46D1834(uint64_t a1)
{
  v3 = sub_1A5243994();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69C2700], v3, v5);
  sub_1A46D50B4(&qword_1EB12D1B0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2730]);
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v14[1] == v14[0])
  {
    (*(v4 + 8))(v7, v3);

LABEL_4:
    v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v8);
    if (v10 >> 62)
    {
      v11 = sub_1A524E2B4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v11;
  }

  v9 = sub_1A524EAB4();
  (*(v4 + 8))(v7, v3);

  if (v9)
  {
    goto LABEL_4;
  }

  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v8) + 16))
  {
    sub_1A3DAC880(a1);
    if (v13)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 0;
}

id sub_1A46D1B28(uint64_t a1)
{
  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))() + 16))
  {
    sub_1A3DAC880(a1);
    if (v3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A524C674();

  return 0;
}

id sub_1A46D1D00()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v1 >> 62)
  {
    v9 = v1;
    v10 = sub_1A524E2B4();
    v1 = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = v1;
  v3 = *MEMORY[0x1E6978DA0];
  sub_1A3D64B88(v2, &qword_1EB126AC0, 0x1E6978650, v4);
  v5 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v6 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v7 = sub_1A524CA14();

  v8 = [v6 initWithObjects:v7 photoLibrary:v5 fetchType:v3 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v8;
}

id sub_1A46D1E5C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A3C69C0C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9790;
  *(inited + 32) = v2;
  v4 = *MEMORY[0x1E6978DA0];
  v5 = v2;
  v6 = v4;
  sub_1A3D64B88(inited, &qword_1EB126AC0, 0x1E6978650, v7);
  v8 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v9 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v10 = sub_1A524CA14();

  v11 = [v9 initWithObjects:v10 photoLibrary:v8 fetchType:v6 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v11;
}

id sub_1A46D2004()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v1 >> 62)
  {
    v9 = v1;
    v10 = sub_1A524E2B4();
    v1 = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = v1;
  v3 = *MEMORY[0x1E6978DC0];
  sub_1A3D64B88(v2, &qword_1EB1265C0, 0x1E6978980, v4);
  v5 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
  v6 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v7 = sub_1A524CA14();

  v8 = [v6 initWithObjects:v7 photoLibrary:v5 fetchType:v3 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v8;
}

id sub_1A46D2160()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = result;
    }

    if (result >= v4)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v12 = sub_1A524E2B4();
  if ((sub_1A524E2B4() & 0x8000000000000000) == 0)
  {
    if (v12 >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    if (v12 >= 0)
    {
      v4 = v13;
    }

    else
    {
      v4 = 2;
    }

    result = sub_1A524E2B4();
    if (result >= v4)
    {
LABEL_6:
      if ((v2 & 0xC000000000000001) != 0 && v4 != 0)
      {
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_24;
  }

  __break(1u);
  if (sub_1A524E2B4())
  {
    v6 = *MEMORY[0x1E6978DC0];
    sub_1A3D64B88(v2, &qword_1EB1265C0, 0x1E6978980, v7);
    v8 = *(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary);
    v9 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v10 = sub_1A524CA14();

    v11 = [v9 initWithObjects:v10 photoLibrary:v8 fetchType:v6 fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  }

  else
  {

    return 0;
  }

  return v11;
}

void sub_1A46D24A0()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_badgesModifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_1A46D50FC;
  v3[1] = v2;

  sub_1A3C784D4(v4, v5);

  type metadata accessor for PhotosSearchUtilities(0, v6);
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))();
  (*((*v7 & *v1) + 0x110))(v8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A46D281C()
{
  v1 = v0;
  v2 = sub_1A5243994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45[7] = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = v45 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v45[6] = v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v45[5] = v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v45 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v50 = [objc_opt_self() px:*(v0 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary) searchAssetFetchOptionsForPhotoLibrary:?];
  v55 = sub_1A46D47F8(MEMORY[0x1E69E7CC0], sub_1A46D51F8, sub_1A46D4FA0, sub_1A46D51F8);
  v22 = *(v3 + 104);
  v23 = *MEMORY[0x1E69C2710];
  v48 = v3 + 104;
  v49 = v22;
  v24 = v22(v21, v23, v2);
  v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v53 = (*MEMORY[0x1E69E7D40] & *v0) + 248;
  v54 = v25;
  v26 = *(v25(v24) + 16);
  v52 = v3;
  if (v26)
  {
    sub_1A3DAC880(v21);
    if (v27)
    {
      v45[4] = v18;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28 = *(v3 + 8);
  v28(v21, v2);
  v29 = v49;
  v30 = v49(v15, *MEMORY[0x1E69C26E8], v2);
  if (*(v54(v30) + 16))
  {
    sub_1A3DAC880(v15);
    if (v31)
    {
      v51 = v28;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v15, v2);
  v32 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult) = 0;

  v33 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_collectionShareFetchResult) = 0;

  v34 = v47;
  v35 = v46;
  v36 = v29(v46, *MEMORY[0x1E69C26E0], v2);
  if (*(v54(v36) + 16))
  {
    sub_1A3DAC880(v35);
    if (v37)
    {
      v51 = v28;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v35, v2);
  v38 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult) = 0;

  v39 = v29(v34, *MEMORY[0x1E69C26F8], v2);
  if (*(v54(v39) + 16))
  {
    sub_1A3DAC880(v34);
    if (v40)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v28(v34, v2);
  v41 = *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult);
  *(v1 + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult) = 0;

  v42 = v55;
  v43 = OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_allCollections;
  swift_beginAccess();
  *(v1 + v43) = v42;

  return result;
}

uint64_t sub_1A46D380C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1A46D43C0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1A5243994();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1A3DAC880(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1A46D458C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1A5243994();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1A46D40A0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1A5243994();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

id PhotosSearchCollectionSectionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosSearchCollectionSectionProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosSearchCollectionSectionProvider(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A46D3BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C69C0C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A46D3CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A5243994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A46D4FA0(0);
  v40 = v4;
  v10 = sub_1A524E774();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if ((v40 & 1) == 0)
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v41)(v44, v25, v5);
      v42 = *(*(v9 + 56) + 8 * v23);
      sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
      v26 = sub_1A524C4A4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1A46D40A0(int64_t a1, uint64_t a2)
{
  v38 = sub_1A5243994();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1A524E244();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
      v22 = sub_1A524C4A4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1A46D43C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3DAC880(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A46D458C();
      goto LABEL_7;
    }

    sub_1A46D3CD4(v17, a3 & 1);
    v21 = sub_1A3DAC880(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1A40FC740(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1A46D458C()
{
  v1 = v0;
  v31 = sub_1A5243994();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46D4FA0(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_20;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }
}

unint64_t sub_1A46D47F8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, double), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    a3(0, v9);
    v13 = sub_1A524E794();
    v14 = *(v7 + 48);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);

    while (1)
    {
      sub_1A46D5268(v15, v11, a4);
      result = sub_1A3DAC880(v11);
      if (v18)
      {
        break;
      }

      v19 = result;
      *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = v13[6];
      v21 = sub_1A5243994();
      result = (*(*(v21 - 8) + 32))(v20 + *(*(v21 - 8) + 72) * v19, v11, v21);
      *(v13[7] + 8 * v19) = *&v11[v14];
      v22 = v13[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v13[2] = v24;
      v15 += v16;
      if (!--v12)
      {

        return v13;
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

void sub_1A46D49C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_albumsFetchResult);
    if (v2)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      v3 = v2;
      v4 = sub_1A524DC44();
      if (v4)
      {
        goto LABEL_10;
      }
    }

    v5 = *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_tripsFetchResult];
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      v6 = v5;
      v4 = sub_1A524DC44();
      if (v4)
      {
        goto LABEL_10;
      }
    }

    v7 = *&v1[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_memoriesFetchResult];
    if (v7)
    {
      sub_1A3C52C70(0, &qword_1EB1265E0, 0x1E69788F0);
      v8 = v7;
      v4 = sub_1A524DC44();
      if (v4)
      {
LABEL_10:

        sub_1A46D24A0();
      }
    }
  }
}

void sub_1A46D4FA0(uint64_t a1)
{
  if (!qword_1EB140618)
  {
    sub_1A5243994();
    sub_1A46D504C(255);
    sub_1A46D50B4(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140618);
    }
  }
}

void sub_1A46D504C(uint64_t a1)
{
  if (!qword_1EB140620)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140620);
    }
  }
}

uint64_t sub_1A46D50B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A46D50FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x188))();
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for PhotosSearchUtilities(0, v5);
  v9 = (*(v8 + 272))(a1, a2, v7);

  return v9;
}

void sub_1A46D51F8(uint64_t a1)
{
  if (!qword_1EB140650)
  {
    sub_1A5243994();
    sub_1A46D504C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140650);
    }
  }
}

uint64_t sub_1A46D5268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A46D52D4(char a1)
{
  if (v1[16] == (a1 & 1))
  {
    v1[16] = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 320))(v3);
  }
}

void sub_1A46D53BC(void *a1)
{
  v2 = v1;
  v4 = v1[6];
  sub_1A3C52C70(0, &qword_1EB12D040, &off_1E7721548);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[6];
    v2[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 320))(v9);
  }
}

uint64_t sub_1A46D550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14 == 0xD000000000000025 && 0x80000001A53E5F10 == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v16 = sub_1A524D474();
    aBlock[4] = sub_1A46D5EFC;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_29_6;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C51A84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C51A84(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v13, v9, v17);
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1A46D582C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

double sub_1A46D58A4(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  (*(*v1 + 312))();

  if (v1[16] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 320))(v5);
  }

  return result;
}

void sub_1A46D59C8(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 312))();

  *a2 = v3[16];
}

id sub_1A46D5A68()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  v1 = v0[6];

  return v1;
}

id sub_1A46D5ADC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 312))();

  v4 = v3[6];
  *a2 = v4;

  return v4;
}

id *SharedAlbumsAvailabilityObserver.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsAvailabilityObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t _s12PhotosUICore32SharedAlbumsAvailabilityObserverC06sharedD9Available15forPhotoLibrarySbSo07PHPhotoK0C_tFZ_0(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [a1 photoLibraryURL];
  sub_1A5240DE4();

  v8 = sub_1A5240D44();
  (*(v3 + 8))(v5, v2);
  LODWORD(v2) = [v6 sharedStreamsEnabledForPhotoLibraryURL_];

  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v5) = [v9 shouldSimulateSharedAlbumsUnavailable];

  return (v5 ^ 1) & v2;
}

void sub_1A46D5EC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_1A46D5EFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    (*(*v1 + 39))();

    v2 = v1[6];

    [v2 inputEvent];
  }
}

void sub_1A46D6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManagerObserver];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores] = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListObjects] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers] = v7;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagerObservers] = v7;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers] = v7;
  v8 = *(a1 + 56);
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary] = v8;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_topLevelIdentifier];
  *v9 = a2;
  *(v9 + 1) = a3;
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  v10 = v8;
  swift_retain_n();
  *&v3[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibraryContext] = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v10, 0, a1);
  sub_1A3C52C70(0, &unk_1EB120900, off_1E771DA58);
  v11 = sub_1A524CA14();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LemonadeBookmarksDataSectionManager();
  v12 = objc_msgSendSuper2(&v14, sel_initWithChildDataSectionManagers_, v11);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C75A8C(&qword_1EB129F18, type metadata accessor for LemonadeBookmarksManager, &protocol conformance descriptor for LemonadeBookmarksManager);
  v13 = v12;
  sub_1A5245C54();
}

double sub_1A46D625C()
{
  sub_1A524CC54();
  v0 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A3C67884(sub_1A46DBD88, v0, "PhotosUICore/LemonadeBookmarksDataSectionManager.swift", 54, 2u, 24);

  return result;
}

void sub_1A46D631C()
{
  v1 = v0;
  sub_1A46DB850(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v113 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v113 - v8;
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  v130 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v113 - v13;
  sub_1A46DB8B4(0);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A52414C4();
  v119 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v113 - v18;
  sub_1A46DB850(0, &qword_1EB1406F8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EF0]);
  v123 = *(v19 - 8);
  v124 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v113 - v20;
  v132 = type metadata accessor for LemonadeBookmark(0);
  v21 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LemonadeBookmarkCore(0);
  v133 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v113 - v29;
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v33 = &v113 - v32;
  v34 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] + 328))(v31);
  v35 = *(v34 + 16);
  v118 = v6;
  v117 = v9;
  if (v35)
  {
    v135[0] = MEMORY[0x1E69E7CC0];
    sub_1A46DAA8C(0, v35, 0);
    v36 = v135[0];
    v37 = *(v21 + 80);
    v121 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v21 + 72);
    do
    {
      sub_1A3C58E50(v38, v23, type metadata accessor for LemonadeBookmark);
      v40 = v36;
      v41 = v23[16];
      sub_1A3C58E50(&v23[*(v132 + 24)], &v33[*(v24 + 20)], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C9ECF8(v23, type metadata accessor for LemonadeBookmark);
      *v33 = v41;
      v36 = v40;
      v135[0] = v40;
      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1A46DAA8C((v42 > 1), v43 + 1, 1);
        v36 = v135[0];
      }

      *(v36 + 16) = v43 + 1;
      sub_1A46DB354(v33, v36 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v43);
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v44 = v125;
  v45 = v126;
  v46 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores;
  v47 = *&v1[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores];
  v48 = *(v47 + 16);
  v49 = v120;
  v121 = v36;
  if (v48)
  {
    v113 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarkCores;
    v135[0] = v36;
    v136 = v47;
    v50 = MEMORY[0x1E69E62F8];
    sub_1A46DB850(0, &qword_1EB140708, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E62F8]);
    sub_1A46DB97C(&qword_1EB140710, &qword_1EB140708, v50, MEMORY[0x1E69E6310]);
    sub_1A46DB310(&unk_1EB16BDF0, &unk_1A5358428);
    v51 = v122;
    sub_1A524C504();
    sub_1A52414B4();
    sub_1A52414B4();
    v52 = v127;
    (*(v123 + 16))(v127, v51, v124);
    v53 = *(v114 + 36);
    sub_1A46DB97C(&qword_1EB140700, &qword_1EB1406F8, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6F00]);
    sub_1A524CFD4();
    sub_1A524D034();
    v54 = *(v52 + v53);
    v55 = MEMORY[0x1E69E7CC0];
    if (v54 != v135[0])
    {
      do
      {
        v132 = v55;
        v56 = v127;
        while (1)
        {
          v57 = sub_1A524D0C4();
          v58 = v129;
          sub_1A46DB9D8(v59, v129);
          v57(v135, 0);
          sub_1A524D044();
          sub_1A46DBA6C(v58, v49);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_1A46DBB00(0);
          v61 = v49;
          v63 = *(v62 + 48);
          if (EnumCaseMultiPayload == 1)
          {
            break;
          }

          sub_1A5241484();
          sub_1A3C9ECF8(v61 + v63, type metadata accessor for LemonadeBookmarkCore);
          sub_1A524D034();
          v49 = v61;
          if (*(v56 + v53) == v135[0])
          {
            v44 = v125;
            v45 = v126;
            v55 = v132;
            goto LABEL_21;
          }
        }

        v64 = v115;
        sub_1A46DB354(v61 + v63, v115);
        sub_1A5241484();
        sub_1A3C58E50(v64, v116, type metadata accessor for LemonadeBookmarkCore);
        v55 = v132;
        v49 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1A46D92F8(0, v55[2] + 1, 1, v55);
        }

        v44 = v125;
        v45 = v126;
        v66 = v55[2];
        v65 = v55[3];
        if (v66 >= v65 >> 1)
        {
          v55 = sub_1A46D92F8((v65 > 1), v66 + 1, 1, v55);
        }

        sub_1A3C9ECF8(v115, type metadata accessor for LemonadeBookmarkCore);
        v55[2] = v66 + 1;
        sub_1A46DB354(v116, v55 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v66);
        v67 = v127;
        sub_1A524D034();
      }

      while (*(v67 + v53) != v135[0]);
    }

LABEL_21:
    sub_1A3C9ECF8(v127, sub_1A46DB8B4);
    v69 = v55[2];
    if (v69)
    {
      v70 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListObjects;
      v71 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers;
      v72 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagerObservers;
      v73 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers;
      v74 = v134;
      v75 = *(v133 + 80);
      v132 = v55;
      v76 = v55 + ((v75 + 32) & ~v75);
      v77 = *(v133 + 72);
      do
      {
        sub_1A3C58E50(v76, v74, type metadata accessor for LemonadeBookmarkCore);
        swift_beginAccess();
        v78 = sub_1A46D94F4(v74);
        if (v79)
        {
          v80 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = *&v1[v70];
          v136 = v82;
          *&v1[v70] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1A46DA874();
            v82 = v136;
          }

          sub_1A3C9ECF8(*(v82 + 48) + v80 * v77, type metadata accessor for LemonadeBookmarkCore);

          sub_1A46DA0BC(v80, v82);
          *&v1[v70] = v82;
        }

        swift_endAccess();
        swift_beginAccess();
        v83 = sub_1A46D94F4(v134);
        if (v84)
        {
          v85 = v83;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v87 = *&v1[v71];
          v136 = v87;
          *&v1[v71] = 0x8000000000000000;
          if (!v86)
          {
            sub_1A46DA638(&qword_1EB1406D0, &qword_1EB1406D8, off_1E7720FC8);
            v87 = v136;
          }

          sub_1A3C9ECF8(*(v87 + 48) + v85 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v85, v87);
          *&v1[v71] = v87;
        }

        swift_endAccess();
        swift_beginAccess();
        v88 = sub_1A46D94F4(v134);
        if (v89)
        {
          v90 = v88;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v92 = *&v1[v72];
          v136 = v92;
          *&v1[v72] = 0x8000000000000000;
          if (!v91)
          {
            sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70, off_1E7721248);
            v92 = v136;
          }

          sub_1A3C9ECF8(*(v92 + 48) + v90 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v90, v92);
          *&v1[v72] = v92;
        }

        swift_endAccess();
        swift_beginAccess();
        v93 = sub_1A46D94F4(v134);
        if (v94)
        {
          v95 = v93;
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v97 = *&v1[v73];
          v136 = v97;
          *&v1[v73] = 0x8000000000000000;
          if (!v96)
          {
            sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70, off_1E7721248);
            v97 = v136;
          }

          sub_1A3C9ECF8(*(v97 + 48) + v95 * v77, type metadata accessor for LemonadeBookmarkCore);
          swift_unknownObjectRelease();
          sub_1A46D9D80(v95, v97);
          *&v1[v73] = v97;
        }

        swift_endAccess();
        v74 = v134;
        sub_1A3C9ECF8(v134, type metadata accessor for LemonadeBookmarkCore);
        v76 += v77;
        --v69;
      }

      while (v69);

      v44 = v125;
      v45 = v126;
    }

    else
    {
    }

    v98 = v119;
    v99 = v117;
    (*(v119 + 16))(v117, v131, v44);
    v100 = *(v98 + 56);
    v100(v99, 0, 1, v44);
    v101 = v118;
    v100(v118, 1, 1, v44);
    v100(v45, 1, 1, v44);
    v102 = sub_1A5241414();
    v103 = *(v98 + 48);
    if (v103(v99, 1, v44) == 1)
    {
      v104 = 0;
    }

    else
    {
      v105 = sub_1A5241414();
      v106 = v99;
      v104 = v105;
      (*(v98 + 8))(v106, v44);
    }

    if (v103(v101, 1, v44) == 1)
    {
      v107 = 0;
    }

    else
    {
      v108 = sub_1A5241414();
      v109 = v101;
      v107 = v108;
      (*(v98 + 8))(v109, v44);
    }

    if (v103(v45, 1, v44) == 1)
    {
      v110 = 0;
    }

    else
    {
      v110 = sub_1A5241414();
      (*(v98 + 8))(v45, v44);
    }

    v68 = [objc_allocWithZone(off_1E7721450) initWithIncrementalChangeDetailsRemovedIndexes:v102 insertedIndexes:v104 movesToIndexes:v107 movesFromIndexes:0 changedIndexes:v110];

    v111 = *(v98 + 8);
    v111(v131, v44);
    v111(v128, v44);
    (*(v123 + 8))(v122, v124);
    v46 = v113;
  }

  else
  {
    v68 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
  }

  *&v1[v46] = v121;
  v112 = v68;

  [v1 updateDataSectionWithChangeDetails_];
}

void sub_1A46D730C(uint64_t a1)
{
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for LemonadeBookmarkCore(0);
  v5[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5[1] = v3;
  v5[2] = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46D79F0(_BYTE *a1, uint64_t a2)
{
  v18 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v17 = a1;
    v9 = *a1;
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1A3C58E50(v10, v6, type metadata accessor for LemonadeBookmarkCore);
      v24 = *v6;
      v23 = v9;
      sub_1A3C3BE04();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v21 == v19 && v22 == v20)
      {
      }

      else
      {
        v13 = sub_1A524EAB4();

        if ((v13 & 1) == 0)
        {
          sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
          goto LABEL_4;
        }
      }

      v14 = sub_1A3CA1BC0(&v6[*(v18 + 20)], &v17[*(v18 + 20)]);
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      if (v14)
      {
        return v8;
      }

LABEL_4:
      ++v8;
      v10 += v11;
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t sub_1A46D7C0C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmarkCore(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  sub_1A3C58E50(a1 + v13, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3C9ECF8(v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  result = 0;
  if (EnumCaseMultiPayload != 6)
  {
    v16 = *(a1 + 16);
    v17 = *(v4 + 20);
    sub_1A3C58E50(a1 + v13, &v9[v17], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    *v9 = v16;
    v18 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_itemListManagers;
    swift_beginAccess();
    if (*(*(v2 + v18) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3CA034C(*(v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary), v30);
    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v21 = (*(v20 + 24))(&v9[v17], *(v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibraryContext), v19, v20);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *(v2 + v18);
    *(v2 + v18) = 0x8000000000000000;
    v23 = swift_checkMetadataState();
    sub_1A46DB3B8(v21, v9, v19, v29, v23, AssociatedConformanceWitness);
    *(v2 + v18) = v29[0];
    swift_endAccess();
    swift_getObjectType();
    v29[1] = v21;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A3C58E50(v9, v6, type metadata accessor for LemonadeBookmarkCore);
    v25 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_1A46DB354(v6, v26 + v25);
    sub_1A52457C4();
  }

  return result;
}

void *sub_1A46D821C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A46D7C0C(a1))
  {
    v7[0] = v5;
    v7[1] = v1;
    swift_getObjectType();
    v8[3] = swift_getAssociatedTypeWitness();
    v8[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_1A5245904();
  }

  memset(v9, 0, sizeof(v9));
  sub_1A465E250(v9);
  return 0;
}

id sub_1A46D864C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmarkCore(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  result = sub_1A3F9EAF8(*(v1 + OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_photoLibrary));
  if (!result)
  {
    result = sub_1A46D821C(a1);
    if (result)
    {
      v12 = result;
      objc_opt_self();
      v23 = v12;
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = objc_opt_self();
        v16 = v23;
        if ([v15 privacyControllerForCollection_])
        {
          v17 = *(a1 + 16);
          v18 = type metadata accessor for LemonadeBookmark(0);
          sub_1A3C58E50(a1 + *(v18 + 24), &v10[*(v4 + 20)], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          *v10 = v17;
          v19 = OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_privacyControllerObservers;
          swift_beginAccess();
          if (*(*(v2 + v19) + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1A3C58E50(v10, v7, type metadata accessor for LemonadeBookmarkCore);
          v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = v20;
          sub_1A46DB354(v7, v22 + v21);

          sub_1A524D1A4();
        }
      }

      return v23;
    }
  }

  return result;
}

void sub_1A46D8990()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeBookmark(0);
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_bookmarksManager] + 328))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v9 = &v0[OBJC_IVAR____TtC12PhotosUICore35LemonadeBookmarksDataSectionManager_topLevelIdentifier];
    v10 = *(v3 + 80);
    v23 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v3 + 72);
    do
    {
      sub_1A3C58E50(v11, v6, type metadata accessor for LemonadeBookmark);
      v13 = sub_1A46D864C(v6);
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = v13;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v15 = [objc_opt_self() lockStateForCollection_];
      }

      v16 = *(v9 + 1) ? sub_1A524C634() : 0;
      v17 = PXNavigationListItemWithObject(v14, 0, v15, 1, v16);

      if (!v17)
      {
LABEL_12:
        v18 = *(v9 + 1);
        v19 = sub_1A524C634();
        v20 = sub_1A524C634();
        if (v18)
        {
          v18 = sub_1A524C634();
        }

        [objc_allocWithZone(PXNavigationListItem) initWithIdentifier:v19 title:v20 accessoryTitle:0 reorderable:1 topLevelIdentifier:v18];
      }

      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmark);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v11 += v12;
      --v8;
    }

    while (v8);

    v21 = v24;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = [v1 outlineObject];
  if (!(v21 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4036910();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A46D8E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeBookmarksDataSectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeBookmarkCore(uint64_t a1)
{
  result = qword_1EB1CEB80;
  if (!qword_1EB1CEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46D8FB8(uint64_t a1)
{
  result = type metadata accessor for LemonadeBookmark.CollectionIdentifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A46D9034()
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A46D90F8(uint64_t a1)
{
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
  return sub_1A524C4B4();
}

uint64_t sub_1A46D91AC(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

unint64_t sub_1A46D92A4()
{
  result = qword_1EB1406B0;
  if (!qword_1EB1406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1406B0);
  }

  return result;
}

void *sub_1A46D92F8(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A46DB850(0, &qword_1EB140720, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmarkCore(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for LemonadeBookmarkCore(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

unint64_t sub_1A46D94F4(_BYTE *a1)
{
  sub_1A524EC94();
  sub_1A46D92A4();
  sub_1A524C4B4();
  type metadata accessor for LemonadeBookmarkCore(0);
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
  sub_1A524C4B4();
  v2 = sub_1A524ECE4();
  return sub_1A46DA3F8(a1, v2);
}

void sub_1A46D95D4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v9 = v5;
  v10 = a2;
  v11 = type metadata accessor for LemonadeBookmarkCore(0);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  v15 = *v5;
  sub_1A46DB618(0, v14, a4, a5);
  v46 = v10;
  v16 = sub_1A524E774();
  v17 = v16;
  if (*(v15 + 16))
  {
    v42 = v5;
    v43 = v15;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = v16 + 64;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v18 << 6);
      v30 = *(v44 + 72);
      v31 = *(v15 + 48) + v30 * v29;
      if (v46)
      {
        sub_1A46DB354(v31, v13);
        v47 = *(*(v15 + 56) + 16 * v29);
      }

      else
      {
        sub_1A3C58E50(v31, v13, type metadata accessor for LemonadeBookmarkCore);
        v47 = *(*(v15 + 56) + 16 * v29);
        swift_unknownObjectRetain();
      }

      sub_1A524EC94();
      v48 = *v13;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
      sub_1A524C4B4();
      v32 = sub_1A524ECE4();
      v33 = -1 << *(v17 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v24 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v15 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v24 + 8 * v35);
          if (v39 != -1)
          {
            v25 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v25 = __clz(__rbit64((-1 << v34) & ~*(v24 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v15 = v43;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1A46DB354(v13, *(v17 + 48) + v30 * v25);
      *(*(v17 + 56) + 16 * v25) = v47;
      ++*(v17 + 16);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v15 + 32);
    v9 = v42;
    if (v40 >= 64)
    {
      bzero(v19, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v40;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v9 = v17;
}

void sub_1A46D99B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for LemonadeBookmarkCore(0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1A46DB268(0);
  v39 = v4;
  v9 = sub_1A524E774();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v35 = v3;
    v36 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v37 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v39)
      {
        sub_1A46DB354(v25, v7);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1A3C58E50(v25, v7, type metadata accessor for LemonadeBookmarkCore);
        v40 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1A524EC94();
      v41 = *v7;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
      sub_1A524C4B4();
      v26 = sub_1A524ECE4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v10 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v10 = v36;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1A46DB354(v7, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1A46D9D80(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for LemonadeBookmarkCore(0);
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1A524E244() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1A3C58E50(*(a2 + 48) + v12 * v9, v6, type metadata accessor for LemonadeBookmarkCore);
      sub_1A524EC94();
      v26 = *v6;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
      sub_1A524C4B4();
      v15 = sub_1A524ECE4();
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v24;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v24;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v24;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * a1);
          v20 = (v18 + 16 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v24;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1A46DA0BC(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for LemonadeBookmarkCore(0);
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1A524E244() + 1) & ~v8;
    v12 = *(v4 + 72);
    v24 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_1A3C58E50(*(a2 + 48) + v12 * v9, v6, type metadata accessor for LemonadeBookmarkCore);
      sub_1A524EC94();
      v26 = *v6;
      sub_1A46D92A4();
      sub_1A524C4B4();
      type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
      sub_1A3C75A8C(&qword_1EB1406B8, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5D8);
      sub_1A524C4B4();
      v15 = sub_1A524ECE4();
      sub_1A3C9ECF8(v6, type metadata accessor for LemonadeBookmarkCore);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v24;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v24;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v24;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v24;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1A46DA3F8(_BYTE *a1, uint64_t a2)
{
  v19 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + 64;
  v20 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v18 = a1;
    v12 = *a1;
    v13 = *(v5 + 72);
    do
    {
      sub_1A3C58E50(*(v20 + 48) + v13 * v10, v7, type metadata accessor for LemonadeBookmarkCore);
      v26 = *v7;
      v25 = v12;
      sub_1A3C3BE04();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v23 == v21 && v24 == v22)
      {
      }

      else
      {
        v15 = sub_1A524EAB4();

        if ((v15 & 1) == 0)
        {
          sub_1A3C9ECF8(v7, type metadata accessor for LemonadeBookmarkCore);
          goto LABEL_4;
        }
      }

      v16 = sub_1A3CA1BC0(&v7[*(v19 + 20)], &v18[*(v19 + 20)]);
      sub_1A3C9ECF8(v7, type metadata accessor for LemonadeBookmarkCore);
      if (v16)
      {
        return v10;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1A46DA638(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v7 = v3;
  v8 = type metadata accessor for LemonadeBookmarkCore(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46DB618(0, a1, a2, a3);
  v12 = *v3;
  v13 = sub_1A524E764();
  v14 = v13;
  if (*(v12 + 16))
  {
    v31 = v7;
    v15 = (v13 + 64);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 64 + 8 * v16)
    {
      memmove(v15, (v12 + 64), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = *(v12 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = *(v9 + 72) * v27;
        sub_1A3C58E50(*(v12 + 48) + v28, v11, type metadata accessor for LemonadeBookmarkCore);
        v27 *= 16;
        v29 = *(v14 + 48);
        v32 = *(*(v12 + 56) + v27);
        sub_1A46DB354(v11, v29 + v28);
        *(*(v14 + 56) + v27) = v32;
        swift_unknownObjectRetain();
      }

      while (v22);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v31;
        goto LABEL_21;
      }

      v26 = *(v12 + 64 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }
}

void sub_1A46DA874()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeBookmarkCore(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46DB268(0);
  v5 = *v0;
  v6 = sub_1A524E764();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(v25 + 72) * v20;
        sub_1A3C58E50(*(v5 + 48) + v21, v4, type metadata accessor for LemonadeBookmarkCore);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1A46DB354(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        v23 = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }
}

void *sub_1A46DAA8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A46DAAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A46DAAAC(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A46DB850(0, &qword_1EB140720, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmarkCore(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for LemonadeBookmarkCore(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_1A46DACA8(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1A46D94F4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1A46DA638(&qword_1EB1406C8, &qword_1EB124A70, off_1E7721248);
      goto LABEL_7;
    }

    sub_1A46D95D4(v18, a4 & 1, &qword_1EB1406C8, &qword_1EB124A70, off_1E7721248);
    v24 = sub_1A46D94F4(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a3, v12, type metadata accessor for LemonadeBookmarkCore);
      return sub_1A46DB02C(v15, v12, a1, a2, v21);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  *v22 = a1;
  v22[1] = a2;

  return swift_unknownObjectRelease();
}

void sub_1A46DAE88(uint64_t a1, _BYTE *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1A46D94F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1A46DA874();
      goto LABEL_7;
    }

    sub_1A46D99B8(v16, a3 & 1);
    v22 = sub_1A46D94F4(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a2, v10, type metadata accessor for LemonadeBookmarkCore);
      sub_1A46DB0D4(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

uint64_t sub_1A46DB02C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for LemonadeBookmarkCore(0);
  result = sub_1A46DB354(a2, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1A46DB0D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for LemonadeBookmarkCore(0);
  result = sub_1A46DB354(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1A46DB174(char *a1, char *a2)
{
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v11 == v9 && v12 == v10)
  {
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = type metadata accessor for LemonadeBookmarkCore(0);
  v6 = sub_1A3CA1BC0(&a1[*(v7 + 20)], &a2[*(v7 + 20)]);
  return v6 & 1;
}

void sub_1A46DB268(uint64_t a1)
{
  if (!qword_1EB1406C0)
  {
    type metadata accessor for LemonadeBookmarkCore(255);
    sub_1A3C52C70(255, &qword_1EB1265D0, 0x1E6978958);
    sub_1A46DB310(&unk_1EB16BE00, &unk_1A5358450);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1406C0);
    }
  }
}

uint64_t sub_1A46DB310(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeBookmarkCore(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DB354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmarkCore(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46DB3B8(uint64_t a1, _BYTE *a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v11 = type metadata accessor for LemonadeBookmarkCore(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v16 = sub_1A46D94F4(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1A46DA638(&qword_1EB1406D0, &qword_1EB1406D8, off_1E7720FC8);
      goto LABEL_7;
    }

    sub_1A46D95D4(v19, a3 & 1, &qword_1EB1406D0, &qword_1EB1406D8, off_1E7720FC8);
    v25 = sub_1A46D94F4(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A3C58E50(a2, v13, type metadata accessor for LemonadeBookmarkCore);
      return sub_1A46DB6C4(v16, v13, a1, v22, v28, a6);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *a4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 16 * v16);
  *v23 = a1;
  v23[1] = a6;

  return swift_unknownObjectRelease();
}

void sub_1A46DB5A4(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmarkCore(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1A46D80C4(a1, v4, v5);
}

void sub_1A46DB618(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for LemonadeBookmarkCore(255);
    sub_1A3C652C8(255, a3, a4, 0);
    sub_1A46DB310(&unk_1EB16BE00, &unk_1A5358450);
    v7 = sub_1A524E7A4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46DB6C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = type metadata accessor for LemonadeBookmarkCore(0);
  result = sub_1A46DB354(a2, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

void sub_1A46DB76C(uint64_t a1)
{
  if (!qword_1EB1434E0)
  {
    sub_1A3C652C8(255, &qword_1EB1406E0, &protocol descriptor for PhotoKitItemList, 1);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1434E0);
    }
  }
}

uint64_t sub_1A46DB7D8()
{
  v1 = type metadata accessor for LemonadeBookmarkCore(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)));
  return sub_1A42E16DC(*v2, &v2[*(v1 + 20)]);
}

void sub_1A46DB850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46DB8B4(uint64_t a1)
{
  if (!qword_1EB1406F0)
  {
    v1 = MEMORY[0x1E69E6EF0];
    sub_1A46DB850(255, &qword_1EB1406F8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EF0]);
    sub_1A46DB97C(&qword_1EB140700, &qword_1EB1406F8, v1, MEMORY[0x1E69E6F00]);
    v2 = sub_1A524E684();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1406F0);
    }
  }
}

uint64_t sub_1A46DB97C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A46DB850(255, a2, type metadata accessor for LemonadeBookmarkCore, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DB9D8(uint64_t a1, uint64_t a2)
{
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46DBA6C(uint64_t a1, uint64_t a2)
{
  sub_1A46DB850(0, &qword_1EB1406E8, type metadata accessor for LemonadeBookmarkCore, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A46DBB00(uint64_t a1)
{
  if (!qword_1EB140718)
  {
    type metadata accessor for LemonadeBookmarkCore(255);
    sub_1A3FADBE8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB140718);
    }
  }
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = (type metadata accessor for LemonadeBookmarkCore(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[7] + v2;
  type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_14;
      }

      v5 = sub_1A5241144();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

LABEL_11:

        goto LABEL_14;
      }

      v5 = sub_1A5244EB4();
    }

    (*(*(v5 - 8) + 8))(v3, v5);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    goto LABEL_11;
  }

LABEL_14:

  return swift_deallocObject();
}

void sub_1A46DBCE0(uint64_t a1, char a2)
{
  v4 = *(*(type metadata accessor for LemonadeBookmarkCore(0) - 8) + 80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 3) != 0)
    {
      sub_1A46D730C(v2 + ((v4 + 24) & ~v4));
    }
  }
}

void sub_1A46DBD88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A46D631C();
  }
}

id sub_1A46DBDE0(void *a1)
{
  result = [a1 firstAsset];
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = [a1 containingAlbum];
    v6 = [v4 px:v3 fetchContainingCollectionsForAsset:v5 excludedAssetCollection:?];

    v7 = [v6 count];
    return (v7 > 0);
  }

  return result;
}

void sub_1A46DBEE8(void *a1, void *a2, void *a3)
{
  v22 = 2;
  sub_1A3C6C180(v18);
  v13 = *&v18[0];
  v14 = BYTE8(v18[0]);
  sub_1A3C6C18C(v20);
  v15 = *&v20[0];
  LOBYTE(v16) = BYTE8(v20[0]);
  v5 = sub_1A3C5A374();
  v6 = sub_1A3C30368();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v13, 0, &unk_1F171FBD8, 0, 1, &v15, v5 & 1, &v22, v23, v6, v7 & 1, v8 & 1, v9 & 1, 0);
  sub_1A3C47D24(0, &qword_1EB129FB0, sub_1A3D9D024, type metadata accessor for PhotoKitItemListManager);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18[2] = v23[2];
  v18[3] = v23[3];
  v18[4] = v23[4];
  v19 = v24;
  v18[0] = v23[0];
  v18[1] = v23[1];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  v11 = a1;
  sub_1A3C6DB58(v23, &v13);
  v12 = a3;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v11, 0, v20, v18, &v15, sub_1A46DC130, v10);
}

id sub_1A46DC130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = [v2 containingAlbum];
  v5 = [v3 px:v1 fetchContainingCollectionsForAsset:v4 excludedAssetCollection:?];

  return v5;
}

uint64_t sub_1A46DC1B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A40F2AD0(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46DC1F4(uint64_t a1)
{
  v1 = *(sub_1A5243164() + 16);

  return v1;
}

uint64_t sub_1A46DC22C(uint64_t a1)
{
  v1 = *(sub_1A5243164() + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    if (sub_1A52431A4())
    {
      MEMORY[0x1A5907D70]();
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v2 = v4;
      if (v1 == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if (v1 == 1)
      {
LABEL_13:

        return v2;
      }
    }

    if (sub_1A52431A4())
    {
      MEMORY[0x1A5907D70]();
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v2 = v4;
    }

    goto LABEL_13;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1A46DC3A8()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x188))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_1A524E2B4();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v2 = sub_1A52426E4();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A46DC4B4()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x180))();
  v1 = sub_1A524C634();
  v2 = PXLocalizedString(v1);

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A46DC590(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))();
  (*((*v3 & *v1) + 0x190))();
  v5 = objc_opt_self();
  v6 = sub_1A524C634();

  v8 = [v5 localizedAttributedAlbumAttributionStringWithAlbumCount:v4 albumTitle:v6 userInterfaceIdiom:(*((*v3 & *v1) + 0x140))(v7) textStyle:a1];

  if (v8)
  {

    return sub_1A5240834();
  }

  else
  {

    return sub_1A5240714();
  }
}

void sub_1A46DC740(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x180))() != 1)
  {
    goto LABEL_13;
  }

  v5 = (*((*v4 & *v1) + 0x188))();
  if (v5 >> 62)
  {
    v9 = v5;
    v10 = sub_1A524E2B4();
    v5 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  sub_1A40F2AD0(0);
  v7 = v6;
  sub_1A46DC1B0(&qword_1EB140728, MEMORY[0x1E69C1F60]);
  v8 = PhotosModel.photokitObject.getter(v7);

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      (*((*v4 & *v2) + 0x1B8))();

      return;
    }
  }

LABEL_13:
  v11 = sub_1A5240E64();
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

void sub_1A46DC974(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C47D24(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v6) == 5)
  {
    v10 = [a1 px_isSharedAlbum];
    if (v10)
    {
      v11 = 0x6C61646572616873;
    }

    else
    {
      v11 = 0x6D75626C61;
    }

    if (v10)
    {
      v12 = 0xEB000000006D7562;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1A524E404();

    v21 = 0x2F3A736F746F6870;
    v22 = 0xE90000000000002FLL;
    MEMORY[0x1A5907B60](v11, v12);

    MEMORY[0x1A5907B60](0x6669746E6564693FLL, 0xEC0000003D726569);
    v13 = [a1 localIdentifier];
    v14 = sub_1A524C674();
    v16 = v15;

    MEMORY[0x1A5907B60](v14, v16);

    sub_1A5240E34();
  }

  else
  {
    v17 = (*((*v9 & *v2) + 0x88))();
    v18 = [a1 px:v17 navigationURLWithSelectedObject:?];

    if (v18)
    {
      sub_1A5240DE4();

      v19 = sub_1A5240E64();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    }

    else
    {
      v20 = sub_1A5240E64();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    }

    sub_1A408A03C(v8, a2);
  }
}

double sub_1A46DCC8C()
{

  return result;
}

id sub_1A46DCCCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(uint64_t a1)
{
  result = qword_1EB18EB50;
  if (!qword_1EB18EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A46DCDEC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void sub_1A46DCF2C(char a1)
{
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD00C(char a1)
{
  if (*(v1 + 81) == (a1 & 1))
  {
    *(v1 + 81) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD0EC(char a1)
{
  if (*(v1 + 82) == (a1 & 1))
  {
    *(v1 + 82) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD1CC(char a1)
{
  if (*(v1 + 83) == (a1 & 1))
  {
    *(v1 + 83) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD2AC(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD394(char a1)
{
  if (*(v1 + 96) == (a1 & 1))
  {
    *(v1 + 96) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD474(char a1)
{
  if (*(v1 + 97) == (a1 & 1))
  {
    *(v1 + 97) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD554(char a1)
{
  if (*(v1 + 98) == (a1 & 1))
  {
    *(v1 + 98) = a1 & 1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 344) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v3 = *(v1 + 98);
    }

    else
    {
      v3 = 0;
    }

    sub_1A46E0848(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD6C8(char a1)
{
  if (*(v1 + 99) == (a1 & 1))
  {
    *(v1 + 99) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

double sub_1A46DD7A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 104) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  return result;
}

void sub_1A46DD8E8(char a1)
{
  if (*(v1 + 120) == (a1 & 1))
  {
    *(v1 + 120) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DD9C8(char a1)
{
  if (*(v1 + 121) == (a1 & 1))
  {
    *(v1 + 121) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DDAA8(double a1)
{
  swift_beginAccess();
  if (*(v1 + 144) == a1)
  {
    *(v1 + 144) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DDBA4(double a1)
{
  if (*(v1 + 152) == a1)
  {

    sub_1A46E251C(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();
}

double sub_1A46DDCB0(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 160) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }

  return result;
}

double sub_1A46DDD98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 176);
  v5 = *(v3 + 192);
  if (v5 <= 1)
  {
    if (*(v3 + 192))
    {
      if (a3 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (a3)
    {
      goto LABEL_33;
    }

    result = *(v3 + 176);
    if (v4 == *&a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = *(v3 + 184);
    if (v5 == 2)
    {
      if (a3 == 2)
      {
LABEL_10:
        result = *(v3 + 184);
        if (v4 != *&a1 || v6 != *&a2)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v5 == 3)
      {
        if (a3 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }

      if (*&v4 > 1uLL)
      {
        if (*&v4 ^ 2 | *&v6)
        {
          if (a3 != 4 || a1 != 3)
          {
            goto LABEL_33;
          }
        }

        else if (a3 != 4 || a1 != 2)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!(*&v4 | *&v6))
        {
          if (a3 != 4 || a2 | a1)
          {
            goto LABEL_33;
          }

LABEL_22:
          *(v3 + 176) = *&a1;
          *(v3 + 184) = *&a2;
          *(v3 + 192) = a3;
          return result;
        }

        if (a3 != 4 || a1 != 1)
        {
          goto LABEL_33;
        }
      }

      if (*&a2 == 0.0)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_33:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C79318();
  sub_1A52415C4();

  return result;
}

void sub_1A46DDF94(double a1)
{
  if (*(v1 + 224) == a1)
  {
    *(v1 + 224) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE07C(double a1, double a2)
{
  if (*(v2 + 304) == a1 && *(v2 + 312) == a2)
  {
    *(v2 + 304) = a1;
    *(v2 + 312) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE16C(double a1)
{
  if (*(v1 + 336) == a1)
  {
    *(v1 + 336) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE254(char a1)
{
  if (*(v1 + 344) == (a1 & 1))
  {
    *(v1 + 344) = a1 & 1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    if (*(v1 + 344) == 1)
    {
      swift_getKeyPath();
      sub_1A52415D4();

      v3 = *(v1 + 98);
    }

    else
    {
      v3 = 0;
    }

    sub_1A46E0848(v3);
    sub_1A46E4A54();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE3CC(char a1)
{
  if (*(v1 + 345) == (a1 & 1))
  {
    *(v1 + 345) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE4AC(char a1)
{
  if (*(v1 + 346) == (a1 & 1))
  {
    *(v1 + 346) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

double sub_1A46DE58C(uint64_t a1, char a2)
{
  if (*(v2 + 360))
  {
    if ((a2 & 1) == 0)
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3C79318();
      sub_1A52415C4();

      return result;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    result = *(v2 + 352);
    if (result != *&a1)
    {
      goto LABEL_8;
    }
  }

  *(v2 + 352) = *&a1;
  *(v2 + 360) = a2 & 1;
  if (*(v2 + 346) == (a2 & 1))
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1A3C79318();
    sub_1A52415C4();

    sub_1A46E2BFC();
  }

  return result;
}

void sub_1A46DE748(double a1)
{
  if (*(v1 + 368) == a1)
  {
    *(v1 + 368) = a1;
    swift_getKeyPath();
    sub_1A3C79318();
    sub_1A52415D4();

    sub_1A46DFCC8(*(v1 + 368) > 0.5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE888(double a1)
{
  if (*(v1 + 376) == a1)
  {
    *(v1 + 376) = a1;

    sub_1A46E4FF0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DE998(double a1)
{
  if (*(v1 + 384) == a1)
  {
    *(v1 + 384) = a1;

    sub_1A46E4FF0();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DEAA8(double a1)
{
  if (*(v1 + 392) == a1)
  {
    *(v1 + 392) = a1;

    sub_1A46DF0D8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DEBB8(double a1)
{
  if (*(v1 + 400) == a1)
  {
    *(v1 + 400) = a1;

    sub_1A46DF0D8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DECC8(char a1)
{
  if (*(v1 + 449) == (a1 & 1))
  {
    *(v1 + 449) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}

void sub_1A46DEDA8(char a1)
{
  if (*(v1 + 464) == (a1 & 1))
  {
    *(v1 + 464) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C79318();
    sub_1A52415C4();
  }
}