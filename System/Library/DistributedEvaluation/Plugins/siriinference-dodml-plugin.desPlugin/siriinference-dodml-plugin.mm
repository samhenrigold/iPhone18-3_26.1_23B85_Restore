uint64_t sub_14D0(void *a1)
{
  v2 = sub_5A94();
  sub_565C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_56DC();
  v134 = v6;
  sub_5720();
  v8 = __chkstk_darwin(v7);
  v10 = &v123 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v123 - v12;
  __chkstk_darwin(v11);
  sub_584C();
  v131 = v14;
  v15 = sub_482C(&qword_C4F0, &qword_6258);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  sub_584C();
  v139 = v19;
  v127 = sub_5B14();
  sub_565C();
  v126 = v20;
  __chkstk_darwin(v21);
  sub_57E0();
  v24 = v23 - v22;
  sub_5AA4();
  sub_5798();
  v138 = v24;
  sub_5B04();
  v25 = [a1 matchingRecordSet];
  v128 = a1;
  v26 = [a1 recipe];
  v27 = [v26 recipeUserInfo];

  v125 = sub_5B34();
  sub_5614(&qword_C4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v129 = sub_5B44();
  v140 = v25;
  v28 = [v25 nativeRecordInfo];
  sub_482C(&qword_C448, &qword_61E0);
  v148 = v2;
  v29 = sub_5B34();

  v30 = 0;
  v146 = 0;
  v132 = v4;
  v133 = v29;
  sub_5698();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;
  v37 = (v4 + 16);
  v144 = (v4 + 32);
  v137 = (v4 + 8);
  v38 = v13;
  *&v39 = 136315138;
  v130 = v39;
  v142 = v18;
  v143 = v10;
  v147 = v13;
  v135 = v36;
  v136 = v31;
  v141 = v37;
  while (1)
  {
    if (v34)
    {
      v40 = v30;
      goto LABEL_8;
    }

    do
    {
      v40 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v40 >= v36)
      {
        sub_482C(&qword_C500, &qword_6260);
        sub_593C();
        sub_48D4(v81, v82, v83, v84);
        v34 = 0;
        goto LABEL_9;
      }

      v34 = *(v31 + 8 * v40);
      ++v30;
    }

    while (!v34);
    v30 = v40;
LABEL_8:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = v41 | (v40 << 6);
    v44 = v132;
    v43 = v133;
    v45 = v131;
    v46 = v148;
    (*(v132 + 16))(v131, *(v133 + 48) + *(v132 + 72) * v42, v148);
    v47 = *(*(v43 + 56) + 8 * v42);
    v48 = sub_482C(&qword_C500, &qword_6260);
    v49 = *(v48 + 48);
    v50 = *(v44 + 32);
    v18 = v142;
    v50(v142, v45, v46);
    *&v18[v49] = v47;
    sub_597C();
    sub_48D4(v51, v52, v53, v48);

    v10 = v143;
    v38 = v147;
LABEL_9:
    v54 = v139;
    sub_53F0(v18, v139, &qword_C4F0, &qword_6258);
    v55 = sub_5988();
    sub_482C(v55, v56);
    v57 = sub_58FC();
    if (sub_4954(v57, v58, v59) == 1)
    {
      break;
    }

    v60 = v148;
    (*v144)(v38, v54, v148);
    v61 = *v141;
    (*v141)(v10, v38, v60);
    isa = sub_5A84().super.isa;
    v149 = 0;
    v63 = [v140 nativeRecordDataForRecordUUID:isa error:&v149];

    if (!v63)
    {
      v64 = *v137;
      v65 = v149;
      v66 = v148;
      v146 = v64;
      v64(v10, v148);
      v67 = sub_5A44();

      v145 = v67;
      swift_willThrow();
      v68 = v134;
      v61(v134, v147, v66);
      v69 = sub_5AF4();
      v70 = sub_5BE4();
      if (os_log_type_enabled(v69, v70))
      {
        sub_57C4();
        v71 = swift_slowAlloc();
        sub_57B8();
        v72 = swift_slowAlloc();
        v149 = v72;
        *v71 = v130;
        v73 = sub_5A74();
        v75 = v74;
        v76 = v68;
        v77 = v146;
        v146(v76, v148);
        v78 = sub_49D4(v73, v75, &v149);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_0, v69, v70, "failure retrieving native record data for %s; skipping from collection", v71, 0xCu);
        sub_4F44(v72);
        sub_5714();

        sub_5714();

        v38 = v147;
        v77(v147, v148);
      }

      else
      {

        v79 = v148;
        v80 = v146;
        v146(v68, v148);
        v38 = v147;
        v80(v147, v79);
      }

      v146 = 0;
      v18 = v142;
      v10 = v143;
      v36 = v135;
      v31 = v136;
      continue;
    }

    v85 = v149;
    v86 = sub_5A64();
    v145 = v87;

    sub_5738();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v63;
    sub_5008(v10);
    sub_57F0();
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_31;
    }

    v94 = v89;
    v95 = v90;
    sub_482C(&qword_C508, qword_6268);
    if (sub_5C54(isUniquelyReferenced_nonNull_native, v93))
    {
      v10 = v143;
      v96 = sub_5008(v143);
      v38 = v147;
      v18 = v142;
      if ((v95 & 1) != (v97 & 1))
      {
        result = sub_5CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v96 = v94;
      v18 = v142;
      v10 = v143;
      v38 = v147;
    }

    v98 = v149;
    v129 = v149;
    if (v95)
    {
      v99 = (*(v149 + 7) + 16 * v96);
      v100 = *v99;
      v101 = v99[1];
      v102 = v145;
      *v99 = v86;
      v99[1] = v102;
      sub_497C(v100, v101);
      v103 = *v137;
      v104 = v148;
      (*v137)(v10, v148);
      v103(v38, v104);
      goto LABEL_25;
    }

    v105 = v96;
    sub_5968(v149 + 8 * (v96 >> 6));
    v108 = (v107 + *(v132 + 72) * v106);
    v124 = v86;
    v109 = v148;
    v61(v108, v10, v148);
    v110 = (v98[7] + 16 * v105);
    v111 = v145;
    *v110 = v124;
    v110[1] = v111;
    v112 = *(v132 + 8);
    v112(v10, v109);
    v112(v38, v109);
    v113 = v98[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_32;
    }

    v98[2] = v115;
LABEL_25:
    v36 = v135;
    v31 = v136;
  }

  v116 = v146;
  sub_1F6C(v125, v129);

  if (v116)
  {
    v117 = sub_5A34();
    v118 = sub_591C();
    [v118 v119];
  }

  else
  {
    v117 = sub_5B24().super.isa;

    v120 = sub_591C();
    [v120 v121];
  }

  return (*(v126 + 8))(v138, v127);
}

uint64_t sub_1F6C(uint64_t a1, uint64_t a2)
{
  v322 = a2;
  v4 = sub_5AE4();
  sub_565C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v8);
  sub_584C();
  v318 = v9;
  v10 = sub_482C(&qword_C460, &qword_61F8);
  __chkstk_darwin(v10 - 8);
  sub_5800(v287 - v11);
  v328 = sub_5AD4();
  sub_565C();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_57E0();
  sub_5800(v16 - v15);
  v17 = sub_5A94();
  sub_565C();
  v321 = v18;
  __chkstk_darwin(v19);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v20);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v21);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v22);
  sub_5758();
  v331 = v23;
  sub_5720();
  __chkstk_darwin(v24);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v25);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v26);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v27);
  sub_584C();
  v319 = v28;
  v29 = sub_482C(&qword_C468, &qword_6200);
  __chkstk_darwin(v29 - 8);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v30);
  sub_5758();
  v330 = v31;
  sub_5720();
  __chkstk_darwin(v32);
  sub_5758();
  v332 = v33;
  sub_5720();
  __chkstk_darwin(v34);
  sub_584C();
  sub_5800(v35);
  v36 = sub_5B14();
  sub_565C();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_57E0();
  v42 = v41 - v40;
  sub_5AA4();
  sub_5798();
  v325 = v42;
  sub_5B04();
  sub_3FF8(1701667182, 0xE400000000000000, a1, &v337);
  v320 = v17;
  v302 = v36;
  v301 = v38;
  v298 = v2;
  v300 = a1;
  if (!*(&v338 + 1))
  {
    sub_50FC(&v337, &qword_C470, &qword_6208);
LABEL_10:
    v315 = sub_482C(&qword_C448, &qword_61E0);
    v311 = sub_5B44();
    v45 = sub_58D0() + 64;
    sub_5698();
    v334 = v47 & v46;
    v49 = ((v48 + 63) >> 6);
    v328 = (v321 + 16);
    v329 = (v321 + 32);
    v316 = (v321 + 8);
    v310 = "v24@0:8@16";

    v51 = 0;
    *&v52 = 136315138;
    v314 = v52;
    v309 = xmmword_6190;
    v318 = v45;
    v317 = v49;
    while (1)
    {
      v53 = v327;
      v54 = v330;
      while (1)
      {
        v55 = v334;
        if (v334)
        {
          goto LABEL_18;
        }

        v13 = v324;
        v56 = v331;
        v57 = v326;
        do
        {
          v58 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v58 >= v49)
          {
            v70 = v17;
            sub_482C(&qword_C478, &qword_6210);
            sub_593C();
            sub_48D4(v108, v109, v110, v111);
            v334 = 0;
            goto LABEL_19;
          }

          v55 = *(v45 + 8 * v58);
          v51 = (v51 + 1);
        }

        while (!v55);
        v51 = v58;
LABEL_18:
        v334 = (v55 - 1) & v55;
        sub_5858();
        v60 = *(v59 - 256);
        v62 = v319;
        (*(v60 + 16))(v319, v61 + *(v60 + 72) * v13, v17);
        v63 = (*(v49 + 7) + 16 * v13);
        v64 = *v63;
        v65 = v63[1];
        v66 = sub_482C(&qword_C478, &qword_6210);
        v67 = (v327 + *(v66 + 48));
        v68 = *(v60 + 32);
        v53 = v327;
        v69 = v62;
        v70 = v17;
        v68(v327, v69, v17);
        *v67 = v64;
        v67[1] = v65;
        sub_597C();
        sub_48D4(v71, v72, v73, v66);
        sub_48FC(v64, v65);
        v57 = v326;
        v13 = v324;
        v54 = v330;
        v56 = v331;
LABEL_19:
        sub_53F0(v53, v54, &qword_C468, &qword_6200);
        sub_482C(&qword_C478, &qword_6210);
        v74 = sub_58FC();
        if (sub_4954(v74, v75, v76) == 1)
        {
          sub_58D0();

          sub_5764();
          if (*(&v338 + 1))
          {
            sub_5930();
            swift_dynamicCast();
            sub_56B4();
            sub_5954();
            if (v126 && (v335 & 1) != 0)
            {
              v50 = sub_44C4(v51);
              if (v57)
              {
                sub_5738();
                v13 = sub_5AF4();
                v127 = sub_5BE4();
                if (sub_5870(v127))
                {
                  *sub_59EC() = 0;
                  sub_59B4(&dword_0, v128, v129, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
                  sub_5714();
                }

                sub_428C(v51, &qword_C448, &qword_61E0);
                sub_59D4();
LABEL_119:

                v278 = sub_56C8();
                v279(v278);
                return v13;
              }

LABEL_125:
              v13 = v50;
              v283 = sub_56C8();
              v284(v283);
              goto LABEL_128;
            }
          }

          else
          {
            sub_50FC(&v337, &qword_C470, &qword_6208);
            sub_56B4();
            sub_5954();
          }

          sub_428C(v51, &qword_C448, &qword_61E0);
          sub_59D4();
LABEL_122:
          v280 = sub_56C8();
          v281(v280);
          return v13;
        }

        v77 = *(v54 + dword_C4A8);
        v78 = sub_58C4();
        v80 = v79;
        v81(v78);
        v82 = objc_opt_self();
        v332 = v80;
        v333 = v77;
        isa = sub_5A54().super.isa;
        *&v337 = 0;
        v84 = [v82 JSONObjectWithData:isa options:0 error:&v337];

        v85 = v337;
        if (!v84)
        {
          v13 = v337;
          v49 = sub_5A44();

          v323 = v49;
          v45 = v49;
          swift_willThrow();
          (*v328)(v57, v56, v70);
          sub_5738();
          v95 = v70;
          v96 = sub_5AF4();
          sub_5BE4();
          sub_5834();
          if (os_log_type_enabled(v96, v97))
          {
            sub_57C4();
            v13 = swift_slowAlloc();
            sub_57B8();
            v98 = swift_slowAlloc();
            *v13 = sub_57D0(v98).n128_u32[0];
            v99 = sub_5A74();
            v101 = v100;
            v102 = *v316;
            (*v316)(v326, v95);
            v49 = sub_49D4(v99, v101, &v337);
            v53 = v327;

            *(v13 + 4) = v49;
            _os_log_impl(&dword_0, v96, v85, "Unable to decode record %s, skipping", v13, 0xCu);
            sub_4F44(v98);
            sub_5714();

            sub_5714();

            sub_497C(v333, v332);

            v17 = v320;
            v102(v331, v320);
            sub_5948();
          }

          else
          {
            sub_497C(v333, v332);

            sub_59A8();
            (v13)(v57, v70);
            (v13)(v331, v70);
            sub_5948();
            v17 = v70;
          }

          goto LABEL_35;
        }

        v86 = v337;
        sub_5C14();
        swift_unknownObjectRelease();
        sub_5930();
        if (swift_dynamicCast())
        {
          break;
        }

        v17 = v70;
        (*v328)(v13, v56, v70);
        sub_5738();
        v103 = sub_5AF4();
        sub_5BD4();
        sub_5834();
        v49 = v13;
        if (os_log_type_enabled(v103, v104))
        {
          sub_57C4();
          v17 = swift_slowAlloc();
          sub_57B8();
          v13 = swift_slowAlloc();
          *v17 = sub_57D0(v13).n128_u32[0];
          v312 = sub_5A74();
          v106 = v105;
          v107 = *v316;
          sub_58DC();
          v107();
          v49 = sub_49D4(v312, v106, &v337);

          *(v17 + 4) = v49;
          _os_log_impl(&dword_0, v103, v85, "Couldn't decode data for %s into a record, skipping", v17, 0xCu);
          sub_4F44(v13);
          sub_5714();

          sub_56F0();
          sub_497C(v333, v332);

          (v107)(v331, v17);
        }

        else
        {
          sub_497C(v333, v332);

          v13 = *v316;
          (*v316)(v49, v70);
          (v13)(v56, v70);
        }

LABEL_34:
        v53 = v327;
LABEL_35:
        v54 = v330;
        sub_58B0();
      }

      v87 = v335;
      if (*(v335 + 16))
      {
        v17 = v70;
        v49 = v335;
        v88 = sub_4F90(0x79546C616E676973, 0xEA00000000006570);
        if (v89)
        {
          sub_50A0(*(v87 + 56) + 32 * v88, &v337);

          sub_50FC(&v337, &qword_C470, &qword_6208);
          v13 = v313;
          (*v328)(v313, v56, v70);
          sub_5738();
          v90 = sub_5AF4();
          sub_5BD4();
          sub_5834();
          if (os_log_type_enabled(v90, v91))
          {
            sub_57C4();
            v17 = swift_slowAlloc();
            sub_57B8();
            v92 = swift_slowAlloc();
            *v17 = sub_57D0(v92).n128_u32[0];
            v49 = v13;
            sub_5A74();
            sub_5910();
            v13 = v93;
            v94 = *v316;
            sub_58DC();
            v94();
            sub_49D4(v49, v13, &v337);
            sub_5910();

            *(v17 + 4) = v49;
            _os_log_impl(&dword_0, v90, v85, "Record %s looks like a CustomSignal, skipping", v17, 0xCu);
            sub_4F44(v92);
            sub_5714();

            sub_56F0();
            sub_497C(v333, v332);

            (v94)(v331, v17);
          }

          else
          {
            sub_497C(v333, v332);

            sub_59A8();
            (v13)();
            (v13)(v56, v70);
          }

          goto LABEL_34;
        }
      }

      v337 = 0u;
      v338 = 0u;
      sub_50FC(&v337, &qword_C470, &qword_6208);
      sub_5738();
      v112 = sub_5AF4();
      sub_5BD4();
      sub_5834();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = sub_59EC();
        *v114 = 0;
        _os_log_impl(&dword_0, v112, v85, "SiriInference dodML plugin ran succesfully", v114, 2u);
        sub_5714();
      }

      *&v337 = 0;
      *(&v337 + 1) = 0xE000000000000000;
      sub_5C34(24);
      v115 = sub_5AA4();
      v117 = v116;

      *&v337 = v115;
      *(&v337 + 1) = v117;
      v339._object = (v310 | 0x8000000000000000);
      v339._countAndFlagsBits = 0xD000000000000016;
      sub_5BA4(v339);
      v118 = sub_5B74();

      sub_482C(&qword_C480, &qword_6218);
      inited = swift_initStackObject();
      *(inited + 16) = v309;
      *(inited + 32) = 0x656D6F6374756FLL;
      *(inited + 40) = 0xE700000000000000;
      v120 = sub_515C(0, &qword_C488, NSString_ptr);
      *(inited + 48) = sub_5C04();
      sub_515C(0, &qword_C490, NSObject_ptr);
      sub_5910();
      sub_5B44();
      sub_5B24();
      sub_5910();

      AnalyticsSendEvent();

      v13 = sub_5A74();
      v122 = v121;
      v123 = v311;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v337 = v123;
      v49 = &v337;
      sub_51A4(v87, v13, v122, isUniquelyReferenced_nonNull_native);
      sub_497C(v333, v332);

      sub_572C();
      v17 = v320;
      v125(v56, v320);
      v311 = v337;
      sub_58B0();
    }
  }

  sub_5930();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v335 == 0x536F747541736D73 && v336 == 0xEB00000000646E65)
  {

    goto LABEL_49;
  }

  v44 = sub_5C94();

  if ((v44 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_49:
  *&v309 = v4;
  sub_5A24();
  swift_allocObject();
  v326 = sub_5A14();
  sub_482C(&qword_C498, &qword_6220);
  v297 = sub_5B44();
  v130 = sub_58D0();
  v131 = v130 + 64;
  v132 = 1 << *(v130 + 32);
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  else
  {
    v133 = -1;
  }

  v134 = v133 & *(v130 + 64);
  v310 = (v132 + 63) >> 6;
  v327 = v321 + 16;
  v329 = (v321 + 32);
  v313 = (v321 + 8);
  v308 = v13 + 32;
  v307 = enum case for CustomSignalType.messagesAutoSend(_:);
  v306 = v6 + 104;
  v305 = (v6 + 8);
  v304 = v13 + 8;

  *&v135 = 136315138;
  v303 = v135;
  v136 = v328;
  v137 = v317;
  v324 = v131;
LABEL_53:
  sub_5810();
  v140 = v332;
  while (1)
  {
    if (!v134)
    {
      while (1)
      {
        v141 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          break;
        }

        if (v141 >= v310)
        {
          v156 = v136;
          v334 = v139;
          v152 = v17;
          v197 = sub_5988();
          sub_482C(v197, v198);
          sub_593C();
          sub_48D4(v199, v200, v201, v202);
          v333 = 0;
          goto LABEL_61;
        }

        v134 = *(v131 + 8 * v141);
        ++v139;
        if (v134)
        {
          v334 = v141;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_127;
    }

    v334 = v139;
LABEL_60:
    v142 = (v134 - 1) & v134;
    v333 = v142;
    sub_5858();
    v144 = *(v143 - 256);
    v38 = v319;
    (*(v144 + 16))(v319, v145 + *(v144 + 72) * v140, v17);
    v146 = (*(v142 + 56) + 16 * v140);
    v148 = *v146;
    v147 = v146[1];
    v149 = sub_482C(&qword_C478, &qword_6210);
    v140 = v332;
    v150 = (v332 + *(v149 + 48));
    v151 = *(v144 + 32);
    v152 = v17;
    v151(v332, v38, v17);
    *v150 = v148;
    v150[1] = v147;
    sub_597C();
    sub_48D4(v153, v154, v155, v149);
    sub_48FC(v148, v147);
    sub_5810();
    v156 = v328;
    v137 = v317;
LABEL_61:
    v157 = v316;
    sub_53F0(v140, v316, &qword_C468, &qword_6200);
    v158 = sub_5988();
    v13 = sub_482C(v158, v159);
    if (sub_4954(v157, 1, v13) == 1)
    {
      break;
    }

    v160 = (v157 + *(v13 + 48));
    v38 = v137;
    v162 = *v160;
    v161 = v160[1];
    v17 = v152;
    (*v329)(v38, v157, v152);
    sub_5614(&qword_C4A0, &type metadata accessor for CustomSignal, &protocol conformance descriptor for CustomSignal);
    v163 = v314;
    v330 = v162;
    v331 = v161;
    v134 = v326;
    v131 = v323;
    sub_5A04();
    if (v131)
    {

      sub_593C();
      sub_48D4(v164, v165, v166, v156);
      sub_50FC(v163, &qword_C460, &qword_61F8);
      sub_572C();
      v167 = v312;
      v168(v312, v38, v152);
      sub_5738();
      v140 = sub_5AF4();
      sub_5BD4();
      v137 = v38;
      sub_5834();
      if (os_log_type_enabled(v140, v169))
      {
        sub_57C4();
        v170 = swift_slowAlloc();
        sub_57B8();
        v171 = swift_slowAlloc();
        *v170 = sub_5994(v171).n128_u32[0];
        v172 = sub_5A74();
        v38 = v173;
        v174 = *v313;
        sub_58DC();
        v174();
        v134 = sub_49D4(v172, v38, &v337);

        *(v170 + 4) = v134;
        _os_log_impl(&dword_0, v140, v156, "Unable to decode %s to CustomSignal, so not an SMS record", v170, 0xCu);
        sub_4F44(v152);
        sub_56F0();
        sub_5810();
        sub_5714();

        sub_497C(v330, v331);

        v175 = sub_5840();
        (v174)(v175);
        v136 = v328;
        sub_5948();
        goto LABEL_82;
      }

      sub_497C(v330, v331);

      sub_59A8();
      (v140)(v167, v152);
      v196 = sub_5840();
      (v140)(v196);
      sub_5948();
      sub_5744();
      v136 = v156;
    }

    else
    {
      v323 = 0;
      sub_597C();
      sub_48D4(v176, v177, v178, v156);
      sub_572C();
      v179(v315, v163, v156);
      sub_5AB4();
      sub_572C();
      v180 = v311;
      v181 = v309;
      v182(v311, v307, v309);
      sub_5614(&dword_C4A8, &type metadata accessor for CustomSignalType, &protocol conformance descriptor for CustomSignalType);
      sub_5BC4();
      sub_5BC4();
      v134 = *(&v337 + 1);
      v140 = v336;
      if (v337 == v335 && *(&v337 + 1) == v336)
      {
        v38 = v305;
        v203 = *v305;
        (*v305)(v180, v181);
        v204 = sub_58C4();
        (v203)(v204);

LABEL_75:
        sub_515C(0, &qword_C4B0, NSKeyedUnarchiver_ptr);
        sub_515C(0, &qword_C488, NSString_ptr);
        sub_515C(0, &qword_C4B8, NSNumber_ptr);
        v205 = sub_5AC4();
        v207 = v206;
        v131 = v323;
        v208 = sub_5BF4();
        v134 = v131;
        if (v131)
        {

          sub_497C(v205, v207);
          v134 = 0;
          v136 = v328;
        }

        else
        {
          v209 = v208;
          sub_497C(v205, v207);
          v136 = v328;
          if (v209)
          {
            v295 = sub_5B44();
            v17 = v320;
            v137 = v317;
            if ((v209 & 0xC000000000000001) != 0)
            {
              v220 = sub_5C64();
              v289 = 0;
              v221 = 0;
              v222 = 0;
              v288 = v220 | 0x8000000000000000;
            }

            else
            {
              v223 = -1 << *(v209 + 32);
              v221 = ~v223;
              v224 = *(v209 + 64);
              v289 = v209 + 64;
              v225 = -v223;
              if (v225 < 64)
              {
                v226 = ~(-1 << v225);
              }

              else
              {
                v226 = -1;
              }

              v222 = v226 & v224;
              v288 = v209;
            }

            v287[1] = v221;
            v323 = 0;
            sub_581C();
            *(v231 - 256) = v230;
            if (v229 < 0)
            {
LABEL_91:
              v38 = v227;
              v232 = sub_5C74();
              if (v232)
              {
                v234 = v233;
                v335 = v232;
                swift_dynamicCast();
                v296 = v337;
                v335 = v234;
                swift_dynamicCast();
                v235 = v337;
                v294 = v222;
                goto LABEL_98;
              }
            }

            else
            {
              while (1)
              {
                v236 = v227;
                v237 = v222;
                v38 = v227;
                if (!v222)
                {
                  while (1)
                  {
                    v38 = v236 + 1;
                    if (__OFADD__(v236, 1))
                    {
                      break;
                    }

                    if (v38 >= v230)
                    {
                      goto LABEL_110;
                    }

                    v237 = *(v228 + 8 * v38);
                    ++v236;
                    if (v237)
                    {
                      goto LABEL_97;
                    }
                  }

                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
                }

LABEL_97:
                v294 = (v237 - 1) & v237;
                v238 = (v38 << 9) | (8 * __clz(__rbit64(v237)));
                v239 = *(*(v229 + 48) + v238);
                v293 = *(*(v229 + 56) + v238);
                v296 = v239;
                v235 = v293;
LABEL_98:
                if (!v296)
                {
                  break;
                }

                v240 = sub_5B84();
                v242 = v241;
                v293 = v235;
                v292 = [v235 integerValue];
                v243 = v295;
                v290 = swift_isUniquelyReferenced_nonNull_native();
                *&v337 = v243;
                v291 = v240;
                v244 = v240;
                v245 = v242;
                sub_4F90(v244, v242);
                sub_57F0();
                v250 = v248 + v249;
                if (__OFADD__(v248, v249))
                {
                  goto LABEL_130;
                }

                v251 = v246;
                v252 = v247;
                sub_482C(&qword_C4C0, &qword_6228);
                if (sub_5C54(v290, v250))
                {
                  v253 = sub_4F90(v291, v245);
                  v255 = v317;
                  v136 = v328;
                  if ((v252 & 1) != (v254 & 1))
                  {
                    result = sub_5CA4();
                    __break(1u);
                    return result;
                  }

                  v251 = v253;
                }

                else
                {
                  v255 = v317;
                  v136 = v328;
                }

                v256 = v252;
                v137 = v255;
                if (v256)
                {

                  v295 = v337;
                  sub_588C(*(v337 + 56));
                }

                else
                {
                  v257 = v337;
                  sub_5968(v337 + 8 * (v251 >> 6));
                  v259 = (v258 + 16 * v251);
                  *v259 = v291;
                  v259[1] = v245;
                  sub_588C(*(v257 + 56));

                  v260 = *(v257 + 16);
                  v261 = __OFADD__(v260, 1);
                  v262 = v260 + 1;
                  if (v261)
                  {
                    goto LABEL_131;
                  }

                  v295 = v257;
                  *(v257 + 16) = v262;
                }

                v17 = v320;
                sub_581C();
                v230 = *(v263 - 256);
                v227 = v38;
                v222 = v294;
                if (v229 < 0)
                {
                  goto LABEL_91;
                }
              }
            }

LABEL_110:
            sub_519C(v288);

            v264 = sub_5A74();
            v266 = v265;
            v267 = v297;
            v268 = swift_isUniquelyReferenced_nonNull_native();
            *&v337 = v267;
            sub_51A4(v295, v264, v266, v268);

            sub_497C(v330, v331);
            v269 = sub_5670();
            v270(v269, v136);
            sub_572C();
            v271 = sub_5840();
            v272(v271);
            v297 = v337;
            v131 = v324;
            v134 = v333;
            goto LABEL_53;
          }
        }

        v323 = 0;
        sub_5738();
        v140 = sub_5AF4();
        v210 = sub_5BE4();
        v211 = sub_5870(v210);
        v17 = v320;
        v137 = v317;
        if (v211)
        {
          v212 = sub_59EC();
          *v212 = 0;
          _os_log_impl(&dword_0, v140, OS_LOG_TYPE_DEFAULT, "SiriInference dodML plugin tried to decode smsAutoSend record but failed - skipping", v212, 2u);
          sub_5714();
        }

        sub_497C(v330, v331);

        v213 = sub_5670();
        v214(v213, v136);
        sub_572C();
        v215 = sub_5840();
        v216(v215);
        goto LABEL_81;
      }

      v38 = sub_5C94();
      v184 = *v305;
      (*v305)(v180, v181);
      v185 = sub_58C4();
      (v184)(v185);

      if (v38)
      {
        goto LABEL_75;
      }

      sub_572C();
      v38 = v317;
      v186(v299, v317, v17);
      sub_5738();
      v187 = sub_5AF4();
      v188 = sub_5BD4();
      if (os_log_type_enabled(v187, v188))
      {
        sub_57C4();
        v189 = swift_slowAlloc();
        sub_57B8();
        v190 = swift_slowAlloc();
        *v189 = sub_5994(v190).n128_u32[0];
        v191 = sub_5A74();
        v193 = v192;
        v38 = *v313;
        sub_58DC();
        (v38)();
        v140 = sub_49D4(v191, v193, &v337);

        *(v189 + 4) = v140;
        _os_log_impl(&dword_0, v187, v188, "Record %s was not an SMS auto-send record, skipping", v189, 0xCu);
        sub_4F44(v17);
        sub_56F0();
        v134 = v317;
        sub_5714();

        sub_497C(v330, v331);

        v194 = sub_5670();
        v136 = v328;
        v195(v194, v328);
        (v38)(v134, v17);
        v137 = v134;
LABEL_81:
        sub_5810();
LABEL_82:
        sub_5744();
      }

      else
      {
        sub_497C(v330, v331);

        sub_59A8();
        v217 = sub_5840();
        (v140)(v217);
        v218 = sub_5670();
        v136 = v328;
        v219(v218, v328);
        (v140)(v38, v17);
        sub_5810();
        sub_5744();
        v137 = v38;
      }
    }
  }

  sub_58D0();

  sub_5764();
  if (!*(&v338 + 1))
  {
    sub_50FC(&v337, &qword_C470, &qword_6208);
    sub_56B4();
    sub_58E8();
LABEL_121:
    sub_428C(v38, &qword_C498, &qword_6220);
    sub_59D4();

    goto LABEL_122;
  }

  sub_5930();
  swift_dynamicCast();
  sub_56B4();
  sub_58E8();
  if (!v273 || (v335 & 1) == 0)
  {
    goto LABEL_121;
  }

  sub_405C(v38);
  v138 = sub_44C4(v274);
  if (v156)
  {

    sub_5738();
    v13 = sub_5AF4();
    v275 = sub_5BE4();
    if (sub_5870(v275))
    {
      *sub_59EC() = 0;
      sub_59B4(&dword_0, v276, v277, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
      sub_5714();
    }

    sub_428C(v38, &qword_C498, &qword_6220);
    sub_59D4();

    goto LABEL_119;
  }

LABEL_127:
  v13 = v138;
  v285 = sub_56C8();
  v286(v285);

LABEL_128:

  return v13;
}

double sub_3FF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_4F90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_50A0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_405C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_482C(&qword_C4D0, &qword_6238);
    v2 = sub_5C84();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    sub_482C(&qword_C498, &qword_6220);
    sub_482C(&qword_C448, &qword_61E0);
    swift_dynamicCast();
    v13 = sub_4F90(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      *(v2[7] + 8 * v14) = v21;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v17 = (v2[6] + 16 * v13);
      *v17 = v12;
      v17[1] = v11;
      *(v2[7] + 8 * v13) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_428C(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1[2])
  {
    sub_482C(&qword_C4D8, &qword_6240);
    v4 = sub_5C84();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  sub_5698();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (a1[6] + 16 * (v12 | (v11 << 6)));
    v15 = *v13;
    v14 = v13[1];

    sub_482C(a2, a3);
    swift_dynamicCast();
    sub_5328(&v27, v29);
    sub_5328(v29, v30);
    sub_5328(v30, &v28);
    v16 = sub_4F90(v15, v14);
    v17 = v16;
    if (v18)
    {
      v19 = (v4[6] + 16 * v16);
      *v19 = v15;
      v19[1] = v14;

      v20 = (v4[7] + 32 * v17);
      sub_4F44(v20);
      sub_5328(&v28, v20);
      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v21 = (v4[6] + 16 * v16);
      *v21 = v15;
      v21[1] = v14;
      sub_5328(&v28, (v4[7] + 32 * v16));
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v4[2] = v24;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_44C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_482C(&qword_C450, &qword_61E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_6190;
    *(inited + 32) = 0x73736572706D6F63;
    *(inited + 40) = 0xEA00000000006465;
    v4 = sub_45D4(a1);
    if (v1)
    {

      *(inited + 16) = 0;
      swift_setDeallocating();
      return sub_4874();
    }

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v4;
    *(inited + 56) = v5;
  }

  return sub_5B44();
}

uint64_t sub_45D4(uint64_t a1)
{
  v1 = objc_opt_self();
  sub_482C(&qword_C448, &qword_61E0);
  isa = sub_5B24().super.isa;
  v13 = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:&v13];

  v4 = v13;
  if (v3)
  {
    v13 = 0;
    v5 = v4;
    v6 = [v3 compressedDataUsingAlgorithm:3 error:&v13];
    if (v6)
    {
      v7 = v6;
      v8 = v13;
      v9 = [v7 base64EncodedStringWithOptions:0];
      sub_5B84();
    }

    else
    {
      v11 = v13;
      sub_5A44();

      swift_willThrow();
    }
  }

  else
  {
    v10 = v13;
    sub_5A44();

    swift_willThrow();
  }

  return sub_58C4();
}

id sub_477C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_47D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_482C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4874()
{
  sub_482C(&qword_C458, &qword_61F0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_48FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_497C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_49D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4A98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_50A0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_4F44(v11);
  return v7;
}

unint64_t sub_4A98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4B98(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_5C44();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_4B98(uint64_t a1, unint64_t a2)
{
  v3 = sub_4BE4(a1, a2);
  sub_4CFC(&off_84C8);
  return v3;
}

char *sub_4BE4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_5BB4())
  {
    result = sub_4DE0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_5C24();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_5C44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4CFC(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_4E50(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4DE0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_482C(&qword_C4E8, &qword_6250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4E50(char *result, int64_t a2, char a3, char *a4)
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
    sub_482C(&qword_C4E8, &qword_6250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_4F44(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_4F90(uint64_t a1, uint64_t a2)
{
  sub_5CB4();
  sub_5B94();
  v4 = sub_5CC4();

  return sub_5338(a1, a2, v4);
}

unint64_t sub_5008(uint64_t a1)
{
  sub_5A94();
  sub_5614(&qword_C4F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_5B54();

  return sub_5458(a1, v2);
}

uint64_t sub_50A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_50FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_482C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_515C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_51A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_4F90(a2, a3);
  sub_57F0();
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v11;
  v17 = sub_5988();
  sub_482C(v17, v18);
  if (!sub_5C54(a4 & 1, v14))
  {
    goto LABEL_5;
  }

  v19 = sub_4F90(a2, a3);
  if ((v16 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_5CA4();
    __break(1u);
    return;
  }

  v15 = v19;
LABEL_5:
  v21 = *v5;
  if (v16)
  {
    *(v21[7] + 8 * v15) = a1;
  }

  else
  {
    sub_52E0(v15, a2, a3, a1, v21);
  }
}

unint64_t sub_52E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_5328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_5C94() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_53F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_482C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5458(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_5A94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_5614(&unk_C510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = sub_5B64();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_5614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_56F0()
{
}

double sub_5764()
{
  v2 = *(v0 - 520);

  return sub_3FF8(0x73736572706D6F63, 0xEA00000000006465, v2, (v0 - 128));
}

BOOL sub_5870(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_588C(uint64_t a1@<X8>)
{
  *(a1 + 8 * v1) = *(v2 - 584);
  v4 = *(v2 - 576);
}

void sub_59B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_59D4()
{
}

uint64_t sub_59EC()
{

  return swift_slowAlloc();
}