uint64_t sub_5AAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5AB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5AB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v291 = a2;
  v264 = sub_1252CC();
  v268 = *(v264 - 8);
  v3 = __chkstk_darwin(v264);
  v237 = &v236 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v263 = &v236 - v5;
  v266 = sub_123D1C();
  v267 = *(v266 - 8);
  v6 = __chkstk_darwin(v266);
  v239 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v236 - v9;
  __chkstk_darwin(v8);
  v271 = &v236 - v11;
  v12 = sub_124CFC();
  v245 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v238 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v247 = &v236 - v15;
  v246 = sub_1239EC();
  v248 = *(v246 - 8);
  __chkstk_darwin(v246);
  v259 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_123E8C();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = &v236 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_123E4C();
  v270 = *(v257 - 8);
  __chkstk_darwin(v257);
  v269 = (&v236 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = sub_123DAC();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v254 = (&v236 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_5AE8(&qword_160510, &qword_12B170);
  __chkstk_darwin(v20 - 8);
  v252 = &v236 - v21;
  v251 = sub_123D7C();
  v250 = *(v251 - 8);
  v22 = __chkstk_darwin(v251);
  v240 = &v236 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v253 = &v236 - v24;
  v261 = sub_123D6C();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v26 - 8);
  v273 = &v236 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_124BCC();
  v275 = *(v290 - 8);
  v28 = __chkstk_darwin(v290);
  v265 = &v236 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v274 = &v236 - v31;
  v32 = __chkstk_darwin(v30);
  v272 = &v236 - v33;
  __chkstk_darwin(v32);
  v284 = &v236 - v34;
  v35 = sub_124EDC();
  __chkstk_darwin(v35 - 8);
  v278 = &v236 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_12542C();
  v281 = *(v282 - 8);
  __chkstk_darwin(v282);
  v279 = &v236 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_12519C();
  v287 = *(v38 - 8);
  v288 = v38;
  __chkstk_darwin(v38);
  v286 = &v236 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_12517C();
  v292 = *(v295 - 8);
  v40 = __chkstk_darwin(v295);
  v293 = &v236 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v294 = &v236 - v42;
  v43 = sub_123D3C();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v283 = &v236 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v236 - v48;
  __chkstk_darwin(v47);
  v51 = &v236 - v50;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v52 = sub_125ABC();
  v53 = sub_5B30(v52, qword_1603E0);
  v54 = *(v44 + 16);
  v285 = a1;
  v54(v51, a1, v43);
  v289 = v53;
  v55 = sub_125AAC();
  v56 = sub_125DFC();
  v57 = os_log_type_enabled(v55, v56);
  v258 = v10;
  v249 = v12;
  v280 = v44;
  v277 = v54;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v300[0] = v59;
    *v58 = 136315138;
    v54(v49, v51, v43);
    v60 = sub_125BAC();
    v62 = v61;
    v244 = *(v44 + 8);
    v244(v51, v43);
    v63 = sub_8530(v60, v62, v300);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_0, v55, v56, "Running timer flow with parse: %s", v58, 0xCu);
    sub_5BB0(v59);
    v64 = v291;

    v65 = v43;
  }

  else
  {

    v244 = *(v44 + 8);
    v244(v51, v43);
    v65 = v43;
    v64 = v291;
  }

  v66 = v292;
  v68 = v294;
  v67 = v295;
  (*(v292 + 104))(v294, enum case for AppInstallUtil.Domain.timer(_:), v295);
  v69 = *(v66 + 16);
  v69(v293, v68, v67);
  v70 = v286;
  sub_12518C();
  v71 = sub_12516C();
  (*(v287 + 8))(v70, v288);
  v72 = sub_125AAC();
  v73 = sub_125DFC();
  v74 = os_log_type_enabled(v72, v73);
  if ((v71 & 1) == 0)
  {
    if (v74)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_0, v72, v73, "Clock/Timers app is deleted from the device; returning UnsupportedClockAppNotInstalledFlow.", v93, 2u);
    }

    v94 = v294;
    v95 = v295;
    v69(v293, v294, v295);
    v96 = type metadata accessor for TimerBaseCATPatternsExecutor(0);
    sub_124ECC();
    v97 = sub_124DBC();
    v300[3] = v96;
    v300[4] = sub_647DC(&qword_160518, type metadata accessor for TimerBaseCATPatternsExecutor, &unk_12BBE0);
    v300[0] = v97;
    v298 = &type metadata for TimerAppNotInstalledLegacyDialog;
    v299 = sub_64150();
    v98 = v279;
    sub_12541C();
    sub_647DC(&unk_160528, &type metadata accessor for UnsupportedAppNotInstalledFlow, &protocol conformance descriptor for UnsupportedAppNotInstalledFlow);
    v99 = v282;
    sub_12342C();
    sub_1234AC();

    (*(v281 + 8))(v98, v99);
    return (*(v66 + 8))(v94, v95);
  }

  if (v74)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v72, v73, "Clock/Timers app is installed; continue!", v75, 2u);
  }

  v76 = v283;
  v277(v283, v285, v65);
  v77 = v280;
  v78 = (*(v280 + 88))(v76, v65);
  if (v78 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v77 + 96))(v76, v65);
    v79 = v275;
    v80 = v284;
    v81 = v290;
    (*(v275 + 32))(v284, v76, v290);
    v82 = *(v79 + 16);
    v83 = v272;
    v82(v272, v80, v81);
    v84 = sub_125AAC();
    v85 = sub_125DFC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v300[0] = v87;
      *v86 = 136315138;
      sub_647DC(&qword_160538, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v88 = sub_12618C();
      v293 = v82;
      v90 = v89;
      v91 = *(v79 + 8);
      v91(v83, v290);
      v92 = sub_8530(v88, v90, v300);
      v82 = v293;

      *(v86 + 4) = v92;
      _os_log_impl(&dword_0, v84, v85, "Receiving timer NLv3 intent parse: %s", v86, 0xCu);
      sub_5BB0(v87);
      v81 = v290;
    }

    else
    {

      v91 = *(v79 + 8);
      v91(v83, v81);
    }

    v121 = v273;
    v122 = v284;
    v82(v273, v284, v81);
    sub_5D194(v121, v291);
    sub_97EC(v121);
    v91(v122, v81);
    return (*(v292 + 8))(v294, v295);
  }

  v101 = v65;
  v102 = v290;
  if (v78 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v77 + 96))(v76, v101);
    v103 = *&v76[*(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48)];
    v104 = v275;
    v105 = v274;
    (*(v275 + 32))(v274, v76, v102);
    v293 = v103;
    v106 = sub_123D2C();
    v107 = v265;
    (*(v104 + 16))(v265, v105, v102);
    v108 = v106;
    v109 = sub_125AAC();
    v110 = sub_125DFC();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v300[0] = v113;
      *v111 = 136315394;
      sub_647DC(&qword_160538, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
      v114 = sub_12618C();
      v115 = v107;
      v117 = v116;
      v118 = *(v104 + 8);
      v118(v115, v290);
      v119 = sub_8530(v114, v117, v300);

      *(v111 + 4) = v119;
      *(v111 + 12) = 2112;
      *(v111 + 14) = v108;
      *v112 = v108;
      v120 = v108;
      _os_log_impl(&dword_0, v109, v110, "Timer NLv3 intent is: %s, Timer SiriKit intent is: %@", v111, 0x16u);
      sub_5CA8(v112, &unk_160540, &unk_1295A0);
      v64 = v291;

      sub_5BB0(v113);

      v102 = v290;
    }

    else
    {

      v118 = *(v104 + 8);
      v118(v107, v102);
    }

    sub_5D790(v108, v64);

    v118(v274, v102);
    return (*(v292 + 8))(v294, v295);
  }

  if (v78 == enum case for Parse.directInvocation(_:))
  {
    (*(v77 + 96))(v76, v101);
    (*(v267 + 32))(v271, v76, v266);
    v123 = sub_125AAC();
    v124 = sub_125DFC();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_0, v123, v124, "Timer domain: received direct invocation", v125, 2u);
    }

    v126 = sub_123CFC();
    v128 = v127;
    v129 = v268;
    v130 = v263;
    v131 = v264;
    v293 = *(v268 + 104);
    (v293)(v263, enum case for DirectInvocationUtils.Timer.URI.stopTimer(_:), v264);
    v132 = sub_1252BC();
    v134 = v133;
    v135 = *(v129 + 8);
    v268 = v129 + 8;
    v135(v130, v131);
    if (v126 == v132 && v128 == v134)
    {

LABEL_33:
      sub_5E504();
LABEL_34:
      (*(v267 + 8))(v271, v266);
      return (*(v292 + 8))(v294, v295);
    }

    v139 = sub_1261BC();

    if (v139)
    {
      goto LABEL_33;
    }

    v153 = sub_123D0C();
    v154 = v258;
    if (!v153)
    {
      goto LABEL_60;
    }

    v155 = v153;
    if (!*(v153 + 16) || (v156 = sub_8AD8(1651664246, 0xE400000000000000), (v157 & 1) == 0))
    {

      goto LABEL_60;
    }

    sub_8B50(*(v155 + 56) + 32 * v156, v300);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_60:
      v171 = v266;
      v172 = v267;
      v173 = *(v267 + 16);
      v173(v154, v271, v266);
      v174 = sub_125AAC();
      v175 = sub_125DEC();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v300[0] = v177;
        *v176 = 136315138;
        v173(v239, v154, v171);
        v178 = sub_125BAC();
        v180 = v179;
        v181 = *(v172 + 8);
        v181(v154, v171);
        v182 = sub_8530(v178, v180, v300);

        *(v176 + 4) = v182;
        _os_log_impl(&dword_0, v174, v175, "Not able to handle directInvocation: %s", v176, 0xCu);
        sub_5BB0(v177);
      }

      else
      {

        v181 = *(v172 + 8);
        v181(v154, v171);
      }

      sub_12348C();
      v181(v271, v171);
      return (*(v292 + 8))(v294, v295);
    }

    v159 = v296;
    v158 = v297;

    v160 = sub_B66D0(v159, v158);
    if (v160 == 19)
    {

      v154 = v258;
      goto LABEL_60;
    }

    v210 = v160;
    v211 = sub_123CFC();
    v213 = v212;
    v214 = v237;
    (v293)(v237, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v131);
    v215 = sub_1252BC();
    v217 = v216;
    v135(v214, v131);
    if (v211 == v215 && v213 == v217)
    {

      v218 = v267;
    }

    else
    {
      v219 = sub_1261BC();

      v220 = v291;
      v218 = v267;
      if ((v219 & 1) == 0)
      {

        sub_5DED4(v210, 0, v220);
        goto LABEL_105;
      }
    }

    if (v210 <= 4u)
    {
      if (v210 == 1)
      {

        v228 = sub_125AAC();
        v229 = sub_125DFC();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          _os_log_impl(&dword_0, v228, v229, "Undoing a previously deleted alarm", v230, 2u);
        }

        sub_23B08((v276 + 40), *(v276 + 64));
        sub_63980();
        goto LABEL_105;
      }

      if (v210 == 2)
      {

        v221 = sub_125AAC();
        v222 = sub_125DFC();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 0;
          _os_log_impl(&dword_0, v221, v222, "Undoing a previously created timer", v223, 2u);
        }

        sub_23B08((v276 + 40), *(v276 + 64));
        sub_63B34();
        goto LABEL_105;
      }

LABEL_100:

      v144 = sub_125AAC();
      v224 = sub_125DEC();

      if (os_log_type_enabled(v144, v224))
      {
        v225 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v300[0] = v226;
        *v225 = 136315138;
        v227 = sub_8530(v159, v158, v300);

        *(v225 + 4) = v227;
        _os_log_impl(&dword_0, v144, v224, "Not able to handle specified verb for undo: %s", v225, 0xCu);
        sub_5BB0(v226);

LABEL_108:

        sub_12348C();
        goto LABEL_34;
      }

LABEL_107:

      goto LABEL_108;
    }

    if (v210 != 5 && v210 != 8)
    {
      goto LABEL_100;
    }

    sub_23B08((v276 + 40), *(v276 + 64));
    sub_63CE8();
LABEL_105:
    (*(v218 + 8))(v271, v266);
    return (*(v292 + 8))(v294, v295);
  }

  if (v78 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v77 + 96))(v76, v101);
    v136 = sub_125AAC();
    v137 = sub_125DFC();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_0, v136, v137, "Timer domain: Hitting SiriX code path", v138, 2u);
    }

    sub_5DC6C(v64);
    swift_unknownObjectRelease();
    return (*(v66 + 8))(v294, v295);
  }

  if (v78 != enum case for Parse.uso(_:))
  {
    if (v78 == enum case for Parse.ifClientAction(_:))
    {
      (*(v77 + 96))(v76, v101);
      v161 = v248;
      v162 = v246;
      (*(v248 + 32))(v259, v76, v246);
      v163 = sub_125AAC();
      v164 = sub_125DFC();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&dword_0, v163, v164, "Timer domain Siri X code path hit: received ifClientAction parse.", v165, 2u);
      }

      v166 = v247;
      sub_1239DC();
      if (sub_124CEC() == 0x745F657461657263 && v167 == 0xEC00000072656D69)
      {
      }

      else
      {
        v193 = sub_1261BC();

        if ((v193 & 1) == 0)
        {
          v197 = v245;
          v198 = v238;
          v199 = v249;
          (*(v245 + 16))(v238, v166, v249);
          v200 = sub_125AAC();
          v201 = sub_125DEC();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            v203 = swift_slowAlloc();
            v300[0] = v203;
            *v202 = 136315138;
            v204 = sub_124CEC();
            v205 = v198;
            v207 = v206;
            v208 = *(v197 + 8);
            v208(v205, v249);
            v209 = sub_8530(v204, v207, v300);

            *(v202 + 4) = v209;
            _os_log_impl(&dword_0, v200, v201, "Timer domain unexpected client action toolId: %s", v202, 0xCu);
            sub_5BB0(v203);
            v162 = v246;

            v199 = v249;
          }

          else
          {

            v208 = *(v197 + 8);
            v208(v198, v199);
          }

          sub_12348C();
          v208(v247, v199);
          (*(v248 + 8))(v259, v162);
          return (*(v66 + 8))(v294, v295);
        }
      }

      sub_23B08((v276 + 40), *(v276 + 64));
      sub_6096C(v64);
      (*(v245 + 8))(v166, v249);
      (*(v161 + 8))(v259, v162);
      return (*(v66 + 8))(v294, v295);
    }

    v168 = sub_125AAC();
    v169 = sub_125DEC();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_0, v168, v169, "FlowPlugin is unable to consume the timer intent. Exiting the flow.", v170, 2u);
    }

    sub_12348C();
    (*(v66 + 8))(v294, v295);
    return (v244)(v76, v101);
  }

  (*(v77 + 96))(v76, v101);
  (*(v260 + 32))(v262, v76, v261);
  v140 = sub_125AAC();
  v141 = sub_125DFC();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    *v142 = 0;
    _os_log_impl(&dword_0, v140, v141, "Timer domain Siri X code path hit: received USO parse.", v142, 2u);
  }

  v143 = v254;
  sub_123D5C();
  v144 = v143;
  v145 = sub_123D9C();
  (*(v255 + 8))(v143, v256);
  v146 = *(v145 + 16);
  v147 = v257;
  v148 = v270;
  if (v146)
  {
    v149 = 0;
    v150 = (v270 + 8);
    while (v149 < *(v145 + 16))
    {
      v144 = v269;
      (*(v148 + 16))(v269, v145 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v149, v147);
      if (sub_123DBC())
      {

        v183 = v270;
        v152 = v252;
        (*(v270 + 32))(v252, v144, v147);
        v151 = 0;
        v148 = v183;
        goto LABEL_66;
      }

      ++v149;
      (*v150)(v144, v147);
      v148 = v270;
      if (v146 == v149)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

LABEL_43:

  v151 = 1;
  v152 = v252;
LABEL_66:
  (*(v148 + 56))(v152, v151, 1, v147);
  v184 = (*(v148 + 48))(v152, 1, v147);
  v185 = v253;
  v186 = v291;
  if (v184 == 1)
  {
    sub_5CA8(v152, &qword_160510, &qword_12B170);
    v189 = sub_125AAC();
    v190 = sub_125DEC();
    if (os_log_type_enabled(v189, v190))
    {
      v192 = swift_slowAlloc();
      *v192 = 0;
      _os_log_impl(&dword_0, v189, v190, "Failed to parse userParse. Returning noFlow.", v192, 2u);
    }

    sub_12348C();
    goto LABEL_72;
  }

  v187 = v241;
  sub_123E0C();
  (*(v148 + 8))(v152, v147);
  v188 = v240;
  sub_123E5C();
  (*(v242 + 8))(v187, v243);
  (*(v250 + 32))(v185, v188, v251);
  sub_123F0C();
  result = sub_12424C();
  if (result >> 62)
  {
    v231 = result;
    v232 = sub_1260FC();
    result = v231;
    if (v232)
    {
      goto LABEL_78;
    }

LABEL_110:

    v233 = sub_125AAC();
    v234 = sub_125DEC();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "USO graph has no tasks. Returning noFlow.", v235, 2u);
    }

    sub_12348C();

    goto LABEL_113;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_110;
  }

LABEL_78:
  if ((result & 0xC000000000000001) != 0)
  {
    v194 = sub_125FFC();
    goto LABEL_81;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v194 = *(result + 32);

LABEL_81:

    v196 = sub_C69B0(v195);

    sub_5DED4(v196, v194, v186);

LABEL_113:
    (*(v250 + 8))(v185, v251);
LABEL_72:
    (*(v260 + 8))(v262, v261);
    return (*(v66 + 8))(v294, v295);
  }

  __break(1u);
  return result;
}

uint64_t sub_5D148()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1603E0);
  sub_5B30(v0, qword_1603E0);
  return sub_1257AC();
}

uint64_t sub_5D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = type metadata accessor for TimerNLv3Intent(0);
  __chkstk_darwin(v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v12 = sub_125ABC();
  v13 = sub_5B30(v12, qword_1603E0);
  sub_9848(a1, v11);
  v14 = sub_125AAC();
  v15 = sub_125DFC();
  v16 = os_log_type_enabled(v14, v15);
  v37 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v35[1] = v13;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v2;
    v20 = v19;
    v38 = v19;
    *v18 = 136315138;
    sub_647DC(&qword_161ED0, type metadata accessor for TimerNLv3Intent, &unk_12A9D8);
    v21 = sub_12618C();
    v22 = v8;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    sub_97EC(v11);
    v27 = sub_8530(v21, v26, &v38);
    a2 = v24;
    a1 = v23;
    v8 = v22;

    *(v18 + 4) = v27;
    _os_log_impl(&dword_0, v14, v15, "Routing flow based on nlv3 intent: %s", v18, 0xCu);
    sub_5BB0(v20);
    v3 = v36;
  }

  else
  {

    sub_97EC(v11);
  }

  if (qword_15EF50 != -1)
  {
    swift_once();
  }

  sub_647DC(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  sub_12428C();
  if (v40 <= 4u)
  {
    if (v40 > 1u)
    {
      if (v40 != 2)
      {
        if (v40 == 3)
        {
          sub_23B08((v3 + 40), *(v3 + 64));
          return sub_613CC(a2);
        }

        else
        {
          sub_23B08((v3 + 40), *(v3 + 64));
          return sub_60EFC(a2);
        }
      }

LABEL_34:
      sub_23B08((v3 + 40), *(v3 + 64));
      return sub_6189C(a2);
    }

    if (v40)
    {
      return sub_5E504();
    }

    if (qword_15EF70 != -1)
    {
      swift_once();
    }

    sub_12428C();
    if (v39 & 1) == 0 && (sub_12570C())
    {
      sub_23B08((v3 + 40), *(v3 + 64));
      return sub_60BD4();
    }

    return sub_5E604(a1, a2);
  }

  if (v40 > 6u)
  {
    if (v40 == 7)
    {
      v29 = sub_125AAC();
      v30 = sub_125DEC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "TimerFlow doen't support nlv3 intent verb: add. Returning noFlow";
        goto LABEL_28;
      }
    }

    else
    {
      if (v40 != 8)
      {
        if (qword_15EF78 != -1)
        {
          swift_once();
        }

        sub_12428C();
        v33 = sub_12412C();
        v34 = (*(*(v33 - 8) + 48))(v8, 1, v33);
        sub_5CA8(v8, &qword_15FF90, &unk_127BC0);
        if (v34 == 1)
        {
          goto LABEL_34;
        }

        return sub_5E604(a1, a2);
      }

      v29 = sub_125AAC();
      v30 = sub_125DEC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "TimerFlow doen't support nlv3 intent verb: substract. Returning noFlow";
LABEL_28:
        _os_log_impl(&dword_0, v29, v30, v32, v31, 2u);
      }
    }

    return sub_12348C();
  }

  if (v40 == 5)
  {
    sub_23B08((v3 + 40), *(v3 + 64));
    return sub_61164(a2);
  }

  else
  {
    sub_23B08((v3 + 40), *(v3 + 64));
    return sub_61634(a2);
  }
}

uint64_t sub_5D790@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_1603E0);
  v7 = a1;
  v8 = sub_125AAC();
  v9 = sub_125DFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "Routing flow based on SiriKit intent: %@", v10, 0xCu);
    sub_5CA8(v11, &unk_160540, &unk_1295A0);
  }

  sub_1255EC();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    [v13 type];
    v14 = sub_12589C();
    if (v14 == sub_12589C() && (sub_12570C() & 1) != 0)
    {
      sub_23B08((v3 + 40), *(v3 + 64));
      return sub_60BD4();
    }

    else
    {
      sub_23B08((v3 + 40), *(v3 + 64));
      return sub_6096C(a2);
    }
  }

  else
  {
    sub_12561C();
    if (swift_dynamicCastClass())
    {

      return sub_5E504();
    }

    else
    {
      sub_12555C();
      if (swift_dynamicCastClass())
      {
        sub_23B08((v2 + 40), *(v2 + 64));
        return sub_60EFC(a2);
      }

      else
      {
        sub_12558C();
        if (swift_dynamicCastClass())
        {
          sub_23B08((v2 + 40), *(v2 + 64));
          return sub_613CC(a2);
        }

        else
        {
          sub_12564C();
          if (swift_dynamicCastClass())
          {
            sub_23B08((v2 + 40), *(v2 + 64));
            return sub_61164(a2);
          }

          else
          {
            sub_12568C();
            if (swift_dynamicCastClass())
            {
              sub_23B08((v2 + 40), *(v2 + 64));
              return sub_6189C(a2);
            }

            else
            {
              sub_12550C();
              if (swift_dynamicCastClass())
              {
                sub_23B08((v2 + 40), *(v2 + 64));
                return sub_61634(a2);
              }

              else
              {
                v16 = v7;
                v17 = sub_125AAC();
                v18 = sub_125DEC();

                if (os_log_type_enabled(v17, v18))
                {
                  v19 = swift_slowAlloc();
                  v20 = swift_slowAlloc();
                  v31[0] = v20;
                  *v19 = 136315138;
                  v21 = v16;
                  v22 = [v21 description];
                  v23 = sub_125B9C();
                  v25 = v24;

                  v26 = sub_8530(v23, v25, v31);

                  *(v19 + 4) = v26;
                  _os_log_impl(&dword_0, v17, v18, "FlowPlugin is unable to consume the SiriKit intent %s. Exiting the flow.", v19, 0xCu);
                  sub_5BB0(v20);
                }

                v27 = sub_12547C();
                v31[3] = v27;
                v31[4] = &protocol witness table for ABCReport;
                v28 = sub_23B4C(v31);
                *v28 = swift_getObjectType();
                v29 = enum case for UnhandledAbortSubtype.unknownIntent(_:);
                v30 = sub_12538C();
                (*(*(v30 - 8) + 104))(v28, v29, v30);
                (*(*(v27 - 8) + 104))(v28, enum case for ABCReport.unhandledAbort(_:), v27);
                sub_1251AC();
                sub_5BB0(v31);
                return sub_12348C();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_5DC6C@<X0>(uint64_t x8_0@<X8>)
{
  v3 = v2;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v5 = sub_125ABC();
  sub_5B30(v5, qword_1603E0);
  swift_unknownObjectRetain();
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    swift_unknownObjectRetain();
    sub_5AE8(&unk_160610, &unk_129CC0);
    v10 = sub_125BAC();
    v12 = sub_8530(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "Routing flow based on nlv4 intent: %s", v8, 0xCu);
    sub_5BB0(v9);
  }

  ObjectType = swift_getObjectType();
  v14 = SIRINLUUserDialogAct.firstUsoTask.getter(ObjectType);
  if (v14)
  {
    v15 = v14;
    v16 = sub_C69B0(v14);

    sub_5DED4(v16, v15, x8_0);
  }

  else
  {
    v18 = sub_125AAC();
    v19 = sub_125DEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "UsoTask is empty! Calling createTimerFlow anyways", v20, 2u);
    }

    sub_23B08((v3 + 40), *(v3 + 64));
    return sub_6096C(x8_0);
  }
}

uint64_t sub_5DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v8 = sub_125ABC();
  sub_5B30(v8, qword_1603E0);
  v9 = sub_125AAC();
  v10 = sub_125DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = v4;
    v13 = a3;
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v11 = 136315138;
    v15 = sub_B6264(v6);
    v17 = a2;
    v18 = v6;
    v19 = sub_8530(v15, v16, v31);

    *(v11 + 4) = v19;
    v6 = v18;
    a2 = v17;
    _os_log_impl(&dword_0, v9, v10, "Routing flow based on verb: %s", v11, 0xCu);
    sub_5BB0(v14);
    a3 = v13;
    v4 = v12;
  }

  if (a2)
  {

    if (sub_C66F0())
    {
      if (sub_12570C())
      {
        sub_5F348();

LABEL_12:
      }
    }

    if (sub_C6BD8())
    {
      sub_5E504();
      goto LABEL_12;
    }
  }

  switch(v6)
  {
    case 1:
    case 3:
    case 4:
    case 9:

      return sub_5F60C(a2, a3);
    case 2:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_60C94(a3);
    case 5:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_60EFC(a3);
    case 7:
    case 17:
    case 18:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_613CC(a3);
    case 8:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_61164(a3);
    case 10:

      return sub_5E504();
    case 12:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_61634(a3);
    case 14:
      sub_12437C();
      sub_E344(v31, v29, &unk_161840, &qword_128110);
      if (v30)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (v29[0] && (UsoEntity_common_Timer.duration.getter(), sub_8BAC(), v21 = UsoEntity_common_Timer.isMultiple.getter(), isa = sub_125EFC(0).super.super.isa, v23 = sub_125F0C(), v21, isa, , (v23 & 1) == 0))
          {
            sub_23B08((v4 + 40), *(v4 + 64));
            sub_6189C(a3);
          }

          else
          {
            sub_5F60C(a2, a3);
          }

LABEL_47:

          return sub_5CA8(v31, &unk_161840, &qword_128110);
        }
      }

      else
      {
        sub_5CA8(v29, &unk_161840, &qword_128110);
      }

      sub_E344(v31, v29, &unk_161840, &qword_128110);
      if (v30)
      {
        sub_12457C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (v29[0] && (v24 = sub_1242DC(), , v24) && (v25 = sub_1243BC(), , v25))
          {

            sub_23B08((v4 + 40), *(v4 + 64));
            sub_6096C(a3);
          }

          else
          {
            sub_12348C();
          }

          goto LABEL_47;
        }
      }

      else
      {
        sub_5CA8(v29, &unk_161840, &qword_128110);
      }

      v26 = sub_125AAC();
      v27 = sub_125DEC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "TimerFlowFactory: failed to parse UsoTask_noVerb_common_Timer. Exiting the flow.", v28, 2u);
      }

      sub_12348C();
      return sub_5CA8(v31, &unk_161840, &qword_128110);
    default:
      sub_23B08((v4 + 40), *(v4 + 64));
      return sub_6189C(a3);
  }
}

uint64_t sub_5E504()
{
  v1 = v0;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_1603E0);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "TimerFlowFactory: deciding between deleteTimerFlow and dismissTimerFlow based on firing timer info from device context.", v5, 2u);
  }

  sub_23B08((v1 + 40), *(v1 + 64));
  return sub_63ECC();
}

uint64_t sub_5E604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_5AE8(&qword_160550, &qword_1280D8);
  __chkstk_darwin(v3 - 8);
  v73 = &v68 - v4;
  v74 = sub_123A6C();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5AE8(&qword_160558, &qword_1280E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_5AE8(&qword_160560, &qword_1280E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - v10;
  v12 = sub_1241DC();
  v81 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v68 - v16;
  v17 = sub_124EDC();
  __chkstk_darwin(v17 - 8);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5AE8(&qword_15FF90, &unk_127BC0);
  v20 = __chkstk_darwin(v19 - 8);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v68 - v23;
  __chkstk_darwin(v22);
  v26 = &v68 - v25;
  v27 = sub_5AE8(&qword_160568, &unk_1280F0);
  __chkstk_darwin(v27 - 8);
  v29 = &v68 - v28;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v80 = v11;
  v75 = v15;
  v30 = sub_125ABC();
  v83 = sub_5B30(v30, qword_1603E0);
  v31 = sub_125AAC();
  v32 = sub_125DFC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "TimerFlowFactory: deciding between createTimerFlow and createAlarmFlow based on user's NLv3 intent.", v33, 2u);
  }

  v79 = v8;
  v82 = v12;

  if (qword_15EF78 != -1)
  {
    swift_once();
  }

  type metadata accessor for TimerNLv3Intent(0);
  sub_647DC(&qword_15FFA0, type metadata accessor for TimerNLv3Intent, &unk_12AA00);
  v84 = a1;
  sub_12428C();
  v34 = sub_12412C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v26, 1, v34) == 1)
  {
    sub_5CA8(v26, &qword_15FF90, &unk_127BC0);
    v37 = sub_12418C();
    (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
LABEL_10:
    sub_5CA8(v29, &qword_160568, &unk_1280F0);
    v40 = sub_125AAC();
    v41 = sub_125DFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "No startTime found in timerIntent. Returning createTimerFlow", v42, 2u);
    }

    v43 = v85[8];
    v44 = v85 + 5;
    goto LABEL_13;
  }

  v70 = v36;
  sub_1240EC();
  v38 = *(v35 + 8);
  v38(v26, v34);
  v39 = sub_12418C();
  if ((*(*(v39 - 8) + 48))(v29, 1, v39) == 1)
  {
    goto LABEL_10;
  }

  v69 = v38;
  sub_5CA8(v29, &qword_160568, &unk_1280F0);
  sub_12428C();
  if (v70(v24, 1, v34) == 1)
  {
    sub_5CA8(v24, &qword_15FF90, &unk_127BC0);
  }

  else
  {
    v46 = sub_1240FC();
    v69(v24, v34);
    if (v46)
    {
      if (qword_15EF70 != -1)
      {
        swift_once();
      }

      sub_12428C();
      if (v87)
      {
        sub_5FB70(v46, v86);
      }
    }
  }

  if (qword_15EF70 != -1)
  {
    swift_once();
  }

  sub_12428C();
  if (v87 & 1) == 0 && (sub_12570C())
  {
    sub_23B08(v85 + 5, v85[8]);
    return sub_60BD4();
  }

  sub_12428C();
  v47 = v85;
  if (v87 == 1)
  {
    sub_23B08(v85, v85[3]);
    if (sub_1235EC())
    {
      type metadata accessor for CreateTimerCATs_Async(0);
      sub_124ECC();
      v48 = sub_124DBC();
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v49 = sub_124DBC();
      v87 = v48;
      v88 = v49;
      sub_641A4();
      sub_12342C();

      sub_1234AC();
    }
  }

  if (qword_15EFA0 != -1)
  {
    swift_once();
  }

  v50 = v78;
  sub_12428C();
  if (v70(v50, 1, v34) == 1)
  {
    sub_5CA8(v50, &qword_15FF90, &unk_127BC0);
    v51 = sub_12414C();
    v52 = v79;
    (*(*(v51 - 8) + 56))(v79, 1, 1, v51);
    v53 = v80;
LABEL_35:
    sub_5CA8(v52, &qword_160558, &qword_1280E0);
    (*(v81 + 56))(v53, 1, 1, v82);
LABEL_36:
    sub_5CA8(v53, &qword_160560, &qword_1280E8);
    v43 = v47[8];
    v44 = v47 + 5;
LABEL_13:
    sub_23B08(v44, v43);
    return sub_6096C(v86);
  }

  v52 = v79;
  sub_1240DC();
  v69(v50, v34);
  v54 = sub_12414C();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v52, 1, v54);
  v53 = v80;
  if (v56 == 1)
  {
    goto LABEL_35;
  }

  sub_12413C();
  (*(v55 + 8))(v52, v54);
  v58 = v81;
  v57 = v82;
  if ((*(v81 + 48))(v53, 1, v82) == 1)
  {
    goto LABEL_36;
  }

  v59 = v76;
  (*(v58 + 32))(v76, v53, v57);
  v60 = v75;
  (*(v58 + 16))(v75, v59, v57);
  if ((*(v58 + 88))(v60, v57) == enum case for TerminalElement.Qualifier.every(_:))
  {
    v61 = sub_125AAC();
    v62 = sub_125DFC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Found startTime with recurrence qualifier in timerIntent. Transforming to alarm flow", v63, 2u);
    }

    sub_123D3C();
    sub_124C8C();
    v64 = v71;
    sub_123A5C();
    sub_1234BC();
    (*(v72 + 8))(v64, v74);
    return (*(v58 + 8))(v59, v57);
  }

  else
  {
    type metadata accessor for CreateTimerCATs_Async(0);
    sub_124ECC();
    v65 = sub_124DBC();
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v66 = sub_124DBC();
    v87 = v65;
    v88 = v66;
    sub_641A4();
    sub_12342C();

    sub_1234AC();

    v67 = *(v58 + 8);
    v67(v59, v57);
    return (v67)(v60, v57);
  }
}

uint64_t sub_5F348()
{
  v1 = v0;
  if (sub_12468C())
  {
    if (sub_1243BC() && (v2 = sub_12440C(), , v2))
    {
      if (v2 >> 62)
      {
LABEL_26:
        v3 = sub_1260FC();
        if (v3)
        {
LABEL_6:
          v13 = v1;
          v4 = 0;
          v5 = 0.0;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              sub_125FFC();
              v1 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
LABEL_16:
                __break(1u);
                goto LABEL_17;
              }
            }

            else
            {
              if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
                goto LABEL_26;
              }

              v1 = v4 + 1;
              if (__OFADD__(v4, 1))
              {
                goto LABEL_16;
              }
            }

            sub_1241FC();
            if (v14)
            {
              sub_12498C();
              v6 = v7;
            }

            else
            {
              v6 = 0.0;
            }

            v5 = v5 + v6;
            ++v4;
          }

          while (v1 != v3);

          if (v5 <= 0.0)
          {
            goto LABEL_28;
          }

          sub_23B08((v13 + 40), *(v13 + 64));
          sub_60BD4();
        }
      }

      else
      {
        v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        if (v3)
        {
          goto LABEL_6;
        }
      }

LABEL_28:
      if (qword_15EE48 != -1)
      {
        swift_once();
      }

      v9 = sub_125ABC();
      sub_5B30(v9, qword_1603E0);
      v10 = sub_125AAC();
      v11 = sub_125DEC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "TimerFlowDelegatePlugin was presented a sleep timer ontology, but with a duration of zero seconds.", v12, 2u);
      }

      sub_12348C();
    }

    else
    {
LABEL_17:
      sub_12348C();
    }
  }

  return sub_12348C();
}

uint64_t sub_5F60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (a1 && sub_124B7C())
  {
    if ((sub_1242CC() & 1) == 0)
    {
      if (qword_15EE48 != -1)
      {
        swift_once();
      }

      v19 = sub_125ABC();
      sub_5B30(v19, qword_1603E0);
      v20 = sub_125AAC();
      v21 = sub_125DFC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "TimerFlowFactory: Found alarm parse with invalid signature for timers – returning .noFlow", v22, 2u);
      }

      sub_12348C();
    }
  }

  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_1603E0);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "TimerFlowFactory: deciding between createTimerFlow and createAlarmFlow based on user's intent.", v9, 2u);
  }

  if (a1)
  {
    if (sub_C6CBC())
    {

      v10 = sub_125AAC();
      v11 = sub_125DFC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v33 = v13;
        *v12 = 136315138;
        sub_12434C();

        v14 = sub_125BAC();
        v16 = sub_8530(v14, v15, &v33);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v10, v11, "TimerFlowFactory: timerEntity: %s", v12, 0xCu);
        sub_5BB0(v13);
      }

      UsoEntity_common_Timer.timerType.getter();
      v17 = sub_12589C();
      if (v17 == sub_12589C() && (sub_12570C() & 1) != 0)
      {
        sub_23B08((v3 + 40), *(v3 + 64));
        sub_60BD4();
      }

      else
      {
        UsoEntity_common_Timer.isRightNow.getter();
        sub_23B08((v3 + 40), *(v3 + 64));
        sub_6096C(a2);
      }
    }

    if (sub_124B8C() == 0x656C62616E65 && v23 == 0xE600000000000000)
    {
      goto LABEL_27;
    }

    v24 = sub_1261BC();

    if (v24)
    {
      goto LABEL_29;
    }

    if (sub_124B8C() == 0x656C6261736964 && v28 == 0xE700000000000000)
    {
LABEL_27:

LABEL_29:
      v25 = sub_125AAC();
      v26 = sub_125DEC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "TimerEntity is nil in the uso enable or disable task. Returning no flow.", v27, 2u);
      }

      return sub_12348C();
    }

    v29 = sub_1261BC();

    if (v29)
    {
      goto LABEL_29;
    }
  }

  v30 = sub_125AAC();
  v31 = sub_125DEC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "TimerEntity is nil in the uso task. Return createTimerFlow anyways.", v32, 2u);
  }

  sub_23B08((v3 + 40), *(v3 + 64));
  return sub_6096C(a2);
}

uint64_t sub_5FB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_124EDC();
  __chkstk_darwin(v4 - 8);
  v109 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5AE8(&qword_160578, &unk_12AA50);
  __chkstk_darwin(v6 - 8);
  v118 = v96 - v7;
  v125 = sub_122E6C();
  v122 = *(v125 - 8);
  v8 = __chkstk_darwin(v125);
  v110 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v111 = v96 - v11;
  v12 = __chkstk_darwin(v10);
  v114 = v96 - v13;
  v14 = __chkstk_darwin(v12);
  v115 = v96 - v15;
  v16 = __chkstk_darwin(v14);
  v112 = v96 - v17;
  __chkstk_darwin(v16);
  v119 = v96 - v18;
  v124 = sub_12306C();
  v19 = *(v124 - 8);
  __chkstk_darwin(v124);
  v21 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_122F1C();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v113 = v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v126 = v96 - v26;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v27 = sub_125ABC();
  v28 = sub_5B30(v27, qword_1603E0);

  v117 = v28;
  v29 = sub_125AAC();
  v30 = sub_125DFC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v116 = v23;
    v120 = v19;
    v32 = v31;
    v33 = swift_slowAlloc();
    v121 = v21;
    v34 = v33;
    v127 = a1;
    v128[0] = v33;
    *v32 = 136315138;
    sub_124C2C();
    v35 = a2;
    sub_647DC(&qword_160590, &type metadata accessor for DateTime, &protocol conformance descriptor for DateTime);
    v36 = sub_12618C();
    v38 = sub_8530(v36, v37, v128);

    *(v32 + 4) = v38;
    a2 = v35;
    _os_log_impl(&dword_0, v29, v30, "TimerFlowFactory: In createTimerOrReformToAlarm with %s", v32, 0xCu);
    sub_5BB0(v34);
    v21 = v121;

    v19 = v120;
    v23 = v116;
  }

  v39 = v126;
  sub_124EEC();
  sub_12304C();
  if (sub_124C1C() && (v40 = sub_124EFC()) != 0)
  {
    v41 = v40;
    v121 = v21;
    v107 = a2;
    v120 = v19;
    v108 = v22;
    v42 = sub_5AE8(&qword_160580, &qword_128100);
    v43 = sub_12305C();
    v44 = *(v43 - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v100 = *(v44 + 80);
    v102 = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_128030;
    v103 = v46;
    v48 = v47 + v46;
    v104 = v44;
    v49 = *(v44 + 104);
    (v49)(v48, enum case for Calendar.Component.year(_:), v43);
    (v49)(v48 + v45, enum case for Calendar.Component.month(_:), v43);
    (v49)(v48 + 2 * v45, enum case for Calendar.Component.day(_:), v43);
    v101 = v45;
    v98 = enum case for Calendar.Component.hour(_:);
    v49(v48 + 3 * v45);
    v99 = v49;
    (v49)(v48 + 4 * v45, enum case for Calendar.Component.minute(_:), v43);
    v105 = sub_64210(v47);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = v119;
    v106 = v41;
    sub_124F0C();
    v51 = v122;
    v52 = v122 + 16;
    v53 = v112;
    v97 = *(v122 + 16);
    v97(v112, v50, v125);
    v54 = sub_125AAC();
    v55 = sub_125DFC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v116 = v23;
      v58 = v125;
      v96[1] = v52;
      v59 = v57;
      v128[0] = v57;
      *v56 = 136315138;
      sub_647DC(&qword_160588, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
      v60 = sub_12618C();
      v61 = v51;
      v63 = v62;
      v112 = *(v61 + 8);
      (v112)(v53, v58);
      v64 = sub_8530(v60, v63, v128);

      *(v56 + 4) = v64;
      _os_log_impl(&dword_0, v54, v55, "TimerFlowFactory: reference date from utterance: %s", v56, 0xCu);
      sub_5BB0(v59);
      v23 = v116;

      v50 = v119;
    }

    else
    {

      v112 = *(v51 + 8);
      (v112)(v53, v125);
    }

    v66 = v121;
    sub_12303C();
    v67 = v118;
    v68 = v50;
    v69 = v108;
    v70 = (*(v23 + 48))(v118, 1, v108);
    v71 = v126;
    if (v70 == 1)
    {

      sub_5CA8(v67, &qword_160578, &unk_12AA50);
      sub_23B08((v123 + 40), *(v123 + 64));
      sub_6096C(v107);

      (v112)(v68, v125);
      (*(v120 + 8))(v66, v124);
      return (*(v23 + 8))(v71, v69);
    }

    else
    {
      (*(v23 + 32))(v113, v67, v69);
      sub_12302C();
      sub_12302C();

      v72 = v103;
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_126CB0;
      v99(v73 + v72, v98, v43);
      sub_64210(v73);
      swift_setDeallocating();
      (*(v104 + 8))(v73 + v72, v43);
      swift_deallocClassInstance();
      v74 = v111;
      sub_12301C();

      v75 = v110;
      v97(v110, v74, v125);
      v76 = sub_125AAC();
      v77 = sub_125DFC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v75;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v128[0] = v80;
        *v79 = 136315138;
        sub_647DC(&qword_160588, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
        v81 = v125;
        v82 = sub_12618C();
        v84 = v83;
        v85 = v78;
        v86 = v112;
        (v112)(v85, v81);
        v87 = sub_8530(v82, v84, v128);
        v88 = v121;

        *(v79 + 4) = v87;
        _os_log_impl(&dword_0, v76, v77, "TimerFlowFactory: deltaComponments: %s", v79, 0xCu);
        sub_5BB0(v80);
      }

      else
      {
        v88 = v66;

        v86 = v112;
        (v112)(v75, v125);
      }

      v89 = sub_122E4C();
      v90 = v108;
      if ((v91 & 1) != 0 || v89 < 0x18)
      {
        sub_23B08((v123 + 40), *(v123 + 64));
        sub_6096C(v107);
      }

      else
      {
        type metadata accessor for CreateTimerCATs_Async(0);
        sub_124ECC();
        v92 = sub_124DBC();
        type metadata accessor for CreateTimerCATPatternsExecutor(0);
        sub_124ECC();
        v93 = sub_124DBC();
        v128[0] = v92;
        v128[1] = v93;
        sub_641A4();
        sub_12342C();

        sub_1234AC();
      }

      v94 = v125;
      v86(v74, v125);
      v86(v114, v94);
      v86(v115, v94);
      v95 = *(v23 + 8);
      v95(v113, v90);
      v86(v119, v94);
      (*(v120 + 8))(v88, v124);
      return (v95)(v126, v90);
    }
  }

  else
  {
    sub_23B08((v123 + 40), *(v123 + 64));
    sub_6096C(a2);
    (*(v19 + 8))(v21, v124);
    return (*(v23 + 8))(v39, v22);
  }
}

uint64_t sub_6096C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&qword_160030, &unk_128240);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making createTimerFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_53720(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_61DC0(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_60BF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_57CC8(a1, a2 + 16);
}

uint64_t sub_60C94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&unk_160770, &qword_127E08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making deleteTimerFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_DDDC0(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_63260(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_60EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&qword_1601D8, &qword_1281E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making pauseTimerFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_58720(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_62810(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_61164@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&qword_160700, &qword_1281B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making resumeTimerFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_D64D8(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_624A0(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_613CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&qword_1606C8, &qword_128190);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making resetTimerFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_1176D0(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_62130(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_61634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-1] - v5;
  v7 = sub_5AE8(&qword_160690, &qword_128168);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - v9;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making setTimerAttributeFlow.", v14, 2u);
  }

  sub_2F488(v2 + 16, v18);
  sub_F5C58(v18);
  v15 = sub_12532C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_62B80(v10, v6, a1);
  sub_5CA8(v6, &qword_15FFB0, &unk_1270A0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_6189C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_5AE8(&qword_160648, &qword_128130);
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_1250BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_1603E0);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "TimerFlowFactory: making searchTimerFlow.", v14, 2u);
  }

  sub_1250AC();
  v15 = sub_12506C();
  (*(v8 + 8))(v10, v7);
  if (v15)
  {
    v16 = sub_125AAC();
    v17 = sub_125DFC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v25;
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v16, v17, "Using RemoteTimerContinuationFlow for Cross-Device Flow", v20, 2u);
    }

    sub_2F488(v19 + 16, v28);
    type metadata accessor for RemoteTimerContinuationFlow();
    swift_allocObject();
    *&v28[0] = sub_2C0D4(v28);
    sub_647DC(&unk_160670, type metadata accessor for RemoteTimerContinuationFlow, &unk_127880);
    sub_12342C();

    sub_1234AC();
  }

  else
  {
    sub_2F488(v25 + 16, v28);
    sub_12568C();
    sub_12566C();
    sub_1233FC();
    if (qword_15EEA8 != -1)
    {
      swift_once();
    }

    sub_12333C();
    sub_1233AC();
    sub_2F488(v28, v27);
    *(swift_allocObject() + 16) = 0;
    sub_64688();
    sub_12331C();

    sub_12339C();
    sub_646DC(v27);
    sub_5BB0(v28);
    v22 = sub_12532C();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    sub_62EF0(v6, v3, v26);
    sub_5CA8(v3, &qword_15FFB0, &unk_1270A0);
    return (*(v24 + 8))(v6, v4);
  }
}

uint64_t sub_61DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&unk_1607B0, &qword_127E50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_160030, &unk_128240);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_160170, &unk_128250);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&unk_1607C0, &qword_127E58);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_160170, &unk_128250);
  sub_5C60(&qword_160178, &qword_160170, &unk_128250, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&unk_1607D0, &qword_128260);
  sub_5C60(&qword_160180, &unk_1607D0, &qword_128260, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_160170, &unk_128250);
}

uint64_t sub_62130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_1606D0, &qword_128198);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_1606C8, &qword_128190);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_1606D8, &qword_1281A0);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_1606E0, &qword_1281A8);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_1606D8, &qword_1281A0);
  sub_5C60(&qword_1606E8, &qword_1606D8, &qword_1281A0, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_1606F0, &qword_1281B0);
  sub_5C60(&qword_1606F8, &qword_1606F0, &qword_1281B0, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_1606D8, &qword_1281A0);
}

uint64_t sub_624A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_160708, &qword_1281C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_160700, &qword_1281B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_160710, &qword_1281C8);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_160718, &qword_1281D0);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_160710, &qword_1281C8);
  sub_5C60(&qword_160720, &qword_160710, &qword_1281C8, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_160728, &qword_1281D8);
  sub_5C60(&unk_160730, &qword_160728, &qword_1281D8, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_160710, &qword_1281C8);
}

uint64_t sub_62810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_160740, &qword_1281E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_1601D8, &qword_1281E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_160748, &qword_1281F0);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_160750, &qword_1281F8);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_160748, &qword_1281F0);
  sub_5C60(&qword_160758, &qword_160748, &qword_1281F0, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_160760, &unk_128200);
  sub_5C60(&qword_160768, &qword_160760, &unk_128200, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_160748, &qword_1281F0);
}

uint64_t sub_62B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_160698, &qword_128170);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_160690, &qword_128168);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_1606A0, &qword_128178);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_1606A8, &qword_128180);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_1606A0, &qword_128178);
  sub_5C60(&qword_1606B0, &qword_1606A0, &qword_128178, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_1606B8, &qword_128188);
  sub_5C60(&qword_1606C0, &qword_1606B8, &qword_128188, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_1606A0, &qword_128178);
}

uint64_t sub_62EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_15FB68, &unk_1278E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&qword_160648, &qword_128130);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&qword_160640, &qword_128128);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_160658, &unk_128140);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &qword_160640, &qword_128128);
  sub_5C60(&unk_160660, &qword_160640, &qword_128128, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_160680, &qword_128160);
  sub_5C60(&qword_160688, &qword_160680, &qword_128160, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &qword_160640, &qword_128128);
}

uint64_t sub_63260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a3;
  v4 = sub_5AE8(&qword_160150, &unk_128210);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_5AE8(&unk_160770, &qword_127E08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_5AE8(&unk_160780, &qword_127E38);
  v13 = __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  sub_2F488(v3 + 16, &v20 - v16);
  sub_E344(v20, &v17[*(v12 + 36)], &qword_15FFB0, &unk_1270A0);
  (*(v9 + 16))(v11, v21, v8);
  sub_5AE8(&qword_160158, &unk_128220);
  swift_allocObject();
  sub_12340C();
  sub_E344(v17, v15, &unk_160780, &qword_127E38);
  sub_5C60(&unk_160790, &unk_160780, &qword_127E38, &unk_127D90);

  sub_1237CC();
  v18 = sub_1237AC();
  (*(v5 + 8))(v7, v4);
  v23 = v18;
  sub_5AE8(&qword_160160, &qword_127E40);
  sub_5C60(&unk_1607A0, &qword_160160, &qword_127E40, &protocol conformance descriptor for AnyValueFlow<A>);
  sub_12342C();

  sub_1234AC();

  return sub_5CA8(v17, &unk_160780, &qword_127E38);
}

uint64_t sub_635D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_5AE8(&qword_160640, &qword_128128);
  v4 = __chkstk_darwin(v19[0]);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = sub_5AE8(&qword_160648, &qword_128130);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  sub_2F488(v2 + 16, v21);
  sub_12568C();
  sub_12566C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_1233AC();
  sub_2F488(v21, v20);
  *(swift_allocObject() + 16) = a1 & 1;
  sub_64688();
  sub_12331C();

  sub_12339C();
  sub_646DC(v20);
  sub_5BB0(v21);
  sub_2F488(v2 + 16, v8);
  v16 = *(v19[0] + 36);
  v17 = sub_12532C();
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  (*(v10 + 16))(v13, v15, v9);
  sub_5AE8(&qword_160658, &unk_128140);
  swift_allocObject();
  sub_12340C();
  sub_E344(v8, v6, &qword_160640, &qword_128128);
  sub_5C60(&unk_160660, &qword_160640, &qword_128128, &unk_127D90);
  sub_1237CC();
  sub_5CA8(v8, &qword_160640, &qword_128128);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_63980()
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_1603E0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "TimerFlowFactory: making recreateDeletedTimerFlow.", v3, 2u);
  }

  sub_12587C();
  swift_allocObject();
  v4 = sub_12586C();
  v5 = [objc_allocWithZone(MTTimerManager) init];
  type metadata accessor for RecreateDeletedTimerFlow(0);
  v6 = swift_allocObject();
  sub_10EFA0(v4, v5, v6);
  sub_647DC(&qword_160638, type metadata accessor for RecreateDeletedTimerFlow, &protocol conformance descriptor for RecreateDeletedTimerFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63B34()
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v0 = sub_125ABC();
  sub_5B30(v0, qword_1603E0);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "TimerFlowFactory: making undoCreateTimerFlow", v3, 2u);
  }

  sub_12587C();
  swift_allocObject();
  v4 = sub_12586C();
  v5 = [objc_allocWithZone(MTTimerManager) init];
  type metadata accessor for UndoCreateTimerFlow(0);
  v6 = swift_allocObject();
  sub_FC520(v4, v5, v6);
  sub_647DC(&qword_160630, type metadata accessor for UndoCreateTimerFlow, &protocol conformance descriptor for UndoCreateTimerFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63CE8()
{
  v1 = v0;
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v2 = sub_125ABC();
  sub_5B30(v2, qword_1603E0);
  v3 = sub_125AAC();
  v4 = sub_125DFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "TimerFlowFactory: making undoTimerChangeStateFlow", v5, 2u);
  }

  sub_2F488(v1 + 16, v12);
  sub_12587C();
  swift_allocObject();
  v6 = sub_12586C();
  v7 = [objc_allocWithZone(MTTimerManager) init];
  sub_2F488(v12, v11);
  type metadata accessor for UndoTimerChangeStateFlow(0);
  v8 = swift_allocObject();
  v9 = sub_7B870(v6, v7, v11, v8);
  sub_5BB0(v12);
  v12[0] = v9;
  sub_647DC(&qword_160628, type metadata accessor for UndoTimerChangeStateFlow, &protocol conformance descriptor for UndoTimerChangeStateFlow);
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_63EEC(const char *a1, uint64_t a2)
{
  if (qword_15EE48 != -1)
  {
    swift_once();
  }

  v3 = sub_125ABC();
  sub_5B30(v3, qword_1603E0);
  v4 = sub_125AAC();
  v5 = sub_125DFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, a1, v6, 2u);
  }

  sub_1231BC();
  swift_allocObject();

  sub_1231CC();
  sub_12342C();

  sub_1234AC();
}

uint64_t sub_64054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_56300(a1, a2 + 16);
}

uint64_t sub_640F4()
{
  sub_5BB0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_64150()
{
  result = qword_160520;
  if (!qword_160520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160520);
  }

  return result;
}

unint64_t sub_641A4()
{
  result = qword_160570;
  if (!qword_160570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160570);
  }

  return result;
}

void *sub_64210(uint64_t a1)
{
  v2 = sub_12305C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_5AE8(&qword_160598, &qword_128108);
    v9 = sub_125FCC();
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
      sub_647DC(&qword_1605A0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_125B6C();
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_647DC(&qword_1605A8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_125B7C();
          v24 = *v15;
          (*v15)(v6, v2);
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

  return &_swiftEmptySetSingleton;
}

uint64_t sub_64530(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5D08;

  return sub_64054(a1, v1);
}

uint64_t sub_645DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_648C4;

  return sub_6606C(a1, a2, v6);
}

unint64_t sub_64688()
{
  result = qword_160650;
  if (!qword_160650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_160650);
  }

  return result;
}

uint64_t sub_64730(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23934;

  return sub_6606C(a1, a2, v6);
}

uint64_t sub_647DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_64824(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_503C;

  return sub_60BF4(a1, v1);
}

id sub_648C8(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  isa = (a1 >> 62);
  if (a1 >> 62)
  {
LABEL_46:
    v4 = sub_1260FC();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v5 = sub_125ABC();
    sub_5B30(v5, qword_1607E0);

    v6 = sub_125AAC();
    v7 = sub_125DDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      if (isa)
      {
        v9 = sub_1260FC();
      }

      else
      {
        v9 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }

      *(v8 + 4) = v9;

      _os_log_impl(&dword_0, v6, v7, "Converting [SiriTimer] to [STTimerShowTimerAndPerformAction]: %ld timers", v8, 0xCu);
    }

    else
    {
    }

    v15 = 0;
    v37 = v2 & 0xC000000000000001;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    v17 = _swiftEmptyArrayStorage;
    v36 = v2;
    do
    {
      if (v37)
      {
        v19 = sub_125FFC();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_44;
        }

        v19 = *(v2 + 8 * v15 + 32);
      }

      isa = v19;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v40 = v19;
      sub_64E98(&v40, a2, v39);

      v21 = v39[0];
      if (v39[0])
      {
        v22 = v39[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_CDBA0(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        isa = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_CDBA0((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = isa;
        v18 = &v17[2 * v24];
        v18[4] = v21;
        v18[5] = v22;
        v2 = v36;
      }

      ++v15;
    }

    while (v20 != v4);
    v2 = [objc_allocWithZone(STTimerShowTimerAndPerformAction) init];
    v25 = v17[2];
    if (v25)
    {
      v39[0] = _swiftEmptyArrayStorage;
      sub_12606C();
      v26 = (v17 + 4);
      do
      {
        v27 = *v26;
        v26 += 2;
        v28 = v27;
        sub_12603C();
        sub_12607C();
        sub_12608C();
        sub_12604C();
        --v25;
      }

      while (v25);
    }

    sub_30B8C(0, &qword_160800, STTimer_ptr);
    isa = sub_125C4C().super.isa;

    v29 = 0;
    v39[0] = _swiftEmptyArrayStorage;
    v30 = v17[2];
LABEL_34:
    v31 = 16 * v29 + 40;
    while (v30 != v29)
    {
      if (v29 >= v17[2])
      {
        goto LABEL_45;
      }

      v32 = *(v17 + v31);
      v31 += 16;
      ++v29;
      if (v32)
      {
        v33 = v32;
        sub_125C3C();
        if (*(&dword_10 + (v39[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_125C9C();
        }

        sub_125CCC();
        goto LABEL_34;
      }
    }

    sub_30B8C(0, &qword_160808, SASTCommandTemplateAction_ptr);
    v34 = sub_125C4C().super.isa;

    v14 = [v2 _initWithTimers:isa templateActions:v34 timerAction:qword_128280[a2]];
  }

  else
  {
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v10 = sub_125ABC();
    sub_5B30(v10, qword_1607E0);
    v11 = sub_125AAC();
    v12 = sub_125DFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "getSTTimerAction received an empty array of timers: returning nil.", v13, 2u);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_64DC0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_1607E0);
  sub_5B30(v0, qword_1607E0);
  return sub_1257AC();
}

uint64_t sub_64E0C()
{
  v0 = sub_124EDC();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for TimerBaseCATs_Async(0);
  sub_124ECC();
  result = sub_124DBC();
  qword_1607F8 = result;
  return result;
}

void sub_64E98(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v6 = [*a1 identifier];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_125B9C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_14:
    if (qword_15EE50 != -1)
    {
      swift_once();
    }

    v29 = sub_125ABC();
    sub_5B30(v29, qword_1607E0);
    v30 = v5;
    v31 = sub_125AAC();
    v32 = sub_125DFC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315138;
      v35 = v30;
      v36 = [v35 description];
      v37 = a3;
      v38 = sub_125B9C();
      v40 = v39;

      v41 = v38;
      a3 = v37;
      v42 = sub_8530(v41, v40, v57);

      *(v33 + 4) = v42;
      _os_log_impl(&dword_0, v31, v32, "Timer ID was nil! %s", v33, 0xCu);
      sub_5BB0(v34);
    }

    goto LABEL_19;
  }

  sub_30B8C(0, &qword_160800, STTimer_ptr);
  v12 = sub_65448(v5);
  if (!v12)
  {

LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v13 = v12;
  if (qword_15EE50 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_1607E0);
  v15 = v13;
  v16 = sub_125AAC();
  v17 = sub_125DFC();

  v56 = v8;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v18 = 136315138;
    v19 = v15;
    v20 = v3;
    v21 = [v19 description];
    v53 = v17;
    v22 = a3;
    v23 = sub_125B9C();
    v55 = v13;
    v25 = v24;

    v3 = v20;
    v26 = v23;
    a3 = v22;
    v27 = sub_8530(v26, v25, v57);
    v13 = v55;

    *(v18 + 4) = v27;
    _os_log_impl(&dword_0, v16, v53, "STTimer: %s", v18, 0xCu);
    sub_5BB0(v54);
  }

  if (sub_B6264(v3) == 0x6E776F6E6B6E75 && v28 == 0xE700000000000000)
  {

LABEL_22:

    *a3 = v13;
    a3[1] = 0;
    return;
  }

  v43 = sub_1261BC();

  if ((v43 & 1) != 0 || v3 > 0x12u || ((1 << v3) & 0x611A4) == 0)
  {
    goto LABEL_22;
  }

  v44 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_5AE8(&qword_160810, &unk_127420);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_126EB0;
  v46 = sub_DE3C(v3, v56, v10);
  v47 = objc_opt_self();
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v48 = v13;
  sub_23B08(v57, v57[3]);
  v49 = sub_12360C();
  v50 = [v47 runSiriKitExecutorCommandWithContext:v49 payload:v46];

  sub_5BB0(v57);
  v51 = [v47 wrapCommandInStartLocalRequest:v50];

  *(v45 + 32) = v51;
  sub_5AE8(&qword_160818, &qword_128278);
  isa = sub_125C4C().super.isa;

  [v44 setCommands:isa];

  *a3 = v48;
  a3[1] = v44;
}

id sub_65448(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_125B9C();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = [a1 duration];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v10 setIdentifier:v3];

        v11 = [a1 remainingTime];
        [v10 setValue:v11];

        return v10;
      }
    }
  }

  if (qword_15EE50 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  sub_5B30(v13, qword_1607E0);
  v14 = a1;
  v15 = sub_125AAC();
  v16 = sub_125DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v21 = sub_125B9C();
    v23 = v22;

    v24 = sub_8530(v21, v23, &v25);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v15, v16, "STTimer(siriTimer:) Timer ID or duration was nil! %s", v17, 0xCu);
    sub_5BB0(v18);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_656CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 200) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1237EC();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_12397C();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_1239AC();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_65864, 0, 0);
}

uint64_t sub_65864()
{
  if (qword_15EE58 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1607F8;
  v4 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_6596C;
  v2 = v0[11];

  return (v4)(v2, 0xD000000000000018, 0x800000000012D3D0, _swiftEmptyArrayStorage);
}

uint64_t sub_6596C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_65C4C;
  }

  else
  {
    v2 = sub_65A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65A80()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_12396C();
  v5 = *(v3 + 8);
  v0[19] = v5;
  v0[20] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (*(v4 + 16))
  {
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    (*(v8 + 16))(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    sub_12399C();
    (*(v8 + 8))(v6, v7);
    v12 = sub_1237DC();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v0[21] = v12;
  v0[22] = v14;
  v18 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_65CE8;
  v16 = v0[10];

  return (v18)(v16, 0xD000000000000017, 0x800000000012D3F0, _swiftEmptyArrayStorage);
}

uint64_t sub_65C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_65CE8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_65FC8;
  }

  else
  {
    v2 = sub_65DFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65DFC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = sub_12396C();
  v1(v2, v3);
  if (*(v4 + 16))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_12399C();
    (*(v6 + 8))(v5, v7);
    sub_1237DC();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
  }

  sub_B6264(*(v0 + 200));

  sub_12539C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_65FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6606C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return _swift_task_switch(sub_66090, 0, 0);
}

uint64_t sub_66090()
{
  sub_12565C();
  v1 = sub_12567C();
  if (v1 == sub_12567C())
  {
    sub_12546C();
    swift_allocObject();
    *(v0 + 16) = sub_12545C();
    sub_664AC();
    v2 = sub_12342C();

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = [*(v0 + 32) matchedTimers];
    if (v5)
    {
      v6 = v5;
      sub_1257EC();
      v7 = sub_125C6C();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = [*(v0 + 32) unmatchedTimers];
    if (v8)
    {
      v9 = v8;
      sub_1257EC();
      v10 = sub_125C6C();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v11 = [*(v0 + 32) remoteTimers];
    if (v11)
    {
      v12 = v11;
      sub_1257EC();
      v13 = sub_125C6C();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = *(v0 + 64);
    v15 = *(v0 + 24);
    _s17ResultSetProviderCMa();
    swift_allocObject();
    *(v0 + 40) = sub_F6F8(v15, v14, v7, v10, v13);
    v16 = swift_task_alloc();
    *(v0 + 48) = v16;
    *v16 = v0;
    v16[1] = sub_662F0;

    return sub_FEE0();
  }
}

uint64_t sub_662F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_66448, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_66448()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_664AC()
{
  result = qword_1603C8;
  if (!qword_1603C8)
  {
    sub_12546C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1603C8);
  }

  return result;
}

char *UndoTimerChangeStateFlow.__allocating_init(deviceState:)(void *a1)
{
  sub_12587C();
  swift_allocObject();
  v2 = sub_12586C();
  v3 = [objc_allocWithZone(MTTimerManager) init];
  sub_2F488(a1, v7);
  type metadata accessor for UndoTimerChangeStateFlow(0);
  v4 = swift_allocObject();
  v5 = sub_7B870(v2, v3, v7, v4);
  sub_5BB0(a1);
  return v5;
}

uint64_t type metadata accessor for UndoTimerChangeStateFlow(uint64_t a1)
{
  result = qword_1608A0;
  if (!qword_1608A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66600()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160820);
  sub_5B30(v0, qword_160820);
  return sub_1257AC();
}

uint64_t sub_6669C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_5BFC(v6, a3);
  v7 = sub_5B30(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t UndoTimerChangeStateFlow.on(input:)()
{
  v0 = sub_5AE8(&qword_160838, &qword_128330);
  __chkstk_darwin(v0 - 8);
  v85 = &v77 - v1;
  v2 = sub_1252CC();
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1252AC();
  v4 = *(v91 - 8);
  v5 = __chkstk_darwin(v91);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v77 - v8;
  __chkstk_darwin(v7);
  v11 = &v77 - v10;
  v12 = sub_123D1C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_123D3C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_123CCC();
  if ((*(v17 + 88))(v19, v16) != enum case for Parse.directInvocation(_:))
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  (*(v17 + 96))(v19, v16);
  (*(v13 + 32))(v15, v19, v12);
  v20 = sub_123D0C();
  v21 = v15;
  if (!v20)
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v22 = v20;
  v83 = v21;
  v84 = v12;
  v23 = v4;
  v24 = *(v4 + 104);
  v25 = v91;
  v81 = v24;
  v24(v11, enum case for DirectInvocationUtils.Timer.UserInfoKey.verb(_:), v91);
  v26 = sub_12529C();
  v28 = v27;
  v29 = *(v23 + 8);
  v82 = v23 + 8;
  v29(v11, v25);
  if (!*(v22 + 16))
  {
    goto LABEL_11;
  }

  v30 = sub_8AD8(v26, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_12:

    (*(v13 + 8))(v83, v84);
    return 0;
  }

  sub_8B50(*(v22 + 56) + 32 * v30, v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v33 = sub_B66D0(v92, v93);
  if (v33 == 19)
  {
    goto LABEL_7;
  }

  v80 = v33;
  v81(v9, enum case for DirectInvocationUtils.Timer.UserInfoKey.timerId(_:), v25);
  v35 = sub_12529C();
  v37 = v36;
  v29(v9, v25);
  if (!*(v22 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v38 = sub_8AD8(v35, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_8B50(*(v22 + 56) + 32 * v38, v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    (*(v13 + 8))(v83, v84);
LABEL_8:

    return 0;
  }

  v41 = v93;
  v79 = v92;
  if (sub_B6264(v80) == 0x6573756170 && v42 == 0xE500000000000000)
  {
  }

  else
  {
    v43 = sub_1261BC();

    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v44 = v90;
  v81(v90, enum case for DirectInvocationUtils.Timer.UserInfoKey.duration(_:), v25);
  v45 = sub_12529C();
  v47 = v46;
  v29(v44, v25);
  if (!*(v22 + 16))
  {

    v63 = v83;
LABEL_31:

    (*(v13 + 8))(v63, v84);
    return 0;
  }

  v48 = v41;
  v49 = sub_8AD8(v45, v47);
  v51 = v50;

  if ((v51 & 1) == 0)
  {

    v63 = v83;
    goto LABEL_31;
  }

  sub_8B50(*(v22 + 56) + 32 * v49, v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v13 + 8))(v83, v84);
LABEL_47:

    goto LABEL_8;
  }

  v52 = v89 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime;
  *v52 = v92;
  *(v52 + 8) = 0;
  v41 = v48;
LABEL_26:
  v78 = v41;
  v53 = v83;
  v54 = sub_123CFC();
  v56 = v55;
  v57 = v86;
  v58 = v87;
  v59 = v88;
  (*(v87 + 104))(v86, enum case for DirectInvocationUtils.Timer.URI.undo(_:), v88);
  v60 = sub_1252BC();
  v62 = v61;
  (*(v58 + 8))(v57, v59);
  if (v54 == v60 && v56 == v62)
  {
  }

  else
  {
    v64 = sub_1261BC();

    if ((v64 & 1) == 0)
    {
LABEL_46:
      (*(v13 + 8))(v53, v84);
      goto LABEL_47;
    }
  }

  if (sub_B6264(v80) != 0x6573756170 || v65 != 0xE500000000000000)
  {
    v66 = sub_1261BC();

    if (v66)
    {
      goto LABEL_37;
    }

    if (sub_B6264(v80) != 0x656D75736572 || v75 != 0xE600000000000000)
    {
      v76 = sub_1261BC();

      if (v76)
      {
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

LABEL_37:
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v67 = sub_125ABC();
  sub_5B30(v67, qword_160820);
  v68 = sub_125AAC();
  v69 = sub_125DFC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_0, v68, v69, "UndoTimerChangeStateFlow: accepting input.", v70, 2u);
  }

  v71 = v89;
  v72 = v78;
  *(v89 + 120) = v79;
  *(v71 + 128) = v72;

  v73 = v85;
  sub_F58F4(v22, v85);

  (*(v13 + 8))(v53, v84);
  v74 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  swift_beginAccess();
  sub_7CC5C(v73, v71 + v74, &qword_160838, &qword_128330);
  swift_endAccess();
  *(v71 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation) = v80;
  return 1;
}

uint64_t UndoTimerChangeStateFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoTimerChangeStateFlow(0);
  sub_7D14C(&qword_160628, type metadata accessor for UndoTimerChangeStateFlow, &protocol conformance descriptor for UndoTimerChangeStateFlow);
  return sub_12344C();
}

uint64_t UndoTimerChangeStateFlow.execute()(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  sub_5AE8(&qword_160838, &qword_128330);
  v2[147] = swift_task_alloc();
  v3 = sub_12372C();
  v2[148] = v3;
  v2[149] = *(v3 - 8);
  v2[150] = swift_task_alloc();
  v2[151] = type metadata accessor for ResumeTimerHandledOnWatchParameters(0);
  v2[152] = swift_task_alloc();
  sub_5AE8(&unk_15F170, &unk_126E00);
  v2[153] = swift_task_alloc();
  v2[154] = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  v2[155] = swift_task_alloc();
  v4 = sub_123B3C();
  v2[156] = v4;
  v2[157] = *(v4 - 8);
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v5 = sub_12503C();
  v2[162] = v5;
  v2[163] = *(v5 - 8);
  v2[164] = swift_task_alloc();
  v2[165] = swift_task_alloc();
  v6 = sub_125ABC();
  v2[166] = v6;
  v2[167] = *(v6 - 8);
  v2[168] = swift_task_alloc();
  v7 = sub_124FFC();
  v2[169] = v7;
  v2[170] = *(v7 - 8);
  v2[171] = swift_task_alloc();
  v8 = sub_12501C();
  v2[172] = v8;
  v2[173] = *(v8 - 8);
  v2[174] = swift_task_alloc();
  v2[175] = swift_task_alloc();
  v9 = sub_12368C();
  v2[176] = v9;
  v2[177] = *(v9 - 8);
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v10 = sub_12392C();
  v2[181] = v10;
  v2[182] = *(v10 - 8);
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v11 = sub_124FCC();
  v2[185] = v11;
  v2[186] = *(v11 - 8);
  v2[187] = swift_task_alloc();
  v12 = sub_122EDC();
  v2[188] = v12;
  v2[189] = *(v12 - 8);
  v2[190] = swift_task_alloc();
  v2[191] = swift_task_alloc();
  v13 = sub_122F6C();
  v2[192] = v13;
  v2[193] = *(v13 - 8);
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  v14 = sub_1250BC();
  v2[196] = v14;
  v2[197] = *(v14 - 8);
  v2[198] = swift_task_alloc();
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[199] = swift_task_alloc();
  sub_5AE8(&qword_15F6F0, &unk_128340);
  v2[200] = swift_task_alloc();
  sub_5AE8(&qword_15F6F8, &qword_1271D0);
  v2[201] = swift_task_alloc();
  v15 = sub_12370C();
  v2[202] = v15;
  v2[203] = *(v15 - 8);
  v2[204] = swift_task_alloc();

  return _swift_task_switch(sub_678A8, 0, 0);
}

uint64_t sub_678A8()
{
  (*(v0[203] + 104))(v0[204], enum case for ActivityType.correction(_:), v0[202]);
  if (qword_15EE68 != -1)
  {
    swift_once();
  }

  v1 = v0[201];
  v2 = sub_124FDC();
  sub_5B30(v2, qword_1675A8);
  v3 = sub_12353C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (qword_15EE70 != -1)
  {
    swift_once();
  }

  v4 = v0[203];
  v110 = v0[204];
  v111 = v0[202];
  v5 = v0[201];
  v6 = v0[200];
  v7 = v0[199];
  v8 = v0[186];
  v113 = v0;
  v9 = v0[185];
  v10 = v0[146];
  v11 = sub_124FEC();
  v12 = sub_5B30(v11, qword_1675C0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v6, v12, v11);
  (*(v13 + 56))(v6, 0, 1, v11);
  v14 = *(v8 + 56);
  v0[205] = v14;
  v0[206] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15 = v9;
  v16 = v0;
  v14(v7, 1, 1, v15);
  sub_124FBC();
  sub_5CA8(v7, &qword_15F6E8, &unk_1271C0);
  sub_5CA8(v6, &qword_15F6F0, &unk_128340);
  sub_5CA8(v5, &qword_15F6F8, &qword_1271D0);
  (*(v4 + 8))(v110, v111);
  v0[207] = *(v10 + 120);
  v17 = *(v10 + 128);
  v0[208] = v17;
  if (!v17)
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v21 = sub_125AAC();
    v22 = sub_125DEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "UndoTimerChangeStateFlow: No timer id to operate on! This should never happen.", v23, 2u);
    }

    v24 = v0[187];
    v25 = v0[186];
    v26 = v16[185];

    (*(v25 + 104))(v24, enum case for SiriTimeEventSender.ReasonDescription.noTimerToUndo(_:), v26);
    v27 = swift_task_alloc();
    v16[320] = v27;
    *v27 = v16;
    v28 = sub_74530;
    goto LABEL_21;
  }

  v18 = v0[146];
  v19 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation;
  if (sub_B6264(*(v18 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation)) == 0x6573756170 && v20 == 0xE500000000000000)
  {
  }

  else
  {
    v29 = sub_1261BC();

    if ((v29 & 1) == 0)
    {
      if (sub_B6264(*(v18 + v19)) == 0x656D75736572 && v57 == 0xE600000000000000)
      {
      }

      else
      {
        v62 = sub_1261BC();

        if ((v62 & 1) == 0)
        {

          v92 = v0[146];
          sub_12383C();
          sub_7C4BC(v92);

          v93 = v0[1];

          return v93();
        }
      }

      v63 = v0[198];
      v64 = v0[197];
      v65 = v16[196];
      sub_1250AC();
      v66 = sub_12504C();
      v67 = *(v64 + 8);
      v16[268] = v67;
      v16[269] = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67(v63, v65);
      if (v66)
      {
        v68 = *(v16[146] + 112);
        v16[270] = v68;
        v68;
        v69 = swift_task_alloc();
        v16[271] = v69;
        *v69 = v16;
        v69[1] = sub_6E550;

        return sub_CE068();
      }

      sub_2F488(v16[146] + 72, (v16 + 97));
      v58 = v16[100];
      v59 = v16[101];
      sub_23B08(v16 + 97, v58);
      v60 = swift_task_alloc();
      v16[280] = v60;
      *v60 = v16;
      v61 = sub_6F700;
LABEL_40:
      v60[1] = v61;

      return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v58, v59);
    }
  }

  v30 = v0[146] + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime;
  if (*(v30 + 8))
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v31 = sub_125AAC();
    v32 = sub_125DEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "UndoTimerChangeStateFlow: undoing a resume timer, need to know the remaining time to go back to.", v33, 2u);
    }

    v34 = v0[187];
    v35 = v0[186];
    v36 = v16[185];

    (*(v35 + 104))(v34, enum case for SiriTimeEventSender.ReasonDescription.timerMissingInputRemainingTime(_:), v36);
    v27 = swift_task_alloc();
    v16[267] = v27;
    *v27 = v16;
    v28 = sub_6E3CC;
LABEL_21:
    v27[1] = v28;
    v37 = v16[187];
    v38 = v16[145];

    return sub_77DEC(v38, v37);
  }

  v40 = v0[198];
  v41 = v0[197];
  v42 = v16[196];
  v16[209] = *v30;
  sub_1250AC();
  v43 = sub_12504C();
  v44 = *(v41 + 8);
  v16[210] = v44;
  v16[211] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v40, v42);
  if (!v43)
  {
    sub_2F488(v16[146] + 72, (v16 + 92));
    v58 = v16[95];
    v59 = v16[96];
    sub_23B08(v16 + 92, v58);
    v60 = swift_task_alloc();
    v16[225] = v60;
    *v60 = v16;
    v61 = sub_6A2E0;
    goto LABEL_40;
  }

  v45 = *(v16[146] + 112);
  v16[212] = v45;
  v46 = v45;
  v47 = [v46 timers];
  v16[213] = v47;
  if (v47)
  {
    v48 = v47;
    v49 = swift_task_alloc();
    v16[214] = v49;
    *(v49 + 16) = v48;
    v50 = swift_task_alloc();
    v16[215] = v50;
    v51 = sub_5AE8(&qword_160868, qword_12B5A0);
    *v50 = v16;
    v50[1] = sub_68AD4;
    v52 = v51;
    v53 = sub_7CDC0;
    v54 = v16 + 142;
    v55 = 0x800000000012D4F0;
    v56 = 0xD000000000000010;
LABEL_27:

    return withCheckedContinuation<A>(isolation:function:_:)(v54, 0, 0, v56, v55, v53, v49, v52);
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v70 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (v70)
    {
      goto LABEL_45;
    }

LABEL_75:

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v16[166], qword_160820);
    v103 = sub_125AAC();
    v104 = sub_125DEC();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v105, 2u);
    }

    v106 = swift_task_alloc();
    v16[224] = v106;
    *v106 = v16;
    v106[1] = sub_69F80;
    v107 = v16[145];

    return sub_785AC(v107);
  }

LABEL_74:
  v70 = sub_1260FC();
  if (!v70)
  {
    goto LABEL_75;
  }

LABEL_45:
  v71 = 0;
  v109 = (v16[193] + 8);
  v108 = (v16[189] + 8);
  while (1)
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
      v72 = sub_125FFC();
    }

    else
    {
      if (v71 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_73;
      }

      v72 = _swiftEmptyArrayStorage[v71 + 4];
    }

    v16[216] = v72;
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v74 = v16[208];
    v75 = v16[207];
    v76 = v16[195];
    v77 = v16[192];
    v112 = v72;
    v78 = [v72 timerID];
    sub_122F4C();

    v79 = sub_122F3C();
    v81 = v80;
    (*v109)(v76, v77);
    if (v79 == v75 && v74 == v81)
    {
      break;
    }

    v16 = v113;
    v82 = sub_1261BC();

    if (v82)
    {
      goto LABEL_63;
    }

    v83 = v113[208];
    v84 = v113[207];
    v85 = v113[191];
    v86 = v113[188];
    v87 = [v112 timerURL];
    sub_122EBC();

    v88 = sub_122E9C();
    v90 = v89;
    (*v108)(v85, v86);
    if (v88 == v84 && v83 == v90)
    {
      break;
    }

    v16 = v113;
    v91 = sub_1261BC();

    if (v91)
    {
      goto LABEL_63;
    }

    ++v71;
    if (v73 == v70)
    {
      goto LABEL_75;
    }
  }

  v16 = v113;

LABEL_63:

  if ([v112 state] != &dword_0 + 2)
  {
    v101 = v16[146];
    v49 = swift_task_alloc();
    v16[219] = v49;
    *(v49 + 16) = v112;
    *(v49 + 24) = v101;
    v102 = swift_task_alloc();
    v16[220] = v102;
    *v102 = v16;
    v102[1] = sub_6939C;
    v52 = &type metadata for Bool;
    v53 = sub_7CDB8;
    v54 = (v16 + 2571);
    v56 = 0xD000000000000017;
    v55 = 0x800000000012D4D0;
    goto LABEL_27;
  }

  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  sub_5B30(v16[166], qword_160820);
  v94 = sub_125AAC();
  v95 = sub_125DFC();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_0, v94, v95, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v96, 2u);
  }

  sub_1257EC();
  v97 = v112;
  v98 = sub_1257BC();
  v16[217] = v98;
  v99 = swift_task_alloc();
  v16[218] = v99;
  *v99 = v16;
  v99[1] = sub_6925C;
  v100 = v16[145];

  return sub_795BC(v100, v98);
}

uint64_t sub_68AD4()
{

  return _swift_task_switch(sub_68C18, 0, 0);
}

uint64_t sub_68C18()
{
  v1 = *(v0 + 1704);

  v2 = *(v0 + 1136);
  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_32:

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v37 = sub_125AAC();
    v38 = sub_125DEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v39, 2u);
    }

    v40 = swift_task_alloc();
    *(v0 + 1792) = v40;
    *v40 = v0;
    v40[1] = sub_69F80;
    v41 = *(v0 + 1160);

    return sub_785AC(v41);
  }

LABEL_31:
  v3 = sub_1260FC();
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = 0;
  v46 = v2 & 0xFFFFFFFFFFFFFF8;
  v47 = v2 & 0xC000000000000001;
  v43 = (*(v0 + 1512) + 8);
  v44 = (*(v0 + 1544) + 8);
  v45 = v2;
  v42 = v3;
  while (1)
  {
    if (v47)
    {
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(v46 + 16))
      {
        goto LABEL_30;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 1728) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v0 + 1664);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1560);
    v11 = *(v0 + 1536);
    v12 = [v5 timerID];
    sub_122F4C();

    v13 = sub_122F3C();
    v15 = v14;
    (*v44)(v10, v11);
    if (v13 == v9 && v8 == v15)
    {
      break;
    }

    v16 = sub_1261BC();

    if (v16)
    {
      goto LABEL_18;
    }

    v17 = *(v0 + 1664);
    v18 = *(v0 + 1656);
    v19 = *(v0 + 1528);
    v20 = *(v0 + 1504);
    v21 = [v6 timerURL];
    sub_122EBC();

    v22 = sub_122E9C();
    v24 = v23;
    (*v43)(v19, v20);
    if (v22 == v18 && v17 == v24)
    {
      break;
    }

    v25 = sub_1261BC();

    if (v25)
    {
      goto LABEL_18;
    }

    ++v4;
    v2 = v45;
    if (v7 == v42)
    {
      goto LABEL_32;
    }
  }

LABEL_18:

  if ([v6 state] == &dword_0 + 2)
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v28, 2u);
    }

    sub_1257EC();
    v29 = v6;
    v30 = sub_1257BC();
    *(v0 + 1736) = v30;
    v31 = swift_task_alloc();
    *(v0 + 1744) = v31;
    *v31 = v0;
    v31[1] = sub_6925C;
    v32 = *(v0 + 1160);

    return sub_795BC(v32, v30);
  }

  else
  {
    v34 = *(v0 + 1168);
    v35 = swift_task_alloc();
    *(v0 + 1752) = v35;
    *(v35 + 16) = v6;
    *(v35 + 24) = v34;
    v36 = swift_task_alloc();
    *(v0 + 1760) = v36;
    *v36 = v0;
    v36[1] = sub_6939C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2571, 0, 0, 0xD000000000000017, 0x800000000012D4D0, sub_7CDB8, v35, &type metadata for Bool);
  }
}

uint64_t sub_6925C()
{
  v1 = *(*v0 + 1736);

  return _swift_task_switch(sub_7D578, 0, 0);
}

uint64_t sub_6939C()
{

  return _swift_task_switch(sub_694E0, 0, 0);
}

uint64_t sub_694E0()
{
  if (*(v0 + 2571) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1768) = v1;
    *v1 = v0;
    v1[1] = sub_69740;
    v2 = *(v0 + 1728);
    v3 = *(v0 + 1672);

    return sub_7A674(v2, v3);
  }

  else
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v5 = sub_125AAC();
    v6 = sub_125DEC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "UndoTimerChangeStateFlow: Failed to pause mtTimer", v7, 2u);
    }

    v8 = *(v0 + 1496);
    v9 = *(v0 + 1488);
    v10 = *(v0 + 1480);

    (*(v9 + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v10);
    v11 = swift_task_alloc();
    *(v0 + 1784) = v11;
    *v11 = v0;
    v11[1] = sub_69BB8;
    v12 = *(v0 + 1496);
    v13 = *(v0 + 1160);

    return sub_77DEC(v13, v12);
  }
}

uint64_t sub_69740(uint64_t a1)
{
  *(*v1 + 1776) = a1;

  return _swift_task_switch(sub_6986C, 0, 0);
}

uint64_t sub_6986C()
{
  if (*(v0 + 1776))
  {

    v1 = *(v0 + 1776);
    *(v0 + 1896) = v1;
    v2 = *(v0 + 1472);
    v3 = v1;
    *(v0 + 1904) = sub_5AE8(&qword_160810, &unk_127420);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_126EB0;
    *(v4 + 32) = v3;
    v5 = v3;
    sub_FF26C(v4, v2);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1912) = sub_113D6C(0, 0);
    sub_12361C();
    sub_12573C();
    sub_12572C();
    v6 = *(v0 + 880);
    v7 = *(v0 + 888);
    sub_23B08((v0 + 856), v6);
    v8 = swift_task_alloc();
    *(v0 + 1920) = v8;
    *v8 = v0;
    v8[1] = sub_6B948;
    v9 = *(v0 + 1664);
    v10 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v10, v9, v6, v7);
  }

  else
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v11 = sub_125AAC();
    v12 = sub_125DEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "UndoTimerChangeStateFlow: Failed to pause mtTimer", v13, 2u);
    }

    v14 = *(v0 + 1496);
    v15 = *(v0 + 1488);
    v16 = *(v0 + 1480);

    (*(v15 + 104))(v14, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v16);
    v17 = swift_task_alloc();
    *(v0 + 1784) = v17;
    *v17 = v0;
    v17[1] = sub_69BB8;
    v18 = *(v0 + 1496);
    v19 = *(v0 + 1160);

    return sub_77DEC(v19, v18);
  }
}

uint64_t sub_69BB8()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_69D3C, 0, 0);
}

uint64_t sub_69D3C()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_69F80()
{

  return _swift_task_switch(sub_6A0A8, 0, 0);
}

uint64_t sub_6A0A8()
{
  sub_7C4BC(*(v0 + 1168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6A2E0(uint64_t a1)
{
  *(*v1 + 1808) = a1;

  return _swift_task_switch(sub_6A40C, 0, 0);
}

uint64_t sub_6A40C()
{
  v1 = v0[226];
  if (v1)
  {
    sub_5BB0(v0 + 92);
    [v1 state];
    v2 = sub_1258BC();
    if (v2 == sub_1258BC())
    {

      if (qword_15EE60 != -1)
      {
        swift_once();
      }

      sub_5B30(v0[166], qword_160820);
      v3 = sub_125AAC();
      v4 = sub_125DFC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Attempting to pause a paused timer: returning .failureTimerAlreadyPaused", v5, 2u);
      }

      v6 = swift_task_alloc();
      v0[227] = v6;
      *v6 = v0;
      v6[1] = sub_6A6B4;
      v7 = v0[145];

      return sub_795BC(v7, v1);
    }
  }

  else
  {
    sub_5BB0(v0 + 92);
  }

  v9 = swift_task_alloc();
  v0[228] = v9;
  *v9 = v0;
  v9[1] = sub_6AA20;
  v10 = v0[146];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2572, 0, 0, 0xD000000000000011, 0x800000000012D450, sub_7CCC4, v10, &type metadata for Bool);
}

uint64_t sub_6A6B4()
{

  return _swift_task_switch(sub_6A7DC, 0, 0);
}

uint64_t sub_6A7DC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6AA20()
{

  return _swift_task_switch(sub_6AB48, 0, 0);
}

uint64_t sub_6AB48()
{
  if (*(v0 + 2572) == 1)
  {
    v1 = *(v0 + 1672);
    v2 = *(v0 + 1168);
    v3 = swift_task_alloc();
    *(v0 + 1832) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 1840) = v4;
    *v4 = v0;
    v4[1] = sub_6AD48;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2568, 0, 0, 0xD00000000000001DLL, 0x800000000012D4B0, sub_7CD4C, v3, &type metadata for Bool);
  }

  else
  {
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v5 = *(v0 + 840);
    v6 = *(v0 + 848);
    sub_23B08((v0 + 816), v5);
    v7 = swift_task_alloc();
    *(v0 + 1880) = v7;
    *v7 = v0;
    v7[1] = sub_6B578;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v5, v6);
  }
}

uint64_t sub_6AD48()
{

  return _swift_task_switch(sub_6AE8C, 0, 0);
}

uint64_t sub_6AE8C()
{
  if (*(v0 + 2568) == 1)
  {
    sub_2F488(*(v0 + 1168) + 72, v0 + 56);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_23B08((v0 + 56), v1);
    v3 = swift_task_alloc();
    *(v0 + 1848) = v3;
    *v3 = v0;
    v4 = sub_6AFFC;
  }

  else
  {
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v1 = *(v0 + 840);
    v2 = *(v0 + 848);
    sub_23B08((v0 + 816), v1);
    v3 = swift_task_alloc();
    *(v0 + 1880) = v3;
    *v3 = v0;
    v4 = sub_6B578;
  }

  v3[1] = v4;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v1, v2);
}

uint64_t sub_6AFFC(uint64_t a1)
{
  *(*v1 + 1856) = a1;

  return _swift_task_switch(sub_6B128, 0, 0);
}

uint64_t sub_6B128()
{
  v1 = *(v0 + 1856);
  if (v1)
  {
    v2 = *(v0 + 1168);
    sub_5BB0((v0 + 56));
    v3 = swift_task_alloc();
    *(v0 + 1864) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    *(v0 + 1872) = v4;
    *v4 = v0;
    v4[1] = sub_6B328;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2570, 0, 0, 0x6D69546573756170, 0xEE00293A5F287265, sub_7CD58, v3, &type metadata for Bool);
  }

  else
  {
    sub_5BB0((v0 + 56));
    *(v0 + 2573) = 1;
    sub_2F488(*(v0 + 1168) + 72, v0 + 816);
    v5 = *(v0 + 840);
    v6 = *(v0 + 848);
    sub_23B08((v0 + 816), v5);
    v7 = swift_task_alloc();
    *(v0 + 1880) = v7;
    *v7 = v0;
    v7[1] = sub_6B578;

    return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v5, v6);
  }
}

uint64_t sub_6B328()
{

  return _swift_task_switch(sub_6B46C, 0, 0);
}

uint64_t sub_6B46C()
{
  v1 = *(v0 + 2570);

  *(v0 + 2573) = (v1 & 1) == 0;
  sub_2F488(*(v0 + 1168) + 72, v0 + 816);
  v2 = *(v0 + 840);
  v3 = *(v0 + 848);
  sub_23B08((v0 + 816), v2);
  v4 = swift_task_alloc();
  *(v0 + 1880) = v4;
  *v4 = v0;
  v4[1] = sub_6B578;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v2, v3);
}

uint64_t sub_6B578(uint64_t a1)
{
  *(*v1 + 1888) = a1;

  return _swift_task_switch(sub_6B6A4, 0, 0);
}

uint64_t sub_6B6A4()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 2573);
  sub_5BB0((v0 + 816));
  if ((v2 & 1) != 0 || !v1)
  {
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1488);
    v15 = *(v0 + 1480);

    (*(v14 + 104))(v13, enum case for SiriTimeEventSender.ReasonDescription.failedToPauseTimer(_:), v15);
    v16 = swift_task_alloc();
    *(v0 + 2128) = v16;
    *v16 = v0;
    v16[1] = sub_6E004;
    v17 = *(v0 + 1496);
    v18 = *(v0 + 1160);

    return sub_77DEC(v18, v17);
  }

  else
  {
    v3 = *(v0 + 1888);
    *(v0 + 1896) = v3;
    v4 = *(v0 + 1472);
    v5 = v3;
    *(v0 + 1904) = sub_5AE8(&qword_160810, &unk_127420);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_126EB0;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_FF26C(v6, v4);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1912) = sub_113D6C(0, 0);
    sub_12361C();
    sub_12573C();
    sub_12572C();
    v8 = *(v0 + 880);
    v9 = *(v0 + 888);
    sub_23B08((v0 + 856), v8);
    v10 = swift_task_alloc();
    *(v0 + 1920) = v10;
    *v10 = v0;
    v10[1] = sub_6B948;
    v11 = *(v0 + 1664);
    v12 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v12, v11, v8, v9);
  }
}

uint64_t sub_6B948(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1928) = a1;
  *(v3 + 1936) = a2;

  return _swift_task_switch(sub_6BA98, 0, 0);
}

uint64_t sub_6BA98()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  sub_5BB0((v0 + 856));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 896), *(v0 + 920));
  v5 = sub_1235DC();
  *(v0 + 2574) = v5 & 1;
  v6 = v5 & (v1 != 0);
  sub_5BB0((v0 + 896));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1328);
  v10 = sub_5B30(v9, qword_160820);
  *(v0 + 1944) = v10;
  (*(v8 + 16))(v7, v10, v9);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 976), *(v0 + 1000));
  v11 = sub_1235DC();
  sub_5BB0((v0 + 976));
  if (v6 & 1 | ((v11 & 1) == 0))
  {
    v12 = *(v0 + 1680);
    v13 = *(v0 + 1584);
    v14 = *(v0 + 1568);
    sub_1250AC();
    v15 = sub_12504C();
    v12(v13, v14);
    v16 = *(v0 + 1912);
    if (v15)
    {
      v17 = swift_allocObject();
      *(v0 + 1952) = v17;
      *(v17 + 16) = xmmword_126EB0;
      *(v17 + 32) = v16;

      v18 = swift_task_alloc();
      *(v0 + 1960) = v18;
      *v18 = v0;
      v18[1] = sub_6C5FC;

      return sub_F3918(v17);
    }

    else
    {
      v43 = swift_allocObject();
      *(v0 + 1992) = v43;
      *(v43 + 16) = xmmword_126EB0;
      *(v43 + 32) = v16;

      v44 = swift_task_alloc();
      *(v0 + 2000) = v44;
      *v44 = v0;
      v44[1] = sub_6CC78;

      return sub_11BA94(v43);
    }
  }

  v20 = *(v0 + 1896);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_126EB0;
  *(v21 + 32) = v20;
  v22 = v20;
  v23 = sub_648C8(v21, 13);
  *(v0 + 2040) = v23;

  if (v23)
  {
    v24 = objc_opt_self();
    *(v0 + 1144) = 0;
    v25 = [v24 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:v0 + 1144];
    v26 = *(v0 + 1144);
    if (v25)
    {
      v27 = v25;
      v28 = *(v0 + 1912);
      v29 = *(v0 + 1240);
      v30 = *(v0 + 1232);
      v72 = *(v0 + 1224);
      v31 = v26;
      v32 = sub_122EFC();
      v34 = v33;

      *(v0 + 2048) = v32;
      *(v0 + 2056) = v34;
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_126EB0;
      *(v35 + 32) = v28;
      v36 = *(v30 + 24);
      v37 = sub_124E4C();
      v38 = *(*(v37 - 8) + 56);

      v38(&v29[v36], 1, 1, v37);
      *v29 = 0;
      *(v29 + 1) = v35;
      sub_122EEC(0);
      sub_124E1C();
      v38(v72, 0, 1, v37);
      sub_7CC5C(v72, &v29[v36], &unk_15F170, &unk_126E00);
      sub_124DEC();
      if (qword_15EEA8 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 1240);

      *v39 = sub_124DDC();
      v40 = sub_11B454();
      *(v0 + 2064) = v40;
      v41 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v42 = swift_task_alloc();
      *(v0 + 2072) = v42;
      *v42 = v0;
      v42[1] = sub_6D1FC;

      return ((&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v41))(0xD000000000000019, 0x800000000012D490, v40);
    }

    v55 = v26;

    sub_122E8C();

    swift_willThrow();
  }

  else
  {

    v45 = sub_125AAC();
    v46 = sub_125DFC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "Could not get timer action from timer.", v47, 2u);
    }

    v48 = *(v0 + 1640);
    v49 = *(v0 + 1592);
    v50 = *(v0 + 1488);
    v51 = *(v0 + 1480);
    v52 = *(v0 + 1168);

    (*(v50 + 104))(v49, enum case for SiriTimeEventSender.ReasonDescription.failedToCastTimer(_:), v51);
    v48(v49, 0, 1, v51);
    v53 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v49, v52 + v53, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v54 = 1;
    swift_willThrow();
  }

  v56 = *(v0 + 1640);
  v57 = *(v0 + 1592);
  v58 = *(v0 + 1480);
  v59 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v57, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v58);
  v56(v57, 0, 1, v58);
  v60 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v57, v59 + v60, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v61 = sub_125AAC();
  v62 = sub_125DEC();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 1896);
  v65 = *(v0 + 1440);
  v66 = *(v0 + 1416);
  v73 = *(v0 + 1400);
  v74 = *(v0 + 1408);
  v67 = *(v0 + 1384);
  v68 = *(v0 + 1376);
  if (v63)
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v61, v62, "UndoTimerChangeStateFlow: Error publishing Success output.", v69, 2u);
  }

  (*(v67 + 8))(v73, v68);
  (*(v66 + 8))(v65, v74);
  (*(*(v0 + 1456) + 8))(*(v0 + 1472), *(v0 + 1448));
  v70 = *(v0 + 1168);
  sub_12383C();
  sub_7C4BC(v70);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_6C5FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1968) = a1;
  *(v3 + 1976) = v1;

  if (v1)
  {

    v4 = sub_746B4;
  }

  else
  {
    v4 = sub_6C780;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6C780()
{
  v1 = (v0 + 616);
  if (*(v0 + 2574) != 1 || *(v0 + 1936) == 0)
  {
    v3 = *(v0 + 1320);
    v4 = *(v0 + 1304);
    v5 = *(v0 + 1296);
    sub_5AE8(&qword_15F940, &unk_127410);
    v6 = *(sub_124F4C() - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_126CB0;
    sub_1135FC(v8 + v7);
    sub_12521C();
    (*(v4 + 104))(v3, enum case for SiriTimePluginModel.timerMulti(_:), v5);
    *(v0 + 640) = v5;
    *(v0 + 648) = sub_7D14C(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v9 = sub_23B4C((v0 + 616));
    (*(v4 + 32))(v9, v3, v5);
  }

  else
  {
    *(v0 + 648) = 0;
    *v1 = 0u;
    *(v0 + 632) = 0u;
  }

  v10 = swift_task_alloc();
  *(v0 + 1984) = v10;
  *v10 = v0;
  v10[1] = sub_6C9FC;
  v11 = *(v0 + 1936);
  v12 = *(v0 + 1928);
  v13 = *(v0 + 1472);
  v14 = *(v0 + 1440);
  v15 = *(v0 + 1400);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 336, v14, v13, v1, v15, v12, v11, 0xD000000000000018);
}

uint64_t sub_6C9FC()
{
  v1 = *v0;
  v2 = *(*v0 + 1968);

  sub_5CA8(v1 + 616, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_6CB78, 0, 0);
}

uint64_t sub_6CB78()
{
  sub_2F4EC((v0 + 336), v0 + 936);
  sub_123ACC();
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  sub_23B08((v0 + 496), v1);
  v3 = swift_task_alloc();
  *(v0 + 2112) = v3;
  *v3 = v0;
  v3[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v1, v2);
}

uint64_t sub_6CC78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2008) = a1;
  *(v3 + 2016) = v1;

  if (v1)
  {

    v4 = sub_74A94;
  }

  else
  {
    v4 = sub_6CDFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6CDFC(uint64_t a1)
{
  v2 = v1[242];
  v3 = v1[241];
  v4 = v1[184];
  sub_12361C();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  sub_123B0C();

  v6 = swift_task_alloc();
  v1[253] = v6;
  *v6 = v1;
  v6[1] = sub_6CF48;
  v7 = v1[175];
  v8 = v1[161];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v1 + 2, v8, v7);
}

uint64_t sub_6CF48()
{
  v2 = *v1;
  *(*v1 + 2032) = v0;

  v3 = v2[251];
  (*(v2[157] + 8))(v2[161], v2[156]);

  if (v0)
  {
    v4 = sub_74E74;
  }

  else
  {
    v4 = sub_6D0FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D0FC()
{
  sub_2F4EC((v0 + 16), v0 + 936);
  sub_123ACC();
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  sub_23B08((v0 + 496), v1);
  v3 = swift_task_alloc();
  *(v0 + 2112) = v3;
  *v3 = v0;
  v3[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v1, v2);
}

uint64_t sub_6D1FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2080) = a1;
  *(v3 + 2088) = v1;

  if (v1)
  {

    v4 = sub_6D6C4;
  }

  else
  {
    v4 = sub_6D380;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D380()
{
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[184];
  v4 = v0[180];
  v5 = v0[179];
  v6 = v0[177];
  v7 = v0[176];
  sub_7CCEC(v0[155], type metadata accessor for PauseTimerHandledOnWatchParameters);
  (*(v6 + 16))(v5, v4, v7);
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v1;
  sub_123B0C();

  v9 = swift_task_alloc();
  v0[262] = v9;
  *v9 = v0;
  v9[1] = sub_6D510;
  v10 = v0[175];
  v11 = v0[160];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 82, v11, v10);
}

uint64_t sub_6D510()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  v3 = v2[260];
  (*(v2[157] + 8))(v2[160], v2[156]);

  if (v0)
  {
    v4 = sub_75254;
  }

  else
  {
    v4 = sub_6DADC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6D6C4()
{
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  sub_7CCEC(v0[155], type metadata accessor for PauseTimerHandledOnWatchParameters);

  sub_E498(v2, v1);
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[237];
  v13 = v0[180];
  v14 = v0[177];
  v21 = v0[175];
  v22 = v0[176];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);
  }

  (*(v15 + 8))(v21, v16);
  (*(v14 + 8))(v13, v22);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v18 = v0[146];
  sub_12383C();
  sub_7C4BC(v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_6DADC()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);

  sub_E498(v2, v1);
  sub_2F4EC((v0 + 656), v0 + 936);
  sub_123ACC();
  v3 = *(v0 + 520);
  v4 = *(v0 + 528);
  sub_23B08((v0 + 496), v3);
  v5 = swift_task_alloc();
  *(v0 + 2112) = v5;
  *v5 = v0;
  v5[1] = sub_6DBF8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 936, v3, v4);
}

uint64_t sub_6DBF8()
{
  *(*v1 + 2120) = v0;

  if (v0)
  {
    v2 = sub_75650;
  }

  else
  {
    v2 = sub_6DD38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6DD38()
{
  v1 = v0[237];
  v2 = v0[180];
  v3 = v0[177];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[173];
  v7 = v0[172];

  sub_5BB0(v0 + 117);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_5BB0(v0 + 62);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v8 = v0[146];
  sub_12383C();
  sub_7C4BC(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_6E004()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_6E188, 0, 0);
}

uint64_t sub_6E188()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6E3CC()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_6A0A8, 0, 0);
}

uint64_t sub_6E550(uint64_t a1)
{
  v2 = *(*v1 + 2160);
  *(*v1 + 2176) = a1;

  return _swift_task_switch(sub_6E698, 0, 0);
}

uint64_t sub_6E698()
{
  v1 = v0[272];
  if (!(v1 >> 62))
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    v3 = v0[272];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_29:

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v34 = sub_125AAC();
    v35 = sub_125DEC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "UndoTimerChangeStateFlow: mtTimerManager.timersSync returned no timer with matching timerID: no timer to change.", v36, 2u);
    }

    v37 = swift_task_alloc();
    v0[279] = v37;
    *v37 = v0;
    v37[1] = sub_6F5D8;
    v38 = v0[145];

    return sub_785AC(v38);
  }

LABEL_38:
  v2 = sub_1260FC();
  v3 = v0[272];
  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_3:
  v4 = 0;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;
  v44 = v1 & 0xC000000000000001;
  v41 = v3 + 32;
  v42 = (v0[193] + 8);
  v39 = v2;
  v40 = (v0[189] + 8);
  while (1)
  {
    if (v44)
    {
      v5 = sub_125FFC();
    }

    else
    {
      if (v4 >= *(v43 + 16))
      {
        goto LABEL_37;
      }

      v5 = *(v41 + 8 * v4);
    }

    v6 = v5;
    v0[273] = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v0[208];
    v9 = v0[207];
    v10 = v0[194];
    v11 = v0[192];
    v12 = [v5 timerID];
    sub_122F4C();

    v13 = sub_122F3C();
    v15 = v14;
    (*v42)(v10, v11);
    if (v13 == v9 && v8 == v15)
    {
      break;
    }

    v16 = sub_1261BC();

    if (v16)
    {
      goto LABEL_18;
    }

    v17 = v0[208];
    v18 = v0[207];
    v19 = v0[190];
    v20 = v0[188];
    v21 = [v6 timerURL];
    sub_122EBC();

    v22 = sub_122E9C();
    v1 = v23;
    (*v40)(v19, v20);
    if (v22 == v18 && v17 == v1)
    {
      break;
    }

    v24 = sub_1261BC();

    if (v24)
    {
      goto LABEL_18;
    }

    ++v4;
    if (v7 == v39)
    {
      goto LABEL_29;
    }
  }

LABEL_18:

  if ([v6 state] == &dword_0 + 3)
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v25 = sub_125AAC();
    v26 = sub_125DFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "UndoTimerChangeStateFlow: Attempting to resume a running timer: returning .failureTimerAlreadyRunning", v27, 2u);
    }

    sub_1257EC();
    v28 = v6;
    v29 = sub_1257BC();
    v0[274] = v29;
    v30 = swift_task_alloc();
    v0[275] = v30;
    *v30 = v0;
    v30[1] = sub_6EC7C;
    v31 = v0[145];

    return sub_78D7C(v31, v29);
  }

  else
  {
    v33 = swift_task_alloc();
    v0[276] = v33;
    *v33 = v0;
    v33[1] = sub_6F000;

    return sub_79F38(v6, 3);
  }
}

uint64_t sub_6EC7C()
{
  v1 = *(*v0 + 2192);

  return _swift_task_switch(sub_6EDBC, 0, 0);
}

uint64_t sub_6EDBC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6F000(uint64_t a1)
{
  *(*v1 + 2216) = a1;

  return _swift_task_switch(sub_6F12C, 0, 0);
}

uint64_t sub_6F12C()
{
  v1 = *(v0 + 2216);
  if (v1)
  {

    *(v0 + 2328) = *(v0 + 2216);
    *(v0 + 2320) = v1;
    v2 = *(v0 + 1464);
    v3 = v1;
    *(v0 + 2336) = sub_5AE8(&qword_160810, &unk_127420);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_126EB0;
    *(v4 + 32) = v3;
    v5 = v3;
    sub_FF26C(v4, v2);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_12573C();
    sub_12572C();
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    sub_23B08((v0 + 136), v6);
    v8 = swift_task_alloc();
    *(v0 + 2344) = v8;
    *v8 = v0;
    v8[1] = sub_70BAC;
    v9 = *(v0 + 1664);
    v10 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v10, v9, v6, v7);
  }

  else
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(*(v0 + 1328), qword_160820);
    v11 = sub_125AAC();
    v12 = sub_125DEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "UndoTimerChangeStateFlow: Failed to resume mtTimer", v13, 2u);
    }

    v14 = *(v0 + 1496);
    v15 = *(v0 + 1488);
    v16 = *(v0 + 1480);

    (*(v15 + 104))(v14, enum case for SiriTimeEventSender.ReasonDescription.failedToResumeTimer(_:), v16);
    v17 = swift_task_alloc();
    *(v0 + 2224) = v17;
    *v17 = v0;
    v17[1] = sub_6F454;
    v18 = *(v0 + 1496);
    v19 = *(v0 + 1160);

    return sub_77DEC(v19, v18);
  }
}

uint64_t sub_6F454()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_7D5EC, 0, 0);
}

uint64_t sub_6F5D8()
{

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_6F700(uint64_t a1)
{
  *(*v1 + 2248) = a1;

  return _swift_task_switch(sub_6F82C, 0, 0);
}

uint64_t sub_6F82C()
{
  v1 = v0[281];
  if (!v1)
  {

    sub_5BB0(v0 + 97);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "UndoTimerChangeStateFlow: siriTimerManager.currentTimerSync get nil result: no timers to operate on.", v10, 2u);
    }

    v6 = swift_task_alloc();
    v0[289] = v6;
    *v6 = v0;
    v7 = sub_70A84;
    goto LABEL_24;
  }

  sub_5BB0(v0 + 97);
  [v1 state];
  v2 = sub_1258BC();
  if (v2 == sub_1258BC())
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v3 = sub_125AAC();
    v4 = sub_125DFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "UndoTimerChangeStateFlow: Timer has an unknown state (meaning there's no timer set on phone): No timers to operate on.", v5, 2u);
    }

    v6 = swift_task_alloc();
    v0[288] = v6;
    *v6 = v0;
    v7 = sub_7095C;
LABEL_24:
    v6[1] = v7;
    v23 = v0[145];

    return sub_785AC(v23);
  }

  v11 = [v1 identifier];
  if (!v11)
  {
LABEL_19:

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v20 = sub_125AAC();
    v21 = sub_125DEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "UndoTimerChangeStateFlow: UndoTimerChangeState target timer id does not match current timer id.", v22, 2u);
    }

    v6 = swift_task_alloc();
    v0[287] = v6;
    *v6 = v0;
    v7 = sub_70834;
    goto LABEL_24;
  }

  v12 = v0[208];
  v13 = v0[207];
  v14 = v11;
  v15 = sub_125B9C();
  v17 = v16;

  if (v15 == v13 && v12 == v17)
  {
  }

  else
  {
    v19 = sub_1261BC();

    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  [v1 state];
  v25 = sub_1258BC();
  if (v25 == sub_1258BC())
  {

    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    sub_5B30(v0[166], qword_160820);
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "UndoTimerChangeStateFlow: Attempting to resume a running timer: returning .failureTimerAlreadyRunning", v28, 2u);
    }

    v29 = swift_task_alloc();
    v0[282] = v29;
    *v29 = v0;
    v29[1] = sub_6FED4;
    v30 = v0[145];

    return sub_78D7C(v30, v1);
  }

  else
  {
    v31 = v0[146];
    v32 = swift_task_alloc();
    v0[283] = v32;
    *(v32 + 16) = v31;
    *(v32 + 24) = v1;
    v33 = swift_task_alloc();
    v0[284] = v33;
    *v33 = v0;
    v33[1] = sub_70240;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2569, 0, 0, 0x6954656D75736572, 0xEF293A5F2872656DLL, sub_7CBFC, v32, &type metadata for Bool);
  }
}

uint64_t sub_6FED4()
{

  return _swift_task_switch(sub_6FFFC, 0, 0);
}

uint64_t sub_6FFFC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_70240()
{

  return _swift_task_switch(sub_70384, 0, 0);
}

uint64_t sub_70384()
{
  v1 = *(v0 + 1168);
  *(v0 + 2575) = *(v0 + 2569);
  sub_2F488(v1 + 72, v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_23B08((v0 + 96), v2);
  v4 = swift_task_alloc();
  *(v0 + 2280) = v4;
  *v4 = v0;
  v4[1] = sub_7047C;

  return dispatch thunk of SiriTimerManagerIOS.currentTimer()(v2, v3);
}

uint64_t sub_7047C(uint64_t a1)
{
  *(*v1 + 2288) = a1;

  return _swift_task_switch(sub_705A8, 0, 0);
}

uint64_t sub_705A8()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2575);

  sub_5BB0((v0 + 96));
  if (v2 != 1 || v1 == 0)
  {
    v4 = *(v0 + 1496);
    v5 = *(v0 + 1488);
    v6 = *(v0 + 1480);

    (*(v5 + 104))(v4, enum case for SiriTimeEventSender.ReasonDescription.failedToResumeTimer(_:), v6);
    v7 = swift_task_alloc();
    *(v0 + 2552) = v7;
    *v7 = v0;
    v7[1] = sub_74168;
    v8 = *(v0 + 1496);
    v9 = *(v0 + 1160);

    return sub_77DEC(v9, v8);
  }

  else
  {
    v11 = *(v0 + 2288);
    *(v0 + 2328) = v11;
    *(v0 + 2320) = v11;
    v12 = *(v0 + 1464);
    v13 = v11;
    *(v0 + 2336) = sub_5AE8(&qword_160810, &unk_127420);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_126EB0;
    *(v14 + 32) = v13;
    v15 = v13;
    sub_FF26C(v14, v12);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_12573C();
    sub_12572C();
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    sub_23B08((v0 + 136), v16);
    v18 = swift_task_alloc();
    *(v0 + 2344) = v18;
    *v18 = v0;
    v18[1] = sub_70BAC;
    v19 = *(v0 + 1664);
    v20 = *(v0 + 1656);

    return dispatch thunk of SessionManaging.sessionIDString(for:)(v20, v19, v16, v17);
  }
}

uint64_t sub_70834()
{

  return _swift_task_switch(sub_7D6D4, 0, 0);
}

uint64_t sub_7095C()
{

  return _swift_task_switch(sub_7D6D4, 0, 0);
}

uint64_t sub_70A84()
{

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_70BAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2352) = a1;
  *(v3 + 2360) = a2;

  return _swift_task_switch(sub_70CFC, 0, 0);
}

uint64_t sub_70CFC()
{
  v1 = *(v0 + 2360);
  v2 = *(v0 + 1368);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1352);
  sub_5BB0((v0 + 136));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 176), *(v0 + 200));
  v5 = sub_1235DC();
  *(v0 + 2576) = v5 & 1;
  v6 = v5 & (v1 != 0);
  sub_5BB0((v0 + 176));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1344);
  v8 = *(v0 + 1336);
  v9 = *(v0 + 1328);
  v10 = sub_5B30(v9, qword_160820);
  *(v0 + 2368) = v10;
  (*(v8 + 16))(v7, v10, v9);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  sub_23B08((v0 + 256), *(v0 + 280));
  v11 = sub_1235DC();
  sub_5BB0((v0 + 256));
  if (v6 & 1 | ((v11 & 1) == 0))
  {
    v12 = *(v0 + 2144);
    v13 = *(v0 + 1584);
    v14 = *(v0 + 1568);
    sub_1250AC();
    v15 = sub_12504C();
    v12(v13, v14);
    if (v15)
    {
      v16 = swift_allocObject();
      *(v0 + 2376) = v16;
      *(v16 + 16) = xmmword_126EB0;
      *(v16 + 32) = sub_113D6C(0, 0);
      v17 = swift_task_alloc();
      *(v0 + 2384) = v17;
      *v17 = v0;
      v17[1] = sub_7183C;

      return sub_2B258(v16);
    }

    else
    {
      v41 = swift_allocObject();
      *(v0 + 2416) = v41;
      *(v41 + 16) = xmmword_126EB0;
      *(v41 + 32) = sub_113D6C(0, 0);
      v42 = swift_task_alloc();
      *(v0 + 2424) = v42;
      *v42 = v0;
      v42[1] = sub_723C0;

      return sub_B5994(v41);
    }
  }

  v19 = *(v0 + 2320);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_126EB0;
  *(v20 + 32) = v19;
  v21 = v19;
  v22 = sub_648C8(v20, 13);
  *(v0 + 2464) = v22;

  if (v22)
  {
    v23 = objc_opt_self();
    *(v0 + 1152) = 0;
    v24 = [v23 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v0 + 1152];
    v25 = *(v0 + 1152);
    if (v24)
    {
      v26 = v24;
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v70 = *(v0 + 1208);
      v29 = v25;
      v30 = sub_122EFC();
      v32 = v31;

      *(v0 + 2472) = v30;
      *(v0 + 2480) = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_126EB0;
      *(v33 + 32) = sub_113D6C(0, 0);
      v34 = *(v70 + 24);
      v35 = sub_124E4C();
      v36 = *(*(v35 - 8) + 56);
      v36(&v28[v34], 1, 1, v35);
      *v28 = 0;
      *(v28 + 1) = v33;
      sub_122EEC(0);
      sub_124E1C();
      v36(v27, 0, 1, v35);
      sub_7CC5C(v27, &v28[v34], &unk_15F170, &unk_126E00);
      sub_124DEC();
      if (qword_15EEA8 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 1216);

      *v37 = sub_124DDC();
      v38 = sub_B5350();
      *(v0 + 2488) = v38;
      v39 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v40 = swift_task_alloc();
      *(v0 + 2496) = v40;
      *v40 = v0;
      v40[1] = sub_72DE0;

      return ((&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v39))(0xD00000000000001ALL, 0x800000000012D430, v38);
    }

    v53 = v25;

    sub_122E8C();

    swift_willThrow();
  }

  else
  {

    v43 = sub_125AAC();
    v44 = sub_125DFC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Could not get timer action from timer.", v45, 2u);
    }

    v46 = *(v0 + 1640);
    v47 = *(v0 + 1592);
    v48 = *(v0 + 1488);
    v49 = *(v0 + 1480);
    v50 = *(v0 + 1168);

    (*(v48 + 104))(v47, enum case for SiriTimeEventSender.ReasonDescription.failedToCastTimer(_:), v49);
    v46(v47, 0, 1, v49);
    v51 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v47, v50 + v51, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
  }

  v54 = *(v0 + 1640);
  v55 = *(v0 + 1592);
  v56 = *(v0 + 1480);
  v57 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v55, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v56);
  v54(v55, 0, 1, v56);
  v58 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v55, v57 + v58, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v59 = sub_125AAC();
  v60 = sub_125DEC();
  v61 = os_log_type_enabled(v59, v60);
  v62 = *(v0 + 2328);
  v63 = *(v0 + 2320);
  v64 = *(v0 + 1392);
  v65 = *(v0 + 1384);
  v66 = *(v0 + 1376);
  if (v61)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v59, v60, "UndoTimerChangeStateFlow: Error publishing Success output.", v67, 2u);

    v59 = v62;
  }

  else
  {
  }

  (*(v65 + 8))(v64, v66);
  (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
  v68 = *(v0 + 1168);
  sub_12383C();
  sub_7C4BC(v68);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_7183C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2392) = a1;
  *(v3 + 2400) = v1;

  if (v1)
  {

    v4 = sub_75A40;
  }

  else
  {
    v4 = sub_719C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_719C0(uint64_t a1)
{
  v2 = (v1 + 576);
  v3 = *(v1 + 2576);
  v4 = *(v1 + 2360);
  sub_12361C();
  if (v3 != 1 || v4 == 0)
  {
    v6 = *(v1 + 1312);
    v7 = *(v1 + 1304);
    v8 = *(v1 + 1296);
    sub_5AE8(&qword_15F940, &unk_127410);
    v9 = *(sub_124F4C() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_126CB0;
    sub_1135FC(v11 + v10);
    sub_12521C();
    (*(v7 + 104))(v6, enum case for SiriTimePluginModel.timerMulti(_:), v8);
    *(v1 + 600) = v8;
    *(v1 + 608) = sub_7D14C(&qword_15F930, &type metadata accessor for SiriTimePluginModel, &protocol conformance descriptor for SiriTimePluginModel);
    v12 = sub_23B4C((v1 + 576));
    (*(v7 + 32))(v12, v6, v8);
  }

  else
  {
    *(v1 + 608) = 0;
    *v2 = 0u;
    *(v1 + 592) = 0u;
  }

  v13 = swift_task_alloc();
  *(v1 + 2408) = v13;
  *v13 = v1;
  v13[1] = sub_71C44;
  v14 = *(v1 + 2360);
  v15 = *(v1 + 2352);
  v16 = *(v1 + 1464);
  v17 = *(v1 + 1424);
  v18 = *(v1 + 1392);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v1 + 536, v17, v16, v2, v18, v15, v14, 0xD000000000000019);
}

uint64_t sub_71C44()
{
  v1 = *v0;
  v2 = *(*v0 + 2392);
  v3 = *(*v0 + 1424);
  v4 = *(*v0 + 1416);
  v5 = *(*v0 + 1408);

  (*(v4 + 8))(v3, v5);
  sub_5CA8(v1 + 576, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_71E24, 0, 0);
}

uint64_t sub_71E24()
{
  v1 = *(v0 + 552);
  *(v0 + 216) = *(v0 + 536);
  *(v0 + 232) = v1;
  *(v0 + 248) = *(v0 + 568);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);
    sub_23B08((v0 + 456), v2);
    v4 = swift_task_alloc();
    *(v0 + 2536) = v4;
    *v4 = v0;
    v4[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v2, v3);
  }

  else
  {
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v5 = sub_125AAC();
    v6 = sub_125DEC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v7, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1592);
    v11 = *(v0 + 1480);
    v12 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
    v9(v10, 0, 1, v11);
    v13 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v10, v12 + v13, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v14 = sub_125AAC();
    v15 = sub_125DEC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2328);
    v18 = *(v0 + 2320);
    v19 = *(v0 + 1392);
    v20 = *(v0 + 1384);
    v21 = *(v0 + 1376);
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v14, v15, "UndoTimerChangeStateFlow: Error publishing Success output.", v22, 2u);

      v14 = v17;
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v23 = *(v0 + 1168);
    sub_12383C();
    sub_7C4BC(v23);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_723C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2432) = a1;
  *(v3 + 2440) = v1;

  if (v1)
  {

    v4 = sub_75DF8;
  }

  else
  {
    v4 = sub_72544;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_72544(uint64_t a1)
{
  v2 = v1[295];
  v3 = v1[294];
  v4 = v1[183];
  sub_12361C();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  sub_123B0C();

  v6 = swift_task_alloc();
  v1[306] = v6;
  *v6 = v1;
  v6[1] = sub_72690;
  v7 = v1[174];
  v8 = v1[159];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v1 + 37, v8, v7);
}

uint64_t sub_72690()
{
  v2 = *v1;
  *(*v1 + 2456) = v0;

  v3 = v2[304];
  (*(v2[157] + 8))(v2[159], v2[156]);

  if (v0)
  {
    v4 = sub_761B0;
  }

  else
  {
    v4 = sub_72844;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_72844()
{
  v1 = *(v0 + 312);
  *(v0 + 216) = *(v0 + 296);
  *(v0 + 232) = v1;
  *(v0 + 248) = *(v0 + 328);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);
    sub_23B08((v0 + 456), v2);
    v4 = swift_task_alloc();
    *(v0 + 2536) = v4;
    *v4 = v0;
    v4[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v2, v3);
  }

  else
  {
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v5 = sub_125AAC();
    v6 = sub_125DEC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v7, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1592);
    v11 = *(v0 + 1480);
    v12 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
    v9(v10, 0, 1, v11);
    v13 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v10, v12 + v13, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v14 = sub_125AAC();
    v15 = sub_125DEC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2328);
    v18 = *(v0 + 2320);
    v19 = *(v0 + 1392);
    v20 = *(v0 + 1384);
    v21 = *(v0 + 1376);
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v14, v15, "UndoTimerChangeStateFlow: Error publishing Success output.", v22, 2u);

      v14 = v17;
    }

    else
    {
    }

    (*(v20 + 8))(v19, v21);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v23 = *(v0 + 1168);
    sub_12383C();
    sub_7C4BC(v23);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_72DE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2504) = a1;
  *(v3 + 2512) = v1;

  if (v1)
  {

    v4 = sub_73260;
  }

  else
  {
    v4 = sub_72F64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_72F64()
{
  v1 = v0[295];
  v2 = v0[294];
  v3 = v0[183];
  sub_7CCEC(v0[152], type metadata accessor for ResumeTimerHandledOnWatchParameters);
  sub_12361C();
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_123B0C();

  v5 = swift_task_alloc();
  v0[315] = v5;
  *v5 = v0;
  v5[1] = sub_730CC;
  v6 = v0[174];
  v7 = v0[158];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v0 + 87, v7, v6);
}

uint64_t sub_730CC()
{
  v2 = *v1;
  *(*v1 + 2528) = v0;

  (*(v2[157] + 8))(v2[158], v2[156]);
  if (v0)
  {
    v3 = sub_76568;
  }

  else
  {
    v3 = sub_73650;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_73260()
{
  v1 = v0[310];
  v2 = v0[309];
  v3 = v0[308];
  sub_7CCEC(v0[152], type metadata accessor for ResumeTimerHandledOnWatchParameters);
  sub_E498(v2, v1);

  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[185];
  v7 = v0[146];
  (*(v0[186] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[291];
  v13 = v0[290];
  v14 = v0[174];
  v15 = v0[173];
  v16 = v0[172];
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v18 = v0[146];
  sub_12383C();
  sub_7C4BC(v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_73650()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);

  sub_E498(v3, v2);
  v4 = *(v0 + 712);
  *(v0 + 216) = *(v0 + 696);
  *(v0 + 232) = v4;
  *(v0 + 248) = *(v0 + 728);
  sub_E344(v0 + 216, v0 + 416, &qword_160860, &unk_128368);
  if (*(v0 + 440))
  {
    sub_2F4EC((v0 + 416), v0 + 376);
    sub_123ACC();
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    sub_23B08((v0 + 456), v5);
    v7 = swift_task_alloc();
    *(v0 + 2536) = v7;
    *v7 = v0;
    v7[1] = sub_73C10;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 376, v5, v6);
  }

  else
  {
    sub_5CA8(v0 + 416, &qword_160860, &unk_128368);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "[UndoTimerChangeStateFlow] Generated Success output via RF, but it was nil!", v10, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
    sub_5CA8(v0 + 216, &qword_160860, &unk_128368);
    v12 = *(v0 + 1640);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1168);
    (*(*(v0 + 1488) + 104))(v13, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v14);
    v12(v13, 0, 1, v14);
    v16 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
    swift_beginAccess();
    sub_7CC5C(v13, v15 + v16, &qword_15F6E8, &unk_1271C0);
    swift_endAccess();
    v17 = sub_125AAC();
    v18 = sub_125DEC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 2328);
    v21 = *(v0 + 2320);
    v22 = *(v0 + 1392);
    v23 = *(v0 + 1384);
    v24 = *(v0 + 1376);
    if (v19)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v17, v18, "UndoTimerChangeStateFlow: Error publishing Success output.", v25, 2u);

      v17 = v20;
    }

    else
    {
    }

    (*(v23 + 8))(v22, v24);
    (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
    v26 = *(v0 + 1168);
    sub_12383C();
    sub_7C4BC(v26);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_73C10()
{
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v2 = sub_76944;
  }

  else
  {
    v2 = sub_73D50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_73D50()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  sub_5BB0(v0 + 57);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  swift_beginAccess();
  sub_E344(v4 + v5, v3, &qword_160838, &qword_128330);
  v6 = (*(v1 + 48))(v3, 1, v2);
  v7 = v0[291];
  v8 = v0[290];
  if (v6 == 1)
  {
    v9 = v0[174];
    v10 = v0[173];
    v11 = v0[172];
    v12 = v0[147];

    sub_5BB0(v0 + 47);
    sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
    (*(v10 + 8))(v9, v11);
    sub_5CA8(v12, &qword_160838, &qword_128330);
    (*(v0[182] + 8))(v0[183], v0[181]);
    v13 = v0[146];
    sub_12383C();
    v14 = v13;
  }

  else
  {
    v15 = v0[182];
    v25 = v0[181];
    v26 = v0[183];
    v16 = v0[173];
    v17 = v0[172];
    v18 = v0[150];
    v19 = v0[149];
    v20 = v0[148];
    v23 = v0[174];
    v24 = v0[146];
    (*(v19 + 32))(v18, v0[147], v20);
    sub_12384C();

    (*(v19 + 8))(v18, v20);
    sub_5BB0(v0 + 47);
    sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
    (*(v16 + 8))(v23, v17);
    (*(v15 + 8))(v26, v25);
    v14 = v24;
  }

  sub_7C4BC(v14);

  v21 = v0[1];

  return v21();
}

uint64_t sub_74168()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_742EC, 0, 0);
}

uint64_t sub_742EC()
{
  v1 = *(v0 + 1168);

  sub_7C4BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_74530()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 1480);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_7D660, 0, 0);
}

uint64_t sub_746B4()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[237];
  v10 = v0[180];
  v11 = v0[177];
  v18 = v0[175];
  v19 = v0[176];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);
  }

  (*(v12 + 8))(v18, v13);
  (*(v11 + 8))(v10, v19);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_74A94()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[237];
  v10 = v0[180];
  v11 = v0[177];
  v18 = v0[175];
  v19 = v0[176];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);
  }

  (*(v12 + 8))(v18, v13);
  (*(v11 + 8))(v10, v19);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_74E74()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[237];
  v10 = v0[180];
  v11 = v0[177];
  v18 = v0[175];
  v19 = v0[176];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);
  }

  (*(v12 + 8))(v18, v13);
  (*(v11 + 8))(v10, v19);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_75254()
{
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);

  sub_E498(v2, v1);
  v3 = *(v0 + 1640);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1480);
  v6 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v4, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v5);
  v3(v4, 0, 1, v5);
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v4, v6 + v7, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v8 = sub_125AAC();
  v9 = sub_125DEC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1896);
  v12 = *(v0 + 1440);
  v13 = *(v0 + 1416);
  v20 = *(v0 + 1400);
  v21 = *(v0 + 1408);
  v14 = *(v0 + 1384);
  v15 = *(v0 + 1376);
  if (v10)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v8, v9, "UndoTimerChangeStateFlow: Error publishing Success output.", v16, 2u);
  }

  (*(v14 + 8))(v20, v15);
  (*(v13 + 8))(v12, v21);
  (*(*(v0 + 1456) + 8))(*(v0 + 1472), *(v0 + 1448));
  v17 = *(v0 + 1168);
  sub_12383C();
  sub_7C4BC(v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_75650()
{
  sub_5BB0(v0 + 117);
  sub_5BB0(v0 + 62);
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[237];
  v10 = v0[180];
  v11 = v0[177];
  v18 = v0[175];
  v19 = v0[176];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);
  }

  (*(v12 + 8))(v18, v13);
  (*(v11 + 8))(v10, v19);
  (*(v0[182] + 8))(v0[184], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_75A40()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[174];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);

    v6 = v9;
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_75DF8()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[174];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);

    v6 = v9;
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_761B0()
{
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[174];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);

    v6 = v9;
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_76568()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2480);
  v3 = *(v0 + 2472);

  sub_E498(v3, v2);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1480);
  v7 = *(v0 + 1168);
  (*(*(v0 + 1488) + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v4(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v5, v7 + v8, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = sub_125AAC();
  v10 = sub_125DEC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2328);
  v13 = *(v0 + 2320);
  v14 = *(v0 + 1392);
  v15 = *(v0 + 1384);
  v16 = *(v0 + 1376);
  if (v11)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v9, v10, "UndoTimerChangeStateFlow: Error publishing Success output.", v17, 2u);

    v9 = v12;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  (*(*(v0 + 1456) + 8))(*(v0 + 1464), *(v0 + 1448));
  v18 = *(v0 + 1168);
  sub_12383C();
  sub_7C4BC(v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_76944()
{
  sub_5BB0(v0 + 47);
  sub_5CA8((v0 + 27), &qword_160860, &unk_128368);
  sub_5BB0(v0 + 57);
  v1 = v0[205];
  v2 = v0[199];
  v3 = v0[185];
  v4 = v0[146];
  (*(v0[186] + 104))(v2, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v3);
  v1(v2, 0, 1, v3);
  v5 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v2, v4 + v5, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v6 = sub_125AAC();
  v7 = sub_125DEC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[174];
  v12 = v0[173];
  v13 = v0[172];
  if (v8)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: Error publishing Success output.", v14, 2u);

    v6 = v9;
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  (*(v0[182] + 8))(v0[183], v0[181]);
  v15 = v0[146];
  sub_12383C();
  sub_7C4BC(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_76D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5AE8(&unk_162190, &unk_128500);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_12392C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_123B1C();

  return sub_123B2C();
}

uint64_t sub_76E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - v6;
  sub_2F488(a2 + 72, v14);
  sub_23B08(v14, v14[3]);
  isa = sub_125D5C().super.super.isa;
  v9 = [objc_allocWithZone(sub_12550C()) init];
  [v9 setTargetTimer:0];
  [v9 setToDuration:isa];
  [v9 setToLabel:0];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  sub_12584C();

  return sub_5BB0(v14);
}

uint64_t sub_77048(uint64_t a1)
{
  v2 = sub_12571C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5AE8(&qword_160AE8, &qword_1284F8);
  __chkstk_darwin(v6);
  v8 = &v24[-1] - v7;
  sub_E344(a1, &v24[-1] - v7, &qword_160AE8, &qword_1284F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v9 = sub_125ABC();
    sub_5B30(v9, qword_160820);
    v10 = sub_125AAC();
    v11 = sub_125DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "UndoTimerChangeStateFlow: set and start timer failed", v12, 2u);
    }

    LOBYTE(v24[0]) = 0;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    sub_125D1C();
    v13 = sub_12547C();
    v24[3] = v13;
    v24[4] = &protocol witness table for ABCReport;
    v14 = sub_23B4C(v24);
    sub_7D14C(&qword_160AE0, &type metadata accessor for TimerOperationError, &protocol conformance descriptor for TimerOperationError);
    swift_allocError();
    (*(v3 + 16))(v15, v5, v2);
    *v14 = sub_122E7C();
    v16 = enum case for ErrorSubType.managerReturnedError(_:);
    v17 = sub_12515C();
    (*(*(v17 - 8) + 104))(v14, v16, v17);
    (*(*(v13 - 8) + 104))(v14, enum case for ABCReport.timerUndoHandle(_:), v13);
    sub_1251AC();
    (*(v3 + 8))(v5, v2);
    sub_5BB0(v24);
  }

  else
  {
    sub_5CA8(v8, &qword_160AE8, &qword_1284F8);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v19 = sub_125ABC();
    sub_5B30(v19, qword_160820);
    v20 = sub_125AAC();
    v21 = sub_125DFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "UndoTimerChangeStateFlow: set and start timer completion", v22, 2u);
    }

    LOBYTE(v24[0]) = 1;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    return sub_125D1C();
  }
}

uint64_t sub_774D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - v6;
  sub_2F488(a2 + 72, v17);
  sub_23B08(v17, v18);
  v8 = sub_12583C();
  if (v8)
  {

    sub_5BB0(v17);
    sub_2F488(a2 + 72, v17);
    sub_23B08(v17, v18);
    (*(v5 + 16))(v7, a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v7, v4);
    sub_1257FC();

    return sub_5BB0(v17);
  }

  else
  {
    sub_5BB0(v17);
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v12 = sub_125ABC();
    sub_5B30(v12, qword_160820);
    v13 = sub_125AAC();
    v14 = sub_125DFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "UndoTimerChangeStateFlow: no need to stop timer as its already done.", v15, 2u);
    }

    LOBYTE(v17[0]) = 1;
    return sub_125D1C();
  }
}

uint64_t sub_77770(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v29 = a2;
  v7 = sub_12571C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5AE8(&qword_160AD8, &qword_1284F0);
  __chkstk_darwin(v11);
  v13 = &v30[-1] - v12;
  sub_E344(a1, &v30[-1] - v12, &qword_160AD8, &qword_1284F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v14 = v8;
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v15 = sub_125ABC();
    sub_5B30(v15, qword_160820);
    v16 = sub_125AAC();
    v17 = sub_125DEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, a4, v18, 2u);
    }

    LOBYTE(v30[0]) = 0;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    sub_125D1C();
    v19 = sub_12547C();
    v30[3] = v19;
    v30[4] = &protocol witness table for ABCReport;
    v20 = sub_23B4C(v30);
    sub_7D14C(&qword_160AE0, &type metadata accessor for TimerOperationError, &protocol conformance descriptor for TimerOperationError);
    swift_allocError();
    (*(v14 + 16))(v21, v10, v7);
    *v20 = sub_122E7C();
    v22 = enum case for ErrorSubType.managerReturnedError(_:);
    v23 = sub_12515C();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    (*(*(v19 - 8) + 104))(v20, enum case for ABCReport.timerUndoHandle(_:), v19);
    sub_1251AC();
    (*(v14 + 8))(v10, v7);
    sub_5BB0(v30);
  }

  else
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v25 = sub_125ABC();
    sub_5B30(v25, qword_160820);
    v26 = sub_125AAC();
    v27 = sub_125DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, a3, v28, 2u);
    }

    LOBYTE(v30[0]) = 1;
    sub_5AE8(&qword_160AD0, &qword_1284E0);
    return sub_125D1C();
  }
}

uint64_t sub_77BEC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a6;
  v25 = a7;
  v22 = a1;
  v23 = a5;
  v10 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  sub_2F488(a2 + 72, v26);
  v14 = v27;
  v15 = v28;
  sub_23B08(v26, v27);
  sub_30B8C(0, &qword_160620, NSNumber_ptr);
  isa = sub_125EEC(0).super.super.isa;
  v17 = [objc_allocWithZone(a4(0)) init];
  [a3 setShouldMatchAny:isa];
  [v17 setTargetTimer:a3];

  (*(v11 + 16))(v13, v22, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v13, v10);
  v25(v17, v24, v19, v14, v15);

  return sub_5BB0(v26);
}

uint64_t sub_77DEC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_77E8C, 0, 0);
}

uint64_t sub_77E8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_124FCC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v6, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_78028;

  return (v9)(0x73614272656D6974, 0xEF726F7272652365, _swiftEmptyArrayStorage);
}

uint64_t sub_78028(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_78474, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[12] = v6;
    *v6 = v5;
    v6[1] = sub_781A8;

    return sub_7BAF0(a1);
  }
}

uint64_t sub_781A8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_78334;
  }

  else
  {
    v2 = sub_782BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_782BC()
{
  sub_12383C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78334()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing generic failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_78474()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing generic failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_785AC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_78648, 0, 0);
}

uint64_t sub_78648()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = enum case for SiriTimeEventSender.ReasonDescription.timerNotFound(_:);
  v4 = sub_124FCC();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v6, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v9 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_787F8;

  return (v9)(0xD000000000000012, 0x800000000012C5A0, _swiftEmptyArrayStorage);
}

uint64_t sub_787F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_78C44, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[11] = v6;
    *v6 = v5;
    v6[1] = sub_78978;

    return sub_7BAF0(a1);
  }
}

uint64_t sub_78978()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_78B04;
  }

  else
  {
    v2 = sub_78A8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_78A8C()
{
  sub_12383C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78B04()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerNotFound failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_78C44()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerNotFound failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_78D7C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_78E1C, 0, 0);
}

uint64_t sub_78E1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = enum case for SiriTimeEventSender.ReasonDescription.timerAlreadyRunning(_:);
  v4 = sub_124FCC();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v6, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v7 = sub_113D6C(0, 0);
  v0[9] = v7;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = xmmword_126CB0;
  *(v8 + 32) = 0x72656D6974;
  *(v8 + 40) = 0xE500000000000000;
  *(v8 + 72) = type metadata accessor for TimerTimer(0);
  *(v8 + 48) = v7;
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_79034;

  return v11(0xD00000000000001ALL, 0x800000000012D780, v8);
}

uint64_t sub_79034(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_7947C;
  }

  else
  {
    v4 = sub_79168;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_79168()
{
  v1 = *(v0 + 96);

  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_79210;
  v4 = *(v0 + 96);

  return sub_7BAF0(v4);
}

uint64_t sub_79210()
{
  v2 = *(*v1 + 96);
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_7933C;
  }

  else
  {
    v3 = sub_7D764;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7933C()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerAlreadyRunning failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_7947C()
{

  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerAlreadyRunning failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_795BC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_7965C, 0, 0);
}

uint64_t sub_7965C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = enum case for SiriTimeEventSender.ReasonDescription.timerAlreadyPaused(_:);
  v5 = sub_124FCC();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_7CC5C(v1, v2 + v7, &qword_15F6E8, &unk_1271C0);
  swift_endAccess();
  v8 = *(v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState + 24);
  v9 = *(v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState + 32);
  sub_23B08((v2 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState), v8);
  v10 = sub_11CC78(v8, v9);
  sub_124D6C();
  swift_allocObject();
  sub_124D5C();
  v11 = [v3 remainingTime];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
  }

  sub_124D4C();

  v13 = sub_124D3C();
  v0[9] = v13;

  sub_5AE8(&qword_15F180, &unk_126E10);
  v14 = swift_allocObject();
  v0[10] = v14;
  *(v14 + 16) = xmmword_1270C0;
  *(v14 + 32) = 0xD000000000000011;
  *(v14 + 40) = 0x800000000012D730;
  *(v14 + 48) = v10 & 1;
  *(v14 + 72) = &type metadata for Bool;
  strcpy((v14 + 80), "remainingTime");
  *(v14 + 94) = -4864;
  *(v14 + 120) = sub_124D7C();
  *(v14 + 96) = v13;
  v17 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_7995C;

  return v17(0xD000000000000021, 0x800000000012D700, v14);
}

uint64_t sub_7995C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_79DF8;
  }

  else
  {
    v4 = sub_79A90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_79A90()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_79B2C;
  v2 = *(v0 + 96);

  return sub_7BAF0(v2);
}

uint64_t sub_79B2C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_79CB8;
  }

  else
  {
    v2 = sub_79C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_79C40()
{
  sub_12383C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_79CB8()
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerAlreadyPaused failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_79DF8()
{

  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_160820);
  v2 = sub_125AAC();
  v3 = sub_125DEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "UndoTimerChangeStateFlow: Error publishing timerAlreadyPaused failure output.", v4, 2u);
  }

  sub_12383C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_79F38(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_79F5C, 0, 0);
}

uint64_t sub_79F5C()
{
  [*(v0 + 56) mutableCopy];
  sub_125F4C();
  swift_unknownObjectRelease();
  sub_30B8C(0, &qword_160AF0, MTMutableTimer_ptr);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    *(v0 + 80) = v3;
    [v3 setState:v1];
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_7A1B8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 104, 0, 0, 0xD000000000000025, 0x800000000012D750, sub_7D224, v4, &type metadata for Bool);
  }

  else
  {
    if (qword_15EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_160820);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "UndoTimerChangeStateFlow: Failed to get mutableTimer copy", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_7A1B8()
{

  return _swift_task_switch(sub_7A2D0, 0, 0);
}

uint64_t sub_7A2D0()
{
  if (*(v0 + 104) == 1)
  {
    sub_1257EC();
    v1 = sub_1257BC();
  }

  else
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_7A35C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = [*(a2 + 112) updateTimer:a3];
  if (v10)
  {
    v11 = v10;
    v26 = *(v7 + 16);
    v26(v9, a1, v6);
    v25 = a1;
    v12 = *(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    v24 = *(v7 + 32);
    v24(v13 + ((v12 + 24) & ~v12), v9, v6);
    v31 = sub_7D2FC;
    v32 = v13;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v23 = &v29;
    v29 = sub_105C48;
    v30 = &unk_158DA8;
    v14 = _Block_copy(&aBlock);
    v15 = v11;
    v16 = a3;

    v17 = [v15 addSuccessBlock:v14];
    _Block_release(v14);

    v26(v9, v25, v6);
    v18 = (v12 + 16) & ~v12;
    v19 = swift_allocObject();
    v24(v19 + v18, v9, v6);
    v31 = sub_7D38C;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_105C50;
    v30 = &unk_158DF8;
    v20 = _Block_copy(&aBlock);
    v21 = v15;

    v22 = [v21 addFailureBlock:v20];

    _Block_release(v20);
  }
}

uint64_t sub_7A674(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return _swift_task_switch(sub_7A69C, 0, 0);
}

uint64_t sub_7A69C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(MTMutableTimer) initWithState:2 duration:*(v0 + 24)];
  *(v0 + 40) = v3;
  v4 = [v2 title];
  [v3 setTitle:v4];

  v5 = [v2 sound];
  [v3 setSound:v5];

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_7A834;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0xD000000000000032, 0x800000000012D680, sub_7CF74, v6, &type metadata for Bool);
}

uint64_t sub_7A834()
{

  return _swift_task_switch(sub_7A94C, 0, 0);
}

uint64_t sub_7A94C()
{
  if (*(v0 + 64) == 1)
  {
    sub_1257EC();
    v1 = sub_1257BC();
  }

  else
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_7A9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = [*(a2 + 112) addTimer:a3];
  if (v10)
  {
    v11 = v10;
    v26 = *(v7 + 16);
    v26(v9, a1, v6);
    v25 = a1;
    v12 = *(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    v24 = *(v7 + 32);
    v24(v13 + ((v12 + 24) & ~v12), v9, v6);
    v31 = sub_7CF80;
    v32 = v13;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v23 = &v29;
    v29 = sub_105C48;
    v30 = &unk_158BF0;
    v14 = _Block_copy(&aBlock);
    v15 = v11;
    v16 = a3;

    v17 = [v15 addSuccessBlock:v14];
    _Block_release(v14);

    v26(v9, v25, v6);
    v18 = (v12 + 16) & ~v12;
    v19 = swift_allocObject();
    v24(v19 + v18, v9, v6);
    v31 = sub_7CFA4;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_105C50;
    v30 = &unk_158C40;
    v20 = _Block_copy(&aBlock);
    v21 = v15;

    v22 = [v21 addFailureBlock:v20];

    _Block_release(v20);
  }
}

uint64_t sub_7ACF0(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_160820);
  v7 = a2;
  v8 = sub_125AAC();
  v9 = sub_125DFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = [v7 timerIDString];
    v13 = sub_125B9C();
    v15 = v14;

    v16 = sub_8530(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, a4, v10, 0xCu);
    sub_5BB0(v11);
  }

  v19 = 1;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  return sub_125D1C();
}

uint64_t sub_7AEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_160820);
  swift_errorRetain();
  v7 = sub_125AAC();
  v8 = a3();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, a4, v9, 0xCu);
    sub_5CA8(v10, &unk_160540, &unk_1295A0);
  }

  LOBYTE(v17[0]) = 0;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  sub_125D1C();
  v12 = sub_12547C();
  v17[3] = v12;
  v17[4] = &protocol witness table for ABCReport;
  v13 = sub_23B4C(v17);
  *v13 = sub_122E7C();
  v14 = enum case for ErrorSubType.managerReturnedError(_:);
  v15 = sub_12515C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(*(v12 - 8) + 104))(v13, enum case for ABCReport.timerUndoHandle(_:), v12);
  sub_1251AC();
  return sub_5BB0(v17);
}

void sub_7B100(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = [a2 timerIDString];
  v12 = sub_125B9C();
  v14 = v13;

  v15 = [*(a3 + 112) removeTimer:a2];
  if (v15)
  {
    v16 = v15;
    v30 = *(v7 + 16);
    v30(v10, a1, v6);
    v29 = a1;
    v17 = *(v7 + 80);
    v27 = v8;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    v28 = *(v7 + 32);
    v28(v18 + ((v17 + 32) & ~v17), v10, v6);
    v35 = sub_7D094;
    v36 = v18;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_105C48;
    v34 = &unk_158C90;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 addSuccessBlock:v19];
    _Block_release(v19);

    v30(v10, v29, v6);
    v22 = (v17 + 16) & ~v17;
    v23 = swift_allocObject();
    v28(v23 + v22, v10, v6);
    v35 = sub_7D114;
    v36 = v23;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_105C50;
    v34 = &unk_158CE0;
    v24 = _Block_copy(&aBlock);
    v25 = v20;

    v26 = [v25 addFailureBlock:v24];

    _Block_release(v24);
  }

  else
  {
  }
}

uint64_t sub_7B480(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v5 = sub_125ABC();
  sub_5B30(v5, qword_160820);

  v6 = sub_125AAC();
  v7 = sub_125DFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_8530(a2, a3, &v11);
    _os_log_impl(&dword_0, v6, v7, "UndoTimerChangeStateFlow: removed mtTimer successfully, which had ID %s", v8, 0xCu);
    sub_5BB0(v9);
  }

  v12 = 1;
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  return sub_125D1C();
}

uint64_t UndoTimerChangeStateFlow.deinit()
{

  sub_5BB0((v0 + 72));

  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction, &qword_160838, &qword_128330);
  sub_5BB0((v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState));
  sub_5CA8(v0 + OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason, &qword_15F6E8, &unk_1271C0);
  return v0;
}

uint64_t UndoTimerChangeStateFlow.__deallocating_deinit()
{
  UndoTimerChangeStateFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_7B798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return UndoTimerChangeStateFlow.execute()(a1);
}

uint64_t sub_7B834(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoTimerChangeStateFlow(0);

  return sub_12347C();
}

char *sub_7B870(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v8 = sub_124EDC();
  __chkstk_darwin(v8 - 8);
  v16 = sub_12587C();
  v17 = &protocol witness table for SiriTimerManagerImpl;
  *&v15 = a1;
  type metadata accessor for PauseTimerCATsSimple(0);
  sub_124ECC();
  *(a4 + 2) = sub_124E7C();
  type metadata accessor for PauseTimerCATs_Async(0);
  sub_124ECC();
  *(a4 + 3) = sub_124DBC();
  type metadata accessor for ResumeTimerCATsSimple(0);
  sub_124ECC();
  *(a4 + 4) = sub_124E7C();
  type metadata accessor for ResumeTimerCATs_Async(0);
  sub_124ECC();
  *(a4 + 5) = sub_124DBC();
  type metadata accessor for PauseTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 6) = sub_124DBC();
  type metadata accessor for ResumeTimerCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 7) = sub_124DBC();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  *(a4 + 8) = sub_124DBC();
  *(a4 + 15) = 0;
  *(a4 + 16) = 0;
  v9 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_followupPluginAction;
  v10 = sub_12372C();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_operation] = 8;
  v11 = &a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_remainingTime];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  v13 = sub_124FCC();
  (*(*(v13 - 8) + 56))(&a4[v12], 1, 1, v13);
  sub_2F4EC(&v15, (a4 + 72));
  sub_2F4EC(a3, &a4[OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_deviceState]);
  *(a4 + 14) = a2;
  return a4;
}

uint64_t sub_7BAF0(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_125ABC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_124FFC();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = sub_12501C();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = sub_12392C();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v6 = sub_12368C();
  v1[25] = v6;
  v1[26] = *(v6 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_7BD20, 0, 0);
}

uint64_t sub_7BD20(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  sub_12364C();
  sub_12391C();
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v4);
  if (qword_15EE60 != -1)
  {
    swift_once();
  }

  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[13];
  v8 = sub_5B30(v7, qword_160820);
  (*(v6 + 16))(v5, v8, v7);
  mach_absolute_time();
  sub_12502C();
  v9 = swift_task_alloc();
  v1[28] = v9;
  *v9 = v1;
  v9[1] = sub_7BEA0;
  v10 = v1[27];
  v11 = v1[24];
  v12 = v1[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v1 + 2, v10, v11, v12, 0);
}

uint64_t sub_7BEA0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_7C2A4;
  }

  else
  {
    v2 = sub_7BFB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7BFB4()
{
  sub_123ACC();
  v1 = v0[10];
  v2 = v0[11];
  sub_23B08(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_7C078;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v1, v2);
}

uint64_t sub_7C078()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_7C39C;
  }

  else
  {
    v2 = sub_7C18C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7C18C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_5BB0(v0 + 2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_7C2A4()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_7C39C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_5BB0(v0 + 2);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_5BB0(v0 + 7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_7C4BC(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F6F0, &unk_128340);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - v3;
  v4 = sub_5AE8(&qword_15F6F8, &qword_1271D0);
  __chkstk_darwin(v4 - 8);
  v44 = &v41 - v5;
  v6 = sub_12370C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F6E8, &unk_1271C0);
  v11 = __chkstk_darwin(v10 - 8);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_124FCC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC23TimerFlowDelegatePlugin24UndoTimerChangeStateFlow_failureReason;
  swift_beginAccess();
  sub_E344(a1 + v19, v14, &qword_15F6E8, &unk_1271C0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_5CA8(v14, &qword_15F6E8, &unk_1271C0);
    (*(v7 + 104))(v9, enum case for ActivityType.completed(_:), v6);
    if (qword_15EE68 != -1)
    {
      swift_once();
    }

    v20 = sub_124FDC();
    sub_5B30(v20, qword_1675A8);
    v21 = sub_12353C();
    v22 = v44;
    (*(*(v21 - 8) + 56))(v44, 1, 1, v21);
    if (qword_15EE70 != -1)
    {
      swift_once();
    }

    v23 = sub_124FEC();
    v24 = sub_5B30(v23, qword_1675C0);
    v25 = *(v23 - 8);
    v26 = v45;
    (*(v25 + 16))(v45, v24, v23);
    (*(v25 + 56))(v26, 0, 1, v23);
    v27 = v43;
    (*(v16 + 56))(v43, 1, 1, v15);
    sub_124FBC();
    sub_5CA8(v27, &qword_15F6E8, &unk_1271C0);
    sub_5CA8(v26, &qword_15F6F0, &unk_128340);
    sub_5CA8(v22, &qword_15F6F8, &qword_1271D0);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v29 = v15;
    (*(v16 + 32))(v18, v14, v15);
    v30 = *(v7 + 104);
    v42 = v9;
    v30(v9, enum case for ActivityType.failed(_:), v6);
    v41 = v6;
    v31 = v18;
    if (qword_15EE68 != -1)
    {
      swift_once();
    }

    v32 = sub_124FDC();
    sub_5B30(v32, qword_1675A8);
    v33 = sub_12353C();
    v34 = v44;
    (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
    if (qword_15EE70 != -1)
    {
      swift_once();
    }

    v35 = sub_124FEC();
    v36 = sub_5B30(v35, qword_1675C0);
    v37 = *(v35 - 8);
    v38 = v45;
    (*(v37 + 16))(v45, v36, v35);
    (*(v37 + 56))(v38, 0, 1, v35);
    v39 = v43;
    (*(v16 + 16))(v43, v31, v29);
    (*(v16 + 56))(v39, 0, 1, v29);
    v40 = v42;
    sub_124FBC();
    sub_5CA8(v39, &qword_15F6E8, &unk_1271C0);
    sub_5CA8(v38, &qword_15F6F0, &unk_128340);
    sub_5CA8(v34, &qword_15F6F8, &qword_1271D0);
    (*(v7 + 8))(v40, v41);
    return (*(v16 + 8))(v31, v29);
  }
}

uint64_t sub_7CC5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5AE8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_7CCEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_7CDD0(uint64_t a1)
{
  sub_7CF20(319, &qword_1608B0, &type metadata accessor for PluginAction);
  if (v1 <= 0x3F)
  {
    sub_7CF20(319, &unk_1608B8, &type metadata accessor for SiriTimeEventSender.ReasonDescription);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_7CF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7CF8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7CFC4()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D094(uint64_t a1)
{
  sub_5AE8(&qword_160AD0, &qword_1284E0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_7B480(a1, v3, v4);
}

uint64_t sub_7D14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7D194(uint64_t a1)
{
  sub_5AE8(&qword_160AD0, &qword_1284E0);

  return sub_77048(a1);
}

uint64_t sub_7D22C()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D434()
{
  v1 = sub_5AE8(&qword_160AD0, &qword_1284E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_7D578()
{

  return sub_69D3C();
}

uint64_t sub_7D5EC()
{

  return sub_6EDBC();
}

uint64_t sub_7D660()
{

  return sub_6A0A8();
}

uint64_t sub_7D6D4()
{

  return sub_6FFFC();
}

uint64_t type metadata accessor for TimerBaseCATsSimple(uint64_t a1)
{
  result = qword_160AF8;
  if (!qword_160AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7D810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_606C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_7D998(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_7DB10()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 0x6954746567726174;
  *(v4 + 40) = 0xEB0000000072656DLL;
  v5 = *v0;
  if (*v0)
  {
    v6 = type metadata accessor for TimerTimer(0);
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  strcpy((v4 + 80), "updatedTimer");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  v8 = v0[1];
  if (v8)
  {
    v9 = type metadata accessor for TimerTimer(0);
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v10;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x6174614477656976;
  *(v4 + 136) = 0xE800000000000000;
  v11 = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  sub_E344(v0 + *(v11 + 24), v3, &unk_15F170, &unk_126E00);
  v12 = sub_124E4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {

    sub_5CA8(v3, &unk_15F170, &unk_126E00);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v12;
    v14 = sub_23B4C((v4 + 144));
    (*(v13 + 32))(v14, v3, v12);
  }

  return v4;
}

uint64_t sub_7DD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

uint64_t sub_7DF40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_7E01C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7E0CC(uint64_t a1)
{
  sub_7E188(319, &unk_15FD98, type metadata accessor for TimerTimer);
  if (v1 <= 0x3F)
  {
    sub_7E188(319, &qword_15FD00, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7E188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_7E1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_7E230()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_160C30);
  sub_5B30(v0, qword_160C30);
  return sub_1257AC();
}

uint64_t sub_7E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v5 = sub_12392C();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_12368C();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  sub_5AE8(&qword_160CC8, &unk_12BE70);
  v3[32] = swift_task_alloc();
  v7 = sub_1256FC();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v8 = sub_125ABC();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v9 = sub_124FFC();
  v3[40] = v9;
  v3[41] = *(v9 - 8);
  v3[42] = swift_task_alloc();
  v10 = sub_12501C();
  v3[43] = v10;
  v3[44] = *(v10 - 8);
  v3[45] = swift_task_alloc();
  sub_124EDC();
  v3[46] = swift_task_alloc();
  v3[47] = *(a3 + 16);
  v11 = sub_123B7C();
  v3[48] = v11;
  v3[49] = *(v11 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_7E5F0, 0, 0);
}

uint64_t sub_7E5F0()
{
  v56 = v0;
  if (qword_15EE78 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[24];
  v5 = sub_5B30(v0[37], qword_160C30);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v53 = v5;
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  if (v9)
  {
    v11 = v0[49];
    v12 = v0[50];
    v13 = v0[48];
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = v51;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_125BAC();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_8530(v15, v17, &v55);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "[TimerUnsupportedValueStrategy.makeUnsupportedValueOutput] Called with resolveRecord %s", v14, 0xCu);
    sub_5BB0(v51);
  }

  else
  {
    v19 = v0[48];
    v20 = v0[49];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[41];
  v22 = v0[42];
  v23 = v0[39];
  v24 = v0[40];
  v25 = v0[37];
  v26 = v0[38];
  v27 = v0[34];
  v50 = v0[32];
  v52 = v0[33];
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[52] = sub_124DBC();
  (*(v21 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v24);
  (*(v26 + 16))(v23, v53, v25);
  mach_absolute_time();
  sub_12502C();
  v28 = sub_123B5C();
  [v28 unsupportedReason];

  sub_1256EC();
  if ((*(v27 + 48))(v50, 1, v52) == 1)
  {
    sub_5CA8(v0[32], &qword_160CC8, &unk_12BE70);
    v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v29 = swift_task_alloc();
    v0[68] = v29;
    *v29 = v0;
    v30 = sub_8015C;
LABEL_19:
    v29[1] = v30;
    v37 = 0xEF726F7272652365;
    v38 = 0x73614272656D6974;
    goto LABEL_20;
  }

  v31 = v0[35];
  v32 = v0[36];
  v33 = v0[33];
  v34 = v0[34];
  (*(v34 + 32))(v32, v0[32], v33);
  (*(v34 + 16))(v31, v32, v33);
  v35 = (*(v34 + 88))(v31, v33);
  if (v35 == enum case for TimerHandlerError.noResultsAfterFiltering(_:))
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
LABEL_10:
    v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v36 = swift_task_alloc();
    v0[56] = v36;
    *v36 = v0;
    v36[1] = sub_7F0B8;
    v37 = 0x800000000012C5A0;
    v38 = 0xD000000000000012;
LABEL_20:

    return (v54)(v38, v37, _swiftEmptyArrayStorage);
  }

  if (v35 == enum case for TimerHandlerError.generic(_:) || v35 == enum case for TimerHandlerError.timersAmbiguous(_:) || v35 == enum case for TimerHandlerError.durationNeedsValue(_:))
  {
    goto LABEL_18;
  }

  if (v35 == enum case for TimerHandlerError.durationTooLong(_:))
  {
    type metadata accessor for CreateTimerCATPatternsExecutor(0);
    sub_124ECC();
    v0[60] = sub_124DBC();
    v39 = "deleteTimer#handledMulti";
    v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v40 = swift_task_alloc();
    v0[61] = v40;
    *v40 = v0;
    v40[1] = sub_7F750;
    v38 = 0xD000000000000020;
LABEL_16:
    v37 = v39 | 0x8000000000000000;
    goto LABEL_20;
  }

  if (v35 == enum case for TimerHandlerError.failedToAdd(_:))
  {
LABEL_18:
    v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
    v29 = swift_task_alloc();
    v0[58] = v29;
    *v29 = v0;
    v30 = sub_7F404;
    goto LABEL_19;
  }

  if (v35 == enum case for TimerHandlerError.noResults(_:))
  {
    goto LABEL_10;
  }

  if (v35 == enum case for TimerHandlerError.noTimersExist(_:))
  {
    v42 = v0[47];
    v44 = v0[24];
    v43 = v0[25];
    v45 = swift_task_alloc();
    v0[53] = v45;
    v45[2] = v42;
    v45[3] = *(v43 + 24);
    v45[4] = v44;
    v46 = swift_task_alloc();
    v0[54] = v46;
    *v46 = v0;
    v46[1] = sub_7EE8C;

    return sub_104D80(sub_810EC, v45);
  }

  else
  {
    if (v35 == enum case for TimerHandlerError.setAttributeUnsupported(_:))
    {
      goto LABEL_18;
    }

    if (v35 == enum case for TimerHandlerError.pauseResumeSleepTimersUnsupported(_:))
    {
      v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v47 = swift_task_alloc();
      v0[66] = v47;
      *v47 = v0;
      v47[1] = sub_7FE10;
      v38 = 0xD000000000000025;
      v37 = 0x800000000012D8A0;
      goto LABEL_20;
    }

    if (v35 == enum case for TimerHandlerError.createSleepTimerNothingPlaying(_:))
    {
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[63] = sub_124DBC();
      v39 = "createTimer#handledSleep";
      v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v48 = swift_task_alloc();
      v0[64] = v48;
      *v48 = v0;
      v48[1] = sub_7FAB0;
      v38 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    v49 = v0[33];

    return _diagnoseUnexpectedEnumCase<A>(type:)(v49, v49);
  }
}