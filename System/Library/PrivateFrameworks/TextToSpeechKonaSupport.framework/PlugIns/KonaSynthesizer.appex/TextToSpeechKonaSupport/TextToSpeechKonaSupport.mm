Swift::Int sub_100001784()
{
  v1 = *v0;
  sub_100008378();
  sub_100008388(v1);
  return sub_100008398();
}

Swift::Int sub_1000017F8(uint64_t a1)
{
  v2 = *v1;
  sub_100008378();
  sub_100008388(v2);
  return sub_100008398();
}

unint64_t sub_10000183C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006A90(*a1);
  *a2 = result;
  return result;
}

id sub_100001874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = 0;
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v9 options:a4 error:&v11];
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v7 = v11;
    sub_100007FB8();

    swift_willThrow();
  }

  return v5;
}

id sub_100001964(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  v157 = a4;
  v156 = a3;
  v155 = a2;
  v154 = a1;
  v5 = sub_1000073B0(&qword_100010B08, &qword_100008A48);
  __chkstk_darwin(v5 - 8);
  v159 = &v147 - v6;
  v7 = sub_1000073B0(&qword_100010B10, &qword_100008A50);
  __chkstk_darwin(v7 - 8);
  v158 = &v147 - v8;
  v9 = qword_100010970;
  v176 = 0;
  v177 = 1;
  v10 = objc_opt_self();
  v163 = v10;
  LOBYTE(v173) = 0;
  sub_1000081B8();
  v11 = sub_100008198();

  v161 = type metadata accessor for KonaSynthesizerAudioUnit(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v167 = ObjCClassFromMetadata;
  v13 = objc_opt_self();
  v168 = v13;
  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  v137._countAndFlagsBits = 0xE000000000000000;
  v178._countAndFlagsBits = 0x4C554D5F45544152;
  v178._object = 0xEF5245494C504954;
  v188.value._object = 0x80000001000097F0;
  v166 = "Buffer=II^v}]}>52";
  v188.value._countAndFlagsBits = 0xD000000000000010;
  v15.super.isa = v14;
  v198._countAndFlagsBits = 0;
  v198._object = 0xE000000000000000;
  sub_100007F98(v178, v188, v15, v198, 0, v137);

  v16 = sub_100008198();

  LODWORD(v17) = 1112014848;
  LODWORD(v18) = 1128792064;
  v19 = [v10 createParameterWithIdentifier:v11 name:v16 address:0 min:3 max:0 unit:0 unitName:v17 flags:v18 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v20 = sub_1000073B0(&qword_100010A40, &qword_1000089C0);
  v164 = sub_100006720();
  v153 = v9;
  v21 = v4;
  v165 = v20;
  sub_100008008();
  v22 = qword_100010978;
  v176 = 0;
  v177 = 1;
  LOBYTE(v173) = 1;
  sub_1000081B8();
  v23 = sub_100008198();

  v24 = v167;
  v25 = [v13 bundleForClass:v167];
  v138._countAndFlagsBits = 0xE000000000000000;
  v179._countAndFlagsBits = 0x5A49535F44414548;
  v189.value._object = 0x80000001000097F0;
  v179._object = 0xE900000000000045;
  v189.value._countAndFlagsBits = 0xD000000000000010;
  v26.super.isa = v25;
  v199._countAndFlagsBits = 0;
  v199._object = 0xE000000000000000;
  sub_100007F98(v179, v189, v26, v199, 0, v138);

  v27 = sub_100008198();

  v28 = v163;
  LODWORD(v29) = 1120403456;
  v30 = [v163 createParameterWithIdentifier:v23 name:v27 address:1 min:3 max:0 unit:0 unitName:0.0 flags:v29 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v152 = v22;
  sub_100008008();
  v31 = qword_100010980;
  v176 = 0;
  v177 = 1;
  LOBYTE(v173) = 2;
  sub_1000081B8();
  v32 = sub_100008198();

  v33 = [v168 bundleForClass:v24];
  v139._countAndFlagsBits = 0xE000000000000000;
  v180._countAndFlagsBits = 0x41425F4843544950;
  v190.value._object = (v166 | 0x8000000000000000);
  v180._object = 0xEA00000000004553;
  v190.value._countAndFlagsBits = 0xD000000000000010;
  v34.super.isa = v33;
  v200._countAndFlagsBits = 0;
  v200._object = 0xE000000000000000;
  sub_100007F98(v180, v190, v34, v200, 0, v139);

  v35 = sub_100008198();

  LODWORD(v36) = 1109393408;
  LODWORD(v37) = 1137901568;
  v38 = [v28 createParameterWithIdentifier:v32 name:v35 address:2 min:8 max:0 unit:0 unitName:v36 flags:v37 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v151 = v31;
  v162 = v21;
  sub_100008008();
  v39 = qword_100010988;
  v176 = 0;
  v177 = 1;
  LOBYTE(v173) = 3;
  sub_1000081B8();
  v40 = sub_100008198();

  v41 = v167;
  v42 = v168;
  v43 = [v168 bundleForClass:v167];
  v140._countAndFlagsBits = 0xE000000000000000;
  v181._countAndFlagsBits = 0x41525F4843544950;
  v181._object = 0xEB0000000045474ELL;
  v191.value._object = (v166 | 0x8000000000000000);
  v191.value._countAndFlagsBits = 0xD000000000000010;
  v44.super.isa = v43;
  v201._countAndFlagsBits = 0;
  v201._object = 0xE000000000000000;
  sub_100007F98(v181, v191, v44, v201, 0, v140);

  v45 = sub_100008198();

  v46 = v163;
  LODWORD(v47) = 1120403456;
  v48 = [v163 createParameterWithIdentifier:v40 name:v45 address:3 min:3 max:0 unit:0 unitName:0.0 flags:v47 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v150 = v39;
  sub_100008008();
  v49 = qword_100010990;
  v176 = 0;
  v177 = 1;
  LOBYTE(v173) = 4;
  sub_1000081B8();
  v50 = sub_100008198();

  v51 = [v42 bundleForClass:v41];
  v141._countAndFlagsBits = 0xE000000000000000;
  v182._countAndFlagsBits = 0x4E49485441455242;
  v182._object = 0xEB00000000535345;
  v52 = v166;
  v192.value._object = (v166 | 0x8000000000000000);
  v192.value._countAndFlagsBits = 0xD000000000000010;
  v53.super.isa = v51;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  sub_100007F98(v182, v192, v53, v202, 0, v141);

  v54 = sub_100008198();

  LODWORD(v55) = 1120403456;
  v56 = [v46 createParameterWithIdentifier:v50 name:v54 address:4 min:3 max:0 unit:0 unitName:0.0 flags:v55 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v149 = v49;
  sub_100008008();
  v57 = qword_100010998;
  v176 = 0;
  v177 = 1;
  LOBYTE(v173) = 5;
  sub_1000081B8();
  v58 = sub_100008198();

  v59 = v168;
  v60 = [v168 bundleForClass:v167];
  v142._countAndFlagsBits = 0xE000000000000000;
  v183._countAndFlagsBits = 0x53454E4847554F52;
  v183._object = 0xE900000000000053;
  v193.value._object = (v52 | 0x8000000000000000);
  v193.value._countAndFlagsBits = 0xD000000000000010;
  v61.super.isa = v60;
  v203._countAndFlagsBits = 0;
  v203._object = 0xE000000000000000;
  sub_100007F98(v183, v193, v61, v203, 0, v142);

  v62 = sub_100008198();

  v63 = v163;
  LODWORD(v64) = 1120403456;
  v65 = [v163 createParameterWithIdentifier:v58 name:v62 address:5 min:3 max:0 unit:0 unitName:0.0 flags:v64 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v148 = v57;
  sub_100008008();
  v66 = qword_1000109A0;
  LOBYTE(v176) = 0;
  LOBYTE(v173) = 6;
  sub_1000081B8();
  v67 = sub_100008198();

  v68 = v59;
  v69 = v167;
  v70 = [v68 bundleForClass:v167];
  v143._countAndFlagsBits = 0xE000000000000000;
  v184._countAndFlagsBits = 0x5441525F504D4153;
  v71 = v166;
  v194.value._object = (v166 | 0x8000000000000000);
  v184._object = 0xE900000000000045;
  v194.value._countAndFlagsBits = 0xD000000000000010;
  v72.super.isa = v70;
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  sub_100007F98(v184, v194, v72, v204, 0, v143);

  v73 = sub_100008198();

  LODWORD(v74) = 1.0;
  v75 = [v63 createParameterWithIdentifier:v67 name:v73 address:6 min:2 max:0 unit:0 unitName:0.0 flags:v74 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v165 = v66;
  sub_100008008();
  v76 = qword_1000109A8;
  LOBYTE(v176) = 0;
  LOBYTE(v173) = 7;
  sub_1000081B8();
  v77 = sub_100008198();

  v78 = v168;
  v79 = [v168 bundleForClass:v69];
  v144._countAndFlagsBits = 0xE000000000000000;
  v185._countAndFlagsBits = 0xD000000000000011;
  v185._object = 0x8000000100009810;
  v80 = v71;
  v195.value._object = (v71 | 0x8000000000000000);
  v195.value._countAndFlagsBits = 0xD000000000000010;
  v81.super.isa = v79;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  sub_100007F98(v185, v195, v81, v205, 0, v144);

  v82 = sub_100008198();

  LODWORD(v83) = 1.0;
  v84 = [v63 createParameterWithIdentifier:v77 name:v82 address:7 min:2 max:0 unit:0 unitName:0.0 flags:v83 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v164 = v76;
  sub_100008008();
  v85 = qword_1000109B0;
  LOBYTE(v176) = 1;
  LOBYTE(v173) = 8;
  sub_1000081B8();
  v86 = sub_100008198();

  v87 = v167;
  v88 = [v78 bundleForClass:v167];
  v145._countAndFlagsBits = 0xE000000000000000;
  v186._countAndFlagsBits = 0xD000000000000017;
  v186._object = 0x8000000100009830;
  v196.value._object = (v71 | 0x8000000000000000);
  v196.value._countAndFlagsBits = 0xD000000000000010;
  v89.super.isa = v88;
  v206._countAndFlagsBits = 0;
  v206._object = 0xE000000000000000;
  sub_100007F98(v186, v196, v89, v206, 0, v145);

  v90 = sub_100008198();

  LODWORD(v91) = 1.0;
  v92 = v63;
  v93 = [v63 createParameterWithIdentifier:v86 name:v90 address:8 min:2 max:0 unit:0 unitName:0.0 flags:v91 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v147 = v85;
  v94 = v162;
  sub_100008008();
  v95 = qword_1000109B8;
  LOBYTE(v176) = 0;
  LOBYTE(v173) = 9;
  sub_1000081B8();
  v96 = sub_100008198();

  v97 = [v168 bundleForClass:v87];
  v146._countAndFlagsBits = 0xE000000000000000;
  v187._countAndFlagsBits = 0xD000000000000014;
  v187._object = 0x8000000100009850;
  v197.value._object = (v80 | 0x8000000000000000);
  v197.value._countAndFlagsBits = 0xD000000000000010;
  v98.super.isa = v97;
  v207._countAndFlagsBits = 0;
  v207._object = 0xE000000000000000;
  sub_100007F98(v187, v197, v98, v207, 0, v146);

  v99 = sub_100008198();

  LODWORD(v100) = 1.0;
  v101 = [v92 createParameterWithIdentifier:v96 name:v99 address:9 min:2 max:0 unit:0 unitName:0.0 flags:v100 valueStrings:0 dependentParameters:0];

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v168 = v95;
  sub_100008008();
  v102 = qword_1000109C8;
  *(v94 + qword_1000109C8) = 0;
  v166 = qword_1000109D0;
  *(v94 + qword_1000109D0) = 0;
  v167 = qword_1000109D8;
  *(v94 + qword_1000109D8) = &_swiftEmptyArrayStorage;
  v103 = qword_1000109E0;
  v104 = sub_1000080C8();
  (*(*(v104 - 8) + 56))(&v103[v94], 1, 1, v104);
  v105 = qword_1000109E8;
  *(v94 + qword_1000109E8) = 0;
  v106 = qword_1000109F0;
  *(v94 + qword_1000109F0) = 0;
  v107 = v94;
  *(v94 + qword_1000109F8) = 0;
  v170 = 0x40CF400000000000;
  v171 = xmmword_100008930;
  v172 = xmmword_100008940;
  type metadata accessor for CMFormatDescription(0);
  v108 = sub_100008168();
  (*(*(v108 - 8) + 56))(v158, 1, 1, v108);
  v109 = sub_100008278();
  (*(*(v109 - 8) + 56))(v159, 1, 1, v109);
  v110 = v160;
  sub_100008178();
  if (v110)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v111 = v173;
    v112 = [objc_allocWithZone(AVAudioFormat) initWithCMAudioFormatDescription:v173];
    v113 = objc_allocWithZone(AUAudioUnitBus);
    *&v173 = 0;
    v114 = [v113 initWithFormat:v112 error:&v173];
    v115 = v173;
    if (v114)
    {
      v116 = v154;
      v117 = HIDWORD(v154);
      *(v107 + qword_1000109C0) = v114;
      v118 = v155;
      v119 = HIDWORD(v155);
      v176 = 0;
      v169.receiver = v107;
      v169.super_class = v161;
      v120 = v115;
      *&v173 = __PAIR64__(v117, v116);
      *(&v173 + 1) = __PAIR64__(v119, v118);
      LODWORD(v174) = v156;
      v121 = objc_msgSendSuper2(&v169, "initWithComponentDescription:options:error:", &v173, v157, &v176);
      v122 = v176;
      if (v121)
      {
        v107 = v121;
        v123 = v122;
        [v107 setMaximumFramesToRender:256];
        sub_1000073B0(&qword_100010AD0, &qword_100008A20);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_100008950;
        v125 = *(v107 + qword_1000109C0);
        *(v124 + 32) = v125;
        v126 = objc_allocWithZone(AUAudioUnitBusArray);
        sub_100007848(0, &qword_100010B18, AUAudioUnitBus_ptr);
        v127 = v125;
        isa = sub_100008218().super.isa;

        v129 = [v126 initWithAudioUnit:v107 busType:2 busses:isa];

        v111 = *(v107 + qword_1000109D0);
        *(v107 + qword_1000109D0) = v129;
      }

      else
      {
        v107 = v176;
        sub_100007FB8();

        swift_willThrow();
      }
    }

    else
    {
      v130 = v173;
      v163 = v103;
      v131 = v130;
      sub_100007FB8();

      swift_willThrow();
      v132 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
      v133 = *(*(v132 - 8) + 8);
      v133(v107 + v153, v132);
      v133(v107 + v152, v132);
      v133(v107 + v151, v132);
      v133(v107 + v150, v132);
      v133(v107 + v149, v132);
      v133(v107 + v148, v132);
      v134 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
      v135 = *(*(v134 - 8) + 8);
      v135(v107 + v165, v134);
      v135(v107 + v164, v134);
      v135(v107 + v147, v134);
      v135(&v168[v107], v134);

      sub_100007760(v163 + v107, &qword_100010AB0, &qword_100008A08);

      swift_deallocPartialClassInstance();
    }

    return v107;
  }

  return result;
}

id sub_100002EF0(uint64_t a1)
{
  result = *(a1 + qword_1000109D0);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

double sub_100002F08(uint64_t a1, uint64_t a2)
{
  v25 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v22 - v4;
  v5 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v6 = sub_100008228();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
  {
    v8 = 0;
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    v27 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v27)
      {
        v9 = sub_1000082D8();
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = sub_1000081A8();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {

LABEL_17:

        v18 = v23;
        v19 = v22;
        v20 = v25;
        (*(v23 + 16))(v22, v24 + qword_1000109B8, v25);
        sub_100007FF8();
        (*(v18 + 8))(v19, v20);
        [v10 konaLanguage];
        sub_100008028();

        return result;
      }

      v17 = sub_100008358();

      if (v17)
      {
        goto LABEL_17;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return result;
}

double sub_1000031F4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000081A8();
  v6 = v5;
  v7 = a1;
  sub_100002F08(v4, v6);

  return result;
}

Class sub_10000325C()
{
  sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
  v0.super.super.isa = sub_100008288(0).super.super.isa;

  return v0.super.super.isa;
}

Class sub_1000032AC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000081A8();
  v6 = v5;
  v7 = a1;
  sub_100006BA4(v4, v6);

  sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
  v8.super.isa = sub_100008188().super.isa;

  return v8.super.isa;
}

id sub_10000335C(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1000076BC;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100003428;
  v4[3] = &unk_10000C730;
  v2 = _Block_copy(v4);

  return v2;
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v14 = *(a1 + 32);
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_100007728;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14(a2, a3, a4, a5, a6, a7, v15, v16);
  sub_1000076E0(v15, v16);

  return v17;
}

void sub_100003514(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_100008138();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_100008148();
    v17 = sub_100008158();
    v19 = v18;
    v17(v53, 0);
    (*(v12 + 8))(v14, v11);
    if (v19)
    {
      if (!a3)
      {
        goto LABEL_12;
      }

      if (a3 >= 8)
      {
        v20 = a3 & 0xFFFFFFF8;
        v21 = (v19 + 16);
        v22 = v20;
        do
        {
          *(v21 - 1) = 0uLL;
          *v21 = 0uLL;
          v21 += 2;
          v22 -= 8;
        }

        while (v22);
        if (v20 == a3)
        {
LABEL_12:
          v25 = qword_1000109D8;
          v26 = *&v16[qword_1000109D8];
          if (v26 >> 62)
          {
LABEL_38:
            if (!sub_100008338())
            {
              goto LABEL_39;
            }
          }

          else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_39:

            return;
          }

          v50 = v25;
          v51 = a1;
          v27 = qword_1000109F0;
          if (!*&v16[qword_1000109F0])
          {
            v28 = [*&v16[qword_1000109C8] nextBuffer];
            v29 = *&v16[v27];
            *&v16[v27] = v28;
            v30 = v28;

            if (v30)
            {
              v31 = [v30 markers];

              sub_100007848(0, &qword_100010AE0, AXKonaMarker_ptr);
              v32 = sub_100008228();
            }

            else
            {
              v32 = &_swiftEmptyArrayStorage;
            }

            sub_100005334(v32);

            *&v16[qword_1000109F8] = 0;
            if (!*&v16[v27])
            {
              goto LABEL_35;
            }
          }

          if (!a3)
          {
LABEL_36:
            sub_100008128();
            goto LABEL_39;
          }

          v25 = 0;
          v33 = qword_1000109F8;
          v52 = qword_1000109C8;
          a1 = &unk_100010000;
          do
          {
            v34 = *&v16[v27];
            if (!v34)
            {
              goto LABEL_42;
            }

            v35 = *&v16[v33];
            v36 = [v34 buffer];
            v37 = [v36 frameLength];

            if (v35 >= v37)
            {
              *&v16[v33] = 0;
              v38 = [*&v16[v52] nextBuffer];
              v39 = *&v16[v27];
              *&v16[v27] = v38;
              v40 = v38;

              if (v40)
              {
                v41 = [v40 markers];

                sub_100007848(0, &qword_100010AE0, AXKonaMarker_ptr);
                v42 = sub_100008228();
              }

              else
              {
                v42 = &_swiftEmptyArrayStorage;
              }

              sub_100005334(v42);
            }

            v43 = *&v16[v27];
            if (!v43)
            {
              goto LABEL_32;
            }

            v44 = [*&v16[v27] buffer];
            v45 = *([v44 mutableAudioBufferList] + 2);
            if (!v45)
            {
              goto LABEL_43;
            }

            *(v19 + 4 * v25) = *(v45 + 4 * *&v16[v33]);

            v46 = *&v16[v33];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              __break(1u);
              goto LABEL_38;
            }

            ++v25;
            *&v16[v33] = v48;
          }

          while (a3 != v25);
          v25 = a3;
LABEL_32:
          if ((v25 - 0x2000000000000000) >> 62 == 3)
          {
            if ((v25 & 0x3FFFFFFFC0000000) == 0)
            {
              if (v43)
              {
                goto LABEL_36;
              }

LABEL_35:
              v49 = v50;
              *v51 = 128;
              *&v16[v49] = &_swiftEmptyArrayStorage;

              goto LABEL_36;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        v20 = 0;
      }

      v23 = (v19 + 4 * v20);
      v24 = a3 - v20;
      do
      {
        *v23++ = 0;
        --v24;
      }

      while (v24);
      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
  }
}

void sub_100003988(id a1)
{
  v2 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v164 = *(v2 - 8);
  __chkstk_darwin(v2);
  v163 = &v150 - v3;
  v4 = sub_1000073B0(&qword_100010AB0, &qword_100008A08);
  __chkstk_darwin(v4 - 8);
  v155 = &v150 - v5;
  v171 = sub_1000080C8();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000080E8();
  v166 = *(v7 - 8);
  __chkstk_darwin(v7);
  v168 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v176 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v150 - v9;
  v10 = sub_100008108();
  v174 = *(v10 - 8);
  v175 = v10;
  __chkstk_darwin(v10);
  v177 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008038();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = sub_100008078();
  v16 = sub_100008068();
  v17 = *(v13 + 104);
  v159 = v13 + 104;
  v158 = v17;
  v17(v15, enum case for TTSSpeechEvent.receivedStart(_:), v12);
  v18 = [a1 jobIdentifier];
  sub_1000081A8();

  sub_100008058();

  v19 = *(v13 + 8);
  v160 = v15;
  v162 = v12;
  v161 = v13 + 8;
  v157 = v19;
  v19(v15, v12);
  v20 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v21 = sub_100008228();

  v167 = v7;
  v165 = v2;
  if (v21 >> 62)
  {
LABEL_42:
    v22 = sub_100008338();
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_43:

    v81 = AXTTSLogKona();
    if (v81)
    {
      v82 = v81;
      v83 = sub_100008268();
      sub_1000073B0(&qword_100010AC0, &qword_100008A18);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_100008960;
      v85 = [a1 voice];
      v86 = [v85 identifier];

      v87 = sub_1000081A8();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = sub_1000074B8(v90, v91, v92);
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      sub_100008118("Invalid eloquence voice identifier %{PUBLIC}@", 45, 2, &_mh_execute_header, v82, v83, v84);

      return;
    }

    goto LABEL_68;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_43;
  }

LABEL_3:
  v23 = 0;
  v179 = (v21 & 0xC000000000000001);
  v180 = a1;
  while (v179)
  {
    v24 = sub_1000082D8();
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v181 = v24;
    v26 = [v24 identifier];
    v27 = sub_1000081A8();
    v29 = v28;

    v30 = [a1 voice];
    v31 = [v30 identifier];

    v32 = sub_1000081A8();
    v34 = v33;

    if (v27 == v32 && v29 == v34)
    {
      goto LABEL_17;
    }

    v36 = sub_100008358();

    if (v36)
    {
      goto LABEL_18;
    }

    ++v23;
    a1 = v180;
    if (v25 == v22)
    {
      goto LABEL_43;
    }
  }

  if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v24 = *(v21 + 8 * v23 + 32);
  v25 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v37 = v180;

  v38 = [v37 ssmlRepresentation];
  sub_1000081A8();

  sub_1000080F8();
  v39 = qword_1000109C8;
  v40 = v178;
  v41 = *(v178 + qword_1000109C8);
  v42 = v41;
  v43 = v181;
  if (!v41)
  {
    v44 = [objc_allocWithZone(AXKonaSpeechEngine) initWithVoice:v181];
    v45 = *(v40 + v39);
    *(v40 + v39) = v44;

    v42 = *(v40 + v39);
    if (!v42)
    {
      v69 = AXTTSLogKona();
      if (!v69)
      {
        goto LABEL_69;
      }

      v70 = v69;
      v71 = sub_100008268();
      sub_1000073B0(&qword_100010AC0, &qword_100008A18);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100008960;
      v73 = [v180 voice];
      v74 = [v73 identifier];

      v75 = sub_1000081A8();
      v77 = v76;

      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = sub_1000074B8(v78, v79, v80);
      *(v72 + 32) = v75;
      *(v72 + 40) = v77;
      sub_100008118("Could not initialize engine with voice identifier %{PUBLIC}@", 60, 2, &_mh_execute_header, v70, v71, v72);

      (*(v174 + 8))(v177, v175);
      return;
    }
  }

  v46 = v42;
  v47 = [v46 voice];
  v48 = [v47 identifier];

  v49 = sub_1000081A8();
  v51 = v50;

  v52 = [v43 identifier];
  v53 = sub_1000081A8();
  v55 = v54;

  if (v49 == v53 && v51 == v55)
  {

    [v46 setVoice:v181];
    if (!v41)
    {
LABEL_26:
      v57 = [v46 ruleSetRunner];
      [v57 reset];

      v58 = [objc_opt_self() sharedInstance];
      v59 = [v181 identifier];
      if (!v59)
      {
        sub_1000081A8();
        v59 = sub_100008198();
      }

      v60 = [v58 resourceWithVoiceId:v59];

      if (v60)
      {
        sub_100008098();
        v61 = sub_100008088();
        v62 = v61;
        v179 = v60;
        if (v61 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
        {
          v64 = 0;
          while (1)
          {
            if ((v62 & 0xC000000000000001) != 0)
            {
              v65 = sub_1000082D8();
            }

            else
            {
              if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v65 = *(v62 + 8 * v64 + 32);
            }

            v66 = v65;
            v67 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              break;
            }

            v68 = [v46 ruleSetRunner];
            [v68 loadRuleSet:v66];

            ++v64;
            if (v67 == i)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }

LABEL_48:
      }
    }
  }

  else
  {
    v56 = sub_100008358();

    [v46 setVoice:v181];
    if (!v41 || (v56 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v93 = [v46 parameters];
  v94 = [v93 copy];

  v154 = v94;
  v179 = [v94 copy];
  v95 = v181;
  v96 = [v181 parameters];
  v97 = [v96 speed];

  v98 = v176;
  v99 = *(v176 + 16);
  v101 = v172;
  v100 = v173;
  v99(v172, v178 + qword_100010970, v173);
  sub_100007FE8();
  v102 = *(v98 + 8);
  v176 = v98 + 8;
  v102(v101, v100);
  v103 = aBlock / 100.0;
  if (v183)
  {
    v103 = 1.0;
  }

  v104 = v103 * v97;
  if ((LODWORD(v104) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v104 <= -9.2234e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v152 = v99;
  v153 = v46;
  if (v104 < 9.2234e18)
  {
    v105 = v104;
    sub_1000073B0(&qword_100010AD8, &qword_100008A28);
    sub_100007FD8();
    *(swift_allocObject() + 16) = xmmword_100008960;
    v106 = [v95 languageCode];
    sub_1000081A8();

    sub_100007FC8();
    v107 = [v95 parameters];
    [v107 pitchBase];

    v108 = [v95 parameters];
    [v108 volume];

    v151 = v105;
    sub_100008048();

    v109 = v175;
    v185 = v175;
    v186 = &protocol witness table for TTSMarkup.SpeechDocument;
    v110 = sub_10000750C(&aBlock);
    (*(v174 + 16))(v110, v177, v109);
    v111 = v169;
    sub_1000080D8();
    sub_100007570(&aBlock);
    v112 = v170;
    v113 = v155;
    v114 = v171;
    (*(v170 + 16))(v155, v111, v171);
    (*(v112 + 56))(v113, 0, 1, v114);
    v115 = qword_1000109E0;
    v116 = v178;
    swift_beginAccess();
    sub_1000075BC(v113, v116 + v115);
    swift_endAccess();
    v117 = sub_1000080A8();
    v155 = v118;
    v120 = v172;
    v119 = v173;
    v121 = v152;
    v152(v172, v116 + qword_100010978, v173);
    sub_100007FE8();
    v102(v120, v119);
    v122 = v179;
    if ((v183 & 1) == 0)
    {
      [v179 setHeadSize:aBlock];
    }

    v121(v120, v116 + qword_100010988, v119);
    sub_100007FE8();
    v102(v120, v119);
    if ((v183 & 1) == 0)
    {
      [v122 setPitchFluctuation:aBlock];
    }

    v121(v120, v116 + qword_100010990, v119);
    sub_100007FE8();
    v102(v120, v119);
    v123 = v153;
    if ((v183 & 1) == 0)
    {
      [v122 setBreathiness:aBlock];
    }

    v121(v120, v116 + qword_100010998, v119);
    sub_100007FE8();
    v102(v120, v119);
    if ((v183 & 1) == 0)
    {
      [v122 setRoughness:aBlock];
    }

    v121(v120, v116 + qword_100010980, v119);
    sub_100007FE8();
    v102(v120, v119);
    if ((v183 & 1) == 0)
    {
      [v122 setPitchBase:aBlock];
    }

    [v122 setSpeed:v151];
    v124 = v164;
    v125 = *(v164 + 16);
    v126 = v163;
    v127 = v165;
    v125(v163, v116 + qword_1000109A0, v165);
    sub_100007FE8();
    v128 = v122;
    v129 = *(v124 + 8);
    v129(v126, v127);
    [v123 setHighQualityMode:aBlock];
    v125(v126, v116 + qword_1000109A8, v127);
    sub_100007FE8();
    v129(v126, v127);
    [v123 setPhrasePrediction:aBlock];
    v125(v126, v116 + qword_1000109B0, v127);
    sub_100007FE8();
    v129(v126, v127);
    [v123 setAbbreviationDictionary:aBlock];
    v125(v126, v116 + qword_1000109B8, v127);
    sub_100007FE8();
    v129(v126, v127);
    [v123 setPreferCommunityDictionary:aBlock];
    [v123 setParameters:v128];
    v130 = sub_100008068();
    v131 = v180;
    v132 = [v180 ssmlRepresentation];
    v133 = sub_1000081A8();
    v135 = v134;

    v136 = v160;
    *v160 = v133;
    v136[1] = v135;
    v136[2] = v117;
    v136[3] = v155;
    v137 = v162;
    v158(v136, enum case for TTSSpeechEvent.markupConversion(_:), v162);

    v138 = [v131 jobIdentifier];
    sub_1000081A8();

    sub_100008058();

    v157(v136, v137);
    v139 = [v123 ruleSetRunner];
    v140 = swift_allocObject();
    *(v140 + 16) = v131;
    v186 = sub_100007664;
    v187 = v140;
    aBlock = _NSConcreteStackBlock;
    v183 = 1107296256;
    v141 = v178;
    v184 = sub_1000051F0;
    v185 = &unk_10000C6E0;
    v142 = _Block_copy(&aBlock);
    v143 = v131;

    [v139 setMatchLogger:v142];
    _Block_release(v142);

    v144 = sub_100008198();

    [v123 synthesizeText:v144];

    (*(v170 + 8))(v169, v171);
    (*(v166 + 8))(v168, v167);
    (*(v174 + 8))(v177, v175);
    v145 = *(v141 + qword_1000109E8);
    v146 = v181;
    *(v141 + qword_1000109E8) = v181;
    v147 = v146;

    sub_1000073B0(&qword_100010AD0, &qword_100008A20);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_100008950;
    *(v148 + 32) = v131;
    v149 = v131;

    *(v141 + qword_1000109D8) = v148;

    *(v141 + qword_1000109F8) = 0;
    return;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_10000502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v27 = a4;
  v28 = a8;
  v25 = a5;
  v26 = a3;
  v12 = sub_100008038();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008078();
  v16 = sub_100008068();

  v17 = [a7 identifier];
  v18 = sub_1000081A8();
  v20 = v19;

  *v15 = a1;
  v15[1] = a2;
  v21 = v26;
  v15[2] = v25;
  v15[3] = a6;
  v22 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v18;
  v15[7] = v20;
  (*(v13 + 104))(v15, enum case for TTSSpeechEvent.ruleRewrite(_:), v12);
  v23 = [v28 jobIdentifier];
  sub_1000081A8();

  sub_100008058();

  return (*(v13 + 8))(v15, v12);
}

void sub_1000051F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = sub_1000081A8();
  v12 = v11;
  v13 = sub_1000081A8();
  v15 = v14;

  v16 = a6;
  v9(v10, v12, a3, a4, v13, v15, v16);
}

void sub_1000052CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100003988(v4);
}

void sub_100005334(unint64_t a1)
{
  v3 = sub_1000073B0(&qword_100010AB0, &qword_100008A08);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1000080C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1000109D8;
  v11 = *&v1[qword_1000109D8];
  if (v11 >> 62)
  {
    if (!sub_100008338())
    {
      return;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = sub_1000082D8();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v11 + 32);
  }

  v13 = [v12 ssmlRepresentation];

  v14 = sub_1000081A8();
  v16 = v15;

  v17 = qword_1000109E0;
  swift_beginAccess();
  sub_1000077C0(&v1[v17], v5, &qword_100010AB0, &qword_100008A08);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_100007760(v5, &qword_100010AB0, &qword_100008A08);
    return;
  }

  v18 = (*(v7 + 32))(v9, v5, v6);
  __chkstk_darwin(v18);
  *(&v26 - 4) = v9;
  *(&v26 - 3) = v14;
  *(&v26 - 2) = v16;
  v19 = sub_10000589C(sub_100007828, (&v26 - 6), a1);
  if (v19 >> 62)
  {
LABEL_21:
    if (!sub_100008338())
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_10:
  v20 = [v1 speechSynthesisOutputMetadataBlock];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = *&v1[v10];
  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_26:
    _Block_release(v21);
    __break(1u);
    goto LABEL_27;
  }

  if (!sub_100008338())
  {
    goto LABEL_26;
  }

LABEL_13:

  if ((v22 & 0xC000000000000001) == 0)
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(v22 + 32);
    goto LABEL_16;
  }

LABEL_27:
  v23 = sub_1000082D8();
LABEL_16:
  v24 = v23;

  sub_100007848(0, &qword_100010B20, AVSpeechSynthesisMarker_ptr);
  isa = sub_100008218().super.isa;
  (v21)[2](v21, isa, v24);

  _Block_release(v21);
LABEL_23:

  (*(v7 + 8))(v9, v6);
}

id sub_100005738@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  [*a1 originalStringRange];
  sub_1000080A8();
  sub_100008258();
  v9 = v8;

  if (v9 & 1) != 0 || (v10 = sub_1000080B8(), (v12))
  {
    result = 0;
LABEL_6:
    *a4 = result;
    return result;
  }

  v16 = a3;
  sub_100007890(v10, v11, v12);
  v14 = sub_1000081D8();
  sub_1000081F8();
  v15 = sub_1000081E8();

  result = [v7 framePosition];
  if (!(result >> 30))
  {
    result = [objc_allocWithZone(AVSpeechSynthesisMarker) initWithMarkerType:1 forTextRange:v14 atByteSampleOffset:{v15, (4 * result)}];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_10000589C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100008338())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000082D8();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_100008208();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100008238();
        }

        sub_100008248();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

Class sub_100005A48()
{
  sub_1000071F8();
  sub_100007848(0, &qword_100010A78, AVSpeechSynthesisProviderVoice_ptr);
  v0.super.isa = sub_100008218().super.isa;

  return v0.super.isa;
}

void sub_100005AB4(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 name];
  if (!v3)
  {
    sub_1000081A8();
    v3 = sub_100008198();
  }

  v4 = [v2 identifier];
  if (!v4)
  {
    sub_1000081A8();
    v4 = sub_100008198();
  }

  sub_1000073B0(&qword_100010A88, &qword_1000089E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100008960;
  v6 = [v2 languageCode];
  v7 = sub_1000081A8();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100008960;
  v11 = [v2 languageCode];
  v12 = sub_1000081A8();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = objc_allocWithZone(AVSpeechSynthesisProviderVoice);
  isa = sub_100008218().super.isa;

  v17 = sub_100008218().super.isa;

  v18 = [v15 initWithName:v3 identifier:v4 primaryLanguages:isa supportedLanguages:v17];

  sub_1000073B0(&qword_100010A90, &qword_1000089E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008960;
  sub_1000081A8();
  sub_1000082C8();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x636E6575716F6C45;
  *(inited + 80) = 0xE900000000000065;
  sub_1000070BC(inited);
  swift_setDeallocating();
  sub_100007760(inited + 32, &qword_100010A98, &qword_1000089F0);
  v20 = sub_100008188().super.isa;

  [v18 setExtraAttributes:v20];

  *a2 = v18;
}

void sub_100005D94()
{
  v1 = v0;
  v2 = sub_100008038();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008078();
  v6 = sub_100008068();
  (*(v3 + 104))(v5, enum case for TTSSpeechEvent.receivedStop(_:), v2);
  v7 = qword_1000109D8;
  v8 = *(v1 + qword_1000109D8);
  if (v8 >> 62)
  {
    if (!sub_100008338())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    sub_100008058();

    (*(v3 + 8))(v5, v2);
    [*(v1 + qword_1000109C8) cancelSynthesis];
    *(v1 + v7) = &_swiftEmptyArrayStorage;

    *(v1 + qword_1000109F8) = 0;
    v11 = *(v1 + qword_1000109F0);
    *(v1 + qword_1000109F0) = 0;

    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = sub_1000082D8();

    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_6:
    v10 = [v9 jobIdentifier];

    sub_1000081A8();
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100005FC8(void *a1)
{
  v1 = a1;
  sub_100005D94();
}

void sub_100006010()
{
  v1 = qword_100010970;
  v2 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_100010978, v2);
  v3(v0 + qword_100010980, v2);
  v3(v0 + qword_100010988, v2);
  v3(v0 + qword_100010990, v2);
  v3(v0 + qword_100010998, v2);
  v4 = qword_1000109A0;
  v5 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + qword_1000109A8, v5);
  v6(v0 + qword_1000109B0, v5);
  v6(v0 + qword_1000109B8, v5);

  sub_100007760(v0 + qword_1000109E0, &qword_100010AB0, &qword_100008A08);

  v7 = *(v0 + qword_1000109F0);
}

id sub_100006248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KonaSynthesizerAudioUnit(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100006280(uint64_t a1)
{
  v2 = qword_100010970;
  v3 = sub_1000073B0(&qword_100010AB8, &qword_100008A10);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v4(a1 + qword_100010978, v3);
  v4(a1 + qword_100010980, v3);
  v4(a1 + qword_100010988, v3);
  v4(a1 + qword_100010990, v3);
  v4(a1 + qword_100010998, v3);
  v5 = qword_1000109A0;
  v6 = sub_1000073B0(&qword_100010AA8, &qword_100008A00);
  v7 = *(*(v6 - 8) + 8);
  v7(a1 + v5, v6);
  v7(a1 + qword_1000109A8, v6);
  v7(a1 + qword_1000109B0, v6);
  v7(a1 + qword_1000109B8, v6);

  sub_100007760(a1 + qword_1000109E0, &qword_100010AB0, &qword_100008A08);

  v8 = *(a1 + qword_1000109F0);
}

uint64_t type metadata accessor for KonaSynthesizerAudioUnit(uint64_t a1)
{
  result = qword_100010A00;
  if (!qword_100010A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006510(uint64_t a1)
{
  sub_100006668(319);
  if (v1 <= 0x3F)
  {
    sub_10000679C();
    if (v2 <= 0x3F)
    {
      sub_1000067F4(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_100006668(uint64_t a1)
{
  if (!qword_100010A38)
  {
    sub_1000066D8(&qword_100010A40, &qword_1000089C0);
    sub_100006720();
    v1 = sub_100008018();
    if (!v2)
    {
      atomic_store(v1, &qword_100010A38);
    }
  }
}

uint64_t sub_1000066D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006720()
{
  result = qword_100010A48;
  if (!qword_100010A48)
  {
    sub_1000066D8(&qword_100010A40, &qword_1000089C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A48);
  }

  return result;
}

void sub_10000679C()
{
  if (!qword_100010A50)
  {
    v0 = sub_100008018();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A50);
    }
  }
}

void sub_1000067F4(uint64_t a1)
{
  if (!qword_100010A58)
  {
    sub_1000080C8();
    v1 = sub_100008298();
    if (!v2)
    {
      atomic_store(v1, &qword_100010A58);
    }
  }
}

unint64_t sub_100006854(uint64_t a1, uint64_t a2)
{
  sub_100008378();
  sub_1000081C8();
  v4 = sub_100008398();

  return sub_100006910(a1, a2, v4);
}

unint64_t sub_1000068CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000082A8(*(v2 + 40));

  return sub_1000069C8(a1, v4);
}

unint64_t sub_100006910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100008358())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000069C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007408(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000082B8();
      sub_100007464(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100006A90(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_100006AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000073B0(&qword_100010B00, &qword_100008A40);
    v3 = sub_100008348();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100006854(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006BA4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v5 = sub_100008228();

  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_100008338();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v39 = v5 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_1000082D8();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            sub_1000073B0(&qword_100010AF0, &qword_100008A30);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100008970;
            *(inited + 32) = sub_1000081B8();
            *(inited + 40) = v17;
            *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:100];
            *(inited + 56) = sub_1000081B8();
            *(inited + 64) = v18;
            v19 = [v4 parameters];
            v20 = [v19 headSize];

            *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v20];
            *(inited + 80) = sub_1000081B8();
            *(inited + 88) = v21;
            v22 = [v4 parameters];
            v23 = [v22 pitchBase];

            *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v23];
            *(inited + 104) = sub_1000081B8();
            *(inited + 112) = v24;
            v25 = [v4 parameters];
            v26 = [v25 pitchFluctuation];

            *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v26];
            *(inited + 128) = sub_1000081B8();
            *(inited + 136) = v27;
            v28 = [v4 parameters];
            v29 = [v28 breathiness];

            *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v29];
            *(inited + 152) = sub_1000081B8();
            *(inited + 160) = v30;
            v31 = [v4 parameters];
            v32 = [v31 roughness];

            *(inited + 168) = [objc_allocWithZone(NSNumber) initWithInteger:v32];
            *(inited + 176) = sub_1000081B8();
            *(inited + 184) = v33;
            sub_100007848(0, &qword_100010AE8, NSNumber_ptr);
            *(inited + 192) = sub_100008288(0);
            *(inited + 200) = sub_1000081B8();
            *(inited + 208) = v34;
            *(inited + 216) = sub_100008288(1);
            *(inited + 224) = sub_1000081B8();
            *(inited + 232) = v35;
            *(inited + 240) = sub_100008288(0);
            *(inited + 248) = sub_1000081B8();
            *(inited + 256) = v36;
            *(inited + 264) = sub_100008288(0);
            v37 = sub_100006AA0(inited);
            swift_setDeallocating();
            sub_1000073B0(&qword_100010AF8, &qword_100008A38);
            swift_arrayDestroy();

            return v37;
          }
        }

        else
        {
          if (v7 >= *(v39 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        v4 = v8;
        v10 = [v8 identifier];
        v11 = sub_1000081A8();
        v13 = v12;

        if (v11 == a1 && v13 == a2)
        {
          goto LABEL_17;
        }

        v15 = sub_100008358();

        if (v15)
        {
          goto LABEL_18;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return sub_100006AA0(&_swiftEmptyArrayStorage);
}

unint64_t sub_1000070BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000073B0(&qword_100010AA0, &qword_1000089F8);
    v3 = sub_100008348();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077C0(v4, v13, &qword_100010A98, &qword_1000089F0);
      result = sub_1000068CC(v13);
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
      result = sub_1000073F8(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000071F8()
{
  v0 = [objc_opt_self() allVoices];
  sub_100007848(0, &qword_100010A80, AXKonaVoice_ptr);
  v1 = sub_100008228();

  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v10 = &_swiftEmptyArrayStorage;
      sub_100008308();
      if (v2 < 0)
      {
        break;
      }

      for (i = 0; ; ++i)
      {
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = sub_1000082D8();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v1 + 8 * i + 32);
        }

        v6 = v5;
        v8 = v5;
        sub_100005AB4(&v8, &v9);

        sub_1000082E8();
        sub_100008318();
        sub_100008328();
        sub_1000082F8();
        if (v4 == v2)
        {

          return v10;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v2 = sub_100008338();
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_15:

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000073B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1000073F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000074B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100010AC8;
  if (!qword_100010AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AC8);
  }

  return result;
}

uint64_t *sub_10000750C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007570(void *a1)
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

uint64_t sub_1000075BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000073B0(&qword_100010AB0, &qword_100008A08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000762C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007684()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000076E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000076F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000073B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000077C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000073B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007848(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100007890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100010B28;
  if (!qword_100010B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KonaAUParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KonaAUParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100007A58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007A6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007A8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_100007ACC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100007AE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007B00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_100007B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100010B50;
  if (!qword_100010B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B50);
  }

  return result;
}

__n128 sub_100007BD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_100007BF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007C04(uint64_t a1, int a2)
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

uint64_t sub_100007C24(uint64_t result, int a2, int a3)
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

void sub_100007C88(uint64_t a1, unint64_t *a2, uint64_t a3)
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

AUAudioUnit __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioUnitFactory.createAudioUnit(with:)(AudioComponentDescription with)
{
  v3 = v1;
  componentFlagsMask = with.componentFlagsMask;
  v5 = *&with.componentManufacturer;
  v6 = *&with.componentType;
  type metadata accessor for KonaSynthesizerAudioUnit(0);
  result.super.isa = sub_100001874(v6, v5, componentFlagsMask, 0);
  if (!v2)
  {
    v8 = *(v3 + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit);
    *(v3 + OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit) = result;
    isa = result.super.isa;
    v10 = result.super.isa;

    return isa;
  }

  return result;
}

id AudioUnitFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioUnitFactory.init()()
{
  *&v0[OBJC_IVAR____TtC15KonaSynthesizer16AudioUnitFactory_audioUnit] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id AudioUnitFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioUnitFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}