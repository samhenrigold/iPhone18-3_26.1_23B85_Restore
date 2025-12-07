void sub_EE080(char a1, void *a2)
{
  v4 = sub_2CE000();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CC780();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &enum case for CoreAnalyticsResponses.FabricatedPlayCodes.forcedDisambiguationWith3p(_:);
  if ((a1 & 1) == 0)
  {
    v10 = &enum case for CoreAnalyticsResponses.FabricatedPlayCodes.forcedDisambiguation1pOnly(_:);
  }

  (*(v7 + 104))(v9, *v10, v6);
  v34 = sub_2CC770();
  (*(v7 + 8))(v9, v6);
  sub_20410(&qword_34DD38, &unk_2D3B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1AB0;
  *(inited + 32) = 0x6449707061;
  *(inited + 40) = 0xE500000000000000;
  v33[1] = sub_334A0(0, &qword_3504D8, NSString_ptr);
  *(inited + 48) = sub_2CEB40();
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_2CE560();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  *(inited + 96) = sub_2CEB10(0);
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  v12 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(a2 + v12, v38);
  sub_35E0(v38, v39);
  sub_2CC480();
  isa = sub_2CE560().super.super.isa;
  sub_306C(v38);
  *(inited + 120) = isa;
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  *(inited + 144) = sub_2CEB10(0);
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:0];
  *(inited + 200) = 0x7265735577656ELL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:0];
  *(inited + 224) = 0x646573557361;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = [objc_allocWithZone(NSNumber) initWithBool:0];
  strcpy((inited + 248), "asExperimentId");
  *(inited + 263) = -18;
  sub_2CC9E0();
  v14 = sub_2CE260();

  *(inited + 264) = v14;
  strcpy((inited + 272), "asTreatmentId");
  *(inited + 286) = -4864;
  sub_2CC9D0();
  v15 = sub_2CE260();

  *(inited + 288) = v15;
  *(inited + 296) = 0x756F6C6C6F527361;
  *(inited + 304) = 0xEB00000000644974;
  sub_2CC9B0();
  v16 = sub_2CE260();

  *(inited + 312) = v16;
  *(inited + 320) = 0x6469666E6F437361;
  *(inited + 328) = 0xEF73624165636E65;
  *(inited + 336) = sub_2CEAF0(-1.0);
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x80000000002DB4E0;
  *(inited + 360) = sub_2CEAF0(-1.0);
  *(inited + 368) = 0x64497070417361;
  *(inited + 376) = 0xE700000000000000;
  *(inited + 384) = sub_2CEB40();
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_2CEB10(0);
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000000002DB500;
  *(inited + 432) = sub_2CEB10(0);
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  *(inited + 456) = sub_2CEB10(0);
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v42[0] = v34;
  sub_2CEE70();
  v17 = sub_2CE260();

  *(inited + 480) = v17;
  v18 = sub_90728(inited);
  swift_setDeallocating();
  sub_20410(&qword_34DD40, &unk_2D1BD0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = v36;
  v20 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v21 = v35;
  v22 = v37;
  (*(v35 + 16))(v37, v20, v19);

  v23 = sub_2CDFE0();
  v24 = sub_2CE670();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136315138;
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v27 = sub_2CE210();
    v29 = sub_3F08(v27, v28, v38);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v23, v24, "PlayMediaAppResolver#forcedResolution recording result analytics data due to disambiguation result: %s", v25, 0xCu);
    sub_306C(v26);

    (*(v21 + 8))(v37, v19);
  }

  else
  {

    (*(v21 + 8))(v22, v19);
  }

  v30 = sub_2CE260();
  v31 = swift_allocObject();
  *(v31 + 16) = v18;
  v40 = CommonFlowStrategy.makeParameterMetadata(intent:);
  v41 = v31;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_25FA38;
  v39 = &unk_334C68;
  v32 = _Block_copy(v38);

  AnalyticsSendEventLazy();
  _Block_release(v32);
}

uint64_t sub_EE9A8()
{
  sub_306C((v0 + qword_350440));
  sub_306C((v0 + qword_350448));
  sub_306C((v0 + qword_350450));
  sub_306C((v0 + qword_350458));
  sub_306C((v0 + qword_350460));
  return sub_306C((v0 + qword_350468));
}

void *PlayMediaAppResolver.deinit()
{
  v0 = sub_2CCF60();

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
  sub_306C((v0 + qword_350440));
  sub_306C((v0 + qword_350448));
  sub_306C((v0 + qword_350450));
  sub_306C((v0 + qword_350458));
  sub_306C((v0 + qword_350460));
  sub_306C((v0 + qword_350468));
  return v0;
}

uint64_t PlayMediaAppResolver.__deallocating_deinit()
{
  PlayMediaAppResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_EEC30(uint64_t a1, void *a2)
{
  result = sub_2CCF90();
  if (v4)
  {
    sub_35E0((a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16)), *(a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16) + 24));
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_2CBC50();

    return sub_30B8(v5, &qword_34E970, &qword_2D2910);
  }

  return result;
}

uint64_t sub_EED20(uint64_t a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  return sub_13C14(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_EEDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_17D0E4(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v16 = &v1[16 * v4 + 32];
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v17 = &v1[16 * v8 + 32];
        *v17 = v12;
        *(v17 + 1) = v11;

        *v18 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_EEF48(uint64_t a1, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    sub_EEF48(a1, a2, a3);
  }
}

uint64_t sub_EEFEC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_EF0B8(void *a1, void *a2, void (*a3)(char *, uint64_t), void (*a4)(uint64_t *), uint64_t a5)
{
  v152 = a3;
  v147 = type metadata accessor for BundleResolutionResult(0);
  __chkstk_darwin(v147);
  v148 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_20410(&qword_350438, qword_2D3AA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v134 - v11;
  v13 = sub_20410(&qword_34E740, &unk_2D68F0);
  v151 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v143 = (&v134 - v17);
  v18 = __chkstk_darwin(v16);
  v140 = &v134 - v19;
  v20 = __chkstk_darwin(v18);
  v139 = &v134 - v21;
  __chkstk_darwin(v20);
  v153 = &v134 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v137 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v141 = &v134 - v28;
  __chkstk_darwin(v27);
  v30 = &v134 - v29;
  v31 = swift_allocObject();
  v150 = a4;
  *(v31 + 16) = a4;
  *(v31 + 24) = a5;
  v154 = v31;
  v32 = qword_34BF58;
  v149 = a5;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v23, static Logger.default);
  swift_beginAccess();
  v34 = *(v24 + 16);
  v146 = v33;
  v145 = v34;
  v34(v30, v33, v23);
  v35 = a1;

  v36 = sub_2CDFE0();
  v37 = sub_2CE690();

  v38 = os_log_type_enabled(v36, v37);
  v155 = v24;
  if (v38)
  {
    v136 = v37;
    v138 = v23;
    v144 = v13;
    v39 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v156[0] = v135;
    *v39 = 136447234;
    v40 = [v35 launchId];
    v134 = v12;
    if (v40)
    {
      v41 = v40;
      v42 = sub_2CE270();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v157 = v42;
    v158 = v44;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v46 = sub_2CE2A0();
    v48 = sub_3F08(v46, v47, v156);

    *(v39 + 4) = v48;
    *(v39 + 12) = 1026;
    v49 = sub_2CE730();

    *(v39 + 14) = v49 & 1;
    *(v39 + 18) = 2082;
    v50 = [v35 mediaSearch];
    v51 = v50;
    if (v50)
    {
      v52 = [v50 mediaType];
    }

    else
    {
      v52 = 0;
    }

    v157 = v52;
    LOBYTE(v158) = v51 == 0;
    sub_20410(&qword_350510, qword_2D3B60);
    v53 = sub_2CE2A0();
    v55 = sub_3F08(v53, v54, v156);

    *(v39 + 20) = v55;
    *(v39 + 28) = 2082;
    v56 = [v35 privatePlayMediaIntentData];
    if (!v56)
    {
      goto LABEL_23;
    }

    v57 = v56;
    v58 = [v56 audioSearchResults];

    if (!v58)
    {
      v64 = 0;
      goto LABEL_24;
    }

    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v59 = sub_2CE410();

    if (v59 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
LABEL_15:
        if ((v59 & 0xC000000000000001) != 0)
        {
          v61 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v61 = *(v59 + 32);
        }

        v62 = v61;

        v63 = [v62 identifier];

        if (v63)
        {
          v64 = sub_2CE270();
          v58 = v65;

LABEL_24:
          v157 = v64;
          v158 = v58;
          v66 = sub_2CE2A0();
          v68 = sub_3F08(v66, v67, v156);

          *(v39 + 30) = v68;
          *(v39 + 38) = 2082;
          v69 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
          swift_beginAccess();
          sub_EEAC(a2 + v69, &v157);
          sub_35E0(&v157, v159);
          v156[1] = sub_2CC460();
          v156[2] = v70;
          v71 = sub_2CE2A0();
          v73 = v72;
          sub_306C(&v157);
          v74 = sub_3F08(v71, v73, v156);

          *(v39 + 40) = v74;
          _os_log_impl(&dword_0, v36, v136, "PlayMediaAppResolver#resolveBundleIdentifier... launchId:%{public}s, appInferred?:%{BOOL,public}d, mediaSearch-type:%{public}s, firstResult-identifier:%{public}s, forceResolveBundleId:%{public}s", v39, 0x30u);
          swift_arrayDestroy();

          v45 = *(v155 + 8);
          v23 = v138;
          v45(v30, v138);
          v13 = v144;
          v12 = v134;
          goto LABEL_25;
        }

LABEL_23:
        v64 = 0;
        v58 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      result = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_23;
  }

  v45 = *(v24 + 8);
  v45(v30, v23);
LABEL_25:
  sub_F3F4(v152, v12, &qword_350438, qword_2D3AA0);
  if ((*(v151 + 48))(v12, 1, v13) == 1)
  {
    sub_30B8(v12, &qword_350438, qword_2D3AA0);
    v75 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(a2 + v75, &v157);
    sub_35E0(&v157, v159);
    v76 = sub_2CC460();
    if (v77)
    {
      v78 = v76;
      v79 = v77;
      v144 = v13;
      sub_306C(&v157);
      v80 = v137;
      v145(v137, v146, v23);

      v81 = sub_2CDFE0();
      v82 = sub_2CE690();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v152 = v45;
        v84 = v83;
        v85 = v80;
        v86 = swift_slowAlloc();
        v157 = v86;
        *v84 = 136446210;

        v87 = sub_3F08(v78, v79, &v157);

        *(v84 + 4) = v87;
        _os_log_impl(&dword_0, v81, v82, "PlayMediaAppResolver#resolveBundleIdentifier forceResolveBundleId user default present, resolving bundleIdentifier: %{public}s", v84, 0xCu);
        sub_306C(v86);

        v152(v85, v23);
      }

      else
      {

        v45(v80, v23);
      }

      v124 = v150;
      v125 = v148;
      v126 = [v35 launchId];
      if (v126)
      {
        v127 = v126;
        v128 = sub_2CE270();
        v130 = v129;

        v160._countAndFlagsBits = v128;
        v160._object = v130;
        sub_2CE7A0(v160);
      }

      v131 = *(v144 + 48);
      *v125 = v78;
      v125[1] = v79;
      v132 = enum case for ResolutionResultType.AppSpecifiedByUser(_:);
      v133 = sub_2CC5F0();
      (*(*(v133 - 8) + 104))(v125 + v131, v132, v133);
      swift_storeEnumTagMultiPayload();
      v124(v125);
      sub_F1AE0(v125);
    }

    else
    {
      sub_306C(&v157);
      v121 = swift_allocObject();
      v122 = v154;
      v121[2] = sub_13D84;
      v121[3] = v122;
      v121[4] = a2;
      v121[5] = v35;
      v123 = v35;

      sub_EBA74(v123, sub_F1AD4, v121);
    }
  }

  else
  {
    v88 = v153;
    sub_F1B3C(v12, v153);
    v89 = v141;
    v145(v141, v146, v23);
    v90 = v139;
    sub_F3F4(v88, v139, &qword_34E740, &unk_2D68F0);
    v91 = v88;
    v92 = v140;
    sub_F3F4(v91, v140, &qword_34E740, &unk_2D68F0);
    v93 = sub_2CDFE0();
    v94 = sub_2CE690();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      LODWORD(v146) = v94;
      v96 = v95;
      v151 = swift_slowAlloc();
      v157 = v151;
      *v96 = 136446466;
      v97 = v90;
      v98 = v143;
      sub_F1B3C(v97, v143);
      v152 = v45;
      v138 = v23;
      v99 = v13;
      v100 = *v98;
      v101 = v98[1];
      v102 = *(v99 + 48);
      v103 = sub_2CC5F0();
      (*(*(v103 - 8) + 8))(v98 + v102, v103);
      v104 = sub_3F08(v100, v101, &v157);

      *(v96 + 4) = v104;
      *(v96 + 12) = 2082;
      sub_F3F4(v92, v98, &qword_34E740, &unk_2D68F0);

      v105 = sub_2CE2A0();
      v106 = v89;
      v108 = v107;
      v13 = v99;
      sub_30B8(v92, &qword_34E740, &unk_2D68F0);
      v109 = sub_3F08(v105, v108, &v157);

      *(v96 + 14) = v109;
      _os_log_impl(&dword_0, v93, v146, "PlayMediaAppResolver#resolveBundleIdentifier app resolution ran previously, re-using those results and returning bundleIdentifier: %{public}s, resolutionResult: %{public}s", v96, 0x16u);
      swift_arrayDestroy();

      v152(v106, v138);
      v110 = v150;
    }

    else
    {

      sub_30B8(v92, &qword_34E740, &unk_2D68F0);
      sub_30B8(v90, &qword_34E740, &unk_2D68F0);
      v45(v89, v23);
      v110 = v150;
      v98 = v143;
    }

    v111 = *(v13 + 48);
    v112 = v153;
    sub_F3F4(v153, v98, &qword_34E740, &unk_2D68F0);
    v113 = *v98;
    v114 = v98[1];
    v155 = *(v13 + 48);
    v115 = v98;
    v116 = v148;
    *v148 = v113;
    *(v116 + 8) = v114;
    v117 = v142;
    sub_F3F4(v112, v142, &qword_34E740, &unk_2D68F0);

    v118 = *(v13 + 48);
    v119 = sub_2CC5F0();
    v120 = *(v119 - 8);
    (*(v120 + 32))(v116 + v111, v117 + v118, v119);
    swift_storeEnumTagMultiPayload();
    v110(v116);
    sub_F1AE0(v116);
    sub_30B8(v112, &qword_34E740, &unk_2D68F0);
    (*(v120 + 8))(v115 + v155, v119);
  }
}

uint64_t sub_F00F4(char *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_EEFEC(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_F019C(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_F01E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_F01F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void ***), unint64_t a6)
{
  v128 = a4;
  v147 = a3;
  v150 = a2;
  v144 = sub_2CE150();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2CE180();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2CE130();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = (v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = sub_2CE1A0();
  v138 = *(v155 - 8);
  v12 = __chkstk_darwin(v155);
  v133 = v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = v125 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v132 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v130 = v125 - v20;
  v21 = __chkstk_darwin(v19);
  v126 = v125 - v22;
  v23 = __chkstk_darwin(v21);
  v127 = v125 - v24;
  v25 = __chkstk_darwin(v23);
  v129 = v125 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v125 - v28;
  __chkstk_darwin(v27);
  v31 = v125 - v30;
  sub_2CBC60();
  sub_35E0(&aBlock, v163);
  v32 = sub_2CBE50();
  v146 = a1;
  if (v32)
  {
    v33 = *(*a1 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(a1 + v33, v157);
    sub_35E0(v157, v157[3]);
    LOBYTE(a1) = sub_2CC510() ^ 1;
    sub_306C(v157);
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  sub_306C(&aBlock);
  v34 = v16;
  if (qword_34BF58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v35 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v36 = *(v34 + 16);
  v153 = v34 + 16;
  v154 = v35;
  v152 = v36;
  v36(v31, v35, v15);
  v37 = sub_2CDFE0();
  v38 = sub_2CE660();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67109120;
    *(v39 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v37, v38, "PlayMediaAppResolver#postResolve will Siri speak?:%{BOOL}d", v39, 8u);
    v34 = v16;
  }

  v40 = *(v34 + 8);
  v156 = v15;
  v151 = v40;
  v40(v31, v15);
  sub_2CE880(a1 & 1);
  v41 = sub_2CCF90();
  v131 = v29;
  v145 = a5;
  v148 = a6;
  v149 = v34 + 8;
  if (!v42)
  {
    goto LABEL_37;
  }

  aBlock = v41;
  v161 = v42;
  v158 = sub_2CBE40();
  v159 = v43;
  sub_F18AC();
  sub_F1900();
  v44 = sub_2CE230();

  if ((v44 & 1) == 0)
  {
    goto LABEL_37;
  }

  v45 = [v150 privatePlayMediaIntentData];
  if (!v45)
  {
    goto LABEL_37;
  }

  v46 = v45;
  v47 = [v45 audioSearchResults];

  if (!v47)
  {
    goto LABEL_37;
  }

  v125[1] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v31 = sub_2CE410();

  if (!(v31 >> 62))
  {
    v48 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v48)
    {
      goto LABEL_13;
    }

LABEL_36:

    goto LABEL_37;
  }

  v48 = sub_2CEDA0();
  if (!v48)
  {
    goto LABEL_36;
  }

LABEL_13:
  v34 = 0;
  aBlock = _swiftEmptyArrayStorage;
  a6 = v31 & 0xC000000000000001;
  v15 = v31 & 0xFFFFFFFFFFFFFF8;
  a5 = &off_32FF30;
  do
  {
    if (a6)
    {
      v49 = sub_2CECD0();
    }

    else
    {
      if (v34 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

      v49 = *(v31 + 8 * v34 + 32);
    }

    v29 = v49;
    v16 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v50 = INMediaItem.isInternalSignalPresent(_:)(&off_32FF30);
    sub_F1954(&unk_32FF50);
    if (v50)
    {
      sub_2CED00();
      a1 = aBlock[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
    }

    else
    {
    }

    ++v34;
  }

  while (v16 != v48);

  sub_2CE5C0();

  v51 = v132;
  v52 = v156;
  v152(v132, v154, v156);
  v53 = sub_2CDFE0();
  v54 = sub_2CE670();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "PlayMediaAppResolver#postResolve adding MediaItems to PlayMediaIntent for Apple Music Classical playback", v55, 2u);
  }

  v151(v51, v52);
  v56 = [v150 backingStore];
  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    isa = sub_2CE400().super.isa;

    v60 = INIntentSlotValueTransformToMediaItemValues();

    [v58 setMediaItems:v60];
    v56 = v60;
  }

  else
  {
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v150, &off_32FF00))
  {
    v61 = [v150 backingStore];
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (!v62)
    {
    }

    [v62 setPlayShuffled:1];
  }

LABEL_37:
  v132 = sub_2CBA10();
  v63 = v133;
  sub_2CE190();
  v64 = v134;
  *v134 = 10;
  v65 = v135;
  v66 = v136;
  (*(v135 + 104))(v64, enum case for DispatchTimeInterval.seconds(_:), v136);
  v67 = v137;
  sub_2CE1B0();
  (*(v65 + 8))(v64, v66);
  v138 = *(v138 + 8);
  (v138)(v63, v155);
  v68 = swift_allocObject();
  v69 = v146;
  swift_weakInit();
  v164 = sub_F1898;
  v165 = v68;
  aBlock = _NSConcreteStackBlock;
  v161 = 1107296256;
  v162 = sub_A4294;
  v163 = &unk_334D08;
  v70 = _Block_copy(&aBlock);

  v71 = v139;
  sub_2CE160();
  v158 = _swiftEmptyArrayStorage;
  sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v72 = v141;
  v73 = v144;
  sub_2CEC10();
  v74 = v132;
  sub_2CE9A0();
  _Block_release(v70);

  (*(v143 + 8))(v72, v73);
  (*(v140 + 8))(v71, v142);
  (v138)(v67, v155);

  sub_35E0((v69 + qword_350458), *(v69 + qword_350458 + 24));
  v75 = sub_2CBE60();
  if (v76)
  {
    v77 = v75;
    v78 = v76;
    v79 = v131;
    v80 = v156;
    v152(v131, v154, v156);
    v81 = sub_2CDFE0();
    v82 = sub_2CE660();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v83 = 136315394;
      *(v83 + 4) = sub_3F08(v77, v78, &aBlock);
      *(v83 + 12) = 2080;
      if (qword_34BF68 != -1)
      {
        swift_once();
      }

      v158 = qword_35F6C0;

      sub_20410(&qword_3504E0, &qword_2D3B40);
      v84 = sub_2CE2A0();
      v86 = sub_3F08(v84, v85, &aBlock);

      *(v83 + 14) = v86;
      _os_log_impl(&dword_0, v81, v82, "PlayMediaAppResolver#postResolve Storing intent for request: %s, stored: %s", v83, 0x16u);
      swift_arrayDestroy();

      v151(v131, v156);
      v87 = v145;
    }

    else
    {

      v151(v79, v80);
      v87 = v145;
    }

    v94 = v130;
    if (qword_34BF68 != -1)
    {
      swift_once();
    }

    aBlock = v77;
    v161 = v78;
    if (sub_2CB9B0())
    {

      v95 = v127;
      v96 = v156;
      v152(v127, v154, v156);
      v97 = sub_2CDFE0();
      v98 = sub_2CE680();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_0, v97, v98, "PlayMediaAppResolver#postResolve SELF logs already collected for this request. Avoiding double logging", v99, 2u);
      }
    }

    else
    {
      aBlock = v77;
      v161 = v78;
      sub_2CB990();

      if (sub_2CC5D0())
      {
        v100 = sub_2CCF90();
        v102 = v156;
        if (v101)
        {
          v103 = v100;
          v104 = v101;
          v105 = byte_350430;
          byte_350430 = 0;
          v152(v94, v154, v156);
          v106 = sub_2CDFE0();
          v107 = sub_2CE690();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            aBlock = v109;
            *v108 = 136446466;
            v110 = sub_2CCC80();
            v112 = v105;
            v113 = sub_3F08(v110, v111, &aBlock);

            *(v108 + 4) = v113;
            *(v108 + 12) = 1024;
            *(v108 + 14) = v112;
            _os_log_impl(&dword_0, v106, v107, "PlayMediaAppResolver#postResolve %{public}s recording app selection signals. force?:%{BOOL}d", v108, 0x12u);
            sub_306C(v109);
            v87 = v145;

            v114 = v130;
            v115 = v156;
          }

          else
          {

            v114 = v94;
            v115 = v102;
          }

          v151(v114, v115);
          v123 = v146;
          sub_35E0((v146 + qword_350440), *(v146 + qword_350440 + 24));
          v124 = swift_allocObject();
          v124[2] = v123;
          v124[3] = v103;
          v124[4] = v104;

          sub_2CCA80();
        }

        goto LABEL_58;
      }

      v95 = v126;
      v96 = v156;
      v152(v126, v154, v156);
      v97 = sub_2CDFE0();
      v116 = sub_2CE690();
      if (os_log_type_enabled(v97, v116))
      {
        v117 = swift_slowAlloc();
        v118 = v95;
        v119 = swift_slowAlloc();
        aBlock = v119;
        *v117 = 136446210;
        v120 = sub_2CCC80();
        v122 = sub_3F08(v120, v121, &aBlock);

        *(v117 + 4) = v122;
        _os_log_impl(&dword_0, v97, v116, "PlayMediaAppResolver#postResolve %{public}s skipping app selection signals record as the app was not explicitly chosen by the user", v117, 0xCu);
        sub_306C(v119);

        v151(v118, v156);
LABEL_58:
        LOBYTE(aBlock) = 1;
        return v87(&aBlock);
      }
    }

    v151(v95, v96);
    goto LABEL_58;
  }

  v88 = v129;
  v89 = v156;
  v152(v129, v154, v156);
  v90 = sub_2CDFE0();
  v91 = sub_2CE680();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_0, v90, v91, "PlayMediaAppResolver#postResolve No requestID found for the current request. Skipping log collection for intent", v92, 2u);
  }

  v151(v88, v89);
  LOBYTE(aBlock) = 1;
  return v145(&aBlock);
}

uint64_t type metadata accessor for PlayMediaAppResolver(uint64_t a1)
{
  result = qword_350478;
  if (!qword_350478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F16A4(uint64_t a1)
{
  v3 = *(sub_2CCA10() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_2C8E30() - 8);
  return sub_ED10C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 24), (v1 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80))));
}

void sub_F17EC()
{
  sub_2CCA10();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_EE080(v1, v2);
}

unint64_t sub_F18AC()
{
  result = qword_3504E8;
  if (!qword_3504E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3504E8);
  }

  return result;
}

unint64_t sub_F1900()
{
  result = qword_3504F0;
  if (!qword_3504F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3504F0);
  }

  return result;
}

uint64_t sub_F19A8()
{
  v1 = *(sub_2CC100() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_2C8E80() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_EB6EC(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_F1A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F1AE0(uint64_t a1)
{
  v2 = type metadata accessor for BundleResolutionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F1B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E740, &unk_2D68F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F1BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleResolutionResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F1C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_2CCA70() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_E7DC0(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_F1CD4(uint64_t a1)
{
  v3 = *(sub_2CCA70() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_E762C(a1, v4, v5, v6, v7);
}

uint64_t sub_F1D4C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2CCA70() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_E822C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_F1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v76 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v70 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v70 - v14;
  v16 = __chkstk_darwin(v13);
  v71 = &v70 - v17;
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v77 = *(v5 + 16);
  v77(v19, v20, v4);
  v21 = sub_2CDFE0();
  v22 = sub_2CE660();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v70 = v5 + 16;
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView...", v23, 2u);
  }

  v75 = a3;

  v24 = *(v5 + 8);
  v24(v19, v4);
  v25 = v76;
  v26 = sub_1D2364(&off_32FAD0);
  sub_F1954(&unk_32FAF0);
  if ((v26 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v25, &off_32FB00))
  {
    v27 = v74;
    v77(v74, v20, v4);
    v28 = sub_2CDFE0();
    v29 = sub_2CE660();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for podcast promotion", v30, 2u);
    }

    v24(v27, v4);
    v31 = sub_2CD230();
    return (*(*(v31 - 8) + 56))(v75, 1, 1, v31);
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v25, &off_32FB30))
  {
    v33 = v73;
    v77(v73, v20, v4);
    v34 = sub_2CDFE0();
    v35 = sub_2CE660();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v75;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v34, v35, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for acousticID follow up not found", v38, 2u);
    }

    v39 = v33;
LABEL_22:
    v24(v39, v4);
LABEL_23:
    v49 = sub_2CD230();
    return (*(*(v49 - 8) + 56))(v37, 1, 1, v49);
  }

  v40 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v25, &off_32FB60);
  v37 = v75;
  if (!v40)
  {
    v77(v12, v20, v4);
    v46 = sub_2CDFE0();
    v47 = sub_2CE660();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v46, v47, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for subscriber", v48, 2u);
    }

    v39 = v12;
    goto LABEL_22;
  }

  v41 = sub_2CCF90();
  v43 = v42;
  v44 = sub_2CBE10();
  if (!v43)
  {

    goto LABEL_29;
  }

  if (v41 != v44 || v43 != v45)
  {
    v50 = sub_2CEEA0();

    if (v50)
    {
      goto LABEL_26;
    }

LABEL_29:
    v77(v15, v20, v4);

    v58 = sub_2CDFE0();
    v59 = sub_2CE660();

    if (os_log_type_enabled(v58, v59))
    {
      v77 = v15;
      v60 = v37;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = sub_2CCF90();
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        sub_10C40();
        swift_allocError();
        *v67 = v65;
        v67[1] = v66;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        v69 = v68;
      }

      else
      {
        v68 = 0;
        v69 = 0;
      }

      *(v61 + 4) = v68;
      *v62 = v69;
      _os_log_impl(&dword_0, v58, v59, "PlayMediaUnsupportedValueSnippetProvider#appleMusicButton returning nil since appID: %@ ", v61, 0xCu);
      sub_212CC(v62);

      v37 = v60;
      v15 = v77;
    }

    v24(v15, v4);
    goto LABEL_23;
  }

LABEL_26:
  v51 = v71;
  v77(v71, v20, v4);
  v52 = sub_2CDFE0();
  v53 = sub_2CE660();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning an apple music button", v54, 2u);
  }

  v24(v51, v4);
  sub_F26DC(v37);
  v55 = enum case for SiriAudioSnippets.actionButton(_:);
  v56 = sub_2CD230();
  v57 = *(v56 - 8);
  (*(v57 + 104))(v37, v55, v56);
  return (*(v57 + 56))(v37, 0, 1, v56);
}

void sub_F26DC(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_2CD2E0();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2CD2C0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_2C8E80();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C8EC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0((v1 + 16), *(v1 + 40));
  type metadata accessor for PlayMediaViewProvider(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  sub_2CC620();

  (*(v12 + 8))(v14, v11);
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2D0090;
  v18 = sub_F2FEC();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1087C();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_2CE280();

  v21 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2CBE10();
  v22 = sub_2CE260();

  [v21 setBundleId:v22];

  v23 = sub_2CE260();
  [v21 setAppDisplayName:v23];

  [v21 setAppAvailableInStorefront:1];
  v24 = v21;
  sub_2C8E70();
  sub_2C8E50();
  (*(v32 + 8))(v10, v33);
  v25 = sub_2CE260();

  [v24 setAceId:v25];

  sub_2C8D80();
  v26 = sub_2C8D90();
  v27 = *(v26 - 8);
  v29 = 0;
  if ((*(v27 + 48))(v7, 1, v26) != 1)
  {
    sub_2C8D50(v28);
    v29 = v30;
    (*(v27 + 8))(v7, v26);
  }

  [v24 setPunchOutUri:v29];

  (*(v34 + 104))(v35, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v36);
  (*(v38 + 104))(v37, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v39);
  sub_2CD2D0();
}

uint64_t sub_F2CA4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_2CD2E0();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CD2C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_F3178();
  v24[0] = v12;
  v24[1] = v11;
  v13 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2C8D80();
  v14 = sub_2C8D90();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v10, 1, v14) != 1)
  {
    sub_2C8D50(v16);
    v17 = v18;
    (*(v15 + 8))(v10, v14);
  }

  [v13 setPunchOutUri:v17];

  (*(v5 + 104))(v7, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v4);
  (*(v1 + 104))(v3, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v25);
  v19 = v26;
  sub_2CD2D0();
  v20 = enum case for SiriAudioSnippets.actionButton(_:);
  v21 = sub_2CD230();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  return (*(v22 + 56))(v19, 0, 1, v21);
}

uint64_t sub_F2FEC()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0((v0 + 16), *(v0 + 40));
  type metadata accessor for PlayMediaViewProvider(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v7 = sub_2CC620();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_F3178()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0((v0 + 16), *(v0 + 40));
  type metadata accessor for PlayMediaViewProvider(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v7 = sub_2CC620();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_F3304()
{
  sub_306C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_F3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v52 = a1;
  v5 = sub_2CE000();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = v3[5];
  v51 = v3[4];
  v15 = v3[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v55 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v47 = v8;
  v20 = *(v8 + 32);
  v53 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v48;
  v21[1] = a3;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v48 = v14;
  *(v23 + 32) = v14;
  *(v23 + 40) = v15;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6E696E657473694CLL;
  *(v23 + 80) = 0xE900000000000067;

  LOBYTE(v44) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v55, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v44, v23);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v46 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v50;
  v28 = sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v29 = v49;
  v30 = v54;
  (*(v49 + 16))(v54, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v48;
    *(v33 + 4) = sub_3F08(v48, v15, &v56);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6E696E657473694CLL, 0xE900000000000067, &v56);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v54, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v48;
  }

  v56 = v34;
  v57 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x6E696E657473694CLL;
  v61._object = 0xE900000000000067;
  sub_2CE350(v61);
  v36 = v56;
  v35 = v57;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v46;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v52;
  *(&v46 - 10) = v51;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v58;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F39DC(uint64_t a1, char *a2, char *a3)
{
  v47 = a2;
  v51 = a1;
  v5 = sub_2CE000();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = v3[5];
  v50 = v3[4];
  v55 = v14;
  v15 = v3[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v52 = v8;
  v53 = v7;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = v47;
  v20[1] = a3;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v24 = v55;
  *(v22 + 32) = v55;
  *(v22 + 40) = v15;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x6673736563637553;
  *(v22 + 80) = 0xEF686374614D6C75;

  LOBYTE(v44) = 2;
  sub_2CDF90(v21, &dword_0, v16, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v44, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v46 = v25;
  v26 = qword_34BF58;

  v47 = v13;
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_3ED0(v49, static Logger.default);
  swift_beginAccess();
  v29 = v48;
  v30 = v54;
  (*(v48 + 16))(v54, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_3F08(v55, v15, &v56);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6673736563637553, 0xEF686374614D6C75, &v56);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v24 = v55;

    (*(v29 + 8))(v54, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
  }

  v34 = v52;
  v56 = v24;
  v57 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x6673736563637553;
  v61._object = 0xEF686374614D6C75;
  sub_2CE350(v61);
  v36 = v56;
  v35 = v57;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v46;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v51;
  *(&v46 - 10) = v50;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v58;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v34 + 8))(v47, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4074(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CDFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = v2[5];
  v51 = v2[4];
  v14 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v55 = v12;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v47 = v7;
  v19 = *(v7 + 32);
  v53 = v6;
  v19(v18 + v16, v10);
  v20 = (v18 + v17);
  *v20 = v48;
  v20[1] = a2;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v13;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "NoMatchFound");
  *(v22 + 85) = 0;
  *(v22 + 86) = -5120;

  LOBYTE(v42) = 2;
  sub_2CDF90(v21, &dword_0, v15, "catServiceExecute", 17, 2, v55, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v42, v22);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v18;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v18;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v14, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x46686374614D6F4ELL, 0xEC000000646E756FLL, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v14;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x46686374614D6F4ELL;
  v61._object = 0xEC000000646E756FLL;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13DB4;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E06C;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4708(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CDFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = v2[5];
  v51 = v2[4];
  v14 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v55 = v12;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v47 = v7;
  v19 = *(v7 + 32);
  v53 = v6;
  v19(v18 + v16, v10);
  v20 = (v18 + v17);
  *v20 = v48;
  v20[1] = a2;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v13;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "GenericError");
  *(v22 + 85) = 0;
  *(v22 + 86) = -5120;

  LOBYTE(v42) = 2;
  sub_2CDF90(v21, &dword_0, v15, "catServiceExecute", 17, 2, v55, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v42, v22);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D7C;
  *(v24 + 24) = v18;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v18;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v14, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v14;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x45636972656E6547;
  v61._object = 0xEC000000726F7272;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13D84;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E010;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ContinueInAppDialogStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_F4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for ContinueInAppDialogStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = sub_E664;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v15, a6);
}

uint64_t _s11descr32D959O25NeedsConfirmationStrategyCMa(uint64_t a1)
{
  result = qword_350840;
  if (!qword_350840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_F4FE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v30 = sub_2CE990();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE180();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchForMediaCatDialogService();
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000011;
  v7[3] = 0x80000000002DA8D0;
  v7[5] = 0xD000000000000014;
  v7[6] = 0x80000000002DCFE0;
  v7[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v8 = sub_2CC2B0();
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v9 = sub_2CC360();
  v38 = v9;
  v39 = &protocol witness table for StringsFileResolver;
  sub_F390(&v37);
  sub_2CC350();
  v10 = sub_2CB4A0();
  v11 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v11;
  type metadata accessor for SearchForMediaDialogProvider(0);
  v12 = swift_allocObject();
  v12[15] = v7;
  sub_EEAC(&v40, (v12 + 16));
  sub_EEAC(&v34, (v12 + 21));
  sub_EEAC(&v37, v33);
  sub_F338(&v34, v32);
  sub_306C(&v37);
  sub_306C(&v40);
  v12[13] = 0xD000000000000011;
  v12[14] = 0x80000000002DA8D0;
  v12[2] = a1;
  sub_F338(v33, (v12 + 3));
  sub_F338(v32, (v12 + 8));
  v41 = v9;
  v42 = &protocol witness table for StringsFileResolver;
  sub_F390(&v40);
  sub_2CC350();
  sub_20410(&qword_350968, &unk_2D3D60);
  v13 = swift_allocObject();
  sub_F338(&v40, v13 + 16);
  *(v13 + 56) = v12;
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v14 = swift_allocObject();
  sub_F338(&v40, v14 + 16);
  v41 = v8;
  v42 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v40);
  sub_2CC2A0();
  v15 = sub_2CB490();
  v38 = v10;
  v39 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v37 = v15;
  v16 = sub_2CC900();
  swift_allocObject();
  v17 = sub_2CC8F0();
  v41 = v16;
  v42 = &protocol witness table for AppleMediaServicesProvider;
  *&v40 = v17;
  v38 = v8;
  v39 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v37);
  sub_2CC2A0();
  v18 = sub_2CB490();
  v35 = v10;
  v36 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v34 = v18;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v19 = qword_35F740;

  sub_2C9A00();
  v20 = v25;
  sub_2CE170();
  v21 = v28;
  sub_2CE980();
  v22 = sub_2CBA00();

  sub_306C(v31);
  (*(v29 + 8))(v21, v30);
  (*(v26 + 8))(v20, v27);
  v3[26] = v22;
  v3[2] = v12;
  sub_F338(&v40, (v3 + 3));
  sub_F338(&v37, (v3 + 8));
  sub_F338(&v34, (v3 + 13));
  v3[18] = v19;
  sub_F338(v33, (v3 + 20));
  v3[25] = v14;
  v3[19] = v13;
  return v3;
}

uint64_t sub_F5520@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v109 = sub_2CD4C0();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v98 = &v85[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v2 = __chkstk_darwin(v112);
  v94 = &v85[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v99 = &v85[-v5];
  __chkstk_darwin(v4);
  v110 = &v85[-v6];
  v7 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v8 = __chkstk_darwin(v7 - 8);
  v90 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v92 = &v85[-v11];
  v12 = __chkstk_darwin(v10);
  v93 = &v85[-v13];
  v14 = __chkstk_darwin(v12);
  v91 = &v85[-v15];
  v16 = __chkstk_darwin(v14);
  v104 = &v85[-v17];
  v18 = __chkstk_darwin(v16);
  v103 = &v85[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v85[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v85[-v24];
  __chkstk_darwin(v23);
  v105 = &v85[-v26];
  v107 = sub_2CA870();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v28 = &v85[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v85[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v85[-v34];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v36 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  v37 = *(v30 + 16);
  v102 = v36;
  v101 = v30 + 16;
  v100 = v37;
  v37(v35, v36, v29);
  v38 = sub_2CDFE0();
  v39 = sub_2CE690();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v97 = v22;
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "AddMediaFlowStrategy#actionForInput", v40, 2u);
    v22 = v97;
  }

  v43 = *(v30 + 8);
  v41 = v30 + 8;
  v42 = v43;
  v43(v35, v29);
  sub_2CA790();
  v44 = sub_D2F98(v28, &v113);
  v106[1](v28, v107, v44);
  if (v114)
  {
    v89 = v33;
    v45 = v22;
    v87 = v42;
    v88 = v29;
    sub_420A4(&v113, &v115);
    sub_35E0(&v115, v116);
    v46 = v105;
    sub_2CD840();
    v47 = v111;
    v48 = (v111 + 104);
    v49 = v109;
    v96 = *(v111 + 104);
    v96(v25, enum case for CommonAudio.Verb.subscribe(_:), v109);
    v50 = *(v47 + 56);
    v97 = (v47 + 56);
    v95 = v50;
    v50(v25, 0, 1, v49);
    v51 = *(v112 + 48);
    v52 = v110;
    sub_F7598(v46, v110);
    sub_F7598(v25, &v52[v51]);
    v53 = *(v47 + 48);
    v54 = (v53)(v52, 1, v49);
    v106 = v53;
    if (v54 == 1)
    {
      sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
      v55 = v110;
      sub_30B8(v46, &qword_34D6B8, &qword_2D15B0);
      v56 = (v53)(&v55[v51], 1, v49);
      v57 = v104;
      if (v56 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_F7598(v52, v45);
      v58 = (v53)(&v52[v51], 1, v49);
      v57 = v104;
      if (v58 != 1)
      {
        v107 = v41;
        v68 = v111;
        v69 = v98;
        (*(v111 + 32))(v98, &v52[v51], v49);
        sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v86 = sub_2CE250();
        v70 = *(v68 + 8);
        v70(v69, v49);
        sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v105, &qword_34D6B8, &qword_2D15B0);
        v70(v45, v109);
        v49 = v109;
        sub_30B8(v110, &qword_34D6B8, &qword_2D15B0);
        if (v86)
        {
          goto LABEL_22;
        }

LABEL_13:
        sub_35E0(&v115, v116);
        v59 = v103;
        sub_2CD840();
        v110 = v48;
        v96(v57, enum case for CommonAudio.Verb.update(_:), v49);
        v95(v57, 0, 1, v49);
        v60 = *(v112 + 48);
        v55 = v99;
        sub_F7598(v59, v99);
        sub_F7598(v57, &v55[v60]);
        v61 = v106;
        if ((v106)(v55, 1, v49) == 1)
        {
          sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v59, &qword_34D6B8, &qword_2D15B0);
          if (v61(&v55[v60], 1, v49) == 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v62 = v91;
          sub_F7598(v55, v91);
          if (v61(&v55[v60], 1, v49) != 1)
          {
            v75 = v111;
            v76 = v98;
            (*(v111 + 32))(v98, &v55[v60], v49);
            sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v77 = sub_2CE250();
            v78 = *(v75 + 8);
            v78(v76, v109);
            sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v103, &qword_34D6B8, &qword_2D15B0);
            v78(v62, v109);
            v49 = v109;
            sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
            if (v77)
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_35E0(&v115, v116);
            v63 = v93;
            sub_2CD840();
            v64 = v92;
            v96(v92, enum case for CommonAudio.Verb.follow(_:), v49);
            v95(v64, 0, 1, v49);
            v65 = *(v112 + 48);
            v55 = v94;
            sub_F7598(v63, v94);
            sub_F7598(v64, &v55[v65]);
            v66 = v106;
            if ((v106)(v55, 1, v49) == 1)
            {
              sub_30B8(v64, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v63, &qword_34D6B8, &qword_2D15B0);
              if (v66(&v55[v65], 1, v49) == 1)
              {
LABEL_21:
                sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
LABEL_22:
                sub_2C9CE0();
                return sub_306C(&v115);
              }
            }

            else
            {
              v71 = v90;
              sub_F7598(v55, v90);
              if (v66(&v55[v65], 1, v49) != 1)
              {
                v79 = v64;
                v80 = v111;
                v81 = v63;
                v82 = v98;
                (*(v111 + 32))(v98, &v55[v65], v49);
                sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
                v83 = sub_2CE250();
                v84 = *(v80 + 8);
                v84(v82, v49);
                sub_30B8(v79, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v81, &qword_34D6B8, &qword_2D15B0);
                v84(v71, v49);
                sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
                v33 = v89;
                if (v83)
                {
                  goto LABEL_22;
                }

                goto LABEL_28;
              }

              sub_30B8(v64, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v63, &qword_34D6B8, &qword_2D15B0);
              (*(v111 + 8))(v71, v49);
            }

            sub_30B8(v55, &qword_34D6B0, &unk_2D4FC0);
            v33 = v89;
LABEL_28:
            sub_306C(&v115);
            v29 = v88;
            v42 = v87;
            goto LABEL_29;
          }

          sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v103, &qword_34D6B8, &qword_2D15B0);
          (*(v111 + 8))(v62, v49);
        }

        sub_30B8(v55, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_19;
      }

      sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
      v55 = v110;
      sub_30B8(v105, &qword_34D6B8, &qword_2D15B0);
      (*(v111 + 8))(v45, v49);
    }

    v107 = v41;
    sub_30B8(v55, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_13;
  }

  v107 = v41;
  sub_30B8(&v113, &qword_34CF98, &unk_2D1A40);
LABEL_29:
  v100(v33, v102, v29);
  v72 = sub_2CDFE0();
  v73 = sub_2CE680();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_0, v72, v73, "AddMediaFlowStrategy#actionForInput received unsupported pommesResponse", v74, 2u);
  }

  v42(v33, v29);
  return sub_2C9CF0();
}

void AddMediaFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(char *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v90 = a4;
  v91 = a3;
  v93 = a2;
  v5 = sub_2CA870();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v89 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v83 = &v74 - v10;
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v84 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v80 = &v74 - v18;
  v19 = __chkstk_darwin(v17);
  v79 = &v74 - v20;
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v24 = *(v14 + 16);
  v86 = v14 + 16;
  v87 = v23;
  v85 = v24;
  v24(v22, v23, v13);
  v25 = *(v6 + 16);
  v88 = a1;
  v92 = v25;
  v25(v12, a1, v5);
  v26 = v93;
  v27 = sub_2CDFE0();
  v28 = sub_2CE670();

  v82 = v28;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v78 = v13;
    v30 = v29;
    v76 = swift_slowAlloc();
    v95 = v76;
    *v30 = 136446722;
    v31 = sub_2CCCC0();
    v33 = sub_3F08(v31, v32, &v95);
    v77 = v14;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v92(v83, v12, v5);
    v35 = sub_2CE2A0();
    v37 = v36;
    v75 = v6;
    v83 = *(v6 + 8);
    (v83)(v12, v5);
    v38 = sub_3F08(v35, v37, &v95);

    *(v30 + 14) = v38;
    *(v30 + 22) = 2080;
    v94 = v93;
    v39 = v26;
    sub_20410(&qword_350970, qword_2D3D70);
    v40 = sub_2CE2A0();
    v42 = sub_3F08(v40, v41, &v95);

    *(v30 + 24) = v42;
    _os_log_impl(&dword_0, v27, v82, "AddMediaFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v30, 0x20u);
    swift_arrayDestroy();

    v13 = v78;

    v43 = *(v77 + 8);
    v43(v22, v13);
    v6 = v75;
  }

  else
  {

    v83 = *(v6 + 8);
    (v83)(v12, v5);
    v43 = *(v14 + 8);
    v43(v22, v13);
  }

  v44 = v89;
  v92(v89, v88, v5);
  v45 = (*(v6 + 88))(v44, v5);
  if (v45 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v46 = v13;
    (*(v6 + 96))(v44, v5);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v47 = sub_2CA830();
    objc_opt_self();
    v48 = swift_dynamicCastObjCClass();
    if (v48)
    {
      v49 = v48;
      *(v81 + 16) = sub_2CA840();

      v50 = v47;
      v91(v49, 0);
    }

    else
    {

      v66 = v79;
      v85(v79, v87, v46);
      v67 = sub_2CDFE0();
      v68 = sub_2CE670();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v67, v68, "AddMediaFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v69, 2u);
      }

      v43(v66, v46);
      v70 = sub_2CB850();
      sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v71 = swift_allocError();
      (*(*(v70 - 8) + 104))(v72, enum case for PlaybackCode.ceGE8(_:), v70);
      v91(v71, 1);
    }

    v73 = sub_2CAFE0();
    (*(*(v73 - 8) + 8))(v44, v73);
  }

  else if (v45 == enum case for Parse.pommesResponse(_:))
  {
    (*(v6 + 96))(v44, v5);
    v51 = *v44;
    v52 = v80;
    v53 = v13;
    v85(v80, v87, v13);
    v54 = v51;
    v55 = sub_2CDFE0();
    v56 = sub_2CE690();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138477827;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&dword_0, v55, v56, "AddMediaFlowStrategy#makeIntentFrom received pommesResponse: %{private}@", v57, 0xCu);
      sub_30B8(v58, &unk_34FC00, &unk_2D0150);
    }

    v43(v52, v53);
    sub_F6F40(v54, v91, v90);
  }

  else
  {
    v85(v84, v87, v13);
    v60 = sub_2CDFE0();
    v61 = sub_2CE680();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "AddMediaFlowStrategy#makeIntentFromParse received unsupported parse", v62, 2u);
    }

    v43(v84, v13);
    v63 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v64 = swift_allocError();
    (*(*(v63 - 8) + 104))(v65, enum case for PlaybackCode.ceGE9(_:), v63);
    v91(v64, 1);

    (v83)(v44, v5);
  }
}

uint64_t PlayMediaFlowStrategy.__deallocating_deinit()
{

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));

  return swift_deallocClassInstance();
}

void sub_F6F40(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v55 = &v52 - v9;
  __chkstk_darwin(v8);
  v11 = &v52 - v10;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AddMediaFlowStrategy#makeIntentFrom", v16, 2u);
  }

  v19 = *(v5 + 8);
  v17 = (v5 + 8);
  v18 = v19;
  v19(v11, v4);
  v20 = sub_1B7F14();
  if (v20)
  {
    v21 = v20;
    v53 = v18;
    v54 = v17;
    v22 = [objc_allocWithZone(INAddMediaIntent) init];
    v23 = sub_2CDAE0();
    v24 = sub_60F90(v21, v23);

    v25 = v55;
    v13(v55, v12, v4);
    v26 = v24;
    v27 = sub_2CDFE0();
    v28 = sub_2CE670();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = v30;
      *v29 = 136315138;
      v31 = v26;
      v32 = [v31 description];
      v33 = sub_2CE270();
      v35 = v34;

      v36 = sub_3F08(v33, v35, &v58);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_0, v27, v28, "AddMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v29, 0xCu);
      sub_306C(v30);

      v37 = v55;
    }

    else
    {

      v37 = v25;
    }

    v53(v37, v4);
    v48 = v26;
    v57(v26, 0);
  }

  else
  {
    v38 = v54;
    v13(v54, v12, v4);
    v39 = a1;
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58 = v43;
      *v42 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v44 = sub_2CE420();
      v46 = v45;

      v47 = sub_3F08(v44, v46, &v58);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v40, v41, "AddMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v42, 0xCu);
      sub_306C(v43);

      v18(v54, v4);
    }

    else
    {

      v18(v38, v4);
    }

    v49 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, enum case for PlaybackCode.ceGE7(_:), v49);
    v57(v50, 1);
  }
}

uint64_t type metadata accessor for AddMediaFlowStrategy(uint64_t a1)
{
  result = qword_3509A0;
  if (!qword_3509A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F7598(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ShimExperience(uint64_t a1)
{
  result = qword_350B88;
  if (!qword_350B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F76EC(uint64_t a1)
{
  sub_F7760(319);
  if (v1 <= 0x3F)
  {
    sub_2C8D90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_F7760(uint64_t a1)
{
  if (!qword_350B98)
  {
    sub_2CDB90();
    sub_2DB30(&qword_34D418, &qword_2D1258);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_350B98);
    }
  }
}

uint64_t sub_F77E0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v2 - 8);
  v75 = &v72 - v3;
  v4 = sub_20410(&qword_34D360, &qword_2D11E0);
  __chkstk_darwin(v4 - 8);
  v83 = &v72 - v5;
  v6 = type metadata accessor for AudioNLv3Intent(0);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CA870();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v84 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v78 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v73 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v74 = &v72 - v21;
  v22 = __chkstk_darwin(v20);
  v80 = &v72 - v23;
  v24 = __chkstk_darwin(v22);
  v77 = &v72 - v25;
  __chkstk_darwin(v24);
  v27 = &v72 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v85 = *(v15 + 16);
  v86 = v15 + 16;
  v85(v27, v28, v14);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v72 = v28;
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "ShuffleOnDeviceFlow#on Validating input", v31, 2u);
    v28 = v72;
  }

  v32 = *(v15 + 8);
  v32(v27, v14);
  sub_2CA790();
  v33 = (*(v9 + 88))(v13, v8);
  if (v33 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v9 + 96))(v13, v8);
      sub_20410(&qword_353070, &unk_2D0FB0);
      v84 = v13;
      v40 = sub_2CA830();
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();

      if (v41)
      {
        v42 = sub_2CA830();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v43 = sub_2CE7C0();

          if (v43)
          {
            v44 = a1;

            v45 = sub_2CAFE0();
            (*(*(v45 - 8) + 8))(v84, v45);
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      v57 = v74;
      v85(v74, v28, v14);
      v58 = sub_2CDFE0();
      v59 = sub_2CE690();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_0, v58, v59, "ShuffleOnDeviceFlow#on input is not ambiguous shuffle, rejecting", v60, 2u);
      }

      v32(v57, v14);
      v61 = sub_2CAFE0();
      (*(*(v61 - 8) + 8))(v84, v61);
      return 0;
    }

    if (v33 != enum case for Parse.uso(_:))
    {
      v85(v78, v28, v14);
      v54 = sub_2CDFE0();
      v55 = sub_2CE690();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "ShuffleOnDeviceFlow#on unexpected parse type, rejecting", v56, 2u);
      }

      v39 = v78;
      goto LABEL_28;
    }

    v48 = v84;
    sub_2CA790();
    v49 = sub_2CA7C0();
    v50 = *(v9 + 8);
    v84 = v8;
    v50(v48, v8);
    if (v49)
    {
      sub_2CAD10();
      if (v88)
      {
        sub_2CAEC0();
        if (swift_dynamicCast())
        {

LABEL_38:
          v44 = a1;
          v50(v13, v84);
          goto LABEL_39;
        }
      }

      else
      {
        sub_30B8(v87, &qword_34CEA0, &qword_2D0FC0);
      }

      if (sub_43C3C())
      {

        goto LABEL_38;
      }

      v62 = sub_43638();

      if (v62)
      {
        goto LABEL_38;
      }
    }

    v85(v73, v28, v14);
    v69 = sub_2CDFE0();
    v70 = sub_2CE690();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "ShuffleOnDeviceFlow#on input is not shuffle media item or Play on shuffle, rejecting", v71, 2u);
    }

    v32(v73, v14);
    v50(v13, v84);
    return 0;
  }

  v34 = v84;
  sub_2CA790();
  v35 = v83;
  sub_2B6170(v34, v83);
  if ((*(v81 + 48))(v35, 1, v82) != 1)
  {
    v46 = v35;
    v47 = v79;
    sub_D416C(v46, v79);
    if (!sub_2B7010())
    {
      v85(v77, v28, v14);
      v51 = sub_2CDFE0();
      v52 = sub_2CE690();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "ShuffleOnDeviceFlow#on input is not ambiguous shuffle, rejecting", v53, 2u);
      }

      v32(v77, v14);
      sub_FED50(v79);
      goto LABEL_29;
    }

    v44 = a1;
    sub_FED50(v47);
    (*(v9 + 8))(v13, v8);
LABEL_39:
    v63 = sub_2CA7B0();
    v64 = *(v63 - 8);
    v65 = v75;
    (*(v64 + 16))(v75, v44, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
    v67 = v76;
    swift_beginAccess();
    sub_FECE8(v65, v67 + v66, &qword_34E480, &qword_2D2280);
    swift_endAccess();
    return 1;
  }

  sub_30B8(v35, &qword_34D360, &qword_2D11E0);
  v85(v80, v28, v14);
  v36 = sub_2CDFE0();
  v37 = sub_2CE680();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "ShuffleOnDeviceFlow#on Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v38, 2u);
  }

  v39 = v80;
LABEL_28:
  v32(v39, v14);
LABEL_29:
  (*(v9 + 8))(v13, v8);
  return 0;
}

unint64_t sub_F83B0(void (*a1)(char *), void (*a2)(char *))
{
  v124 = a2;
  v123 = a1;
  v119 = sub_2C9EC0();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2CA870();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = (v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = v108 - v5;
  v125 = sub_2CA7B0();
  v128 = *(v125 - 8);
  v7 = *(v128 + 64);
  v8 = __chkstk_darwin(v125);
  v113 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = v108 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v112 = v108 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = v108 - v18;
  v19 = __chkstk_darwin(v17);
  v111 = v108 - v20;
  __chkstk_darwin(v19);
  v22 = v108 - v21;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v24 = *(v11 + 16);
  v121 = v23;
  v120 = v24;
  v24(v22, v23, v10);
  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "ShuffleOnDeviceFlow#execute", v27, 2u);
  }

  v28 = *(v11 + 8);
  v122 = (v11 + 8);
  v28(v22, v10);
  v29 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
  v30 = v127;
  swift_beginAccess();
  sub_F3F4(v30 + v29, v6, &qword_34E480, &qword_2D2280);
  v31 = v128;
  v32 = v125;
  if ((*(v128 + 48))(v6, 1, v125) == 1)
  {
    sub_30B8(v6, &qword_34E480, &qword_2D2280);
    v120(v14, v121, v10);
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "ShuffleOnDeviceFlow#execute Input is nil", v35, 2u);
    }

    v28(v14, v10);
    v36 = v117;
    sub_2C9EB0();
    v123(v36);
    return v118[1](v36, v119);
  }

  v109 = *(v31 + 32);
  v109(v126, v6, v32);
  v38 = v115;
  sub_2CA790();
  v39 = sub_D2F98(v38, &v129);
  v41 = v116 + 8;
  v40 = *(v116 + 8);
  (v40)(v38, v114, v39);
  if (v130)
  {
    v118 = v40;
    sub_420A4(&v129, &v131);
    sub_D8B98();
    v119 = sub_2CE7D0();
    sub_FE060(v119);
    sub_35E0(&v131, v132);
    result = sub_2CD810();
    if (result >> 62)
    {
      v105 = result;
      v42 = sub_2CEDA0();
      result = v105;
    }

    else
    {
      v42 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v108[1] = v31 + 32;
    if (v42)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }
      }

      v43 = sub_2CAC80();
      v45 = v44;

      if (v45)
      {
        v117 = v28;
        v46 = v111;
        v120(v111, v121, v10);

        v47 = sub_2CDFE0();
        v48 = sub_2CE670();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v129 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_3F08(v43, v45, &v129);
          _os_log_impl(&dword_0, v47, v48, "ShuffleOnDeviceFlow#execute Adding bundleId: %s to intent", v49, 0xCu);
          sub_306C(v50);

          v51 = v111;
        }

        else
        {

          v51 = v46;
        }

        (v117)(v51, v10);
        v71 = sub_230B38(v43, v45, 0, 0);
        v72 = [v119 backingStore];
        objc_opt_self();
        v73 = swift_dynamicCastObjCClass();
        if (!v73)
        {
        }

        [v73 setIntentMetadata:v71];

        v74 = sub_2CBD40();
        *&v129 = v43;
        *(&v129 + 1) = v45;
        __chkstk_darwin(v74);
        v107 = &v129;
        v75 = sub_13964(sub_13A68, &v106, v74);

        if (v75)
        {
          v112 = v7;
          v116 = v41;
          v76 = v110;
          v120(v110, v121, v10);
          v77 = sub_2CDFE0();
          v78 = sub_2CE670();
          v79 = os_log_type_enabled(v77, v78);
          v80 = v125;
          if (v79)
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_0, v77, v78, "ShuffleOnDeviceFlow#execute resolving routes for 1p app", v81, 2u);
          }

          (v117)(v76, v10);
          v82 = v126;
          sub_2CA790();
          v83 = v127;
          v84 = v128;
          v85 = (v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
          v86 = (v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
          v87 = (v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
          v88 = v113;
          (*(v128 + 16))(v113, v82, v80);
          v89 = (*(v84 + 80) + 48) & ~*(v84 + 80);
          v90 = swift_allocObject();
          v91 = v119;
          v90[2] = v83;
          v90[3] = v91;
          v92 = v124;
          v90[4] = v123;
          v90[5] = v92;
          v109(v90 + v89, v88, v80);
          v93 = v85[3];
          v122 = v85[4];
          v123 = sub_35E0(v85, v93);
          v94 = v86[3];
          v120 = v86[4];
          v121 = sub_35E0(v86, v94);
          v96 = v87[3];
          v95 = v87[4];
          v97 = sub_35E0(v87, v96);

          v98 = v91;

          v107 = v95;
          v99 = v115;
          sub_1E30DC(v115, v123, v121, v97, sub_FEA4C, v90, v98, v94, v93, v96, v120, v122, v107);

          (v118)(v99, v114);
          (*(v84 + 8))(v126, v80);
        }

        else
        {
          v100 = v132;
          v101 = v133;
          v102 = sub_35E0(&v131, v132);
          v103 = v119;
          v104 = v126;
          sub_FCAF4(v102, v119, v126, v123, v124, v127, v100, v101);

          (*(v128 + 8))(v104, v125);
        }

        return sub_306C(&v131);
      }
    }

    else
    {
    }

    v57 = v127;
    v58 = *(v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 24);
    v122 = *(v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 32);
    v121 = sub_35E0((v127 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider), v58);
    v59 = v128;
    v60 = v113;
    (*(v128 + 16))(v113, v126, v32);
    sub_FE8E8(&v131, &v129);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = &v7[v61 + 7];
    v63 = v32;
    v64 = v62 & 0xFFFFFFFFFFFFFFF8;
    v65 = ((v62 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    v67 = v119;
    *(v66 + 16) = v57;
    *(v66 + 24) = v67;
    v109(v66 + v61, v60, v63);
    v68 = (v66 + v64);
    v69 = v124;
    *v68 = v123;
    v68[1] = v69;
    sub_420A4(&v129, (v66 + v65));

    v70 = v67;

    sub_2CC2F0();

    (*(v59 + 8))(v126, v63);
    return sub_306C(&v131);
  }

  sub_30B8(&v129, &qword_34CF98, &unk_2D1A40);
  v52 = v112;
  v120(v112, v121, v10);
  v53 = sub_2CDFE0();
  v54 = sub_2CE680();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "ShuffleOnDeviceFlow#execute Failed to create audio intent from parse", v55, 2u);
    v31 = v128;
  }

  v28(v52, v10);
  v56 = v117;
  sub_2C9EB0();
  v123(v56);
  v118[1](v56, v119);
  return (*(v31 + 8))(v126, v32);
}

uint64_t sub_F9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13)
{
  v88 = a3;
  v97 = a9;
  v15 = sub_2CA7B0();
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v89 = v16;
  v90 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2CA870();
  v93 = *(v17 - 8);
  v94 = v17;
  __chkstk_darwin(v17);
  v19 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v86 - v25;
  v98 = v19;
  v95 = a10;
  v96 = a11;
  if (!a4)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v88 = a12;
    v55 = sub_3ED0(v20, static Logger.default);
    swift_beginAccess();
    (*(v21 + 16))(v26, v55, v20);
    v56 = sub_2CDFE0();
    v57 = sub_2CE670();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v95;
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v56, v57, "ShuffleOnDeviceFlow#execute resolving routes", v60, 2u);
    }

    (*(v21 + 8))(v26, v20);
    sub_2CA790();
    v61 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
    v62 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
    v63 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
    v65 = v91;
    v64 = v92;
    v66 = *(v91 + 16);
    v67 = v59;
    v68 = a8;
    v87 = a8;
    v69 = v90;
    v66(v90, v67, v92);
    v70 = (*(v65 + 80) + 48) & ~*(v65 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = v68;
    v71 = v96;
    v72 = v97;
    *(v45 + 3) = v97;
    *(v45 + 4) = v71;
    *(v45 + 5) = v88;
    (*(v65 + 32))(&v45[v70], v69, v64);
    v73 = v61[3];
    v95 = v61[4];
    v96 = sub_35E0(v61, v73);
    v49 = v62[3];
    v92 = v62[4];
    v50 = sub_35E0(v62, v49);
    v74 = v63[3];
    v75 = v63[4];
    v53 = sub_35E0(v63, v74);

    v54 = v72;

    v85 = v75;
    v84 = v95;
    v82 = v74;
    v83 = v92;
    v81 = v73;
    goto LABEL_13;
  }

  v27 = a8;
  v28 = sub_2CBD40();
  v99[0] = v88;
  v99[1] = a4;
  __chkstk_darwin(v28);
  v85 = v99;
  v29 = sub_13964(sub_334E8, &v83, v28);

  if (v29)
  {
    v30 = v27;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v31 = sub_3ED0(v20, static Logger.default);
    swift_beginAccess();
    (*(v21 + 16))(v24, v31, v20);
    v32 = sub_2CDFE0();
    v33 = sub_2CE670();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "ShuffleOnDeviceFlow#execute resolving routes for 1p app", v34, 2u);
    }

    (*(v21 + 8))(v24, v20);
    v35 = v95;
    sub_2CA790();
    v36 = (v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
    v37 = (v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
    v38 = (v27 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
    v40 = v91;
    v39 = v92;
    v41 = *(v91 + 16);
    v42 = v30;
    v87 = v30;
    v43 = v90;
    v41(v90, v35, v92);
    v44 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v45 = swift_allocObject();
    *(v45 + 2) = v42;
    v46 = v96;
    v47 = v97;
    *(v45 + 3) = v97;
    *(v45 + 4) = v46;
    *(v45 + 5) = a12;
    (*(v40 + 32))(&v45[v44], v43, v39);
    v48 = v36[3];
    v95 = v36[4];
    v96 = sub_35E0(v36, v48);
    v49 = v37[3];
    v92 = v37[4];
    v50 = sub_35E0(v37, v49);
    v52 = v38[3];
    v51 = v38[4];
    v53 = sub_35E0(v38, v52);

    v54 = v47;

    v85 = v51;
    v84 = v95;
    v82 = v52;
    v83 = v92;
    v81 = v48;
LABEL_13:
    v76 = v98;
    sub_1E30DC(v98, v96, v50, v53, sub_FEDAC, v45, v54, v49, v81, v82, v83, v84, v85);

    return (*(v93 + 8))(v76, v94);
  }

  v78 = a13[3];
  v79 = a13[4];
  v80 = sub_35E0(a13, v78);
  return sub_FCAF4(v80, v97, v95, v96, a12, v27, v78, v79);
}

uint64_t sub_F9ACC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v95 = a7;
  v89 = a6;
  v90 = a4;
  v86 = a5;
  v93 = a3;
  v80 = a2;
  v81 = a1;
  v7 = sub_2CA7B0();
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v84 = v8;
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA870();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v94 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20410(&qword_34D6D0, qword_2D34A0);
  __chkstk_darwin(v11 - 8);
  v79 = &v77 - v12;
  v13 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  __chkstk_darwin(v13 - 8);
  v78 = &v77 - v14;
  v15 = sub_2CE000();
  v82 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v77 - v18;
  v20 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  __chkstk_darwin(v20);
  v22 = &v77 - v21;
  v23 = sub_2CBAF0();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v77 - v28;
  sub_F3F4(v81, v22, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v22, &qword_34FF00, &qword_2D3EB0);
    v30 = v82;
  }

  else
  {
    v31 = v29;
    (*(v24 + 32))(v29, v22, v23);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    v30 = v82;
    (*(v82 + 16))(v19, v32, v15);
    v33 = sub_2CDFE0();
    v34 = sub_2CE670();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "ShuffleOnDeviceFlow#execute Adding now playing info to intent for 3p app", v35, 2u);
    }

    (*(v30 + 8))(v19, v15);
    (*(v24 + 16))(v27, v31, v23);
    type metadata accessor for NowPlayingIntent(0);
    swift_allocObject();
    v36 = sub_D4274(v27);
    v37 = v80;
    v81 = v23;
    sub_35E0(v80, v80[3]);
    v38 = v78;
    sub_2CD900();
    v39 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
    swift_beginAccess();
    sub_FECE8(v38, &v36[v39], &qword_34D6C0, &qword_2D15B8);
    swift_endAccess();
    sub_35E0(v37, v37[3]);
    v40 = v79;
    sub_2CD8D0();
    v41 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    sub_FECE8(v40, &v36[v41], &qword_34D6D0, qword_2D34A0);
    swift_endAccess();

    v43 = sub_691B0(v42, 0, 0);

    v44 = [v93 backingStore];
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    v46 = v24;
    if (v45)
    {
      v47 = v45;
      v48 = INIntentSlotValueTransformToMediaSearch();
      [v47 setMediaSearch:v48];
    }

    else
    {
    }

    (*(v46 + 8))(v31, v81);
  }

  v49 = v83;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v30 + 16))(v49, v50, v15);
  v51 = sub_2CDFE0();
  v52 = sub_2CE670();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "ShuffleOnDeviceFlow#execute resolving routes for 3p app", v53, 2u);
  }

  (*(v30 + 8))(v49, v15);
  v54 = v86;
  sub_2CA790();
  v55 = v90;
  v56 = (v90 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  v57 = (v90 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  v58 = (v90 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  v60 = v87;
  v59 = v88;
  v61 = v85;
  (*(v87 + 16))(v85, v54, v88);
  v62 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v63 = swift_allocObject();
  v64 = v93;
  *(v63 + 2) = v55;
  *(v63 + 3) = v64;
  v65 = v95;
  *(v63 + 4) = v89;
  *(v63 + 5) = v65;
  (*(v60 + 32))(&v63[v62], v61, v59);
  v66 = v56[3];
  v89 = v56[4];
  v67 = sub_35E0(v56, v66);
  v68 = v57[3];
  v88 = v57[4];
  v69 = sub_35E0(v57, v68);
  v71 = v58[3];
  v70 = v58[4];
  v72 = sub_35E0(v58, v71);

  v73 = v64;

  v76 = v70;
  v74 = v94;
  sub_1E30DC(v94, v67, v69, v72, sub_FEDAC, v63, v73, v68, v66, v71, v88, v89, v76);

  return (*(v91 + 8))(v74, v92);
}

uint64_t sub_FA444(__int16 a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v32 = a4;
  v10 = sub_2C9EC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100) != 0)
  {
    v29 = a3;
    v30 = a5;
    v19 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v17, v20, v14);
    v21 = sub_2CDFE0();
    v22 = sub_2CE680();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      v33 = v19;
      sub_FEA50();
      v25 = sub_2CEEF0();
      v27 = sub_3F08(v25, v26, &v34);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "ShuffleOnDeviceFlow#execute Route resolution failed with error: %s", v23, 0xCu);
      sub_306C(v24);
    }

    (*(v15 + 8))(v17, v14);
    if (v19 == 1)
    {
      return sub_FAB7C(v29, v32, v30);
    }

    else if (v19 == 3)
    {
      return sub_FB1B4(v29, v32, v30);
    }

    else
    {
      return sub_FA790(v29, v32, v30);
    }
  }

  else
  {
    sub_1359C4(a6, a3);
    sub_2C9EA0();
    v32(v13);

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_FA7CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a5;
  v36 = a2;
  v37 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v33 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v19 = v36;
  v20 = *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v34 = *(v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v35 = v20;
  v33[1] = sub_35E0((v36 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v34);
  v33[0] = sub_2CBD50();
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v21 = v10;
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v21, v26 + v22, &unk_3519A0, &qword_2D0980);
  strcpy((v26 + v23), "noSpeakerFound");
  *(v26 + v23 + 15) = -18;
  *(v26 + v24) = v19;
  v27 = v37;
  v28 = v38;
  *(v26 + v25) = v38;
  v29 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v39;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v40, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FAB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v13, v14, "ShuffleOnDeviceFlow#unsupportedOnPlatformErrorResponse Reached logic...", v15, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v16 = sub_112C0(_swiftEmptyArrayStorage);
  v20[3] = sub_D8B98();
  v20[4] = &off_3381B8;
  v20[0] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  v18 = a1;

  sub_3D81C(v16, v20, sub_FDDA8, v17);

  return sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_FADF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v34 = a2;
  v35 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v33 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v33[0] = 0x80000000002DD100;
  v19 = v34;
  v20 = *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v33[3] = *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v33[2] = sub_35E0((v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v20);
  v33[1] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v10, v25 + v21, &unk_3519A0, &qword_2D0980);
  v26 = (v25 + v22);
  *v26 = 0xD000000000000015;
  v26[1] = v33[0];
  *(v25 + v23) = v19;
  v27 = v35;
  v28 = v36;
  *(v25 + v24) = v36;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FB1F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void *))
{
  v25 = a4;
  v26 = a5;
  v10 = v7;
  v27 = a2;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = a1;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, v25, v20, 2u);
    a1 = v24;
  }

  (*(v14 + 8))(v16, v13);
  v28[3] = sub_D8B98();
  v28[4] = &off_3381B8;
  v28[0] = a1;
  v21 = swift_allocObject();
  v21[2] = v10;
  v21[3] = a1;
  v21[4] = v27;
  v21[5] = a3;
  v22 = a1;

  a7(v28, a6, v21);

  return sub_30B8(v28, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_FB474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v34 = a2;
  v35 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v33 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v33[0] = 0x80000000002DD0E0;
  v19 = v34;
  v20 = *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v33[3] = *(v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v33[2] = sub_35E0((v34 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v20);
  v33[1] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v10, v25 + v21, &unk_3519A0, &qword_2D0980);
  v26 = (v25 + v22);
  *v26 = 0xD000000000000011;
  v26[1] = v33[0];
  *(v25 + v23) = v19;
  v27 = v35;
  v28 = v36;
  *(v25 + v24) = v36;
  v29 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v30 = v37;
  *v29 = v27;
  v29[1] = v30;

  v31 = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v117 = a8;
  v112 = a7;
  v110 = a6;
  v106 = a5;
  v105 = a4;
  v101 = a3;
  v107 = a1;
  v115 = a9;
  v9 = sub_2C9EC0();
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin(v9);
  v116 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = __chkstk_darwin(v11);
  v100 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v97 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v15 - 8);
  v111 = &v97 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v17 - 8);
  v109 = &v97 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v19 - 8);
  v108 = &v97 - v20;
  v104 = sub_2CCB30();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2CCAC0();
  v23 = *(v102 - 8);
  __chkstk_darwin(v102);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v26 = __chkstk_darwin(v97);
  v98 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v97 - v28;
  v30 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v30);
  v32 = (&v97 - v31);
  sub_2CCFB0();

  v107 = sub_2CCF80();
  sub_F3F4(v101, v32, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    v123 = v105;
    v124 = v106;

    v125._countAndFlagsBits = 95;
    v125._object = 0xE100000000000000;
    sub_2CE350(v125);
    v35 = v123;
    v34 = v124;
    v106 = v33;
    swift_getErrorValue();
    v123 = sub_2CEEF0();
    v124 = v36;
    v37 = sub_2CE3C0();
    v39 = v38;
    v123 = v35;
    v124 = v34;

    v126._countAndFlagsBits = v37;
    v126._object = v39;
    sub_2CE350(v126);

    v40 = v102;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sllf(_:), v102);
    v41 = v103;
    v42 = v104;
    (*(v103 + 104))(v22, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v104);
    v105 = sub_2CCAE0();

    (*(v41 + 8))(v22, v42);
    (*(v23 + 8))(v25, v40);
    sub_35E0((v110 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider), *(v110 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 24));
    v43 = enum case for ActivityType.failed(_:);
    v44 = sub_2C9C20();
    v45 = *(v44 - 8);
    v46 = v108;
    (*(v45 + 104))(v108, v43, v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v47 = sub_2CA130();
    v48 = v109;
    (*(*(v47 - 8) + 56))(v109, 1, 1, v47);
    v49 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v50 = sub_2C98F0();
    v51 = *(v50 - 8);
    v52 = v111;
    (*(v51 + 104))(v111, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);

    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v52, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v48, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v46, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v53 = v114;
    v54 = sub_3ED0(v114, static Logger.default);
    swift_beginAccess();
    v55 = v113;
    v56 = v100;
    (*(v113 + 16))(v100, v54, v53);
    swift_errorRetain();
    v57 = sub_2CDFE0();
    v58 = sub_2CE680();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v122 = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v120 = sub_2CEEF0();
      v121 = v61;
      v62 = sub_2CE3C0();
      v64 = sub_3F08(v62, v63, &v122);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_0, v57, v58, "ShuffleOnDeviceFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v59, 0xCu);
      sub_306C(v60);

      (*(v55 + 8))(v100, v53);
    }

    else
    {

      (*(v55 + 8))(v56, v53);
    }

    v96 = v116;
    sub_2C9EB0();
    v117(v96);

    return (*(v118 + 8))(v96, v119);
  }

  else
  {
    v65 = v29;
    sub_14A58(v32, v29, &qword_34C6E8, &unk_2D0FF0);
    v66 = v102;
    (*(v23 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.sllf(_:), v102);
    v67 = v103;
    v68 = v104;
    (*(v103 + 104))(v22, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v104);
    v106 = sub_2CCAE0();
    v105 = v69;
    (*(v67 + 8))(v22, v68);
    (*(v23 + 8))(v25, v66);
    v70 = v110;
    v71 = *(v110 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 24);
    v103 = *(v110 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 32);
    v104 = sub_35E0((v110 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider), v71);
    v72 = enum case for ActivityType.completed(_:);
    v73 = sub_2C9C20();
    v74 = *(v73 - 8);
    v75 = v108;
    (*(v74 + 104))(v108, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v76 = v98;
    sub_F3F4(v65, v98, &qword_34C6E8, &unk_2D0FF0);
    v77 = *(v76 + *(v97 + 48));

    v78 = sub_2CA130();
    v79 = *(v78 - 8);
    v80 = v109;
    (*(v79 + 32))(v109, v76, v78);
    (*(v79 + 56))(v80, 0, 1, v78);
    v81 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v82 = sub_2C98F0();
    v83 = *(v82 - 8);
    v84 = v111;
    (*(v83 + 104))(v111, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v84, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v80, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
    v85 = sub_2C9BD0();
    sub_35E0((v70 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker), *(v70 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker + 24));
    sub_2CA150();
    v86 = v65;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v87 = v114;
    v88 = sub_3ED0(v114, static Logger.default);
    swift_beginAccess();
    v89 = v113;
    v90 = v99;
    (*(v113 + 16))(v99, v88, v87);
    v91 = sub_2CDFE0();
    v92 = sub_2CE670();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_0, v91, v92, "ShuffleOnDeviceFlow#handleDialogResult Dialog successfully generated, responding and exiting...", v93, 2u);
    }

    (*(v89 + 8))(v90, v87);
    v94 = v116;
    sub_2C9EB0();
    v117(v94);

    (*(v118 + 8))(v94, v119);
    return sub_30B8(v86, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_FC820()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider));
  return v0;
}

uint64_t sub_FC8F8()
{
  sub_FC820();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShuffleOnDeviceFlow(uint64_t a1)
{
  result = qword_350BF8;
  if (!qword_350BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FC9A4(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_FCAA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShuffleOnDeviceFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_FCAF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v151 = a6;
  v158 = a5;
  v149 = a4;
  v145 = a3;
  v150 = a2;
  v139 = sub_2CA870();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v156 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = sub_2CA7B0();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = v12;
  v146 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CD540();
  v125 = *(v13 - 8);
  __chkstk_darwin(v13);
  v121 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  __chkstk_darwin(v124);
  v126 = &v120 - v15;
  v143 = sub_2CD570();
  v155 = *(v143 - 8);
  __chkstk_darwin(v143);
  v123 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_20410(&qword_34D688, &qword_2D1588);
  __chkstk_darwin(v141);
  v142 = &v120 - v17;
  v133 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v18 = __chkstk_darwin(v133);
  v122 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v131 = &v120 - v21;
  v22 = __chkstk_darwin(v20);
  v132 = &v120 - v23;
  __chkstk_darwin(v22);
  v129 = &v120 - v24;
  v128 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v25 = __chkstk_darwin(v128);
  v130 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v154 = &v120 - v28;
  v29 = __chkstk_darwin(v27);
  v159 = (&v120 - v30);
  __chkstk_darwin(v29);
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v137 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v120 - v35;
  v164[3] = a7;
  v164[4] = a8;
  v140 = a8;
  v37 = sub_F390(v164);
  v38 = *(*(a7 - 8) + 16);
  v153 = v37;
  v38(v37, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v39 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v40 = *(v32 + 16);
  v136 = v39;
  v135 = v32 + 16;
  v134 = v40;
  v40(v36, v39, v31);
  sub_EEAC(v164, &v162);
  sub_EEAC(v164, v161);
  v41 = sub_2CDFE0();
  v42 = v32;
  v43 = sub_2CE670();
  v44 = os_log_type_enabled(v41, v43);
  v127 = v13;
  v152 = v42;
  v157 = v31;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v160 = v120;
    *v45 = 136315394;
    sub_35E0(&v162, v163);
    sub_2CD900();
    v46 = sub_2CE2A0();
    v48 = v47;
    sub_306C(&v162);
    v49 = sub_3F08(v46, v48, &v160);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    sub_35E0(v161, v161[3]);
    sub_2CD8D0();
    v50 = sub_2CE2A0();
    v52 = v51;
    sub_306C(v161);
    v53 = sub_3F08(v50, v52, &v160);

    *(v45 + 14) = v53;
    _os_log_impl(&dword_0, v41, v43, "ShuffleOnDeviceFlow#execute reference: %s mediaType: %s", v45, 0x16u);
    swift_arrayDestroy();

    v133 = *(v152 + 8);
    v133(v36, v157);
  }

  else
  {

    v133 = *(v42 + 8);
    v133(v36, v31);
    sub_306C(&v162);
    sub_306C(v161);
  }

  v54 = v159;
  sub_2CD900();
  v55 = v155;
  v56 = v154;
  v57 = v143;
  (*(v155 + 104))(v154, enum case for CommonAudio.Reference.definite(_:), v143);
  (*(v55 + 56))(v56, 0, 1, v57);
  v58 = *(v141 + 48);
  v59 = v142;
  sub_F3F4(v54, v142, &qword_34D6C0, &qword_2D15B8);
  sub_F3F4(v56, v59 + v58, &qword_34D6C0, &qword_2D15B8);
  v60 = *(v55 + 48);
  if (v60(v59, 1, v57) != 1)
  {
    v63 = v130;
    sub_F3F4(v59, v130, &qword_34D6C0, &qword_2D15B8);
    if (v60(v59 + v58, 1, v57) != 1)
    {
      v64 = v155;
      v65 = v59 + v58;
      v66 = v123;
      (*(v155 + 32))(v123, v65, v57);
      sub_FEB4C(&qword_34D700, &type metadata accessor for CommonAudio.Reference, &protocol conformance descriptor for CommonAudio.Reference);
      LODWORD(v141) = sub_2CE250();
      v67 = *(v64 + 8);
      v67(v66, v57);
      sub_30B8(v154, &qword_34D6C0, &qword_2D15B8);
      sub_30B8(v159, &qword_34D6C0, &qword_2D15B8);
      v67(v63, v57);
      sub_30B8(v59, &qword_34D6C0, &qword_2D15B8);
      v62 = v157;
      if ((v141 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    sub_30B8(v154, &qword_34D6C0, &qword_2D15B8);
    sub_30B8(v159, &qword_34D6C0, &qword_2D15B8);
    (*(v155 + 8))(v63, v57);
    v62 = v157;
LABEL_11:
    sub_30B8(v59, &qword_34D688, &qword_2D1588);
    goto LABEL_19;
  }

  sub_30B8(v56, &qword_34D6C0, &qword_2D15B8);
  sub_30B8(v159, &qword_34D6C0, &qword_2D15B8);
  v61 = v60(v59 + v58, 1, v57);
  v62 = v157;
  if (v61 != 1)
  {
    goto LABEL_11;
  }

  sub_30B8(v59, &qword_34D6C0, &qword_2D15B8);
LABEL_13:
  v68 = v132;
  sub_2CD8D0();
  v69 = v125;
  v70 = v131;
  v71 = v127;
  (*(v125 + 104))(v131, enum case for CommonAudio.MediaType.album(_:), v127);
  (*(v69 + 56))(v70, 0, 1, v71);
  v72 = *(v124 + 48);
  v73 = v126;
  sub_F3F4(v68, v126, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v70, v73 + v72, &qword_34D6D0, qword_2D34A0);
  v74 = *(v69 + 48);
  if (v74(v73, 1, v71) == 1)
  {
    sub_30B8(v70, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v68, &qword_34D6D0, qword_2D34A0);
    if (v74(v73 + v72, 1, v71) == 1)
    {
      sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
LABEL_24:
      v107 = v151;
      v108 = *(v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 24);
      v159 = *(v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 32);
      sub_35E0((v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider), v108);
      sub_EEAC(v164, &v162);
      v109 = v147;
      v110 = v146;
      v111 = v148;
      (*(v147 + 16))(v146, v145, v148);
      v112 = (*(v109 + 80) + 72) & ~*(v109 + 80);
      v113 = (v144 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v114 = swift_allocObject();
      sub_F338(&v162, v114 + 16);
      v115 = v150;
      *(v114 + 56) = v150;
      *(v114 + 64) = v107;
      (*(v109 + 32))(v114 + v112, v110, v111);
      v116 = (v114 + v113);
      v117 = v158;
      *v116 = v149;
      v116[1] = v117;
      v118 = v115;

      sub_2CC300();

      return sub_306C(v164);
    }

    goto LABEL_18;
  }

  v75 = v122;
  sub_F3F4(v73, v122, &qword_34D6D0, qword_2D34A0);
  if (v74(v73 + v72, 1, v71) == 1)
  {
    sub_30B8(v131, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v132, &qword_34D6D0, qword_2D34A0);
    (*(v69 + 8))(v75, v71);
LABEL_18:
    sub_30B8(v73, &qword_34D6A8, &unk_2D15A0);
    v62 = v157;
    goto LABEL_19;
  }

  v102 = v73 + v72;
  v103 = v121;
  (*(v69 + 32))(v121, v102, v71);
  sub_FEB4C(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
  v104 = v75;
  v105 = sub_2CE250();
  v106 = *(v69 + 8);
  v106(v103, v71);
  sub_30B8(v131, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v132, &qword_34D6D0, qword_2D34A0);
  v106(v104, v71);
  sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
  v62 = v157;
  if (v105)
  {
    goto LABEL_24;
  }

LABEL_19:
  v76 = v137;
  v134(v137, v136, v62);
  v77 = sub_2CDFE0();
  v78 = sub_2CE670();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v77, v78, "ShuffleOnDeviceFlow#execute resolving routes for 3p app", v79, 2u);
  }

  v133(v76, v62);
  v80 = v145;
  sub_2CA790();
  v81 = v151;
  v82 = (v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  v83 = (v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  v84 = (v151 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  v85 = v147;
  v86 = v146;
  v87 = v148;
  (*(v147 + 16))(v146, v80, v148);
  v88 = (*(v85 + 80) + 48) & ~*(v85 + 80);
  v89 = swift_allocObject();
  v90 = v150;
  *(v89 + 2) = v81;
  *(v89 + 3) = v90;
  v91 = v158;
  *(v89 + 4) = v149;
  *(v89 + 5) = v91;
  (*(v85 + 32))(&v89[v88], v86, v87);
  v92 = v82[3];
  v159 = v82[4];
  v93 = sub_35E0(v82, v92);
  v94 = v83[3];
  v157 = v83[4];
  v95 = sub_35E0(v83, v94);
  v97 = v84[3];
  v96 = v84[4];
  v98 = sub_35E0(v84, v97);
  v99 = v90;

  v119 = v96;
  v100 = v156;
  sub_1E30DC(v156, v93, v95, v98, sub_FEDAC, v89, v99, v94, v92, v97, v157, v159, v119);

  (*(v138 + 8))(v100, v139);
  return sub_306C(v164);
}

uint64_t sub_FDDB4()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_FDE08()
{
  v1 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_2CA130();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = (((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_FDF7C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_FB830(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_FE060(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v67 - v7;
  v8 = sub_2C9D60();
  v81 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v76 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v13 = &v67 - v12;
  __chkstk_darwin(v11);
  v80 = &v67 - v14;
  v15 = sub_2C9D80();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  v22 = sub_2CB460();
  if (v22)
  {
    v77 = v3;
    v23 = v2;
    v74 = a1;
    v75 = v8;
    v24 = v22;
    sub_2CB100();
    sub_2CA3A0();

    v73 = sub_2C9D50();
    v26 = v25;
    v27 = *(v16 + 8);
    v27(v21, v15);
    v79 = v26;
    if (v26)
    {
      v71 = v24;
      sub_2CB100();
      sub_2CA3A0();

      v28 = v80;
      sub_2C9D70();
      v27(v19, v15);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v29 = v23;
      v30 = sub_3ED0(v23, static Logger.default);
      swift_beginAccess();
      v32 = v77;
      v31 = v78;
      (*(v77 + 16))(v78, v30, v29);
      v33 = v81;
      v34 = v28;
      v35 = v75;
      v72 = *(v81 + 16);
      v72(v13, v34);

      v36 = sub_2CDFE0();
      v37 = sub_2CE670();

      v69 = v37;
      v70 = v36;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v82[0] = v68;
        *v38 = 136315394;
        *(v38 + 4) = sub_3F08(v73, v79, v82);
        *(v38 + 12) = 2080;
        (v72)(v76, v13, v35);
        v39 = sub_2CE2A0();
        v40 = v33;
        v41 = v39;
        v42 = v31;
        v44 = v43;
        v76 = *(v40 + 8);
        v76(v13, v35);
        v45 = sub_3F08(v41, v44, v82);

        *(v38 + 14) = v45;
        v46 = v70;
        _os_log_impl(&dword_0, v70, v69, "ShuffleOnDeviceFlow#attachUserIdentity attaching sharedUserID: %s with confidence: %s", v38, 0x16u);
        swift_arrayDestroy();

        (*(v32 + 8))(v42, v29);
      }

      else
      {

        v76 = *(v33 + 8);
        v76(v13, v35);
        (*(v32 + 8))(v31, v29);
      }

      v82[3] = v35;
      v82[4] = &protocol witness table for IdentifiedUser.Classification;
      v52 = sub_F390(v82);
      v53 = v80;
      (v72)(v52, v80, v35);
      v54 = sub_2CEA10();
      sub_306C(v82);
      v55 = objc_allocWithZone(INSpeakerIDInfo);
      v56 = sub_2CE260();
      v57 = [v55 initWithSharedUserID:v56 speakerIDConfidence:v54];

      v58 = objc_allocWithZone(INPrivateMediaIntentData);
      v59 = v57;
      v60 = sub_2CE260();

      v61 = [v58 initWithSpeakerIDInfo:v59 proxiedThirdPartyAppInfo:0 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:0 nlConfidenceLevel:0 asrConfidenceScore:0 asrConfidenceLevel:0 resolvedSharedUserID:v60 homeAutomationEntityProvider:0];

      v62 = [objc_allocWithZone(INPrivatePlayMediaIntentData) initWithAppSelectionEnabled:0 appInferred:0 audioSearchResults:0 privateMediaIntentData:v61 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:0 isAmbiguousPlay:0 isPersonalizedRequest:0 internalSignals:0 entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0];
      v63 = [v74 backingStore];
      objc_opt_self();
      v64 = swift_dynamicCastObjCClass();
      if (v64)
      {
        v65 = v64;
        v66 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
        [v65 setPrivatePlayMediaIntentData:v66];
      }

      else
      {
      }

      return (v76)(v53, v35);
    }

    v2 = v23;
    v3 = v77;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v47 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v47, v2);
  v48 = sub_2CDFE0();
  v49 = sub_2CE680();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "ShuffleOnDeviceFlow#attachUserIdentity failed to get sharedUserId from SiriEnvironment", v50, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_FE8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_FE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(sub_2CA7B0() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_F9368(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), (v7 + v16), *(v7 + v17), *(v7 + v17 + 8), (v7 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_FEA50()
{
  result = qword_350D30;
  if (!qword_350D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350D30);
  }

  return result;
}

uint64_t sub_FEAA4(uint64_t a1)
{
  v3 = *(sub_2CA7B0() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);

  return sub_F9ACC(a1, v1 + 2, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_FEB4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_FEB94()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_FEC68(__int16 a1)
{
  v3 = *(sub_2CA7B0() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_FA444(a1 & 0x1FF, v4, v5, v6, v7, v8);
}

uint64_t sub_FECE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_FED50(uint64_t a1)
{
  v2 = type metadata accessor for AudioNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AppSelectionContext.saveRecord(app:intent:intentResponseCode:requestCancelled:pseSignalsStitcher:)(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v37 = a5;
  v39 = a4;
  v38 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  v13 = swift_allocBox();
  v15 = v14;
  sub_2CC2A0();
  if (a1)
  {
    v36 = a2;

    v16 = sub_2CCF90();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v35 = a6;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v20 = sub_3ED0(v9, static Logger.default);
      swift_beginAccess();
      (*(v10 + 16))(v12, v20, v9);

      v21 = sub_2CDFE0();
      v22 = sub_2CE670();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33[1] = v15;
        v24 = v23;
        v25 = swift_slowAlloc();
        v34 = v18;
        v26 = v25;
        v40[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_3F08(v34, v19, v40);
        _os_log_impl(&dword_0, v21, v22, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v24, 0xCu);
        sub_306C(v26);
      }

      (*(v10 + 8))(v12, v9);
      a6 = v35;
      sub_2CC260();
    }

    a2 = v36;
  }

  sub_2CBC60();
  sub_35E0(v40, v40[3]);
  v27 = sub_2CBE60();
  v29 = v28;
  sub_306C(v40);
  sub_2CC0E0();
  v30 = swift_allocObject();
  *(v30 + 16) = v37 & 1;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = a2;
  *(v30 + 48) = a1;
  *(v30 + 56) = v13;
  *(v30 + 64) = a6;
  *(v30 + 72) = v38;
  *(v30 + 80) = v39 & 1;
  v31 = a2;

  sub_2CC0C0();
}

uint64_t sub_FF13C(uint64_t a1, char a2, void **a3, uint64_t a4, void **a5, uint64_t (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v155 = a8;
  v157 = a6;
  v147 = sub_2CE150();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2CE180();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2CC100();
  v159 = *(v156 - 8);
  v18 = __chkstk_darwin(v156);
  v140 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v19;
  __chkstk_darwin(v18);
  v154 = v132 - v20;
  v21 = sub_20410(&qword_34E000, &qword_2D1D48);
  __chkstk_darwin(v21 - 8);
  v134 = v132 - v22;
  v152 = sub_2CBF80();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v135 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20410(&qword_3504F8, &qword_2D3B48);
  v25 = __chkstk_darwin(v24 - 8);
  v153 = v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v137 = v132 - v27;
  v28 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v29 = __chkstk_darwin(v28 - 8);
  v150 = v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v136 = v132 - v31;
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v161 = v32;
  v162 = v33;
  v34 = __chkstk_darwin(v32);
  v149 = v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v138 = v132 - v37;
  v38 = __chkstk_darwin(v36);
  v133 = v132 - v39;
  __chkstk_darwin(v38);
  v41 = v132 - v40;
  v42 = sub_2CC990();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  v141 = a7;
  v132[2] = swift_projectBox();
  if (qword_34C028 != -1)
  {
    swift_once();
  }

  v46 = a2 & 1;
  v47 = a1;
  v148 = a3;
  v158 = a4;
  sub_27061C(a1, v46, a3, a4);
  v160 = a5;
  if (a5)
  {
    aBlock = a5;
    (*(v43 + 104))(v45, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v42);
    sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v48 = a5;
    sub_2CCB50();
    (*(v43 + 8))(v45, v42);
  }

  sub_2CC980();
  sub_2CC970();
  if (v157)
  {
    sub_2CCF90();
    if (!v160)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v160)
  {
LABEL_7:
    sub_2CE760();
  }

LABEL_9:
  sub_2CC960();

  if (v47)
  {
    v49 = qword_34BF58;

    v50 = v49 == -1;
    v51 = v161;
    v52 = v162;
    if (!v50)
    {
      swift_once();
    }

    v53 = sub_3ED0(v51, static Logger.default);
    swift_beginAccess();
    v55 = *(v52 + 16);
    v54 = (v52 + 16);
    v157 = v55;
    v55(v41, v53, v51);

    v56 = sub_2CDFE0();
    v57 = v47;
    v58 = sub_2CE670();
    if (os_log_type_enabled(v56, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67109376;
      v149 = v54;
      v60 = v53;
      v61 = v136;
      sub_2CC0B0();
      v62 = v151;
      v63 = v152;
      v64 = (*(v151 + 48))(v61, 1, v152) != 1;
      sub_30B8(v61, &qword_34DD30, &unk_2D1BC0);
      *(v59 + 4) = v64;
      *(v59 + 8) = 1024;
      v65 = v137;
      sub_2CC080();
      v66 = (*(v159 + 48))(v65, 1, v156) != 1;
      v67 = v65;
      v53 = v60;
      v54 = v149;
      sub_30B8(v67, &qword_3504F8, &qword_2D3B48);
      *(v59 + 10) = v66;

      _os_log_impl(&dword_0, v56, v58, "AppSelectionContext#saveRecord context present, with report?:%{BOOL}d and rawSignalResult?:%{BOOL}d", v59, 0xEu);
    }

    else
    {

      v63 = v152;
      v62 = v151;
    }

    v85 = v150;
    v86 = *(v162 + 8);
    v162 += 8;
    v86(v41, v161);
    sub_2CC0B0();
    v87 = (*(v62 + 48))(v85, 1, v63);
    v88 = v158;
    if (v87)
    {
      sub_30B8(v85, &qword_34DD30, &unk_2D1BC0);
      v89 = v153;
      v90 = v161;
    }

    else
    {
      v91 = v135;
      (*(v62 + 16))(v135, v85, v63);
      sub_30B8(v85, &qword_34DD30, &unk_2D1BC0);
      v92 = sub_2CBEE0();
      (*(v62 + 8))(v91, v63);
      v89 = v153;
      v90 = v161;
      if (v92)
      {
        v93 = v133;
        v157(v133, v53, v161);
        v94 = sub_2CDFE0();
        v95 = sub_2CE670();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v149 = v54;
          *v96 = 0;
          _os_log_impl(&dword_0, v94, v95, "AppSelectionContext#saveRecord setting appSelectionLastUsed", v96, 2u);
        }

        v86(v93, v90);
        v97 = v134;
        sub_2C8E20();
        v98 = sub_2C8E30();
        (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
        swift_beginAccess();
        sub_2CC250();
        swift_endAccess();
      }
    }

    sub_2CC080();
    v99 = v159;
    v100 = v156;
    if ((*(v159 + 48))(v89, 1, v156) == 1)
    {
      sub_30B8(v89, &qword_3504F8, &qword_2D3B48);
      v101 = v138;
      v157(v138, v53, v90);

      v102 = sub_2CDFE0();
      v103 = sub_2CE690();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *v104 = 136446466;
        v105 = sub_2CCCC0();
        v107 = sub_3F08(v105, v106, &v171);

        *(v104 + 4) = v107;
        *(v104 + 12) = 2082;
        aBlock = v148;
        v164 = v88;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v108 = sub_2CE2A0();
        v110 = sub_3F08(v108, v109, &v171);

        *(v104 + 14) = v110;
        _os_log_impl(&dword_0, v102, v103, "AppSelectionContext#saveRecord %{public}s no rawSignalResult present for refId: %{public}s", v104, 0x16u);
        swift_arrayDestroy();

        v111 = v101;
        v112 = v161;
      }

      else
      {

        v111 = v101;
        v112 = v90;
      }

      return (v86)(v111, v112);
    }

    else
    {
      LODWORD(v161) = a10;
      v158 = a9;
      v132[1] = v57;
      v113 = *(v99 + 32);
      v114 = v154;
      v113(v154, v89, v100);
      v115 = v100;
      v157 = sub_2CC0A0();
      v162 = sub_2CBA10();
      v116 = v140;
      (*(v99 + 16))(v140, v114, v115);
      v117 = (*(v99 + 80) + 24) & ~*(v99 + 80);
      v118 = (v139 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + 31) & 0xFFFFFFFFFFFFFFF8;
      v120 = swift_allocObject();
      *(v120 + 16) = v155;
      v113((v120 + v117), v116, v115);
      v122 = v157;
      v121 = v158;
      *(v120 + v118) = v157;
      v123 = v120 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v123 = v121;
      *(v123 + 8) = v161 & 1;
      v124 = v160;
      *(v120 + v119) = v160;
      *(v120 + ((v119 + 15) & 0xFFFFFFFFFFFFFFF8)) = v141;
      v167 = sub_100F48;
      v168 = v120;
      aBlock = _NSConcreteStackBlock;
      v164 = 1107296256;
      v165 = sub_A4294;
      v166 = &unk_335440;
      v125 = _Block_copy(&aBlock);
      v126 = v122;

      v127 = v124;

      v128 = v142;
      sub_2CE160();
      v171 = _swiftEmptyArrayStorage;
      sub_10101C();
      sub_20410(&qword_34DD48, &qword_2D5F80);
      sub_7DDE8();
      v129 = v144;
      v130 = v147;
      sub_2CEC10();
      v131 = v162;
      sub_2CE9C0();
      _Block_release(v125);

      (*(v146 + 8))(v129, v130);
      (*(v143 + 8))(v128, v145);
      (*(v159 + 8))(v154, v115);
    }
  }

  else
  {
    v68 = v158;
    v69 = v161;
    v70 = v162;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v71 = sub_3ED0(v69, static Logger.default);
    swift_beginAccess();
    v72 = v149;
    (*(v70 + 16))(v149, v71, v69);

    v73 = sub_2CDFE0();
    v74 = sub_2CE690();

    v75 = os_log_type_enabled(v73, v74);
    v76 = v148;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *v77 = 136446466;
      v78 = sub_2CCCC0();
      v80 = sub_3F08(v78, v79, &v171);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2082;
      v169 = v76;
      v170 = v68;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v81 = sub_2CE2A0();
      v83 = sub_3F08(v81, v82, &v171);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_0, v73, v74, "AppSelectionContext#saveRecord %{public}s no context present for refId: %{public}s", v77, 0x16u);
      swift_arrayDestroy();

      return (*(v70 + 8))(v149, v69);
    }

    else
    {

      return (*(v70 + 8))(v72, v69);
    }
  }
}

uint64_t sub_10030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5 & 1;
  *(v11 + 32) = a6;
  *(v11 + 40) = a7;
  v12 = a6;

  sub_2CC050();
}

uint64_t sub_1003CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v92) = a3;
  v7 = sub_2CC100();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_350500, &unk_2D3B50);
  __chkstk_darwin(v9 - 8);
  v97 = &v85 - v10;
  v101 = sub_2C8E80();
  v98 = *(v101 - 8);
  v11 = __chkstk_darwin(v101);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v85 - v13;
  v14 = sub_2CE000();
  v103 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v99 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v86 = &v85 - v18;
  __chkstk_darwin(v17);
  v102 = &v85 - v19;
  v85 = sub_20410(&qword_350D38, &unk_2D3EC0);
  v20 = __chkstk_darwin(v85);
  v91 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v85 - v22;
  v24 = sub_2C8E30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  swift_projectBox();
  sub_2C8E20();
  v96 = a1;
  v28 = sub_2CC0F0();
  (*(v25 + 8))(v27, v24);
  if (a4)
  {
    sub_2CE8C0();
  }

  else
  {
    v29 = sub_2CC5F0();
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  }

  isa = sub_2CE560().super.super.isa;
  v106 = sub_334A0(0, &qword_353110, NSNumber_ptr);
  v105[0] = isa;
  v31 = sub_2CBC90();
  sub_235D24(v105, 0xD000000000000013, 0x80000000002DD120);
  v31(v104, 0);
  swift_beginAccess();
  v32 = sub_2CC280();
  v106 = &type metadata for Int;
  v105[0] = v32;
  swift_endAccess();
  v33 = sub_2CBC90();
  sub_235D24(v105, 0xD000000000000010, 0x80000000002DD140);
  v33(v104, 0);
  v34 = v103;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v36 = *(v34 + 16);
  v37 = v102;
  v90 = v35;
  v89 = v36;
  v36(v102, v35, v14);
  v38 = v91;
  sub_101084(v23, v91);
  v39 = v28;
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();

  v42 = os_log_type_enabled(v40, v41);
  v92 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v88 = v23;
    v44 = v43;
    v104[0] = swift_slowAlloc();
    *v44 = 136446722;
    v45 = sub_2CCCC0();
    v47 = sub_3F08(v45, v46, v104);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    sub_2CBCA0();
    v48 = sub_2CE210();
    v50 = v49;

    v51 = sub_3F08(v48, v50, v104);

    *(v44 + 14) = v51;
    *(v44 + 22) = 2080;
    v52 = sub_2CEB70();
    v54 = v53;
    sub_30B8(v38, &qword_350D38, &unk_2D3EC0);
    v55 = sub_3F08(v52, v54, v104);

    *(v44 + 24) = v55;
    _os_log_impl(&dword_0, v40, v41, "AppSelectionContext#saveRecord %{public}s info: %s, resolution result type: %s, recording to SELF...", v44, 0x20u);
    swift_arrayDestroy();

    v23 = v88;

    v56 = *(v103 + 8);
    v56(v102, v14);
  }

  else
  {

    sub_30B8(v38, &qword_350D38, &unk_2D3EC0);
    v56 = *(v34 + 8);
    v56(v37, v14);
  }

  v57 = v101;
  v58 = v99;
  v59 = v97;
  sub_2CB780();
  (*(v94 + 16))(v93, v96, v95);
  sub_2CB760();
  sub_2CB770();

  v60 = v98;
  v61 = (*(v98 + 48))(v59, 1, v57);
  v62 = v100;
  if (v61 == 1)
  {
    sub_30B8(v59, &qword_350500, &unk_2D3B50);
    v63 = v86;
    v89(v86, v90, v14);
    v64 = sub_2CDFE0();
    v65 = sub_2CE680();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "AppSelectionContext#saveRecord unexpected failed to save record to SELF, uuid nil", v66, 2u);
    }

    v56(v63, v14);
    goto LABEL_16;
  }

  v102 = v56;
  (*(v60 + 32))(v100, v59, v57);
  v89(v58, v90, v14);
  v67 = v87;
  (*(v60 + 16))(v87, v62, v57);
  v68 = sub_2CDFE0();
  v69 = sub_2CE690();
  if (!os_log_type_enabled(v68, v69))
  {

    v83 = *(v60 + 8);
    v83(v67, v57);
    (v102)(v58, v14);
    v83(v62, v57);
LABEL_16:
    v82 = v23;
    return sub_30B8(v82, &qword_350D38, &unk_2D3EC0);
  }

  v70 = swift_slowAlloc();
  v104[0] = swift_slowAlloc();
  *v70 = 136446466;
  v71 = sub_2CCC80();
  v73 = sub_3F08(v71, v72, v104);

  *(v70 + 4) = v73;
  *(v70 + 12) = 2080;
  v74 = sub_2C8E60();
  v76 = v75;
  v88 = v23;
  v77 = v14;
  v78 = *(v60 + 8);
  v79 = v67;
  v80 = v101;
  v78(v79, v101);
  v81 = sub_3F08(v74, v76, v104);

  *(v70 + 14) = v81;
  _os_log_impl(&dword_0, v68, v69, "AppSelectionContext#saveRecord %{public}s saved record with UUID: %s", v70, 0x16u);
  swift_arrayDestroy();

  (v102)(v99, v77);
  v78(v100, v80);
  v82 = v88;
  return sub_30B8(v82, &qword_350D38, &unk_2D3EC0);
}

uint64_t sub_100F48()
{
  v1 = *(sub_2CC100() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10030C(v5, v0 + v2, v6, v8, v9, v10, v11);
}

uint64_t sub_101004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10101C()
{
  result = qword_34FF20;
  if (!qword_34FF20)
  {
    sub_2CE150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF20);
  }

  return result;
}

uint64_t sub_101084(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_350D38, &unk_2D3EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Determine.UnsupportedValueStrategy.makeUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *(v8 + 16);
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a7;
  v17[6] = a8;
  v18 = *(*v16 + 200);

  v19 = a2;

  v18(a1, a3, a4, a6, v19, a5, 0, sub_102118, v17);
}

uint64_t sub_101208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v110 = a5;
  v111 = a6;
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v96 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v95 = &v88 - v7;
  v93 = sub_2CCB20();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v103);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v88 - v11;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v106 = &v88 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v105 = &v88 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v19 = &v88 - v18;
  v102 = sub_2CCB30();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2CCAC0();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v88 - v27;
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v88 - v30);
  sub_F3F4(v96, &v88 - v30, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v104 = v19;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = *v31;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v23 + 16))(v28, v34, v22);
    swift_errorRetain();
    v35 = sub_2CDFE0();
    v36 = sub_2CE680();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&dword_0, v35, v36, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v37, 0xCu);
      sub_30B8(v38, &unk_34FC00, &unk_2D0150);
    }

    (*(v23 + 8))(v28, v22);
    v40 = v99;
    v41 = v97;
    v42 = v100;
    (*(v99 + 104))(v97, enum case for AdditionalMetricsDescription.ModuleName.duvs(_:), v100);
    v43 = v101;
    v44 = v98;
    v45 = v102;
    (*(v101 + 104))(v98, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v102);
    swift_getErrorValue();
    sub_2CEEF0();
    v103 = sub_2CCAE0();

    (*(v43 + 8))(v44, v45);
    (*(v40 + 8))(v41, v42);
    v107 = sub_35E0(v107 + 3, v107[6]);
    v46 = enum case for ActivityType.failed(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v104;
    (*(v48 + 104))(v104, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = sub_2CA130();
    v51 = v105;
    (*(*(v50 - 8) + 56))(v105, 1, 1, v50);
    v52 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v106;
    (*(v54 + 104))(v106, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    v112[0] = v33;
    v113 = 1;
    swift_errorRetain();
    v110(v112);

    return sub_30B8(v112, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v31, v12);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v57 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v23 + 16))(v26, v57, v22);
    v58 = sub_2CDFE0();
    v59 = sub_2CE690();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v60, 2u);
    }

    (*(v23 + 8))(v26, v22);
    v61 = v99;
    v62 = v97;
    v63 = v100;
    (*(v99 + 104))(v97, enum case for AdditionalMetricsDescription.ModuleName.duvs(_:), v100);
    v64 = v101;
    v65 = v98;
    v66 = v102;
    (*(v101 + 104))(v98, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v102);
    v67 = v92;
    v68 = v91;
    v69 = v93;
    (*(v92 + 104))(v91, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v93);
    v96 = sub_2CCAD0();
    v90 = v70;
    (*(v67 + 8))(v68, v69);
    (*(v64 + 8))(v65, v66);
    (*(v61 + 8))(v62, v63);
    v71 = v107;
    v100 = v107[6];
    v101 = v107[7];
    v102 = sub_35E0(v107 + 3, v100);
    v72 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v73 = sub_2C9C20();
    v74 = *(v73 - 8);
    v75 = v104;
    (*(v74 + 104))(v104, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v89 = v12;
    v76 = v94;
    sub_F3F4(v12, v94, &qword_34C6E8, &unk_2D0FF0);

    v77 = sub_2CA130();
    v78 = *(v77 - 8);
    v79 = v105;
    (*(v78 + 32))(v105, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    v80 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v81 = sub_2C98F0();
    v82 = *(v81 - 8);
    v83 = v106;
    (*(v82 + 104))(v106, v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v84 = v109;
    sub_2CB4E0();

    sub_30B8(v83, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v79, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
    v85 = v95;
    sub_789F4(v84, v95);
    sub_35E0(v71 + 8, v71[11]);
    v86 = v89;
    sub_F3F4(v89, v76, &qword_34C6E8, &unk_2D0FF0);
    v87 = *(v76 + *(v103 + 48));
    sub_1C077C(v76, v87, v85, _swiftEmptyArrayStorage, v110, v111);

    sub_30B8(v85, &unk_353020, &unk_2D0970);
    sub_30B8(v86, &qword_34C6E8, &unk_2D0FF0);
    return (*(v78 + 8))(v76, v77);
  }
}

unint64_t sub_10211C(uint64_t a1)
{
  result = sub_102144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_102144()
{
  result = qword_34EA58;
  if (!qword_34EA58)
  {
    type metadata accessor for Determine.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA58);
  }

  return result;
}

uint64_t sub_1021BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = *(*v8 + 16);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a7;
  v16[6] = a8;
  v17 = *(*v15 + 200);

  v18 = a2;

  v17(a1, a3, a4, a6, v18, a5, 0, sub_102460, v16);
}

uint64_t sub_1022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for Determine.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_102368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for Determine.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_102400()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t InternalSignalsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1024C0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_2CA7B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v30 = v9;
  v31 = *(v6 + 16);
  v31(v8, a1, v5);
  v33 = v6;
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v17 = 136315138;
    sub_104A4C(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v18 = sub_2CEE70();
    v29 = v4;
    v20 = v19;
    (*(v33 + 8))(v8, v5);
    v21 = sub_3F08(v18, v20, v34);
    v4 = v29;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "ConfirmInterruptionFlow#on Setting input: %s...", v17, 0xCu);
    sub_306C(v27);

    a1 = v28;

    (*(v10 + 8))(v12, v30);
    v22 = v33;
  }

  else
  {

    v22 = v33;
    (*(v33 + 8))(v8, v5);
    (*(v10 + 8))(v12, v30);
  }

  v31(v4, a1, v5);
  (*(v22 + 56))(v4, 0, 1, v5);
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v24 = v32;
  swift_beginAccess();
  sub_A4888(v4, v24 + v23);
  swift_endAccess();
  return 1;
}

uint64_t sub_1028F8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v227 = a2;
  v230 = a1;
  v4 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v4 - 8);
  v210 = &v201 - v5;
  v219 = sub_2CAA00();
  v218 = *(v219 - 8);
  v6 = __chkstk_darwin(v219);
  v206 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v211 = &v201 - v9;
  v10 = __chkstk_darwin(v8);
  v213 = &v201 - v11;
  __chkstk_darwin(v10);
  v215 = &v201 - v12;
  v13 = sub_2C9EC0();
  v14 = *(v13 - 8);
  v228 = v13;
  v229 = v14;
  __chkstk_darwin(v13);
  v226 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v231 = *(v16 - 8);
  v232 = v16;
  v17 = __chkstk_darwin(v16);
  v225 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v221 = &v201 - v20;
  v21 = __chkstk_darwin(v19);
  v204 = &v201 - v22;
  v23 = __chkstk_darwin(v21);
  v223 = &v201 - v24;
  v25 = __chkstk_darwin(v23);
  v209 = &v201 - v26;
  v27 = __chkstk_darwin(v25);
  v205 = &v201 - v28;
  v29 = __chkstk_darwin(v27);
  v208 = &v201 - v30;
  v31 = __chkstk_darwin(v29);
  v207 = &v201 - v32;
  v33 = __chkstk_darwin(v31);
  v212 = (&v201 - v34);
  __chkstk_darwin(v33);
  v217 = &v201 - v35;
  v36 = sub_2CA870();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v224 = (&v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v41 = &v201 - v40;
  v42 = sub_20410(&qword_34E480, &qword_2D2280);
  v43 = __chkstk_darwin(v42 - 8);
  v222 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v214 = &v201 - v46;
  __chkstk_darwin(v45);
  v48 = &v201 - v47;
  v49 = sub_2CA7B0();
  v50 = *(v49 - 8);
  v51 = __chkstk_darwin(v49);
  v216 = &v201 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v54 = &v201 - v53;
  v55 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  swift_beginAccess();
  v220 = v3;
  sub_1049DC(v3 + v55, v48);
  v56 = *(v50 + 6);
  if (v56(v48, 1, v49) == 1)
  {
    sub_30B8(v48, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v57 = v232;
    v58 = sub_3ED0(v232, static Logger.default);
    swift_beginAccess();
    v59 = v231;
    v60 = v225;
    (*(v231 + 16))(v225, v58, v57);
    v61 = sub_2CDFE0();
    v62 = sub_2CE680();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "ConfirmInterruptionFlow#execute received nil input", v63, 2u);
    }

    (*(v59 + 8))(v60, v57);
    v64 = v226;
    sub_2C9EB0();
    v230(v64);
    return (*(v229 + 8))(v64, v228);
  }

  v225 = v50;
  (*(v50 + 4))(v54, v48, v49);
  sub_2CA790();
  v66 = sub_D2F98(v41, &v234);
  v202 = *(v37 + 8);
  v202(v41, v36, v66);
  v67 = v235;
  sub_30B8(&v234, &qword_34CF98, &unk_2D1A40);
  if (!v67)
  {
    v80 = v54;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v81 = v232;
    v82 = sub_3ED0(v232, static Logger.default);
    swift_beginAccess();
    v83 = v231;
    v84 = v221;
    (*(v231 + 16))(v221, v82, v81);
    v85 = sub_2CDFE0();
    v86 = sub_2CE680();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "ConfirmInterruptionFlow#execute nil confirmableIntent", v87, 2u);
    }

    (*(v83 + 8))(v84, v81);
    v88 = v226;
    sub_2C9EB0();
    v230(v88);
    (*(v229 + 8))(v88, v228);
    return (*(v225 + 1))(v80, v49);
  }

  v68 = v224;
  v203 = v54;
  sub_2CA790();
  v69 = (*(v37 + 88))(v68, v36);
  v70 = v36;
  if (v69 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v221 = v49;
    (*(v37 + 96))(v68, v36);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v71 = sub_2CA830();
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    v73 = v225;
    if (!v72)
    {

      v78 = v231;
      v79 = v232;
      goto LABEL_31;
    }

    v74 = v72;
    v75 = v220 + v55;
    v76 = v214;
    sub_1049DC(v75, v214);
    v77 = v56(v76, 1, v221);
    v78 = v231;
    if (v77 == 1)
    {

      sub_30B8(v76, &qword_34E480, &qword_2D2280);
      v79 = v232;
LABEL_31:
      v123 = v203;
      v124 = v217;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v125 = sub_3ED0(v79, static Logger.default);
      swift_beginAccess();
      (*(v78 + 16))(v124, v125, v79);
      v126 = sub_2CDFE0();
      v127 = sub_2CE680();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&dword_0, v126, v127, "ConfirmInterruptionFlow#execute NLv3IntentPlusServerConversion error...", v128, 2u);
      }

      (*(v78 + 8))(v124, v79);
      v129 = v226;
      sub_2C9EB0();
      v230(v129);

      (*(v229 + 8))(v129, v228);
      (*(v73 + 1))(v123, v221);
      v130 = sub_2CAFE0();
      return (*(*(v130 - 8) + 8))(v224, v130);
    }

    sub_30B8(v76, &qword_34E480, &qword_2D2280);
    v131 = sub_2CAFE0();
    v132 = *(*(v131 - 8) + 8);
    v133 = v71;
    v132(v224, v131);
    goto LABEL_61;
  }

  v89 = v225;
  if (v69 == enum case for Parse.pommesResponse(_:))
  {
    v221 = v49;
    (*(v37 + 96))(v68, v36);
    v90 = *v68;
    v91 = sub_1B7F14();
    v92 = v232;
    if (v91)
    {
      v224 = v90;
      v93 = v215;
      v217 = v91;
      sub_2CDA40();
      v78 = v231;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v94 = sub_3ED0(v92, static Logger.default);
      swift_beginAccess();
      v95 = v212;
      (*(v78 + 16))(v212, v94, v92);
      v96 = v218;
      v97 = *(v218 + 16);
      v98 = v213;
      v99 = v93;
      v100 = v219;
      v97(v213, v99, v219);
      v101 = sub_2CDFE0();
      v102 = sub_2CE690();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = v98;
        v104 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v233 = v214;
        *v104 = 136315138;
        sub_2CAA60();
        LODWORD(v211) = v102;
        v235 = v100;
        v236 = sub_104A4C(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
        v105 = sub_F390(&v234);
        v97(v105, v103, v100);
        v106 = sub_2CAA50();
        v108 = v107;
        v109 = *(v96 + 8);
        v109(v103, v100);
        sub_306C(&v234);
        v110 = sub_3F08(v106, v108, &v233);

        *(v104 + 4) = v110;
        _os_log_impl(&dword_0, v101, v211, "ConfirmInterruptionFlow#execute pommesResponse userDialogAct: %s", v104, 0xCu);
        sub_306C(v214);
        v92 = v232;
      }

      else
      {

        v109 = *(v96 + 8);
        v109(v98, v100);
      }

      (*(v78 + 8))(v95, v92);
      v73 = v225;
      v147 = *(v220 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent);
      v148 = v215;
      if (v147 && (objc_opt_self(), (v149 = swift_dynamicCastObjCClass()) != 0))
      {
        v74 = v149;
        v150 = v147;
        v109(v148, v219);

        v151 = v150;
      }

      else
      {
        v152 = [objc_allocWithZone(INPlayMediaIntent) init];
        v153 = v224;
        sub_2CDAE0();
        sub_2CDBC0();
        sub_2CDBB0();
        v154 = v217;
        sub_2CDBA0();

        v155 = sub_2CDBD0();
        v156 = sub_1BA200(v154, v155, 0, 0);

        v109(v148, v219);
        v74 = v156;
      }

      goto LABEL_61;
    }

    v140 = v231;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v141 = sub_3ED0(v92, static Logger.default);
    swift_beginAccess();
    v142 = v207;
    (*(v140 + 16))(v207, v141, v92);
    v143 = sub_2CDFE0();
    v144 = sub_2CE680();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&dword_0, v143, v144, "ConfirmInterruptionFlow#execute pommesResponse contains no AudioExperience", v145, 2u);
    }

    (*(v140 + 8))(v142, v92);
    v146 = v226;
    sub_2C9EB0();
    v230(v146);

    (*(v229 + 8))(v146, v228);
    return (*(v89 + 1))(v203, v221);
  }

  v111 = v232;
  v112 = v203;
  v217 = v70;
  if (v69 != enum case for Parse.uso(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v134 = sub_3ED0(v111, static Logger.default);
    swift_beginAccess();
    v135 = v209;
    (*(v231 + 16))(v209, v134, v111);
    v136 = sub_2CDFE0();
    v137 = sub_2CE680();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_0, v136, v137, "ConfirmInterruptionFlow#execute Ignorning non-server-conversion parse", v138, 2u);
    }

    (*(v231 + 8))(v135, v111);
    goto LABEL_42;
  }

  sub_2CA790();
  v113 = v210;
  sub_2CA7E0();
  v114 = v113;
  (v202)(v41, v217);
  v115 = v218;
  v116 = v113;
  v117 = v219;
  if ((*(v218 + 48))(v116, 1, v219) == 1)
  {
    sub_30B8(v114, &qword_34CC90, qword_2D40E0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v118 = sub_3ED0(v111, static Logger.default);
    swift_beginAccess();
    v119 = v205;
    (*(v231 + 16))(v205, v118, v111);
    v120 = sub_2CDFE0();
    v121 = sub_2CE680();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_0, v120, v121, "ConfirmInterruptionFlow#execute usoParse contains no UDA", v122, 2u);
    }

    (*(v231 + 8))(v119, v111);
LABEL_42:
    v139 = v226;
    sub_2C9EB0();
    v230(v139);
    (*(v229 + 8))(v139, v228);
    (*(v89 + 1))(v112, v49);
    return (v202)(v68, v217);
  }

  v221 = v49;
  v157 = v211;
  (*(v115 + 32))(v211, v114, v117);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v158 = sub_3ED0(v111, static Logger.default);
  swift_beginAccess();
  v159 = *(v231 + 16);
  v160 = v208;
  v215 = v158;
  v214 = (v231 + 16);
  v213 = v159;
  (v159)(v208, v158, v111);
  v161 = *(v115 + 16);
  v162 = v206;
  v161(v206, v157, v117);
  v163 = sub_2CDFE0();
  v164 = sub_2CE690();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v233 = v212;
    *v165 = 136315138;
    sub_2CAA60();
    v235 = v117;
    v236 = sub_104A4C(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v166 = sub_F390(&v234);
    v161(v166, v162, v117);
    v167 = sub_2CAA50();
    v169 = v168;
    v170 = *(v115 + 8);
    v170(v162, v117);
    sub_306C(&v234);
    v171 = sub_3F08(v167, v169, &v233);

    *(v165 + 4) = v171;
    _os_log_impl(&dword_0, v163, v164, "ConfirmInterruptionFlow#execute usoParse userDialogAct: %s", v165, 0xCu);
    sub_306C(v212);

    v172 = v232;
    v173 = *(v231 + 8);
    v173(v208, v232);
    v170(v211, v117);
  }

  else
  {

    v174 = *(v115 + 8);
    v174(v162, v117);
    v172 = v232;
    v173 = *(v231 + 8);
    v173(v160, v232);
    v174(v211, v117);
  }

  v175 = *(v220 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent);
  if (v175)
  {
    objc_opt_self();
    v176 = swift_dynamicCastObjCClass();
    if (v176)
    {
      v74 = v176;
      v177 = v175;
      (v202)(v224, v217);
      v78 = v231;
      v73 = v225;
LABEL_61:
      v178 = v203;
      v179 = *(v73 + 2);
      v180 = v222;
      v181 = v221;
      v179(v222, v203, v221);
      (*(v73 + 7))(v180, 0, 1, v181);
      sub_20410(&qword_3510A8, &unk_2D4D80);
      if (qword_34C030 != -1)
      {
        swift_once();
      }

      v234 = static PlayMedia.flowStrategy;
      v182 = qword_34C038;

      if (v182 != -1)
      {
        swift_once();
      }

      v179(v216, v178, v181);

      v183 = v74;
      v184 = sub_2CA8A0();
      sub_2CB4A0();
      v185 = sub_2CB490();
      type metadata accessor for PlayMediaRCHFlowWrapper(0);
      v186 = swift_allocObject();
      v187 = sub_134AA4(v222, v184, v185, v186);

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v188 = v232;
      v189 = sub_3ED0(v232, static Logger.default);
      swift_beginAccess();
      (*(v78 + 16))(v223, v189, v188);
      v190 = sub_2CDFE0();
      v191 = sub_2CE670();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&dword_0, v190, v191, "ConfirmInterruptionFlow#execute Non-tvOS device does not support interruption logic...", v192, 2u);
        v178 = v203;
      }

      (*(v78 + 8))(v223, v232);
      v233 = v187;
      sub_104A4C(&qword_3510B0, type metadata accessor for PlayMediaRCHFlowWrapper, &unk_2D84C0);
      v193 = v226;
      sub_2C9E90();
      v230(v193);

      (*(v229 + 8))(v193, v228);
      return (*(v73 + 1))(v178, v181);
    }
  }

  (v202)(v224, v217);
  v194 = v204;
  (v213)(v204, v215, v172);
  v195 = sub_2CDFE0();
  v196 = sub_2CE680();
  v197 = os_log_type_enabled(v195, v196);
  v198 = v203;
  if (v197)
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&dword_0, v195, v196, "ConfirmInterruptionFlow#execute received nil playMediaIntent", v199, 2u);
  }

  v173(v194, v172);
  v200 = v226;
  sub_2C9EB0();
  v230(v200);
  (*(v229 + 8))(v200, v228);
  return (*(v225 + 1))(v198, v221);
}

uint64_t sub_104638()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider));
  return v0;
}

uint64_t sub_104740()
{
  sub_104638();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmInterruptionFlow(uint64_t a1)
{
  result = qword_350F40;
  if (!qword_350F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1047EC(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ConfirmInterruptionFlow.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConfirmInterruptionFlow.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_104908(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_104924(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1049A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConfirmInterruptionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1049DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_104A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_104A94(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000013;
    case 1:
      return 0x74706D6F72702ELL;
    case 2:
      return 0xD000000000000014;
  }

  sub_2CCF90();
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  v2._countAndFlagsBits = sub_2CE2A0();
  sub_2CE350(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_2CE350(v3);
  return 0x65766C6F7365722ELL;
}

double sub_104BFC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v97 = a1;
  v98 = a4;
  if (v11)
  {
    type metadata accessor for PlayMediaCatDialogService();
    v12 = swift_allocObject();
    v12[6] = 0xEF746E65746E4961;
    v12[2] = 0xD000000000000011;
    v12[3] = 0x80000000002DA8D0;
    v12[4] = a3;
    v12[5] = 0x6964654D79616C50;
    sub_FA14(_swiftEmptyArrayStorage);

    v96 = v12;

    sub_2C9A00();
    v95 = sub_2CC2B0();
    v128 = v95;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = sub_2CC360();
    v126 = &protocol witness table for StringsFileResolver;
    sub_F390(&v124);
    sub_2CC350();
    v13 = sub_2CB4A0();
    v14 = sub_2CB490();
    v122 = v13;
    v123 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v121 = v14;
    if (qword_34C048 != -1)
    {
      swift_once();
    }

    v15 = qword_35F900;
    sub_2CBC60();
    v16 = type metadata accessor for DialogHistoryProvider();
    v116 = v16;
    v117 = &off_33CAE0;
    *&v115 = v15;
    type metadata accessor for PlayMediaDialogProvider(0);
    v17 = swift_allocObject();
    v18 = sub_F9A0(&v115, v16);
    __chkstk_darwin(v18);
    v20 = (&v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v113 = v16;
    v114 = &off_33CAE0;
    v112[0] = v22;
    v17[15] = v96;
    sub_EEAC(&v127, (v17 + 16));
    sub_EEAC(&v121, (v17 + 31));
    sub_EEAC(v112, (v17 + 21));
    sub_EEAC(&v118, (v17 + 26));
    sub_EEAC(&v124, &v109);

    v23 = sub_2CB490();
    v107 = v13;
    v108 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v106 = v23;
    sub_306C(&v118);
    sub_306C(&v130);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    sub_306C(v112);
    v17[13] = 0xD000000000000011;
    v17[14] = 0x80000000002DA8D0;
    v17[2] = a3;
    sub_F338(&v109, (v17 + 3));
    sub_F338(&v106, (v17 + 8));

    sub_306C(&v115);
    v24 = sub_2CC5C0();
    v25 = sub_2CC5B0();
    v131 = v24;
    v132 = &protocol witness table for PlayMediaAppSelector;
    *&v130 = v25;
    if (qword_34BFB8 != -1)
    {
      swift_once();
    }

    v128 = &type metadata for StringsBackedAppNameResolver;
    v26 = sub_2869C();
    v129 = v26;
    *&v127 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v127 + 16);
    v125 = sub_2CB9E0();
    v126 = &protocol witness table for DeviceProvider;
    sub_F390(&v124);
    sub_2CB9C0();
    v27 = v95;
    v122 = v95;
    v123 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v121);
    sub_2CC2A0();
    v119 = sub_2CC810();
    v120 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v118);
    sub_2CC800();
    v116 = sub_2CC650();
    v117 = &protocol witness table for SubscriptionProvider;
    sub_F390(&v115);
    sub_2CC640();
    v113 = sub_2CC590();
    v114 = &protocol witness table for InstalledAppProvider;
    sub_F390(v112);
    sub_2CC580();
    v28 = sub_2CBED0();
    v29 = sub_2CBEC0();
    v110 = v28;
    v111 = &protocol witness table for MediaPlaybackLite;
    *&v109 = v29;
    v30 = sub_2CB780();
    sub_2CBC60();
    v31 = sub_2CC040();
    v105[3] = v31;
    v105[4] = &protocol witness table for NowPlayingProvider;
    sub_F390(v105);
    sub_2CC030();
    v104[3] = sub_2CB7A0();
    v104[4] = &protocol witness table for TCCProvider;
    sub_F390(v104);
    sub_2CB790();
    type metadata accessor for PlayMediaAppResolver(0);
    v32 = swift_allocObject();
    sub_EEAC(&v130, v32 + qword_350440);
    sub_EEAC(&v115, v32 + qword_350448);
    sub_EEAC(&v109, v32 + qword_350450);
    v33 = (v32 + qword_350470);
    *v33 = v30;
    v33[1] = &protocol witness table for SelfEmitter;
    sub_EEAC(&v106, v32 + qword_350458);
    sub_EEAC(v105, v32 + qword_350460);
    sub_EEAC(v104, v32 + qword_350468);
    sub_EEAC(&v127, v103);
    sub_EEAC(&v124, v102);
    sub_EEAC(&v121, v101);
    sub_EEAC(&v118, v100);
    sub_EEAC(v112, v99);
    v34 = class metadata base offset for CommonAppResolver;
    v35 = v32 + *(*v32 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v35, "resolutionType");
    v35[15] = -18;
    sub_EEAC(v103, v32 + *(*v32 + v34 + 16));
    sub_EEAC(v102, v32 + *(*v32 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(v101, v32 + *(*v32 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(v100, v32 + *(*v32 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(v99, v32 + *(*v32 + class metadata base offset for CommonAppResolver + 48));
    v36 = sub_2CCF50();
    sub_306C(v99);
    sub_306C(v100);
    sub_306C(v101);
    sub_306C(v102);
    sub_306C(v103);
    sub_306C(&v106);
    sub_306C(v104);
    sub_306C(v105);
    sub_306C(&v109);
    sub_306C(v112);
    sub_306C(&v115);
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    sub_306C(&v130);
    v131 = v31;
    v132 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v130);

    sub_2CC030();
    v128 = v27;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = &type metadata for StringsBackedAppNameResolver;
    v126 = v26;
    *&v124 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
    sub_2C9A00();
    v119 = v27;
    v120 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v118);
    sub_2CC2A0();
    v37 = type metadata accessor for SiriAudioOutputProvider();
    v38 = swift_allocObject();
    sub_F338(&v118, v38 + 16);
    v119 = v37;
    v120 = &off_337EB0;
    *&v118 = v38;
    sub_20410(&qword_351308, &qword_2D4288);
    v39 = swift_allocObject();
    *(v39 + 240) = 0;
    sub_F338(&v130, v39 + 200);
    sub_F338(&v127, v39 + 16);
    *(v39 + 248) = v36;
    sub_F338(&v124, v39 + 56);
    *(v39 + 96) = v17;
    *(v39 + 104) = sub_107D74;
    *(v39 + 112) = 0;
    sub_F338(&v121, v39 + 120);
    sub_F338(&v118, v39 + 160);
    *(v39 + 256) = 1;
    *&v130 = v39;
    sub_107470();
    sub_72068(&qword_351310, &qword_351308, &qword_2D4288, &unk_2D79D0);
    v40 = sub_2C95E0();
    v41 = sub_20410(&qword_3512D0, &unk_2D4260);
    v42 = v98;
    *(v98 + 24) = v41;
    v42[4] = sub_72068(&qword_3512D8, &qword_3512D0, &unk_2D4260, &protocol conformance descriptor for AnyAppResolutionFlow<A>);

    goto LABEL_20;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for AddMediaCatDialogService();
    v43 = swift_allocObject();
    *(v43 + 55) = -18;
    *(v43 + 16) = 0xD000000000000011;
    *(v43 + 24) = 0x80000000002DA8D0;
    *(v43 + 32) = a3;
    strcpy((v43 + 40), "AddMediaIntent");
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v44 = sub_2CC2B0();
    v128 = v44;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = sub_2CC360();
    v126 = &protocol witness table for StringsFileResolver;
    sub_F390(&v124);
    sub_2CC350();
    v45 = sub_2CB4A0();
    v46 = sub_2CB490();
    v122 = v45;
    v123 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v121 = v46;
    type metadata accessor for AddMediaDialogProvider(0);
    v47 = swift_allocObject();
    v47[15] = v43;
    sub_EEAC(&v127, (v47 + 16));
    sub_EEAC(&v121, (v47 + 21));
    sub_EEAC(&v124, &v118);
    sub_EEAC(&v121, &v115);
    sub_306C(&v130);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    v47[13] = 0xD000000000000011;
    v47[14] = 0x80000000002DA8D0;
    v47[2] = a3;
    sub_F338(&v118, (v47 + 3));
    sub_F338(&v115, (v47 + 8));
    v48 = qword_34BFB8;

    if (v48 != -1)
    {
      swift_once();
    }

    v131 = &type metadata for StringsBackedAppNameResolver;
    v49 = sub_2869C();
    v132 = v49;
    *&v130 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v130 + 16);
    v128 = sub_2CB9E0();
    v129 = &protocol witness table for DeviceProvider;
    sub_F390(&v127);
    sub_2CB9C0();
    v125 = v44;
    v126 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v124);
    sub_2CC2A0();
    v122 = sub_2CC810();
    v123 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v121);
    sub_2CC800();
    v119 = sub_2CC590();
    v120 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v118);
    sub_2CC580();
    sub_20410(&qword_3512F0, &qword_2D4278);
    v50 = swift_allocObject();
    v51 = class metadata base offset for CommonAppResolver;
    v52 = v50 + *(*v50 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v52, "resolutionType");
    v52[15] = -18;
    sub_EEAC(&v130, v50 + *(*v50 + v51 + 16));
    sub_EEAC(&v127, v50 + *(*v50 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v124, v50 + *(*v50 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v121, v50 + *(*v50 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v118, v50 + *(*v50 + class metadata base offset for CommonAppResolver + 48));
    v53 = sub_2CCF50();
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    sub_306C(&v130);
    v131 = sub_2CC040();
    v132 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v130);

    sub_2CC030();
    v128 = v44;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = &type metadata for StringsBackedAppNameResolver;
    v126 = v49;
    *&v124 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
    sub_2C9A00();
    v119 = v44;
    v120 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v118);
    sub_2CC2A0();
    v54 = type metadata accessor for SiriAudioOutputProvider();
    v55 = swift_allocObject();
    sub_F338(&v118, v55 + 16);
    v119 = v54;
    v120 = &off_337EB0;
    *&v118 = v55;
    v56 = &qword_3512F8;
    v57 = &qword_2D4280;
    sub_20410(&qword_3512F8, &qword_2D4280);
    v58 = swift_allocObject();
    *(v58 + 240) = 0;
    sub_F338(&v130, v58 + 200);
    sub_F338(&v127, v58 + 16);
    *(v58 + 248) = v53;
    sub_F338(&v124, v58 + 56);
    *(v58 + 96) = v47;
    *(v58 + 104) = sub_107D74;
    *(v58 + 112) = 0;
    sub_F338(&v121, v58 + 120);
    sub_F338(&v118, v58 + 160);
    *(v58 + 256) = 1;
    *&v130 = v58;
    sub_107470();
    v59 = &unk_351300;
LABEL_19:
    sub_72068(v59, v56, v57, &unk_2D79D0);
    v40 = sub_2C95E0();
    v88 = sub_20410(&qword_3512D0, &unk_2D4260);
    v42 = v98;
    *(v98 + 24) = v88;
    v42[4] = sub_72068(&qword_3512D8, &qword_3512D0, &unk_2D4260, &protocol conformance descriptor for AnyAppResolutionFlow<A>);

LABEL_20:

    *v42 = v40;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for UpdateMediaAffinityCatDialogService();
    v60 = swift_allocObject();
    v60[2] = 0xD000000000000011;
    v60[3] = 0x80000000002DA8D0;
    v60[5] = 0xD000000000000019;
    v60[6] = 0x80000000002DB1F0;
    v60[4] = a3;
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v61 = sub_2CC2B0();
    v128 = v61;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = sub_2CC360();
    v126 = &protocol witness table for StringsFileResolver;
    sub_F390(&v124);
    sub_2CC350();
    v62 = sub_2CB4A0();
    v63 = sub_2CB490();
    v122 = v62;
    v123 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v121 = v63;
    type metadata accessor for UpdateMediaAffinityDialogProvider(0);
    v64 = swift_allocObject();
    v64[15] = v60;
    sub_EEAC(&v127, (v64 + 16));
    sub_EEAC(&v121, (v64 + 21));
    sub_EEAC(&v124, &v118);
    sub_EEAC(&v121, &v115);
    sub_306C(&v130);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    v64[13] = 0xD000000000000011;
    v64[14] = 0x80000000002DA8D0;
    v64[2] = a3;
    sub_F338(&v118, (v64 + 3));
    sub_F338(&v115, (v64 + 8));
    v65 = qword_34BFB8;

    if (v65 != -1)
    {
      swift_once();
    }

    v131 = &type metadata for StringsBackedAppNameResolver;
    v66 = sub_2869C();
    v132 = v66;
    *&v130 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v130 + 16);
    v128 = sub_2CB9E0();
    v129 = &protocol witness table for DeviceProvider;
    sub_F390(&v127);
    sub_2CB9C0();
    v125 = v61;
    v126 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v124);
    sub_2CC2A0();
    v122 = sub_2CC810();
    v123 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v121);
    sub_2CC800();
    v119 = sub_2CC590();
    v120 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v118);
    sub_2CC580();
    sub_20410(&qword_34D800, &qword_2D1628);
    v67 = swift_allocObject();
    v68 = class metadata base offset for CommonAppResolver;
    v69 = v67 + *(*v67 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v69, "resolutionType");
    v69[15] = -18;
    sub_EEAC(&v130, v67 + *(*v67 + v68 + 16));
    sub_EEAC(&v127, v67 + *(*v67 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v124, v67 + *(*v67 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v121, v67 + *(*v67 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v118, v67 + *(*v67 + class metadata base offset for CommonAppResolver + 48));
    v70 = sub_2CCF50();
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    sub_306C(&v130);
    v131 = sub_2CC040();
    v132 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v130);

    sub_2CC030();
    v128 = v61;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = &type metadata for StringsBackedAppNameResolver;
    v126 = v66;
    *&v124 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
    sub_2C9A00();
    v119 = v61;
    v120 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v118);
    sub_2CC2A0();
    v71 = type metadata accessor for SiriAudioOutputProvider();
    v72 = swift_allocObject();
    sub_F338(&v118, v72 + 16);
    v119 = v71;
    v120 = &off_337EB0;
    *&v118 = v72;
    v56 = &qword_3512E0;
    v57 = &qword_2D4270;
    sub_20410(&qword_3512E0, &qword_2D4270);
    v73 = swift_allocObject();
    *(v73 + 240) = 0;
    sub_F338(&v130, v73 + 200);
    sub_F338(&v127, v73 + 16);
    *(v73 + 248) = v70;
    sub_F338(&v124, v73 + 56);
    *(v73 + 96) = v64;
    *(v73 + 104) = sub_107D74;
    *(v73 + 112) = 0;
    sub_F338(&v121, v73 + 120);
    sub_F338(&v118, v73 + 160);
    *(v73 + 256) = 1;
    *&v130 = v73;
    sub_107470();
    v59 = &unk_3512E8;
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SearchForMediaCatDialogService();
    v74 = swift_allocObject();
    v74[2] = 0xD000000000000011;
    v74[3] = 0x80000000002DA8D0;
    v74[5] = 0xD000000000000014;
    v74[6] = 0x80000000002DCFE0;
    v74[4] = a3;
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v75 = sub_2CC2B0();
    v128 = v75;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = sub_2CC360();
    v126 = &protocol witness table for StringsFileResolver;
    sub_F390(&v124);
    sub_2CC350();
    v76 = sub_2CB4A0();
    v77 = sub_2CB490();
    v122 = v76;
    v123 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v121 = v77;
    type metadata accessor for SearchForMediaDialogProvider(0);
    v78 = swift_allocObject();
    v78[15] = v74;
    sub_EEAC(&v127, (v78 + 16));
    sub_EEAC(&v121, (v78 + 21));
    sub_EEAC(&v124, &v118);
    sub_EEAC(&v121, &v115);
    sub_306C(&v130);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    v78[13] = 0xD000000000000011;
    v78[14] = 0x80000000002DA8D0;
    v78[2] = a3;
    sub_F338(&v118, (v78 + 3));
    sub_F338(&v115, (v78 + 8));
    v79 = qword_34BFB8;

    if (v79 != -1)
    {
      swift_once();
    }

    v131 = &type metadata for StringsBackedAppNameResolver;
    v80 = sub_2869C();
    v132 = v80;
    *&v130 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v130 + 16);
    v128 = sub_2CB9E0();
    v129 = &protocol witness table for DeviceProvider;
    sub_F390(&v127);
    sub_2CB9C0();
    v125 = v75;
    v126 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v124);
    sub_2CC2A0();
    v122 = sub_2CC810();
    v123 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v121);
    sub_2CC800();
    v119 = sub_2CC590();
    v120 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v118);
    sub_2CC580();
    sub_20410(&qword_3512B0, &qword_2D4250);
    v81 = swift_allocObject();
    v82 = class metadata base offset for CommonAppResolver;
    v83 = v81 + *(*v81 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v83, "resolutionType");
    v83[15] = -18;
    sub_EEAC(&v130, v81 + *(*v81 + v82 + 16));
    sub_EEAC(&v127, v81 + *(*v81 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v124, v81 + *(*v81 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v121, v81 + *(*v81 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v118, v81 + *(*v81 + class metadata base offset for CommonAppResolver + 48));
    v84 = sub_2CCF50();
    sub_306C(&v118);
    sub_306C(&v121);
    sub_306C(&v124);
    sub_306C(&v127);
    sub_306C(&v130);
    v131 = sub_2CC040();
    v132 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v130);

    sub_2CC030();
    v128 = v75;
    v129 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v127);
    sub_2CC2A0();
    v125 = &type metadata for StringsBackedAppNameResolver;
    v126 = v80;
    *&v124 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v124 + 16);
    sub_2C9A00();
    v119 = v75;
    v120 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v118);
    sub_2CC2A0();
    v85 = type metadata accessor for SiriAudioOutputProvider();
    v86 = swift_allocObject();
    sub_F338(&v118, v86 + 16);
    v119 = v85;
    v120 = &off_337EB0;
    *&v118 = v86;
    v56 = &qword_3512B8;
    v57 = &qword_2D4258;
    sub_20410(&qword_3512B8, &qword_2D4258);
    v87 = swift_allocObject();
    *(v87 + 240) = 0;
    sub_F338(&v130, v87 + 200);
    sub_F338(&v127, v87 + 16);
    *(v87 + 248) = v84;
    sub_F338(&v124, v87 + 56);
    *(v87 + 96) = v78;
    *(v87 + 104) = sub_107D74;
    *(v87 + 112) = 0;
    sub_F338(&v121, v87 + 120);
    sub_F338(&v118, v87 + 160);
    *(v87 + 256) = 1;
    *&v130 = v87;
    sub_107470();
    v59 = &unk_3512C8;
    goto LABEL_19;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v90 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v90, v7);
  v91 = sub_2CDFE0();
  v92 = sub_2CE680();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_0, v91, v92, "AudioAppResolutionFlow#makeAppResolutinoFlow no app resolution flow returned", v93, 2u);
  }

  (*(v8 + 8))(v10, v7);
  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_106A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "AppResolutionFlow#on Handling input", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = sub_2CA7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a1, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  swift_beginAccess();
  sub_A4888(v6, v2 + v17);
  swift_endAccess();
  return 1;
}

uint64_t sub_106CBC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v27 = a1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2C9EC0();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AppResolutionFlow#execute skipping for non-tvOS platform not capable of remote execution. App prediction will run later as part of RCH", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v18 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  swift_beginAccess();
  sub_F3F4(v3 + v19, v6, &qword_34E480, &qword_2D2280);
  v20 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent);
  v21 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher;
  v22 = v20;

  v18(v6, v20, 0, v3 + v21);

  sub_30B8(v6, &qword_34E480, &qword_2D2280);
  sub_2C9EA0();

  v27(v9);
  return (*(v24 + 8))(v9, v25);
}

uint64_t sub_107020()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider));

  sub_107D64(*(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state));
  return v0;
}

uint64_t sub_107120()
{
  sub_107020();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioAppResolutionFlow(uint64_t a1)
{
  result = qword_351148;
  if (!qword_351148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1071CC(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1072A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1072C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_107324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_107374(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1073F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioAppResolutionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_10742C(uint64_t a1)
{
  sub_2CB5B0();
  sub_2C9C10();
  swift_allocObject();
  return sub_2C9BF0();
}

unint64_t sub_107470()
{
  result = qword_3512C0;
  if (!qword_3512C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3512C0);
  }

  return result;
}

uint64_t sub_1074BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2CC2B0();
  v47 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  sub_F3F4(a1, &v44 - v10, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v73);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v72[3] = &type metadata for StringsBackedAppNameResolver;
  v45 = sub_2869C();
  v72[4] = v45;
  v72[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v72[0] + 16);
  sub_2C9A00();
  v70[3] = v6;
  v70[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v70);
  sub_2CC2A0();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  v69 = &protocol witness table for SiriKitTaskLoggingProvider;
  v68 = v12;
  *&v67 = v13;
  v48 = type metadata accessor for SiriForAirPlayFlow(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v16 = sub_2CA7B0();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  v17 = v6;
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  v49 = v11;
  sub_BED04(v11, v14 + v15);
  swift_endAccess();
  v19 = *(v14 + v18);
  *(v14 + v18) = a2;

  sub_EEAC(v73, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v70, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v72, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v71, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v20 = (v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v20 = sub_BD99C;
  v20[1] = 0;
  sub_EEAC(v72, v66);
  sub_EEAC(v71, v65);
  v21 = CATDefaultMode;
  v22 = sub_2CBC00();
  v23 = a2;
  v24 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v25 = swift_allocObject();
  v26 = sub_F9A0(v66, v66[3]);
  v46 = &v44;
  __chkstk_darwin(v26);
  v28 = (&v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v64[3] = &type metadata for StringsBackedAppNameResolver;
  v64[4] = v45;
  v30 = swift_allocObject();
  v64[0] = v30;
  v31 = v28[3];
  v30[3] = v28[2];
  v30[4] = v31;
  v30[5] = v28[4];
  v32 = v28[1];
  v30[1] = *v28;
  v30[2] = v32;
  v63[3] = v22;
  v63[4] = &protocol witness table for MorphunProvider;
  v63[0] = v24;
  v62[3] = v17;
  v62[4] = &protocol witness table for FeatureFlagProvider;
  v33 = sub_F390(v62);
  v34 = v47;
  (*(v47 + 16))(v33, v8, v17);
  *(v25 + 296) = v21;
  sub_EEAC(v62, v25 + 256);
  sub_EEAC(v64, v61);
  sub_EEAC(v63, v60);
  sub_EEAC(v65, v59);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v35 = sub_2CCA30();
  v36 = sub_2CCA20();
  v56[3] = v35;
  v56[4] = &protocol witness table for MultiUserConnectionProvider;
  v56[0] = v36;
  v55[3] = sub_2CB9E0();
  v55[4] = &protocol witness table for DeviceProvider;
  sub_F390(v55);
  sub_2CB9C0();
  sub_EEAC(v61, v25 + 16);
  sub_EEAC(v60, v25 + 216);
  sub_EEAC(v59, v25 + 56);
  sub_EEAC(v56, v25 + 96);
  sub_EEAC(v55, v25 + 176);
  sub_F3F4(v57, &v50, qword_34C708, &qword_2D1620);
  if (v51)
  {

    sub_30B8(v57, qword_34C708, &qword_2D1620);
    sub_306C(v59);
    sub_306C(v60);
    sub_306C(v61);
    (*(v34 + 8))(v8, v17);
    sub_306C(v65);
    sub_306C(v62);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v55);
    sub_306C(v56);
    sub_F338(&v50, &v52);
  }

  else
  {
    sub_EEAC(v59, &v52);
    v37 = sub_2C9E60();
    swift_allocObject();
    v38 = sub_2C9E50();
    v53 = v37;
    v54 = &protocol witness table for ContactsManager;

    *&v52 = v38;
    sub_30B8(v57, qword_34C708, &qword_2D1620);
    sub_306C(v59);
    sub_306C(v60);
    sub_306C(v61);
    (*(v34 + 8))(v8, v17);
    sub_306C(v65);
    sub_306C(v62);
    sub_306C(v63);
    sub_306C(v64);
    sub_306C(v55);
    sub_306C(v56);
    if (v51)
    {
      sub_30B8(&v50, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v52, v25 + 136);
  sub_306C(v66);
  type metadata accessor for PlayMediaCatDialogService();
  v39 = swift_allocObject();
  v39[5] = 0x6964654D79616C50;
  v39[6] = 0xEF746E65746E4961;
  v39[2] = 0xD000000000000011;
  v39[3] = 0x80000000002DA8D0;
  v39[4] = v25;
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v39;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v40 = swift_allocObject();
  v40[2] = 0xD000000000000011;
  v40[3] = 0x80000000002DA8D0;
  v40[4] = v25;
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v40;
  sub_2C9C10();
  swift_allocObject();

  v41 = sub_2C9BF0();
  sub_306C(v71);
  sub_306C(v73);
  sub_30B8(v49, &qword_34E480, &qword_2D2280);
  sub_306C(v70);
  sub_306C(v72);
  *(v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v41;
  sub_F338(&v67, v14 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v73[0] = v14;
  sub_107D0C();
  v42 = sub_2C97B0();

  return v42;
}

unint64_t sub_107D0C()
{
  result = qword_351318;
  if (!qword_351318)
  {
    type metadata accessor for SiriForAirPlayFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_351318);
  }

  return result;
}

unint64_t sub_107D64(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_107D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_2CE000();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = sub_2C9120();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v18 = (&v41 - v17);
  v19 = *(v10 + 16);
  v19(&v41 - v17, v2, v9);
  v20 = (*(v10 + 88))(v18, v9);
  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.UNRECOGNIZED(_:))
  {
    (*(v10 + 96))(v18, v9);
    v21 = *v18;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = v45;
    v23 = sub_3ED0(v45, static Logger.default);
    swift_beginAccess();
    v24 = v44;
    (*(v44 + 16))(v8, v23, v22);
    v25 = sub_2CDFE0();
    v26 = sub_2CE680();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v21;
      _os_log_impl(&dword_0, v25, v26, "AudioItemType#toCommonAudioMediaType unrecognized AudioItemType: %ld", v27, 0xCu);
    }

    (*(v24 + 8))(v8, v22);
    goto LABEL_8;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.unknown(_:))
  {
LABEL_8:
    v28 = &enum case for CommonAudio.MediaType.unknown(_:);
LABEL_9:
    v29 = *v28;
    v30 = sub_2CD540();
    return (*(*(v30 - 8) + 104))(v46, v29, v30);
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.song(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.song(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.album(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.album(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.artist(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.artist(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.genre(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.genre(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.playlist(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastShow(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.podcast(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastEpisode(_:))
  {
LABEL_23:
    v28 = &enum case for CommonAudio.MediaType.episode(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastPlaylist(_:))
  {
    goto LABEL_8;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.musicStation(_:))
  {
LABEL_26:
    v28 = &enum case for CommonAudio.MediaType.station(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.audioBook(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.audioBook(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.movie(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.movie(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.tvShow(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.tvShow(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.tvShowEpisode(_:))
  {
    goto LABEL_23;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.musicVideo(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.musicVideo(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastStation(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.podcastStation(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.radioStation(_:))
  {
    goto LABEL_39;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.station(_:))
  {
    goto LABEL_26;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.music(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.music(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.algorithmicRadioStation(_:))
  {
LABEL_39:
    v28 = &enum case for CommonAudio.MediaType.radioStation(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.news(_:))
  {
    v28 = &enum case for CommonAudio.MediaType.news(_:);
    goto LABEL_9;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v45, static Logger.default);
  swift_beginAccess();
  (*(v44 + 16))(v6, v32, v45);
  v19(v16, v2, v9);
  v33 = sub_2CDFE0();
  v43 = sub_2CE680();
  if (os_log_type_enabled(v33, v43))
  {
    v34 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v34 = 136315138;
    v19(v13, v16, v9);
    v41 = sub_2CE2A0();
    v36 = v35;
    v37 = *(v10 + 8);
    v37(v16, v9);
    v38 = sub_3F08(v41, v36, &v47);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_0, v33, v43, "AudioItemType#toCommonAudioMediaType unrecognized AudioItemType type: %s", v34, 0xCu);
    sub_306C(v42);
  }

  else
  {

    v37 = *(v10 + 8);
    v37(v16, v9);
  }

  (*(v44 + 8))(v6, v45);
  v39 = enum case for CommonAudio.MediaType.unknown(_:);
  v40 = sub_2CD540();
  (*(*(v40 - 8) + 104))(v46, v39, v40);
  return (v37)(v18, v9);
}

uint64_t UpdateMediaAffinityFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v149 = a2;
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v2 - 8);
  v140 = &v120[-v3];
  v141 = sub_2CD490();
  v142 = *(v141 - 8);
  v4 = __chkstk_darwin(v141);
  v127 = &v120[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v135 = &v120[-v7];
  __chkstk_darwin(v6);
  v137 = &v120[-v8];
  v139 = sub_2CD4C0();
  v145 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v120[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v10 = __chkstk_darwin(v144);
  v134 = &v120[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v120[-v12];
  v14 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v15 = __chkstk_darwin(v14 - 8);
  v129 = &v120[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v132 = &v120[-v18];
  v19 = __chkstk_darwin(v17);
  v133 = &v120[-v20];
  v21 = __chkstk_darwin(v19);
  v131 = &v120[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v120[-v24];
  __chkstk_darwin(v23);
  v143 = &v120[-v26];
  v27 = sub_2CA870();
  v153 = *(v27 - 8);
  v154 = v27;
  v28 = __chkstk_darwin(v27);
  v150 = &v120[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v120[-v30];
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v136 = &v120[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v34);
  v128 = &v120[-v37];
  v38 = __chkstk_darwin(v36);
  v40 = &v120[-v39];
  v41 = __chkstk_darwin(v38);
  v138 = &v120[-v42];
  v43 = __chkstk_darwin(v41);
  v45 = &v120[-v44];
  __chkstk_darwin(v43);
  v47 = &v120[-v46];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v48 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v49 = v33;
  v50 = *(v33 + 16);
  v148 = v48;
  v151 = v32;
  v147 = v33 + 16;
  v146 = v50;
  v50(v47, v48, v32);
  v51 = sub_2CDFE0();
  v52 = sub_2CE670();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "UpdateMediaAffinityFlowStrategy#actionForInput called", v53, 2u);
  }

  v54 = v49 + 8;
  v55 = *(v49 + 8);
  v56 = v151;
  v55(v47, v151);
  sub_2CA790();
  v57 = (*(v153 + 88))(v31, v154);
  if (v57 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_6:
    v58 = *(v153 + 8);
    v59 = v31;
    v60 = v154;
    (v58)(v59, v154);
    v61 = v150;
    sub_2CA790();
    v62 = sub_D2F98(v61, &v155);
    v58(v61, v60, v62);
    if (!v156)
    {
      sub_30B8(&v155, &qword_34CF98, &unk_2D1A40);
LABEL_29:
      v84 = v138;
      v146(v138, v148, v56);
      v85 = sub_2CDFE0();
      v86 = sub_2CE680();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "UpdateMediaAffinityFlowStrategy#actionForInput received unsupported parse", v87, 2u);
      }

      v55(v84, v56);
      return sub_2C9CF0();
    }

    v126 = v54;
    sub_420A4(&v155, &v157);
    sub_35E0(&v157, v158);
    v63 = v143;
    sub_2CD840();
    v64 = v145;
    v65 = v139;
    v124 = *(v145 + 104);
    v124(v25, enum case for CommonAudio.Verb.like(_:), v139);
    v66 = *(v64 + 56);
    v125 = v64 + 56;
    v123 = v66;
    v66(v25, 0, 1, v65);
    v67 = *(v144 + 48);
    sub_F7598(v63, v13);
    sub_F7598(v25, &v13[v67]);
    v68 = *(v64 + 48);
    if (v68(v13, 1, v65) == 1)
    {
      sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v63, &qword_34D6B8, &qword_2D15B0);
      v69 = v65;
      if (v68(&v13[v67], 1, v65) == 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v76 = v131;
      sub_F7598(v13, v131);
      if (v68(&v13[v67], 1, v65) != 1)
      {
        v88 = v145;
        v89 = &v13[v67];
        v90 = v130;
        (*(v145 + 32))(v130, v89, v65);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v121 = sub_2CE250();
        v122 = v55;
        v91 = *(v88 + 8);
        v91(v90, v65);
        sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v143, &qword_34D6B8, &qword_2D15B0);
        v91(v76, v65);
        v55 = v122;
        sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
        v69 = v65;
        if (v121)
        {
          goto LABEL_38;
        }

LABEL_21:
        sub_35E0(&v157, v158);
        v77 = v133;
        sub_2CD840();
        v78 = v132;
        v124(v132, enum case for CommonAudio.Verb.unlike(_:), v69);
        v79 = v78;
        v123(v78, 0, 1, v69);
        v80 = *(v144 + 48);
        v81 = v134;
        sub_F7598(v77, v134);
        sub_F7598(v78, &v81[v80]);
        if (v68(v81, 1, v69) == 1)
        {
          sub_30B8(v78, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
          if (v68(&v81[v80], 1, v69) == 1)
          {
            v13 = v81;
LABEL_24:
            sub_30B8(v13, &qword_34D6B8, &qword_2D15B0);
LABEL_38:
            sub_306C(&v157);
            v54 = v126;
LABEL_39:
            v100 = v150;
            sub_2CA790();
            v101 = sub_D2F98(v100, &v157);
            (*(v153 + 8))(v100, v154, v101);
            v102 = v141;
            v103 = v140;
            if (v158)
            {
              sub_35E0(&v157, v158);
              sub_2CD480();
              sub_306C(&v157);
              v104 = v142;
              v105 = (*(v142 + 48))(v103, 1, v102);
              v106 = v151;
              if (v105 != 1)
              {
                (*(v104 + 32))(v137, v103, v102);
                v107 = *(v104 + 104);
                v107(v135, enum case for CommonAudio.Confirmation.cancel(_:), v102);
                sub_10B7F4(&qword_34CCF8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
                sub_2CE3E0();
                sub_2CE3E0();
                v126 = v54;
                v122 = v55;
                if (v157 == v155 && *(&v157 + 1) == *(&v155 + 1))
                {
                  v108 = 1;
                }

                else
                {
                  v108 = sub_2CEEA0();
                }

                v113 = *(v142 + 8);
                v113(v135, v102);

                if (v108)
                {
                  goto LABEL_55;
                }

                v114 = v127;
                v107(v127, enum case for CommonAudio.Confirmation.no(_:), v102);
                sub_2CE3E0();
                sub_2CE3E0();
                if (v157 == v155 && *(&v157 + 1) == *(&v155 + 1))
                {
                  v113(v114, v102);

LABEL_55:
                  v116 = v128;
                  v146(v128, v148, v106);
                  v117 = sub_2CDFE0();
                  v118 = sub_2CE690();
                  if (os_log_type_enabled(v117, v118))
                  {
                    v119 = swift_slowAlloc();
                    *v119 = 0;
                    _os_log_impl(&dword_0, v117, v118, "UpdateMediaAffinityFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v119, 2u);
                  }

                  v122(v116, v106);
                  sub_2C9CD0();
                  return (v113)(v137, v102);
                }

                v115 = sub_2CEEA0();
                v113(v114, v102);

                if (v115)
                {
                  goto LABEL_55;
                }

                v113(v137, v102);
                v55 = v122;
                goto LABEL_46;
              }
            }

            else
            {
              sub_30B8(&v157, &qword_34CF98, &unk_2D1A40);
              (*(v142 + 56))(v103, 1, 1, v102);
              v106 = v151;
            }

            sub_30B8(v103, &qword_34CCE8, &unk_2D0E20);
LABEL_46:
            v109 = v136;
            v146(v136, v148, v106);
            v110 = sub_2CDFE0();
            v111 = sub_2CE670();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&dword_0, v110, v111, "UpdateMediaAffinityFlowStrategy#actionForInput handling", v112, 2u);
            }

            v55(v109, v106);
            return sub_2C9CE0();
          }
        }

        else
        {
          v82 = v68;
          v83 = v129;
          sub_F7598(v81, v129);
          if (v82(&v81[v80], 1, v69) != 1)
          {
            v96 = v145;
            v97 = &v81[v80];
            v98 = v130;
            (*(v145 + 32))(v130, v97, v69);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            LODWORD(v144) = sub_2CE250();
            v99 = *(v96 + 8);
            v99(v98, v69);
            sub_30B8(v79, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
            v99(v83, v69);
            sub_30B8(v81, &qword_34D6B8, &qword_2D15B0);
            if (v144)
            {
              goto LABEL_38;
            }

            goto LABEL_28;
          }

          sub_30B8(v79, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
          (*(v145 + 8))(v83, v69);
        }

        sub_30B8(v81, &qword_34D6B0, &unk_2D4FC0);
LABEL_28:
        sub_306C(&v157);
        v56 = v151;
        goto LABEL_29;
      }

      sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v143, &qword_34D6B8, &qword_2D15B0);
      (*(v145 + 8))(v76, v65);
      v69 = v65;
    }

    sub_30B8(v13, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_21;
  }

  if (v57 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v153 + 96))(v31, v154);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v70 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v71 = sub_2CAFE0();
      (*(*(v71 - 8) + 8))(v31, v71);
      goto LABEL_39;
    }

    v146(v45, v148, v56);
    v92 = sub_2CDFE0();
    v93 = sub_2CE670();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "UpdateMediaAffinityFlowStrategy#actionForInput received unexpected NLv3IntentPlusServerConversion parse, ignoring", v94, 2u);
    }

    v55(v45, v56);
    sub_2C9CF0();

    v95 = sub_2CAFE0();
    return (*(*(v95 - 8) + 8))(v31, v95);
  }

  else
  {
    if (v57 == enum case for Parse.uso(_:))
    {
      goto LABEL_6;
    }

    v146(v40, v148, v56);
    v72 = sub_2CDFE0();
    v73 = sub_2CE680();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "UpdateMediaAffinityFlowStrategy#actionForInput received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v74, 2u);
    }

    v55(v40, v56);
    sub_2C9CF0();
    return (*(v153 + 8))(v31, v154);
  }
}

uint64_t UpdateMediaAffinityFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(void (*a1)(char *, uint64_t), void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v158 = a4;
  v154 = a3;
  v151 = sub_2CD4C0();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v133 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v7 = __chkstk_darwin(v145);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v149 = &v127 - v9;
  v10 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v11 = __chkstk_darwin(v10 - 8);
  v131 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v139 = &v127 - v14;
  v15 = __chkstk_darwin(v13);
  v137 = &v127 - v16;
  v17 = __chkstk_darwin(v15);
  v153 = &v127 - v18;
  v19 = __chkstk_darwin(v17);
  v141 = &v127 - v20;
  __chkstk_darwin(v19);
  v156 = &v127 - v21;
  v22 = sub_2CA870();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v155 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v147 = &v127 - v27;
  __chkstk_darwin(v26);
  v29 = &v127 - v28;
  v30 = sub_2CE000();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v132 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v148 = &v127 - v35;
  v36 = __chkstk_darwin(v34);
  v130 = &v127 - v37;
  __chkstk_darwin(v36);
  v39 = &v127 - v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v30, static Logger.default);
  swift_beginAccess();
  v41 = *(v31 + 16);
  v144 = v40;
  v143 = v31 + 16;
  v142 = v41;
  v41(v39, v40, v30);
  v159 = v23;
  v42 = *(v23 + 16);
  v157 = a1;
  v160 = v42;
  v42(v29, a1, v22);
  v43 = a2;
  v44 = sub_2CDFE0();
  v45 = v31;
  v46 = sub_2CE670();

  v152 = v44;
  v47 = os_log_type_enabled(v44, v46);
  v150 = v45;
  v135 = a2;
  v134 = v43;
  if (v47)
  {
    v48 = v22;
    v49 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v163 = v128;
    *v49 = 136446722;
    v50 = sub_2CCCC0();
    v129 = v39;
    v52 = sub_3F08(v50, v51, &v163);
    v140 = v30;
    v53 = v52;

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = v48;
    v160(v147, v29, v48);
    v55 = sub_2CE2A0();
    v57 = v56;
    v147 = *(v159 + 8);
    (v147)(v29, v54);
    v58 = sub_3F08(v55, v57, &v163);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2080;
    *&v161 = a2;
    v59 = v43;
    sub_20410(&qword_351320, &qword_2D4298);
    v60 = sub_2CE2A0();
    v62 = sub_3F08(v60, v61, &v163);
    v30 = v140;

    *(v49 + 24) = v62;
    v63 = v152;
    _os_log_impl(&dword_0, v152, v46, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v49, 0x20u);
    swift_arrayDestroy();

    v64 = *(v150 + 8);
    v64(v129, v30);
    v65 = v159;
  }

  else
  {

    v65 = v159;
    v147 = *(v159 + 8);
    (v147)(v29, v22);
    v64 = *(v45 + 8);
    v64(v39, v30);
    v54 = v22;
  }

  v66 = v155;
  v67 = v157;
  v160(v155, v157, v54);
  v68 = (*(v65 + 88))(v66, v54);
  v69 = v153;
  v70 = v156;
  if (v68 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_7:
    (v147)(v66, v54);
    sub_D2F98(v67, &v161);
    if (!v162)
    {
      sub_30B8(&v161, &qword_34CF98, &unk_2D1A40);
      v88 = v154;
LABEL_30:
      v142(v148, v144, v30);
      v95 = sub_2CDFE0();
      v96 = sub_2CE680();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_0, v95, v96, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v97, 2u);
      }

      v64(v148, v30);
      v98 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v99 = swift_allocError();
      (*(*(v98 - 8) + 104))(v100, enum case for PlaybackCode.ceGE89(_:), v98);
      v88(v99, 1);
    }

    v157 = v64;
    v140 = v30;
    sub_420A4(&v161, &v163);
    sub_35E0(&v163, v164);
    sub_2CD840();
    v71 = v146;
    v72 = v141;
    v73 = v151;
    v160 = *(v146 + 104);
    v160(v141, enum case for CommonAudio.Verb.like(_:), v151);
    v159 = *(v71 + 56);
    (v159)(v72, 0, 1, v73);
    v74 = *(v145 + 48);
    v75 = v149;
    sub_F7598(v70, v149);
    sub_F7598(v72, v75 + v74);
    v76 = *(v71 + 48);
    if (v76(v75, 1, v73) == 1)
    {
      sub_30B8(v72, &qword_34D6B8, &qword_2D15B0);
      v77 = v149;
      sub_30B8(v70, &qword_34D6B8, &qword_2D15B0);
      if (v76(v77 + v74, 1, v151) == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_F7598(v75, v69);
      if (v76(v75 + v74, 1, v73) != 1)
      {
        v101 = v146;
        v102 = v75 + v74;
        v103 = v133;
        (*(v146 + 32))(v133, v102, v73);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        LODWORD(v155) = sub_2CE250();
        v104 = *(v101 + 8);
        v104(v103, v73);
        sub_30B8(v141, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
        v104(v69, v73);
        sub_30B8(v149, &qword_34D6B8, &qword_2D15B0);
        if (v155)
        {
          goto LABEL_40;
        }

LABEL_22:
        sub_35E0(&v163, v164);
        v89 = v137;
        sub_2CD840();
        v90 = v139;
        v91 = v151;
        v160(v139, enum case for CommonAudio.Verb.unlike(_:), v151);
        (v159)(v90, 0, 1, v91);
        v92 = *(v145 + 48);
        v93 = v138;
        sub_F7598(v89, v138);
        sub_F7598(v90, v93 + v92);
        if (v76(v93, 1, v91) == 1)
        {
          sub_30B8(v90, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
          if (v76(v93 + v92, 1, v91) == 1)
          {
            v77 = v93;
LABEL_25:
            sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
LABEL_40:
            v118 = v134;
            v119 = v134;
            if (!v135)
            {
              v119 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            }

            v120 = v164;
            v121 = v165;
            v122 = sub_35E0(&v163, v164);
            v123 = swift_allocObject();
            v124 = v154;
            v123[2] = v119;
            v123[3] = v124;
            v123[4] = v158;
            v125 = v118;
            v126 = v119;

            sub_113174(v122, (v136 + 16), v136 + 56, sub_10B6A4, v123, v126, v120, v121);

            return sub_306C(&v163);
          }
        }

        else
        {
          v94 = v131;
          sub_F7598(v93, v131);
          if (v76(v93 + v92, 1, v91) != 1)
          {
            v113 = v146;
            v114 = v93 + v92;
            v115 = v133;
            (*(v146 + 32))(v133, v114, v91);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v116 = sub_2CE250();
            v117 = *(v113 + 8);
            v117(v115, v91);
            sub_30B8(v139, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
            v117(v94, v91);
            sub_30B8(v93, &qword_34D6B8, &qword_2D15B0);
            if (v116)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }

          sub_30B8(v139, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
          (*(v146 + 8))(v94, v91);
        }

        sub_30B8(v93, &qword_34D6B0, &unk_2D4FC0);
LABEL_29:
        sub_306C(&v163);
        v64 = v157;
        v88 = v154;
        v30 = v140;
        goto LABEL_30;
      }

      sub_30B8(v141, &qword_34D6B8, &qword_2D15B0);
      v77 = v149;
      sub_30B8(v156, &qword_34D6B8, &qword_2D15B0);
      (*(v146 + 8))(v69, v151);
    }

    sub_30B8(v77, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_22;
  }

  if (v68 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v65 + 96))(v66, v54);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v78 = sub_2CA830();
    objc_opt_self();
    v79 = swift_dynamicCastObjCClass();
    if (v79)
    {
      v154(v79, 0);
    }

    else
    {

      v105 = v130;
      v142(v130, v144, v30);
      v106 = sub_2CDFE0();
      v107 = sub_2CE670();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_0, v106, v107, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v108, 2u);
        v66 = v155;
      }

      v64(v105, v30);
      v109 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v110 = swift_allocError();
      (*(*(v109 - 8) + 104))(v111, enum case for PlaybackCode.ceGE88(_:), v109);
      v154(v110, 1);
    }

    v112 = sub_2CAFE0();
    return (*(*(v112 - 8) + 8))(v66, v112);
  }

  else
  {
    v67 = v157;
    if (v68 == enum case for Parse.uso(_:))
    {
      goto LABEL_7;
    }

    v160 = v54;
    v80 = v132;
    v142(v132, v144, v30);
    v81 = sub_2CDFE0();
    v82 = sub_2CE680();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v83, 2u);
      v66 = v155;
    }

    v64(v80, v30);
    v84 = sub_2CB850();
    sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v85 = swift_allocError();
    (*(*(v84 - 8) + 104))(v86, enum case for PlaybackCode.ceGE90(_:), v84);
    v154(v85, 1);

    return (v147)(v66, v160);
  }
}

uint64_t sub_10AFCC(void *a1, uint64_t (*a2)(id, void))
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v10, v11, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse returning intent: %@", v12, 0xCu);
    sub_30B8(v13, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v7, v4);
  return a2(v9, 0);
}

uint64_t DetermineFlowStrategy.deinit()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));
  return v0;
}

uint64_t DetermineFlowStrategy.__deallocating_deinit()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, updated, a3);
}

uint64_t sub_10B35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_10B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, updated, a3);
}

uint64_t sub_10B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, updated, a4);
}

uint64_t sub_10B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_10B7F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10B83C(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v142 = a3;
  v167 = a2;
  v170 = a1;
  v156 = sub_2CD4C0();
  v158 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v8 = __chkstk_darwin(v155);
  v144 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v148 = &v137 - v10;
  v11 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v12 = __chkstk_darwin(v11 - 8);
  v139 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v147 = &v137 - v15;
  v16 = __chkstk_darwin(v14);
  v143 = &v137 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v137 - v19;
  v20 = __chkstk_darwin(v18);
  v162 = &v137 - v21;
  __chkstk_darwin(v20);
  v151 = &v137 - v22;
  v169 = sub_2CA870();
  v23 = *(v169 - 1);
  v24 = __chkstk_darwin(v169);
  v163 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v159 = &v137 - v27;
  __chkstk_darwin(v26);
  v29 = &v137 - v28;
  v30 = sub_2CE000();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v160 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v138 = &v137 - v35;
  v36 = __chkstk_darwin(v34);
  v145 = &v137 - v37;
  __chkstk_darwin(v36);
  v39 = &v137 - v38;
  v40 = swift_allocObject();
  *(v40 + 16) = a4;
  *(v40 + 24) = a5;
  v165 = v40;
  v41 = qword_34BF58;
  v42 = a4;

  v43 = a5;
  if (v41 != -1)
  {
    swift_once();
  }

  v44 = sub_3ED0(v30, static Logger.default);
  swift_beginAccess();
  v45 = *(v31 + 16);
  v154 = v44;
  v153 = v31 + 16;
  v152 = v45;
  v45(v39, v44, v30);
  v168 = v23;
  v164 = *(v23 + 2);
  v164(v29, v170, v169);
  v46 = v167;
  v161 = v39;
  v47 = sub_2CDFE0();
  v48 = sub_2CE670();
  v166 = v30;
  v49 = v48;

  v50 = os_log_type_enabled(v47, v49);
  v51 = v31;
  v157 = v43;
  v141 = v46;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v173 = v137;
    *v52 = 136446722;
    v53 = sub_2CCCC0();
    v149 = v51;
    v55 = sub_3F08(v53, v54, &v173);
    v150 = v42;
    v56 = v55;

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = v169;
    v164(v159, v29, v169);
    v58 = sub_2CE2A0();
    v60 = v59;
    v159 = *(v168 + 1);
    (v159)(v29, v57);
    v61 = sub_3F08(v58, v60, &v173);

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    v42 = v150;
    *&v171 = v167;
    v62 = v46;
    sub_20410(&qword_351320, &qword_2D4298);
    v63 = sub_2CE2A0();
    v65 = sub_3F08(v63, v64, &v173);
    v51 = v149;

    *(v52 + 24) = v65;
    _os_log_impl(&dword_0, v47, v49, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v52, 0x20u);
    swift_arrayDestroy();

    v66 = v157;

    v67 = *(v51 + 8);
    v67(v161, v166);
    v68 = v163;
  }

  else
  {

    v57 = v169;
    v159 = *(v168 + 1);
    (v159)(v29, v169);
    v67 = *(v31 + 8);
    v67(v161, v166);
    v68 = v163;
    v66 = v43;
  }

  v69 = v170;
  v164(v68, v170, v57);
  v70 = v168;
  v71 = (*(v168 + 11))(v68, v57);
  v72 = v162;
  if (v71 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_7:
    (v159)(v68, v57);
    sub_D2F98(v69, &v171);
    if (!v172)
    {
      sub_30B8(&v171, &qword_34CF98, &unk_2D1A40);
      v94 = v66;
      v95 = v166;
LABEL_30:
      v152(v160, v154, v95);
      v103 = sub_2CDFE0();
      v104 = sub_2CE680();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v103, v104, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v105, 2u);
      }

      v67(v160, v95);
      v106 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v107 = swift_allocError();
      (*(*(v106 - 8) + 104))(v108, enum case for PlaybackCode.ceGE89(_:), v106);
      swift_beginAccess();
      v109 = *(v42 + 16);
      *(v42 + 16) = v107;
      v110 = *(v42 + 24);
      *(v42 + 24) = 1;
      sub_A4194(v109, v110);
      dispatch_group_leave(v94);
    }

    v168 = v67;
    v149 = v51;
    v150 = v42;
    sub_420A4(&v171, &v173);
    sub_35E0(&v173, v174);
    v73 = v151;
    sub_2CD840();
    v74 = v158;
    v75 = v156;
    v170 = *(v158 + 104);
    (v170)(v72, enum case for CommonAudio.Verb.like(_:), v156);
    v169 = *(v74 + 56);
    (v169)(v72, 0, 1, v75);
    v76 = *(v155 + 48);
    v77 = v148;
    sub_F7598(v73, v148);
    sub_F7598(v72, v77 + v76);
    v78 = *(v74 + 48);
    if (v78(v77, 1, v75) == 1)
    {
      sub_30B8(v72, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v73, &qword_34D6B8, &qword_2D15B0);
      v79 = v78(v77 + v76, 1, v75);
      v80 = v167;
      if (v79 == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v96 = v146;
      sub_F7598(v77, v146);
      if (v78(v77 + v76, 1, v75) != 1)
      {
        v111 = v158;
        v112 = v77 + v76;
        v113 = v140;
        (*(v158 + 32))(v140, v112, v75);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        LODWORD(v164) = sub_2CE250();
        v114 = *(v111 + 8);
        v114(v113, v75);
        sub_30B8(v72, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v151, &qword_34D6B8, &qword_2D15B0);
        v114(v146, v75);
        sub_30B8(v148, &qword_34D6B8, &qword_2D15B0);
        v80 = v167;
        if (v164)
        {
          goto LABEL_40;
        }

LABEL_22:
        sub_35E0(&v173, v174);
        v97 = v143;
        sub_2CD840();
        v98 = v147;
        v99 = v156;
        (v170)(v147, enum case for CommonAudio.Verb.unlike(_:), v156);
        (v169)(v98, 0, 1, v99);
        v100 = *(v155 + 48);
        v101 = v144;
        sub_F7598(v97, v144);
        sub_F7598(v98, v101 + v100);
        if (v78(v101, 1, v99) == 1)
        {
          sub_30B8(v98, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v97, &qword_34D6B8, &qword_2D15B0);
          if (v78(v101 + v100, 1, v99) == 1)
          {
            v77 = v101;
LABEL_25:
            sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
LABEL_40:
            v128 = v141;
            v129 = v141;
            if (!v80)
            {
              v129 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            }

            v130 = v174;
            v131 = v175;
            v132 = sub_35E0(&v173, v174);
            v133 = swift_allocObject();
            v133[2] = v129;
            v133[3] = sub_A4188;
            v133[4] = v165;
            v134 = v128;
            v135 = v129;

            sub_113174(v132, (v142 + 16), v142 + 56, sub_10CD88, v133, v135, v130, v131);

            sub_306C(&v173);
          }
        }

        else
        {
          v102 = v139;
          sub_F7598(v101, v139);
          if (v78(v101 + v100, 1, v99) != 1)
          {
            v123 = v158;
            v124 = v101 + v100;
            v125 = v140;
            (*(v158 + 32))(v140, v124, v99);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v126 = sub_2CE250();
            v127 = *(v123 + 8);
            v127(v125, v99);
            sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v97, &qword_34D6B8, &qword_2D15B0);
            v127(v102, v99);
            sub_30B8(v101, &qword_34D6B8, &qword_2D15B0);
            if (v126)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }

          sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v97, &qword_34D6B8, &qword_2D15B0);
          (*(v158 + 8))(v102, v99);
        }

        sub_30B8(v101, &qword_34D6B0, &unk_2D4FC0);
LABEL_29:
        sub_306C(&v173);
        v42 = v150;
        v95 = v166;
        v94 = v157;
        v67 = v168;
        goto LABEL_30;
      }

      sub_30B8(v72, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v151, &qword_34D6B8, &qword_2D15B0);
      (*(v158 + 8))(v96, v75);
      v80 = v167;
    }

    sub_30B8(v77, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_22;
  }

  if (v71 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v70 + 12))(v68, v57);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v81 = sub_2CA830();
    objc_opt_self();
    v82 = swift_dynamicCastObjCClass();
    if (v82)
    {
      v83 = v82;
      swift_beginAccess();
      v84 = *(v42 + 16);
      *(v42 + 16) = v83;
      v85 = *(v42 + 24);
      *(v42 + 24) = 0;
    }

    else
    {

      v115 = v138;
      v152(v138, v154, v166);
      v116 = sub_2CDFE0();
      v117 = sub_2CE670();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_0, v116, v117, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v118, 2u);
        v66 = v157;
      }

      v67(v115, v166);
      v119 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v120 = swift_allocError();
      (*(*(v119 - 8) + 104))(v121, enum case for PlaybackCode.ceGE88(_:), v119);
      swift_beginAccess();
      v84 = *(v42 + 16);
      *(v42 + 16) = v120;
      v85 = *(v42 + 24);
      *(v42 + 24) = 1;
    }

    sub_A4194(v84, v85);
    dispatch_group_leave(v66);

    v122 = sub_2CAFE0();
    (*(*(v122 - 8) + 8))(v68, v122);
  }

  else
  {
    v69 = v170;
    if (v71 == enum case for Parse.uso(_:))
    {
      goto LABEL_7;
    }

    v152(v145, v154, v166);
    v86 = sub_2CDFE0();
    v87 = sub_2CE680();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v86, v87, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v88, 2u);
    }

    v67(v145, v166);
    v89 = sub_2CB850();
    sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v90 = swift_allocError();
    (*(*(v89 - 8) + 104))(v91, enum case for PlaybackCode.ceGE90(_:), v89);
    swift_beginAccess();
    v92 = *(v42 + 16);
    *(v42 + 16) = v90;
    v93 = *(v42 + 24);
    *(v42 + 24) = 1;
    sub_A4194(v92, v93);
    dispatch_group_leave(v66);
    (v159)(v68, v169);
  }
}

uint64_t sub_10CDDC()
{

  sub_306C((v0 + 24));
  return v0;
}

double sub_10CE1C(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v53 = a2;
  v7 = sub_2CA920();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v51 = &v43 - v14;
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v50 = *(v10 + 16);
  v50(v16, v17, v9);

  v18 = v10;
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v46 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = a4;
    v24 = v23;
    v54 = a1;
    v55 = v23;
    *v22 = 136315138;
    sub_2CCFB0();
    sub_10D408();
    v44 = v18;
    v25 = sub_2CEE70();
    v27 = sub_3F08(v25, v26, &v55);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v19, v20, "CommonViewProvider#makeViewsForNeedsDisambiguation for app: %s", v22, 0xCu);
    sub_306C(v24);

    a3 = v46;

    v28 = *(v44 + 8);
    v28(v16, v9);
    if ((sub_2CB640() & 1) == 0)
    {
LABEL_5:
      v50(v51, v17, v9);
      v29 = sub_2CDFE0();
      v30 = sub_2CE670();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_0, v29, v30, "CommonViewProvider#makeViewsForNeedsDisambiguation Rending Phone disambiguation views", v31, 2u);
      }

      v28(v51, v9);
      sub_2C9940();
      sub_2CB5A0();
      v33 = v47;
      v32 = v48;
      v34 = v49;
      (*(v48 + 104))(v47, enum case for ImageSize.default(_:), v49);
      v35 = sub_2C99C0();

      (*(v32 + 8))(v33, v34);
      sub_2C98E0();
      sub_2C98D0();
      sub_2C98A0();

      v36 = sub_2C98C0();

      a3(v36, 0);

      goto LABEL_12;
    }
  }

  else
  {

    v28 = *(v18 + 8);
    v28(v16, v9);
    if ((sub_2CB640() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v50(v52, v17, v9);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "CommonViewProvider#makeViewsForNeedsDisambiguation Rending CarPlay disambiguation views", v39, 2u);
  }

  v28(v52, v9);
  sub_20410(&unk_351900, &unk_2D0960);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2D0770;
  sub_2C9940();
  sub_2CB5A0();
  v41 = sub_2C99B0();

  *(v40 + 32) = v41;
  a3(v40, 0);
LABEL_12:

  return result;
}