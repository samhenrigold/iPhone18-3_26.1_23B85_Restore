double sub_23A95A2B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23AA0CEC4();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CF24();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple) == 1)
  {
    v22 = v14;
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    *(v18 + 24) = a1 & 1;
    aBlock[4] = a4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a5;
    v19 = _Block_copy(aBlock);
    v20 = v5;
    sub_23AA0CEE4();
    v24 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v17, v11, v19);
    _Block_release(v19);
    (*(v23 + 8))(v11, v9);
    (*(v13 + 8))(v17, v22);
  }

  return result;
}

uint64_t sub_23A95A580(char *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v7 = sub_23AA0D104();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v26 = sub_23A95F8D0;
    v27 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_23A954DD4;
    v25 = &block_descriptor_190;
    v9 = _Block_copy(&aBlock);
    v10 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v9);

    sub_23A954A94();
    if (a2)
    {
      v11 = sub_23AA0D104();
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v26 = sub_23A95F8D0;
      v27 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v13 = &block_descriptor_183;
    }

    else
    {
      v11 = sub_23AA0D104();
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v26 = sub_23A95F8D0;
      v27 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v13 = &block_descriptor_176;
    }

    v24 = sub_23A954DD4;
    v25 = v13;
    v15 = _Block_copy(&aBlock);
    v16 = v10;

    AnalyticsSendEventLazy();
    _Block_release(v15);
  }

  v17 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  *&a1[v17] = MEMORY[0x277D84F98];

  v18 = sub_23AA0C064();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  swift_beginAccess();
  sub_23A95F174(v6, &a1[v19]);
  return swift_endAccess();
}

id sub_23A95A8E0()
{
  v13 = sub_23AA0D524();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0D504();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v4 - 8);
  v12 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_queue;
  v11[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v16 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v13);
  v5 = sub_23AA0D554();
  v6 = v14;
  *&v14[v12] = v5;
  v7 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  v8 = sub_23AA0C064();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  v9 = type metadata accessor for AnalyticsOffline(0);
  v15.receiver = v6;
  v15.super_class = v9;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_23A95AD0C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_23AA0C054();
  v7 = sub_23AA0C064();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *a2;
  swift_beginAccess();
  sub_23A95F174(v6, a1 + v8);
  return swift_endAccess();
}

double sub_23A95AE00(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CF24();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CapturedStructure(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v26[1] = *&v4[OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_queue];
    sub_23A95F358(a1, v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedStructure);
    v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v19 = v18 + v15;
    v27 = v10;
    v20 = (v18 + v15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    sub_23A95F520(v17, v21 + v18, type metadata accessor for CapturedStructure);
    *(v21 + v19) = v28 & 1;
    v22 = v21 + v20;
    v23 = v30;
    *(v22 + 8) = v29;
    *(v22 + 16) = v23;
    aBlock[4] = sub_23A95F320;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_163;
    v24 = _Block_copy(aBlock);
    v25 = v4;

    sub_23AA0CEE4();
    v32 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v12, v9, v24);
    _Block_release(v24);
    (*(v7 + 8))(v9, v6);
    (*(v31 + 8))(v12, v27);
  }

  return result;
}

void sub_23A95B1CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v273 = a5;
  v272 = a4;
  v271 = a3;
  v282 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v6 - 8);
  v274 = &v268 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v290 = &v268 - v9;
  MEMORY[0x28223BE20](v10);
  v291 = &v268 - v11;
  v269 = type metadata accessor for CapturedRoom.Object(0);
  v286 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v270 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v268 - v14;
  v16 = type metadata accessor for CapturedRoom.Surface(0);
  v283 = *(v16 - 8);
  v284 = v16;
  MEMORY[0x28223BE20](v16);
  v275 = &v268 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v289 = &v268 - v19;
  MEMORY[0x28223BE20](v20);
  v295 = &v268 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v268 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v268 - v26;
  v28 = sub_23AA0C064();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v268 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v268 - v33;
  v35 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v35, v27, &qword_27DFAEB30, &unk_23AA11B50);
  v36 = &qword_27DFAF000;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_23A8D50D0(v27, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v29 + 32))(v34, v27, v28);
    sub_23AA0C054();
    sub_23AA0C014();
    v37 = sub_23AA0D3C4();
    v38 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(a1 + v38);
    *(a1 + v38) = 0x8000000000000000;
    v40 = v37;
    v36 = &qword_27DFAF000;
    sub_23A9DB06C(v40, 0xD000000000000021, 0x800000023AA200C0, isUniquelyReferenced_nonNull_native);
    *(a1 + v38) = v296;
    swift_endAccess();
    v41 = *(v29 + 8);
    v41(v31, v28);
    v41(v34, v28);
  }

  v42 = v282;
  v281 = v282[1];
  v43 = sub_23AA0D434();
  v44 = v36[337];
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(a1 + v44);
  *(a1 + v44) = 0x8000000000000000;
  v277 = 0xD000000000000010;
  sub_23A9DB06C(v43, 0xD000000000000010, 0x800000023AA1FBC0, v45);
  *(a1 + v44) = v296;
  swift_endAccess();
  v280 = v42[3];
  v46 = sub_23AA0D434();
  swift_beginAccess();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(a1 + v44);
  *(a1 + v44) = 0x8000000000000000;
  sub_23A9DB06C(v46, 0xD000000000000012, 0x800000023AA1FBE0, v47);
  *(a1 + v44) = v296;
  swift_endAccess();
  v48 = sub_23AA0D434();
  swift_beginAccess();
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(a1 + v44);
  *(a1 + v44) = 0x8000000000000000;
  v276 = 0xD000000000000013;
  sub_23A9DB06C(v48, 0xD000000000000013, 0x800000023AA1FC00, v49);
  *(a1 + v44) = v296;
  swift_endAccess();
  v294 = v42[5];
  v50 = sub_23AA0D434();
  swift_beginAccess();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(a1 + v44);
  *(a1 + v44) = 0x8000000000000000;
  sub_23A9DB06C(v50, 0xD000000000000012, 0x800000023AA1FC20, v51);
  v287 = a1;
  v288 = v44;
  *(a1 + v44) = v296;
  swift_endAccess();
  v52 = v42[2];
  v53 = *(v52 + 16);
  v278 = v52;
  v54 = 0;
  v55 = 0;
  if (!v53)
  {
    goto LABEL_13;
  }

  v56 = v52 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
  v57 = *(v283 + 72);
  v58 = v294;
  while (1)
  {
    sub_23A95F358(v56, v24, type metadata accessor for CapturedRoom.Surface);
    v60 = *v24;
    sub_23A8D5320(v24, type metadata accessor for CapturedRoom.Surface);
    if ((v60 - 2) >= 4u)
    {
      if (v60)
      {
        v59 = __OFADD__(v54++, 1);
        if (v59)
        {
          goto LABEL_165;
        }

        goto LABEL_7;
      }

      v59 = __OFADD__(v55++, 1);
      if (v59)
      {
        break;
      }
    }

LABEL_7:
    v56 += v57;
    if (!--v53)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_13:
  v58 = v294;
LABEL_14:
  v61 = sub_23AA0D434();
  v62 = v287;
  v63 = v288;
  swift_beginAccess();
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v62 + v63);
  *(v62 + v63) = 0x8000000000000000;
  v279 = 0xD000000000000015;
  sub_23A9DB06C(v61, 0xD000000000000015, 0x800000023AA1FC40, v64);
  *(v62 + v63) = v296;
  swift_endAccess();
  v65 = sub_23AA0D434();
  swift_beginAccess();
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v62 + v63);
  *(v62 + v63) = 0x8000000000000000;
  sub_23A9DB06C(v65, 0xD000000000000014, 0x800000023AA1FC60, v66);
  *(v62 + v63) = v296;
  swift_endAccess();
  v293 = *(v58 + 16);
  if (!v293)
  {
    goto LABEL_44;
  }

  v67 = 0;
  v68 = v286;
  v292 = v58 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
  v69 = MEMORY[0x277D84F98];
  while (2)
  {
    if (v67 >= *(v58 + 16))
    {
      goto LABEL_158;
    }

    sub_23A95F358(v292 + *(v68 + 72) * v67, v15, type metadata accessor for CapturedRoom.Object);
    LOBYTE(v297) = *v15;
    v71 = sub_23AA0D1A4();
    if (!*(v69 + 16))
    {

LABEL_28:
      LOBYTE(v297) = *v15;
      v87 = sub_23AA0D1A4();
      v89 = v88;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v69;
      v91 = sub_23A9EDDFC(v87, v89);
      v93 = *(v69 + 16);
      v94 = (v92 & 1) == 0;
      v59 = __OFADD__(v93, v94);
      v95 = v93 + v94;
      if (v59)
      {
        goto LABEL_159;
      }

      v96 = v92;
      if (*(v69 + 24) >= v95)
      {
        if ((v90 & 1) == 0)
        {
          v103 = v91;
          sub_23A90F200();
          v91 = v103;
          if ((v96 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_23A90A29C(v95, v90);
        v91 = sub_23A9EDDFC(v87, v89);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_178;
        }
      }

      if ((v96 & 1) == 0)
      {
LABEL_34:
        v69 = v297;
        *(v297 + 8 * (v91 >> 6) + 64) |= 1 << v91;
        v98 = (*(v69 + 48) + 16 * v91);
        *v98 = v87;
        v98[1] = v89;
        *(*(v69 + 56) + 8 * v91) = 1;
        sub_23A8D5320(v15, type metadata accessor for CapturedRoom.Object);
        v99 = *(v69 + 16);
        v59 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v59)
        {
          goto LABEL_162;
        }

        *(v69 + 16) = v100;
        goto LABEL_18;
      }

LABEL_16:
      v70 = v91;

      v69 = v297;
      *(*(v297 + 56) + 8 * v70) = 1;
LABEL_17:
      sub_23A8D5320(v15, type metadata accessor for CapturedRoom.Object);
LABEL_18:
      v58 = v294;
      if (v293 == ++v67)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  sub_23A9EDDFC(v71, v72);
  v74 = v73;

  if ((v74 & 1) == 0)
  {
    goto LABEL_28;
  }

  LOBYTE(v297) = *v15;
  v75 = sub_23AA0D1A4();
  v77 = v76;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v69;
  v80 = sub_23A9EDDFC(v75, v77);
  v81 = *(v69 + 16);
  v82 = (v79 & 1) == 0;
  v83 = v81 + v82;
  if (__OFADD__(v81, v82))
  {
    goto LABEL_163;
  }

  v84 = v79;
  if (*(v69 + 24) >= v83)
  {
    if (v78)
    {
      v68 = v286;
      if ((v79 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_23A90F200();
      v68 = v286;
      if ((v84 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_38;
  }

  sub_23A90A29C(v83, v78);
  v85 = sub_23A9EDDFC(v75, v77);
  if ((v84 & 1) != (v86 & 1))
  {
    goto LABEL_178;
  }

  v80 = v85;
  v68 = v286;
  if (v84)
  {
LABEL_38:
    v101 = *(*(v297 + 56) + 8 * v80);

    v102 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      goto LABEL_164;
    }

    v69 = v297;
    *(*(v297 + 56) + 8 * v80) = v102;
    goto LABEL_17;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v69 = MEMORY[0x277D84F98];
LABEL_45:
  v104 = v69 + 64;
  v105 = 1 << *(v69 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v69 + 64);
  v108 = (v105 + 63) >> 6;
  v285 = 0x800000023AA1FC80;
  v292 = v69;

  v109 = 0;
  v110 = v287;
  while (2)
  {
    if (v107)
    {
      goto LABEL_55;
    }

LABEL_51:
    v115 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v115 < v108)
    {
      v107 = *(v104 + 8 * v115);
      ++v109;
      if (v107)
      {
        v109 = v115;
LABEL_55:
        v116 = (*(v292 + 48) + 16 * (__clz(__rbit64(v107)) | (v109 << 6)));
        v117 = *v116;
        v118 = v116[1];
        v297 = 0xD00000000000001BLL;
        v298 = v285;
        MEMORY[0x23EE8FCA0](v117, v118);
        v120 = v297;
        v119 = v298;
        v293 = sub_23AA0D434();
        v121 = v288;
        swift_beginAccess();
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v296 = *(v110 + v121);
        v123 = v296;
        *(v110 + v121) = 0x8000000000000000;
        v124 = sub_23A9EDDFC(v120, v119);
        v126 = v123[2];
        v127 = (v125 & 1) == 0;
        v59 = __OFADD__(v126, v127);
        v128 = v126 + v127;
        if (v59)
        {
          goto LABEL_166;
        }

        v129 = v125;
        if (v123[3] >= v128)
        {
          if (v122)
          {
            goto LABEL_60;
          }

          v134 = v124;
          sub_23A90F094();
          v124 = v134;
          if (v129)
          {
            goto LABEL_48;
          }

LABEL_61:
          v112 = v296;
          v296[(v124 >> 6) + 8] |= 1 << v124;
          v131 = (v112[6] + 16 * v124);
          *v131 = v120;
          v131[1] = v119;
          *(v112[7] + 8 * v124) = v293;
          v132 = v112[2];
          v59 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (!v59)
          {
            v112[2] = v133;
            goto LABEL_49;
          }

          goto LABEL_172;
        }

        sub_23A909FF8(v128, v122);
        v124 = sub_23A9EDDFC(v120, v119);
        if ((v129 & 1) != (v130 & 1))
        {
          goto LABEL_178;
        }

LABEL_60:
        if ((v129 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_48:
        v111 = v124;

        v112 = v296;
        v113 = v296[7];
        v114 = *(v113 + 8 * v111);
        *(v113 + 8 * v111) = v293;

LABEL_49:
        v107 &= v107 - 1;
        v110 = v287;
        *(v287 + v288) = v112;
        swift_endAccess();
        continue;
      }

      goto LABEL_51;
    }

    break;
  }

  v135 = v294;
  v136 = *(v294 + 16);
  if (v136)
  {
    v137 = 0;
    v138 = *(v269 + 36);
    v139 = v294 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
    v140 = *(v286 + 72);
    v141 = v270;
    while (1)
    {
      sub_23A95F358(v139, v141, type metadata accessor for CapturedRoom.Object);
      v142 = *(v141 + v138);

      sub_23A8D5320(v141, type metadata accessor for CapturedRoom.Object);
      v143 = *(v142 + 16);

      if (v143)
      {
        v59 = __OFADD__(v137++, 1);
        if (v59)
        {
          break;
        }
      }

      v139 += v140;
      if (!--v136)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  v137 = 0;
LABEL_73:
  v144 = sub_23AA0D434();
  v145 = v287;
  v146 = v288;
  swift_beginAccess();
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v146);
  *(v145 + v146) = 0x8000000000000000;
  sub_23A9DB06C(v144, 0xD00000000000001FLL, 0x800000023AA1FCA0, v147);
  *(v145 + v146) = v296;
  swift_endAccess();
  if (*(v135 + 16))
  {
    if ((v137 * 100) >> 64 == (100 * v137) >> 63)
    {
      v148 = sub_23AA0D3C4();
      v146 = v288;
      swift_beginAccess();
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v296 = *(v145 + v146);
      *(v145 + v146) = 0x8000000000000000;
      sub_23A9DB06C(v148, 0xD000000000000030, 0x800000023AA20080, v149);
      *(v145 + v146) = v296;
      swift_endAccess();
      goto LABEL_76;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_76:
  v150 = v282;
  v151 = v282[6];
  v152 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v146);
  *(v145 + v146) = 0x8000000000000000;
  sub_23A9DB06C(v152, 0xD000000000000011, 0x800000023AA1FCC0, v153);
  *(v145 + v146) = v296;
  swift_endAccess();
  v154 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v146);
  *(v145 + v146) = 0x8000000000000000;
  sub_23A9DB06C(v154, v277, 0x800000023AA1FCE0, v155);
  *(v145 + v146) = v296;
  swift_endAccess();
  v156 = *(v151 + 16);
  if (!v156)
  {
    goto LABEL_87;
  }

  v157 = 0;
  v158 = 0;
  v159 = (v151 + ((*(v283 + 80) + 32) & ~*(v283 + 80)));
  v161 = 0.0;
  v162 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v160 = *(v284 + 60);
    v163 = *(*(v159 + v160) + 16);
    if (!v163)
    {
LABEL_82:
      v161 = v161 + vmuls_lane_f32(COERCE_FLOAT(*v159[2].f32), v159[2], 1);
      v159 = (v159 + *(v283 + 72));
      if (!--v156)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v59 = __OFADD__(v158++, 1);
  if (!v59)
  {
    if (v163 > v157)
    {
      v157 = *(*(v159 + v160) + 16);
    }

    if (v163 < v162)
    {
      v162 = *(*(v159 + v160) + 16);
    }

    goto LABEL_82;
  }

  __break(1u);
LABEL_87:
  v164 = sub_23AA0D3C4();
  v165 = v288;
  swift_beginAccess();
  v166 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v165);
  *(v145 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v164, 0xD00000000000001BLL, 0x800000023AA1FD00, v166);
  *(v145 + v165) = v296;
  swift_endAccess();
  v167 = sub_23AA0D434();
  swift_beginAccess();
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v165);
  *(v145 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v167, 0xD00000000000001CLL, 0x800000023AA1FD20, v168);
  *(v145 + v165) = v296;
  swift_endAccess();
  v169 = sub_23AA0D434();
  swift_beginAccess();
  v170 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v165);
  *(v145 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v169, 0xD000000000000024, 0x800000023AA1FD40, v170);
  *(v145 + v165) = v296;
  swift_endAccess();
  v171 = sub_23AA0D434();
  swift_beginAccess();
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v145 + v165);
  *(v145 + v165) = 0x8000000000000000;
  sub_23A9DB06C(v171, 0xD000000000000024, 0x800000023AA1FD70, v172);
  *(v145 + v165) = v296;
  swift_endAccess();
  v173 = v282[7];
  v174 = *(v173 + 16);
  if (!v174)
  {
    goto LABEL_111;
  }

  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v181 = (v173 + 32);
  v182 = v174;
  while (2)
  {
    v184 = *v181;
    v181 += 160;
    v183 = v184;
    if (v184 <= 2)
    {
      if (v183)
      {
        if (v183 == 1)
        {
          v59 = __OFADD__(v179++, 1);
          if (v59)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v59 = __OFADD__(v178++, 1);
          if (v59)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        v59 = __OFADD__(v180++, 1);
        if (v59)
        {
          goto LABEL_168;
        }
      }

      goto LABEL_90;
    }

    if (v183 == 3)
    {
      v59 = __OFADD__(v177++, 1);
      if (v59)
      {
        goto LABEL_170;
      }

      goto LABEL_90;
    }

    if (v183 == 4)
    {
      v59 = __OFADD__(v176++, 1);
      if (v59)
      {
        goto LABEL_169;
      }

      goto LABEL_90;
    }

    v59 = __OFADD__(v175++, 1);
    if (!v59)
    {
LABEL_90:
      if (!--v182)
      {
        goto LABEL_111;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_111:
  v185 = sub_23AA0D434();
  v186 = v287;
  v187 = v288;
  swift_beginAccess();
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v185, v276, 0x800000023AA1FDA0, v188);
  *(v186 + v187) = v296;
  swift_endAccess();
  v189 = sub_23AA0D434();
  swift_beginAccess();
  v190 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v189, 0xD00000000000001DLL, 0x800000023AA1FDC0, v190);
  *(v186 + v187) = v296;
  swift_endAccess();
  v191 = sub_23AA0D434();
  swift_beginAccess();
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v191, 0xD00000000000001ALL, 0x800000023AA1FDE0, v192);
  *(v186 + v187) = v296;
  swift_endAccess();
  v193 = sub_23AA0D434();
  swift_beginAccess();
  v194 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v193, 0xD00000000000001BLL, 0x800000023AA1FE00, v194);
  *(v186 + v187) = v296;
  swift_endAccess();
  v195 = sub_23AA0D434();
  swift_beginAccess();
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v195, 0xD00000000000001ALL, 0x800000023AA1FE20, v196);
  *(v186 + v187) = v296;
  swift_endAccess();
  v197 = sub_23AA0D434();
  swift_beginAccess();
  v198 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  sub_23A9DB06C(v197, 0xD00000000000001DLL, 0x800000023AA1FE40, v198);
  *(v186 + v187) = v296;
  swift_endAccess();
  v199 = sub_23AA0D434();
  swift_beginAccess();
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v186 + v187);
  *(v186 + v187) = 0x8000000000000000;
  v286 = 0xD000000000000019;
  sub_23A9DB06C(v199, 0xD000000000000019, 0x800000023AA1FE60, v200);
  *(v186 + v187) = v296;
  swift_endAccess();
  v201 = *(v281 + 16);
  if (!v201)
  {
    v212 = 0;
    goto LABEL_129;
  }

  v202 = 0;
  v203 = 0;
  v204 = v284;
  v205 = v281 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
  v293 = *(v283 + 72);
  v294 = 0;
  v206 = 0x7FFFFFFFFFFFFFFFLL;
  v207 = v295;
  do
  {
    sub_23A95F358(v205, v207, type metadata accessor for CapturedRoom.Surface);
    v208 = *(*(v207 + *(v204 + 60)) + 16);
    if (v208)
    {
      v59 = __OFADD__(v203++, 1);
      v209 = v291;
      if (v59)
      {
        goto LABEL_160;
      }

      v210 = v294;
      if (v208 > v294)
      {
        v210 = *(*(v207 + *(v204 + 60)) + 16);
      }

      v294 = v210;
      if (v208 < v206)
      {
        v206 = v208;
      }
    }

    else
    {
      v209 = v291;
    }

    sub_23A8D5194(v207 + *(v204 + 52), v209, &qword_27DFAEB38, &unk_23AA11B60);
    v211 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    if ((*(*(v211 - 8) + 48))(v209, 1, v211) == 1)
    {
      sub_23A8D5320(v207, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D50D0(v209, &qword_27DFAEB38, &unk_23AA11B60);
    }

    else
    {
      sub_23A8D50D0(v209, &qword_27DFAEB38, &unk_23AA11B60);
      v59 = __OFADD__(v202++, 1);
      if (v59)
      {
        goto LABEL_161;
      }

      sub_23A8D5320(v295, type metadata accessor for CapturedRoom.Surface);
    }

    v205 += v293;
    --v201;
  }

  while (v201);
  v212 = v202;
  if (!v203)
  {
LABEL_129:
    v203 = 0;
  }

  v213 = sub_23AA0D434();
  v214 = v287;
  v215 = v288;
  swift_beginAccess();
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v214 + v215);
  *(v214 + v215) = 0x8000000000000000;
  sub_23A9DB06C(v213, 0xD00000000000001BLL, 0x800000023AA1FE80, v216);
  *(v214 + v215) = v296;
  swift_endAccess();
  v217 = sub_23AA0D434();
  swift_beginAccess();
  v218 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v214 + v215);
  *(v214 + v215) = 0x8000000000000000;
  sub_23A9DB06C(v217, 0xD000000000000023, 0x800000023AA1FEA0, v218);
  *(v214 + v215) = v296;
  swift_endAccess();
  v219 = sub_23AA0D434();
  swift_beginAccess();
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v214 + v215);
  *(v214 + v215) = 0x8000000000000000;
  sub_23A9DB06C(v219, 0xD000000000000023, 0x800000023AA1FED0, v220);
  *(v214 + v215) = v296;
  swift_endAccess();
  v221 = sub_23AA0D434();
  swift_beginAccess();
  v222 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v214 + v215);
  *(v214 + v215) = 0x8000000000000000;
  sub_23A9DB06C(v221, v279, 0x800000023AA1FF00, v222);
  *(v214 + v215) = v296;
  swift_endAccess();
  v223 = v275;
  v224 = v284;
  if (!*(v281 + 16))
  {
LABEL_134:
    v231 = *(v280 + 16);
    if (v231)
    {
      v232 = 0;
      v233 = *(v224 + 52);
      v234 = v280 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
      v235 = *(v283 + 72);
      v236 = v290;
      while (1)
      {
        v237 = v289;
        sub_23A95F358(v234, v289, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v237 + v233, v236, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v237, type metadata accessor for CapturedRoom.Surface);
        v238 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v237) = (*(*(v238 - 8) + 48))(v236, 1, v238);
        sub_23A8D50D0(v236, &qword_27DFAEB38, &unk_23AA11B60);
        if (v237 != 1)
        {
          v59 = __OFADD__(v232++, 1);
          if (v59)
          {
            break;
          }
        }

        v234 += v235;
        if (!--v231)
        {
          goto LABEL_142;
        }
      }

      __break(1u);
    }

    v232 = 0;
LABEL_142:
    v239 = sub_23AA0D434();
    v240 = v287;
    v241 = v288;
    swift_beginAccess();
    v242 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v240 + v241);
    *(v240 + v241) = 0x8000000000000000;
    sub_23A9DB06C(v239, 0xD000000000000017, 0x800000023AA1FF20, v242);
    *(v240 + v241) = v296;
    swift_endAccess();
    v243 = v284;
    v244 = v274;
    if (*(v280 + 16))
    {
      if ((v232 * 100) >> 64 != (100 * v232) >> 63)
      {
        goto LABEL_176;
      }

      v245 = sub_23AA0D3C4();
      swift_beginAccess();
      v246 = swift_isUniquelyReferenced_nonNull_native();
      v296 = *(v240 + v241);
      *(v240 + v241) = 0x8000000000000000;
      sub_23A9DB06C(v245, 0xD000000000000028, 0x800000023AA1FFF0, v246);
      *(v240 + v241) = v296;
      swift_endAccess();
    }

    v247 = *(v278 + 16);
    if (v247)
    {
      v248 = 0;
      v249 = *(v243 + 52);
      v250 = v278 + ((*(v283 + 80) + 32) & ~*(v283 + 80));
      v251 = *(v283 + 72);
      while (1)
      {
        sub_23A95F358(v250, v223, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v223 + v249, v244, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v223, type metadata accessor for CapturedRoom.Surface);
        v252 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        v253 = (*(*(v252 - 8) + 48))(v244, 1, v252);
        sub_23A8D50D0(v244, &qword_27DFAEB38, &unk_23AA11B60);
        if (v253 != 1)
        {
          v59 = __OFADD__(v248++, 1);
          if (v59)
          {
            break;
          }
        }

        v250 += v251;
        if (!--v247)
        {
          goto LABEL_153;
        }
      }

      __break(1u);
    }

    v248 = 0;
LABEL_153:
    v254 = sub_23AA0D434();
    v255 = v287;
    v256 = v288;
    swift_beginAccess();
    v257 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v255 + v256);
    *(v255 + v256) = 0x8000000000000000;
    sub_23A9DB06C(v254, v279, 0x800000023AA1FF40, v257);
    *(v255 + v256) = v296;
    swift_endAccess();
    if (*(v278 + 16))
    {
      if ((v248 * 100) >> 64 != (100 * v248) >> 63)
      {
        goto LABEL_177;
      }

      v258 = sub_23AA0D3C4();
      swift_beginAccess();
      v259 = swift_isUniquelyReferenced_nonNull_native();
      v296 = *(v255 + v256);
      *(v255 + v256) = 0x8000000000000000;
      sub_23A9DB06C(v258, 0xD000000000000024, 0x800000023AA1FFC0, v259);
      *(v255 + v256) = v296;
      swift_endAccess();
    }

    v260 = sub_23AA0D434();
    swift_beginAccess();
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v255 + v256);
    *(v255 + v256) = 0x8000000000000000;
    sub_23A9DB06C(v260, 0xD00000000000001ELL, 0x800000023AA1FF60, v261);
    *(v255 + v256) = v296;
    swift_endAccess();
    v262 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v263 = sub_23AA0D104();
    v264 = [v262 initWithString_];

    swift_beginAccess();
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v255 + v256);
    *(v255 + v256) = 0x8000000000000000;
    sub_23A9DB06C(v264, v286, 0x800000023AA1FF80, v265);
    *(v255 + v256) = v296;
    swift_endAccess();
    v266 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    swift_beginAccess();
    v267 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v255 + v256);
    *(v255 + v256) = 0x8000000000000000;
    sub_23A9DB06C(v266, 0xD00000000000001BLL, 0x800000023AA1FFA0, v267);
    *(v255 + v256) = v296;
    swift_endAccess();

    return;
  }

  if ((v203 * 100) >> 64 != (100 * v203) >> 63)
  {
    goto LABEL_174;
  }

  v225 = sub_23AA0D3C4();
  v226 = v287;
  v227 = v288;
  swift_beginAccess();
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *(v226 + v227);
  *(v226 + v227) = 0x8000000000000000;
  sub_23A9DB06C(v225, 0xD00000000000002ALL, 0x800000023AA20020, v228);
  *(v226 + v227) = v296;
  swift_endAccess();
  if ((v212 * 100) >> 64 == (100 * v212) >> 63)
  {
    v229 = sub_23AA0D3C4();
    swift_beginAccess();
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v296 = *(v226 + v227);
    *(v226 + v227) = 0x8000000000000000;
    sub_23A9DB06C(v229, 0xD000000000000024, 0x800000023AA20050, v230);
    *(v226 + v227) = v296;
    swift_endAccess();
    goto LABEL_134;
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_23AA0DC24();
  __break(1u);
}

uint64_t sub_23A95D34C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v5 = sub_23AA0D104();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    aBlock[4] = sub_23A95F8D0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A954DD4;
    aBlock[3] = &block_descriptor_157;
    v7 = _Block_copy(aBlock);
    v8 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v7);
  }

  v9 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  *&a1[v9] = MEMORY[0x277D84F98];

  v10 = sub_23AA0C064();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  swift_beginAccess();
  sub_23A95F174(v4, &a1[v11]);
  return swift_endAccess();
}

id sub_23A95D54C()
{
  v13 = sub_23AA0D524();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0D504();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v4 - 8);
  v12 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_queue;
  v11[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v16 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v13);
  v5 = sub_23AA0D554();
  v6 = v14;
  *&v14[v12] = v5;
  v7 = OBJC_IVAR____TtC8RoomPlan25AnalyticsOfflineMultiroom_offlineMultiroomGenerationTimeStart;
  v8 = sub_23AA0C064();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  v9 = type metadata accessor for AnalyticsOfflineMultiroom(0);
  v15.receiver = v6;
  v15.super_class = v9;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_23A95D920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A95D958(uint64_t a1)
{
  sub_23A8ECAC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A95DA78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_23AA0CEC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CF24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v22[1] = *&v5[*a1];
    v23 = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = a5;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a4;
    v20 = _Block_copy(aBlock);
    v21 = v5;
    sub_23AA0CEE4();
    v24 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v18, v13, v20);
    _Block_release(v20);
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v18, v23);
  }
}

char *sub_23A95DD44(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray;
  v5 = *(a1 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v4) = v5;
  if ((result & 1) == 0)
  {
    result = sub_23A939D64(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *(a1 + v4) = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_23A939D64((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a2;
  *(a1 + v4) = v5;
  return result;
}

uint64_t sub_23A95DE30(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray);
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 <= 3)
    {
      v4 = 0;
      v5 = 0.0;
LABEL_8:
      v8 = v3 - v4;
      v9 = (v2 + 8 * v4 + 32);
      do
      {
        v10 = *v9++;
        v5 = v5 + v10;
        --v8;
      }

      while (v8);
      goto LABEL_10;
    }

    v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v6 = (v2 + 48);
    v5 = 0.0;
    v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
      v6 += 4;
      v7 -= 4;
    }

    while (v7);
    if (v3 != v4)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v11 = sub_23AA0D434();
  v12 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + v12);
  *(a1 + v12) = 0x8000000000000000;
  sub_23A9DB06C(v11, 0x65695652416D754ELL, 0xEF65746164705577, isUniquelyReferenced_nonNull_native);
  *(a1 + v12) = v21;
  swift_endAccess();
  if (v3)
  {
    v14 = sub_23AA0D3C4();
    swift_beginAccess();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a1 + v12);
    *(a1 + v12) = 0x8000000000000000;
    sub_23A9DB06C(v14, 0xD000000000000012, 0x800000023AA1FB50, v15);
    *(a1 + v12) = v22;
    swift_endAccess();
  }

  sub_23A8D6C58(0, &qword_27DFAFB60, 0x277CCABB0);
  v16 = sub_23AA0D624();
  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a1 + v12);
  *(a1 + v12) = 0x8000000000000000;
  sub_23A9DB06C(v16, 0xD000000000000014, 0x800000023AA1FB30, v17);
  *(a1 + v12) = v23;
  swift_endAccess();
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + v12);
  *(a1 + v12) = 0x8000000000000000;
  sub_23A9DB06C(v18, 0x504149556C6C6143, 0xE900000000000049, v19);
  *(a1 + v12) = v24;
  return swift_endAccess();
}

void sub_23A95E150(char *a1)
{
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v2 = sub_23AA0D104();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v7[4] = sub_23A95F8D0;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23A954DD4;
    v7[3] = &block_descriptor_126;
    v4 = _Block_copy(v7);
    v5 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v4);
  }

  v6 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  *&a1[v6] = MEMORY[0x277D84F98];

  *&a1[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray] = MEMORY[0x277D84F90];

  a1[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_voiceOver] = 0;
}

id sub_23A95E2B4()
{
  v11 = sub_23AA0D524();
  v1 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v5 - 8);
  v10 = OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_queue;
  v6 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v9[1] = "AveARViewFrameRate";
  v9[2] = v6;
  sub_23AA0CF14();
  v13 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v11);
  *&v0[v10] = sub_23AA0D554();
  *&v0[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_arViewDeltaTimeArray] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC8RoomPlan11AnalyticsUI_voiceOver] = 0;
  v7 = type metadata accessor for AnalyticsUI();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

double sub_23A95E580()
{

  return result;
}

double sub_23A95E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23AA0CEC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v20[1] = *&v3[OBJC_IVAR____TtC8RoomPlan13AnalyticsData_queue];
    v21 = v13;
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_23A95F020;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_113;
    v18 = _Block_copy(aBlock);
    v19 = v3;

    sub_23AA0CEE4();
    v22 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v16, v10, v18);
    _Block_release(v18);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v16, v21);
  }

  return result;
}

uint64_t sub_23A95E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = sub_23AA0D104();
  v8 = [v6 initWithString_];

  v9 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v8, 0xD000000000000013, 0x800000023AA1FAC0, isUniquelyReferenced_nonNull_native);
  *(a1 + v9) = v16;
  swift_endAccess();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v11, 0x7372655661746144, 0xEB000000006E6F69, v12);
  *(a1 + v9) = v17;
  swift_endAccess();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  swift_beginAccess();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_23A9DB06C(v13, 0x726F7078456D754ELL, 0xED00005A44535574, v14);
  *(a1 + v9) = v18;
  return swift_endAccess();
}

double sub_23A95EB74(char *a1)
{
  if (a1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    sub_23A954A94();
    v2 = sub_23AA0D104();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v8[4] = sub_23A95F014;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23A954DD4;
    v8[3] = &block_descriptor_107;
    v4 = _Block_copy(v8);
    v5 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v4);
  }

  v6 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  *&a1[v6] = MEMORY[0x277D84F98];

  return result;
}

id sub_23A95ECB0()
{
  v11 = sub_23AA0D524();
  v0 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0D504();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v4 - 8);
  v10 = OBJC_IVAR____TtC8RoomPlan13AnalyticsData_queue;
  v9[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  sub_23AA0CF14();
  v14 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v11);
  v5 = sub_23AA0D554();
  v6 = v12;
  *&v12[v10] = v5;
  v7 = type metadata accessor for AnalyticsData();
  v13.receiver = v6;
  v13.super_class = v7;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_23A95EFBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A95F02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A95F074(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A95F0D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A95F11C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23A95F174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A95F1E4(double a1)
{
  v2 = (type metadata accessor for CapturedStructure(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(*v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v6 = v2[14];
  v7 = sub_23AA0C0E4();
  (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v1, v5 + 24, v3 | 7);
}

uint64_t sub_23A95F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A95F3C0()
{
  v1 = (type metadata accessor for CapturedRoom(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_23AA0C0E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[17]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_23A95F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A95F5B4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v2 + 16);
  v7 = *(v2 + v5);
  v8 = v2 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);

  return a2(v6, v2 + v4, v7, v9, v10);
}

double sub_23A95F670()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_23A95F6BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_109Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

double sub_23A95F758()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType);
  *v2 = v0[3];
  v2[1] = v1;

  return result;
}

uint64_t sub_23A95F98C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000746ELL;
  v3 = 0x756F43656E616C70;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x72616E616C507369;
  if (a1 != 5)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x746867696568;
  if (a1 != 3)
  {
    v7 = 0x73656E616C70;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0x726F466C65786970;
  v9 = 0xEB0000000074616DLL;
  if (a1 != 1)
  {
    v8 = 0x6874646977;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v8 = 0x756F43656E616C70;
    v9 = 0xEA0000000000746ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000074616DLL;
        if (v10 != 0x726F466C65786970)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x6874646977)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x72616E616C507369)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v10 != 1635017060)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v10 != 0x746867696568)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x73656E616C70;
  }

  if (v10 != v3)
  {
LABEL_36:
    v12 = sub_23AA0DBD4();
    goto LABEL_37;
  }

LABEL_33:
  if (v11 != v2)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_23A95FB90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696E6964;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6576697773;
    }

    else
    {
      v4 = 0x69746E6564696E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC00000064656966;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6F6F7473;
    }

    else
    {
      v4 = 0x676E696E6964;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C6576697773;
  if (a2 != 2)
  {
    v8 = 0x69746E6564696E75;
    v7 = 0xEC00000064656966;
  }

  if (a2)
  {
    v2 = 0x6C6F6F7473;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A95FCD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6465706168536CLL;
    }

    else
    {
      v3 = 0x75676E6174636572;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEB0000000072616CLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000023AA1CFD0;
  }

  else if (a1 == 3)
  {
    v3 = 0x6553656C676E6973;
    v4 = 0xEA00000000007461;
  }

  else
  {
    v3 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465706168536CLL;
    }

    else
    {
      v9 = 0x75676E6174636572;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEB0000000072616CLL;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6553656C676E6973;
    v6 = 0xEA00000000007461;
    if (a2 != 3)
    {
      v5 = 0x69746E6564696E75;
      v6 = 0xEC00000064656966;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000023AA1CFD0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_23AA0DBD4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_23A95FE80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006DLL;
  v3 = 0x726F66736E617274;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1702063984;
    }

    else
    {
      v5 = 0x726F66736E617274;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE90000000000006DLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69736E6972746E69;
    v6 = 0xEA00000000007363;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7365526567616D69;
    }

    else
    {
      v5 = 0x676E696B63617274;
    }

    if (v4 == 3)
    {
      v6 = 0xEF6E6F6974756C6FLL;
    }

    else
    {
      v6 = 0xED00006574617453;
    }
  }

  v7 = 0x69736E6972746E69;
  v8 = 0xEA00000000007363;
  v9 = 0x7365526567616D69;
  v10 = 0xEF6E6F6974756C6FLL;
  if (a2 != 3)
  {
    v9 = 0x676E696B63617274;
    v10 = 0xED00006574617453;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 1702063984;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23AA0DBD4();
  }

  return v13 & 1;
}

uint64_t sub_23A96002C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x6465706168536CLL;
  if (a1 == 2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v3 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000023AA1CE10;
  if (!a1)
  {
    v5 = 0x75676E6174636572;
    v6 = 0xEB0000000072616CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6465706168536CLL;
    }

    else
    {
      v11 = 0x69746E6564696E75;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xEC00000064656966;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x75676E6174636572;
    }

    if (a2)
    {
      v10 = 0x800000023AA1CE10;
    }

    else
    {
      v10 = 0xEB0000000072616CLL;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_23AA0DBD4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_23A960188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6169746E65746F70;
  v5 = 0xED00006C6C61576CLL;
  v6 = 0xE400000000000000;
  v7 = 1819042167;
  if (a1 != 4)
  {
    v7 = 0x776F646E6977;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x7463656A626FLL;
  if (a1 != 1)
  {
    v9 = 0x676E696E65706FLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1919905636;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006C6C61576CLL;
      if (v10 != 0x6169746E65746F70)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1819042167)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x776F646E6977)
      {
LABEL_34:
        v13 = sub_23AA0DBD4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7463656A626FLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676E696E65706FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1919905636)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_23A960360(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x6F52676E6976696CLL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6E65686374696BLL;
  v7 = 0x6F52676E696E6964;
  if (a1 == 4)
  {
    v8 = 0xEA00000000006D6FLL;
  }

  else
  {
    v7 = 0x69746E6564696E75;
    v8 = 0xEC00000064656966;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6D6F6F72646562;
  if (a1 != 1)
  {
    v10 = 0x6D6F6F7268746162;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x6F52676E6976696CLL;
    v9 = 0xEA00000000006D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6E65686374696BLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      if (v11 != 0x6F52676E696E6964)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEC00000064656966;
      if (v11 != 0x69746E6564696E75)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6D6F6F72646562)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0xE800000000000000;
      v3 = 0x6D6F6F7268746162;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = sub_23AA0DBD4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_23A960540(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 808989042;
    }

    else
    {
      v3 = 808923762;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 3160434;
    }

    else
    {
      v3 = 12402;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 12402;
  v7 = 808989042;
  if (a2 != 2)
  {
    v7 = 808923762;
  }

  if (a2)
  {
    v6 = 3160434;
    v5 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23AA0DBD4();
  }

  return v10 & 1;
}

uint64_t sub_23A96064C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x7475626972747461;
    v10 = 0xEA00000000007365;
    if (a1 != 6)
    {
      v9 = 0x79726F7473;
      v10 = 0xE500000000000000;
    }

    v11 = 0x696669746E656469;
    v12 = 0xEA00000000007265;
    if (a1 != 4)
    {
      v11 = 0xD000000000000010;
      v12 = 0x800000023AA1CCE0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6F69736E656D6964;
    v5 = 0xEA0000000000736ELL;
    if (a1 != 2)
    {
      v4 = 0x726F66736E617274;
      v5 = 0xE90000000000006DLL;
    }

    v6 = 0x6E656469666E6F63;
    if (a1)
    {
      v3 = 0xEA00000000006563;
    }

    else
    {
      v6 = 0x79726F6765746163;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000007365;
        if (v7 != 0x7475626972747461)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x79726F7473)
        {
LABEL_47:
          v14 = sub_23AA0DBD4();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000007265;
      if (v7 != 0x696669746E656469)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000023AA1CCE0;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA0000000000736ELL;
      if (v7 != 0x6F69736E656D6964)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE90000000000006DLL;
      if (v7 != 0x726F66736E617274)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006563;
    if (v7 != 0x6E656469666E6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x79726F6765746163)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_23A9608FC(char a1)
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  return sub_23AA0DD54();
}

uint64_t sub_23A960950(unsigned __int8 a1)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960A4C(unsigned __int8 a1)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A960B5C(uint64_t a1, unsigned __int8 a2)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A960C9C(uint64_t a1, unsigned __int8 a2)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960DB8(uint64_t a1, char a2)
{
  sub_23AA0DD14();
  sub_23AA0DD44();
  return sub_23AA0DD54();
}

uint64_t sub_23A960E08(uint64_t a1, unsigned __int8 a2)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A960F00(uint64_t a1, unsigned __int8 a2)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A96100C(uint64_t a1, unsigned __int8 a2)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

BOOL sub_23A9611B0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_23A9611E0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_23A96120C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void sub_23A9612F0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_23A8CA1F4(a1);

  *a2 = v3;
}

double sub_23A961344(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

unint64_t sub_23A961430@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A963350(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A961460(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1919905636;
  v5 = 0xED00006C6C61576CLL;
  v6 = 0x6169746E65746F70;
  v7 = 0xE400000000000000;
  v8 = 1819042167;
  if (v2 != 4)
  {
    v8 = 0x776F646E6977;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x7463656A626FLL;
  if (v2 != 1)
  {
    v10 = 0x676E696E65706FLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23A961514(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465676E616863;
  if (v2 != 1)
  {
    v3 = 0x6465766F6D6572;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6465646461;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x6465676E616863;
  if (*a2 != 1)
  {
    v6 = 0x6465766F6D6572;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6465646461;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();
  }

  return v9 & 1;
}

uint64_t sub_23A961614()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A9616B4(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A961740()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A9617DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A96339C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A96180C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6465676E616863;
  if (v2 != 1)
  {
    v4 = 0x6465766F6D6572;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6465646461;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_23A961868()
{
  v1 = OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23A961904(void *a1, int a2)
{
  v5 = type metadata accessor for CapturedRoom.Object(0);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0C0E4();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom.Surface(0);
  v13 = *(v12 - 8);
  v78 = v12;
  v79 = v13;
  MEMORY[0x28223BE20](v12);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  v25 = *(v2 + 17);
  v80 = a1;
  v85 = a2;
  v76 = v19;
  if (v25)
  {
    v26 = *a1;
    v27 = *(*a1 + 16);
    if (v27)
    {
      v72 = v22;
      v83 = *(v78 + 44);
      v28 = v26 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v29 = (v81 + 16);
      v30 = (v81 + 32);
      v82 = *(v79 + 72);
      do
      {
        sub_23A8D52B8(v28, v24, type metadata accessor for CapturedRoom.Surface);
        (*v29)(v11, &v24[v83], v9);
        v84 = *(v24 + 1);
        sub_23A8D5320(v24, type metadata accessor for CapturedRoom.Surface);
        type metadata accessor for IULogManager.IULogEntry(0);
        v31 = swift_allocObject();
        (*v30)(v31 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v31 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 4;
        *(v31 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v31 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v85;
        sub_23A962278(v31);

        v28 += v82;
        --v27;
      }

      while (v27);
      v25 = *(v2 + 17);
      a1 = v80;
      v19 = v76;
      v22 = v72;
    }
  }

  if ((v25 & 4) != 0)
  {
    v32 = a1[5];
    v33 = *(v32 + 16);
    if (v33)
    {
      v72 = v22;
      v83 = *(v73 + 32);
      v34 = v32 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v35 = (v81 + 16);
      v36 = (v81 + 32);
      v82 = *(v74 + 72);
      v37 = v85;
      do
      {
        sub_23A8D52B8(v34, v8, type metadata accessor for CapturedRoom.Object);
        (*v35)(v11, &v8[v83], v9);
        v84 = *(v8 + 1);
        sub_23A8D5320(v8, type metadata accessor for CapturedRoom.Object);
        type metadata accessor for IULogManager.IULogEntry(0);
        v38 = swift_allocObject();
        (*v36)(v38 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v38 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 1;
        *(v38 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v38 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v37;
        sub_23A962278(v38);

        v34 += v82;
        --v33;
      }

      while (v33);
      v25 = *(v2 + 17);
      a1 = v80;
      v19 = v76;
      v22 = v72;
    }
  }

  if ((v25 & 2) != 0)
  {
    v39 = v22;
    v40 = *(a1 + *(type metadata accessor for CapturedRoom(0) + 56));
    v41 = *(v40 + 16);
    if (v41)
    {
      v83 = *(v78 + 44);
      v42 = v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v43 = (v81 + 16);
      v44 = (v81 + 32);
      v82 = *(v79 + 72);
      v45 = v85;
      do
      {
        sub_23A8D52B8(v42, v39, type metadata accessor for CapturedRoom.Surface);
        (*v43)(v11, v39 + v83, v9);
        v84 = *(v39 + 16);
        sub_23A8D5320(v39, type metadata accessor for CapturedRoom.Surface);
        type metadata accessor for IULogManager.IULogEntry(0);
        v46 = swift_allocObject();
        (*v44)(v46 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v46 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 3;
        *(v46 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v46 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v45;
        sub_23A962278(v46);

        v42 += v82;
        --v41;
      }

      while (v41);
      v25 = *(v2 + 17);
      a1 = v80;
      v19 = v76;
    }
  }

  if ((v25 & 8) != 0)
  {
    v47 = a1[1];
    v48 = *(v47 + 16);
    if (v48)
    {
      v83 = *(v78 + 44);
      v49 = v47 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v50 = (v81 + 16);
      v51 = v19;
      v52 = (v81 + 32);
      v82 = *(v79 + 72);
      v53 = v85;
      do
      {
        sub_23A8D52B8(v49, v51, type metadata accessor for CapturedRoom.Surface);
        (*v50)(v11, v51 + v83, v9);
        v84 = *(v51 + 16);
        sub_23A8D5320(v51, type metadata accessor for CapturedRoom.Surface);
        type metadata accessor for IULogManager.IULogEntry(0);
        v54 = swift_allocObject();
        (*v52)(v54 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v54 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 0;
        *(v54 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v54 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v53;
        sub_23A962278(v54);

        v49 += v82;
        --v48;
      }

      while (v48);
      v25 = *(v2 + 17);
      a1 = v80;
    }
  }

  if ((v25 & 0x10) != 0)
  {
    v55 = a1[2];
    v56 = *(v55 + 16);
    if (v56)
    {
      v83 = *(v78 + 44);
      v57 = v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v58 = (v81 + 16);
      v59 = (v81 + 32);
      v82 = *(v79 + 72);
      v60 = v85;
      v61 = v75;
      do
      {
        sub_23A8D52B8(v57, v61, type metadata accessor for CapturedRoom.Surface);
        (*v58)(v11, v61 + v83, v9);
        v84 = *(v61 + 16);
        sub_23A8D5320(v61, type metadata accessor for CapturedRoom.Surface);
        type metadata accessor for IULogManager.IULogEntry(0);
        v62 = swift_allocObject();
        (*v59)(v62 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v62 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 5;
        *(v62 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v62 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v60;
        sub_23A962278(v62);

        v57 += v82;
        --v56;
      }

      while (v56);
      v25 = *(v2 + 17);
      a1 = v80;
    }
  }

  v63 = v77;
  if ((v25 & 0x20) != 0)
  {
    v64 = a1[3];
    v65 = *(v64 + 16);
    if (v65)
    {
      v83 = *(v78 + 44);
      v66 = v64 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v67 = (v81 + 16);
      v68 = (v81 + 32);
      v69 = *(v79 + 72);
      do
      {
        sub_23A8D52B8(v66, v63, type metadata accessor for CapturedRoom.Surface);
        (*v67)(v11, v63 + v83, v9);
        v84 = *(v63 + 16);
        sub_23A8D5320(v63, type metadata accessor for CapturedRoom.Surface);
        type metadata accessor for IULogManager.IULogEntry(0);
        v70 = swift_allocObject();
        (*v68)(v70 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_uuid, v11, v9);
        *(v70 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category) = 2;
        *(v70 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions) = v84;
        *(v70 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state) = v85;
        sub_23A962278(v70);

        v66 += v69;
        --v65;
      }

      while (v65);
    }
  }

  return sub_23A9624A8();
}

void sub_23A962278(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v13 = v1;
  if (v3 >> 62)
  {
LABEL_24:
    v4 = sub_23AA0D7F4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = -v4;
  v6 = 4;
  while (v5 + v6 != 4)
  {
    v7 = v6 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](v6 - 4, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v8 = a1;
    v9 = sub_23AA0C094();

    if (v9)
    {

      swift_beginAccess();
      v11 = *(v1 + 48);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v13 + 48) = v11;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v11 < 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_23A97E578();
        *(v13 + 48) = v11;
      }

      if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        *((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v8;
        *(v13 + 48) = v11;
        swift_endAccess();
      }

      return;
    }

    ++v6;
    a1 = v8;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_23;
    }
  }

  swift_beginAccess();

  MEMORY[0x23EE8FD70](v10);
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  swift_endAccess();
}

uint64_t sub_23A9624A8()
{
  v1 = sub_23AA0CEC4();
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23AA0CF24();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  sub_23AA0CF34();
  sub_23AA0D574();

  (*(v8 + 8))(v10, v7);
  result = sub_23AA0CEB4();
  if ((result & 1) == 0)
  {
    sub_23A9164A0();
    v13 = sub_23AA0D534();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_23A963474;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_4;
    v15 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23A963494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A9634EC();
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v6, v3, v15);
    _Block_release(v15);

    (*(v17 + 8))(v3, v1);
    return (*(v4 + 8))(v6, v16);
  }

  return result;
}

uint64_t sub_23A9627F8(uint64_t a1)
{
  v1 = sub_23AA0BDE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_23A962990(v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v4, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v11 = *(v6 + 40);
    sub_23AA0D584();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_23A962990(uint64_t a1@<X8>)
{
  v3 = sub_23AA0BE34();
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23AA0BDE4();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_23AA0BDD4();
  swift_beginAccess();
  v8 = *(v1 + 48);
  if (v8 >> 62)
  {
LABEL_20:
    v9 = sub_23AA0D7F4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v42 = v8 & 0xFFFFFFFFFFFFFF8;
    v43 = v8 & 0xC000000000000001;
    v40 = (v5 + 8);
    v41 = "";
    v39 = xmmword_23AA15450;
    v38 = v9;
    while (1)
    {
      if (v43)
      {
        v13 = MEMORY[0x23EE90360](v10, v8);
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v10 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v13 = *(v8 + 8 * v10 + 32);

        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_17;
        }
      }

      v47 = v14;
      v15 = v7;
      v49 = sub_23AA0C074();
      v50 = v16;
      sub_23A92F104();
      v17 = sub_23AA0D6F4();

      v18 = *(v17 + 16);
      if (!v18)
      {
        break;
      }

      v19 = (v17 + 32 * v18);
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];

      v24 = MEMORY[0x23EE8FC60](v20, v21, v23, v22);
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
      v27 = swift_allocObject();
      *(v27 + 16) = v39;
      v28 = *(v13 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_dimensions);
      v29 = MEMORY[0x277D83A90];
      *(v27 + 56) = MEMORY[0x277D83A90];
      v30 = MEMORY[0x277D83B08];
      *(v27 + 64) = MEMORY[0x277D83B08];
      *(v27 + 32) = v28;
      *(v27 + 72) = DWORD1(v28);
      *(v27 + 96) = v29;
      *(v27 + 104) = v30;
      *(v27 + 136) = v29;
      *(v27 + 144) = v30;
      *(v27 + 112) = DWORD2(v28);
      v31 = sub_23AA0D164();
      v33 = v32;
      v49 = 0;
      v50 = 0xE000000000000000;
      MEMORY[0x23EE8FCA0](v24, v26);

      MEMORY[0x23EE8FCA0](8250, 0xE200000000000000);
      v48 = *(v13 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_category);
      sub_23AA0D994();
      MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
      MEMORY[0x23EE8FCA0](v31, v33);

      MEMORY[0x23EE8FCA0](10272, 0xE200000000000000);
      v34 = OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state;
      v48 = *(v13 + OBJC_IVAR____TtCC8RoomPlan12IULogManagerP33_73A47EC0F8301663A69AEEEA37682C8C10IULogEntry_state);
      sub_23AA0D994();
      MEMORY[0x23EE8FCA0](2601, 0xE200000000000000);
      sub_23AA0BE24();
      v7 = v15;
      sub_23AA0BDF4();
      v35 = *(v13 + v34);
      v36 = objc_opt_self();
      if (v35)
      {
        if (v35 == 1)
        {
          v11 = [v36 systemBlueColor];
        }

        else
        {
          v11 = [v36 systemRedColor];
        }
      }

      else
      {
        v11 = [v36 systemGreenColor];
      }

      v49 = v11;
      sub_23A9633E8();
      sub_23AA0BE04();
      v12 = v38;
      v5 = v47;
      sub_23AA0BDC4();

      (*v40)(v15, v44);
      ++v10;
      if (v5 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_23A962E60()
{
  sub_23A8E9694(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IULogManager.IULogEntry(uint64_t a1)
{
  result = qword_27DFAFB88;
  if (!qword_27DFAFB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A962F20(uint64_t a1)
{
  result = sub_23AA0C0E4();
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

uint64_t getEnumTagSinglePayload for CapturedRoom.Section.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapturedRoom.Section.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A963144()
{
  result = qword_27DFAFB98;
  if (!qword_27DFAFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFB98);
  }

  return result;
}

unint64_t sub_23A96319C()
{
  result = qword_27DFAFBA0;
  if (!qword_27DFAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBA0);
  }

  return result;
}

unint64_t sub_23A9631F4()
{
  result = qword_27DFAFBA8;
  if (!qword_27DFAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBA8);
  }

  return result;
}

unint64_t sub_23A96324C()
{
  result = qword_27DFAFBB0;
  if (!qword_27DFAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBB0);
  }

  return result;
}

unint64_t sub_23A9632A4()
{
  result = qword_27DFAFBB8;
  if (!qword_27DFAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBB8);
  }

  return result;
}

unint64_t sub_23A9632FC()
{
  result = qword_27DFAFBC0;
  if (!qword_27DFAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBC0);
  }

  return result;
}

unint64_t sub_23A963350(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A96339C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A9633E8()
{
  result = qword_27DFAFBC8;
  if (!qword_27DFAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBC8);
  }

  return result;
}

uint64_t sub_23A96343C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_23A963494()
{
  result = qword_27DFB1170;
  if (!qword_27DFB1170)
  {
    sub_23AA0CEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1170);
  }

  return result;
}

unint64_t sub_23A9634EC()
{
  result = qword_27DFB1180;
  if (!qword_27DFB1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFB58, &unk_23AA15810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1180);
  }

  return result;
}

double sub_23A963554()
{
  result = 0.00000343322835;
  switch(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category))
  {
    case 1:
      if (*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions + 8) <= 0.0)
      {
        result = 0.000488281365;
      }

      else
      {
        result = 0.000000119209317;
      }

      break;
    case 2:
      result = 0.0000000134110482;
      break;
    case 3:
      result = 0.0000000134110482;
      break;
    case 4:
      result = 0.0000976562874;
      break;
    case 5:
      result = 0.000878906456;
      break;
    case 6:
      *&result = 1065353216;
      break;
    case 7:
      result = 0.0078125;
      break;
    case 8:
      result = 0.00781250185;
      break;
    case 9:
      result = 0.0078125;
      break;
    case 0xA:
      *&result = 1065353216;
      break;
    case 0xB:
      *&result = 1056964608;
      break;
    case 0xC:
      result = 0.00781250184;
      break;
    case 0xD:
      result = 0.0000305175781;
      break;
    case 0xE:
      *&result = 1056964608;
      break;
    case 0xF:
      result = 0.000000381469873;
      break;
    case 0x10:
      result = 0.0000305175853;
      break;
    case 0x11:
      result = 0.0000305175853;
      break;
    case 0x12:
      result = 5.23869072e-11;
      break;
    case 0x13:
      result = 0.000292968761;
      break;
    case 0x14:
      result = 0.0000305175781;
      break;
    case 0x15:
      result = 0.0;
      break;
    default:
      return result;
  }

  return result;
}

double sub_23A96371C()
{
  type metadata accessor for TrajectoryManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_23AA15940;
  *(v0 + 96) = xmmword_23AA12220;
  *(v0 + 112) = xmmword_23AA12210;
  *(v0 + 128) = xmmword_23AA12200;
  *&result = 3212836864;
  *(v0 + 144) = xmmword_23AA12230;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  qword_27DFC0730 = v0;
  return result;
}

void sub_23A9637AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_23A965064(v1, v2);
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  swift_beginAccess();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 56) = v3;

  swift_beginAccess();
  *(v0 + 64) = v3;

  swift_beginAccess();
  *(v0 + 72) = v3;

  *(v0 + 80) = 0;
}

void sub_23A963878(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D604();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 currentFrame];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 camera];
    sub_23AA0D614();
    v11 = sub_23AA0D5F4();
    if ((*(*(v11 - 8) + 48))(v7, 2, v11) == 2)
    {
      sub_23A965008(v7);
      v12 = sub_23A963C1C(v9, a1);
      if (v12)
      {
        v13 = *(v1 + 16);
        v14 = *(v2 + 24);
        *(v2 + 16) = v12;
        *(v2 + 24) = v10;
        v15 = v12;
        v16 = v10;
        sub_23A965064(v13, v14);
        sub_23A963AC4(v9, [v9 deviceOrientation]);
        sub_23A964544(v15);
        sub_23A963EB8(v15);

        return;
      }
    }

    else
    {

      sub_23A965008(v7);
    }

    v17 = *(v1 + 16);
    v18 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    sub_23A965064(v17, v18);
  }
}

double sub_23A963A24()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    return *(v0 + 160);
  }

  result = 1.0995119e12;
  *(v0 + 160) = xmmword_23AA15950;
  *(v0 + 176) = 0;
  return result;
}

double sub_23A963A50()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1[1].i64[0];
  if (v2)
  {
    v3 = v1 + 2;
    v4 = 0uLL;
    do
    {
      v5 = *v3++;
      v4 = vaddq_f32(v4, v5);
      v4.i32[3] = 0;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 0uLL;
  }

  v8 = v4;
  *v6.i64 = sub_23A963A24();
  *&result = vdivq_f32(v8, v6).u64[0];
  return result;
}

double sub_23A963AC4(void *a1, uint64_t a2)
{
  v5 = [a1 camera];
  [v5 transform];
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;

  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      *(v2 + 32) = 1;
      v14 = xmmword_23AA15970;
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          *(v2 + 32) = 3;
        }

        return *v16.i64;
      }

      *(v2 + 32) = 2;
      v14 = xmmword_23AA15960;
    }

LABEL_13:
    *v15.i64 = MEMORY[0x23EE8FF50](v14, v10, v11, v12);
    *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2), v19, v15, 3).u64[0];
    return result;
  }

  if ((a2 - 5) < 2)
  {
    return sub_23A963AC4(a1, *(v2 + 32));
  }

  v11 = v18;
  v12 = v19;
  result = *v16.i64;
  v10 = v17;
  if (a2 == 4)
  {
    *(v2 + 32) = 4;
    v14 = xmmword_23AA15980;
    goto LABEL_13;
  }

  return result;
}

void *sub_23A963C1C(void *a1, void *a2)
{
  sub_23A963AC4(a1, [a1 deviceOrientation]);
  *&v5 = vnegq_f32(v4).u64[0];
  v7 = [objc_allocWithZone(MEMORY[0x277CE5330]) initWithOrigin:*(v2 + 80) direction:2 allowingTarget:v6 alignment:v5];
  v8 = [a2 raycast_];
  sub_23A8D6C58(0, &qword_27DFAFBE0, 0x277CE5338);
  v9 = sub_23AA0D2F4();

  if (v9 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v13 = MEMORY[0x23EE90360](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (![v13 target])
      {
LABEL_20:

        return v14;
      }

      ++v11;
    }

    while (v15 != i);
    v16 = 0;
    while (1)
    {
      if (v12)
      {
        v17 = MEMORY[0x23EE90360](v16, v9);
      }

      else
      {
        if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v17 = *(v9 + 8 * v16 + 32);
      }

      v14 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v17 target] == 2)
      {
        goto LABEL_20;
      }

      ++v16;
      if (v18 == i)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  return 0;
}

double sub_23A963E38()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = v2[1].u64[0];
  if (v3)
  {
    v4 = v2 + 2;
    v5 = 0uLL;
    v6 = v3;
    do
    {
      v7 = *v4++;
      v5 = vaddq_f32(v5, v7);
      v5.i32[3] = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0uLL;
  }

  *v1.i32 = v3;
  *&result = vdivq_f32(v5, vdupq_lane_s32(v1, 0)).u64[0];
  return result;
}

id sub_23A963EB8(void *x0_0)
{
  [x0_0 worldTransform];
  *v3.i64 = simd_quaternion(v25);
  v24 = v3;
  v4 = [x0_0 anchor];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 alignment];
      sub_23A964FBC(&unk_284D81558);
      v8 = vmulq_f32(v24, xmmword_23AA15990);
      v9 = vnegq_f32(v8);
      v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
      v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
      v13 = vrev64q_s32(v8);
      v13.i32[0] = v9.i32[1];
      v13.i32[3] = v9.i32[2];
      v14 = vmlaq_laneq_f32(v12, v13, v11, 2);
      v15 = vnegq_f32(v14);
      v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
      v17 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *v24.f32, 1), vextq_s8(v16, v16, 8uLL), v24.f32[0]);
      v18 = vrev64q_s32(v14);
      v18.i32[0] = v15.i32[1];
      v18.i32[3] = v15.i32[2];
      if (COERCE_FLOAT(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*&v14, v24, 3), v18, v24, 2), v17).i32[1]) < -0.9)
      {
        sub_23A964FBC(&unk_284D81588);
      }

      goto LABEL_11;
    }
  }

  if ([x0_0 targetAlignment])
  {
    result = [x0_0 targetAlignment];
    if (result != 1)
    {
      return result;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  swift_beginAccess();
  v20 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 48) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_23A939E68(0, *(v20 + 2) + 1, 1, v20);
    *(v1 + 48) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_23A939E68((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  *&v20[8 * v23 + 32] = v7;
  *(v1 + 48) = v20;
  return swift_endAccess();
}

uint64_t sub_23A9640C4()
{
  sub_23A965064(v0[2], v0[3]);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8RoomPlan23TrajectoryTrackingState33_C7479347390EEAE478812E121560607BLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23A964160(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A9641B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_23A964204(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_23A964248()
{
  result = qword_27DFAFBD0;
  if (!qword_27DFAFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFBD0);
  }

  return result;
}

double sub_23A96429C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 3;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_23AA15940;
  *(v0 + 96) = xmmword_23AA12220;
  *(v0 + 112) = xmmword_23AA12210;
  *(v0 + 128) = xmmword_23AA12200;
  *&result = 3212836864;
  *(v0 + 144) = xmmword_23AA12230;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  return result;
}

uint64_t sub_23A964308(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23A9F5738();

    MEMORY[0x23EE90350](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_23AA0D7F4();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_23A9643A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

BOOL sub_23A964474(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  if ((sub_23AA0D634() & 1) == 0)
  {
    return 0;
  }

  if (!a2)
  {
    return !a4;
  }

  if (a4)
  {
    sub_23A8D6C58(0, &qword_27DFAFBD8, 0x277CE5238);
    v6 = a4;
    v7 = a2;
    v8 = sub_23AA0D634();

    if (v8)
    {
      return 1;
    }
  }

  return 0;
}

void sub_23A964544(void *a1)
{
  v2 = sub_23AA0C0E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v88.i64[0] = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v5);
  v7 = &v87 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v87 - v16;
  v89[0] = a1;
  v18 = [a1 anchor];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 identifier];

    sub_23AA0C0A4();
    v21 = *(v3 + 56);
    v21(v17, 0, 1, v2);
  }

  else
  {
    v21 = *(v3 + 56);
    v21(v17, 1, 1, v2);
  }

  v22 = *(v90 + 184);
  if (v22)
  {
    v23 = [v22 &selRef_window];
    sub_23AA0C0A4();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v21(v13, v24, 1, v2);
  v25 = *(v5 + 48);
  sub_23A8EA9A4(v17, v7);
  sub_23A8EA9A4(v13, &v7[v25]);
  v26 = *(v3 + 48);
  v27 = v26(v7, 1, v2);
  v28 = v90;
  if (v27 == 1)
  {
    sub_23A8D50D0(v13, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
    if (v26(&v7[v25], 1, v2) == 1)
    {
      sub_23A8D50D0(v7, &unk_27DFB0970, &qword_23AA14E00);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_23A8EA9A4(v7, v10);
  if (v26(&v7[v25], 1, v2) == 1)
  {
    sub_23A8D50D0(v13, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
    (*(v3 + 8))(v10, v2);
LABEL_12:
    sub_23A8D50D0(v7, &qword_27DFAEC28, &unk_23AA1AA40);
LABEL_13:
    swift_beginAccess();
    v29 = MEMORY[0x277D84F90];
    *(v28 + 56) = MEMORY[0x277D84F90];

    swift_beginAccess();
    *(v28 + 64) = v29;

    swift_beginAccess();
    *(v28 + 72) = v29;

    v30 = [v89[0] anchor];
    v31 = *(v28 + 184);
    *(v28 + 184) = v30;

    return;
  }

  v32 = &v7[v25];
  v33 = v88.i64[0];
  (*(v3 + 32))(v88.i64[0], v32, v2);
  sub_23A8DE390();
  LODWORD(v87) = sub_23AA0D084();
  v34 = *(v3 + 8);
  v34(v33, v2);
  sub_23A8D50D0(v13, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v17, &unk_27DFB0970, &qword_23AA14E00);
  v34(v10, v2);
  sub_23A8D50D0(v7, &unk_27DFB0970, &qword_23AA14E00);
  if ((v87 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  [v89[0] localTransform];
  *v89 = v35;
  swift_beginAccess();
  v36 = *(v28 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 64) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_23A9388A8(0, *(v36 + 2) + 1, 1, v36);
    *(v28 + 64) = v36;
  }

  v38 = *v89;
  HIDWORD(v38) = 0;
  v40 = *(v36 + 2);
  v39 = *(v36 + 3);
  v41 = v40 + 1;
  if (v40 >= v39 >> 1)
  {
    *v89 = v38;
    v84 = sub_23A9388A8((v39 > 1), v40 + 1, 1, v36);
    v38 = *v89;
    v36 = v84;
  }

  *(v36 + 2) = v41;
  *&v36[16 * v40 + 32] = v38;
  *(v28 + 64) = v36;
  if (v40 > 0x3B)
  {
    sub_23A9643A4(v36, (v36 + 32), v40 - 59, (2 * v41) | 1);
  }

  else
  {
  }

  *(v28 + 64) = v42;
  swift_endAccess();

  *&v43 = sub_23A963E38();
  *v89 = v43;
  swift_beginAccess();
  v44 = *(v28 + 72);
  v45 = *(v44 + 2);
  v46 = *v89;
  if (v45)
  {
    v46 = *&v44[16 * v45 + 16];
  }

  v88 = v46;
  swift_beginAccess();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 72) = v44;
  if ((v47 & 1) == 0)
  {
    v44 = sub_23A9388A8(0, v45 + 1, 1, v44);
    *(v28 + 72) = v44;
  }

  v49 = *(v44 + 2);
  v48 = *(v44 + 3);
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
    v44 = sub_23A9388A8((v48 > 1), v49 + 1, 1, v44);
  }

  *(v44 + 2) = v50;
  *&v44[16 * v49 + 32] = *v89;
  *(v28 + 72) = v44;
  if (v49 > 0x3B)
  {
    sub_23A9643A4(v44, (v44 + 32), v49 - 59, (2 * v50) | 1);
  }

  else
  {
  }

  *(v28 + 72) = v51;
  swift_endAccess();

  v52 = vsubq_f32(*v89, v88);
  v52.i32[3] = 0;
  *v89 = v52;
  v88 = *(v28 + 128);
  sub_23AA0DCB4();
  v54 = v53;
  sub_23AA0DCB4();
  v56 = v55;
  v87 = *(v28 + 96);
  sub_23AA0DCB4();
  v58 = v57;
  sub_23AA0DCB4();
  v60 = v59;
  sub_23AA0DCB4();
  v62 = v61;
  sub_23AA0DCB4();
  v64 = v63;
  if (v60 >= v58)
  {
    v65 = v58;
  }

  else
  {
    v65 = v60;
  }

  if (v56 >= v54)
  {
    v66 = v54;
  }

  else
  {
    v66 = v56;
  }

  if (v66 < v65)
  {
    v65 = v66;
  }

  if (v64 >= v62)
  {
    v67 = v62;
  }

  else
  {
    v67 = v64;
  }

  if (v67 >= v65)
  {
    v68 = v65;
  }

  else
  {
    v68 = v67;
  }

  swift_beginAccess();
  v69 = *(v28 + 56);
  v70 = *(v69 + 2);
  v71 = v88;
  if (v70)
  {
    v71 = *&v69[16 * v70 + 16];
  }

  if (v68 == v54)
  {
    *v89 = *(v28 + 144);
    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 56) = v69;
    if ((v72 & 1) == 0)
    {
      v69 = sub_23A9388A8(0, v70 + 1, 1, v69);
      *(v28 + 56) = v69;
    }

    v74 = *(v69 + 2);
    v73 = *(v69 + 3);
    if (v74 >= v73 >> 1)
    {
      v69 = sub_23A9388A8((v73 > 1), v74 + 1, 1, v69);
    }

    *(v69 + 2) = v74 + 1;
    v75 = &v69[16 * v74];
    v76 = *v89;
LABEL_66:
    v75[2] = v76;
    *(v28 + 56) = v69;
    swift_endAccess();
    goto LABEL_67;
  }

  if (v68 == v56)
  {
    swift_beginAccess();
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 56) = v69;
    if ((v77 & 1) == 0)
    {
      v69 = sub_23A9388A8(0, v70 + 1, 1, v69);
      *(v28 + 56) = v69;
    }

    v79 = *(v69 + 2);
    v78 = *(v69 + 3);
    if (v79 >= v78 >> 1)
    {
      v69 = sub_23A9388A8((v78 > 1), v79 + 1, 1, v69);
    }

    *(v69 + 2) = v79 + 1;
    v75 = &v69[16 * v79];
    v76 = v88;
    goto LABEL_66;
  }

  *v89 = v71;
  if (v68 == v58 || v68 == v60 || v68 == v62 || v68 == v64)
  {
    swift_beginAccess();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 56) = v69;
    if ((v80 & 1) == 0)
    {
      v69 = sub_23A9388A8(0, v70 + 1, 1, v69);
      *(v28 + 56) = v69;
    }

    v76 = *v89;
    v82 = *(v69 + 2);
    v81 = *(v69 + 3);
    if (v82 >= v81 >> 1)
    {
      v86 = sub_23A9388A8((v81 > 1), v82 + 1, 1, v69);
      v76 = *v89;
      v69 = v86;
    }

    *(v69 + 2) = v82 + 1;
    v75 = &v69[16 * v82];
    goto LABEL_66;
  }

LABEL_67:
  v83 = *(v69 + 2);
  if (v83 > 0x3C)
  {
    sub_23A9643A4(v69, (v69 + 32), v83 - 60, (2 * v83) | 1);
    v69 = v85;
  }

  else
  {
  }

  *(v28 + 56) = v69;
}

uint64_t sub_23A964FBC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A965008(uint64_t a1)
{
  v2 = sub_23AA0D604();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A965064(void *a1, void *a2)
{
  if (a1)
  {
  }
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A9650B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_23A965100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23A965154(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = sub_23A9BAF1C(a1, 0.001);

  *a3 = v5;
  *(a3 + 8) = v4;
  v6 = *(v5 + 2);
  if (v6 < 2)
  {
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
  }

  else
  {

    v7 = v6 - 1;
    v8 = (v5 + 48);
    v9 = MEMORY[0x277D84F90];
    v10 = 0.0;
    do
    {
      v17 = *v8;
      v18 = v8[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_23A93964C(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_23A93964C((v11 > 1), v12 + 1, 1, v9);
      }

      v13 = vsubq_f32(v18, v17);
      v14 = vmulq_f32(v13, v13);
      v14.f32[0] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
      *(v9 + 2) = v12 + 1;
      *&v9[4 * v12 + 32] = v14.i32[0];
      v10 = v10 + v14.f32[0];
      ++v8;
      --v7;
    }

    while (v7);
  }

  *(a3 + 16) = v9;
  *(a3 + 32) = v10;

  v16 = sub_23A965A80(v15, v10);

  *(a3 + 24) = v16;
}

void sub_23A9652D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_23AA0CE84();
  MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v5);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = v2[2];
  v12 = v2[3];
  LODWORD(v13) = *(v2 + 8);
  v61 = a1;
  v14 = *(a1 + 16);
  if (v14 < 3 || !*(v12 + 16))
  {
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;

    return;
  }

  v49 = &v47 - v7;
  HIDWORD(v47) = v10;
  v58 = v8;
  v52 = v11;
  v48 = a2;
  v15 = 0;
  v16 = v12 + 32;
  v17 = *(v12 + 32);
  v54 = (v6 + 8);
  v59 = v9 + 32;
  v18 = MEMORY[0x277D84F90];
  v19 = 32;
  *&v13 = 136315394;
  v51 = v13;
  v57 = v9;
  v55 = v12 + 32;
  v50 = v12;
  while (1)
  {
    v29 = *(v61 + v19);
    if (vabds_f32(v17, v29) < 0.0001)
    {
      break;
    }

    if (v29 >= v17)
    {
      sub_23A8D4E5C();
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v9 = v57;

      v41 = sub_23AA0CE54();
      v42 = sub_23AA0D494();

      if (!os_log_type_enabled(v41, v42))
      {

        (*v54)(v58, v56);
LABEL_34:
        v16 = v55;
        goto LABEL_5;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62 = v21;
      *v20 = v51;
      v22 = MEMORY[0x23EE8FDA0](v12, MEMORY[0x277D83A90]);
      v24 = sub_23A9A65A4(v22, v23, &v62);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = MEMORY[0x23EE8FDA0](v61, MEMORY[0x277D83A90]);
      v27 = sub_23A9A65A4(v25, v26, &v62);

      *(v20 + 14) = v27;
      v16 = v55;
      _os_log_impl(&dword_23A8B4000, v41, v42, "Unexpected interpolated value when trying to interpolate edge (inputPercentages: %s, interpolatedPercentages: %s)", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE91710](v21, -1, -1);
      v28 = v20;
      v9 = v57;
      MEMORY[0x23EE91710](v28, -1, -1);

      (*v54)(v58, v56);
      v12 = v50;
    }

    else
    {
      if (v15 <= 0)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v43 = v49;
        sub_23AA0CE94();
        v44 = sub_23AA0CE54();
        v45 = sub_23AA0D494();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_23A8B4000, v44, v45, "Unexpected input index when trying to interpolate edge", v46, 2u);
          MEMORY[0x23EE91710](v46, -1, -1);
        }

        (*v54)(v43, v56);
        v9 = v57;
        goto LABEL_34;
      }

      if (v15 > *(v12 + 16))
      {
        goto LABEL_41;
      }

      v32 = v15 - 1;
      v33 = *(v9 + 16);
      if (v15 > v33)
      {
        goto LABEL_42;
      }

      if (v15 >= v33)
      {
        goto LABEL_43;
      }

      v34 = *(v16 + 4 * v32);
      v60 = *(v59 + 16 * v32);
      v53 = *(v59 + 16 * v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23A9388A8(0, *(v18 + 2) + 1, 1, v18);
      }

      v36 = *(v18 + 2);
      v35 = *(v18 + 3);
      if (v36 >= v35 >> 1)
      {
        v18 = sub_23A9388A8((v35 > 1), v36 + 1, 1, v18);
      }

      v37 = (v29 - v34) / (v17 - v34);
      v38 = vsubq_f32(v53, v60);
      v39 = vmuls_lane_f32(v37, v38, 2);
      *&v40 = vaddq_f32(v60, vmulq_n_f32(v38, v37)).u64[0];
      *(&v40 + 2) = v60.f32[2] + v39;
      HIDWORD(v40) = 0;
      *(v18 + 2) = v36 + 1;
      *&v18[16 * v36 + 32] = v40;
    }

LABEL_5:
    v19 += 4;
    if (!--v14)
    {
      goto LABEL_38;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >= *(v9 + 16))
    {
      goto LABEL_40;
    }

    v60 = *(v59 + 16 * v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_23A9388A8(0, *(v18 + 2) + 1, 1, v18);
    }

    v31 = *(v18 + 2);
    v30 = *(v18 + 3);
    if (v31 >= v30 >> 1)
    {
      v18 = sub_23A9388A8((v30 > 1), v31 + 1, 1, v18);
    }

    *(v18 + 2) = v31 + 1;
    *&v18[16 * v31 + 32] = v60;
    if (++v15 >= *(v12 + 16))
    {
LABEL_38:
      v63[0] = BYTE4(v47);
      sub_23A965154(v18, v63, v48);
      return;
    }

    v17 = *(v16 + 4 * v15);
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_23A9659DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_23A946B38(*a1, *a2);
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    if (sub_23A946BB8(v4, v8))
    {
      return sub_23A946BB8(v3, v7) & (v5 == v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_23A965A80(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_23A93964C(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_23A93964C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[4 * v7 + 32] = 0;
  v8 = (a1 + 32);
  v9 = v7 + 9;
  v10 = 0.0;
  do
  {
    v11 = *v8;
    v12 = *(v5 + 3);
    if (v9 - 8 >= v12 >> 1)
    {
      v5 = sub_23A93964C((v12 > 1), v9 - 7, 1, v5);
    }

    v10 = v10 + v11;
    *(v5 + 2) = v9 - 7;
    *&v5[4 * v9++] = v10 / a2;
    ++v8;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t sub_23A965BAC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  v2 = sub_23AA0CD84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeshUpdateScanMaterial(uint64_t a1)
{
  result = qword_27DFAFBF0;
  if (!qword_27DFAFBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A965CAC(uint64_t a1)
{
  result = sub_23AA0CD84();
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

uint64_t sub_23A965D54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_23AA0CD84();
  v5 = MEMORY[0x277CDB298];
  a1[3] = v4;
  a1[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
  swift_beginAccess();
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3 + v7, v4);
}

void sub_23A965E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_paramTexture))
  {
    sub_23A9C2F14(a2, a3);
  }
}

void sub_23A965E88(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v4, 0);
    v7 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;
      a1(&v14, &v13);
      if (v3)
      {
        break;
      }

      v9 = v14;
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v14;
        sub_23A975DC0((v10 > 1), v11 + 1, 1);
        v9 = v12;
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 16 * v11 + 32) = v9;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_23A965F9C(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), __n128 a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v13[2] = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EE90360](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(a4 + 8 * j + 32);
      }

      v12 = v10;
      (a1)(v13, &v12);
      if (v5)
      {
        goto LABEL_18;
      }

      v5 = 0;

      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v9 == i)
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

void sub_23A966148(void *(*a1)(uint64_t *__return_ptr, uint64_t), __n128 a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = v5;
  v8 = *(a4 + 16);
  if (v8)
  {
    v14[2] = MEMORY[0x277D84F90];
    sub_23AA0D964();
    v11 = *(a5(0) - 8);
    v12 = a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      a1(v14, v12);
      if (v6)
      {
        break;
      }

      v6 = 0;
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      v12 += v13;
      if (!--v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

BOOL static CapturedRoom.Surface.Category.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 5)
      {
LABEL_10:
        if ((v3 - 2) >= 4u)
        {
          return (v3 ^ v2 ^ 1) & 1;
        }

        return 0;
      }

      if (v3 != 5)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    goto LABEL_10;
  }

  return v3 == 3;
}

void sub_23A96634C(char **a1, float32x4_t a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A975D8C(v3);
  }

  v4 = *(v3 + 2);
  v23[0] = (v3 + 32);
  v23[1] = v4;
  v5 = sub_23AA0DBA4();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = v3 + 48;
      v10 = -1;
      for (i = 1; i != v4; ++i)
      {
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 + 1);
          v15 = vmulq_f32(v14, a2);
          v16 = vmulq_f32(*(v12 - 1), a2);
          *v16.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v15.i8), vzip2_s32(*v16.i8, *v15.i8)));
          if ((vcgt_f32(vdup_lane_s32(*v16.i8, 1), *v16.i8).u8[0] & 1) == 0)
          {
            break;
          }

          v17 = v12[32];
          v18 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v18;
          *(v12 - 1) = v14;
          *v12 = v17;
          v12 -= 32;
        }

        while (!__CFADD__(v13++, 1));
        --v10;
        v9 += 32;
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    if (v4 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0528, &qword_23AA18B78);
      v8 = sub_23AA0D324();
      v8[1].i64[0] = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v21[0] = v8 + 2;
    v21[1] = v7;
    sub_23A9774EC(v21, a2, v22, v23, v6);
    v8[1].i64[0] = 0;
  }

  *a1 = v3;
}

uint64_t CapturedRoom.Section.Label.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F52676E6976696CLL;
  v3 = 0x6E65686374696BLL;
  v4 = 0x6F52676E696E6964;
  if (v1 != 4)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D6F6F72646562;
  if (v1 != 1)
  {
    v5 = 0x6D6F6F7268746162;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t CapturedRoom.Object.Category.supportedAttributeTypes.getter()
{
  v1 = *v0;
  result = MEMORY[0x277D84F90];
  if (v1 <= 9)
  {
    if (v1 - 1 < 9)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23AA10FC0;
    v4 = sub_23A966750();
    result = v3;
    v5 = &type metadata for StorageType;
    goto LABEL_8;
  }

  if (*v0 > 0xCu)
  {
    return result;
  }

  if (v1 == 10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23AA11C10;
    v7 = sub_23A9667A4();
    *(v6 + 32) = &type metadata for TableType;
    *(v6 + 40) = v7;
    v8 = sub_23A9667F8();
    result = v6;
    *(v6 + 48) = &type metadata for TableShapeType;
    *(v6 + 56) = v8;
  }

  else
  {
    if (v1 == 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_23AA10FC0;
      v4 = sub_23A96684C();
      result = v3;
      v5 = &type metadata for SofaType;
LABEL_8:
      *(v3 + 32) = v5;
      *(v3 + 40) = v4;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC00, &qword_23AA15C30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23AA11C20;
    v10 = sub_23A9668A0();
    *(v9 + 32) = &type metadata for ChairType;
    *(v9 + 40) = v10;
    v11 = sub_23A9668F4();
    *(v9 + 48) = &type metadata for ChairBackType;
    *(v9 + 56) = v11;
    v12 = sub_23A966948();
    *(v9 + 64) = &type metadata for ChairLegType;
    *(v9 + 72) = v12;
    v13 = sub_23A96699C();
    result = v9;
    *(v9 + 80) = &type metadata for ChairArmType;
    *(v9 + 88) = v13;
  }

  return result;
}

unint64_t sub_23A966750()
{
  result = qword_27DFAFC08;
  if (!qword_27DFAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC08);
  }

  return result;
}

unint64_t sub_23A9667A4()
{
  result = qword_27DFAFC10;
  if (!qword_27DFAFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC10);
  }

  return result;
}

unint64_t sub_23A9667F8()
{
  result = qword_27DFB0A00;
  if (!qword_27DFB0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A00);
  }

  return result;
}

unint64_t sub_23A96684C()
{
  result = qword_27DFB09F0;
  if (!qword_27DFB09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09F0);
  }

  return result;
}

unint64_t sub_23A9668A0()
{
  result = qword_27DFAFC18;
  if (!qword_27DFAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC18);
  }

  return result;
}

unint64_t sub_23A9668F4()
{
  result = qword_27DFAFC20;
  if (!qword_27DFAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC20);
  }

  return result;
}

unint64_t sub_23A966948()
{
  result = qword_27DFAFC28;
  if (!qword_27DFAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC28);
  }

  return result;
}

unint64_t sub_23A96699C()
{
  result = qword_27DFB09E0;
  if (!qword_27DFB09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09E0);
  }

  return result;
}

uint64_t sub_23A9669F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65646F4D65726F63;
    v7 = 0x79726F7473;
    if (a1 != 10)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x737463656A626FLL;
    v9 = 0x6E6F6973726576;
    if (a1 != 7)
    {
      v9 = 0x736E6F6974636573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736D6F6F72;
    v2 = 0x73776F646E6977;
    v3 = 0x73676E696E65706FLL;
    if (a1 != 4)
    {
      v3 = 0x73726F6F6C66;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x736C6C6177;
    if (a1 != 1)
    {
      v4 = 0x73726F6F64;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_23A966BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A97D95C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23A966BF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A9669F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23A966C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97D95C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A966C70(uint64_t a1)
{
  v2 = sub_23A96806C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A966CAC(uint64_t a1)
{
  v2 = sub_23A96806C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23A966CE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = v5;
  type metadata accessor for USDModel();
  inited = swift_initStackObject();
  v14 = MEMORY[0x277D84F98];
  inited[2] = MEMORY[0x277D84F98];
  inited[3] = 1633973109;
  inited[4] = 0xE400000000000000;
  inited[5] = v14;
  v26[3] = type metadata accessor for CapturedStructure(0);
  v26[4] = sub_23A969670(&qword_27DFB0578, type metadata accessor for CapturedStructure, &unk_23AA15F68);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_23A969D58(v7, boxed_opaque_existential_1, type metadata accessor for CapturedStructure);
  v25[0] = a3;
  v25[1] = a4;
  if (a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = 7;
  }

  sub_23A917634(v26, a1, a2, v25, &v24);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v26[0] = v6;
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    if (swift_dynamicCast())
    {
      v17 = v25[0];
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      LOBYTE(v26[0]) = v17;
      v18 = sub_23AA0D1A4();
      v20 = v19;
      v21 = type metadata accessor for CapturedStructure(0);
      sub_23A95E668(v18, v20, *(v7 + *(v21 + 52)));
    }

    else
    {
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for CapturedStructure(0);
      sub_23A95E668(0x73726568746FLL, 0xE600000000000000, *(v7 + *(v23 + 52)));
    }

    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    sub_23A95EB44();
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for CapturedStructure(0);
    sub_23A95E668(0x73736563637573, 0xE700000000000000, *(v7 + *(v22 + 52)));
    sub_23A95EB44();
  }

  swift_setDeallocating();
}

void sub_23A967070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = v5;
  type metadata accessor for USDModel();
  inited = swift_initStackObject();
  v14 = MEMORY[0x277D84F98];
  inited[2] = MEMORY[0x277D84F98];
  inited[3] = 1633973109;
  inited[4] = 0xE400000000000000;
  inited[5] = v14;
  v26[3] = type metadata accessor for CapturedRoom(0);
  v26[4] = sub_23A969670(&qword_27DFB0570, type metadata accessor for CapturedRoom, &unk_23AA167E8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_23A969D58(v7, boxed_opaque_existential_1, type metadata accessor for CapturedRoom);
  v25[0] = a3;
  v25[1] = a4;
  if (a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = 7;
  }

  sub_23A917634(v26, a1, a2, v25, &v24);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v26[0] = v6;
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    if (swift_dynamicCast())
    {
      v17 = v25[0];
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      LOBYTE(v26[0]) = v17;
      v18 = sub_23AA0D1A4();
      v20 = v19;
      v21 = type metadata accessor for CapturedRoom(0);
      sub_23A95E668(v18, v20, *(v7 + *(v21 + 52)));
    }

    else
    {
      if (qword_27DFAE480 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for CapturedRoom(0);
      sub_23A95E668(0x73726568746FLL, 0xE600000000000000, *(v7 + *(v23 + 52)));
    }

    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    sub_23A95EB44();
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    if (qword_27DFAE480 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for CapturedRoom(0);
    sub_23A95E668(0x73736563637573, 0xE700000000000000, *(v7 + *(v22 + 52)));
    sub_23A95EB44();
  }

  swift_setDeallocating();
}

uint64_t CapturedStructure.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for CapturedStructure(0) + 48);
  v5 = sub_23AA0C0E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

void CapturedStructure.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_23AA0D904();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC30, &qword_23AA15C38);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CapturedStructure(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  v12 = v27;
  sub_23AA0DD74();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v27 = v9;
    LOBYTE(v28) = 7;
    v13 = sub_23AA0DAE4();
    v14 = v6;
    v15 = *(v27 + 52);
    v20 = v13;
    *(v11 + v15) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC40, &unk_23AA15C40);
    LOBYTE(v29) = 0;
    sub_23A9680C0();
    sub_23AA0DAF4();
    v16 = v28;
    *v11 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
    LOBYTE(v29) = 1;
    sub_23A9695BC();
    sub_23AA0DAF4();
    v21 = v11;
    v11[1] = v28;
    LOBYTE(v29) = 2;
    sub_23AA0DAF4();
    v11[2] = v28;
    LOBYTE(v29) = 3;
    sub_23AA0DAF4();
    v11[3] = v28;
    LOBYTE(v29) = 4;
    sub_23AA0DAF4();
    v19 = 0;
    v11[4] = v28;
    if (v20 >= 2)
    {
      LOBYTE(v29) = 5;
      sub_23AA0DAF4();
      v20 = v16;
      v17 = v28;
    }

    else
    {
      v20 = v16;
      v17 = MEMORY[0x277D84F90];
    }

    v18 = v26;
    v11[6] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
    LOBYTE(v29) = 6;
    sub_23A9696D8();
    sub_23AA0DAF4();
    v11[5] = v28;
    sub_23AA0C0D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
    LOBYTE(v29) = 8;
    sub_23A9780EC(&qword_27DFAFC90, sub_23A9697AC, MEMORY[0x277D83978]);
    sub_23AA0DAF4();
    (*(v18 + 8))(v8, v14);
    v11[7] = v28;
    sub_23A969D58(v11, v22, type metadata accessor for CapturedStructure);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_23A969DC0(v11, type metadata accessor for CapturedStructure);
  }
}

unint64_t sub_23A96806C()
{
  result = qword_27DFAFC38;
  if (!qword_27DFAFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC38);
  }

  return result;
}

unint64_t sub_23A9680C0()
{
  result = qword_27DFAFC48;
  if (!qword_27DFAFC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC40, &unk_23AA15C40);
    sub_23A969670(&qword_27DFAFC50, type metadata accessor for CapturedRoom, &protocol conformance descriptor for CapturedRoom);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC48);
  }

  return result;
}

void CapturedRoom.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  *&v111 = sub_23AA0D904();
  *&v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  *&v108 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  *&v112 = v93 - v5;
  v105 = sub_23AA0D014();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_23AA0D184();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23AA0CFD4();
  v106 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v104 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CFF4();
  v107 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC30, &qword_23AA15C38);
  v114 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v93 - v13;
  v15 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v15);
  v17 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[*(v18 + 60)];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v115 = v19;
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  v20 = v117;
  sub_23AA0DD74();
  if (v20)
  {
    v117 = v20;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v116);
LABEL_6:
    sub_23A8D50D0(v115, &unk_27DFB1140, &qword_23AA19C10);
    return;
  }

  v21 = v15;
  v22 = v113;
  v97 = v11;
  v96 = v9;
  v98 = v17;
  LOBYTE(v121) = 7;
  v23 = sub_23AA0DAE4();
  v117 = 0;
  v24 = *(v21 + 52);
  v95 = v23;
  v25 = v98;
  *(v98 + v24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
  LOBYTE(v119) = 1;
  sub_23A9695BC();
  v26 = v117;
  sub_23AA0DAF4();
  if (v26)
  {
    v117 = v26;
    (*(v114 + 8))(v14, v12);
    goto LABEL_5;
  }

  *v25 = v121;
  LOBYTE(v119) = 2;
  sub_23AA0DAF4();
  v94 = v21;
  v25[1] = v121;
  LOBYTE(v119) = 3;
  sub_23AA0DAF4();
  v93[1] = 0;
  v25[2] = v121;
  LOBYTE(v119) = 4;
  sub_23AA0DAF4();
  v25[3] = v121;
  v27 = MEMORY[0x277D84F90];
  if (v95 >= 2)
  {
    LOBYTE(v119) = 5;
    sub_23AA0DAF4();
    v28 = v121;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = v98;
  v98[4] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
  LOBYTE(v119) = 6;
  sub_23A9696D8();
  sub_23AA0DAF4();
  v117 = 0;
  v30 = v112;
  *(v29 + 40) = v121;
  v31 = v27;
  v32 = v94;
  *(v29 + v94[14]) = v31;
  sub_23AA0C0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
  LOBYTE(v119) = 8;
  sub_23A9780EC(&qword_27DFAFC90, sub_23A9697AC, MEMORY[0x277D83978]);
  v33 = v117;
  sub_23AA0DAF4();
  if (!v33)
  {
    *(v29 + v32[11]) = v121;
    goto LABEL_15;
  }

  *&v121 = v33;
  v117 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
  v35 = v111;
  v36 = swift_dynamicCast();
  v37 = v110;
  if ((v36 & 1) == 0)
  {
    (*(v114 + 8))(v14, v12);
LABEL_18:

    __swift_destroy_boxed_opaque_existential_1(v116);

    v41 = v94;

    v42 = v41[10];
    v43 = sub_23AA0C0E4();
    (*(*(v43 - 8) + 8))(v29 + v42, v43);

    goto LABEL_6;
  }

  if ((*(v110 + 88))(v30, v35) != *MEMORY[0x277D84158])
  {
    (*(v114 + 8))(v14, v12);
    (*(v37 + 8))(v30, v35);
    goto LABEL_18;
  }

  (*(v37 + 96))(v30, v35);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D0, &unk_23AA13060) + 48);
  *(v29 + v32[11]) = MEMORY[0x277D84F90];
  v39 = sub_23AA0D8F4();
  (*(*(v39 - 8) + 8))(&v30[v38], v39);
  __swift_destroy_boxed_opaque_existential_1(v30);

LABEL_15:
  v40 = v32[12];
  LOBYTE(v121) = 10;
  *(v29 + v40) = sub_23AA0DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
  LOBYTE(v119) = 11;
  sub_23A9781B8(&qword_27DFAFCA0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_23AA0DAF4();
  v117 = 0;
  sub_23A969E20(v121);
  v112 = v44;
  v111 = v45;
  v110 = v46;
  v108 = v47;

  v48 = (v29 + v32[16]);
  v49 = v111;
  *v48 = v112;
  v48[1] = v49;
  v50 = v108;
  v48[2] = v110;
  v48[3] = v50;
  v51 = sub_23AA0D104();
  v52 = MGCopyAnswer();

  if (!v52)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_unknownObjectRetain();
  *&v121 = v52;
  v53 = swift_dynamicCast();
  v54 = v109;
  if ((v53 & 1) == 0 || v119 != 1)
  {
    (*(v114 + 8))(v14, v12);
LABEL_33:
    sub_23A969D58(v29, v54, type metadata accessor for CapturedRoom);
    __swift_destroy_boxed_opaque_existential_1(v116);
    sub_23A969DC0(v29, type metadata accessor for CapturedRoom);
    return;
  }

  LOBYTE(v119) = 9;
  sub_23A9347CC();
  *&v112 = v12;
  *&v111 = v14;
  v55 = v117;
  sub_23AA0DAA4();
  v117 = v55;
  if (v55)
  {
    v56 = v117;
LABEL_24:
    v117 = 0;
    v57 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
    if (v57)
    {
      v58 = v57;
      *(&v122 + 1) = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);

      *&v121 = v58;
      (*(v114 + 8))(v111, v112);
    }

    else
    {

      (*(v114 + 8))(v111, v112);
      v121 = 0u;
      v122 = 0u;
    }

    v60 = &v121;
    goto LABEL_31;
  }

  v59 = *(&v121 + 1);
  if (*(&v121 + 1) >> 60 == 15)
  {
    (*(v114 + 8))(v111, v112);
LABEL_32:
    v29 = v98;
    v54 = v109;
    goto LABEL_33;
  }

  *&v110 = v121;
  v61 = v99;
  sub_23AA0D174();
  v62 = sub_23AA0D144();
  v64 = v63;
  (*(v100 + 8))(v61, v101);
  if (v64 >> 60 == 15)
  {
    goto LABEL_40;
  }

  v65 = sub_23AA0BFC4();
  v67 = v66;
  sub_23A932864(v62, v64);
  sub_23A969670(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v68 = v102;
  v69 = v105;
  sub_23AA0CFC4();
  v70 = sub_23A934274(v65, v67);
  v71 = v117;
  sub_23A934094(v65, v67, v68, v70);
  v117 = v71;
  sub_23A8EFA00(v65, v67);
  v72 = v104;
  sub_23AA0CFB4();
  v73 = sub_23A8EFA00(v65, v67);
  (*(v103 + 8))(v68, v69, v73);
  sub_23A969670(&qword_27DFAF280, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v74 = sub_23AA0D004();
  sub_23A9343A8(v74, v75);
  v77 = v76;

  v78 = sub_23A9346C8(v77);
  v80 = v79;

  *&v121 = v78;
  *(&v121 + 1) = v80;
  sub_23AA0CFE4();
  (*(v106 + 8))(v72, v22);
  v81 = v110;
  sub_23A934274(v110, v59);
  v82 = v117;
  v83 = sub_23A932878(v81, v59);
  v56 = v82;
  if (v82)
  {
    (*(v107 + 8))(v97, v96);
    sub_23A932864(v110, v59);
    goto LABEL_24;
  }

  v85 = v83;
  v86 = v84;
  v87 = sub_23AA0CF64();
  v89 = v88;
  sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  sub_23AA0D4F4();
  v117 = 0;
  if (v120)
  {
    sub_23A8EF9F0(&v119, &v121);
    v90 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    swift_dynamicCast();
    v118[3] = v90;
    v91 = v123;
    sub_23A8EFA00(v87, v89);
    sub_23A8EFA00(v85, v86);

    v92 = sub_23A932864(v110, v59);
    v118[0] = v91;
    (*(v107 + 8))(v97, v96, v92);
    (*(v114 + 8))(v111, v112);
    v60 = v118;
LABEL_31:
    sub_23A8D5068(v60, v115, &unk_27DFB1140, &qword_23AA19C10);
    goto LABEL_32;
  }

LABEL_41:
  __break(1u);
}

unint64_t sub_23A9695BC()
{
  result = qword_27DFAFC60;
  if (!qword_27DFAFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A969670(&qword_27DFAFC68, type metadata accessor for CapturedRoom.Surface, &protocol conformance descriptor for CapturedRoom.Surface);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC60);
  }

  return result;
}

uint64_t sub_23A969670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A9696D8()
{
  result = qword_27DFAFC78;
  if (!qword_27DFAFC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A969670(&qword_27DFAFC80, type metadata accessor for CapturedRoom.Object, &protocol conformance descriptor for CapturedRoom.Object);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC78);
  }

  return result;
}

unint64_t sub_23A9697AC()
{
  result = qword_27DFAFC98;
  if (!qword_27DFAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFC98);
  }

  return result;
}

uint64_t CapturedStructure.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCA8, &qword_23AA15C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  sub_23AA0DD84();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC40, &unk_23AA15C40);
  sub_23A977ED0();
  sub_23AA0DB74();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
    sub_23A977F84();
    sub_23AA0DB74();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_23AA0DB74();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_23AA0DB74();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    sub_23AA0DB74();
    v11 = v3[6];
    HIBYTE(v10) = 5;
    sub_23AA0DB74();
    v11 = v3[5];
    HIBYTE(v10) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
    sub_23A978038();
    sub_23AA0DB74();
    v11 = v3[7];
    HIBYTE(v10) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
    sub_23A9780EC(&qword_27DFAFCD8, sub_23A978164, MEMORY[0x277D83948]);
    sub_23AA0DB74();
    type metadata accessor for CapturedStructure(0);
    LOBYTE(v11) = 7;
    sub_23AA0DB64();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CapturedRoom.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom(0) + 40);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double CapturedRoom.sections.getter()
{
  type metadata accessor for CapturedRoom(0);

  return result;
}

uint64_t sub_23A969D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A969DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A969E20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (v1 == 1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v1 < 3)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v1 == 3)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    if (v1 >= 5)
    {
      v2 = (v1 - 1) >> 2;
      v3 = result + 60;
      v4 = 1;
      v5 = 7;
      while (v5 - 2 < v1)
      {
        if (v5 - 1 >= v1)
        {
          goto LABEL_15;
        }

        if (v5 >= v1)
        {
          goto LABEL_16;
        }

        if (v4 == 3)
        {
          return result;
        }

        ++v4;
        v5 += 4;
        v3 += 16;
        if (!--v2)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_14;
    }
  }

LABEL_12:
  __break(1u);
  return result;
}

void CapturedRoom.encode(to:)(void *a1)
{
  v2 = v1;
  v81 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D8, &qword_23AA15C80);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v60 - v5;
  v73 = sub_23AA0D014();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0D184();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_23AA0CFD4();
  v74 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CFF4();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCA8, &qword_23AA15C78);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A96806C();
  sub_23AA0DD84();
  v78 = *v2;
  LOBYTE(v77) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC58, &qword_23AA15C50);
  sub_23A977F84();
  v17 = v76;
  sub_23AA0DB74();
  if (v17)
  {
    (*(v14 + 8))(v16, v13);
    return;
  }

  v76 = v12;
  v78 = v2[1];
  LOBYTE(v77) = 2;
  sub_23AA0DB74();
  v18 = v2;
  v78 = v2[2];
  LOBYTE(v77) = 3;
  sub_23AA0DB74();
  v78 = v2[3];
  LOBYTE(v77) = 4;
  sub_23AA0DB74();
  v78 = v2[4];
  LOBYTE(v77) = 5;
  sub_23AA0DB74();
  v78 = v2[5];
  LOBYTE(v77) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC70, &qword_23AA15C58);
  sub_23A978038();
  sub_23AA0DB74();
  v19 = v14;
  v20 = type metadata accessor for CapturedRoom(0);
  LOBYTE(v78) = 7;
  sub_23AA0DB64();
  v78 = *(v18 + *(v20 + 44));
  LOBYTE(v77) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFC88, &unk_23AA15C60);
  sub_23A9780EC(&qword_27DFAFCD8, sub_23A978164, MEMORY[0x277D83948]);
  sub_23AA0DB74();
  LOBYTE(v78) = 10;
  sub_23AA0DB64();
  v64 = 0;
  v63 = v20;
  v21 = sub_23AA0D104();
  v22 = MGCopyAnswer();

  if (v22)
  {
    swift_unknownObjectRetain();
    v78 = v22;
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_19:
      v78 = sub_23A96AC78(*(v18 + *(v63 + 64)), *(v18 + *(v63 + 64) + 16), *(v18 + *(v63 + 64) + 32), *(v18 + *(v63 + 64) + 48));
      LOBYTE(v77) = 11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
      sub_23A9781B8(&qword_27DFAFCE8, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
      sub_23AA0DB74();
      (*(v19 + 8))(v16, v13);

      return;
    }

    v61 = v16;
    v62 = v13;
    v60 = v18;
    if (v77 != 1)
    {
LABEL_18:
      v18 = v60;
      v19 = v14;
      v13 = v62;
      v16 = v61;
      goto LABEL_19;
    }

    v23 = v67;
    sub_23AA0D174();
    v24 = sub_23AA0D144();
    v26 = v25;
    (*(v68 + 8))(v23, v69);
    if (v26 >> 60 != 15)
    {
      v27 = sub_23AA0BFC4();
      v29 = v28;
      sub_23A932864(v24, v26);
      sub_23A969670(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v30 = v70;
      v31 = v73;
      sub_23AA0CFC4();
      v32 = sub_23A934274(v27, v29);
      v33 = v64;
      sub_23A934094(v27, v29, v30, v32);
      v69 = v33;
      sub_23A8EFA00(v27, v29);
      v34 = v72;
      sub_23AA0CFB4();
      v35 = sub_23A8EFA00(v27, v29);
      (*(v71 + 8))(v30, v31, v35);
      sub_23A969670(&qword_27DFAF280, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
      v36 = v66;
      v37 = sub_23AA0D004();
      sub_23A9343A8(v37, v38);
      v40 = v39;

      v41 = sub_23A9346C8(v40);
      v43 = v42;

      v78 = v41;
      v79 = v43;
      sub_23AA0CFE4();
      (*(v74 + 8))(v34, v36);
      sub_23A8D5194(v60 + *(v63 + 60), &v78, &unk_27DFB1140, &qword_23AA19C10);
      if (v80)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
        sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        if (swift_dynamicCast())
        {
          v44 = v77;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        sub_23A8D50D0(&v78, &unk_27DFB1140, &qword_23AA19C10);
        v44 = 0;
      }

      v45 = objc_opt_self();
      v78 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCF0, &qword_23AA15C88);
      v46 = sub_23AA0D654();

      v78 = 0;
      v47 = [v45 archivedDataWithRootObject:v46 requiringSecureCoding:0 error:&v78];
      swift_unknownObjectRelease();
      v48 = v78;
      if (!v47)
      {
        v56 = v48;
        sub_23AA0BE74();

        swift_willThrow();
        (*(v65 + 8))(v76, v10);
        (*(v14 + 8))(v61, v62);
        return;
      }

      v49 = sub_23AA0BFE4();
      v51 = v50;

      v78 = v49;
      v79 = v51;
      v52 = sub_23AA0CF84();
      (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
      sub_23A934890();
      v53 = v69;
      v54 = sub_23AA0CF74();
      if (v53)
      {
        sub_23A8D50D0(v75, &qword_27DFAF2D8, &qword_23AA15C80);
        (*(v65 + 8))(v76, v10);
        (*(v14 + 8))(v61, v62);
        sub_23A8EFA00(v49, v51);
        return;
      }

      v57 = v54;
      v58 = v55;
      sub_23A8D50D0(v75, &qword_27DFAF2D8, &qword_23AA15C80);
      v78 = v57;
      v79 = v58;
      LOBYTE(v77) = 9;
      sub_23A934274(v57, v58);
      sub_23A9348E4();
      sub_23AA0DB74();
      v64 = 0;
      sub_23A8EFA00(v49, v51);
      sub_23A8EFA00(v57, v58);
      v59 = sub_23A8EFA00(v78, v79);
      (*(v65 + 8))(v76, v10, v59);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_23A96AC78(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = sub_23A93964C(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = a1;
  v5 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v4;
  for (i = 0; i != 4; ++i)
  {
    v11 = v6.n128_u32[0];
    if (i)
    {
      v11 = v5.n128_u32[0];
      if (i != 1)
      {
        v11 = v7.n128_u32[0];
        if (i != 2)
        {
          v11 = v8.n128_u32[0];
        }
      }
    }

    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v28 = v11;
      v23 = sub_23A93964C((v12 > 1), v13 + 1, 1, v9);
      v11 = v28;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v23;
    }

    *(v9 + 2) = v14;
    *&v9[4 * v13 + 32] = v11;
    v15 = v6.n128_u32[1];
    if (i)
    {
      v15 = v5.n128_u32[1];
      if (i != 1)
      {
        v15 = v7.n128_u32[1];
        if (i != 2)
        {
          v15 = v8.n128_u32[1];
        }
      }
    }

    v16 = *(v9 + 3);
    v17 = v13 + 2;
    if ((v13 + 2) > (v16 >> 1))
    {
      v29 = v15;
      v24 = sub_23A93964C((v16 > 1), v13 + 2, 1, v9);
      v15 = v29;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v24;
    }

    *(v9 + 2) = v17;
    *&v9[4 * v14 + 32] = v15;
    v18 = v6.n128_u32[2];
    if (i)
    {
      v18 = v5.n128_u32[2];
      if (i != 1)
      {
        v18 = v7.n128_u32[2];
        if (i != 2)
        {
          v18 = v8.n128_u32[2];
        }
      }
    }

    v19 = *(v9 + 3);
    v20 = v13 + 3;
    if ((v13 + 3) > (v19 >> 1))
    {
      v30 = v18;
      v25 = sub_23A93964C((v19 > 1), v13 + 3, 1, v9);
      v18 = v30;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v25;
    }

    *(v9 + 2) = v20;
    *&v9[4 * v17 + 32] = v18;
    v21 = v6.n128_u32[3];
    if (i)
    {
      v21 = v5.n128_u32[3];
      if (i != 1)
      {
        v21 = v7.n128_u32[3];
        if (i != 2)
        {
          v21 = v8.n128_u32[3];
        }
      }
    }

    v22 = *(v9 + 3);
    if ((v13 + 4) > (v22 >> 1))
    {
      v31 = v21;
      v26 = sub_23A93964C((v22 > 1), v13 + 4, 1, v9);
      v21 = v31;
      v6 = a1;
      v5 = a2;
      v7 = a3;
      v8 = a4;
      v9 = v26;
    }

    *(v9 + 2) = v13 + 4;
    *&v9[4 * v20 + 32] = v21;
  }

  return v9;
}

uint64_t CapturedRoom.export(to:exportOptions:)(uint64_t a1, _DWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  LODWORD(a2) = *a2;
  v7 = sub_23AA0BFB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23A967070(a1, v6, 0, 0, a2);
  return sub_23A8D50D0(v6, &qword_27DFAF210, &qword_23AA12EE8);
}

unint64_t CapturedRoom.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 == 3)
  {
    v2 = 0xD00000000000004DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000004DLL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000041;
  if (!*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23A96B068()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 == 3)
  {
    v2 = 0xD00000000000004DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000004DLL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000041;
  if (!*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23A96B110()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 7827308;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_23A96B158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A97D9A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A96B180(uint64_t a1)
{
  v2 = sub_23A978224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B1BC(uint64_t a1)
{
  v2 = sub_23A978224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B204(uint64_t a1)
{
  v2 = sub_23A978320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B240(uint64_t a1)
{
  v2 = sub_23A978320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B2AC(uint64_t a1)
{
  v2 = sub_23A978278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B2E8(uint64_t a1)
{
  v2 = sub_23A978278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96B324(uint64_t a1)
{
  v2 = sub_23A9782CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96B360(uint64_t a1)
{
  v2 = sub_23A9782CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Confidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFCF8, &qword_23AA15CA0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD00, &qword_23AA15CA8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD08, &qword_23AA15CB0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD10, &qword_23AA15CB8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978224();
  sub_23AA0DD84();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23A9782CC();
      v9 = v21;
      sub_23AA0DB24();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23A978278();
      v9 = v24;
      sub_23AA0DB24();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23A978320();
    sub_23AA0DB24();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t CapturedRoom.Confidence.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD38, &qword_23AA15CC0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD40, &qword_23AA15CC8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD48, &qword_23AA15CD0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD50, &unk_23AA15CD8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23A978224();
  v15 = v36;
  sub_23AA0DD74();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_23AA0DB14();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_23A9357E0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_23AA0D904();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0);
      *v24 = &type metadata for CapturedRoom.Confidence;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_23A9782CC();
          sub_23AA0DA74();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_23A978278();
          v26 = v17;
          sub_23AA0DA74();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_23A978320();
        sub_23AA0DA74();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

RoomPlan::CapturedRoom::Section::Label_optional __swiftcall CapturedRoom.Section.Label.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_23A96BD54(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

void sub_23A96BE60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6F52676E6976696CLL;
  v4 = 0xE700000000000000;
  v5 = 0x6E65686374696BLL;
  v6 = 0x6F52676E696E6964;
  v7 = 0xEC00000064656966;
  if (v2 == 4)
  {
    v7 = 0xEA00000000006D6FLL;
  }

  else
  {
    v6 = 0x69746E6564696E75;
  }

  if (v2 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6D6F6F72646562;
  if (v2 != 1)
  {
    v9 = 0x6D6F6F7268746162;
    v8 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006D6FLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_23A96BFE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x79726F7473;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x79726F7473;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A96C0D8()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A96C170(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A96C1F4()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A96C288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A97D8C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A96C2B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x79726F7473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6562616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A96C30C()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x79726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

unint64_t sub_23A96C35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97D8C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A96C384(uint64_t a1)
{
  v2 = sub_23A978374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96C3C0(uint64_t a1)
{
  v2 = sub_23A978374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Section.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD58, &qword_23AA15CE8);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v18 - v6;
  v43 = 1;
  v42 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978374();
  sub_23AA0DD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v19 = a2;
  LOBYTE(v21) = 0;
  sub_23A9783C8();
  v9 = v20;
  sub_23AA0DAF4();
  v44 = LOBYTE(v31[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
  LOBYTE(v21) = 1;
  sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF8]);
  sub_23AA0DAF4();
  v10 = v44;
  v18 = v31[0];
  v45 = 2;
  v11 = sub_23AA0DAE4();
  (*(v8 + 8))(v7, v9);
  LOBYTE(v8) = v10;
  LOBYTE(v21) = v10;
  v22 = v18;
  *&v23 = v11;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  LOBYTE(v28) = 1;
  v29 = 0uLL;
  *(&v28 + 1) = 0;
  LOBYTE(v9) = v42;
  v30 = v42;
  v12 = v19;
  *(v19 + 144) = v42;
  v13 = v26;
  v12[4] = v25;
  v12[5] = v13;
  v14 = v24;
  v12[2] = v23;
  v12[3] = v14;
  v15 = v28;
  v12[6] = v27;
  v12[7] = v15;
  v12[8] = v29;
  v16 = v22;
  *v12 = v21;
  v12[1] = v16;
  sub_23A93010C(&v21, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v31[0]) = v8;
  v31[1] = v18;
  v32 = v11;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 1;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v41 = v9;
  return sub_23A930168(v31);
}

uint64_t CapturedRoom.Section.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD78, &qword_23AA15CF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  v10[1] = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978374();
  sub_23AA0DD84();
  LOBYTE(v12) = v8;
  v13 = 0;
  sub_23A97841C();
  sub_23AA0DB74();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF0]);
    sub_23AA0DB74();
    LOBYTE(v12) = 2;
    sub_23AA0DB64();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CapturedRoom.Surface.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface(0) + 44);
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double CapturedRoom.Surface.polygonCorners.getter()
{
  type metadata accessor for CapturedRoom.Surface(0);

  return result;
}

unint64_t sub_23A96CAC4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x79726F7473;
    if (a1 != 8)
    {
      v6 = 0x436E6F67796C6F70;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    if (a1 != 5)
    {
      v7 = 0x6576727563;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x79726F6765746163;
    v2 = 0x6574656C706D6F63;
    v3 = 0x6F69736E656D6964;
    if (a1 != 3)
    {
      v3 = 0x726F66736E617274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E656469666E6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23A96CC44(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_23AA0DBD4();
  }

  return v12 & 1;
}

uint64_t sub_23A96CCF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_23AA0DD14();
  a3(v5);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A96CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A96CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_23AA0DD14();
  a4(v6);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A96CE4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A97D910(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23A96CE7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23A96CAC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23A96CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A97D910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A96CEF8(uint64_t a1)
{
  v2 = sub_23A978490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96CF34(uint64_t a1)
{
  v2 = sub_23A978490();

  return MEMORY[0x2821FE720](a1, v2);
}

void CapturedRoom.Surface.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_23AA0D904();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v73);
  v74.i64[0] = &v63 - v5;
  v75.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v75.i64[0]);
  v76 = &v63 - v6;
  v7 = sub_23AA0C0E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFD90, &qword_23AA15D00);
  v77 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for CapturedRoom.Surface(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 52);
  v19 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v20 = *(*(v19 - 8) + 56);
  v83 = v18;
  v20(&v16[v18], 1, 1, v19);
  v21 = *(v8 + 56);
  v81 = *(v14 + 56);
  v21(&v16[v81], 1, 1, v7);
  v78 = v14;
  v22 = *(v14 + 72);
  v82 = v16;
  *&v16[v22] = 0;
  v23 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_23A978490();
  v24 = v79;
  sub_23AA0DD74();
  if (v24)
  {
    v27 = v82;
    __swift_destroy_boxed_opaque_existential_1(v80);
    v28 = 0;
  }

  else
  {
    v25 = v76;
    v68 = v8;
    v79 = v7;
    v85 = 0;
    sub_23A93A654();
    sub_23AA0DAF4();
    v26 = v13;
    v29 = v82;
    *v82 = v84[0];
    v85 = 1;
    sub_23A9784E4();
    sub_23AA0DAF4();
    *(v29 + 1) = v84[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDA8, &qword_23AA15D08);
    v85 = 2;
    sub_23A978538(&qword_27DFAFDB0, sub_23A9785B0, MEMORY[0x277D83B70]);
    sub_23AA0DAF4();
    v29[1] = v84[0];
    v67 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v85 = 3;
    sub_23A97E420(&qword_27DFAFD70, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF8]);
    sub_23AA0DAF4();
    *(v29 + 1) = *v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v85 = 4;
    sub_23A9781B8(&qword_27DFAFCA0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    sub_23AA0DAF4();
    sub_23A969E20(v84[0]);
    v66 = v30;
    v65 = v31;
    v64 = v32;
    v63 = v33;

    v34 = v65;
    *(v29 + 2) = v66;
    *(v29 + 3) = v34;
    v35 = v63;
    *(v29 + 4) = v64;
    *(v29 + 5) = v35;
    LOBYTE(v84[0]) = 5;
    sub_23A969670(&qword_27DFAFDC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v36 = v79;
    sub_23AA0DAF4();
    (*(v68 + 32))(v29 + v78[11], v10, v36);
    LOBYTE(v84[0]) = 6;
    sub_23A978604();
    sub_23AA0DAF4();
    sub_23A8D5068(v25, v29 + v83, &qword_27DFAEB38, &unk_23AA11B60);
    LOBYTE(v84[0]) = 7;
    sub_23A9786B8();
    v37 = v74.i64[0];
    sub_23AA0DAF4();
    sub_23A8D5068(v37, v29 + v81, &unk_27DFB0970, &qword_23AA14E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    v85 = 9;
    sub_23A97876C(&unk_27DFB0930, &qword_27DFAFD70, MEMORY[0x277D84AF8], MEMORY[0x277D83978]);
    sub_23AA0DAF4();
    v38 = MEMORY[0x277D84F90];
    v76 = 0;
    v39 = v84[0];
    *(v29 + v78[15]) = v84[0];
    v40 = v39[2];
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v84[0] = MEMORY[0x277D84F90];

      sub_23A975DC0(0, v40, 0);
      v41 = v84[0];
      v43 = *(v84[0] + 2);
      v44 = 4;
      v45 = v66;
      v46 = v65;
      v47 = v64;
      v48 = v63;
      do
      {
        v49 = *&v39[v44];
        v84[0] = v41;
        v50 = v41[3];
        if (v43 >= v50 >> 1)
        {
          v74 = v49;
          v75 = v42;
          sub_23A975DC0((v50 > 1), v43 + 1, 1);
          v49 = v74;
          v42.i32[3] = v75.i32[3];
          v48 = v63;
          v47 = v64;
          v46 = v65;
          v45 = v66;
          v41 = v84[0];
        }

        v51 = vaddq_f32(v48, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, v49.f32[0]), v46, *v49.f32, 1), v47, v49, 2));
        v51.i32[3] = v42.i32[3];
        v41[2] = v43 + 1;
        *&v41[2 * v43 + 4] = v51;
        v44 += 2;
        ++v43;
        v42 = v51;
        --v40;
      }

      while (v40);
    }

    v52 = v76;
    v53 = v78;
    v27 = v82;
    *&v82[v78[16]] = v41;
    v54 = v53[12];
    LOBYTE(v84[0]) = 8;
    v55 = sub_23AA0DAE4();
    if (!v52)
    {
      *(v27 + v54) = v55;
      goto LABEL_19;
    }

    v84[0] = v52;
    v56 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
    v58 = v71;
    v57 = v72;
    if (swift_dynamicCast())
    {
      if ((*(v70 + 88))(v57, v58) == *MEMORY[0x277D84158])
      {

        v59 = v72;
        (*(v70 + 96))(v72, v71);
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D0, &unk_23AA13060) + 48);
        v27 = v82;
        *&v82[v54] = 0;
        v61 = sub_23AA0D8F4();
        (*(*(v61 - 8) + 8))(&v59[v60], v61);
        __swift_destroy_boxed_opaque_existential_1(v59);

        v53 = v78;
LABEL_19:
        *(v27 + 96) = 0u;
        *(v27 + 112) = 0u;
        *(v27 + v53[17]) = v38;
        (*(v77 + 8))(v67, v11);
        *(v27 + v53[19]) = v38;
        sub_23A969D58(v27, v69, type metadata accessor for CapturedRoom.Surface);
        __swift_destroy_boxed_opaque_existential_1(v80);
        sub_23A969DC0(v27, type metadata accessor for CapturedRoom.Surface);
        return;
      }

      (*(v77 + 8))(v67, v11);
      (*(v70 + 8))(v72, v71);

      v28 = 1;
      v62 = v68;
      v27 = v82;
    }

    else
    {
      (*(v77 + 8))(v67, v11);

      v28 = 1;
      v62 = v68;
    }

    __swift_destroy_boxed_opaque_existential_1(v80);

    (*(v62 + 8))(v27 + v78[11], v79);
  }

  sub_23A8D50D0(v27 + v83, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v27 + v81, &unk_27DFB0970, &qword_23AA14E00);
  if (v28)
  {
  }
}

void CapturedRoom.Surface.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE8, &qword_23AA15D18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978490();
  sub_23AA0DD84();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_23A93A5AC();
  sub_23AA0DB74();
  if (!v2)
  {
    LOBYTE(v10) = *(v3 + 1);
    v11 = 1;
    sub_23A978804();
    sub_23AA0DB74();
    *&v10 = *(v3 + 8);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDA8, &qword_23AA15D08);
    sub_23A978538(&qword_27DFAFDF8, sub_23A978858, MEMORY[0x277D83B50]);
    sub_23AA0DB74();
    v10 = *(v3 + 16);
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    sub_23A97E420(&qword_27DFAFD88, &qword_27DFB0940, &qword_23AA15CF0, MEMORY[0x277D84AF0]);
    sub_23AA0DB74();
    *&v10 = sub_23A96AC78(*(v3 + 32), *(v3 + 48), *(v3 + 64), *(v3 + 80));
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    sub_23A9781B8(&qword_27DFAFCE8, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_23AA0DB74();

    v9 = type metadata accessor for CapturedRoom.Surface(0);
    LOBYTE(v10) = 5;
    sub_23AA0C0E4();
    sub_23A969670(&qword_27DFAF240, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_23AA0DB74();
    LOBYTE(v10) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
    sub_23A9788AC();
    sub_23AA0DB74();
    LOBYTE(v10) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
    sub_23A978960();
    sub_23AA0DB74();
    LOBYTE(v10) = 8;
    sub_23AA0DB64();
    *&v10 = *(v3 + *(v9 + 60));
    v11 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A97876C(&unk_27DFB0A40, &qword_27DFAFD88, MEMORY[0x277D84AF0], MEMORY[0x277D83948]);
    sub_23AA0DB74();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_23A96E15C()
{
  v1 = *v0;
  v2 = 1819042167;
  v3 = 0x776F646E6977;
  v4 = 1919905636;
  if (v1 != 3)
  {
    v4 = 0x726F6F6C66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696E65706FLL;
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

uint64_t sub_23A96E1E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A97DABC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A96E214(uint64_t a1)
{
  v2 = sub_23A978A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E250(uint64_t a1)
{
  v2 = sub_23A978A14();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23A96E2A0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65704F7369 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23AA0DBD4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23A96E324(uint64_t a1)
{
  v2 = sub_23A978ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E360(uint64_t a1)
{
  v2 = sub_23A978ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E39C(uint64_t a1)
{
  v2 = sub_23A978A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E3D8(uint64_t a1)
{
  v2 = sub_23A978A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E414(uint64_t a1)
{
  v2 = sub_23A978B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E450(uint64_t a1)
{
  v2 = sub_23A978B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E48C(uint64_t a1)
{
  v2 = sub_23A978BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E4C8(uint64_t a1)
{
  v2 = sub_23A978BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A96E504(uint64_t a1)
{
  v2 = sub_23A978B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96E540(uint64_t a1)
{
  v2 = sub_23A978B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Category.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE20, &qword_23AA15D20);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE28, &qword_23AA15D28);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE30, &qword_23AA15D30);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v32 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE38, &qword_23AA15D38);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE40, &qword_23AA15D40);
  v29 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE48, &qword_23AA15D48);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978A14();
  sub_23AA0DD84();
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      v45 = 2;
      sub_23A978B10();
      v20 = v32;
      v19 = v42;
      sub_23AA0DB24();
      v22 = v33;
      v21 = v34;
    }

    else
    {
      if (v18 != 5)
      {
        goto LABEL_8;
      }

      v47 = 4;
      sub_23A978A68();
      v20 = v36;
      v19 = v42;
      sub_23AA0DB24();
      v22 = v39;
      v21 = v40;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v41 + 8))(v17, v19);
  }

  if (v18 == 2)
  {
    v43 = 0;
    sub_23A978BB8();
    v27 = v42;
    sub_23AA0DB24();
    (*(v29 + 8))(v14, v12);
    return (*(v41 + 8))(v17, v27);
  }

  if (v18 != 3)
  {
LABEL_8:
    v46 = 3;
    sub_23A978ABC();
    v23 = v35;
    v24 = v42;
    sub_23AA0DB24();
    v25 = v38;
    sub_23AA0DB44();
    (*(v37 + 8))(v23, v25);
    return (*(v41 + 8))(v17, v24);
  }

  v44 = 1;
  sub_23A978B64();
  v19 = v42;
  sub_23AA0DB24();
  (*(v30 + 8))(v11, v31);
  return (*(v41 + 8))(v17, v19);
}

uint64_t CapturedRoom.Surface.Category.hash(into:)()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      return MEMORY[0x23EE907C0](v2);
    }

    if (v1 == 5)
    {
      v2 = 4;
      return MEMORY[0x23EE907C0](v2);
    }

LABEL_8:
    MEMORY[0x23EE907C0](3);
    return sub_23AA0DD34();
  }

  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x23EE907C0](v2);
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x23EE907C0](v2);
}

uint64_t CapturedRoom.Surface.Category.hashValue.getter()
{
  v1 = *v0;
  sub_23AA0DD14();
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EE907C0](v2);
      return sub_23AA0DD54();
    }
  }

  MEMORY[0x23EE907C0](3);
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t CapturedRoom.Surface.Category.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE80, &qword_23AA15D50);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v44 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE88, &qword_23AA15D58);
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v57 = &v44 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE90, &qword_23AA15D60);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFE98, &qword_23AA15D68);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEA0, &qword_23AA15D70);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEA8, &unk_23AA15D78);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23A978A14();
  v19 = v60;
  sub_23AA0DD74();
  if (v19)
  {
    goto LABEL_9;
  }

  v20 = v13;
  v45 = v11;
  v21 = v56;
  v22 = v57;
  v60 = v15;
  v23 = v58;
  v24 = sub_23AA0DB14();
  v25 = (2 * *(v24 + 16)) | 1;
  v61 = v24;
  v62 = v24 + 32;
  v63 = 0;
  v64 = v25;
  v26 = sub_23A935814();
  if (v26 == 5 || v63 != v64 >> 1)
  {
    v31 = sub_23AA0D904();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0);
    *v33 = &type metadata for CapturedRoom.Surface.Category;
    sub_23AA0DA84();
    sub_23AA0D8E4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v60 + 8))(v17, v14);
    swift_unknownObjectRelease();
LABEL_9:
    v43 = v59;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (v26 <= 1u)
  {
    if (v26)
    {
      v65 = 1;
      sub_23A978B64();
      sub_23AA0DA74();
      v40 = v60;
      (*(v48 + 8))(v10, v47);
      (*(v40 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v42 = 3;
    }

    else
    {
      v65 = 0;
      sub_23A978BB8();
      v35 = v20;
      sub_23AA0DA74();
      v36 = v60;
      (*(v46 + 8))(v35, v45);
      (*(v36 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v42 = 2;
    }

    v43 = v59;
  }

  else if (v26 == 2)
  {
    v65 = 2;
    sub_23A978B10();
    sub_23AA0DA74();
    (*(v51 + 8))(v21, v49);
    (*(v60 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v42 = 4;
    v43 = v59;
  }

  else if (v26 == 3)
  {
    v65 = 3;
    sub_23A978ABC();
    v27 = v22;
    sub_23AA0DA74();
    v28 = v60;
    v29 = v23;
    v30 = v50;
    v41 = sub_23AA0DAB4();
    (*(v54 + 8))(v27, v30);
    (*(v28 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v42 = v41 & 1;
    v43 = v59;
    v23 = v29;
  }

  else
  {
    v37 = v23;
    v65 = 4;
    sub_23A978A68();
    v38 = v55;
    sub_23AA0DA74();
    v39 = v60;
    (*(v52 + 8))(v38, v53);
    (*(v39 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v42 = 5;
    v43 = v59;
    v23 = v37;
  }

  *v23 = v42;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

BOOL sub_23A96F4A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_23A96F538()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      return MEMORY[0x23EE907C0](v2);
    }

    if (v1 == 5)
    {
      v2 = 4;
      return MEMORY[0x23EE907C0](v2);
    }

LABEL_8:
    MEMORY[0x23EE907C0](3);
    return sub_23AA0DD34();
  }

  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x23EE907C0](v2);
  }

  if (v1 != 3)
  {
    goto LABEL_8;
  }

  v2 = 1;
  return MEMORY[0x23EE907C0](v2);
}

uint64_t sub_23A96F5BC()
{
  v1 = *v0;
  sub_23AA0DD14();
  if (v1 > 3)
  {
    if (v1 == 4)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 5)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EE907C0](v2);
      return sub_23AA0DD54();
    }
  }

  MEMORY[0x23EE907C0](3);
  sub_23AA0DD34();
  return sub_23AA0DD54();
}

uint64_t CapturedRoom.Surface.Curve.startAngle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface.Curve(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CapturedRoom.Surface.Curve.endAngle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CapturedRoom.Surface.Curve(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A96F788()
{
  v1 = 0x7265746E6563;
  v2 = 0x676E417472617473;
  if (*v0 != 2)
  {
    v2 = 0x656C676E41646E65;
  }

  if (*v0)
  {
    v1 = 0x737569646172;
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

uint64_t sub_23A96F800@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A97DC64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A96F828(uint64_t a1)
{
  v2 = sub_23A978C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A96F864(uint64_t a1)
{
  v2 = sub_23A978C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Curve.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEB0, &qword_23AA15D88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978C0C();
  sub_23AA0DD84();
  v15 = *v3;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  sub_23A97E420(&qword_27DFAFEC0, &unk_27DFB14C0, &qword_23AA15D90, MEMORY[0x277D84AD0]);
  sub_23AA0DB74();
  if (!v2)
  {
    v13 = 1;
    sub_23AA0DB54();
    v10 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
    sub_23A97E420(&qword_27DFAFEC8, &unk_27DFB0A20, &unk_23AA122D0, MEMORY[0x277CC87D8]);
    sub_23AA0DB74();
    v11 = 3;
    sub_23AA0DB74();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CapturedRoom.Surface.Curve.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFED0, &qword_23AA15D98);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v13 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23A978C0C();
  v39 = v12;
  v17 = v40;
  sub_23AA0DD74();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v40 = v8;
  v33 = v5;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  v45 = 0;
  sub_23A97E420(&qword_27DFAFED8, &unk_27DFB14C0, &qword_23AA15D90, MEMORY[0x277D84AD8]);
  v18 = v37;
  sub_23AA0DAF4();
  v19 = v34;
  *v34 = v46;
  v44 = 1;
  sub_23AA0DAD4();
  v20 = v38;
  *(v19 + 2) = v21;
  v43 = 2;
  v22 = sub_23A97E420(&qword_27DFAFEE0, &unk_27DFB0A20, &unk_23AA122D0, MEMORY[0x277CC87F8]);
  v23 = v40;
  v24 = v3;
  v32[1] = v22;
  sub_23AA0DAF4();
  v25 = *(v36 + 32);
  v32[0] = *(v13 + 24);
  v40 = v25;
  v25(v19 + v32[0], v23, v3);
  v42 = 3;
  v26 = v18;
  v27 = v20;
  v28 = v33;
  v29 = v39;
  sub_23AA0DAF4();
  (*(v27 + 8))(v29, v26);
  v30 = v34;
  v40(v34 + *(v13 + 28), v28, v24);
  sub_23A969D58(v30, v35, type metadata accessor for CapturedRoom.Surface.Curve);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_23A969DC0(v30, type metadata accessor for CapturedRoom.Surface.Curve);
}

uint64_t sub_23A97001C(uint64_t a1)
{
  v2 = sub_23A978D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970058(uint64_t a1)
{
  v2 = sub_23A978D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A970094()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 1952867692;
  }

  if (*v0)
  {
    v1 = 0x7468676972;
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

uint64_t sub_23A9700F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A97DDC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A97012C(uint64_t a1)
{
  v2 = sub_23A978C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970168(uint64_t a1)
{
  v2 = sub_23A978C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A9701A4(uint64_t a1)
{
  v2 = sub_23A978CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9701E0(uint64_t a1)
{
  v2 = sub_23A978CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A97021C(uint64_t a1)
{
  v2 = sub_23A978D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A970258(uint64_t a1)
{
  v2 = sub_23A978D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A970294(uint64_t a1)
{
  v2 = sub_23A978DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A9702D0(uint64_t a1)
{
  v2 = sub_23A978DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedRoom.Surface.Edge.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEE8, &qword_23AA15DA0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEF0, &qword_23AA15DA8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFEF8, &qword_23AA15DB0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF00, &qword_23AA15DB8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFF08, &qword_23AA15DC0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A978C60();
  sub_23AA0DD84();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_23A978D08();
      v18 = v27;
      sub_23AA0DB24();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_23A978CB4();
      v18 = v30;
      sub_23AA0DB24();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_23A978D5C();
    v18 = v24;
    sub_23AA0DB24();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_23A978DB0();
  sub_23AA0DB24();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}