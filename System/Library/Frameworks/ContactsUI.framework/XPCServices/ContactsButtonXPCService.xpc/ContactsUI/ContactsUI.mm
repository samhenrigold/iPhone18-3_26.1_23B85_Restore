int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10001CE1C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  qword_10002E520 = [objc_allocWithZone(type metadata accessor for ServiceDelegate(0)) init];
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000023A4(v3, qword_10002E558);
  v11 = *(v4 + 16);
  v11(v9, v10, v3);
  v12 = sub_10001CDFC();
  v13 = sub_10001D4CC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "#ContactsButton service created delegate", v14, 2u);
  }

  v15 = *(v4 + 8);
  v15(v9, v3);
  qword_10002E528 = [objc_opt_self() serviceListener];
  [qword_10002E528 setDelegate:qword_10002E520];
  v11(v7, v10, v3);
  v16 = sub_10001CDFC();
  v17 = sub_10001D4CC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "#ContactsButton service have just set delegate", v18, 2u);
  }

  v15(v7, v3);
  [qword_10002E528 resume];
  return 0;
}

uint64_t type metadata accessor for ServiceDelegate(uint64_t a1)
{
  result = qword_10002D948;
  if (!qword_10002D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100002300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000023A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000245C(uint64_t a1, id *a2)
{
  v3 = sub_10001D2FC();
  *a2 = 0;
  return v3 & 1;
}

void sub_1000024DC(uint64_t *a1@<X8>)
{
  sub_10001D30C();
  v3 = v2;
  v4 = sub_10001D2DC();
  v3, v5, v6, v7, v8, v12, v9, v10, v11;
  *a1 = v4;
}

Swift::Int sub_1000025C4(uint64_t a1, uint64_t a2)
{
  sub_10001D6FC();
  swift_getWitnessTable();
  sub_10001CDDC();
  return sub_10001D70C();
}

uint64_t sub_10000262C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10001CDCC();
}

void sub_100002698(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_10001D2DC();
  v3, v5, v6, v7, v8, v12, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1000026E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D30C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000270C(uint64_t a1)
{
  v2 = sub_100002B34(&qword_10002D9F0, type metadata accessor for UIContentSizeCategory, &unk_10001E384);
  v3 = sub_100002B34(&qword_10002D9F8, type metadata accessor for UIContentSizeCategory, &unk_10001E324);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000027C8()
{
  sub_10001D30C();
  v1 = v0;
  v2 = sub_10001D3BC();
  v1, v3, v4, v5, v6, v11, v7, v8, v9;
  return v2;
}

void sub_100002804(uint64_t a1)
{
  sub_10001D30C();
  v2 = v1;
  sub_10001D35C();

  v2, v3, v4, v5, v6, *&v10, v7, v8, v9;
}

Swift::Int sub_100002858()
{
  sub_10001D30C();
  v1 = v0;
  sub_10001D6FC();
  sub_10001D35C();
  v2 = sub_10001D70C();
  v1, v3, v4, v5, v6, v11, v7, v8, v9;
  return v2;
}

uint64_t sub_1000028CC(void *a1, uint64_t *a2)
{
  v2 = sub_10001D30C();
  v4 = v3;
  v5 = sub_10001D30C();
  v17 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_10001D6BC();
  }

  v4, v6, v7, v8, v9, *&v13, v10, v11, v12;
  v17, v20, v21, v22, v23, v28, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_10000295C(uint64_t a1, uint64_t a2)
{
  result = sub_10001CE1C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_1000029F0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002A1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100002A84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002BC4(void *a1)
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10ContactsUI19ContactsButtonAgent_];
  [a1 setExportedInterface:v2];

  v3 = sub_10001CDFC();
  v4 = sub_10001D4CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017934(0xD000000000000013, 0x8000000100020F10, &v22);
    _os_log_impl(&_mh_execute_header, v3, v4, "#ContactsButton service exporting interface %s", v5, 0xCu);
    sub_100002F44(v6);
  }

  v7 = objc_allocWithZone(type metadata accessor for ContactsButtonServiceProvider(0));
  v8 = a1;
  sub_1000118B8(v8, v9);
  v11 = v10;
  [v8 setExportedObject:v10];
  v12 = v11;
  v13 = sub_10001CDFC();
  v14 = sub_10001D4CC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "#ContactsButton service exporting object %@", v15, 0xCu);
    sub_100002E94(v16);
  }

  [v8 resume];
  v18 = sub_10001CDFC();
  v19 = sub_10001D4CC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "#ContactsButton service resuming connection...", v20, 2u);
  }

  return 1;
}

uint64_t sub_100002E94(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002EFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002F44(void *a1)
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

__n128 sub_100002FA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002FB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002FD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100003034(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10000311C@<X0>(uint64_t a1@<X0>, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_100002EFC(&qword_10002DD18, "PB");
  v6 = __chkstk_darwin(v5 - 8);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_10001CD2C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = objc_allocWithZone(LSApplicationExtensionRecord);

  v13 = sub_1000035A4(a1, a2);
  v30 = v9;
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = sub_10001D2DC();
  v17 = [v15 applicationIsInstalled:v16];

  if (v17)
  {
    if (!v13)
    {
      v18 = objc_allocWithZone(LSApplicationRecord);

      v24 = sub_10001721C(a1, a2, 0);
      v25 = [v24 URL];
      v26 = v29;
      sub_10001CD1C();

      v27 = v30;
      sub_1000046D8(v30);
      v11(v26, 0, 1, v10);
      sub_100004848(v26, v27);
      return sub_100004848(v27, v31);
    }
  }

  else if (!v13)
  {
    sub_1000046D8(v30);
    v22 = v31;
    v23 = 1;
    return (v11)(v22, v23, 1, v10);
  }

  v19 = v13;
  v20 = [v19 URL];
  v21 = v31;
  sub_10001CD1C();

  sub_1000046D8(v30);
  v22 = v21;
  v23 = 0;
  return (v11)(v22, v23, 1, v10);
}

id sub_1000035A4(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2)
{
  v4 = sub_10001D2DC();
  a2, v5, v6, v7, v8, v17, v9, v10, v11;
  v16 = 0;
  v12 = [v2 initWithBundleIdentifier:v4 error:&v16];

  if (v12)
  {
    v13 = v16;
  }

  else
  {
    v14 = v16;
    sub_10001CCFC();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_100003670(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, uint64_t a3, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a4)
{
  v8 = sub_100002EFC(&qword_10002DD18, "PB");
  __chkstk_darwin(v8 - 8);
  v10 = &v245 - v9;
  v11 = sub_10001CD2C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v257 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v256 = &v245 - v16;
  v17 = __chkstk_darwin(v15);
  v258 = &v245 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v245 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v245 - v23;
  __chkstk_darwin(v22);
  v26 = &v245 - v25;
  type metadata accessor for ContactsButtonPurposeStringHelper();
  v259 = a1;
  v260 = a2;
  sub_10000311C(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000046D8(v10);
    if (qword_10002D8B0 != -1)
    {
LABEL_51:
      swift_once();
    }

    v27 = sub_10001CE1C();
    sub_1000023A4(v27, qword_10002E558);
    v28 = v260;

    v29 = sub_10001CDFC();
    v30 = sub_10001D4EC();
    v28, v31, v32, v33, v34, v266, v35, v36, v37;
    if (os_log_type_enabled(v29, v30))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v265[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100017934(v259, v28, v265);
      _os_log_impl(&_mh_execute_header, v29, v30, "#ContactsButton unable to get url for %s", v38, 0xCu);
      sub_100002F44(v39);
    }

    return 0;
  }

  v261 = a3;
  v253 = v21;
  v40 = *(v12 + 32);
  v252 = v12 + 32;
  v251 = v40;
  v40(v26, v10, v11);
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v41 = sub_10001CE1C();
  v42 = sub_1000023A4(v41, qword_10002E558);
  v43 = *(v12 + 16);
  v250 = v12 + 16;
  v249 = v43;
  v43(v24, v26, v11);
  v44 = v260;

  v254 = v42;
  v45 = sub_10001CDFC();
  v46 = sub_10001D4CC();
  v44, v47, v48, v49, v50, v267, v51, v52, v53;
  v54 = os_log_type_enabled(v45, v46);
  v262 = a4;
  v255 = v12;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v265[0] = swift_slowAlloc();
    *v55 = 136315394;
    *(v55 + 4) = sub_100017934(v259, v44, v265);
    *(v55 + 12) = 2080;
    sub_100004740();
    v56 = sub_10001D6AC();
    v58 = v57;
    v59 = *(v12 + 8);
    v59(v24, v11);
    v60 = sub_100017934(v56, v58, v265);
    v58, v61, v62, v63, v64, v268, v65, v66, v67;
    *(v55 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v45, v46, "#ContactsButton bundle for %s found at %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v59 = *(v12 + 8);
    v59(v24, v11);
  }

  v68 = objc_allocWithZone(NSBundle);
  sub_10001CD0C(v69);
  v71 = v70;
  v72 = [v68 initWithURL:v70];

  if (!v72)
  {
    v164 = v260;

    v165 = sub_10001CDFC();
    v166 = sub_10001D4EC();
    v164, v167, v168, v169, v170, v273, v171, v172, v173;
    if (os_log_type_enabled(v165, v166))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v265[0] = v175;
      *v174 = 136315138;
      *(v174 + 4) = sub_100017934(v259, v164, v265);
      _os_log_impl(&_mh_execute_header, v165, v166, "#ContactsButton failed to create bundle for %s", v174, 0xCu);
      sub_100002F44(v175);
    }

    v59(v26, v11);
    return 0;
  }

  v246 = v59;
  v247 = v26;
  v248 = v11;
  v263 = v72;
  v73 = [v72 preferredLocalizations];
  v74 = sub_10001D3FC();

  v86 = *(v74 + 16);
  if (!v86)
  {
LABEL_24:
    v74, v75, v76, v77, v78, *&v82, v79, v80, v81;
    v129 = sub_10001D2DC();
    v130 = sub_10001D2DC();
    v131 = v263;
    v132 = [v263 URLForResource:v129 withExtension:v130];

    if (!v132)
    {
      v176 = v260;

      v177 = sub_10001CDFC();
      v178 = sub_10001D4EC();
      v176, v179, v180, v181, v182, v274, v183, v184, v185;
      v186 = os_log_type_enabled(v177, v178);
      v187 = v248;
      if (v186)
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v265[0] = v189;
        *v188 = 136315138;
        *(v188 + 4) = sub_100017934(v259, v176, v265);
        _os_log_impl(&_mh_execute_header, v177, v178, "#ContactsButton can't find Info.plist for %s", v188, 0xCu);
        sub_100002F44(v189);
      }

      v246(v247, v187);
      return 0;
    }

    v133 = v258;
    sub_10001CD1C();

    v134 = v253;
    v135 = v248;
    v251(v253, v133, v248);
    v190 = sub_10001CD3C();
    v192 = v191;
    v193 = objc_opt_self();
    isa = sub_10001CD4C().super.isa;
    v265[0] = 0;
    v195 = [v193 propertyListWithData:isa options:0 format:0 error:v265];

    if (v195)
    {
      v196 = v265[0];
      sub_10001D58C();
      sub_100004798(v190, v192);
      swift_unknownObjectRelease();
      sub_100002EFC(&qword_10002DD28, "PB");
      v197 = swift_dynamicCast();
      v136 = v256;
      if (v197)
      {
        v209 = v264;
        if (v264)
        {
          if (*(v264 + 16) && (v210 = sub_100017EE0(v261, v262), (v198 & 1) != 0))
          {
            sub_1000047EC(*(v209 + 56) + 32 * v210, v265);
            v209, v211, v212, v213, v214, v275, v215, v216, v217;
            if (swift_dynamicCast())
            {

              v218 = v246;
              v246(v134, v135);
              v218(v247, v135);
              return v264;
            }
          }

          else
          {
            v209, v198, v199, v200, v201, *&v205, v202, v203, v204;
          }
        }
      }

      v249(v136, v134, v135);
      v220 = v262;

      v221 = sub_10001CDFC();
      v222 = sub_10001D4EC();
      v220, v223, v224, v225, v226, v276, v227, v228, v229;
      if (os_log_type_enabled(v221, v222))
      {
        v230 = swift_slowAlloc();
        v265[0] = swift_slowAlloc();
        *v230 = 136315394;
        *(v230 + 4) = sub_100017934(v261, v220, v265);
        *(v230 + 12) = 2080;
        sub_100004740();
        v231 = sub_10001D6AC();
        v233 = v232;
        v234 = v246;
        v246(v136, v135);
        v235 = sub_100017934(v231, v233, v265);
        v233, v236, v237, v238, v239, v277, v240, v241, v242;
        *(v230 + 14) = v235;
        _os_log_impl(&_mh_execute_header, v221, v222, "#ContactsButton no %s in %s", v230, 0x16u);
        swift_arrayDestroy();

        v234(v253, v135);
        v234(v247, v135);
        return 0;
      }
    }

    else
    {
      v219 = v265[0];
      sub_10001CCFC();

      swift_willThrow();
      sub_100004798(v190, v192);
      v136 = v257;
      v249(v257, v134, v135);
      swift_errorRetain();
      v137 = sub_10001CDFC();
      v138 = sub_10001D4EC();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v265[0] = swift_slowAlloc();
        *v139 = 136315394;
        sub_100004740();
        v140 = sub_10001D6AC();
        v142 = v141;
        v143 = v136;
        v144 = v246;
        v246(v143, v135);
        v145 = sub_100017934(v140, v142, v265);
        v142, v146, v147, v148, v149, v271, v150, v151, v152;
        *(v139 + 4) = v145;
        *(v139 + 12) = 2080;
        swift_getErrorValue();
        v153 = sub_10001D6EC();
        v155 = v154;
        v156 = sub_100017934(v153, v154, v265);
        v155, v157, v158, v159, v160, v272, v161, v162, v163;
        *(v139 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v137, v138, "#ContactsButton encountered an error reading %s: %s", v139, 0x16u);
        swift_arrayDestroy();

        v144(v253, v135);
        v144(v247, v135);
        return 0;
      }
    }

    v243 = v246;
    v246(v136, v135);
    v243(v134, v135);
    v243(v247, v135);
    return 0;
  }

  v87 = 0;
  v88 = (v74 + 40);
  v89 = v262;
  while (1)
  {
    if (v87 >= *(v74 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v90 = *v88;

    v91 = v261;
    v92 = sub_10001D2DC();
    v93 = sub_10001D2DC();
    v94 = sub_10001D2DC();
    v90, v95, v96, v97, v98, v269, v99, v100, v101;
    v102 = [v263 localizedStringForKey:v92 value:0 table:v93 localization:v94];

    v103 = sub_10001D30C();
    v105 = v104;

    v117 = v103 == v91 && v105 == v89;
    if (!v117 && (sub_10001D6BC() & 1) == 0)
    {
      break;
    }

    ++v87;
    v105, v106, v107, v108, v109, *&v113, v110, v111, v112;
    v88 += 2;
    if (v86 == v87)
    {
      goto LABEL_24;
    }
  }

  v74, v106, v107, v108, v109, *&v113, v110, v111, v112;

  v118 = sub_10001CDFC();
  v119 = sub_10001D4CC();
  v105, v120, v121, v122, v123, v270, v124, v125, v126;
  if (os_log_type_enabled(v118, v119))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v265[0] = v128;
    *v127 = 136315138;
    *(v127 + 4) = sub_100017934(v103, v105, v265);
    _os_log_impl(&_mh_execute_header, v118, v119, "#ContactsButton fetched possibly localized purpose string: %s", v127, 0xCu);
    sub_100002F44(v128);
  }

  v246(v247, v248);
  return v103;
}

uint64_t sub_1000046D8(uint64_t a1)
{
  v2 = sub_100002EFC(&qword_10002DD18, "PB");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004740()
{
  result = qword_10002DD20;
  if (!qword_10002DD20)
  {
    sub_10001CD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD20);
  }

  return result;
}

uint64_t sub_100004798(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000047EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_10002DD18, "PB");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000048B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    sub_10001D61C();
    v4 = a1 + 32;
    do
    {
      sub_1000047EC(v4, &v5);
      sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
      swift_dynamicCast();
      sub_10001D5FC();
      sub_10001D62C();
      sub_10001D63C();
      sub_10001D60C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1000049AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_10001D3DC();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10001D40C();
  }

  return sub_10001D42C();
}

void sub_100004A20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100004A7C(id *a1, unint64_t a2)
{
  v5 = [*a1 emailAddresses];
  sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
  v6 = sub_10001D3FC();

  if (v6 >> 62)
  {
    v18 = sub_10001D64C();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_13:
    v6, v7, v8, v9, v10, *&v14, v11, v12, v13;
    goto LABEL_14;
  }

  v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1000181D0(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v88 = a2;
  v19 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v20 = sub_10001D5DC();
    }

    else
    {
      v20 = *(v6 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = [v20 value];
    v23 = sub_10001D30C();
    v25 = v24;

    v38 = *_swiftEmptyArrayStorage.slotID;
    v37 = *&_swiftEmptyArrayStorage.auditToken[4];
    if (v38 >= v37 >> 1)
    {
      sub_1000181D0((v37 > 1), v38 + 1, 1);
    }

    ++v19;
    *_swiftEmptyArrayStorage.slotID = v38 + 1;
    v39 = &_swiftEmptyArrayStorage.super.isa + 2 * v38;
    v39[4] = v23;
    v39[5] = v25;
  }

  while (v18 != v19);
  v6, v26, v27, v28, v29, *&v33, v30, v31, v32;
  a2 = v88;
LABEL_14:
  v40 = objc_opt_self();
  isa = sub_10001D3EC().super.isa;
  &_swiftEmptyArrayStorage, v42, v43, v44, v45, v90, v46, v47, v48;
  v49 = [v40 emailAddressesFromStrings:isa invalidAddresses:0];

  sub_1000072F8(0, &qword_10002DDE8, ECEmailAddress_ptr);
  v2 = sub_10001D3FC();

  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
LABEL_41:
        v61 = sub_10001D64C();
      }

      else
      {
        v61 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = 0;
      v63 = v2 & 0xC000000000000001;
      v83 = v2 + 32;
      v84 = v2 & 0xFFFFFFFFFFFFFF8;
      v64 = a2 & 0xC000000000000001;
      v89 = v2;
      v85 = v2 & 0xC000000000000001;
      v86 = v3;
LABEL_19:
      if (v63)
      {
        v65 = sub_10001D5DC();
      }

      else
      {
        if (v62 >= *(v84 + 16))
        {
          __break(1u);
          return;
        }

        v65 = *(v83 + 8 * v62);
      }

      v66 = v65;
      v67 = __OFADD__(v62, 1);
      v68 = v62 + 1;
      if (!v67)
      {
        break;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      v3 = sub_10001D64C();
      if (!v3)
      {
        goto LABEL_34;
      }
    }

    v87 = v68;
    for (i = 0; v61 != i; ++i)
    {
      if (v64)
      {
        v70 = a2;
        v71 = sub_10001D5DC();
      }

      else
      {
        if (i >= *(v6 + 16))
        {
          goto LABEL_36;
        }

        v70 = a2;
        v71 = *(a2 + 8 * i + 32);
      }

      a2 = v71;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v2 = [v71 compare:v66];

      a2 = v70;
      if (!v2)
      {
        v89, v72, v73, v74, v75, *&v79, v76, v77, v78;

        return;
      }
    }

    v62 = v87;
    v2 = v89;
    v63 = v85;
    if (v87 != v86)
    {
      goto LABEL_19;
    }
  }

LABEL_34:
  v2, v50, v51, v52, v53, *&v57, v54, v55, v56;
}

void sub_100004E20(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1)->slotID;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->auditToken[4] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v29 = v4 + v2;
  }

  else
  {
    v29 = v4;
  }

  v3 = sub_1000176A0(isUniquelyReferenced_nonNull_native, v29, 1, v3, v11, v12, v13, v14, v15, v16, v17, v18);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, *&v15, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*&v3->auditToken[4] >> 1) - *v3->slotID < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v19, v20, v21, v22, v30, v23, v24, v25;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v26 = *v3->slotID;
  v27 = __OFADD__(v26, v2);
  v28 = v26 + v2;
  if (!v27)
  {
    *v3->slotID = v28;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100004F38(void *a1, uint64_t a2, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a3)
{
  v7 = *v3;
  sub_10001D6FC();
  sub_10001D35C();
  v8 = sub_10001D70C();
  v19 = -1 << *(v7 + 32);
  v20 = v8 & ~v19;
  if ((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = (*(v7 + 48) + 16 * v20);
      v23 = v22[1];
      v24 = *v22 == a2 && v23 == a3;
      if (v24 || (sub_10001D6BC() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v23, v9, v10, v11, *&v15, v12, v13, v14;
    v27 = (*(v7 + 48) + 16 * v20);
    v28 = v27[1];
    *a1 = *v27;
    a1[1] = v28;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;

    sub_1000052E8(a2, a3, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v29;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  result = sub_10001D5BC();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001D6FC();
      sub_10001D35C();
      result = sub_10001D70C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000052E8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005088(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100005468();
      goto LABEL_16;
    }

    sub_1000055C4(v8 + 1);
  }

  v10 = *v4;
  sub_10001D6FC();
  sub_10001D35C();
  result = sub_10001D70C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D6BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D6CC();
  __break(1u);
  return result;
}

void *sub_100005468()
{
  v1 = v0;
  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  v2 = *v0;
  v3 = sub_10001D5AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

  return result;
}

uint64_t sub_1000055C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002EFC(&qword_10002DDF8, qword_10001E5E8);
  result = sub_10001D5BC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001D6FC();

      sub_10001D35C();
      result = sub_10001D70C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

  return result;
}

uint64_t sub_1000057FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v20, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000058A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_100005A00()
{
  v0 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_100002EFC(&qword_10002DDC8, &unk_10001E5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E580;
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v0;
  v2 = sub_10001D30C();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 72) = v3;
  v4 = sub_10001D30C();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = sub_10001D30C();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  v8 = sub_10001D30C();
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v8;
  *(inited + 168) = v9;
  swift_unknownObjectRetain();
  v10 = sub_1000048B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(CNContactFetchRequest);
  sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
  isa = sub_10001D3EC().super.isa;
  v10, v13, v14, v15, v16, v32, v17, v18, v19;
  v20 = [v11 initWithKeysToFetch:isa];

  v31 = &_swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(CNContactStore) init];
  v22 = swift_allocObject();
  *(v22 + 16) = &v31;
  v23 = swift_allocObject();
  v23[2] = sub_100005D88;
  v23[3] = v22;
  aBlock[4] = sub_100005DA0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004A20;
  aBlock[3] = &unk_100029430;
  v24 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v25 = [v21 enumerateContactsWithFetchRequest:v20 error:aBlock usingBlock:v24];
  _Block_release(v24);

  v26 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v25)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10001CCFC();

    swift_willThrow();

    swift_unknownObjectRelease();
  }

  v28 = v31;

  return v28;
}

uint64_t sub_100005DC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100005DE0(void *a1, uint64_t a2, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a3)
{
  v6 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  v8 = a1;

  v9 = sub_10001CDFC();
  v10 = sub_10001D4CC();
  a3, v11, v12, v13, v14, v50, v15, v16, v17;

  if (os_log_type_enabled(v9, v10))
  {
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v18 = 136315650;
    v19 = [v8 identifier];
    v20 = v6;
    v21 = sub_10001D30C();
    v22 = a2;
    v24 = v23;

    v25 = sub_100017934(v21, v24, &v48);
    v24, v26, v27, v28, v29, v51, v30, v31, v32;
    *(v18 + 4) = v25;
    v6 = v20;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v8;
    *v45 = v8;
    *(v18 + 22) = 2080;
    v33 = v8;
    *(v18 + 24) = sub_100017934(v22, a3, &v48);
    _os_log_impl(&_mh_execute_header, v9, v10, "#ContactsButton adding contact with ID %s (%@) to bundle %s", v18, 0x20u);
    sub_100002E94(v45);

    swift_arrayDestroy();
  }

  v34 = sub_10001D2DC();
  v35 = [v8 identifier];
  if (!v35)
  {
    sub_10001D30C();
    v37 = v36;
    v46 = sub_10001D2DC();
    v37, v38, v39, v40, v41, v52, v42, v43, v44;
    v35 = v46;
  }

  v47 = v35;
  [v6 addLimitedAccessForBundle:v34 contactIdentifier:?];
}

uint64_t sub_10000609C(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, void *a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = sub_10001D2DC();
  v9 = [v7 predicateForContactsMatchingName:v8 options:1];

  sub_100002EFC(&unk_10002DDD0, &unk_10001E5D0);
  isa = sub_10001D3EC().super.isa;
  v31 = 0;
  v11 = [a3 unifiedContactsMatchingPredicate:v9 keysToFetch:isa error:&v31];

  v12 = v31;
  if (v11)
  {
    sub_1000072F8(0, &unk_10002DE00, CNContact_ptr);
    v13 = sub_10001D3FC();
    v14 = v12;
  }

  else
  {
    v15 = v31;
    sub_10001CCFC();

    swift_willThrow();
    if (qword_10002D8B0 != -1)
    {
      swift_once();
    }

    v16 = sub_10001CE1C();
    sub_1000023A4(v16, qword_10002E558);

    swift_errorRetain();
    v17 = sub_10001CDFC();
    v18 = sub_10001D4EC();
    a2, v19, v20, v21, v22, v32, v23, v24, v25;

    if (os_log_type_enabled(v17, v18))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_100017934(a1, a2, &v31);
      *(v26 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v17, v18, "#ContactsButton query failed for %s: %@", v26, 0x16u);
      sub_100002E94(v27);

      sub_100002F44(v28);
    }

    else
    {
    }

    return 0;
  }

  return v13;
}

uint64_t sub_1000063A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10001D4AC();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100004F38(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v16, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

unint64_t sub_10000643C(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return a1;
  }

  v3 = a2;
  sub_1000072F8(0, &qword_10002DDE0, NSArray_ptr);
  v4 = &_swiftEmptyArrayStorage;
  v34 = sub_10001D55C();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = sub_1000178B0(*(v3 + 16), 0);
    v8 = sub_1000058A8(v37, v7 + 4, v5, v3);
    v9 = v37[0];
    a1 = v37[1];
    v4 = v37[2];

    sub_1000072F0(v9);
    if (v8 != v5)
    {
      __break(1u);
      goto LABEL_32;
    }

    a1 = v6;
    v4 = &_swiftEmptyArrayStorage;
  }

  v10 = objc_opt_self();
  isa = sub_10001D3EC().super.isa;

  v37[0] = v34;
  v12 = [v10 emailAddressesFromStrings:isa invalidAddresses:v37];

  v9 = v37[0];
  v7 = v37[0];

  sub_1000072F8(0, &qword_10002DDE8, ECEmailAddress_ptr);
  v3 = sub_10001D3FC();

  if (v7 && [v7 count] >= 1)
  {
    if (qword_10002D8B0 == -1)
    {
LABEL_9:
      v13 = sub_10001CE1C();
      sub_1000023A4(v13, qword_10002E558);
      v14 = sub_10001CDFC();
      v15 = sub_10001D4EC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v7;
        *v17 = v9;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v14, v15, "#ContactsButton failed to convert these addresses: %@", v16, 0xCu);
        sub_100002E94(v17);
      }

      goto LABEL_12;
    }

LABEL_32:
    swift_once();
    goto LABEL_9;
  }

LABEL_12:
  v37[0] = v4;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001D64C())
  {
    v33 = v7;
    v35 = i;
    v20 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = sub_10001D5DC();
      }

      else
      {
        if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v36 = v21;
      sub_100004A7C(&v36, v3);
      if (v24)
      {
        sub_10001D5FC();
        v7 = (a1 & 0xC000000000000001);
        sub_10001D62C();
        sub_10001D63C();
        sub_10001D60C();
        i = v35;
      }

      else
      {
      }

      ++v20;
      if (v23 == i)
      {
        a1 = v37[0];
        v7 = v33;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  a1 = &_swiftEmptyArrayStorage;
LABEL_29:

  v3, v25, v26, v27, v28, v38, v29, v30, v31;
  return a1;
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_10000685C(_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a1, uint64_t a2, void *a3)
{
  if (!*(a2 + 16))
  {

    return a1;
  }

  v5 = a2;
  v147 = &_swiftEmptyArrayStorage;
  v6 = *(a2 + 56);
  v134 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v138 = (v7 + 63) >> 6;

  v10 = 0;
  v139 = a1;
  v136 = a3;
  for (i = v5; ; v5 = i)
  {
    do
    {
      if (!v9)
      {
        do
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v11 >= v138)
          {

            v145 = &_swiftEmptyArrayStorage;
            if (a1 >> 62)
            {
              goto LABEL_56;
            }

            v88 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_36;
          }

          v9 = *(v134 + 8 * v11);
          ++v10;
        }

        while (!v9);
        v10 = v11;
      }

      v12 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = 0xE000000000000000;
      v145 = 0;
      v146 = 0xE000000000000000;
      v16 = (v13 >> 56) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v141 = v14;
      v142 = v13;
      v143 = 0;
      v144 = v16;

      v17 = sub_10001D39C();
      if (v18)
      {
        v29 = v17;
        v30 = v18;
        do
        {
          if ((sub_10001D2AC() & 1) == 0)
          {
            v148._countAndFlagsBits = v29;
            v148._object = v30;
            sub_10001D37C(v148);
          }

          v30, v32, v33, v34, v35, *&v39, v36, v37, v38;
          v29 = sub_10001D39C();
          v30 = v31;
        }

        while (v31);
        v43 = v145;
        v15 = v146;
      }

      else
      {
        v43 = 0;
      }

      v9 &= v9 - 1;
      v142, 0, v19, v20, v21, *&v25, v22, v23, v24;
      v44 = sub_10000609C(v43, v15, a3, &_swiftEmptyArrayStorage);
      v15, v45, v46, v47, v48, v149, v49, v50, v51;
    }

    while (!v44);
    if (v44 >> 62)
    {
      v63 = v44;
      v64 = sub_10001D64C();
      if (!v64)
      {
LABEL_32:
        v63, v52, v53, v54, v55, *&v59, v56, v57, v58;
        v66 = &_swiftEmptyArrayStorage;
        goto LABEL_33;
      }
    }

    else
    {
      v63 = v44;
      v64 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        goto LABEL_32;
      }
    }

    v141 = &_swiftEmptyArrayStorage;
    sub_1000181D0(0, v64 & ~(v64 >> 63), 0);
    if (v64 < 0)
    {
      break;
    }

    v135 = v9;
    v65 = 0;
    v66 = v141;
    v67 = v63;
    v140 = v63 & 0xC000000000000001;
    v68 = v63;
    do
    {
      if (v140)
      {
        v69 = sub_10001D5DC();
      }

      else
      {
        v69 = *&v67->auditToken[8 * v65 + 12];
      }

      v70 = v69;
      v71 = [v69 identifier];
      v72 = sub_10001D30C();
      v74 = v73;

      v141 = v66;
      v86 = *v66->slotID;
      v85 = *&v66->auditToken[4];
      if (v86 >= v85 >> 1)
      {
        sub_1000181D0((v85 > 1), v86 + 1, 1);
        v66 = v141;
      }

      ++v65;
      *v66->slotID = v86 + 1;
      v87 = v66 + 16 * v86;
      *(v87 + 4) = v72;
      *(v87 + 5) = v74;
      v67 = v68;
    }

    while (v64 != v65);
    v68, v68, v75, v76, v77, *&v81, v78, v79, v80;
    a1 = v139;
    v9 = v135;
LABEL_33:
    sub_100004E20(v66);
    a3 = v136;
  }

  while (1)
  {
    __break(1u);
LABEL_56:
    v88 = sub_10001D64C();
LABEL_36:

    if (!v88)
    {
      break;
    }

    v100 = 0;
    v140 = a1 & 0xC000000000000001;
    v138 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v140)
      {
        v101 = sub_10001D5DC();
      }

      else
      {
        if (v100 >= *(v138 + 16))
        {
          goto LABEL_54;
        }

        v101 = *&a1->auditToken[8 * v100 + 12];
      }

      v102 = v101;
      v103 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      v104 = v147;

      v105 = [v102 identifier];
      v106 = sub_10001D30C();
      v108 = v107;

      v141 = v106;
      v142 = v108;
      __chkstk_darwin(v109);
      v133[2] = &v141;
      LOBYTE(v105) = sub_1000057FC(sub_100007298, v133, v104);
      v108, v110, v111, v112, v113, v150, v114, v115, v116;
      v104, v117, v118, v119, v120, v151, v121, v122, v123;
      if (v105)
      {
      }

      else
      {
        sub_10001D5FC();
        sub_10001D62C();
        sub_10001D63C();
        sub_10001D60C();
      }

      a1 = v139;
      ++v100;
      if (v103 == v88)
      {
        v124 = v145;
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  v124 = &_swiftEmptyArrayStorage;
LABEL_50:
  a1, v89, v90, v91, v92, *&v96, v93, v94, v95;
  v147, v125, v126, v127, v128, v152, v129, v130, v131;
  return v124;
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_100006D28(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_allocWithZone(CNContactStore) init];
  v9 = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  sub_100002EFC(&qword_10002DDC8, &unk_10001E5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E580;
  *(inited + 56) = swift_getObjectType();
  *(inited + 32) = v9;
  v11 = sub_10001D30C();
  *(inited + 88) = &type metadata for String;
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = sub_10001D30C();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  v15 = sub_10001D30C();
  *(inited + 152) = &type metadata for String;
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  v17 = sub_10001D30C();
  *(inited + 184) = &type metadata for String;
  v18 = v8;
  *(inited + 160) = v17;
  *(inited + 168) = v19;
  swift_unknownObjectRetain();
  v20 = sub_1000048B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = sub_10000609C(a1, a2, v8, v20);
  v20, v22, v23, v24, v25, v134, v26, v27, v28;
  if (!v21)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v29 = sub_10001D2DC();
  v30 = [v8 fetchLimitedAccessContactIdentifiersForBundle:v29];

  v31 = sub_10001D3FC();
  v32 = sub_1000063A4(v31);
  v31, v33, v34, v35, v36, v135, v37, v38, v39;
  if (qword_10002D8B0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = sub_10001CE1C();
    sub_1000023A4(v40, qword_10002E558);

    v41 = sub_10001CDFC();
    v42 = sub_10001D4DC();
    v32, v43, v44, v45, v46, v136, v47, v48, v49;
    if (os_log_type_enabled(v41, v42))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v132[0] = v51;
      *v50 = 136315138;
      v52 = sub_10001D49C();
      v54 = v53;
      v55 = sub_100017934(v52, v53, v132);
      v54, v56, v57, v58, v59, v137, v60, v61, v62;
      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v41, v42, "#ContactsButton already have contacts with IDs: %s", v50, 0xCu);
      sub_100002F44(v51);
    }

    v133 = &_swiftEmptyArrayStorage;
    v74 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      break;
    }

    v75 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v75)
    {
      goto LABEL_32;
    }

LABEL_7:
    v126 = v18;
    v127 = v21;
    v76 = 0;
    v130 = v21 + 32;
    v131 = v21 & 0xC000000000000001;
    v18 = (v32 + 56);
    while (1)
    {
      if (v131)
      {
        v77 = sub_10001D5DC();
      }

      else
      {
        if (v76 >= *(v74 + 16))
        {
          goto LABEL_29;
        }

        v77 = *(v130 + 8 * v76);
      }

      v78 = v77;
      if (__OFADD__(v76++, 1))
      {
        break;
      }

      v21 = v74;
      v80 = [v77 identifier];
      v81 = sub_10001D30C();
      v83 = v82;

      if (*(v32 + 16) && (sub_10001D6FC(), sub_10001D35C(), v95 = sub_10001D70C(), v96 = -1 << *(v32 + 32), v97 = v95 & ~v96, ((*&v18[(v97 >> 3) & 0xFFFFFFFFFFFFFF8] >> v97) & 1) != 0))
      {
        v98 = ~v96;
        while (1)
        {
          v99 = (*(v32 + 48) + 16 * v97);
          v100 = *v99 == v81 && v99[1] == v83;
          if (v100 || (sub_10001D6BC() & 1) != 0)
          {
            break;
          }

          v97 = (v97 + 1) & v98;
          if (((*&v18[(v97 >> 3) & 0xFFFFFFFFFFFFFF8] >> v97) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v83, v101, v102, v103, v104, v138, v105, v106, v107;
      }

      else
      {
LABEL_8:
        v83, v84, v85, v86, v87, *&v91, v88, v89, v90;
        sub_10001D5FC();
        sub_10001D62C();
        sub_10001D63C();
        sub_10001D60C();
      }

      v74 = v21;
      if (v76 == v75)
      {
        v108 = v133;
        v18 = v126;
        v21 = v127;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v75 = sub_10001D64C();
  if (v75)
  {
    goto LABEL_7;
  }

LABEL_32:
  v108 = &_swiftEmptyArrayStorage;
LABEL_33:
  v21, v63, v64, v65, v66, *&v70, v67, v68, v69;
  v32, v110, v111, v112, v113, v139, v114, v115, v116;
  v117 = sub_10000643C(v108, a5);

  v109 = sub_10000685C(v117, a6, v18);

  v117, v118, v119, v120, v121, v140, v122, v123, v124;
  swift_unknownObjectRelease();
  return v109;
}

uint64_t sub_100007298(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10001D6BC() & 1;
  }
}

uint64_t sub_1000072F8(uint64_t a1, unint64_t *a2, void *a3)
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

Class sub_100007364(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000089D4();
    v4.super.isa = sub_10001D28C().super.isa;
    v3, v5, v6, v7, v8, v14, v9, v10, v11;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1000073F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002EFC(&unk_10002DEB0, ">B");
  v35 = v4;
  result = sub_10001D66C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10001D6FC();
      sub_10001D35C();
      result = sub_10001D70C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100007694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100017EE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000073F0(v16, a4 & 1);
      v11 = sub_100017EE0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10001D6DC();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000780C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_10000780C()
{
  v1 = v0;
  sub_100002EFC(&unk_10002DEB0, ">B");
  v2 = *v0;
  v3 = sub_10001D65C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

uint64_t sub_100007978(void *a1)
{
  v2 = sub_10001CC9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 domain];
  v7 = sub_10001D30C();
  v9 = v8;

  sub_10001CC7C();
  v10 = sub_10001CBDC();
  v22 = v11;
  if (v7 == v10 && v9 == v11)
  {
    v9, v11, v12, v13, v14, *&v18, v15, v16, v17;
    v22, v67, v68, v69, v70, v95, v71, v72, v73;
  }

  else
  {
    v24 = sub_10001D6BC();
    v9, v25, v26, v27, v28, v91, v29, v30, v31;
    v22, v32, v33, v34, v35, v92, v36, v37, v38;
    if ((v24 & 1) == 0)
    {
      if (qword_10002D8B0 != -1)
      {
        swift_once();
      }

      v39 = sub_10001CE1C();
      sub_1000023A4(v39, qword_10002E558);
      v40 = a1;
      v41 = sub_10001CDFC();
      v42 = sub_10001D4EC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v43 = 136315394;
        v44 = sub_10001CBDC();
        v46 = v45;
        v47 = sub_100017934(v44, v45, &v90);
        v46, v48, v49, v50, v51, v93, v52, v53, v54;
        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v55 = [v40 domain];
        v56 = sub_10001D30C();
        v58 = v57;

        v59 = sub_100017934(v56, v58, &v90);
        v58, v60, v61, v62, v63, v94, v64, v65, v66;
        *(v43 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v41, v42, "#ContactsButton #Analytics only %s is valid for this initter, got %s", v43, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  v74 = [a1 code];
  v75 = *(v3 + 104);
  v75(v5, enum case for ContactButtonServiceErrorType.avatarTooLarge(_:), v2);
  v76 = sub_10001CC8C();
  v77 = *(v3 + 8);
  v77(v5, v2);
  if (v76 == v74)
  {

    return 1;
  }

  v75(v5, enum case for ContactButtonServiceErrorType.fontTooBig(_:), v2);
  v79 = sub_10001CC8C();
  v77(v5, v2);
  if (v79 == v74)
  {

    return 0x1000000;
  }

  v75(v5, enum case for ContactButtonServiceErrorType.fontTooSmall(_:), v2);
  v80 = sub_10001CC8C();
  v77(v5, v2);
  if (v80 == v74)
  {

    return 0x10000;
  }

  v75(v5, enum case for ContactButtonServiceErrorType._oldTimestamp(_:), v2);
  v81 = sub_10001CC8C();
  v77(v5, v2);
  if (v81 == v74)
  {

    return 0x100000000000000;
  }

  v75(v5, enum case for ContactButtonServiceErrorType.invalidContrast(_:), v2);
  v82 = sub_10001CC8C();
  v77(v5, v2);
  if (v82 == v74)
  {
    goto LABEL_22;
  }

  v75(v5, enum case for ContactButtonServiceErrorType.buttonOccluded(_:), v2);
  v83 = sub_10001CC8C();
  v77(v5, v2);
  if (v83 == v74)
  {
    goto LABEL_22;
  }

  v75(v5, enum case for ContactButtonServiceErrorType._mismatchedTokenPid(_:), v2);
  v84 = sub_10001CC8C();
  v77(v5, v2);
  if (v84 == v74)
  {

    return 0x1000000000000;
  }

  v75(v5, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v2);
  v85 = sub_10001CC8C();
  v77(v5, v2);
  if (v85 == v74 || (v75(v5, enum case for ContactButtonServiceErrorType._missingAuthMessage(_:), v2), v86 = sub_10001CC8C(), v77(v5, v2), v86 == v74))
  {
LABEL_22:

    return 0;
  }

  v75(v5, enum case for ContactButtonServiceErrorType._slotIDMismatch(_:), v2);
  v87 = sub_10001CC8C();
  v77(v5, v2);
  if (v87 == v74)
  {

    return &_mh_execute_header;
  }

  else
  {
    v75(v5, enum case for ContactButtonServiceErrorType._invalidTimestamp(_:), v2);
    v88 = sub_10001CC8C() == v74;

    v77(v5, v2);
    return v88 << 40;
  }
}

void sub_100008030(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = swift_allocObject();
  v8 = a2;
  v9 = v7;
  v10 = &_swiftEmptyDictionarySingleton;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  if (v8)
  {
    v11 = sub_10001D2DC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = &_swiftEmptyDictionarySingleton;
    *(v9 + 16) = 0x8000000000000000;
    sub_100007694(v11, 0x4449656C646E7542, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v10 = aBlock[0];
    *(v9 + 16) = aBlock[0];
  }

  v60 = HIWORD(a3) & 1;
  v61 = HIBYTE(a3) & 1;
  v59 = (a3 >> 40) & 1;
  v13 = HIDWORD(a3) & 1;
  v14 = (a3 >> 24) & 1;
  v15 = (a3 >> 16) & 1;
  v16 = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v10;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v16, 0x6F54726174617641, 0xEE00656772614C6FLL, v17);
  v18 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v19 = [objc_allocWithZone(NSNumber) initWithBool:v14];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v18;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v19, 0x4C6F6F54746E6F46, 0xEC00000065677261, v20);
  v21 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v22 = [objc_allocWithZone(NSNumber) initWithBool:v15];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v21;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v22, 0x536F6F54746E6F46, 0xEC0000006C6C616DLL, v23);
  v24 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v25 = [objc_allocWithZone(NSNumber) initWithBool:v13];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v25, 0x5364696C61766E49, 0xED00004449746F6CLL, v26);
  v27 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v28 = [objc_allocWithZone(NSNumber) initWithBool:v59];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v27;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v28, 0xD000000000000015, 0x8000000100021290, v29);
  v30 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v31 = [objc_allocWithZone(NSNumber) initWithBool:v60];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v30;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v31, 0xD000000000000012, 0x80000001000212B0, v32);
  v33 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v34 = [objc_allocWithZone(NSNumber) initWithBool:v61];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v33;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v34, 0xD000000000000011, 0x80000001000212D0, v35);
  v36 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v37 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  v38 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v36;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v37, 0x746E6F43726F6F50, 0xEC00000074736172, v38);
  v39 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v40 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 8) & 1];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v39;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v40, 0xD000000000000015, 0x80000001000212F0, v41);
  v42 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v43 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 16) & 1];
  v44 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v42;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v43, 0x4C6F6F5477656956, 0xEC00000065677261, v44);
  v45 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v46 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 24) & 1];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v45;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v46, 0x536F6F5477656956, 0xEC0000006C6C616DLL, v47);
  v48 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v49 = [objc_allocWithZone(NSNumber) initWithBool:HIDWORD(a4) & 1];
  v50 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v48;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v49, 0x6E61725477656956, 0xEF746E6572617073, v50);
  v51 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v52 = [objc_allocWithZone(NSNumber) initWithBool:(a4 >> 40) & 1];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v51;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v52, 0x4373615777656956, 0xED000066664F7475, v53);
  v54 = aBlock[0];
  *(v9 + 16) = aBlock[0];
  v55 = [objc_allocWithZone(NSNumber) initWithBool:HIWORD(a4) & 1];
  v56 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v54;
  *(v9 + 16) = 0x8000000000000000;
  sub_100007694(v55, 0xD000000000000019, 0x8000000100021310, v56);
  *(v9 + 16) = aBlock[0];
  v57 = sub_10001D2DC();
  aBlock[4] = sub_100008A20;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007364;
  aBlock[3] = &unk_1000294A8;
  v58 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v58);
}

void sub_1000086FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = &_swiftEmptyDictionarySingleton;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v5, 0x686374614D6D754ELL, 0xEA00000000007365, isUniquelyReferenced_nonNull_native);
  v7 = v15[0];
  *(v4 + 16) = v15[0];
  v8 = [objc_allocWithZone(NSNumber) initWithBool:a2 == 1];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v7;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v8, 0x6574617453434354, 0xEE00656E6F4E7349, v9);
  v10 = v15[0];
  *(v4 + 16) = v15[0];
  v11 = [objc_allocWithZone(NSNumber) initWithBool:a2 == 2];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v10;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v11, 0xD000000000000011, 0x8000000100021220, v12);
  *(v4 + 16) = v15[0];
  v13 = sub_10001D2DC();
  v15[4] = sub_100008988;
  v15[5] = v4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007364;
  v15[3] = &unk_100029480;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_100008950(double a1, double a2, double a3, double a4, uint64_t a5, const char *a6, void *a7, unint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  *(v12 + 16), a6, a7, a8, a9, *&a1, a10, a11, a12;

  return _swift_deallocObject(v12, 24, 7);
}

uint64_t sub_100008988()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending success event: %s", vars0);
}

uint64_t sub_1000089BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000089D4()
{
  result = qword_10002DEA8;
  if (!qword_10002DEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DEA8);
  }

  return result;
}

uint64_t sub_100008A20()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending fail event: %s", vars0);
}

void sub_100008A54(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = &_swiftEmptyDictionarySingleton;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v5, 0xD000000000000011, 0x8000000100021360, isUniquelyReferenced_nonNull_native);
  v7 = v22[0];
  *(v4 + 16) = v22[0];
  v8 = [objc_allocWithZone(NSNumber) initWithBool:a1 == 0];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v7;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v8, 0xD000000000000014, 0x8000000100021380, v9);
  v10 = v22[0];
  *(v4 + 16) = v22[0];
  v11 = [objc_allocWithZone(NSNumber) initWithBool:a1 == 1];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v10;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v11, 0xD000000000000016, 0x80000001000213A0, v12);
  v13 = v22[0];
  *(v4 + 16) = v22[0];
  v14 = a1 > 9;
  v15 = [objc_allocWithZone(NSNumber) initWithBool:(a1 - 2) < 8];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v13;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v15, 0xD000000000000019, 0x80000001000213C0, v16);
  v17 = v22[0];
  *(v4 + 16) = v22[0];
  v18 = [objc_allocWithZone(NSNumber) initWithBool:v14];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = v17;
  *(v4 + 16) = 0x8000000000000000;
  sub_100007694(v18, 0xD000000000000016, 0x80000001000213E0, v19);
  *(v4 + 16) = v22[0];
  v20 = sub_10001D2DC();
  v22[4] = sub_100008D60;
  v22[5] = v4;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100007364;
  v22[3] = &unk_1000294D0;
  v21 = _Block_copy(v22);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_100008D60()
{
  sub_100008D94(v0, "#ContactsButton #Analytics sending display event: %s", vars0);
}

uint64_t sub_100008D94(uint64_t a1, const char *a2, ...)
{
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CE1C();
  sub_1000023A4(v4, qword_10002E558);

  v5 = sub_10001CDFC();
  v6 = sub_10001D4CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(a1 + 16);
    sub_1000089D4();

    v10 = sub_10001D29C();
    v12 = v11;
    v9, v11, v13, v14, v15, v29, v16, v17, v18;
    v19 = sub_100017934(v10, v12, v28);
    v12, v20, v21, v22, v23, v30, v24, v25, v26;
    *(v7 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
    sub_100002F44(v8);
  }

  swift_beginAccess();
  return *(a1 + 16);
}

uint64_t sub_100008F70()
{
  result = sub_10001D21C();
  v1 = 4.0;
  if (result)
  {
    v1 = 0.0;
  }

  dword_10002E538 = LODWORD(v1);
  return result;
}

id sub_100008FA0()
{
  result = [objc_opt_self() grayColor];
  qword_10002E540 = result;
  return result;
}

uint64_t sub_100008FDC()
{
  result = sub_10001D21C();
  v1 = 32.0;
  if ((result & 1) == 0)
  {
    v1 = 30.0;
  }

  qword_10002E548 = *&v1;
  return result;
}

BOOL sub_100009018()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth;
  v3 = *&v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth];
  v4 = &v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  v5 = CGRectGetWidth(*&v0[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame]) + 0.01;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v6 = v3 / v5;
  v7 = sub_10001CE1C();
  sub_1000023A4(v7, qword_10002E558);
  v8 = v0;
  v9 = sub_10001CDFC();
  v10 = sub_10001D4CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = *&v1[v2];
    *(v11 + 12) = 2048;
    *(v11 + 14) = CGRectGetWidth(*v4);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v9, v10, "#ContactsButton avatar width %f to frame width %f is %f", v11, 0x20u);
  }

  return v6 <= 0.45;
}

id sub_10000918C(void *a1)
{
  [a1 setAccessibilityContrast:0];

  return [a1 setAccessibilityButtonShapes:0];
}

void sub_1000091DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100009314(char a1, double a2)
{
  v3 = v2;
  v5 = &OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_tintColor;
  if ((a1 & 1) == 0)
  {
    v5 = &OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor;
  }

  v6 = *&v2[*v5];
  v7 = [v6 CGColor];
  Alpha = CGColorGetAlpha(v7);

  v9 = Alpha * a2;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  sub_10000F168(v6, v11, Alpha * a2);
  v13 = v12;

  v14 = [v10 blackColor];
  sub_10000F168(v6, v14, v9);
  v16 = v15;

  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v17 = sub_10001CE1C();
  sub_1000023A4(v17, qword_10002E558);
  v18 = v3;
  v19 = sub_10001CDFC();
  v20 = sub_10001D4DC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134219008;
    *(v21 + 4) = a2;
    *(v21 + 12) = 2048;
    v22 = [*&v18[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor] CGColor];
    v23 = CGColorGetAlpha(v22);

    *(v21 + 14) = v23;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v9;
    *(v21 + 32) = 2048;
    *(v21 + 34) = v13;
    *(v21 + 42) = 2048;
    *(v21 + 44) = v16;
    _os_log_impl(&_mh_execute_header, v19, v20, "#ContactsButton contrastRatio for font, cumulativeOpacity %f , fontAlpha %f , fontEffectiveOpacity %f , luminanceVsWhite %f , luminanceVsBlack %f", v21, 0x34u);
  }

  v24 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor;
  v25 = [*&v18[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor] CGColor];
  v26 = CGColorGetAlpha(v25);

  v27 = v26 * a2;
  v28 = *&v18[v24];
  v29 = [v10 whiteColor];
  sub_10000F168(v28, v29, v26 * a2);
  v31 = v30;

  v32 = *&v18[v24];
  v33 = [v10 blackColor];
  sub_10000F168(v32, v33, v27);
  v35 = v34;

  v36 = v18;
  v37 = sub_10001CDFC();
  v38 = sub_10001D4DC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134219008;
    *(v39 + 4) = a2;
    *(v39 + 12) = 2048;
    v40 = [*&v18[v24] CGColor];
    v41 = CGColorGetAlpha(v40);

    *(v39 + 14) = v41;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v27;
    *(v39 + 32) = 2048;
    *(v39 + 34) = v31;
    *(v39 + 42) = 2048;
    *(v39 + 44) = v35;
    _os_log_impl(&_mh_execute_header, v37, v38, "#ContactsButton contrastRatio for BG, cumulativeOpacity %f , fontAlpha %f , fontEffectiveOpacity %f , luminanceVsWhite %f , luminanceVsBlack %f", v39, 0x34u);
  }

  v42 = (v16 + 0.05) / (v31 + 0.05);
  if (v42 < 1.5)
  {
    v43 = (v35 + 0.05) / (v13 + 0.05);
    v44 = sub_10001CDFC();
    if (v43 < 1.5)
    {
      v45 = sub_10001D4EC();
      if (!os_log_type_enabled(v44, v45))
      {
        v47 = 0;
        goto LABEL_21;
      }

      v46 = swift_slowAlloc();
      *v46 = 134218496;
      *(v46 + 4) = v42;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v43;
      *(v46 + 22) = 2048;
      *(v46 + 24) = 0x3FF8000000000000;
      _os_log_impl(&_mh_execute_header, v44, v45, "#ContactsButton contrast ratio failed! fontDarkToWhite: %f , bgDarkToFontWhite %f, thresholdFont %f", v46, 0x20u);
      v47 = 0;
      goto LABEL_18;
    }

    v48 = sub_10001D4DC();
    if (os_log_type_enabled(v44, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v43;
      v50 = "#ContactsButton luminance ratio OK for font brightest to background darkest: %f";
      goto LABEL_17;
    }

LABEL_19:
    v47 = 1;
    goto LABEL_21;
  }

  v44 = sub_10001CDFC();
  v48 = sub_10001D4DC();
  if (!os_log_type_enabled(v44, v48))
  {
    goto LABEL_19;
  }

  v49 = swift_slowAlloc();
  *v49 = 134217984;
  *(v49 + 4) = v42;
  v50 = "#ContactsButton luminance ratio OK for font darkest to background brightest: %f";
LABEL_17:
  _os_log_impl(&_mh_execute_header, v44, v48, v50, v49, 0xCu);
  v47 = 1;
LABEL_18:

LABEL_21:

  return v47;
}

void sub_100009A60(double a1)
{
  sub_100002EFC(&unk_10002E330, &qword_10001EBA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001E6B0;
  *(inited + 32) = kCGImageSourceCreateThumbnailFromImageIfAbsent;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCGImageSourceCreateThumbnailWithTransform;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
  *(inited + 144) = &type metadata for CGFloat;
  *(inited + 120) = a1 * 4.0;
  v4 = kCGImageSourceCreateThumbnailFromImageIfAbsent;
  v5 = kCGImageSourceCreateThumbnailWithTransform;
  v6 = kCGImageSourceThumbnailMaxPixelSize;
  v7 = sub_100018DE8(inited);
  swift_setDeallocating();
  sub_100002EFC(&qword_10002E510, &qword_10001EBB0);
  swift_arrayDestroy();
  v19 = *v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData;
  v20 = *(v19 + 8);
  if (v20 >> 60 == 15)
  {
    v7, v8, v9, v10, v11, *&v15, v12, v13, v14;
    sub_10000F258();
    return;
  }

  v21 = *v19;
  sub_100010F80(*v19, *(v19 + 8));
  isa = sub_10001CD4C().super.isa;
  v23 = CGImageSourceCreateWithData(isa, 0);

  if (v23)
  {
    type metadata accessor for CFString(0);
    sub_100010FD4(&qword_10002E340, type metadata accessor for CFString, &unk_10001E4F4);
    v24 = v23;
    v25 = sub_10001D28C().super.isa;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v24, 0, v25);
    sub_10000F908(v21, v20);

    if (ThumbnailAtIndex)
    {
      v7, v27, v28, v29, v30, *&v34, v31, v32, v33;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL sub_100009C84()
{
  v1 = v0;
  v2 = sub_10001CD9C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F00(v4, v7);
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v8 = sub_10001CE1C();
  sub_1000023A4(v8, qword_10002E558);
  sub_100010280(v0, v30);
  v9 = sub_10001CDFC();
  v10 = sub_10001D50C();
  sub_1000102B8(v1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315138;
    v14 = [*(v1 + 8) localization];
    v15 = sub_10001D30C();
    v17 = v16;

    v18 = sub_100017934(v15, v17, v30);
    v17, v19, v20, v21, v22, v31, v23, v24, v25;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "#ContactsButton localization value: %s", v12, 0xCu);
    sub_100002F44(v13);

    v2 = v29;
  }

  v26 = [*(v1 + 8) localization];
  sub_10001D30C();

  sub_10001CD7C();
  v27 = sub_10001CD8C();
  (*(v3 + 8))(v6, v2);
  return v27 != 1;
}

void sub_100009F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CE1C();
  sub_1000023A4(v4, qword_10002E558);
  sub_100010280(v2, v9);
  v5 = sub_10001CDFC();
  v6 = sub_10001D50C();
  sub_1000102B8(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218752;
    *(v7 + 4) = *(v3[2] + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth);
    *(v7 + 12) = 2048;
    v8 = *v3;
    *(v7 + 14) = *(*v3 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonWidth);
    *(v7 + 22) = 2048;
    *(v7 + 24) = *(v8 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonHeight);
    *(v7 + 32) = 2048;
    *(v7 + 34) = *(v8 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_trailingEdgeFromAvatar);
    _os_log_impl(&_mh_execute_header, v5, v6, "#ContactsButton avatarWidth: %f buttonWidth: %f buttonHeight: %f trailingEdgeFromAvatar: %f", v7, 0x2Au);
  }
}

uint64_t sub_10000A058@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_100002EFC(&qword_10002E060, &qword_10001E8E8);
  __chkstk_darwin(v2 - 8);
  v55 = &v48 - v3;
  v4 = sub_10001CE3C();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v56 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002EFC(&qword_10002E068, &qword_10001E8F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_10001CEDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002EFC(&qword_10002E140, &qword_10001EA40);
  __chkstk_darwin(v13 - 8);
  v15 = &v48 - v14;
  v16 = sub_100002EFC(&qword_10002E148, &qword_10001EA48);
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_100002EFC(&qword_10002E150, &qword_10001EA50);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v48 = &v48 - v20;
  v49 = sub_100002EFC(&qword_10002E158, &qword_10001EA58);
  __chkstk_darwin(v49);
  v50 = &v48 - v21;
  *v15 = sub_10001CF7C();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v22 = sub_100002EFC(&qword_10002E160, &qword_10001EA60);
  sub_10000A6F4(v1, &v15[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  v24 = v1;
  v25 = sub_100009C84();
  v26 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v25)
  {
    v26 = &enum case for LayoutDirection.leftToRight(_:);
  }

  (*(v10 + 104))(v12, *v26, v9);
  v27 = &v18[*(v16 + 36)];
  v28 = sub_100002EFC(&qword_10002E0A0, &qword_10001E950);
  (*(v10 + 32))(v27 + *(v28 + 28), v12, v9);
  *v27 = KeyPath;
  sub_1000100C4(v15, v18);
  v29 = *v24;
  v30 = *(*v24 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory);
  sub_10001CECC();
  v31 = sub_10001CEBC();
  v32 = *(v31 - 8);
  result = (*(v32 + 48))(v8, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100010134();
    v34 = v48;
    sub_10001D12C();
    sub_100010EC8(v18, &qword_10002E148, &qword_10001EA48);
    (*(v32 + 8))(v8, v31);
    [v24[1] userInterfaceStyle];
    v35 = v55;
    sub_10001CE4C();
    v37 = v53;
    v36 = v54;
    v38 = *(v53 + 48);
    if (v38(v35, 1, v54) == 1)
    {
      v39 = v56;
      (*(v37 + 104))(v56, enum case for ColorScheme.light(_:), v36);
      if (v38(v35, 1, v36) != 1)
      {
        sub_100010EC8(v35, &qword_10002E060, &qword_10001E8E8);
      }
    }

    else
    {
      v39 = v56;
      (*(v37 + 32))(v56, v35, v36);
    }

    v40 = swift_getKeyPath();
    v41 = v50;
    v42 = &v50[*(v49 + 36)];
    v43 = sub_100002EFC(&qword_10002E0C8, &qword_10001E990);
    (*(v37 + 32))(v42 + *(v43 + 28), v39, v36);
    *v42 = v40;
    (*(v51 + 32))(v41, v34, v52);
    v44 = *(v29 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor);
    v45 = sub_10001D1AC();
    LOBYTE(v42) = sub_10001CFFC();
    v46 = v57;
    sub_100010218(v41, v57, &qword_10002E158, &qword_10001EA58);
    result = sub_100002EFC(&qword_10002E178, &qword_10001EA68);
    v47 = v46 + *(result + 36);
    *v47 = v45;
    *(v47 + 8) = v42;
  }

  return result;
}

uint64_t sub_10000A6F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100002EFC(&qword_10002E180, &qword_10001EA70);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = sub_100002EFC(&qword_10002E188, &qword_10001EA78);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v43 - v13);
  *v14 = sub_10001D24C();
  v14[1] = v15;
  v16 = sub_100002EFC(&qword_10002E190, &qword_10001EA80);
  sub_10000AB94(a1, v14 + *(v16 + 44));
  v47 = sub_10001CFAC();
  LOBYTE(v54[0]) = 1;
  sub_10000BA7C(a1, v69);
  *(&v67[1] + 7) = v69[1];
  *(&v67[2] + 7) = v69[2];
  *(&v67[3] + 7) = v69[3];
  *(&v67[4] + 7) = v70;
  *(v67 + 7) = v69[0];
  v45 = LOBYTE(v54[0]);
  v17 = *(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor);
  v44 = sub_10001D13C();
  v18 = sub_10001D02C();
  v19 = sub_10001D03C();
  sub_10001D03C();
  if (sub_10001D03C() != v18)
  {
    v19 = sub_10001D03C();
  }

  sub_10001CE2C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v68 = 0;
  *v8 = sub_10001CFBC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v28 = sub_100002EFC(&qword_10002E198, &qword_10001EA88);
  sub_10000BED8(a1, &v8[*(v28 + 44)]);
  v43 = v12;
  sub_100010E60(v14, v12, &qword_10002E188, &qword_10001EA78);
  sub_100010E60(v8, v6, &qword_10002E180, &qword_10001EA70);
  v29 = v46;
  sub_100010E60(v12, v46, &qword_10002E188, &qword_10001EA78);
  v30 = sub_100002EFC(&qword_10002E1A0, &qword_10001EA90);
  v31 = v30[12];
  *(&v49[1] + 1) = v67[1];
  *(&v49[2] + 1) = v67[2];
  v32 = v29 + v31;
  v48 = v47;
  v33 = v45;
  LOBYTE(v49[0]) = v45;
  *(&v49[3] + 1) = v67[3];
  v49[4] = *(&v67[3] + 15);
  *(v49 + 1) = v67[0];
  v34 = v19;
  v35 = v44;
  *&v50 = v44;
  BYTE8(v50) = v34;
  *&v51 = v21;
  *(&v51 + 1) = v23;
  *&v52 = v25;
  *(&v52 + 1) = v27;
  v53 = 0;
  *(v32 + 144) = 0;
  v36 = v49[4];
  *(v32 + 64) = v49[3];
  *(v32 + 80) = v36;
  v37 = v49[2];
  *(v32 + 32) = v49[1];
  *(v32 + 48) = v37;
  v38 = v52;
  v39 = v50;
  *(v32 + 112) = v51;
  *(v32 + 128) = v38;
  *(v32 + 96) = v39;
  v40 = v49[0];
  *v32 = v48;
  *(v32 + 16) = v40;
  v41 = v29 + v30[16];
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_100010E60(v6, v29 + v30[20], &qword_10002E180, &qword_10001EA70);
  sub_100010E60(&v48, v54, &qword_10002E1A8, &qword_10001EA98);
  sub_100010EC8(v8, &qword_10002E180, &qword_10001EA70);
  sub_100010EC8(v14, &qword_10002E188, &qword_10001EA78);
  sub_100010EC8(v6, &qword_10002E180, &qword_10001EA70);
  v57 = v67[1];
  v58 = v67[2];
  *v59 = v67[3];
  *&v59[15] = *(&v67[3] + 15);
  v54[0] = v47;
  v54[1] = 0;
  v55 = v33;
  v56 = v67[0];
  v60 = v35;
  v61 = v34;
  v62 = v21;
  v63 = v23;
  v64 = v25;
  v65 = v27;
  v66 = 0;
  sub_100010EC8(v54, &qword_10002E1A8, &qword_10001EA98);
  return sub_100010EC8(v43, &qword_10002E188, &qword_10001EA78);
}

uint64_t sub_10000AB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v131 = sub_10001CEEC();
  __chkstk_darwin(v131);
  v4 = (&v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10001D1DC();
  v129 = *(v5 - 8);
  v130 = v5;
  __chkstk_darwin(v5);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100002EFC(&qword_10002E218, &qword_10001EAD8);
  __chkstk_darwin(v134);
  v9 = &v126 - v8;
  v132 = sub_100002EFC(&qword_10002E220, &qword_10001EAE0);
  __chkstk_darwin(v132);
  v133 = &v126 - v10;
  v11 = sub_10001D1CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001CDAC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10001D2CC();
  __chkstk_darwin(v16 - 8);
  if (*(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8) >> 60 == 15)
  {
    sub_10000F258();
    v128 = v9;
    sub_10001D2BC();
    sub_10001CD6C();
    *&v150[0] = sub_10001D32C();
    *(&v150[0] + 1) = v17;
    sub_10000FDA4();
    sub_10001D0EC();
    sub_10001D20C();
    (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
    sub_10001D1FC();

    (*(v12 + 8))(v14, v11);
    v19 = v129;
    v18 = v130;
    (*(v129 + 104))(v7, enum case for Image.Interpolation.high(_:), v130);
    v20 = sub_10001D1EC();

    (*(v19 + 8))(v7, v18);
    v21 = *(a1 + 128) * (*(*(a1 + 16) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth) / *(a1 + 24));
    v22 = v131[5];
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = sub_10001CF8C();
    (*(*(v24 - 8) + 104))(v4 + v22, v23, v24);
    *v4 = v21;
    v4[1] = v21;
    v25 = sub_10001D15C();
    sub_10001CE5C();
    v26 = sub_100002EFC(&qword_10002E228, &qword_10001EAE8);
    v27 = v128;
    v28 = v128 + *(v26 + 36);
    sub_100010668(v4, v28);
    v29 = v28 + *(sub_100002EFC(&qword_10002E230, &qword_10001EAF0) + 36);
    v30 = v155;
    *v29 = v154;
    *(v29 + 16) = v30;
    *(v29 + 32) = v156;
    v31 = sub_100002EFC(&qword_10002E238, &qword_10001EAF8);
    *(v28 + *(v31 + 52)) = v25;
    *(v28 + *(v31 + 56)) = 256;
    v32 = sub_10001D23C();
    v34 = v33;
    sub_1000106CC(v4);
    v35 = (v28 + *(sub_100002EFC(&qword_10002E240, &qword_10001EB00) + 36));
    *v35 = v32;
    v35[1] = v34;
    sub_10001D23C();
    sub_10001CE6C();
    v36 = (v28 + *(sub_100002EFC(&qword_10002E248, &qword_10001EB08) + 36));
    v37 = v158;
    *v36 = v157;
    v36[1] = v37;
    v36[2] = v159;
    v38 = sub_10001D23C();
    v40 = v39;
    v41 = (v28 + *(sub_100002EFC(&qword_10002E250, &qword_10001EB10) + 36));
    *v41 = v38;
    v41[1] = v40;
    *v27 = v20;
    LOBYTE(v28) = sub_10001D00C();
    sub_10001CE2C();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v27 + *(sub_100002EFC(&qword_10002E258, &qword_10001EB18) + 36);
    *v50 = v28;
    *(v50 + 1) = v43;
    *(v50 + 2) = v45;
    *(v50 + 3) = v47;
    *(v50 + 4) = v49;
    v50[40] = 0;
    LOBYTE(v28) = sub_10001D02C();
    sub_10001CE2C();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v27 + *(sub_100002EFC(&qword_10002E260, &qword_10001EB20) + 36);
    *v59 = v28;
    *(v59 + 1) = v52;
    *(v59 + 2) = v54;
    *(v59 + 3) = v56;
    *(v59 + 4) = v58;
    v59[40] = 0;
    LOBYTE(v28) = sub_10001D04C();
    sub_10001CE2C();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v27 + *(sub_100002EFC(&qword_10002E268, &qword_10001EB28) + 36);
    *v68 = v28;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    LOBYTE(v28) = sub_10001D01C();
    sub_10001CE2C();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v27 + *(sub_100002EFC(&qword_10002E270, &qword_10001EB30) + 36);
    *v77 = v28;
    *(v77 + 1) = v70;
    *(v77 + 2) = v72;
    *(v77 + 3) = v74;
    *(v77 + 4) = v76;
    v77[40] = 0;
    sub_10001D23C();
    sub_10001CE6C();
    v78 = (v27 + *(sub_100002EFC(&qword_10002E278, &qword_10001EB38) + 36));
    v79 = v138;
    *v78 = v137;
    v78[1] = v79;
    v78[2] = v139;
    v80 = sub_10001D22C();
    v82 = v81;
    sub_10000B884(&v143);
    v83 = v147;
    v84 = v148;
    v85 = v147;
    v86 = v148;
    *&v136[64] = v147;
    *&v136[80] = v148;
    v87 = v145;
    v88 = v146;
    v89 = v145;
    v90 = v146;
    *&v136[32] = v145;
    *&v136[48] = v146;
    v91 = v144;
    v92 = v143;
    v93 = v144;
    *v136 = v143;
    *&v136[16] = v144;
    *&v136[96] = v80;
    *&v136[104] = v82;
    v94 = (v27 + *(v134 + 36));
    *v94 = v143;
    v94[1] = v91;
    v95 = *&v136[96];
    v94[5] = v84;
    v94[6] = v95;
    v94[3] = v88;
    v94[4] = v83;
    v94[2] = v87;
    v150[2] = v89;
    v150[3] = v90;
    v150[4] = v85;
    v150[5] = v86;
    v150[0] = v92;
    v150[1] = v93;
    *&v150[6] = v80;
    *(&v150[6] + 1) = v82;
    sub_100010E60(v136, v151, &qword_10002E280, &qword_10001EB40);
    sub_100010EC8(v150, &qword_10002E280, &qword_10001EB40);
    v96 = &qword_10002E218;
    v97 = &qword_10001EAD8;
    sub_100010E60(v27, v133, &qword_10002E218, &qword_10001EAD8);
    swift_storeEnumTagMultiPayload();
    sub_100002EFC(&qword_10002E288, &qword_10001EB48);
    sub_100010728();
    sub_100010A34();
    sub_10001CFCC();
    v98 = v27;
  }

  else
  {
    sub_100009A60(*(*(a1 + 16) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth));
    v131 = v99;
    sub_10001D2BC();
    sub_10001CD6C();
    *&v150[0] = sub_10001D32C();
    *(&v150[0] + 1) = v100;
    sub_10000FDA4();
    sub_10001D0EC();
    sub_10001D20C();
    (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
    v130 = sub_10001D1FC();

    (*(v12 + 8))(v14, v11);
    sub_10001D23C();
    sub_10001CE6C();
    v101 = BYTE8(v157);
    v102 = v158;
    v103 = BYTE8(v158);
    v128 = v159;
    v129 = v157;
    v127 = *(&v159 + 1);
    v136[0] = BYTE8(v157);
    LOBYTE(v151[0]) = BYTE8(v158);
    v104 = sub_10001D04C();
    sub_10001CE2C();
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v112 = v111;
    LOBYTE(v150[0]) = 0;
    v113 = sub_10001D01C();
    sub_10001CE2C();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v121 = v120;
    LOBYTE(v154) = 0;
    v122 = sub_10001D22C();
    v124 = v123;
    sub_10000B884(&v137);
    v147 = v141;
    v148 = v142;
    v143 = v137;
    v144 = v138;
    *&v136[71] = v141;
    *&v136[87] = v142;
    *&v136[55] = v140;
    *&v136[7] = v137;
    *&v136[23] = v138;
    v145 = v139;
    v146 = v140;
    *&v149 = v122;
    *(&v149 + 1) = v124;
    *&v136[39] = v139;
    *&v136[103] = v149;
    v151[4] = v141;
    v151[5] = v142;
    v151[2] = v139;
    v151[3] = v140;
    v151[0] = v137;
    v151[1] = v138;
    v152 = v122;
    v153 = v124;
    sub_100010E60(&v143, v150, &qword_10002E280, &qword_10001EB40);
    sub_100010EC8(v151, &qword_10002E280, &qword_10001EB40);
    *&v150[0] = v130;
    *(&v150[0] + 1) = v129;
    LOBYTE(v150[1]) = v101;
    *(&v150[1] + 1) = v102;
    LOBYTE(v150[2]) = v103;
    *(&v150[2] + 1) = v128;
    *&v150[3] = v127;
    WORD4(v150[3]) = 256;
    LOBYTE(v150[4]) = v104;
    *(&v150[4] + 1) = v106;
    *&v150[5] = v108;
    *(&v150[5] + 1) = v110;
    *&v150[6] = v112;
    BYTE8(v150[6]) = 0;
    LOBYTE(v150[7]) = v113;
    *(&v150[7] + 1) = v115;
    *&v150[8] = v117;
    *(&v150[8] + 1) = v119;
    *&v150[9] = v121;
    BYTE8(v150[9]) = 0;
    *(&v150[13] + 9) = *&v136[64];
    *(&v150[14] + 9) = *&v136[80];
    *(&v150[15] + 9) = *&v136[96];
    *(&v150[16] + 1) = *&v136[111];
    *(&v150[9] + 9) = *v136;
    *(&v150[10] + 9) = *&v136[16];
    *(&v150[11] + 9) = *&v136[32];
    *(&v150[12] + 9) = *&v136[48];
    memcpy(v133, v150, 0x110uLL);
    swift_storeEnumTagMultiPayload();
    v96 = &qword_10002E288;
    v97 = &qword_10001EB48;
    sub_100010E60(v150, v136, &qword_10002E288, &qword_10001EB48);
    sub_100002EFC(&qword_10002E288, &qword_10001EB48);
    sub_100010728();
    sub_100010A34();
    sub_10001CFCC();

    v98 = v150;
  }

  return sub_100010EC8(v98, v96, v97);
}

uint64_t sub_10000B884@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10001D1CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1BC();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v18 = sub_10001D1FC();

  (*(v4 + 8))(v6, v3);
  sub_10001D22C();
  sub_10001CE6C();
  v7 = v21;
  LOBYTE(v4) = v22;
  v8 = v23;
  v9 = v24;
  v11 = v25;
  v10 = v26;
  v12 = sub_10001D14C();
  KeyPath = swift_getKeyPath();
  v20 = v4;
  v19 = v9;
  v14 = sub_10001D17C();
  result = sub_10001D23C();
  *a2 = v18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v10;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  *(a2 + 80) = result;
  *(a2 + 88) = v16;
  return result;
}

void sub_10000BA7C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D21C();
  v140 = a1;
  v5 = *a1;
  v142 = *(*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent);
  if (v4)
  {
    sub_10000FDA4();

    v6 = sub_10001D0EC();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = *(v5 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    sub_10001D08C();

    sub_10001D0DC();

    sub_10000FDF8(v6, v8, (v10 & 1), v14, v15, v16, v17, v18, v19, v20, v21, v22);
    v12, v23, v24, v25, v26, v145, v27, v28, v29;
  }

  else
  {
    sub_10000FDA4();

    v30 = sub_10001D0EC();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = *(v5 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    sub_10001D0DC();

    sub_10000FDF8(v30, v32, (v34 & 1), v38, v39, v40, v41, v42, v43, v44, v45, v46);
    v36, v47, v48, v49, v50, v146, v51, v52, v53;
  }

  sub_10001CFCC();
  v54 = v143;
  v55 = v142;
  v56 = *v140;
  v57 = (*v140 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
  if (!*v57 && v57[1] == 0xE000000000000000 || (v58 = sub_10001D6BC(), v55 = v142, v54 = v143, (v58 & 1) != 0))
  {
    sub_100010568(v55, *(&v142 + 1), v54, *(&v143 + 1));
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
  }

  else
  {
    sub_100010568(v142, *(&v142 + 1), v143, *(&v143 + 1));
    sub_10000FDA4();

    v63 = sub_10001D0EC();
    v65 = v64;
    v67 = v66;
    v138 = v68;
    v69 = *(v56 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont);
    sub_10001D0BC();
    v137 = sub_10001D0DC();
    v139 = v71;
    v141 = v70;
    v136 = v72;

    sub_10000FDF8(v63, v65, (v67 & 1), v73, v74, v75, v76, v77, v78, v79, v80, v81);
    v138, v82, v83, v84, v85, v147, v86, v87, v88;
    sub_10001CFDC();
    v59 = sub_10001D0CC();
    v60 = v89;
    v91 = v90;
    v62 = v92;
    sub_10000FDF8(v137, v141, (v136 & 1), v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v139, v101, v102, v103, v104, v148, v105, v106, v107;
    v61 = v91 & 1;
    sub_10001006C(v59, v60, v61);
  }

  sub_100010568(v142, *(&v142 + 1), v143, *(&v143 + 1));
  sub_1000105A4(v59, v60, v61, v62);
  sub_1000105E8(v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v108, v109, v110, v111, v112, v113, v114);
  sub_100010624(v59, v60, v61, v62, v115, v116, v117, v118, v119, v120, v121, v122);
  *a2 = v142;
  *(a2 + 16) = v143;
  *(a2 + 32) = v144;
  *(a2 + 40) = v59;
  *(a2 + 48) = v60;
  *(a2 + 56) = v61;
  *(a2 + 64) = v62;
  sub_100010624(v59, v60, v61, v62, v123, v124, v125, v126, *&v142, *&v143, v127, v128);
  sub_1000105E8(v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v129, v130, v131, v132, v133, v134, v135);
}

uint64_t sub_10000BED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v148 = sub_100002EFC(&qword_10002E1B0, &qword_10001EAA0);
  __chkstk_darwin(v148);
  v150 = (&v144 - v3);
  v149 = sub_100002EFC(&qword_10002E1B8, &qword_10001EAA8);
  __chkstk_darwin(v149);
  v5 = &v144 - v4;
  if (sub_10001D21C())
  {
    v6 = (*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText);
    v7 = *v6;
    v8 = v6[1];
    v146 = a1;
    v153 = v7;
    v154 = v8;
    sub_10000FDA4();

    v9 = sub_10001D0EC();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_10001D0AC();
    v16 = sub_10001D0DC();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_10000FDF8(v9, v11, (v13 & 1), v23, v24, v25, v26, v27, v28, v29, v30, v31);
    v15, v32, v33, v34, v35, v155, v36, v37, v38;
    v39 = *(v146 + 8);
    v40 = [v39 tintColor];
    v153 = sub_10001D19C();
    v146 = sub_10001D0CC();
    v145 = v41;
    v43 = v42;
    v144 = v44;
    sub_10000FDF8(v16, v18, (v20 & 1), v44, v45, v46, v47, v48, v49, v50, v51, v52);

    v22, v53, v54, v55, v56, v156, v57, v58, v59;
    LOBYTE(v22) = sub_10001CFEC();
    sub_10001CE2C();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v43 &= 1u;
    v152 = v43;
    v151 = 0;
    LOBYTE(v16) = sub_10001D05C();
    sub_10001CE2C();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    LOBYTE(v153) = 0;
    v76 = [v39 tintColor];
    sub_10001D19C();
    v77 = sub_10001D18C();

    LOBYTE(v18) = sub_10001CFFC();
    v78 = &v5[*(v149 + 36)];
    v79 = *(sub_10001CEEC() + 20);
    v80 = enum case for RoundedCornerStyle.continuous(_:);
    v81 = sub_10001CF8C();
    (*(*(v81 - 8) + 104))(&v78[v79], v80, v81);
    __asm { FMOV            V0.2D, #20.0 }

    *v78 = _Q0;
    *&v78[*(sub_100002EFC(&qword_10002E210, &qword_10001EAD0) + 36)] = 256;
    v87 = v145;
    *v5 = v146;
    *(v5 + 1) = v87;
    v5[16] = v43;
    *(v5 + 3) = v144;
    v5[32] = v22;
    *(v5 + 5) = v61;
    *(v5 + 6) = v63;
    *(v5 + 7) = v65;
    *(v5 + 8) = v67;
    v5[72] = 0;
    v5[80] = v16;
    *(v5 + 11) = v69;
    *(v5 + 12) = v71;
    *(v5 + 13) = v73;
    *(v5 + 14) = v75;
    v5[120] = 0;
    *(v5 + 16) = v77;
    v5[136] = v18;
    sub_100010E60(v5, v150, &qword_10002E1B8, &qword_10001EAA8);
    swift_storeEnumTagMultiPayload();
    sub_1000102E8();
    sub_10001CFCC();
    return sub_100010EC8(v5, &qword_10002E1B8, &qword_10001EAA8);
  }

  else
  {
    v89 = (*a1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText);
    v90 = v89[1];
    v153 = *v89;
    v154 = v90;
    sub_10000FDA4();

    v91 = sub_10001D0EC();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    sub_10001D07C();
    v98 = sub_10001D0DC();
    v100 = v99;
    v102 = v101;
    v104 = v103;

    sub_10000FDF8(v91, v93, (v95 & 1), v105, v106, v107, v108, v109, v110, v111, v112, v113);
    v97, v114, v115, v116, v117, v157, v118, v119, v120;
    v121 = [*(a1 + 8) tintColor];
    v153 = sub_10001D19C();
    v122 = sub_10001D0CC();
    v124 = v123;
    LOBYTE(v97) = v125;
    v127 = v126;
    sub_10000FDF8(v98, v100, (v102 & 1), v126, v128, v129, v130, v131, v132, v133, v134, v135);

    v104, v136, v137, v138, v139, v158, v140, v141, v142;
    v143 = v150;
    *v150 = v122;
    v143[1] = v124;
    *(v143 + 16) = v97 & 1;
    v143[3] = v127;
    swift_storeEnumTagMultiPayload();
    sub_1000102E8();
    return sub_10001CFCC();
  }
}

void sub_10000C4A4(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_100002EFC(&qword_10002E060, &qword_10001E8E8);
  __chkstk_darwin(v3 - 8);
  v77 = &v68 - v4;
  v5 = sub_10001CE3C();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002EFC(&qword_10002E068, &qword_10001E8F0);
  __chkstk_darwin(v7 - 8);
  v85 = &v68 - v8;
  v84 = sub_10001CEDC();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100002EFC(&qword_10002E070, &qword_10001E8F8);
  __chkstk_darwin(v82);
  v12 = &v68 - v11;
  v13 = sub_100002EFC(&qword_10002E078, &qword_10001E900);
  v74 = *(v13 - 8);
  v75 = v13;
  __chkstk_darwin(v13);
  v86 = &v68 - v14;
  v72 = sub_100002EFC(&qword_10002E080, &qword_10001E908);
  __chkstk_darwin(v72);
  v76 = &v68 - v15;
  v16 = [objc_allocWithZone(ISImageDescriptor) initWithSize:15.0 scale:{15.0, 1.0}];
  v17 = objc_allocWithZone(ISIcon);
  v18 = sub_10001D2DC();
  v19 = [v17 initWithBundleIdentifier:v18];

  v73 = v16;
  v20 = [v19 prepareImageForDescriptor:v16];

  if (!v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = [v20 CGImage];

  if (!v21)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v22 = v2;
  sub_100002EFC(&qword_10002E088, &qword_10001E910);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001E6C0;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_10000FB3C();
  *(v23 + 32) = 7368801;
  *(v23 + 40) = 0xE300000000000000;
  sub_10001D31C();
  v69 = v24;
  v25 = sub_10001CF9C();
  v70 = v21;
  v71 = v25;
  v90 = 1;
  sub_10000CCEC(v21, v2, v88);
  memcpy(v91, v88, 0x111uLL);
  memcpy(v92, v88, 0x111uLL);
  sub_100010E60(v91, &v87, &qword_10002E098, &qword_10001E918);
  sub_100010EC8(v92, &qword_10002E098, &qword_10001E918);
  memcpy(&v89[7], v91, 0x111uLL);
  v26 = v90;
  KeyPath = swift_getKeyPath();
  v28 = sub_10000DAE4();
  v29 = &enum case for LayoutDirection.rightToLeft(_:);
  if (!v28)
  {
    v29 = &enum case for LayoutDirection.leftToRight(_:);
  }

  v31 = v83;
  v30 = v84;
  (*(v9 + 104))(v83, *v29, v84);
  v32 = &v12[*(v82 + 36)];
  v33 = sub_100002EFC(&qword_10002E0A0, &qword_10001E950);
  v34 = v31;
  v35 = v22;
  (*(v9 + 32))(v32 + *(v33 + 28), v34, v30);
  *v32 = KeyPath;
  *v12 = v71;
  *(v12 + 1) = 0;
  v12[16] = v26;
  memcpy(v12 + 17, v89, 0x118uLL);
  v36 = *(*(v22 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory);
  v37 = v85;
  sub_10001CECC();
  v38 = sub_10001CEBC();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    goto LABEL_16;
  }

  v69, v40, v41, v42, v43, *&v47, v44, v45, v46;
  sub_10000FBF4();
  sub_10001D12C();
  sub_100010EC8(v12, &qword_10002E070, &qword_10001E8F8);
  (*(v39 + 8))(v37, v38);
  v51 = *(v35 + 40);
  [v51 userInterfaceStyle];
  v52 = v77;
  sub_10001CE4C();
  v54 = v79;
  v53 = v80;
  v55 = *(v79 + 48);
  if (v55(v52, 1, v80) == 1)
  {
    v56 = v78;
    (*(v54 + 104))(v78, enum case for ColorScheme.light(_:), v53);
    v57 = v55(v52, 1, v53);
    v58 = v76;
    if (v57 != 1)
    {
      sub_100010EC8(v52, &qword_10002E060, &qword_10001E8E8);
    }
  }

  else
  {
    v56 = v78;
    (*(v54 + 32))(v78, v52, v53);
    v58 = v76;
  }

  v59 = swift_getKeyPath();
  v60 = (v58 + *(v72 + 36));
  v61 = sub_100002EFC(&qword_10002E0C8, &qword_10001E990);
  (*(v54 + 32))(v60 + *(v61 + 28), v56, v53);
  *v60 = v59;
  (*(v74 + 32))(v58, v86, v75);
  if ([v51 userInterfaceStyle] == 1)
  {
    v62 = sub_10001D16C();
  }

  else
  {
    v62 = sub_10001D17C();
  }

  v63 = v62;
  v64 = v81;
  v65 = v73;
  v66 = sub_10001CFFC();

  sub_100010218(v58, v64, &qword_10002E080, &qword_10001E908);
  v67 = v64 + *(sub_100002EFC(&qword_10002E0D0, &qword_10001E998) + 36);
  *v67 = v63;
  *(v67 + 8) = v66;
}

uint64_t sub_10000CCEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77 = sub_10001CF7C();
  LOBYTE(v90) = 1;
  sub_10000D328(a1, a2, &v85);
  v103 = *&v86[112];
  v104 = *&v86[128];
  v105 = *&v86[144];
  v99 = *&v86[48];
  v100 = *&v86[64];
  v101 = *&v86[80];
  v102 = *&v86[96];
  v95 = v85;
  v96 = *v86;
  v97 = *&v86[16];
  v98 = *&v86[32];
  v107[8] = *&v86[112];
  v107[9] = *&v86[128];
  v107[10] = *&v86[144];
  v107[4] = *&v86[48];
  v107[5] = *&v86[64];
  v107[6] = *&v86[80];
  v107[7] = *&v86[96];
  v107[0] = v85;
  v107[1] = *v86;
  v106 = v86[160];
  v108 = v86[160];
  v107[2] = *&v86[16];
  v107[3] = *&v86[32];
  sub_100010E60(&v95, v79, &qword_10002E0D8, &qword_10001E9A0);
  sub_100010EC8(v107, &qword_10002E0D8, &qword_10001E9A0);
  *&v89[135] = v103;
  *&v89[151] = v104;
  *&v89[167] = v105;
  *&v89[71] = v99;
  *&v89[87] = v100;
  *&v89[103] = v101;
  *&v89[119] = v102;
  *&v89[7] = v95;
  *&v89[23] = v96;
  *&v89[39] = v97;
  v89[183] = v106;
  *&v89[55] = v98;
  v75 = v90;
  if (sub_10001D21C())
  {
    v6 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    v7 = v6[1];
    *&v85 = *v6;
    *(&v85 + 1) = v7;
    sub_10000FDA4();

    v8 = sub_10001D0EC();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    *&v85 = sub_10001D16C();
    v73 = sub_10001D0CC();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_10000FDF8(v8, v10, (v12 & 1), v19, v21, v22, v23, v24, v25, v26, v27, v28);

    v14, v29, v30, v31, v32, v109, v33, v34, v35;
    KeyPath = swift_getKeyPath();
    v37 = sub_10001D06C();
    v38 = swift_getKeyPath();
    LOBYTE(v79[0]) = 0;
    *&v85 = v73;
    *(&v85 + 1) = v16;
    v86[0] = v18 & 1;
    *&v86[8] = v20;
    *&v86[16] = KeyPath;
    v86[24] = 1;
    *&v86[32] = v38;
    *&v86[40] = v37;
    v86[48] = 0;
  }

  else
  {
    v39 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    v40 = v39[1];
    *&v85 = *v39;
    *(&v85 + 1) = v40;
    sub_10000FDA4();

    v41 = sub_10001D0EC();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    *&v85 = sub_10001D16C();
    v48 = sub_10001D0CC();
    v74 = v49;
    v51 = v50;
    v53 = v52;
    sub_10000FDF8(v41, v43, (v45 & 1), v52, v54, v55, v56, v57, v58, v59, v60, v61);

    v47, v62, v63, v64, v65, v110, v66, v67, v68;
    v69 = swift_getKeyPath();
    v70 = sub_10001D09C();
    v71 = swift_getKeyPath();
    LOBYTE(v79[0]) = 1;
    *&v85 = v48;
    *(&v85 + 1) = v74;
    v86[0] = v51 & 1;
    *&v86[8] = v53;
    *&v86[16] = v69;
    v86[24] = 1;
    *&v86[32] = v71;
    *&v86[40] = v70;
    v86[48] = 1;
  }

  sub_100002EFC(&qword_10002E0E8, &qword_10001EA08);
  sub_10000FEB4();
  sub_10001CFCC();
  v83[2] = v92;
  v83[3] = v93;
  v83[0] = v90;
  v83[1] = v91;
  v79[0] = v77;
  v79[1] = 0;
  v80[0] = v75;
  *&v80[49] = *&v89[48];
  *&v80[33] = *&v89[32];
  *&v80[17] = *&v89[16];
  *&v80[1] = *v89;
  *&v80[113] = *&v89[112];
  *&v80[97] = *&v89[96];
  *&v80[81] = *&v89[80];
  *&v80[65] = *&v89[64];
  *&v80[161] = *&v89[160];
  *&v80[177] = *&v89[176];
  *&v80[145] = *&v89[144];
  *&v80[129] = *&v89[128];
  __src[10] = *&v80[144];
  __src[11] = *&v80[160];
  *(&__src[11] + 9) = *&v80[169];
  __src[6] = *&v80[80];
  __src[7] = *&v80[96];
  __src[8] = *&v80[112];
  __src[9] = *&v80[128];
  __src[2] = *&v80[16];
  __src[3] = *&v80[32];
  __src[4] = *&v80[48];
  __src[5] = *&v80[64];
  __src[0] = v77;
  __src[1] = *v80;
  v84 = v94;
  v81[2] = v92;
  v81[3] = v93;
  v82 = v94;
  v81[0] = v90;
  v81[1] = v91;
  __src[15] = v92;
  __src[16] = v93;
  LOBYTE(__src[17]) = v94;
  __src[13] = v90;
  __src[14] = v91;
  memcpy(a3, __src, 0x111uLL);
  sub_100010E60(v79, &v85, &qword_10002E128, &qword_10001EA28);
  sub_100010E60(v81, &v85, &qword_10002E130, &qword_10001EA30);
  sub_100010EC8(v83, &qword_10002E130, &qword_10001EA30);
  *&v86[129] = *&v89[128];
  *&v86[145] = *&v89[144];
  v87 = *&v89[160];
  *&v86[65] = *&v89[64];
  *&v86[81] = *&v89[80];
  *&v86[97] = *&v89[96];
  *&v86[113] = *&v89[112];
  *&v86[1] = *v89;
  *&v86[17] = *&v89[16];
  *&v86[33] = *&v89[32];
  v85 = v77;
  v86[0] = v75;
  v88 = *&v89[176];
  *&v86[49] = *&v89[48];
  return sub_100010EC8(&v85, &qword_10002E128, &qword_10001EA28);
}

uint64_t sub_10000D328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10001D1CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001CDAC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10001D2CC();
  __chkstk_darwin(v12 - 8);
  v13 = a1;
  sub_10001D2BC();
  sub_10001CD6C();
  *&v166 = sub_10001D32C();
  *(&v166 + 1) = v14;
  sub_10000FDA4();
  sub_10001D0EC();
  sub_10001D20C();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v155 = sub_10001D1FC();

  (*(v8 + 8))(v10, v7);
  sub_10001D23C();
  sub_10001CE6C();
  v148 = v182;
  LODWORD(v7) = v183;
  v150 = v184;
  LODWORD(a1) = v185;
  v153 = v187;
  v154 = v186;
  v152 = sub_10001D02C();
  sub_10001CE2C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v149 = v7;
  LOBYTE(v166) = v7;
  v151 = a1;
  LOBYTE(v159) = a1;
  v178 = 0;
  v23 = sub_10001D21C();
  v24 = (*(a2 + 32) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent);
  v25 = v24[1];
  *&v166 = *v24;
  *(&v166 + 1) = v25;
  if (v23)
  {

    v26 = sub_10001D0EC();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_10001D0AC();
    sub_10001D08C();

    v33 = sub_10001D0DC();
    v35 = v34;
    v37 = v36;
    *&v147 = v38;

    sub_10000FDF8(v26, v28, (v30 & 1), v39, v40, v41, v42, v43, v44, v45, v46, v47);
    v32, v48, v49, v50, v51, v188, v52, v53, v54;
    *&v166 = sub_10001D16C();
    v55 = v147;
    *&v146 = sub_10001D0CC();
    v57 = v56;
    LOBYTE(v32) = v58;
    v60 = v59;
    sub_10000FDF8(v33, v35, (v37 & 1), v59, v61, v62, v63, v64, v65, v66, v67, v68);

    v55, v69, v70, v71, v72, v189, v73, v74, v75;
    KeyPath = swift_getKeyPath();
    *&v159 = v146;
    *(&v159 + 1) = v57;
    *&v160 = v32 & 1;
    *(&v160 + 1) = v60;
    *&v161 = KeyPath;
    v77 = 1;
  }

  else
  {

    v78 = sub_10001D0EC();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_10001D09C();
    sub_10001D08C();

    v85 = sub_10001D0DC();
    v87 = v86;
    v89 = v88;
    *&v147 = v90;

    sub_10000FDF8(v78, v80, (v82 & 1), v91, v92, v93, v94, v95, v96, v97, v98, v99);
    v84, v100, v101, v102, v103, v190, v104, v105, v106;
    *&v166 = sub_10001D16C();
    v107 = v147;
    *&v146 = sub_10001D0CC();
    v109 = v108;
    LOBYTE(v84) = v110;
    v112 = v111;
    sub_10000FDF8(v85, v87, (v89 & 1), v111, v113, v114, v115, v116, v117, v118, v119, v120);

    v107, v121, v122, v123, v124, v191, v125, v126, v127;
    v128 = swift_getKeyPath();
    *&v159 = v146;
    *(&v159 + 1) = v109;
    *&v160 = v84 & 1;
    *(&v160 + 1) = v112;
    *&v161 = v128;
    v77 = 257;
  }

  WORD4(v161) = v77;
  sub_100002EFC(&qword_10002E100, &qword_10001EA10);
  sub_10000FF6C();
  sub_10001CFCC();
  v129 = v166;
  v130 = v167;
  v131 = v168;
  v132 = v169;
  v133 = BYTE1(v169);
  v146 = v166;
  v147 = v167;
  v178 = 1;
  *&v159 = v155;
  *(&v159 + 1) = v148;
  LOBYTE(v160) = v149;
  *(&v160 + 1) = *v181;
  DWORD1(v160) = *&v181[3];
  *(&v160 + 1) = v150;
  LOBYTE(v161) = v151;
  *(&v161 + 1) = *v180;
  DWORD1(v161) = *&v180[3];
  *(&v161 + 1) = v154;
  *&v162 = v153;
  BYTE8(v162) = v152;
  HIDWORD(v162) = *&v179[3];
  *(&v162 + 9) = *v179;
  *&v163 = v16;
  *(&v163 + 1) = v18;
  *&v164 = v20;
  *(&v164 + 1) = v22;
  v165 = 0;
  v158[103] = 0;
  *&v158[87] = v164;
  *&v158[71] = v163;
  *&v158[55] = v162;
  *&v158[39] = v161;
  *&v158[23] = v160;
  *&v158[7] = v159;
  v157 = BYTE1(v169);
  v156 = 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  v134 = *&v158[48];
  *(a3 + 41) = *&v158[32];
  v135 = *v158;
  *(a3 + 25) = *&v158[16];
  *(a3 + 9) = v135;
  v136 = *&v158[64];
  v137 = *&v158[80];
  *(a3 + 105) = *&v158[96];
  *(a3 + 89) = v137;
  *(a3 + 73) = v136;
  *(a3 + 57) = v134;
  *(a3 + 120) = v129;
  *(a3 + 136) = v130;
  *(a3 + 152) = v131;
  *(a3 + 160) = v132;
  *(a3 + 161) = v133;
  *(a3 + 168) = 0;
  *(a3 + 176) = 1;
  sub_100010E60(&v159, &v166, &qword_10002E138, &qword_10001EA38);
  v138 = v146;
  v139 = v147;
  sub_100010024(v146, *(&v146 + 1), v147, *(&v147 + 1), v131);
  sub_10001007C(v138, *(&v138 + 1), v139, *(&v139 + 1), v131, v132, v133, v140, v141, v142, v143, v144);
  *&v166 = v155;
  *(&v166 + 1) = v148;
  LOBYTE(v167) = v149;
  *(&v167 + 1) = *v181;
  DWORD1(v167) = *&v181[3];
  *(&v167 + 1) = v150;
  LOBYTE(v168) = v151;
  *(&v168 + 1) = *v180;
  HIDWORD(v168) = *&v180[3];
  v169 = v154;
  v170 = v153;
  v171 = v152;
  *v172 = *v179;
  *&v172[3] = *&v179[3];
  v173 = v16;
  v174 = v18;
  v175 = v20;
  v176 = v22;
  v177 = 0;
  return sub_100010EC8(&v166, &qword_10002E138, &qword_10001EA38);
}

BOOL sub_10000DAE4()
{
  v1 = v0;
  v2 = sub_10001CD9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v6 = sub_10001CE1C();
  sub_1000023A4(v6, qword_10002E558);
  sub_10000FD3C(v0, v29);
  v7 = sub_10001CDFC();
  v8 = sub_10001D50C();
  sub_10000FD74(v1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v28 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315138;
    v12 = [*(v1 + 40) localization];
    v13 = sub_10001D30C();
    v15 = v14;

    v16 = sub_100017934(v13, v15, v29);
    v15, v17, v18, v19, v20, v30, v21, v22, v23;
    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "#ContactsButton localization value: %s", v10, 0xCu);
    sub_100002F44(v11);

    v2 = v28;
  }

  v24 = [*(v1 + 40) localization];
  sub_10001D30C();

  sub_10001CD7C();
  v25 = sub_10001CD8C();
  (*(v3 + 8))(v5, v2);
  return v25 != 1;
}

void sub_10000DE94(void *a1, double a2, double a3)
{
  v7 = sub_10001D25C();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001D27C();
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = dispatch_group_create();
  *(v13 + 16) = v14;
  dispatch_group_enter(v14);
  sub_10000F5E4();
  v21 = sub_10001D53C();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = v13;
  aBlock[4] = sub_10000F678;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000117B8;
  aBlock[3] = &unk_100029548;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  v18 = a1;

  sub_10001D26C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100010FD4(&unk_10002E030, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002EFC(&unk_10002E4F0, &qword_10001ED90);
  sub_1000112AC(&qword_10002E040, &unk_10002E4F0, &qword_10001ED90, &protocol conformance descriptor for [A]);
  sub_10001D59C();
  v19 = v21;
  sub_10001D54C();
  _Block_release(v16);

  (*(v24 + 8))(v9, v7);
  (*(v22 + 8))(v12, v23);
  swift_beginAccess();
  v20 = *(v13 + 16);
  sub_10001D52C();
}

uint64_t sub_10000E1F4(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_10001D47C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_10001D45C();
  v14 = a1;
  v15 = a2;

  v16 = sub_10001D44C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = a3;
  sub_1000114B8(0, 0, v12, &unk_10001E780, v17);
}

uint64_t sub_10000E354(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = a8;
  *(v8 + 248) = a1;
  *(v8 + 256) = a2;
  *(v8 + 232) = a6;
  *(v8 + 240) = a7;
  sub_10001D45C();
  *(v8 + 272) = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_10000E3F4, v10, v9);
}

uint64_t sub_10000E3F4()
{
  v39 = v0;
  v1 = *(v0 + 232);

  v2 = *(v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag);
  v3 = v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton];
  v4 = *(v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_style);
  v5 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  CGRectGetWidth(*&v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame]);
  CGRectGetHeight(*v5);
  nullsub_2();
  if (v3)
  {
    sub_10000F38C(v2, v4, v37);
    sub_10001D23C();
    sub_10001CE6C();
    v6 = v37[11];
    *(v0 + 176) = v37[10];
    *(v0 + 192) = v6;
    *(v0 + 208) = v37[12];
    *(v0 + 224) = v38;
    v7 = v37[7];
    *(v0 + 112) = v37[6];
    *(v0 + 128) = v7;
    v8 = v37[9];
    *(v0 + 144) = v37[8];
    *(v0 + 160) = v8;
    v9 = v37[3];
    *(v0 + 48) = v37[2];
    *(v0 + 64) = v9;
    v10 = v37[5];
    *(v0 + 80) = v37[4];
    *(v0 + 96) = v10;
    v11 = v37[1];
    *(v0 + 16) = v37[0];
    *(v0 + 32) = v11;
    v12 = &unk_10002E058;
    v13 = &unk_10001E790;
  }

  else
  {
    v14 = qword_10002D8A0;
    v15 = v2;
    if (v14 != -1)
    {
      v36 = v15;
      swift_once();
      v15 = v36;
    }

    v16 = qword_10002E548;
    v17 = v15;
    v18 = v4;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 16) = v17;
    *(v0 + 24) = v18;
    *(v0 + 32) = v17;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 48) = v16;
    *(v0 + 56) = v16;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    *(v0 + 144) = 0x401E000000000000;
    v12 = &unk_10002E050;
    v13 = &unk_10001E788;
  }

  sub_100002EFC(v12, v13);
  swift_allocObject();
  sub_10001CEAC();
  [v4 displayScale];
  sub_10001CE9C();
  v19 = sub_10001CE7C();
  v20 = v19;
  sub_10001CE8C();

  v21 = qword_10002D8B0;
  if (v19)
  {
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_10001CE1C();
    sub_1000023A4(v23, qword_10002E558);
    v24 = sub_10001CDFC();
    v25 = sub_10001D4CC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "#ContactsButton cgImage created! ", v26, 2u);
    }

    v27 = *(v0 + 264);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    v30 = *(v0 + 240);

    sub_10000E8EC(v30, v22, v29, v28);
    v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] = 1;
    swift_beginAccess();
    dispatch_group_leave(*(v27 + 16));
  }

  else
  {
    if (qword_10002D8B0 != -1)
    {
      swift_once();
    }

    v31 = sub_10001CE1C();
    sub_1000023A4(v31, qword_10002E558);
    v22 = sub_10001CDFC();
    v32 = sub_10001D4EC();
    if (os_log_type_enabled(v22, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v22, v32, "#ContactsButton Can't render image", v33, 2u);
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

void sub_10000E8EC(CGContext *a1, uint64_t a2, double a3, double a4)
{
  CGContextSaveGState(a1);
  v6 = (*&v4[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag] + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame);
  CGRectGetWidth(*v6);
  CGRectGetHeight(*v6);
  nullsub_2();
  CGContextTranslateCTM(a1, 0.0, v7);
  CGContextScaleCTM(a1, 1.0, -1.0);
  CGRectGetWidth(*v6);
  CGRectGetHeight(*v6);
  nullsub_2();
  CGRectGetWidth(*v6);
  CGRectGetHeight(*v6);
  nullsub_2();
  sub_10001D4BC();
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v8 = sub_10001CE1C();
  sub_1000023A4(v8, qword_10002E558);
  v9 = v4;
  v10 = sub_10001CDFC();
  v11 = sub_10001D4CC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    CGRectGetWidth(*v6);
    CGRectGetHeight(*v6);
    nullsub_2();
    *(v12 + 4) = v13;
    *(v12 + 12) = 2048;
    CGRectGetWidth(*v6);
    CGRectGetHeight(*v6);
    nullsub_2();
    *(v12 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "#ContactsButton will drawing Size (%f, %f)", v12, 0x16u);
  }

  CGContextRestoreGState(a1);
}

id sub_10000EB98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

id sub_10000ED30(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v12 = sub_10001CC2C();
  if (v13)
  {
    if (qword_10002D890 != -1)
    {
      swift_once();
    }

    v14 = *&dword_10002E538;
    v15 = sub_10001CBFC();
    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = *&v12;
    v15 = sub_10001CBFC();
    if ((v18 & 1) == 0)
    {
LABEL_5:
      v17 = v15;
      goto LABEL_10;
    }
  }

  if (qword_10002D8A0 != -1)
  {
    swift_once();
  }

  v17 = qword_10002E548;
LABEL_10:
  v19 = sub_10001CC4C();
  v20 = sub_10001CC3C();
  v21 = sub_10001CC5C();
  v22 = sub_10001CC1C();
  v23 = sub_10001CC6C();
  if (!v23)
  {
    v23 = [objc_opt_self() systemBlueColor];
  }

  v24 = v23;
  v25 = type metadata accessor for ContactsButtonSlotTag();
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarBackgroundColor;
  if (qword_10002D898 != -1)
  {
    swift_once();
  }

  v28 = qword_10002E540;
  *&v26[v27] = qword_10002E540;
  v29 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatar] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData] = xmmword_10001E720;
  v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonHeight] = 0xBFF0000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_buttonWidth] = 0xBFF0000000000000;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contactBadge] = 0;
  v31 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame];
  *v31 = a4;
  v31[1] = a5;
  v31[2] = a6;
  v31[3] = a7;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bgColor] = v19;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] = v20;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFontColor] = v21;
  v32 = &v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_rightSideText];
  *v32 = a2;
  v32[1] = a3;
  v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = 0;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_trailingEdgeFromAvatar] = v14;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth] = v17;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_contentSizeCategory] = v22;
  *&v26[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_tintColor] = v24;
  v43.receiver = v26;
  v43.super_class = v25;
  v33 = v28;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v24;
  v39 = objc_msgSendSuper2(&v43, "init");

  return v39;
}

double sub_10000F040(double a1, double a2, double a3)
{
  if (a1 > 0.03928)
  {
    v5 = pow((a1 + 0.055) / 1.055, 2.4);
    if (a2 <= 0.03928)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = pow((a2 + 0.055) / 1.055, 2.4);
    if (a3 <= 0.03928)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = pow((a3 + 0.055) / 1.055, 2.4);
    return v5 * 0.2126 + v6 * 0.7152 + v7 * 0.0722;
  }

  v5 = a1 / 12.92;
  if (a2 > 0.03928)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = a2 / 12.92;
  if (a3 > 0.03928)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = a3 / 12.92;
  return v5 * 0.2126 + v6 * 0.7152 + v7 * 0.0722;
}

void sub_10000F168(void *a1, void *a2, double a3)
{
  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0;
  v6 = 0.0;
  [a2 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  sub_10000F040(v12 * a3 + (1.0 - a3) * v8, v11 * a3 + (1.0 - a3) * v7, v10 * a3 + (1.0 - a3) * v6);
}

void sub_10000F258()
{
  if (qword_10002D8A0 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(ISImageDescriptor) initWithSize:*&qword_10002E548 scale:{*&qword_10002E548, 1.0}];
  v1 = objc_allocWithZone(ISIcon);
  v2 = sub_10001D2DC();
  v3 = [v1 initWithBundleIdentifier:v2];

  v4 = [v3 prepareImageForDescriptor:v0];
  if (v4)
  {
    v5 = [v4 CGImage];

    if (v5)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10000F38C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001CDAC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10001D2CC();
  __chkstk_darwin(v7 - 8);
  sub_10001D2BC();
  sub_10001CD6C();
  v8 = sub_10001D32C();
  v10 = v9;
  sub_10001D2BC();
  sub_10001CD6C();
  v11 = sub_10001D32C();
  v13 = v12;
  v14 = qword_10002D8A0;
  v15 = a1;
  if (v14 != -1)
  {
    v18 = v15;
    swift_once();
    v15 = v18;
  }

  v16 = qword_10002E548;
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = a2;
  *(a3 + 48) = v15;
  *(a3 + 56) = 0x4044800000000000;
  *(a3 + 64) = v16;
  *(a3 + 72) = v16;
  *(a3 + 80) = xmmword_10001E6D0;
  *(a3 + 96) = xmmword_10001E6E0;
  *(a3 + 112) = xmmword_10001E6F0;
  *(a3 + 128) = xmmword_10001E700;
  result = 6.0;
  *(a3 + 144) = xmmword_10001E710;
  *(a3 + 160) = 0x401E000000000000;
  return result;
}

uint64_t sub_10000F5AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000F5E4()
{
  result = qword_10002E4E0;
  if (!qword_10002E4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002E4E0);
  }

  return result;
}

uint64_t sub_10000F630()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000F688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F6A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000F6E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000F738(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F814;

  return sub_10000E354(v8, v9, a1, v4, v5, v6, v7, v10);
}

uint64_t sub_10000F814()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F908(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004798(result, a2);
  }

  return result;
}

__n128 sub_10000F91C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10000F958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F9A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000FA18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000FA4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10000FA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000FB3C()
{
  result = qword_10002E090;
  if (!qword_10002E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E090);
  }

  return result;
}

unint64_t sub_10000FBF4()
{
  result = qword_10002E0A8;
  if (!qword_10002E0A8)
  {
    sub_10000F6A0(&qword_10002E070, &qword_10001E8F8);
    sub_1000112AC(&qword_10002E0B0, &qword_10002E0B8, &qword_10001E958, &protocol conformance descriptor for VStack<A>);
    sub_1000112AC(&qword_10002E0C0, &qword_10002E0A0, &qword_10001E950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0A8);
  }

  return result;
}

unint64_t sub_10000FDA4()
{
  result = qword_10002E0E0;
  if (!qword_10002E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0E0);
  }

  return result;
}

void sub_10000FDF8(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, *&a9, a6, a7, a8;
  }
}

uint64_t sub_10000FE08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CF3C();
  *a1 = result;
  return result;
}

uint64_t sub_10000FE5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CF5C();
  *a1 = result;
  return result;
}

unint64_t sub_10000FEB4()
{
  result = qword_10002E0F0;
  if (!qword_10002E0F0)
  {
    sub_10000F6A0(&qword_10002E0E8, &qword_10001EA08);
    sub_10000FF6C();
    sub_1000112AC(&qword_10002E118, &qword_10002E120, &qword_10001EA20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0F0);
  }

  return result;
}

unint64_t sub_10000FF6C()
{
  result = qword_10002E0F8;
  if (!qword_10002E0F8)
  {
    sub_10000F6A0(&qword_10002E100, &qword_10001EA10);
    sub_1000112AC(&qword_10002E108, &qword_10002E110, &qword_10001EA18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E0F8);
  }

  return result;
}

uint64_t sub_100010024(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_10001006C(a1, a2, a3 & 1);
}

uint64_t sub_10001006C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_10001007C(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, char a3, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  sub_10000FDF8(a1, a2, (a3 & 1), a4, a5, a6, a7, a8, a9, a10, a11, a12);

  a4, v13, v14, v15, v16, *&v20, v17, v18, v19;
}

uint64_t sub_1000100C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002EFC(&qword_10002E140, &qword_10001EA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010134()
{
  result = qword_10002E168;
  if (!qword_10002E168)
  {
    sub_10000F6A0(&qword_10002E148, &qword_10001EA48);
    sub_1000112AC(&qword_10002E170, &qword_10002E140, &qword_10001EA40, &protocol conformance descriptor for HStack<A>);
    sub_1000112AC(&qword_10002E0C0, &qword_10002E0A0, &qword_10001E950, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E168);
  }

  return result;
}

uint64_t sub_100010218(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000102E8()
{
  result = qword_10002E1C0;
  if (!qword_10002E1C0)
  {
    sub_10000F6A0(&qword_10002E1B8, &qword_10001EAA8);
    sub_1000103A0();
    sub_1000112AC(&qword_10002E208, &qword_10002E210, &qword_10001EAD0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1C0);
  }

  return result;
}

unint64_t sub_1000103A0()
{
  result = qword_10002E1C8;
  if (!qword_10002E1C8)
  {
    sub_10000F6A0(&qword_10002E1D0, &qword_10001EAB0);
    sub_100010458();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1C8);
  }

  return result;
}

unint64_t sub_100010458()
{
  result = qword_10002E1D8;
  if (!qword_10002E1D8)
  {
    sub_10000F6A0(&qword_10002E1E0, &qword_10001EAB8);
    sub_1000104E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1D8);
  }

  return result;
}

unint64_t sub_1000104E4()
{
  result = qword_10002E1E8;
  if (!qword_10002E1E8)
  {
    sub_10000F6A0(&qword_10002E1F0, &qword_10001EAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1E8);
  }

  return result;
}

uint64_t sub_100010568(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10001006C(a1, a2, a3 & 1);
}

uint64_t sub_1000105A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001006C(result, a2, a3 & 1);
  }

  return result;
}

void sub_1000105E8(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, char a3, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  sub_10000FDF8(a1, a2, (a3 & 1), a4, a5, a6, a7, a8, a9, a10, a11, a12);

  a4, v13, v14, v15, v16, *&v20, v17, v18, v19;
}

void sub_100010624(uint64_t result, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, char a3, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  if (a4)
  {
    sub_10000FDF8(result, a2, (a3 & 1), a4, a5, a6, a7, a8, a9, a10, a11, a12);

    a4, v13, v14, v15, v16, *&v20, v17, v18, v19;
  }
}

uint64_t sub_100010668(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CEEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000106CC(uint64_t a1)
{
  v2 = sub_10001CEEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010728()
{
  result = qword_10002E290;
  if (!qword_10002E290)
  {
    sub_10000F6A0(&qword_10002E288, &qword_10001EB48);
    sub_1000107E0();
    sub_1000112AC(&qword_10002E2E8, &qword_10002E280, &qword_10001EB40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E290);
  }

  return result;
}

unint64_t sub_1000107E0()
{
  result = qword_10002E298;
  if (!qword_10002E298)
  {
    sub_10000F6A0(&qword_10002E2A0, &qword_10001EB50);
    sub_10001086C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E298);
  }

  return result;
}

unint64_t sub_10001086C()
{
  result = qword_10002E2A8;
  if (!qword_10002E2A8)
  {
    sub_10000F6A0(&qword_10002E2B0, &qword_10001EB58);
    sub_1000108F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2A8);
  }

  return result;
}

unint64_t sub_1000108F8()
{
  result = qword_10002E2B8;
  if (!qword_10002E2B8)
  {
    sub_10000F6A0(&qword_10002E2C0, &qword_10001EB60);
    sub_1000109B0();
    sub_1000112AC(&qword_10002E2D8, &qword_10002E2E0, &qword_10001EB70, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2B8);
  }

  return result;
}

unint64_t sub_1000109B0()
{
  result = qword_10002E2C8;
  if (!qword_10002E2C8)
  {
    sub_10000F6A0(&qword_10002E2D0, &qword_10001EB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2C8);
  }

  return result;
}

unint64_t sub_100010A34()
{
  result = qword_10002E2F0;
  if (!qword_10002E2F0)
  {
    sub_10000F6A0(&qword_10002E218, &qword_10001EAD8);
    sub_100010AEC();
    sub_1000112AC(&qword_10002E2E8, &qword_10002E280, &qword_10001EB40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2F0);
  }

  return result;
}

unint64_t sub_100010AEC()
{
  result = qword_10002E2F8;
  if (!qword_10002E2F8)
  {
    sub_10000F6A0(&qword_10002E278, &qword_10001EB38);
    sub_100010B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E2F8);
  }

  return result;
}

unint64_t sub_100010B78()
{
  result = qword_10002E300;
  if (!qword_10002E300)
  {
    sub_10000F6A0(&qword_10002E270, &qword_10001EB30);
    sub_100010C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E300);
  }

  return result;
}

unint64_t sub_100010C04()
{
  result = qword_10002E308;
  if (!qword_10002E308)
  {
    sub_10000F6A0(&qword_10002E268, &qword_10001EB28);
    sub_100010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E308);
  }

  return result;
}

unint64_t sub_100010C90()
{
  result = qword_10002E310;
  if (!qword_10002E310)
  {
    sub_10000F6A0(&qword_10002E260, &qword_10001EB20);
    sub_100010D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E310);
  }

  return result;
}

unint64_t sub_100010D1C()
{
  result = qword_10002E318;
  if (!qword_10002E318)
  {
    sub_10000F6A0(&qword_10002E258, &qword_10001EB18);
    sub_100010DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E318);
  }

  return result;
}

unint64_t sub_100010DA8()
{
  result = qword_10002E320;
  if (!qword_10002E320)
  {
    sub_10000F6A0(&qword_10002E228, &qword_10001EAE8);
    sub_1000112AC(&qword_10002E328, &qword_10002E250, &qword_10001EB10, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E320);
  }

  return result;
}

uint64_t sub_100010E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EFC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010EC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002EFC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100010F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CF0C();
  *a1 = result;
  return result;
}

uint64_t sub_100010F80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100010FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10001101C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100011048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100011090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100011100()
{
  result = qword_10002E348;
  if (!qword_10002E348)
  {
    sub_10000F6A0(&qword_10002E0D0, &qword_10001E998);
    sub_1000111B8();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E348);
  }

  return result;
}

unint64_t sub_1000111B8()
{
  result = qword_10002E350;
  if (!qword_10002E350)
  {
    sub_10000F6A0(&qword_10002E080, &qword_10001E908);
    sub_10000F6A0(&qword_10002E070, &qword_10001E8F8);
    sub_10000FBF4();
    swift_getOpaqueTypeConformance2();
    sub_1000112AC(&qword_10002E358, &qword_10002E0C8, &qword_10001E990, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E350);
  }

  return result;
}

uint64_t sub_1000112AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000F6A0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000112F8()
{
  result = qword_10002E360;
  if (!qword_10002E360)
  {
    sub_10000F6A0(&qword_10002E178, &qword_10001EA68);
    sub_1000113B0();
    sub_1000112AC(&qword_10002E1F8, &qword_10002E200, &qword_10001EAC8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E360);
  }

  return result;
}

unint64_t sub_1000113B0()
{
  result = qword_10002E368;
  if (!qword_10002E368)
  {
    sub_10000F6A0(&qword_10002E158, &qword_10001EA58);
    sub_10000F6A0(&qword_10002E148, &qword_10001EA48);
    sub_100010134();
    swift_getOpaqueTypeConformance2();
    sub_1000112AC(&qword_10002E358, &qword_10002E0C8, &qword_10001E990, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E368);
  }

  return result;
}

uint64_t sub_1000114B8(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100010E60(a3, v32 - v10, &qword_10002E048, &qword_10001E770);
  v12 = sub_10001D47C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010EC8(v11, &qword_10002E048, &qword_10001E770);
  }

  else
  {
    sub_10001D46C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10001D43C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001D34C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_100010EC8(a3, &qword_10002E048, &qword_10001E770);
      a2, v24, v25, v26, v27, v34, v28, v29, v30;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010EC8(a3, &qword_10002E048, &qword_10001E770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

double sub_1000117B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000117FC(uint64_t a1)
{
  result = sub_10001D21C();
  v2 = 41.0;
  if (result)
  {
    v2 = 32.0;
  }

  qword_10002E550 = *&v2;
  return result;
}

uint64_t sub_100011838(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001CE1C();
  sub_10001CB68(v2, qword_10002E558);
  sub_1000023A4(v2, qword_10002E558);
  return sub_10001CE0C();
}

void sub_1000118B8(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_logger;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v5 = sub_10001CE1C();
  v6 = sub_1000023A4(v5, qword_10002E558);
  (*(*(v5 - 8) + 16))(&v2[v4], v6, v5);
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID] = -1;
  v7 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_credential] = 0;
  v8 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_layerGrader;
  *&v2[v8] = [objc_allocWithZone(UISTransform3DGrader) init];
  v9 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_contentsGrader;
  *&v2[v9] = [objc_allocWithZone(UISTransform3DGrader) init];
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag] = 0;
  v10 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_bundleID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_purposeString];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName];
  *v12 = 7368769;
  *(v12 + 1) = 0xE300000000000000;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_matches] = 0;
  v13 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedQueryString];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredEmails] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedIgnoredPhones] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTraits] = 0;
  v14 = &v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedFrame];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedTag] = 0;
  *&v2[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle] = 0;
  v35.receiver = v2;
  v35.super_class = type metadata accessor for ContactsButtonServiceProvider(0);
  v15 = objc_msgSendSuper2(&v35, "init");
  v16 = objc_allocWithZone(UISSlotMachine);
  v17 = v15;
  v18 = [v16 initWithSlotDrawer:v17 options:3];
  v19 = *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine];
  *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotMachine] = v18;

  [a1 auditToken];
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = &v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  *v24 = v31;
  *(v24 + 1) = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  v24[32] = 0;
  v25 = objc_opt_self();
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v26 = [v25 auditToken:&v31];
  v27 = *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken];
  *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cnAuditToken] = v26;
  v28 = v26;

  if (v28)
  {
    v29 = [objc_allocWithZone(CNAuthorizationContext) initWithAuditToken:v28 assumedIdentity:0];

    v30 = *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext];
    *&v17[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext] = v29;
  }

  else
  {
    __break(1u);
  }
}

double sub_100011C10(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a6;
  v15 = sub_100002EFC(&qword_10002E048, &qword_10001E770);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_10001D47C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_10001D45C();
  v19 = a5;

  v20 = a8;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = sub_10001D44C();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v21;
  v26[5] = v22;
  v26[6] = a3;
  v26[7] = v24;
  v27 = v30;
  v26[8] = a5;
  v26[9] = v27;
  v26[10] = a7;
  v26[11] = v20;
  sub_1000114B8(0, 0, v17, &unk_10001EDA0, v26);

  return result;
}

uint64_t sub_100011DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 272) = v13;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  sub_10001D45C();
  *(v8 + 296) = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_100011E5C, v10, v9);
}

int64_t sub_100011E5C()
{
  v66 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton];
  if (!v1)
  {
    if ((v2[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v4 = *(v0 + 240);
    v5 = v2;
    v6 = v4;
    sub_10000F38C(v5, v6, &v52);
    sub_10001D23C();
    sub_10001CE6C();
    v7 = v63;
    *(v0 + 176) = v62;
    *(v0 + 192) = v7;
    *(v0 + 208) = v64;
    *(v0 + 224) = v65;
    v8 = v59;
    *(v0 + 112) = v58;
    *(v0 + 128) = v8;
    v9 = v61;
    *(v0 + 144) = v60;
    *(v0 + 160) = v9;
    v10 = v55;
    *(v0 + 48) = v54;
    *(v0 + 64) = v10;
    v11 = v57;
    *(v0 + 80) = v56;
    *(v0 + 96) = v11;
    v12 = v53;
    *(v0 + 16) = v52;
    *(v0 + 32) = v12;
    v13 = &unk_10002E058;
    v14 = &unk_10001E790;
    goto LABEL_8;
  }

  [*(v0 + 248) floatValue];
  v2 = *(v0 + 232);
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v15 = qword_10002D8A0;
  v16 = v2;
  if (v15 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v17 = *(v0 + 240);
    v18 = qword_10002E548;
    v19 = v16;
    v6 = v17;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 48) = v18;
    *(v0 + 56) = v18;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    v20 = v53;
    *(v0 + 152) = v52;
    *(v0 + 16) = v19;
    *(v0 + 24) = v6;
    *(v0 + 32) = v19;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 144) = 0x401E000000000000;
    *(v0 + 168) = v20;
    *(v0 + 184) = v54;
    v13 = &unk_10002E050;
    v14 = &unk_10001E788;
LABEL_8:
    sub_100002EFC(v13, v14);
    swift_allocObject();
    sub_10001CEAC();
    [v6 displayScale];
    sub_10001CE9C();
    v21 = sub_10001CE7C();
    v22 = v21;
    sub_10001CE8C();
    v24 = v23;

    if (!v21)
    {

      v47 = sub_10001CDFC();
      v48 = sub_10001D4EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "#ContactsButton #size imageRenderer could not render cgImage so returning default values for sizeThatFits", v49, 2u);
      }

      v50 = *(v0 + 272);

      sub_1000072F8(0, &qword_10002E500, NSNumber_ptr);
      isa = sub_10001D56C(300).super.super.isa;
      v39 = sub_10001D56C(50).super.super.isa;
      v50(isa, v39);
      v25 = 0;
      goto LABEL_31;
    }

    v25 = v21;
    v26 = sub_10001CDFC();
    v27 = sub_10001D50C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = CGImageGetWidth(v25);
      *(v28 + 12) = 2048;
      *(v28 + 14) = CGImageGetHeight(v25);
      _os_log_impl(&_mh_execute_header, v26, v27, "#ContactsButton #size renderer Scaled image: %ld x %ld", v28, 0x16u);
    }

    result = CGImageGetWidth(v25);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v30 = v24;
    if (v24)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
    v16 = *(v0 + 232);
  }

  if (v30 == -1 && result == 0x8000000000000000)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v31 = [objc_allocWithZone(NSNumber) initWithInteger:result / v30];
  result = CGImageGetHeight(v25);
  if (v30 == -1 && result == 0x8000000000000000)
  {
    goto LABEL_40;
  }

  v32 = [objc_allocWithZone(NSNumber) initWithInteger:result / v30];
  if (v1)
  {
    v33 = *(v0 + 248);
    [v33 floatValue];
    if (v34 > 0.0)
    {
      v35 = v33;

      v31 = v35;
    }
  }

  v36 = *(v0 + 264);
  if (v36)
  {
    [*(v0 + 264) floatValue];
    if (v37 > 0.0)
    {
      v38 = v36;

      v32 = v38;
    }
  }

  v39 = v31;
  isa = v32;
  v41 = sub_10001CDFC();
  v42 = sub_10001D50C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412546;
    *(v43 + 4) = v39;
    *(v43 + 12) = 2112;
    *(v43 + 14) = isa;
    *v44 = v39;
    v44[1] = isa;
    v45 = v39;
    v46 = isa;
    _os_log_impl(&_mh_execute_header, v41, v42, "#ContactsButton #size provider resolved width: %@ height: %@", v43, 0x16u);
    sub_100002EFC(&qword_10002DA60, &qword_10001ECF0);
    swift_arrayDestroy();
  }

  (*(v0 + 272))(v39, isa);
LABEL_31:

  dispatch_group_leave(*(v0 + 288));
  v51 = *(v0 + 8);

  return v51();
}

unint64_t sub_10001259C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002EFC(&qword_10002E488, &qword_10001ED38);
    v2 = sub_10001D67C();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (*(a1 + 48) + ((v13 << 10) | (16 * v14)));
        v17 = *v15;
        v16 = v15[1];

        swift_dynamicCast();
        sub_1000199A4(&v33, v35);
        sub_1000199A4(v35, v36);
        sub_1000199A4(v36, &v34);
        result = sub_100017EE0(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;
          v10, v18, v19, v20, v21, *&v25, v22, v23, v24;
          v12 = (v2[7] + 32 * v11);
          sub_100002F44(v12);
          result = sub_1000199A4(&v34, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v29 = (v2[6] + 16 * result);
          *v29 = v17;
          v29[1] = v16;
          result = sub_1000199A4(&v34, (v2[7] + 32 * result));
          v30 = v2[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_21;
          }

          v2[2] = v32;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000129A0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_10001D3CC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[29] = a4;
  sub_10001D45C();
  v8[34] = sub_10001D44C();
  v10 = sub_10001D43C();

  return _swift_task_switch(sub_100012B14, v10, v9);
}

uint64_t sub_100012B14()
{
  v29 = v0;
  v1 = *(v0 + 240);

  v2 = *(v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton);
  CGRectGetWidth(*(v1 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame));
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 240);
    v5 = v3;
    sub_10000F38C(v4, v5, v27);
    sub_10001D23C();
    sub_10001CE6C();
    v6 = v27[11];
    *(v0 + 176) = v27[10];
    *(v0 + 192) = v6;
    *(v0 + 208) = v27[12];
    *(v0 + 224) = v28;
    v7 = v27[7];
    *(v0 + 112) = v27[6];
    *(v0 + 128) = v7;
    v8 = v27[9];
    *(v0 + 144) = v27[8];
    *(v0 + 160) = v8;
    v9 = v27[3];
    *(v0 + 48) = v27[2];
    *(v0 + 64) = v9;
    v10 = v27[5];
    *(v0 + 80) = v27[4];
    *(v0 + 96) = v10;
    v11 = v27[1];
    *(v0 + 16) = v27[0];
    *(v0 + 32) = v11;
    v12 = &unk_10002E058;
    v13 = &unk_10001E790;
  }

  else
  {
    v14 = qword_10002D8A0;
    v15 = *(v0 + 240);
    if (v14 != -1)
    {
      swift_once();
      v15 = *(v0 + 240);
    }

    v16 = *(v0 + 248);
    v17 = qword_10002E548;
    v18 = v15;
    v5 = v16;
    sub_10001D23C();
    sub_10001CE6C();
    *(v0 + 16) = v18;
    *(v0 + 24) = v5;
    *(v0 + 32) = v18;
    *(v0 + 40) = 0x4044800000000000;
    *(v0 + 48) = v17;
    *(v0 + 56) = v17;
    *(v0 + 64) = xmmword_10001E6D0;
    *(v0 + 80) = xmmword_10001E6E0;
    *(v0 + 96) = xmmword_10001E6F0;
    *(v0 + 112) = xmmword_10001E700;
    *(v0 + 128) = xmmword_10001E710;
    *(v0 + 144) = 0x401E000000000000;
    v12 = &unk_10002E050;
    v13 = &unk_10001E788;
  }

  sub_100002EFC(v12, v13);
  swift_allocObject();
  sub_10001CEAC();
  [v5 displayScale];
  sub_10001CE9C();
  v19 = sub_10001CE7C();
  v20 = v19;
  sub_10001CE8C();

  v21 = *(v0 + 256);
  v22 = *(v0 + 232);
  swift_beginAccess();
  v23 = *(v22 + 16);
  *(v22 + 16) = v19;

  v24 = *(v21 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
  if (v24)
  {
    *(v24 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully) = 1;
  }

  dispatch_group_leave(*(v0 + 264));
  v25 = *(v0 + 8);

  return v25();
}

id sub_100012E68(void *a1)
{
  v3 = sub_10001CC9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v414 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag];
  if (!v7 || v7[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_renderedSuccessfully] != 1)
  {
    v19 = sub_10001CDFC();
    v20 = sub_10001D4EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "#ContactsButton rendering did not succeed", v21, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v23 = v22;
    (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType._failedRendering(_:), v3);
    v24 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v25 = objc_allocWithZone(NSError);
    v26 = sub_10001D2DC();
    v23, v27, v28, v29, v30, v445, v31, v32, v33;
    v34 = [v25 initWithDomain:v26 code:v24 userInfo:0];
    goto LABEL_16;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = [v10 authenticateMessage:a1];

  if (v11 != 2)
  {
    v35 = sub_10001CDFC();
    v36 = sub_10001D4EC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v35, v36, "#ContactsButton authentication status is invalid: %ld", v37, 0xCu);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = v38;
    v18 = &enum case for ContactButtonServiceErrorType._invalidAuthMessage(_:);
    goto LABEL_14;
  }

  v12 = &v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken];
  if (v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken + 32])
  {
    v13 = sub_10001CDFC();
    v14 = sub_10001D4EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "#ContactsButton no audit token found", v15, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = v16;
    v18 = &enum case for ContactButtonServiceErrorType._invalidAuditToken(_:);
    goto LABEL_14;
  }

  v50 = v12[2];
  v49 = v12[3];
  v51 = *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_auditToken + 8];
  *&v437 = *v12;
  *(&v437 + 1) = v51;
  *&v438 = v50;
  *(&v438 + 1) = v49;
  v52 = BSVersionedPIDForAuditToken();
  if (v52 != [a1 versionedPID])
  {
    v59 = a1;
    v60 = sub_10001CDFC();
    v61 = sub_10001D4EC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v419 = v9;
      v63 = v62;
      *v62 = 134218240;
      *(v62 + 4) = [v59 versionedPID];

      *(v63 + 12) = 2048;
      *(v63 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v60, v61, "#ContactsButton authMessage vpid: %lld does not matches auditToken vpid: %lld", v63, 0x16u);
      v9 = v419;
    }

    else
    {

      v60 = v59;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = v117;
    v18 = &enum case for ContactButtonServiceErrorType._mismatchedTokenPid(_:);
    goto LABEL_14;
  }

  v53 = mach_continuous_time();
  if (v53 < [a1 timestamp])
  {
    v54 = a1;
    v55 = sub_10001CDFC();
    v56 = sub_10001D4EC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v9;
      v58 = swift_slowAlloc();
      *v58 = 134218240;
      *(v58 + 4) = v53;
      *(v58 + 12) = 2048;
      *(v58 + 14) = [v54 timestamp];

      _os_log_impl(&_mh_execute_header, v55, v56, "#ContactsButton authentication message came from the future? currentTime: %llu  messageTime: %llu", v58, 0x16u);
      v9 = v57;
    }

    else
    {

      v55 = v54;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = v118;
    v18 = &enum case for ContactButtonServiceErrorType._invalidTimestamp(_:);
LABEL_14:
    (*(v4 + 104))(v6, *v18, v3);
    v39 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v40 = objc_allocWithZone(NSError);
    v26 = sub_10001D2DC();
    v17, v41, v42, v43, v44, v446, v45, v46, v47;
    v34 = [v40 initWithDomain:v26 code:v39 userInfo:0];
LABEL_15:

LABEL_16:
    return v34;
  }

  v64 = [a1 timestamp];
  v66 = v53 - v64;
  if (v53 < v64)
  {
    __break(1u);
  }

  else if (qword_10002D8B8 == -1)
  {
    goto LABEL_26;
  }

  swift_once();
LABEL_26:
  if (!is_mul_ok(v66, qword_10002E370))
  {
    __break(1u);
    goto LABEL_119;
  }

  LODWORD(v65) = HIDWORD(qword_10002E370);
  v67 = (v66 * qword_10002E370) / v65 / 1000000000.0;
  if (v67 >= 3.0)
  {
    v119 = a1;
    v120 = sub_10001CDFC();
    v121 = sub_10001D4EC();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = v9;
      v123 = swift_slowAlloc();
      *v123 = 134218496;
      *(v123 + 4) = v67;
      *(v123 + 12) = 2048;
      *(v123 + 14) = v53;
      *(v123 + 22) = 2048;
      *(v123 + 24) = [v119 timestamp];

      _os_log_impl(&_mh_execute_header, v120, v121, "#ContactsButton message is too old: %f  currentTime: %llu  messageTime: %llu", v123, 0x20u);
      v9 = v122;
    }

    else
    {

      v120 = v119;
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v17 = v129;
    v18 = &enum case for ContactButtonServiceErrorType._oldTimestamp(_:);
    goto LABEL_14;
  }

  v419 = v9;
  v68 = [a1 targetSlotID];
  v69 = OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID;
  if (v68 != *&v1[OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_slotID])
  {
    v418 = v1;
    v124 = a1;
    v125 = v1;
    v126 = sub_10001CDFC();
    v127 = sub_10001D4EC();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 67109376;
      *(v128 + 4) = *&v125[v69];

      *(v128 + 8) = 1024;
      *(v128 + 10) = [v124 targetSlotID];

      _os_log_impl(&_mh_execute_header, v126, v127, "#ContactsButton invalid slot ID, expected %u but got %u", v128, 0xEu);
    }

    else
    {

      v126 = v124;
    }

    v130 = v419;

    sub_10001CC7C();
    sub_10001CBDC();
    v132 = v131;
    (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType._slotIDMismatch(_:), v3);
    v133 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v134 = objc_allocWithZone(NSError);
    v26 = sub_10001D2DC();
    v132, v135, v136, v137, v138, v447, v139, v140, v141;
    v34 = [v134 initWithDomain:v26 code:v133 userInfo:0];

    goto LABEL_16;
  }

  v70 = [a1 hitTestInformationFromStartEvent];
  if (!v70)
  {
    v142 = sub_10001CDFC();
    v143 = sub_10001D4EC();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v142, v143, "#ContactsButton message didn't have starting hit test info?", v144, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v146 = v145;
    (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v3);
    v147 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v148 = objc_allocWithZone(NSError);
    v26 = sub_10001D2DC();
    v146, v149, v150, v151, v152, v448, v153, v154, v155;
    v34 = [v148 initWithDomain:v26 code:v147 userInfo:0];

    goto LABEL_16;
  }

  v9 = v70;
  v71 = [a1 hitTestInformationFromEndEvent];
  if (!v71)
  {
    v156 = sub_10001CDFC();
    v157 = sub_10001D4EC();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&_mh_execute_header, v156, v157, "#ContactsButton message didn't have ending hit test info?", v158, 2u);
    }

    sub_10001CC7C();
    sub_10001CBDC();
    v160 = v159;
    (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType._missingHitTest(_:), v3);
    v161 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v162 = objc_allocWithZone(NSError);
    v26 = sub_10001D2DC();
    v160, v163, v164, v165, v166, v449, v167, v168, v169;
    v34 = [v162 initWithDomain:v26 code:v161 userInfo:0];

    goto LABEL_15;
  }

  v72 = v71;
  v416 = v1;
  v418 = v9;
  [v9 cumulativeOpacity];
  v74 = sub_100009314(0, v73);
  [v72 cumulativeOpacity];
  v76 = sub_100009314(0, v75);
  v77 = v76;
  v417 = v72;
  if ((v74 & 1) == 0 || (v76 & 1) == 0)
  {
    v170 = sub_10001CDFC();
    v171 = sub_10001D4EC();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v416 = swift_slowAlloc();
      *&v437 = v416;
      *v172 = 136315394;
      if (v74)
      {
        v173 = 0;
      }

      else
      {
        v173 = 7630702;
      }

      if (v74)
      {
        v174 = 0xE000000000000000;
      }

      else
      {
        v174 = 0xE300000000000000;
      }

      v175 = sub_100017934(v173, v174, &v437);
      v415 = v171;
      v176 = v175;
      v174, v177, v178, v179, v180, v450, v181, v182, v183;
      *(v172 + 4) = v176;
      *(v172 + 12) = 2080;
      if (v77)
      {
        v184 = 0;
      }

      else
      {
        v184 = 7630702;
      }

      if (v77)
      {
        v185 = 0xE000000000000000;
      }

      else
      {
        v185 = 0xE300000000000000;
      }

      v186 = sub_100017934(v184, v185, &v437);
      v185, v187, v188, v189, v190, v451, v191, v192, v193;
      *(v172 + 14) = v186;
      _os_log_impl(&_mh_execute_header, v170, v415, "#ContactsButton invalid contrast for FG font color, start %s ok, end %s ok", v172, 0x16u);
      swift_arrayDestroy();
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(inited + 32) = sub_10001CBEC();
    *(inited + 40) = v195;
    *(inited + 48) = 0xD00000000000006CLL;
    *(inited + 56) = 0x8000000100021AA0;
    v196 = sub_100018F10(inited);
    swift_setDeallocating();
    sub_100010EC8(inited + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    v198 = v197;
    (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType.invalidContrast(_:), v3);
    v199 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v200 = sub_10001259C(v196);
    v196, v201, v202, v203, v204, v452, v205, v206, v207;
    v208 = objc_allocWithZone(NSError);
    v209 = sub_10001D2DC();
    v198, v210, v211, v212, v213, v453, v214, v215, v216;
    goto LABEL_100;
  }

  [v418 cumulativeOpacity];
  v79 = sub_100009314(1, v78);
  [v72 cumulativeOpacity];
  v81 = sub_100009314(1, v80);
  v82 = v81;
  if ((v79 & 1) == 0 || (v81 & 1) == 0)
  {
    v217 = sub_10001CDFC();
    v218 = sub_10001D4EC();
    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v416 = swift_slowAlloc();
      *&v437 = v416;
      *v219 = 136315394;
      if (v79)
      {
        v220 = 0;
      }

      else
      {
        v220 = 7630702;
      }

      v415 = v218;
      if (v79)
      {
        v221 = 0xE000000000000000;
      }

      else
      {
        v221 = 0xE300000000000000;
      }

      v222 = sub_100017934(v220, v221, &v437);
      v221, v223, v224, v225, v226, v454, v227, v228, v229;
      *(v219 + 4) = v222;
      *(v219 + 12) = 2080;
      if (v82)
      {
        v230 = 0;
      }

      else
      {
        v230 = 7630702;
      }

      if (v82)
      {
        v231 = 0xE000000000000000;
      }

      else
      {
        v231 = 0xE300000000000000;
      }

      v232 = sub_100017934(v230, v231, &v437);
      v231, v233, v234, v235, v236, v455, v237, v238, v239;
      *(v219 + 14) = v232;
      _os_log_impl(&_mh_execute_header, v217, v415, "#ContactsButton invalid contrast for tint color, start %s ok, end %s ok", v219, 0x16u);
      swift_arrayDestroy();
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v240 = swift_initStackObject();
    *(v240 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v240 + 32) = sub_10001CBEC();
    *(v240 + 40) = v241;
    *(v240 + 48) = 0xD000000000000062;
    *(v240 + 56) = 0x8000000100021B10;
    v242 = sub_100018F10(v240);
    swift_setDeallocating();
    sub_100010EC8(v240 + 32, &qword_10002E480, &qword_10001ED30);
    sub_10001CBDC();
    v244 = v243;
    v245 = &enum case for ContactButtonServiceErrorType.invalidContrast(_:);
LABEL_99:
    (*(v4 + 104))(v6, *v245, v3);
    v199 = sub_10001CC8C();
    (*(v4 + 8))(v6, v3);
    v200 = sub_10001259C(v242);
    v242, v246, v247, v248, v249, v456, v250, v251, v252;
    v208 = objc_allocWithZone(NSError);
    v209 = sub_10001D2DC();
    v244, v253, v254, v255, v256, v457, v257, v258, v259;
LABEL_100:
    v260.super.isa = sub_10001D28C().super.isa;
    v200, v261, v262, v263, v264, v458, v265, v266, v267;
    v34 = [v208 initWithDomain:v209 code:v199 userInfo:v260.super.isa];

LABEL_101:
    return v34;
  }

  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v83 = sub_10001CE1C();
  sub_1000023A4(v83, qword_10002E558);
  v84 = v419;
  v85 = sub_10001CDFC();
  v86 = sub_10001D4CC();

  v87 = &ServiceDelegate;
  if (os_log_type_enabled(v85, v86))
  {
    v88 = v84;
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    [*&v88[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] pointSize];
    *(v89 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v85, v86, "#ContactsButton is font size %f too small?", v89, 0xCu);
    v84 = v88;
    v87 = &ServiceDelegate;
  }

  v91 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont;
  [*&v84[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_primaryFont] v87[451].count];
  if (v92 > 6.0)
  {
    v93 = v84;
    v94 = sub_10001CDFC();
    v95 = sub_10001D4CC();

    v96 = os_log_type_enabled(v94, v95);
    v419 = v93;
    if (v96)
    {
      v97 = v87;
      v98 = v84;
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      [*&v98[v91] v97[451].count];
      *(v99 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v94, v95, "#ContactsButton is font size %f too big?", v99, 0xCu);
      v84 = v98;
      v87 = v97;
      v93 = v419;
    }

    [*&v84[v91] v87[451].count];
    if (v101 >= 64.0)
    {
      v305 = sub_10001CDFC();
      v306 = sub_10001D4EC();
      if (os_log_type_enabled(v305, v306))
      {
        v307 = swift_slowAlloc();
        *v307 = 0;
        _os_log_impl(&_mh_execute_header, v305, v306, "#ContactsButton font size is too large to be useful", v307, 2u);
      }

      sub_100002EFC(&qword_10002E478, &qword_10001ED28);
      v308 = swift_allocObject();
      *(v308 + 16) = xmmword_10001E6C0;
      sub_10001CC7C();
      *(v308 + 32) = sub_10001CBEC();
      *(v308 + 40) = v309;
      *(v308 + 48) = 0xD000000000000034;
      *(v308 + 56) = 0x8000000100021C10;
      v310 = sub_100018F10(v308);
      swift_setDeallocating();
      sub_100010EC8(v308 + 32, &qword_10002E480, &qword_10001ED30);
      swift_deallocClassInstance();
      sub_10001CBDC();
      v312 = v311;
      (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType.fontTooBig(_:), v3);
      v313 = sub_10001CC8C();
      (*(v4 + 8))(v6, v3);
      v314 = sub_10001259C(v310);
      v310, v315, v316, v317, v318, v462, v319, v320, v321;
      v322 = objc_allocWithZone(NSError);
      v209 = sub_10001D2DC();
      v312, v323, v324, v325, v326, v463, v327, v328, v329;
      v260.super.isa = sub_10001D28C().super.isa;
      v314, v330, v331, v332, v333, v464, v334, v335, v336;
      v34 = [v322 initWithDomain:v209 code:v313 userInfo:v260.super.isa];

      goto LABEL_101;
    }

    if (sub_100009018())
    {
      v102 = v416;
      v103 = *(v416 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_layerGrader);
      v104 = v418;
      [v418 cumulativeLayerTransform];
      v105 = v417;
      [v417 cumulativeLayerTransform];
      v425 = v433;
      v426 = v434;
      v427 = v435;
      v428 = v436;
      v421 = v429;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v106 = [v103 gradeStartTransform3D:&v421 endTransform3D:v420];
      v107 = *(v102 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_contentsGrader);
      [v104 cumulativeContentsTransform];
      [v105 cumulativeContentsTransform];
      v425 = v441;
      v426 = v442;
      v427 = v443;
      v428 = v444;
      v421 = v437;
      v422 = v438;
      v423 = v439;
      v424 = v440;
      v108 = [v107 gradeStartTransform3D:&v421 endTransform3D:v420];
      v109 = sub_10001CDFC();
      v110 = sub_10001D4DC();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 134218240;
        *(v111 + 4) = v106;
        *(v111 + 12) = 2048;
        *(v111 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v109, v110, "#ContactsButton layerStatus: %lu  contentsStatus: %lu", v111, 0x16u);
      }

      if (v106 | v108)
      {
        v343 = sub_10001CDFC();
        v344 = sub_10001D4EC();
        if (os_log_type_enabled(v343, v344))
        {
          v345 = swift_slowAlloc();
          *v345 = 0;
          _os_log_impl(&_mh_execute_header, v343, v344, "#ContactsButton invalid transform", v345, 2u);
        }

        sub_100002EFC(&qword_10002E478, &qword_10001ED28);
        v346 = swift_allocObject();
        *(v346 + 16) = xmmword_10001E6C0;
        sub_10001CC7C();
        *(v346 + 32) = sub_10001CBEC();
        *(v346 + 40) = v347;
        *(v346 + 48) = 0xD000000000000018;
        *(v346 + 56) = 0x8000000100021BD0;
        v348 = sub_100018F10(v346);
        swift_setDeallocating();
        sub_100010EC8(v346 + 32, &qword_10002E480, &qword_10001ED30);
        swift_deallocClassInstance();
        v348, v349, v350, v351, v352, v465, v353, v354, v355;
        sub_10001CBDC();
        v357 = v356;
        (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType.invalidTransform(_:), v3);
        v358 = sub_10001CC8C();
        (*(v4 + 8))(v6, v3);
        v359 = objc_allocWithZone(NSError);
        v26 = sub_10001D2DC();
        v357, v360, v361, v362, v363, v466, v364, v365, v366;
        v34 = [v359 initWithDomain:v26 code:v358 userInfo:0];

        goto LABEL_16;
      }

      if (([v418 detectedOcclusion] & 1) != 0 || objc_msgSend(v417, "detectedOcclusion"))
      {
        v418 = v418;
        v112 = v417;
        v113 = sub_10001CDFC();
        v114 = sub_10001D4EC();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 67109376;
          v116 = v418;
          *(v115 + 4) = [v418 detectedOcclusion];

          *(v115 + 8) = 1024;
          *(v115 + 10) = [v112 detectedOcclusion];

          _os_log_impl(&_mh_execute_header, v113, v114, "#ContactsButton occlusion detected start=%{BOOL}d end=%{BOOL}d", v115, 0xEu);
        }

        else
        {

          v113 = v112;
        }

        sub_100002EFC(&qword_10002E478, &qword_10001ED28);
        v367 = swift_allocObject();
        *(v367 + 16) = xmmword_10001E6C0;
        sub_10001CC7C();
        *(v367 + 32) = sub_10001CBEC();
        *(v367 + 40) = v368;
        *(v367 + 48) = 0xD000000000000012;
        *(v367 + 56) = 0x8000000100021BF0;
        v369 = sub_100018F10(v367);
        swift_setDeallocating();
        sub_100010EC8(v367 + 32, &qword_10002E480, &qword_10001ED30);
        swift_deallocClassInstance();
        sub_10001CBDC();
        v371 = v370;
        (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType.buttonOccluded(_:), v3);
        v372 = sub_10001CC8C();
        (*(v4 + 8))(v6, v3);
        v373 = sub_10001259C(v369);
        v369, v374, v375, v376, v377, v467, v378, v379, v380;
        v381 = objc_allocWithZone(NSError);
        v382 = sub_10001D2DC();
        v371, v383, v384, v385, v386, v468, v387, v388, v389;
        isa = sub_10001D28C().super.isa;
        v373, v391, v392, v393, v394, v469, v395, v396, v397;
        v34 = [v381 initWithDomain:v382 code:v372 userInfo:isa];

        return v34;
      }

LABEL_119:
      if (([v418 hasInsecureFilter] & 1) == 0 && !objc_msgSend(v417, "hasInsecureFilter"))
      {

        return 0;
      }

      v418 = v418;
      v398 = v417;
      v399 = sub_10001CDFC();
      v400 = sub_10001D4EC();
      if (os_log_type_enabled(v399, v400))
      {
        v401 = swift_slowAlloc();
        *v401 = 67109376;
        v402 = v418;
        *(v401 + 4) = [v418 hasInsecureFilter];

        *(v401 + 8) = 1024;
        *(v401 + 10) = [v398 hasInsecureFilter];

        _os_log_impl(&_mh_execute_header, v399, v400, "#ContactsButton insecure filter start=%{BOOL}d end=%{BOOL}d", v401, 0xEu);
      }

      else
      {

        v399 = v398;
      }

      sub_10001CC7C();
      sub_10001CBDC();
      v404 = v403;
      (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType._insecureFilter(_:), v3);
      v405 = sub_10001CC8C();
      (*(v4 + 8))(v6, v3);
      v406 = objc_allocWithZone(NSError);
      v26 = sub_10001D2DC();
      v404, v407, v408, v409, v410, v470, v411, v412, v413;
      v34 = [v406 initWithDomain:v26 code:v405 userInfo:0];

      goto LABEL_16;
    }

    v337 = sub_10001CDFC();
    v338 = sub_10001D4EC();
    if (os_log_type_enabled(v337, v338))
    {
      v339 = swift_slowAlloc();
      *v339 = 0;
      _os_log_impl(&_mh_execute_header, v337, v338, "#ContactsButton avatar is too large", v339, 2u);
    }

    sub_100002EFC(&qword_10002E478, &qword_10001ED28);
    v340 = swift_allocObject();
    *(v340 + 16) = xmmword_10001E6C0;
    sub_10001CC7C();
    *(v340 + 32) = sub_10001CBEC();
    *(v340 + 40) = v341;
    *(v340 + 48) = 0xD000000000000047;
    *(v340 + 56) = 0x8000000100021B80;
    v242 = sub_100018F10(v340);
    swift_setDeallocating();
    sub_100010EC8(v340 + 32, &qword_10002E480, &qword_10001ED30);
    swift_deallocClassInstance();
    sub_10001CBDC();
    v244 = v342;
    v245 = &enum case for ContactButtonServiceErrorType.avatarTooLarge(_:);
    goto LABEL_99;
  }

  v268 = v84;
  v269 = sub_10001CDFC();
  v270 = sub_10001D4EC();
  v271 = os_log_type_enabled(v269, v270);
  v272 = v418;
  if (v271)
  {
    v273 = swift_slowAlloc();
    *v273 = 0;
    _os_log_impl(&_mh_execute_header, v269, v270, "#ContactsButton font size is too small to be legible", v273, 2u);
  }

  sub_100002EFC(&qword_10002E478, &qword_10001ED28);
  v274 = swift_allocObject();
  *(v274 + 16) = xmmword_10001E6C0;
  sub_10001CC7C();
  *(v274 + 32) = sub_10001CBEC();
  *(v274 + 40) = v275;
  *(v274 + 48) = 0xD000000000000034;
  *(v274 + 56) = 0x8000000100021C50;
  v276 = sub_100018F10(v274);
  swift_setDeallocating();
  sub_100010EC8(v274 + 32, &qword_10002E480, &qword_10001ED30);
  swift_deallocClassInstance();
  sub_10001CBDC();
  v278 = v277;
  (*(v4 + 104))(v6, enum case for ContactButtonServiceErrorType.fontTooSmall(_:), v3);
  v279 = sub_10001CC8C();
  (*(v4 + 8))(v6, v3);
  v280 = sub_10001259C(v276);
  v276, v281, v282, v283, v284, v459, v285, v286, v287;
  v288 = objc_allocWithZone(NSError);
  v289 = sub_10001D2DC();
  v278, v290, v291, v292, v293, v460, v294, v295, v296;
  v297 = sub_10001D28C().super.isa;
  v280, v298, v299, v300, v301, v461, v302, v303, v304;
  v34 = [v288 initWithDomain:v289 code:v279 userInfo:v297];

  return v34;
}

double sub_10001507C()
{
  v1 = 0.0;
  mach_timebase_info(&v1);
  result = v1;
  qword_10002E370 = *&v1;
  return result;
}

char *sub_1000150E0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_10001CDAC();
  __chkstk_darwin(v14 - 8);
  v244 = &v229 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001D2CC();
  __chkstk_darwin(v16 - 8);
  v243 = &v229 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_10001CD9C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v19 = &v229 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001CCEC();
  v242 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v229 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CCDC();
  v23 = [a1 givenName];
  sub_10001D30C();

  sub_10001CCAC();
  v24 = [a1 familyName];
  sub_10001D30C();

  sub_10001CCBC();
  v25 = objc_opt_self();
  v241 = v22;
  v26 = sub_10001CCCC();
  v27 = [v25 localizedStringFromPersonNameComponents:v26 style:0 options:0];

  v28 = sub_10001D30C();
  v30 = v29;

  if (sub_10001CC0C() == 0x6C69616D65 && v31 == 0xE500000000000000)
  {
    0xE500000000000000, 0xE500000000000000, v32, v33, v34, *&v38, v35, v36, v37;
    goto LABEL_5;
  }

  v42 = v31;
  v43 = sub_10001D6BC();
  v42, v44, v45, v46, v47, v252, v48, v49, v50;
  if (v43)
  {
LABEL_5:
    v51 = [a1 emailAddresses];
    sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
    v52 = sub_10001D3FC();

    if (v52 >> 62)
    {
      if (sub_10001D64C())
      {
        goto LABEL_7;
      }
    }

    else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v52 & 0xC000000000000001) != 0)
      {
        v64 = sub_10001D5DC();
LABEL_10:
        v76 = v64;
        v52, v65, v66, v67, v68, *&v72, v69, v70, v71;
        v77 = [v76 value];

        if (v77)
        {
          v237 = sub_10001D30C();
          v236 = v78;

          goto LABEL_26;
        }

        goto LABEL_25;
      }

      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v64 = *(v52 + 32);
        goto LABEL_10;
      }

      __break(1u);
LABEL_52:
      result = sub_10001D64C();
      if (!result)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_24:
    v52, v53, v54, v55, v56, *&v60, v57, v58, v59;
    goto LABEL_25;
  }

  if (sub_10001CC0C() == 0x656E6F6870 && v79 == 0xE500000000000000)
  {
    0xE500000000000000, 0xE500000000000000, v80, v81, v82, *&v86, v83, v84, v85;
  }

  else
  {
    v90 = v79;
    v91 = sub_10001D6BC();
    v90, v92, v93, v94, v95, v253, v96, v97, v98;
    if ((v91 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v99 = [a1 phoneNumbers];
  sub_100002EFC(&qword_10002DDF0, &qword_10001E5E0);
  v52 = sub_10001D3FC();

  if (v52 >> 62)
  {
    goto LABEL_52;
  }

  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v101 = sub_10001D5DC();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v101 = *(v52 + 32);
  }

  v113 = v101;
  v52, v102, v103, v104, v105, *&v109, v106, v107, v108;
  v114 = [v113 value];

  if (v114)
  {
    v115 = [v114 stringValue];
    v237 = sub_10001D30C();
    v236 = v116;

    goto LABEL_26;
  }

LABEL_25:
  v237 = 0;
  v236 = 0xE000000000000000;
LABEL_26:
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_10001E720;
  v118 = [a1 imageDataAvailable];
  v239 = v28;
  v240 = v20;
  v238 = v30;
  if (v118)
  {
    v119 = [a1 thumbnailImageData];
    if (v119)
    {
      v120 = v119;
      v121 = sub_10001CD5C();
      v122 = v7;
      v124 = v123;

      v125 = *(v117 + 16);
      v126 = *(v117 + 24);
      *(v117 + 16) = v121;
      *(v117 + 24) = v124;
      v7 = v122;
      sub_10000F908(v125, v126);
    }
  }

  else
  {
    v127 = dispatch_group_create();
    dispatch_group_enter(v127);
    v128 = [objc_allocWithZone(CNAvatarImageRenderer) init];
    v129 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_imagedTag);
    v231 = v128;
    v230 = v127;
    if (v129)
    {
      v130 = (v129 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarWidth);
    }

    else
    {
      if (qword_10002D8A8 != -1)
      {
        swift_once();
      }

      v130 = &qword_10002E550;
    }

    v131 = *v130;
    v132 = [objc_opt_self() mainScreen];
    [v132 scale];
    v134 = v133;

    v135 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedStyle);
    v233 = a2;
    v232 = v7;
    if (v135)
    {
      v136 = [v135 localization];
      sub_10001D30C();

      sub_10001CD7C();
      v137 = sub_10001CD8C();
      (*(v234 + 8))(v19, v235);
      v138 = v137 != 1;
    }

    else
    {
      v138 = 1;
    }

    v139 = [objc_opt_self() scopeWithPointSize:v138 scale:0 rightToLeft:v131 style:{v131, v134}];
    v140 = [a1 givenName];
    v141 = sub_10001D30C();
    v143 = v142;

    v144 = sub_1000129A0(v141, v143);
    v146 = v145;
    v143, v145, v147, v148, v149, v254, v150, v151, v152;
    if (v146)
    {
      v153 = v144;
    }

    else
    {
      v153 = 32;
    }

    if (!v146)
    {
      v146 = 0xE100000000000000;
    }

    v154 = [a1 familyName];
    v155 = sub_10001D30C();
    v157 = v156;

    v158 = sub_1000129A0(v155, v157);
    v160 = v159;
    v157, v159, v161, v162, v163, v255, v164, v165, v166;
    if (v160)
    {
      v167 = v158;
    }

    else
    {
      v167 = 32;
    }

    if (!v160)
    {
      v160 = 0xE100000000000000;
    }

    aBlock = v153;
    v246 = v146;

    v251._countAndFlagsBits = v167;
    v251._object = v160;
    sub_10001D38C(v251);
    v146, v168, v169, v170, v171, v256, v172, v173, v174;
    v160, v175, v176, v177, v178, v257, v179, v180, v181;
    v182 = v246;
    v183 = sub_10001D2DC();
    v182, v184, v185, v186, v187, v258, v188, v189, v190;
    v191 = swift_allocObject();
    v192 = v230;
    *(v191 + 16) = v117;
    *(v191 + 24) = v192;
    v249 = sub_100019970;
    v250 = v191;
    aBlock = _NSConcreteStackBlock;
    v246 = 1107296256;
    v247 = sub_1000091DC;
    v248 = &unk_1000297E0;
    v193 = _Block_copy(&aBlock);

    v194 = v192;

    v195 = v231;
    v196 = [v231 renderMonogramForString:v183 scope:v139 imageHandler:v193];
    _Block_release(v193);
    swift_unknownObjectRelease();

    sub_10001D52C();
    swift_unknownObjectRelease();
    a2 = v233;
    v7 = v232;
  }

  sub_10001D2BC();
  sub_10001CD6C();
  v197 = sub_10001D32C();
  v199 = v198;
  result = swift_beginAccess();
  v200 = *(v7 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (v200)
  {
    v202 = *(v117 + 16);
    v201 = *(v117 + 24);
    sub_100019990(v202, v201);
    v203 = [v200 isAccessDenied];
    v204 = sub_10000ED30(a2, v197, v199, a3, a4, a5, a6);
    (*(v242 + 8))(v241, v240);
    v205 = &v204[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
    v206 = *&v204[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
    v207 = v238;
    *v205 = v239;
    v205[1] = v207;
    v208 = v204;
    v206, v209, v210, v211, v212, v259, v213, v214, v215;
    v216 = &v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent];
    v217 = *&v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent + 8];
    v218 = v236;
    *v216 = v237;
    v216[1] = v218;
    v217, v219, v220, v221, v222, v260, v223, v224, v225;
    v226 = &v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
    v227 = *&v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData];
    v228 = *&v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData + 8];
    *v226 = v202;
    v226[1] = v201;
    sub_100019990(v202, v201);
    sub_10000F908(v227, v228);
    sub_10000F908(v202, v201);
    v208[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton] = v203;

    return v208;
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_100015C30(UIImage *a1, uint64_t a2, NSObject *a3)
{
  v5 = UIImagePNGRepresentation(a1);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10001CD5C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  sub_10000F908(v10, v11);
  dispatch_group_leave(a3);
}

void sub_100015CC4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = sub_10001CCEC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v236 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001CDAC();
  __chkstk_darwin(v19 - 8);
  v21 = v236 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001D2CC();
  __chkstk_darwin(v22 - 8);
  v241 = v236 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_authContext);
  if (!v24)
  {
    goto LABEL_60;
  }

  if ([v24 isAccessDenied])
  {
    sub_10001D2BC();
    sub_10001CD6C();
    sub_10001D32C();
    v26 = v25;
    sub_100002EFC(&qword_10002E088, &qword_10001E910);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10001E6C0;
    v29 = *(v8 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName);
    v28 = *(v8 + OBJC_IVAR____TtC24ContactsButtonXPCService29ContactsButtonServiceProvider_cachedAppName + 8);
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10000FB3C();
    *(v27 + 32) = v29;
    *(v27 + 40) = v28;

    v30 = sub_10001D31C();
    v32 = v31;
    v26, v31, v33, v34, v35, v247, v36, v37, v38;
    sub_10001D2BC();
    sub_10001CD6C();
    v39 = sub_10001D32C();
    v41 = v40;
    sub_10001D2BC();
    sub_10001CD6C();
    v42 = sub_10001D32C();
    v44 = sub_10000ED30(a2, v42, v43, a5, a6, a7, a8);
    v45 = &v44[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
    v46 = *&v44[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
    *v45 = v30;
    v45[1] = v32;
    v47 = v44;
    v46, v48, v49, v50, v51, v248, v52, v53, v54;
    v55 = (v47 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    v56 = *(&v47[1].isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
    *v55 = v39;
    v55[1] = v41;
    v56, v57, v58, v59, v60, v249, v61, v62, v63;
    v64 = *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData);
    v65 = *(&v47[1].isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData);
    *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData) = xmmword_10001E720;
    sub_10000F908(v64, v65);
    *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton) = 1;
LABEL_4:

    return;
  }

  if (!a1)
  {
    if (sub_10001D36C())
    {
      v47 = sub_10001CDFC();
      v69 = sub_10001D4FC();
      if (os_log_type_enabled(v47, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v47, v69, "#ContactsButton had contacts in it, but is somehow null??", v70, 2u);
      }

      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v236[2] = v21;
  if (a1 >> 62)
  {
    if (!sub_10001D64C())
    {
      goto LABEL_20;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  if (sub_10001D36C())
  {
    if (!(a1 >> 62))
    {
      v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66 == 1)
      {
LABEL_11:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v67 = sub_10001D5DC();
          goto LABEL_14;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v67 = *(a1 + 32);
LABEL_14:
          v68 = v67;
          sub_1000150E0(v67, a2, a5, a6, a7, a8);

          return;
        }

        __break(1u);
        goto LABEL_58;
      }

LABEL_28:
      if (v66 < 2)
      {
        sub_10001D2BC();
        sub_10001CD6C();
        v74 = sub_10001D32C();
        v76 = sub_10000ED30(a2, v74, v75, a5, a6, a7, a8);
        v77 = &v76[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
        v78 = *&v76[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
        *v77 = 0;
        *(v77 + 1) = 0xE000000000000000;
        v47 = v76;
        v78, v79, v80, v81, v82, v250, v83, v84, v85;
        v97 = (&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
        v98 = *(&v47[1].isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
        *v97 = 0;
        v97[1] = 0xE000000000000000;
LABEL_52:
        v98, v86, v87, v88, v89, *&v93, v90, v91, v92;
        v207 = *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData);
        v208 = *(&v47[1].isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData);
        *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_avatarImageData) = xmmword_10001E720;
        sub_10000F908(v207, v208);
        *(&v47->isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_showingOnboardingButton) = 0;
        goto LABEL_4;
      }

      v236[0] = a2;
      v236[1] = v8;
      v242 = &_swiftEmptyArrayStorage;
      sub_1000181D0(0, v66, 0);
      v99 = v242;
      v100 = objc_opt_self();
      v101 = 0;
      v237 = a1 & 0xC000000000000001;
      v238 = v100;
      v102 = (v16 + 8);
      v239 = v66;
      v240 = a1;
      do
      {
        if (v237)
        {
          v103 = sub_10001D5DC();
        }

        else
        {
          v103 = *(a1 + 8 * v101 + 32);
        }

        v104 = v103;
        sub_10001CCDC();
        v105 = [v104 givenName];
        sub_10001D30C();

        sub_10001CCAC();
        v106 = [v104 familyName];
        sub_10001D30C();

        sub_10001CCBC();
        v107 = sub_10001CCCC();
        v108 = v15;
        (*v102)(v18, v15);
        v109 = [v238 localizedStringFromPersonNameComponents:v107 style:0 options:0];

        v110 = sub_10001D30C();
        v112 = v111;

        v242 = v99;
        v114 = *(v99 + 2);
        v113 = *(v99 + 3);
        if (v114 >= v113 >> 1)
        {
          sub_1000181D0((v113 > 1), v114 + 1, 1);
          v99 = v242;
        }

        v101 = (v101 + 1);
        *(v99 + 2) = v114 + 1;
        v115 = &v99[16 * v114];
        *(v115 + 4) = v110;
        *(v115 + 5) = v112;
        v116 = v239;
        v15 = v108;
        a1 = v240;
      }

      while (v239 != v101);
      v242 = v99;

      sub_1000182FC(&v242);
      v99, v117, v118, v119, v120, v251, v121, v122, v123;
      v124 = v242;
      if (v116 >= 10)
      {
        sub_10001D2BC();
        sub_10001CD6C();
        v127 = sub_10001D32C();
        v148 = *v124->slotID;
        v147 = v236[0];
        v240 = v149;
        if (v148)
        {
          v151 = *&v124->auditToken[12];
          v150 = *&v124->auditToken[20];
        }

        else
        {
          v169 = sub_10001CDFC();
          v170 = sub_10001D4FC();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v243 = 0;
            v244[0] = v239;
            *v171 = 136315138;
            v242 = 0;
            sub_100002EFC(&qword_10002E458, &qword_10001ED08);
            v172 = sub_10001D33C();
            v174 = v173;
            v175 = v127;
            v176 = sub_100017934(v172, v173, v244);
            v174, v177, v178, v179, v180, v254, v181, v182, v183;
            *(v171 + 4) = v176;
            v127 = v175;
            _os_log_impl(&_mh_execute_header, v169, v170, "#ContactsButton many matches, first one is nil? %s", v171, 0xCu);
            sub_100002F44(v239);
          }

          v151 = 0;
          v150 = 0xE000000000000000;
        }

        sub_10001D2BC();
        sub_10001CD6C();
        sub_10001D32C();
        v185 = v184;
        sub_100002EFC(&qword_10002E088, &qword_10001E910);
        v186 = swift_allocObject();
        *(v186 + 16) = xmmword_10001E6C0;
        *(v186 + 56) = &type metadata for String;
        *(v186 + 64) = sub_10000FB3C();
        *(v186 + 32) = v151;
        *(v186 + 40) = v150;
        v138 = sub_10001D31C();
        v140 = v187;
        v185, v187, v188, v189, v190, v255, v191, v192, v193;
      }

      else
      {
        v244[0] = v116;
        v242 = sub_10001D6AC();
        v243 = v125;
        v246._countAndFlagsBits = 0x7365686374616D20;
        v246._object = 0xE800000000000000;
        sub_10001D38C(v246);
        v127 = v242;
        v126 = v243;
        v128 = *v124->slotID;
        if (v116 == 2)
        {
          if (v128)
          {
            v129 = *&v124->auditToken[12];
            v130 = *&v124->auditToken[20];
            v131 = &v124->auditToken[16 * v128 + 12];
            v239 = v242;
            v132 = *(v131 - 16);
            v240 = *(v131 - 8);

            sub_10001D2BC();
            sub_10001CD6C();
            sub_10001D32C();
            v134 = v133;
            sub_100002EFC(&qword_10002E088, &qword_10001E910);
            v135 = v126;
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_10001EC10;
            *(v136 + 56) = &type metadata for String;
            v137 = sub_10000FB3C();
            *(v136 + 32) = v129;
            *(v136 + 40) = v130;
            *(v136 + 96) = &type metadata for String;
            *(v136 + 104) = v137;
            *(v136 + 64) = v137;
            *(v136 + 72) = v132;
            v127 = v239;
            *(v136 + 80) = v240;
            v126 = v135;
            v138 = sub_10001D31C();
            v140 = v139;
            v134, v139, v141, v142, v143, v252, v144, v145, v146;
            v147 = v236[0];
          }

          else
          {

            v209 = sub_10001CDFC();
            v210 = sub_10001D4FC();

            if (os_log_type_enabled(v209, v210))
            {
              v211 = swift_slowAlloc();
              v212 = swift_slowAlloc();
              v240 = v126;
              v243 = 0;
              v244[0] = v212;
              *v211 = 136315394;
              v242 = 0;
              sub_100002EFC(&qword_10002E458, &qword_10001ED08);
              v213 = sub_10001D33C();
              v214 = v127;
              v216 = v215;
              v217 = sub_100017934(v213, v215, v244);
              v216, v218, v219, v220, v221, v257, v222, v223, v224;
              *(v211 + 4) = v217;
              *(v211 + 12) = 2080;
              v242 = 0;
              v243 = 0;
              v225 = sub_10001D33C();
              v227 = v226;
              v228 = sub_100017934(v225, v226, v244);
              v227, v229, v230, v231, v232, v258, v233, v234, v235;
              *(v211 + 14) = v228;
              v127 = v214;
              _os_log_impl(&_mh_execute_header, v209, v210, "#ContactsButton two matches, but one was missing a name? first %s  second %s", v211, 0x16u);
              swift_arrayDestroy();
              v126 = v240;
            }

            v138 = 0;
            v140 = 0xE000000000000000;
            v147 = v236[0];
          }

          goto LABEL_51;
        }

        if (!v128)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v239 = v242;
        v240 = v243;
        if (v128 == 1)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);

          __break(1u);
          return;
        }

        v153 = *&v124->auditToken[12];
        v152 = *&v124->auditToken[20];
        v154 = *&v124->credential[3];
        v238 = *&v124->auditToken[28];

        sub_10001D2BC();
        sub_10001CD6C();
        sub_10001D32C();
        v156 = v155;
        sub_100002EFC(&qword_10002E088, &qword_10001E910);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_10001E6B0;
        *(v157 + 56) = &type metadata for String;
        v158 = sub_10000FB3C();
        *(v157 + 32) = v153;
        *(v157 + 40) = v152;
        *(v157 + 96) = &type metadata for String;
        *(v157 + 104) = v158;
        v159 = v238;
        *(v157 + 64) = v158;
        *(v157 + 72) = v159;
        *(v157 + 80) = v154;
        v242 = (v128 - 2);
        v160 = sub_10001D6AC();
        *(v157 + 136) = &type metadata for String;
        *(v157 + 144) = v158;
        *(v157 + 112) = v160;
        *(v157 + 120) = v161;
        v138 = sub_10001D31C();
        v140 = v162;
        v156, v162, v163, v164, v165, v253, v166, v167, v168;
        v147 = v236[0];
        v127 = v239;
      }

      v126 = v240;
LABEL_51:
      sub_10001D2BC();
      sub_10001CD6C();
      v194 = sub_10001D32C();
      v196 = sub_10000ED30(v147, v194, v195, a5, a6, a7, a8);
      v197 = &v196[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent];
      v198 = *&v196[OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_topTextContent + 8];
      *v197 = v127;
      v197[1] = v126;
      v47 = v196;
      v198, v199, v200, v201, v202, v256, v203, v204, v205;
      v206 = (v47 + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
      v98 = *(&v47[1].isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_bottomTextContent);
      *v206 = v138;
      v206[1] = v140;
      goto LABEL_52;
    }

    v66 = sub_10001D64C();
    if (v66 != 1)
    {
      goto LABEL_28;
    }

    if (sub_10001D64C())
    {
      goto LABEL_11;
    }

    v71 = sub_10001CDFC();
    v72 = sub_10001D4FC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "#ContactsButton we have exactly one match, but unexpectedly the only item is nil", v73, 2u);
    }
  }

LABEL_20:

  sub_100019660(a2, a5, a6, a7, a8);
}

uint64_t sub_100016CD4(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10001721C(a1, a2, 0);
  v6 = [v5 localizedName];
  v7 = sub_10001D30C();

  return v7;
}

id sub_100016F10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonServiceProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactsButtonServiceProvider(uint64_t a1)
{
  result = qword_10002E438;
  if (!qword_10002E438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017128(uint64_t a1, uint64_t a2)
{
  result = sub_10001CE1C();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10001721C(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, char a3)
{
  v6 = sub_10001D2DC();
  a2, v7, v8, v9, v10, v19, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    sub_10001CCFC();

    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1000172F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v33 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_10001D6FC();

    sub_10001D35C();
    v16 = sub_10001D70C();
    v28 = -1 << *(a2 + 32);
    v29 = v16 & ~v28;
    if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_23:
      v14, v17, v18, v19, v20, *&v24, v21, v22, v23;
      return 0;
    }

    v30 = ~v28;
    while (1)
    {
      v31 = (*(a2 + 48) + 16 * v29);
      v17 = v31[1];
      v32 = *v31 == v15 && v17 == v14;
      if (v32 || (sub_10001D6BC() & 1) != 0)
      {
        break;
      }

      v29 = (v29 + 1) & v30;
      if (((*(v9 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14, v17, v18, v19, v20, *&v24, v21, v22, v23;
    result = v33;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000174B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000175A8;

  return v6(a1);
}

uint64_t sub_1000175A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_1000176A0(_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *result, int64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v13 = result;
  if (a3)
  {
    v14 = *(a4 + 24);
    v15 = v14 >> 1;
    if ((v14 >> 1) < a2)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if ((v14 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v15 = a2;
      }
    }
  }

  else
  {
    v15 = a2;
  }

  v16 = *(a4 + 16);
  if (v15 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v15;
  }

  if (v17)
  {
    sub_100002EFC(&unk_10002E468, &unk_10001ED18);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v20 = v19 - 32;
    if (v19 < 32)
    {
      v20 = v19 - 17;
    }

    *v18->slotID = v16;
    *&v18->auditToken[4] = 2 * (v20 >> 4);
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  v21 = &v18->auditToken[12];
  v22 = (a4 + 32);
  if (v13)
  {
    if (v18 != a4 || v21 >= &v22[16 * v16])
    {
      memmove(v21, v22, 16 * v16);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v22, a3, a4, a5, *&a9, a6, a7, a8;
  return v18;
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_1000177AC(_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *result, int64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v13 = result;
  if (a3)
  {
    v14 = *(a4 + 24);
    v15 = v14 >> 1;
    if ((v14 >> 1) < a2)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if ((v14 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v15 = a2;
      }
    }
  }

  else
  {
    v15 = a2;
  }

  v16 = *(a4 + 16);
  if (v15 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v15;
  }

  if (v17)
  {
    sub_100002EFC(&qword_10002E460, &qword_10001ED10);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v20 = v19 - 32;
    if (v19 < 32)
    {
      v20 = v19 - 17;
    }

    *v18->slotID = v16;
    *&v18->auditToken[4] = 2 * (v20 >> 4);
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  v21 = &v18->auditToken[12];
  v22 = (a4 + 32);
  if (v13)
  {
    if (v18 != a4 || v21 >= &v22[16 * v16])
    {
      memmove(v21, v22, 16 * v16);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v21, v22, 16 * v16);
  }

  a4, v22, a3, a4, a5, *&a9, a6, a7, a8;
  return v18;
}

_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *sub_1000178B0(uint64_t a1, uint64_t a2)
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

  sub_100002EFC(&unk_10002E468, &unk_10001ED18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  *v4->slotID = a1;
  *&v4->auditToken[4] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_100017934(uint64_t a1, _TtC24ContactsButtonXPCService29ContactsButtonServiceProvider *a2, uint64_t *a3)
{

  v6 = sub_100017A00(v22, 0, 0, 1, a1, a2);
  v18 = v22[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v22[0] = a1;
    v22[1] = a2;
    v20 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = v6;
  a2, v7, v8, v9, v10, *&v14, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v22[0] = v19;
  v20 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000047EC(v22, v20);
    *a3 = v20 + 32;
  }

LABEL_4:
  sub_100002F44(v22);
  return v18;
}

unint64_t sub_100017A00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100017B0C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_10001D5EC();
    a6 = v11;
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

void *sub_100017B0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100017B58(a1, a2);
  sub_100017C88(&off_100029100);
  return v3;
}

void *sub_100017B58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100017D74(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001D5EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001D3AC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100017D74(v10, 0);
        result = sub_10001D5CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_100017C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v30 = v4 + v2;
  }

  else
  {
    v30 = v4;
  }

  v3 = sub_100017DE8(isUniquelyReferenced_nonNull_native, v30, 1, v3, v11, v12, v13, v14, v15, v16, v17, v18);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, *&v15, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v19 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v19 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v19 + 32], (a1 + 32), v2);
  a1, v20, v21, v22, v23, v31, v24, v25, v26;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v27 = *(v3 + 2);
  v28 = __OFADD__(v27, v2);
  v29 = v27 + v2;
  if (!v28)
  {
    *(v3 + 2) = v29;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100017D74(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002EFC(&qword_10002E450, &unk_10001ECF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017DE8(char *result, int64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12)
{
  v13 = result;
  if (a3)
  {
    v14 = *(a4 + 24);
    v15 = v14 >> 1;
    if ((v14 >> 1) < a2)
    {
      if (v15 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if ((v14 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v15 = a2;
      }
    }
  }

  else
  {
    v15 = a2;
  }

  v16 = *(a4 + 16);
  if (v15 <= v16)
  {
    v17 = *(a4 + 16);
  }

  else
  {
    v17 = v15;
  }

  if (v17)
  {
    sub_100002EFC(&qword_10002E450, &unk_10001ECF8);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    *(v18 + 2) = v16;
    *(v18 + 3) = 2 * v19 - 64;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v20 = v18 + 32;
  v21 = (a4 + 32);
  if (v13)
  {
    if (v18 != a4 || v20 >= &v21[v16])
    {
      memmove(v20, v21, v16);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v20, v21, v16);
  }

  a4, v21, a3, a4, a5, *&a9, a6, a7, a8;
  return v18;
}