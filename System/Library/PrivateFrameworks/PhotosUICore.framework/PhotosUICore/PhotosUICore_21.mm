double sub_1A3ED5660()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BEF4();
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel_hasPreparedExtensionSources] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel_hasPreparedExtensionSources] = 1;
    v14 = swift_allocObject();
    v22 = v2;
    v15 = v14;
    swift_unknownObjectWeakInit();
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v21 = v5;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
    v20 = v6;
    v16 = sub_1A524D4C4();
    (*(v10 + 8))(v13, v9);
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    *(v17 + 24) = v15;
    aBlock[4] = sub_1A3EE0F80;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_135_0;
    v18 = _Block_copy(aBlock);
    v19 = v0;

    sub_1A524BF14();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v18);
    _Block_release(v18);

    (*(v22 + 8))(v4, v1);
    (*(v20 + 8))(v8, v21);
  }

  return result;
}

void sub_1A3ED5A64(void *a1, uint64_t a2)
{
  v137 = a2;
  v111 = sub_1A524BEE4();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1A524BF64();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1A524BFC4();
  v112 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v106 - v14;
  v156 = sub_1A5246F24();
  v15 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v145 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v106 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v106 - v24;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v28 = &v106 - v27;
  v29 = MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *a1;
  v31 = *(v30 + 0x430);
  v144 = a1;
  v121 = v30 + 1072;
  v120 = v31;
  v31(1, v26);
  SharedCollectionsLogger.getter();
  v32 = sub_1A5246F04();
  v33 = sub_1A524D264();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1A3C1C000, v32, v33, "Computing media sources, previews and display media type", v34, 2u);
    MEMORY[0x1A590EEC0](v34, -1, -1);
  }

  v154 = *(v15 + 8);
  v155 = v15 + 8;
  v154(v28, v156);
  sub_1A524BFA4();
  v35 = MEMORY[0x1E69E7CC0];
  v169 = MEMORY[0x1E69E7CC0];
  v147 = swift_allocObject();
  *(v147 + 16) = v35;
  sub_1A5246CD4();
  v157 = sub_1A5246BF4();
  v158 = v36;
  v37 = *(v6 + 8);
  v37(v8, v5);
  sub_1A5246D04();
  v38 = sub_1A5246BF4();
  v131 = v39;
  v37(v8, v5);
  v40 = [objc_opt_self() livePhotoBundleType];
  sub_1A5246C44();

  v141 = sub_1A5246BF4();
  v142 = v41;
  v37(v8, v5);
  sub_1A5246CC4();
  v135 = sub_1A5246BF4();
  v140 = v42;
  v37(v8, v5);
  v161 = dispatch_group_create();
  v43 = (*((*v29 & *v144) + 0x140))();
  if (!v43)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = [v43 inputItems];

  v46 = sub_1A524CA34();
  v47 = sub_1A3D4C284(v46);

  v113 = v47;
  if (v47 >> 62)
  {
LABEL_76:
    v49 = sub_1A524E2B4();
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v51 = 0;
    v132 = 0;
    v133 = 0;
    v139 = 0;
    v119 = v113 & 0xC000000000000001;
    v118 = v113 & 0xFFFFFFFFFFFFFF8;
    v117 = v113 + 32;
    v146 = &v165;
    v152 = (v112 + 8);
    v138 = MEMORY[0x1E69E7CC0];
    *&v48 = 134217984;
    v114 = v48;
    *&v48 = 136446466;
    v130 = v48;
    *&v48 = 136315138;
    v128 = v48;
    *&v48 = 136446210;
    v127 = v48;
    v143 = v38;
    v115 = v49;
    v116 = v12;
    while (1)
    {
      if (v119)
      {
        v86 = v51;
        v53 = MEMORY[0x1A59097F0](v51, v113);
        v54 = __OFADD__(v86, 1);
        v55 = v86 + 1;
        if (v54)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v51 >= *(v118 + 16))
        {
          goto LABEL_74;
        }

        v52 = v51;
        v53 = *(v117 + 8 * v51);
        v54 = __OFADD__(v52, 1);
        v55 = v52 + 1;
        if (v54)
        {
          goto LABEL_73;
        }
      }

      v125 = v55;
      v124 = v53;
      v56 = [v53 attachments];
      if (!v56)
      {
        break;
      }

      v57 = v56;
      sub_1A3C52C70(0, &qword_1EB120AD0, 0x1E696ACA0);
      v58 = sub_1A524CA34();

      if (v58 >> 62)
      {
        v59 = sub_1A524E2B4();
        if (v59)
        {
LABEL_15:
          v12 = 0;
          v151 = v58 & 0xC000000000000001;
          v134 = v58 & 0xFFFFFFFFFFFFFF8;
          v150 = v58;
          v149 = v59;
          while (1)
          {
            if (v151)
            {
              v60 = MEMORY[0x1A59097F0](v12, v58);
            }

            else
            {
              if (v12 >= *(v134 + 16))
              {
                goto LABEL_68;
              }

              v60 = *(v58 + 8 * v12 + 32);
            }

            v61 = v60;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v159 = (v12 + 1);
            v62 = [objc_allocWithZone(MEMORY[0x1E69BE820]) init];
            aBlock = 123;
            v164 = 0xE100000000000000;
            v63 = [v61 registeredTypeIdentifiers];
            v64 = MEMORY[0x1E69E6158];
            v65 = sub_1A524CA34();

            v66 = MEMORY[0x1A5907DB0](v65, v64);
            v162 = v61;
            v67 = v66;
            v69 = v68;

            v70 = v67;
            v71 = v162;
            MEMORY[0x1A5907B60](v70, v69);

            MEMORY[0x1A5907B60](125, 0xE100000000000000);
            v72 = v164;
            v160 = aBlock;
            v73 = sub_1A524C634();
            LODWORD(v65) = [v71 hasItemConformingToTypeIdentifier_];

            if (v65)
            {
              dispatch_group_enter(v161);
              SharedCollectionsLogger.getter();
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v74 = sub_1A524C634();
            v75 = [v71 hasItemConformingToTypeIdentifier_];

            if (v75)
            {
              dispatch_group_enter(v161);
              SharedCollectionsLogger.getter();
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v76 = sub_1A524C634();
            v77 = [v71 &:v76 OBJC:? LABEL:? PROTOCOL:? :? :?PXAssetCollectionActionPerformerDelegate + 7];

            if (v77)
            {
              v78 = v161;
              dispatch_group_enter(v161);
              sub_1A524C634();
              v79 = swift_allocObject();
              v80 = v147;
              v79[2] = v62;
              v79[3] = v80;
              v79[4] = v160;
              v79[5] = v72;
              v79[6] = v78;
              v167 = sub_1A3EE0FE0;
              v168 = v79;
              aBlock = MEMORY[0x1E69E9820];
              v164 = 1107296256;
              v165 = sub_1A3D52710;
              v166 = &block_descriptor_150;
              _Block_copy(&aBlock);
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v84 = sub_1A524C634();
            v85 = [v71 &:v84 OBJC:? LABEL:? PROTOCOL:? :? :?PXAssetCollectionActionPerformerDelegate + 7];

            if (v85)
            {
              dispatch_group_enter(v161);
              SharedCollectionsLogger.getter();
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v81 = v148;
            sub_1A524BF74();
            sub_1A524D3C4();
            (*v152)(v81, v153);
            if (![v62 mediaType])
            {
              SharedCollectionsLogger.getter();
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v82 = [v62 mediaType];
            if (v82 > 1)
            {
              if (v82 == 2)
              {

                v54 = __OFADD__(v139++, 1);
                if (v54)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                if (v82 != 3)
                {
                  goto LABEL_79;
                }

                v54 = __OFADD__(v139++, 1);
                if (v54)
                {
                  goto LABEL_69;
                }
              }
            }

            else if (v82)
            {
              if (v82 != 1)
              {
                goto LABEL_79;
              }

              v54 = __OFADD__(v133++, 1);
              if (v54)
              {
                goto LABEL_70;
              }
            }

            else
            {

              if (__OFADD__(v132, 1))
              {
                goto LABEL_71;
              }

              ++v132;
            }

            v83 = v62;
            MEMORY[0x1A5907D70]();
            if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();

            v138 = v169;
            v58 = v150;
            ++v12;
            if (v159 == v149)
            {
              goto LABEL_53;
            }
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }
      }

      else
      {
        v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v59)
        {
          goto LABEL_15;
        }
      }

LABEL_53:

      v12 = v116;
      sub_1A524BFA4();
      v87 = sub_1A524BF94();
      v88 = sub_1A524BF94();
      v89 = v87 - v88;
      if (v87 < v88)
      {
        goto LABEL_75;
      }

      SharedCollectionsLogger.getter();
      v90 = sub_1A5246F04();
      v91 = sub_1A524D264();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = v114;
        *(v92 + 4) = v89 / 1000000000.0;
        _os_log_impl(&dword_1A3C1C000, v90, v91, "Shared Collection action prepared extension sources in: %f seconds", v92, 0xCu);
        MEMORY[0x1A590EEC0](v92, -1, -1);
      }

      v154(v126, v156);
      v120(0);

      (*v152)(v12, v153);
      v51 = v125;
      if (v125 == v115)
      {
        v95 = v132 > 0;
        v50 = MEMORY[0x1E69E7CC0];
        v93 = v139;
        v94 = v133;
        v96 = v138;
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_78;
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = MEMORY[0x1E69E7CC0];
LABEL_58:

  v97 = v93 == v94 || v95;
  v98 = 1;
  if (v93 < 1)
  {
    v98 = 2;
  }

  if (v97)
  {
    v99 = 0;
  }

  else
  {
    v99 = v98;
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v100 = sub_1A524D474();
  v101 = swift_allocObject();
  v101[2] = v137;
  v101[3] = v96;
  v101[4] = v147;
  v101[5] = v99;
  v167 = sub_1A3EE1034;
  v168 = v101;
  aBlock = MEMORY[0x1E69E9820];
  v164 = 1107296256;
  v165 = sub_1A3C2E0D0;
  v166 = &block_descriptor_168_0;
  v102 = _Block_copy(&aBlock);

  v103 = v106;
  sub_1A524BF14();
  aBlock = v50;
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v104 = v108;
  v105 = v111;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v103, v104, v102);
  _Block_release(v102);

  (*(v110 + 8))(v104, v105);
  (*(v107 + 8))(v103, v109);
  (*(v112 + 8))(v122, v153);
}

void sub_1A3ED7470(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, _BYTE *, uint64_t), uint64_t a8, NSObject *a9)
{
  v72 = a5;
  v73 = a8;
  v69 = a6;
  v70 = a7;
  v71 = a4;
  v74 = a2;
  v80 = a9;
  v10 = sub_1A5246F24();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v62 - v12;
  v13 = MEMORY[0x1E6968FB0];
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - v17;
  v19 = sub_1A5240E64();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v68 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v62 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v62 - v27;
  v30 = v29;
  sub_1A3D600D0(a1, v18, &unk_1EB12B250, v13);
  v31 = *(v30 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    sub_1A3C68644(v18, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v32 = *(v30 + 32);
  v73 = v30 + 32;
  v70 = v32;
  v32(v28, v18, v19);
  v33 = v75;
  SharedCollectionsLogger.getter();
  v34 = *(v30 + 16);
  v74 = v28;
  v66 = v34;
  v67 = v30 + 16;
  v34(v25, v28, v19);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D264();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v63 = v37;
    v64 = swift_slowAlloc();
    v81[0] = v64;
    *v37 = 136446210;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v62[1] = v36;
    v38 = sub_1A524EA44();
    v65 = v31;
    v39 = v30;
    v41 = v40;
    (*(v39 + 8))(v25, v19);
    sub_1A3C2EF94(v38, v41, v81);
  }

  v42 = *(v30 + 8);
  v42(v25, v19);
  (*(v78 + 8))(v33, v79);
  v43 = v76;
  v44 = v74;
  sub_1A3ED4B30(v74, v76);
  if (v31(v43, 1, v19) == 1)
  {
    v42(v44, v19);
    sub_1A3C68644(v43, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v70(v77, v43, v19);
    v45 = sub_1A5240D44();
    v46 = v71;
    [v71 setMediaURL_];

    [v46 setMediaType_];
    v47 = v72;
    swift_beginAccess();
    v48 = *(v47 + 16);
    if (v48 >> 62)
    {
      v49 = sub_1A524E2B4();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v49 < *sub_1A45A9D98())
    {
      v50 = dispatch_semaphore_create(0);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        v79 = v42;
        v53 = v77;
        v78 = sub_1A5240E14();
        v55 = v54;
        v56 = v68;
        v66(v68, v53, v19);
        v57 = (*(v30 + 80) + 24) & ~*(v30 + 80);
        v58 = (v20 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
        v59 = swift_allocObject();
        *(v59 + 16) = v72;
        v60 = (v59 + v57);
        v42 = v79;
        v70(v60, v56, v19);
        *(v59 + v58) = v50;

        v61 = v50;
        sub_1A3EE06F0(v78, v55, v59);

        v44 = v74;
      }

      sub_1A524D704();
    }

    v42(v77, v19);
    v42(v44, v19);
  }

  dispatch_group_leave(v80);
}

uint64_t sub_1A3ED7D1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v18 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }

  else
  {
    v31 = v15;
    SharedCollectionsLogger.getter();
    (*(v11 + 16))(v13, a4, v10);
    v19 = a2;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v29 = v21;
      v30 = a5;
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v22 = 136315394;
      v23 = sub_1A5240E14();
      v25 = v24;
      (*(v11 + 8))(v13, v10);
      sub_1A3C2EF94(v23, v25, v32);
    }

    (*(v11 + 8))(v13, v10);
    (*(v31 + 8))(v17, v14);
  }

  return sub_1A524D714();
}

void sub_1A3ED80DC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned int (*a7)(char *, uint64_t, uint64_t), NSObject *a8)
{
  v63 = a8;
  v60 = a5;
  v61 = a7;
  v57 = a6;
  v58 = a4;
  v9 = sub_1A5246F24();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - v11;
  v13 = MEMORY[0x1E6968FB0];
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - v17;
  v19 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v19);
  v59 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v53 - v25;
  v28 = v27;
  sub_1A3D600D0(a1, v18, &unk_1EB12B250, v13);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v19) == 1)
  {
    sub_1A3C68644(v18, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v61 = v29;
  v56 = *(v28 + 32);
  v57 = v28 + 32;
  v56(v26, v18, v19);
  SharedCollectionsLogger.getter();
  (*(v28 + 16))(v23, v26, v19);
  v30 = sub_1A5246F04();
  v31 = sub_1A524D264();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = v26;
    v33 = v32;
    v54 = swift_slowAlloc();
    v66[0] = v54;
    *v33 = 136446210;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v53[1] = v31;
    v34 = sub_1A524EA44();
    v35 = v28;
    v37 = v36;
    (*(v35 + 8))(v23, v19);
    sub_1A3C2EF94(v34, v37, v66);
  }

  v38 = *(v28 + 8);
  v38(v23, v19);
  (*(v64 + 8))(v12, v65);
  v39 = v62;
  sub_1A3ED4B30(v26, v62);
  if (v61(v39, 1, v19) == 1)
  {
    v38(v26, v19);
    sub_1A3C68644(v39, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_17:
    dispatch_group_leave(v63);
    return;
  }

  v40 = v59;
  v56(v59, v39, v19);
  v41 = objc_allocWithZone(MEMORY[0x1E69C0918]);
  v42 = sub_1A5240D44();
  v43 = [v41 initWithBundleAtURL_];

  v44 = v58;
  [v58 setVideoComplement_];
  [v44 setMediaType_];
  v45 = v60;
  swift_beginAccess();
  v46 = *(v45 + 16);
  if (v46 >> 62)
  {
    v47 = sub_1A524E2B4();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v47 >= *sub_1A45A9D98())
  {
LABEL_16:

    v38(v40, v19);
    v38(v26, v19);
    goto LABEL_17;
  }

  v48 = [v44 videoComplement];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 imagePath];

    if (v50)
    {
      v51 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v51)
      {
        swift_beginAccess();
        v52 = v51;
        MEMORY[0x1A5907D70]();
        if (*((*(v45 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v45 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A3ED8930(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v11 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v11);
  if (!a1 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v13 = v12;
  swift_unknownObjectRetain();
  v14 = [v13 videoComplement];
  [a3 setVideoComplement_];

  [a3 setMediaType_];
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (v15 >> 62)
  {
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 >= *sub_1A45A9D98())
  {
    goto LABEL_13;
  }

  v17 = [a3 videoComplement];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imagePath];

    if (v19)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v20)
      {
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x1A5907D70]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
        swift_unknownObjectRelease();

        goto LABEL_14;
      }

LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      dispatch_group_leave(a7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A3ED8D48(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v86 = a4;
  v87 = a8;
  v83 = a6;
  v10 = sub_1A5246F24();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  v28 = MEMORY[0x1EEE9AC00](v24);
  if (!a1)
  {
    (*(v26 + 56))(v19, 1, 1, v20, v28);
    goto LABEL_6;
  }

  v79 = v27;
  v80 = &v75 - v25;
  v81 = v26;
  v82 = a3;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRetain();
    v31 = UIImageJPEGRepresentation(v30, 0.899999976);
    if (v31)
    {
      v32 = v31;
      v33 = sub_1A5240EA4();
      v35 = v34;

      sub_1A3D602A8(v33, v35);
      v36 = sub_1A5240E84();
      sub_1A3C59280(v33, v35);
    }

    else
    {
      v36 = 0;
      v33 = 0;
      v35 = 0xF000000000000000;
    }

    v48 = v86;
    v49 = v82;
    [v82 setMediaData_];

    [v49 setMediaType_];
    swift_beginAccess();
    v50 = *(v48 + 16);
    if (v50 >> 62)
    {
      v51 = sub_1A524E2B4();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51 < *sub_1A45A9D98())
    {
      swift_beginAccess();
      v52 = swift_unknownObjectRetain();
      MEMORY[0x1A5907D70](v52);
      if (*((*(v48 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v48 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
    }

    sub_1A3DB556C(v33, v35);
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v88 = a1;
  sub_1A3D60244();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v38 = v89[0];
    v37 = v89[1];
    v39 = sub_1A5240E84();
    v40 = v82;
    [v82 setMediaData_];

    [v40 setMediaType_];
    v41 = v86;
    swift_beginAccess();
    v42 = *(v41 + 16);
    if (v42 >> 62)
    {
      v43 = sub_1A524E2B4();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43 < *sub_1A45A9D98() && (v44 = objc_allocWithZone(MEMORY[0x1E69DCAB8]), sub_1A3D602A8(v38, v37), v45 = sub_1A5240E84(), v46 = [v44 initWithData_], v45, sub_1A3C59280(v38, v37), v46))
    {
      swift_beginAccess();
      v47 = v46;
      MEMORY[0x1A5907D70]();
      if (*((*(v41 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
      sub_1A3C59280(v38, v37);
    }

    else
    {
      sub_1A3C59280(v38, v37);
    }

    goto LABEL_26;
  }

  v89[0] = a1;
  swift_unknownObjectRetain();
  v53 = swift_dynamicCast();
  v54 = v81;
  (*(v81 + 56))(v19, v53 ^ 1u, 1, v20);
  v78 = *(v54 + 48);
  if (v78(v19, 1, v20) == 1)
  {
LABEL_6:
    sub_1A3C68644(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v55 = *(v54 + 32);
  v56 = v80;
  v83 = v54 + 32;
  v77 = v55;
  v55(v80, v19, v20);
  SharedCollectionsLogger.getter();
  (*(v54 + 16))(v23, v56, v20);
  v57 = sub_1A5246F04();
  v58 = sub_1A524D264();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v75 = v59;
    v76 = swift_slowAlloc();
    v89[0] = v76;
    *v59 = 136446210;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v60 = sub_1A524EA44();
    v62 = v61;
    (*(v54 + 8))(v23, v20);
    sub_1A3C2EF94(v60, v62, v89);
  }

  v63 = *(v54 + 8);
  v63(v23, v20);
  (*(v84 + 8))(v13, v85);
  v64 = v80;
  sub_1A3ED4B30(v80, v16);
  if (v78(v16, 1, v20) == 1)
  {
    v63(v64, v20);
    sub_1A3C68644(v16, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v77(v79, v16, v20);
    v65 = sub_1A5240D44();
    v66 = v82;
    [v82 setMediaURL_];

    [v66 setMediaType_];
    v67 = v86;
    swift_beginAccess();
    v68 = *(v67 + 16);
    if (v68 >> 62)
    {
      v69 = sub_1A524E2B4();
    }

    else
    {
      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v69 < *sub_1A45A9D98())
    {
      sub_1A5240E14();
      v70 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v71 = v63;
      v72 = sub_1A524C634();

      v73 = [v70 initWithContentsOfFile_];

      v63 = v71;
      if (v73)
      {
        swift_beginAccess();
        v74 = v73;
        MEMORY[0x1A5907D70]();
        if (*((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
      }
    }

    v63(v79, v20);
    v63(v80, v20);
  }

LABEL_26:
  dispatch_group_leave(v87);
}

void sub_1A3ED98FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SharedCollectionsLogger.getter();
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computed media sources, previews and display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*((*v13 & *v14) + 0x340))(a4);
  }
}

double sub_1A3ED9BA4()
{
  v1 = sub_1A524BEE4();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v12 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1A3EE11B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_193;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v14);
  _Block_release(v14);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);

  return result;
}

void sub_1A3ED9F7C(void *a1, uint64_t a2)
{
  v123 = sub_1A524BEE4();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1A524BF64();
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v117 - v9;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v117 - v16;
  v146 = sub_1A5246F24();
  v17 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v142 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v117 - v22;
  SharedCollectionsLogger.getter();
  v24 = sub_1A5246F04();
  v25 = sub_1A524D264();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1A3C1C000, v24, v25, "Computing previews and display media type", v26, 2u);
    MEMORY[0x1A590EEC0](v26, -1, -1);
  }

  v27 = *(v17 + 8);
  v144 = v17 + 8;
  v143 = v27;
  v27(v23, v146);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  v130 = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  v30 = (v28 + 16);
  v31 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x218))();
  v32 = v31;
  if (v31 >> 62)
  {
LABEL_92:
    v148 = sub_1A524E2B4();
    if (v148)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v148 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v148)
    {
LABEL_5:
      v150 = v32 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      v33 = 0;
      v149 = 0;
      v137 = 0;
      v138 = 0;
      v141 = v32 & 0xFFFFFFFFFFFFFF8;
      v140 = (v11 + 8);
      v34 = &selRef_maxColumns;
      *&v35 = 138412290;
      v129 = v35;
      v29 = v142;
      v139 = v30;
      v147 = v32;
      v11 = v148;
      v126 = a2;
      v125 = v10;
      while (1)
      {
        if (v150)
        {
          v41 = MEMORY[0x1A59097F0](v33, v32);
        }

        else
        {
          if (v33 >= *(v141 + 16))
          {
            goto LABEL_87;
          }

          v41 = *(v32 + 8 * v33 + 32);
        }

        v42 = v41;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v151 = v33 + 1;
        if ([v41 v34[80]] == 1)
        {
          if (*v30 >> 62)
          {
            v43 = sub_1A524E2B4();
          }

          else
          {
            v43 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v43 >= *sub_1A45A9D98())
          {
            goto LABEL_51;
          }

          v44 = dispatch_semaphore_create(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v145 = v44;

            v46 = [v42 mediaURL];
            if (!v46)
            {
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              sub_1A524E6E4();
              __break(1u);
              return;
            }

            v47 = v46;
            v48 = v127;
            sub_1A5240DE4();

            sub_1A5240E14();
            v134 = *v140;
            v134(v48, v10);
            v49 = swift_allocObject();
            v49[2] = v130;
            v49[3] = v42;
            v50 = v145;
            v49[4] = v145;

            v51 = v42;
            v52 = v50;
            sub_1A5240D14();

            v53 = objc_allocWithZone(MEMORY[0x1E6988168]);
            v54 = sub_1A5240D44();
            v55 = [v53 initWithURL:v54 options:0];

            v56 = objc_allocWithZone(MEMORY[0x1E6987E68]);
            v132 = v55;
            v57 = [v56 initWithAsset_];
            [v57 setAppliesPreferredTrackTransform_];
            v58 = sub_1A524DAD4();
            v60 = v59;
            v133 = v61;
            v131 = HIDWORD(v59);
            v62 = sub_1A524CCB4();
            v63 = *(v62 - 8);
            v64 = v136;
            (*(v63 + 56))(v136, 1, 1, v62);
            v65 = swift_allocObject();
            *(v65 + 16) = 0;
            *(v65 + 24) = 0;
            *(v65 + 32) = v57;
            *(v65 + 40) = v58;
            v66 = v131;
            *(v65 + 48) = v60;
            *(v65 + 52) = v66;
            *(v65 + 56) = v133;
            *(v65 + 64) = sub_1A3EE11C8;
            *(v65 + 72) = v49;
            v67 = v128;
            sub_1A3D600D0(v64, v128, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            v68 = (*(v63 + 48))(v67, 1, v62);
            v131 = v57;
            v133 = v49;

            if (v68 == 1)
            {
              sub_1A3C68644(v67, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            }

            else
            {
              sub_1A524CCA4();
              (*(v63 + 8))(v67, v62);
            }

            v82 = *(v65 + 16);
            swift_unknownObjectRetain();

            v11 = v148;
            if (v82)
            {
              swift_getObjectType();
              v83 = sub_1A524CBC4();
              v85 = v84;
              swift_unknownObjectRelease();
            }

            else
            {
              v83 = 0;
              v85 = 0;
            }

            sub_1A3C68644(v136, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            v86 = swift_allocObject();
            *(v86 + 16) = &unk_1A53056E8;
            *(v86 + 24) = v65;
            if (v85 | v83)
            {
              v152 = 0;
              v153 = 0;
              v154 = v83;
              v155 = v85;
            }

            a2 = v126;
            v30 = v139;
            v32 = v147;
            v44 = v145;
            swift_task_create();

            v10 = v125;
            v134(v135, v125);
            v29 = v142;
          }

          sub_1A524D704();
        }

        else
        {
          if ([v42 v34[80]] != 3)
          {
            if ([v42 v34[80]] == 2)
            {
              v74 = *v30 >> 62 ? sub_1A524E2B4() : *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v74 < *sub_1A45A9D98())
              {
                v75 = [v42 mediaURL];
                if (v75)
                {
                  v76 = v75;
                  sub_1A5240DE4();

                  sub_1A5240E14();
                  v77 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
                  v78 = sub_1A524C634();

                  v79 = v77;
                  v32 = v147;
                  v80 = [v79 initWithContentsOfFile_];

                  v11 = v148;
                  if (v80)
                  {
                    swift_beginAccess();
                    v81 = v80;
                    MEMORY[0x1A5907D70]();
                    if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1A524CA74();
                      v32 = v147;
                    }

                    sub_1A524CAE4();
                    swift_endAccess();
                  }

                  (*v140)(v124, v10);
                }

                else
                {
                  v92 = [v42 mediaData];
                  if (v92)
                  {
                    v93 = v92;
                    v94 = sub_1A5240EA4();
                    v96 = v95;

                    v97 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
                    sub_1A3D602A8(v94, v96);
                    v98 = sub_1A5240E84();
                    v99 = [v97 initWithData_];

                    sub_1A3C59280(v94, v96);
                    if (v99)
                    {
                      swift_beginAccess();
                      v100 = v99;
                      MEMORY[0x1A5907D70]();
                      if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_1A524CA74();
                        v29 = v142;
                      }

                      sub_1A524CAE4();
                      swift_endAccess();
                      sub_1A3C59280(v94, v96);
                    }

                    else
                    {
                      sub_1A3C59280(v94, v96);
                    }

                    v32 = v147;
                    v11 = v148;
                  }

                  else
                  {
                    SharedCollectionsLogger.getter();
                    v101 = v42;
                    v102 = sub_1A5246F04();
                    v103 = sub_1A524D244();

                    if (os_log_type_enabled(v102, v103))
                    {
                      v104 = swift_slowAlloc();
                      v105 = swift_slowAlloc();
                      *v104 = v129;
                      *(v104 + 4) = v101;
                      *v105 = v101;
                      v106 = v101;
                      _os_log_impl(&dword_1A3C1C000, v102, v103, "Invalid image: %@", v104, 0xCu);
                      sub_1A3CB65E4(v105);
                      v107 = v105;
                      v29 = v142;
                      MEMORY[0x1A590EEC0](v107, -1, -1);
                      v108 = v104;
                      v11 = v148;
                      MEMORY[0x1A590EEC0](v108, -1, -1);
                    }

                    v143(v117, v146);
                    v32 = v147;
                  }
                }
              }
            }

            goto LABEL_51;
          }

          if (*v30 >> 62)
          {
            v69 = sub_1A524E2B4();
          }

          else
          {
            v69 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v69 >= *sub_1A45A9D98())
          {
            goto LABEL_51;
          }

          v70 = [v42 videoComplement];
          if (!v70)
          {
            goto LABEL_97;
          }

          v71 = v70;
          v72 = [v70 imagePath];

          if (!v72)
          {
            goto LABEL_96;
          }

          v73 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

          if (!v73)
          {
            goto LABEL_51;
          }

          swift_beginAccess();
          v44 = v73;
          MEMORY[0x1A5907D70]();
          if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
            v32 = v147;
          }

          sub_1A524CAE4();
          swift_endAccess();
        }

LABEL_51:
        v34 = &selRef_maxColumns;
        if ([v42 mediaType])
        {
          v87 = [v42 mediaType];
          if (v87 > 1)
          {
            if (v87 == 2)
            {

              v91 = v149 + 1;
              if (__OFADD__(v149, 1))
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v87 != 3)
              {
                goto LABEL_98;
              }

              v91 = v149 + 1;
              if (__OFADD__(v149, 1))
              {
                goto LABEL_88;
              }
            }

            v149 = v91;
          }

          else if (v87)
          {
            if (v87 != 1)
            {
              goto LABEL_98;
            }

            if (__OFADD__(v137, 1))
            {
              goto LABEL_90;
            }

            ++v137;
          }

          else
          {

            if (__OFADD__(v138, 1))
            {
              goto LABEL_89;
            }

            ++v138;
          }
        }

        else
        {
          SharedCollectionsLogger.getter();
          v88 = v42;
          v89 = sub_1A5246F04();
          v90 = sub_1A524D244();

          if (os_log_type_enabled(v89, v90))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v129;
            *(v36 + 4) = v88;
            *v37 = v88;
            v38 = v88;
            _os_log_impl(&dword_1A3C1C000, v89, v90, "Invalid media source type: %@", v36, 0xCu);
            sub_1A3CB65E4(v37);
            v39 = v37;
            v30 = v139;
            MEMORY[0x1A590EEC0](v39, -1, -1);
            v40 = v36;
            v29 = v142;
            MEMORY[0x1A590EEC0](v40, -1, -1);
          }

          else
          {
            v38 = v89;
            v89 = v88;
          }

          v143(v29, v146);
          v32 = v147;
          v11 = v148;
          v34 = &selRef_maxColumns;
        }

        ++v33;
        if (v151 == v11)
        {

          v109 = 0;
          v29 = MEMORY[0x1E69E7CC0];
          if (v138 <= 0 && v149 != v137)
          {
            if (v149 >= 1)
            {
              v109 = 1;
            }

            else
            {
              v109 = 2;
            }
          }

          goto LABEL_94;
        }
      }
    }
  }

  v109 = 0;
LABEL_94:
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v110 = sub_1A524D474();
  v111 = swift_allocObject();
  v112 = v130;
  v111[2] = a2;
  v111[3] = v112;
  v111[4] = v109;
  aBlock[4] = sub_1A3EE11BC;
  aBlock[5] = v111;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_200;
  v113 = _Block_copy(aBlock);

  v114 = v118;
  sub_1A524BF14();
  aBlock[0] = v29;
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v115 = v120;
  v116 = v123;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v114, v115, v113);
  _Block_release(v113);

  (*(v122 + 8))(v115, v116);
  (*(v119 + 8))(v114, v121);
}

void sub_1A3EDB384(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  v17 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v22 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    goto LABEL_9;
  }

  v35 = v19;
  v36 = a5;
  v37 = v18;
  SharedCollectionsLogger.getter();
  v23 = a4;
  v24 = a2;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();

  if (!os_log_type_enabled(v25, v26))
  {

    (*(v35 + 8))(v21, v37);
LABEL_9:
    sub_1A524D714();
    return;
  }

  v34 = v26;
  v27 = swift_slowAlloc();
  v32[1] = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v38[0] = v33;
  *v27 = 136315394;
  v28 = [v23 mediaURL];

  if (v28)
  {
    sub_1A5240DE4();

    (*(v11 + 32))(v16, v13, v10);
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v29 = sub_1A524EA44();
    v31 = v30;
    (*(v11 + 8))(v16, v10);
    sub_1A3C2EF94(v29, v31, v38);
  }

  __break(1u);
}

void sub_1A3EDB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Computed previews and display media type", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v12 & *v13) + 0x340))(a3);
  }
}

double sub_1A3EDBA0C()
{
  v1 = sub_1A524BEE4();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1A3EE1298;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_219_0;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1A524BF14();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);

  return result;
}

id sub_1A3EDBDB0(void *a1)
{
  v2 = sub_1A524BEE4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36[3] = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A524BF64();
  v36[2] = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36[1] = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computing display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  v12 = (*(v6 + 8))(v8, v5);
  v13 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1D0))(v12);
  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_26:
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a1;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = 0;
    a1 = (v14 & 0xC000000000000001);
    do
    {
      v19 = v18;
      while (1)
      {
        if (a1)
        {
          v20 = MEMORY[0x1A59097F0](v19, v14);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v19 >= *(v15 + 16))
          {
            goto LABEL_25;
          }

          v20 = *(v14 + 8 * v19 + 32);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v21 = v20;
        v22 = [v21 uuid];
        if (v22)
        {
          break;
        }

        ++v19;
        if (v18 == v16)
        {
          goto LABEL_22;
        }
      }

      v23 = v22;
      v24 = sub_1A524C674();
      v36[0] = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1A3D3D914(0, *(v17 + 2) + 1, 1, v17);
      }

      v27 = *(v17 + 2);
      v26 = *(v17 + 3);
      if (v27 >= v26 >> 1)
      {
        v17 = sub_1A3D3D914((v26 > 1), v27 + 1, 1, v17);
      }

      *(v17 + 2) = v27 + 1;
      v28 = &v17[16 * v27];
      v29 = v36[0];
      *(v28 + 4) = v24;
      *(v28 + 5) = v29;
    }

    while (v18 != v16);
  }

LABEL_22:

  v30 = sub_1A3ED4958();
  v31 = [v30 librarySpecificFetchOptions];

  v32 = objc_opt_self();
  v33 = sub_1A524CA14();
  v34 = [v32 fetchAssetsWithLocalIdentifiers:v33 options:v31];

  result = [v34 fetchedObjects];
  if (result)
  {

    PXMediaTypeForAssets();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EDC418(void *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Computed display media type", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(a2);
}

uint64_t sub_1A3EDC5AC(char a1, void *a2, void *a3, void *a4, void (*a5)(void, void, __n128), uint64_t a6)
{
  v61 = a6;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x460))(0, v19);
  if (a1)
  {
    v22 = sub_1A3C56D80();
    (*(v12 + 16))(v21, v22, v11);
    v23 = a4;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D264();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      LODWORD(v59) = v25;
      v27 = v26;
      v58 = swift_slowAlloc();
      v62 = v58;
      *v27 = 136446210;
      v28 = [v23 uuid];
      v29 = sub_1A524C674();
      v60 = v11;
      v31 = v30;

      sub_1A3C2EF94(v29, v31, &v62);
    }

    result = (*(v12 + 8))(v21, v11);
  }

  else
  {
    v32 = sub_1A3C56D80();
    v33 = *(v12 + 16);
    if (a2)
    {
      v33(v17, v32, v11);
      v34 = v11;
      v35 = a4;
      v36 = a2;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D244();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v60 = v34;
        v40 = v39;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v62 = v58;
        *v40 = 136446466;
        v41 = [v35 uuid];
        v42 = sub_1A524C674();
        v59 = v12;
        v44 = v43;

        sub_1A3C2EF94(v42, v44, &v62);
      }

      result = (*(v12 + 8))(v17, v34);
    }

    else
    {
      v59 = v12;
      v33(v14, v32, v11);
      v46 = a4;
      v47 = sub_1A5246F04();
      v48 = sub_1A524D264();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v60 = v11;
        v62 = v50;
        *v49 = 136446210;
        v51 = [v46 uuid];
        v58 = 0;
        v52 = v51;
        v53 = sub_1A524C674();
        v55 = v54;

        sub_1A3C2EF94(v53, v55, &v62);
      }

      result = (*(v59 + 8))(v14, v11);
    }
  }

  if (a5)
  {
    v56 = v61;

    (a5)(a1 & 1, a2);
    return sub_1A3C33378(a5, v56);
  }

  return result;
}

uint64_t sub_1A3EDCBF0(char a1)
{
  v2 = v1;
  v39 = sub_1A5246F24();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  SharedCollectionsLogger.getter();
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "Will dismiss Shared Collection Creation View", v18, 2u);
    MEMORY[0x1A590EEC0](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v20 = v19(v15, v39);
  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v20);
  if (v22)
  {
    v23 = v22;
    if (a1)
    {
      v24 = sub_1A524CA14();
      [v23 completeRequestReturningItems:v24 completionHandler:0];
    }

    else
    {
      v31 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v24 = sub_1A5240B74();
      [v23 cancelRequestWithError:v24];
    }

    SharedCollectionsLogger.getter();
    v32 = sub_1A5246F04();
    v33 = sub_1A524D264();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1A3C1C000, v32, v33, "Successfully dismissed Shared Collection Creation View (activity)", v34, 2u);
      MEMORY[0x1A590EEC0](v34, -1, -1);
    }
  }

  else
  {
    v25 = (*((*v21 & *v2) + 0x3F8))();
    if (v25)
    {
      v27 = v25;
      v28 = v26;
      v25(a1 & 1);
      SharedCollectionsLogger.getter();
      v23 = sub_1A5246F04();
      v29 = sub_1A524D264();
      if (os_log_type_enabled(v23, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1A3C1C000, v23, v29, "Successfully dismissed Shared Collection Creation View (doneCallback)", v30, 2u);
        MEMORY[0x1A590EEC0](v30, -1, -1);
      }

      sub_1A3C33378(v27, v28);
      v12 = v9;
    }

    else
    {
      SharedCollectionsLogger.getter();
      v23 = sub_1A5246F04();
      v36 = sub_1A524D264();
      if (os_log_type_enabled(v23, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1A3C1C000, v23, v36, "Failed to dismiss Shared Collection Creation View", v37, 2u);
        MEMORY[0x1A590EEC0](v37, -1, -1);
      }

      v12 = v6;
    }
  }

  return v19(v12, v39);
}

uint64_t sub_1A3EDD070()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 && (v4 = v3, sub_1A3ED3AA4(), v6 = v5, v4, v6))
  {
  }

  else
  {
    result = (*((*v2 & *v1) + 0x170))();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

id SharedCollectionActionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedCollectionActionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedCollectionActionViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharedCollectionActionViewModel.itemProvidersForActivityItemsConfiguration.getter()
{
  v37[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (!v9)
  {
    SharedCollectionsLogger.getter();
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "No shared collection set up when creating CKShare item provider.", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_10;
  }

  v10 = v9;
  v37[0] = 0;
  v11 = SharedCollectionsCKShare(from:error:)(v9, v37);
  v12 = v37[0];
  if (!v11)
  {
    v21 = v37[0];
    SharedCollectionsLogger.getter();
    v22 = v10;
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v21;
      v26 = v25;
      v27 = swift_slowAlloc();
      v35 = v22;
      v28 = v27;
      *v26 = 138412546;
      *(v26 + 4) = v35;
      *(v26 + 12) = 2112;
      v29 = v35;
      *(v26 + 14) = v36;
      *v27 = v10;
      v27[1] = v12;
      v30 = v29;
      v31 = v36;
      _os_log_impl(&dword_1A3C1C000, v23, v24, "Failed to get a CKShare from sharedCollection: %@: %@", v26, 0x16u);
      sub_1A3D3F118(0);
      swift_arrayDestroy();
      v32 = v28;
      v22 = v35;
      MEMORY[0x1A590EEC0](v32, -1, -1);
      v33 = v26;
      v21 = v36;
      MEMORY[0x1A590EEC0](v33, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
LABEL_10:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v37[0];
  isa = SharedCollectionsCKContainerForSharing()().super.isa;
  v16 = SharedCollectionsAllowedSharingOptionsForSharing()().super.isa;
  sub_1A524D294();
  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52F9790;
  *(v17 + 32) = v8;

  v8 = v16;
LABEL_11:

  return v17;
}

void SharedCollectionActionViewModel.activityItemsConfigurationMetadata(key:)(uint64_t a2@<X8>)
{
  v3 = sub_1A524C674();
  v5 = v4;
  if (v3 == sub_1A524C674() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1A524EAB4();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_1A3EDD9EC();
  *(a2 + 24) = sub_1A3C52C70(0, &qword_1EB120AD8, 0x1E696ECA0);
  *a2 = v9;
}

unint64_t sub_1A3EDD9EC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v4)
  {
    PHCollection.title.getter();
    v6 = v5;

    if (v6)
    {
      v4 = sub_1A524C634();
    }

    else
    {
      v4 = 0;
    }
  }

  [v2 setTitle_];

  result = (*((*v3 & *v1) + 0x1D0))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    return v2;
  }

  v12 = result;
  v13 = sub_1A524E2B4();
  result = v12;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0);
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_10:
    v9 = v8;

    v10 = sub_1A3EE09A0(v9, 64.0, 64.0);
    [v2 setIconProvider_];

    v11 = sub_1A3EE09A0(v9, 200.0, 200.0);
    [v2 setImageProvider_];

    return v2;
  }

  __break(1u);
  return result;
}

void sub_1A3EDE05C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_1A3EDE0D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EDE1D0(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = (v6 + *a1);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  a2(v7, v8);
  return a3(v10, v11);
}

void sub_1A3EDE2A8(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v47 = a6;
  v48 = a8;
  v53 = a7;
  v46 = a5;
  v50 = a11;
  v51 = a15;
  v45[14] = a12;
  v45[15] = a14;
  v49 = a10;
  v45[12] = a9;
  v45[13] = a13;
  v20 = sub_1A5246F24();
  v21 = *(v20 - 8);
  v45[16] = v20;
  v45[17] = v21;
  MEMORY[0x1EEE9AC00](v20);
  v45[3] = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v45[2] = v45 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v45[1] = v45 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v52 = v45 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v45[6] = v45 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v45[5] = v45 - v32;
  v33 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__extensionContext;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__extensionContext) = 0;
  v34 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollection;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollection) = 0;
  v35 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__albumName);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__batchComment);
  v45[9] = v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__batchComment;
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__isCommentFocused) = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType) = 0;
  v45[10] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions) = 0;
  v37 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__updateCallback);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__doneCallback);
  *v38 = 0;
  v38[1] = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__publishProgressController) = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel_hasPreparedExtensionSources) = 0;
  sub_1A5241604();
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__navigationContext) = a1;
  v39 = *(v15 + v33);

  v45[11] = a2;
  v45[8] = a2;

  *(v15 + v33) = a2;
  v40 = *(v15 + v34);
  v45[4] = a3;

  v45[7] = a3;
  *(v15 + v34) = a3;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollections) = a4;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v47;
  if (v46)
  {
    v43 = v46;
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__assets) = v43;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v41;
  }

  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__mediaSources) = v44;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__subscribers) = v41;
  v53 = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EDF40C(void *a1, void *a2)
{
  v3 = v2;
  v6 = v2[2];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x460))(0);
  v11 = *((*v10 & *v6) + 0x178);
  v12 = a1;
  v13 = v11(a1);
  v14 = (*((*v10 & *v6) + 0x170))(v13);
  if (v14)
  {

    v15 = [objc_allocWithZone(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration_];
    [v15 setAllowsCustomPresentationStyle_];
    [v15 setModalPresentationStyle_];
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v7;
    v28 = sub_1A3EE0EAC;
    v29 = v16;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3ED41F0;
    v27 = &block_descriptor_120_0;
    v17 = _Block_copy(&v24);
    sub_1A3C66EE8(v8, v7);

    [v15 setCompletionWithItemsHandler_];
    _Block_release(v17);
    [v9 presentViewController:v15 animated:1 completionHandler:0];
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = v8;
    v18[4] = v7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1A3EE0C20;
    *(v19 + 24) = v18;
    v28 = sub_1A3D78DD0;
    v29 = v19;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D35A90;
    v27 = &block_descriptor_114_0;
    v20 = _Block_copy(&v24);
    sub_1A3C66EE8(v8, v7);
    v21 = a2;

    v22 = [v9 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A3EDF794(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A3EE06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v24 = sub_1A5240E64();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240D14();
  v9 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v10 = sub_1A5240D44();
  v11 = [v9 initWithURL:v10 options:0];

  v12 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  [v12 setAppliesPreferredTrackTransform_];
  v13 = sub_1A524DAD4();
  v15 = v14;
  v17 = v16;
  v18 = HIDWORD(v14);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v12;
  *(v20 + 40) = v13;
  *(v20 + 48) = v15;
  *(v20 + 52) = v18;
  *(v20 + 56) = v17;
  *(v20 + 64) = sub_1A3EE1040;
  *(v20 + 72) = v23;
  v21 = v12;

  sub_1A3D4D930(0, 0, v5, &unk_1A53056D8, v20);

  return (*(v6 + 8))(v8, v24);
}

id sub_1A3EE09A0(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v7 setNetworkAccessAllowed_];
  [v7 setDeliveryMode_];
  [v7 setSynchronous_];
  v8 = [objc_opt_self() defaultManager];
  v16[4] = sub_1A3EE0BC0;
  v16[5] = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A3DD5B38;
  v16[3] = &block_descriptor_40;
  v9 = _Block_copy(v16);
  v10 = v7;

  [v8 requestImageForAsset:a1 targetSize:1 contentMode:v10 options:v9 resultHandler:{a2, a3}];
  _Block_release(v9);

  swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v13 = v11;
    v14 = [v12 init];
    [v14 registerObject:v13 visibility:0];
  }

  else
  {

    return 0;
  }

  return v14;
}

void sub_1A3EE0BC0(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;
}

void sub_1A3EE0C20(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_1A524C634();
  v7 = PXLocalizedSharedCollectionsString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  [a1 setTitle_];

  if (v3)
  {
    swift_getErrorValue();
    sub_1A524EBE4();
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  [a1 setMessage_];

  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v3;
  v11 = objc_allocWithZone(off_1E7721440);
  sub_1A3C66EE8(v4, v5);
  v12 = v3;
  v13 = sub_1A524C634();
  aBlock[4] = sub_1A3EE0F10;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_126;
  v14 = _Block_copy(aBlock);

  v15 = [v11 initWithTitle:v13 style:0 action:v14];
  _Block_release(v14);

  *(v9 + 32) = v15;
  sub_1A3C52C70(0, &qword_1EB12B9F0, &off_1E7721440);
  v16 = sub_1A524CA14();

  [a1 addActions_];
}

void sub_1A3EE0EAC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v1(1, 0);

    sub_1A3C33378(v1, v2);
  }
}

void sub_1A3EE0F10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v4 = v0 + 24;
    v2 = *(v0 + 24);
    v3 = *(v4 + 8);

    v1(0, v3);

    sub_1A3C33378(v1, v2);
  }
}

uint64_t sub_1A3EE0F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3EE1040(void *a1, void *a2)
{
  v5 = *(sub_1A5240E64() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1A3ED7D1C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1A3EE10F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A3EE11D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A3EE12A8(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1A3EE1368(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  sub_1A5247894();
  swift_allocObject();

  return sub_1A52478A4();
}

uint64_t type metadata accessor for PhotosDetailsShazamEventsWidgetView(uint64_t a1)
{
  result = qword_1EB171F40;
  if (!qword_1EB171F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3EE14A4(uint64_t a1)
{
  if (!qword_1EB121D20)
  {
    sub_1A3EE1570(255, &qword_1EB122778, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121D20);
    }
  }
}

void sub_1A3EE1570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3EE1618(uint64_t a1)
{
  if (!qword_1EB127380)
  {
    sub_1A3EE16AC(255);
    sub_1A3EE1D98(&qword_1EB127120, sub_1A3EE16AC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127380);
    }
  }
}

void sub_1A3EE179C(uint64_t a1)
{
  if (!qword_1EB1274F8)
  {
    sub_1A3EE1B4C(255, &qword_1EB127098, &qword_1EB1273E8, sub_1A3EE18A8, sub_1A3EE16E8);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1274F8);
    }
  }
}

void sub_1A3EE182C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3EE18A8(uint64_t a1)
{
  if (!qword_1EB1273F0)
  {
    sub_1A3EE193C(255);
    sub_1A3EE1D98(&qword_1EB127180, sub_1A3EE193C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1273F0);
    }
  }
}

void sub_1A3EE1970(uint64_t a1)
{
  if (!qword_1EB12AAC8)
  {
    sub_1A3EE19E8(255);
    sub_1A3EE2044(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12AAC8);
    }
  }
}

void sub_1A3EE19E8(uint64_t a1)
{
  if (!qword_1EB12AAD0)
  {
    sub_1A3EE1A7C(255);
    v3 = v2;
    v4 = sub_1A3EE1D98(&qword_1EB127360, sub_1A3EE1A7C, MEMORY[0x1E6981880]);
    v6 = type metadata accessor for PhotosDetailsDiscoverableView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12AAD0);
    }
  }
}

void sub_1A3EE1A7C(uint64_t a1)
{
  if (!qword_1EB127358)
  {
    sub_1A3EE1B10(255);
    sub_1A3EE1D98(&qword_1EB127140, sub_1A3EE1B10, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127358);
    }
  }
}

void sub_1A3EE1B4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3EE182C(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EE1BA8(uint64_t a1)
{
  if (!qword_1EB1275C0)
  {
    sub_1A3EE20B8(255, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1D04(255);
    sub_1A3EE1DE0();
    sub_1A3EE1D98(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275C0);
    }
  }
}

void sub_1A3EE1C98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C371A0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3EE1D04(uint64_t a1)
{
  if (!qword_1EB1263A0)
  {
    sub_1A52486A4();
    sub_1A3EE1D98(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
    v1 = sub_1A524E7B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1263A0);
    }
  }
}

uint64_t sub_1A3EE1D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3EE1DE0()
{
  result = qword_1EB1281D0;
  if (!qword_1EB1281D0)
  {
    sub_1A3EE20B8(255, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE4AE4(&qword_1EB1282E8, sub_1A3EC1864, sub_1A3E4509C);
    sub_1A3EE1ED4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281D0);
  }

  return result;
}

uint64_t sub_1A3EE1ED4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3EE1C98(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3EE1F60(uint64_t a1)
{
  if (!qword_1EB1282C8)
  {
    sub_1A3EE1FE0(255, &qword_1EB128540, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1282C8);
    }
  }
}

void sub_1A3EE1FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A3EE1C98(255, a3, a4, a5);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EE2044(uint64_t a1)
{
  if (!qword_1EB1282B8)
  {
    sub_1A3EE20B8(255, &qword_1EB1282C0, sub_1A3EE213C);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1282B8);
    }
  }
}

void sub_1A3EE20B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3EE1C98(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3EE213C(uint64_t a1)
{
  if (!qword_1EB128530)
  {
    sub_1A3EE5414(255, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128530);
    }
  }
}

uint64_t sub_1A3EE21CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EE1570(0, &qword_1EB122C18, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1618(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE15DC(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A3EE1534(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v15[3] = v15 - v12;
  type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  if (sub_1A42F588C())
  {
    v15[1] = v10;
    v15[2] = a2;
    *v7 = sub_1A5249584();
    *(v7 + 1) = 0x4028000000000000;
    v7[16] = 0;
    sub_1A3EE504C(0, &qword_1EB1244B0, sub_1A3EE16AC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A3EE27E4(a1, &v7[*(v13 + 44)]);
  }

  swift_storeEnumTagMultiPayload();
  sub_1A3EE4AE4(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
  return sub_1A5249744();
}

void sub_1A3EE2724(uint64_t a1)
{
  if (!qword_1EB123D30)
  {
    sub_1A3EE14A4(255);
    sub_1A3EE278C();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123D30);
    }
  }
}

void sub_1A3EE278C()
{
  if (!qword_1EB122E00)
  {
    v0 = sub_1A52494B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122E00);
    }
  }
}

void sub_1A3EE27E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a2;
  sub_1A3EE179C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1724(0);
  v15[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v15[3] = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v15[2] = v15 - v9;
  sub_1A3EE16E8(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  sub_1A524B994();
  *&v14[*(v11 + 44)] = 0;
  v15[0] = a1;
  sub_1A3EE2D3C(a1);
}

void sub_1A3EE2D3C(uint64_t a1)
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE18A8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  *v8 = sub_1A5249314();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A3EE504C(0, &qword_1EB124550, sub_1A3EE193C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A3EE2FB4(a1, &v8[*(v9 + 44)]);
}

void sub_1A3EE2FB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  v27 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24[0] = v24 - v4;
  sub_1A3EE2044(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = v24 - v8;
  v9 = type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v24[2] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A3EE5414(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_1A3EE5414(0, &qword_1EB121598, sub_1A3EE1A7C, v11);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v24 - v15);
  sub_1A3EE19E8(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v28 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v24[1] = v24 - v20;
  *v16 = sub_1A524BC74();
  v16[1] = v21;
  sub_1A3EE504C(0, &qword_1EB124438, sub_1A3EE1B10, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A3EE3BD4(a1, v16 + *(v22 + 44));
  sub_1A3EE1A7C(0);
  (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
  sub_1A3EE3728();
}

void sub_1A3EE3728()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  sub_1A42F55A4();
  PXCappedFontWithTextStyle();
}

void *sub_1A3EE3904()
{
  v0 = sub_1A5248334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  result = sub_1A42F5438();
  if (result)
  {
    v16 = v1;
    v17 = v0;
    v12 = [result eventID];
    swift_unknownObjectRelease();
    v13 = sub_1A524C674();
    v15 = v14;

    v18 = 0xD000000000000026;
    v19 = 0x80000001A53BC040;
    MEMORY[0x1A5907B60](v13, v15);

    sub_1A5240E34();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1A3EE4FEC(v6, sub_1A3EE53E0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1A3EE4C48(v3);
      sub_1A5248304();
      (*(v16 + 8))(v3, v17);
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_1A3EE3BD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1D04(0);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1BA8(0);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v66[-v11];
  v12 = *(a1 + *(type metadata accessor for PhotosDetailsShazamEventsWidgetView(0) + 20) + 8);
  sub_1A42F586C();
  v13 = sub_1A524B574();
  v14 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  v16 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x140);
  v16();
  v16();
  sub_1A524BC74();
  sub_1A52481F4();
  v17 = *sub_1A44DE9B8();
  v18 = swift_getKeyPath();
  *&v84 = v13;
  *(&v84 + 1) = KeyPath;
  *(v85 + 8) = v96;
  *(&v85[1] + 8) = v97;
  *(&v85[2] + 8) = v98;
  *&v85[0] = v14;
  *(&v85[3] + 1) = v18;
  v86 = v17;
  v19 = *MEMORY[0x1E697E6E8];
  v20 = sub_1A52486A4();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_1A3EE1D98(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);

  result = sub_1A524C594();
  if (result)
  {
    sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1DE0();
    sub_1A3EE1D98(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    v22 = v74;
    sub_1A524AB84();
    sub_1A3EE4FEC(v7, sub_1A3EE1D04);
    v99[2] = v85[1];
    v99[3] = v85[2];
    v99[4] = v85[3];
    v100 = v86;
    v99[0] = v84;
    v99[1] = v85[0];
    sub_1A3EE4F74(v99);
    v23 = *sub_1A4758698();
    sub_1A524B5D4();
    v24 = *MEMORY[0x1E6981698];
    v25 = sub_1A524B594();
    v26 = *(v25 - 8);
    v27 = v70;
    (*(v26 + 104))(v70, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    v69 = sub_1A524B564();

    sub_1A3EE4FEC(v27, sub_1A3EE4C14);
    v28 = *sub_1A44DE954();
    v68 = swift_getKeyPath();
    v70 = v28;

    v29 = sub_1A524A094();
    v30 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v29)
    {
      v30 = sub_1A524A0A4();
    }

    v67 = v30;
    sub_1A5247BC4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v91 = 0;
    v39 = sub_1A524A074();
    v40 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v39)
    {
      v40 = sub_1A524A0A4();
    }

    sub_1A5247BC4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v93 = 0;
    v49 = v72;
    v50 = v73;
    v51 = *(v72 + 16);
    v52 = v75;
    v51(v75, v22, v73);
    v53 = v71;
    v51(v71, v52, v50);
    sub_1A3EE182C(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
    v55 = &v53[*(v54 + 48)];
    v57 = v68;
    v56 = v69;
    *&v76 = v69;
    *(&v76 + 1) = v68;
    v58 = v70;
    *&v77 = v70;
    LOBYTE(v52) = v67;
    BYTE8(v77) = v67;
    *(&v77 + 9) = *v92;
    HIDWORD(v77) = *&v92[3];
    *&v78 = v32;
    *(&v78 + 1) = v34;
    *&v79 = v36;
    *(&v79 + 1) = v38;
    LOBYTE(v80) = 0;
    *(&v80 + 1) = *v95;
    DWORD1(v80) = *&v95[3];
    BYTE8(v80) = v40;
    HIDWORD(v80) = *&v94[3];
    *(&v80 + 9) = *v94;
    *&v81 = v42;
    *(&v81 + 1) = v44;
    *&v82 = v46;
    *(&v82 + 1) = v48;
    v83 = 0;
    v59 = v80;
    v60 = v81;
    v61 = v82;
    v55[112] = 0;
    *(v55 + 5) = v60;
    *(v55 + 6) = v61;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    *(v55 + 3) = v79;
    *(v55 + 4) = v59;
    *(v55 + 1) = v63;
    *(v55 + 2) = v64;
    *v55 = v62;
    sub_1A3EE5120(&v76, &v84, sub_1A3EE1F24);
    v65 = *(v49 + 8);
    v65(v74, v50);
    *&v84 = v56;
    *(&v84 + 1) = v57;
    *&v85[0] = v58;
    BYTE8(v85[0]) = v52;
    *(v85 + 9) = *v92;
    HIDWORD(v85[0]) = *&v92[3];
    *&v85[1] = v32;
    *(&v85[1] + 1) = v34;
    *&v85[2] = v36;
    *(&v85[2] + 1) = v38;
    LOBYTE(v85[3]) = 0;
    *(&v85[3] + 1) = *v95;
    DWORD1(v85[3]) = *&v95[3];
    BYTE8(v85[3]) = v40;
    HIDWORD(v85[3]) = *&v94[3];
    *(&v85[3] + 9) = *v94;
    v86 = v42;
    v87 = v44;
    v88 = v46;
    v89 = v48;
    v90 = 0;
    sub_1A3EE4FEC(&v84, sub_1A3EE1F24);
    return (v65)(v75, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3EE4384()
{
  result = qword_1EB12B0E8;
  if (!qword_1EB12B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0E8);
  }

  return result;
}

unint64_t sub_1A3EE43D8()
{
  result = qword_1EB12B0E0;
  if (!qword_1EB12B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0E0);
  }

  return result;
}

uint64_t sub_1A3EE442C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v3 = (a2 + *(type metadata accessor for PhotosDetailsShazamEventsWidgetView(0) + 20));
  type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(0);
  sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t sub_1A3EE4514@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v5 = (a3 + *(a2 + 20));
  type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(0);
  sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1A3EE45F8(uint64_t a1)
{
  result = sub_1A3EE1D98(&qword_1EB125E88, type metadata accessor for PhotosDetailsShazamEventsWidgetView, &unk_1A530574C);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3EE466C(uint64_t a1@<X8>)
{
  sub_1A3EE14A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE21CC(v1, v5);
  v6 = sub_1A524BD54();
  v7 = sub_1A42F5438();
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  sub_1A3EE50B8(v5, a1, sub_1A3EE14A4);
  sub_1A3EE2724(0);
  v9 = a1 + *(v8 + 36);
  *v9 = v6;
  *(v9 + 8) = v7 == 0;
}

void sub_1A3EE4784(uint64_t a1)
{
  sub_1A3EE5414(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3EE4838(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3EE4838(uint64_t a1)
{
  if (!qword_1EB1243B0)
  {
    type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(255);
    sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243B0);
    }
  }
}

unint64_t sub_1A3EE48CC()
{
  result = qword_1EB123D38;
  if (!qword_1EB123D38)
  {
    sub_1A3EE2724(255);
    sub_1A3EE497C();
    sub_1A3EE1D98(&qword_1EB122E08, sub_1A3EE278C, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D38);
  }

  return result;
}

unint64_t sub_1A3EE497C()
{
  result = qword_1EB121D28;
  if (!qword_1EB121D28)
  {
    sub_1A3EE14A4(255);
    sub_1A3EE49F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121D28);
  }

  return result;
}

unint64_t sub_1A3EE49F4()
{
  result = qword_1EB122780;
  if (!qword_1EB122780)
  {
    sub_1A3EE1570(255, &qword_1EB122778, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A3EE4AE4(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122780);
  }

  return result;
}

uint64_t sub_1A3EE4AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3EE4B64()
{
  result = qword_1EB123A90;
  if (!qword_1EB123A90)
  {
    sub_1A3EE15DC(255);
    sub_1A3EE1D98(&qword_1EB127388, sub_1A3EE1618, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A90);
  }

  return result;
}

uint64_t sub_1A3EE4C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A3EE5478(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248334();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3EE4EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1A3EE4F74(uint64_t a1)
{
  sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3EE4FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3EE504C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3EE50B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3EE51E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A3EE524C()
{
  type metadata accessor for PhotosDetailsShazamEventsWidgetView(0);

  return sub_1A3EE3904();
}

unint64_t sub_1A3EE52AC(uint64_t a1, uint64_t a2)
{
  result = qword_1EB1268C8;
  if (!qword_1EB1268C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1268C8);
  }

  return result;
}

uint64_t sub_1A3EE52F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5360(uint64_t a1, uint64_t a2)
{
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3EE5414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EE5478(uint64_t a1, uint64_t a2)
{
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EE550C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B648);
  v1 = __swift_project_value_buffer(v0, qword_1EB15B648);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void SharedAlbumsActivityItem.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_1A3EE55B4(v2, v3, v4, v5);
}

void sub_1A3EE55B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 2:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 1:
LABEL_6:

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t SharedAlbumsActivityItem.avatarInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1A3EE564C(v7, &v6);
}

uint64_t SharedAlbumsActivityItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedAlbumsActivityItem(0) + 24);
  v4 = sub_1A5241144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SharedAlbumsActivityItem(uint64_t a1)
{
  result = qword_1EB1837B0;
  if (!qword_1EB1837B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SharedAlbumsActivityItem.activityFeedSectionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharedAlbumsActivityItem(0) + 36));

  return v1;
}

void sub_1A3EE5800(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedAlbumsActivityItem(0);
  *(a2 + v4[9]) = a1;
  v5 = a1;
  v6 = [v5 transientIdentifier];
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = (a2 + v4[10]);
  *v10 = v7;
  v10[1] = v9;
  PXFeedSectionInfo.activityType.getter(&v25);
  v11 = v26;
  v12 = BYTE8(v26);
  *a2 = v25;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  v13 = [v5 albumTitle];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A524C674();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a2 + v4[7]);
  *v18 = v15;
  v18[1] = v17;
  v19 = PXFeedSectionInfo.contributorDisplayName.getter();
  v20 = (a2 + v4[8]);
  *v20 = v19;
  v20[1] = v21;
  PXFeedSectionInfo.avatarConfiguration.getter(&v25);
  v22 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v22;
  v23 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v23;
  v24 = [v5 date];

  sub_1A52410F4();
}

void PXFeedSectionInfo.activityType.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 sectionType];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v26 = 1;
        break;
      case 4:
        if ([v1 inboxModelType] == 5)
        {
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 3;
          *(a1 + 24) = 3;
          return;
        }

        v26 = 2;
        break;
      case 5:
        v26 = 4;
        break;
      default:
        goto LABEL_68;
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v26;
    goto LABEL_34;
  }

  if (!v4)
  {
    v6 = [v1 cloudFeedEntry];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_64;
    }

    v13 = v12;
    v14 = [v2 cloudFeedEntry];
    v2 = [v14 photoLibrary];

    if (!v2)
    {
      goto LABEL_64;
    }

    v15 = [v13 entryAssets];
    if (!v15)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v2 = v6;
LABEL_67:

LABEL_68:
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 array];

    v18 = sub_1A524CA34();
    v19 = sub_1A3EE7AE4(v18);

    if (!v19)
    {

      goto LABEL_67;
    }

    v20 = [objc_allocWithZone(MEMORY[0x1E69789A8]) initWithPLPhotoLibrary_];
    v21 = (v19 & 0xFFFFFFFFFFFFFF8);
    if (v19 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1A59097F0](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          if (sub_1A524E2B4())
          {
            sub_1A3EE8EE8(MEMORY[0x1E69E7CC0], v60);
            goto LABEL_30;
          }

LABEL_29:
          v29 = MEMORY[0x1E69E7CD0];
LABEL_30:
          v62 = v29;
          v30 = swift_allocObject();
          v30[2] = &v63;
          v30[3] = v21;
          v30[4] = &v62;
          v31 = swift_allocObject();
          *(v31 + 16) = sub_1A3EE7F28;
          *(v31 + 24) = v30;
          aBlock[4] = sub_1A3EE8104;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3EE7D08;
          aBlock[3] = &block_descriptor_41;
          v32 = _Block_copy(aBlock);
          v33 = v21;

          [v19 enumerateObjectsUsingBlock_];
          _Block_release(v32);
          LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

          if ((v32 & 1) == 0)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          __break(1u);
          goto LABEL_60;
        }

        v22 = *(v19 + 32);
      }

      v23 = v22;
      v24 = [v22 cloudIsMyAsset];

      v25 = v24;
      goto LABEL_53;
    }

    v25 = 0;
LABEL_53:
    v56 = objc_opt_self();
    sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
    v57 = sub_1A524CA14();
    v58 = [v56 pl:v57 PHAssetsForManagedAssets:v20 photoLibrary:?];

    if (v58)
    {

      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v59 = sub_1A524CA34();

      *a1 = v59;
      *(a1 + 8) = v25;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    goto LABEL_62;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_68;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_34:
    v34 = 3;
LABEL_35:
    *(a1 + 24) = v34;
    return;
  }

  if ([v1 typeForItemAtIndex_] == 1)
  {
    v5 = [v1 commentForItemAtIndex_];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 commentText];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1A524C674();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v50 = [v6 isMyComment];
      if (!v50)
      {

        v54 = 0;
        goto LABEL_49;
      }

      v51 = [v6 isMyComment];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 BOOLValue];

        v54 = v53;
LABEL_49:
        *a1 = v9;
        *(a1 + 8) = v11;
        *(a1 + 16) = v54;
        v34 = 1;
        goto LABEL_35;
      }

      goto LABEL_63;
    }

    if (qword_1EB19ADE0 == -1)
    {
LABEL_37:
      v35 = sub_1A5246F24();
      __swift_project_value_buffer(v35, qword_1EB15B648);
      v36 = v2;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D244();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412546;
        *(v39 + 4) = v36;
        *v40 = v36;
        *(v39 + 12) = 2112;
        v41 = [v36 cloudFeedEntry];
        *(v39 + 14) = v41;
        v40[1] = v41;
        _os_log_impl(&dword_1A3C1C000, v37, v38, "Invalid .commentsAdded PXFeedSectionInfo (%@) with zero comments. PLCloudFeedEntry: %@", v39, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v40, -1, -1);
        MEMORY[0x1A590EEC0](v39, -1, -1);
      }

      *a1 = xmmword_1A5305860;
      *(a1 + 16) = 0;
      v34 = 1;
      goto LABEL_35;
    }

LABEL_60:
    swift_once();
    goto LABEL_37;
  }

  v27 = [v1 likesForItemAtIndex_];
  if (v27)
  {
    v19 = v27;
    v63 = 0;
    sub_1A3C52C70(0, &qword_1EB12E388, 0x1E695DFA0);
    v28 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1A59084F0](MEMORY[0x1E69E7CC0]);
    if (!(v28 >> 62))
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

  if (qword_1EB19ADE0 != -1)
  {
    swift_once();
  }

  v42 = sub_1A5246F24();
  __swift_project_value_buffer(v42, qword_1EB15B648);
  v43 = v1;
  v44 = sub_1A5246F04();
  v45 = sub_1A524D244();

  if (!os_log_type_enabled(v44, v45))
  {

    v55 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 16) = v55;
    v34 = 2;
    goto LABEL_35;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v46 = 138412546;
  *(v46 + 4) = v43;
  *v47 = v43;
  *(v46 + 12) = 2112;
  v48 = [v43 cloudFeedEntry];
  *(v46 + 14) = v48;
  v47[1] = v48;
  _os_log_impl(&dword_1A3C1C000, v44, v45, "Invalid .commentsAdded PXFeedSectionInfo (%@) with zero likes. PLCloudFeedEntry: %@", v46, 0x16u);
  sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0);
  swift_arrayDestroy();
  MEMORY[0x1A590EEC0](v47, -1, -1);
  MEMORY[0x1A590EEC0](v46, -1, -1);

  v49 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v49;
  *(a1 + 24) = 2;
}

id PXFeedSectionInfo.contributorDisplayName.getter()
{
  v1 = [v0 sectionType];
  result = 0;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        result = [v0 invitee];
        if (!result)
        {
          return result;
        }

        v3 = result;
        v17 = [result displayNameWithAddressAppended_];
        goto LABEL_25;
      }

      if (v1 != 5)
      {
        return result;
      }
    }

    result = [objc_opt_self() sharingDisplayNameIncludingEmail:0 allowsEmail:1];
    if (result)
    {
      v8 = result;
      v9 = sub_1A524C674();

      return v9;
    }

    return result;
  }

  switch(v1)
  {
    case 0:
      v10 = [v0 assets];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 firstObject];

        if (v12)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v32 = 0u;
          v33 = 0u;
        }

        v34 = *v32;
        v35 = v33;
        if (*(&v33 + 1))
        {
          sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          v3 = v32[0];
          v23 = [v32[0] cloudOwnerDisplayName];
          if (!v23)
          {
LABEL_42:

            return 0;
          }

          v24 = v23;
          v19 = sub_1A524C674();

          return v19;
        }

        goto LABEL_47;
      }

LABEL_31:
      v34 = 0u;
      v35 = 0u;
      goto LABEL_47;
    case 1:
      v3 = [v0 commentForItemAtIndex_];
      if (v3)
      {
LABEL_17:
        v13 = [v3 isMyComment];
        if (v13)
        {

          result = [v3 isMyComment];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v14 = result;
          v15 = [result BOOLValue];

          if (v15)
          {
            v16 = [objc_opt_self() sharingDisplayNameIncludingEmail:0 allowsEmail:1];
            if (!v16)
            {
              goto LABEL_42;
            }

            goto LABEL_26;
          }
        }

        v17 = [v3 commenterDisplayName];
LABEL_25:
        v16 = v17;
LABEL_26:
        v18 = v16;
        v19 = sub_1A524C674();

        return v19;
      }

      v20 = [v0 likesForItemAtIndex_];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 firstObject];

        if (v22)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v32 = 0u;
          v33 = 0u;
        }

        v34 = *v32;
        v35 = v33;
        if (*(&v33 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB12E390, 0x1E69BE340);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          v3 = v32[0];
          goto LABEL_17;
        }

LABEL_47:
        sub_1A3C35B00(&v34);
        return 0;
      }

      goto LABEL_31;
    case 2:
      result = [v0 sharedAlbum];
      if (result)
      {
        v3 = result;
        v4 = [objc_opt_self() ownerForSharedAlbum_];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 displayNameWithAddressAppended_];
          v7 = sub_1A524C674();

          return v7;
        }

        if (qword_1EB19ADE0 != -1)
        {
          swift_once();
        }

        v25 = sub_1A5246F24();
        __swift_project_value_buffer(v25, qword_1EB15B648);
        v26 = v0;
        v27 = sub_1A5246F04();
        v28 = sub_1A524D244();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412546;
          *(v29 + 4) = v26;
          *v30 = v26;
          *(v29 + 12) = 2112;
          v31 = [v26 cloudFeedEntry];
          *(v29 + 14) = v31;
          v30[1] = v31;
          _os_log_impl(&dword_1A3C1C000, v27, v28, ".invitationReceived PXFeedSectionInfo (%@) with a missing owner. PLCloudFeedEntry: %@", v29, 0x16u);
          sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0);
          swift_arrayDestroy();
          MEMORY[0x1A590EEC0](v30, -1, -1);
          MEMORY[0x1A590EEC0](v29, -1, -1);
        }

        goto LABEL_42;
      }

      break;
  }

  return result;
}

void PXFeedSectionInfo.avatarConfiguration.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 sectionType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      goto LABEL_12;
    }

    if (v3 == 4)
    {
      v35 = [v1 invitee];
      if (v35)
      {
        v36 = v35;
        v37 = [v36 emailAddressString];
        if (v37)
        {
          v38 = v37;
          v86 = sub_1A524C674();
          v11 = v39;
        }

        else
        {
          v86 = 0;
          v11 = 0;
        }

        v66 = [v36 phoneNumberString];

        if (v66)
        {
          v8 = sub_1A524C674();
          v9 = v67;
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        v68 = [v36 firstName];
        if (v68)
        {
          v69 = v68;
          v6 = sub_1A524C674();
          v7 = v70;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v71 = [v36 lastName];
        if (v71)
        {
          v72 = v71;
          v4 = sub_1A524C674();
          v5 = v73;
        }

        else
        {

          v4 = 0;
          v5 = 0;
        }

        v10 = v86;
        goto LABEL_76;
      }

      goto LABEL_73;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v3 == 5)
    {
LABEL_12:
      v20 = objc_opt_self();
      v21 = [v20 sharingUsername];
      if (v21)
      {
        v22 = v21;
        v15 = sub_1A524C674();
        v11 = v23;
      }

      else
      {
        v15 = 0;
        v11 = 0;
      }

      v40 = [v20 sharingFirstName];
      if (v40)
      {
        v41 = v40;
        v6 = sub_1A524C674();
        v7 = v42;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v43 = [v20 sharingLastName];
      if (v43)
      {
        v44 = v43;
        v4 = sub_1A524C674();
        v5 = v45;

LABEL_67:
        v8 = 0;
        v9 = 0;
        v10 = v15;
        goto LABEL_76;
      }

LABEL_66:
      v4 = 0;
      v5 = 0;
      goto LABEL_67;
    }

    goto LABEL_76;
  }

  if (!v3)
  {
    v24 = [v1 assets];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 firstObject];

      if (v26)
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        *v87 = 0u;
        v88 = 0u;
      }

      v89 = *v87;
      v90 = v88;
      if (*(&v88 + 1))
      {
        sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_73:
          v4 = 0;
          v5 = 0;
          v6 = 0;
          v7 = 0;
LABEL_74:
          v8 = 0;
          goto LABEL_75;
        }

        v56 = [v87[0] cloudOwnerEmail];
        if (v56)
        {
          v57 = v56;
          v15 = sub_1A524C674();
          v11 = v58;
        }

        else
        {
          v15 = 0;
          v11 = 0;
        }

        v77 = [v87[0] cloudOwnerFirstName];
        if (v77)
        {
          v78 = v77;
          v6 = sub_1A524C674();
          v7 = v79;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v80 = [v87[0] cloudOwnerLastName];
        if (v80)
        {
          v81 = v80;
          v4 = sub_1A524C674();
          v5 = v82;
        }

        else
        {
          v4 = 0;
          v5 = 0;
        }

        if (v11)
        {

          goto LABEL_67;
        }

        if (([v87[0] cloudIsMyAsset] & 1) == 0)
        {

          v8 = 0;
          v9 = 0;
          v11 = 0;
          v10 = v15;
          goto LABEL_76;
        }

        v83 = [objc_opt_self() sharingUsername];
        if (!v83)
        {

          goto LABEL_74;
        }

        v84 = v83;
        v47 = sub_1A524C674();
        v11 = v85;

        goto LABEL_33;
      }

      goto LABEL_72;
    }

LABEL_39:
    v89 = 0u;
    v90 = 0u;
    goto LABEL_72;
  }

  if (v3 != 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v3 == 2)
    {
      v8 = [v1 sharedAlbum];
      if (!v8)
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
LABEL_75:
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_76;
      }

      v12 = [objc_opt_self() ownerForSharedAlbum_];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 displayAddress];
        v15 = sub_1A524C674();
        v11 = v16;

        v17 = [v13 firstName];
        if (v17)
        {
          v18 = v17;
          v6 = sub_1A524C674();
          v7 = v19;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v74 = [v13 lastName];
        if (v74)
        {
          v75 = v74;
          v4 = sub_1A524C674();
          v5 = v76;

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (qword_1EB19ADE0 != -1)
      {
        swift_once();
      }

      v59 = sub_1A5246F24();
      __swift_project_value_buffer(v59, qword_1EB15B648);
      v60 = v1;
      v61 = sub_1A5246F04();
      v62 = sub_1A524D244();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412546;
        *(v63 + 4) = v60;
        *v64 = v60;
        *(v63 + 12) = 2112;
        v65 = [v60 cloudFeedEntry];
        *(v63 + 14) = v65;
        v64[1] = v65;
        _os_log_impl(&dword_1A3C1C000, v61, v62, ".invitationReceived PXFeedSectionInfo (%@) with a missing owner. PLCloudFeedEntry: %@", v63, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v64, -1, -1);
        MEMORY[0x1A590EEC0](v63, -1, -1);
      }

      goto LABEL_50;
    }

LABEL_76:
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v8;
    a1[3] = v9;
    a1[4] = v6;
    a1[5] = v7;
    a1[6] = v4;
    a1[7] = v5;
    return;
  }

  v8 = [v1 commentForItemAtIndex_];
  if (!v8)
  {
    v53 = [v1 likesForItemAtIndex_];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 firstObject];

      if (v55)
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        *v87 = 0u;
        v88 = 0u;
      }

      v89 = *v87;
      v90 = v88;
      if (*(&v88 + 1))
      {
        sub_1A3C52C70(0, &qword_1EB12E390, 0x1E69BE340);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_73;
        }

        v8 = v87[0];
        goto LABEL_18;
      }

LABEL_72:
      sub_1A3C35B00(&v89);
      goto LABEL_73;
    }

    goto LABEL_39;
  }

LABEL_18:
  v27 = [v8 isMyComment];
  if (!v27)
  {
LABEL_32:
    v46 = [v8 commenterEmail];
    v47 = sub_1A524C674();
    v11 = v48;

    v49 = [v8 commenterFirstName];
    v6 = sub_1A524C674();
    v7 = v50;

    v51 = [v8 commenterLastName];
    v4 = sub_1A524C674();
    v5 = v52;

LABEL_33:
    v10 = v47;
LABEL_34:
    v8 = 0;
    v9 = 0;
    goto LABEL_76;
  }

  v28 = [v8 isMyComment];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 BOOLValue];

    if (v30)
    {
      v31 = [objc_opt_self() sharingUsername];
      if (!v31)
      {
LABEL_50:

        goto LABEL_73;
      }

      v32 = v31;
      v33 = sub_1A524C674();
      v11 = v34;

      v10 = v33;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  __break(1u);
}

id SharedAlbumsActivityItem.photoLibrary.getter()
{
  v1 = [*(v0 + *(type metadata accessor for SharedAlbumsActivityItem(0) + 36)) photoLibrary];

  return v1;
}

unint64_t SharedAlbumsActivityItem.keyAssets.getter()
{
  v1 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v13 = *(v0 + *(type metadata accessor for SharedAlbumsActivityItem(0) + 36));
  v2 = [v13 assets];
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  result = [v2 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      for (i = [v3 objectAtIndex_]; ; i = objc_msgSend(v3, sel_objectAtIndex_, v6, v12))
      {
        v8 = i;
        sub_1A524E0B4();
        swift_unknownObjectRelease();
        sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
        if (swift_dynamicCast())
        {
          v9 = [v13 photoLibrary];
          v10 = [v14 pl:v9 PHAssetFromPhotoLibrary:?];

          if (v10)
          {
            v11 = v10;
            MEMORY[0x1A5907D70]();
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();

            v12 = v15;
          }

          else
          {
          }
        }

        if (v5 == ++v6)
        {
          break;
        }
      }

      return v12;
    }

    else
    {
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t SharedAlbumsActivityItem.albumId.getter()
{
  v1 = type metadata accessor for SharedAlbumsActivityItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - v6;
  v9 = [*(v0 + *(v8 + 36)) sharedAlbum];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 uuid];

    v12 = sub_1A524C674();
  }

  else
  {
    if (qword_1EB19ADE0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB15B648);
    sub_1A3EE91CC(v0, v7);
    sub_1A3EE91CC(v0, v3);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D244();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24[1] = v15;
      v17 = v16;
      v25 = swift_slowAlloc();
      v26 = v25;
      *v17 = 136315394;
      v18 = *&v7[*(v1 + 36)];
      v19 = [v18 description];
      v20 = sub_1A524C674();
      v22 = v21;

      sub_1A3EE9230(v7);
      sub_1A3C2EF94(v20, v22, &v26);
    }

    sub_1A3EE9230(v7);
    sub_1A3EE9230(v3);
    return 0;
  }

  return v12;
}

void SharedAlbumsActivityItem.value.getter(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SharedAlbumsActivityItem(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedAlbumsActivityItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](91, 0xE100000000000000);
  v1 = type metadata accessor for SharedAlbumsActivityItem(0);
  MEMORY[0x1A5907B60](*(v0 + *(v1 + 40)), *(v0 + *(v1 + 40) + 8));
  MEMORY[0x1A5907B60](8285, 0xE200000000000000);
  sub_1A5241144();
  sub_1A3C4BB80(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  MEMORY[0x1A5907B60](8250, 0xE200000000000000);
  sub_1A524E624();
  return 0;
}

void sub_1A3EE7A3C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v5 = *v3;
  v4 = v3[1];
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v5;
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EE7A60(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EE7A78()
{
  sub_1A3C4BB80(&unk_1EB129E20, type metadata accessor for SharedAlbumsActivityItem, &protocol conformance descriptor for SharedAlbumsActivityItem);

    ;
  }
}

uint64_t sub_1A3EE7AE4(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A3EE7BF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E314();
  }

  else if (*(a2 + 16) && (sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540), v5 = sub_1A524DBE4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1A524DBF4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A3EE7D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  v7(v9, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_1A3EE7D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_1A3C2F0BC(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A3C57108((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1A3EE7E84(uint64_t a1, uint64_t a2)
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

  sub_1A3C36FC0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1A3EE7F28(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1A3C2F0BC(a1, v15);
  sub_1A3C52C70(0, &qword_1EB12E390, 0x1E69BE340);
  if (swift_dynamicCast())
  {
    v4 = [v14 isMyComment];
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = [v14 isMyComment];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 BOOLValue];

      if (v7)
      {
        *v3 = 1;
        goto LABEL_13;
      }

LABEL_6:
      v8 = [v14 commenterDisplayName];
      if (!v8)
      {
        sub_1A524C674();
        v8 = sub_1A524C634();
      }

      v9 = sub_1A524C674();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        [v2 addObject_];
      }

LABEL_13:
      v13 = [v14 asset];
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }
}

void *sub_1A3EE812C(uint64_t a1, __n128 a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1A524E2B4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2)
    {
LABEL_3:
      sub_1A3EE7E84(v2, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3EE81DC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A3EE8810(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A3EE8414(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3EE9634(0);
    v2 = sub_1A524E3C4();
    v15 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A3EE85F4(v9 + 1);
        }

        v2 = v15;
        result = sub_1A524DBE4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1A3EE85F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A3EE9634(0);
  v4 = sub_1A524E3B4();
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
      v18 = sub_1A524DBE4();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A3EE8810(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3EE85F4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A3EE8980();
      goto LABEL_12;
    }

    sub_1A3EE8AC4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A3EE8980()
{
  v1 = v0;
  sub_1A3EE9634(0);
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A3EE8AC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A3EE9634(0);
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524DBE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void *sub_1A3EE8CCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1A524E274();
  sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
  sub_1A3EE96A8();
  result = sub_1A524CF84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1A524E304())
      {
        goto LABEL_30;
      }

      sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1A3EE8EE8(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A3EE9634(0);
      v4 = sub_1A524E3D4();
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = sub_1A524E2B4();
      if (!v6)
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

  v4 = MEMORY[0x1E69E7CD0];
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

LABEL_9:
  v7 = v4 + 56;
  v39 = v6;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v2;
    while (1)
    {
      v9 = MEMORY[0x1A59097F0](v8, v2);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = sub_1A524DBE4();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
        while (1)
        {
          v19 = *(*(v4 + 48) + 8 * v14);
          v20 = sub_1A524DBF4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v2 = v37;
            v6 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v2 = v37;
        v6 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v4 + 48) + 8 * v14) = v11;
        v21 = *(v4 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_33;
        }

        *(v4 + 16) = v22;
        if (v8 == v6)
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
    v23 = 0;
    v36 = v2 + 32;
    v38 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v36 + 8 * v23);
      v25 = sub_1A524DBE4();
      v26 = -1 << *(v4 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v7 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1A3C52C70(0, &unk_1EB131220, 0x1E69BE540);
        do
        {
          v32 = *(*(v4 + 48) + 8 * v27);
          v33 = sub_1A524DBF4();

          if (v33)
          {

            v6 = v39;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v7 + 8 * (v27 >> 6));
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v6 = v39;
      }

      *(v7 + 8 * v28) = v30 | v29;
      *(*(v4 + 48) + 8 * v27) = v24;
      v34 = *(v4 + 16);
      v10 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v10)
      {
        goto LABEL_35;
      }

      *(v4 + 16) = v35;
LABEL_23:
      if (++v23 == v6)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1A3EE91CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumsActivityItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EE9230(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumsActivityItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3EE938C(uint64_t a1)
{
  sub_1A5241144();
  if (v1 <= 0x3F)
  {
    sub_1A3C36FC0(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB120A18, off_1E771DDA0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore24SharedAlbumsActivityItemV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A3EE94A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3EE94F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3EE9538(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A3EE9564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1A3EE95C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1A3EE9634(uint64_t a1)
{
  if (!qword_1EB12E398)
  {
    sub_1A3C52C70(255, &unk_1EB131220, 0x1E69BE540);
    sub_1A3EE96A8();
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E398);
    }
  }
}

unint64_t sub_1A3EE96A8()
{
  result = qword_1EB131230;
  if (!qword_1EB131230)
  {
    sub_1A3C52C70(255, &unk_1EB131220, 0x1E69BE540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131230);
  }

  return result;
}

id sub_1A3EE9714()
{
  v1 = v0;
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-v3];
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v10 = result;
    type metadata accessor for LemonadeNavigationContext(0);
    type metadata accessor for LemonadePhotoLibraryContext(0, v11);
    v12 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v10, 0, 0);
    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v20);
    sub_1A3C799F0(v7, 0, 0, 0, v4, &v20, v12, 2);
    v13 = [v1 px_splitViewController];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 isSidebarVisible];
    }

    else
    {
      v15 = 0;
    }

    sub_1A4655DC0(v15);

    sub_1A418E3C8(v16, &v19);

    v18[13] = v19;
    v18[12] = 0;
    sub_1A3EE998C();
    v17 = sub_1A524C594();

    return ((v17 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3EE998C()
{
  result = qword_1EB125558;
  if (!qword_1EB125558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125558);
  }

  return result;
}

uint64_t sub_1A3EE99E0(char *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v153 = a6;
  v154 = a7;
  v156 = a5;
  v149 = a4;
  v157 = a3;
  v146 = a2;
  v159 = a1;
  v152 = sub_1A5246F24();
  v155 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v142 = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v158 = v138 - v12;
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v140 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v144 = (v138 - v17);
  sub_1A3C37604(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], v13);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v141 = v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v147 = (v138 - v21);
  v22 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v148 = v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LemonadeNavigationDestination(0);
  v143 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v139 = v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v151 = v138 - v27;
  v145 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v138 - v30;
  v32 = sub_1A5246E54();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v138 - v37;
  if (qword_1EB18EB30 != -1)
  {
    swift_once();
  }

  v39 = sub_1A5246E94();
  __swift_project_value_buffer(v39, qword_1EB18EB38);
  sub_1A5246E44();
  v40 = sub_1A5246E84();
  v41 = sub_1A524D654();
  v42 = sub_1A524DEC4();
  v150 = v24;
  if (v42)
  {
    v43 = a8;
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v40, v41, v45, "Latency", "", v44, 2u);
    v46 = v44;
    a8 = v43;
    MEMORY[0x1A590EEC0](v46, -1, -1);
  }

  v47 = a9;

  (*(v33 + 16))(v35, v38, v32);
  sub_1A5246ED4();
  swift_allocObject();
  v48 = sub_1A5246EC4();
  (*(v33 + 8))(v38, v32);
  v49 = v159;
  sub_1A3EEDA58(v159, v31, type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    v50 = *(v31 + 1);
    aBlock = *v31;
    v164 = v50;
    v165 = *(v31 + 4);
    v51 = v160;
    v52 = [v160 px_topmostPresentedViewController];
    if (!v52)
    {
      v52 = v51;
    }

    v161[0] = aBlock;
    v161[1] = v164;
    v162 = v165;
    v53 = v144;
    sub_1A3EECE98(v157, v144, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
    v54 = type metadata accessor for LemonadeDetailsContext(0);
    v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
    v56 = v147;
    if (v55 == 1)
    {
      sub_1A3C2C538(v53, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v57 = sub_1A52434D4();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    }

    else
    {
      sub_1A3EECE98(v53, v147, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C37604);
      sub_1A3EEDC98(v53, type metadata accessor for LemonadeDetailsContext);
    }

    v61 = v153;
    v60 = v154;
    sub_1A3C66EE8(v153, v154);
    v62 = v149;
    v63 = v149;
    v64 = v148;
    sub_1A41DF3FC(v56, v61, v60, v62, v156 & 1, v148);
    v65 = v49;
    v66 = v151;
    sub_1A3EEDA58(v65, v151, type metadata accessor for LemonadeNavigationDestination);
    v67 = (v143[80] + 16) & ~v143[80];
    v68 = (v145 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    sub_1A3CA24F0(v66, v69 + v67, type metadata accessor for LemonadeNavigationDestination);
    v70 = (v69 + v68);
    *v70 = a8;
    v70[1] = a9;
    sub_1A3C66EE8(a8, a9);
    v71 = sub_1A41DF468(v161, v64, sub_1A3EECFBC, v69);

    sub_1A3EEDC98(v64, type metadata accessor for LemonadeOneUpPresentationContext);
    sub_1A3EEAE1C(v48);

    sub_1A3EED05C(&aBlock);

    return v71 & 1;
  }

  sub_1A3EEDC98(v31, type metadata accessor for LemonadeNavigationDestination);
  v167 = &unk_1F1B444B8;
  v58 = swift_dynamicCastObjCProtocolConditional();
  if (v58)
  {
    v59 = [v58 actionProviderDelegate];
  }

  else
  {
    v59 = 0;
  }

  v72 = v152;
  v73 = v155;
  v74 = v158;
  v75 = v146;
  v76 = sub_1A3EEB3C0(v146, v59);
  swift_unknownObjectRelease();
  if (!v76)
  {
    sub_1A3EEAE1C(v48);
    goto LABEL_49;
  }

  v143 = v76;
  v77 = v76;
  v78 = v75;
  v79 = v77;
  sub_1A418E3C8(v78, &aBlock);
  LODWORD(v149) = aBlock;
  if (aBlock > 1u)
  {
    if (aBlock == 2)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        [v79 setModalPresentationStyle_];
        sub_1A524D394();
      }
    }

    else
    {
      [v79 setModalPresentationStyle_];
    }
  }

  else if (aBlock)
  {
    [v79 setModalPresentationStyle_];
  }

  else
  {
    [v79 setModalPresentationStyle_];
  }

  objc_opt_self();
  v80 = swift_dynamicCastObjCClass();
  v81 = v79;
  if (!v80)
  {
LABEL_34:
    v148 = v79;
    v147 = a8;
    v88 = sub_1A3C38A40();
    v89 = *(v73 + 16);
    v145 = v88;
    v146 = v73 + 16;
    v144 = v89;
    v89(v74);
    v90 = v139;
    sub_1A3EEDA58(v49, v139, type metadata accessor for LemonadeNavigationDestination);
    v91 = v81;
    v92 = sub_1A5246F04();
    v93 = sub_1A524D264();

    v94 = os_log_type_enabled(v92, v93);
    v159 = v91;
    if (v94)
    {
      v95 = swift_slowAlloc();
      swift_slowAlloc();
      v96 = swift_slowAlloc();
      v138[1] = a9;
      *&aBlock = v96;
      *v95 = 136446466;
      sub_1A3EEDA58(v90, v151, type metadata accessor for LemonadeNavigationDestination);
      v97 = sub_1A524C714();
      v99 = v98;
      sub_1A3EEDC98(v90, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94(v97, v99, &aBlock);
    }

    sub_1A3EEDC98(v90, type metadata accessor for LemonadeNavigationDestination);
    v100 = *(v73 + 8);
    v100(v74, v72);
    v101 = v160;
    v102 = v141;
    v103 = v149;
    v104 = v140;
    sub_1A3EECE98(v157, v140, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
    v105 = type metadata accessor for LemonadeDetailsContext(0);
    v106 = (*(*(v105 - 8) + 48))(v104, 1, v105);
    v107 = v148;
    if (v106 == 1)
    {
      sub_1A3C2C538(v104, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v108 = sub_1A52434D4();
      (*(*(v108 - 8) + 56))(v102, 1, 1, v108);
    }

    else
    {
      sub_1A3EECE98(v104, v102, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C37604);
      sub_1A3EEDC98(v104, type metadata accessor for LemonadeDetailsContext);
    }

    sub_1A524D374();
    LOBYTE(aBlock) = v103;
    LOBYTE(v161[0]) = 0;
    if (static LemonadeDetailsNavigationType.== infix(_:_:)(&aBlock, v161))
    {
      v109 = [v101 navigationController];
      if (v109)
      {
        v110 = v109;
        objc_opt_self();
        v111 = swift_dynamicCastObjCClass();
        v112 = v159;
        if (v111)
        {
          v113 = [v111 topViewController];
          v114 = v147;
          v115 = v156;
          if (v113)
          {
            v116 = v113;

            v107 = v116;
          }
        }

        else
        {
          v114 = v147;
          v115 = v156;
        }

        v134 = [v110 presentedViewController];
        if (v134)
        {

          [v110 dismissViewControllerAnimated:1 completion:0];
        }

        [v110 pushViewController:v107 animated:v115 & 1];
        sub_1A3EEAE1C(v48);
        if (v114)
        {
          v114(v112);
        }

LABEL_59:

        sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
        v135 = [swift_getObjCClassFromMetadata() sharedInstance];
        v136 = [v135 simulateDetailsViewLeaking];

        if (v136)
        {
          if (qword_1EB161930 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v137 = v107;
          MEMORY[0x1A5907D70]();
          if (*((qword_1EB161938 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EB161938 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
          swift_endAccess();
        }

        v71 = 1;
        return v71 & 1;
      }

      v120 = sub_1A524D244();
      v121 = *sub_1A3CAA3FC();
      sub_1A5246DF4(v120, &dword_1A3C1C000, v121, "View controller could not be pushed without UINavigationController", 66, 2, MEMORY[0x1E69E7CC0]);

LABEL_49:

      v71 = 0;
      return v71 & 1;
    }

    v117 = [v101 px_topmostPresentedViewController];
    if (v117)
    {
      v118 = v117;
      if (![v117 isBeingDismissed])
      {
        v119 = v118;
        goto LABEL_51;
      }
    }

    v119 = v101;
LABEL_51:
    v110 = v119;
    sub_1A5242A74();
    (v144)(v142, v145, v72);
    v107 = v107;
    v122 = sub_1A5246F04();
    v123 = sub_1A524D264();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v124 = 138543618;
      *(v124 + 4) = v110;
      *(v124 + 12) = 2114;
      *(v124 + 14) = v107;
      v126 = v143;
      *v125 = v110;
      v125[1] = v126;
      v127 = v107;
      v128 = v110;
      _os_log_impl(&dword_1A3C1C000, v122, v123, "Asking presenting view controller %{public}@ to present view controller %{public}@", v124, 0x16u);
      sub_1A3EECF3C(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v129 = v125;
      v47 = a9;
      MEMORY[0x1A590EEC0](v129, -1, -1);
      MEMORY[0x1A590EEC0](v124, -1, -1);
    }

    v100(v142, v72);
    v130 = swift_allocObject();
    v131 = v147;
    v130[2] = v147;
    v130[3] = v47;
    v112 = v159;
    v130[4] = v159;
    v165 = sub_1A3EECF0C;
    v166 = v130;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v164 = sub_1A3C2E0D0;
    *(&v164 + 1) = &block_descriptor_42;
    v132 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v131, v47);
    v133 = v112;

    [v110 presentViewController:v107 animated:v156 & 1 completion:v132];
    _Block_release(v132);

    sub_1A3EEAE1C(v48);
    goto LABEL_59;
  }

  v82 = v80;
  v81 = v79;
  v83 = [v82 viewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v84 = sub_1A524CA34();

  if (!(v84 >> 62))
  {
    result = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v158;
    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  result = sub_1A524E2B4();
  v74 = v158;
  if (!result)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_28:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v86 = MEMORY[0x1A59097F0](0, v84);
    goto LABEL_31;
  }

  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v86 = *(v84 + 32);
LABEL_31:
    v87 = v86;

    v81 = v87;
    v74 = v158;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EEAE1C(uint64_t a1)
{
  v1 = sub_1A5246EA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246E54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB18EB30 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246E94();
  __swift_project_value_buffer(v9, qword_1EB18EB38);
  v10 = sub_1A5246E84();
  sub_1A5246EB4();
  v11 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v14, "Latency", v12, v13, 2u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1A3EEB0A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3)
    {
      v24 = a1;
      a3();
      v16 = v24;
    }
  }

  else
  {
    v17 = sub_1A3C38A40();
    (*(v13 + 16))(v15, v17, v12);
    sub_1A3EEDA58(a2, v11, type metadata accessor for LemonadeNavigationDestination);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D264();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v20 = 136446210;
      sub_1A3EEDA58(v11, v8, type metadata accessor for LemonadeNavigationDestination);
      v21 = sub_1A524C714();
      v23 = v22;
      sub_1A3EEDC98(v11, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94(v21, v23, &v25);
    }

    sub_1A3EEDC98(v11, type metadata accessor for LemonadeNavigationDestination);
    (*(v13 + 8))(v15, v12);
  }
}

id sub_1A3EEB3C0(uint64_t a1, uint64_t a2)
{
  v134 = a1;
  v130 = a2;
  v2 = type metadata accessor for LemonadeRootView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v128 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C37604(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v127 = &v115 - v6;
  v7 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EED0B0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v121 = &v115 - v12;
  sub_1A3EED144(0);
  v123 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v126 = (&v115 - v16);
  v17 = type metadata accessor for GenerativeStoryCreationView(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v120 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = (&v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v115 - v22;
  v23 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v116 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EED270(0);
  v131 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v133;
  sub_1A418E3C8(v134, &v136);
  v129 = v136;
  sub_1A3EEDA58(v40, v39, type metadata accessor for LemonadeNavigationDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xCu:
      v72 = *(v39 + 3);
      v138 = *(v39 + 2);
      v139 = v72;
      v140 = *(v39 + 4);
      v141 = *(v39 + 10);
      v73 = *(v39 + 1);
      v136 = *v39;
      v137 = v73;
      LOBYTE(v142[0]) = v129;
      v45 = sub_1A47A9B44(&v136, v142, v134);
      sub_1A3EEDCF8(&v136);
      return v45;
    case 0xDu:
      sub_1A3CA24F0(v39, v28, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      LOBYTE(v136) = v129;
      v62 = sub_1A3EEDC50(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      v45 = sub_1A44D14B4(v28, &v136, v134, v26, v62);
      sub_1A3EEDC98(v28, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      return v45;
    case 0xEu:
      sub_1A3CA24F0(v39, v34, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      LOBYTE(v136) = v129;
      v83 = sub_1A3EEDC50(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v45 = sub_1A44D14B4(v34, &v136, v134, v32, v83);
      sub_1A3EEDC98(v34, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      return v45;
    case 0xFu:
      sub_1A3CA24F0(v39, v31, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      LOBYTE(v136) = v129;
      v91 = sub_1A3EEDC50(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration, &unk_1A5342948);
      v45 = sub_1A44D14B4(v31, &v136, v134, v29, v91);
      v50 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_29;
    case 0x10u:
      v31 = v115;
      sub_1A3CA24F0(v39, v115, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      LOBYTE(v136) = v129;
      v49 = sub_1A3EEDC50(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration, &protocol conformance descriptor for LemonadePhotosPagingMemoryGridConfiguration);
      v45 = sub_1A44D14B4(v31, &v136, v134, v117, v49);
      v50 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
LABEL_29:
      sub_1A3EEDC98(v31, v50);
      return v45;
    case 0x11u:
      v80 = v39[8];
      *&v136 = *v39;
      BYTE8(v136) = v80;
      LOBYTE(v142[0]) = v129;
      sub_1A3D8E838(&v136, v142, v134);
    case 0x12u:
      v81 = *(v39 + 3);
      v138 = *(v39 + 2);
      v139 = v81;
      *&v140 = *(v39 + 8);
      v82 = *(v39 + 1);
      v136 = *v39;
      v137 = v82;
      LOBYTE(v142[0]) = v129;
      v45 = sub_1A426FFD0(v142, v134);
      sub_1A3EEDBFC(&v136);
      return v45;
    case 0x13u:
      v92 = *(v39 + 1);
      v93 = *(v39 + 2);
      v94 = *(v39 + 3);
      *&v136 = *v39;
      *(&v136 + 1) = v92;
      *&v137 = v93;
      *(&v137 + 1) = v94;
      LOBYTE(v142[0]) = v129;
      v95 = sub_1A3EEDBA8();
      v45 = sub_1A42EB4AC(&v136, v142, v134, &type metadata for LemonadeUserAlbumsPhotosPagingGridConfiguration, v95);

      goto LABEL_34;
    case 0x14u:
      v99 = *(v39 + 1);
      v100 = *(v39 + 2);
      v94 = *(v39 + 3);
      *&v136 = *v39;
      *(&v136 + 1) = v99;
      *&v137 = v100;
      *(&v137 + 1) = v94;
      LOBYTE(v142[0]) = v129;
      v101 = sub_1A3EEDB54();
      v45 = sub_1A42EB4AC(&v136, v142, v134, &type metadata for LemonadeSharedAlbumsPhotosPagingGridConfiguration, v101);

LABEL_34:

      return v45;
    case 0x15u:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      return 0;
    case 0x16u:
      v71 = v116;
      sub_1A3CA24F0(v39, v116, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      sub_1A498A604(v71);
    case 0x18u:
      v106 = *v39;
      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v136);
      v107 = sub_1A4656D64(v40, &v136);
      sub_1A4655D24(0);
      MEMORY[0x1EEE9AC00](v108);
      *(&v115 - 2) = v106;
      *(&v115 - 1) = v107;
      v109 = type metadata accessor for LemonadeAccountView(0);
      v110 = sub_1A3EEDC50(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView, &unk_1A534B7D0);

      LemonadeNavigationContainer.init(navigationContext:content:)(v111, sub_1A3EED7D8, v109, v110, v126);
      swift_getKeyPath();
      sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
      sub_1A4654ADC();
      sub_1A3C37604(0, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
      sub_1A3EED838();
      sub_1A52459A4();
    case 0x19u:
      v51 = *(v39 + 5);
      v142[4] = *(v39 + 4);
      v142[5] = v51;
      v143[0] = *(v39 + 6);
      *(v143 + 11) = *(v39 + 107);
      v52 = *(v39 + 1);
      v142[0] = *v39;
      v142[1] = v52;
      v53 = *(v39 + 3);
      v142[2] = *(v39 + 2);
      v142[3] = v53;
      v54 = v134;
      LOBYTE(v136) = *(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v55 = sub_1A4656D64(v40, &v136);
      sub_1A3EED680(v142, v135);
      sub_1A412FC64(v135, &v136);
      v56 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination;
      sub_1A3EED6DC();
      v45 = sub_1A477FA30(&v136, v55 + v56, v54);

      sub_1A3EED730(&v136);
      sub_1A3EED784(v142);
      return v45;
    case 0x1Au:
      v102 = v119;
      sub_1A3CA24F0(v39, v119, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      if (*(v102 + 8) == 1)
      {
        PXDisplayCollectionDetailedCountsMake();
        v104 = &type metadata for GenerativeStoryTransitionIdentifier;
      }

      else
      {
        v104 = 0;
        v136 = 0uLL;
        *&v137 = 0;
      }

      v112 = v134;
      v113 = v120;
      v114 = v118;
      *(&v137 + 1) = v104;
      sub_1A3EEDAC0(0, v103);
      sub_1A3EEDA58(v102, v114, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);

      GenerativeStoryCreationView.init(configuration:)(v114, v113);
      v45 = sub_1A3D61F84(&v136, v112, v113);
      sub_1A3EEDC98(v102, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      return v45;
    case 0x1Bu:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      v57 = v134;
      LOBYTE(v136) = *(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v58 = v40;
      sub_1A4656D64(v40, &v136);
      v59 = type metadata accessor for LemonadeNavigationDestinationView(0);
      v60 = sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

      v61 = sub_1A3EEDDB4;
      goto LABEL_38;
    case 0x1Cu:
      *&v136 = *v39;
      v84 = v121;
      sub_1A46535F0(v121);
      v85 = type metadata accessor for LemonadeDetailsContext(0);
      v86 = 0;
      v87 = 0;
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        v88 = (v84 + *(v85 + 20));
        v86 = *v88;
        v87 = v88[1];
        sub_1A3C66EE8(*v88, v87);
      }

      sub_1A3C2C538(v84, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v45 = sub_1A43BD594(&v136, v86, v87);
      sub_1A3C33378(v86, v87);
      goto LABEL_25;
    case 0x1Du:
      v74 = *v39;
      LOBYTE(v136) = *(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v75 = sub_1A4656D64(v40, &v136);
      sub_1A3EED58C(0);
      MEMORY[0x1EEE9AC00](v76);
      *(&v115 - 2) = v75;
      *(&v115 - 1) = v74;
      v77 = type metadata accessor for LemonadeBookmarksEditView(0);
      v78 = sub_1A3EEDC50(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView, &unk_1A532FF88);

      v79 = v124;
      sub_1A457A75C(sub_1A3EED620, v77, v78, v124);
      v45 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v79);

      goto LABEL_27;
    case 0x1Eu:
      sub_1A3EED4F8(0);

      v90 = v122;
      sub_1A40EE7AC(v89, v122);
      v45 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v90);
LABEL_27:

      return v45;
    case 0x1Fu:
      *&v136 = *v39;
      v48 = sub_1A484F06C(&v136);
      goto LABEL_13;
    case 0x20u:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      v57 = v134;
      LOBYTE(v136) = *(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v58 = v40;
      sub_1A4656D64(v40, &v136);
      v59 = type metadata accessor for LemonadeNavigationDestinationView(0);
      v60 = sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

      v61 = sub_1A3EED678;
LABEL_38:
      v105 = v132;
      sub_1A47E5794(v61, v59, v60, v132);

      sub_1A3EEDC50(&qword_1EB12E400, sub_1A3EED270, &unk_1A5363448);
      v45 = sub_1A477FA30(v105, v58, v57);
      sub_1A3EEDC98(v105, sub_1A3EED270);
      return v45;
    case 0x21u:
      v47 = *v39;
      v45 = sub_1A47EFC4C(*v39);

      return v45;
    case 0x22u:
      *&v136 = *v39;
      v48 = sub_1A4871374(&v136);
LABEL_13:
      v45 = v48;
LABEL_25:
      swift_unknownObjectRelease();
      return v45;
    case 0x24u:
    case 0x25u:
      return *v39;
    case 0x26u:
      v96 = *(v39 + 1);
      v136 = *v39;
      v137 = v96;
      v138 = *(v39 + 2);
      *&v139 = *(v39 + 6);
      sub_1A3EED398(0);
      sub_1A3EED448(&v136, v135);
      sub_1A43F83A0(v135, v142);
      v45 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v142);
      result = [v45 view];
      if (result)
      {
        v97 = result;
        v98 = [objc_opt_self() systemBackgroundColor];
        [v97 setBackgroundColor_];

        sub_1A3EED4A4(&v136);
        return v45;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0x27u:
      goto LABEL_3;
    case 0x28u:
      type metadata accessor for LemonadeRootViewModel(0);
      v63 = *(*(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
      v64 = objc_opt_self();
      v65 = v63;
      v66 = [v64 defaultManager];
      v67 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

      v68 = sub_1A5244084();
      v69 = v127;
      (*(*(v68 - 8) + 56))(v127, 1, 1, v68);
      v70 = sub_1A3C5A374();
      sub_1A466CA74(v65, v67, 0, v69, v70 & 1);
    default:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
LABEL_3:
      v41 = v134;
      LOBYTE(v136) = *(v134 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      sub_1A4656D64(v40, &v136);
      v42 = type metadata accessor for LemonadeNavigationDestinationView(0);
      v43 = sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);

      v44 = v132;
      sub_1A47E5794(sub_1A3EEDDB4, v42, v43, v132);

      sub_1A3EEDC50(&qword_1EB12E400, sub_1A3EED270, &unk_1A5363448);
      v45 = sub_1A477FA30(v44, v40, v41);
      sub_1A3EEDC98(v44, sub_1A3EED270);
      [v45 setActionProviderDelegate_];
      return v45;
  }
}

uint64_t sub_1A3EEC884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EEDA58(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v6, a1, 0, a2);
}

id sub_1A3EEC940()
{
  sub_1A3EECA74(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A3EECBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ItemHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB16B4F0), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB16B4F0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A3EECCF8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176AC0);
  __swift_project_value_buffer(v0, qword_1EB176AC0);
  sub_1A5246EF4();
}

uint64_t sub_1A3EECD5C()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EB38);
  __swift_project_value_buffer(v4, qword_1EB18EB38);
  if (qword_1EB176AB8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB176AC0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A3EECE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3EECF0C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

void sub_1A3EECF3C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

double sub_1A3EECFA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void sub_1A3EECFBC(void *a1)
{
  v3 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A3EEB0A8(a1, v1 + v4, v5);
}

void sub_1A3EED0B0(uint64_t a1)
{
  if (!qword_1EB12E3A0)
  {
    v2 = type metadata accessor for LemonadeBookmarksEditView(255);
    v3 = sub_1A3EEDC50(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView, &unk_1A532FF88);
    v5 = type metadata accessor for LemonadeNavigationStack(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12E3A0);
    }
  }
}

void sub_1A3EED144(uint64_t a1)
{
  if (!qword_1EB124200)
  {
    sub_1A3EED1DC(255);
    sub_1A3C37604(255, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124200);
    }
  }
}

void sub_1A3EED1DC(uint64_t a1)
{
  if (!qword_1EB125628)
  {
    v2 = type metadata accessor for LemonadeAccountView(255);
    v3 = sub_1A3EEDC50(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView, &unk_1A534B7D0);
    v5 = type metadata accessor for LemonadeNavigationContainer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125628);
    }
  }
}

void sub_1A3EED270(uint64_t a1)
{
  if (!qword_1EB12E3B0)
  {
    v2 = type metadata accessor for LemonadeNavigationDestinationView(255);
    v3 = sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView, &unk_1A536BD00);
    v5 = type metadata accessor for LemonadePresentationRoot(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12E3B0);
    }
  }
}

void sub_1A3EED304(uint64_t a1)
{
  if (!qword_1EB12E3C0)
  {
    v2 = type metadata accessor for LemonadeRootView(255);
    v3 = sub_1A3EEDC50(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView, &protocol conformance descriptor for LemonadeRootView);
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12E3C0);
    }
  }
}

void sub_1A3EED398(uint64_t a1)
{
  if (!qword_1EB12E3D0)
  {
    v2 = sub_1A3EED3F4();
    v4 = type metadata accessor for PXSwiftUIHostingViewController(a1, &type metadata for LemonadeCustomView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB12E3D0);
    }
  }
}

unint64_t sub_1A3EED3F4()
{
  result = qword_1EB125A58;
  if (!qword_1EB125A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A58);
  }

  return result;
}

void sub_1A3EED4F8(uint64_t a1)
{
  if (!qword_1EB12E3E0)
  {
    v2 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(255);
    v3 = sub_1A3EEDC50(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12E3E0);
    }
  }
}

void sub_1A3EED58C(uint64_t a1)
{
  if (!qword_1EB12E3F0)
  {
    sub_1A3EED0B0(255);
    v3 = v2;
    v4 = sub_1A3EEDC50(&qword_1EB12E3F8, sub_1A3EED0B0, &unk_1A534B938);
    v6 = type metadata accessor for PXSwiftUIHostingViewController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12E3F0);
    }
  }
}

double sub_1A3EED620@<D0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1A431ED94(v4, v3, a1);
}

unint64_t sub_1A3EED6DC()
{
  result = qword_1EB12A958;
  if (!qword_1EB12A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A958);
  }

  return result;
}

void *sub_1A3EED7D8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_1A3C5A374();

  return sub_1A4578344(v4, v3, a1);
}

unint64_t sub_1A3EED838()
{
  result = qword_1EB128E10;
  if (!qword_1EB128E10)
  {
    sub_1A3EECF3C(255, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128E10);
  }

  return result;
}

void sub_1A3EED8BC(uint64_t a1)
{
  if (!qword_1EB12E408)
  {
    sub_1A3EED144(255);
    v3 = v2;
    v4 = sub_1A3EED920();
    v6 = type metadata accessor for LemonadeHostingController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12E408);
    }
  }
}

unint64_t sub_1A3EED920()
{
  result = qword_1EB12E410;
  if (!qword_1EB12E410)
  {
    sub_1A3EED144(255);
    sub_1A3EEDC50(&unk_1EB12E418, sub_1A3EED1DC, &protocol conformance descriptor for LemonadeNavigationContainer<A>);
    sub_1A3EED9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E410);
  }

  return result;
}

unint64_t sub_1A3EED9D0()
{
  result = qword_1EB1278C0;
  if (!qword_1EB1278C0)
  {
    sub_1A3C37604(255, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1278C0);
  }

  return result;
}

uint64_t sub_1A3EEDA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3EEDAC0(uint64_t a1, double a2)
{
  if (!qword_1EB12E428)
  {
    v3 = type metadata accessor for GenerativeStoryCreationView(255);
    v4 = sub_1A3EEDC50(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView, &protocol conformance descriptor for GenerativeStoryCreationView);
    v6 = type metadata accessor for LemonadeZoomPresentableDetailViewController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12E428);
    }
  }
}

unint64_t sub_1A3EEDB54()
{
  result = qword_1EB12E438;
  if (!qword_1EB12E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E438);
  }

  return result;
}

unint64_t sub_1A3EEDBA8()
{
  result = qword_1EB12AE70;
  if (!qword_1EB12AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE70);
  }

  return result;
}

uint64_t sub_1A3EEDC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3EEDC98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PhotosUICore::PerformanceBaselineScrollTest_optional __swiftcall PerformanceBaselineScrollTest.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PerformanceBaselineScrollTest.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A3EEDE88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "tableViewWithChrome";
  if (v2 == 1)
  {
    v4 = "tableViewWithChrome";
  }

  else
  {
    v4 = "tungstenColorsWithChrome";
  }

  if (*a1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "rollerNavigation";
  }

  if (*a2 != 1)
  {
    v3 = "tungstenColorsWithChrome";
  }

  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "rollerNavigation";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A3EEDF54()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A3EEDFE8(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A3EEE068(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A3EEE104(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "tableViewWithChrome";
  if (*v1 != 1)
  {
    v3 = "tungstenColorsWithChrome";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000013;
    v4 = "rollerNavigation";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t PerformanceBaselineScrollTest.unifiedScrollTestDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v13 = *v1;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53BC240);
  v14 = "tableViewWithChrome";
  if (v13 != 1)
  {
    v14 = "tungstenColorsWithChrome";
  }

  if (v13)
  {
    v15 = 0xD000000000000018;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = "rollerNavigation";
  }

  MEMORY[0x1A5907B60](v15, v16 | 0x8000000000000000);

  sub_1A5240E34();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A3D75F5C(v5);
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    LOBYTE(v18[0]) = v13 == 0;
    PhotosUnifiedScrollTestDefinition.init(url:scrollViewAccessibilityIdentifier:scrollViewKind:)(v9, 0x6F7263536E69616DLL, 0xEE00776569566C6CLL, v18, a1);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

unint64_t sub_1A3EEE438()
{
  result = qword_1EB12E450;
  if (!qword_1EB12E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E450);
  }

  return result;
}

uint64_t sub_1A3EEE49C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1A5241604();
  sub_1A3EEE5E0(a1);
  return v2;
}

void sub_1A3EEE4F4(char a1)
{
  if (v1[24] == (a1 & 1))
  {
    v1[24] = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v3);
  }
}

void sub_1A3EEE5E0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = (*v1 + 272);
  v5 = *v4;
  (*v4)();

  v6 = v1[2];
  if (v6)
  {
    if (a1)
    {
      sub_1A3C52C70(0, &unk_1EB1269D0, off_1E771DFB0);
      v7 = v6;
      v15 = a1;
      v8 = sub_1A524DBF4();

      if (v8)
      {

        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v5();

  v9 = v2[2];
  if (v9)
  {
    [v9 unregisterFrameObserver_];
  }

  v10 = a1;
  sub_1A3EEEBA8(a1);
  if (v2[3])
  {
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 280))(v12);
  }

  else
  {
    *(v2 + 24) = 0;
  }

  swift_getKeyPath();
  v5();

  v13 = v2[2];
  if (v13)
  {
    v14 = v13;
    [v14 registerFrameObserver_];
  }
}

void (*sub_1A3EEE850(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v4 = v1[2];
  *a1 = v4;
  v5 = v4;
  return sub_1A3EEE8F8;
}

void sub_1A3EEE8F8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A3EEE5E0(v2);
  }

  else
  {
    sub_1A3EEE5E0(*a1);
  }
}

double sub_1A3EEE960(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  (*(*v1 + 272))();

  if (v1[24] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v5);
  }

  return result;
}

void *sub_1A3EEEA84()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

id sub_1A3EEEAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 272))();

  v4 = v3[2];
  *a2 = v4;

  return v4;
}

void sub_1A3EEEB78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3EEEBA8(v1);
}

void sub_1A3EEEBA8(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB1269D0, off_1E771DFB0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

uint64_t sub_1A3EEED24()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  return v0[24];
}

void sub_1A3EEED88(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 272))();

  *a2 = v3[24];
}

uint64_t sub_1A3EEF00C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore26TungstenFirstFrameObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A3EEF0B0(void *a1)
{
  [a1 unregisterFrameObserver_];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  if ((v1[24] & 1) == 0)
  {
    v4 = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
    (*(*v1 + 280))(v5);
  }

  return result;
}

unint64_t sub_1A3EEF1EC()
{
  result = qword_1EB129B98;
  if (!qword_1EB129B98)
  {
    type metadata accessor for TungstenFirstFrameObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B98);
  }

  return result;
}

uint64_t type metadata accessor for TungstenFirstFrameObserver(uint64_t a1)
{
  result = qword_1EB181440;
  if (!qword_1EB181440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EEF298(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A3EEF33C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1A3EEF394(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController(a1, a2));

  sub_1A3EEFE74(v3, v4);
  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v7 setToolbarHidden_];
  [v7 setNavigationBarHidden_];
  v8 = v7;
  v9 = [v8 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  [v9 setClipsToBounds_];

  v11 = [v8 view];
  if (v11)
  {
    v12 = [v11 subviews];

    sub_1A3C52C70(0, &qword_1EB12B170, 0x1E69DD250);
    v13 = sub_1A524CA34();

    if (v13 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1A59097F0](0, v13);
        goto LABEL_8;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v13 + 32);
LABEL_8:
        v15 = v14;

        [v15 setClipsToBounds_];

        return;
      }

      __break(1u);
      goto LABEL_13;
    }

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1A3EEF5B8()
{
  v1 = v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState;
  swift_beginAccess();
  return *v1;
}

void sub_1A3EEF604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState];
  swift_beginAccess();
  v8[16] = a3;
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_1A3EF0480();
  if ((sub_1A524C594() & 1) == 0)
  {
    v9 = [v4 viewIfLoaded];
    [v9 setNeedsLayout];
  }
}

void (*sub_1A3EEF6D8(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState;
  *(v3 + 96) = v1;
  *(v3 + 104) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v4 + 24) = *v6;
  *(v4 + 40) = v7;
  return sub_1A3EEF778;
}

void sub_1A3EEF778(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = (*(*a1 + 96) + *(*a1 + 104));
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v3 + 16);
  *(v3 + 16) = v5;
  v7 = *v3;
  *v3 = v2;
  *(v3 + 1) = v4;
  *(v1 + 48) = v7;
  *(v1 + 64) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  sub_1A3EF0480();
  if ((sub_1A524C594() & 1) == 0)
  {
    v8 = [*(v1 + 96) viewIfLoaded];
    [v8 setNeedsLayout];
  }

  free(v1);
}

uint64_t sub_1A3EEF848()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EEF88C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = [v1 viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

void (*sub_1A3EEF918(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A3EEF9AC;
}

void sub_1A3EEF9AC(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = [v1[3] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EEFA24()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A3EEFA74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF7680;
}

double sub_1A3EEFB08()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A3EEFB58(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EEFBEC;
}

void sub_1A3EEFBF0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v5 != v2)
  {
    v6 = [v1[4] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EEFC6C()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EEFCB0(double a1)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1)
  {
    v5 = *&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel];
    if (v5)
    {
      if ([v5 zoomLevel] == 4)
      {
        if (v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded])
        {
LABEL_6:
          v6 = [v1 viewIfLoaded];
          [v6 setNeedsLayout];

          return;
        }

        if (v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8])
        {
          if (a1 > 0.0)
          {
            goto LABEL_6;
          }
        }

        else if (*&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight] < a1)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void (*sub_1A3EEFDA0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EEFE34;
}

void sub_1A3EEFE34(uint64_t a1)
{
  v1 = *a1;
  sub_1A3EEFCB0(*(*a1 + 24));

  free(v1);
}

void sub_1A3EEFE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater] = 0;
  v5 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_searchObservation];
  *v5 = 0;
  v5[1] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel] = 0;
  v6 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModelObservation];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModelObservation];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_assetCountsObservation];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel] = 0;
  v9 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableObservation];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimator] = 0;
  v10 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimatorObservation];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter(a1 a2))];
  v12 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_cplStatusObservation];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider] = 0;
  v14 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_previousExpansionState];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -1;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom] = 0;
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = 0;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_viewModel] = a1;

  v16 = sub_1A46E2430(v15);
  v17 = &v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState];
  *v17 = v16;
  *(v17 + 1) = v18;
  v17[16] = v19;
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight] = sub_1A46E20FC(v16);
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight] = sub_1A46E1CC8();
  v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking] = sub_1A46E2B88(v20) & 1;
  sub_1A46E3EC8();
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v23 = [v22 setClipsToBounds_];
  *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView] = v22;
  v35.receiver = v3;
  v35.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController(v23, v24);
  v25 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_allocWithZone(off_1E7721940);
  v27 = v25;
  v28 = [v26 initWithTarget:v27 needsUpdateSelector:sel_setNeedsUpdate];
  v29 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  v30 = *&v27[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
  *&v27[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater] = v28;
  v31 = v28;

  if (!v31)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v31 addUpdateSelector_];

  v32 = *&v27[v29];
  if (!v32)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v32 addUpdateSelector_];
  v33 = *&v27[v29];
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v33 addUpdateSelector_];
  v34 = *&v27[v29];
  if (v34)
  {
    [v34 addUpdateSelector_];

    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1A3EF01D0(__n128 a1)
{
  v2 = sub_1A46DF5BC(a1);
  sub_1A3EF28E8(v2 & 1);
  v4 = sub_1A46E44D8(v3);
  v5 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating);
  *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) = v4 & 1;
  if ((v4 & 1) != v5)
  {
    result = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = [result setNeedsUpdateOf_];
  }

  v7 = sub_1A46E2B88(v4);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))(v7 & 1);
  v10.n128_f64[0] = sub_1A46E20FC(v9);
  (*((*v8 & *v1) + 0x190))(v10);
  v11.n128_f64[0] = sub_1A46E1CC8();
  v12.n128_f64[0] = (*((*v8 & *v1) + 0x1C0))(v11);
  v13 = sub_1A46E2430(v12);
  v14 = (*((*v8 & *v1) + 0x160))(v13);
  v15 = sub_1A46E2434(v14);
  v16 = (*((*v8 & *v1) + 0x418))(v15);
  v17 = sub_1A46E24A8(v16);
  (*((*v8 & *v1) + 0x430))(v17);
  sub_1A46E3EC8();
  v18 = *((*v8 & *v1) + 0x1A8);

  return v18();
}

unint64_t sub_1A3EF0480()
{
  result = qword_1EB125400;
  if (!qword_1EB125400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125400);
  }

  return result;
}

uint64_t sub_1A3EF04D4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker;
  if (*(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker))
  {
    v4 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker);
  }

  else
  {
    v5 = v2;
    type metadata accessor for PhotosCustomScrollAnimationTracker(0, a2);
    v4 = sub_1A3C792C0(0xD000000000000019, 0x80000001A53BC9A0, 10.0);
    *(v5 + v3) = v4;
  }

  return v4;
}

id sub_1A3EF0560()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider;
  v2 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary:*(*(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_viewModel) + 16) presentationStyle:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A3EF06C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v41.receiver = v3;
  v41.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController(a1, a2);
  objc_msgSendSuper2(&v41, sel_viewIsAppearing_, v4 & 1);
  sub_1A3EF2C30(1);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40[4] = sub_1A3EF68E4;
  v40[5] = v5;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 1107296256;
  v40[2] = sub_1A3C2E0D0;
  v40[3] = &block_descriptor_43;
  v6 = _Block_copy(v40);

  px_perform_after_ca_commit(v6);
  _Block_release(v6);
  v7 = sub_1A46E0BEC();
  v8 = [v7 parentViewController];

  v9 = &qword_1EB12E000;
  v10 = &selRef_setMiddleName_;
  if (v8)
  {

    if (v8 == v3)
    {
      goto LABEL_8;
    }
  }

  v11 = sub_1A46E0BEC();
  [v11 _setIgnoresWrapperViewForContentOverlayInsets_];

  v12 = sub_1A46E0BEC();
  [v3 addChildViewController_];

  v13 = sub_1A46E0BEC();
  v14 = UIViewController.pxView.getter();

  [v14 setAutoresizingMask_];
  [*&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView] addSubview_];
  v15 = sub_1A46E0BEC();
  v16 = [v15 secondaryToolbarContainerView];

  if (!v16)
  {
LABEL_6:
    v19 = sub_1A46E0BEC();
    [v19 didMoveToParentViewController_];

    v20 = sub_1A46E0BEC();
    v21 = [v20 contentScrollViewForEdge_];

    v22 = sub_1A46E0BEC();
    v23 = [v22 contentScrollViewForEdge_];

    [v3 setContentScrollView:v21 forEdge:1];
    [v3 setContentScrollView:v23 forEdge:4];
    v24 = sub_1A46E0BEC();
    v25 = UIViewController.pxView.getter();

    [v25 setClipsToBounds_];
    v26 = sub_1A46E0BEC();
    [v26 setUpdateDelegate_];

    v27 = sub_1A46E0BEC();
    v28 = [v27 viewProvider];

    v29 = [v28 gridView];
    v30 = [v29 scrollViewController];

    [v30 setAdjustsContentInsetWhenScrollDisabled_];
    v31 = sub_1A46E0BEC();
    v32 = [v31 viewProvider];

    v33 = [v32 gridView];
    v34 = [v33 scrollViewController];

    [v34 registerObserver_];
    v35 = sub_1A46E0BEC();
    v36 = [v35 viewProvider];

    v37 = [v36 gridView];
    v38 = [v37 rootLayout];

    sub_1A3EF2134([v38 setVisibleRectDelegate_]);
    v9 = &qword_1EB12E000;
    result = *&v3[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v10 = &selRef_setMiddleName_;
    [result setNeedsUpdateOf_];

LABEL_8:
    v39 = v9[148];
    result = *&v3[v39];
    if (result)
    {
      [result v10[174]];
      result = *&v3[v39];
      if (result)
      {
        return [result v10[174]];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  [v16 _setIgnoresLayerTransformForSafeAreaInsets_];
  result = [v3 view];
  if (result)
  {
    v18 = result;
    [result addSubview_];

    goto LABEL_6;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1A3EF0CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64.receiver = v2;
  v64.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController(a1, a2);
  objc_msgSendSuper2(&v64, sel_viewWillLayoutSubviews);
  v4 = sub_1A46E0BEC();
  v5 = [v4 parentViewController];

  if (!v5 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v6 = v5, v7 = v3, v8 = sub_1A524DBF4(), v7, v6, v6, (v8 & 1) != 0))
  {
    v9 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v9)
    {
      [v9 updateIfNeeded];
      v10 = [v3 view];
      if (v10)
      {
        v11 = v10;
        [v10 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v65.origin.x = v13;
        v65.origin.y = v15;
        v65.size.width = v17;
        v65.size.height = v19;
        CGRectGetHeight(v65);
        v20 = sub_1A46E0BEC();
        v21 = [v20 viewProvider];

        v22 = [v21 gridView];
        v23 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v3) + 0x188))();
        (*((*v23 & *v3) + 0x410))();
        *(swift_allocObject() + 16) = 1;
        v24 = *((*v23 & *v3) + 0x1A0);
        if (v24() == 0.0)
        {
          v25 = [v22 scrollViewController];
          [v25 contentInset];
        }

        else
        {
          (v24)(&selRef_resumeChangeDeliveryAndBackgroundLoadingForImportAssetsDataSourceManager_token_);
        }

        v26 = [v3 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 window];

          if (!v28)
          {
LABEL_28:
            v50 = sub_1A46E0BEC();
            [v3 additionalSafeAreaInsets];
            [v50 setMinimumContentOverlayInsets_];

            v51 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
            if (!v51 || ![v51 desiredVerticalAlignment])
            {
              sub_1A3EF6938();
              sub_1A524C524();
            }

            v52 = sub_1A46E0BEC();
            v53 = [v52 secondaryToolbarContainerView];

            if (!v53)
            {
              sub_1A3EF6938();
              sub_1A524C524();
            }

            v54 = [v3 view];
            if (v54)
            {
              v55 = v54;
              [v54 bounds];
              v57 = v56;
              v59 = v58;
              v61 = v60;
              v63 = v62;

              [v53 setBounds_];
              PXRectGetCenter();
            }

            goto LABEL_40;
          }

          [v28 safeAreaInsets];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel;
          v38 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
          if (!v38 || [v38 zoomLevel] != 4)
          {
LABEL_23:
            [v3 additionalSafeAreaInsets];
            if (v30 != v49 || v32 != v46 || v34 != v47 || v36 != v48)
            {
              [v3 setAdditionalSafeAreaInsets_];
            }

            goto LABEL_28;
          }

          v39 = *((*v23 & *v3) + 0x1B8);
          v39();
          v41 = *(v3 + v37);
          if (v41)
          {
            v42 = v40.n128_f64[0];
            if ([v41 zoomLevel] == 4)
            {
              if (*(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded))
              {
                goto LABEL_20;
              }

              v43 = (v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
              if (*(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8))
              {
                if (v42 > 0.0)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v40.n128_u64[0] = *v43;
                if (*v43 < v42)
                {
                  goto LABEL_20;
                }
              }
            }
          }

          if ((*(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8) & 1) == 0)
          {
            v44 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
            goto LABEL_22;
          }

LABEL_20:
          (v39)(v40);
LABEL_22:
          v45 = (v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
          *v45 = v44;
          *(v45 + 8) = 0;
          v30 = v30 + v44;
          goto LABEL_23;
        }

LABEL_39:
        __break(1u);
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

id sub_1A3EF1E58(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  v4 = v2;
  if (v2 == 1)
  {
    v4 = sub_1A3EF1ED8(a2);
    swift_beginAccess();
    v5 = *v3;
    *v3 = v4;
    v6 = v4;
    sub_1A3C327F4(v5);
  }

  sub_1A3C327E4(v2);
  return v4;
}

id sub_1A3EF1ED8(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v8 = result;
    v9 = [result px_rootScrollView];

    if (!v9)
    {
      v10 = sub_1A4531AF8();
      (*(v3 + 16))(v6, v10, v2);
      v11 = sub_1A5246F04();
      v12 = sub_1A524D244();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "LemonadeCuratedLibraryView is unable to find shelves ScrollView", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3EF2134(uint64_t result)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel;
  if (!*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel))
  {
    v3 = v1;
    v4 = sub_1A46E0BEC();
    v5 = [v4 viewProvider];

    v6 = [v5 viewModel];
    v7 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter);
    [v6 setLibrarySummaryPresenter_];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = (v7 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
    v10 = *(v7 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
    v11 = v9[1];
    *v9 = sub_1A3EF7654;
    v9[1] = v8;

    sub_1A3C784D4(v10, v11);

    v12 = *(v3 + v2);
    *(v3 + v2) = v6;
    v13 = v6;

    v14 = [v13 zoomablePhotosViewModel];
    v15 = *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel);
    *(v3 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel) = v14;
    v16 = v14;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }
}

void sub_1A3EF26F8(uint64_t a1, double a2)
{
  v3 = sub_1A46E0BEC();
  v4 = [v3 viewProvider];

  v5 = [v4 gridView];
  v6 = [v5 scrollViewController];

  v7 = [v6 scrollView];
  v19 = v7;
  swift_unknownObjectRelease();
  if (v19)
  {
    [v19 px:3 contentOffsetForEdge:0.0 padding:{0.0, -a2, 0.0}];
    v9 = v8;
    v11 = v10;
    [v19 contentOffset];
    if (v13 != v9 || v12 != v11)
    {
      v15 = sub_1A46E0BEC();
      v16 = [v15 viewProvider];

      v17 = [v16 gridView];
      v18 = [v17 rootLayout];

      [v18 clearLastVisibleAreaAnchoringInformation];
      [v19 setContentOffset_];
    }
  }
}

void sub_1A3EF28E8(uint64_t result)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] = result;
  if (v3 == (result & 1))
  {
    return;
  }

  v4 = v1;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  v6 = *&v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v6 setNeedsUpdateOf_];
  v7 = *&v4[v5];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v7 setNeedsUpdateOf_];
  v8 = *&v4[v5];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v8 setNeedsUpdateOf_];
  v9 = sub_1A46E0BEC();
  v10 = [v9 parentViewController];

  if (!v10 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v11 = v10, v12 = v4, v13 = sub_1A524DBF4(), v12, v11, v11, (v13 & 1) != 0))
  {
    v15 = sub_1A46E0BEC();
    [v15 setIsCollapsed_];
  }

  sub_1A3EF43F4(v14);
}

void sub_1A3EF2A74(uint64_t a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[v2] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

void sub_1A3EF2C30(uint64_t a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[v2] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}