uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = sub_1004D862C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v7 == enum case for MotionMode.wifiOnly(_:))
  {
    v9 = [objc_opt_self() sharedMonitor];
    [v9 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v7 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1004DEAAC(24);

    v10 = 0xD00000000000001ELL;
    v11 = 0x80000001004F0810;
    sub_1001D6E28();
    v12._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v12);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1001D6E28()
{
  result = qword_100638EE8;
  if (!qword_100638EE8)
  {
    sub_1004D862C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638EE8);
  }

  return result;
}

id sub_1001D6E80()
{
  type metadata accessor for NetworkMonitor(0);
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (qword_100633D68 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

double static NetworkMonitor.shared.getter()
{
  if (qword_100633D68 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_1001D7048(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1001D70C8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_1001D71B0(void *a1)
{
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_1001D7228(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004CB8(&qword_100639A60, &qword_100523600);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id NetworkMonitor.init()()
{
  v1 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    sub_1004D9B2C();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001D7734;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D773C;
    aBlock[3] = &unk_1005E41E8;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D7618(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1001D7650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v3 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v3 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return sub_1004D9B7C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001D773C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D7B7C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1004D7B4C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double sub_1001D7830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_100638F28;
  if (!qword_100638F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D79B8(uint64_t a1)
{
  sub_1001D7A48();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D7A48()
{
  if (!qword_100639AD0)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_100639AD0);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v200 = a2;
  sub_1004DD3CC();
  __chkstk_darwin();
  v205 = type metadata accessor for Notice.Thumbnail(0);
  v203 = *(v205 - 8);
  __chkstk_darwin();
  v4 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  __chkstk_darwin();
  v6 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v193 - v7;
  sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
  __chkstk_darwin();
  v10 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v193 - v11);
  __chkstk_darwin();
  v198 = (&v193 - v13);
  sub_1004D83FC();
  __chkstk_darwin();
  v204 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DD3EC();
  v16 = *(v15 - 8);
  v201 = v15;
  v202 = v16;
  __chkstk_darwin();
  v199 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v193 - v18;
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v21 = (&v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001DAF9C(a1, v21, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v21;
      v78 = v21[1];
      v80 = Notice.Variant.id.getter();
      v193 = v81;
      v194 = v80;
      if (v78)
      {
        v196 = v78;
        v197 = v79;
        v195 = 0x7265646C6F66;
        v82 = v205;
        v83 = v202;
        v84 = v203;
        v85 = v19;
        v86 = v200;
        v87 = v201;
        v88 = v199;
      }

      else
      {
        v85 = v19;
        sub_1004DD37C();
        v87 = v201;
        v83 = v202;
        v88 = v199;
        (*(v202 + 16))(v199, v19, v201);
        v82 = v205;
        v84 = v203;
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v195 = 0x672E657261757173;
        v178 = qword_100671958;
        sub_1004D838C();
        v179 = sub_1004DD4AC();
        v196 = v180;
        v197 = v179;
        (*(v83 + 8))(v19, v87);
        v86 = v200;
      }

      sub_1004DD37C();
      (*(v83 + 16))(v88, v85, v87);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v181 = qword_100671958;
      sub_1004D838C();
      v205 = sub_1004DD4AC();
      v183 = v182;
      (*(v83 + 8))(v85, v87);
      v184 = sub_1004DB90C();
      v185 = v198;
      *v198 = v184;
      swift_storeEnumTagMultiPayload();
      v186 = *(v84 + 56);
      v186(v185, 0, 1, v82);
      v187 = type metadata accessor for Notice(0);
      v188 = v187[5];
      v186(v86 + v188, 1, 1, v82);
      v189 = (v86 + v187[7]);
      v174 = (v86 + v187[8]);
      v112 = v86 + v187[9];
      v113 = v86 + v187[10];
      v190 = v193;
      *v86 = v194;
      v86[1] = v190;
      result = sub_1001DAABC(v185, v86 + v188);
      v191 = (v86 + v187[6]);
      v192 = v196;
      *v191 = v197;
      v191[1] = v192;
      *v189 = v205;
      v189[1] = v183;
      goto LABEL_74;
    case 2u:
      v62 = *v21;
      v61 = v21[1];
      v63 = v21[2];
      v64 = Notice.Variant.id.getter();
      v194 = v65;
      v195 = v64;
      if (v63)
      {
        v196 = v63;
        v197 = v61;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_1004DD37C();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v156 = qword_100671958;
        sub_1004D838C();
        v157 = sub_1004DD4AC();
        v196 = v158;
        v197 = v157;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_1004DD3BC();
      v209._countAndFlagsBits = 0;
      v209._object = 0xE000000000000000;
      sub_1004DD3AC(v209);
      v206 = v62;
      sub_1004DD38C();
      v159._object = 0x80000001004F0900;
      v159._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v74 = *v21;
      v73 = v21[1];
      v75 = v21[2];
      v76 = Notice.Variant.id.getter();
      v194 = v77;
      v195 = v76;
      if (v75)
      {
        v196 = v75;
        v197 = v73;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_1004DD37C();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v160 = qword_100671958;
        sub_1004D838C();
        v161 = sub_1004DD4AC();
        v196 = v162;
        v197 = v161;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_1004DD3BC();
      v210._countAndFlagsBits = 0;
      v210._object = 0xE000000000000000;
      sub_1004DD3AC(v210);
      v206 = v74;
      sub_1004DD38C();
      v159._countAndFlagsBits = 0xD000000000000013;
      v159._object = 0x80000001004F08E0;
LABEL_65:
      sub_1004DD3AC(v159);
      sub_1004DD3DC();
      (*(v66 + 16))(v70, v68, v67);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v163 = qword_100671958;
      sub_1004D838C();
      v164 = sub_1004DD4AC();
      v166 = v165;
      (*(v66 + 8))(v68, v67);
      v167 = sub_1004DB90C();
      v168 = v198;
      *v198 = v167;
      v169 = v205;
      swift_storeEnumTagMultiPayload();
      v170 = *(v203 + 56);
      v170(v168, 0, 1, v169);
      v171 = type metadata accessor for Notice(0);
      v172 = v171[5];
      v170(v69 + v172, 1, 1, v169);
      v173 = (v69 + v171[7]);
      v174 = (v69 + v171[8]);
      v112 = v69 + v171[9];
      v113 = v69 + v171[10];
      v175 = v194;
      *v69 = v195;
      v69[1] = v175;
      result = sub_1001DAABC(v168, v69 + v172);
      v176 = (v69 + v171[6]);
      v177 = v196;
      *v176 = v197;
      v176[1] = v177;
      *v173 = v164;
      v173[1] = v166;
LABEL_74:
      *v174 = 0;
      v174[1] = 0;
      break;
    case 4u:
      v47 = *v21;
      v46 = v21[1];
      v48 = Notice.Variant.id.getter();
      v194 = v49;
      if (v46)
      {
        v196 = v46;
        v197 = v47;
        v50 = v205;
        v52 = v201;
        v51 = v202;
        v53 = v19;
      }

      else
      {
        v53 = v19;
        sub_1004DD37C();
        v52 = v201;
        v51 = v202;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v134 = qword_100671958;
        sub_1004D838C();
        v135 = sub_1004DD4AC();
        v196 = v136;
        v197 = v135;
        (*(v51 + 8))(v19, v52);
        v50 = v205;
      }

      v137 = v200;
      v138 = qword_100634428;

      if (v138 != -1)
      {
        swift_once();
      }

      v195 = v48;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        sub_1004DD37C();
        (*(v51 + 16))(v199, v53, v52);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v139 = qword_100671958;
        sub_1004D838C();
        v140 = sub_1004DD4AC();
        v204 = v141;
        v205 = v140;
        (*(v51 + 8))(v53, v52);
        v143 = swift_allocObject();
        *(v143 + 16) = v47;
        *(v143 + 24) = v46;
        v142 = sub_1001DAB64;
      }

      else
      {

        v142 = 0;
        v143 = 0;
        v204 = 0;
        v205 = 0;
      }

      v144 = sub_1004DB90C();
      v145 = v198;
      *v198 = v144;
      swift_storeEnumTagMultiPayload();
      v146 = *(v203 + 56);
      v146(v145, 0, 1, v50);
      v147 = type metadata accessor for Notice(0);
      v148 = v50;
      v149 = v147[5];
      v146(v137 + v149, 1, 1, v148);
      v150 = (v137 + v147[7]);
      v151 = (v137 + v147[8]);
      v112 = v137 + v147[9];
      v113 = v137 + v147[10];
      v152 = v194;
      *v137 = v195;
      v137[1] = v152;
      result = sub_1001DAABC(v145, v137 + v149);
      v153 = (v137 + v147[6]);
      v154 = v196;
      *v153 = v197;
      v153[1] = v154;
      v155 = v204;
      *v150 = v205;
      v150[1] = v155;
      *v151 = v142;
      v151[1] = v143;
      *v112 = 2;
      goto LABEL_37;
    case 5u:
      v91 = Notice.Variant.id.getter();
      v196 = v92;
      v197 = v91;
      v41 = v19;
      sub_1004DD37C();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v99 = Notice.Variant.id.getter();
      v196 = v100;
      v197 = v99;
      v41 = v19;
      sub_1004DD37C();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v59 = Notice.Variant.id.getter();
      v196 = v60;
      v197 = v59;
      v41 = v19;
      sub_1004DD37C();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v95 = Notice.Variant.id.getter();
      v196 = v96;
      v197 = v95;
      v56 = v19;
      sub_1004DD37C();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v44 = Notice.Variant.id.getter();
      v196 = v45;
      v197 = v44;
      v41 = v19;
      sub_1004DD37C();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v54 = Notice.Variant.id.getter();
      v196 = v55;
      v197 = v54;
      v56 = v19;
      sub_1004DD37C();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v93 = Notice.Variant.id.getter();
      v196 = v94;
      v197 = v93;
      v56 = v19;
      sub_1004DD37C();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v39 = Notice.Variant.id.getter();
      v196 = v40;
      v197 = v39;
      v41 = v19;
      sub_1004DD37C();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v101 = qword_100671958;
      sub_1004D838C();
      v36 = sub_1004DD4AC();
      v38 = v102;
      (*(v42 + 8))(v41, v43);
      goto LABEL_35;
    case 0xFu:
      v71 = Notice.Variant.id.getter();
      v196 = v72;
      v197 = v71;
      v56 = v19;
      sub_1004DD37C();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v31 = Notice.Variant.id.getter();
      v196 = v32;
      v197 = v31;
      sub_1004DD37C();
      v34 = v201;
      v33 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v35 = qword_100671958;
      sub_1004D838C();
      v36 = sub_1004DD4AC();
      v38 = v37;
      (*(v33 + 8))(v19, v34);
      goto LABEL_35;
    case 0x11u:
      v89 = Notice.Variant.id.getter();
      v196 = v90;
      v197 = v89;
      v56 = v19;
      sub_1004DD37C();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v97 = qword_100671958;
      sub_1004D838C();
      v36 = sub_1004DD4AC();
      v38 = v98;
      (*(v57 + 8))(v56, v58);
LABEL_35:
      v103 = sub_1004DB90C();
      v104 = v198;
      *v198 = v103;
      v105 = v205;
      swift_storeEnumTagMultiPayload();
      v106 = *(v203 + 56);
      v106(v104, 0, 1, v105);
      v107 = type metadata accessor for Notice(0);
      v108 = v107[5];
      v109 = v200;
      v106(v200 + v108, 1, 1, v105);
      v110 = (v109 + v107[7]);
      v111 = (v109 + v107[8]);
      v112 = v109 + v107[9];
      v113 = v109 + v107[10];
      v114 = v196;
      *v109 = v197;
      v109[1] = v114;
      result = sub_1001DAABC(v104, v109 + v108);
      v116 = (v109 + v107[6]);
      *v116 = v36;
      v116[1] = v38;
      *v110 = 0;
      v110[1] = 0;
      *v111 = 0;
      v111[1] = 0;
      break;
    default:
      v22 = *v21;
      v197 = v21[1];
      v198 = v22;
      v23 = sub_100004CB8(&qword_100638FB8, &qword_10051F600);
      v24 = *(v23 + 48);
      v193 = *(v21 + *(v23 + 64));
      sub_1001DAB6C(v21 + v24, v8);
      v25 = Notice.Variant.id.getter();
      v195 = v26;
      v196 = v25;
      sub_1000108DC(v8, v6, &unk_100637C80, &unk_10051BD48);
      v27 = sub_1004DCC9C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v6, 1, v27) == 1)
      {
        sub_10001074C(v6, &unk_100637C80, &unk_10051BD48);
        v29 = 1;
        v30 = v205;
      }

      else
      {
        (*(v28 + 32))(v4, v6, v27);
        v30 = v205;
        swift_storeEnumTagMultiPayload();
        sub_1001DABDC(v4, v10);
        v29 = 0;
      }

      v117 = v203;
      v118 = *(v203 + 56);
      v118(v10, v29, 1, v30);
      v203 = *(v117 + 48);
      v119 = (v203)(v10, 1, v30);
      v194 = v118;
      if (v119 == 1)
      {
        *v12 = sub_1004DB90C();
        swift_storeEnumTagMultiPayload();
        v118(v12, 0, 1, v30);
        if ((v203)(v10, 1, v30) != 1)
        {
          sub_10001074C(v10, &qword_100638FB0, &qword_10051F5F8);
        }
      }

      else
      {
        sub_1001DABDC(v10, v12);
        v118(v12, 0, 1, v30);
      }

      sub_1004DD3BC();
      v207._countAndFlagsBits = 0;
      v207._object = 0xE000000000000000;
      sub_1004DD3AC(v207);
      v206 = v193;
      sub_1004DD38C();
      v208._countAndFlagsBits = 0x297328676E6F7320;
      v208._object = 0xEE00646564646120;
      sub_1004DD3AC(v208);
      sub_1004DD3DC();
      v121 = v201;
      v120 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v122 = qword_100671958;
      sub_1004D838C();
      v123 = sub_1004DD4AC();
      v125 = v124;
      (*(v120 + 8))(v19, v121);
      sub_10001074C(v8, &unk_100637C80, &unk_10051BD48);
      v126 = type metadata accessor for Notice(0);
      v127 = v126[5];
      v128 = v200;
      v194(v200 + v127, 1, 1, v205);
      v129 = (v128 + v126[7]);
      v130 = (v128 + v126[8]);
      v112 = v128 + v126[9];
      v113 = v128 + v126[10];
      v131 = v195;
      *v128 = v196;
      v128[1] = v131;
      result = sub_1001DAABC(v12, v128 + v127);
      v132 = (v128 + v126[6]);
      v133 = v197;
      *v132 = v198;
      v132[1] = v133;
      *v129 = v123;
      v129[1] = v125;
      *v130 = 0;
      v130[1] = 0;
      break;
  }

  *v112 = 0;
LABEL_37:
  v112[8] = 0;
  *v113 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_1001DAABC(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = (v0 + *(type metadata accessor for Notice(0) + 32));
  v2 = *v1;
  sub_10000DE64(*v1, v1[1]);
  return v2;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_10000DE74(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a12;
  v33 = a11;
  v34 = a4;
  v32 = a10;
  sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
  __chkstk_darwin();
  v17 = &v32 - v16;
  *(&v32 - v16) = a3;
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19(&a9[v21], 1, 1, v18);
  v22 = &a9[v20[7]];
  v23 = &a9[v20[8]];
  v24 = v20[10];
  v25 = &a9[v20[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_1001DAABC(v17, &a9[v21]);
  v27 = &a9[v20[6]];
  v28 = v36;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = v38;
  *v22 = v37;
  *(v22 + 1) = v29;
  v31 = v32;
  v30 = v33;
  *v23 = v39;
  *(v23 + 1) = v31;
  *v25 = v30;
  v25[8] = v35 & 1;
  a9[v24] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_1001DAABC(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v35 = a13;
  v33 = a12;
  v34 = a5;
  v31 = a10;
  v32 = a11;
  sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
  __chkstk_darwin();
  v17 = (&v31 - v16);
  *v17 = sub_1004DB90C();
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19((a9 + v21), 1, 1, v18);
  v22 = (a9 + v20[7]);
  v23 = (a9 + v20[8]);
  v24 = v20[10];
  v25 = a9 + v20[9];
  *a9 = a1;
  a9[1] = a2;
  result = sub_1001DAABC(v17, a9 + v21);
  v27 = (a9 + v20[6]);
  v28 = v36;
  *v27 = v34;
  v27[1] = v28;
  v29 = v38;
  *v22 = v37;
  v22[1] = v29;
  v30 = v32;
  *v23 = v31;
  v23[1] = v30;
  *v25 = v33;
  v25[8] = v35 & 1;
  *(a9 + v24) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001DAF9C(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;
  v9 = v7[1];

  result = sub_10000DE74(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DAF9C(v0, v2, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1001DB94C(v2, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_1001DB94C(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_1001DB94C(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_1001DB94C(v2, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v5 = sub_100004CB8(&qword_100638FB8, &qword_10051F600);
      sub_10001074C(&v2[*(v5 + 48)], &unk_100637C80, &unk_10051BD48);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t sub_1001DA730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v11 = 0x80000001004F0A20;
  }

  v12 = sub_10005F25C(_swiftEmptyArrayStorage);
  sub_100165FA8(a1, v11, 0xD000000000000032, 0x80000001004ED970, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10, 1u);
  v13 = v4;

  sub_1000108DC(v10, v8, &qword_100634B30, &unk_100513D70);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    sub_10001074C(v10, &qword_100634B30, &unk_100513D70);
  }

  else
  {
    v14 = v28;
    (*(v5 + 32))(v28, v8, v4);
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    sub_1004D7FDC(v17);
    v19 = v18;
    v20 = [v16 canOpenURL:v18];

    if (v20)
    {
      v21 = [v15 sharedApplication];
      sub_1004D7FDC(v22);
      v24 = v23;
      sub_10005F120(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1000EADCC();
      isa = sub_1004DD1FC().super.isa;

      [v21 openURL:v24 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v14, v13);
    v8 = v10;
  }

  return sub_10001074C(v8, &qword_100634B30, &unk_100513D70);
}

uint64_t sub_1001DAABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DAB2C()
{

  return swift_deallocObject();
}

uint64_t sub_1001DAB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100637C80, &unk_10051BD48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DABDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DCC9C();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  sub_100004CB8(&qword_1006391F8, &unk_10051F6C8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_1001DAF9C(a1, &v20 - v11, type metadata accessor for Notice.Thumbnail);
  sub_1001DAF9C(a2, &v12[v14], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1001DAF9C(v12, v10, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = sub_1004DB92C();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1001DAF9C(v12, v8, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v21;
      (*(v21 + 32))(v6, &v12[v14], v4);
      v17 = sub_1004DCC8C();
      v18 = *(v16 + 8);
      v18(v6, v4);
      v18(v8, v4);
LABEL_12:
      sub_1001DB94C(v12, type metadata accessor for Notice.Thumbnail);
      return v17 & 1;
    }

    (*(v21 + 8))(v8, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_10001074C(v12, &qword_1006391F8, &unk_10051F6C8);
    v17 = 0;
    return v17 & 1;
  }

  sub_1001DB94C(v12, type metadata accessor for Notice.Thumbnail);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1001DAF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9MusicCore6NoticeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = sub_100004CB8(&qword_1006391F0, &qword_10051F6C0);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = a1[1];
  v38 = a1;
  if ((v13 != *a2 || v14 != a2[1]) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  v15 = a2;
  v37 = type metadata accessor for Notice(0);
  v16 = *(v37 + 20);
  v17 = *(v10 + 48);
  sub_1000108DC(v38 + v16, v12, &qword_100638FB0, &qword_10051F5F8);
  v18 = v15 + v16;
  v19 = v15;
  sub_1000108DC(v18, &v12[v17], &qword_100638FB0, &qword_10051F5F8);
  v20 = *(v5 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    if (v20(&v12[v17], 1, v4) == 1)
    {
      sub_10001074C(v12, &qword_100638FB0, &qword_10051F5F8);
      goto LABEL_13;
    }

LABEL_9:
    sub_10001074C(v12, &qword_1006391F0, &qword_10051F6C0);
    return 0;
  }

  sub_1000108DC(v12, v9, &qword_100638FB0, &qword_10051F5F8);
  if (v20(&v12[v17], 1, v4) == 1)
  {
    sub_1001DB94C(v9, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_1001DABDC(&v12[v17], v7);
  v22 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v9, v7);
  sub_1001DB94C(v7, type metadata accessor for Notice.Thumbnail);
  sub_1001DB94C(v9, type metadata accessor for Notice.Thumbnail);
  sub_10001074C(v12, &qword_100638FB0, &qword_10051F5F8);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v23 = v37;
  v24 = *(v37 + 24);
  v25 = (v38 + v24);
  v26 = *(v38 + v24 + 8);
  v27 = (v19 + v24);
  if ((*v25 != *v27 || v26 != v27[1]) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  v28 = *(v23 + 28);
  v29 = (v38 + v28);
  v30 = *(v38 + v28 + 8);
  v31 = (v19 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32 && (*v29 == *v31 && v30 == v32 || (sub_1004DF08C() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v32)
  {
    return 0;
  }

LABEL_23:
  v33 = *(v23 + 36);
  v34 = (v38 + v33);
  v35 = *(v38 + v33 + 8);
  v36 = v19 + v33;
  result = v36[8];
  if ((v35 & 1) == 0)
  {
    return (*v34 == *v36) & ~result;
  }

  return result;
}

uint64_t sub_1001DB3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001DB4B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100638FB0, &qword_10051F5F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001DB568(uint64_t a1)
{
  sub_1001DB66C(319, &qword_100639028, type metadata accessor for Notice.Thumbnail);
  if (v1 <= 0x3F)
  {
    sub_1001065A4();
    if (v2 <= 0x3F)
    {
      sub_100050340(319);
      if (v3 <= 0x3F)
      {
        sub_1001DB66C(319, &unk_100639030, type metadata accessor for FeedbackType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001DB66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001DB6C0(uint64_t a1)
{
  result = sub_1004DCC9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001DB72C(uint64_t a1)
{
  sub_1001DB80C(319);
  if (v1 <= 0x3F)
  {
    sub_1001DB904(319, &qword_1006391A8);
    if (v2 <= 0x3F)
    {
      sub_1001DB88C(319, &qword_1006391B0, "playlistCount folderName ");
      if (v3 <= 0x3F)
      {
        sub_1001DB88C(319, &qword_1006391B8, "folderCount folderName ");
        if (v4 <= 0x3F)
        {
          sub_1001DB904(319, &unk_1006391C0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001DB80C(uint64_t a1)
{
  if (!qword_1006391A0)
  {
    sub_100008DE4(&unk_100637C80, &unk_10051BD48);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006391A0);
    }
  }
}

void sub_1001DB88C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_100008DE4(&unk_100639EB0, &qword_100518300);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1001DB904(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001065A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1001DB94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  sub_1001DFB0C(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001DBB00(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_1001DBB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = &a7[v14[6]];
  *v15 = a4;
  *(v15 + 1) = a5;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v18 = v14[7];
  v17(&a7[v18], 1, 1, v16);
  v19 = v14[8];
  a7[v14[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v21;
  result = sub_1001DBB00(v13, &a7[v18]);
  *&a7[v19] = v22;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a3;
  v32 = a7;
  v30 = a2;
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a4;
  v18[1] = a5;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1004D7E3C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a6, 1, v19) == 1)
  {
    sub_10001074C(a6, &qword_100634F38, &qword_10051C870);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(v14, a6, v19);
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  v22 = *(v16 + 56);
  v22(v14, v21, 1, v15);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22(&a8[v24], 1, 1, v15);
  v25 = v23[8];
  a8[v23[9]] = 1;
  v27 = v30;
  v26 = v31;
  *a8 = a1;
  *(a8 + 1) = v27;
  *(a8 + 2) = v26;
  sub_1001DFB0C(v18, &a8[v23[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001DBB00(v14, &a8[v24]);
  *&a8[v25] = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004D7E3C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_10001074C(a1, &qword_100634F38, &qword_10051C870);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = sub_1004D7E3C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004D7E3C();
  (*(*(v20 - 8) + 32))(v19, a4, v20);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v15 = a5;
    v15[1] = a6;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v17 + 56);
  v22(v15, v21, 1, v16);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22((a8 + v24), 1, 1, v16);
  v25 = v23[8];
  *(a8 + v23[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v27;
  sub_1001DFB0C(v19, a8 + v23[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001DBB00(v15, a8 + v24);
  *(a8 + v25) = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return sub_1001DC6FC(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_1001DBB00(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_1001DC6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = sub_1004D7E3C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA4(v1, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  sub_1001DC8EC();
  v8 = sub_1004D7F5C();
  (*(v3 + 8))(v5, v2);
  return v8;
}

unint64_t sub_1001DC8EC()
{
  result = qword_1006380F0;
  if (!qword_1006380F0)
  {
    sub_1004D7E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006380F0);
  }

  return result;
}

uint64_t sub_1001DC948(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1004D7E3C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA4(v2, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v4 + 32))(v6, v8, v3);
  sub_1001DC8EC();
  v9 = sub_1004D7F5C();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  sub_100004CB8(&qword_100639220, &qword_10051F6F0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v1 + *(v5 + 32));
  sub_1000108DC(a1, v4, &qword_100639220, &qword_10051F6F0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v7 = v6;
    sub_10001074C(v4, &qword_100639220, &qword_10051F6F0);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *&v4[*(v5 + 32)];
    v7 = v9;
    v10 = v6;
    sub_1001DFB74(v4, type metadata accessor for NowPlaying.TrackMetadata);
    if (v6)
    {
      if (v9)
      {
        if ([v10 isArtworkVisuallyIdenticalToCatalog:v7])
        {
          v8 = 1;
        }

        else
        {
          sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
          v8 = sub_1004DE5FC();
        }
      }

      else
      {
        v8 = 0;
        v7 = v10;
      }

      goto LABEL_13;
    }

    if (v9)
    {
LABEL_3:
      v8 = 0;
LABEL_13:

      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_100633D70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = sub_100035430(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return sub_1004DF08C();
}

void sub_1001DCD58()
{
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100035718(v11, static NowPlaying.TrackMetadata.notPlaying);
  v12 = sub_100035430(v11, static NowPlaying.TrackMetadata.notPlaying);
  sub_1004DD37C();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v14 = qword_100671958;
  sub_1004D838C();
  v15 = sub_1004DD4AC();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18(&v12[v20], 1, 1, v7);
  v21 = v11[8];
  *&v12[v21] = 0;
  v12[v11[9]] = 1;
  *v12 = 0x79616C705F746F6ELL;
  *(v12 + 1) = 0xEB00000000676E69;
  *(v12 + 2) = 0;
  sub_1001DFB0C(v10, &v12[v11[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DBB00(v19, &v12[v20]);
  v22 = *&v12[v21];
  *&v12[v21] = 0;
}

void sub_1001DD12C()
{
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100035718(v11, static NowPlaying.TrackMetadata.loading);
  v12 = sub_100035430(v11, static NowPlaying.TrackMetadata.loading);
  sub_1004DD37C();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v14 = qword_100671958;
  sub_1004D838C();
  v15 = sub_1004DD4AC();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18((v12 + v20), 1, 1, v7);
  v21 = v11[8];
  *(v12 + v21) = 0;
  *(v12 + v11[9]) = 1;
  strcpy(v12, "i_am_loading");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v12 + 16) = 0;
  sub_1001DFB0C(v10, v12 + v11[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DBB00(v19, v12 + v20);
  v22 = *(v12 + v21);
  *(v12 + v21) = 0;
}

uint64_t sub_1001DD4FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return sub_100035430(v4, a2);
}

uint64_t sub_1001DD574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = sub_100035430(v6, a2);
  return sub_1001DFAA4(v7, a4, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v69 = a2;
  v71 = a4;
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v68 = &v58 - v5;
  v70 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7E7C();
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1004D7E3C();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v58 - v9;
  sub_1004D83FC();
  __chkstk_darwin();
  v10 = sub_1004DD3EC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v58 - v14;
  sub_1004DD37C();
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v17 = qword_100671958;
  sub_1004D838C();
  v18 = v17;
  v19 = sub_1004DD4AC();
  v59 = v20;
  v60 = v19;
  v21 = *(v11 + 8);
  v21(v15, v10);
  sub_1004DD37C();
  v16(v13, v15, v10);
  sub_1004D838C();
  v22 = sub_1004DD4AC();
  v24 = v23;
  v21(v15, v10);
  v25 = [a1 route];
  v26 = a1;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 routeName];

    v29 = sub_1004DD43C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a1 representedBundleDisplayName];
  if (!v32)
  {
    if (v62)
    {
      goto LABEL_11;
    }

LABEL_12:

    v37 = v59;

    v31 = v37;
    v36 = v60;
    v29 = v60;
    goto LABEL_13;
  }

  v33 = v32;
  sub_1004DD43C();
  v35 = v34;

  if ((v62 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v35)
  {
LABEL_11:

    v37 = v59;

    v36 = v60;
    goto LABEL_13;
  }

  v31 = v24;
  v29 = v22;
  v37 = v59;
  v36 = v60;
LABEL_13:
  sub_1004D7E6C();
  sub_1004D7E4C();
  v38 = [v26 representedBundleID];
  if (!v38)
  {
    v38 = [v26 bundleID];
    if (!v38)
    {
      v61 = 0xD000000000000013;
      v62 = 0x80000001004F0A60;
      v66 = v26;
      if (v31)
      {
        goto LABEL_16;
      }

LABEL_18:
      v29 = v36;
      goto LABEL_19;
    }
  }

  v39 = v38;
  v61 = sub_1004DD43C();
  v62 = v40;

  v66 = v26;
  if (!v31)
  {
    goto LABEL_18;
  }

LABEL_16:

  v37 = v31;
LABEL_19:
  v41 = v65;
  v42 = v63;
  v43 = v67;
  (*(v65 + 16))(v63, v72, v67);
  v44 = v70;
  v45 = v64;
  v46 = &v64[*(v70 + 24)];
  *v46 = v29;
  v46[1] = v37;
  v47 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v48 = v68;
  (*(v41 + 32))(v68, v42, v43);
  swift_storeEnumTagMultiPayload();
  v49 = *(*(v47 - 8) + 56);
  v49(v48, 0, 1, v47);
  v50 = v44[7];
  v49(v45 + v50, 1, 1, v47);
  v51 = v44[8];
  *(v45 + v44[9]) = 1;
  v52 = v62;
  *v45 = v61;
  v45[1] = v52;
  v53 = v69;
  v45[2] = v69;
  v54 = v53;
  sub_1001DBB00(v48, v45 + v50);
  *(v45 + v51) = 0;
  v55 = v71;
  sub_1001DFB0C(v45, v71, type metadata accessor for NowPlaying.TrackMetadata);
  v56 = v66;
  LOBYTE(v46) = [v66 isSystemMusicPath];

  result = (*(v41 + 8))(v72, v43);
  *(v55 + v44[9]) = v46;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100004CB8(&qword_100634F38, &qword_10051C870);
  __chkstk_darwin();
  v11 = (&v65 - v10);
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v73 = &v65 - v12;
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin();
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = (&v65 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v18 = *(v17 - 1);
  __chkstk_darwin();
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v77 = a2;
    v78 = a3;
    v74 = v17;
    v75 = a4;
    v21 = a1;
    v22 = [v21 metadataObject];
    if (v22)
    {
      v68 = v22;
      v23 = [v22 innermostModelObject];
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      v67 = a5;
      v69 = v18;
      v70 = v24;
      v25 = v78;
      if (v24)
      {

        if (v77 && (v26 = [v77 items], v27 = objc_msgSend(v26, "firstSection"), v26, v27) && (v28 = objc_msgSend(v27, "metadataObject"), v27, v28))
        {
          v29 = [v28 anyObject];

          v30 = v72;
          if (v29)
          {
            objc_opt_self();
            v65 = v29;
            v29 = swift_dynamicCastObjCClass();
            if (!v29)
            {
            }
          }
        }

        else
        {
          v29 = 0;
          v30 = v72;
        }

        v66 = a1;
        if (v25)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v29, v25, v75);
        }

        else
        {
          *v16 = MPModelSong.nowPlayingTitle(from:)(v29);
          v16[1] = v35;
        }

        swift_storeEnumTagMultiPayload();
        v36 = [v21 queueItemIdentifier];
        v72 = sub_1004DD43C();
        v65 = v37;

        sub_1001DFAA4(v16, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v38 = v29;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_1005D3210, v29, v11);
        v39 = sub_1004D7E3C();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v11, 1, v39) == 1)
        {
          sub_10001074C(v11, &qword_100634F38, &qword_10051C870);
          v41 = 1;
          v42 = v73;
        }

        else
        {
          v42 = v73;
          (*(v40 + 32))(v73, v11, v39);
          swift_storeEnumTagMultiPayload();
          v41 = 0;
        }

        v43 = v30;
        v44 = *(v71 + 56);
        v44(v42, v41, 1, v43);
        v45 = [v70 artworkCatalog];

        sub_10000DE74(v78, v75);
        sub_1001DFB74(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v17 = v74;
        v46 = v74[7];
        v44(v20 + v46, 1, 1, v43);
        v47 = v17[8];
        *(v20 + v17[9]) = 1;
        v49 = v65;
        v48 = v66;
        *v20 = v72;
        v20[1] = v49;
        v20[2] = v48;
        sub_1001DFB0C(v76, v20 + v17[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_1001DBB00(v42, v20 + v46);
        *(v20 + v47) = v45;
        a5 = v67;
      }

      else
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v32;
          v34 = v23;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v33, v21, v20);

          sub_10000DE74(v25, v75);
          v17 = v74;
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          v17 = v74;
          v52 = v75;
          if (!v51)
          {

            if (qword_100633D80 != -1)
            {
              swift_once();
            }

            v55 = sub_1004D966C();
            sub_100035430(v55, qword_100639200);
            v56 = v68;
            v57 = sub_1004D964C();
            v58 = sub_1004DDF8C();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = v21;
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v80 = v61;
              *v60 = 136315138;
              v79 = [v56 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v62 = sub_1004DD4DC();
              v64 = sub_1000343A8(v62, v63, &v80);
              a5 = v67;

              *(v60 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v57, v58, "Unexpected metadataObject type %s", v60, 0xCu);
              sub_100008D24(v61);

              sub_10000DE74(v78, v52);
            }

            else
            {

              sub_10000DE74(v78, v52);
            }

            v31 = 1;
            goto LABEL_23;
          }

          v53 = v51;
          v54 = v23;
          NowPlaying.TrackMetadata.init(movie:item:)(v53, v21, v20);

          sub_10000DE74(v78, v52);
        }
      }

      sub_1001DFB0C(v20, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v31 = 0;
LABEL_23:
      v18 = v69;
      return (*(v18 + 56))(a5, v31, 1, v17);
    }

    sub_10000DE74(v78, v75);
    v31 = 1;
    v17 = v74;
  }

  else
  {
    sub_10000DE74(a3, a4);

    v31 = 1;
  }

  return (*(v18 + 56))(a5, v31, 1, v17);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100004CB8(&qword_100634F38, &qword_10051C870);
  __chkstk_darwin();
  v12 = (&v36 - v11);
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v43 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = (&v36 - v19);
  v40 = v18;
  v41 = a5;
  if (v18)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v18, a5);
  }

  else
  {
    *v20 = MPModelSong.nowPlayingTitle(from:)(a2);
    v20[1] = v21;
  }

  swift_storeEnumTagMultiPayload();
  v42 = a3;
  v22 = [a3 queueItemIdentifier];
  v23 = sub_1004DD43C();
  v37 = v24;
  v38 = v23;

  sub_1001DFAA4(v20, v43, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v39 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_1005D3238, a2, v12);
  v25 = sub_1004D7E3C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_10001074C(v12, &qword_100634F38, &qword_10051C870);
    v27 = 1;
  }

  else
  {
    (*(v26 + 32))(v14, v12, v25);
    swift_storeEnumTagMultiPayload();
    v27 = 0;
  }

  v28 = *(v16 + 56);
  v28(v14, v27, 1, v15);
  v29 = [a1 artworkCatalog];

  sub_10000DE74(v40, v41);
  sub_1001DFB74(v20, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v30 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v31 = v30[7];
  v28(&a6[v31], 1, 1, v15);
  v32 = v30[8];
  a6[v30[9]] = 1;
  v33 = v37;
  *a6 = v38;
  *(a6 + 1) = v33;
  v34 = v43;
  *(a6 + 2) = v42;
  sub_1001DFB0C(v34, &a6[v30[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001DBB00(v14, &a6[v31]);
  *&a6[v32] = v29;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v47 = &v42 - v6;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004CB8(&qword_100634F38, &qword_10051C870);
  __chkstk_darwin();
  v11 = &v42 - v10;
  sub_1004D83FC();
  __chkstk_darwin();
  v12 = sub_1004DD3EC();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - v17;
  v48 = a2;
  v19 = [a2 queueItemIdentifier];
  v20 = sub_1004DD43C();
  v42 = v21;
  v43 = v20;

  v44 = a1;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1004DD43C();
    v26 = v25;
  }

  else
  {
    sub_1004DD37C();
    (*(v13 + 16))(v15, v18, v12);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v27 = qword_100671958;
    sub_1004D838C();
    v24 = sub_1004DD4AC();
    v26 = v28;
    (*(v13 + 8))(v18, v12);
  }

  v29 = sub_1004D7E3C();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v11, 1, 1, v29);
  v31 = v44;
  v32 = [v44 artworkCatalog];

  *v9 = v24;
  v9[1] = v26;
  v33 = v46;
  swift_storeEnumTagMultiPayload();
  if ((*(v30 + 48))(v11, 1, v29) == 1)
  {
    sub_10001074C(v11, &qword_100634F38, &qword_10051C870);
    v34 = 1;
    v35 = v47;
  }

  else
  {
    v35 = v47;
    (*(v30 + 32))(v47, v11, v29);
    swift_storeEnumTagMultiPayload();
    v34 = 0;
  }

  v36 = *(v45 + 56);
  v36(v35, v34, 1, v33);
  v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v38 = v37[7];
  v36(a3 + v38, 1, 1, v33);
  v39 = v37[8];
  *(a3 + v37[9]) = 1;
  v40 = v42;
  *a3 = v43;
  a3[1] = v40;
  a3[2] = v48;
  sub_1001DFB0C(v9, a3 + v37[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1001DBB00(v35, a3 + v38);
  *(a3 + v39) = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v7 = &v34 - v6;
  sub_1004D83FC();
  __chkstk_darwin();
  v8 = sub_1004DD3EC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a2 queueItemIdentifier];
  v16 = sub_1004DD43C();
  v35 = v17;
  v36 = v16;

  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1004DD43C();
    v22 = v21;
  }

  else
  {
    sub_1004DD37C();
    (*(v9 + 16))(v11, v14, v8);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v23 = qword_100671958;
    sub_1004D838C();
    v20 = sub_1004DD4AC();
    v22 = v24;
    (*(v9 + 8))(v14, v8);
  }

  v25 = [a1 artworkCatalog];

  v26 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v27 = &a3[v26[6]];
  *v27 = v20;
  v27[1] = v22;
  v28 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v29 = *(*(v28 - 8) + 56);
  v29(v7, 1, 1, v28);
  v30 = v26[7];
  v29(&a3[v30], 1, 1, v28);
  v31 = v26[8];
  a3[v26[9]] = 1;
  v32 = v35;
  *a3 = v36;
  *(a3 + 1) = v32;
  *(a3 + 2) = a2;
  result = sub_1001DBB00(v7, &a3[v30]);
  *&a3[v31] = v25;
  return result;
}

uint64_t sub_1001DF1FC()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100639200);
  sub_100035430(v0, qword_100639200);
  return sub_1004D965C();
}

uint64_t sub_1001DF27C(Swift::String a1)
{
  sub_1004DD5FC(a1);

  return sub_1004D965C();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_1004D7E3C();
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v23 - v9);
  sub_100004CB8(&qword_1006393A0, qword_10051F7E8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v14 = (&v23 + *(v13 + 56) - v11);
  sub_1001DFAA4(a1, &v23 - v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFAA4(a2, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001DFAA4(v12, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v19 == *v14 && v18 == v14[1])
      {
      }

      else
      {
        v21 = sub_1004DF08C();

        if ((v21 & 1) == 0)
        {
          sub_1001DFB74(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_1001DFB74(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v16 = 1;
      return v16 & 1;
    }

LABEL_7:
    sub_10001074C(v12, &qword_1006393A0, qword_10051F7E8);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  sub_1001DFAA4(v12, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v8, v24);
    goto LABEL_7;
  }

  v15 = v24;
  (*(v4 + 32))(v6, v14, v24);
  v16 = sub_1004D7DEC();
  v17 = *(v4 + 8);
  v17(v6, v15);
  v17(v8, v15);
  sub_1001DFB74(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v16 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  sub_100004CB8(&qword_100639220, &qword_10051F6F0);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100639218, &qword_10051F6E8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = sub_100004CB8(&qword_100639398, &qword_10051F7E0);
  __chkstk_darwin();
  v14 = &v24 - v13;
  if (*a1 != *a2 && (sub_1004DF08C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(a1 + *(v15 + 24), a2 + *(v15 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v9;
  v26 = v15;
  v27 = v5;
  v16 = *(v15 + 28);
  v17 = *(v12 + 48);
  sub_1000108DC(a1 + v16, v14, &qword_100639218, &qword_10051F6E8);
  sub_1000108DC(a2 + v16, &v14[v17], &qword_100639218, &qword_10051F6E8);
  v18 = *(v7 + 48);
  if (v18(v14, 1, v6) == 1)
  {
    if (v18(&v14[v17], 1, v6) == 1)
    {
      sub_10001074C(v14, &qword_100639218, &qword_10051F6E8);
LABEL_13:
      v23 = v27;
      sub_1001DFAA4(a2, v27, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v26 - 8) + 56))(v23, 0, 1);
      v19 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v23);
      sub_10001074C(v23, &qword_100639220, &qword_10051F6F0);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1000108DC(v14, v11, &qword_100639218, &qword_10051F6E8);
  if (v18(&v14[v17], 1, v6) == 1)
  {
    sub_1001DFB74(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_9:
    sub_10001074C(v14, &qword_100639398, &qword_10051F7E0);
    goto LABEL_10;
  }

  v21 = v25;
  sub_1001DFB0C(&v14[v17], v25, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v22 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v11, v21);
  sub_1001DFB74(v21, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v14, &qword_100639218, &qword_10051F6E8);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1001DFAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFB74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DFBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_100639218, &qword_10051F6E8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001DFD2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100004CB8(&qword_100639218, &qword_10051F6E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001DFE5C(uint64_t a1)
{
  sub_1001DFFB0(319, &qword_100639290, &qword_100639298, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v2 <= 0x3F)
    {
      sub_1001DFF58(319);
      if (v3 <= 0x3F)
      {
        sub_1001DFFB0(319, &qword_1006392A8, &unk_1006392B0, MPArtworkCatalog_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001DFF58(uint64_t a1)
{
  if (!qword_1006392A0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1006392A0);
    }
  }
}

void sub_1001DFFB0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100006F10(255, a3, a4);
    v5 = sub_1004DE7CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001E0008(uint64_t a1)
{
  result = sub_1004D7E3C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001E0088(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1004DAF3C();
  sub_100004CB8(&qword_1006393B0, &qword_10051F890);
  sub_1004DB9EC();
  sub_1004D9C8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100004CB8(&qword_1006393B8, &qword_10051F898);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(sub_100004CB8(&qword_1006393C0, &qword_10051F8A0) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_1001E05BC();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = sub_100004CB8(&qword_1006393C8, &qword_10051F8A8);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_1001E0A68;
  v22[1] = v20;
}

void sub_1001E0210(uint64_t *a1, uint64_t a2, double a3)
{
  sub_1004DBD8C();
  sub_1004DA0EC();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  sub_1004DB9DC();
  return sub_1004DA31C();
}

uint64_t sub_1001E03B0(void *a1)
{
  sub_1004DA32C();
  sub_1001E0414();
  return swift_getWitnessTable();
}

unint64_t sub_1001E0414()
{
  result = qword_1006393A8;
  if (!qword_1006393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006393A8);
  }

  return result;
}

CGFloat sub_1001E04C0(uint64_t a1)
{
  v1 = sub_1004D7B6C();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  sub_1004DD43C();
  sub_1004DEA4C();
  if (!*(v2 + 16) || (v3 = sub_100028F3C(&v6), (v4 & 1) == 0))
  {

    sub_1000105EC(&v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_10000904C(*(v2 + 56) + 32 * v3, &v7);
  sub_1000105EC(&v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_10013EDFC(&v7);
    return 0.0;
  }

  _s3__C6CGRectVMa_0(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v6);
  }

  return 0.0;
}

uint64_t sub_1001E05BC()
{
  v0 = sub_100004CB8(&qword_1006393D0, &qword_10051F8B0);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  __chkstk_darwin();
  v30 = &v27 - v2;
  v3 = sub_1004DE27C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_1006393D8, &qword_10051F8B8);
  v29 = *(v7 - 8);
  v8 = v29;
  __chkstk_darwin();
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v27 - v10;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  sub_1004DE28C();

  sub_1001E0AD8();
  sub_1004D9BBC();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v14 = [v11 defaultCenter];
  sub_1004DE28C();

  v15 = v28;
  sub_1004D9BBC();
  v13(v6, v3);
  sub_100004CB8(&qword_1006393E8, &unk_10051F8C0);
  v16 = *(v29 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1005126C0;
  v19 = v18 + v17;
  v20 = *(v8 + 16);
  v21 = v27;
  v20(v19, v27, v7);
  v20(v19 + v16, v15, v7);
  sub_100042B08(&qword_1006393F0, &qword_1006393D8, &qword_10051F8B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v22 = v30;
  sub_1004D9A8C();
  sub_100042B08(&qword_1006393F8, &qword_1006393D0, &qword_10051F8B0, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v23 = v31;
  v24 = sub_1004D9BAC();
  (*(v32 + 8))(v22, v23);
  v25 = *(v8 + 8);
  v25(v15, v7);
  v25(v21, v7);
  return v24;
}

uint64_t sub_1001E0A30()
{

  return swift_deallocObject();
}

unint64_t sub_1001E0AD8()
{
  result = qword_1006393E0;
  if (!qword_1006393E0)
  {
    sub_1004DE27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006393E0);
  }

  return result;
}

uint64_t sub_1001E0B74(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1004D9B2C();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DE7CC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  sub_1001E0B74(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

double OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return result;
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_1001E1970(a1);
  v2 = sub_1004DE7CC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t (*OptionalObservableObject.output.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1004D9B5C();
  return sub_1001E0FE8;
}

void sub_1001E0FE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  sub_1004DE7CC();
  sub_1004D9B9C();
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_1001E1AA4(a1);
  sub_1004DE7CC();
  v2 = sub_1004D9B8C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  sub_1004DE7CC();
  v5 = sub_1004D9B8C();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  OptionalObservableObject.$output.getter();
  return sub_1001E12A4;
}

void sub_1001E12A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1001E1AA4(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1001E1AA4(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(__int128 *a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  sub_1004DE7CC();
  v6 = sub_1004D9B9C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5, v10);
  property wrapper backing initializer of OptionalObservableObject.output(v12, v5);
  (*(v7 + 32))(v2 + v13, v9, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 3))
  {
    v18 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 4);
LABEL_8:
    v19 = a1[1];
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 4);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_100008C70(&v21, v15);

    v17 = sub_1004D9BCC();

    if (*(a1 + 3))
    {
      sub_100008D24(a1);
    }

    goto LABEL_11;
  }

  sub_100035868(a1, v14);
  if (!*(a1 + 3))
  {
    goto LABEL_8;
  }

  sub_100035868(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 3);
  if (v16)
  {
    sub_100008D24(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      sub_100008D24(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_1001E16A4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_1004DE7CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_1001E1970(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  sub_1004DE7CC();
  v2 = sub_1004D9B9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 96));
  if (v3[3])
  {
    sub_100008D24(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E192C@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalObservableObject(0, *(a1 + 80), x2_0, a4);
  result = sub_1004D9AFC();
  *a3 = result;
  return result;
}

uint64_t sub_1001E1970(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1004DE7CC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return sub_1004D9B7C();
}

uint64_t sub_1001E1AA4(uint64_t a1)
{
  sub_1004DE7CC();
  sub_1004D9B8C();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  sub_1004D9B9C();
  sub_1004D9B4C();
  return swift_endAccess();
}

uint64_t sub_1001E1BD8(uint64_t a1)
{
  sub_1004DE7CC();
  result = sub_1004D9B9C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(v5, a2, a3);
  return v6;
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_1001E1FBC;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1001E1FC4;
  v14[3] = &unk_1005E4448;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1001E1E70(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1001E1EA8(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 32) == 1)
    {
      sub_1000C10F4();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001E227C, v7);
    }

    else
    {
      (*(Strong + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_1001E1FC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1001E2038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1001E21C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);

    v5(a2 & 1);
  }

  return result;
}

uint64_t sub_1001E2244()
{

  return swift_deallocObject();
}

uint64_t sub_1001E2288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10005A828(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1004D82AC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100056C8C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10005BED4();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1004D82AC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100232B8C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1004D82AC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_1001E2448(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100006F5C(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_10005A9F4(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_10001074C(a1, &qword_100638E60, &unk_10051A920);
    sub_100232254(a2, v6);

    sub_10001074C(v6, &qword_100638E60, &unk_10051A920);
  }
}

uint64_t sub_1001E24FC(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&unk_100639560, &qword_10051FA68);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_10001074C(a1, &unk_100639560, &qword_10051FA68);
    sub_1002322F4(a2, v6);
    v11 = sub_1004D82AC();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_10001074C(v6, &unk_100639560, &qword_10051FA68);
  }

  else
  {
    sub_100060134(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_10005AB44(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = sub_1004D82AC();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1001E2708(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&unk_10063B3C0, &unk_10051FBE8);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = sub_100004CB8(&qword_1006358E0, &qword_100516BF0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_10001074C(a1, &unk_10063B3C0, &unk_10051FBE8);
    sub_1002325DC(a2, v6);
    v12 = sub_1004D82AC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10001074C(v6, &unk_10063B3C0, &unk_10051FBE8);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10005B15C(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1004D82AC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_1001E293C()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_10005FAD4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_1001E29B8()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_10005FAD4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_100633D88 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

double static PushNotificationObserver.shared.getter()
{
  if (qword_100633D88 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  sub_100004CB8(&unk_100639560, &qword_10051FA68);
  v6[11] = swift_task_alloc();
  v7 = sub_1004D82AC();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001E2BD4, v5, 0);
}

uint64_t sub_1001E2BD4()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    v10 = *(v9 + 24);

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_1000601FC(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_1001E24FC(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      v12 = *(v0 + 80);
      v14 = *(v12 + 128);
      v13 = *(v12 + 136);
      sub_1001E464C(*(v1 + 120), v14, v13);
      v15 = v11;
      sub_1000742E4(v11, v14, v13);
      sub_1001E378C();
      isa = sub_1004DD85C().super.isa;

      [v15 _setEnabledTopics:isa];
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = sub_1001E2E34;

    return sub_1001E4190();
  }
}

uint64_t sub_1001E2E34()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1001E2F44, v1, 0);
}

uint64_t sub_1001E2F44()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v10 = *(v9 + 24);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_1000601FC(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_1001E24FC(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    v12 = *(v0 + 80);
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);
    sub_1001E464C(*(v6 + 120), v14, v13);
    v15 = v11;
    sub_1000742E4(v11, v14, v13);
    sub_1001E378C();
    isa = sub_1004DD85C().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  v17 = *(v0 + 8);

  return v17();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&unk_100639560, &qword_10051FA68);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1001E24FC(v5, v9);
  swift_endAccess();
  v12 = (v2 + 120);
  v11 = *(v2 + 120);
  if (v11)
  {
    v14 = *(v2 + 128);
    v13 = *(v2 + 136);
    sub_1001E464C(*(v2 + 120), v14, v13);
    v15 = v11;
    sub_1000742E4(v11, v14, v13);
    sub_1001E378C();
    isa = sub_1004DD85C().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v17 = *v12;
    if (*v12)
    {
      [v17 setDelegate:0];
      v17 = *v12;
      if (*v12)
      {
        [v17 shutdown];
        v17 = *v12;
      }
    }

    v18 = *(v2 + 128);
    v19 = *(v2 + 136);
    *v12 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    sub_1000742E4(v17, v18, v19);
  }
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (a4)
  {
    v10 = sub_1004DDA8C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;

    sub_10011F560(0, 0, v9, &unk_10051FA88, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001E350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1001E3530, 0, 0);
}

uint64_t sub_1001E3530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_1001E3558, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001E3558()
{
  sub_1001E3C24(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1001E378C()
{
  v56 = sub_100004CB8(&qword_100639720, &qword_10051FBD8);
  __chkstk_darwin();
  v55 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v46 - v2;
  __chkstk_darwin();
  v53 = &v46 - v3;
  __chkstk_darwin();
  v52 = &v46 - v4;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v5 = *(*(v0 + 112) + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v60 = _swiftEmptyArrayStorage;

  sub_1000374EC(0, v5, 0);
  v8 = v7;
  v6 = v60;
  v9 = v8 + 64;
  result = sub_1004DE93C();
  v11 = result;
  v12 = 0;
  v13 = *(v8 + 36);
  v47 = v8 + 72;
  v48 = v5;
  v49 = v13;
  v50 = v8 + 64;
  v51 = v8;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v13 != *(v8 + 36))
    {
      goto LABEL_26;
    }

    v57 = v12;
    v58 = 1 << v11;
    v16 = v56;
    v17 = *(v56 + 48);
    v18 = *(v8 + 48);
    v19 = sub_1004D82AC();
    v20 = *(v19 - 8);
    v21 = v20;
    v22 = v18 + *(v20 + 72) * v11;
    v23 = *(v20 + 16);
    v59 = v6;
    v24 = v52;
    v23(v52, v22, v19);
    v25 = *(v8 + 56);
    v26 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    sub_1000601FC(v25 + *(*(v26 - 8) + 72) * v11, &v24[v17]);
    v27 = *(v21 + 32);
    v28 = v53;
    v27(v53, v24, v19);
    sub_100060134(&v24[v17], v28 + *(v16 + 48));
    v29 = v54;
    sub_1001E55E4(v28, v54);
    v30 = *(v16 + 48);
    v31 = v55;
    v32 = &v55[v30];
    v27(v55, v29, v19);
    v33 = v29 + v30;
    v6 = v59;
    sub_100060134(v33, v31 + v30);
    v34 = *v32;
    v35 = *(v32 + 1);

    sub_10001074C(v31, &qword_100639720, &qword_10051FBD8);
    result = sub_10001074C(v28, &qword_100639720, &qword_10051FBD8);
    v60 = v6;
    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      result = sub_1000374EC((v36 > 1), v37 + 1, 1);
      v6 = v60;
    }

    v6[2] = v37 + 1;
    v38 = &v6[2 * v37];
    v38[4] = v34;
    v38[5] = v35;
    v8 = v51;
    v14 = 1 << *(v51 + 32);
    if (v11 >= v14)
    {
      goto LABEL_27;
    }

    v9 = v50;
    v39 = *(v50 + 8 * v15);
    if ((v39 & v58) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v13) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_29;
    }

    v40 = v39 & (-2 << (v11 & 0x3F));
    if (v40)
    {
      v14 = __clz(__rbit64(v40)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v15 << 6;
      v42 = v15 + 1;
      v43 = (v47 + 8 * v15);
      while (v42 < (v14 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_10002AF6C(v11, v49, 0);
          v14 = __clz(__rbit64(v44)) + v41;
          goto LABEL_5;
        }
      }

      result = sub_10002AF6C(v11, v49, 0);
    }

LABEL_5:
    v12 = v57 + 1;
    v11 = v14;
    if (v57 + 1 == v48)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1001E3C24(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v51 = a1;
  v46 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = &v34 - v7;
  v50 = sub_1004D82AC();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100639718, &qword_10051FBD0);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v34 - v12;
  swift_beginAccess();
  v14 = *(v3 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v35 = (v15 + 63) >> 6;
  v38 = v8 + 32;
  v39 = v8 + 16;
  v44 = v8;
  v18 = (v8 + 8);
  v19 = v14 + 64;
  v48 = v14;
  v49 = v18;

  v20 = 0;
  v47 = a2;
  v41 = v11;
  v42 = v6;
  v40 = v13;
  v37 = v19;
  while (v17)
  {
    v21 = v20;
LABEL_16:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v48;
    v27 = v44;
    (*(v44 + 16))(v43, *(v48 + 48) + *(v44 + 72) * v25, v50);
    v28 = *(v26 + 56);
    v29 = v45;
    sub_1000601FC(v28 + *(v46 + 72) * v25, v45);
    v30 = sub_100004CB8(&qword_100639720, &qword_10051FBD8);
    v31 = *(v30 + 48);
    v11 = v41;
    (*(v27 + 32))();
    sub_100060134(v29, &v11[v31]);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    a2 = v47;
    v6 = v42;
    v13 = v40;
    v19 = v37;
LABEL_17:
    sub_1001E53F4(v11, v13);
    v32 = sub_100004CB8(&qword_100639720, &qword_10051FBD8);
    if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
    {

      return;
    }

    sub_100060134(&v13[*(v32 + 48)], v6);
    if (*v6 == v51 && v6[1] == a2 || (sub_1004DF08C() & 1) != 0)
    {
      v6[2](v51, a2, v36);
    }

    sub_1001E5464(v6);
    (*v49)(v13, v50);
  }

  if (v35 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v35;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v35)
    {
      v33 = sub_100004CB8(&qword_100639720, &qword_10051FBD8);
      (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
      v17 = 0;
      v20 = v23;
      goto LABEL_17;
    }

    v17 = *(v19 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1001E40F8(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v10 = v3[16];
  v11 = v3[17];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return sub_1000742E4(v9, v10, v11);
}

uint64_t sub_1001E4190()
{
  *(v1 + 32) = v0;
  v2 = sub_1001E5654();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_1001E427C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x80000001004F0BC0, sub_1001E4764, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_1001E427C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1001E438C, v1, 0);
}

uint64_t sub_1001E438C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_1004DD43C();
      sub_1000C10F4();

      v5 = sub_1004DE14C();
      v6 = objc_allocWithZone(APSConnection);
      v7 = sub_1004DD3FC();
      v8 = sub_1004DD3FC();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_1001E464C(v11, v12, v13);
  sub_1000742E4(v11, v12, v13);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v16 = sub_1004DF08C();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_1001E40F8(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  sub_1000742E4(v9, v3, v2);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = qword_100639650;
  if (!qword_100639650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001E464C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

uint64_t sub_1001E4690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035C88;

  return sub_1001E350C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001E4764(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100639738, &qword_10051FBF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  v8 = static BagProvider.shared;
  v9 = *(v3 + 16);
  v9(v7, a1, v2);
  v9(v5, v7, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  sub_100004CB8(&qword_1006372B0, &qword_1005128E0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v13 = v22;
  if (v22)
  {
    sub_1001E4AC4(v22);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v14 = swift_allocObject();
    v21[1] = v12;
    v15 = v14;
    swift_weakInit();
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    swift_weakAssign();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = sub_1001E573C;
    v17[3] = v11;
    v17[4] = v16;
    v17[5] = v15;
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    *(v15 + 24) = sub_100114ECC;
    *(v15 + 32) = v17;

    sub_10000DE74(v18, v19);

    __chkstk_darwin();
    v21[-2] = v8;
    v21[-1] = v15;
    UnfairLock.locked<A>(_:)(sub_100114ED8);
    sub_10011C974(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001E4AC4(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1004DD21C();

  sub_1004DEA4C();
  if (!*(v3 + 16) || (v4 = sub_100028F3C(&v10), (v5 & 1) == 0))
  {

    sub_1000105EC(&v10);
    goto LABEL_8;
  }

  sub_10000904C(*(v3 + 56) + 32 * v4, v12);
  sub_1000105EC(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = sub_1004DD43C();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = sub_1004DD3FC();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  sub_100004CB8(&qword_100639738, &qword_10051FBF8);
  return sub_1004DD9DC();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_1000742E4(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_1000742E4(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001E4D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004D82AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001E4E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004D82AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1001E4EB4(uint64_t a1)
{
  result = sub_1000430A4();
  if (v2 <= 0x3F)
  {
    result = sub_1004D82AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E4F48(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001E4FB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1001E50F8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1001E5318(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001E5368(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001E53BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001E53F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100639718, &qword_10051FBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E5464(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E54C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001E5510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035B28;

  return sub_1001E350C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001E55E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100639720, &qword_10051FBD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E5654()
{
  result = qword_100639728;
  if (!qword_100639728)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639728);
  }

  return result;
}

uint64_t sub_1001E56A8()
{
  v1 = sub_100004CB8(&qword_100639738, &qword_10051FBF8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001E573C(void *a1)
{
  sub_100004CB8(&qword_100639738, &qword_10051FBF8);

  return sub_1001E4AC4(a1);
}

uint64_t sub_1001E57B8(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001E57F0()
{

  return swift_deallocObject();
}

double Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a5;
  v67 = a6;
  v72 = a4;
  v64 = a9;
  v65 = a3;
  v69 = a2;
  v60 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v71 = *(v60 + 64);
  __chkstk_darwin();
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v52 - v14;
  v15 = *(a7 - 8);
  __chkstk_darwin();
  v62 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v52 - v17;
  v19 = v18;
  v59 = v18;
  __chkstk_darwin();
  v21 = &v52 - v20;
  v22 = a8;
  v68 = a8;
  sub_1001E6B50(a7, a9);
  v53 = *(v15 + 16);
  v58 = a1;
  v53(v21, a1, a7);
  v23 = *(v15 + 80);
  v24 = (v23 + 32) & ~v23;
  v55 = v23 | 7;
  v25 = v19 + 7;
  v26 = (v19 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = v22;
  v54 = *(v15 + 32);
  v56 = v15 + 32;
  v28 = v27 + v24;
  v29 = v27;
  v61 = v27;
  v54(v28, v21, a7);
  v30 = v69;
  *(v29 + v26) = v69;
  v31 = v57;
  v53(v57, a1, a7);
  sub_1000108DC(v72, v70, &qword_1006359A0, &unk_100516EE0);
  v32 = (v23 + 40) & ~v23;
  v33 = (v25 + v32) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v60 + 80);
  v35 = swift_allocObject();
  v36 = v68;
  v35[2] = a7;
  v35[3] = v36;
  v35[4] = v30;
  v37 = v54;
  v54(v35 + v32, v31, a7);
  sub_10006A8BC(v65, v35 + v33);
  sub_100047F38(v70, v35 + ((v33 + v34 + 96) & ~v34), &qword_1006359A0, &unk_100516EE0);
  v38 = v63;
  sub_100047F38(v72, v63, &qword_1006359A0, &unk_100516EE0);
  v39 = v62;
  v37(v62, v58, a7);
  v40 = (v34 + 48) & ~v34;
  v41 = (v71 + v23 + v40) & ~v23;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 2) = a7;
  *(v42 + 3) = v43;
  v44 = v67;
  *(v42 + 4) = v66;
  *(v42 + 5) = v44;
  sub_100047F38(v38, &v42[v40], &qword_1006359A0, &unk_100516EE0);
  v37(&v42[v41], v39, a7);
  v45 = type metadata accessor for Actions.Pin.Context(0);
  v46 = v64;
  v47 = (v64 + v45[5]);
  v48 = v61;
  *v47 = sub_1001E8180;
  v47[1] = v48;
  v49 = (v46 + v45[6]);
  *v49 = &unk_10051FC08;
  v49[1] = v35;
  v50 = (v46 + v45[7]);
  *v50 = &unk_10051FC18;
  v50[1] = v42;

  return result;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001EE630(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = sub_100004CB8(&qword_1006359B8, &qword_100516F40);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1001E6194;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_10051FC20;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_10051FC28;
  v6[1] = 0;
  return result;
}

double Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a5;
  v54 = a6;
  v55 = a4;
  v50 = a3;
  v57 = a2;
  v52 = a9;
  v11 = *(a7 - 8);
  __chkstk_darwin();
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v42 - v13;
  v15 = v14;
  v48 = v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v19 = v18;
  v56 = v18;
  sub_1001E6B50(v20, v21);
  v45 = *(v11 + 16);
  v45(v17, v19, a7);
  v47 = *(v11 + 80);
  v22 = (v47 + 40) & ~v47;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a7;
  *(v23 + 3) = a8;
  v24 = v57;
  *(v23 + 4) = v57;
  v43 = *(v11 + 32);
  v44 = v11 + 32;
  v43(v23 + v22, v17, a7);
  v25 = v46;
  v45(v46, v56, a7);
  v26 = swift_allocObject();
  *(v26 + 2) = a7;
  *(v26 + 3) = a8;
  *(v26 + 4) = v24;
  v27 = v25;
  v28 = v43;
  v43(&v26[v22], v27, a7);
  sub_10006A8BC(v50, &v26[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v29 = v49;
  v28(v49, v56, a7);
  v30 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v47 + v31) & ~v47;
  v33 = swift_allocObject();
  *(v33 + 2) = a7;
  *(v33 + 3) = a8;
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  sub_100047F38(v55, &v33[v31], &qword_1006359A0, &unk_100516EE0);
  v28(&v33[v32], v29, a7);
  v35 = type metadata accessor for Actions.Unpin.Context(0);
  v37 = v51;
  v36 = v52;
  v38 = (v52 + v35[5]);
  *v38 = sub_1001ECCF4;
  v38[1] = v37;
  v39 = (v36 + v35[6]);
  *v39 = &unk_10051FC38;
  v39[1] = v26;
  v40 = (v36 + v35[7]);
  *v40 = &unk_10051FC48;
  v40[1] = v33;

  return result;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001EE630(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = sub_100004CB8(&qword_1006359B0, &qword_10051E110);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1001E63E4;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_10051FC50;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_10051FC58;
  v6[1] = 0;
  return result;
}

uint64_t sub_1001E61CC()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

uint64_t sub_1001E62E8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

uint64_t sub_1001E645C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

uint64_t sub_1001E6578()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004D8F7C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.UpdatePinAction.Context(0) - 8;
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001EE630(a1, v10, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v8 + 28), v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v11 != enum case for MusicPin.Action.play(_:))
    {
      if (v11 == enum case for MusicPin.Action.shuffle(_:))
      {
        v12 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v12 = 44;
    goto LABEL_8;
  }

  v12 = 46;
LABEL_8:
  sub_1001F2E88(v10, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = sub_100004CB8(&qword_100639740, &qword_10051FC70);
  *(a2 + result[9]) = v12;
  *(a2 + result[11]) = 0x4014000000000000;
  v14 = (a2 + result[10]);
  *v14 = sub_1001E68D8;
  v14[1] = 0;
  v15 = (a2 + result[12]);
  *v15 = &unk_10051FC60;
  v15[1] = 0;
  v16 = (a2 + result[13]);
  *v16 = &unk_10051FC68;
  v16[1] = 0;
  return result;
}

uint64_t sub_1001E6934()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007F594;

  return v5();
}

uint64_t sub_1001E6A50()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10007FD30;

  return v5();
}

uint64_t sub_1001E6B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v89 = sub_1004D8F9C();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v86 - v4;
  v99 = sub_1004D8B9C();
  v92 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v86 - v6;
  __chkstk_darwin();
  v93 = &v86 - v7;
  v96 = sub_1004DCF8C();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004DD01C();
  v98 = *(v104 - 8);
  __chkstk_darwin();
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v10;
  v106 = sub_1004DCAAC();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v86 - v12;
  __chkstk_darwin();
  v105 = &v86 - v13;
  v110 = sub_1004DC95C();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1004DD05C();
  v109 = *(v111 - 8);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DC2DC();
  v112 = *(v17 - 8);
  v113 = v17;
  __chkstk_darwin();
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DCB3C();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004DCA0C();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v31;
  (*(v31 + 16))(v30, v114, a1, v28);
  if (swift_dynamicCast())
  {
    v32 = v115;
    (*(v25 + 32))(v115, v27, v24);
    v33 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v34 = *v33;
    v35 = sub_1004D8F4C();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v32, v34, v35);
    (*(v36 + 56))(v32, 0, 1, v35);
    return (*(v116 + 8))(v30, a1);
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    v38 = v37;
    (*(v21 + 32))(v37, v23, v20);
    v39 = enum case for MusicPin.Item.artist(_:);
    v40 = sub_1004D8F4C();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v38, v39, v40);
    (*(v41 + 56))(v38, 0, 1, v40);
    return (*(v116 + 8))(v30, a1);
  }

  v43 = v113;
  if (swift_dynamicCast())
  {
    v32 = v37;
    (*(v112 + 32))(v37, v19, v43);
    v33 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v44 = v111;
  v32 = v37;
  if (swift_dynamicCast())
  {
    (*(v109 + 32))(v37, v16, v44);
    v33 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v45 = v108;
  v46 = v110;
  if (swift_dynamicCast())
  {
    (*(v107 + 32))(v32, v45, v46);
    v33 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v47 = v105;
  v48 = v106;
  if (swift_dynamicCast())
  {
    v50 = v102;
    v49 = v103;
    (*(v103 + 32))(v102, v47, v48);
    v51 = v101;
    (*(v49 + 16))(v101, v50, v48);
    v52 = (*(v49 + 88))(v51, v48);
    if (v52 == enum case for Track.song(_:))
    {
      (*(v49 + 96))(v51, v48);
      (*(v107 + 32))(v32, v51, v46);
LABEL_16:
      v53 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v71 = *v53;
      v72 = sub_1004D8F4C();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v32, v71, v72);
      (*(v73 + 56))(v32, 0, 1, v72);
      goto LABEL_30;
    }

    if (v52 != enum case for Track.musicVideo(_:))
    {
      v74 = sub_1004D8F4C();
      (*(*(v74 - 8) + 56))(v32, 1, 1, v74);
      v75 = *(v49 + 8);
      v75(v51, v48);
      v75(v50, v48);
      return (*(v116 + 8))(v30, a1);
    }

    (*(v49 + 96))(v51, v48);
    (*(v112 + 32))(v32, v51, v43);
LABEL_28:
    v53 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v54 = v100;
  v48 = v104;
  if (swift_dynamicCast())
  {
    v50 = v97;
    v49 = v98;
    (*(v98 + 32))(v97, v54, v48);
    v55 = v94;
    sub_1004DCF9C();
    v56 = v95;
    v57 = v96;
    v58 = (*(v95 + 88))(v55, v96);
    if (v58 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v112 + 32))(v32, v55, v113);
        goto LABEL_28;
      }

      if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v107 + 32))(v32, v55, v110);
        goto LABEL_16;
      }

      if (v58 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v84 = sub_1004D8F4C();
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        (*(v56 + 8))(v55, v57);
        goto LABEL_30;
      }
    }

    (*(v56 + 8))(v55, v57);
    v59 = sub_1004D8F4C();
    (*(*(v59 - 8) + 56))(v32, 1, 1, v59);
LABEL_30:
    (*(v49 + 8))(v50, v48);
    return (*(v116 + 8))(v30, a1);
  }

  v60 = v93;
  v61 = v99;
  if (swift_dynamicCast())
  {
    v62 = v92;
    v63 = v91;
    (*(v92 + 32))(v91, v60, v61);
    v64 = v90;
    (*(v62 + 16))(v90, v63, v61);
    v65 = (*(v62 + 88))(v64, v61);
    if (v65 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v25 + 32))(v32, v64, v24);
      v66 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v67 = *v66;
      v68 = v63;
      v69 = sub_1004D8F4C();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v32, v67, v69);
      (*(v70 + 56))(v32, 0, 1, v69);
      (*(v62 + 8))(v68, v61);
      return (*(v116 + 8))(v30, a1);
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v112 + 32))(v32, v64, v113);
      v66 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v109 + 32))(v32, v64, v111);
      v66 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v65 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v81 = *(v62 + 8);
      v81(v64, v61);
      v82 = sub_1004D8F4C();
      (*(*(v82 - 8) + 56))(v32, 1, 1, v82);
    }

    else
    {
      v85 = sub_1004D8F4C();
      (*(*(v85 - 8) + 56))(v32, 1, 1, v85);
      v81 = *(v62 + 8);
      v81(v64, v61);
    }

    v81(v63, v61);
    return (*(v116 + 8))(v30, a1);
  }

  v76 = v88;
  v77 = v89;
  if (swift_dynamicCast())
  {
    v78 = v87;
    v79 = v86;
    (*(v87 + 32))(v86, v76, v77);
    sub_1004D8F5C();
    (*(v78 + 8))(v79, v77);
    v80 = sub_1004D8F4C();
    (*(*(v80 - 8) + 56))(v32, 0, 1, v80);
  }

  else
  {
    v83 = sub_1004D8F4C();
    (*(*(v83 - 8) + 56))(v32, 1, 1, v83);
  }

  return (*(v116 + 8))(v30, a1);
}

uint64_t sub_1001E7CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v35 = a2;
  v32 = sub_1004DC77C();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_1006399B0, &qword_10051FD40);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v28 - v9;
  sub_100004CB8(&qword_100635B98, &qword_100517440);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DCA0C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v33 = a1;
  v21(v15, a1, a3, v18);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v16);
    sub_10001074C(v12, &qword_100635B98, &qword_100517440);
    goto LABEL_5;
  }

  v23(v12, 0, 1, v16);
  (*(v17 + 32))(v20, v12, v16);
  v24 = Album.childrenAddStatus(_:)(v35);
  (*(v17 + 8))(v20, v16);
  if (v24 != 1)
  {
LABEL_5:
    sub_1004D8C7C();
    v26 = v32;
    sub_1004DC56C();
    (*(v34 + 8))(v7, v26);
    v25 = sub_1001E81E8();
    (*(v29 + 8))(v10, v30);
    return v25;
  }

  return 0x206C616974726150;
}

uint64_t sub_1001E80EC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1001E81E8()
{
  v1 = sub_1004DC76C();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100004CB8(&qword_1006399B0, &qword_10051FD40);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v8 + 16);
  v24 = v0;
  v13(&v22 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_1004DEAAC(27);

      *&v34[0] = 0xD000000000000019;
      *(&v34[0] + 1) = 0x80000001004EB750;
      (v13)(v23, v24, v7);
      v35._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v35);

      v19 = *&v34[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v25;
  (*(v25 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x2079646165726C41;
    }

    if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (qword_100633B60 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v34[4] = v30;
        v34[5] = v31;
        v34[6] = v32;
        v34[7] = v33;
        v34[0] = v26;
        v34[1] = v27;
        v34[2] = v28;
        v34[3] = v29;
        sub_100073E60(v34);
        if ((WORD4(v34[0]) & 0x100) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0xD000000000000016;
        }
      }

      else
      {
        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD00000000000001CLL;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000018;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x6C20646572616853;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x4C206E6920746F4ELL;
        }

        v19 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v34[0] = 0;
          *(&v34[0] + 1) = 0xE000000000000000;
          sub_1004DEAAC(17);

          *&v34[0] = 0x206E776F6E6B6E55;
          *(&v34[0] + 1) = 0xEF206E6F73616572;
          v16(v22, v18, v1);
          v36._countAndFlagsBits = sub_1004DD4DC();
          sub_1004DD5FC(v36);

          v19 = *&v34[0];
          v21 = *(v15 + 8);
          v21(v18, v1);
          v21(v4, v1);
          return v19;
        }
      }

      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

uint64_t sub_1001E8924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = sub_1004DC3BC();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = sub_1004D82AC();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  sub_1004D83FC();
  v6[78] = swift_task_alloc();
  v11 = sub_1004DD3EC();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  sub_1004DD3CC();
  v6[83] = swift_task_alloc();
  v12 = sub_1004DC76C();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = sub_1004D8F7C();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = sub_1004DC77C();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = sub_100004CB8(&qword_1006399B0, &qword_10051FD40);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_1001E8DA8, 0, 0);
}

uint64_t sub_1001E8DA8(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[101];
  v35 = v1[100];
  v36 = v1[102];
  v4 = v1[99];
  v5 = v1[98];
  v6 = v1[97];
  sub_1004D8C7C();
  sub_1004DC56C();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v36, v2, v35);
  v7 = (*(v3 + 88))(v36, v35);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[102];
    v9 = v1[87];
    v10 = v1[86];
    v11 = v1[85];
    v12 = v1[84];
    (*(v1[101] + 96))(v8, v1[100]);
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v1[118] = sub_1004DDA4C();
      v1[119] = sub_1004DDA3C();
      v14 = sub_1004DD9BC();
      v16 = v15;
      v17 = sub_1001E9D24;
      v18 = v14;
      v19 = v16;
LABEL_10:

      return _swift_task_switch(v17, v18, v19);
    }

    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v1[111] = sub_1004DDA4C();
      v1[112] = sub_1004DDA3C();
      v28 = sub_1004DD9BC();
      v19 = v29;
      v1[113] = v28;
      v1[114] = v29;
      v17 = sub_1001E98C4;
      v18 = v28;
      goto LABEL_10;
    }

    v30 = v1 + 87;
    v31 = v1 + 85;
    v32 = v1 + 84;
    (*(v1[85] + 8))(v1[86], v1[84]);
    goto LABEL_15;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 102;
    v31 = v1 + 101;
    v32 = v1 + 100;
LABEL_15:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[101] + 8))(v1[103], v1[100]);

    v33 = v1[1];

    return v33();
  }

  v20 = v1[96];
  v21 = enum case for MusicPin.Action.navigate(_:);
  v22 = sub_1004D8F7C();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = swift_task_alloc();
  v1[104] = v23;
  *v23 = v1;
  v23[1] = sub_1001E929C;
  v24 = v1[96];
  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v27, v24, v26, v25);
}

uint64_t sub_1001E929C()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001EA564;
  }

  else
  {
    v5 = sub_1001E940C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E940C()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = sub_1004DDA4C();
  *(v0 + 856) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001E94B4, v2, v1);
}

uint64_t sub_1001E94B4()
{
  v1 = *(v0 + 744);

  sub_10019AC38(v1, 0);
  sub_1000E5CE0(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1001E954C, 0, 0);
}

uint64_t sub_1001E954C()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  sub_100004CB8(&qword_100635268, &unk_100516160);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    sub_100008C70((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      sub_100008D24((v0 + 448));
    }

    else
    {
      sub_100008D24((v0 + 448));
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_10001074C(v0 + 448, &unk_10063AC70, &qword_100518330);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = sub_1004DDA3C();
  v8 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001E96C4, v8, v7);
}

uint64_t sub_1001E96C4()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_1001E975C, 0, 0);
}

uint64_t sub_1001E975C()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001E98C4(uint64_t a1)
{
  v2 = v1[65];
  v3 = sub_1004DDA3C();
  v1[115] = v3;
  v4 = swift_task_alloc();
  v1[116] = v4;
  *(v4 + 16) = 7;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[117] = v5;
  *v5 = v1;
  v5[1] = sub_1001E99D8;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 122, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v4, &type metadata for Bool);
}

uint64_t sub_1001E99D8()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_1001E9B38, v3, v2);
}

uint64_t sub_1001E9B38()
{

  return _swift_task_switch(sub_1001E9BA0, 0, 0);
}

uint64_t sub_1001E9BA0()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001E9D24()
{

  sub_1001362BC(0, v0 + 280);

  return _swift_task_switch(sub_1001E9D98, 0, 0);
}

uint64_t sub_1001E9D98(uint64_t a1)
{
  *(v1 + 960) = sub_1004DDA3C();
  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001E9E24, v3, v2);
}

uint64_t sub_1001E9E24()
{
  v1 = *(v0 + 520);

  v2 = sub_1000EA900((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_100257E18;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_100258DB8;
    *(v0 + 376) = &unk_1005E4B08;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10007DCE4, v16);
    sub_10000DE74(v5, v6);

    sub_100074384(v0 + 280);
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 312), 1, 0, 0);

    sub_100074384(v0 + 280);
  }

  return _swift_task_switch(sub_1001F33EC, 0, 0);
}

uint64_t sub_1001EA10C()
{
  v1 = *(v0 + 520);

  v2 = sub_1000EA900((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_100633E08;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, qword_10063B820);
    v9 = sub_1004D964C();
    v10 = sub_1004DDF9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_100257E18;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100258DB8;
    *(v0 + 424) = &unk_1005E4B80;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_1000699E8(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10006A8BC(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_10007DCE4, v16);
    sub_10000DE74(v5, v6);

    sub_100074384(v0 + 208);
    v19 = sub_1001EA3F4;
  }

  else
  {
    sub_1002562F8(v2, *(v0 + 240), 1, 0, 0);

    sub_100074384(v0 + 208);
    v19 = sub_1001F3420;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_1001EA3F4()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001EA564()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      sub_1004DC7AC();
      sub_1004DC79C();
      sub_1004DC43C();

      v5 = sub_1004D8D0C();

      sub_1004DD3BC();
      v52._countAndFlagsBits = 0xD000000000000035;
      v52._object = 0x80000001004F0C00;
      sub_1004DD3AC(v52);
      v48 = v5;
      *(v0 + 496) = v5;
      sub_1001F2F4C();
      v53._countAndFlagsBits = sub_1004DE8CC();
      sub_1004DD39C(v53);

      v54._countAndFlagsBits = 0xD000000000000018;
      v54._object = 0x80000001004F0C40;
      sub_1004DD3AC(v54);
      sub_1004DD3DC();
      v38 = *(v3 + 16);
      v38(v2, v1, v4);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 656);
      v7 = *(v0 + 648);
      v8 = *(v0 + 640);
      v9 = *(v0 + 632);
      v40 = *(v0 + 720);
      v41 = *(v0 + 616);
      v43 = *(v0 + 712);
      v42 = *(v0 + 600);
      v44 = *(v0 + 592);
      v45 = *(v0 + 584);
      v46 = *(v0 + 576);
      v34 = *(v0 + 528);
      v35 = *(v0 + 704);
      v33 = *(v0 + 512);
      v10 = qword_100671958;
      v49 = *(v0 + 536);
      sub_1004D838C();
      v11 = v10;
      v50 = sub_1004DD4AC();
      v32 = v12;
      v13 = *(v8 + 8);
      v13(v6, v9);
      v31 = v13;
      sub_1004DD37C();
      v38(v7, v6, v9);
      sub_1004D838C();
      v14 = sub_1004DD4AC();
      v36 = v15;
      v37 = v14;
      v13(v6, v9);
      sub_100004CB8(&qword_100634F40, &qword_100515800);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100511DA0;
      sub_1004DD37C();
      v38(v7, v6, v9);
      sub_1004D838C();
      v47 = sub_1004DD4AC();
      v39 = v17;
      v31(v6, v9);
      (*(v35 + 16))(v40, v33, v49);
      sub_1000108DC(v34, v41, &qword_1006359A0, &unk_100516EE0);
      v18 = (*(v35 + 80) + 56) & ~*(v35 + 80);
      v19 = (v43 + *(v42 + 80) + v18) & ~*(v42 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v49;
      *(v20 + 32) = v50;
      *(v20 + 40) = v32;
      *(v20 + 48) = v48;
      (*(v35 + 32))(v20 + v18, v40, v49);
      sub_100047F38(v41, v20 + v19, &qword_1006359A0, &unk_100516EE0);

      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v21 = sub_1004D827C();
      v23 = v22;
      (*(v45 + 8))(v44, v46);
      *(v16 + 32) = v21;
      *(v16 + 40) = v23;
      *(v16 + 48) = v47;
      *(v16 + 56) = v39;
      *(v16 + 64) = 2;
      *(v16 + 72) = &unk_10051FD50;
      *(v16 + 80) = v20;
      *(v0 + 208) = v37;
      *(v0 + 216) = v36;
      *(v0 + 224) = v50;
      *(v0 + 232) = v32;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v16;
      *(v0 + 272) = 0;
      sub_1004DDA4C();
      *(v0 + 968) = sub_1004DDA3C();
      v25 = sub_1004DD9BC();

      return _swift_task_switch(sub_1001EA10C, v25, v24);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v26 = *(v0 + 824);
  v27 = *(v0 + 808);
  v28 = *(v0 + 800);

  (*(v27 + 8))(v26, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001EAC9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_10006A898(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_1004D809C();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001EAFBC()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035C88;

  return sub_1001E8924(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  __chkstk_darwin();
  v7 = &v40 - v6;
  v8 = sub_100004CB8(&qword_100639748, &qword_10051FC78);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - v10;
  v43 = objc_opt_self();
  v12 = [v43 standardUserDefaults];
  v13 = sub_100155524();
  v14 = sub_100030C58();
  v44 = v13;
  v42 = v14;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    sub_10001074C(&aBlock, &qword_100638E60, &unk_10051A920);
  }

  sub_1004DC7AC();
  sub_1004DC79C();
  sub_1004DC43C();

  sub_1004D8D1C();

  sub_1001EE6B8();
  sub_1004DDCFC();
  sub_1004DDD3C();
  v15 = sub_1004DDD2C();
  (*(v9 + 8))(v11, v8);
  if (v15 >= 2)
  {
    v16 = [objc_opt_self() sharedCloudController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v18 & 1) == 0)
      {
        sub_1000108DC(a3, v7, &qword_1006359A0, &unk_100516EE0);
        v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v41;
        *(v20 + 24) = a2;
        sub_100047F38(v7, v20 + v19, &qword_1006359A0, &unk_100516EE0);

        sub_1001396CC(sub_1001F1F78, v20, v51);

        v21 = sub_1000EA900(v51, 0, 1);
        v22 = v21;
        v23 = v52;
        v24 = v45;
        v25 = *(v45 + 80);
        if (v25)
        {
          v26 = *(v45 + 88);
          v27 = qword_100633E08;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = sub_1004D966C();
          sub_100035430(v28, qword_10063B820);
          v29 = sub_1004D964C();
          v30 = sub_1004DDF9C();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = sub_100257E18;
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = sub_100258DB8;
          v48 = &unk_1005E47E0;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_1000699E8(v24, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_10006A8BC(&aBlock, v35 + 24);
          *(v35 + 120) = v22;
          *(v35 + 128) = v23;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v22;
          v25(v24, v37, sub_10007DB94, v35);
          sub_10000DE74(v25, v26);
        }

        else
        {
          sub_1002562F8(v21, v52, 1, 0, 0);
        }

        sub_100074384(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON, v44, v42);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001EB754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_1001EB850, 0, 0);
}

uint64_t sub_1001EB850()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  sub_1004DEAAC(79);
  v21._countAndFlagsBits = 0xD000000000000035;
  v21._object = 0x80000001004F0C00;
  sub_1004DD5FC(v21);
  *(v0 + 416) = v5;
  sub_1001F2F4C();
  v22._countAndFlagsBits = sub_1004DE8CC();
  sub_1004DD5FC(v22);

  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x80000001004F0C40;
  sub_1004DD5FC(v23);
  (*(v2 + 16))(v1, v4, v3);
  sub_100004CB8(&qword_100635268, &unk_100516160);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    sub_100008C70((v0 + 376), v6);
    v8 = (*(v7 + 8))(v6, v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
    }

    else
    {
      v11 = 0xEB000000006D6574;
      v10 = 0x497972617262694CLL;
    }

    sub_100008D24((v0 + 376));
  }

  else
  {
    v11 = 0xEB000000006D6574;
    v10 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_10001074C(v0 + 376, &unk_10063AC70, &qword_100518330);
  }

  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001004F0C60;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_1005D3260;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x80000001004F0C60;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_1005D3260;
  *(v0 + 216) = v10;
  *(v0 + 224) = v11;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_1000FF624(v0 + 16, v0 + 256);
  sub_1000FF65C(v0 + 136);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 472);
  sub_1000108DC(*(v0 + 456), v14, &qword_1006359A0, &unk_100516EE0);
  v15 = type metadata accessor for Actions.MetricsReportingContext(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  v17 = *(v0 + 472);
  if (v16 == 1)
  {
    sub_10001074C(*(v0 + 472), &qword_1006359A0, &unk_100516EE0);
  }

  else
  {

    sub_1000E5CE0(v17, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_1000FF65C(v0 + 16);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001EBC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001EBE44, 0, 0);
}

uint64_t sub_1001EBE44()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000108DC(*(v0 + 88), v4, &qword_1006359A0, &unk_100516EE0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 232), &qword_1006359A0, &unk_100516EE0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    sub_1001F2E88(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    v10 = *(*(v9 + 8) + 8);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8, v10);
    *(v0 + 272) = v11;
    v12 = sub_1004D809C();
    *(v0 + 280) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v7, 1, 1, v12);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v10);
    *(inited + 40) = v16;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_10004B4B4(inited);
    *(v0 + 312) = v17;
    *(v0 + 320) = v18;
    *(v0 + 336) = v19;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 328) = sub_1004DDA3C();
    v21 = sub_1004DD9BC();

    return _swift_task_switch(sub_1001EC150, v21, v20);
  }
}

uint64_t sub_1001EC150()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000108DC(v36 + v14[6], *(v0 + 208), &qword_100634B30, &unk_100513D70);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100047F38(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1001F2E88(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_1000E1368, 0, 0);
}

uint64_t sub_1001EC904()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035C88;

  return sub_1001EBC2C(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

unint64_t sub_1001ECA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004DC3FC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_1006399A8, &qword_10051FD38);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  sub_1004D8C9C();
  sub_1004DC56C();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1001ECD34();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1001ECC38()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_1001ECD34()
{
  v1 = sub_1004DC3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v22 - v4;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100004CB8(&qword_1006399A8, &qword_10051FD38);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = *(v8 + 16);
  v24 = v0;
  v14(&v22 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v25;
    v16(v25, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v1);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v19 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v6, v1);
    }

    else if (v18 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1004DEAAC(17);

      v26 = 0x206E776F6E6B6E55;
      v27 = 0xEF206E6F73616572;
      v16(v23, v6, v1);
      v29._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v29);

      v19 = v26;
      v21 = *(v2 + 8);
      v21(v6, v1);
      v21(v25, v1);
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1004DEAAC(27);

    v26 = 0xD000000000000019;
    v27 = 0x80000001004EB750;
    (v14)(v10, v24, v7);
    v28._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v28);

    v19 = v26;
    (*(v8 + 8))(v13, v7);
  }

  return v19;
}

uint64_t sub_1001ED248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_1001ED334;

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t sub_1001ED334()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1001ED480, 0, 0);
  }
}

uint64_t sub_1001ED480()
{
  swift_storeEnumTagMultiPayload();
  sub_1004DDA4C();
  *(v0 + 48) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001ED520, v2, v1);
}

uint64_t sub_1001ED520()
{
  v1 = *(v0 + 32);

  sub_10019AC38(v1, 0);
  sub_1000E5CE0(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001ED5BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10006A898(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001ED6CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100035C88;

  return sub_1001ED248(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_1001ED7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001ED9F4, 0, 0);
}

uint64_t sub_1001ED9F4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000108DC(*(v0 + 88), v4, &qword_1006359A0, &unk_100516EE0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10001074C(*(v0 + 232), &qword_1006359A0, &unk_100516EE0);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    sub_1001F2E88(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    v10 = *(*(v9 + 8) + 8);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8, v10);
    *(v0 + 272) = v11;
    v12 = sub_1004D809C();
    *(v0 + 280) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v7, 1, 1, v12);
    sub_100004CB8(&qword_100635BA8, &qword_100517A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v10);
    *(inited + 40) = v16;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_10004B4B4(inited);
    *(v0 + 312) = v17;
    *(v0 + 320) = v18;
    *(v0 + 336) = v19;
    swift_setDeallocating();
    sub_10007FCDC(inited + 32);
    sub_1004DDA4C();
    *(v0 + 328) = sub_1004DDA3C();
    v21 = sub_1004DD9BC();

    return _swift_task_switch(sub_1001EDD00, v21, v20);
  }
}

uint64_t sub_1001EDD00()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000108DC(v7, v72, &qword_100635248, &unk_100516140);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));
    sub_10001074C(v20, &qword_100635248, &unk_100516140);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100046F14(v75, v77);

    sub_100047EC8(v19, v17, v18, v16, SBYTE1(v16));

    sub_1000E5CE0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000108DC(v23, v24, &qword_100635248, &unk_100516140);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_10001074C(*(v0 + 160), &qword_100635248, &unk_100516140);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1000E5CE0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000108DC(v30, v31, &qword_100635248, &unk_100516140);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000108DC(v36 + v14[6], *(v0 + 208), &qword_100634B30, &unk_100513D70);
    sub_1000E5CE0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_100047F38(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v37, v38, &qword_100635248, &unk_100516140);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_10001074C(*(v0 + 144), &qword_100635248, &unk_100516140);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1000E5CE0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000108DC(v42, v43, &qword_100635248, &unk_100516140);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_10001074C(v45, &qword_100635248, &unk_100516140);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1000E5CE0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000108DC(v47, v48, &qword_100635248, &unk_100516140);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_10001074C(*(v0 + 128), &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1000E5CE0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_100047F38(v54, v55, &qword_100635248, &unk_100516140);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_10001074C(v58, &qword_100635248, &unk_100516140);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1000E5CE0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1001F2E88(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_1000742B8(v65, v64, v63, v70, SBYTE1(v70));
  sub_1000E5CE0(v69, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v68, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_1000E5D48, 0, 0);
}

uint64_t sub_1001EE4B8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100035C88;

  return sub_1001ED7DC(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_1001EE630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001EE6B8()
{
  result = qword_100639750;
  if (!qword_100639750)
  {
    sub_100008DE4(&qword_100639748, &qword_10051FC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100639750);
  }

  return result;
}

double Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v81 = a6;
  v82 = a4;
  v88 = a3;
  v85 = a2;
  v9 = sub_1004D8F7C();
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  __chkstk_darwin();
  v90 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v67 - v12;
  __chkstk_darwin();
  v84 = &v67 - v13;
  v14 = sub_1004D8F9C();
  v83 = v14;
  v92 = *(v14 - 8);
  v15 = v92;
  v89 = *(v92 + 64);
  __chkstk_darwin();
  v91 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v67 - v17;
  v18 = __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = *(v15 + 16);
  v78 = a7;
  v86 = a1;
  v21(a7, a1, v14, v18);
  v72 = v21;
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v22 = *(v10 + 16);
  v23 = (a7 + *(updated + 20));
  v24 = v85;
  v93 = v9;
  v25 = v22;
  v71 = v22;
  v22(v23, v85, v9);
  (v21)(v20, a1, v14);
  v25(v84, v24, v9);
  v26 = v92;
  v75 = *(v92 + 80);
  v27 = *(v10 + 80);
  v28 = v10;
  v29 = (v75 + 24) & ~v75;
  v70 = v29;
  v30 = (v89 + v27 + v29) & ~v27;
  v87 = v75 | v27 | 7;
  v31 = v74;
  v32 = swift_allocObject();
  v33 = v88;
  *(v32 + 16) = v88;
  v69 = *(v26 + 32);
  v92 = v26 + 32;
  v34 = v32 + v29;
  v35 = v32;
  v76 = v32;
  v36 = v20;
  v37 = v83;
  v69(v34, v36, v83);
  v38 = *(v28 + 32);
  v67 = v28 + 32;
  v68 = v38;
  v39 = v35 + v30;
  v40 = v93;
  v38(v39, v84, v93);
  v41 = v73;
  v72(v73, v86, v37);
  v42 = v77;
  v43 = v85;
  v71(v77, v85, v40);
  v44 = swift_allocObject();
  v84 = v44;
  *(v44 + 16) = v33;
  v45 = v41;
  v46 = v83;
  v47 = v69;
  v69(v44 + v70, v45, v83);
  v48 = v44 + v30;
  v49 = v42;
  v50 = v93;
  v51 = v68;
  v68(v48, v49, v93);
  v51(v90, v43, v50);
  v47(v91, v86, v46);
  v52 = v47;
  v53 = (v27 + 32) & ~v27;
  v54 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v55 = (v53 + v31 + *(v54 + 80)) & ~*(v54 + 80);
  v56 = (*(v54 + 64) + v75 + v55) & ~v75;
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v80;
  *(v57 + 24) = v58;
  v51((v57 + v53), v90, v93);
  sub_100047F38(v82, v57 + v55, &qword_1006359A0, &unk_100516EE0);
  v52(v57 + v56, v91, v46);
  v59 = v78;
  v60 = updated;
  v61 = (v78 + *(updated + 24));
  v62 = v76;
  *v61 = sub_1001F2014;
  v61[1] = v62;
  v63 = (v59 + *(v60 + 28));
  v64 = v84;
  *v63 = &unk_10051FC88;
  v63[1] = v64;
  v65 = (v59 + *(v60 + 32));
  *v65 = &unk_10051FC98;
  v65[1] = v57;

  return result;
}

uint64_t sub_1001EECD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1004DC54C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100639998, &qword_10051FD30);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_1004D8CEC();
  sub_1004D8F9C();
  sub_1001F2EF0();
  sub_1004DC56C();
  (*(v4 + 8))(v6, v3);
  v11 = sub_1001EEE9C();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1001EEE9C()
{
  v1 = sub_1004DC53C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v26 - v4;
  __chkstk_darwin();
  v6 = &v26 - v5;
  v7 = sub_100004CB8(&qword_100639998, &qword_10051FD30);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v26 - v12;
  v14 = *(v8 + 16);
  v28 = v0;
  v14(&v26 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v29;
    v16(v29, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    v19 = v1;
    v20 = v2;
    if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6E6E695020746F4ELL;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x6C20646572616853;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000012;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0xD000000000000010;
    }

    else if (v18 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v6, v19);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      v23 = v19;
      sub_1004DEAAC(17);

      v30 = 0x206E776F6E6B6E55;
      v31 = 0xEF206E6F73616572;
      v16(v27, v6, v23);
      v33._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v33);

      v24 = v30;
      v25 = *(v20 + 8);
      v25(v6, v23);
      v25(v29, v23);
      return v24;
    }
  }

  else if (v15 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1004DEAAC(27);

    v30 = 0xD000000000000019;
    v31 = 0x80000001004EB750;
    (v14)(v10, v28, v7);
    v32._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v32);

    v22 = v30;
    (*(v8 + 8))(v13, v7);
    return v22;
  }
}

uint64_t sub_1001EF3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100035B28;

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t sub_1001EF4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_1004D8F7C();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF720, 0, 0);
}

uint64_t sub_1001EF720()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    (*(v4 + 16))(v2, *(v0 + 88), v3);
    v5 = (*(v4 + 88))(v2, v3);
    if (v5 == enum case for MusicPin.Action.navigate(_:))
    {
      v6 = 46;
LABEL_9:
      v1(v6);
      goto LABEL_10;
    }

    if (v5 != enum case for MusicPin.Action.play(_:))
    {
      if (v5 == enum case for MusicPin.Action.shuffle(_:))
      {
        v6 = 45;
        goto LABEL_9;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    }

    v6 = 44;
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  sub_1000108DC(*(v0 + 96), v9, &qword_1006359A0, &unk_100516EE0);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_10001074C(*(v0 + 224), &qword_1006359A0, &unk_100516EE0);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  sub_1001F2E88(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = sub_10004AE48();
  *(v0 + 296) = v16;
  (*(v13 + 16))(v12, v15, v14);
  v17 = (*(v13 + 88))(v12, v14);
  if (v17 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v17 != enum case for MusicPin.Action.play(_:))
    {
      if (v17 == enum case for MusicPin.Action.shuffle(_:))
      {
        v18 = 46;
        goto LABEL_21;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

    v18 = 45;
    goto LABEL_21;
  }

  v18 = 47;
LABEL_21:
  *(v0 + 362) = v18;
  v19 = *(v0 + 216);
  v20 = sub_1004D809C();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  sub_100004CB8(&qword_100635BA8, &qword_100517A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = sub_10004A554();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = sub_10004B4B4(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  sub_10007FCDC(inited + 32);
  sub_1004DDA4C();
  *(v0 + 352) = sub_1004DDA3C();
  v29 = sub_1004DD9BC();

  return _swift_task_switch(sub_1001EFB74, v29, v28);
}

uint64_t sub_1001EFB74()
{
  v83 = *(v0 + 360);
  v76 = *(v0 + 328);
  v81 = *(v0 + 362);
  v79 = *(v0 + 296);
  v77 = *(v0 + 344);
  v78 = *(v0 + 288);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_1000108DC(v3, v4, &qword_100634B30, &unk_100513D70);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000108DC(v1 + v2[5], v7, &qword_100635248, &unk_100516140);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_100047F38(v4, v6 + v5[7], &qword_100634B30, &unk_100513D70);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_1000108DC(v7, v75, &qword_100635248, &unk_100516140);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100046F14(v82, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));
    sub_10001074C(v22, &qword_100635248, &unk_100516140);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100046F14(v82, v80);

    sub_100047EC8(v21, v19, v20, v18, SBYTE1(v18));

    sub_1000E5CE0(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000108DC(v25, v26, &qword_100635248, &unk_100516140);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_10001074C(*(v0 + 152), &qword_100635248, &unk_100516140);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_1000E5CE0(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000108DC(v32, v33, &qword_100635248, &unk_100516140);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    sub_10001074C(*(v0 + 144), &qword_100635248, &unk_100516140);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000108DC(v39 + v15[6], *(v0 + 200), &qword_100634B30, &unk_100513D70);
    sub_1000E5CE0(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_100047F38(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v40, v41, &qword_100635248, &unk_100516140);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_10001074C(*(v0 + 136), &qword_100635248, &unk_100516140);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_1000E5CE0(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000108DC(v45, v46, &qword_100635248, &unk_100516140);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_10001074C(v48, &qword_100635248, &unk_100516140);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_1000E5CE0(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000108DC(v50, v51, &qword_100635248, &unk_100516140);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_10001074C(*(v0 + 120), &qword_100635248, &unk_100516140);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_1000E5CE0(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_100047F38(v57, v58, &qword_100635248, &unk_100516140);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_10001074C(v61, &qword_100635248, &unk_100516140);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_1000E5CE0(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_1001F2E88(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  v66 = *(v0 + 344);
  v68 = *(v0 + 328);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 360);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_1000742B8(v68, v67, v66, v73, SBYTE1(v73));
  sub_1000E5CE0(v72, type metadata accessor for MetricsEvent.Click);
  sub_10001074C(v71, &qword_100634B30, &unk_100513D70);

  return _swift_task_switch(sub_1001F0358, 0, 0);
}

uint64_t sub_1001F0358()
{
  sub_1000E5CE0(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  sub_100004CB8(&qword_100639758, &qword_10051FCA0);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_1000108DC(v1, &v19[-v10], &qword_100639758, &qword_10051FCA0);
  v12 = sub_1004D8F4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_1000108DC(v11, v9, &qword_100639758, &qword_10051FCA0);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    sub_1004DD37C();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v14 = qword_100671958;
    sub_1004D838C();
    v15 = sub_1004DD4AC();
    (*(v3 + 8))(v7, v2);
    goto LABEL_13;
  }

  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v17 = qword_100671958;
  sub_1004D838C();
  v15 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_13:
  sub_10001074C(v11, &qword_100639758, &qword_10051FCA0);
  return v15;
}

uint64_t (*Actions.Pin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_100073BEC;
}

uint64_t (*sub_1001F0A50())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_10007455C;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  sub_100004CB8(&qword_100639758, &qword_10051FCA0);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  sub_1000108DC(v1, &v19[-v10], &qword_100639758, &qword_10051FCA0);
  v12 = sub_1004D8F4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  sub_1000108DC(v11, v9, &qword_100639758, &qword_10051FCA0);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    sub_1004DD37C();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v14 = qword_100671958;
    sub_1004D838C();
    v15 = sub_1004DD4AC();
    (*(v3 + 8))(v7, v2);
    goto LABEL_10;
  }

  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v17 = qword_100671958;
  sub_1004D838C();
  v15 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_10:
  sub_10001074C(v11, &qword_100639758, &qword_10051FCA0);
  return v15;
}

uint64_t (*Actions.Unpin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_10007455C;
}

uint64_t (*sub_1001F10A4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_10007455C;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter()
{
  v0 = sub_1004D8F4C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  sub_1004D8F5C();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = sub_1004D8F7C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F8C();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = sub_1004D8F6C();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1001F1314()
{
  v0 = sub_1004D8F4C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1001F1400(uint64_t a1)
{
  v1 = sub_1004D8F7C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F8C();
  v5 = sub_1004D8F6C();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D8F4C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = sub_1004DCA0C();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v6 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = sub_1004DCB3C();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = sub_1004DC2DC();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = sub_1004DD05C();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v6 != enum case for MusicPin.Item.song(_:))
    {
      v17 = sub_1004D8BFC();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v12 = sub_1004DC95C();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  v13 = *v8;
  v14 = sub_1004D8BFC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_1001F18C8(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a2;
  v24 = a1;
  sub_100004CB8(&qword_1006359A0, &unk_100516EE0);
  __chkstk_darwin();
  v6 = &v22 - v5;
  sub_1004D83FC();
  __chkstk_darwin();
  v7 = sub_1004DD3EC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v22 - v11;
  sub_1004DD37C();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v13 = qword_100671958;
  sub_1004D838C();
  v14 = sub_1004DD4AC();
  v16 = v15;
  (*(v8 + 8))(v12, v7);
  strcpy(v41, "DownloadPins");
  HIBYTE(v41[6]) = 0;
  v41[7] = -5120;
  v42 = 1;
  v43 = 0xD000000000000016;
  v44 = 0x80000001004EDCF0;
  v17 = 0x497972617262694CLL;
  if (a3)
  {
    v17 = v23;
  }

  v18 = 0xEB000000006D6574;
  if (a3)
  {
    v18 = a3;
  }

  v45 = v14;
  v46 = v16;
  v19 = 0x776F4E20746F4ELL;
  if (v24)
  {
    v19 = 0x6E4F206E727554;
  }

  v47 = 0xD00000000000003CLL;
  v48 = 0x80000001004EDD10;
  v49 = &off_1005D3290;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = 0xE700000000000000;
  v54 = (v24 & 1) == 0;
  strcpy(v27, "DownloadPins");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v28 = 1;
  v29 = 0xD000000000000016;
  v30 = 0x80000001004EDCF0;
  v31 = v14;
  v32 = v16;
  v33 = 0xD00000000000003CLL;
  v34 = 0x80000001004EDD10;
  v35 = &off_1005D3290;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = 0xE700000000000000;
  v40 = v54;

  sub_1000FF624(v41, &v26);
  sub_1000FF65C(v27);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  sub_1000108DC(v25, v6, &qword_1006359A0, &unk_100516EE0);
  v20 = type metadata accessor for Actions.MetricsReportingContext(0);
  if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
  {
    sub_10001074C(v6, &qword_1006359A0, &unk_100516EE0);
  }

  else
  {

    sub_1000E5CE0(v6, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v41);

  return sub_1000FF65C(v41);
}

uint64_t sub_1001F1D28()
{
  v1 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 8) >= 0xDuLL)
    {
    }

    v5 = v3 + *(v4 + 20);
    v6 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_1004D809C();
      v9 = *(v8 - 8);
      v13 = v7;
      v10 = v5 + v7;
      v11 = v8;
      if (!(*(v9 + 48))(v10, 1, v8))
      {
        (*(v9 + 8))(v5 + v13, v11);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001F1F78(int a1)
{
  v3 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1001F18C8(a1, v4, v5, v6);
}

double sub_1001F1FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001F2014()
{
  v1 = *(sub_1004D8F9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1004D8F7C() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1001EECD0(v5, v0 + v2, v6);
}

uint64_t sub_1001F20E4()
{
  v1 = sub_1004D8F9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1004D8F7C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1001F2234()
{
  v2 = *(sub_1004D8F9C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1004D8F7C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100035B28;

  return sub_1001EF3F0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1001F2368()
{
  v1 = sub_1004D8F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v20 = *(v5 + 64);
  v7 = sub_1004D8F9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v6;
  v11 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v6, 1, v11))
  {
    v19 = v6;
    if (*(v10 + 8) >= 0xDuLL)
    {
    }

    v12 = v10 + *(v11 + 20);
    v13 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v18 = *(v13 + 24);
      v14 = sub_1004D809C();
      v16 = *(v14 - 8);
      v17 = v14;
      if (!(*(v16 + 48))(v12 + v18, 1))
      {
        (*(v16 + 8))(v12 + v18, v17);
      }
    }

    v6 = v19;
  }

  (*(v8 + 8))(v0 + ((v6 + v20 + v9) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_1001F26CC()
{
  v2 = *(sub_1004D8F7C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1004D8F9C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100035C88;

  return sub_1001EF4A0(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_1001F2874()
{

  return swift_deallocObject();
}

void sub_1001F28F0(uint64_t a1)
{
  if (!qword_100639828)
  {
    sub_1004D8F4C();
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100639828);
    }
  }
}

uint64_t sub_1001F296C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100639758, &qword_10051FCA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001F2A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100639758, &qword_10051FCA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1001F2B0C(uint64_t a1)
{
  sub_1001F28F0(319);
  if (v1 <= 0x3F)
  {
    sub_1000430A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001F2BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D8F9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1004D8F7C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001F2CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004D8F9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1004D8F7C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_1001F2DE4(uint64_t a1)
{
  result = sub_1004D8F9C();
  if (v2 <= 0x3F)
  {
    result = sub_1004D8F7C();
    if (v3 <= 0x3F)
    {
      result = sub_1000430A4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001F2E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001F2EF0()
{
  result = qword_1006399A0;
  if (!qword_1006399A0)
  {
    sub_1004D8F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006399A0);
  }

  return result;
}

unint64_t sub_1001F2F4C()
{
  result = qword_1006399B8;
  if (!qword_1006399B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006399B8);
  }

  return result;
}

uint64_t sub_1001F2FA0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v6, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_1004D809C();
      v16 = *(v12 - 8);
      v17 = v11;
      v13 = v9 + v11;
      v14 = v12;
      if (!(*(v16 + 48))(v13, 1, v12))
      {
        (*(v16 + 8))(v9 + v17, v14);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3260(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(sub_100004CB8(&qword_1006359A0, &unk_100516EE0) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100035B28;

  return sub_1001EB754(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1004DD3FC();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  sub_1001F6948(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = sub_1004DD43C();

  sub_1001F6860(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1001F6948(a3, a4);
}

void (*MPCPlaybackEngine.configuration.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = [v1 playerID];
  v6 = sub_1004DD43C();
  v8 = v7;

  v9 = sub_1001F6860(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return sub_1001F3730;
}

void sub_1001F3730(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    sub_1001F6948(v5, v3);

    v3 = v2[3];
  }

  else
  {
    sub_1001F6948(*(*a1 + 16), v3);
  }

  free(v2);
}

void sub_1001F37E0()
{
  v0 = sub_10003C154(&off_1005D1478);
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = sub_1004DD3FC();
  [v1 setLabel:v2];

  v3 = [objc_opt_self() kindWithVariants:3];
  [v1 setItemKind:v3];

  v4 = [v1 playbackIntentWithStartItemIdentifiers:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setShuffleMode:1];
  }

  static MPCPlaybackEngine.Configuration.systemMusic = 0x636973754DLL;
  *algn_100671E18 = 0xE500000000000000;
  qword_100671E20 = v0;
  unk_100671E28 = v5;
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (qword_100633D90 != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (qword_100633D90 != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_100671E28;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  sub_1004DF26C();
  sub_1004DF27C(a1);
  sub_1004DF27C(a2);
  return sub_1004DF2BC();
}

Swift::Int sub_1001F3AF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004DF26C();
  sub_1004DF27C(v1);
  sub_1004DF27C(v2);
  return sub_1004DF2BC();
}

void sub_1001F3B4C()
{
  v1 = v0[1];
  sub_1004DF27C(*v0);
  sub_1004DF27C(v1);
}

Swift::Int sub_1001F3B88()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004DF26C();
  sub_1004DF27C(v1);
  sub_1004DF27C(v2);
  return sub_1004DF2BC();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

void sub_1001F3C88()
{
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100637F68, qword_10051C4F0);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = sub_1004DD85C().super.isa;
  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v6 = sub_1004DD1FC().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (qword_100633D98 != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (qword_100633D98 != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id sub_1001F3ECC()
{
  v1 = v0;
  sub_100004CB8(&qword_100639C08, &unk_100520130);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 tracklist];
  v8 = [v7 playingItem];

  if (v8)
  {
    v9 = [v8 metadataObject];

    if (!v9)
    {
      return 0;
    }

    v10 = [v1 tracklist];
    v11 = [v10 playingItemIndexPath];

    if (v11)
    {
      sub_1004D858C();

      v12 = sub_1004D85FC();
      (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
    }

    else
    {
      v12 = sub_1004D85FC();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    }

    sub_1001F6E88(v3, v6);
    sub_1004D85FC();
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v6, 1, v12) != 1)
    {
      v15 = sub_1004D85DC();
      (*(v14 + 8))(v6, v12);
      v16 = [v1 tracklist];
      v17 = [v16 items];

      v18 = [v17 sectionAtIndex:v15];
      v19 = [v18 metadataObject];

      [v1 state];
      return v19;
    }

    sub_1001F6EF8(v6);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = sub_1001F3ECC();
  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [v5 identifiers];
  v11 = [a1 identifiers];
  v12 = [v10 intersectsSet:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (!a2)
    {

      return 0;
    }

    v13 = a2;
    v14 = v7;
    v15 = v13;
    v7 = v14;
    if ([v7 type] != 2 || (v16 = objc_msgSend(v7, "album")) == 0)
    {

      goto LABEL_14;
    }

    v17 = v16;
    v18 = [v16 identifiers];
    v19 = [v15 identifiers];
    v20 = [v18 intersectsSet:v19];

    if (v20)
    {

      return v9;
    }

LABEL_9:

LABEL_14:
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return v9;
}

{
  v4 = sub_1001F3ECC();
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = [v5 innermostModelObject];
    v11 = [v10 identifiers];

    v12 = [v8 identifiers];
    v13 = [v11 unionSet:v12];

    v14 = [a1 identifiers];
    LODWORD(v12) = [v13 intersectsSet:v14];

    if (v12)
    {
      if (!v7)
      {
        v9 = 0;
        v7 = v8;
        goto LABEL_12;
      }

      v7 = v7;
      if ([v7 type] != 4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
      {

        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v15 identifiers];
      v18 = [a2 identifiers];
      v19 = [v17 intersectsSet:v18];

      if (v19)
      {

        v7 = v8;
LABEL_12:

        return v9;
      }
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  return 0;
}

uint64_t MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = sub_1004D85FC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v20[-v7];
  result = [v1 playingItem];
  if (result)
  {
    v10 = result;
    [result duration];
    if (v20[56] == 1)
    {
LABEL_3:

      return 0;
    }

    v11 = [v1 playingItemIndexPath];
    if (v11)
    {
      v12 = v11;
      sub_1004D858C();

      (*(v3 + 32))(v8, v5, v2);
      v13 = [v1 items];
      v14 = [v13 sectionAtIndex:sub_1004D85DC()];

      v15 = [v14 metadataObject];
      if (v15)
      {
        v16 = [v15 innermostModelObject];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 type] == 4)
          {
            (*(v3 + 8))(v8, v2);

            goto LABEL_3;
          }

          v19 = [v18 subtype];

          (*(v3 + 8))(v8, v2);
          if (v19 == 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v8, v2);
        }

        return 1;
      }

      (*(v3 + 8))(v8, v2);
    }

    return 1;
  }

  return result;
}