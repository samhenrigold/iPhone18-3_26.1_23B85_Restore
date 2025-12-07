double sub_1C573F4F8(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v30 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  if (!*(*a1 + 16))
  {

LABEL_6:
    memset(v30, 0, sizeof(v30));
    sub_1C572942C(v30, 1u, a2);
    sub_1C5625230(v30, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_7;
  }

  sub_1C5743990(*a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);

  sub_1C56914DC(v15);
  sub_1C57439F8(v10, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v15, v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  sub_1C56920A4();
  v20 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v21 = sub_1C584F630();

  v22 = [v20 initWithEncodedMapsIdentifier_];

  if (!v22)
  {
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
    goto LABEL_6;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
  v24 = *sub_1C567A818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C5867970;
  *(v25 + 32) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C5743EE0;
  *(v26 + 24) = v19;
  v27 = *(*v24 + 80);

  v28 = v23;

  v27(v25, sub_1C5743EF4, v26);

  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
LABEL_7:

  return result;
}

void sub_1C573F898(uint64_t *a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v54 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v54 - v25;
  v27 = *a1;
  if (!*(*a1 + 16))
  {
    v59 = 0u;
    v60 = 0u;
    sub_1C572942C(&v59, 1u, a2);
    sub_1C5625230(&v59, &qword_1EC16E790, &unk_1C586A110);
    return;
  }

  v56 = a2;
  sub_1C5743990(v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C56916A0(v23);
  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v23, v26, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  sub_1C5692164();
  v28 = sub_1C584EAB0();
  v30 = v29;

  if (v30 >> 60 == 15)
  {
    v59 = 0u;
    v60 = 0u;
    sub_1C572942C(&v59, 2u, v56);
LABEL_20:
    sub_1C5625230(&v59, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v26, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
    return;
  }

  v31 = sub_1C584EAC0();
  v32 = sub_1C569217C();
  v33 = sub_1C568FFE4(v32);
  v54 = a3;
  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = sub_1C569217C();
  v35 = sub_1C568FFE4(v34);
  if (v35 >= 0xFFFFFFFF80000000)
  {
    v36 = v35;
    if (v35 <= 0x7FFFFFFF)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    v36 = 6;
LABEL_10:
    v37 = objc_opt_self();
    [v37 captureWebPlaceCardAnalyticEvent:v31 analyticSessionType:v36];

    v38 = *(*v26 + 16);
    if (v38)
    {
      v39 = (*v26 + 32);
      while (1)
      {
        v40 = *v39++;
        if (v40 < 0)
        {
          break;
        }

        [v37 captureWebPlaceCardFeatureUseCount_usageString_usageBool_];
        if (!--v38)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_14:
    v59 = 0u;
    v60 = 0u;
    sub_1C56466CC(&v59, v57, &qword_1EC16E790, &unk_1C586A110);
    if (v58)
    {
      v41 = swift_dynamicCast();
      (*(v11 + 56))(v9, v41 ^ 1u, 1, v10);
      v42 = (*(v11 + 48))(v9, 1, v10);
      v43 = v56;
      if (v42 != 1)
      {
        v44 = v28;
        v45 = v55;
        sub_1C5743928(v9, v55, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v46 = sub_1C584F140();
        v48 = v47;
        v49 = sub_1C584EAD0();
        v51 = v50;
        v52 = sub_1C566DD84(v46, v48);
        v58 = MEMORY[0x1E69E6158];
        v57[0] = v49;
        v57[1] = v51;
        (v43)(v57, 0, 0, v52);
        sub_1C57439F8(v45, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v57, &qword_1EC16E790, &unk_1C586A110);
        v53 = v44;
LABEL_19:
        sub_1C566DD70(v53, v30);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1C5625230(v57, &qword_1EC16E790, &unk_1C586A110);
      (*(v11 + 56))(v9, 1, 1, v10);
      v43 = v56;
    }

    sub_1C5625230(v9, &qword_1EC170928, &unk_1C5878148);
    v43(&v59, 0, 0);
    v53 = v28;
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1C573FEC8(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v47 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v49 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v47 - v21;
  if (!*(*a1 + 16))
  {
    v53 = 0u;
    v54 = 0u;
    sub_1C572942C(&v53, 1u, a2);
    return sub_1C5625230(&v53, &qword_1EC16E790, &unk_1C586A110);
  }

  sub_1C5743990(*a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v47 - v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v23 = sub_1C584F2C0();
  __swift_project_value_buffer(v23, qword_1EC18FA38);
  v50 = v22;
  sub_1C5743990(v22, v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v24 = sub_1C584F2A0();
  v25 = sub_1C584F9B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47[1] = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v48 = a2;
    v29 = v28;
    *&v53 = v28;
    *v27 = 136315138;
    sub_1C5742CB4(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument, &unk_1C586D5D0);
    v30 = sub_1C584F160();
    v32 = v31;
    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v33 = sub_1C5649518(v30, v32, &v53);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1C5620000, v24, v25, "Received web bundle error: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v34 = v29;
    a2 = v48;
    MEMORY[0x1C694B7A0](v34, -1, -1);
    MEMORY[0x1C694B7A0](v27, -1, -1);
  }

  else
  {

    sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  }

  v53 = 0u;
  v54 = 0u;
  sub_1C56466CC(&v53, v51, &qword_1EC16E790, &unk_1C586A110);
  v36 = v50;
  if (!v52)
  {
    sub_1C5625230(v51, &qword_1EC16E790, &unk_1C586A110);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_12;
  }

  v37 = swift_dynamicCast();
  (*(v11 + 56))(v9, v37 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_12:
    sub_1C5625230(v9, &qword_1EC170928, &unk_1C5878148);
    a2(&v53, 0, 0);
    goto LABEL_13;
  }

  v38 = v9;
  v39 = v49;
  sub_1C5743928(v38, v49, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
  v40 = sub_1C584F140();
  v42 = v41;
  v43 = sub_1C584EAD0();
  v45 = v44;
  v46 = sub_1C566DD84(v40, v42);
  v52 = MEMORY[0x1E69E6158];
  v51[0] = v43;
  v51[1] = v45;
  (a2)(v51, 0, 0, v46);
  sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v51, &qword_1EC16E790, &unk_1C586A110);
LABEL_13:
  sub_1C5625230(&v53, &qword_1EC16E790, &unk_1C586A110);
  return sub_1C57439F8(v36, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
}

uint64_t sub_1C574050C(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v198 = a4;
  v197 = a3;
  v203 = a2;
  v202 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v193 = &v175 - v6;
  v194 = type metadata accessor for WebPlacecardBridgeReply(0);
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v7);
  v195 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v204 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v206 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v201 = &v175 - v14;
  v15 = type metadata accessor for PlaceActionBarLayout(0);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v191 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v196 = &v175 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v189 = &v175 - v23;
  v24 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v187 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v205 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v31 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v183 = (&v175 - v34);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v181 = (&v175 - v37);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v180 = (&v175 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v186 = (&v175 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v185 = (&v175 - v46);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v182 = (&v175 - v49);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = (&v175 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v57 = &v175 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v55, v58);
  v190 = &v175 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v188 = &v175 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62, v64);
  v184 = &v175 - v66;
  MEMORY[0x1EEE9AC00](v65, v67);
  v69 = &v175 - v68;
  v70 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70 - 8, v72);
  v74 = &v175 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) - 8;
  v77 = MEMORY[0x1EEE9AC00](v75, v76);
  v79 = MEMORY[0x1EEE9AC00](v77, v78);
  v81 = &v175 - v80;
  MEMORY[0x1EEE9AC00](v79, v82);
  v86 = &v175 - v85;
  v87 = *v202;
  if (!*(*v202 + 16))
  {
    memset(v210, 0, sizeof(v210));
    sub_1C572942C(v210, 1u, v197);
    return sub_1C5625230(v210, &qword_1EC16E790, &unk_1C586A110);
  }

  v176 = v84;
  v177 = v83;
  sub_1C5743990(v87 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v74, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5691840(v81);
  sub_1C57439F8(v74, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v81, v86, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  v88 = v204;
  v89 = *(v204 + 56);
  v202 = v9;
  v179 = v204 + 56;
  v178 = v89;
  v89(v69, 1, 1, v9);
  sub_1C5695114(v52);
  v90 = sub_1C5694E6C();
  sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v91 = v86;
  v200 = v86;
  v92 = v88;
  v199 = v69;
  if (!v90)
  {
LABEL_14:
    v142 = *v91;
    v143 = *(*v91 + 16);
    if (v143)
    {
      v144 = 0;
      v145 = (v92 + 48);
      v146 = MEMORY[0x1E69E7CC0];
      v147 = v203;
      v148 = v202;
      while (v144 < *(v142 + 16))
      {
        sub_1C5743990(v142 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v144, v31, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C572E2AC(v31, v147, v57);
        sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        if ((*v145)(v57, 1, v148) == 1)
        {
          sub_1C5625230(v57, &qword_1EC16FE18, &unk_1C5877850);
        }

        else
        {
          v149 = v201;
          sub_1C5743928(v57, v201, type metadata accessor for PlaceActionBarLayoutItem);
          sub_1C5743928(v149, v206, type metadata accessor for PlaceActionBarLayoutItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = sub_1C573426C(0, v146[2] + 1, 1, v146, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v151 = v146[2];
          v150 = v146[3];
          if (v151 >= v150 >> 1)
          {
            v146 = sub_1C573426C((v150 > 1), v151 + 1, 1, v146, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v146[2] = v151 + 1;
          sub_1C5743928(v206, v146 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v151, type metadata accessor for PlaceActionBarLayoutItem);
          v147 = v203;
          v148 = v202;
        }

        if (v143 == ++v144)
        {
          goto LABEL_26;
        }
      }

      __break(1u);

      sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUActionBarItem);

      __break(1u);
      goto LABEL_35;
    }

    v146 = MEMORY[0x1E69E7CC0];
    v147 = v203;
LABEL_26:
    v152 = v190;
    sub_1C56466CC(v199, v190, &qword_1EC16FE18, &unk_1C5877850);
    v153 = v196;
    sub_1C57162A0(v152, v146, v196);
    type metadata accessor for PlaceActionBarConfiguration(0);
    v154 = v191;
    sub_1C5743990(v153, v191, type metadata accessor for PlaceActionBarLayout);
    v155 = *(v147 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
    v156 = *(v147 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
    v157 = v155;
    v158 = sub_1C5704684(v154, v156, v155, &off_1F44C6BB0);
    v159 = (*((*MEMORY[0x1E69E7D40] & *v147) + 0xB0))();
    if (v159)
    {
      [v159 sectionController:v147 updateWithActionBarConfiguration:v158];
      swift_unknownObjectRelease();
    }

    memset(v209, 0, sizeof(v209));
    sub_1C56466CC(v209, v207, &qword_1EC16E790, &unk_1C586A110);
    v160 = v197;
    v161 = v195;
    v162 = v194;
    v163 = v193;
    if (v208)
    {
      v164 = swift_dynamicCast();
      v165 = v192;
      (*(v192 + 56))(v163, v164 ^ 1u, 1, v162);
      if ((*(v165 + 48))(v163, 1, v162) != 1)
      {
        sub_1C5743928(v163, v161, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
        v166 = sub_1C584F140();
        v168 = v167;
        v169 = sub_1C584EAD0();
        v171 = v170;
        v172 = sub_1C566DD84(v166, v168);
        v208 = MEMORY[0x1E69E6158];
        v207[0] = v169;
        v207[1] = v171;
        (v160)(v207, 0, 0, v172);
        sub_1C57439F8(v161, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v207, &qword_1EC16E790, &unk_1C586A110);
LABEL_33:

        sub_1C5625230(v209, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v153, type metadata accessor for PlaceActionBarLayout);
        sub_1C5625230(v199, &qword_1EC16FE18, &unk_1C5877850);
        return sub_1C57439F8(v200, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
      }
    }

    else
    {
      sub_1C5625230(v207, &qword_1EC16E790, &unk_1C586A110);
      (*(v192 + 56))(v163, 1, 1, v162);
    }

    sub_1C5625230(v163, &qword_1EC170928, &unk_1C5878148);
    v160(v209, 0, 0);
    goto LABEL_33;
  }

  sub_1C5695114(v52);
  v93 = sub_1C5694E44();
  sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v93)
  {
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = v177;
    sub_1C5743990(v200, v177, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v96 = (*(v176 + 80) + 24) & ~*(v176 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = v94;
    sub_1C5743928(v95, v97 + v96, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5743F14, v97, GEOLocationCoordinate2DMake, 0, sub_1C5743F0C, v98, v210);
    sub_1C5695114(v52);
    v99 = *v52;

    sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v100 = v182;
    sub_1C5695114(v182);
    v187 = sub_1C5694DE4();
    v102 = v101;
    sub_1C57439F8(v100, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v103 = objc_opt_self();
    v104 = v185;
    sub_1C5695114(v185);
    sub_1C5694E2C();
    sub_1C57439F8(v104, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v105 = sub_1C584F630();

    v106 = [v103 _mapsui_systemImageNamed_];

    v187 = sub_1C5646814(v99, v187, v102, v106, 0, -1);

    v107 = v186;
    sub_1C5695114(v186);
    v185 = sub_1C5694E2C();
    v184 = v108;
    sub_1C57439F8(v107, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    sub_1C5695114(v52);
    LOBYTE(v105) = sub_1C5694DFC();
    sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v109 = 0;
    v110 = 0;
    v111 = v202;
    if (v105)
    {
      sub_1C5695114(v52);
      v109 = sub_1C5694DE4();
      v110 = v112;
      sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    }

    sub_1C5695114(v52);
    v113 = sub_1C5695040();
    v115 = v114;
    sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v116 = v189;
    sub_1C5716754(v117);
    v118 = v187;
    v119 = v187;
    v173 = v115;
    v120 = v188;
    sub_1C57163A4(v116, v118, 0, 1, v185, v184, v109, v110, v188, v113, v173, 1970169165, 0xE400000000000000);

    v121 = v199;
    sub_1C5625230(v199, &qword_1EC16FE18, &unk_1C5877850);
    goto LABEL_13;
  }

  sub_1C5695114(v52);
  v123 = sub_1C5694DFC();
  sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v123)
  {
    sub_1C5695114(v52);
    v188 = sub_1C5694DE4();
    v186 = v124;
    sub_1C57439F8(v52, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  }

  else
  {
    v188 = 0;
    v186 = 0;
  }

  v125 = v69;
  v126 = v180;
  sub_1C5695114(v180);
  v185 = sub_1C5694E2C();
  v182 = v127;
  sub_1C57439F8(v126, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v128 = v181;
  sub_1C5695114(v181);
  v129 = v187;
  sub_1C5694E98(v187);
  sub_1C57439F8(v128, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v130 = v183;
  sub_1C5695114(v183);
  v181 = sub_1C5695040();
  v132 = v131;
  sub_1C57439F8(v130, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5774F00(0);
  if (v133)
  {
    v134 = v133;
    v135 = *((*MEMORY[0x1E69E7D40] & *v133) + 0x50);
    v136 = v133;
    v135(v210);
    v137 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v139 = v138;
    v140 = v189;
    sub_1C5716754(v141);
    v174 = v132;
    v120 = v184;
    sub_1C57163A4(v140, v134, 0, 0, v185, v182, v188, v186, v184, v181, v174, v137, v139);

    sub_1C57439F8(v129, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v121 = v125;
    sub_1C5625230(v125, &qword_1EC16FE18, &unk_1C5877850);
    v111 = v202;
LABEL_13:
    v178(v120, 0, 1, v111);
    sub_1C56534F4(v120, v121, &qword_1EC16FE18, &unk_1C5877850);
    v91 = v200;
    v92 = v204;
    goto LABEL_14;
  }

LABEL_35:

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5741A94(uint64_t *a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v48 - v10;
  v49 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v13);
  v48[0] = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v48 - v26;
  v28 = *a1;
  if (!*(*a1 + 16))
  {
    v52 = 0u;
    v53 = 0u;
    sub_1C572942C(&v52, 1u, a3);
    return sub_1C5625230(&v52, &qword_1EC16E790, &unk_1C586A110);
  }

  v48[1] = a4;
  sub_1C5743990(v28 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5691B90(v24);
  sub_1C57439F8(v19, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v24, v27, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  v29 = sub_1C5696784();
  v30 = 0.0;
  v31.n128_u64[0] = 0;
  if (v29)
  {
    v31.n128_f64[0] = sub_1C569676C();
  }

  v32 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x180))(v31);
  if (sub_1C56967CC())
  {
    v30 = sub_1C56967B4();
  }

  v33 = (*((*v32 & *a2) + 0x198))(v30);
  v34 = (*((*v32 & *a2) + 0xB0))(v33);
  if (v34)
  {
    v35 = v34;
    v36 = sub_1C569676C();
    [v35 sectionController:a2 updateInsetsForHeaderWithTopInset:v36 bottom:sub_1C56967B4()];
    swift_unknownObjectRelease();
  }

  v52 = 0u;
  v53 = 0u;
  sub_1C56466CC(&v52, v50, &qword_1EC16E790, &unk_1C586A110);
  if (!v51)
  {
    sub_1C5625230(v50, &qword_1EC16E790, &unk_1C586A110);
    (*(v12 + 56))(v11, 1, 1, v49);
    goto LABEL_13;
  }

  v37 = v49;
  v38 = swift_dynamicCast();
  (*(v12 + 56))(v11, v38 ^ 1u, 1, v37);
  if ((*(v12 + 48))(v11, 1, v37) == 1)
  {
LABEL_13:
    sub_1C5625230(v11, &qword_1EC170928, &unk_1C5878148);
    a3(&v52, 0, 0);
    goto LABEL_14;
  }

  v39 = v48[0];
  sub_1C5743928(v11, v48[0], type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);
  v41 = sub_1C584F140();
  v43 = v42;
  v44 = sub_1C584EAD0();
  v46 = v45;
  v47 = sub_1C566DD84(v41, v43);
  v51 = MEMORY[0x1E69E6158];
  v50[0] = v44;
  v50[1] = v46;
  (a3)(v50, 0, 0, v47);
  sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v50, &qword_1EC16E790, &unk_1C586A110);
LABEL_14:
  sub_1C5625230(&v52, &qword_1EC16E790, &unk_1C586A110);
  return sub_1C57439F8(v27, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
}

uint64_t sub_1C57420D0()
{
  v2 = *(type metadata accessor for WebPlacecardBridge(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C565C934;

  return sub_1C5729E1C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

unint64_t sub_1C5742274(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C584FD70();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void sub_1C57422F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController];
    *&Strong[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController] = 0;
  }
}

unint64_t sub_1C5742354()
{
  result = qword_1EC170948;
  if (!qword_1EC170948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170948);
  }

  return result;
}

unint64_t sub_1C57423AC()
{
  result = qword_1EC170950;
  if (!qword_1EC170950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170950);
  }

  return result;
}

void sub_1C5742764(void (**a1)(void))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  _Block_copy(a1);
  if ([v3 isMainThread])
  {
    a1[2](a1);
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v4 = sub_1C584F9F0();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C5742978;
    *(v5 + 24) = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C566DF14;
    *(v6 + 24) = v5;
    v8[4] = sub_1C566DF14;
    v8[5] = v6;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C566A440;
    v8[3] = &block_descriptor_110;
    v7 = _Block_copy(v8);

    dispatch_sync(v4, v7);

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_1C584EFD0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C5742A98()
{
  v2 = *(type metadata accessor for WebPlacecardBridge(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C565C598;

  return sub_1C5729E1C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void sub_1C5742BB0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  [v2 setObject:v1 forKey:v3];
  if (v4 >> 62)
  {
    v5 = sub_1C584FB90();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      if (v9)
      {
        v10 = v9;
        [v2 setObject:v8 forKey:v9];
      }
    }
  }
}

uint64_t sub_1C5742CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_226Tm()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*(v1 - 8) + 64);

  v4 = *(v1 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + *(v1 + 36);
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v10, v2 | 7);
}

void sub_1C5742EDC()
{
  type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C5695040();
    sub_1C572DC6C(0, 0xE000000000000000, v2, v3, 2);
  }
}

void sub_1C5742F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();
    if (v2)
    {
      v3 = v2;
      sub_1C5696D18();
      sub_1C5696D48();
      sub_1C5696D78();
      sub_1C5696DA8();
      v9 = objc_allocWithZone(MUDevice);
      v4 = sub_1C584F630();

      v5 = sub_1C584F630();

      v6 = sub_1C584F630();

      v7 = sub_1C584F630();

      v8 = [v9 initWithName:v4 symbolName:v5 deviceID:v6 model:v7];

      [v3 sectionController:v1 didSelectSendToDevice:v8];
      swift_unknownObjectRelease();

      v1 = v8;
    }
  }
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 88) & ~v2;
  v10 = *(*(v1 - 8) + 64);

  v4 = *(v1 + 20);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + *(v1 + 36);
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

id sub_1C5743338()
{
  v1 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1C572DA48(v3, v0 + 24, (v0 + v2), v5, v6);
}

unint64_t sub_1C5743480()
{
  result = qword_1EC170A70;
  if (!qword_1EC170A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170A70);
  }

  return result;
}

uint64_t sub_1C57434D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [v1 sectionView];
  v5 = [v4 traitCollection];

  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v2 + 16) = v5;

  LOBYTE(v1) = [v1 isTesting];
  result = swift_beginAccess();
  *(v3 + 16) = v1;
  return result;
}

id sub_1C5743594(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1C57435A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x1EEE66BB8](a1, a2);
  }

  return a1;
}

unint64_t sub_1C57435BC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
  if (a2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v4 = sub_1C584F2C0();
    __swift_project_value_buffer(v4, qword_1EC18FA38);
    v5 = a2;
    v6 = sub_1C584F2A0();
    v7 = sub_1C584F9B0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1C5620000, v6, v7, "Tried to refine mapItem but failed with error %@", v8, 0xCu);
      sub_1C5625230(v9, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v9, -1, -1);
      MEMORY[0x1C694B7A0](v8, -1, -1);
    }

    v22 = a2;
    v12 = a2;
    goto LABEL_17;
  }

  if (a1 && *(a1 + 16) && (sub_1C56465F8(a1 + 32, &v22), sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v13 = sub_1C584F2C0();
    __swift_project_value_buffer(v13, qword_1EC18FA38);
    v14 = sub_1C584F2A0();
    v15 = sub_1C584F990();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C5620000, v14, v15, "Successfully fetched refined map item from MKMapService", v16, 2u);
      MEMORY[0x1C694B7A0](v16, -1, -1);
    }

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
    return sub_1C584F850();
  }

  else
  {
    result = sub_1C5742274(0xD00000000000003CLL, 0x80000001C589AE10);
    if (result != 6)
    {
      v18 = result;
      sub_1C5743480();
      v19 = swift_allocError();
      *v20 = v18;
      v22 = v19;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
      return sub_1C584F840();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5743928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5743990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C57439F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_38Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_1C584EFD0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C5743B68(void *a1, void *a2)
{
  v5 = *(type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C572F4EC(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1C584EFD0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[8];
  v9 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v7(v8 + *(v9 + 20), v6);

    v10 = v8 + *(v9 + 36);
    v11 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v7(v10, v6);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5743E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t EVChargerAvailabilityDownloader.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5744094@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*EVChargerAvailabilityDownloader.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

uint64_t EVChargerAvailabilityDownloader.isActive.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void EVChargerAvailabilityDownloader.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1C57443D8();
}

uint64_t sub_1C5744328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1C5744380(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1C57443D8();
}

void sub_1C57443D8()
{
  v1 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if ((*(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress) & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
      v3 = *(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
      if (v3)
      {
        [v3 invalidate];
        v4 = *(v0 + v2);
      }

      else
      {
        v4 = 0;
      }

      *(v0 + v2) = 0;

      sub_1C57446FC(0.0);
    }
  }

  else
  {
    v5 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
    v6 = *(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
    if (v6)
    {
      [v6 invalidate];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;
  }
}

void (*EVChargerAvailabilityDownloader.isActive.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5744504;
}

void sub_1C5744504(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C57443D8();
  }
}

id EVChargerAvailabilityDownloader.__allocating_init(mapItemIdentifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer] = 0;
  v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id EVChargerAvailabilityDownloader.init(mapItemIdentifier:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer] = 0;
  v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C57446FC(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
    if (!*(v1 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer))
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1C57449C0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C564A8C4;
      aBlock[3] = &block_descriptor_12;
      v7 = _Block_copy(aBlock);

      v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
      _Block_release(v7);
      v9 = *(v1 + v4);
      *(v1 + v4) = v8;
    }
  }
}

id EVChargerAvailabilityDownloader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EVChargerAvailabilityDownloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C57449C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
    *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer) = 0;

    ObjectType = swift_getObjectType();
    v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 1;
    v4 = [objc_opt_self() sharedService];
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C5867970;
      v7 = *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier];
      *(v6 + 32) = v7;
      sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
      v8 = v7;
      v9 = sub_1C584F750();

      v10 = [v5 ticketForRefreshingEVChargersWithIdentifiers:v9 traits:0];

      if (v10)
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = ObjectType;
        aBlock[4] = sub_1C5744C18;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C567AB00;
        aBlock[3] = &block_descriptor_9_0;
        v13 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v10 submitRefreshRequestWithHandler:v13 networkActivity:0];
        swift_unknownObjectRelease_n();
        _Block_release(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1C5744C18(id a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress) = 0;
    if (a2)
    {
      v6 = a2;
      if (qword_1EC18E860 != -1)
      {
        swift_once();
      }

      v7 = sub_1C584F2C0();
      __swift_project_value_buffer(v7, qword_1EC18E868);
      v8 = a2;
      v9 = v5;
      v10 = sub_1C584F2A0();
      v11 = sub_1C584F9B0();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 134218242;
        *(v12 + 4) = [*(&v9->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

        *(v12 + 12) = 2112;
        v14 = a2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 14) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1C5620000, v10, v11, "Error downloading map item with identifier:%llu. Error: %@", v12, 0x16u);
        sub_1C567CCE0(v13);
        MEMORY[0x1C694B7A0](v13, -1, -1);
        MEMORY[0x1C694B7A0](v12, -1, -1);
      }

      else
      {
      }

      sub_1C57446FC(10.0);
      goto LABEL_38;
    }

    if (a1)
    {
      v16 = sub_1C567A9F4(a1);
      if (v16)
      {
        v17 = v16 & 0xFFFFFFFFFFFFFF8;
        if (v16 >> 62)
        {
          a2 = v16;
          v30 = sub_1C584FB90();
          v16 = a2;
          if (v30)
          {
            goto LABEL_11;
          }
        }

        else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_11:
          if ((v16 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1C694A320](0);
          }

          else
          {
            if (!*(v17 + 16))
            {
              __break(1u);
              goto LABEL_42;
            }

            v18 = *(v16 + 32);
          }

          a2 = v18;
          v19 = [v18 _geoMapItem];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;

          a1 = [v20 _evCharger];
          swift_unknownObjectRelease();
          if (a1)
          {
            if (qword_1EC18E860 == -1)
            {
LABEL_17:
              v21 = sub_1C584F2C0();
              __swift_project_value_buffer(v21, qword_1EC18E868);
              v9 = v5;
              v22 = sub_1C584F2A0();
              v23 = sub_1C584F990();
              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                *v24 = 134217984;
                *(v24 + 4) = [*(&v9->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

                _os_log_impl(&dword_1C5620000, v22, v23, "downloaded new availability for muid: %llu", v24, 0xCu);
                MEMORY[0x1C694B7A0](v24, -1, -1);
              }

              else
              {
              }

              swift_beginAccess();
              v29 = swift_unknownObjectWeakLoadStrong();
              if (v29)
              {
                [v29 didDownloadEVChargerAvailabilityWithEvCharger_];
                swift_unknownObjectRelease();
              }

              sub_1C57446FC(30.0);

              goto LABEL_38;
            }

LABEL_42:
            swift_once();
            goto LABEL_17;
          }

          if (qword_1EC18E860 != -1)
          {
            swift_once();
          }

          v25 = sub_1C584F2C0();
          __swift_project_value_buffer(v25, qword_1EC18E868);
          v9 = v5;
          v26 = sub_1C584F2A0();
          v27 = sub_1C584F9B0();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 134217984;
            *(v28 + 4) = [*(&v9->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

            _os_log_impl(&dword_1C5620000, v26, v27, "downloaded mapItem doesn't have charger availability information. mapItem identifier:%llu ", v28, 0xCu);
            MEMORY[0x1C694B7A0](v28, -1, -1);

LABEL_38:
            return;
          }

          goto LABEL_37;
        }
      }
    }

    if (qword_1EC18E860 != -1)
    {
      swift_once();
    }

    v31 = sub_1C584F2C0();
    __swift_project_value_buffer(v31, qword_1EC18E868);
    v9 = v5;
    v26 = sub_1C584F2A0();
    v32 = sub_1C584F9B0();
    if (os_log_type_enabled(v26, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = [*(&v9->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

      _os_log_impl(&dword_1C5620000, v26, v32, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v33, 0xCu);
      MEMORY[0x1C694B7A0](v33, -1, -1);

      goto LABEL_38;
    }

LABEL_37:
    v9 = v26;
    goto LABEL_38;
  }
}

uint64_t sub_1C57451F0()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18E868);
  __swift_project_value_buffer(v0, qword_1EC18E868);
  sub_1C5715FD8();
  swift_beginAccess();

  return sub_1C584F2B0();
}

id sub_1C574529C()
{
  v0 = sub_1C584ECE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C584EC20();
  v6 = sub_1C584EC10();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  [v5 setDateStyle_];
  result = [v5 setTimeStyle_];
  qword_1EC190470 = v5;
  return result;
}

void sub_1C57453D0()
{
  v1 = sub_1C584ED50();
  v68 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1C584ED80();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v5);
  v70 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C584EB30();
  v80 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v78 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v79 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v21 = *(v20 + 24);
  v71 = v0;
  v22 = *(v0 + v21);
  if ([v22 departureTimeDisplayStyle] == 3)
  {
    v23 = [v22 operatingHours];
    if (v23)
    {
      v62 = v1;

      v24 = v71;
      v25 = sub_1C584EB00();
      v63 = *(v20 + 36);
      sub_1C56466CC(v24 + v63, v19, &unk_1EC1702F0, &unk_1C5877650);
      v26 = v4 + 48;
      v27 = *(v4 + 48);
      v28 = v4;
      v29 = v72;
      v64 = v27;
      v65 = v26;
      v30 = v27(v19, 1, v72);
      v66 = v28;
      if (v30 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_1C584ED60();
        (*(v28 + 8))(v19, v29);
      }

      v32 = v70;
      v33 = [v22 operatingHoursForDate:v25 inTimeZone:v31];

      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C30, &qword_1C5878640);
        v34 = sub_1C584F770();

        v82 = MEMORY[0x1E69E7CC0];
        if (v34 >> 62)
        {
LABEL_23:
          v35 = sub_1C584FB90();
          v36 = v69;
          if (v35)
          {
LABEL_10:
            v37 = 0;
            v76 = v34 & 0xFFFFFFFFFFFFFF8;
            v77 = v34 & 0xC000000000000001;
            v32 = (v80 + 32);
            v75 = xmmword_1C5867990;
            v73 = v35;
            v74 = v34;
            while (1)
            {
              if (v77)
              {
                v38 = MEMORY[0x1C694A320](v37, v34);
                v39 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
LABEL_20:
                  __break(1u);
                  return;
                }
              }

              else
              {
                if (v37 >= *(v76 + 16))
                {
                  __break(1u);
                  goto LABEL_23;
                }

                v38 = *(v34 + 8 * v37 + 32);
                swift_unknownObjectRetain();
                v39 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_20;
                }
              }

              v81 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C38, &qword_1C5878648);
              v40 = *(v80 + 72);
              v41 = (*(v80 + 80) + 32) & ~*(v80 + 80);
              v42 = swift_allocObject();
              *(v42 + 16) = v75;
              v43 = [v38 startDate];
              if (!v43)
              {
                break;
              }

              v44 = v43;
              v45 = v42 + v41;
              v46 = v79;
              sub_1C584EB10();

              v29 = *v32;
              (*v32)(v45, v46, v7);
              v47 = [v38 endDate];
              if (!v47)
              {
                goto LABEL_32;
              }

              v48 = v47;
              v49 = v78;
              sub_1C584EB10();

              v29(v45 + v40, v49, v7);
              swift_unknownObjectRelease();
              sub_1C57487BC(v42);
              ++v37;
              v34 = v74;
              if (v81 == v73)
              {
                v50 = v82;
                v29 = v72;
                v36 = v69;
                v32 = v70;
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            return;
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v36 = v69;
          if (v35)
          {
            goto LABEL_10;
          }
        }

        v50 = MEMORY[0x1E69E7CC0];
LABEL_25:
        sub_1C56466CC(v71 + v63, v36, &unk_1EC1702F0, &unk_1C5877650);
        v51 = v64;
        if (v64(v36, 1, v29) == 1)
        {
          v52 = [objc_opt_self() currentCalendar];
          v53 = v67;
          sub_1C584ED20();

          v54 = v69;
          sub_1C584ED40();
          (*(v68 + 8))(v53, v62);
          if (v51(v54, 1, v29) != 1)
          {
            sub_1C5625230(v54, &unk_1EC1702F0, &unk_1C5877650);
          }
        }

        else
        {
          (*(v66 + 32))(v32, v36, v29);
        }

        v55 = objc_opt_self();
        sub_1C5745B48(v50);
        v56 = sub_1C584F750();

        v57 = sub_1C584ED60();
        v58 = v32;
        v59 = sub_1C584F630();
        v60 = [v55 _navigation_formattedStringForHourRanges_timeZone_delimeter_];

        if (v60)
        {

          sub_1C584F660();

          (*(v66 + 8))(v58, v72);
          return;
        }

        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_1C5745B48(uint64_t a1)
{
  v2 = sub_1C584EB30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C57488E8(0, v7, 0);
    v8 = v19;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v19 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C57488E8((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v15 + 1;
      sub_1C563D304(&v18, (v8 + 32 * v15 + 32));
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

id sub_1C5745CE0(unint64_t a1, uint64_t a2)
{
  v65 = a2;
  v4 = sub_1C584EB30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v61 = 0;
    v14 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v35 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    if (*(v14 + 2))
    {
      v67 = v14;
      v36 = objc_opt_self();

      v37 = [v36 commaDelimeter];
      sub_1C584F660();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
      sub_1C571AC5C();
      v38 = sub_1C584F600();
      v40 = v39;

      v41 = [v36 transitDeparturesCountdownFormatString];
      sub_1C584F660();

      v42 = [v36 transitDeparturesCountdownUnitString];
      v43 = sub_1C584F660();
      v45 = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C5867990;
      v47 = MEMORY[0x1E69E6158];
      *(v46 + 56) = MEMORY[0x1E69E6158];
      v48 = sub_1C563D3B0();
      *(v46 + 32) = v38;
      *(v46 + 40) = v40;
      *(v46 + 96) = v47;
      *(v46 + 104) = v48;
      *(v46 + 64) = v48;
      *(v46 + 72) = v43;
      *(v46 + 80) = v45;
      v8 = sub_1C584F670();
      v4 = v49;

      v2 = sub_1C5638228(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a1 = *(v2 + 2);
      v23 = *(v2 + 3);
      v12 = a1 + 1;
      if (a1 >= v23 >> 1)
      {
LABEL_40:
        v2 = sub_1C5638228((v23 > 1), v12, 1, v2);
      }

      v50 = v61;
      *(v2 + 2) = v12;
      v51 = &v2[16 * a1];
      *(v51 + 4) = v8;
      *(v51 + 5) = v4;
      v35 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
      if ((v50 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v61 & 1) == 0)
      {
LABEL_35:
        v66 = v2;
        v58 = [objc_opt_self() v35[343]];
        sub_1C584F660();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
        sub_1C571AC5C();
        v59 = sub_1C584F600();

        return v59;
      }
    }

    v52 = [objc_opt_self() transitDeparturesRowNowString];
    v53 = sub_1C584F660();
    v55 = v54;

    v56 = *(v2 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v2;
    if (!isUniquelyReferenced_nonNull_native || v56 >= *(v2 + 3) >> 1)
    {
      v2 = sub_1C5638228(isUniquelyReferenced_nonNull_native, v56 + 1, 1, v2);
      v67 = v2;
    }

    sub_1C5748CFC(0, 0, 1, v53, v55);

    goto LABEL_35;
  }

  v61 = 0;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v63 = (v10 - 8);
  v64 = v11;
  v62 = *(v10 + 56);
  v13 = v9 - 1;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = 2;
  while (1)
  {
    v16 = v13;
    v64(v8, v12, v4);
    sub_1C584EAF0();
    v18 = v17;
    IsImminentDepartureTimeInterval = GEOTransitDepartureIsImminentDepartureTimeInterval();
    v20 = 0.0;
    if ((IsImminentDepartureTimeInterval & 1) == 0)
    {
      if (v18 < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      v20 = v21 / 60.0;
    }

    v22 = floor(v20);
    v23 = *&v22 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = 0xC3E0000000000001;
    if (v22 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    v23 = 0x43E0000000000000;
    if (v22 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v22)
    {
      break;
    }

    v23 = v61;
    if ((v61 & 1) == 0 && v15-- == 0)
    {
      goto LABEL_39;
    }

    v61 = 1;
LABEL_22:
    a1 = *(v14 + 2);
    (*v63)(v8, v4);
    if (a1 != v15)
    {
      v13 = v16 - 1;
      v12 += v62;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v24 = v14;
  result = [objc_opt_self() _navigation_formattedStringForInteger_];
  if (result)
  {
    v26 = result;
    v27 = sub_1C584F660();
    v2 = v28;

    v29 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1C5638228(0, *(v24 + 2) + 1, 1, v24);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v32 = v29;
    if (v31 >= v30 >> 1)
    {
      v32 = sub_1C5638228((v30 > 1), v31 + 1, 1, v29);
    }

    *(v32 + 2) = v31 + 1;
    v14 = v32;
    v33 = &v32[16 * v31];
    *(v33 + 4) = v27;
    *(v33 + 5) = v2;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_1C57462A4(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v70 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v71 = &v70 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v70 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v70 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v70 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v70 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v70 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v70 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v70 - v38;
  if (a2 > 5)
  {
    if (a1)
    {
      v47 = [a1 scheduledDepartureDate];
      if (v47)
      {
        v48 = v47;
        sub_1C584EB10();

        v49 = sub_1C584EB30();
        (*(*(v49 - 8) + 56))(v16, 0, 1, v49);
      }

      else
      {
        v54 = sub_1C584EB30();
        (*(*(v54 - 8) + 56))(v16, 1, 1, v54);
      }

      sub_1C56534F4(v16, v20, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v53 = sub_1C584EB30();
      (*(*(v53 - 8) + 56))(v20, 1, 1, v53);
    }

    v36 = v20;
  }

  else if (((1 << a2) & 0x39) != 0)
  {
    if (a1)
    {
      v40 = [a1 scheduledDepartureDate];
      if (v40)
      {
        v41 = v40;
        sub_1C584EB10();

        v42 = sub_1C584EB30();
        (*(*(v42 - 8) + 56))(v32, 0, 1, v42);
      }

      else
      {
        v50 = sub_1C584EB30();
        (*(*(v50 - 8) + 56))(v32, 1, 1, v50);
      }

      sub_1C56534F4(v32, v36, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v46 = sub_1C584EB30();
      (*(*(v46 - 8) + 56))(v36, 1, 1, v46);
    }
  }

  else if (a1)
  {
    v43 = [a1 liveDepartureDate];
    if (v43)
    {
      v44 = v43;
      sub_1C584EB10();

      v45 = sub_1C584EB30();
      (*(*(v45 - 8) + 56))(v24, 0, 1, v45);
    }

    else
    {
      v52 = sub_1C584EB30();
      (*(*(v52 - 8) + 56))(v24, 1, 1, v52);
    }

    sub_1C56534F4(v24, v28, &unk_1EC170AC0, &qword_1C5878418);
    v36 = v28;
  }

  else
  {
    v51 = sub_1C584EB30();
    (*(*(v51 - 8) + 56))(v28, 1, 1, v51);
    v36 = v28;
  }

  sub_1C56534F4(v36, v39, &unk_1EC170AC0, &qword_1C5878418);
  sub_1C57469A4(v39, a3);
  if (v55)
  {
    v56 = objc_opt_self();
    v57 = sub_1C584F630();

    v58 = [v56 _mapkit_attributedLiveTransitStringFromDepartureString_departure_darkMode_];
  }

  else
  {
    if (a1)
    {
      if ([a1 liveStatusString])
      {
        swift_unknownObjectRelease();
        v59 = 0;
        goto LABEL_25;
      }

      v63 = [a1 liveDepartureDate];
      if (v63)
      {
        v64 = v70;
        v65 = v63;
        sub_1C584EB10();

        v66 = 0;
      }

      else
      {
        v66 = 1;
        v64 = v70;
      }

      v62 = v71;
      v67 = sub_1C584EB30();
      (*(*(v67 - 8) + 56))(v64, v66, 1, v67);
      sub_1C56534F4(v64, v62, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v61 = sub_1C584EB30();
      v62 = v71;
      (*(*(v61 - 8) + 56))(v71, 1, 1, v61);
    }

    sub_1C57469A4(v62, a3);
    v59 = v68;
    sub_1C5625230(v62, &unk_1EC170AC0, &qword_1C5878418);
    if (!v59)
    {
      goto LABEL_25;
    }

    v69 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v57 = sub_1C584F630();

    v58 = [v69 initWithString_];
  }

  v59 = v58;

LABEL_25:
  sub_1C5625230(v39, &unk_1EC170AC0, &qword_1C5878418);
  return v59;
}

uint64_t sub_1C57469A4(char *a1, uint64_t a2)
{
  v37 = a2;
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v36 - v4;
  v6 = sub_1C584ED80();
  v36 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - v11;
  v13 = sub_1C584ED50();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v36 - v19;
  v21 = sub_1C584EB30();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(v41, v20, &unk_1EC170AC0, &qword_1C5878418);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1C5625230(v20, &unk_1EC170AC0, &qword_1C5878418);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_1C584ED30();
    v41 = v16;
    sub_1C584ED40();
    sub_1C56466CC(v37, v5, &unk_1EC1702F0, &unk_1C5877650);
    v27 = v36;
    v28 = *(v36 + 48);
    if (v28(v5, 1, v6) == 1)
    {
      v29 = v40;
      (*(v27 + 16))(v40, v12, v6);
      if (v28(v5, 1, v6) != 1)
      {
        sub_1C5625230(v5, &unk_1EC1702F0, &unk_1C5877650);
      }
    }

    else
    {
      v29 = v40;
      (*(v27 + 32))(v40, v5, v6);
    }

    if (qword_1EC18E880 != -1)
    {
      swift_once();
    }

    v30 = qword_1EC190470;
    v31 = sub_1C584ED60();
    [v30 setTimeZone_];

    v32 = sub_1C584EB00();
    v33 = [v30 stringFromDate_];

    v34 = sub_1C584F660();
    v35 = *(v27 + 8);
    v35(v29, v6);
    v35(v12, v6);
    (*(v38 + 8))(v41, v39);
    (*(v22 + 8))(v25, v21);
    return v34;
  }
}

uint64_t sub_1C5746E7C(unint64_t a1, uint64_t a2)
{
  v4 = sub_1C584EB30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C574711C(a1);
  v10 = type metadata accessor for TransitDeparturesRowViewModel(0);
  result = v9;
  v12 = *(v9 + 2);
  if (v12)
  {
    v26 = v10;
    v27 = a2;
    v13 = 0;
    v14 = 0;
    v28 = 0;
    v15 = *(v5 + 80);
    v29 = *(v10 + 20);
    v16 = result + ((v15 + 32) & ~v15);
    v25 = v12 - 1;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v17 = result;
      (*(v5 + 16))(v8, v16 + *(v5 + 72) * v13, v4);
      sub_1C584EAF0();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      result = GEOTransitDepartureIsImminentDepartureTimeInterval();
      v20 = 0.0;
      if ((result & 1) == 0)
      {
        if (v19 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v19;
        }

        v20 = v21 / 60.0;
      }

      v22 = floor(v20);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_28;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v22)
      {
        v23 = __CFADD__(v14++, 1);
        if (v23)
        {
          goto LABEL_30;
        }

        result = v17;
LABEL_4:
        if (v12 == ++v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = v17;
        if (v28)
        {
          goto LABEL_4;
        }

        v23 = __CFADD__(v14++, 1);
        if (v23)
        {
          goto LABEL_32;
        }

        v28 = 1;
        if (v25 == v13++)
        {
LABEL_20:

          v10 = v26;
          a2 = v27;
          goto LABEL_22;
        }
      }
    }
  }

  v14 = 0;
LABEL_22:
  result = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(a2);
  if (result == 1 && *(v30 + *(v10 + 40)) == 1)
  {
    v23 = __CFADD__(v14++, 1);
    if (v23)
    {
      goto LABEL_31;
    }
  }

  return v14;
}

char *sub_1C574711C(unint64_t a1)
{
  v40 = sub_1C584EB30();
  v38 = *(v40 - 8);
  v3 = MEMORY[0x1EEE9AC00](v40, v2);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v36 = &v34 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v35 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v41 = &v34 - v12;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = (v38 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    v34 = a1;
    v39 = a1 & 0xC000000000000001;
    while (v15)
    {
      v20 = MEMORY[0x1C694A320](v14, a1);
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if ([v20 v19[357]])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = i;
        v23 = [v20 departureDate];
        if (v23)
        {
          v24 = v23;
          v25 = v16;
          v26 = v37;
          sub_1C584EB10();

          swift_unknownObjectRelease();
          v27 = *v17;
          v28 = v36;
          v29 = v40;
          (*v17)(v36, v26, v40);
          v30 = v35;
          v27(v35, v28, v29);
          v27(v41, v30, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1C5748A18(0, *(v18 + 2) + 1, 1, v18);
          }

          v32 = *(v18 + 2);
          v31 = *(v18 + 3);
          v16 = v25;
          if (v32 >= v31 >> 1)
          {
            v18 = sub_1C5748A18((v31 > 1), v32 + 1, 1, v18);
          }

          v19 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
          *(v18 + 2) = v32 + 1;
          v27(&v18[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32], v41, v40);
          a1 = v34;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        i = v22;
        v15 = v39;
      }

      ++v14;
      if (v21 == i)
      {
        return v18;
      }
    }

    if (v14 >= *(v16 + 16))
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 8 * v14 + 32);
    swift_unknownObjectRetain();
    v21 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t type metadata accessor for TransitDeparturesRowViewModel(uint64_t a1)
{
  result = qword_1EC18E990;
  if (!qword_1EC18E990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57474B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v18 = v17[5];
  v19 = sub_1C584EB30();
  (*(*(v19 - 8) + 32))(&a9[v18], a2, v19);
  *&a9[v17[6]] = a3;
  a9[v17[7]] = a4;
  *&a9[v17[8]] = a5;
  result = sub_1C56534F4(a6, &a9[v17[9]], &unk_1EC1702F0, &unk_1C5877650);
  a9[v17[10]] = a7;
  *&a9[v17[11]] = a8;
  return result;
}

uint64_t sub_1C57475A8()
{
  v1 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v2 = v1;
  if (*(v0 + *(v1 + 28)) != 1)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + *(v1 + 32));
  if (v3 && (v4 = [v3 vehicleIdentifier]) != 0)
  {
    v5 = v4;
    v6 = sub_1C584F660();
  }

  else
  {
    v6 = 0;
  }

  if (sub_1C584F6D0() <= 0)
  {

    v7 = [*(v0 + *(v2 + 24)) line];
    if (v7)
    {
      v8 = [v7 name];
      if (v8)
      {
        v9 = v8;
        v6 = sub_1C584F660();

        v10 = sub_1C584F6D0();
        swift_unknownObjectRelease();
        if (v10 > 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v6 = 0;
  }

LABEL_13:
  if (sub_1C584F6D0() >= 1 && [*(v0 + *(v2 + 24)) displayStyle] == 1)
  {
    return v6;
  }

LABEL_16:
  v11 = *(v0 + *(v2 + 32));
  if (!v11 || (v12 = [v11 displayName]) == 0)
  {
    v12 = [*(v0 + *(v2 + 24)) displayName];
    if (!v12)
    {
      return 0;
    }
  }

  v13 = v12;
  v6 = sub_1C584F660();

  return v6;
}

id sub_1C574777C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for TransitDeparturesRowViewModel(0);
  if (*(v0 + *(v2 + 28)) != 1)
  {
    return v1;
  }

  v3 = v2;
  v4 = *(v0 + *(v2 + 32));
  if (v4)
  {
    v5 = [v4 vehicleIdentifier];
    if (v5)
    {
      v6 = v5;
      sub_1C584F660();
    }
  }

  if (sub_1C584F6D0() > 0)
  {
LABEL_10:
    v10 = *(v0 + *(v3 + 24));
    if ([v10 displayStyle] == 1 && sub_1C584F6D0() >= 1 && (v11 = objc_msgSend(v10, sel_headsign)) != 0)
    {
      v12 = v11;
      [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

      MEMORY[0x1C6949DF0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
      v1 = v13;
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    return v1;
  }

  result = [*(v0 + *(v3 + 24)) line];
  if (result)
  {
    v8 = result;

    v9 = [v8 name];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_1C584F660();

      if (sub_1C584F6D0() <= 0)
      {
      }
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1C57479A4()
{
  v1 = *(v0 + *(type metadata accessor for TransitDeparturesRowViewModel(0) + 24));
  if (GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle([v1 departureTimeDisplayStyle]) == 1)
  {
    v2 = sub_1C584EB00();
    v3 = [v1 departuresValidForDate_];

    if (!v3)
    {
LABEL_15:
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
    v4 = sub_1C584F770();

    if (v4 >> 62)
    {
      if (sub_1C584FB90())
      {
        goto LABEL_5;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C694A320](0, v4);
        goto LABEL_8;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
        swift_unknownObjectRetain();
LABEL_8:

        v6 = [v5 liveStatus];
        swift_unknownObjectRelease();
LABEL_12:
        GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(v6, [v1 departureTimeDisplayStyle]);
        return;
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = 0;
    goto LABEL_12;
  }
}

void sub_1C5747B34()
{
  v1 = v0;
  v2 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v3 = v2[5];
  v4 = *(v0 + v2[6]);
  v5 = sub_1C584EB00();
  v6 = [v4 departuresValidForDate_];

  if (!v6)
  {
    goto LABEL_55;
  }

  v40 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
  v7 = sub_1C584F770();

  v8 = sub_1C574711C(v7);
  v9 = v1;
  v10 = sub_1C5746E7C(v7, [v4 departureTimeDisplayStyle]);
  if (v7 >> 62)
  {
    v11 = sub_1C584FB90();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C694A320](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v12 = *(v7 + 32);
    swift_unknownObjectRetain();
  }

  v13 = [v12 liveStatus];
  swift_unknownObjectRelease();
LABEL_10:
  v9 = GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(v13, [v4 departureTimeDisplayStyle]);
  v14 = [v4 departureTimeDisplayStyle];
  if (!v10)
  {
    goto LABEL_23;
  }

  v15 = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(v14);
  if (v15 == 2)
  {

    if (v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C694A320](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v11 = *(v7 + 32);
        swift_unknownObjectRetain();
      }
    }

    v20 = sub_1C57462A4(v11, v9, v1 + v2[9]);
    swift_unknownObjectRelease();
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v15 != 1)
  {
LABEL_23:

    v20 = 0;
    goto LABEL_33;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_49:
  MEMORY[0x1C694A320](0, v7);
  swift_unknownObjectRelease();
LABEL_16:
  sub_1C5745CE0(v8, v1 + v40);
  v17 = v16;

  if (v17)
  {
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_1C584F630();

    v20 = [v18 initWithString_];

    if (v11)
    {
LABEL_18:
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C694A320](0, v7);
LABEL_21:

        v21 = [objc_opt_self() _mapkit_attributedLiveTransitStringFromAttributedDepartureString_liveStatus_darkMode_symbolOverrideColor_];

        swift_unknownObjectRelease();
        v20 = v21;
        if (!v21)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        swift_unknownObjectRetain();
        goto LABEL_21;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v20 = 0;
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_32:
  if ([v20 length] > 0)
  {
    return;
  }

LABEL_33:
  v22 = *(v1 + v2[11]);
  if (v22)
  {
    v23 = [v22 string];
    sub_1C584F660();
    v25 = v24;

    if (sub_1C584F6D0() > 0)
    {
      if (!v25)
      {
        goto LABEL_42;
      }

LABEL_41:
      v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v36 = sub_1C584F630();

      [v35 initWithString_];

LABEL_44:
      return;
    }
  }

  v26 = *(v1 + v2[6]);
  v27 = sub_1C584EB00();
  v28 = [v26 hasFrequencyAtDate_];

  if (v28)
  {
    v29 = objc_opt_self();
    v30 = sub_1C584EB00();
    v31 = [v26 frequencyToDescribeAtDate_];

    v32 = [v29 _navigation_formattedDescriptionForFrequency_];
    swift_unknownObjectRelease();
    if (v32)
    {
      sub_1C584F660();
      v34 = v33;

      if (v34)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_56:
    __break(1u);
    return;
  }

LABEL_42:
  sub_1C57453D0();
  if (v37)
  {
    v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v39 = sub_1C584F630();

    [v38 initWithString_];

    goto LABEL_44;
  }
}

void sub_1C5748094()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v48 - v4;
  v6 = sub_1C584EB30();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for TransitDeparturesRowViewModel(0);
  v16 = *(v0 + *(v15 + 24));
  v17 = sub_1C584EB00();
  v18 = [v16 departuresValidForDate_];

  if (!v18)
  {
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
  v19 = sub_1C584F770();

  if (v19 >> 62)
  {
    if (!sub_1C584FB90())
    {
      goto LABEL_16;
    }
  }

  else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    return;
  }

  v51 = v7;
  v52 = v6;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1C694A320](0, v19);
    goto LABEL_7;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v19 + 32);
  swift_unknownObjectRetain();
LABEL_7:
  v21 = GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle([v20 liveStatus], objc_msgSend(v16, sel_departureTimeDisplayStyle));
  v22 = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle([v16 departureTimeDisplayStyle]);
  if ((v21 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v20 liveStatusString];
  if (v24)
  {
    v25 = v24;

    v26 = objc_allocWithZone(MEMORY[0x1E696F3A0]);
    v53[0] = 1;
    v54[2] = 0;
    v54[0] = 0;
    *(v54 + 7) = 0;
    v27 = [v26 initWithOptions:v53 variableOverrides:0];
    v28 = [objc_allocWithZone(MEMORY[0x1E696F398]) initWithGeoServerString:v25 parameters:v27];
    sub_1C5748DE0(MEMORY[0x1E69E7CC0]);
    v29 = sub_1C584F5C0();

    v30 = [v28 multiPartAttributedStringWithAttributes_];

    [v30 attributedString];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

  v31 = [v20 departureDate];
  if (!v31)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v50 = v23;
  v32 = v31;
  sub_1C584EB10();

  v33 = *(v51 + 32);
  v48 = v14;
  v33(v14, v11, v52);
  v49 = MKTransitLiveDepartureColorForLiveStatus();
  if (!v49)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5867900;
  v35 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
  v36 = v49;
  *(inited + 40) = v49;
  v37 = v35;
  v38 = v36;
  sub_1C563C930(inited);
  swift_setDeallocating();
  sub_1C5625230(inited + 32, &qword_1EC16DA88, &qword_1C5867A88);
  if (v50 != 2)
  {
    (*(v51 + 8))(v48, v52);
    swift_unknownObjectRelease();

    return;
  }

  v50 = v38;
  v39 = v51;
  v40 = v52;
  v41 = v48;
  (*(v51 + 16))(v5, v48, v52);
  (*(v39 + 56))(v5, 0, 1, v40);
  sub_1C57469A4(v5, v1 + *(v15 + 36));
  v43 = v42;
  sub_1C5625230(v5, &unk_1EC170AC0, &qword_1C5878418);
  if (v43)
  {

    v44 = sub_1C584F630();
  }

  else
  {
    v44 = 0;
  }

  v45 = [objc_opt_self() _navigation_formattedDescriptionForLiveStatus_updatedDepartureTimeString_];

  if (v45)
  {

    v46 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1C57492B0(&qword_1EC170AE0, &unk_1C58785E0);
    v47 = sub_1C584F5C0();

    [v46 initWithString:v45 attributes:v47];

    swift_unknownObjectRelease();
    (*(v51 + 8))(v41, v52);
    return;
  }

LABEL_27:
  __break(1u);
}

void *sub_1C5748728(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  v3 = v2;
  return v2;
}

uint64_t GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1C5878660[a1 - 2];
  }
}

uint64_t GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(uint64_t result, uint64_t a2)
{
  if (a2 == 1 && result == 3)
  {
    return 2;
  }

  return result;
}

uint64_t sub_1C57487BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1C5748A18(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1C584EB30();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C57488E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C5748908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5748908(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170C40, &unk_1C5878650);
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

void *sub_1C5748A18(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C38, &qword_1C5878648);
  v10 = *(sub_1C584EB30() - 8);
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
  v15 = *(sub_1C584EB30() - 8);
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

unint64_t sub_1C5748BF0(uint64_t a1)
{
  v2 = sub_1C584FBD0();

  return sub_1C5748C34(a1, v2);
}

unint64_t sub_1C5748C34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C57492F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C694A290](v9, a1);
      sub_1C5749350(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1C5748CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

unint64_t sub_1C5748DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD90, &unk_1C5868550);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C56466CC(v4, v13, &qword_1EC170B98, &unk_1C5878630);
      result = sub_1C5748BF0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C563D304(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1C5748F20()
{
  result = qword_1EC170AE8;
  if (!qword_1EC170AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170AE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C5748FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5748FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1C5749084(uint64_t a1)
{
  sub_1C5626E40(319, &qword_1EC170878, 0x1E696F400);
  if (v1 <= 0x3F)
  {
    sub_1C584EB30();
    if (v2 <= 0x3F)
    {
      sub_1C5749180();
      if (v3 <= 0x3F)
      {
        sub_1C57491E4(319);
        if (v4 <= 0x3F)
        {
          sub_1C57231C4(319);
          if (v5 <= 0x3F)
          {
            sub_1C5749248(319);
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

unint64_t sub_1C5749180()
{
  result = qword_1EC170B50;
  if (!qword_1EC170B50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC170B50);
  }

  return result;
}

void sub_1C57491E4(uint64_t a1)
{
  if (!qword_1EC170B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170860, &unk_1C5877F60);
    v1 = sub_1C584FAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC170B58);
    }
  }
}

void sub_1C5749248(uint64_t a1)
{
  if (!qword_1EC170B68)
  {
    sub_1C5626E40(255, &unk_1EC170B70, 0x1E696AAB0);
    v1 = sub_1C584FAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC170B68);
    }
  }
}

uint64_t sub_1C57492B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AppleRatingRollingAnimation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id AppleRatingRowSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AppleRatingRowSubtitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] = 0;
  v4[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = 0;
  v4[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setSpacing_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1C5749AE0(1, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C5867990;
  v12 = sub_1C584F300();
  v13 = MEMORY[0x1E69DC130];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_1C584F2F0();
  v15 = MEMORY[0x1E69DC0C8];
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  MEMORY[0x1C694A140](v11, sel_updateForSizeClassChange);
  swift_unknownObjectRelease();

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v10 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  return v10;
}

id sub_1C574960C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  *&v1[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] = 0;
  *&v1[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] = 0;
  *&v1[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] = 0;
  *&v1[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] = 0;
  v1[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = 0;
  v1[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id sub_1C5749730()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C574980C()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for RollingLabelsView();
    v5 = RollingLabelsView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C57498E0()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() vibrantLabelForProminence_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    type metadata accessor for UILayoutPriority(0);
    sub_1C5625AB0(&qword_1ED77E830, MEMORY[0x1E69DC400]);
    sub_1C584F2E0();
    LODWORD(v7) = v11;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C5749A1C()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5749AE0(char a1, int a2)
{
  v3 = a2;
  if (a1 & 1) != 0 || ((v2[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] ^ a2))
  {
    v2[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5868600;
    *(inited + 32) = sub_1C5749730();
    *(inited + 40) = sub_1C574980C();
    *(inited + 48) = sub_1C57498E0();
    *(inited + 56) = sub_1C5749A1C();
    v5 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C694A320](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(inited + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];

    if (v5)
    {
      v8 = MEMORY[0x1C694A320](1, inited);
LABEL_10:
      v9 = v8;
      [v8 removeFromSuperview];

      if (v5)
      {
        v10 = MEMORY[0x1C694A320](2, inited);
LABEL_14:
        v11 = v10;
        [v10 removeFromSuperview];

        if (v5)
        {
          v12 = MEMORY[0x1C694A320](3, inited);
          goto LABEL_18;
        }

        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v12 = *(inited + 56);
LABEL_18:
          v13 = v12;

          [v13 removeFromSuperview];

          if (v3)
          {
            [v2 setAxis_];
            [v2 setAlignment_];
            [v2 addArrangedSubview_];
            v14 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView;
            [*&v2[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] addArrangedSubview_];
            [*&v2[v14] addArrangedSubview_];
            [v2 addArrangedSubview_];
          }

          else
          {
            [v2 setAxis_];
            [v2 addArrangedSubview_];
            [v2 addArrangedSubview_];
            [v2 addArrangedSubview_];
            [v2 setAlignment_];
          }

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v10 = *(inited + 48);
        goto LABEL_14;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

Swift::Void __swiftcall AppleRatingRowSubtitleView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  if ((v0[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] & 1) == 0)
  {
    v1 = sub_1C57498E0();
    [v1 intrinsicContentSize];
    v3 = v2;

    [*&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] bounds];
    if (CGRectGetWidth(v5) < v3)
    {
      sub_1C5749AE0(0, 1);
    }
  }
}

double AppleRatingRowSubtitleView.set(percentageString:ratingsValueString:ratingsValueAnimation:ratingsString:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress;
  v5[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  if (a2)
  {
    v13 = a1;
    v14 = a2;
    v15 = sub_1C574980C();
    v16 = [v15 isHidden];

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a3;
    }

    v18 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView;
    [*&v5[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] setHidden_];
    v19 = *&v5[v18];
    sub_1C5669428(v14, v17, sub_1C574A304, v12);
  }

  else
  {
    v20 = a1;

    v21 = sub_1C574980C();
    [v21 setHidden_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = sub_1C5749730();
      [v24 setHidden_];

      [*&v23[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] setAttributedText_];
    }

    else
    {
    }
  }

  v25 = sub_1C57498E0();
  [v25 setAttributedText_];

  v26 = sub_1C5749A1C();
  [v26 layoutIfNeeded];

  v5[v10] = 0;
  [v5 layoutIfNeeded];

  return result;
}

id AppleRatingRowSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C574A25C()
{
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress) = 1;
  sub_1C584FD00();
  __break(1u);
}

void sub_1C574A304()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1C5749730();
    [v4 setHidden_];

    [*&v3[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] setAttributedText_];
  }
}

id TransitLineMarker.__allocating_init(transitLine:locationHint:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine] = a1;
  v8 = &v7[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TransitLineMarker.init(transitLine:locationHint:)(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine] = a1;
  v8 = &v3[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TransitLineMarker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitLineMarker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TransitLineMarker.mapItemIdentifier()()
{
  result = [*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) identifier];
  if (result)
  {
    v2 = result;
    if (([result hasCoordinate] & 1) != 0 || ((v3 = fabs(*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint)), fabs(*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint + 8)) <= 180.0) ? (v4 = v3 > 90.0) : (v4 = 1), v4))
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      return v5;
    }

    else
    {
      v6 = [v2 muid];
      GEOLocationCoordinate2DMake();
      v9 = [objc_allocWithZone(MEMORY[0x1E69A21C0]) initWithMUID:v6 resultProviderID:0 coordinate:{v7, v8}];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

        return v11;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::String_optional __swiftcall TransitLineMarker.labelText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine);
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v7 = [v1 system];
    if (!v7 || (v3 = [v7 name], swift_unknownObjectRelease(), !v3))
    {
      v4 = 0;
      v6 = 0;
      goto LABEL_7;
    }
  }

  v4 = sub_1C584F660();
  v6 = v5;

LABEL_7:
  v8 = v4;
  v9 = v6;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

id TransitLineMarker.artwork()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) artwork];

  return v1;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_1EC170CF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC170CF8);
    }
  }
}

uint64_t UIOffset.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C694A590](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C694A590](*&v3);
}

uint64_t UIOffset.hashValue.getter(double a1, double a2)
{
  sub_1C584FEA0();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1C694A590](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1C694A590](*&v5);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AB3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C584FEA0();
  UIOffset.hash(into:)(v1, v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AB98(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1C584FEA0();
  UIOffset.hash(into:)(v2, v3);
  return sub_1C584FEF0();
}

uint64_t sub_1C574ABEC(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C694A590](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1C694A590](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x1C694A590](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x1C694A590](*&v9);
}

uint64_t sub_1C574AC84(uint64_t (*a1)(void *, double, double, double, double), double a2, double a3, double a4, double a5)
{
  sub_1C584FEA0();
  a1(v11, a2, a3, a4, a5);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, double, double, double, double))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  sub_1C584FEA0();
  a3(v10, v5, v6, v7, v8);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, double, double, double, double))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  sub_1C584FEA0();
  a4(v11, v6, v7, v8, v9);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C574B084()
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  v2 = v1;
  return v1;
}

id sub_1C574B134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  v4 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  *a2 = v4;

  return v4;
}

void sub_1C574B1F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C574B224(v1);
}

void sub_1C574B224(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu;
  v5 = *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
    sub_1C584EF30();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C574B3EC();
  v6 = v5;
  v7 = a1;
  v8 = sub_1C584FAC0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C574B3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu) = v2;
  v4 = v2;
}

unint64_t sub_1C574B3EC()
{
  result = qword_1EC16DE20;
  if (!qword_1EC16DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16DE20);
  }

  return result;
}

uint64_t sub_1C574B438()
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  sub_1C5633060(v1, *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider + 8));
  return v1;
}

uint64_t sub_1C574B4F8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  v4 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  v5 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C574F7EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C5633060(v4, v5);
}

double sub_1C574B5F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1C574F7B8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v7);
  sub_1C5633060(v2, v3);
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF30();
  sub_1C5632FA8(v5, v4);

  return result;
}

double sub_1C574B778(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  return result;
}

double sub_1C574B830@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_1C574B908(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF30();

  return result;
}

id sub_1C574B9C4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C574E79C(a1);

  return v4;
}

void sub_1C574BA04(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v85 = sub_1C584EEC0();
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584EE90();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v77 - v14;
  v83 = type metadata accessor for PlaceActionBarItem(0);
  v79 = *(v83 - 8);
  v17 = MEMORY[0x1EEE9AC00](v83, v16);
  v78 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v80 = &v77 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v77 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v84 = &v77 - v28;
  MEMORY[0x1C6949550](v27);
  swift_getKeyPath();
  v86[0] = v2;
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController, &unk_1C5878A50);
  sub_1C584EF40();

  v82 = v2;
  v29 = *(v2 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__idsByItems);
  if (*(v29 + 16))
  {

    v30 = sub_1C574C780(v15);
    if (v31)
    {
      sub_1C574F5C4(*(v29 + 56) + *(v79 + 72) * v30, v25, type metadata accessor for PlaceActionBarItem);
      (*(v9 + 8))(v15, v8);

      v32 = v25;
      v33 = v84;
      sub_1C574F55C(v32, v84, type metadata accessor for PlaceActionBarItem);
      v34 = v33 + *(v83 + 20);
      v35 = type metadata accessor for PlaceActionBarLayoutItem(0);
      v36 = v34 + *(v35 + 20);
      v37 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      if (!*(v36 + 16))
      {
        v39 = *v36;
        v38 = *(v36 + 8);
        v40 = qword_1EC17B030;
        v41 = *v36;
        if (v40 != -1)
        {
          swift_once();
        }

        v42 = sub_1C584F2C0();
        __swift_project_value_buffer(v42, qword_1EC17B038);
        v43 = v41;
        v44 = sub_1C584F2A0();
        v45 = sub_1C584F990();
        sub_1C574F2F0(v39, v38, 0);
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          *(v46 + 4) = v43;
          *v47 = v39;
          v48 = v43;
          _os_log_impl(&dword_1C5620000, v44, v45, "Calling action dispatcher for action %@", v46, 0xCu);
          sub_1C5625230(v47, &unk_1EC16E670, &qword_1C586A030);
          v49 = v47;
          v33 = v84;
          MEMORY[0x1C694B7A0](v49, -1, -1);
          MEMORY[0x1C694B7A0](v46, -1, -1);
        }

        v37 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
        v50 = *(*(v82 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController_configuration) + OBJC_IVAR___MUPlaceActionBarConfiguration_actionDispatcher);
        MUPlaceActionDispatcher.performAction(for:environment:completion:)();

        sub_1C574F2F0(v39, v38, 0);
      }

      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v51 = sub_1C584F2C0();
      __swift_project_value_buffer(v51, qword_1EC17B038);
      v52 = v80;
      sub_1C574F5C4(v33, v80, type metadata accessor for PlaceActionBarItem);
      v53 = sub_1C584F2A0();
      v54 = sub_1C584F990();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 136315138;
        v85 = v35;
        v86[0] = v56;
        v57 = v34;
        v58 = v37;
        sub_1C574F5C4(v52, v78, type metadata accessor for PlaceActionBarItem);
        v59 = sub_1C584F680();
        v61 = v60;
        sub_1C574F62C(v52, type metadata accessor for PlaceActionBarItem);
        v62 = sub_1C5649518(v59, v61, v86);

        *(v55 + 4) = v62;
        v37 = v58;
        v34 = v57;
        v35 = v85;
        _os_log_impl(&dword_1C5620000, v53, v54, "Calling native delegate for item %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        v63 = v56;
        v33 = v84;
        MEMORY[0x1C694B7A0](v63, -1, -1);
        MEMORY[0x1C694B7A0](v55, -1, -1);
      }

      else
      {

        sub_1C574F62C(v52, type metadata accessor for PlaceActionBarItem);
      }

      v74 = *(v82 + v37[420]) + OBJC_IVAR___MUPlaceActionBarConfiguration_nativeItemDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v75 = *(v74 + 8);
        ObjectType = swift_getObjectType();
        (*(v75 + 8))(0, 0xE000000000000000, *(v34 + *(v35 + 32)), *(v34 + *(v35 + 32) + 8), 2, ObjectType, v75);
        swift_unknownObjectRelease();
      }

      sub_1C574F62C(v33, type metadata accessor for PlaceActionBarItem);
      return;
    }
  }

  (*(v9 + 8))(v15, v8);
  if (qword_1EC17B030 != -1)
  {
    swift_once();
  }

  v64 = sub_1C584F2C0();
  __swift_project_value_buffer(v64, qword_1EC17B038);
  v65 = v85;
  (*(v4 + 16))(v7, a1, v85);
  v66 = sub_1C584F2A0();
  v67 = sub_1C584F9B0();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v86[0] = v69;
    *v68 = 136315138;
    MEMORY[0x1C6949550](v69);
    v70 = sub_1C584F680();
    v72 = v71;
    (*(v4 + 8))(v7, v65);
    v73 = sub_1C5649518(v70, v72, v86);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_1C5620000, v66, v67, "Could not find action item for model %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x1C694B7A0](v69, -1, -1);
    MEMORY[0x1C694B7A0](v68, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v65);
  }
}

uint64_t sub_1C574C3F4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B038);
  __swift_project_value_buffer(v0, qword_1EC17B038);
  return sub_1C584F2B0();
}

void *sub_1C574C474(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D70, &qword_1C5878B18);
  v10 = *(sub_1C584EEC0() - 8);
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
  v15 = *(sub_1C584EEC0() - 8);
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

void *sub_1C574C64C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D58, &unk_1C5878DF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D60, &qword_1C5878B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C574C780(uint64_t a1)
{
  sub_1C584EE90();
  sub_1C574F490(&unk_1EC16D8A0, MEMORY[0x1E69AE068], MEMORY[0x1E69AE070]);
  v2 = sub_1C584F5E0();

  return sub_1C574C818(a1, v2);
}

unint64_t sub_1C574C818(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C584EE90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C574F490(&qword_1EC16D898, MEMORY[0x1E69AE068], MEMORY[0x1E69AE078]);
      v16 = sub_1C584F620();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1C574C9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PlaceActionBarItem(0);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v50 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584EE90();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
  v46 = v4;
  v13 = sub_1C584FD40();
  v14 = v13;
  if (*(v12 + 16))
  {
    v41 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v9 + 16);
    v43 = v9;
    v47 = (v9 + 32);
    v21 = v13 + 64;
    v44 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v48 = *(v9 + 72);
      v28 = v27 + v48 * v26;
      if (v46)
      {
        (*v47)(v49, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_1C574F55C(v29 + v30 * v26, v50, type metadata accessor for PlaceActionBarItem);
      }

      else
      {
        (*v42)(v49, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v45 + 72);
        sub_1C574F5C4(v31 + v30 * v26, v50, type metadata accessor for PlaceActionBarItem);
      }

      sub_1C574F490(&unk_1EC16D8A0, MEMORY[0x1E69AE068], MEMORY[0x1E69AE070]);
      v32 = sub_1C584F5E0();
      v33 = -1 << *(v14 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v47)((*(v14 + 48) + v48 * v22), v49, v8);
      sub_1C574F55C(v50, *(v14 + 56) + v30 * v22, type metadata accessor for PlaceActionBarItem);
      ++*(v14 + 16);
      v9 = v43;
      v12 = v44;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
}

void sub_1C574CE78()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceActionBarItem(0);
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C584EE90();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
  v7 = *v0;
  v8 = sub_1C584FD30();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_1C574F5C4(v28 + v30, v39, type metadata accessor for PlaceActionBarItem);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        sub_1C574F55C(v31, *(v20 + 56) + v30, type metadata accessor for PlaceActionBarItem);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

unint64_t sub_1C574D19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D78, &unk_1C5878B20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
    v8 = sub_1C584FD50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C56466CC(v10, v6, &qword_1EC170D78, &unk_1C5878B20);
      result = sub_1C574C780(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C584EE90();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PlaceActionBarItem(0);
      result = sub_1C574F55C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PlaceActionBarItem);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_1C574D3B8(uint64_t a1)
{
  v153 = type metadata accessor for PlaceActionBarItem(0);
  v151 = *(v153 - 8);
  v3 = MEMORY[0x1EEE9AC00](v153, v2);
  v162 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v168 = &v132 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v152 = &v132 - v9;
  v161 = sub_1C584EEC0();
  v155 = *(v161 - 8);
  v11 = MEMORY[0x1EEE9AC00](v161, v10);
  v163 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v132 - v14;
  v16 = sub_1C584EE90();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v167 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v141 = &v132 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v165 = (&v132 - v25);
  v26 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v27 = *(v26 - 1);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v142 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v154 = &v132 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v140 = &v132 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v139 = &v132 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v132 - v41;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = sub_1C574D19C(MEMORY[0x1E69E7CC0]);
  v46 = *(a1 + 16);
  if (!v46)
  {
    return v43;
  }

  v166 = v15;
  v47 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v150 = (v17 + 104);
  v138 = *MEMORY[0x1E69AE058];
  v157 = (v155 + 32);
  v146 = (v17 + 16);
  v137 = *MEMORY[0x1E69AE040];
  v148 = (v155 + 16);
  v135 = v17;
  v145 = (v17 + 8);
  v144 = (v155 + 8);
  v164 = MEMORY[0x1E69E7CC0];
  v48 = *(v27 + 72);
  *&v45 = 136315394;
  v136 = v45;
  v158 = v16;
  v147 = v26;
  v49 = v154;
  v149 = (v155 + 48);
  v143 = v48;
  while (1)
  {
    sub_1C574F5C4(v47, v42, type metadata accessor for PlaceActionBarLayoutItem);
    v50 = &v42[v26[5]];
    if (v50[16])
    {
      sub_1C574F62C(v42, type metadata accessor for PlaceActionBarLayoutItem);
      goto LABEL_4;
    }

    v51 = *v50;
    v159 = *(v50 + 1);
    v52 = *((*MEMORY[0x1E69E7D40] & *v51) + 0x50);
    v160 = v51;
    v53 = v51;
    v52(&v173);
    v172 = v173;
    v171 = 8;
    sub_1C56441DC();
    sub_1C584F730();
    sub_1C584F730();
    if (v170 == v169)
    {
      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v54 = sub_1C584F2C0();
      __swift_project_value_buffer(v54, qword_1EC17B038);
      v55 = v139;
      sub_1C574F5C4(v42, v139, type metadata accessor for PlaceActionBarLayoutItem);
      v56 = v140;
      sub_1C574F5C4(v42, v140, type metadata accessor for PlaceActionBarLayoutItem);
      v57 = sub_1C584F2A0();
      v58 = sub_1C584F990();
      if (os_log_type_enabled(v57, v58))
      {
        LODWORD(v134) = v58;
        v156 = v44;
        v59 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v170 = v133;
        *v59 = v136;
        v60 = (v55 + v26[6]);
        v61 = v26;
        v62 = *v60;
        v63 = v60[1];

        sub_1C574F62C(v55, type metadata accessor for PlaceActionBarLayoutItem);
        v64 = sub_1C5649518(v62, v63, &v170);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        v65 = (v56 + v61[7]);
        if (v65[1])
        {
          v66 = *v65;
          v67 = v65[1];
        }

        else
        {
          v67 = 0xE500000000000000;
          v66 = 0x3E6C696E3CLL;
        }

        sub_1C574F62C(v56, type metadata accessor for PlaceActionBarLayoutItem);
        v83 = sub_1C5649518(v66, v67, &v170);

        *(v59 + 14) = v83;
        _os_log_impl(&dword_1C5620000, v57, v134, "building directions action with symbol name: %s, title: %s", v59, 0x16u);
        v84 = v133;
        swift_arrayDestroy();
        MEMORY[0x1C694B7A0](v84, -1, -1);
        MEMORY[0x1C694B7A0](v59, -1, -1);

        v16 = v158;
        v26 = v147;
        v44 = v156;
      }

      else
      {

        sub_1C574F62C(v56, type metadata accessor for PlaceActionBarLayoutItem);
        sub_1C574F62C(v55, type metadata accessor for PlaceActionBarLayoutItem);
      }

      v85 = &v42[v26[6]];
      v86 = *v85;
      v87 = *(v85 + 1);
      v88 = &v42[v26[7]];
      v89 = *v88;
      v90 = *(v88 + 1);
      v91 = v165;
      *v165 = v86;
      v91[1] = v87;
      v91[2] = v89;
      v91[3] = v90;
      (*v150)();
    }

    else
    {
      v156 = v44;
      v68 = v142;
      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v69 = sub_1C584F2C0();
      __swift_project_value_buffer(v69, qword_1EC17B038);
      sub_1C574F5C4(v42, v49, type metadata accessor for PlaceActionBarLayoutItem);
      sub_1C574F5C4(v42, v68, type metadata accessor for PlaceActionBarLayoutItem);
      v70 = sub_1C584F2A0();
      v71 = sub_1C584F990();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v170 = v134;
        *v72 = v136;
        v73 = (v49 + v26[6]);
        v74 = v26;
        v75 = *v73;
        v76 = v73[1];

        sub_1C574F62C(v49, type metadata accessor for PlaceActionBarLayoutItem);
        v77 = sub_1C5649518(v75, v76, &v170);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        v78 = v74[7];
        v79 = v142;
        v80 = &v142[v78];
        if (v80[1])
        {
          v81 = *v80;
          v82 = v80[1];
        }

        else
        {
          v82 = 0xE500000000000000;
          v81 = 0x3E6C696E3CLL;
        }

        sub_1C574F62C(v79, type metadata accessor for PlaceActionBarLayoutItem);
        v92 = sub_1C5649518(v81, v82, &v170);

        *(v72 + 14) = v92;
        _os_log_impl(&dword_1C5620000, v70, v71, "building custom action with symbol name: %s, title: %s", v72, 0x16u);
        v93 = v134;
        swift_arrayDestroy();
        MEMORY[0x1C694B7A0](v93, -1, -1);
        MEMORY[0x1C694B7A0](v72, -1, -1);

        v16 = v158;
        v26 = v147;
      }

      else
      {

        sub_1C574F62C(v68, type metadata accessor for PlaceActionBarLayoutItem);
        sub_1C574F62C(v49, type metadata accessor for PlaceActionBarLayoutItem);
      }

      v94 = &v42[v26[6]];
      v95 = *v94;
      v96 = *(v94 + 1);
      v97 = &v42[v26[7]];
      v98 = *v97;
      v99 = *(v97 + 1);
      v100 = &v42[v26[9]];
      v101 = *v100;
      v102 = *(v100 + 1);
      v103 = v165;
      *v165 = v95;
      v103[1] = v96;
      v103[2] = v98;
      v103[3] = v99;
      v103[4] = v101;
      v103[5] = v102;
      (*v150)();

      v44 = v156;
    }

    v104 = v149;

    v105 = v152;
    sub_1C56466CC(v42, v152, &unk_1EC170510, qword_1C5877770);
    v106 = *v104;
    v107 = v161;
    if ((*v104)(v105, 1, v161) == 1)
    {
      (*v146)(v141, v165, v16);
      v108 = v166;
      v26 = v147;
      sub_1C584EEB0();
      if (v106(v105, 1, v107) != 1)
      {
        sub_1C5625230(v105, &unk_1EC170510, qword_1C5877770);
      }
    }

    else
    {
      v108 = v166;
      (*v157)(v166, v105, v107);
    }

    v109 = *v148;
    v110 = v168;
    (*v148)(v168, v108, v107);
    sub_1C574F5C4(v42, v110 + *(v153 + 20), type metadata accessor for PlaceActionBarLayoutItem);
    v109(v163, v108, v107);
    v111 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = sub_1C574C474(0, v111[2] + 1, 1, v111);
    }

    v16 = v158;
    v113 = v111[2];
    v112 = v111[3];
    if (v113 >= v112 >> 1)
    {
      v111 = sub_1C574C474((v112 > 1), v113 + 1, 1, v111);
    }

    v111[2] = v113 + 1;
    v114 = (*(v155 + 32))(v111 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v113, v163, v107);
    v115 = v167;
    MEMORY[0x1C6949550](v114);
    sub_1C574F5C4(v168, v162, type metadata accessor for PlaceActionBarItem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = v44;
    v117 = sub_1C574C780(v115);
    v119 = v44[2];
    v120 = (v118 & 1) == 0;
    v121 = __OFADD__(v119, v120);
    v122 = v119 + v120;
    if (v121)
    {
      break;
    }

    v123 = v118;
    if (v44[3] >= v122)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v130 = v117;
        sub_1C574CE78();
        v117 = v130;
      }
    }

    else
    {
      sub_1C574C9D8(v122, isUniquelyReferenced_nonNull_native);
      v117 = sub_1C574C780(v167);
      if ((v123 & 1) != (v124 & 1))
      {
        goto LABEL_48;
      }
    }

    v44 = v170;
    v164 = v111;
    if (v123)
    {
      sub_1C574F4F8(v162, v170[7] + *(v151 + 72) * v117);
    }

    else
    {
      v170[(v117 >> 6) + 8] |= 1 << v117;
      v125 = v117;
      (*(v135 + 16))(v44[6] + *(v135 + 72) * v117, v167, v16);
      sub_1C574F55C(v162, v44[7] + *(v151 + 72) * v125, type metadata accessor for PlaceActionBarItem);
      v126 = v44[2];
      v121 = __OFADD__(v126, 1);
      v127 = v126 + 1;
      if (v121)
      {
        goto LABEL_47;
      }

      v44[2] = v127;
    }

    v128 = sub_1C574F2F0(v160, v159, 0);
    v129 = *v145;
    (*v145)(v167, v16, v128);
    sub_1C574F62C(v168, type metadata accessor for PlaceActionBarItem);
    (*v144)(v166, v161);
    (v129)(v165, v16);
    sub_1C574F62C(v42, type metadata accessor for PlaceActionBarLayoutItem);
    v49 = v154;
    v48 = v143;
LABEL_4:
    v47 += v48;
    if (!--v46)
    {
      return v164;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

void sub_1C574E2FC(uint64_t a1)
{
  v2 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = &v7[*(v4 + 20)];
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1C574F5C4(v11, v7, type metadata accessor for PlaceActionBarLayoutItem);
      v17 = *v10;
      v16 = *(v10 + 1);
      v18 = v10[16];
      sub_1C5716310(*v10, v16, v10[16]);
      v19 = sub_1C574F62C(v7, type metadata accessor for PlaceActionBarLayoutItem);
      if (v18)
      {
        if (v18 == 1)
        {
          MEMORY[0x1C6949DF0](v19);
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C584F7A0();
          }

          sub_1C584F7E0();
          v8 = v22;
          goto LABEL_5;
        }

        v13 = v17;
        v14 = v16;
        v15 = 2;
      }

      else
      {
        v13 = v17;
        v14 = v16;
        v15 = 0;
      }

      sub_1C574F2F0(v13, v14, v15);
LABEL_5:
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  if (v8 >> 62)
  {
    if (!sub_1C584FB90())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C694A320](0, v8);
    goto LABEL_18;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v8 + 32);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t (*sub_1C574E534(uint64_t a1))()
{
  v2 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 20)];
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C574F5C4(v10, v7, type metadata accessor for PlaceActionBarLayoutItem);
      v17 = *v9;
      v16 = *(v9 + 1);
      v18 = v9[16];
      sub_1C5716310(*v9, v16, v9[16]);
      sub_1C574F62C(v7, type metadata accessor for PlaceActionBarLayoutItem);
      if (v18)
      {
        if (v18 != 1)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = v17;
          *(v19 + 24) = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1C574C64C(0, v12[2] + 1, 1, v12);
          }

          v21 = v12[2];
          v20 = v12[3];
          if (v21 >= v20 >> 1)
          {
            v12 = sub_1C574C64C((v20 > 1), v21 + 1, 1, v12);
          }

          v12[2] = v21 + 1;
          v22 = &v12[2 * v21];
          v22[4] = sub_1C574F68C;
          v22[5] = v19;
          goto LABEL_5;
        }

        v13 = v17;
        v14 = v16;
        v15 = 1;
      }

      else
      {
        v13 = v17;
        v14 = v16;
        v15 = 0;
      }

      sub_1C574F2F0(v13, v14, v15);
LABEL_5:
      v10 += v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_15:
  if (v12[2])
  {
    v24 = v12[4];
    v23 = v12[5];

    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    return sub_1C574F6C0;
  }

  else
  {

    return 0;
  }
}

id sub_1C574E79C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PlaceActionBarItem(0);
  v134 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v138 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v132 = &v118 - v9;
  v141 = sub_1C584EE90();
  v10 = *(v141 - 8);
  v12 = MEMORY[0x1EEE9AC00](v141, v11);
  v140 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v135 = &v118 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D50, &unk_1C5878AE0);
  v17 = MEMORY[0x1EEE9AC00](v133, v16);
  v137 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v131 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v118 - v23;
  v25 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu;
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu] = 0;
  v30 = &v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider];
  *v30 = 0;
  v30[1] = 0;
  v121 = v30;
  sub_1C584EF70();
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController_configuration] = a1;
  v31 = a1;
  v32 = sub_1C574D19C(MEMORY[0x1E69E7CC0]);
  v33 = &v31[OBJC_IVAR___MUPlaceActionBarConfiguration_layout];
  sub_1C56466CC(&v31[OBJC_IVAR___MUPlaceActionBarConfiguration_layout], v24, &qword_1EC16FE18, &unk_1C5877850);
  v34 = (*(v26 + 48))(v24, 1, v25);
  v136 = v10;
  v123 = v2;
  if (v34 == 1)
  {
    sub_1C5625230(v24, &qword_1EC16FE18, &unk_1C5877850);
    *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__primaryViewModels] = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v119 = v33;
  sub_1C574F55C(v24, v29, type metadata accessor for PlaceActionBarLayoutItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A50, &unk_1C5878AF0);
  v35 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C5867900;
  sub_1C574F5C4(v29, v36 + v35, type metadata accessor for PlaceActionBarLayoutItem);
  v37 = sub_1C574D3B8(v36);
  v39 = v38;
  swift_setDeallocating();
  sub_1C574F62C(v36 + v35, type metadata accessor for PlaceActionBarLayoutItem);
  swift_deallocClassInstance();
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__primaryViewModels] = v37;
  v40 = (v39 + 64);
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v130 = v10 + 16;
  v124 = (v10 + 8);
  v118 = v37;

  v128 = v39;

  v45 = 0;
  v126 = (v39 + 64);
  v127 = v29;
  v125 = v44;
LABEL_8:
  if (v43)
  {
    v139 = v32;
    goto LABEL_14;
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v44)
    {

      sub_1C574F62C(v29, type metadata accessor for PlaceActionBarLayoutItem);

      v2 = v123;
      v10 = v136;
      v33 = v119;
LABEL_25:
      v71 = *&v33[*(type metadata accessor for PlaceActionBarLayout(0) + 20)];

      v73 = sub_1C574D3B8(v72);
      v75 = v74;
      v127 = v71;

      *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__secondaryViewModels] = v73;
      v76 = v75 + 64;
      v77 = 1 << *(v75 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v79 = v78 & *(v75 + 64);
      v80 = (v77 + 63) >> 6;
      v135 = v10 + 16;
      v128 = v10 + 8;
      v126 = v73;

      v131 = v75;

      v81 = 0;
      v129 = v80;
      v130 = v75 + 64;
      v82 = v137;
LABEL_30:
      if (!v79)
      {
        while (1)
        {
          v83 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            break;
          }

          if (v83 >= v80)
          {

            sub_1C574E2FC(v106);
            v108 = v107;

            v109 = v123;
            v110 = v32;
            v111 = v120;

            *&v109[v111] = v108;

            v113 = sub_1C574E534(v112);
            v115 = v114;

            v116 = v121;
            sub_1C5632FA8(*v121, v121[1]);
            *v116 = v113;
            v116[1] = v115;
            *&v109[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__idsByItems] = v110;
            v142.receiver = v109;
            v142.super_class = ObjectType;
            return objc_msgSendSuper2(&v142, sel_init);
          }

          v79 = *(v76 + 8 * v83);
          ++v81;
          if (v79)
          {
            v139 = v32;
            v81 = v83;
            goto LABEL_36;
          }
        }

        __break(1u);
        break;
      }

      v139 = v32;
LABEL_36:
      v84 = __clz(__rbit64(v79)) | (v81 << 6);
      v85 = v131;
      v86 = *(v131 + 48);
      v132 = *(v10 + 72);
      v87 = *(v10 + 16);
      v88 = v141;
      v87(v82, v86 + v132 * v84, v141);
      v89 = *(v134 + 72);
      v90 = *(v85 + 56) + v89 * v84;
      v91 = *(v133 + 48);
      sub_1C574F5C4(v90, v82 + v91, type metadata accessor for PlaceActionBarItem);
      v92 = v140;
      v87(v140, v82, v88);
      sub_1C574F5C4(v82 + v91, v138, type metadata accessor for PlaceActionBarItem);
      v93 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v93;
      v95 = sub_1C574C780(v92);
      v97 = v93[2];
      v98 = (v96 & 1) == 0;
      v63 = __OFADD__(v97, v98);
      v99 = v97 + v98;
      if (v63)
      {
        goto LABEL_49;
      }

      v100 = v96;
      if (v93[3] >= v99)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_41;
        }

        v105 = v95;
        sub_1C574CE78();
        v95 = v105;
        v32 = v143;
        if (v100)
        {
          goto LABEL_28;
        }

LABEL_42:
        v32[(v95 >> 6) + 8] |= 1 << v95;
        v102 = v95;
        v87(v32[6] + v95 * v132, v140, v141);
        sub_1C574F55C(v138, v32[7] + v102 * v89, type metadata accessor for PlaceActionBarItem);
        v103 = v32[2];
        v63 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v63)
        {
          goto LABEL_51;
        }

        v32[2] = v104;
      }

      else
      {
        sub_1C574C9D8(v99, isUniquelyReferenced_nonNull_native);
        v95 = sub_1C574C780(v140);
        if ((v100 & 1) != (v101 & 1))
        {
          goto LABEL_53;
        }

LABEL_41:
        v32 = v143;
        if ((v100 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_28:
        sub_1C574F4F8(v138, v32[7] + v95 * v89);
      }

      v79 &= v79 - 1;
      (*v128)(v140, v141);
      sub_1C5625230(v137, &qword_1EC170D50, &unk_1C5878AE0);
      v10 = v136;
      v80 = v129;
      v76 = v130;
      goto LABEL_30;
    }

    v43 = v40[v46];
    ++v45;
    if (v43)
    {
      v139 = v32;
      v45 = v46;
LABEL_14:
      v47 = __clz(__rbit64(v43)) | (v45 << 6);
      v48 = v128;
      v49 = *(v128 + 48);
      v129 = *(v136 + 72);
      v50 = *(v136 + 16);
      v51 = v131;
      v52 = v141;
      v50(v131, v49 + v129 * v47, v141);
      v53 = *(v48 + 56);
      v54 = *(v134 + 72);
      v55 = *(v133 + 48);
      sub_1C574F5C4(v53 + v54 * v47, v51 + v55, type metadata accessor for PlaceActionBarItem);
      v56 = v135;
      v50(v135, v51, v52);
      sub_1C574F5C4(v51 + v55, v132, type metadata accessor for PlaceActionBarItem);
      v57 = v139;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v57;
      v59 = sub_1C574C780(v56);
      v61 = v57[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_50;
      }

      v65 = v60;
      if (v57[3] >= v64)
      {
        if (v58)
        {
          goto LABEL_19;
        }

        v70 = v59;
        sub_1C574CE78();
        v59 = v70;
        v32 = v143;
        if (v65)
        {
          goto LABEL_6;
        }

LABEL_20:
        v32[(v59 >> 6) + 8] |= 1 << v59;
        v67 = v59;
        v50(v32[6] + v59 * v129, v135, v141);
        sub_1C574F55C(v132, v32[7] + v67 * v54, type metadata accessor for PlaceActionBarItem);
        v68 = v32[2];
        v63 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (!v63)
        {
          v32[2] = v69;
          goto LABEL_7;
        }

        goto LABEL_52;
      }

      sub_1C574C9D8(v64, v58);
      v59 = sub_1C574C780(v135);
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_53;
      }

LABEL_19:
      v32 = v143;
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_6:
      sub_1C574F4F8(v132, v32[7] + v59 * v54);
LABEL_7:
      v43 &= v43 - 1;
      (*v124)(v135, v141);
      sub_1C5625230(v131, &qword_1EC170D50, &unk_1C5878AE0);
      v40 = v126;
      v29 = v127;
      v44 = v125;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

double sub_1C574F2F0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C574F320(uint64_t a1)
{
  result = sub_1C584EF80();
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

uint64_t sub_1C574F40C(uint64_t a1)
{
  result = sub_1C584EEC0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlaceActionBarLayoutItem(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C574F490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C574F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceActionBarItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C574F55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C574F5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C574F62C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C574F68C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C574F6C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1C5633060(v1, v2);
  return sub_1C5632FA8(v4, v5);
}

uint64_t sub_1C574F71C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v3(&v5, a1, &v6);
  return v5;
}

void sub_1C574F75C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

double WatchPlaceRatingRowViewModel.displayStyle.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1C574F80C(v2, v3, v4, v5);
}

double sub_1C574F80C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t WatchPlaceRatingRowViewModel.symbol.getter()
{
  if (*(v0 + 24))
  {
    return 0x6C69662E72617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

id static WatchPlaceRatingRowViewModel.viewModel(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 percentage];
  v5 = v4;
  result = [a1 numberOfRatingsUsedForScore];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = result;
  }

  return result;
}

void static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (![a1 supportsAppleRatings])
  {
    if ([a2 _hasUserRatingScore])
    {
      v12 = [a2 _reviewsAttribution];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 providerName];
        if (v14)
        {
          v15 = v14;
          v16 = sub_1C584F660();
          v18 = v17;

          [a2 _normalizedUserRatingScore];
          v20 = v19;
          v21 = [a2 _sampleSizeForUserRatingScore];

          *a3 = v20;
          *(a3 + 8) = v16;
          *(a3 + 16) = v18;
          *(a3 + 24) = 1;
          *(a3 + 32) = v21;
          return;
        }
      }
    }

    goto LABEL_13;
  }

  v5 = [a2 _geoMapItem];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = [v5 _overallAppleRating];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = xmmword_1C5878B30;
    return;
  }

  v7 = [a2 _geoMapItem];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [v7 _overallAppleRating];
  swift_unknownObjectRelease();
  if (v8)
  {
    [v8 percentage];
    v10 = v9;
    v11 = [v8 numberOfRatingsUsedForScore];

    if ((v11 & 0x80000000) == 0)
    {
      *a3 = v10;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = v11;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t (*static WatchPlaceRatingRowViewModel.percentageNumberFormatter.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC18ED50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1C574FBBC(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  v9 = sub_1C584ECE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v14 setNumberStyle_];
  [v14 *a3];
  sub_1C584EC20();
  v15 = sub_1C584EC10();
  (*(v10 + 8))(v13, v9);
  [v14 setLocale_];

  *a5 = v14;
}

id sub_1C574FD24(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_1C574FDB0(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static WatchPlaceRatingRowViewModel.starRatingNumberFormatter.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC18ED60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.valueAsString()()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (qword_1EC18ED60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EC18ED68[0];
    v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v4 = v2;
    v5 = [v3 initWithDouble_];
    v6 = [v4 stringFromNumber_];
  }

  else
  {
    if (qword_1EC18ED50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_1EC18ED58;
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v4 = v7;
    v5 = [v8 initWithDouble_];
    v6 = [v4 stringFromNumber_];
  }

  v9 = v6;

  if (v9)
  {
    v10 = sub_1C584F660();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.numPeopleAsString()()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = [v2 stringFromCount_];
    v5 = sub_1C584F660();
    v7 = v6;

    v2 = v5;
    v3 = v7;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.ratingAndPeopleString()()
{
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() watchRatingAndUserScoreFormatString];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C5867990;
  v4 = WatchPlaceRatingRowViewModel.valueAsString()();
  v5 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1C563D3B0();
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  v7 = objc_opt_self();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = [v7 stringFromCount_];
    v10 = sub_1C584F660();
    v12 = v11;

    *(v3 + 96) = v5;
    *(v3 + 104) = v6;
    *(v3 + 72) = v10;
    *(v3 + 80) = v12;
    v13 = sub_1C584F670();
    v15 = v14;

    v7 = v13;
    v8 = v15;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1C5750230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5750278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C57502E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5750330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

id MUPlaceActionBarType.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionBarType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MUPlaceActionBarType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionBarType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MUPlaceActionBarTypeAdd.added.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeAdd.added.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MUPlaceActionBarTypeFavorite.favorited.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeFavorite.favorited.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C5750884(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C584F630();

  return v5;
}

uint64_t MUPlaceActionBarTypeFavorite.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D98, &qword_1C5878C68);
  v2 = sub_1C584F680();

  MEMORY[0x1C6949D90](0x7469726F76616620, 0xEC000000203A6465);
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + v3))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C6949D90](v4, v5);

  return v2;
}

uint64_t MUPlaceActionBarTypeRate.rated.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeRate.rated.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C5750BFC(char a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v5[v6] = 0;
  swift_beginAccess();
  v5[v6] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C5750C7C(char a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v2[v6] = 0;
  swift_beginAccess();
  v2[v6] = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C5750CFC(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  v8 = *a4;
  a1[v8] = 0;
  swift_beginAccess();
  a1[v8] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1C5750DB4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = sub_1C584F680();
  MEMORY[0x1C6949D90](a3, 0xE800000000000000);
  v9 = *a4;
  swift_beginAccess();
  if (*(v4 + v9))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v4 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1C6949D90](v10, v11);

  return v13;
}

uint64_t MUPlaceActionBarTypeDirections.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170DC0, &qword_1C5878C78);
  v2 = sub_1C584F680();

  v10 = v2;
  MEMORY[0x1C6949D90](0x74696C61646F6D20, 0xEB00000000203A79);
  v3 = (v0 + OBJC_IVAR___MUPlaceActionBarTypeDirections_modality);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x1C6949D90](v4, v5);

  MEMORY[0x1C6949D90](0x203A617465202CLL, 0xE700000000000000);
  v6 = (v1 + OBJC_IVAR___MUPlaceActionBarTypeDirections_eta);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C6949D90](v7, v8);

  return v10;
}

id sub_1C57512F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1C584F630();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C5751388(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_1C57513E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C584F660();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

double sub_1C5751470(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

id sub_1C5751540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[*a5];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[*a6];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C57515F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[*a5];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[*a6];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C57516B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  v11 = sub_1C584F660();
  v13 = v12;
  if (a4)
  {
    a4 = sub_1C584F660();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = &a1[*a5];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a1[*a6];
  *v17 = v11;
  *(v17 + 1) = v13;
  swift_beginAccess();
  *v16 = a4;
  *(v16 + 1) = v15;
  v19.receiver = a1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t MUPlaceActionBarTypeCustom.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170DD8, &qword_1C5878C80);
  v2 = sub_1C584F680();

  v10 = v2;
  MEMORY[0x1C6949D90](0x4E6C6F626D797320, 0xED0000203A656D61);
  v3 = (v0 + OBJC_IVAR___MUPlaceActionBarTypeCustom_symbolName);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x1C6949D90](v4, v5);

  MEMORY[0x1C6949D90](0x203A74786574202CLL, 0xE800000000000000);
  v6 = (v1 + OBJC_IVAR___MUPlaceActionBarTypeCustom_text);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C6949D90](v7, v8);

  return v10;
}

double sub_1C5751974(void *a1, void *a2)
{

  return result;
}

double sub_1C57519D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{

  return result;
}

id MUPlaceActionBarItem.type.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionBarItem.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1C5751DE8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_1C584F630();

  return v3;
}

double sub_1C5751E78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C584F660();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

id MUPlaceActionBarItem.__allocating_init(type:axID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_handlers] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_menuProviders] = v8;
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_type] = a1;
  v9 = &v7[OBJC_IVAR___MUPlaceActionBarItem_axID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id MUPlaceActionBarItem.init(type:axID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_handlers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_menuProviders] = v8;
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_type] = a1;
  v9 = &v3[OBJC_IVAR___MUPlaceActionBarItem_axID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t MUPlaceActionBarItem.addHandler(_:)(const void *a1)
{
  _Block_copy(a1);
  v2 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  v3 = swift_beginAccess();
  MEMORY[0x1C6949DF0](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  return swift_endAccess();
}

uint64_t MUPlaceActionBarItem.addMenuProvider(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C574C64C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C574C64C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C574F68C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id sub_1C5752508(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C566EA20(a1, v13);
  v5 = v14;
  if (!v14)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6, v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1C584FDB0();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (a2)
  {
LABEL_3:
    sub_1C5752BA4();
    a2 = sub_1C584F750();
  }

LABEL_4:
  v11 = (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();

  return v11;
}

uint64_t MUPlaceActionBarItem.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  MEMORY[0x1C6949D90](0xD00000000000001BLL, 0x80000001C589B570);
  v2 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = [v3 description];
  v5 = sub_1C584F660();
  v7 = v6;

  MEMORY[0x1C6949D90](v5, v7);

  MEMORY[0x1C6949D90](0x656C646E6168202CLL, 0xEC000000203A7372);
  v8 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E00, &qword_1C5878C88);
  v11 = MEMORY[0x1C6949E30](v9, v10);
  v13 = v12;

  MEMORY[0x1C6949D90](v11, v13);

  MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C589B590);
  v14 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E08, &unk_1C5878C90);
  v17 = MEMORY[0x1C6949E30](v15, v16);
  v19 = v18;

  MEMORY[0x1C6949D90](v17, v19);

  MEMORY[0x1C6949D90](41, 0xE100000000000000);
  return 0;
}

id MUPlaceActionBarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C5752BA4()
{
  result = qword_1EC170520;
  if (!qword_1EC170520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC170520);
  }

  return result;
}

double WatchPlaceRibbonItemViewModel.makeRibbonItemSpecialization()@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 56) = 0;

  return result;
}

double sub_1C5752C2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 56) = 0;

  return result;
}

double WatchPlaceRatingRowViewModel.makeRibbonItemSpecialization()@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 32);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 1;
  return sub_1C574F80C(v2, v3, v4, v5);
}

double sub_1C5752C74@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 32);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 1;
  return sub_1C574F80C(v2, v3, v4, v5);
}

uint64_t WatchPlaceHoursViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  *(a1 + 56) = 2;

  return sub_1C5665244(v3, v4, v5);
}

uint64_t sub_1C5752D10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  *(a1 + 56) = 2;

  return sub_1C5665244(v3, v4, v5);
}

double WatchPlaceAccoladesViewModel.makeRibbonItemSpecialization()@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = 3;
  v7 = v6;

  return result;
}

double sub_1C5752DEC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = 3;
  v7 = v6;

  return result;
}

double WatchPlaceAcceptsPaymentsViewModel.makeRibbonItemSpecialization()@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 56) = 4;

  return result;
}

double sub_1C5752EB0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 56) = 4;

  return result;
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

uint64_t sub_1C5752F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5752F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C57530EC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C575314C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57531B0(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1C575321C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_externalActionHandler;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

void *sub_1C5753300()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5753358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C57533B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753414(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753530()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5753588(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C57535E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753644(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753760()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57537B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5753810@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753874(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753990()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57539E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5753A40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753AA4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x210);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5753BEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753C50(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x228);

  return v2(v3);
}

uint64_t sub_1C5753D64()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5753DFC(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5753E4C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result & 1;
  return result;
}

id sub_1C5753F90(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = *a3;
  swift_beginAccess();
  if (*(a1 + v8))
  {
    sub_1C5626E40(0, a4, a5);

    v9 = sub_1C584F750();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

double sub_1C5754070(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6)
{
  v7 = a3;
  if (a3)
  {
    sub_1C5626E40(0, a4, a5);
    v7 = sub_1C584F770();
  }

  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v7;

  return result;
}

uint64_t sub_1C5754110@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754174(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x258);

  return v2(v3);
}

uint64_t sub_1C5754258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C57542E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C57543AC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_1C5754258(a1, &v9 - v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x270))(v7);
}

uint64_t sub_1C575452C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57545C4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754614@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5754784()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575481C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575486C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  *a2 = result & 1;
  return result;
}

void *sub_1C57549E0()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5754A38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5754A90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754AF4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5754C0C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5754CA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754CF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754E60()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5754EF8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C57550B8()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5755150(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57551A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5755310()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57553A8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57553F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))();
  *a2 = result & 1;
  return result;
}

void *sub_1C575556C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57555C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575561C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5755680(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x330);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C575579C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57557F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575584C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57558B0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x348);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C57559B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x358))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C5755A14(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x360);

  return v4(v2, v3);
}

uint64_t sub_1C5755B3C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5755BD4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5755C24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result & 1;
  return result;
}

id sub_1C5755D58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_1C5754258(a1 + v9, v8);
  v10 = sub_1C584EA90();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C584EA20();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1C5755EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C5754258(v2 + v4, a2);
}

void sub_1C5755F00(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1C584EA50();
    v11 = sub_1C584EA90();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1C584EA90();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  sub_1C57542E0(v10, &a1[v13]);
  swift_endAccess();
}

uint64_t sub_1C575604C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C57542E0(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1C5756104(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_1C5754258(a1, &v9 - v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x390))(v7);
}

uint64_t sub_1C5756284()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575631C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575636C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C57564C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C5756528(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);

  return v4(v2, v3);
}

uint64_t sub_1C5756638@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C575669C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D8);

  return v4(v2, v3);
}

uint64_t sub_1C57567C4()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575685C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57568AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756A1C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756AB4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756B04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x400))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756C74()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756D0C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756D5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756ECC()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756F64(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756FB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x430))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757124()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57571BC(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575720C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x448))();
  *a2 = result & 1;
  return result;
}

void *sub_1C5757380()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57573D8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1C5757434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575748C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x460))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57574F0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x468);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5757608()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57576A0(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57576F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x478))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757860()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57578F8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757948@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x490))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757AB8()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5757B50(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757BA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757D10()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5757DA8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757DF8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757F68()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758000(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758050@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result & 1;
  return result;
}

float sub_1C57581C0()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C575825C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_1C575841C()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C57584B8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_1C5758660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x520))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C57586C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x528);

  return v4(v2, v3);
}

uint64_t sub_1C57587EC()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57588D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x538))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758A40()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758AD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758B28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x550))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758C94()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758D2C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758D7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x568))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5758EFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x580))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758F60(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x588);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

id sub_1C5759038(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_1C57590B0(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C5759110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5759194(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1C57591F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x598))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5759254(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x5A0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

id MUWebBasedPlacecardSectionControllerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUWebBasedPlacecardSectionControllerConfiguration.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userGuides] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPRatings] = 0;
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPPhoto;
  v2 = sub_1C584EA90();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact] = 0;
  v4 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeNote];
  *v4 = 0;
  v4[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard] = 0;
  v3(&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_webModuleURL], 1, 1, v2);
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool] = 0;
  v5 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_customName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_options];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace] = 0;
  v7 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlaceString];
  *v7 = 0;
  v7[1] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_offlineMapProvider] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_deviceProvider] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration(uint64_t a1)
{
  result = qword_1EC174CA0;
  if (!qword_1EC174CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MUWebBasedPlacecardSectionControllerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5759838(uint64_t a1)
{
  sub_1C575B7AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C575B7AC(uint64_t a1)
{
  if (!qword_1EC16D8B0)
  {
    sub_1C584EA90();
    v1 = sub_1C584FAF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC16D8B0);
    }
  }
}

void type metadata accessor for MULibraryPlaceSavedState()
{
  if (!qword_1EC170F18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC170F18);
    }
  }
}

id EVChargingSectionController.isActive.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isActive);
}

uint64_t EVChargingSectionController.isActive.setter(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setActive_, a1 & 1);
  v3 = *&v1[OBJC_IVAR___MUEVChargingSectionController_viewModel];
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void (*EVChargingSectionController.isActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 104) = ObjectType;
  *(v4 + 48) = v1;
  *(v4 + 56) = ObjectType;
  *(v4 + 112) = objc_msgSendSuper2((v4 + 48), sel_isActive);
  return sub_1C575BA78;
}

void sub_1C575BA78(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v4 = 10;
  if (a2)
  {
    v4 = 8;
  }

  v5 = 11;
  if (a2)
  {
    v5 = 9;
  }

  v7 = v2[12];
  v6 = v2[13];
  v2[v4] = v7;
  v2[v5] = v6;
  objc_msgSendSuper2(&v2[v4], sel_setActive_, v3);
  v8 = *(v7 + OBJC_IVAR___MUEVChargingSectionController_viewModel);
  v9 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  *(v8 + v9) = v3;

  free(v2);
}

char *EVChargingSectionController.init(mapItem:availabilityProvider:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded] = 0;
  type metadata accessor for MUEVChargingViewModel();
  v7 = a2;
  v8 = MUEVChargingViewModel.__allocating_init(availabilityProvider:)(v7);
  *&v3[OBJC_IVAR___MUEVChargingSectionController_viewModel] = v8;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v9 = v8;
  v10 = objc_msgSendSuper2(&v15, sel_initWithMapItem_, a1);
  *&v10[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = sub_1C575BCF4(v9);

  v11 = &v9[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer];
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for EVChargingSectionController;
  swift_unknownObjectWeakAssign();

  v14.receiver = v10;
  v14.super_class = ObjectType;
  LOBYTE(ObjectType) = objc_msgSendSuper2(&v14, sel_isActive);

  v12 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  v9[v12] = ObjectType;

  return v10;
}

uint64_t sub_1C575BCF4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
  swift_beginAccess();
  if (*(*(a1 + v4) + 16))
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1C575C9B4(v5);
    v7 = v6;

    sub_1C575C4A4(v7);
    v8 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
    swift_beginAccess();
    if (*(*(a1 + v8) + 16) && (*(v2 + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) & 1) == 0)
    {
      type metadata accessor for EVChargingSectionView();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v10 = sub_1C564A734(sub_1C575CD4C, v9);

      v11 = [objc_opt_self() insetButtonSectionViewforContentView_];
      MEMORY[0x1C6949DF0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
    swift_beginAccess();
    result = MEMORY[0x1E69E7CC0];
    if (!*(*(a1 + v12) + 16))
    {
      return result;
    }

    v18 = MEMORY[0x1E69E7CC0];
  }

  v14 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
  swift_beginAccess();
  if (*(*(a1 + v14) + 16) && (!*(*(a1 + v4) + 16) || *(v2 + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) == 1))
  {

    sub_1C575C9B4(v15);
    v17 = v16;

    sub_1C575C4A4(v17);
  }

  return v18;
}

BOOL EVChargingSectionController.hasContent.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
  if (v1 >> 62)
  {
    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

id EVChargingSectionController.delegate.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_delegate);

  return v1;
}

uint64_t EVChargingSectionController.delegate.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setDelegate_, a1);
  *&v1[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = sub_1C575BCF4(*&v1[OBJC_IVAR___MUEVChargingSectionController_viewModel]);

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_delegate);
  if (v4)
  {
    [v4 placeSectionControllerDidUpdateContent_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1C575C290@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4.receiver = *a1;
  v4.super_class = type metadata accessor for EVChargingSectionController();
  result = objc_msgSendSuper2(&v4, sel_delegate);
  *a2 = result;
  return result;
}

void (*EVChargingSectionController.delegate.modify(objc_super **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4].super_class = v1;
  ObjectType = swift_getObjectType();
  v4[5].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[4].receiver = [(objc_super *)v4 delegate];
  return sub_1C575C3A8;
}

void sub_1C575C3A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    *(v2 + 16) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 16), sel_setDelegate_, v3);
  }

  else
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    objc_msgSendSuper2((v2 + 32), sel_setDelegate_, v3);
    swift_unknownObjectRelease();
    *(v4 + OBJC_IVAR___MUEVChargingSectionController__sectionViews) = sub_1C575BCF4(*(v4 + OBJC_IVAR___MUEVChargingSectionController_viewModel));

    *(v2 + 48) = v4;
    *(v2 + 56) = v5;
    v6 = objc_msgSendSuper2((v2 + 48), sel_delegate);
    if (!v6)
    {
      goto LABEL_6;
    }

    [v6 placeSectionControllerDidUpdateContent_];
  }

  swift_unknownObjectRelease();
LABEL_6:

  free(v2);
}

void sub_1C575C4A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C584FB90();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C5640E88(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C575C834(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

id EVChargingSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

id EVChargingSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EVChargingSectionController.evChargingViewModelDidUpdate(_:)()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = sub_1C575BCF4(*&v0[OBJC_IVAR___MUEVChargingSectionController_viewModel]);

  v3.receiver = v0;
  v3.super_class = ObjectType;
  result = objc_msgSendSuper2(&v3, sel_delegate);
  if (result)
  {
    [result placeSectionControllerDidUpdateContent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C575C750()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = sub_1C575BCF4(*&v0[OBJC_IVAR___MUEVChargingSectionController_viewModel]);

  v3.receiver = v0;
  v3.super_class = ObjectType;
  result = objc_msgSendSuper2(&v3, sel_delegate);
  if (result)
  {
    [result placeSectionControllerDidUpdateContent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C575C834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C584FB90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C584FB90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C575CE10();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F38, &qword_1C5879190);
            v9 = sub_1C571ECCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C570CB68();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C575C9B4(uint64_t a1)
{
  v39 = MEMORY[0x1E69E7CC0];
  v32 = *(a1 + 16);
  if (!v32)
  {
    return;
  }

  v1 = 0;
  v31 = a1 + 32;
  v2 = 0x1FC704000uLL;
  while (1)
  {
    v4 = v31 + 40 * v1;
    v5 = *(v4 + 32);
    if (*(v4 + 24))
    {
      v6 = objc_allocWithZone(MUPlaceSectionHeaderViewModel);

      v7 = sub_1C584F630();

      v8 = sub_1C584F630();

      v3 = [v6 initWithTitleString:v7 subtitleString:v8 showSeeMore:0];
    }

    else
    {
      v9 = objc_allocWithZone(MUPlaceSectionHeaderViewModel);

      v8 = sub_1C584F630();

      v3 = [v9 initWithTitleString_];
    }

    v10 = v5[2];
    if (!v10)
    {
      goto LABEL_4;
    }

    v34 = v1;
    v12 = v5[7];
    v11 = v5[8];
    v13 = v2;
    v14 = v3;
    v16 = v5[5];
    v15 = v5[6];
    v17 = v5[4];
    type metadata accessor for EVChargingSectionView();
    v35 = v17;
    *&v36 = v16;
    *(&v36 + 1) = v15;
    v37 = v12;
    v38 = v11;

    v18 = sub_1C564A220();
    v19 = sub_1C564A26C(&v35, v18);
    v33 = v14;
    v20 = v14;
    v2 = v13;
    v21 = v20;
    v22 = [objc_opt_self() (v13 + 3439)];

    v23 = v22;
    MEMORY[0x1C6949DF0]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    v1 = v34;
    if (v10 != 1)
    {
      break;
    }

LABEL_3:
    v3 = v33;
LABEL_4:
    ++v1;

    if (v1 == v32)
    {
      return;
    }
  }

  v24 = v5 + 13;
  v25 = 1;
  while (v25 < v5[2])
  {
    v26 = *(v24 - 1);
    v27 = *v24;
    v35 = *(v24 - 4);
    v36 = *(v24 - 3);
    v37 = v26;
    v38 = v27;

    v28 = sub_1C564A220();
    v29 = sub_1C564A26C(&v35, v28);
    v30 = [objc_opt_self() (v2 + 3439)];
    MEMORY[0x1C6949DF0]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C584F7A0();
    }

    ++v25;
    sub_1C584F7E0();

    v24 += 5;
    if (v10 == v25)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}