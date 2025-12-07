uint64_t sub_100001DD8()
{
  v0 = sub_100021870();
  sub_100006DC8(v0, qword_100045AF0);
  sub_1000036D4(v0, qword_100045AF0);
  return sub_100021860();
}

uint64_t sub_100001E54()
{
  result = sub_1000217E0();
  static AlchemistWrapper.canUseAlchemistService = result & 1;
  return result;
}

char *AlchemistWrapper.canUseAlchemistService.unsafeMutableAddressor()
{
  if (qword_100045AE8 != -1)
  {
    sub_1000073C4();
    swift_once();
  }

  return &static AlchemistWrapper.canUseAlchemistService;
}

uint64_t static AlchemistWrapper.canUseAlchemistService.getter()
{
  if (qword_100045AE8 != -1)
  {
    sub_1000073C4();
    swift_once();
  }

  return static AlchemistWrapper.canUseAlchemistService;
}

void static AlchemistWrapper.generateAlchemistResult(sourceURL:outputURL:outputColorSpace:)(void *a1, __CVBuffer *a2, Class a3)
{
  v201 = a2;
  v207 = a1;
  v5 = sub_100021780();
  sub_100007380();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v10);
  v12 = (&v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v205 = &v183 - v13;
  v14 = sub_100003638(&qword_100044560, &qword_100029090);
  __chkstk_darwin(v14 - 8);
  sub_1000074C0(&v183 - v15);
  v200 = sub_100021800();
  sub_100007380();
  v199 = v16;
  __chkstk_darwin(v17);
  sub_100007568();
  sub_1000074C0(v18);
  v204 = sub_1000217A0();
  sub_100007380();
  v203 = v19;
  __chkstk_darwin(v20);
  sub_100007568();
  sub_1000074C0(v21);
  v22 = sub_100021840();
  sub_100007380();
  v24 = v23;
  v26 = __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v30 = (&v183 - v29);
  if (qword_100045AE8 != -1)
  {
    v193 = v27;
    sub_1000073C4();
    v194 = (&v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v182 = v181;
    swift_once();
    v28 = v182;
    v12 = v194;
    v27 = v193;
  }

  if (static AlchemistWrapper.canUseAlchemistService != 1)
  {
    v45 = sub_100003680();
    sub_1000074F0(&type metadata for AlchemistWrapper.Error, v45);
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 2;
    swift_willThrow();
    return;
  }

  v194 = v12;
  v192 = v28;
  v31 = v3;
  v193 = v27;
  v195 = v7;
  v196 = v5;
  sub_100021830();
  sub_100021750(&v214);
  v33 = v32;
  v34 = CGImageSourceCreateWithURL(v32, 0);

  if (!v34)
  {
    sub_1000073D8();
    sub_100021A00(29);

    sub_10000741C();
    sub_1000074D0(v47);
    v215._countAndFlagsBits = sub_100021770();
    sub_100021930(v215);

    v216._countAndFlagsBits = 46;
    v216._object = 0xE100000000000000;
    sub_100021930(v216);
    v48 = sub_100007530();
    v49 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v48);
    sub_100007450(v49, v50);
LABEL_55:
    v24[1](v30, v22);
    return;
  }

  CGImageSourceGetPrimaryImageIndex(v34);
  v35 = sub_1000074A4();
  Count = CGImageSourceGetCount(v35);
  v197 = v34;
  if (v33 < Count)
  {
    sub_100007488();
    sub_100003638(&qword_100044658, &qword_100029240);
    inited = swift_initStackObject();
    v38 = inited;
    v187 = xmmword_100029010;
    *(inited + 16) = xmmword_100029010;
    v34 = kCIImageApplyOrientationProperty;
    *(inited + 32) = kCIImageApplyOrientationProperty;
    *(inited + 40) = 1;
    type metadata accessor for CIImageOption(0);
    sub_100007368();
    sub_100006924(v39, v40, &unk_100029A8C);
    v41 = kCIImageApplyOrientationProperty;
    sub_100007508();
    v42 = sub_1000218A0();
    v24 = sub_1000045F8(v42);

    objc_allocWithZone(CIImage);
    v43 = sub_100004C00(kCIImageApplyOrientationProperty, v33, v24);
    if (a3)
    {
      v30 = a3;
      v44 = v3;
    }

    else
    {
      v54 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
      if (!v54)
      {
        v131 = sub_100003680();
        v132 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v131);
        sub_1000073F0(xmmword_100029040, v132, v133);

        v22 = v188;
        sub_10000747C();
        v30 = Height;
        if (v132)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v44 = v3;
      v30 = v54;
      a3 = 0;
    }

    v55 = a3;
    v34 = v43;
    [(CGImageSource *)v34 extent];
    if (v56 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v56 < 9.22337204e18)
    {
      if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v57 > -9.22337204e18)
        {
          v189 = v9;
          v185 = v30;
          v186 = v34;
          if (v57 < 9.22337204e18)
          {
            v58 = v56;
            v59 = v57;
            sub_100003638(&qword_100044680, &qword_100029258);
            v60 = swift_initStackObject();
            *(v60 + 16) = v187;
            v61 = IOSurfacePropertyKeyName;
            *(v60 + 32) = IOSurfacePropertyKeyName;
            *&v209 = 0;
            *(&v209 + 1) = 0xE000000000000000;
            v62 = v61;
            sub_100021A00(18);

            *&v209 = 0x6F69737365534F41;
            *(&v209 + 1) = 0xEA00000000005F6ELL;
            pixelBufferOut = v58;
            v217._countAndFlagsBits = sub_100021A50();
            sub_100021930(v217);

            v218._countAndFlagsBits = 95;
            v218._object = 0xE100000000000000;
            sub_100021930(v218);
            pixelBufferOut = v59;
            v219._countAndFlagsBits = sub_100021A50();
            sub_100021930(v219);

            v220._countAndFlagsBits = 95;
            v220._object = 0xE100000000000000;
            sub_100021930(v220);
            LODWORD(pixelBufferOut) = 1111970369;
            v221._countAndFlagsBits = sub_100021A50();
            sub_100021930(v221);

            v63 = *(&v209 + 1);
            *(v60 + 40) = v209;
            *(v60 + 48) = v63;
            type metadata accessor for IOSurfacePropertyKey(0);
            sub_100007350();
            sub_100006924(v64, v65, &unk_100029A08);
            sub_1000218A0();
            isa = sub_100021880().super.isa;

            sub_100003638(&qword_100044690, &qword_100029260);
            v67 = swift_initStackObject();
            *(v67 + 16) = xmmword_100029020;
            v68 = kCVPixelBufferIOSurfacePurgeableKey;
            *(v67 + 32) = kCVPixelBufferIOSurfacePurgeableKey;
            *(v67 + 40) = 1;
            v69 = kCVPixelBufferIOSurfacePropertiesKey;
            *(v67 + 64) = &type metadata for Bool;
            *(v67 + 72) = v69;
            type metadata accessor for CFDictionary(0);
            *(v67 + 104) = v70;
            *(v67 + 80) = isa;
            type metadata accessor for CFString(0);
            v24 = v71;
            sub_1000073AC();
            sub_100006924(v72, v73, &unk_1000299C4);
            v74 = v68;
            v75 = v69;
            v184 = isa;
            v34 = &type metadata for Any;
            sub_1000218A0();
            a3 = sub_100021880().super.isa;

            pixelBufferOut = 0;
            v76 = CVPixelBufferCreate(0, v58, v59, 0x42475241u, a3, &pixelBufferOut);
            v31 = pixelBufferOut;
            if (!v76)
            {
              sub_10000747C();
              v30 = Height;
              sub_100007508();
              v9 = v189;
              if (!v31)
              {
LABEL_77:
                __break(1u);
                return;
              }

              v82 = v31;
              goto LABEL_27;
            }

            v38 = v76;
            v24 = v190;
            v30 = Height;
            v34 = v197;
            v9 = v189;
            if (qword_100045AE0 == -1)
            {
LABEL_22:
              v77 = sub_100021870();
              sub_1000036D4(v77, qword_100045AF0);
              v78 = sub_100021850();
              v79 = sub_1000219C0();
              if (os_log_type_enabled(v78, v79))
              {
                v30 = swift_slowAlloc();
                *v30 = 67109120;
                *(v30 + 1) = v38;
                _os_log_impl(&_mh_execute_header, v78, v79, "CVPixelBufferCreate failed with error code: %d", v30, 8u);
                sub_1000074E0();
                sub_100007410();
              }

              v80 = sub_100003680();
              v44 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v80);
              sub_1000073F0(xmmword_100029030, v44, v81);
LABEL_27:

              v22 = v188;
              if (v44)
              {
                v83 = v186;

                v84 = v185;
                goto LABEL_29;
              }

              sub_100003638(&qword_100044668, &qword_100029248);
              v85 = swift_initStackObject();
              *(v85 + 16) = v187;
              v86 = v185;
              *(v85 + 32) = kCIContextOutputColorSpace;
              *(v85 + 40) = v86;
              type metadata accessor for CIContextOption(0);
              type metadata accessor for CGColorSpace(0);
              v24 = v87;
              sub_100007320();
              sub_100006924(v88, v89, &unk_100029A48);
              v90 = kCIContextOutputColorSpace;
              sub_100007508();
              v91 = v86;
              sub_10000747C();
              v92 = sub_1000218A0();
              v30 = sub_10000488C(v92);

              v93 = objc_allocWithZone(CIContext);
              v94 = sub_1000074E0();
              v95 = sub_100004CDC(v94);
              CVBufferSetAttachment(v31, kCVImageBufferCGColorSpaceKey, v91, kCVAttachmentMode_ShouldPropagate);
              v96 = v186;
              [v95 render:v186 toCVPixelBuffer:v31];

              v22 = v188;
              goto LABEL_31;
            }

LABEL_73:
            sub_10000730C();
            swift_once();
            goto LABEL_22;
          }

LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_70;
  }

  v51 = sub_100003680();
  v52 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v51);
  sub_1000073F0(xmmword_100029000, v52, v53);
  if (v52)
  {
LABEL_29:
    v24[1](v30, v22);

    return;
  }

LABEL_31:
  v189 = v9;
  Width = CVPixelBufferGetWidth(v31);
  Height = CVPixelBufferGetHeight(v31);
  v98 = v207;
  sub_100021750(&v214);
  v100 = v99;
  v101 = CGImageSourceCreateWithURL(v99, 0);

  if (!v101)
  {
    v206 = v31;
    if (qword_100045AE0 != -1)
    {
      sub_10000730C();
      swift_once();
    }

    v119 = sub_100021870();
    sub_1000036D4(v119, qword_100045AF0);
    v120 = v195;
    v121 = v194;
    v122 = v196;
    (*(v195 + 16))(v194, v98, v196);
    v123 = sub_100021850();
    v124 = sub_1000219C0();
    if (os_log_type_enabled(v123, v124))
    {
      sub_100007588();
      v125 = swift_slowAlloc();
      v205 = v125;
      v126 = swift_slowAlloc();
      Height = v30;
      v30 = v126;
      *&v209 = v126;
      *v125 = 136315138;
      v127 = sub_100021770();
      v190 = v24;
      v24 = v128;
      (*(v120 + 8))(v121, v122);
      v129 = sub_100005874(v127, v24, &v209);
      sub_10000747C();

      v130 = v205;
      *(v205 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v123, v124, "Failed to create image source image from %s.", v130, 0xCu);
      sub_100005938(v30);
      sub_1000074E0();
      sub_100007410();

      sub_100007410();
    }

    else
    {

      (*(v120 + 8))(v121, v122);
    }

    sub_1000073D8();
    sub_100021A00(44);

    sub_10000741C();
    sub_1000074D0(v134);
    v222._countAndFlagsBits = sub_100021770();
    sub_100021930(v222);

    v223._countAndFlagsBits = 46;
    v223._object = 0xE100000000000000;
    sub_100021930(v223);
    v135 = sub_100007530();
    v136 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v135);
    sub_100007450(v136, v137);

    v138 = &v213;
    goto LABEL_54;
  }

  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v101);
  v194 = v101;
  v103 = CGImageSourceCopyPropertiesAtIndex(v101, PrimaryImageIndex, 0);
  if (!v103)
  {
    goto LABEL_52;
  }

  v104 = v103;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_52;
  }

  *&v209 = 0;
  sub_100021890();

  v105 = v209;
  if (!v209)
  {
LABEL_52:
    sub_1000073D8();
    sub_100021A00(33);

    sub_10000741C();
    sub_1000074D0(v139);
    v224._countAndFlagsBits = sub_100021770();
    sub_100021930(v224);

    v225._countAndFlagsBits = 46;
    v225._object = 0xE100000000000000;
    sub_100021930(v225);
    v140 = sub_100007530();
    v141 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v140);
    sub_100007450(v141, v142);

LABEL_53:
    v138 = &v211;
LABEL_54:

    goto LABEL_55;
  }

  v106 = sub_100021900();
  sub_10000370C(v105, &v209, v106, v107);

  if (!v210)
  {
    goto LABEL_56;
  }

  sub_100003638(&qword_1000445F0, &qword_1000290C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_57;
  }

  v108 = v213;
  v109 = sub_100021900();
  sub_10000370C(v108, &v209, v109, v110);

  if (!v210)
  {
LABEL_56:
    sub_10000689C(&v209, &qword_100044570, &qword_100029098);
    goto LABEL_57;
  }

  swift_dynamicCast();
  sub_100007508();
  if (v111)
  {
    v112 = Width * Width;
    if ((Width * Width) >> 64 == (Width * Width) >> 63)
    {
      v113 = Height;
      v114 = v113 * v113;
      if ((v113 * v113) >> 64 == (v113 * v113) >> 63)
      {
        v115 = __OFADD__(v112, v114);
        v116 = v112 + v114;
        if (!v115)
        {
          v117 = 0;
          v118 = (sqrtf(v116) / 43.27) * *&v213;
          goto LABEL_62;
        }

        goto LABEL_76;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_57:
  if (qword_100045AE0 != -1)
  {
    sub_10000730C();
    swift_once();
  }

  v143 = sub_100021870();
  sub_1000036D4(v143, qword_100045AF0);
  v108 = sub_100021850();
  v144 = sub_1000219B0();
  if (os_log_type_enabled(v108, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&_mh_execute_header, v108, v144, "Couldn't extract focal length from image, using nil.", v145, 2u);
    sub_100007410();
  }

  v117 = 1;
  v118 = 0.0;
  sub_100007508();
LABEL_62:
  v146 = MTLCreateSystemDefaultDevice();
  if (!v146)
  {
    v163 = sub_100003680();
    v164 = sub_1000074F0(&type metadata for AlchemistWrapper.Error, v163);
    sub_1000073F0(xmmword_100029050, v164, v165);

    goto LABEL_53;
  }

  v207 = v146;
  sub_100007488();
  sub_100021790();
  sub_100003638(&qword_100044578, &qword_1000290A0);
  LODWORD(v187) = v117;
  v147 = (sub_100003638(&qword_100044580, &qword_1000290A8) - 8);
  v148 = (*(*v147 + 80) + 32) & ~*(*v147 + 80);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_100029010;
  v150 = (v149 + v148 + v147[14]);
  v151 = v199;
  v152 = *(v199 + 104);
  v153 = v200;
  v152();
  v154 = v204;
  v150[3] = v204;
  v155 = sub_100005984(v150);
  (*(v203 + 16))(v155, v206, v154);
  sub_100006924(&qword_100044588, &type metadata accessor for ALCService.GenerationOption, &protocol conformance descriptor for ALCService.GenerationOption);
  v156 = sub_1000218A0();
  v157 = v198;
  v186 = v152;
  (v152)(v198, enum case for ALCService.GenerationOption.clientName(_:), v153);
  v158 = sub_1000217F0();
  v210 = v158;
  v159 = sub_100005984(&v209);
  (*(*(v158 - 8) + 104))(v159, enum case for ALCService.ClientName.photosApp(_:), v158);
  sub_1000059E4(&v209, &v213);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v208[0] = v156;
  sub_100005FB0(&v213, v157, isUniquelyReferenced_nonNull_native);
  v161 = v208[0];
  v162 = *(v151 + 8);
  v162(v157, v153);
  if (v187)
  {
    sub_10000747C();
    v199 = v161;
  }

  else
  {
    (v186)(v157, enum case for ALCService.GenerationOption.focalLengthPx(_:), v153);
    v210 = &type metadata for Float;
    *&v209 = v118;
    sub_1000059E4(&v209, &v213);
    v166 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v161;
    sub_100005FB0(&v213, v157, v166);
    v199 = v208[0];
    v162(v157, v153);
    sub_10000747C();
  }

  v167 = dispatch_semaphore_create(0);
  v168 = sub_1000219A0();
  sub_10000617C(v202, 1, 1, v168);
  (*(v157 + 16))(v193, Height, v188);
  v169 = v195;
  (*(v195 + 16))(v205, v201, v196);
  sub_100021980();
  v200 = v167;
  swift_unknownObjectRetain();
  v201 = v31;
  v170 = sub_100021970();
  v171 = (*(v157 + 80) + 48) & ~*(v157 + 80);
  v172 = (v192 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
  v173 = (v172 + 15) & 0xFFFFFFFFFFFFFFF8;
  v174 = (*(v169 + 80) + v173 + 8) & ~*(v169 + 80);
  v175 = swift_allocObject();
  *(v175 + 2) = v170;
  *(v175 + 3) = &protocol witness table for MainActor;
  v176 = v200;
  v177 = v207;
  *(v175 + 4) = v200;
  *(v175 + 5) = v177;
  v178 = &v175[v171];
  v179 = v188;
  (*(v157 + 32))(v178, v193, v188);
  v180 = v201;
  *&v175[v172] = v201;
  *&v175[v173] = v199;
  (*(v169 + 32))(&v175[v174], v205, v196);
  sub_10000417C(0, 0, v202, &unk_1000290C0, v175);

  sub_1000219D0();

  swift_unknownObjectRelease();
  (*(v203 + 8))(v206, v204);
  v190[1](Height, v179);
}

uint64_t sub_100003638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003680()
{
  result = qword_100044568;
  if (!qword_100044568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044568);
  }

  return result;
}

uint64_t sub_1000036D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double sub_10000370C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_100005F38(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_100006D68(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100003770()
{
  sub_10000757C();
  v0[16] = v1;
  v0[17] = v11;
  v0[14] = v2;
  v0[15] = v3;
  v0[12] = v4;
  v0[13] = v5;
  v6 = sub_100021840();
  v0[18] = v6;
  v0[19] = *(v6 - 8);
  v0[20] = swift_task_alloc();
  sub_100021980();
  v0[21] = sub_100021970();
  sub_1000074A4();
  v7 = sub_100021960();
  v0[22] = v7;
  v0[23] = v8;

  return (_swift_task_switch)(sub_1000038A0, v7, v8);
}

uint64_t sub_1000038A0()
{
  (*(v0[19] + 16))(v0[20], v0[14], v0[18]);
  sub_100021820();
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[24] = sub_100021810();
  v1 = v0[16];
  v2 = async function pointer to dispatch thunk of ALCService.generate(_:with:);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_100003B64;
  v4 = v0[15];

  return ((&async function pointer to dispatch thunk of ALCService.generate(_:with:) + v2))(v4, v1);
}

uint64_t sub_100003B64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_10000757C();
  v10 = *v9;
  v11 = *v9;
  *(v11 + 208) = v12;
  *(v11 + 216) = v8;

  v13 = *(v10 + 184);
  v14 = *(v10 + 176);
  if (v8)
  {
    v15 = sub_100003FB8;
  }

  else
  {
    v15 = sub_100003CD0;
  }

  return (_swift_task_switch)(v15, v14, v13);
}

uint64_t sub_100003CD0()
{
  v1 = *(v0 + 208);

  sub_100021750(v2);
  v4 = v3;
  sub_100003638(&qword_100044630, &qword_100029228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029010;
  v6 = MXISerializeOptionCompressionAlgorithm;
  *(inited + 32) = MXISerializeOptionCompressionAlgorithm;
  v7 = MXISerializeCompressionAlgorithmZlib;
  type metadata accessor for MXISerializeCompressionAlgorithm(0);
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  type metadata accessor for MXISerializeOption(0);
  sub_100007338();
  sub_100006924(v9, v10, &unk_100029AD0);
  v11 = v6;
  v12 = v7;
  v13 = sub_1000218A0();
  *(v0 + 88) = 0;
  v14 = sub_100006C9C(v4, v13, v0 + 88, v1);

  v15 = *(v0 + 88);
  v16 = *(v0 + 208);
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v18 = v15;
    sub_100021740();

    swift_willThrow();

    if (qword_100045AE0 != -1)
    {
      sub_10000730C();
      swift_once();
    }

    v19 = sub_100021870();
    sub_1000036D4(v19, qword_100045AF0);
    sub_1000074A4();
    swift_errorRetain();
    v20 = sub_100021850();
    v21 = sub_1000219C0();

    if (os_log_type_enabled(v20, v21))
    {
      sub_100007588();
      swift_slowAlloc();
      v22 = sub_100007514();
      *v14 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v23;
      *v22 = v23;
      sub_10000754C(&_mh_execute_header, v24, v21, "Failed to generate alchemist result: %@");
      sub_10000689C(v22, &qword_100044628, &qword_100029220);
      sub_100007410();

      sub_100007410();
    }

    else
    {
    }
  }

  sub_1000219E0();

  sub_100007470();

  return v25();
}

uint64_t sub_100003FB8()
{

  if (qword_100045AE0 != -1)
  {
    sub_10000730C();
    swift_once();
  }

  v1 = sub_100021870();
  sub_1000036D4(v1, qword_100045AF0);
  sub_1000074A4();
  swift_errorRetain();
  v2 = sub_100021850();
  v3 = sub_1000219C0();

  if (os_log_type_enabled(v2, v3))
  {
    sub_100007588();
    swift_slowAlloc();
    v4 = sub_100007514();
    *v0 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v0 + 4) = v5;
    *v4 = v5;
    sub_10000754C(&_mh_execute_header, v6, v3, "Failed to generate alchemist result: %@");
    sub_10000689C(v4, &qword_100044628, &qword_100029220);
    sub_100007410();

    sub_100007410();
  }

  else
  {
  }

  sub_1000219E0();

  sub_100007470();

  return v7();
}

uint64_t sub_10000417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003638(&qword_100044560, &qword_100029090);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100006694(a3, v24 - v10);
  v12 = sub_1000219A0();
  v13 = sub_100006704(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000689C(v11, &qword_100044560, &qword_100029090);
  }

  else
  {
    sub_100021990();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100021960();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100021910() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000689C(a3, &qword_100044560, &qword_100029090);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000689C(a3, &qword_100044560, &qword_100029090);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

_BYTE *sub_1000045F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003638(&qword_1000446A0, &qword_100029268);
    v1 = sub_100021A30();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v24 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_1000059E4(&v25[8], v23);
    sub_1000059E4(v23, v25);
    sub_100021900();
    sub_100021AC0();
    sub_100021920();
    v13 = sub_100021AD0();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v16];
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v6[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v17) = v12;
    result = sub_1000059E4(v25, (*(v1 + 7) + 32 * v17));
    ++*(v1 + 2);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

_BYTE *sub_10000488C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003638(&qword_100044678, &qword_100029250);
    v1 = sub_100021A30();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v26 = *(*(a1 + 56) + v10);
    v12 = v26;
    type metadata accessor for CGColorSpace(0);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_1000059E4(&v27[8], v25);
    sub_1000059E4(v25, v27);
    sub_100021900();
    sub_100021AC0();
    sub_100021920();
    v15 = sub_100021AD0();

    v16 = -1 << v1[32];
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *&v6[8 * v18];
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v6[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v19) = v13;
    result = sub_1000059E4(v27, (*(v1 + 7) + 32 * v19));
    ++*(v1 + 2);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id AlchemistWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlchemistWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlchemistWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id AlchemistWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlchemistWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100004C00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for CIImageOption(0);
    sub_100006924(&qword_100044660, type metadata accessor for CIImageOption, &unk_100029A8C);
    v7.super.isa = sub_100021880().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithCGImageSource:a1 index:a2 options:v7.super.isa];

  return v8;
}

id sub_100004CDC(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_100006924(&qword_100044670, type metadata accessor for CIContextOption, &unk_100029A48);
    v2.super.isa = sub_100021880().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithOptions:v2.super.isa];

  return v3;
}

uint64_t sub_100004DBC(uint64_t a1, id *a2)
{
  result = sub_1000218E0();
  *a2 = 0;
  return result;
}

uint64_t sub_100004E50(uint64_t a1, id *a2)
{
  v3 = sub_1000218F0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004ED0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1000072A8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100004F14(uint64_t a1)
{
  sub_100021900();
  sub_100021950();
  sub_1000074A4();

  return v1;
}

uint64_t sub_100004F64(uint64_t a1, uint64_t a2)
{
  sub_100021900();
  sub_100021920();
}

Swift::Int sub_100004FD4(uint64_t a1, uint64_t a2)
{
  sub_100021900();
  sub_100021AC0();
  sub_100021920();
  v2 = sub_100021AD0();

  return v2;
}

Swift::Int sub_1000050EC(uint64_t a1, uint64_t a2)
{
  sub_100021AC0();
  swift_getWitnessTable();
  sub_1000217C0();
  return sub_100021AD0();
}

uint64_t sub_100005178(uint64_t a1, uint64_t a2)
{
  v2 = sub_100021900();
  v4 = v3;
  if (v2 == sub_100021900() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100021A60();
  }

  return v7 & 1;
}

uint64_t sub_1000051FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10000526C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000529C(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044638, type metadata accessor for MXISerializeOption, &unk_100029AD0);
  v3 = sub_100006924(&unk_100044790, type metadata accessor for MXISerializeOption, &unk_100029424);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005358(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044780, type metadata accessor for MXISerializeCompressionAlgorithm, &unk_100029598);
  v3 = sub_100006924(&qword_100044788, type metadata accessor for MXISerializeCompressionAlgorithm, &unk_100029538);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005414(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044688, type metadata accessor for IOSurfacePropertyKey, &unk_100029A08);
  v3 = sub_100006924(&qword_100044768, type metadata accessor for IOSurfacePropertyKey, &unk_1000298BC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000054D0(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044660, type metadata accessor for CIImageOption, &unk_100029A8C);
  v3 = sub_100006924(&qword_100044778, type metadata accessor for CIImageOption, &unk_10002969C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000558C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000218D0();

  *a2 = v3;
  return result;
}

uint64_t sub_1000055D4(uint64_t a1)
{
  v2 = sub_100006924(&qword_100044670, type metadata accessor for CIContextOption, &unk_100029A48);
  v3 = sub_100006924(&qword_100044770, type metadata accessor for CIContextOption, &unk_1000297B0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005690(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005788;

  return v6(a1);
}

uint64_t sub_100005788()
{
  v1 = *v0;
  sub_1000074B0();
  *v2 = v1;

  sub_100007470();

  return v3();
}

unint64_t sub_100005874(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000059F4(v11, 0, 0, 1, a1, a2);
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
    sub_100006D68(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005938(v11);
  return v7;
}

uint64_t sub_100005938(void *a1)
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

uint64_t *sub_100005984(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1000059E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000059F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005AF4(a5, a6);
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
    result = sub_100021A10();
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

char *sub_100005AF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005B40(a1, a2);
  sub_100005C58(&off_10003D088);
  return v3;
}

char *sub_100005B40(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_100021940())
  {
    result = sub_100005D3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000219F0();
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
          result = sub_100021A10();
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

uint64_t sub_100005C58(uint64_t result)
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

    result = sub_100005DAC(result, v7, 1, v3);
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

void *sub_100005D3C(uint64_t a1, uint64_t a2)
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

  sub_100003638(&qword_100044650, &qword_100029238);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100005DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003638(&qword_100044650, &qword_100029238);
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

unint64_t sub_100005EA0(uint64_t a1)
{
  sub_100021800();
  sub_100006924(&qword_100044588, &type metadata accessor for ALCService.GenerationOption, &protocol conformance descriptor for ALCService.GenerationOption);
  v2 = sub_1000218B0();

  return sub_100006A2C(a1, v2);
}

unint64_t sub_100005F38(uint64_t a1, uint64_t a2)
{
  sub_100021AC0();
  sub_100021920();
  v4 = sub_100021AD0();

  return sub_100006BE8(a1, a2, v4);
}

_OWORD *sub_100005FB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100021800();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_100005EA0(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_100003638(&qword_100044640, &qword_100029230);
  if (!sub_100021A20(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_100005EA0(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = sub_100021A70();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    v23 = (v22[7] + 32 * v18);
    sub_100005938(v23);

    return sub_1000059E4(a1, v23);
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_10000696C(v18, v11, a1, v22);
  }
}

uint64_t sub_1000061A4()
{
  v1 = sub_100021840();
  sub_100007380();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100021780();
  sub_100007380();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
  v17 = *(v12 + 64);
  v15 = v4 | v13;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v17, v15 | 7);
}

uint64_t sub_100006320()
{
  sub_100021840();
  sub_100021780();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100006494;

  return sub_100003770();
}

uint64_t sub_100006494()
{
  v1 = *v0;
  sub_1000074B0();
  *v2 = v1;

  sub_100007470();

  return v3();
}

uint64_t sub_1000065B4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000065D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000065E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100006624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000666C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100006694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003638(&qword_100044560, &qword_100029090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000672C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_10000757C();
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v10 = sub_100007430(v9);

  return v11(v10);
}

uint64_t sub_1000067C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006800(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_10000757C();
  v9 = swift_task_alloc();
  *(v8 + 16) = v9;
  *v9 = v8;
  v10 = sub_100007430(v9);

  return v11(v10);
}

uint64_t sub_10000689C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003638(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_10000696C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100021800();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000059E4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100006A2C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_100021800();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100006924(&qword_100044648, &type metadata accessor for ALCService.GenerationOption, &protocol conformance descriptor for ALCService.GenerationOption);
    v9 = sub_1000218C0();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100006BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100021A60() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

id sub_100006C9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for MXISerializeOption(0);
  sub_100006924(&qword_100044638, type metadata accessor for MXISerializeOption, &unk_100029AD0);
  isa = sub_100021880().super.isa;

  v8 = [a4 writeToURL:a1 withOptions:isa error:a3];

  return v8;
}

uint64_t sub_100006D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006DC8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100006EA4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000072A8(uint64_t a1)
{
  sub_100021900();
  sub_1000218D0();
  sub_1000074A4();

  return v1;
}

uint64_t sub_1000073F0(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 2;

  return swift_willThrow();
}

uint64_t sub_100007450(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void sub_100007488()
{
  *(v3 - 448) = v0;
  *(v3 - 456) = v1;
  *(v3 - 472) = v2;
}

uint64_t sub_1000074F0(uint64_t a1, uint64_t a2)
{

  return _swift_allocError(a1, a2, 0, 0);
}

uint64_t sub_100007514()
{

  return swift_slowAlloc();
}

unint64_t sub_100007530()
{

  return sub_100003680();
}

void sub_10000754C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_100009594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000095B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000095CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = qword_100045B38;
    v24 = qword_100045B38;
    if (!qword_100045B38)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100009890;
      v26 = &unk_10003D3F8;
      v27 = &v21;
      sub_100009890(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 32);
    v11 = [v9 image];
    v12 = [v11 cgImage];
    v13 = [*(a1 + 40) lastPathComponent];
    v20 = 0;
    v14 = [v10 _blastDoorStoreTemporarySourceImageWithImageRef:v12 sourceURL:v13 error:&v20];
    v15 = v20;
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v14;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) setError:v15];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door video reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100009870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009890(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorVideoPreview");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B38 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorVideoPreviewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:33 description:{@"Unable to find class %s", "BlastDoorVideoPreview"}];

    __break(1u);
  }
}

void *sub_100009958()
{
  v4[0] = 0;
  if (!qword_100045B20)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100009AAC;
    v4[4] = &unk_10003D430;
    v4[5] = v4;
    v5 = off_10003D450;
    v6 = 0;
    qword_100045B20 = _sl_dlopen();
  }

  v0 = qword_100045B20;
  if (!qword_100045B20)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *BlastDoorLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100009AAC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100045B20 = result;
  return result;
}

void sub_100009CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100009D18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = qword_100045B30;
    v30 = qword_100045B30;
    if (!qword_100045B30)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000A0DC;
      v32 = &unk_10003D3F8;
      v33 = &v27;
      sub_10000A0DC(buf);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v10 image];
    v13 = [v12 cgImage];
    v14 = [*(a1 + 40) lastPathComponent];
    v26 = 0;
    v15 = [v11 _blastDoorStoreTemporarySourceImageWithImageRef:v13 sourceURL:v14 error:&v26];
    v16 = v26;
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    v19 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v20 = [v10 metadata];
      v21 = [v19 _blastDoorConvertImageMetadata:v20];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    else
    {
      [*(a1 + 32) setError:v16];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A0DC(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorLargeImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorLargeImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:32 description:{@"Unable to find class %s", "BlastDoorLargeImage"}];

    __break(1u);
  }
}

void sub_10000A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = qword_100045B28;
    v17 = qword_100045B28;
    if (!qword_100045B28)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000A504;
      v19 = &unk_10003D3F8;
      v20 = &v14;
      sub_10000A504(buf);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) _blastDoorConvertImageMetadata:{v9, v14}];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A504(uint64_t a1)
{
  sub_100009958();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorMediaMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100045B28 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorMediaMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:34 description:{@"Unable to find class %s", "BlastDoorMediaMetadata"}];

    __break(1u);
  }
}

void sub_10000AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000AAD0(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100045B10)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10000AD0C;
    v6[4] = &unk_10003D430;
    v6[5] = v6;
    v7 = off_10003D418;
    v8 = 0;
    qword_100045B10 = _sl_dlopen();
  }

  if (!qword_100045B10)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MessagesBlastDoorSupportLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMMessagesBlastDoorInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getIMMessagesBlastDoorInterfaceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:31 description:{@"Unable to find class %s", "IMMessagesBlastDoorInterface"}];

LABEL_10:
    __break(1u);
  }

  qword_100045B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000ACBC(uint64_t a1)
{
  v2 = sub_100009958();
  result = dlsym(v2, "BlastDoorInstanceTypeHubble");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100045B18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AD0C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100045B10 = result;
  return result;
}

void sub_10000BC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BC38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BC50(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 URLByAppendingPathComponent:v9];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  v13 = [v11 copyURL:v8 forRole:v9 toDirectory:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10000BDB4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 url];
  (*(v6 + 16))(v6, v7, v8, a4);
}

void sub_10000C0BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0;
  v14 = 0;
  v6 = [a3 getFileSize:&v14 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:v14];
    v9 = [v8 stringValue];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get file size for url with role %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = @"?";
  }

  v10 = *(a1 + 32);
  v15[0] = v5;
  v15[1] = v9;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [v11 componentsJoinedByString:@"="];
  [v10 addObject:v12];
}

void sub_10000C364(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14[0] = v5;
  v8 = *(a1 + 40);
  v9 = [v6 path];
  v10 = v9;
  v11 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = [v9 lastPathComponent];
  }

  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  v13 = [v12 componentsJoinedByString:@"="];
  [v7 addObject:v13];

  if ((v8 & 1) == 0)
  {
  }
}

void sub_10000C544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C55C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 path];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isReadableFileAtPath:v7];

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_10000C720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000C744(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v20 = 0;
  v10 = [v8 getFileSize:&v20 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 url];
      v17 = *(*(a1[5] + 8) + 40);
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      v25 = 2114;
      v26 = v17;
      v16 = "Unable to get file size for URL ref with role %{public}@ %@: %{public}@";
      goto LABEL_10;
    }

LABEL_7:
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (!v20)
  {
    v11 = a1[4];
    v12 = [v8 url];
    v13 = *(a1[5] + 8);
    v18 = *(v13 + 40);
    LOBYTE(v11) = [v11 removeItemAtURL:v12 error:&v18];
    objc_storeStrong((v13 + 40), v18);

    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 url];
        v15 = *(*(a1[5] + 8) + 40);
        *buf = 138543874;
        v22 = v7;
        v23 = 2112;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        v16 = "Unable to remove empty file for URL ref with role %{public}@ %@: %{public}@";
LABEL_10:
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_10000CAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000CADC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 url];
  v8 = [v7 path];

  if ([*(a1 + 32) fileExistsAtPath:v8 isDirectory:0])
  {
    goto LABEL_17;
  }

  v9 = [v6 url];
  v10 = [v9 URLByDeletingLastPathComponent];

  v24 = 0;
  v11 = *(a1 + 32);
  v12 = [v10 path];
  LODWORD(v11) = [v11 fileExistsAtPath:v12 isDirectory:&v24];

  if (v11)
  {
    if (v24)
    {
      goto LABEL_9;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v30 = v8;
    v13 = "Attempting to create empty destination output file at path %@ but the parent directory path exists and is not a directory";
    goto LABEL_19;
  }

  v14 = *(a1 + 32);
  v27 = NSFileOwnerAccountName;
  v28 = @"mobile";
  v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  LOBYTE(v14) = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);

  if (v14)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v22 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v30 = v22;
    v13 = "Attempting to create empty destination output file at path %@ but parent directory creation failed:";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = *(a1 + 32);
    v25 = NSFileOwnerAccountName;
    v26 = @"mobile";
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    LOBYTE(v17) = [v17 createFileAtPath:v8 contents:0 attributes:v18];

    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create empty file at destination %@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
    v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_17:
}

void sub_10000D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000D098(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [a3 dictionaryRepresentationWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to encode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_10000DC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = [a3 getPathHash:&v5 lastPathComponent:0];
  *(*(*(a1 + 32) + 8) + 24) ^= v5;
  return result;
}

void sub_10000E2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000E2DC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [PAMediaConversionServiceResourceURLReference referenceWithDictionaryRepresentation:a3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1[4] + 8) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[5] + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

void sub_10000EA94(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to send progress update for request %{public}@ to client: %{public}@", &v5, 0x16u);
  }
}

void sub_10000ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000ED6C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || ((6u >> v6) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_10000EE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EE9C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || (v6 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_10000EFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EFC4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v4 = [a2 requestTracker];
    *(*(*(a1 + 32) + 8) + 24) = [v4 effectivePriority] == *(a1 + 40);
  }

  else
  {
    *(v2 + 24) = 0;
  }
}

int64_t sub_10000F1A4(id a1, ClientRequest *a2, ClientRequest *a3)
{
  v4 = a3;
  v5 = [(ClientRequest *)a2 requestTracker];
  v6 = [(ClientRequest *)v4 requestTracker];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000F44C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 connectionIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v8 identifier];
    [v6 addObject:v7];
  }
}

void sub_10000F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F5EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F604(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 destinationURLCollection];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10000F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F7A0(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10000FA78(id a1, ClientRequest *a2, BOOL *a3)
{
  v3 = [(ClientRequest *)a2 requestTracker];
  [v3 didDequeueAndStartProcessingRequest];
}

void sub_100010548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 requestIdentifiersForConnectionIdentifier:*(a1 + 40)];
  [v2 addObjectsFromArray:v3];
}

void sub_1000109A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000109CC(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v12 = 0;
  v7 = [v6 removeAndReturnClientRequestWithIdentifier:a1[4] remainingRequestCount:&v12];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[5] + 8) + 40);
  if (v10)
  {
    [v10 setCancellationReasonDebugDescription:@"Client request"];
    *a3 = 1;
    if (!v12)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Found client request reference for cancelled request identifier %{public}@ in conversion %{public}@, remaining request count %lu", buf, 0x20u);
    }
  }
}

void sub_100010C80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int buf, __int128 a14)
{
  if (a2)
  {
    v16 = objc_begin_catch(a1);
    if (a2 == 2)
    {
      v17 = v16;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        buf = 138543618;
        WORD2(a14) = 2114;
        *(&a14 + 6) = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception while cancelling request with identifier %{public}@: %{public}@", &buf, 0x16u);
      }

      objc_end_catch();
      os_unfair_lock_unlock(v14 + 2);
      JUMPOUT(0x100010BF4);
    }

    os_unfair_lock_unlock(v14 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_100010EF4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int buf, __int128 a18)
{
  if (a2)
  {
    _Block_object_dispose(&buf, 8);
    v21 = objc_begin_catch(a1);
    if (a2 == 2)
    {
      v22 = v21;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        buf = 138543618;
        WORD2(a18) = 2114;
        *(&a18 + 6) = v22;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception while modifying request with identifier %{public}@: %{public}@", &buf, 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x100010E68);
    }

    os_unfair_lock_unlock(v18 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_100010FB4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 clientRequestForIdentifier:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10001122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100011250(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 path];
    v11 = [v9 path];
    v12 = *(a1 + 40);
    *buf = 138413058;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying conversion output %@ (role %@) to destination %@ for request %{public}@", buf, 0x2Au);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion request output - destination URL collection for request %{public}@ is missing URL for role %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v24 = NSDebugDescriptionErrorKey;
    v16 = [NSString stringWithFormat:@"Failed to copy conversion output - destination URL collection is missing URL for role %@", v7];
    v25 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v17];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_11;
  }

  v13 = *(a1 + 48);
  v14 = *(*(a1 + 64) + 8);
  obj = *(v14 + 40);
  v15 = [v13 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v27 = v7;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}

void sub_100012A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v33 = objc_begin_catch(exception_object);
      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v35 = [v30 identifier];
        *(v32 - 128) = 138543618;
        *(v31 + 4) = v35;
        *(v32 - 116) = 2114;
        *(v31 + 14) = v33;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception while enqueueing new queue entry %{public}@: %{public}@", (v32 - 128), 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x100012908);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v29 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100012B60(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v10 = 0;
  v7 = [*(a1 + 32) taskTypeSupportsDeduplication];
  if (v7)
  {
    v7 = [v6 taskTypeSupportsDeduplication];
    if (v7)
    {
      LOBYTE(v7) = [v6 clientRequestIsDuplicate:*(a1 + 40) identicalDestination:&v10];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ([*(a1 + 40) requiresDeduplicationAgainstOriginalWithIdenticalOutput] && (v10 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 40) identifier];
        v9 = [*(a1 + 32) identifier];
        *buf = 138544130;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        v15 = 2114;
        v16 = v6;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New queue entry %{public}@ for request %{public}@ is duplicate of existing entry %{public}@ (identical output: %d), attached request to existing entry", buf, 0x26u);
      }

      [v6 addClientRequest:*(a1 + 40)];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100014724(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 lastPathComponent];
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  v9 = [v5 URLByAppendingPathComponent:v8];

  [*(a1 + 40) setResourceURL:v9 forRole:v6];
}

void sub_100014F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014F7C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100015F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015F4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100017480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1000174D0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001754C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPortraitInfo:v3];
  [v4 setStrength:*(a1 + 40)];
  [v4 setEnabled:1];
}

void sub_1000175B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDepthInfo:v3];
  [v4 setAperture:*(a1 + 48)];
  [v4 setFocusRect:*(a1 + 40)];
  [v4 setEnabled:1];
}

void sub_100018E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_100018EC8(uint64_t a1, CGColorSpaceRef space)
{
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      return 0;
    }

    v2 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = CGColorSpaceRetain(space);
    if (!v2)
    {
      return 0;
    }
  }

  return CFAutorelease(v2);
}

void sub_100018F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Image generation using CIRawFilter failed: %@", &v4, 0xCu);
    }
  }
}

void sub_100019BEC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 rectValue];
  [v3 setCropRect:?];
  [v3 setEnabled:1];
}

void sub_10001B5EC(id a1, NSString *a2, NSString *a3)
{
  v3 = [(NSString *)a2 UTF8String];

  unsetenv(v3);
}

void sub_10001B724(id a1, NSString *a2, NSString *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [(NSString *)a2 UTF8String];
  v8 = [(NSString *)v6 UTF8String];

  setenv(v7, v8, 1);
}

id sub_10001DD74(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (PFFigGetImageSourceImageIndexForContainerItemID())
  {
    v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v4 = +[NSNull null];
    v5 = [v3 isEqual:v4];

    if (v5)
    {

      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_1000207C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000207E0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) requestIdentifier];
    v11 = [*(a1 + 48) requestIdentifier];
    *buf = 138413314;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v9;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying destination URL (role %@) from original %@ (request %{public}@) to duplicate %@ (request %{public}@) ", buf, 0x34u);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output - destination URL collection is missing URL for role %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v22 = NSDebugDescriptionErrorKey;
    v15 = [NSString stringWithFormat:@"Failed to copy duplicate request output - destination URL collection is missing URL for role %@", v7];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v16];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_11;
  }

  v12 = *(a1 + 56);
  v13 = *(*(a1 + 72) + 8);
  obj = *(v13 + 40);
  v14 = [v12 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v25 = v7;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}