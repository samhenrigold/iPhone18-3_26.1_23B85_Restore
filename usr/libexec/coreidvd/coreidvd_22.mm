void sub_100246894()
{
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1832);

  v3 = IdentityTarget.rawValue.getter();
  if (v3 == IdentityTarget.rawValue.getter())
  {
    v4 = *(v0 + 1688);
    v5 = swift_task_alloc();
    *(v0 + 1864) = v5;
    *v5 = v0;
    v5[1] = sub_10024969C;
    v6 = *(v0 + 1792);
    v7 = *(v0 + 1784);
    v8 = *(v0 + 1680);

    sub_10025F680(v8, v4, v7, v6);
    return;
  }

  v9 = *(v0 + 1720);
  v10 = *(v0 + 1712);
  v11 = *(v0 + 1704);
  sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
  sub_10000BD94(v11, v10);

  v12 = *(v0 + 1568) + 1;
  if (v12 == *(v0 + 1528))
  {
LABEL_6:

    v13 = *(v0 + 1496);
    v14 = *(v0 + 1448);
    v15 = *(v0 + 1360);
    v16 = *(v0 + 1352);

    sub_10000BBC4(v13, v14, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v15 + 48))(v14, 1, v16) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v17 = *(v0 + 8);
LABEL_8:

      v17();
    }

    else
    {
      v172 = *(v0 + 1504);
      v173 = *(v0 + 1440);
      v174 = *(v0 + 1376);
      v175 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v174, type metadata accessor for ActionRequest);
      sub_100269FE8(v174, v173, type metadata accessor for ActionRequest);
      v172(v173, 0, 1, v175);
      v176 = swift_task_alloc();
      *(v0 + 1880) = v176;
      *v176 = v0;
      v176[1] = sub_10024F280;
      v177 = *(v0 + 1440);
      v178 = *(v0 + 1008);
      v179 = *(v0 + 1000);

      sub_1002550B8(v177, v179, v178);
    }

    return;
  }

  v309 = (v0 + 984);
  v18 = *(v0 + 1908);
  v319 = *(v0 + 1776);
  v317 = "redential list provided";
  v19 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v12;
    *(v0 + 1908) = v18;
    *(v0 + 1560) = v319;
    v27 = *(v0 + 1520);
    if (v12 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_153;
    }

    v28 = *(v0 + 1424);
    v29 = *(v0 + 1016);
    v30 = *(v0 + 1008);
    v31 = *(v0 + 1000);
    v32 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v27 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v32 * v12, v28, type metadata accessor for ActionRequest);
    sub_10025DCD8(v28, v31, v30, v29);
    v33 = *v28;
    v34 = v28[1];

    v325._countAndFlagsBits = v33;
    v325._object = v34;
    v35 = sub_10025DC8C(v325);
    if (v35 > 4)
    {
      if (v35 <= 7)
      {
        if (v35 != 6)
        {
          if (v35 == 7)
          {
            defaultLogger()();
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.debug.getter();
            v38 = os_log_type_enabled(v36, v37);
            v39 = *(v0 + 1424);
            v40 = *(v0 + 1264);
            v41 = *(v0 + 1208);
            v42 = *(v0 + 1200);
            if (v38)
            {
              v43 = swift_slowAlloc();
              *v43 = 0;
              v44 = v37;
              v45 = v36;
              v46 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_46:
              _os_log_impl(&_mh_execute_header, v45, v44, v46, v43, 2u);
              v19 = &unk_1006BF9D0;

              goto LABEL_47;
            }

            goto LABEL_47;
          }

          v180 = *(v0 + 1424);
          v181 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v180, v181, type metadata accessor for ActionRequest);
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.debug.getter();
          v184 = os_log_type_enabled(v182, v183);
          v185 = *(v0 + 1400);
          LOBYTE(v318) = v18;
          if (!v184)
          {
            v212 = *(v0 + 1296);
            v213 = *(v0 + 1208);
            v214 = *(v0 + 1200);

            sub_100267A1C(v185, type metadata accessor for ActionRequest);
            v215 = *(v213 + 8);
            v215(v212, v214);
LABEL_119:
            v322 = v215;
            *(v0 + 1608) = v215;
            v238 = *(*(v0 + 1520) + 16);
            if (v238)
            {
              v239 = 0;
              v240 = 0;
              while (1)
              {
                v241 = *(v0 + 1520);
                if (v240 >= *(v241 + 16))
                {
                  break;
                }

                v242 = *(v0 + 1392);
                sub_100269FE8(v241 + v239 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v242, type metadata accessor for ActionRequest);
                v243 = *v242 == 0x5F4F545F444E4553 && v242[1] == 0xED0000454D4F4942;
                if (v243 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v244 = 0;
                  goto LABEL_130;
                }

                ++v240;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v239 += v32;
                if (v238 == v240)
                {
                  goto LABEL_128;
                }
              }

LABEL_167:
              __break(1u);
              goto LABEL_168;
            }

LABEL_128:
            v244 = 1;
LABEL_130:
            v245 = *(v0 + 1488);
            v246 = *(v0 + 1480);
            (*(v0 + 1504))(v245, v244, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v245, v246, &qword_10083E3E8, &unk_1006DBD00);
            v247 = Logger.logObject.getter();
            v248 = static os_log_type_t.debug.getter();
            v249 = os_log_type_enabled(v247, v248);
            v250 = *(v0 + 1480);
            if (v249)
            {
              v251 = *(v0 + 1360);
              v252 = *(v0 + 1352);
              v253 = swift_slowAlloc();
              *v253 = 67109120;
              LODWORD(v252) = (*(v251 + 48))(v250, 1, v252) != 1;
              sub_10000BE18(v250, &qword_10083E3E8, &unk_1006DBD00);
              *(v253 + 4) = v252;
              _os_log_impl(&_mh_execute_header, v247, v248, "Biome data exists to be donated? -> %{BOOL}d", v253, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v254 = v247;
            v255 = *(v0 + 1488);
            v256 = *(v0 + 1472);
            v257 = *(v0 + 1360);
            v258 = *(v0 + 1352);
            v259 = *(v0 + 1288);
            v260 = *(v0 + 1208);
            v261 = *(v0 + 1200);

            *(v0 + 1616) = (v260 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v322(v259, v261);
            sub_10000BBC4(v255, v256, &qword_10083E3E8, &unk_1006DBD00);
            v262 = *(v257 + 48);
            v263 = (v262)(v256, 1, v258);
            v264 = *(v0 + 1472);
            if (v263 == 1)
            {
              v265 = *(v0 + 1160);

              sub_10000BE18(v264, &qword_10083E3E8, &unk_1006DBD00);
              v266 = type metadata accessor for PendingActionContext(0);
              (*(*(v266 - 8) + 56))(v265, 1, 1, v266);
            }

            else
            {
              sub_10000BBC4(v264 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v264, type metadata accessor for ActionRequest);
            }

            v267 = *(v0 + 1160);
            v268 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v267);

            sub_10000BE18(v267, &unk_100840960, &qword_1006DBCB0);
            v317 = v262;
            if (*(v268 + 152) == 1)
            {
LABEL_154:
              v280 = *(v0 + 1424);
              v281 = *(v0 + 1152);
              v282 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v282;
              sub_10000BBC4(v280 + v282, v281, &unk_100840960, &qword_1006DBCB0);
              v283 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v283;
              v284 = *(v283 - 8);
              v285 = *(v284 + 48);
              *(v0 + 1632) = v285;
              *(v0 + 1640) = (v284 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v323 = v285;
              v286 = v285(v281, 1, v283);
              v287 = *(v0 + 1152);
              v311 = v282;
              v314 = v280;
              if (v286 == 1)
              {
                sub_10000BE18(v287, &unk_100840960, &qword_1006DBCB0);
                v316 = 0;
                v288 = 0;
              }

              else
              {
                v288 = *(v287 + 72);
                v316 = *(v287 + 64);
                v289 = *(v0 + 1152);

                sub_100267A1C(v289, type metadata accessor for PendingActionContext);
              }

              v315 = v288;
              *(v0 + 1648) = v288;
              v290 = *(v0 + 1488);
              v291 = *(v0 + 1456);
              v292 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v290, v291, &qword_10083E3E8, &unk_1006DBD00);
              v293 = (v317)(v291, 1, v292);
              v294 = *(v0 + 1456);
              if (v293 == 1)
              {
                v295 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v284 + 56))(v295, 1, 1, v283);
                v296 = v318;
                v298 = v311;
                v297 = v314;
              }

              else
              {
                v299 = *(v0 + 1144);
                sub_10000BBC4(v294 + *(*(v0 + 1352) + 20), v299, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v294, type metadata accessor for ActionRequest);
                v296 = v318;
                v298 = v311;
                v297 = v314;
                v323(v299, 1, v283);
              }

              v300 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v297 + v298, v300, &unk_100840960, &qword_1006DBCB0);
              v301 = v323(v300, 1, v283);
              v302 = *(v0 + 1136);
              if (v301 == 1)
              {
                sub_10000BE18(v302, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v302, type metadata accessor for PendingActionContext);
              }

              v303 = swift_task_alloc();
              *(v0 + 1656) = v303;
              *v303 = v0;
              v303[1] = sub_100239F30;
              v304 = *(v0 + 1536);
              v305 = *(v0 + 1464);
              v306 = *(v0 + 1016);
              v307 = *(v0 + 1008);
              v308 = *(v0 + 1000);

              sub_10025744C(v316, v315, v304, v308, v307, v306, v296, v305);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_154;
            }

LABEL_153:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_154;
          }

          v186 = *(v0 + 1352);
          v187 = *(v0 + 1168);
          v188 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *(v0 + 968) = v189;
          *v188 = 136315138;
          sub_10000BBC4(v185 + *(v186 + 20), v187, &unk_100840960, &qword_1006DBCB0);
          v190 = type metadata accessor for PendingActionContext(0);
          v191 = (*(*(v190 - 8) + 48))(v187, 1, v190);
          v192 = *(v0 + 1168);
          if (v191 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v231 = *(v192 + 72);

            sub_100267A1C(v192, type metadata accessor for PendingActionContext);
            if (v231)
            {
              v232 = String.debugDescription.getter();
              v234 = v233;

LABEL_118:
              v321 = *(v0 + 1296);
              v235 = *(v0 + 1208);
              v236 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v237 = sub_100141FE4(v232, v234, (v0 + 968));

              *(v188 + 4) = v237;
              _os_log_impl(&_mh_execute_header, v182, v183, "server requested an action to set state:%s", v188, 0xCu);
              sub_10000BB78(v189);

              v215 = *(v235 + 8);
              v215(v321, v236);
              goto LABEL_119;
            }
          }

          v232 = 0;
          v234 = 0xE000000000000000;
          goto LABEL_118;
        }

        v318 = v18;
        defaultLogger()();
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "display notification received", v93, 2u);
        }

        v20 = *(v0 + 1504);
        v21 = *(v0 + 1496);
        v22 = *(v0 + 1424);
        v23 = *(v0 + 1352);
        v24 = *(v0 + 1344);
        v25 = *(v0 + 1208);
        v26 = *(v0 + 1200);

        (*(v25 + 8))(v24, v26);
        sub_10000BE18(v21, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v22, v21, type metadata accessor for ActionRequest);
        v20(v21, 0, 1, v23);
        goto LABEL_13;
      }

      if (v35 != 8)
      {
        if (v35 != 10)
        {
          defaultLogger()();
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            *v202 = 0;
            _os_log_impl(&_mh_execute_header, v200, v201, "server requested an action to store token", v202, 2u);
          }

          v203 = *(v0 + 1424);
          v204 = *(v0 + 1352);
          v205 = *(v0 + 1248);
          v206 = *(v0 + 1208);
          v207 = *(v0 + 1200);
          v208 = *(v0 + 1104);

          v209 = *(v206 + 8);
          *(v0 + 1672) = v209;
          v209(v205, v207);
          sub_10000BBC4(v203 + *(v204 + 20), v208, &unk_100840960, &qword_1006DBCB0);
          v210 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v210 - 8) + 48))(v208, 1, v210) == 1)
          {
            v211 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v211, &unk_100840960, &qword_1006DBCB0);
LABEL_147:
            v275 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v275, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v17 = *(v0 + 8);
            goto LABEL_8;
          }

          v216 = *(v0 + 1104);
          v217 = (v216 + *(v210 + 128));
          v218 = *v217;
          *(v0 + 1680) = *v217;
          v219 = v217[1];
          *(v0 + 1688) = v219;
          v221 = v217[2];
          v220 = v217[3];
          *(v0 + 1696) = v220;
          sub_1000AB7D8(v218, v219, v221, v220);
          sub_100267A1C(v216, type metadata accessor for PendingActionContext);
          if (!v219)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_147;
          }

          v222 = *(v0 + 1072);
          v223 = *(v0 + 1064);
          v224 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v225 = String.data(using:allowLossyConversion:)();
          v227 = v226;
          *(v0 + 1704) = v225;
          *(v0 + 1712) = v226;
          (*(v223 + 8))(v222, v224);
          if (v227 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_147;
          }

          if (qword_100832C20 == -1)
          {
LABEL_149:
            v276 = *(qword_100882228 + 16);
            *(v0 + 1720) = v276;
            v277 = v276;
            v278 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v278;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v279 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v279;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v277 retrievePIITokenFromSyncableKeyStoreForIdentifier:v278 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_168:
          swift_once();
          goto LABEL_149;
        }

        defaultLogger()();
        v36 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        v63 = os_log_type_enabled(v36, v62);
        v39 = *(v0 + 1424);
        v40 = *(v0 + 1232);
        v41 = *(v0 + 1208);
        v42 = *(v0 + 1200);
        if (!v63)
        {
          goto LABEL_47;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = v62;
        v45 = v36;
        v46 = "INVALID ACTION REQUEST";
        goto LABEL_46;
      }

      v94 = *(v0 + 1424);
      v95 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v94, v95, type metadata accessor for ActionRequest);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.info.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 1384);
      v318 = v18;
      if (!v98)
      {
        v120 = *(v0 + 1256);
        v121 = *(v0 + 1208);
        v122 = *(v0 + 1200);

        sub_100267A1C(v99, type metadata accessor for ActionRequest);
        (*(v121 + 8))(v120, v122);
LABEL_78:
        v153 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v153, &unk_100840960, &qword_1006DBCB0);
        v154 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
        {
          v155 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v155, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_15;
        }

        v156 = *(v0 + 1112);
        v157 = (v156 + *(v154 + 112));
        v159 = *v157;
        v158 = v157[1];

        sub_100267A1C(v156, type metadata accessor for PendingActionContext);
        if (!v158)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v18 = v318;
          goto LABEL_15;
        }

        v160 = *(v0 + 1088);
        v161 = *(v0 + 1080);
        v162 = v19;
        v163 = *(v0 + 1024);
        v164 = type metadata accessor for TaskPriority();
        v165 = *(v164 - 8);
        (*(v165 + 56))(v160, 1, 1, v164);
        v166 = swift_allocObject();
        v166[2] = 0;
        v166[3] = 0;
        v166[4] = v163;
        v166[5] = v159;
        v166[6] = v158;
        sub_10000BBC4(v160, v161, &unk_100845860, v162);
        LODWORD(v160) = (*(v165 + 48))(v161, 1, v164);

        v167 = *(v0 + 1080);
        if (v160 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v162);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v165 + 8))(v167, v164);
        }

        v19 = v162;
        v168 = v166[2];
        swift_unknownObjectRetain();

        v18 = v318;
        if (v168)
        {
          swift_getObjectType();
          v169 = dispatch thunk of Actor.unownedExecutor.getter();
          v171 = v170;
          swift_unknownObjectRelease();
        }

        else
        {
          v169 = 0;
          v171 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v162);
        if (v171 | v169)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v169;
          *(v0 + 872) = v171;
        }

        v39 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_48;
      }

      v100 = *(v0 + 1352);
      v101 = *(v0 + 1120);
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *(v0 + 960) = v103;
      *v102 = 136315138;
      sub_10000BBC4(v99 + *(v100 + 20), v101, &unk_100840960, &qword_1006DBCB0);
      v104 = type metadata accessor for PendingActionContext(0);
      v105 = (*(*(v104 - 8) + 48))(v101, 1, v104);
      v106 = *(v0 + 1120);
      if (v105 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v146 = (v106 + *(v104 + 112));
        v147 = *v146;
        v148 = v146[1];

        sub_100267A1C(v106, type metadata accessor for PendingActionContext);
        if (v148)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_77:
          v149 = *(v0 + 1256);
          v150 = *(v0 + 1208);
          v151 = *(v0 + 1200);
          v152 = sub_100141FE4(v147, v148, (v0 + 960));

          *(v102 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v96, v97, "server requested to delete the Account Key Signing Key with identifier %s", v102, 0xCu);
          sub_10000BB78(v103);

          (*(v150 + 8))(v149, v151);
          v18 = v318;
          v19 = &unk_1006BF9D0;
          goto LABEL_78;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v148 = 0xE300000000000000;
      v147 = 4999502;
      goto LABEL_77;
    }

    if (v35 <= 2)
    {
      break;
    }

    if (v35 == 3)
    {
      v64 = *(v0 + 1424);
      v65 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v64, v65, type metadata accessor for ActionRequest);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 1408);
        v69 = *(v0 + 1352);
        v70 = *(v0 + 1176);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *(v0 + 976) = v72;
        *v71 = 136315138;
        sub_10000BBC4(v68 + *(v69 + 20), v70, &unk_100840960, &qword_1006DBCB0);
        v73 = type metadata accessor for PendingActionContext(0);
        v74 = (*(*(v73 - 8) + 48))(v70, 1, v73);
        v75 = *(v0 + 1176);
        v318 = v18;
        if (v74 == 1)
        {
          sub_10000BE18(v75, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_72;
        }

        v138 = *(v75 + 56);
        v139 = *(v0 + 1176);

        sub_100267A1C(v139, type metadata accessor for PendingActionContext);
        if (v138)
        {
          v140 = String.debugDescription.getter();
          v142 = v141;
        }

        else
        {
LABEL_72:
          v140 = 0;
          v142 = 0xE000000000000000;
        }

        v310 = *(v0 + 1304);
        v313 = *(v0 + 1424);
        v143 = *(v0 + 1208);
        v144 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v145 = sub_100141FE4(v140, v142, (v0 + 976));

        *(v71 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v66, v67, "server requested an action to self heal: %s", v71, 0xCu);
        sub_10000BB78(v72);

        (*(v143 + 8))(v310, v144);
        sub_100267A1C(v313, type metadata accessor for ActionRequest);
LABEL_13:
        v18 = v318;
      }

      else
      {
        v115 = *(v0 + 1424);
        v116 = *(v0 + 1408);
        v117 = *(v0 + 1304);
        v118 = *(v0 + 1208);
        v119 = *(v0 + 1200);

        sub_100267A1C(v116, type metadata accessor for ActionRequest);
        (*(v118 + 8))(v117, v119);
        sub_100267A1C(v115, type metadata accessor for ActionRequest);
      }

      v19 = &unk_1006BF9D0;
      goto LABEL_15;
    }

    v318 = v18;
    defaultLogger()();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "display message received", v78, 2u);
    }

    v79 = *(v0 + 1424);
    v80 = *(v0 + 1352);
    v81 = *(v0 + 1336);
    v82 = *(v0 + 1208);
    v83 = *(v0 + 1200);
    v84 = *(v0 + 1008);
    v85 = *(v0 + 1000);

    v86 = *(v82 + 8);
    v86(v81, v83);
    sub_1002556F0(v79 + *(v80 + 20), v85, v84);
    type metadata accessor for IdentityProofingDataContext();
    v87 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v88 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v88 + 54);
    sub_100031B5C(&v88[4], v0 + 408);
    os_unfair_lock_unlock(v88 + 54);
    if (v319)
    {
      return;
    }

    sub_100031918(v0 + 408);
    v123 = sub_10054C274();
    v312 = v86;
    v124 = *(v0 + 1896);
    v125 = *(v0 + 1424);
    v126 = *(v0 + 1416);
    v320 = *(v0 + 1016);
    v127 = *(v0 + 1008);
    v128 = *(v0 + 1000);

    v129 = [v123 newBackgroundContext];
    *(v87 + 16) = v129;
    [v129 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v125, v126, type metadata accessor for ActionRequest);
    v130 = swift_allocObject();
    v130[2] = v87;
    v130[3] = v128;
    v130[4] = v127;
    v130[5] = v320;
    sub_100269F80(v126, v130 + ((v124 + 48) & ~v124), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v131 = *(v87 + 16);
    v132 = swift_allocObject();
    v132[2] = sub_100267BF8;
    v132[3] = v130;
    v132[4] = v309;
    v133 = swift_allocObject();
    *(v133 + 16) = sub_100267C5C;
    *(v133 + 24) = v132;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v133;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v134 = _Block_copy((v0 + 800));

    [v131 performBlockAndWait:v134];
    _Block_release(v134);
    LOBYTE(v134) = swift_isEscapingClosureAtFileLocation();

    if (v134)
    {
      __break(1u);
      goto LABEL_167;
    }

    v18 = v318;
    v19 = &unk_1006BF9D0;
    if (*v309)
    {
      swift_willThrow();

      v135 = *(v0 + 1328);
      v136 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v312(v135, v136);
    }

    else
    {
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v319 = 0;
LABEL_15:
    v12 = *(v0 + 1568) + 1;
    if (v12 == *(v0 + 1528))
    {
      goto LABEL_6;
    }
  }

  if (!v35)
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    v90 = os_log_type_enabled(v36, v89);
    v39 = *(v0 + 1424);
    v40 = *(v0 + 1272);
    v41 = *(v0 + 1208);
    v42 = *(v0 + 1200);
    if (v90)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = v89;
      v45 = v36;
      v46 = "server requested an action to wait for update";
      goto LABEL_46;
    }

LABEL_47:

    (*(v41 + 8))(v40, v42);
LABEL_48:
    sub_100267A1C(v39, type metadata accessor for ActionRequest);
    goto LABEL_15;
  }

  if (v35 != 2)
  {
    defaultLogger()();
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&_mh_execute_header, v193, v194, "Starting Provisioning flow", v195, 2u);
    }

    v196 = *(v0 + 1312);
    v197 = *(v0 + 1208);
    v198 = *(v0 + 1200);
    v199 = *(v0 + 992);

    (*(v197 + 8))(v196, v198);
    if (*(v199 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v269 = *(v0 + 1424);
    v270 = *(*(v0 + 1352) + 20);
    v271 = swift_task_alloc();
    *(v0 + 1592) = v271;
    *v271 = v0;
    v271[1] = sub_10023710C;
    v272 = *(v0 + 1016);
    v273 = *(v0 + 1008);
    v274 = *(v0 + 1000);

    sub_100229698(v269 + v270, v274, v273, v272, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  defaultLogger()();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "server requested an action to execute new workflow", v49, 2u);
  }

  v50 = *(v0 + 1424);
  v51 = *(v0 + 1352);
  v52 = *(v0 + 1320);
  v53 = *(v0 + 1208);
  v54 = *(v0 + 1200);
  v55 = *(v0 + 1192);

  (*(v53 + 8))(v52, v54);
  v56 = *(v51 + 20);
  sub_10000BBC4(v50 + v56, v55, &unk_100840960, &qword_1006DBCB0);
  v57 = type metadata accessor for PendingActionContext(0);
  v58 = *(*(v57 - 8) + 48);
  v59 = v58(v55, 1, v57);
  v60 = *(v0 + 1192);
  if (v59 == 1)
  {
    sub_10000BE18(v60, &unk_100840960, &qword_1006DBCB0);
    v61 = 3;
  }

  else
  {
    v61 = *(v60 + *(v57 + 76));
    sub_100267A1C(v60, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v61;
  v107 = *(v0 + 1184);
  sub_10000BBC4(v50 + v56, v107, &unk_100840960, &qword_1006DBCB0);
  v108 = v58(v107, 1, v57);
  v109 = *(v0 + 1184);
  v110 = *(v0 + 1096);
  if (v108 == 1)
  {
    sub_10000BE18(v109, &unk_100840960, &qword_1006DBCB0);
    v111 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v111 - 8) + 56))(v110, 1, 1, v111);
  }

  else
  {
    v112 = *(v57 + 72);
    v113 = *(v0 + 1184);
    sub_10000BBC4(v109 + v112, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v113, type metadata accessor for PendingActionContext);
  }

  v114 = *(v0 + 1096);
  sub_1002593E4(v114);
  sub_10000BE18(v114, &qword_100835968, &qword_1006DBC90);
  if (v61 <= 1)
  {
    v19 = &unk_1006BF9D0;
    v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v137)
    {
      goto LABEL_112;
    }

    goto LABEL_69;
  }

  v19 = &unk_1006BF9D0;
  if (v61 == 3)
  {
LABEL_69:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v18 = *(v0 + 1909);
    goto LABEL_15;
  }

LABEL_112:
  v228 = swift_task_alloc();
  *(v0 + 1576) = v228;
  *v228 = v0;
  v228[1] = sub_1002342A8;
  v229 = *(v0 + 1008);
  v230 = *(v0 + 1000);

  sub_100259898(v50 + v56, v230, v229);
}

uint64_t sub_10024969C()
{
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v2 = sub_10024C4E8;
  }

  else
  {

    v2 = sub_1002497D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1002497D0()
{
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1424);

  sub_10000BD94(v2, v1);
  sub_100267A1C(v3, type metadata accessor for ActionRequest);
  v4 = *(v0 + 1568) + 1;
  if (v4 == *(v0 + 1528))
  {
LABEL_2:

    v5 = *(v0 + 1496);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1360);
    v8 = *(v0 + 1352);

    sub_10000BBC4(v5, v6, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v7 + 48))(v6, 1, v8) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v9 = *(v0 + 8);
LABEL_4:

      v9();
    }

    else
    {
      v164 = *(v0 + 1504);
      v165 = *(v0 + 1440);
      v166 = *(v0 + 1376);
      v167 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v166, type metadata accessor for ActionRequest);
      sub_100269FE8(v166, v165, type metadata accessor for ActionRequest);
      v164(v165, 0, 1, v167);
      v168 = swift_task_alloc();
      *(v0 + 1880) = v168;
      *v168 = v0;
      v168[1] = sub_10024F280;
      v169 = *(v0 + 1440);
      v170 = *(v0 + 1008);
      v171 = *(v0 + 1000);

      sub_1002550B8(v169, v171, v170);
    }

    return;
  }

  v301 = (v0 + 984);
  v10 = *(v0 + 1908);
  v311 = *(v0 + 1872);
  v309 = "redential list provided";
  v11 = &unk_1006BF9D0;
  while (1)
  {
    *(v0 + 1568) = v4;
    *(v0 + 1908) = v10;
    *(v0 + 1560) = v311;
    v19 = *(v0 + 1520);
    if (v4 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v20 = *(v0 + 1424);
    v21 = *(v0 + 1016);
    v22 = *(v0 + 1008);
    v23 = *(v0 + 1000);
    v24 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v19 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v24 * v4, v20, type metadata accessor for ActionRequest);
    sub_10025DCD8(v20, v23, v22, v21);
    v25 = *v20;
    v26 = v20[1];

    v317._countAndFlagsBits = v25;
    v317._object = v26;
    v27 = sub_10025DC8C(v317);
    if (v27 > 4)
    {
      if (v27 <= 7)
      {
        if (v27 != 6)
        {
          if (v27 == 7)
          {
            defaultLogger()();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.debug.getter();
            v30 = os_log_type_enabled(v28, v29);
            v31 = *(v0 + 1424);
            v32 = *(v0 + 1264);
            v33 = *(v0 + 1208);
            v34 = *(v0 + 1200);
            if (v30)
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              v36 = v29;
              v37 = v28;
              v38 = "server requested an action to send liveness assessments to biome. The data has been saved.";
LABEL_42:
              _os_log_impl(&_mh_execute_header, v37, v36, v38, v35, 2u);
              v11 = &unk_1006BF9D0;

              goto LABEL_43;
            }

            goto LABEL_43;
          }

          v172 = *(v0 + 1424);
          v173 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v172, v173, type metadata accessor for ActionRequest);
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.debug.getter();
          v176 = os_log_type_enabled(v174, v175);
          v177 = *(v0 + 1400);
          LOBYTE(v310) = v10;
          if (!v176)
          {
            v204 = *(v0 + 1296);
            v205 = *(v0 + 1208);
            v206 = *(v0 + 1200);

            sub_100267A1C(v177, type metadata accessor for ActionRequest);
            v207 = *(v205 + 8);
            v207(v204, v206);
LABEL_115:
            v314 = v207;
            *(v0 + 1608) = v207;
            v230 = *(*(v0 + 1520) + 16);
            if (v230)
            {
              v231 = 0;
              v232 = 0;
              while (1)
              {
                v233 = *(v0 + 1520);
                if (v232 >= *(v233 + 16))
                {
                  break;
                }

                v234 = *(v0 + 1392);
                sub_100269FE8(v233 + v231 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v234, type metadata accessor for ActionRequest);
                v235 = *v234 == 0x5F4F545F444E4553 && v234[1] == 0xED0000454D4F4942;
                if (v235 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v236 = 0;
                  goto LABEL_126;
                }

                ++v232;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v231 += v24;
                if (v230 == v232)
                {
                  goto LABEL_124;
                }
              }

LABEL_163:
              __break(1u);
              goto LABEL_164;
            }

LABEL_124:
            v236 = 1;
LABEL_126:
            v237 = *(v0 + 1488);
            v238 = *(v0 + 1480);
            (*(v0 + 1504))(v237, v236, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v237, v238, &qword_10083E3E8, &unk_1006DBD00);
            v239 = Logger.logObject.getter();
            v240 = static os_log_type_t.debug.getter();
            v241 = os_log_type_enabled(v239, v240);
            v242 = *(v0 + 1480);
            if (v241)
            {
              v243 = *(v0 + 1360);
              v244 = *(v0 + 1352);
              v245 = swift_slowAlloc();
              *v245 = 67109120;
              LODWORD(v244) = (*(v243 + 48))(v242, 1, v244) != 1;
              sub_10000BE18(v242, &qword_10083E3E8, &unk_1006DBD00);
              *(v245 + 4) = v244;
              _os_log_impl(&_mh_execute_header, v239, v240, "Biome data exists to be donated? -> %{BOOL}d", v245, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v246 = v239;
            v247 = *(v0 + 1488);
            v248 = *(v0 + 1472);
            v249 = *(v0 + 1360);
            v250 = *(v0 + 1352);
            v251 = *(v0 + 1288);
            v252 = *(v0 + 1208);
            v253 = *(v0 + 1200);

            *(v0 + 1616) = (v252 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v314(v251, v253);
            sub_10000BBC4(v247, v248, &qword_10083E3E8, &unk_1006DBD00);
            v254 = *(v249 + 48);
            v255 = (v254)(v248, 1, v250);
            v256 = *(v0 + 1472);
            if (v255 == 1)
            {
              v257 = *(v0 + 1160);

              sub_10000BE18(v256, &qword_10083E3E8, &unk_1006DBD00);
              v258 = type metadata accessor for PendingActionContext(0);
              (*(*(v258 - 8) + 56))(v257, 1, 1, v258);
            }

            else
            {
              sub_10000BBC4(v256 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v256, type metadata accessor for ActionRequest);
            }

            v259 = *(v0 + 1160);
            v260 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v259);

            sub_10000BE18(v259, &unk_100840960, &qword_1006DBCB0);
            v309 = v254;
            if (*(v260 + 152) == 1)
            {
LABEL_150:
              v272 = *(v0 + 1424);
              v273 = *(v0 + 1152);
              v274 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v274;
              sub_10000BBC4(v272 + v274, v273, &unk_100840960, &qword_1006DBCB0);
              v275 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v275;
              v276 = *(v275 - 8);
              v277 = *(v276 + 48);
              *(v0 + 1632) = v277;
              *(v0 + 1640) = (v276 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v315 = v277;
              v278 = v277(v273, 1, v275);
              v279 = *(v0 + 1152);
              v303 = v274;
              v306 = v272;
              if (v278 == 1)
              {
                sub_10000BE18(v279, &unk_100840960, &qword_1006DBCB0);
                v308 = 0;
                v280 = 0;
              }

              else
              {
                v280 = *(v279 + 72);
                v308 = *(v279 + 64);
                v281 = *(v0 + 1152);

                sub_100267A1C(v281, type metadata accessor for PendingActionContext);
              }

              v307 = v280;
              *(v0 + 1648) = v280;
              v282 = *(v0 + 1488);
              v283 = *(v0 + 1456);
              v284 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v282, v283, &qword_10083E3E8, &unk_1006DBD00);
              v285 = (v309)(v283, 1, v284);
              v286 = *(v0 + 1456);
              if (v285 == 1)
              {
                v287 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v276 + 56))(v287, 1, 1, v275);
                v288 = v310;
                v290 = v303;
                v289 = v306;
              }

              else
              {
                v291 = *(v0 + 1144);
                sub_10000BBC4(v286 + *(*(v0 + 1352) + 20), v291, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v286, type metadata accessor for ActionRequest);
                v288 = v310;
                v290 = v303;
                v289 = v306;
                v315(v291, 1, v275);
              }

              v292 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v289 + v290, v292, &unk_100840960, &qword_1006DBCB0);
              v293 = v315(v292, 1, v275);
              v294 = *(v0 + 1136);
              if (v293 == 1)
              {
                sub_10000BE18(v294, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v294, type metadata accessor for PendingActionContext);
              }

              v295 = swift_task_alloc();
              *(v0 + 1656) = v295;
              *v295 = v0;
              v295[1] = sub_100239F30;
              v296 = *(v0 + 1536);
              v297 = *(v0 + 1464);
              v298 = *(v0 + 1016);
              v299 = *(v0 + 1008);
              v300 = *(v0 + 1000);

              sub_10025744C(v308, v307, v296, v300, v299, v298, v288, v297);
              return;
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_150;
            }

LABEL_149:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_150;
          }

          v178 = *(v0 + 1352);
          v179 = *(v0 + 1168);
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          *(v0 + 968) = v181;
          *v180 = 136315138;
          sub_10000BBC4(v177 + *(v178 + 20), v179, &unk_100840960, &qword_1006DBCB0);
          v182 = type metadata accessor for PendingActionContext(0);
          v183 = (*(*(v182 - 8) + 48))(v179, 1, v182);
          v184 = *(v0 + 1168);
          if (v183 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v223 = *(v184 + 72);

            sub_100267A1C(v184, type metadata accessor for PendingActionContext);
            if (v223)
            {
              v224 = String.debugDescription.getter();
              v226 = v225;

LABEL_114:
              v313 = *(v0 + 1296);
              v227 = *(v0 + 1208);
              v228 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v229 = sub_100141FE4(v224, v226, (v0 + 968));

              *(v180 + 4) = v229;
              _os_log_impl(&_mh_execute_header, v174, v175, "server requested an action to set state:%s", v180, 0xCu);
              sub_10000BB78(v181);

              v207 = *(v227 + 8);
              v207(v313, v228);
              goto LABEL_115;
            }
          }

          v224 = 0;
          v226 = 0xE000000000000000;
          goto LABEL_114;
        }

        v310 = v10;
        defaultLogger()();
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "display notification received", v85, 2u);
        }

        v12 = *(v0 + 1504);
        v13 = *(v0 + 1496);
        v14 = *(v0 + 1424);
        v15 = *(v0 + 1352);
        v16 = *(v0 + 1344);
        v17 = *(v0 + 1208);
        v18 = *(v0 + 1200);

        (*(v17 + 8))(v16, v18);
        sub_10000BE18(v13, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v14, v13, type metadata accessor for ActionRequest);
        v12(v13, 0, 1, v15);
        goto LABEL_9;
      }

      if (v27 != 8)
      {
        if (v27 != 10)
        {
          defaultLogger()();
          v192 = Logger.logObject.getter();
          v193 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            *v194 = 0;
            _os_log_impl(&_mh_execute_header, v192, v193, "server requested an action to store token", v194, 2u);
          }

          v195 = *(v0 + 1424);
          v196 = *(v0 + 1352);
          v197 = *(v0 + 1248);
          v198 = *(v0 + 1208);
          v199 = *(v0 + 1200);
          v200 = *(v0 + 1104);

          v201 = *(v198 + 8);
          *(v0 + 1672) = v201;
          v201(v197, v199);
          sub_10000BBC4(v195 + *(v196 + 20), v200, &unk_100840960, &qword_1006DBCB0);
          v202 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v202 - 8) + 48))(v200, 1, v202) == 1)
          {
            v203 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v203, &unk_100840960, &qword_1006DBCB0);
LABEL_143:
            v267 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v267, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v9 = *(v0 + 8);
            goto LABEL_4;
          }

          v208 = *(v0 + 1104);
          v209 = (v208 + *(v202 + 128));
          v210 = *v209;
          *(v0 + 1680) = *v209;
          v211 = v209[1];
          *(v0 + 1688) = v211;
          v213 = v209[2];
          v212 = v209[3];
          *(v0 + 1696) = v212;
          sub_1000AB7D8(v210, v211, v213, v212);
          sub_100267A1C(v208, type metadata accessor for PendingActionContext);
          if (!v211)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_143;
          }

          v214 = *(v0 + 1072);
          v215 = *(v0 + 1064);
          v216 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v217 = String.data(using:allowLossyConversion:)();
          v219 = v218;
          *(v0 + 1704) = v217;
          *(v0 + 1712) = v218;
          (*(v215 + 8))(v214, v216);
          if (v219 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_143;
          }

          if (qword_100832C20 == -1)
          {
LABEL_145:
            v268 = *(qword_100882228 + 16);
            *(v0 + 1720) = v268;
            v269 = v268;
            v270 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v270;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v271 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v271;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v269 retrievePIITokenFromSyncableKeyStoreForIdentifier:v270 completion:v0 + 608];

            _swift_continuation_await(v0 + 16);
            return;
          }

LABEL_164:
          swift_once();
          goto LABEL_145;
        }

        defaultLogger()();
        v28 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        v55 = os_log_type_enabled(v28, v54);
        v31 = *(v0 + 1424);
        v32 = *(v0 + 1232);
        v33 = *(v0 + 1208);
        v34 = *(v0 + 1200);
        if (!v55)
        {
          goto LABEL_43;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = v54;
        v37 = v28;
        v38 = "INVALID ACTION REQUEST";
        goto LABEL_42;
      }

      v86 = *(v0 + 1424);
      v87 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v86, v87, type metadata accessor for ActionRequest);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();
      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 1384);
      v310 = v10;
      if (!v90)
      {
        v112 = *(v0 + 1256);
        v113 = *(v0 + 1208);
        v114 = *(v0 + 1200);

        sub_100267A1C(v91, type metadata accessor for ActionRequest);
        (*(v113 + 8))(v112, v114);
LABEL_74:
        v145 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v145, &unk_100840960, &qword_1006DBCB0);
        v146 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
        {
          v147 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v147, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_11;
        }

        v148 = *(v0 + 1112);
        v149 = (v148 + *(v146 + 112));
        v151 = *v149;
        v150 = v149[1];

        sub_100267A1C(v148, type metadata accessor for PendingActionContext);
        if (!v150)
        {
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          v10 = v310;
          goto LABEL_11;
        }

        v152 = *(v0 + 1088);
        v153 = *(v0 + 1080);
        v154 = v11;
        v155 = *(v0 + 1024);
        v156 = type metadata accessor for TaskPriority();
        v157 = *(v156 - 8);
        (*(v157 + 56))(v152, 1, 1, v156);
        v158 = swift_allocObject();
        v158[2] = 0;
        v158[3] = 0;
        v158[4] = v155;
        v158[5] = v151;
        v158[6] = v150;
        sub_10000BBC4(v152, v153, &unk_100845860, v154);
        LODWORD(v152) = (*(v157 + 48))(v153, 1, v156);

        v159 = *(v0 + 1080);
        if (v152 == 1)
        {
          sub_10000BE18(*(v0 + 1080), &unk_100845860, v154);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v157 + 8))(v159, v156);
        }

        v11 = v154;
        v160 = v158[2];
        swift_unknownObjectRetain();

        v10 = v310;
        if (v160)
        {
          swift_getObjectType();
          v161 = dispatch thunk of Actor.unownedExecutor.getter();
          v163 = v162;
          swift_unknownObjectRelease();
        }

        else
        {
          v161 = 0;
          v163 = 0;
        }

        sub_10000BE18(*(v0 + 1088), &unk_100845860, v154);
        if (v163 | v161)
        {
          *(v0 + 848) = 0;
          *(v0 + 856) = 0;
          *(v0 + 864) = v161;
          *(v0 + 872) = v163;
        }

        v31 = *(v0 + 1424);
        swift_task_create();

        goto LABEL_44;
      }

      v92 = *(v0 + 1352);
      v93 = *(v0 + 1120);
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *(v0 + 960) = v95;
      *v94 = 136315138;
      sub_10000BBC4(v91 + *(v92 + 20), v93, &unk_100840960, &qword_1006DBCB0);
      v96 = type metadata accessor for PendingActionContext(0);
      v97 = (*(*(v96 - 8) + 48))(v93, 1, v96);
      v98 = *(v0 + 1120);
      if (v97 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v138 = (v98 + *(v96 + 112));
        v139 = *v138;
        v140 = v138[1];

        sub_100267A1C(v98, type metadata accessor for PendingActionContext);
        if (v140)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v141 = *(v0 + 1256);
          v142 = *(v0 + 1208);
          v143 = *(v0 + 1200);
          v144 = sub_100141FE4(v139, v140, (v0 + 960));

          *(v94 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v88, v89, "server requested to delete the Account Key Signing Key with identifier %s", v94, 0xCu);
          sub_10000BB78(v95);

          (*(v142 + 8))(v141, v143);
          v10 = v310;
          v11 = &unk_1006BF9D0;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v140 = 0xE300000000000000;
      v139 = 4999502;
      goto LABEL_73;
    }

    if (v27 <= 2)
    {
      break;
    }

    if (v27 == 3)
    {
      v56 = *(v0 + 1424);
      v57 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v56, v57, type metadata accessor for ActionRequest);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v0 + 1408);
        v61 = *(v0 + 1352);
        v62 = *(v0 + 1176);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *(v0 + 976) = v64;
        *v63 = 136315138;
        sub_10000BBC4(v60 + *(v61 + 20), v62, &unk_100840960, &qword_1006DBCB0);
        v65 = type metadata accessor for PendingActionContext(0);
        v66 = (*(*(v65 - 8) + 48))(v62, 1, v65);
        v67 = *(v0 + 1176);
        v310 = v10;
        if (v66 == 1)
        {
          sub_10000BE18(v67, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_68;
        }

        v130 = *(v67 + 56);
        v131 = *(v0 + 1176);

        sub_100267A1C(v131, type metadata accessor for PendingActionContext);
        if (v130)
        {
          v132 = String.debugDescription.getter();
          v134 = v133;
        }

        else
        {
LABEL_68:
          v132 = 0;
          v134 = 0xE000000000000000;
        }

        v302 = *(v0 + 1304);
        v305 = *(v0 + 1424);
        v135 = *(v0 + 1208);
        v136 = *(v0 + 1200);
        sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
        v137 = sub_100141FE4(v132, v134, (v0 + 976));

        *(v63 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v58, v59, "server requested an action to self heal: %s", v63, 0xCu);
        sub_10000BB78(v64);

        (*(v135 + 8))(v302, v136);
        sub_100267A1C(v305, type metadata accessor for ActionRequest);
LABEL_9:
        v10 = v310;
      }

      else
      {
        v107 = *(v0 + 1424);
        v108 = *(v0 + 1408);
        v109 = *(v0 + 1304);
        v110 = *(v0 + 1208);
        v111 = *(v0 + 1200);

        sub_100267A1C(v108, type metadata accessor for ActionRequest);
        (*(v110 + 8))(v109, v111);
        sub_100267A1C(v107, type metadata accessor for ActionRequest);
      }

      v11 = &unk_1006BF9D0;
      goto LABEL_11;
    }

    v310 = v10;
    defaultLogger()();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "display message received", v70, 2u);
    }

    v71 = *(v0 + 1424);
    v72 = *(v0 + 1352);
    v73 = *(v0 + 1336);
    v74 = *(v0 + 1208);
    v75 = *(v0 + 1200);
    v76 = *(v0 + 1008);
    v77 = *(v0 + 1000);

    v78 = *(v74 + 8);
    v78(v73, v75);
    sub_1002556F0(v71 + *(v72 + 20), v77, v76);
    type metadata accessor for IdentityProofingDataContext();
    v79 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v80 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v80 + 54);
    sub_100031B5C(&v80[4], v0 + 408);
    os_unfair_lock_unlock(v80 + 54);
    if (v311)
    {
      return;
    }

    sub_100031918(v0 + 408);
    v115 = sub_10054C274();
    v304 = v78;
    v116 = *(v0 + 1896);
    v117 = *(v0 + 1424);
    v118 = *(v0 + 1416);
    v312 = *(v0 + 1016);
    v119 = *(v0 + 1008);
    v120 = *(v0 + 1000);

    v121 = [v115 newBackgroundContext];
    *(v79 + 16) = v121;
    [v121 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v117, v118, type metadata accessor for ActionRequest);
    v122 = swift_allocObject();
    v122[2] = v79;
    v122[3] = v120;
    v122[4] = v119;
    v122[5] = v312;
    sub_100269F80(v118, v122 + ((v116 + 48) & ~v116), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v123 = *(v79 + 16);
    v124 = swift_allocObject();
    v124[2] = sub_100267BF8;
    v124[3] = v122;
    v124[4] = v301;
    v125 = swift_allocObject();
    *(v125 + 16) = sub_100267C5C;
    *(v125 + 24) = v124;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v125;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v126 = _Block_copy((v0 + 800));

    [v123 performBlockAndWait:v126];
    _Block_release(v126);
    LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

    if (v126)
    {
      __break(1u);
      goto LABEL_163;
    }

    if (*v301)
    {
      swift_willThrow();

      v10 = v310;
      v11 = &unk_1006BF9D0;
      v127 = *(v0 + 1328);
      v128 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v304(v127, v128);
    }

    else
    {

      v10 = v310;
      v11 = &unk_1006BF9D0;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v311 = 0;
LABEL_11:
    v4 = *(v0 + 1568) + 1;
    if (v4 == *(v0 + 1528))
    {
      goto LABEL_2;
    }
  }

  if (!v27)
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    v82 = os_log_type_enabled(v28, v81);
    v31 = *(v0 + 1424);
    v32 = *(v0 + 1272);
    v33 = *(v0 + 1208);
    v34 = *(v0 + 1200);
    if (v82)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = v81;
      v37 = v28;
      v38 = "server requested an action to wait for update";
      goto LABEL_42;
    }

LABEL_43:

    (*(v33 + 8))(v32, v34);
LABEL_44:
    sub_100267A1C(v31, type metadata accessor for ActionRequest);
    goto LABEL_11;
  }

  if (v27 != 2)
  {
    defaultLogger()();
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 0;
      _os_log_impl(&_mh_execute_header, v185, v186, "Starting Provisioning flow", v187, 2u);
    }

    v188 = *(v0 + 1312);
    v189 = *(v0 + 1208);
    v190 = *(v0 + 1200);
    v191 = *(v0 + 992);

    (*(v189 + 8))(v188, v190);
    if (*(v191 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v261 = *(v0 + 1424);
    v262 = *(*(v0 + 1352) + 20);
    v263 = swift_task_alloc();
    *(v0 + 1592) = v263;
    *v263 = v0;
    v263[1] = sub_10023710C;
    v264 = *(v0 + 1016);
    v265 = *(v0 + 1008);
    v266 = *(v0 + 1000);

    sub_100229698(v261 + v262, v266, v265, v264, 0x61746E6567616DLL, 0xE700000000000000);
    return;
  }

  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "server requested an action to execute new workflow", v41, 2u);
  }

  v42 = *(v0 + 1424);
  v43 = *(v0 + 1352);
  v44 = *(v0 + 1320);
  v45 = *(v0 + 1208);
  v46 = *(v0 + 1200);
  v47 = *(v0 + 1192);

  (*(v45 + 8))(v44, v46);
  v48 = *(v43 + 20);
  sub_10000BBC4(v42 + v48, v47, &unk_100840960, &qword_1006DBCB0);
  v49 = type metadata accessor for PendingActionContext(0);
  v50 = *(*(v49 - 8) + 48);
  v51 = v50(v47, 1, v49);
  v52 = *(v0 + 1192);
  if (v51 == 1)
  {
    sub_10000BE18(v52, &unk_100840960, &qword_1006DBCB0);
    v53 = 3;
  }

  else
  {
    v53 = *(v52 + *(v49 + 76));
    sub_100267A1C(v52, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v53;
  v99 = *(v0 + 1184);
  sub_10000BBC4(v42 + v48, v99, &unk_100840960, &qword_1006DBCB0);
  v100 = v50(v99, 1, v49);
  v101 = *(v0 + 1184);
  v102 = *(v0 + 1096);
  if (v100 == 1)
  {
    sub_10000BE18(v101, &unk_100840960, &qword_1006DBCB0);
    v103 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v103 - 8) + 56))(v102, 1, 1, v103);
  }

  else
  {
    v104 = *(v49 + 72);
    v105 = *(v0 + 1184);
    sub_10000BBC4(v101 + v104, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v105, type metadata accessor for PendingActionContext);
  }

  v106 = *(v0 + 1096);
  sub_1002593E4(v106);
  sub_10000BE18(v106, &qword_100835968, &qword_1006DBC90);
  if (v53 <= 1)
  {
    v11 = &unk_1006BF9D0;
    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v129)
    {
      goto LABEL_108;
    }

    goto LABEL_65;
  }

  v11 = &unk_1006BF9D0;
  if (v53 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v10 = *(v0 + 1909);
    goto LABEL_11;
  }

LABEL_108:
  v220 = swift_task_alloc();
  *(v0 + 1576) = v220;
  *v220 = v0;
  v220[1] = sub_1002342A8;
  v221 = *(v0 + 1008);
  v222 = *(v0 + 1000);

  sub_100259898(v42 + v48, v222, v221);
}

uint64_t sub_10024C4E8()
{

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1720);
  v318 = *(v0 + 1712);
  v5 = *(v0 + 1704);
  v322 = *(v0 + 1672);
  v6 = *(v0 + 1424);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1200);
  if (v3)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to store pii token in keychain", v9, 2u);
  }

  sub_10000BD94(v5, v318);
  v322(v7, v8);
  sub_100267A1C(v6, type metadata accessor for ActionRequest);
  v10 = *(v0 + 1568) + 1;
  if (v10 == *(v0 + 1528))
  {
LABEL_4:

    v11 = *(v0 + 1496);
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1360);
    v14 = *(v0 + 1352);

    sub_10000BBC4(v11, v12, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v13 + 48))(v12, 1, v14) == 1)
    {
      sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v0 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v15 = *(v0 + 8);
LABEL_6:

      return v15();
    }

    else
    {
      v171 = *(v0 + 1504);
      v172 = *(v0 + 1440);
      v173 = *(v0 + 1376);
      v174 = *(v0 + 1352);
      sub_100269F80(*(v0 + 1448), v173, type metadata accessor for ActionRequest);
      sub_100269FE8(v173, v172, type metadata accessor for ActionRequest);
      v171(v172, 0, 1, v174);
      v175 = swift_task_alloc();
      *(v0 + 1880) = v175;
      *v175 = v0;
      v175[1] = sub_10024F280;
      v176 = *(v0 + 1440);
      v177 = *(v0 + 1008);
      v178 = *(v0 + 1000);

      return sub_1002550B8(v176, v178, v177);
    }
  }

  v308 = (v0 + 984);
  v17 = *(v0 + 1908);
  while (1)
  {
    *(v0 + 1568) = v10;
    *(v0 + 1908) = v17;
    *(v0 + 1560) = 0;
    v25 = *(v0 + 1520);
    if (v10 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v26 = *(v0 + 1424);
    v27 = *(v0 + 1016);
    v28 = *(v0 + 1008);
    v29 = *(v0 + 1000);
    v30 = *(*(v0 + 1360) + 72);
    sub_100269FE8(v25 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + v30 * v10, v26, type metadata accessor for ActionRequest);
    sub_10025DCD8(v26, v29, v28, v27);
    v31 = *v26;
    v32 = v26[1];

    v324._countAndFlagsBits = v31;
    v324._object = v32;
    v33 = sub_10025DC8C(v324);
    if (v33 > 4)
    {
      if (v33 <= 7)
      {
        if (v33 != 6)
        {
          if (v33 == 7)
          {
            defaultLogger()();
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.debug.getter();
            v36 = os_log_type_enabled(v34, v35);
            v37 = *(v0 + 1424);
            v38 = *(v0 + 1264);
            v39 = *(v0 + 1208);
            v40 = *(v0 + 1200);
            if (v36)
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              v42 = v35;
              v43 = v34;
              v44 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          v179 = *(v0 + 1424);
          v180 = *(v0 + 1400);
          defaultLogger()();
          sub_100269FE8(v179, v180, type metadata accessor for ActionRequest);
          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.debug.getter();
          v183 = os_log_type_enabled(v181, v182);
          v184 = *(v0 + 1400);
          LOBYTE(v322) = v17;
          if (!v183)
          {
            v211 = *(v0 + 1296);
            v212 = *(v0 + 1208);
            v213 = *(v0 + 1200);

            sub_100267A1C(v184, type metadata accessor for ActionRequest);
            v214 = *(v212 + 8);
            v214(v211, v213);
LABEL_114:
            v320 = v214;
            *(v0 + 1608) = v214;
            v237 = *(*(v0 + 1520) + 16);
            if (v237)
            {
              v238 = 0;
              v239 = 0;
              while (1)
              {
                v240 = *(v0 + 1520);
                if (v239 >= *(v240 + 16))
                {
                  break;
                }

                v241 = *(v0 + 1392);
                sub_100269FE8(v240 + v238 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)), v241, type metadata accessor for ActionRequest);
                v242 = *v241 == 0x5F4F545F444E4553 && v241[1] == 0xED0000454D4F4942;
                if (v242 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v0 + 1392), *(v0 + 1488), type metadata accessor for ActionRequest);
                  v243 = 0;
                  goto LABEL_125;
                }

                ++v239;
                sub_100267A1C(*(v0 + 1392), type metadata accessor for ActionRequest);
                v238 += v30;
                if (v237 == v239)
                {
                  goto LABEL_123;
                }
              }

LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

LABEL_123:
            v243 = 1;
LABEL_125:
            v244 = *(v0 + 1488);
            v245 = *(v0 + 1480);
            (*(v0 + 1504))(v244, v243, 1, *(v0 + 1352));
            defaultLogger()();
            sub_10000BBC4(v244, v245, &qword_10083E3E8, &unk_1006DBD00);
            v246 = Logger.logObject.getter();
            v247 = static os_log_type_t.debug.getter();
            v248 = os_log_type_enabled(v246, v247);
            v249 = *(v0 + 1480);
            if (v248)
            {
              v250 = *(v0 + 1360);
              v251 = *(v0 + 1352);
              v252 = swift_slowAlloc();
              *v252 = 67109120;
              LODWORD(v251) = (*(v250 + 48))(v249, 1, v251) != 1;
              sub_10000BE18(v249, &qword_10083E3E8, &unk_1006DBD00);
              *(v252 + 4) = v251;
              _os_log_impl(&_mh_execute_header, v246, v247, "Biome data exists to be donated? -> %{BOOL}d", v252, 8u);
            }

            else
            {
              sub_10000BE18(*(v0 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v253 = v246;
            v254 = *(v0 + 1488);
            v255 = *(v0 + 1472);
            v256 = *(v0 + 1360);
            v257 = *(v0 + 1352);
            v258 = *(v0 + 1288);
            v259 = *(v0 + 1208);
            v260 = *(v0 + 1200);

            *(v0 + 1616) = (v259 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v320(v258, v260);
            sub_10000BBC4(v254, v255, &qword_10083E3E8, &unk_1006DBD00);
            v261 = *(v256 + 48);
            v262 = v261(v255, 1, v257);
            v263 = *(v0 + 1472);
            if (v262 == 1)
            {
              v264 = *(v0 + 1160);

              sub_10000BE18(v263, &qword_10083E3E8, &unk_1006DBD00);
              v265 = type metadata accessor for PendingActionContext(0);
              (*(*(v265 - 8) + 56))(v264, 1, 1, v265);
            }

            else
            {
              sub_10000BBC4(v263 + *(*(v0 + 1352) + 20), *(v0 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v263, type metadata accessor for ActionRequest);
            }

            v266 = *(v0 + 1160);
            v267 = *(v0 + 992);
            sub_100300724(*(v0 + 1000), *(v0 + 1008), v266);

            sub_10000BE18(v266, &unk_100840960, &qword_1006DBCB0);
            v317 = v261;
            if (*(v267 + 152) == 1)
            {
LABEL_149:
              v279 = *(v0 + 1424);
              v280 = *(v0 + 1152);
              v281 = *(*(v0 + 1352) + 20);
              *(v0 + 1904) = v281;
              sub_10000BBC4(v279 + v281, v280, &unk_100840960, &qword_1006DBCB0);
              v282 = type metadata accessor for PendingActionContext(0);
              *(v0 + 1624) = v282;
              v283 = *(v282 - 8);
              v284 = *(v283 + 48);
              *(v0 + 1632) = v284;
              *(v0 + 1640) = (v283 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v321 = v284;
              v285 = v284(v280, 1, v282);
              v286 = *(v0 + 1152);
              v309 = v281;
              v312 = v279;
              if (v285 == 1)
              {
                sub_10000BE18(v286, &unk_100840960, &qword_1006DBCB0);
                v316 = 0;
                v287 = 0;
              }

              else
              {
                v287 = *(v286 + 72);
                v316 = *(v286 + 64);
                v288 = *(v0 + 1152);

                sub_100267A1C(v288, type metadata accessor for PendingActionContext);
              }

              v315 = v287;
              *(v0 + 1648) = v287;
              v289 = *(v0 + 1488);
              v290 = *(v0 + 1456);
              v291 = *(v0 + 1352);
              sub_10000BBC4(*(v0 + 1496), *(v0 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v289, v290, &qword_10083E3E8, &unk_1006DBD00);
              v292 = v317(v290, 1, v291);
              v293 = *(v0 + 1456);
              if (v292 == 1)
              {
                v294 = *(v0 + 1144);
                sub_10000BE18(*(v0 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v283 + 56))(v294, 1, 1, v282);
                v295 = v322;
                v297 = v309;
                v296 = v312;
              }

              else
              {
                v298 = *(v0 + 1144);
                sub_10000BBC4(v293 + *(*(v0 + 1352) + 20), v298, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v293, type metadata accessor for ActionRequest);
                v295 = v322;
                v297 = v309;
                v296 = v312;
                v321(v298, 1, v282);
              }

              v299 = *(v0 + 1136);
              sub_10000BE18(*(v0 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v296 + v297, v299, &unk_100840960, &qword_1006DBCB0);
              v300 = v321(v299, 1, v282);
              v301 = *(v0 + 1136);
              if (v300 == 1)
              {
                sub_10000BE18(v301, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v301, type metadata accessor for PendingActionContext);
              }

              v302 = swift_task_alloc();
              *(v0 + 1656) = v302;
              *v302 = v0;
              v302[1] = sub_100239F30;
              v303 = *(v0 + 1536);
              v304 = *(v0 + 1464);
              v305 = *(v0 + 1016);
              v306 = *(v0 + 1008);
              v307 = *(v0 + 1000);

              return sub_10025744C(v316, v315, v303, v307, v306, v305, v295, v304);
            }

            if (*(*(v0 + 992) + 136) > 1u)
            {
              if (*(*(v0 + 992) + 136) == 2)
              {
              }

              goto LABEL_149;
            }

LABEL_148:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_149;
          }

          v185 = *(v0 + 1352);
          v186 = *(v0 + 1168);
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          *(v0 + 968) = v188;
          *v187 = 136315138;
          sub_10000BBC4(v184 + *(v185 + 20), v186, &unk_100840960, &qword_1006DBCB0);
          v189 = type metadata accessor for PendingActionContext(0);
          v190 = (*(*(v189 - 8) + 48))(v186, 1, v189);
          v191 = *(v0 + 1168);
          if (v190 == 1)
          {
            sub_10000BE18(*(v0 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v230 = *(v191 + 72);

            sub_100267A1C(v191, type metadata accessor for PendingActionContext);
            if (v230)
            {
              v231 = String.debugDescription.getter();
              v233 = v232;

LABEL_113:
              v319 = *(v0 + 1296);
              v234 = *(v0 + 1208);
              v235 = *(v0 + 1200);
              sub_100267A1C(*(v0 + 1400), type metadata accessor for ActionRequest);
              v236 = sub_100141FE4(v231, v233, (v0 + 968));

              *(v187 + 4) = v236;
              _os_log_impl(&_mh_execute_header, v181, v182, "server requested an action to set state:%s", v187, 0xCu);
              sub_10000BB78(v188);

              v214 = *(v234 + 8);
              v214(v319, v235);
              goto LABEL_114;
            }
          }

          v231 = 0;
          v233 = 0xE000000000000000;
          goto LABEL_113;
        }

        LODWORD(v322) = v17;
        defaultLogger()();
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "display notification received", v91, 2u);
        }

        v18 = *(v0 + 1504);
        v19 = *(v0 + 1496);
        v20 = *(v0 + 1424);
        v21 = *(v0 + 1352);
        v22 = *(v0 + 1344);
        v23 = *(v0 + 1208);
        v24 = *(v0 + 1200);

        (*(v23 + 8))(v22, v24);
        sub_10000BE18(v19, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v20, v19, type metadata accessor for ActionRequest);
        v18(v19, 0, 1, v21);
        goto LABEL_11;
      }

      if (v33 != 8)
      {
        if (v33 != 10)
        {
          defaultLogger()();
          v199 = Logger.logObject.getter();
          v200 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            *v201 = 0;
            _os_log_impl(&_mh_execute_header, v199, v200, "server requested an action to store token", v201, 2u);
          }

          v202 = *(v0 + 1424);
          v203 = *(v0 + 1352);
          v204 = *(v0 + 1248);
          v205 = *(v0 + 1208);
          v206 = *(v0 + 1200);
          v207 = *(v0 + 1104);

          v208 = *(v205 + 8);
          *(v0 + 1672) = v208;
          v208(v204, v206);
          sub_10000BBC4(v202 + *(v203 + 20), v207, &unk_100840960, &qword_1006DBCB0);
          v209 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v209 - 8) + 48))(v207, 1, v209) == 1)
          {
            v210 = *(v0 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v210, &unk_100840960, &qword_1006DBCB0);
LABEL_142:
            v274 = *(v0 + 1424);
            (*(*(v0 + 1040) + 104))(*(v0 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v0 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v274, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v0 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v15 = *(v0 + 8);
            goto LABEL_6;
          }

          v215 = *(v0 + 1104);
          v216 = (v215 + *(v209 + 128));
          v217 = *v216;
          *(v0 + 1680) = *v216;
          v218 = v216[1];
          *(v0 + 1688) = v218;
          v220 = v216[2];
          v219 = v216[3];
          *(v0 + 1696) = v219;
          sub_1000AB7D8(v217, v218, v220, v219);
          sub_100267A1C(v215, type metadata accessor for PendingActionContext);
          if (!v218)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_142;
          }

          v221 = *(v0 + 1072);
          v222 = *(v0 + 1064);
          v223 = *(v0 + 1056);
          static String.Encoding.utf8.getter();
          v224 = String.data(using:allowLossyConversion:)();
          v226 = v225;
          *(v0 + 1704) = v224;
          *(v0 + 1712) = v225;
          (*(v222 + 8))(v221, v223);
          if (v226 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_142;
          }

          if (qword_100832C20 == -1)
          {
LABEL_144:
            v275 = *(qword_100882228 + 16);
            *(v0 + 1720) = v275;
            v276 = v275;
            v277 = String._bridgeToObjectiveC()();
            *(v0 + 1728) = v277;
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 880;
            *(v0 + 24) = sub_10023D0AC;
            v278 = swift_continuation_init();
            *(v0 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v0 + 640) = v278;
            *(v0 + 608) = _NSConcreteStackBlock;
            *(v0 + 616) = 1107296256;
            *(v0 + 624) = sub_100672A4C;
            *(v0 + 632) = &unk_10080B0F0;
            [v276 retrievePIITokenFromSyncableKeyStoreForIdentifier:v277 completion:v0 + 608];

            return _swift_continuation_await(v0 + 16);
          }

LABEL_163:
          swift_once();
          goto LABEL_144;
        }

        defaultLogger()();
        v34 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        v61 = os_log_type_enabled(v34, v60);
        v37 = *(v0 + 1424);
        v38 = *(v0 + 1232);
        v39 = *(v0 + 1208);
        v40 = *(v0 + 1200);
        if (v61)
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          v42 = v60;
          v43 = v34;
          v44 = "INVALID ACTION REQUEST";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v92 = *(v0 + 1424);
      v93 = *(v0 + 1384);
      defaultLogger()();
      sub_100269FE8(v92, v93, type metadata accessor for ActionRequest);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v0 + 1384);
      LODWORD(v322) = v17;
      if (!v96)
      {
        v118 = *(v0 + 1256);
        v119 = *(v0 + 1208);
        v120 = *(v0 + 1200);

        sub_100267A1C(v97, type metadata accessor for ActionRequest);
        (*(v119 + 8))(v118, v120);
LABEL_74:
        v153 = *(v0 + 1112);
        sub_10000BBC4(*(v0 + 1424) + *(*(v0 + 1352) + 20), v153, &unk_100840960, &qword_1006DBCB0);
        v154 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
        {
          v155 = *(v0 + 1112);
          sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v155, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_12;
        }

        v156 = *(v0 + 1112);
        v157 = (v156 + *(v154 + 112));
        v159 = *v157;
        v158 = v157[1];

        sub_100267A1C(v156, type metadata accessor for PendingActionContext);
        if (v158)
        {
          v160 = *(v0 + 1088);
          v161 = *(v0 + 1080);
          v162 = *(v0 + 1024);
          v163 = type metadata accessor for TaskPriority();
          v164 = *(v163 - 8);
          (*(v164 + 56))(v160, 1, 1, v163);
          v165 = swift_allocObject();
          v165[2] = 0;
          v165[3] = 0;
          v165[4] = v162;
          v165[5] = v159;
          v165[6] = v158;
          sub_10000BBC4(v160, v161, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v160) = (*(v164 + 48))(v161, 1, v163);

          v166 = *(v0 + 1080);
          if (v160 == 1)
          {
            sub_10000BE18(*(v0 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v164 + 8))(v166, v163);
          }

          v167 = v165[2];
          swift_unknownObjectRetain();

          v17 = v322;
          if (v167)
          {
            swift_getObjectType();
            v168 = dispatch thunk of Actor.unownedExecutor.getter();
            v170 = v169;
            swift_unknownObjectRelease();
          }

          else
          {
            v168 = 0;
            v170 = 0;
          }

          sub_10000BE18(*(v0 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v170 | v168)
          {
            *(v0 + 848) = 0;
            *(v0 + 856) = 0;
            *(v0 + 864) = v168;
            *(v0 + 872) = v170;
          }

          v37 = *(v0 + 1424);
          swift_task_create();

          goto LABEL_44;
        }

        sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_11;
      }

      v98 = *(v0 + 1352);
      v99 = *(v0 + 1120);
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *(v0 + 960) = v101;
      *v100 = 136315138;
      sub_10000BBC4(v97 + *(v98 + 20), v99, &unk_100840960, &qword_1006DBCB0);
      v102 = type metadata accessor for PendingActionContext(0);
      v103 = (*(*(v102 - 8) + 48))(v99, 1, v102);
      v104 = *(v0 + 1120);
      if (v103 == 1)
      {
        sub_10000BE18(*(v0 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v146 = (v104 + *(v102 + 112));
        v147 = *v146;
        v148 = v146[1];

        sub_100267A1C(v104, type metadata accessor for PendingActionContext);
        if (v148)
        {
          sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v149 = *(v0 + 1256);
          v150 = *(v0 + 1208);
          v151 = *(v0 + 1200);
          v152 = sub_100141FE4(v147, v148, (v0 + 960));

          *(v100 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v94, v95, "server requested to delete the Account Key Signing Key with identifier %s", v100, 0xCu);
          sub_10000BB78(v101);

          (*(v150 + 8))(v149, v151);
          v17 = v322;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v0 + 1384), type metadata accessor for ActionRequest);

      v148 = 0xE300000000000000;
      v147 = 4999502;
      goto LABEL_73;
    }

    if (v33 <= 2)
    {
      break;
    }

    if (v33 == 3)
    {
      v62 = *(v0 + 1424);
      v63 = *(v0 + 1408);
      defaultLogger()();
      sub_100269FE8(v62, v63, type metadata accessor for ActionRequest);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v64, v65))
      {
        v113 = *(v0 + 1424);
        v114 = *(v0 + 1408);
        v115 = *(v0 + 1304);
        v116 = *(v0 + 1208);
        v117 = *(v0 + 1200);

        sub_100267A1C(v114, type metadata accessor for ActionRequest);
        (*(v116 + 8))(v115, v117);
        sub_100267A1C(v113, type metadata accessor for ActionRequest);
        goto LABEL_12;
      }

      v66 = *(v0 + 1408);
      v67 = *(v0 + 1352);
      v68 = *(v0 + 1176);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *(v0 + 976) = v70;
      *v69 = 136315138;
      sub_10000BBC4(v66 + *(v67 + 20), v68, &unk_100840960, &qword_1006DBCB0);
      v71 = type metadata accessor for PendingActionContext(0);
      v72 = (*(*(v71 - 8) + 48))(v68, 1, v71);
      v73 = *(v0 + 1176);
      LODWORD(v322) = v17;
      if (v72 == 1)
      {
        sub_10000BE18(v73, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_68;
      }

      v138 = *(v73 + 56);
      v139 = *(v0 + 1176);

      sub_100267A1C(v139, type metadata accessor for PendingActionContext);
      if (v138)
      {
        v140 = String.debugDescription.getter();
        v142 = v141;
      }

      else
      {
LABEL_68:
        v140 = 0;
        v142 = 0xE000000000000000;
      }

      v311 = *(v0 + 1304);
      v314 = *(v0 + 1424);
      v143 = *(v0 + 1208);
      v144 = *(v0 + 1200);
      sub_100267A1C(*(v0 + 1408), type metadata accessor for ActionRequest);
      v145 = sub_100141FE4(v140, v142, (v0 + 976));

      *(v69 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v64, v65, "server requested an action to self heal: %s", v69, 0xCu);
      sub_10000BB78(v70);

      (*(v143 + 8))(v311, v144);
      sub_100267A1C(v314, type metadata accessor for ActionRequest);
LABEL_11:
      v17 = v322;
      goto LABEL_12;
    }

    LODWORD(v322) = v17;
    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "display message received", v76, 2u);
    }

    v77 = *(v0 + 1424);
    v78 = *(v0 + 1352);
    v79 = *(v0 + 1336);
    v80 = *(v0 + 1208);
    v81 = *(v0 + 1200);
    v82 = *(v0 + 1008);
    v83 = *(v0 + 1000);

    v84 = *(v80 + 8);
    v84(v79, v81);
    sub_1002556F0(v77 + *(v78 + 20), v83, v82);
    type metadata accessor for IdentityProofingDataContext();
    v85 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v86 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v86 + 54);
    sub_100031B5C(&v86[4], v0 + 408);
    os_unfair_lock_unlock(v86 + 54);

    sub_100031918(v0 + 408);
    v317 = 0;
    v121 = sub_10054C274();
    v122 = *(v0 + 1896);
    v123 = *(v0 + 1424);
    v124 = *(v0 + 1416);
    v310 = v84;
    v313 = *(v0 + 1016);
    v125 = *(v0 + 1008);
    v126 = *(v0 + 1000);

    v127 = [v121 newBackgroundContext];
    *(v85 + 16) = v127;
    [v127 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v123, v124, type metadata accessor for ActionRequest);
    v128 = swift_allocObject();
    v128[2] = v85;
    v128[3] = v126;
    v128[4] = v125;
    v128[5] = v313;
    sub_100269F80(v124, v128 + ((v122 + 48) & ~v122), type metadata accessor for ActionRequest);
    *(v0 + 984) = 0;
    v129 = *(v85 + 16);
    v130 = swift_allocObject();
    v130[2] = sub_100267BF8;
    v130[3] = v128;
    v130[4] = v308;
    v131 = swift_allocObject();
    *(v131 + 16) = sub_100267C5C;
    *(v131 + 24) = v130;
    *(v0 + 832) = sub_10026CBB8;
    *(v0 + 840) = v131;
    *(v0 + 800) = _NSConcreteStackBlock;
    *(v0 + 808) = 1107296256;
    *(v0 + 816) = sub_10057E264;
    *(v0 + 824) = &unk_10080B258;
    v132 = _Block_copy((v0 + 800));

    [v129 performBlockAndWait:v132];
    _Block_release(v132);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_162;
    }

    v134 = *v308;
    if (*v308)
    {
      swift_willThrow();
      v317 = v134;

      v17 = v322;
      v135 = *(v0 + 1328);
      v136 = *(v0 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v310(v135, v136);
    }

    else
    {

      v17 = v322;
    }

    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
LABEL_12:
    v10 = *(v0 + 1568) + 1;
    if (v10 == *(v0 + 1528))
    {
      goto LABEL_4;
    }
  }

  if (!v33)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    v88 = os_log_type_enabled(v34, v87);
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1208);
    v40 = *(v0 + 1200);
    if (v88)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = v87;
      v43 = v34;
      v44 = "server requested an action to wait for update";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v43, v42, v44, v41, 2u);
    }

LABEL_43:

    (*(v39 + 8))(v38, v40);
LABEL_44:
    sub_100267A1C(v37, type metadata accessor for ActionRequest);
    goto LABEL_12;
  }

  if (v33 != 2)
  {
    defaultLogger()();
    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&_mh_execute_header, v192, v193, "Starting Provisioning flow", v194, 2u);
    }

    v195 = *(v0 + 1312);
    v196 = *(v0 + 1208);
    v197 = *(v0 + 1200);
    v198 = *(v0 + 992);

    (*(v196 + 8))(v195, v197);
    if (*(v198 + 152) != 1 && (*(*(v0 + 992) + 136) <= 1u || *(*(v0 + 992) + 136) == 2))
    {
    }

    v268 = *(v0 + 1424);
    v269 = *(*(v0 + 1352) + 20);
    v270 = swift_task_alloc();
    *(v0 + 1592) = v270;
    *v270 = v0;
    v270[1] = sub_10023710C;
    v271 = *(v0 + 1016);
    v272 = *(v0 + 1008);
    v273 = *(v0 + 1000);

    return sub_100229698(v268 + v269, v273, v272, v271, 0x61746E6567616DLL, 0xE700000000000000);
  }

  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "server requested an action to execute new workflow", v47, 2u);
  }

  v48 = *(v0 + 1424);
  v49 = *(v0 + 1352);
  v50 = *(v0 + 1320);
  v51 = *(v0 + 1208);
  v52 = *(v0 + 1200);
  v53 = *(v0 + 1192);

  (*(v51 + 8))(v50, v52);
  v54 = *(v49 + 20);
  sub_10000BBC4(v48 + v54, v53, &unk_100840960, &qword_1006DBCB0);
  v55 = type metadata accessor for PendingActionContext(0);
  v56 = *(*(v55 - 8) + 48);
  v57 = v56(v53, 1, v55);
  v58 = *(v0 + 1192);
  if (v57 == 1)
  {
    sub_10000BE18(v58, &unk_100840960, &qword_1006DBCB0);
    v59 = 3;
  }

  else
  {
    v59 = *(v58 + *(v55 + 76));
    sub_100267A1C(v58, type metadata accessor for PendingActionContext);
  }

  *(v0 + 1909) = v59;
  v105 = *(v0 + 1184);
  sub_10000BBC4(v48 + v54, v105, &unk_100840960, &qword_1006DBCB0);
  v106 = v56(v105, 1, v55);
  v107 = *(v0 + 1184);
  v108 = *(v0 + 1096);
  if (v106 == 1)
  {
    sub_10000BE18(v107, &unk_100840960, &qword_1006DBCB0);
    v109 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
  }

  else
  {
    v110 = *(v55 + 72);
    v111 = *(v0 + 1184);
    sub_10000BBC4(v107 + v110, *(v0 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v111, type metadata accessor for PendingActionContext);
  }

  v112 = *(v0 + 1096);
  sub_1002593E4(v112);
  sub_10000BE18(v112, &qword_100835968, &qword_1006DBC90);
  if (v59 <= 1)
  {
    v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v137)
    {
      goto LABEL_107;
    }

    goto LABEL_65;
  }

  if (v59 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v0 + 1424), type metadata accessor for ActionRequest);
    v17 = *(v0 + 1909);
    goto LABEL_12;
  }

LABEL_107:
  v227 = swift_task_alloc();
  *(v0 + 1576) = v227;
  *v227 = v0;
  v227[1] = sub_1002342A8;
  v228 = *(v0 + 1008);
  v229 = *(v0 + 1000);

  return sub_100259898(v48 + v54, v229, v228);
}

uint64_t sub_10024F280()
{
  v2 = *v1;
  *(*v1 + 1888) = v0;

  sub_10000BE18(*(v2 + 1440), &qword_10083E3E8, &unk_1006DBD00);
  if (v0)
  {
    v3 = sub_1002537D0;
  }

  else
  {
    v3 = sub_10024F3C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024F3C4(__n128 a1)
{
  sub_100267A1C(v1[172], type metadata accessor for ActionRequest);
  sub_10000BE18(v1[187], &qword_10083E3E8, &unk_1006DBD00);

  v2 = v1[1];

  return v2();
}

uint64_t sub_10024F720(__n128 a1)
{
  sub_100267A1C(v1[178], type metadata accessor for ActionRequest);
  sub_10000BE18(v1[187], &qword_10083E3E8, &unk_1006DBD00);

  v2 = v1[1];

  return v2();
}

uint64_t sub_10024FA84(__n128 a1)
{
  sub_100267A1C(v1[178], type metadata accessor for ActionRequest);
  sub_10000BE18(v1[187], &qword_10083E3E8, &unk_1006DBD00);

  v2 = v1[1];

  return v2();
}

uint64_t sub_10024FDE8()
{
  v1 = v0[178];
  sub_10000BE18(v0[186], &qword_10083E3E8, &unk_1006DBD00);
  sub_100267A1C(v1, type metadata accessor for ActionRequest);
  sub_10000BE18(v0[187], &qword_10083E3E8, &unk_1006DBD00);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100250168(uint64_t a1)
{
  v2 = *(v1 + 1728);
  swift_willThrow();

  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Retrieve Data from syncable key store failed: %@ This is not a fatal error.", v5, 0xCu);
    sub_10000BE18(v6, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v1 + 1672))(*(v1 + 1216), *(v1 + 1200));
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_100031B5C(&v8[4], v1 + 208);
  v9 = *(v1 + 1016);
  v10 = *(v1 + 1008);
  v11 = *(v1 + 1000);
  os_unfair_lock_unlock(v8 + 54);
  *(v1 + 1744) = *(v1 + 264);

  sub_100031918(v1 + 208);
  v12 = swift_allocObject();
  *(v1 + 1752) = v12;
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v9;
  v13 = swift_allocObject();
  *(v1 + 1760) = v13;
  *(v13 + 16) = sub_100267AA8;
  *(v13 + 24) = v12;

  v14 = swift_task_alloc();
  *(v1 + 1768) = v14;
  v15 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v14 = v1;
  v14[1] = sub_10023D3CC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 896, sub_100267AC8, v13, v15);
}

uint64_t sub_100250498(uint64_t a1)
{
  v2 = v1[227];
  v3 = v1[226];
  v4 = v1[225];
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  v5 = v1[228];
  v12 = v1[215];
  v13 = v1[213];
  v14 = v1[214];
  v15 = v1[178];
  v6 = v1[131];
  v7 = v1[130];
  v8 = v1[129];
  _StringGuts.grow(_:)(29);
  v1[114] = 0;
  v1[115] = 0xE000000000000000;
  v9._object = 0x8000000100707AF0;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v9);
  v1[119] = v5;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v7 + 104))(v6, enum case for DIPError.Code.failedToStorePIIToken(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BD94(v13, v14);

  sub_100267A1C(v15, type metadata accessor for ActionRequest);
  sub_10000BE18(v1[187], &qword_10083E3E8, &unk_1006DBD00);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1002509E4(uint64_t a1)
{
  v2 = *(v1 + 1848);
  v3 = *(v1 + 1840);
  v4 = *(v1 + 1832);
  swift_willThrow();

  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update PII Token: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = *(v1 + 1712);
  v11 = *(v1 + 1704);
  v12 = *(v1 + 1672);
  v13 = *(v1 + 1424);
  v14 = *(v1 + 1224);
  v15 = *(v1 + 1200);

  sub_10000BD94(v11, v10);

  v12(v14, v15);
  sub_100267A1C(v13, type metadata accessor for ActionRequest);
  v16 = *(v1 + 1568) + 1;
  if (v16 == *(v1 + 1528))
  {
LABEL_4:

    v17 = *(v1 + 1496);
    v18 = *(v1 + 1448);
    v19 = *(v1 + 1360);
    v20 = *(v1 + 1352);

    sub_10000BBC4(v17, v18, &qword_10083E3E8, &unk_1006DBD00);
    if ((*(v19 + 48))(v18, 1, v20) == 1)
    {
      sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);
      sub_10000BE18(*(v1 + 1448), &qword_10083E3E8, &unk_1006DBD00);

      v21 = *(v1 + 8);
LABEL_6:

      return v21();
    }

    else
    {
      v176 = *(v1 + 1504);
      v177 = *(v1 + 1440);
      v178 = *(v1 + 1376);
      v179 = *(v1 + 1352);
      sub_100269F80(*(v1 + 1448), v178, type metadata accessor for ActionRequest);
      sub_100269FE8(v178, v177, type metadata accessor for ActionRequest);
      v176(v177, 0, 1, v179);
      v180 = swift_task_alloc();
      *(v1 + 1880) = v180;
      *v180 = v1;
      v180[1] = sub_10024F280;
      v181 = *(v1 + 1440);
      v182 = *(v1 + 1008);
      v183 = *(v1 + 1000);

      return sub_1002550B8(v181, v183, v182);
    }
  }

  v313 = (v1 + 984);
  v23 = *(v1 + 1908);
  v322 = "redential list provided";
  while (1)
  {
    *(v1 + 1568) = v16;
    *(v1 + 1908) = v23;
    *(v1 + 1560) = 0;
    v31 = *(v1 + 1520);
    if (v16 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v32 = *(v1 + 1424);
    v33 = *(v1 + 1016);
    v34 = *(v1 + 1008);
    v35 = *(v1 + 1000);
    v36 = *(*(v1 + 1360) + 72);
    sub_100269FE8(v31 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)) + v36 * v16, v32, type metadata accessor for ActionRequest);
    sub_10025DCD8(v32, v35, v34, v33);
    v37 = *v32;
    v38 = v32[1];

    v328._countAndFlagsBits = v37;
    v328._object = v38;
    v39 = sub_10025DC8C(v328);
    if (v39 > 4)
    {
      if (v39 <= 7)
      {
        if (v39 != 6)
        {
          if (v39 == 7)
          {
            defaultLogger()();
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.debug.getter();
            v42 = os_log_type_enabled(v40, v41);
            v43 = *(v1 + 1424);
            v44 = *(v1 + 1264);
            v45 = *(v1 + 1208);
            v46 = *(v1 + 1200);
            if (v42)
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              v48 = v41;
              v49 = v40;
              v50 = "server requested an action to send liveness assessments to biome. The data has been saved.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          v184 = *(v1 + 1424);
          v185 = *(v1 + 1400);
          defaultLogger()();
          sub_100269FE8(v184, v185, type metadata accessor for ActionRequest);
          v186 = Logger.logObject.getter();
          v187 = static os_log_type_t.debug.getter();
          v188 = os_log_type_enabled(v186, v187);
          v189 = *(v1 + 1400);
          LOBYTE(v326) = v23;
          if (!v188)
          {
            v216 = *(v1 + 1296);
            v217 = *(v1 + 1208);
            v218 = *(v1 + 1200);

            sub_100267A1C(v189, type metadata accessor for ActionRequest);
            v219 = *(v217 + 8);
            v219(v216, v218);
LABEL_114:
            v324 = v219;
            *(v1 + 1608) = v219;
            v242 = *(*(v1 + 1520) + 16);
            if (v242)
            {
              v243 = 0;
              v244 = 0;
              while (1)
              {
                v245 = *(v1 + 1520);
                if (v244 >= *(v245 + 16))
                {
                  break;
                }

                v246 = *(v1 + 1392);
                sub_100269FE8(v245 + v243 + ((*(v1 + 1896) + 32) & ~*(v1 + 1896)), v246, type metadata accessor for ActionRequest);
                v247 = *v246 == 0x5F4F545F444E4553 && v246[1] == 0xED0000454D4F4942;
                if (v247 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  sub_100269F80(*(v1 + 1392), *(v1 + 1488), type metadata accessor for ActionRequest);
                  v248 = 0;
                  goto LABEL_125;
                }

                ++v244;
                sub_100267A1C(*(v1 + 1392), type metadata accessor for ActionRequest);
                v243 += v36;
                if (v242 == v244)
                {
                  goto LABEL_123;
                }
              }

LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

LABEL_123:
            v248 = 1;
LABEL_125:
            v249 = *(v1 + 1488);
            v250 = *(v1 + 1480);
            (*(v1 + 1504))(v249, v248, 1, *(v1 + 1352));
            defaultLogger()();
            sub_10000BBC4(v249, v250, &qword_10083E3E8, &unk_1006DBD00);
            v251 = Logger.logObject.getter();
            v252 = static os_log_type_t.debug.getter();
            v253 = os_log_type_enabled(v251, v252);
            v254 = *(v1 + 1480);
            if (v253)
            {
              v255 = *(v1 + 1360);
              v256 = *(v1 + 1352);
              v257 = swift_slowAlloc();
              *v257 = 67109120;
              LODWORD(v256) = (*(v255 + 48))(v254, 1, v256) != 1;
              sub_10000BE18(v254, &qword_10083E3E8, &unk_1006DBD00);
              *(v257 + 4) = v256;
              _os_log_impl(&_mh_execute_header, v251, v252, "Biome data exists to be donated? -> %{BOOL}d", v257, 8u);
            }

            else
            {
              sub_10000BE18(*(v1 + 1480), &qword_10083E3E8, &unk_1006DBD00);
            }

            v258 = v251;
            v259 = *(v1 + 1488);
            v260 = *(v1 + 1472);
            v261 = *(v1 + 1360);
            v262 = *(v1 + 1352);
            v263 = *(v1 + 1288);
            v264 = *(v1 + 1208);
            v265 = *(v1 + 1200);

            *(v1 + 1616) = (v264 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v324(v263, v265);
            sub_10000BBC4(v259, v260, &qword_10083E3E8, &unk_1006DBD00);
            v266 = *(v261 + 48);
            v267 = (v266)(v260, 1, v262);
            v268 = *(v1 + 1472);
            if (v267 == 1)
            {
              v269 = *(v1 + 1160);

              sub_10000BE18(v268, &qword_10083E3E8, &unk_1006DBD00);
              v270 = type metadata accessor for PendingActionContext(0);
              (*(*(v270 - 8) + 56))(v269, 1, 1, v270);
            }

            else
            {
              sub_10000BBC4(v268 + *(*(v1 + 1352) + 20), *(v1 + 1160), &unk_100840960, &qword_1006DBCB0);

              sub_100267A1C(v268, type metadata accessor for ActionRequest);
            }

            v271 = *(v1 + 1160);
            v272 = *(v1 + 992);
            sub_100300724(*(v1 + 1000), *(v1 + 1008), v271);

            sub_10000BE18(v271, &unk_100840960, &qword_1006DBCB0);
            v322 = v266;
            if (*(v272 + 152) == 1)
            {
LABEL_149:
              v284 = *(v1 + 1424);
              v285 = *(v1 + 1152);
              v286 = *(*(v1 + 1352) + 20);
              *(v1 + 1904) = v286;
              sub_10000BBC4(v284 + v286, v285, &unk_100840960, &qword_1006DBCB0);
              v287 = type metadata accessor for PendingActionContext(0);
              *(v1 + 1624) = v287;
              v288 = *(v287 - 8);
              v289 = *(v288 + 48);
              *(v1 + 1632) = v289;
              *(v1 + 1640) = (v288 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              v325 = v289;
              v290 = v289(v285, 1, v287);
              v291 = *(v1 + 1152);
              v314 = v286;
              v317 = v284;
              if (v290 == 1)
              {
                sub_10000BE18(v291, &unk_100840960, &qword_1006DBCB0);
                v321 = 0;
                v292 = 0;
              }

              else
              {
                v292 = *(v291 + 72);
                v321 = *(v291 + 64);
                v293 = *(v1 + 1152);

                sub_100267A1C(v293, type metadata accessor for PendingActionContext);
              }

              v320 = v292;
              *(v1 + 1648) = v292;
              v294 = *(v1 + 1488);
              v295 = *(v1 + 1456);
              v296 = *(v1 + 1352);
              sub_10000BBC4(*(v1 + 1496), *(v1 + 1464), &qword_10083E3E8, &unk_1006DBD00);
              sub_10000BBC4(v294, v295, &qword_10083E3E8, &unk_1006DBD00);
              v297 = (v322)(v295, 1, v296);
              v298 = *(v1 + 1456);
              if (v297 == 1)
              {
                v299 = *(v1 + 1144);
                sub_10000BE18(*(v1 + 1456), &qword_10083E3E8, &unk_1006DBD00);
                (*(v288 + 56))(v299, 1, 1, v287);
                v300 = v326;
                v302 = v314;
                v301 = v317;
              }

              else
              {
                v303 = *(v1 + 1144);
                sub_10000BBC4(v298 + *(*(v1 + 1352) + 20), v303, &unk_100840960, &qword_1006DBCB0);
                sub_100267A1C(v298, type metadata accessor for ActionRequest);
                v300 = v326;
                v302 = v314;
                v301 = v317;
                v325(v303, 1, v287);
              }

              v304 = *(v1 + 1136);
              sub_10000BE18(*(v1 + 1144), &unk_100840960, &qword_1006DBCB0);
              sub_10000BBC4(v301 + v302, v304, &unk_100840960, &qword_1006DBCB0);
              v305 = v325(v304, 1, v287);
              v306 = *(v1 + 1136);
              if (v305 == 1)
              {
                sub_10000BE18(v306, &unk_100840960, &qword_1006DBCB0);
              }

              else
              {
                sub_100267A1C(v306, type metadata accessor for PendingActionContext);
              }

              v307 = swift_task_alloc();
              *(v1 + 1656) = v307;
              *v307 = v1;
              v307[1] = sub_100239F30;
              v308 = *(v1 + 1536);
              v309 = *(v1 + 1464);
              v310 = *(v1 + 1016);
              v311 = *(v1 + 1008);
              v312 = *(v1 + 1000);

              return sub_10025744C(v321, v320, v308, v312, v311, v310, v300, v309);
            }

            if (*(*(v1 + 992) + 136) > 1u)
            {
              if (*(*(v1 + 992) + 136) == 2)
              {
              }

              goto LABEL_149;
            }

LABEL_148:
            _stringCompareWithSmolCheck(_:_:expecting:)();

            goto LABEL_149;
          }

          v190 = *(v1 + 1352);
          v191 = *(v1 + 1168);
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          *(v1 + 968) = v193;
          *v192 = 136315138;
          sub_10000BBC4(v189 + *(v190 + 20), v191, &unk_100840960, &qword_1006DBCB0);
          v194 = type metadata accessor for PendingActionContext(0);
          v195 = (*(*(v194 - 8) + 48))(v191, 1, v194);
          v196 = *(v1 + 1168);
          if (v195 == 1)
          {
            sub_10000BE18(*(v1 + 1168), &unk_100840960, &qword_1006DBCB0);
          }

          else
          {
            v235 = *(v196 + 72);

            sub_100267A1C(v196, type metadata accessor for PendingActionContext);
            if (v235)
            {
              v236 = String.debugDescription.getter();
              v238 = v237;

LABEL_113:
              v323 = *(v1 + 1296);
              v239 = *(v1 + 1208);
              v240 = *(v1 + 1200);
              sub_100267A1C(*(v1 + 1400), type metadata accessor for ActionRequest);
              v241 = sub_100141FE4(v236, v238, (v1 + 968));

              *(v192 + 4) = v241;
              _os_log_impl(&_mh_execute_header, v186, v187, "server requested an action to set state:%s", v192, 0xCu);
              sub_10000BB78(v193);

              v219 = *(v239 + 8);
              v219(v323, v240);
              goto LABEL_114;
            }
          }

          v236 = 0;
          v238 = 0xE000000000000000;
          goto LABEL_113;
        }

        v326 = v23;
        defaultLogger()();
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v95, v96, "display notification received", v97, 2u);
        }

        v24 = *(v1 + 1504);
        v25 = *(v1 + 1496);
        v26 = *(v1 + 1424);
        v27 = *(v1 + 1352);
        v28 = *(v1 + 1344);
        v29 = *(v1 + 1208);
        v30 = *(v1 + 1200);

        (*(v29 + 8))(v28, v30);
        sub_10000BE18(v25, &qword_10083E3E8, &unk_1006DBD00);
        sub_100269F80(v26, v25, type metadata accessor for ActionRequest);
        v24(v25, 0, 1, v27);
        goto LABEL_11;
      }

      if (v39 != 8)
      {
        if (v39 != 10)
        {
          defaultLogger()();
          v204 = Logger.logObject.getter();
          v205 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v204, v205))
          {
            v206 = swift_slowAlloc();
            *v206 = 0;
            _os_log_impl(&_mh_execute_header, v204, v205, "server requested an action to store token", v206, 2u);
          }

          v207 = *(v1 + 1424);
          v208 = *(v1 + 1352);
          v209 = *(v1 + 1248);
          v210 = *(v1 + 1208);
          v211 = *(v1 + 1200);
          v212 = *(v1 + 1104);

          v213 = *(v210 + 8);
          *(v1 + 1672) = v213;
          v213(v209, v211);
          sub_10000BBC4(v207 + *(v208 + 20), v212, &unk_100840960, &qword_1006DBCB0);
          v214 = type metadata accessor for PendingActionContext(0);
          if ((*(*(v214 - 8) + 48))(v212, 1, v214) == 1)
          {
            v215 = *(v1 + 1104);

            swift_bridgeObjectRelease_n();
            sub_10000BE18(v215, &unk_100840960, &qword_1006DBCB0);
LABEL_142:
            v279 = *(v1 + 1424);
            (*(*(v1 + 1040) + 104))(*(v1 + 1048), enum case for DIPError.Code.piiTokenMissingFromContext(_:), *(v1 + 1032));
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            swift_willThrow();
            sub_100267A1C(v279, type metadata accessor for ActionRequest);
            sub_10000BE18(*(v1 + 1496), &qword_10083E3E8, &unk_1006DBD00);

            v21 = *(v1 + 8);
            goto LABEL_6;
          }

          v220 = *(v1 + 1104);
          v221 = (v220 + *(v214 + 128));
          v222 = *v221;
          *(v1 + 1680) = *v221;
          v223 = v221[1];
          *(v1 + 1688) = v223;
          v225 = v221[2];
          v224 = v221[3];
          *(v1 + 1696) = v224;
          sub_1000AB7D8(v222, v223, v225, v224);
          sub_100267A1C(v220, type metadata accessor for PendingActionContext);
          if (!v223)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_142;
          }

          v226 = *(v1 + 1072);
          v227 = *(v1 + 1064);
          v228 = *(v1 + 1056);
          static String.Encoding.utf8.getter();
          v229 = String.data(using:allowLossyConversion:)();
          v231 = v230;
          *(v1 + 1704) = v229;
          *(v1 + 1712) = v230;
          (*(v227 + 8))(v226, v228);
          if (v231 >> 60 == 15)
          {
            swift_bridgeObjectRelease_n();

            goto LABEL_142;
          }

          if (qword_100832C20 == -1)
          {
LABEL_144:
            v280 = *(qword_100882228 + 16);
            *(v1 + 1720) = v280;
            v281 = v280;
            v282 = String._bridgeToObjectiveC()();
            *(v1 + 1728) = v282;
            *(v1 + 16) = v1;
            *(v1 + 56) = v1 + 880;
            *(v1 + 24) = sub_10023D0AC;
            v283 = swift_continuation_init();
            *(v1 + 664) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
            *(v1 + 640) = v283;
            *(v1 + 608) = _NSConcreteStackBlock;
            *(v1 + 616) = 1107296256;
            *(v1 + 624) = sub_100672A4C;
            *(v1 + 632) = &unk_10080B0F0;
            [v281 retrievePIITokenFromSyncableKeyStoreForIdentifier:v282 completion:v1 + 608];

            return _swift_continuation_await(v1 + 16);
          }

LABEL_163:
          swift_once();
          goto LABEL_144;
        }

        defaultLogger()();
        v40 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        v67 = os_log_type_enabled(v40, v66);
        v43 = *(v1 + 1424);
        v44 = *(v1 + 1232);
        v45 = *(v1 + 1208);
        v46 = *(v1 + 1200);
        if (v67)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = v66;
          v49 = v40;
          v50 = "INVALID ACTION REQUEST";
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v98 = *(v1 + 1424);
      v99 = *(v1 + 1384);
      defaultLogger()();
      sub_100269FE8(v98, v99, type metadata accessor for ActionRequest);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();
      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v1 + 1384);
      v326 = v23;
      if (!v102)
      {
        v124 = *(v1 + 1256);
        v125 = *(v1 + 1208);
        v126 = *(v1 + 1200);

        sub_100267A1C(v103, type metadata accessor for ActionRequest);
        (*(v125 + 8))(v124, v126);
LABEL_74:
        v158 = *(v1 + 1112);
        sub_10000BBC4(*(v1 + 1424) + *(*(v1 + 1352) + 20), v158, &unk_100840960, &qword_1006DBCB0);
        v159 = type metadata accessor for PendingActionContext(0);
        if ((*(*(v159 - 8) + 48))(v158, 1, v159) == 1)
        {
          v160 = *(v1 + 1112);
          sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
          sub_10000BE18(v160, &unk_100840960, &qword_1006DBCB0);
          goto LABEL_12;
        }

        v161 = *(v1 + 1112);
        v162 = (v161 + *(v159 + 112));
        v164 = *v162;
        v163 = v162[1];

        sub_100267A1C(v161, type metadata accessor for PendingActionContext);
        if (v163)
        {
          v165 = *(v1 + 1088);
          v166 = *(v1 + 1080);
          v167 = *(v1 + 1024);
          v168 = type metadata accessor for TaskPriority();
          v169 = *(v168 - 8);
          (*(v169 + 56))(v165, 1, 1, v168);
          v170 = swift_allocObject();
          v170[2] = 0;
          v170[3] = 0;
          v170[4] = v167;
          v170[5] = v164;
          v170[6] = v163;
          sub_10000BBC4(v165, v166, &unk_100845860, &unk_1006BF9D0);
          LODWORD(v165) = (*(v169 + 48))(v166, 1, v168);

          v171 = *(v1 + 1080);
          if (v165 == 1)
          {
            sub_10000BE18(*(v1 + 1080), &unk_100845860, &unk_1006BF9D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v169 + 8))(v171, v168);
          }

          v172 = v170[2];
          swift_unknownObjectRetain();

          v23 = v326;
          if (v172)
          {
            swift_getObjectType();
            v173 = dispatch thunk of Actor.unownedExecutor.getter();
            v175 = v174;
            swift_unknownObjectRelease();
          }

          else
          {
            v173 = 0;
            v175 = 0;
          }

          sub_10000BE18(*(v1 + 1088), &unk_100845860, &unk_1006BF9D0);
          if (v175 | v173)
          {
            *(v1 + 848) = 0;
            *(v1 + 856) = 0;
            *(v1 + 864) = v173;
            *(v1 + 872) = v175;
          }

          v43 = *(v1 + 1424);
          swift_task_create();

          goto LABEL_44;
        }

        sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
        goto LABEL_11;
      }

      v104 = *(v1 + 1352);
      v105 = *(v1 + 1120);
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *(v1 + 960) = v107;
      *v106 = 136315138;
      sub_10000BBC4(v103 + *(v104 + 20), v105, &unk_100840960, &qword_1006DBCB0);
      v108 = type metadata accessor for PendingActionContext(0);
      v109 = (*(*(v108 - 8) + 48))(v105, 1, v108);
      v110 = *(v1 + 1120);
      if (v109 == 1)
      {
        sub_10000BE18(*(v1 + 1120), &unk_100840960, &qword_1006DBCB0);
      }

      else
      {
        v151 = (v110 + *(v108 + 112));
        v152 = *v151;
        v153 = v151[1];

        sub_100267A1C(v110, type metadata accessor for PendingActionContext);
        if (v153)
        {
          sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);
LABEL_73:
          v154 = *(v1 + 1256);
          v155 = *(v1 + 1208);
          v156 = *(v1 + 1200);
          v157 = sub_100141FE4(v152, v153, (v1 + 960));

          *(v106 + 4) = v157;
          _os_log_impl(&_mh_execute_header, v100, v101, "server requested to delete the Account Key Signing Key with identifier %s", v106, 0xCu);
          sub_10000BB78(v107);

          (*(v155 + 8))(v154, v156);
          v23 = v326;
          goto LABEL_74;
        }
      }

      sub_100267A1C(*(v1 + 1384), type metadata accessor for ActionRequest);

      v153 = 0xE300000000000000;
      v152 = 4999502;
      goto LABEL_73;
    }

    if (v39 <= 2)
    {
      break;
    }

    if (v39 == 3)
    {
      v68 = *(v1 + 1424);
      v69 = *(v1 + 1408);
      defaultLogger()();
      sub_100269FE8(v68, v69, type metadata accessor for ActionRequest);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v70, v71))
      {
        v119 = *(v1 + 1424);
        v120 = *(v1 + 1408);
        v121 = *(v1 + 1304);
        v122 = *(v1 + 1208);
        v123 = *(v1 + 1200);

        sub_100267A1C(v120, type metadata accessor for ActionRequest);
        (*(v122 + 8))(v121, v123);
        sub_100267A1C(v119, type metadata accessor for ActionRequest);
        goto LABEL_12;
      }

      v72 = *(v1 + 1408);
      v73 = *(v1 + 1352);
      v74 = *(v1 + 1176);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *(v1 + 976) = v76;
      *v75 = 136315138;
      sub_10000BBC4(v72 + *(v73 + 20), v74, &unk_100840960, &qword_1006DBCB0);
      v77 = type metadata accessor for PendingActionContext(0);
      v78 = (*(*(v77 - 8) + 48))(v74, 1, v77);
      v79 = *(v1 + 1176);
      v326 = v23;
      if (v78 == 1)
      {
        sub_10000BE18(v79, &unk_100840960, &qword_1006DBCB0);
        goto LABEL_68;
      }

      v143 = *(v79 + 56);
      v144 = *(v1 + 1176);

      sub_100267A1C(v144, type metadata accessor for PendingActionContext);
      if (v143)
      {
        v145 = String.debugDescription.getter();
        v147 = v146;
      }

      else
      {
LABEL_68:
        v145 = 0;
        v147 = 0xE000000000000000;
      }

      v316 = *(v1 + 1304);
      v319 = *(v1 + 1424);
      v148 = *(v1 + 1208);
      v149 = *(v1 + 1200);
      sub_100267A1C(*(v1 + 1408), type metadata accessor for ActionRequest);
      v150 = sub_100141FE4(v145, v147, (v1 + 976));

      *(v75 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v70, v71, "server requested an action to self heal: %s", v75, 0xCu);
      sub_10000BB78(v76);

      (*(v148 + 8))(v316, v149);
      sub_100267A1C(v319, type metadata accessor for ActionRequest);
LABEL_11:
      v23 = v326;
      goto LABEL_12;
    }

    v326 = v23;
    defaultLogger()();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "display message received", v82, 2u);
    }

    v83 = *(v1 + 1424);
    v84 = *(v1 + 1352);
    v85 = *(v1 + 1336);
    v86 = *(v1 + 1208);
    v87 = *(v1 + 1200);
    v88 = *(v1 + 1008);
    v89 = *(v1 + 1000);

    v90 = *(v86 + 8);
    v90(v85, v87);
    sub_1002556F0(v83 + *(v84 + 20), v89, v88);
    type metadata accessor for IdentityProofingDataContext();
    v91 = swift_allocObject();
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v92 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v92 + 54);
    sub_100031B5C(&v92[4], v1 + 408);
    os_unfair_lock_unlock(v92 + 54);

    sub_100031918(v1 + 408);
    v127 = sub_10054C274();
    v128 = *(v1 + 1896);
    v129 = *(v1 + 1424);
    v130 = *(v1 + 1416);
    v315 = v90;
    v318 = *(v1 + 1016);
    v131 = *(v1 + 1008);
    v132 = *(v1 + 1000);

    v133 = [v127 newBackgroundContext];
    *(v91 + 16) = v133;
    [v133 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];

    sub_100269FE8(v129, v130, type metadata accessor for ActionRequest);
    v134 = swift_allocObject();
    v134[2] = v91;
    v134[3] = v132;
    v134[4] = v131;
    v134[5] = v318;
    sub_100269F80(v130, v134 + ((v128 + 48) & ~v128), type metadata accessor for ActionRequest);
    *(v1 + 984) = 0;
    v135 = *(v91 + 16);
    v136 = swift_allocObject();
    v136[2] = sub_100267BF8;
    v136[3] = v134;
    v136[4] = v313;
    v137 = swift_allocObject();
    *(v137 + 16) = sub_100267C5C;
    *(v137 + 24) = v136;
    *(v1 + 832) = sub_10026CBB8;
    *(v1 + 840) = v137;
    *(v1 + 800) = _NSConcreteStackBlock;
    *(v1 + 808) = 1107296256;
    *(v1 + 816) = sub_10057E264;
    *(v1 + 824) = &unk_10080B258;
    v138 = _Block_copy((v1 + 800));

    [v135 performBlockAndWait:v138];
    _Block_release(v138);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_162;
    }

    if (*v313)
    {
      swift_willThrow();

      v23 = v326;
      v140 = *(v1 + 1328);
      v141 = *(v1 + 1200);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      v315(v140, v141);
    }

    else
    {

      v23 = v326;
    }

    sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
LABEL_12:
    v16 = *(v1 + 1568) + 1;
    if (v16 == *(v1 + 1528))
    {
      goto LABEL_4;
    }
  }

  if (!v39)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    v94 = os_log_type_enabled(v40, v93);
    v43 = *(v1 + 1424);
    v44 = *(v1 + 1272);
    v45 = *(v1 + 1208);
    v46 = *(v1 + 1200);
    if (v94)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = v93;
      v49 = v40;
      v50 = "server requested an action to wait for update";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v49, v48, v50, v47, 2u);
    }

LABEL_43:

    (*(v45 + 8))(v44, v46);
LABEL_44:
    sub_100267A1C(v43, type metadata accessor for ActionRequest);
    goto LABEL_12;
  }

  if (v39 != 2)
  {
    defaultLogger()();
    v197 = Logger.logObject.getter();
    v198 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v197, v198))
    {
      v199 = swift_slowAlloc();
      *v199 = 0;
      _os_log_impl(&_mh_execute_header, v197, v198, "Starting Provisioning flow", v199, 2u);
    }

    v200 = *(v1 + 1312);
    v201 = *(v1 + 1208);
    v202 = *(v1 + 1200);
    v203 = *(v1 + 992);

    (*(v201 + 8))(v200, v202);
    if (*(v203 + 152) != 1 && (*(*(v1 + 992) + 136) <= 1u || *(*(v1 + 992) + 136) == 2))
    {
    }

    v273 = *(v1 + 1424);
    v274 = *(*(v1 + 1352) + 20);
    v275 = swift_task_alloc();
    *(v1 + 1592) = v275;
    *v275 = v1;
    v275[1] = sub_10023710C;
    v276 = *(v1 + 1016);
    v277 = *(v1 + 1008);
    v278 = *(v1 + 1000);

    return sub_100229698(v273 + v274, v278, v277, v276, 0x61746E6567616DLL, 0xE700000000000000);
  }

  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "server requested an action to execute new workflow", v53, 2u);
  }

  v54 = *(v1 + 1424);
  v55 = *(v1 + 1352);
  v56 = *(v1 + 1320);
  v57 = *(v1 + 1208);
  v58 = *(v1 + 1200);
  v59 = *(v1 + 1192);

  (*(v57 + 8))(v56, v58);
  v60 = *(v55 + 20);
  sub_10000BBC4(v54 + v60, v59, &unk_100840960, &qword_1006DBCB0);
  v61 = type metadata accessor for PendingActionContext(0);
  v62 = *(*(v61 - 8) + 48);
  v63 = v62(v59, 1, v61);
  v64 = *(v1 + 1192);
  if (v63 == 1)
  {
    sub_10000BE18(v64, &unk_100840960, &qword_1006DBCB0);
    v65 = 3;
  }

  else
  {
    v65 = *(v64 + *(v61 + 76));
    sub_100267A1C(v64, type metadata accessor for PendingActionContext);
  }

  *(v1 + 1909) = v65;
  v111 = *(v1 + 1184);
  sub_10000BBC4(v54 + v60, v111, &unk_100840960, &qword_1006DBCB0);
  v112 = v62(v111, 1, v61);
  v113 = *(v1 + 1184);
  v114 = *(v1 + 1096);
  if (v112 == 1)
  {
    sub_10000BE18(v113, &unk_100840960, &qword_1006DBCB0);
    v115 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
  }

  else
  {
    v116 = *(v61 + 72);
    v117 = *(v1 + 1184);
    sub_10000BBC4(v113 + v116, *(v1 + 1096), &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v117, type metadata accessor for PendingActionContext);
  }

  v118 = *(v1 + 1096);
  sub_1002593E4(v118);
  sub_10000BE18(v118, &qword_100835968, &qword_1006DBC90);
  if (v65 <= 1)
  {
    v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v142)
    {
      goto LABEL_107;
    }

    goto LABEL_65;
  }

  if (v65 == 3)
  {
LABEL_65:
    sub_100267A1C(*(v1 + 1424), type metadata accessor for ActionRequest);
    v23 = *(v1 + 1909);
    goto LABEL_12;
  }

LABEL_107:
  v232 = swift_task_alloc();
  *(v1 + 1576) = v232;
  *v232 = v1;
  v232[1] = sub_1002342A8;
  v233 = *(v1 + 1008);
  v234 = *(v1 + 1000);

  return sub_100259898(v54 + v60, v234, v233);
}

uint64_t sub_1002537D0(__n128 a1)
{
  sub_100267A1C(v1[172], type metadata accessor for ActionRequest);
  sub_10000BE18(v1[187], &qword_10083E3E8, &unk_1006DBD00);

  v2 = v1[1];

  return v2();
}

uint64_t sub_100253B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  return _swift_task_switch(sub_100253B54, 0, 0);
}

uint64_t sub_100253B54()
{
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100882228 + 16);
  *(v0 + 160) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100253BFC, 0, 0);
}

uint64_t sub_100253BFC()
{
  v1 = v0[20];
  v2 = String._bridgeToObjectiveC()();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_100253D2C;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080B280;
  v0[14] = v3;
  [v1 deleteAccountKeySigningKeyForAccountKeyIdentifier:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100253D2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v6 = *(v3 + 8);

  return v6();
}

void sub_100253E6C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = sub_1005792EC(a1, a2, a3);
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 credentialIdentifier];

      if (v8)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      *a4 = v9;
      a4[1] = v11;
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
    }
  }
}

void sub_100253F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v47 = type metadata accessor for Logger();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = type metadata accessor for DIPError.Code();
  v45 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = v55;
  sub_10057BE48(a2, a3, a4);
  if (!v18)
  {
    v42 = a3;
    v43 = a4;
    v55 = v14;
    v20 = v46;
    v21 = v47;
    v41[1] = a1;
    if (!v19)
    {
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v26._countAndFlagsBits = 0xD000000000000023;
      v26._object = 0x8000000100707BA0;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v17;
      v27._object = v42;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 0x72617420646E6120;
      v28._object = 0xEC00000020746567;
      String.append(_:)(v28);
      v29._countAndFlagsBits = IdentityTarget.debugDescription.getter();
      String.append(_:)(v29);

      (*(v45 + 13))(v16, enum case for DIPError.Code.internalError(_:), v55);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v22 = v13;
    v23 = v19;
    v24 = type metadata accessor for ActionRequest(0);
    sub_10000BBC4(v44 + *(v24 + 20), v22, &unk_100840960, &qword_1006DBCB0);
    v25 = type metadata accessor for PendingActionContext(0);
    if ((*(*(v25 - 8) + 48))(v22, 1, v25) == 1)
    {
      sub_10000BE18(v22, &unk_100840960, &qword_1006DBCB0);
LABEL_11:
      (*(v45 + 13))(v16, enum case for DIPError.Code.extendedReviewProofingError(_:), v55);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v30 = v22[10];
    v51 = v22[9];
    v52 = v30;
    v31 = v22[12];
    v53 = v22[11];
    v54 = v31;
    v32 = v22[8];
    v49 = v22[7];
    v50 = v32;
    sub_10000BBC4(&v49, v48, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v22, type metadata accessor for PendingActionContext);
    v33 = *(&v49 + 1);
    if (*(&v49 + 1) == 2)
    {
      goto LABEL_11;
    }

    v34 = v50;
    sub_1002679D4(v49, *(&v49 + 1), v50, *(&v50 + 1));
    sub_10000BE18(&v49, &qword_100837410, &qword_1006C9788);
    if (v33 == 1)
    {
      goto LABEL_11;
    }

    if (!*(&v34 + 1))
    {
      goto LABEL_11;
    }

    v55 = v34;
    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = v10;
      v38 = v37;
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v38 = 136315138;
      LODWORD(v44) = v36;
      v40 = v55;
      *(v38 + 4) = sub_100141FE4(v55, *(&v34 + 1), v48);
      _os_log_impl(&_mh_execute_header, v35, v44, "The extended review URL string is %s", v38, 0xCu);
      sub_10000BB78(v39);

      (*(v20 + 8))(v45, v21);
    }

    else
    {

      (*(v20 + 8))(v10, v21);
      v40 = v55;
    }

    sub_10057F944(v40, *(&v34 + 1));

    sub_10057BA64();
  }
}

void sub_100254670(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  LODWORD(v81) = a8;
  v76 = a6;
  v77 = a7;
  v82 = a5;
  v80 = type metadata accessor for URL();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v69 - v17;
  v19 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  v25 = v84;
  v26 = sub_1005792EC(a2, a3, a4);
  if (!v25)
  {
    v70 = a2;
    v71 = v18;
    v27 = v16;
    v28 = v81;
    v72 = v22;
    v73 = v24;
    v29 = v83;
    v84 = a1;
    v74 = 0;
    if (v26)
    {
      v30 = v26;
      type metadata accessor for StoredProofingDisplayMessage();
      v31 = *(v84 + 16);
      v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v31];
      v33 = IdentityProofingDisplayMessage.title.getter();
      sub_10057FAD4(v33, v34, v76, v77);

      v35 = v32;
      v77 = v30;
      sub_10057FC7C(v32);

      if (v28)
      {
        type metadata accessor for StoredProofingDisplayMessageAction();
        v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v31];
        v37 = static LocalizedProofingString.tryAgain.getter();
        v39 = v38;
        v40 = v73;
        (*(v29 + 56))(v73, 1, 1, v80);
        sub_10057FE04(v37, v39, 0, v40);

        sub_10000BE18(v40, &unk_100844540, &unk_1006BFBC0);
        [v35 addActionsObject:v36];
      }

      v76 = v31;
      v81 = v35;
      v41 = IdentityProofingDisplayMessage.learnMoreTitle.getter();
      v43 = v42;
      IdentityProofingDisplayMessage.learnMoreURL.getter();
      v45 = v44;
      v46 = [objc_opt_self() standardUserDefaults];
      v47._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideLearnMoreURLBridge.getter();
      v48 = NSUserDefaults.internalString(forKey:)(v47);

      if (v48.value._object)
      {

        v49 = v71;
        defaultLogger()();

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v85 = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_100141FE4(v48.value._countAndFlagsBits, v48.value._object, &v85);
          _os_log_impl(&_mh_execute_header, v50, v51, "IdentityProofingPendingActionsFlow: override proofing error message learn more URL from internal setting: %s", v52, 0xCu);
          sub_10000BB78(v53);
        }

        (*(v78 + 8))(v49, v79);
        v54 = v75;
        v55 = v72;
        v56 = v73;
        v41 = static LocalizedProofingString.learnMore.getter();
        v43 = v57;
      }

      else
      {
        if (!v43)
        {

          v60 = v77;
          v61 = v81;
          goto LABEL_20;
        }

        if (!v45)
        {

          v55 = v72;
          (*(v83 + 56))(v72, 1, 1, v80);
          goto LABEL_11;
        }

        v54 = v75;
        v55 = v72;
        v56 = v73;
      }

      URL.init(string:)();
      swift_bridgeObjectRelease_n();
      v58 = v83;
      v59 = v80;
      if ((*(v83 + 48))(v55, 1, v80) != 1)
      {
        (*(v58 + 32))(v54, v55, v59);
        type metadata accessor for StoredProofingDisplayMessageAction();
        v67 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v68 = [v67 initWithContext:v76];
        (*(v58 + 16))(v56, v54, v59);
        (*(v58 + 56))(v56, 0, 1, v59);
        sub_10057FE04(v41, v43, 1, v56);

        sub_10000BE18(v56, &unk_100844540, &unk_1006BFBC0);
        v61 = v81;
        [v81 addActionsObject:v68];

        (*(v58 + 8))(v54, v59);
        v60 = v77;
        goto LABEL_20;
      }

LABEL_11:
      v60 = v77;
      v61 = v81;
      sub_10000BE18(v55, &unk_100844540, &unk_1006BFBC0);
LABEL_20:
      sub_1005783D4();

      return;
    }

    defaultLogger()();
    v62 = a3;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v85 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_100141FE4(v70, v62, &v85);
      _os_log_impl(&_mh_execute_header, v63, v64, "PendingActionsFlow no proofing session exists for: %s", v65, 0xCu);
      sub_10000BB78(v66);
    }

    (*(v78 + 8))(v27, v79);
  }
}

void sub_100254E1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057BE48(a2, a3, a4);
  if (!v5)
  {
    if (v14)
    {
      v15 = v14;
      v16 = type metadata accessor for ActionRequest(0);
      sub_100580054(*(a5 + *(v16 + 24)), *(a5 + *(v16 + 24) + 8));
      sub_10057BA64();
    }

    else
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v17._object = 0x8000000100707D30;
      v17._countAndFlagsBits = 0xD000000000000027;
      String.append(_:)(v17);
      v18._countAndFlagsBits = a2;
      v18._object = a3;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 0x74276E73656F6420;
      v19._object = 0xEE00747369786520;
      String.append(_:)(v19);
      (*(v11 + 104))(v13, enum case for DIPError.Code.internalError(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002550B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_100007224(&qword_10083E3E8, &unk_1006DBD00);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002551A8, 0, 0);
}

uint64_t sub_1002551A8()
{
  v1 = v0[7];
  v2 = v0[2];
  v0[10] = *(v0[5] + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_userNotificationProvider);
  sub_10000BBC4(v2, v1, &qword_10083E3E8, &unk_1006DBD00);
  v3 = type metadata accessor for ActionRequest(0);
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[7];

    v6 = &qword_10083E3E8;
    v7 = &unk_1006DBD00;
    v8 = v5;
LABEL_5:
    sub_10000BE18(v8, v6, v7);
    v14 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  v9 = v0[9];
  v10 = v0[7];
  sub_10000BBC4(v10 + *(v3 + 20), v9, &unk_100840960, &qword_1006DBCB0);

  sub_100267A1C(v10, type metadata accessor for ActionRequest);
  v11 = type metadata accessor for PendingActionContext(0);
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  v13 = v0[9];
  if (v12 == 1)
  {
    v6 = &unk_100840960;
    v7 = &qword_1006DBCB0;
    v8 = v0[9];
    goto LABEL_5;
  }

  v14 = *(v13 + 240);
  v15 = *(v13 + 248);

  sub_100267A1C(v13, type metadata accessor for PendingActionContext);
LABEL_7:
  v0[11] = v15;
  v16 = v0[6];
  sub_10000BBC4(v0[2], v16, &qword_10083E3E8, &unk_1006DBD00);
  if (v4(v16, 1, v3) == 1)
  {
    v17 = v0[6];
    v18 = &qword_10083E3E8;
    v19 = &unk_1006DBD00;
LABEL_11:
    sub_10000BE18(v17, v18, v19);
    v25 = 0;
    v26 = 0;
    goto LABEL_13;
  }

  v20 = v0[8];
  v21 = v0[6];
  sub_10000BBC4(v21 + *(v3 + 20), v20, &unk_100840960, &qword_1006DBCB0);
  sub_100267A1C(v21, type metadata accessor for ActionRequest);
  v22 = type metadata accessor for PendingActionContext(0);
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  v24 = v0[8];
  if (v23 == 1)
  {
    v18 = &unk_100840960;
    v19 = &qword_1006DBCB0;
    v17 = v0[8];
    goto LABEL_11;
  }

  v25 = *(v24 + 256);
  v26 = *(v24 + 264);

  sub_100267A1C(v24, type metadata accessor for PendingActionContext);
LABEL_13:
  v0[12] = v26;
  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_10025551C;
  v28 = v0[3];
  v29 = v0[4];

  return sub_1002CD7D4(v14, v15, v25, v26, v28, v29, 0);
}

uint64_t sub_10025551C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002556F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v213 = a3;
  v218 = a2;
  v222 = type metadata accessor for DIPError.Code();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v223 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError();
  v224 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v9 = __chkstk_darwin(v8 - 8);
  v212 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v215 = &v191 - v11;
  v226 = type metadata accessor for Logger();
  v225 = *(v226 - 1);
  v12 = __chkstk_darwin(v226);
  v14 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v211 = &v191 - v16;
  v17 = __chkstk_darwin(v15);
  v210 = &v191 - v18;
  v19 = __chkstk_darwin(v17);
  v209 = &v191 - v20;
  v21 = __chkstk_darwin(v19);
  v207 = &v191 - v22;
  v23 = __chkstk_darwin(v21);
  v206 = &v191 - v24;
  v25 = __chkstk_darwin(v23);
  v205 = &v191 - v26;
  v27 = __chkstk_darwin(v25);
  v204 = &v191 - v28;
  v29 = __chkstk_darwin(v27);
  v203 = &v191 - v30;
  __chkstk_darwin(v29);
  v202 = &v191 - v31;
  v217 = type metadata accessor for IdentityProofingDisplayMessage();
  v216 = *(v217 - 8);
  v32 = __chkstk_darwin(v217);
  v196 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v208 = &v191 - v35;
  __chkstk_darwin(v34);
  v219 = &v191 - v36;
  v37 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v38 = __chkstk_darwin(v37 - 8);
  v201 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v200 = &v191 - v41;
  v42 = __chkstk_darwin(v40);
  v199 = &v191 - v43;
  v44 = __chkstk_darwin(v42);
  v198 = &v191 - v45;
  v46 = __chkstk_darwin(v44);
  v197 = &v191 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v191 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v191 - v52;
  __chkstk_darwin(v51);
  v55 = &v191 - v54;
  sub_10000BBC4(a1, &v191 - v54, &unk_100840960, &qword_1006DBCB0);
  v56 = type metadata accessor for PendingActionContext(0);
  v220 = *(*(v56 - 8) + 48);
  if (v220(v55, 1, v56) == 1)
  {
    v57 = v55;
LABEL_6:
    sub_10000BE18(v57, &unk_100840960, &qword_1006DBCB0);
    goto LABEL_7;
  }

  v58 = *(v55 + 12);
  v195 = *(v55 + 11);

  v59 = v55;
  v60 = v58;
  sub_100267A1C(v59, type metadata accessor for PendingActionContext);
  if (!v58)
  {
LABEL_7:
    (*(v221 + 13))(v223, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v222);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v63 = v224;
    (*(v224 + 16))(v64, v7, v5);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v225[1](v14, v226);
    (*(v63 + 8))(v7, v5);
  }

  v61 = a1;
  sub_10000BBC4(a1, v53, &unk_100840960, &qword_1006DBCB0);
  v62 = v220;
  if (v220(v53, 1, v56) == 1)
  {

    v57 = v53;
    goto LABEL_6;
  }

  v194 = v60;
  v66 = *(v53 + 13);

  sub_100267A1C(v53, type metadata accessor for PendingActionContext);
  v193 = v66;
  if (!v66)
  {

    goto LABEL_7;
  }

  sub_10000BBC4(a1, v50, &unk_100840960, &qword_1006DBCB0);
  if (v62(v50, 1, v56) == 1)
  {
    sub_10000BE18(v50, &unk_100840960, &qword_1006DBCB0);
    v192 = 0;
    v67 = 0;
    v68 = v226;
    v69 = v199;
    v70 = v198;
LABEL_14:
    v74 = v197;
    goto LABEL_19;
  }

  v71 = *(v50 + 10);
  v230 = *(v50 + 9);
  v231 = v71;
  v72 = *(v50 + 12);
  v232 = *(v50 + 11);
  v233 = v72;
  v73 = *(v50 + 8);
  v228 = *(v50 + 7);
  v229 = v73;
  sub_10000BBC4(&v228, &v227, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v50, type metadata accessor for PendingActionContext);
  v67 = *(&v228 + 1);
  v68 = v226;
  v69 = v199;
  v70 = v198;
  if (*(&v228 + 1) == 2)
  {
    v192 = 0;
    v67 = 0;
    goto LABEL_14;
  }

  v192 = v228;
  sub_1002679D4(v228, *(&v228 + 1), v229, *(&v229 + 1));
  sub_10000BE18(&v228, &qword_100837410, &qword_1006C9788);
  v74 = v197;
  if (v67 == 1)
  {
    v192 = 0;
    v67 = 0;
  }

  else
  {
  }

  v62 = v220;
LABEL_19:
  sub_10000BBC4(v61, v74, &unk_100840960, &qword_1006DBCB0);
  if (v62(v74, 1, v56) == 1)
  {
    sub_10000BE18(v74, &unk_100840960, &qword_1006DBCB0);
LABEL_22:
    v199 = 0;
    v78 = 0;
    goto LABEL_27;
  }

  v75 = *(v74 + 10);
  v230 = *(v74 + 9);
  v231 = v75;
  v76 = *(v74 + 12);
  v232 = *(v74 + 11);
  v233 = v76;
  v77 = *(v74 + 8);
  v228 = *(v74 + 7);
  v229 = v77;
  sub_10000BBC4(&v228, &v227, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v74, type metadata accessor for PendingActionContext);
  if (*(&v228 + 1) == 2)
  {
    goto LABEL_22;
  }

  v78 = *(&v230 + 1);
  v199 = v230;
  sub_1002679D4(v230, *(&v230 + 1), v231, *(&v231 + 1));
  sub_10000BE18(&v228, &qword_100837410, &qword_1006C9788);
  if (v78 == 1)
  {
    v199 = 0;
    v78 = 0;
  }

  else
  {
  }

  v62 = v220;
LABEL_27:
  sub_10000BBC4(v61, v70, &unk_100840960, &qword_1006DBCB0);
  if (v62(v70, 1, v56) == 1)
  {
    sub_10000BE18(v70, &unk_100840960, &qword_1006DBCB0);
LABEL_30:
    v221 = 0;
    v82 = 0;
    goto LABEL_35;
  }

  v79 = *(v70 + 10);
  v230 = *(v70 + 9);
  v231 = v79;
  v80 = *(v70 + 12);
  v232 = *(v70 + 11);
  v233 = v80;
  v81 = *(v70 + 8);
  v228 = *(v70 + 7);
  v229 = v81;
  sub_10000BBC4(&v228, &v227, &qword_100837410, &qword_1006C9788);
  sub_100267A1C(v70, type metadata accessor for PendingActionContext);
  if (*(&v228 + 1) == 2)
  {
    goto LABEL_30;
  }

  v82 = *(&v232 + 1);
  v221 = v232;
  sub_1002679D4(v232, *(&v232 + 1), v233, *(&v233 + 1));
  sub_10000BE18(&v228, &qword_100837410, &qword_1006C9788);
  if (v82 == 1)
  {
    v221 = 0;
    v82 = 0;
  }

  else
  {
  }

  v62 = v220;
LABEL_35:
  sub_10000BBC4(v61, v69, &unk_100840960, &qword_1006DBCB0);
  v83 = v62(v69, 1, v56);
  v224 = v67;
  v223 = v78;
  if (v83 == 1)
  {
    sub_10000BE18(v69, &unk_100840960, &qword_1006DBCB0);
    v84 = v200;
  }

  else
  {
    v85 = *(v69 + 10);
    v230 = *(v69 + 9);
    v231 = v85;
    v86 = *(v69 + 12);
    v232 = *(v69 + 11);
    v233 = v86;
    v87 = *(v69 + 8);
    v228 = *(v69 + 7);
    v229 = v87;
    sub_10000BBC4(&v228, &v227, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v69, type metadata accessor for PendingActionContext);
    v84 = v200;
    if (*(&v228 + 1) != 2)
    {
      v88 = *(&v233 + 1);
      v89 = *(&v232 + 1);
      v222 = v233;
      sub_1002679D4(v232, *(&v232 + 1), v233, *(&v233 + 1));
      sub_10000BE18(&v228, &qword_100837410, &qword_1006C9788);
      if (v89 == 1)
      {
        v62 = v220;
      }

      else
      {

        v62 = v220;
        if (v88)
        {
          goto LABEL_45;
        }
      }
    }
  }

  sub_10000BBC4(v61, v84, &unk_100840960, &qword_1006DBCB0);
  if (v62(v84, 1, v56) == 1)
  {
    sub_10000BE18(v84, &unk_100840960, &qword_1006DBCB0);
    v222 = 0;
    v88 = 0;
  }

  else
  {
    v88 = *(v84 + 312);
    v222 = *(v84 + 304);

    sub_100267A1C(v84, type metadata accessor for PendingActionContext);
  }

LABEL_45:
  v90 = v61;
  v91 = v62;
  v92 = v201;
  sub_10000BBC4(v90, v201, &unk_100840960, &qword_1006DBCB0);
  if (v91(v92, 1, v56) == 1)
  {
    v93 = v68;
    sub_10000BE18(v92, &unk_100840960, &qword_1006DBCB0);
    v94 = v203;
  }

  else
  {
    v95 = *(v92 + 10);
    v230 = *(v92 + 9);
    v231 = v95;
    v96 = *(v92 + 12);
    v232 = *(v92 + 11);
    v233 = v96;
    v97 = *(v92 + 8);
    v228 = *(v92 + 7);
    v229 = v97;
    sub_10000BBC4(&v228, &v227, &qword_100837410, &qword_1006C9788);
    sub_100267A1C(v92, type metadata accessor for PendingActionContext);
    v98 = *(&v228 + 1);
    v94 = v203;
    if (*(&v228 + 1) == 2 || (sub_1002679D4(v228, *(&v228 + 1), v229, *(&v229 + 1)), sub_10000BE18(&v228, &qword_100837410, &qword_1006C9788), v98 == 1))
    {
      v93 = v68;
    }

    else
    {
      v93 = v68;
    }
  }

  v203 = v82;
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();
  v99 = v202;
  defaultLogger()();
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&_mh_execute_header, v100, v101, "----BEGIN LOGGING DISPLAY MESSAGE DATA-----", v102, 2u);
  }

  v103 = v207;

  v104 = v225[1];
  (v104)(v99, v93);
  defaultLogger()();
  v105 = v194;

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();

  v108 = os_log_type_enabled(v106, v107);
  v225 = v104;
  v220 = v88;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v228 = v110;
    *v109 = 136315138;
    v111 = sub_100141FE4(v195, v105, &v228);

    *(v109 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v106, v107, "title: %s", v109, 0xCu);
    sub_10000BB78(v110);

    v104 = v225;
  }

  else
  {
  }

  (v104)(v94, v93);
  v112 = v204;
  defaultLogger()();

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v228 = v116;
    *v115 = 136315138;
    v117 = Array.description.getter();
    v119 = v118;

    v120 = sub_100141FE4(v117, v119, &v228);

    *(v115 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v113, v114, "messages: %s", v115, 0xCu);
    sub_10000BB78(v116);

    v104 = v225;
  }

  else
  {
  }

  (v104)(v112, v93);
  v121 = v205;
  v122 = v224;
  defaultLogger()();

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();

  v125 = v103;
  if (os_log_type_enabled(v123, v124))
  {
    v126 = swift_slowAlloc();
    v127 = v121;
    v128 = swift_slowAlloc();
    *&v228 = v128;
    *v126 = 136315138;
    if (v122)
    {
      v129 = v192;
    }

    else
    {
      v129 = 0x3E6C696E3CLL;
    }

    if (!v122)
    {
      v122 = 0xE500000000000000;
    }

    v130 = sub_100141FE4(v129, v122, &v228);

    *(v126 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v123, v124, "primaryButtonTitle: %s", v126, 0xCu);
    sub_10000BB78(v128);

    v104 = v225;

    v131 = v127;
  }

  else
  {

    v131 = v121;
  }

  (v104)(v131, v93);
  v132 = v206;
  defaultLogger()();
  v133 = v223;

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v228 = v137;
    *v136 = 136315138;
    if (v133)
    {
      v138 = v199;
    }

    else
    {
      v138 = 0x3E6C696E3CLL;
    }

    if (!v133)
    {
      v133 = 0xE500000000000000;
    }

    v139 = sub_100141FE4(v138, v133, &v228);

    *(v136 + 4) = v139;
    _os_log_impl(&_mh_execute_header, v134, v135, "secondaryButtonTitle: %s", v136, 0xCu);
    sub_10000BB78(v137);

    v104 = v225;
  }

  else
  {
  }

  (v104)(v132, v93);
  defaultLogger()();
  v140 = v203;

  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v228 = v144;
    *v143 = 136315138;
    if (v140)
    {
      v145 = v221;
    }

    else
    {
      v145 = 0x3E6C696E3CLL;
    }

    if (!v140)
    {
      v140 = 0xE500000000000000;
    }

    v146 = sub_100141FE4(v145, v140, &v228);

    *(v143 + 4) = v146;
    _os_log_impl(&_mh_execute_header, v141, v142, "learnMoreTitle: %s", v143, 0xCu);
    sub_10000BB78(v144);

    v104 = v225;
  }

  else
  {
  }

  (v104)(v125, v93);
  v147 = v208;
  v148 = v209;
  defaultLogger()();
  v149 = v216;
  v150 = *(v216 + 16);
  v151 = v217;
  v223 = (v216 + 16);
  v221 = v150;
  v150(v147, v219, v217);
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v228 = v155;
    *v154 = 136315138;
    v156 = IdentityProofingDisplayMessage.url.getter();
    if (v157)
    {
      v158 = v156;
    }

    else
    {
      v158 = 0x3E6C696E3CLL;
    }

    v159 = v147;
    if (v157)
    {
      v160 = v157;
    }

    else
    {
      v160 = 0xE500000000000000;
    }

    v224 = *(v149 + 8);
    (v224)(v159, v151);
    v161 = sub_100141FE4(v158, v160, &v228);

    *(v154 + 4) = v161;
    _os_log_impl(&_mh_execute_header, v152, v153, "url: %s", v154, 0xCu);
    sub_10000BB78(v155);

    v104 = v225;
  }

  else
  {

    v224 = *(v149 + 8);
    (v224)(v147, v151);
  }

  (v104)(v148, v226);
  v162 = v220;
  v163 = v210;
  defaultLogger()();

  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *&v228 = v167;
    *v166 = 136315138;
    if (v162)
    {
      v168 = v222;
    }

    else
    {
      v168 = 0x3E6C696E3CLL;
    }

    if (!v162)
    {
      v162 = 0xE500000000000000;
    }

    v169 = sub_100141FE4(v168, v162, &v228);

    *(v166 + 4) = v169;
    _os_log_impl(&_mh_execute_header, v164, v165, "learnMoreURL: %s", v166, 0xCu);
    sub_10000BB78(v167);

    v104 = v225;
  }

  else
  {
  }

  (v104)(v163, v226);
  v170 = v211;
  defaultLogger()();
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    *v173 = 0;
    _os_log_impl(&_mh_execute_header, v171, v172, "----END LOGGING DISPLAY MESSAGE DATA-----", v173, 2u);
    v104 = v225;
  }

  (v104)(v170, v226);
  v174 = v215;
  v175 = v219;
  v176 = v217;
  v177 = v221;
  v221(v215, v219, v217);
  v178 = v216;
  v226 = *(v216 + 56);
  (v226)(v174, 0, 1, v176);
  v179 = v214;
  swift_beginAccess();
  v180 = v213;

  sub_10014BDF0(v174, v218, v180);
  swift_endAccess();
  v181 = *(v179 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository);
  v182 = v212;
  v177(v212, v175, v176);
  (v226)(v182, 0, 1, v176);
  v183 = *(v181 + 24);

  os_unfair_lock_lock((v183 + 24));
  v184 = *(v183 + 16);

  os_unfair_lock_unlock((v183 + 24));
  *&v228 = v184;
  if ((*(v178 + 48))(v182, 1, v176) == 1)
  {
    sub_10000BE18(v182, &qword_10083BD28, &qword_1006DA240);
    v185 = v215;
    sub_10014F3EC(v218, v180, v215);
    v186 = sub_10000BE18(v185, &qword_10083BD28, &qword_1006DA240);
  }

  else
  {
    v187 = v196;
    (*(v178 + 32))(v196, v182, v176);
    v188 = v228;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = v188;
    v186 = sub_10016CD90(v187, v218, v180, isUniquelyReferenced_nonNull_native);
    *&v228 = v227;
  }

  v190 = *(v181 + 24);
  __chkstk_darwin(v186);
  os_unfair_lock_lock((v190 + 24));
  sub_1002679B8((v190 + 16));
  os_unfair_lock_unlock((v190 + 24));

  (v224)(v219, v176);
}

uint64_t sub_10025744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 80) = v18;
  *(v9 + 88) = v8;
  *(v9 + 259) = v16;
  *(v9 + 258) = v15;
  *(v9 + 64) = a8;
  *(v9 + 72) = v17;
  *(v9 + 257) = a7;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  sub_100007224(&qword_10083BD28, &qword_1006DA240);
  *(v9 + 120) = swift_task_alloc();
  v11 = type metadata accessor for IdentityProofingDisplayMessage();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v9 + 152) = v12;
  *(v9 + 160) = *(v12 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_10025764C, 0, 0);
}

uint64_t sub_10025764C(uint64_t a1)
{
  v106 = v1;
  v2 = *(v1 + 24);
  if (!v2)
  {
    v5 = 0xE300000000000000;
    goto LABEL_22;
  }

  v3 = *(v1 + 16);

  v108._countAndFlagsBits = v3;
  v108._object = v2;
  v4 = sub_100265C7C(v108);
  *(v1 + 260) = v4;
  v5 = v2;
  if (v4 == 6)
  {
LABEL_22:
    defaultLogger()();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 160);
    v31 = *(v1 + 168);
    v32 = *(v1 + 152);
    if (v29)
    {
      v33 = *(v1 + 16);
      v104 = *(v1 + 168);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v105[0] = v35;
      *v34 = 136315138;
      if (!v2)
      {
        v33 = 7104878;
      }

      v36 = sub_100141FE4(v33, v5, v105);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Server sent an unknown pending status code: %s", v34, 0xCu);
      sub_10000BB78(v35);

      (*(v30 + 8))(v104, v32);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

    (*(*(v1 + 104) + 104))(*(v1 + 112), enum case for DIPError.Code.invalidPendingActionsProofingStatusCode(_:), *(v1 + 96));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v37 = *(v1 + 112);
    v38 = *(v1 + 104);
    v100 = *(v1 + 96);
    v39 = *(v1 + 72);
    v40 = *(v1 + 80);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v41 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1006BF520;
    v44 = v43 + v42;
    v45 = (v44 + v41[14]);
    v46 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v47 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v47 - 8) + 104))(v44, v46, v47);
    v45[3] = &type metadata for String;
    v45[4] = &protocol witness table for String;
    *v45 = v39;
    v45[1] = v40;
    swift_errorRetain();

    sub_10003C9C0(v43);
    swift_setDeallocating();
    sub_10000BE18(v44, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v38 + 104))(v37, enum case for DIPError.Code.internalError(_:), v100);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v48 = *(v1 + 8);

    return v48();
  }

  v6 = v4;
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 48);
    v10 = *(v1 + 40);
    v11 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100141FE4(v10, v9, v105);
    *(v11 + 12) = 2080;
    v12 = IdentityTarget.debugDescription.getter();
    v14 = sub_100141FE4(v12, v13, v105);

    *(v11 + 14) = v14;
    *(v11 + 22) = 2080;
    v15 = 0xE700000000000000;
    v16 = 0x80000001006F8A70;
    v17 = 0xD000000000000018;
    v18 = 0x80000001006F8A90;
    if (v6 != 4)
    {
      v18 = 0x80000001006F8AB0;
    }

    if (v6 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = v18;
    }

    v19 = 0xE700000000000000;
    v20 = 0x45525F4D49414C43;
    if (v6 == 1)
    {
      v19 = 0xEB00000000594441;
    }

    else
    {
      v20 = 0x474E49444E4550;
    }

    if (v6)
    {
      v15 = v19;
    }

    else
    {
      v20 = 0x44455249505845;
    }

    if (v6 <= 2u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    if (v6 <= 2u)
    {
      v22 = v15;
    }

    else
    {
      v22 = v16;
    }

    v103 = *(v1 + 192);
    v24 = *(v1 + 152);
    v23 = *(v1 + 160);
    v25 = sub_100141FE4(v21, v22, v105);

    *(v11 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v7, v8, "updateProofingStatus called for proofingSessionID: %s and target: %s with status: %s", v11, 0x20u);
    swift_arrayDestroy();

    v26 = *(v23 + 8);
    v26(v103, v24);
  }

  else
  {
    v50 = *(v1 + 192);
    v51 = *(v1 + 152);
    v52 = *(v1 + 160);

    v26 = *(v52 + 8);
    v26(v50, v51);
  }

  if (v6 == 2)
  {
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (sub_1006933A0(0, *(v1 + 32)))
  {
    if (sub_1006933A0(4u, *(v1 + 32)))
    {
      v54 = 1;
    }

    else
    {
      v54 = 3;
    }

    goto LABEL_40;
  }

LABEL_39:
  v54 = 3;
LABEL_40:
  if (v6 >= 4u && (v6 != 4 ? (v55 = "PENDING_WORKFLOW") : (v55 = "ERROR_PROCESSING_REQUEST"), 0x80000001006F8A90 == (v55 | 0x8000000000000000)))
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  defaultLogger()();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v1 + 184);
  v61 = *(v1 + 152);
  if (v59)
  {
    v102 = *(v1 + 184);
    v62 = *(v1 + 257);
    v63 = swift_slowAlloc();
    v101 = v61;
    v64 = swift_slowAlloc();
    v105[0] = v64;
    *v63 = 136315138;
    *(v1 + 256) = v62;
    sub_100007224(&qword_10083E3D8, &qword_1006DBCD8);
    v65 = Optional.debugDescription.getter();
    v67 = v26;
    v68 = sub_100141FE4(v65, v66, v105);

    *(v63 + 4) = v68;
    v26 = v67;
    _os_log_impl(&_mh_execute_header, v57, v58, "the workflow type is %s", v63, 0xCu);
    sub_10000BB78(v64);

    v67(v102, v101);
  }

  else
  {

    v26(v60, v61);
  }

  v54 = *(v1 + 257);
  if (*(v1 + 257) > 1u)
  {
    if (v54 == 2)
    {
      v54 = 12;
    }
  }

  else if (*(v1 + 257))
  {
    v54 = 10;
  }

  else
  {
    v54 = 4;
  }

LABEL_57:
  if (v6 == 2)
  {
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v69 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if ((sub_1006933A0(4u, *(v1 + 32)) & 1) != 0 && (sub_1006933A0(0, *(v1 + 32)) & 1) == 0)
  {
    v54 = 0;
  }

LABEL_64:
  if (v6 == 3)
  {
  }

  else
  {
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v70 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v54 = 6;
LABEL_68:
  if (v6 == 1)
  {

LABEL_71:
    v54 = 2;
    goto LABEL_72;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
    goto LABEL_71;
  }

LABEL_72:
  *(v1 + 200) = v54;
  if (!v6)
  {

LABEL_75:
    *(v1 + 208) = *(*(v1 + 88) + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_expirationActionProvider);

    v73 = swift_task_alloc();
    *(v1 + 216) = v73;
    *v73 = v1;
    v73[1] = sub_10025882C;
    v74 = *(v1 + 56);
    v75 = *(v1 + 64);
    v77 = *(v1 + 40);
    v76 = *(v1 + 48);

    return sub_1002AD91C(v77, v76, v74, v75);
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v72)
  {
    goto LABEL_75;
  }

  if (v6 == 3)
  {
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {
LABEL_83:
      v82 = swift_task_alloc();
      *(v1 + 240) = v82;
      *v82 = v1;
      v82[1] = sub_100258B88;
      v83 = *(v1 + 200);
      v85 = *(v1 + 40);
      v84 = *(v1 + 48);

      return sub_1002667A8(v85, v84, v83);
    }
  }

  v79 = *(v1 + 128);
  v80 = *(v1 + 136);
  v81 = *(v1 + 120);
  sub_10025CDEC(*(v1 + 40), *(v1 + 48), v81);
  if ((*(v80 + 48))(v81, 1, v79) == 1)
  {
    sub_10000BE18(*(v1 + 120), &qword_10083BD28, &qword_1006DA240);
    goto LABEL_83;
  }

  v86 = *(v1 + 259);
  (*(*(v1 + 136) + 32))(*(v1 + 144), *(v1 + 120), *(v1 + 128));
  v87 = [objc_opt_self() standardUserDefaults];
  v88._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRetryableProofingErrorMessage.getter();
  v89 = NSUserDefaults.internalBool(forKey:)(v88);

  if (v89)
  {
    defaultLogger()();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "IdentityProofingPendingActionsFlow: forcing proofing error message to be retryable due to internal setting", v92, 2u);
    }

    v93 = *(v1 + 176);
    v94 = *(v1 + 152);

    v26(v93, v94);
    v86 = 1;
  }

  v95 = swift_task_alloc();
  *(v1 + 232) = v95;
  *v95 = v1;
  v95[1] = sub_1002589D8;
  v96 = *(v1 + 144);
  v97 = *(v1 + 48);
  v98 = *(v1 + 56);
  v99 = *(v1 + 40);

  return sub_100265CC8(v96, v99, v97, v98, v86 & 1);
}

uint64_t sub_10025882C()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002590BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002589D8()
{

  return _swift_task_switch(sub_100258AD4, 0, 0);
}

uint64_t sub_100258AD4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_100258B88;
  v2 = v0[25];
  v4 = v0[5];
  v3 = v0[6];

  return sub_1002667A8(v4, v3, v2);
}

uint64_t sub_100258B88()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100258D9C;
  }

  else
  {
    v2 = sub_100258C9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100258C9C()
{
  v1 = *(v0 + 258);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 260);

  sub_1002FCFB4(v3, v2, v4, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100258D9C()
{
  v1 = v0[14];
  v2 = v0[13];
  v14 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = (v8 + v5[14]);
  v10 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = v4;
  v9[1] = v3;
  swift_errorRetain();

  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v14);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002590BC()
{

  v1 = v0[14];
  v2 = v0[13];
  v14 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  v8 = v7 + v6;
  v9 = (v8 + v5[14]);
  v10 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  *v9 = v4;
  v9[1] = v3;
  swift_errorRetain();

  sub_10003C9C0(v7);
  swift_setDeallocating();
  sub_10000BE18(v8, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v14);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002593E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100007224(&qword_100835968, &qword_1006DBC90);
  v11 = __chkstk_darwin(v10 - 8);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  v16 = a1;
  sub_100267578(a1, v2 + v15, &qword_100835968, &qword_1006DBC90);
  swift_endAccess();
  sub_10000BBC4(v2 + v15, v14, &qword_100835968, &qword_1006DBC90);
  v17 = type metadata accessor for WorkflowRecommendationResponse(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v32 = v18 + 48;
  v33 = v19;
  LODWORD(a1) = v19(v14, 1, v17);
  sub_10000BE18(v14, &qword_100835968, &qword_1006DBC90);
  if (a1 == 1)
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "IdentityProofingPendingActionsFlow: updateProofingWorkflowStatus workflowRecommendationResponse is nil", v22, 2u);
    }

    return (*(v35 + 8))(v9, v36);
  }

  else
  {
    swift_beginAccess();
    sub_100267578(v16, v2 + v15, &qword_100835968, &qword_1006DBC90);
    swift_endAccess();
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Storing the workflow in the in-memory repository", v26, 2u);
    }

    (*(v35 + 8))(v7, v36);
    v27 = *(v2 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_actionsRepository);
    v28 = v34;
    sub_10000BBC4(v16, v34, &qword_100835968, &qword_1006DBC90);
    if (v33(v28, 1, v17) == 1)
    {

      v29 = sub_10000BE18(v28, &qword_100835968, &qword_1006DBC90);
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
    }

    else
    {
      *(&v38 + 1) = type metadata accessor for Workflow(0);
      v39 = &off_100808FE8;
      v30 = sub_100032DBC(&v37);
      sub_100269FE8(v28, v30, type metadata accessor for Workflow);

      v29 = sub_100267A1C(v28, type metadata accessor for WorkflowRecommendationResponse);
    }

    v31 = *(v27 + 16);
    __chkstk_darwin(v29);
    *(&v32 - 2) = &v37;
    os_unfair_lock_lock(v31 + 14);
    sub_1002675E0(&v31[4]);
    os_unfair_lock_unlock(v31 + 14);

    return sub_10000BE18(&v37, &qword_10083D0A0, &qword_1006DAFC0);
  }
}

uint64_t sub_100259898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8572] = v3;
  v4[8571] = a3;
  v4[8570] = a2;
  v4[8569] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[8573] = v5;
  v4[8574] = *(v5 - 8);
  v4[8575] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[8576] = v6;
  v4[8577] = *(v6 - 8);
  v4[8578] = swift_task_alloc();
  sub_100007224(&qword_100835968, &qword_1006DBC90);
  v4[8579] = swift_task_alloc();
  sub_100007224(&qword_10083E3D0, &qword_1006DBCA8);
  v4[8580] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v4[8581] = swift_task_alloc();
  v4[8582] = swift_task_alloc();
  v4[8583] = swift_task_alloc();
  sub_100007224(&qword_100835970, &unk_1006C1EA0);
  v4[8584] = swift_task_alloc();
  v7 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v4[8585] = v7;
  v4[8586] = *(v7 - 8);
  v4[8587] = swift_task_alloc();

  return _swift_task_switch(sub_100259B24, 0, 0);
}

void sub_100259B24()
{
  v1 = (v0 + 68552);
  v2 = *(v0 + 68664);
  sub_10000BBC4(*(v0 + 68552), v2, &unk_100840960, &qword_1006DBCB0);
  v3 = type metadata accessor for PendingActionContext(0);
  v4 = *(*(v3 - 1) + 48);
  v5 = v4(v2, 1, v3);
  v6 = *(v0 + 68680);
  v7 = *(v0 + 68688);
  v9 = *(v0 + 68664);
  v8 = *(v0 + 68672);
  if (v5 == 1)
  {
    sub_10000BE18(*(v0 + 68664), &unk_100840960, &qword_1006DBCB0);
    (*(v7 + 56))(v8, 1, 1, v6);
LABEL_4:
    v11 = *(v0 + 68592);
    v10 = *(v0 + 68600);
    v12 = *(v0 + 68584);
    sub_10000BE18(*(v0 + 68672), &qword_100835970, &unk_1006C1EA0);
    (*(v11 + 104))(v10, enum case for DIPError.Code.missingLivenessStepUpConfig(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = *(v0 + 8);

    v13();
    return;
  }

  sub_10000BBC4(v9 + v3[29], *(v0 + 68672), &qword_100835970, &unk_1006C1EA0);
  sub_100267A1C(v9, type metadata accessor for PendingActionContext);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v14 = *(v0 + 68576);
  (*(*(v0 + 68688) + 32))(*(v0 + 68696), *(v0 + 68672), *(v0 + 68680));
  if (*(v14 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessConfigProvider))
  {
    v15 = *(v0 + 68696);
    v17 = *(v0 + 68560);
    v16 = *(v0 + 68568);

    v18 = sub_1002BDE0C(v15, v17, v16);
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 68704) = 0;
  v19 = *(v0 + 68656);
  v20 = *(v0 + 68576);
  v21 = *v1;
  v22 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig;
  *(v0 + 68712) = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig;
  v23 = *(v20 + v22);
  *(v20 + v22) = v18;

  sub_10000BBC4(v21, v19, &unk_100840960, &qword_1006DBCB0);
  v24 = v4(v19, 1, v3);
  v25 = *(v0 + 68656);
  if (v24 == 1)
  {
    sub_10000BE18(*(v0 + 68656), &unk_100840960, &qword_1006DBCB0);
  }

  else
  {
    memcpy((v0 + 42936), (v25 + v3[30]), 0x2181uLL);
    sub_10000BBC4(v0 + 42936, v0 + 51520, &qword_100839990, &unk_1006C19E0);
    sub_100267A1C(v25, type metadata accessor for PendingActionContext);
    memcpy((v0 + 34352), (v0 + 42936), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 34352) != 1)
    {
      v58 = *(v0 + 42920);
      v57 = *(v0 + 42928);
      v56 = *(v0 + 42904);
      v55 = *(v0 + 42912);
      v53 = *(v0 + 41840);
      v54 = *(v0 + 41836);
      v52 = *(v0 + 41824);
      v51 = *(v0 + 41832);
      v50 = *(v0 + 41808);
      v49 = *(v0 + 41816);
      v48 = *(v0 + 41792);
      v47 = *(v0 + 41800);
      v46 = *(v0 + 41776);
      v45 = *(v0 + 41784);
      v43 = *(v0 + 41772);
      v44 = *(v0 + 41768);
      v36 = *(v0 + 41760);
      memcpy((v0 + 67496), (v0 + 34368), 0x41BuLL);
      memcpy((v0 + 66440), (v0 + 35424), 0x41BuLL);
      memcpy((v0 + 65384), (v0 + 36480), 0x41BuLL);
      memcpy((v0 + 64328), (v0 + 37536), 0x41BuLL);
      memcpy((v0 + 63272), (v0 + 38592), 0x41BuLL);
      memcpy((v0 + 62216), (v0 + 39648), 0x41BuLL);
      memcpy((v0 + 61160), (v0 + 40704), 0x41BuLL);
      memcpy((v0 + 60104), (v0 + 41848), 0x41BuLL);
      *(v0 + 25768) = *(v0 + 34352);
      memcpy((v0 + 25784), (v0 + 67496), 0x41BuLL);
      memcpy((v0 + 26840), (v0 + 66440), 0x41BuLL);
      memcpy((v0 + 27896), (v0 + 65384), 0x41BuLL);
      memcpy((v0 + 28952), (v0 + 64328), 0x41BuLL);
      memcpy((v0 + 30008), (v0 + 63272), 0x41BuLL);
      memcpy((v0 + 31064), (v0 + 62216), 0x41BuLL);
      memcpy((v0 + 32120), (v0 + 61160), 0x41BuLL);
      *(v0 + 33176) = v36;
      *(v0 + 33184) = v44;
      *(v0 + 33188) = v43;
      *(v0 + 33192) = v46;
      *(v0 + 33200) = v45;
      *(v0 + 33208) = v48;
      *(v0 + 33216) = v47;
      *(v0 + 33224) = v50;
      *(v0 + 33232) = v49;
      *(v0 + 33240) = v52;
      *(v0 + 33248) = v51;
      *(v0 + 33252) = v54;
      *(v0 + 33256) = v53;
      memcpy((v0 + 33264), (v0 + 60104), 0x41BuLL);
      *(v0 + 34320) = v56;
      *(v0 + 34328) = v55;
      *(v0 + 34336) = v58;
      *(v0 + 34344) = v57;
      memcpy((v0 + 16), (v0 + 25768), 0x2181uLL);
      type metadata accessor for IdentityProofingImageQualitySettingsProvider();
      v37 = swift_allocObject();
      *(v37 + 16) = vdupq_n_s64(5uLL);
      *(v37 + 32) = 5;
      *(v37 + 40) = 1036831949;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      *(v37 + 48) = JSONEncoder.init()();
      *(v37 + 56) = xmmword_1006DAFF0;
      sub_1002B2220(v0 + 16);
    }
  }

  v26 = *(v0 + 68648);
  sub_10000BBC4(*v1, v26, &unk_100840960, &qword_1006DBCB0);
  v27 = v4(v26, 1, v3);
  v28 = *(v0 + 68648);
  if (v27 == 1)
  {
    v29 = &unk_100840960;
    v30 = &qword_1006DBCB0;
  }

  else
  {
    v31 = *(v0 + 68632);
    v32 = v3[18];
    v33 = *(v0 + 68648);
    sub_10000BBC4(v28 + v32, v31, &qword_100835968, &qword_1006DBC90);
    sub_100267A1C(v33, type metadata accessor for PendingActionContext);
    v34 = type metadata accessor for WorkflowRecommendationResponse(0);
    if ((*(*(v34 - 8) + 48))(v31, 1, v34) != 1)
    {
      v38 = *(v0 + 68632);
      sub_100269FE8(v38, *(v0 + 68640), type metadata accessor for Workflow);
      sub_100267A1C(v38, type metadata accessor for WorkflowRecommendationResponse);
      v35 = 0;
      goto LABEL_20;
    }

    v28 = *(v0 + 68632);
    v29 = &qword_100835968;
    v30 = &qword_1006DBC90;
  }

  sub_10000BE18(v28, v29, v30);
  v35 = 1;
LABEL_20:
  v39 = *(v0 + 68640);
  v40 = type metadata accessor for Workflow(0);
  (*(*(v40 - 8) + 56))(v39, v35, 1, v40);
  v41 = swift_task_alloc();
  *(v0 + 68720) = v41;
  *v41 = v0;
  v41[1] = sub_10025A6B8;
  v42 = *(v0 + 68640);

  sub_10025E1F4(v0 + 17184, v42);
}

uint64_t sub_10025A6B8()
{
  v1 = *(*v0 + 68640);

  sub_10000BE18(v1, &qword_10083E3D0, &qword_1006DBCA8);

  return _swift_task_switch(sub_10025A7F0, 0, 0);
}

void sub_10025A7F0()
{
  memcpy((v0 + 8600), (v0 + 17184), 0x2181uLL);
  if (sub_1001B6DC0(v0 + 8600) != 1)
  {
    v11 = *(v0 + 8600);
    v12 = *(v0 + 8608);
    memcpy((v0 + 67496), (v0 + 8616), 0x41BuLL);
    v17 = *(v0 + 16008);
    v15 = *(v0 + 16020);
    v16 = *(v0 + 16016);
    v19 = *(v0 + 16024);
    v18 = *(v0 + 16032);
    v21 = *(v0 + 16040);
    v20 = *(v0 + 16048);
    v23 = *(v0 + 16056);
    v22 = *(v0 + 16064);
    v25 = *(v0 + 16072);
    v24 = *(v0 + 16080);
    v26 = *(v0 + 16088);
    v27 = *(v0 + 16084);
    v30 = *(v0 + 17152);
    v31 = *(v0 + 17168);
    v28 = *(v0 + 17176);
    v29 = *(v0 + 17160);
    memcpy((v0 + 60104), (v0 + 16096), 0x41BuLL);
    memcpy((v0 + 61160), (v0 + 14952), 0x41BuLL);
    memcpy((v0 + 62216), (v0 + 13896), 0x41BuLL);
    memcpy((v0 + 63272), (v0 + 12840), 0x41BuLL);
    memcpy((v0 + 64328), (v0 + 11784), 0x41BuLL);
    memcpy((v0 + 65384), (v0 + 10728), 0x41BuLL);
    memcpy((v0 + 66440), (v0 + 9672), 0x41BuLL);
    *(v0 + 25768) = v11;
    *(v0 + 25776) = v12;
    memcpy((v0 + 25784), (v0 + 8616), 0x41BuLL);
    memcpy((v0 + 26840), (v0 + 9672), 0x41BuLL);
    memcpy((v0 + 27896), (v0 + 10728), 0x41BuLL);
    memcpy((v0 + 28952), (v0 + 11784), 0x41BuLL);
    memcpy((v0 + 30008), (v0 + 12840), 0x41BuLL);
    memcpy((v0 + 31064), (v0 + 13896), 0x41BuLL);
    memcpy((v0 + 32120), (v0 + 14952), 0x41BuLL);
    *(v0 + 33176) = v17;
    *(v0 + 33184) = v16;
    *(v0 + 33188) = v15 & 1;
    *(v0 + 33192) = v19;
    *(v0 + 33200) = v18 & 1;
    *(v0 + 33208) = v21;
    *(v0 + 33216) = v20 & 1;
    *(v0 + 33224) = v23;
    *(v0 + 33232) = v22 & 1;
    *(v0 + 33240) = v25;
    *(v0 + 33248) = v24 & 1;
    *(v0 + 33252) = v27;
    *(v0 + 33256) = v26 & 1;
    memcpy((v0 + 33264), (v0 + 16096), 0x41BuLL);
    *(v0 + 34320) = v30;
    *(v0 + 34328) = v29 & 1;
    *(v0 + 34336) = v31;
    *(v0 + 34344) = v28 & 1;
    memcpy((v0 + 16), (v0 + 25768), 0x2181uLL);
    type metadata accessor for IdentityProofingImageQualitySettingsProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = vdupq_n_s64(5uLL);
    *(v13 + 32) = 5;
    *(v13 + 40) = 1036831949;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    *(v13 + 48) = JSONEncoder.init()();
    *(v13 + 56) = xmmword_1006DAFF0;
    sub_1002B2220(v0 + 16);
  }

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 68688);
  v4 = *(v0 + 68696);
  v6 = *(v0 + 68680);
  v7 = *(v0 + 68616);
  v8 = *(v0 + 68624);
  v9 = *(v0 + 68608);
  if (v3)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch new IQ Model for Liveness Step Up.", v10, 2u);
  }

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);

  v14 = *(v0 + 8);

  v14();
}

uint64_t sub_10025AE6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 784) = a4;
  *(v5 + 496) = a3;
  *(v5 + 504) = v4;
  *(v5 + 480) = a1;
  *(v5 + 488) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 512) = v6;
  *(v5 + 520) = *(v6 - 8);
  *(v5 + 528) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 536) = v7;
  *(v5 + 544) = *(v7 - 8);
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v8 = type metadata accessor for ProofingSession();
  *(v5 + 568) = v8;
  *(v5 + 576) = *(v8 - 8);
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 592) = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  *(v5 + 600) = swift_task_alloc();
  *(v5 + 608) = swift_task_alloc();
  sub_100007224(&qword_100835968, &qword_1006DBC90);
  *(v5 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_10025B078, 0, 0);
}

uint64_t sub_10025B078()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 504);
  v3 = type metadata accessor for WorkflowRecommendationResponse(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse;
  swift_beginAccess();
  sub_1000B2764(v1, v2 + v4, &qword_100835968, &qword_1006DBC90);
  swift_endAccess();
  v5 = sub_10003D358(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v2 + 24) = v5;

  if (*(v2 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) == 2)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_1002FA15C();
LABEL_5:
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v7 + 54);
  sub_1000318FC(&v7[4], v0 + 16);
  os_unfair_lock_unlock(v7 + 54);
  v8 = *(v0 + 784);
  v9 = *(v0 + 488);
  v10 = *(v0 + 496);
  v11 = *(v0 + 480);
  *(v0 + 624) = *(v0 + 72);

  sub_100031918(v0 + 16);
  v12 = swift_allocObject();
  *(v0 + 632) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v8 & 1;
  *(v12 + 32) = v11;
  *(v12 + 40) = v9;
  v13 = swift_allocObject();
  *(v0 + 640) = v13;
  *(v13 + 16) = sub_1002674D4;
  *(v13 + 24) = v12;

  v14 = swift_task_alloc();
  *(v0 + 648) = v14;
  *v14 = v0;
  v14[1] = sub_10025B3D8;
  v15 = *(v0 + 608);
  v16 = *(v0 + 592);

  return AsyncCoreDataContainer.performRead<A>(_:)(v15, sub_10017F710, v13, v16);
}

uint64_t sub_10025B3D8()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_10025BB1C;
  }

  else
  {

    v2 = sub_10025B50C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025B50C()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[71];
  sub_10000BBC4(v0[76], v1, &qword_10083DC18, &unk_1006DB720);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[75];
    sub_10000BE18(v0[76], &qword_10083DC18, &unk_1006DB720);
LABEL_22:
    sub_10000BE18(v4, &qword_10083DC18, &unk_1006DB720);

    v38 = v0[1];

    return v38(0);
  }

  (*(v0[72] + 32))(v0[73], v0[75], v0[71]);
  v5 = ProofingSession.proofingSessionID.getter();
  v0[83] = v5;
  v0[84] = v6;
  if (!v6)
  {
    v4 = v0[76];
    (*(v0[72] + 8))(v0[73], v0[71]);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = v5;
  v9 = ProofingSession.workflowID.getter();
  v0[85] = v9;
  v0[86] = v10;
  if (!v10)
  {
    v4 = v0[76];
    v35 = v0[73];
    v36 = v0[72];
    v37 = v0[71];

    (*(v36 + 8))(v35, v37);
    goto LABEL_22;
  }

  v11 = v10;
  v12 = v9;
  ProofingSession.target.getter();
  v0[87] = IdentityTarget.init(rawValue:)();
  if ((v13 & 1) != 0 || (v0[88] = ProofingSession.credentialIdentifier.getter(), (v0[89] = v14) == 0))
  {
    v4 = v0[76];
    v32 = v0[73];
    v33 = v0[72];
    v34 = v0[71];

    (*(v33 + 8))(v32, v34);
    goto LABEL_22;
  }

  ProofingSession.documentType.getter();
  if (v15)
  {
    v0[90] = IdentityDocumentType.init(documentTypeString:)();
    v16 = ProofingSession.country.getter();
    v18 = v17;
    v0[91] = v17;
    v48 = ProofingSession.lastExecutedActionIdentifier.getter();
    v0[92] = v19;
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Preparing pending actions request", v22, 2u);
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    if (v18)
    {
      v24 = v16;
    }

    else
    {
      v24 = 0;
    }

    v46 = v24;
    v47 = v23;
    v25 = v0[70];
    v26 = v0[68];
    v27 = v0[67];
    v28 = v0[63];

    v29 = *(v26 + 8);
    v0[93] = v29;
    v29(v25, v27);
    sub_10000BA08((v28 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService), *(v28 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService + 24));
    v30 = swift_task_alloc();
    v0[94] = v30;
    *v30 = v0;
    v30[1] = sub_10025BC00;

    return sub_10026CC1C((v0 + 27), v46, v47, v12, v11, v8, v7, v48);
  }

  else
  {
    v49 = v0[76];
    v39 = v0[73];
    v40 = v0[72];
    v41 = v0[71];
    v42 = v0[66];
    v43 = v0[65];
    v44 = v0[64];

    (*(v43 + 104))(v42, enum case for DIPError.Code.unexpectedIDType(_:), v44);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v40 + 8))(v39, v41);
    sub_10000BE18(v49, &qword_10083DC18, &unk_1006DB720);

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_10025BB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10025BC00()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_10025BE98;
  }

  else
  {
    v2 = sub_10025BD14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025BD14()
{
  v1 = v0[95];
  sub_10025D7E8((v0 + 27), v0[83], v0[84], v0[87]);
  if (v1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to store the document sub type", v4, 2u);
    }

    v5 = v0[93];
    v6 = v0[69];
    v7 = v0[67];

    v5(v6, v7);
  }

  v8 = v0[84];
  v9 = swift_task_alloc();
  v0[96] = v9;
  *v9 = v0;
  v9[1] = sub_10025C2D4;
  v10 = v0[87];
  v11 = v0[83];

  return sub_100230F44((v0 + 27), v11, v8, v10);
}

uint64_t sub_10025BE98()
{
  v1 = v0[90];
  v16 = v0[85];
  v17 = v0[86];
  v24 = v0[76];
  v23 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v19 = v0[65];
  v20 = v0[66];
  v18 = v0[64];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = v5 + v4;
  v7 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = 0x61746E6567616DLL;
  if (v1 == 3)
  {
    v10 = 0x6E6F736D697263;
  }

  v11 = *(v2 + 48);
  v12 = (v6 + v11);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v10;
  v12[1] = 0xE700000000000000;
  v13 = (v6 + v3 + v11);
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v16;
  v13[1] = v17;

  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v19 + 104))(v20, enum case for DIPError.Code.internalError(_:), v18);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v21 + 8))(v23, v22);
  sub_10000BE18(v24, &qword_10083DC18, &unk_1006DB720);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10025C2D4()
{
  v2 = *v1;
  *(v2 + 776) = v0;

  sub_1000B1D80(v2 + 216);
  if (v0)
  {
    v3 = sub_10025C694;
  }

  else
  {
    v3 = sub_10025C3F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10025C3F0()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[84];
  v4 = v0[83];
  v19 = v0[73];
  v20 = v0[76];
  v5 = v0[72];
  v17 = v0[89];
  v18 = v0[71];

  _StringGuts.grow(_:)(61);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x8000000100707730;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v4;
  v7._object = v3;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x72617420726F6620;
  v8._object = 0xED0000203A746567;
  String.append(_:)(v8);
  v9._countAndFlagsBits = IdentityTarget.debugDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0;
  v11._countAndFlagsBits = 0x3964373763333437;
  v11._object = 0xE800000000000000;
  v10._object = 0xE000000000000000;
  logMilestone(tag:description:)(v11, v10);

  sub_100007224(&qword_10083E3C0, &qword_1006DBC98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100707760;
  type metadata accessor for IdentityProofingMetadata();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = v3;
  v13[4] = v2;
  v13[5] = v1;
  v13[6] = v17;
  *(inited + 48) = v13;
  v14 = sub_10003DF7C(inited);
  swift_setDeallocating();
  sub_10000BE18(inited + 32, &qword_10083E3C8, &qword_1006DBCA0);
  (*(v5 + 8))(v19, v18);
  sub_10000BE18(v20, &qword_10083DC18, &unk_1006DB720);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_10025C694()
{
  v1 = v0[90];
  v16 = v0[85];
  v17 = v0[86];
  v24 = v0[76];
  v23 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v19 = v0[65];
  v20 = v0[66];
  v18 = v0[64];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = v5 + v4;
  v7 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = 0x61746E6567616DLL;
  if (v1 == 3)
  {
    v10 = 0x6E6F736D697263;
  }

  v11 = *(v2 + 48);
  v12 = (v6 + v11);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v10;
  v12[1] = 0xE700000000000000;
  v13 = (v6 + v3 + v11);
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  *v13 = v16;
  v13[1] = v17;

  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v19 + 104))(v20, enum case for DIPError.Code.internalError(_:), v18);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v21 + 8))(v23, v22);
  sub_10000BE18(v24, &qword_10083DC18, &unk_1006DB720);

  v14 = v0[1];

  return v14();
}

unint64_t sub_10025CAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    if (a5)
    {
      result = sub_1005792EC(a4, a5, a2);
      if (v6)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_18;
  }

  if (!a5)
  {
LABEL_18:
    v28 = type metadata accessor for ProofingSession();
    return (*(*(v28 - 8) + 56))(a6, 1, 1, v28);
  }

  v31 = a1;
  v32 = v15;
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = a6;
    v22 = v21;
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(a4, a5, &v33);
    _os_log_impl(&_mh_execute_header, v18, v19, "Requesting pending actions with proofingSessionID: %s", v20, 0xCu);
    sub_10000BB78(v22);
    a6 = v30;
  }

  (*(v14 + 8))(v17, v32);
  result = sub_1005791C8(a4, a5);
  if (v6)
  {
    return result;
  }

  if (result >> 62)
  {
    v26 = result;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    result = v26;
    if (v27)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(result + 32);
LABEL_11:

LABEL_15:
    ProofingSession.init(_:)();
    v25 = type metadata accessor for ProofingSession();
    return (*(*(v25 - 8) + 56))(a6, 0, 1, v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_10025CDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRemoveDisplayMessageAction.getter();
  v14 = NSUserDefaults.internalBool(forKey:)(v13);

  if (v14)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Internal setting for forceRemoveDisplayMessageAction has been enabled", v17, 2u);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    swift_beginAccess();
    v18 = *(v4 + 24);
    if (*(v18 + 16))
    {

      v19 = sub_10003ADCC(a1, a2);
      if (v20)
      {
        v21 = v19;
        v22 = *(v18 + 56);
        v23 = type metadata accessor for IdentityProofingDisplayMessage();
        v24 = *(v23 - 8);
        (*(v24 + 16))(a3, v22 + *(v24 + 72) * v21, v23);

        return (*(v24 + 56))(a3, 0, 1, v23);
      }
    }
  }

  v26 = type metadata accessor for IdentityProofingDisplayMessage();
  return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
}

char *sub_10025D0C4()
{
  v1 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpConfig);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_livenessStepUpIQSettings);
    if (v6)
    {
      v4 = v5;
      v7 = v6;
    }

    else
    {
      (*(v2 + 104))(v4, enum case for DIPError.Code.invalidImageQualitySettings(_:));
      v8 = v5;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v2 + 104))(v4, enum case for DIPError.Code.missingLivenessStepUpConfig(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10025D3BC()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_workflowRecommendationResponse, &qword_100835968, &qword_1006DBC90);
  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService, &unk_100833B60, &qword_1006BF9E0);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_pendingActionsWebService));

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_staticWorkflow, &qword_10083D4B0, &qword_1006DC940);

  return v0;
}

uint64_t sub_10025D514()
{
  sub_10025D3BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingPendingActionsFlow(uint64_t a1)
{
  result = qword_10083E010;
  if (!qword_10083E010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025D5C0(uint64_t a1)
{
  sub_10025D72C(319, &qword_100835A00, type metadata accessor for WorkflowRecommendationResponse);
  if (v1 <= 0x3F)
  {
    sub_10025D72C(319, &qword_10083D100, type metadata accessor for IdentityProofingStaticWorkflow);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10025D72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10025D794()
{
  result = qword_10083E3B8;
  if (!qword_10083E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083E3B8);
  }

  return result;
}

void sub_10025D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v34 = a1;
  v5 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v11;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Attempting to save the ID Type sent from the server", v16, 2u);
    v11 = v30;
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  if (*(v34 + 152) == 1 || (v18 = *(v34 + 136), v18 == 3))
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "ID TYPE not sent from the server", v28, 2u);
    }

    v17(v11, v7);
  }

  else
  {
    v19 = qword_1006DBE80[v18];
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    v20 = v35;
    sub_10057E28C();
    if (!v20)
    {
      v22 = v21;
      v23 = swift_allocObject();
      v25 = v32;
      v24 = v33;
      v23[2] = v22;
      v23[3] = v25;
      v23[4] = a3;
      v23[5] = v24;
      v23[6] = v19;

      sub_10057C18C(sub_100267538, v23);
    }
  }
}

unint64_t sub_10025DC8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F86A0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10025DCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a3;
  v19 = a2;
  v5 = type metadata accessor for Logger();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = __chkstk_darwin(v5);
  v24 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for ActionRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v13 = v12;
  sub_100269FE8(a1, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionRequest);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v17 = v19;
  v16 = v20;
  v15[2] = v13;
  v15[3] = v17;
  v15[4] = v21;
  v15[5] = v16;
  sub_100269F80(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ActionRequest);

  sub_10057C18C(sub_100269E0C, v15);
}

uint64_t sub_10025E1F4(uint64_t a1, uint64_t a2)
{
  v2[3261] = a2;
  v2[3260] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[3262] = v3;
  v2[3263] = *(v3 - 8);
  v2[3264] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[3265] = v4;
  v2[3266] = *(v4 - 8);
  v2[3267] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[3268] = v5;
  v2[3269] = *(v5 - 8);
  v2[3270] = swift_task_alloc();
  v2[3271] = swift_task_alloc();
  v2[3272] = swift_task_alloc();
  v2[3273] = swift_task_alloc();
  v6 = type metadata accessor for Locale.Language();
  v2[3274] = v6;
  v2[3275] = *(v6 - 8);
  v2[3276] = swift_task_alloc();
  sub_100007224(&qword_10083DC48, &unk_1006DB7B0);
  v2[3277] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v2[3278] = v7;
  v2[3279] = *(v7 - 8);
  v2[3280] = swift_task_alloc();
  v2[3281] = swift_task_alloc();
  sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v2[3282] = swift_task_alloc();
  sub_100007224(&qword_10083E3D0, &qword_1006DBCA8);
  v2[3283] = swift_task_alloc();

  return _swift_task_switch(sub_10025E500, 0, 0);
}

uint64_t sub_10025E500()
{
  v92 = v0;
  v1 = *(v0 + 26264);
  sub_10000BBC4(*(v0 + 26088), v1, &qword_10083E3D0, &qword_1006DBCA8);
  v2 = type metadata accessor for Workflow(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 26160);
    v4 = *(v0 + 26152);
    v5 = *(v0 + 26144);
    v6 = *(v0 + 26112);
    v7 = *(v0 + 26104);
    v8 = *(v0 + 26096);
    sub_10000BE18(*(v0 + 26264), &qword_10083E3D0, &qword_1006DBCA8);
    (*(v7 + 104))(v6, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v4 + 8))(v3, v5);

    sub_1000F09E4((v0 + 16));
    v89 = *(v0 + 26080);

    memcpy(v89, (v0 + 16), 0x2181uLL);
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 26264);
  v88 = *v11;
  v90 = v11[1];

  sub_100267A1C(v11, type metadata accessor for Workflow);
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 infoDictionary];

  if (!v13 || (v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v13, !v14))
  {
    v17 = 0xE700000000000000;
    v86 = 0x6E776F6E6B6E75;
    v87 = 0xE700000000000000;
    v84 = 0x6E776F6E6B6E75;
LABEL_13:
    v85 = v17;
    goto LABEL_21;
  }

  if (*(v14 + 16))
  {

    v15 = sub_10003ADCC(0xD000000000000011, 0x8000000100706F10);
    if (v16)
    {
      sub_10001F2EC(*(v14 + 56) + 32 * v15, v0 + 25984);

      if (swift_dynamicCast())
      {
        v86 = *(v0 + 26064);
        v87 = *(v0 + 26072);
        if (!*(v14 + 16))
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v86 = 0x6E776F6E6B6E75;
  v87 = 0xE700000000000000;
  if (!*(v14 + 16))
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_16:
  v18 = sub_10003ADCC(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v19 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_10001F2EC(*(v14 + 56) + 32 * v18, v0 + 26016);

  if (swift_dynamicCast())
  {
    v84 = *(v0 + 26048);
    v17 = *(v0 + 26056);
    goto LABEL_13;
  }

LABEL_20:
  v84 = 0x6E776F6E6B6E75;
  v85 = 0xE700000000000000;
LABEL_21:
  v20 = *(v0 + 26256);
  v21 = *(v0 + 26248);
  v22 = *(v0 + 26232);
  v23 = *(v0 + 26224);
  static Locale.current.getter();
  Locale.region.getter();
  v24 = *(v22 + 8);
  v24(v21, v23);
  v25 = type metadata accessor for Locale.Region();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v20, 1, v25);
  v28 = *(v0 + 26256);
  if (v27 == 1)
  {
    sub_10000BE18(*(v0 + 26256), &unk_100849BA0, &qword_1006D95F0);
    v82 = 0x6E776F6E6B6E75;
    v83 = 0xE700000000000000;
  }

  else
  {
    v82 = Locale.Region.identifier.getter();
    v83 = v29;
    (*(v26 + 8))(v28, v25);
  }

  v30 = *(v0 + 26240);
  v31 = *(v0 + 26224);
  v32 = *(v0 + 26216);
  v33 = *(v0 + 26208);
  v34 = *(v0 + 26200);
  v35 = *(v0 + 26192);
  static Locale.current.getter();
  Locale.language.getter();
  v24(v30, v31);
  Locale.Language.languageCode.getter();
  (*(v34 + 8))(v33, v35);
  v36 = type metadata accessor for Locale.LanguageCode();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v32, 1, v36);
  v39 = *(v0 + 26216);
  if (v38 == 1)
  {
    sub_10000BE18(*(v0 + 26216), &qword_10083DC48, &unk_1006DB7B0);
    v81 = 0xE700000000000000;
    v40 = 0x6E776F6E6B6E75;
  }

  else
  {
    v40 = Locale.LanguageCode.identifier.getter();
    v81 = v41;
    (*(v37 + 8))(v39, v36);
  }

  v42 = [objc_opt_self() standardUserDefaults];
  v43._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIMQModelBucket.getter();
  v44 = NSUserDefaults.internalString(forKey:)(v43);

  if (!v44.value._object)
  {
LABEL_30:
    if (isInternalBuild()())
    {
      defaultLogger()();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 26176);
      v50 = *(v0 + 26152);
      v51 = *(v0 + 26144);
      if (v48)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Using internal build imq bucket", v52, 2u);
      }

      (*(v50 + 8))(v49, v51);
      v53 = 3;
    }

    else
    {
      defaultLogger()();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 26168);
      v58 = *(v0 + 26152);
      v59 = *(v0 + 26144);
      if (v56)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Using production imq bucket", v60, 2u);
      }

      (*(v58 + 8))(v57, v59);
      v53 = 1;
    }

    goto LABEL_40;
  }

  v45 = sub_100082140(v44.value);
  if (v45 == 4)
  {

    goto LABEL_30;
  }

  v53 = v45;
  defaultLogger()();

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 26184);
  v65 = *(v0 + 26152);
  v80 = *(v0 + 26144);
  if (v63)
  {
    v79 = v40;
    v66 = swift_slowAlloc();
    v78 = v64;
    v67 = swift_slowAlloc();
    v91 = v67;
    *v66 = 136315138;
    v68 = sub_100141FE4(v44.value._countAndFlagsBits, v44.value._object, &v91);

    *(v66 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v61, v62, "Forcing imq profile bucket %s from internal settings", v66, 0xCu);
    sub_10000BB78(v67);

    v40 = v79;

    (*(v65 + 8))(v78, v80);
  }

  else
  {

    (*(v65 + 8))(v64, v80);
  }

LABEL_40:
  v69 = *(v0 + 26136);
  v70 = *(v0 + 26128);
  v71 = *(v0 + 26120);
  *(v0 + 25856) = v88;
  *(v0 + 25864) = v90;
  *(v0 + 25872) = v86;
  *(v0 + 25880) = v87;
  *(v0 + 25888) = v84;
  *(v0 + 25896) = v85;
  *(v0 + 25904) = v82;
  *(v0 + 25912) = v83;
  *(v0 + 25920) = v40;
  *(v0 + 25936) = v53;
  *(v0 + 25928) = v81;
  v72 = *(v0 + 25872);
  *(v0 + 25768) = *(v0 + 25856);
  *(v0 + 25784) = v72;
  v73 = *(v0 + 25888);
  v74 = *(v0 + 25904);
  v75 = *(v0 + 25920);
  *(v0 + 25848) = v53;
  *(v0 + 25816) = v74;
  *(v0 + 25832) = v75;
  *(v0 + 25800) = v73;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 26272) = v76;
  (*(v70 + 8))(v69, v71);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v77 = swift_task_alloc();
  *(v0 + 26280) = v77;
  *v77 = v0;
  v77[1] = sub_10025F024;

  return sub_1005FB45C(v0 + 25944, 0, 0, 0, 0);
}

uint64_t sub_10025F024(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  v2[3286] = a1;

  sub_10000BB78(v2 + 3243);
  v3 = swift_task_alloc();
  v2[3287] = v3;
  *v3 = v5;
  v3[1] = sub_10025F1A0;

  return sub_1005ECD74((v2 + 1075), (v2 + 3221));
}

uint64_t sub_10025F1A0()
{
  v2 = *v1;
  *(v2 + 26304) = v0;

  if (v0)
  {

    sub_1000AFF90(v2 + 25856);

    return _swift_task_switch(sub_10025F400, 0, 0);
  }

  else
  {
    v3 = *(v2 + 26288);
    sub_1000AFF90(v2 + 25856);

    memcpy((v2 + 17184), (v2 + 8600), 0x2181uLL);
    nullsub_7();
    memcpy((v2 + 16), (v2 + 17184), 0x2181uLL);
    __dst = *(v2 + 26080);

    memcpy(__dst, (v2 + 16), 0x2181uLL);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10025F400()
{
  v1 = *(v0 + 26160);
  v2 = *(v0 + 26152);
  __dst = *(v0 + 26144);
  (*(*(v0 + 26104) + 104))(*(v0 + 26112), enum case for DIPError.Code.internalError(_:), *(v0 + 26096));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, __dst);

  sub_1000F09E4((v0 + 16));
  __dsta = *(v0 + 26080);

  memcpy(__dsta, (v0 + 16), 0x2181uLL);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10025F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[73] = a4;
  v4[72] = a3;
  v4[71] = a2;
  v4[70] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[74] = v5;
  v4[75] = *(v5 - 8);
  v4[76] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v4[77] = v6;
  v4[78] = *(v6 - 8);
  v4[79] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[80] = v7;
  v4[81] = *(v7 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();

  return _swift_task_switch(sub_10025F810, 0, 0);
}

uint64_t sub_10025F810(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[83];
  v6 = v1[81];
  v7 = v1[80];
  if (v4)
  {
    v8 = v1[71];
    v9 = v1[70];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "Storing PII hash in keychain with identifier: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v6 + 8);
  v12(v5, v7);
  v1[84] = v12;
  if (v1[73])
  {
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v13 = *(qword_100882228 + 16);
    v1[85] = v13;
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v1[86] = v15;

    v1[2] = v1;
    v1[7] = v1 + 66;
    v1[3] = sub_10025FC38;
    v16 = swift_continuation_init();
    v17 = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
    v1[87] = v17;
    v1[41] = v17;
    v1[34] = _NSConcreteStackBlock;
    v1[35] = 1107296256;
    v1[36] = sub_100672A4C;
    v1[37] = &unk_10080B2A8;
    v1[38] = v16;
    [v14 retrievePIIHashFromSyncableKeyStoreForIdentifier:v15 keystoreType:0 completion:v1 + 34];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    (*(v1[75] + 104))(v1[76], enum case for DIPError.Code.failedTOStorePIIHashInKeychainCredentialIDIsNil(_:), v1[74]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_10025FC38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 704) = v1;
  if (v1)
  {
    v2 = sub_100260754;
  }

  else
  {
    v2 = sub_10025FD48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10025FD48()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);

  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;

  *(v0 + 712) = v4;
  *(v0 + 720) = v6;
  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    v7 = *(v0 + 680);
    (*(*(v0 + 600) + 104))(*(v0 + 608), enum case for DIPError.Code.failedToStoreHashIsNil(_:), *(v0 + 592));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 696);
    v11 = *(v0 + 680);
    v15 = *(v0 + 560);
    v16 = *(v0 + 568);

    v12._countAndFlagsBits = 0x7361682D6969702DLL;
    v12._object = 0xE900000000000068;
    String.append(_:)(v12);
    *(v0 + 728) = v15;
    *(v0 + 736) = v16;
    v13 = String._bridgeToObjectiveC()();
    *(v0 + 744) = v13;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 544;
    *(v0 + 88) = sub_100260098;
    v14 = swift_continuation_init();
    *(v0 + 392) = v10;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100672A4C;
    *(v0 + 360) = &unk_10080B2D0;
    *(v0 + 368) = v14;
    [v11 retrievePIIHashFromSyncableKeyStoreForIdentifier:v13 keystoreType:1 completion:v0 + 336];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100260098()
{
  v1 = *(*v0 + 112);
  *(*v0 + 752) = v1;
  if (v1)
  {
    v2 = sub_100260804;
  }

  else
  {
    v2 = sub_1002601A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002601A8()
{
  v1 = v0[93];
  v2 = v0[85];

  v3 = String._bridgeToObjectiveC()();
  v0[95] = v3;
  v0[26] = v0;
  v0[27] = sub_1002602F8;
  v4 = swift_continuation_init();
  v0[65] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[58] = _NSConcreteStackBlock;
  v0[59] = 1107296256;
  v0[60] = sub_100429100;
  v0[61] = &unk_10080B320;
  v0[62] = v4;
  [v2 deletePIIHashFromSyncableKeyStoreForIdentifier:v3 keystoreType:1 completion:v0 + 58];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_1002602F8()
{
  v1 = *(*v0 + 240);
  *(*v0 + 768) = v1;
  if (v1)
  {
    v2 = sub_100260A30;
  }

  else
  {
    v2 = sub_100260408;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100260408()
{
  v1 = *(v0 + 680);
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 776) = v2;

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 784) = isa;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_10026057C;
  v4 = swift_continuation_init();
  *(v0 + 456) = sub_100007224(&unk_100843590, &qword_1006D8B10);
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_100429100;
  *(v0 + 424) = &unk_10080B2F8;
  *(v0 + 432) = v4;
  [v1 storePIIHashInSyncableKeyStoreForIdentifier:v2 data:isa keystoreType:1 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10026057C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 792) = v1;
  if (v1)
  {
    v2 = sub_100260C5C;
  }

  else
  {
    v2 = sub_10026068C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10026068C()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[85];
  sub_10000BD94(v0[89], v0[90]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100260754(uint64_t a1)
{
  v2 = v1[86];
  v3 = v1[85];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100260804(uint64_t a1)
{
  v2 = v1[93];
  swift_willThrow();

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[84];
  v7 = v1[82];
  v8 = v1[80];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No existing hash - will proceed to store new hash ", v9, 2u);
  }

  v6(v7, v8);
  v10 = v1[85];
  v11 = String._bridgeToObjectiveC()();
  v1[97] = v11;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v1[98] = isa;
  v1[18] = v1;
  v1[19] = sub_10026057C;
  v13 = swift_continuation_init();
  v1[57] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_100429100;
  v1[53] = &unk_10080B2F8;
  v1[54] = v13;
  [v10 storePIIHashInSyncableKeyStoreForIdentifier:v11 data:isa keystoreType:1 completion:v1 + 50];

  return _swift_continuation_await(v1 + 18);
}

uint64_t sub_100260A30(uint64_t a1)
{
  v2 = v1[95];
  swift_willThrow();

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[84];
  v7 = v1[82];
  v8 = v1[80];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "No existing hash - will proceed to store new hash ", v9, 2u);
  }

  v6(v7, v8);
  v10 = v1[85];
  v11 = String._bridgeToObjectiveC()();
  v1[97] = v11;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v1[98] = isa;
  v1[18] = v1;
  v1[19] = sub_10026057C;
  v13 = swift_continuation_init();
  v1[57] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_100429100;
  v1[53] = &unk_10080B2F8;
  v1[54] = v13;
  [v10 storePIIHashInSyncableKeyStoreForIdentifier:v11 data:isa keystoreType:1 completion:v1 + 50];

  return _swift_continuation_await(v1 + 18);
}

uint64_t sub_100260C5C(uint64_t a1)
{
  v2 = v1[98];
  v3 = v1[97];
  v4 = v1[90];
  v5 = v1[89];
  v6 = v1[85];
  swift_willThrow();
  sub_10000BD94(v5, v4);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100260D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[122] = a6;
  v6[121] = a5;
  v6[120] = a4;
  v6[119] = a3;
  v6[118] = a2;
  v6[117] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[123] = v7;
  v6[124] = *(v7 - 8);
  v6[125] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v6[126] = v8;
  v6[127] = *(v8 - 8);
  v6[128] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v6[129] = swift_task_alloc();
  v9 = type metadata accessor for PendingActionContext(0);
  v6[130] = v9;
  v10 = *(v9 - 8);
  v6[131] = v10;
  v6[132] = *(v10 + 64);
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[135] = v11;
  v6[136] = *(v11 - 8);
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();

  return _swift_task_switch(sub_100260FD0, 0, 0);
}

uint64_t sub_100260FD0(uint64_t a1)
{
  v88 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[146];
  v6 = v1[136];
  v7 = v1[135];
  if (v4)
  {
    v8 = v1[118];
    v9 = v1[117];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v87 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v87);
    _os_log_impl(&_mh_execute_header, v2, v3, "SEID is %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v6 + 8);
  v12(v5, v7);
  v1[147] = v12;
  v13 = v1[131];
  v14 = v1[130];
  v15 = v1[129];
  sub_10000BBC4(v1[119], v15, &unk_100840960, &qword_1006DBCB0);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    sub_10000BE18(v1[129], &unk_100840960, &qword_1006DBCB0);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[139];
    v20 = v1[135];
    if (v18)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to fetch pendingActionsContext, will not be able to save watch provisioning data", v21, 2u);
    }

    v12(v19, v20);
    goto LABEL_24;
  }

  v22 = v1[134];
  v23 = v1[130];
  sub_100269F80(v1[129], v22, type metadata accessor for PendingActionContext);
  v24 = *(v22 + *(v23 + 80));
  if (!v24 || !*(v24 + 16) || (v25 = sub_10003ADCC(v1[117], v1[118]), (v26 & 1) == 0))
  {
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unable to fetch provisioningContext from pendingActionsContext, will not be able to save watch provisioning data", v47, 2u);
    }

    v48 = v1[140];
    v49 = v1[135];
    v50 = v1[134];

    v12(v48, v49);
    v51 = v50;
    goto LABEL_23;
  }

  v27 = v1[134];
  v28 = (*(v24 + 56) + 24 * v25);
  v1[148] = *v28;
  v29 = v28[1];
  v1[149] = v29;
  v30 = v28[2];
  v1[150] = v30;
  v1[151] = *v27;
  v31 = v27[1];
  v1[152] = v31;
  if (!v31)
  {
    sub_10000B8B8(v29, v30);
    sub_10000B8B8(v29, v30);
    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "provisioningCredentialIdentifier unavailable, will not be able to save watch provisioning data", v55, 2u);

      sub_10000B90C(v29, v30);
    }

    else
    {
      sub_10000B90C(v29, v30);
    }

    v56 = v1[141];
    goto LABEL_43;
  }

  v1[153] = v27[2];
  v32 = v27[3];
  v1[154] = v32;
  if (!v32)
  {
    sub_10000B8B8(v29, v30);
    sub_10000B8B8(v29, v30);
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "targetInstanceIdentifier unavailable, will not be able to save watch provisioning data", v59, 2u);

      sub_10000B90C(v29, v30);
    }

    else
    {
      sub_10000B90C(v29, v30);
    }

    v56 = v1[142];
    goto LABEL_43;
  }

  v1[155] = v27[4];
  v33 = v27[5];
  v1[156] = v33;
  if (!v33)
  {
    sub_10000B8B8(v29, v30);
    sub_10000B8B8(v29, v30);
    defaultLogger()();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "partnerSchemeIdentifier unavailable, will not be able to save watch provisioning data", v62, 2u);

      sub_10000B90C(v29, v30);
    }

    else
    {
      sub_10000B90C(v29, v30);
    }

    v56 = v1[143];
LABEL_43:
    v64 = v1[135];
    v65 = v1[134];
    sub_10000B90C(v29, v30);
    v12(v56, v64);
    v51 = v65;
LABEL_23:
    sub_100267A1C(v51, type metadata accessor for PendingActionContext);
LABEL_24:

    v52 = v1[1];

    return v52();
  }

  v34 = (v27 + *(v1[130] + 128));
  v1[157] = *v34;
  v35 = v34[1];
  v1[158] = v35;
  if (v35)
  {
    v36 = v1[128];
    v37 = v1[127];
    v85 = v1[126];
    sub_10000B8B8(v29, v30);
    sub_10000B8B8(v29, v30);

    static String.Encoding.utf8.getter();
    v38 = String.data(using:allowLossyConversion:)();
    v40 = v39;
    v1[159] = v38;
    v1[160] = v39;
    (*(v37 + 8))(v36, v85);
    if (v40 >> 60 != 15)
    {
      if (qword_100832C20 != -1)
      {
        swift_once();
      }

      v41 = *(qword_100882228 + 16);
      v1[161] = v41;
      v42 = v41;
      v43 = String._bridgeToObjectiveC()();
      v1[162] = v43;
      v1[2] = v1;
      v1[7] = v1 + 110;
      v1[3] = sub_100261BA0;
      v44 = swift_continuation_init();
      v1[93] = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
      v1[90] = v44;
      v1[86] = _NSConcreteStackBlock;
      v1[87] = 1107296256;
      v1[88] = sub_100672A4C;
      v1[89] = &unk_10080B550;
      [v42 retrievePIITokenFromSyncableKeyStoreForIdentifier:v43 completion:v1 + 86];

      return _swift_continuation_await(v1 + 2);
    }
  }

  else
  {
    sub_10000B8B8(v29, v30);
    sub_10000B8B8(v29, v30);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v63 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v63 + 54);
  sub_100031B5C(&v63[4], (v1 + 26));
  os_unfair_lock_unlock(v63 + 54);
  v84 = v1[155];
  v86 = v1[156];
  v79 = v1[152];
  v80 = v1[153];
  v78 = v1[151];
  v82 = v1[150];
  v83 = v1[154];
  v66 = v1[149];
  v81 = v1[148];
  v67 = v1[134];
  v68 = v1[133];
  v69 = v1[131];
  v70 = v1[122];
  v71 = v1[121];
  v72 = v1[120];
  v1[181] = v1[33];

  sub_100031918((v1 + 26));
  sub_100269FE8(v67, v68, type metadata accessor for PendingActionContext);
  v73 = (*(v69 + 80) + 112) & ~*(v69 + 80);
  v74 = swift_allocObject();
  v1[182] = v74;
  v74[2] = v71;
  v74[3] = v70;
  v74[4] = v72;
  v74[5] = v78;
  v74[6] = v79;
  v74[7] = v80;
  v74[8] = v83;
  v74[9] = v84;
  v74[10] = v86;
  v74[11] = v66;
  v74[12] = v82;
  v74[13] = v81;
  sub_100269F80(v68, v74 + v73, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v66, v82);
  v75 = swift_allocObject();
  v1[183] = v75;
  *(v75 + 16) = sub_10026C154;
  *(v75 + 24) = v74;

  v76 = swift_task_alloc();
  v1[184] = v76;
  *v76 = v1;
  v76[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v76, sub_10021F3D0, v75, &type metadata for () + 8);
}

uint64_t sub_100261BA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1304) = v1;
  if (v1)
  {
    v2 = sub_1002647C8;
  }

  else
  {
    v2 = sub_100261CB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100261CB0()
{
  v1 = v0[162];

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 51));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];
  v0[164] = v0[58];

  sub_100031918((v0 + 51));
  v6 = swift_allocObject();
  v0[165] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  v7 = swift_allocObject();
  v0[166] = v7;
  *(v7 + 16) = sub_10026CBC0;
  *(v7 + 24) = v6;

  v8 = swift_task_alloc();
  v0[167] = v8;
  v9 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v8 = v0;
  v8[1] = sub_100261EA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 112, sub_10026CC04, v7, v9);
}

uint64_t sub_100261EA0()
{
  v2 = *v1;
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v3 = sub_100262AF4;
  }

  else
  {

    *(v2 + 1352) = *(v2 + 896);
    v3 = sub_100261FE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100261FE8()
{
  if (*(v0 + 1360))
  {
    if (*(v0 + 1304))
    {
      v1 = v0 + 80;
      v2 = *(v0 + 1288);
      v3 = String._bridgeToObjectiveC()();
      *(v0 + 1368) = v3;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 1376) = isa;
      v5 = String._bridgeToObjectiveC()();
      *(v0 + 1384) = v5;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_10026322C;
      v6 = swift_continuation_init();
      *(v0 + 808) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 784) = v6;
      *(v0 + 752) = _NSConcreteStackBlock;
      *(v0 + 760) = 1107296256;
      *(v0 + 768) = sub_100429100;
      *(v0 + 776) = &unk_10080B5C8;
      [v2 storePIITokenInSyncableKeyStoreForIdentifier:v3 data:isa credentialIdentifier:v5 completion:v0 + 752];
    }

    else
    {
      v1 = v0 + 144;
      v57 = *(v0 + 1288);
      v15 = *(v0 + 1280);
      v16 = *(v0 + 1272);
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006BF520;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for Data;
      *(inited + 40) = v18;
      *(inited + 48) = v16;
      *(inited + 56) = v15;
      sub_1000363B4(v16, v15);
      sub_10003D8DC(inited);
      swift_setDeallocating();
      sub_10000BE18(inited + 32, &qword_100834450, &unk_1006BFED0);
      v19 = String._bridgeToObjectiveC()();
      *(v0 + 1400) = v19;
      v20 = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v0 + 1408) = v20;

      v21 = String._bridgeToObjectiveC()();
      *(v0 + 1416) = v21;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_1002636E4;
      v22 = swift_continuation_init();
      *(v0 + 872) = sub_100007224(&unk_100843590, &qword_1006D8B10);
      *(v0 + 848) = v22;
      *(v0 + 816) = _NSConcreteStackBlock;
      *(v0 + 824) = 1107296256;
      *(v0 + 832) = sub_100429100;
      *(v0 + 840) = &unk_10080B5F0;
      [v57 updatePIITokenInSyncableKeyStoreForIdentifier:v19 attributesToUpdate:v20 credentialIdentifier:v21 completion:v0 + 816];
    }

    return _swift_continuation_await(v1);
  }

  else
  {
    (*(*(v0 + 992) + 104))(*(v0 + 1000), enum case for DIPError.Code.failedToStorePIITokenCredentialIdentifierNil(_:), *(v0 + 984));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v7 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v8 = v7;
    swift_willThrow();
    if (*(v0 + 1304))
    {

      v44 = *(v0 + 1272);
      v45 = *(v0 + 1280);
      v47 = *(v0 + 1288);
      v48 = *(v0 + 1200);
      v46 = *(v0 + 1192);
      v49 = *(v0 + 1072);
      v9 = *(v0 + 1000);
      v10 = *(v0 + 992);
      v11 = *(v0 + 984);
      _StringGuts.grow(_:)(29);
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD00000000000001BLL;
      v12._object = 0x8000000100707AF0;
      String.append(_:)(v12);
      *(v0 + 928) = v8;
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      _print_unlocked<A, B>(_:_:)();
      (*(v10 + 104))(v9, enum case for DIPError.Code.failedToStorePIIToken(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v44, v45);

      sub_10000B90C(v46, v48);

      sub_10000B90C(v46, v48);
      sub_100267A1C(v49, type metadata accessor for PendingActionContext);

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      defaultLogger()();
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 1288);
      v27 = *(v0 + 1280);
      v28 = *(v0 + 1272);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to update PII Token: %@", v29, 0xCu);
        sub_10000BE18(v30, &unk_100833B50, &unk_1006D8FB0);

        sub_10000BD94(v28, v27);
      }

      else
      {
        sub_10000BD94(*(v0 + 1272), *(v0 + 1280));
      }

      (*(v0 + 1176))(*(v0 + 1104), *(v0 + 1080));
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v32 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v32 + 54);
      sub_100031B5C(&v32[4], v0 + 208);
      os_unfair_lock_unlock(v32 + 54);
      v56 = *(v0 + 1240);
      v58 = *(v0 + 1248);
      v55 = *(v0 + 1232);
      v51 = *(v0 + 1216);
      v52 = *(v0 + 1224);
      v50 = *(v0 + 1208);
      v33 = *(v0 + 1192);
      v53 = *(v0 + 1184);
      v54 = *(v0 + 1200);
      v34 = *(v0 + 1072);
      v35 = *(v0 + 1064);
      v36 = *(v0 + 1048);
      v37 = *(v0 + 976);
      v38 = *(v0 + 968);
      v39 = *(v0 + 960);
      *(v0 + 1448) = *(v0 + 264);

      sub_100031918(v0 + 208);
      sub_100269FE8(v34, v35, type metadata accessor for PendingActionContext);
      v40 = (*(v36 + 80) + 112) & ~*(v36 + 80);
      v41 = swift_allocObject();
      *(v0 + 1456) = v41;
      v41[2] = v38;
      v41[3] = v37;
      v41[4] = v39;
      v41[5] = v50;
      v41[6] = v51;
      v41[7] = v52;
      v41[8] = v55;
      v41[9] = v56;
      v41[10] = v58;
      v41[11] = v33;
      v41[12] = v54;
      v41[13] = v53;
      sub_100269F80(v35, v41 + v40, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v33, v54);
      v42 = swift_allocObject();
      *(v0 + 1464) = v42;
      *(v42 + 16) = sub_10026C154;
      *(v42 + 24) = v41;

      v43 = swift_task_alloc();
      *(v0 + 1472) = v43;
      *v43 = v0;
      v43[1] = sub_100264330;

      return AsyncCoreDataContainer.performWrite<A>(_:)(v43, sub_10021F3D0, v42, &type metadata for () + 8);
    }
  }
}

uint64_t sub_100262AF4()
{

  v1 = *(v0 + 1344);
  if (*(v0 + 1304))
  {

    v31 = *(v0 + 1280);
    v32 = *(v0 + 1288);
    v30 = *(v0 + 1272);
    v33 = *(v0 + 1200);
    v2 = *(v0 + 1192);
    v34 = *(v0 + 1072);
    v3 = *(v0 + 1000);
    v4 = *(v0 + 992);
    v5 = *(v0 + 984);
    _StringGuts.grow(_:)(29);
    *(v0 + 912) = 0;
    *(v0 + 920) = 0xE000000000000000;
    v6._object = 0x8000000100707AF0;
    v6._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v6);
    *(v0 + 928) = v1;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    (*(v4 + 104))(v3, enum case for DIPError.Code.failedToStorePIIToken(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v30, v31);

    sub_10000B90C(v2, v33);

    sub_10000B90C(v2, v33);
    sub_100267A1C(v34, type metadata accessor for PendingActionContext);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    defaultLogger()();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1288);
    v13 = *(v0 + 1280);
    v14 = *(v0 + 1272);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to update PII Token: %@", v15, 0xCu);
      sub_10000BE18(v16, &unk_100833B50, &unk_1006D8FB0);

      sub_10000BD94(v14, v13);
    }

    else
    {
      sub_10000BD94(*(v0 + 1272), *(v0 + 1280));
    }

    (*(v0 + 1176))(*(v0 + 1104), *(v0 + 1080));
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v18 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v18 + 54);
    sub_100031B5C(&v18[4], v0 + 208);
    os_unfair_lock_unlock(v18 + 54);
    v41 = *(v0 + 1240);
    v42 = *(v0 + 1248);
    v40 = *(v0 + 1232);
    v36 = *(v0 + 1216);
    v37 = *(v0 + 1224);
    v35 = *(v0 + 1208);
    v19 = *(v0 + 1192);
    v38 = *(v0 + 1184);
    v39 = *(v0 + 1200);
    v20 = *(v0 + 1072);
    v21 = *(v0 + 1064);
    v22 = *(v0 + 1048);
    v23 = *(v0 + 976);
    v24 = *(v0 + 968);
    v25 = *(v0 + 960);
    *(v0 + 1448) = *(v0 + 264);

    sub_100031918(v0 + 208);
    sub_100269FE8(v20, v21, type metadata accessor for PendingActionContext);
    v26 = (*(v22 + 80) + 112) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v0 + 1456) = v27;
    v27[2] = v24;
    v27[3] = v23;
    v27[4] = v25;
    v27[5] = v35;
    v27[6] = v36;
    v27[7] = v37;
    v27[8] = v40;
    v27[9] = v41;
    v27[10] = v42;
    v27[11] = v19;
    v27[12] = v39;
    v27[13] = v38;
    sub_100269F80(v21, v27 + v26, type metadata accessor for PendingActionContext);
    sub_10000B8B8(v19, v39);
    v28 = swift_allocObject();
    *(v0 + 1464) = v28;
    *(v28 + 16) = sub_10026C154;
    *(v28 + 24) = v27;

    v29 = swift_task_alloc();
    *(v0 + 1472) = v29;
    *v29 = v0;
    v29[1] = sub_100264330;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v29, sub_10021F3D0, v28, &type metadata for () + 8);
  }
}

uint64_t sub_10026322C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1392) = v1;
  if (v1)
  {

    v2 = sub_100264A7C;
  }

  else
  {
    v2 = sub_100263344;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100263344()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1368);

  v3 = IdentityTarget.rawValue.getter();
  if (v3 == IdentityTarget.rawValue.getter())
  {
    v4 = *(v0 + 1264);
    v5 = swift_task_alloc();
    *(v0 + 1432) = v5;
    *v5 = v0;
    v5[1] = sub_100263B9C;
    v6 = *(v0 + 1360);
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1256);

    sub_10025F680(v8, v4, v7, v6);
  }

  else
  {
    v9 = *(v0 + 1288);
    sub_10000BD94(*(v0 + 1272), *(v0 + 1280));

    v10 = *(v0 + 1344);
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v11 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v11 + 54);
    sub_100031B5C(&v11[4], v0 + 208);
    os_unfair_lock_unlock(v11 + 54);
    if (!v10)
    {
      v29 = *(v0 + 1240);
      v30 = *(v0 + 1248);
      v24 = *(v0 + 1216);
      v25 = *(v0 + 1224);
      v23 = *(v0 + 1208);
      v27 = *(v0 + 1200);
      v28 = *(v0 + 1232);
      v12 = *(v0 + 1192);
      v26 = *(v0 + 1184);
      v13 = *(v0 + 1072);
      v14 = *(v0 + 1064);
      v15 = *(v0 + 1048);
      v16 = *(v0 + 976);
      v17 = *(v0 + 968);
      v18 = *(v0 + 960);
      *(v0 + 1448) = *(v0 + 264);

      sub_100031918(v0 + 208);
      sub_100269FE8(v13, v14, type metadata accessor for PendingActionContext);
      v19 = (*(v15 + 80) + 112) & ~*(v15 + 80);
      v20 = swift_allocObject();
      *(v0 + 1456) = v20;
      v20[2] = v17;
      v20[3] = v16;
      v20[4] = v18;
      v20[5] = v23;
      v20[6] = v24;
      v20[7] = v25;
      v20[8] = v28;
      v20[9] = v29;
      v20[10] = v30;
      v20[11] = v12;
      v20[12] = v27;
      v20[13] = v26;
      sub_100269F80(v14, v20 + v19, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v12, v27);
      v21 = swift_allocObject();
      *(v0 + 1464) = v21;
      *(v21 + 16) = sub_10026C154;
      *(v21 + 24) = v20;

      v22 = swift_task_alloc();
      *(v0 + 1472) = v22;
      *v22 = v0;
      v22[1] = sub_100264330;

      AsyncCoreDataContainer.performWrite<A>(_:)(v22, sub_10021F3D0, v21, &type metadata for () + 8);
    }
  }
}

uint64_t sub_1002636E4()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1424) = v1;
  if (v1)
  {

    v2 = sub_100264E00;
  }

  else
  {
    v2 = sub_1002637FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1002637FC()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);

  v3 = IdentityTarget.rawValue.getter();
  if (v3 == IdentityTarget.rawValue.getter())
  {
    v4 = *(v0 + 1264);
    v5 = swift_task_alloc();
    *(v0 + 1432) = v5;
    *v5 = v0;
    v5[1] = sub_100263B9C;
    v6 = *(v0 + 1360);
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1256);

    sub_10025F680(v8, v4, v7, v6);
  }

  else
  {
    v9 = *(v0 + 1288);
    sub_10000BD94(*(v0 + 1272), *(v0 + 1280));

    v10 = *(v0 + 1344);
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v11 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v11 + 54);
    sub_100031B5C(&v11[4], v0 + 208);
    os_unfair_lock_unlock(v11 + 54);
    if (!v10)
    {
      v29 = *(v0 + 1240);
      v30 = *(v0 + 1248);
      v24 = *(v0 + 1216);
      v25 = *(v0 + 1224);
      v23 = *(v0 + 1208);
      v27 = *(v0 + 1200);
      v28 = *(v0 + 1232);
      v12 = *(v0 + 1192);
      v26 = *(v0 + 1184);
      v13 = *(v0 + 1072);
      v14 = *(v0 + 1064);
      v15 = *(v0 + 1048);
      v16 = *(v0 + 976);
      v17 = *(v0 + 968);
      v18 = *(v0 + 960);
      *(v0 + 1448) = *(v0 + 264);

      sub_100031918(v0 + 208);
      sub_100269FE8(v13, v14, type metadata accessor for PendingActionContext);
      v19 = (*(v15 + 80) + 112) & ~*(v15 + 80);
      v20 = swift_allocObject();
      *(v0 + 1456) = v20;
      v20[2] = v17;
      v20[3] = v16;
      v20[4] = v18;
      v20[5] = v23;
      v20[6] = v24;
      v20[7] = v25;
      v20[8] = v28;
      v20[9] = v29;
      v20[10] = v30;
      v20[11] = v12;
      v20[12] = v27;
      v20[13] = v26;
      sub_100269F80(v14, v20 + v19, type metadata accessor for PendingActionContext);
      sub_10000B8B8(v12, v27);
      v21 = swift_allocObject();
      *(v0 + 1464) = v21;
      *(v21 + 16) = sub_10026C154;
      *(v21 + 24) = v20;

      v22 = swift_task_alloc();
      *(v0 + 1472) = v22;
      *v22 = v0;
      v22[1] = sub_100264330;

      AsyncCoreDataContainer.performWrite<A>(_:)(v22, sub_10021F3D0, v21, &type metadata for () + 8);
    }
  }
}

uint64_t sub_100263B9C()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_100263F74;
  }

  else
  {

    v2 = sub_100263CB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100263CB8()
{
  v1 = v0[161];
  sub_10000BD94(v0[159], v0[160]);

  v2 = v0[180];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v3 + 54);
  sub_100031B5C(&v3[4], (v0 + 26));
  os_unfair_lock_unlock(v3 + 54);
  if (!v2)
  {
    v21 = v0[155];
    v22 = v0[156];
    v16 = v0[152];
    v17 = v0[153];
    v15 = v0[151];
    v19 = v0[150];
    v20 = v0[154];
    v4 = v0[149];
    v18 = v0[148];
    v5 = v0[134];
    v6 = v0[133];
    v7 = v0[131];
    v8 = v0[122];
    v9 = v0[121];
    v10 = v0[120];
    v0[181] = v0[33];

    sub_100031918((v0 + 26));
    sub_100269FE8(v5, v6, type metadata accessor for PendingActionContext);
    v11 = (*(v7 + 80) + 112) & ~*(v7 + 80);
    v12 = swift_allocObject();
    v0[182] = v12;
    v12[2] = v9;
    v12[3] = v8;
    v12[4] = v10;
    v12[5] = v15;
    v12[6] = v16;
    v12[7] = v17;
    v12[8] = v20;
    v12[9] = v21;
    v12[10] = v22;
    v12[11] = v4;
    v12[12] = v19;
    v12[13] = v18;
    sub_100269F80(v6, v12 + v11, type metadata accessor for PendingActionContext);
    sub_10000B8B8(v4, v19);
    v13 = swift_allocObject();
    v0[183] = v13;
    *(v13 + 16) = sub_10026C154;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    v0[184] = v14;
    *v14 = v0;
    v14[1] = sub_100264330;

    AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10021F3D0, v13, &type metadata for () + 8);
  }
}

uint64_t sub_100263F74()
{

  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[159];
  v7 = v0[147];
  v8 = v0[145];
  v9 = v0[135];
  if (v3)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to store pii hash in keychain", v10, 2u);

    sub_10000BD94(v6, v5);
  }

  else
  {
    sub_10000BD94(v0[159], v0[160]);
  }

  v7(v8, v9);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_100031B5C(&v11[4], (v0 + 26));
  os_unfair_lock_unlock(v11 + 54);
  v30 = v0[155];
  v31 = v0[156];
  v25 = v0[152];
  v26 = v0[153];
  v24 = v0[151];
  v28 = v0[150];
  v29 = v0[154];
  v12 = v0[149];
  v27 = v0[148];
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[131];
  v16 = v0[122];
  v17 = v0[121];
  v18 = v0[120];
  v0[181] = v0[33];

  sub_100031918((v0 + 26));
  sub_100269FE8(v13, v14, type metadata accessor for PendingActionContext);
  v19 = (*(v15 + 80) + 112) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v0[182] = v20;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v18;
  v20[5] = v24;
  v20[6] = v25;
  v20[7] = v26;
  v20[8] = v29;
  v20[9] = v30;
  v20[10] = v31;
  v20[11] = v12;
  v20[12] = v28;
  v20[13] = v27;
  sub_100269F80(v14, v20 + v19, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v12, v28);
  v21 = swift_allocObject();
  v0[183] = v21;
  *(v21 + 16) = sub_10026C154;
  *(v21 + 24) = v20;

  v22 = swift_task_alloc();
  v0[184] = v22;
  *v22 = v0;
  v22[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v22, sub_10021F3D0, v21, &type metadata for () + 8);
}

uint64_t sub_100264330()
{
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v2 = sub_1002645DC;
  }

  else
  {

    v2 = sub_100264464;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100264464()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[134];
  sub_10000B90C(v2, v1);
  sub_10000B90C(v2, v1);
  sub_100267A1C(v3, type metadata accessor for PendingActionContext);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002645DC()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[147];
  v4 = v0[144];
  v5 = v0[135];
  v8 = v0[134];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  sub_10000B90C(v2, v1);
  sub_10000B90C(v2, v1);
  v3(v4, v5);
  sub_100267A1C(v8, type metadata accessor for PendingActionContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002647C8(uint64_t a1)
{
  v2 = v1[162];
  swift_willThrow();

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[147];
  v7 = v1[137];
  v8 = v1[135];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PII Token doesnt exist. Attempting to store new.", v9, 2u);
  }

  v6(v7, v8);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v10 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v10 + 54);
  sub_100031B5C(&v10[4], (v1 + 51));
  os_unfair_lock_unlock(v10 + 54);
  v11 = v1[122];
  v12 = v1[121];
  v13 = v1[120];
  v1[164] = v1[58];

  sub_100031918((v1 + 51));
  v14 = swift_allocObject();
  v1[165] = v14;
  v14[2] = v12;
  v14[3] = v11;
  v14[4] = v13;
  v15 = swift_allocObject();
  v1[166] = v15;
  *(v15 + 16) = sub_10026CBC0;
  *(v15 + 24) = v14;

  v16 = swift_task_alloc();
  v1[167] = v16;
  v17 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v16 = v1;
  v16[1] = sub_100261EA0;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 112, sub_10026CC04, v15, v17);
}

uint64_t sub_100264A7C(uint64_t a1)
{
  v2 = v1[173];
  v3 = v1[172];
  v4 = v1[171];
  swift_willThrow();

  v5 = v1[174];
  v14 = v1[160];
  v15 = v1[161];
  v13 = v1[159];
  v16 = v1[150];
  v6 = v1[149];
  v17 = v1[134];
  v7 = v1[125];
  v8 = v1[124];
  v9 = v1[123];
  _StringGuts.grow(_:)(29);
  v1[114] = 0;
  v1[115] = 0xE000000000000000;
  v10._object = 0x8000000100707AF0;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v10);
  v1[116] = v5;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  (*(v8 + 104))(v7, enum case for DIPError.Code.failedToStorePIIToken(_:), v9);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BD94(v13, v14);

  sub_10000B90C(v6, v16);

  sub_10000B90C(v6, v16);
  sub_100267A1C(v17, type metadata accessor for PendingActionContext);

  v11 = v1[1];

  return v11();
}

uint64_t sub_100264E00(uint64_t a1)
{
  v2 = *(v1 + 1416);
  v3 = *(v1 + 1408);
  v4 = *(v1 + 1400);
  swift_willThrow();

  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 1288);
  v9 = *(v1 + 1280);
  v10 = *(v1 + 1272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update PII Token: %@", v11, 0xCu);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);

    sub_10000BD94(v10, v9);
  }

  else
  {
    sub_10000BD94(*(v1 + 1272), *(v1 + 1280));
  }

  (*(v1 + 1176))(*(v1 + 1104), *(v1 + 1080));
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v14 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v14 + 54);
  sub_100031B5C(&v14[4], v1 + 208);
  os_unfair_lock_unlock(v14 + 54);
  v33 = *(v1 + 1240);
  v34 = *(v1 + 1248);
  v28 = *(v1 + 1216);
  v29 = *(v1 + 1224);
  v27 = *(v1 + 1208);
  v31 = *(v1 + 1200);
  v32 = *(v1 + 1232);
  v15 = *(v1 + 1192);
  v30 = *(v1 + 1184);
  v16 = *(v1 + 1072);
  v17 = *(v1 + 1064);
  v18 = *(v1 + 1048);
  v19 = *(v1 + 976);
  v20 = *(v1 + 968);
  v21 = *(v1 + 960);
  *(v1 + 1448) = *(v1 + 264);

  sub_100031918(v1 + 208);
  sub_100269FE8(v16, v17, type metadata accessor for PendingActionContext);
  v22 = (*(v18 + 80) + 112) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v1 + 1456) = v23;
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v21;
  v23[5] = v27;
  v23[6] = v28;
  v23[7] = v29;
  v23[8] = v32;
  v23[9] = v33;
  v23[10] = v34;
  v23[11] = v15;
  v23[12] = v31;
  v23[13] = v30;
  sub_100269F80(v17, v23 + v22, type metadata accessor for PendingActionContext);
  sub_10000B8B8(v15, v31);
  v24 = swift_allocObject();
  *(v1 + 1464) = v24;
  *(v24 + 16) = sub_10026C154;
  *(v24 + 24) = v23;

  v25 = swift_task_alloc();
  *(v1 + 1472) = v25;
  *v25 = v1;
  v25[1] = sub_100264330;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v25, sub_10021F3D0, v24, &type metadata for () + 8);
}