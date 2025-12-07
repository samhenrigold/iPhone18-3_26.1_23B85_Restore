unint64_t sub_10000221C(unint64_t result)
{
  if (result >= 3)
  {
    result = sub_10002F7C4("Fatal error", 11, 2, 0, 0xE000000000000000, "PhotosPosterProvider/PosterKit+PhotosPoster.swift", 49, 2, 47, 0);
    __break(1u);
  }

  return result;
}

__n128 sub_100002284()
{
  [v0 deviceMotionRotation];
  [v0 deviceOrientation];
  return v2;
}

uint64_t sub_100002318(uint64_t a1, id *a2)
{
  result = sub_10002F3E4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000023AC(uint64_t a1, id *a2)
{
  v3 = sub_10002F3F4();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_10000242C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002454();
  *a1 = result;
  return result;
}

NSString sub_100002454()
{
  sub_10002F404();
  v0 = sub_10002F3D4();

  return v0;
}

uint64_t sub_1000024A8()
{
  sub_10002F404();
  v0 = sub_10002F484();

  return v0;
}

uint64_t sub_1000024FC(uint64_t a1, uint64_t a2)
{
  sub_10002F404();
  sub_10002F444();
}

Swift::Int sub_10000256C(uint64_t a1, uint64_t a2)
{
  sub_10002F404();
  sub_10002F8D4();
  sub_10002F444();
  v2 = sub_10002F8F4();

  return v2;
}

uint64_t sub_1000025EC()
{
  v1 = sub_100002A70();
  result = sub_100002660(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100002618@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10002F3D4();

  *a2 = v3;
  return result;
}

uint64_t sub_100002664(uint64_t a1)
{
  v2 = sub_1000028E0(&qword_100049A68, type metadata accessor for PISegmentationOption, &unk_1000351AC);
  v3 = sub_1000028E0(&qword_100049A70, type metadata accessor for PISegmentationOption, &unk_10003510C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002720(uint64_t a1)
{
  v2 = sub_1000028E0(&qword_100049A78, type metadata accessor for PFParallaxStyleCategory, &unk_100035024);
  v3 = sub_1000028E0(&unk_100049A80, type metadata accessor for PFParallaxStyleCategory, &unk_100034FCC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_100002804(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000028E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002A7C()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B530 = result;
  return result;
}

uint64_t sub_100002B2C(uint64_t a1, uint64_t a2, Swift::Int a3, char a4)
{
  v6 = [objc_opt_self() deviceSupportsLandscapeConfiguration];
  sub_100004120(&qword_100049CD0, &unk_100035280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000351F0;
  v8 = PISegmentationOptionClassification;
  *(inited + 32) = PISegmentationOptionClassification;
  result = sub_1000042B4(0, &qword_100049CD8, NSNumber_ptr);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v10 = 136;
    }

    else
    {
      v10 = 8;
    }

    v11 = v8;
    v12.super.super.isa = sub_10002F634(a3).super.super.isa;
    v13 = PISegmentationOptionLayerStackOptions;
    *(inited + 40) = v12;
    *(inited + 48) = v13;
    v14 = v13;
    v15.super.super.isa = sub_10002F634(v10).super.super.isa;
    v16 = PISegmentationOptionDisableRendering;
    *(inited + 56) = v15;
    *(inited + 64) = v16;
    v17 = v16;
    v18.super.super.isa = sub_10002F624(a4 & 1).super.super.isa;
    v19 = PISegmentationOptionEnableSpatialPhoto;
    *(inited + 72) = v18;
    *(inited + 80) = v19;
    v20 = v19;
    *(inited + 88) = sub_10002F624(1);
    type metadata accessor for PISegmentationOption(0);
    sub_1000042F4(&qword_100049A68, type metadata accessor for PISegmentationOption, &unk_1000351AC);
    v21 = sub_10002F3B4();
    v22 = sub_100004430();
    sub_100002CEC(v22, v23, v21);
  }

  return result;
}

uint64_t sub_100002CEC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10002F1B4();
  sub_100004368();
  v77 = v7;
  v78 = v6;
  __chkstk_darwin(v6);
  sub_10000441C();
  sub_1000043E8();
  __chkstk_darwin(v8);
  v73 = v71 - v9;
  sub_10002F304();
  sub_100004368();
  v80 = v11;
  v81 = v10;
  __chkstk_darwin(v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  if (qword_100049660 != -1)
  {
    sub_10000433C();
    swift_once();
  }

  v15 = qword_10004B530;
  sub_10002F2F4();
  sub_10002F614();
  sub_10002F2E4();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = objc_allocWithZone(PHWallpaperAsset);
  v72 = a1;
  v19 = [v18 initWithPhotoAsset:a1];
  v76 = objc_opt_self();
  v20 = v19;
  sub_10002F134(v21);
  v23 = v22;
  sub_100011048(a3);
  v82 = v13;
  v75 = a2;
  isa = sub_10002F394().super.isa;

  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  *(v25 + 24) = v14;
  aBlock[4] = sub_100004294;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000034A4;
  aBlock[3] = &unk_100041060;
  v26 = _Block_copy(aBlock);
  v79 = v16;

  v27 = v14;

  [v76 exportWallpaperForAsset:v20 toURL:v23 options:isa completion:v26];
  v28 = v26;
  v29 = v82;
  _Block_release(v28);
  v76 = v20;

  v30 = v15;
  sub_10002F5F4();
  sub_10002F604();
  sub_10002F2E4();
  swift_beginAccess();
  if (*v17)
  {
    v74 = v27;
    swift_errorRetain();
    v31 = sub_10002F5D4();
    v32 = v77;
    v33 = v78;
    v34 = v73;
    (*(v77 + 16))(v73, v75, v78);
    if (os_log_type_enabled(v15, v31))
    {
      v35 = sub_10000443C();
      v75 = swift_slowAlloc();
      v84 = v75;
      *v35 = 136315650;
      v36 = [v72 localIdentifier];
      LODWORD(v72) = v31;
      v37 = v36;
      v38 = sub_10002F404();
      v40 = v39;

      v41 = sub_100022BB4(v38, v40, &v84);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      v42 = sub_10002F184();
      v44 = v43;
      v45 = sub_100004430();
      v46(v45);
      v47 = sub_100022BB4(v42, v44, &v84);

      *(v35 + 14) = v47;
      *(v35 + 22) = 2080;
      swift_getErrorValue();
      v48 = sub_10002F884();
      v50 = sub_100022BB4(v48, v49, &v84);

      *(v35 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v30, v72, "Failed to export asset %s to directory at %s, error:%s)", v35, 0x20u);
      v51 = v75;
      swift_arrayDestroy();
      v29 = v82;
      sub_100004398(v51);
      sub_100004398(v35);
    }

    else
    {
      (*(v32 + 8))(v34, v33);
    }

    swift_willThrow();

    (*(v80 + 8))(v29, v81);
  }

  else
  {
    v52 = sub_10002F5B4();
    v53 = v77;
    v54 = v78;
    v55 = v71[0];
    (*(v77 + 16))(v71[0], v75, v78);
    if (os_log_type_enabled(v15, v52))
    {
      v56 = swift_slowAlloc();
      v74 = v27;
      v57 = v56;
      v75 = swift_slowAlloc();
      v84 = v75;
      *v57 = 136315394;
      v58 = [v72 localIdentifier];
      LODWORD(v73) = v52;
      v59 = v55;
      v60 = v53;
      v61 = v58;
      v62 = sub_10002F404();
      v64 = v63;

      v65 = sub_100022BB4(v62, v64, &v84);

      *(v57 + 4) = v65;
      *(v57 + 12) = 2080;
      v66 = sub_10002F184();
      v67 = (*(v60 + 8))(v59, v54);
      sub_100004454(v67, v68, &v84);
      sub_100004410();

      *(v57 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v30, v73, "Exported asset %s to directory %s", v57, 0x16u);
      v69 = v75;
      swift_arrayDestroy();
      sub_100004398(v69);
      sub_10000437C();
    }

    else
    {

      (*(v53 + 8))(v55, v54);
    }

    (*(v80 + 8))(v29, v81);
  }
}

void sub_100003438(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a3);
}

void sub_1000034A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100003510(void *a1, char *a2, uint64_t a3, Swift::Int a4, int a5)
{
  v119 = a5;
  v118 = a4;
  v124 = a3;
  v130 = a2;
  v6 = sub_10002F1B4();
  sub_100004368();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000441C();
  sub_1000043E8();
  __chkstk_darwin(v10);
  sub_1000043E8();
  v12 = __chkstk_darwin(v11);
  v14 = v107 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v107 - v16;
  __chkstk_darwin(v15);
  v19 = v107 - v18;
  v111 = a1;
  v20 = [a1 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  v21 = sub_10002F4C4();

  v129 = sub_10002A9E4(v21);
  if (v129)
  {
    v108 = v14;
    v23 = v8;
    v8 = 0;
    v122 = v21 & 0xFFFFFFFFFFFFFF8;
    v127 = (v23 + 8);
    v128 = v21 & 0xC000000000000001;
    v109 = v23;
    v117 = (v23 + 16);
    *&v22 = 138412546;
    v112 = v22;
    v125 = v19;
    v126 = v21;
    while (1)
    {
      if (v128)
      {
        v24 = sub_10002F734();
      }

      else
      {
        if (v8 >= *(v122 + 16))
        {
          goto LABEL_46;
        }

        v24 = *(v21 + 8 * v8 + 32);
      }

      v25 = v24;
      v26 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v14 = v17;
      v20 = [v24 subpath];
      sub_10002F404();
      v27 = v19;
      v19 = v28;

      sub_10002F154();

      v29 = sub_100029008(v25);
      if (!v30)
      {
        break;
      }

      LOBYTE(v20) = v30;
      if (!*(v124 + 16))
      {
        v50 = sub_1000043F8();
        v51(v50);

        goto LABEL_19;
      }

      v31 = v124;
      v32 = sub_100023198(v29, v30);
      v19 = v33;

      if ((v19 & 1) == 0)
      {
        v52 = sub_1000043F8();
        v53(v52);
LABEL_19:

LABEL_20:
        v17 = v14;
        goto LABEL_21;
      }

      v20 = *(*(v31 + 56) + 8 * v32);
      v19 = v125;
      v34 = v123;
      sub_100002B2C(v20, v125, v118, v119 & 1);
      v123 = v34;
      if (v34)
      {

        v89 = sub_10002F5D4();
        if (qword_100049660 != -1)
        {
          sub_10000433C();
          swift_once();
        }

        v90 = qword_10004B530;
        (*v117)(v107[1], v19, v6);
        if (os_log_type_enabled(v90, v89))
        {
          v91 = sub_10000443C();
          v129 = v90;
          v92 = v91;
          v93 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v133 = v130;
          *v92 = 138412802;
          *(v92 + 4) = v20;
          *v93 = v20;
          *(v92 + 12) = 2080;
          sub_100004350();
          sub_1000042F4(v94, v95, &protocol conformance descriptor for URL);
          v96 = v20;
          LODWORD(v128) = v89;
          v97 = sub_10002F824();
          v99 = v98;
          v100 = sub_1000043B0();
          (v8)(v100);
          v101 = sub_100022BB4(v97, v99, &v133);

          *(v92 + 14) = v101;
          *(v92 + 22) = 2080;
          swift_getErrorValue();
          v102 = sub_10002F884();
          v104 = sub_100022BB4(v102, v103, &v133);

          *(v92 + 24) = v104;
          v19 = v125;
          _os_log_impl(&_mh_execute_header, v129, v128, "Failed to save %@ to '%s': %s", v92, 0x20u);
          sub_1000041B4(v93);
          sub_100004398(v93);
          v105 = v130;
          swift_arrayDestroy();
          sub_100004398(v105);
          sub_100004398(v92);
        }

        else
        {
          v106 = sub_1000043B0();
          (v8)(v106);
        }

        swift_willThrow();

        return (v8)(v19, v6);
      }

      v121 = v25;
      v35 = v6;
      v36 = sub_10002F5B4();
      if (qword_100049660 != -1)
      {
        sub_10000433C();
        swift_once();
      }

      v37 = qword_10004B530;
      v17 = v14;
      v38 = sub_100004430();
      v39(v38);
      v120 = v37;
      if (!os_log_type_enabled(v37, v36))
      {

        v14 = v127;
        v20 = *v127;
        (*v127)(v17, v35);
        (v20)(v19, v35);
        v21 = v126;
        v6 = v35;
        goto LABEL_22;
      }

      v40 = swift_slowAlloc();
      v115 = v36;
      v41 = v40;
      v42 = swift_slowAlloc();
      v113 = v42;
      v116 = sub_10000443C();
      v133 = v116;
      *v41 = v112;
      *(v41 + 4) = v20;
      *v42 = v20;
      *(v41 + 12) = 2080;
      sub_100004350();
      sub_1000042F4(&qword_10004A640, v43, &protocol conformance descriptor for URL);
      v44 = v35;
      v114 = v20;
      v45 = sub_10002F824();
      LOBYTE(v20) = v127;
      v46 = *v127;
      v47 = sub_100004430();
      v48 = v46(v47);
      sub_100004454(v48, v49, &v133);
      sub_100004410();
      v6 = v44;
      v19 = v125;

      *(v41 + 14) = v45;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v120, v115, "Successfully saved %@ to '%s'", v41, 0x16u);
      sub_1000041B4(v113);
      sub_10000437C();
      v14 = v116;
      sub_100004168(v116);
      sub_10000437C();
      sub_100004398(v41);

      (v46)(v19, v6);
LABEL_21:
      v21 = v126;
LABEL_22:
      ++v8;
      if (v26 == v129)
      {

        v8 = v109;
        v54 = &v134;
        v14 = v108;
        goto LABEL_26;
      }
    }

    (*v127)(v27, v6);

    v19 = v27;
    goto LABEL_20;
  }

LABEL_26:
  sub_10002F134(v54);
  v56 = v55;
  v133 = 0;
  v57 = [v111 saveToURL:v55 error:&v133];

  if (v57)
  {
    v58 = v133;
    LOBYTE(v20) = sub_10002F5B4();
    if (qword_100049660 != -1)
    {
LABEL_47:
      sub_10000433C();
      swift_once();
    }

    v59 = qword_10004B530;
    (*(v8 + 16))(v14, v130, v6);
    if (os_log_type_enabled(v59, v20))
    {
      v60 = v14;
      v61 = swift_slowAlloc();
      v62 = sub_10000443C();
      v133 = v62;
      *v61 = 136315138;
      sub_100004350();
      sub_1000042F4(v63, v64, &protocol conformance descriptor for URL);
      sub_10002F824();
      v65 = sub_1000043CC();
      v67 = v66(v65);
      sub_100004454(v67, v68, &v133);
      sub_100004410();

      *(v61 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v59, v20, "Successfully saved model data to '%s'", v61, 0xCu);
      sub_100004168(v62);
      sub_100004398(v62);
      return sub_10000437C();
    }

    else
    {
      return (*(v8 + 8))(v14, v6);
    }
  }

  else
  {
    v70 = v133;
    v71 = sub_10002F0F4();

    swift_willThrow();
    v133 = v71;
    v123 = v71;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    v72 = swift_dynamicCast();
    v73 = v110;
    if (v72)
    {

      v123 = v131;
      v74 = sub_10002F5D4();
      if (qword_100049660 != -1)
      {
        sub_10000433C();
        swift_once();
      }

      v75 = qword_10004B530;
      (*(v8 + 16))(v73, v130, v6);
      if (os_log_type_enabled(v75, v74))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v132 = v77;
        *v76 = 136315394;
        sub_100004350();
        sub_1000042F4(v78, v79, &protocol conformance descriptor for URL);
        sub_10002F824();
        v80 = sub_1000043CC();
        v82 = v81(v80);
        sub_100004454(v82, v83, &v132);
        sub_100004410();

        *(v76 + 4) = v73;
        *(v76 + 12) = 2080;
        v84 = [v123 localizedDescription];
        v85 = sub_10002F404();
        v87 = v86;

        v88 = sub_100022BB4(v85, v87, &v132);

        *(v76 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v75, v74, "Failed to save model data to '%s': %s", v76, 0x16u);
        swift_arrayDestroy();
        sub_100004398(v77);
        sub_10000437C();
      }

      else
      {
        (*(v8 + 8))(v73, v6);
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_100004120(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004168(void *a1)
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

uint64_t sub_1000041B4(uint64_t a1)
{
  v2 = sub_100004120(&qword_100049CC0, &qword_1000355C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000421C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004254()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000429C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042B4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000042F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000437C()
{
}

uint64_t sub_100004398(uint64_t a1)
{
}

uint64_t sub_10000443C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004454(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100022BB4(v3, v4, a3);
}

uint64_t sub_10000446C()
{
  result = sub_10002F404();
  qword_10004B538 = result;
  unk_10004B540 = v1;
  return result;
}

uint64_t sub_10000449C()
{
  [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
  sub_100004120(&qword_100049E50, &qword_100035300);
  swift_allocObject();
  sub_10002F364();
  sub_10001096C(&qword_10004A5B8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10002F2C4();
}

uint64_t sub_100004578@<X0>(uint64_t *a1@<X8>)
{
  sub_10002F374();
  swift_allocObject();
  v2 = sub_10002F384();
  sub_10002F344();
  swift_allocObject();
  v3 = sub_10002F354();
  v4 = sub_1000046A4(v2, v3);

  *a1 = v4;
  return result;
}

id sub_100004664(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000046A4(uint64_t a1, uint64_t a2)
{
  sub_100004120(&qword_10004A5C0, &qword_100035578);
  sub_10002F204();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100035290;
  sub_10002F374();
  sub_100010364(&qword_10004A5C8, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_10002F1F4();
  sub_10002F344();
  sub_100010364(&qword_10004A5D0, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_10002F1F4();
  return v2;
}

uint64_t sub_100004850(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(&off_100040F00 + v2++ + 32);
    v4 = sub_10002F424();
    v6 = v5;

    if (v4 == sub_10002F424() && v6 == v7)
    {
      break;
    }

    v9 = sub_10002F854();

    if (v9)
    {
      return v3;
    }

    if (v2 == 5)
    {
      return 5;
    }
  }

  return v3;
}

void sub_100004A4C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v11 = objc_autoreleasePoolPush();
  sub_100004C0C(a5, a6, a7);
  objc_autoreleasePoolPop(v11);
  if (!v8)
  {
    sub_10002F604();
    sub_10002F2E4();
  }

  swift_unknownObjectRelease();
}

void sub_100004B90(uint64_t a1, uint64_t a2)
{
  sub_100010CB8();
  ObjectType = swift_getObjectType();
  v6 = v3;
  v7 = v2;
  sub_100010B50();
  swift_unknownObjectRetain();
  sub_100004A4C("Renderer.Initialize", 19, 2u, v2, v6, v2, a2, ObjectType);
}

void sub_100004C0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  __chkstk_darwin(v6 - 8);
  v76 = v68 - v7;
  v8 = sub_10002F104();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v73 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002F1B4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v74 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v68 - v14;
  v78 = a1;
  v16 = [a1 backgroundView];
  v17 = [objc_opt_self() blackColor];
  [v16 setBackgroundColor:v17];

  v18 = type metadata accessor for RenderingEnvironment();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment] = a3;
  v80.receiver = v19;
  v80.super_class = v18;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v80, "init");
  v21 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment;
  v22 = *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment);
  *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment) = v20;

  v68[0] = objc_opt_self();
  v23 = [v68[0] systemPhotoLibraryURL];
  sub_10002F164();

  v79 = sub_10002F184();
  v25 = v24;
  v75 = v11;
  v27 = *(v11 + 8);
  v26 = (v11 + 8);
  v70 = v15;
  v28 = v15;
  v29 = v21;
  v77 = v10;
  v69 = v27;
  v27(v28, v10);
  v30 = *(a2 + v21);
  if (!v30)
  {
    __break(1u);
    goto LABEL_29;
  }

  [*(v30 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    type metadata accessor for PhotosPosterProviderUtils();
    sub_100005324(v32);
    if (v33)
    {
      v34 = v33;
      v35 = [v33 photoLibraryPath];
      if (v35)
      {
        v36 = v35;

        v79 = sub_10002F404();
        v25 = v37;
      }

      goto LABEL_13;
    }
  }

  swift_unknownObjectRelease();
  v38 = *(a2 + v21);
  if (v38)
  {
    [*(v38 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      type metadata accessor for PhotosPosterProviderUtils();
      sub_10000570C(v40, 0);
      if (v41)
      {
        v42 = v41;
        v43 = [v41 photoLibraryPath];
        if (v43)
        {
          v44 = v43;

          v79 = sub_10002F404();
          v25 = v45;
        }
      }
    }

LABEL_13:
    swift_unknownObjectRelease();
    v46 = sub_10002F5B4();
    if (qword_100049670 != -1)
    {
      swift_once();
    }

    v47 = qword_10004B548;
    if (os_log_type_enabled(qword_10004B548, v46))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_100022BB4(v79, v25, &v81);
      _os_log_impl(&_mh_execute_header, v47, v46, "Load resource from library path: %s", v48, 0xCu);
      sub_100004168(v49);
    }

    v50 = *(a2 + v29);
    if (v50)
    {
      v51 = [*(v50 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) role];
      v52 = sub_10002F404();
      v54 = v53;
      v56 = v52 == sub_10002F404() && v54 == v55;
      v68[1] = v26;
      if (v56)
      {
      }

      else
      {
        v57 = sub_10002F854();

        if ((v57 & 1) == 0)
        {
LABEL_26:
          (*(v71 + 104))(v73, enum case for URL.DirectoryHint.isDirectory(_:), v72);
          v58 = v77;
          sub_1000103AC(v76, 1, 1, v77);

          v59 = v74;
          sub_10002F194();
          sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
          (*(v75 + 16))(v70, v59, v58);
          v60 = sub_100011710();
          v61 = objc_allocWithZone(PUWallpaperPosterController);
          v62 = v78;
          v63 = [v61 initWithRenderer:v78 photoLibrary:v60];
          v64 = *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
          *(a2 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller) = v63;
          v65 = v63;

          v66 = *(a2 + v29);
          if (v66)
          {
            v67 = v66;

            [v65 renderer:v62 didInitializeWithEnvironment:v67];

            v69(v59, v58);
            return;
          }

          goto LABEL_30;
        }
      }

      [v68[0] enableMultiLibraryMode];
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
}

void sub_100005324(uint64_t a1)
{
  sub_100010CCC();
  v2 = v1;
  sub_10002F1B4();
  sub_100004368();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100010B68();
  __chkstk_darwin(v6);
  if (!sub_10000F848(v2))
  {
    v7 = [v2 assetDirectory];
    sub_10002F164();

    v8 = objc_opt_self();
    sub_10002F134(v9);
    v11 = v10;
    v42 = 0;
    v12 = [v8 loadFromURL:v10 error:&v42];

    if (v12)
    {
      v13 = *(v4 + 8);
      v14 = v42;
      v15 = sub_100010C90();
      v13(v15);
    }

    else
    {
      v16 = v42;
      sub_100010CB8();
      v17 = sub_10002F0F4();

      swift_willThrow();
      v42 = v17;
      sub_100004120(&qword_10004A630, &unk_100035270);
      v18 = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_100010E4C(v18);
      sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
      sub_10001189C(101, _swiftEmptyArrayStorage);
      v19 = sub_10002F5D4();
      if (qword_100049680 != -1)
      {
        sub_100010BB0(&qword_100049680);
      }

      v20 = qword_10004B558;
      v21 = sub_100010D4C();
      v22(v21);
      if (os_log_type_enabled(v20, v19))
      {
        v39 = v20;
        v23 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v23 = 136315394;
        sub_100010B38();
        sub_100010364(v24, v25, &protocol conformance descriptor for URL);
        v37 = v19;
        v26 = sub_10002F824();
        v28 = v27;
        v29 = *(v4 + 8);
        v30 = sub_100010EE8();
        v29(v30);
        v31 = sub_100022BB4(v26, v28, &v43);

        *(v23 + 4) = v31;
        *(v23 + 12) = 2112;
        *(v23 + 14) = v41;
        *v38 = v41;
        v32 = v41;
        _os_log_impl(&_mh_execute_header, v39, v37, "Failed to init PosterDescriptor from url:%s error:%@", v23, 0x16u);
        sub_100010800(v38, &qword_100049CC0, &qword_1000355C0);
        sub_10000437C();
        sub_100004168(v40);
        sub_10000437C();

        v33 = sub_100010C90();
        v29(v33);
      }

      else
      {

        v34 = *(v4 + 8);
        v35 = sub_100010EE8();
        v34(v35);
        v36 = sub_100010C90();
        v34(v36);
      }
    }
  }

  sub_100010CE4();
}

void sub_10000570C(uint64_t a1, uint64_t a2)
{
  sub_100010CCC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10002F1B4();
  sub_100004368();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100010B68();
  __chkstk_darwin(v11);
  v12 = [v7 assetDirectory];
  sub_10002F164();

  v13 = objc_opt_self();
  sub_10002F134(v14);
  v16 = v15;
  v47 = 0;
  v17 = [v13 loadFromURL:v15 error:&v47];

  if (v17)
  {
    v18 = *(v9 + 8);
    v19 = v47;
    v20 = sub_100010C90();
    v18(v20);
  }

  else
  {
    v21 = v47;
    sub_100010CB8();
    v22 = sub_10002F0F4();

    swift_willThrow();
    v47 = v22;
    sub_100004120(&qword_10004A630, &unk_100035270);
    v23 = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_100010E4C(v23);
    if ((v3 & 1) == 0)
    {
      [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:v5 == 2];
    }

    v24 = sub_10002F5D4();
    if (qword_100049680 != -1)
    {
      sub_100010BB0(&qword_100049680);
    }

    v25 = qword_10004B558;
    v26 = sub_100010D4C();
    v27(v26);
    if (os_log_type_enabled(v25, v24))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v28 = 136315394;
      sub_100010B38();
      sub_100010364(v29, v30, &protocol conformance descriptor for URL);
      v43 = v24;
      v31 = sub_10002F824();
      v42 = v25;
      v33 = v32;
      v34 = *(v9 + 8);
      v35 = sub_100010EE8();
      v34(v35);
      v36 = sub_100022BB4(v31, v33, &v48);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v46;
      *v44 = v46;
      v37 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to init PosterDescriptor from url:%s error:%@", v28, 0x16u);
      sub_100010800(v44, &qword_100049CC0, &qword_1000355C0);
      sub_10000437C();
      sub_100004168(v45);
      sub_10000437C();

      v38 = sub_100010C90();
      v34(v38);
    }

    else
    {

      v39 = *(v9 + 8);
      v40 = sub_100010EE8();
      v39(v40);
      v41 = sub_100010C90();
      v39(v41);
    }
  }

  sub_100010CE4();
}

void sub_100005B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100010D70();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v19;
  sub_100010B50();
  swift_unknownObjectRetain();
  v29 = v25;
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44(&qword_100049670);
  }

  sub_10002F2E4();
  v30 = objc_autoreleasePoolPush();
  v31 = type metadata accessor for RenderingEnvironment();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment] = v23;
  a9.receiver = v32;
  a9.super_class = v31;
  swift_unknownObjectRetain();
  v33 = objc_msgSendSuper2(&a9, "init");
  v34 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment;
  v35 = *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment];
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_renderingEnvironment] = v33;

  v36 = *&v19[OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller];
  if (!v36)
  {
    goto LABEL_6;
  }

  v37 = *&v19[v34];
  if (v37)
  {
    [v36 renderer:v29 didUpdateEnvironment:v37 withTransition:v27];
LABEL_6:
    objc_autoreleasePoolPop(v30);
    sub_10002F604();
    sub_10002F2E4();

    swift_unknownObjectRelease();
    sub_100010D88();
    return;
  }

  __break(1u);
}

void sub_100005C94(void *a1)
{
  v13 = v1;
  v3 = a1;
  v6 = sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44(&qword_100049670);
  }

  v7 = qword_10004B548;
  v8 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_signpostID;
  sub_100011008(v6, &_mh_execute_header, qword_10004B548, "Renderer.Invalidate", v4, v5, v13 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_signpostID);
  v9 = objc_autoreleasePoolPush();
  sub_100005DA8(v13, v3);
  objc_autoreleasePoolPop(v9);
  v10 = sub_10002F604();
  sub_100011008(v10, &_mh_execute_header, v7, "Renderer.Invalidate", v11, v12, v13 + v8);
}

void sub_100005DA8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller;
  v4 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v4)
  {
    [v4 rendererDidInvalidate:a2];
    v5 = *(a1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + v3) = 0;
}

uint64_t sub_100005E74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100005E94, 0, 0);
}

uint64_t sub_100005E94()
{
  sub_100010EDC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  sub_10002F614();
  if (qword_100049670 != -1)
  {
    sub_100010A44(&qword_100049670);
  }

  v4 = *(v0 + 24);
  sub_10002F2E4();
  v5 = objc_autoreleasePoolPush();
  v6 = *(v4 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v6)
  {
    [v6 rendererShouldDropExcessResources:*(v0 + 16)];
  }

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  objc_autoreleasePoolPop(v5);
  sub_10002F604();
  sub_10002F2E4();

  sub_100010C84();

  return v9();
}

uint64_t sub_100005FE8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000060AC;

  return sub_100005E74(v6);
}

uint64_t sub_1000060AC()
{
  sub_100010C44();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_100010AE8();
  *v5 = v4;

  v1[2](v1);
  _Block_release(v1);
  sub_100010C84();

  return v6();
}

uint64_t sub_1000061F4(int a1, id a2)
{
  v3 = [a2 type];
  v4 = sub_10002F404();
  v6 = v5;
  if (v4 == sub_10002F404() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_10002F854();

    if ((v9 & 1) == 0)
    {
      v10 = sub_10002F5C4();
      if (qword_100049670 != -1)
      {
        sub_100010A44(&qword_100049670);
      }

      v11 = qword_10004B548;

      return sub_10002F2D4(v10, &_mh_execute_header, v11, "Unhandled event type", 20, 2, _swiftEmptyArrayStorage);
    }
  }

  v13 = [a2 metadata];
  v14 = sub_10002F3A4();

  sub_100006404(v14, v15, v16, v17, v18, v19, v20, v21);
}

id sub_100006404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v109[0] = 1701869940;
  *(&v109[0] + 1) = 0xE400000000000000;
  v9 = sub_100010E8C(a1, &type metadata for String, &protocol witness table for String, a4, a5, a6, a7, a8, v95, v99, v103, v104, v105, v106);
  sub_100010C00(v9, v10, v11, v12);
  v13 = sub_10001072C(v110);
  if (!v106)
  {
    sub_100010800(&v103, &qword_10004A5D8, qword_100035580);
    goto LABEL_13;
  }

  if ((sub_100010AC8(v13, v14, v15, &type metadata for String, v16, v17) & 1) == 0)
  {
LABEL_13:
    v67 = sub_10002F5D4();
    if (qword_100049670 != -1)
    {
      sub_100010A44(&qword_100049670);
    }

    return sub_10002F2D4(v67, &_mh_execute_header, qword_10004B548, "No event type name received", 27, 2, _swiftEmptyArrayStorage);
  }

  v18 = sub_100004850(*&v109[0], *(&v109[0] + 1));

  switch(v18)
  {
    case 1:
    case 2:
    case 3:
      *&v109[0] = 0x6C62697369567369;
      *(&v109[0] + 1) = 0xE900000000000065;
      v25 = sub_100010E8C(v19, &type metadata for String, &protocol witness table for String, v20, v21, v22, v23, v24, v96, v100, v103, v104, v105, v106);
      sub_100010C00(v25, v26, v27, v28);
      v29 = sub_10001072C(v110);
      if (!v106)
      {
        goto LABEL_16;
      }

      v34 = sub_100010AC8(v29, v30, v31, &type metadata for Bool, v32, v33);
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

      v40 = v109[0];
      *&v109[0] = 0x6E6F697461727564;
      *(&v109[0] + 1) = 0xE800000000000000;
      v41 = sub_100010E8C(v34, &type metadata for String, &protocol witness table for String, v35, v36, v37, v38, v39, v97, v101, v103, v104, v105, v106);
      sub_100010C00(v41, v42, v43, v44);
      v45 = sub_10001072C(v110);
      if (!v106)
      {
        goto LABEL_16;
      }

      v50 = sub_100010AC8(v45, v46, v47, &type metadata for Float, v48, v49);
      if ((v50 & 1) == 0)
      {
        goto LABEL_17;
      }

      v56 = *v109;
      *&v109[0] = 0x6576727563;
      *(&v109[0] + 1) = 0xE500000000000000;
      v57 = sub_100010E8C(v50, &type metadata for String, &protocol witness table for String, v51, v52, v53, v54, v55, v98, v102, v103, v104, v105, v106);
      sub_100010C00(v57, v58, v59, v60);
      v61 = sub_10001072C(v110);
      if (v106)
      {
        if (sub_100010AC8(v61, v62, v63, &type metadata for Int, v64, v65))
        {
          v66 = *&v109[0];
          v103 = 0x656D617266;
          v104 = 0xE500000000000000;
          sub_10002F6C4();
          sub_10001157C(a1, v107, v110);
          sub_10001072C(v110);
          if (v108)
          {
            sub_1000107F0(v107, v109);
          }

          else
          {
            sub_10002F6C4();
            sub_10001157C(a1, v109, &v103);
            sub_10001072C(&v103);
            if (v108)
            {
              sub_100010800(v107, &qword_10004A5D8, qword_100035580);
            }
          }

          sub_100010780(v109, v110);
          if (v111)
          {
            sub_1000042B4(0, &qword_10004A628, NSValue_ptr);
            if (swift_dynamicCast())
            {
              v82 = v103;
              [v103 CGRectValue];
              v84 = v83;
              v86 = v85;
              v88 = v87;
              v90 = v89;

              sub_100006A24(v66, v40, v84, v86, v88, v90, v56);
              return sub_100010800(v109, &qword_10004A5D8, qword_100035580);
            }
          }

          else
          {
            sub_100010800(v110, &qword_10004A5D8, qword_100035580);
          }

          sub_10002F5D4();
          if (qword_100049670 != -1)
          {
            sub_100010A44(&qword_100049670);
          }

          sub_100010F28();
          sub_10002F2D4(v91, v92, v93, v94);
          return sub_100010800(v109, &qword_10004A5D8, qword_100035580);
        }
      }

      else
      {
LABEL_16:
        sub_100010800(&v103, &qword_10004A5D8, qword_100035580);
      }

LABEL_17:
      v69 = sub_10002F5D4();
      if (qword_100049670 != -1)
      {
        sub_100010A44(&qword_100049670);
      }

      result = sub_10002F2D4(v69, &_mh_execute_header, qword_10004B548, "Expected keyboard, duration, curve and visibility", 49, 2, _swiftEmptyArrayStorage);
      break;
    case 4:
      *&v109[0] = 0x6574617473;
      *(&v109[0] + 1) = 0xE500000000000000;
      v72 = sub_100010E8C(v19, &type metadata for String, &protocol witness table for String, v20, v21, v22, v23, v24, v96, v100, v103, v104, v105, v106);
      sub_100010C00(v72, v73, v74, v75);
      v76 = sub_10001072C(v110);
      if (v106)
      {
        if (sub_100010AC8(v76, v77, v78, &type metadata for Bool, v79, v80))
        {
          return sub_100006A54(LOBYTE(v109[0]));
        }
      }

      else
      {
        sub_100010800(&v103, &qword_10004A5D8, qword_100035580);
      }

      v81 = sub_10002F5D4();
      if (qword_100049670 != -1)
      {
        sub_100010A44(&qword_100049670);
      }

      return sub_10002F2D4(v81, &_mh_execute_header, qword_10004B548, "Expected docked state", 21, 2, _swiftEmptyArrayStorage);
    case 5:
      v71 = sub_10002F5C4();
      if (qword_100049670 != -1)
      {
        sub_100010A44(&qword_100049670);
      }

      return sub_10002F2D4(v71, &_mh_execute_header, qword_10004B548, "Unhandled event type", 20, 2, _swiftEmptyArrayStorage);
    default:
      v70 = sub_10002F5C4();
      if (qword_100049670 != -1)
      {
        sub_100010A44(&qword_100049670);
      }

      return sub_10002F2D4(v70, &_mh_execute_header, qword_10004B548, "Not implemented as yet rdar://140303317", 39, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

id sub_100006A24(uint64_t a1, char a2, double a3, double a4, double a5, double a6, float a7)
{
  result = *(v7 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (result)
  {
    return [result handleKeyboardFrameDidChange:a1 duration:a2 & 1 curve:a3 isVisible:{a4, a5, a6, a7}];
  }

  return result;
}

id sub_100006A54(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20PhotosPosterProvider14PosterRenderer_controller);
  if (v2)
  {
    return sub_100010C3C("handleLegibilityVignetteVisibilityDidChange:", v2);
  }

  return v3;
}

uint64_t sub_100006DC4@<X0>(uint64_t a1@<X8>)
{
  v4 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) "contents")];
  sub_100010CB8();
  swift_unknownObjectRelease();
  sub_10002F164();

  v5 = sub_10002F1B4();

  return sub_1000103AC(a1, 0, 1, v5);
}

uint64_t sub_100006E98()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) traitCollection];
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  v3 = [v1 _backlightLuminance];

  return v3;
}

uint64_t sub_100006F7C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) contents];
  objc_opt_self();
  sub_100010C70();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    objc_opt_self();
    sub_100010C70();
    v3 = swift_dynamicCastObjCClass() != 0;
    swift_unknownObjectRelease();
    return 2 * v3;
  }
}

id sub_1000070C0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider20RenderingEnvironment_posterKitEnvironment) traitCollection];

  return v1;
}

void sub_10000713C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = sub_100010CB8();
  a4(v7);
  sub_100010F14();

  sub_100010F00();
}

double sub_100007228()
{
  sub_100010D34();
  *&result = sub_100002284().n128_u64[0];
  return result;
}

void sub_100007314(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  sub_100010F14();

  sub_100010F00();
}

id sub_1000074D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t PRRenderer.px_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C(&unk_100041098);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C(&unk_1000410C0);
  *(v4 + 16) = sub_1000076FC;
  *(v4 + 24) = v3;
  v7[4] = sub_1000109C8;
  v7[5] = v4;
  sub_100010A6C();
  v7[1] = 1107296256;
  v7[2] = sub_100010A14;
  v7[3] = &unk_1000410D8;
  _Block_copy(v7);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100007750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PRRenderer.px_extendRenderSession(forReason:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002F3D4();
  v4 = [v2 extendRenderingSessionForReason:v3];

  v5 = [v4 assertion];
  v6 = type metadata accessor for InvalidatableWrapper();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC20PhotosPosterProvider20InvalidatableWrapper_invalidatable] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

id sub_100007C68()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) timeFont];

  return v1;
}

void sub_100007D04()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setTimeFont:?];
}

id sub_100007D94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) timeColor];

  return v1;
}

void sub_100007E30()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setTimeColor:?];
}

id sub_100007EC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

void sub_100007F5C()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) setStatusBarTintColor:?];
}

unint64_t sub_100008098()
{
  result = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences) significantEventOptions];
  if (result > 4 || ((1 << result) & 0x16) == 0)
  {
    sub_100010A8C();
    result = sub_100010DA0(v3, v4, v5, v6, v7, v8, v9, v10, 590, 0);
    __break(1u);
  }

  return result;
}

id sub_100008164(unint64_t a1)
{
  if (a1 <= 4 && ((1 << a1) & 0x16) != 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20PhotosPosterProvider33MutablePosterRenderingPreferences_posterKitPreferences);

    return [v3 setSignificantEventOptions:a1];
  }

  else
  {
    sub_100010A8C();
    result = sub_100010DA0(v5, v6, v7, v8, v9, v10, v11, v12, 602, 0);
    __break(1u);
  }

  return result;
}

id sub_1000082AC()
{
  sub_100010D34();
  v0 = sub_100010C70();
  return sub_100002A60(v0);
}

id sub_1000087DC(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void))
{
  v4[*a2] = 0;
  *&v4[*a3] = a1;
  v6.receiver = v4;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100008868()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) timeFont];

  return v1;
}

void sub_100008904()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setTimeFont:?];
}

id sub_100008994()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) timeColor];

  return v1;
}

void sub_100008A30()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setTimeColor:?];
}

id sub_100008AC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

void sub_100008B5C()
{
  sub_100010BD0();
  [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider30MutablePosterEditorPreferences_posterKitPreferences) setStatusBarTintColor:?];
}

id sub_100008C5C()
{
  sub_100010D34();
  v0 = sub_100010C70();
  return sub_1000022E0(v0);
}

id sub_100008CD0(void *a1)
{
  result = [*(v1 + *a1) deviceMotionMode];
  if (result >= 3)
  {
    sub_100010A8C();
    result = sub_10002F7C4(v3, v4, v5, v6, v7, v8, 49, 2, 35, 0);
    __break(1u);
  }

  return result;
}

id sub_100008D9C(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(v3 + *a2);
  [v6 setDeviceMotionMode:sub_10000221C(a1)];
  if (a1 >= 3)
  {
    sub_100010A8C();
    result = sub_100010DA0(v8, v9, v10, v11, v12, v13, v14, v15, a3, 0);
    __break(1u);
  }

  else
  {

    return [v6 setDeviceMotionEventsRequested:(6u >> (a1 & 7)) & 1];
  }

  return result;
}

id sub_100009370()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) timeFont];

  return v1;
}

id sub_1000093F4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) timeColor];

  return v1;
}

id sub_100009478()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider24PosterEditingPreferences_posterKitPreferences) statusBarTintColor];

  return v1;
}

uint64_t sub_1000095D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  *a4 = result;
  return result;
}

void sub_100009688(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v11 = objc_autoreleasePoolPush();
  sub_10000A024(a5, a6, a7);
  objc_autoreleasePoolPop(v11);
  if (!v8)
  {
    sub_10002F604();
    sub_10002F2E4();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000097CC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    swift_once();
  }

  sub_10002F2E4();
  v14 = objc_autoreleasePoolPush();
  sub_10000BA38(a6, a7, a8, a9, &v17);
  if (v10)
  {
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    a6 = v17;
    objc_autoreleasePoolPop(v14);
    sub_10002F604();
    sub_10002F2E4();
  }

  return a6;
}

uint64_t sub_10000992C()
{
  sub_100010F34();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 128) = v5;
  *(v1 + 16) = v6;
  *(v1 + 56) = sub_10002F544();
  *(v1 + 64) = sub_10002F534();
  sub_100010B50();
  v8 = sub_10002F514();
  *(v1 + 72) = v8;
  *(v1 + 80) = v7;

  return _swift_task_switch(sub_1000099CC, v8, v7);
}

uint64_t sub_1000099CC()
{
  sub_100010EDC();
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  v1 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  *(v0 + 88) = qword_10004B550;
  *(v0 + 96) = v1;
  v5 = *(v0 + 32);
  sub_10002F2E4();
  *(v0 + 104) = sub_10002F534();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_100009B30;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100009B30()
{
  sub_100010C44();
  v1 = *v0;
  v2 = *v0;
  sub_100010AE8();
  *v3 = v2;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return _swift_task_switch(sub_100009C84, v5, v4);
}

uint64_t sub_100009C84()
{
  sub_100010EDC();

  sub_10002F604();
  sub_10002F2E4();
  sub_100010C84();

  return v0();
}

void sub_100009D20(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = sub_100004120(&qword_10004A618, &qword_1000355A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = objc_autoreleasePoolPush();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  a2(sub_100010540, v10);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100009EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller))
  {
  }

  else
  {
    sub_10002F714(64);
    v8._object = 0x8000000100033E00;
    v8._countAndFlagsBits = 0xD00000000000003ELL;
    sub_10002F464(v8);
    v9._countAndFlagsBits = sub_10002F724();
    sub_10002F464(v9);

    a1 = sub_100010DA0("Fatal error", 11, 2, 0, 0xE000000000000000, "PhotosPosterProvider/PhotosPosterProvider.swift", v4, v5, 641, 0);
    __break(1u);
  }

  return _objc_retain_x3(a1, a2, a3);
}

void sub_100009FAC(uint64_t a1, uint64_t a2)
{
  sub_100010CB8();
  ObjectType = swift_getObjectType();
  v6 = v2;
  sub_100010B50();
  swift_unknownObjectRetain();
  sub_100009688("PosterEditor.Initialize", 23, 2u, v2, v2, a2, v3, ObjectType);
}

void sub_10000A024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  __chkstk_darwin(v6 - 8);
  v57 = &v48 - v7;
  v8 = sub_10002F104();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002F1B4();
  v59 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = sub_10000A534(a2);
  v17 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment;
  v18 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment);
  *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment) = v16;
  v19 = v16;

  LOBYTE(v18) = sub_10000EFAC();
  if (v18)
  {
    [objc_opt_self() forceDisableLandscapeConfiguration:1];
  }

  v49 = objc_opt_self();
  v20 = [v49 systemPhotoLibraryURL];
  sub_10002F164();

  v58 = sub_10002F184();
  v21 = v59 + 8;
  v51 = *(v59 + 8);
  v51(v15, v10);
  v22 = *(a1 + v17);
  if (!v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = *(v22 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  v50 = v21;
  v52 = v13;
  if (v23)
  {
    v24 = v23;
    v25 = [v24 photoLibraryPath];
  }

  else
  {
    v26 = *(v22 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
    if (!v26)
    {
      goto LABEL_11;
    }

    v24 = v26;
    v25 = [v24 photoLibraryPath];
  }

  v27 = v25;
  if (v27)
  {
    v28 = v27;

    v58 = sub_10002F404();
  }

LABEL_11:
  v53 = a3;
  v29 = *(a1 + v17);
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v10;
  v31 = [*(v29 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) role];
  v32 = sub_10002F404();
  v34 = v33;
  if (v32 == sub_10002F404() && v34 == v35)
  {

    goto LABEL_19;
  }

  v37 = sub_10002F854();

  if (v37)
  {
LABEL_19:
    [v49 enableMultiLibraryMode];
  }

  (*(v54 + 104))(v56, enum case for URL.DirectoryHint.isDirectory(_:), v55);
  v38 = v30;
  sub_1000103AC(v57, 1, 1, v30);

  v39 = v52;
  sub_10002F194();
  sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
  (*(v59 + 16))(v15, v39, v38);
  v40 = sub_100011710();
  v41 = objc_allocWithZone(PUWallpaperPosterEditorController);
  v42 = v53;
  v43 = [v41 initWithWallpaperEditor:v53 photoLibrary:v40];
  v44 = *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller);
  *(a1 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller) = v43;
  v45 = v43;

  v46 = *(a1 + v17);
  if (v46)
  {
    v47 = v46;

    [v45 editor:v42 didInitializeWithEnvironment:v47];

    v51(v39, v38);
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_10000AC78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100010BD0();
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_10000ACFC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v21 = v3;
  swift_unknownObjectRetain();
  v6 = a1;
  v9 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  v10 = qword_10004B550;
  v11 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  sub_100011008(v9, &_mh_execute_header, qword_10004B550, "PosterEditor.Update", v7, v8, &v21[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID]);
  v12 = objc_autoreleasePoolPush();
  v13 = sub_100010EA4("PosterEditor.Update", 19);
  v14 = *&v21[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_editingEnvironment];
  if (v14)
  {
    v15 = v14;
    v16 = sub_100010B50();
    v17 = sub_10000E1C0(v16);

    [v13 editor:v6 didUpdateEnvironment:v17 withTransition:v5];
    objc_autoreleasePoolPop(v12);
    v18 = sub_10002F604();
    sub_100011008(v18, &_mh_execute_header, v10, "PosterEditor.Update", v19, v20, &v21[v11]);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000AE98(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(id, uint64_t, void *))
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  a6(v10, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_10000AF3C()
{
  sub_100010F34();
  v1[2] = v2;
  v1[3] = v0;
  sub_10002F544();
  v1[4] = sub_10002F534();
  sub_100010B50();
  v4 = sub_10002F514();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_10000AFCC, v4, v3);
}

uint64_t sub_10000AFCC()
{
  sub_100010EDC();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = "PosterEditor.Finalize";
  *(v3 + 32) = 21;
  *(v3 + 40) = 2;
  *(v3 + 48) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10000B0D8;

  return sub_10000992C();
}

uint64_t sub_10000B0D8()
{
  sub_100010C44();
  v1 = *v0;
  v2 = *v0;
  sub_100010AE8();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_10000B210, v5, v4);
}

uint64_t sub_10000B210()
{
  sub_100010F34();

  sub_100010C84();

  return v0();
}

void sub_10000B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_100009EC4(a4, a5, a6);
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000B34C;
  v12[3] = &unk_100041238;
  v11 = _Block_copy(v12);

  [v10 editor:a7 finalizeWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_10000B34C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000B3B0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_10001179C(a6, v10);
}

uint64_t sub_10000B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10002F544();
  v3[5] = sub_10002F534();
  v5 = sub_10002F514();

  return _swift_task_switch(sub_10000B4D0, v5, v4);
}

uint64_t sub_10000B4D0()
{
  sub_100010C44();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10000B590;

  return sub_10000AF3C();
}

uint64_t sub_10000B590()
{
  sub_100010C44();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_100010AE8();
  *v5 = v4;

  v1[2](v1);
  _Block_release(v1);
  sub_100010C84();

  return v6();
}

void sub_10000B6D8(uint64_t a1)
{
  sub_100010CCC();
  v3 = v2;
  v4 = v1;
  v5 = v3;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AA0();
  sub_10002F2E4();
  v6 = objc_autoreleasePoolPush();
  v7 = sub_100009EC4("PosterEditor.ShouldBeginFinalization", 36, 2);
  [v7 editorShouldBeginFinalization:v5];

  objc_autoreleasePoolPop(v6);
  sub_10002F604();
  sub_100010AA0();
  sub_10002F2E4();

  sub_100010CE4();
}

void sub_10000B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100010D70();
  v6 = v5;
  v17 = v4;
  v7 = v6;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AA0();
  sub_100010F28();
  sub_10002F2E4();
  v8 = objc_autoreleasePoolPush();
  sub_10002F5B4();
  sub_100010AA0();
  sub_100010F28();
  sub_10002F2D4(v9, v10, v11, v12);
  v13 = sub_100010EA4("PosterEditor.Invalidate", 23);
  [v13 editorDidInvalidate:v7];

  v14 = *&v17[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller];
  *&v17[OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_controller] = 0;

  objc_autoreleasePoolPop(v8);
  sub_10002F604();
  sub_100010AA0();
  sub_100010F28();
  sub_10002F2E4();

  sub_100010D88();
}

uint64_t sub_10000B9C4()
{
  sub_100010D64();
  ObjectType = swift_getObjectType();
  v3 = v1;
  return sub_1000097CC("PosterEditor.Looks", 18, 2u, v3, v3, "PosterEditor.Looks", 18, 2, v0, ObjectType);
}

void sub_10000BA38(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v6 = v5;
  v9 = sub_100009EC4(a1, a2, a3);
  v28 = a4;
  v10 = [v9 looksForEditor:a4];
  sub_100004120(&qword_10004A5F8, &qword_100035598);
  v11 = sub_10002F4C4();

  v12 = sub_10002A9E4(v11);
  v27 = v9;
  if (!v12)
  {

    v14 = _swiftEmptyArrayStorage;
LABEL_13:
    LOBYTE(v16) = sub_10002F5C4();
    if (qword_100049678 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v13 = v12;
  v31 = _swiftEmptyArrayStorage;
  v14 = &v31;
  sub_10002F784();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v26 = a5;
    v15 = 0;
    a5 = (v11 & 0xC000000000000001);
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (a5)
      {
        v17 = sub_10002F734();
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v17 = *(v11 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v29 = v17;
      sub_10000BD7C(&v29, v28, &v30);
      if (v6)
      {
        goto LABEL_21;
      }

      v6 = 0;
      swift_unknownObjectRelease();
      v14 = &v31;
      sub_10002F764();
      sub_10002F794();
      sub_10002F7A4();
      sub_10002F774();
      ++v15;
      if (v16 == v13)
      {

        v14 = v31;
        a5 = v26;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
LABEL_14:
    v18 = qword_10004B550;
    if (os_log_type_enabled(qword_10004B550, v16))
    {
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v19 = 136315394;
      v20 = sub_10002F724();
      v22 = sub_100022BB4(v20, v21, &v31);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      sub_1000042B4(0, &unk_10004A600, PREditingLook_ptr);
      v23 = sub_10002F4D4();
      v25 = sub_100022BB4(v23, v24, &v31);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v16, "%s: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    *a5 = v14;
    return;
  }

  __break(1u);
LABEL_21:
  swift_unknownObjectRelease();

  __break(1u);
}

id sub_10000BD7C@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 pu_timeFontIdentifier];
  v7 = [objc_msgSend(a2 "environment")];
  swift_unknownObjectRelease();
  v8 = PPCreateTimeFontConfiguration(v6, v7);

  v9 = [v5 identifier];
  v10 = sub_10002F404();
  v12 = v11;

  v13 = [v5 displayName];
  v14 = sub_10002F404();
  v16 = v15;

  v17 = [v5 pu_timeFontColor];
  v18 = v17;
  if (v17)
  {
    v17 = sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
  }

  else
  {
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v18;
  v21[3] = v17;
  v19 = objc_allocWithZone(PREditingLook);
  result = sub_10000FE04(v10, v12, v14, v16, v8, v21);
  *a3 = result;
  return result;
}

void sub_10000BFB0(void *a1, void *a2, double a3)
{
  v13 = v3;
  v8 = a1;
  v9 = a2;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AB8();
  sub_10002F2E4();
  v10 = objc_autoreleasePoolPush();
  v11 = sub_100010EBC();
  v12 = sub_100010EA4(v11, 27);
  [v12 editor:v8 didTransitionToLook:v9 progress:a3];

  objc_autoreleasePoolPop(v4);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();
}

void sub_10000C178(uint64_t a1)
{
  sub_100010CCC();
  v3 = v2;
  v4 = v1;
  v5 = v3;
  v10 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  v11 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  sub_100010FC8(v10, &_mh_execute_header, v6, v7, v8, v9, v4 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID);
  v12 = objc_autoreleasePoolPush();
  v13 = sub_100009EC4("PosterEditor.InitialLook", 24, 2);
  v14 = [v13 initialLookIdentifierForEditor:v5];
  sub_10002F404();

  objc_autoreleasePoolPop(v12);
  v15 = sub_10002F604();
  sub_100010FC8(v15, &_mh_execute_header, v16, v17, v18, v19, v4 + v11);

  sub_100010CE4();
}

double sub_10000C300()
{
  sub_100010F54();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v4;
  v7 = v2;
  v8 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AB8();
  sub_10002F2E4();
  v9 = objc_autoreleasePoolPush();
  v10 = sub_100010EBC();
  v11 = sub_100009EC4(v10, 29, 2);
  v12 = sub_100010F40();
  [v13 v14];
  v16 = v15;

  objc_autoreleasePoolPop(v8);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();

  return v16;
}

void sub_10000C514(uint64_t a1, uint64_t a2)
{
  sub_100010CCC();
  v6 = v5;
  sub_100010EF4();
  v8 = v7;
  v9 = v3;
  v10 = v8;
  v14 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  v15 = qword_10004B550;
  v16 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  sub_100010C9C(v14, &_mh_execute_header, qword_10004B550, v11, v12, v13, v9 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID);
  v17 = objc_autoreleasePoolPush();
  v18 = sub_100009EC4(v4, v2, 2);
  v19 = [v18 *v6];
  if (v19)
  {
    v20 = v19;
    sub_1000042B4(0, &qword_10004A5F0, UIMenuElement_ptr);
    sub_10002F4C4();
  }

  objc_autoreleasePoolPop(v17);
  v21 = sub_10002F604();
  sub_100010C9C(v21, &_mh_execute_header, v15, v22, v23, v24, v9 + v16);

  sub_100010CE4();
}

id sub_10000C664(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  if (v8)
  {
    sub_1000042B4(0, &qword_10004A5F0, UIMenuElement_ptr);
    sub_100010C70();
    sub_10002F4A4();
    sub_100010B50();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000C700(void *a1, void *a2, void *a3)
{
  swift_unknownObjectRetain();
  v7 = v3;
  v21 = a1;
  v8 = a3;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_10002F2E4();
  v20 = objc_autoreleasePoolPush();
  v9 = [a2 backgroundView];
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 window];
  if (v12)
  {
    v13 = v12;
    v14 = [v10 blackColor];
    [v13 setBackgroundColor:v14];
  }

  v15 = sub_100009EC4("PosterEditor.PopulateViews", 26, 2);
  v16 = type metadata accessor for EditorViews();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding] = a2;
  v22.receiver = v17;
  v22.super_class = v16;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v22, "init");
  [v15 editor:v21 populateViews:v18 forLook:v8];

  objc_autoreleasePoolPop(v20);
  sub_10002F604();
  sub_10002F2E4();

  return swift_unknownObjectRelease();
}

void sub_10000CA6C(uint64_t a1, uint64_t a2)
{
  sub_100010CCC();
  v6 = v5;
  sub_100010EF4();
  v8 = v7;
  v9 = v3;
  v10 = v8;
  v14 = sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  v15 = qword_10004B550;
  v16 = OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID;
  sub_100010C9C(v14, &_mh_execute_header, qword_10004B550, v11, v12, v13, v9 + OBJC_IVAR____TtC20PhotosPosterProvider12PosterEditor_signpostID);
  v17 = objc_autoreleasePoolPush();
  v18 = sub_100009EC4(v4, v2, 2);
  [v18 *v6];

  objc_autoreleasePoolPop(v17);
  v19 = sub_10002F604();
  sub_100010C9C(v19, &_mh_execute_header, v15, v20, v21, v22, v9 + v16);

  sub_100010CE4();
}

void sub_10000CCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100010D70();
  v7 = v6;
  v9 = v8;
  v4;
  v10 = v9;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AB8();
  sub_10002F2E4();
  v11 = objc_autoreleasePoolPush();
  v12 = sub_100010EBC();
  v13 = sub_100010EA4(v12, 43);
  [v13 editor:v10 depthEffectDisallowedDidChange:v7 & 1];

  objc_autoreleasePoolPop(v5);
  sub_10002F604();
  sub_100010AB8();
  sub_10002F2E4();

  sub_100010D88();
}

void sub_10000CE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100010D70();
  v6 = v5;
  v4;
  v7 = v6;
  sub_10002F614();
  if (qword_100049678 != -1)
  {
    sub_100010A24(&qword_100049678);
  }

  sub_100010AA0();
  sub_10002F2E4();
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100010EA4("PosterEditor.DidDelayFinalizationForBackgroundTask", 50);
  [v9 editorDidDelayFinalizationForBackgroundTask:v7];

  objc_autoreleasePoolPop(v8);
  sub_10002F604();
  sub_100010AA0();
  sub_10002F2E4();

  sub_100010D88();
}

id sub_10000CF94(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  *&v4[*a1] = 0;
  *&v4[*a2] = 0;
  if (qword_100049670 != -1)
  {
    sub_100010A44(&qword_100049670);
  }

  v6 = qword_10004B548;
  sub_10002F2F4();
  v8.receiver = v4;
  v8.super_class = a4(0);
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10000D0B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v8 = *a5;
  sub_10002F304();
  sub_100010B10();
  v10 = *(v9 + 8);

  return v10(a1 + v8);
}

void PRPosterTransition.px_duration.getter()
{
  v1 = [v0 animationSettings];
  if (v1)
  {
    v2 = v1;
    [v1 duration];
  }
}

void PRPosterTransition.px_duration.setter(double a1)
{
  v2 = [objc_opt_self() settingsWithDuration:a1];
  sub_100010BD0();
  [v1 setAnimationSettings:?];
}

void *PREditor.pu_environment.getter()
{
  type metadata accessor for PosterEditor(0);
  sub_10000A534([v0 environment]);
  sub_100010B50();
  swift_unknownObjectRelease();
  return v0;
}

id sub_10000D484(uint64_t a1)
{
  sub_100010EF4();
  v5 = [v2 *v4];
  v6 = v3();
  v7 = objc_allocWithZone(v6);
  *&v7[*v1] = v5;
  v9.receiver = v7;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, "init");
}

id PREditor.pu_requestDismissal(with:)(unint64_t a1)
{
  if (a1 >= 2)
  {
    sub_100010A8C();
    result = sub_100010DA0(v3, v4, v5, v6, v7, v8, v9, v10, 942, 0);
    __break(1u);
  }

  else
  {

    return [v1 requestDismissalWithAction:a1];
  }

  return result;
}

id PREditor.pu_placeholderAction.getter()
{
  v1 = [v0 placeholderAction];

  return v1;
}

id PREditor.pu_currentLook.getter()
{
  v1 = [v0 currentLook];

  return v1;
}

uint64_t PREditor.pu_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C(&unk_100041110);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C(&unk_100041138);
  *(v4 + 16) = sub_10000DA40;
  *(v4 + 24) = v3;
  v8[4] = sub_10000DA94;
  v8[5] = v4;
  sub_100010A6C();
  sub_100010B20();
  v8[2] = v5;
  v8[3] = &unk_100041150;
  _Block_copy(v8);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10000D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100010D70();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_allocWithZone(v14());
  v15 = swift_unknownObjectRetain();
  v18 = sub_1000087DC(v15, v9, v7, v5);
  v11(v18, v13);
  sub_100010D88();
}

uint64_t sub_10000DAC0(uint64_t a1)
{
  sub_100010EF4();
  v4 = *(v3 + 32);
  swift_unknownObjectRetain();
  v5 = v1;
  v4(v2, v5);

  return swift_unknownObjectRelease();
}

void sub_10000DB50(void *a1, int a2, void *aBlock, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  v10[2] = v8;
  v9 = a1;
  a5(a4, v10);
  _Block_release(v8);
}

uint64_t PREditor.px_updatePreferences(_:)()
{
  sub_100010CFC();
  v3 = sub_100010E2C(&unk_100041188);
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = sub_100010E2C(&unk_1000411B0);
  *(v4 + 16) = sub_1000109CC;
  *(v4 + 24) = v3;
  v8[4] = sub_1000109C8;
  v8[5] = v4;
  sub_100010A6C();
  sub_100010B20();
  v8[2] = v5;
  v8[3] = &unk_1000411C8;
  _Block_copy(v8);
  sub_100010E10();

  [v1 updatePreferences:v2];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id PREditor.pu_disableIdleTimer()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_10002F3D4();
  v14 = 0;
  v2 = [v0 newAssertionToDisableIdleTimerForReason:v1 error:&v14];

  v3 = v14;
  if (v2)
  {
    v4 = type metadata accessor for BSInvalidatableWrapper();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC20PhotosPosterProvider22BSInvalidatableWrapper_invalidatable] = v2;
    v13.receiver = v5;
    v13.super_class = v4;
    v6 = v3;
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    v8 = v14;
    sub_100010B50();
    sub_10002F0F4();

    swift_willThrow();
    v9 = sub_10002F5D4();
    result = PLWallpaperGetLog();
    if (result)
    {
      v10 = result;
      sub_100004120(&unk_100049E20, &qword_1000352F8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000352B0;
      v12 = sub_10002F0E4();
      *(v11 + 56) = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      *(v11 + 64) = sub_10000DEE4();
      *(v11 + 32) = v12;
      sub_10002F2D4(v9, &_mh_execute_header, v10, "Unable to acquire idle timer assertion: %{public}@", 50, 2, v11);

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10000DEE4()
{
  result = qword_100049E30;
  if (!qword_100049E30)
  {
    sub_1000042B4(255, &unk_10004A8D0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E30);
  }

  return result;
}

UIView_optional __swiftcall PREditor.pu_view(forMenuElementIdentifier:)(Swift::String forMenuElementIdentifier)
{
  v2 = sub_10002F3D4();
  v3 = [v1 viewForMenuElementIdentifier:v2];

  v5 = v3;
  result.value.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

void sub_10000E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_100010D70();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_pu_deviceOrientation] = 0;
  v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_px_isDepthEffectDisabled] = 0;
  *&v19[*v26] = v27;
  *&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment] = v28;
  *&v19[*v29] = 0;
  v30 = OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourceAssetDirectory;
  v31 = sub_10002F1B4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(&v19[v30], v25, v31);
  v33(&v19[OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_targetAssetDirectory], v23, v31);
  v34 = type metadata accessor for EditingEnvironment(0);
  a9.receiver = v19;
  a9.super_class = v34;
  objc_msgSendSuper2(&a9, "init");
  v35 = *(v32 + 8);
  v35(v23, v31);
  v35(v25, v31);
  sub_100010D88();
}

id sub_10000E418()
{
  result = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  if (result)
  {
    return [result posterType];
  }

  result = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
  if (result)
  {
    return [result posterType];
  }

  return result;
}

uint64_t sub_10000E47C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) editingVariant];
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 0;
  }
}

id sub_10000E4F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  a3(v5);
  v8 = sub_10002F1B4();
  v10 = 0;
  if (sub_1000103D4(v7, 1, v8) != 1)
  {
    sub_10002F134(v9);
    v10 = v11;
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  return v10;
}

uint64_t sub_10000E604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_10002F1B4();
  sub_100010B10();
  (*(v6 + 16))(a2, v2 + v4, v5);

  return sub_1000103AC(a2, 0, 1, v5);
}

void *sub_10000E6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_sourcePosterConfiguration);
  v2 = v1;
  return v1;
}

void *sub_10000E720()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterDescriptor);
  v2 = v1;
  return v1;
}

id sub_10000E794()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) caseColor];

  return v1;
}

id sub_10000E808()
{
  result = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) traitCollection];
  if (result)
  {
    v2 = result;
    v3 = [result userInterfaceStyle];

    return v3;
  }

  return result;
}

uint64_t sub_10000E904()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) sourceContents];
  objc_opt_self();
  sub_100010C70();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = sub_10000EC1C(v2);
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10000E9E0()
{
  v2 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) role];
  sub_10002F404();
  v3 = sub_100010E70();
  if (v0 == v3 && v1 == v4)
  {
    sub_100010FA8();
  }

  else
  {
    v0 = sub_100010B8C(v3);

    if (v0)
    {
      sub_100010FA8();
    }

    else
    {
      sub_10002F404();
      v7 = sub_100010E70();
      if (v0 == v7 && v1 == v8)
      {
        sub_100010F88();
      }

      else
      {
        v0 = sub_100010B8C(v7);

        if (v0)
        {
          sub_100010F88();
        }

        else
        {
          sub_10002F404();
          v10 = sub_100010E70();
          if (v0 == v10 && v1 == v11)
          {
            sub_100010F68();
          }

          else
          {
            v0 = sub_100010B8C(v10);

            if (v0)
            {
              sub_100010F68();
            }

            else
            {
              v0 = 0x706F72646B636142;
              v13 = sub_10002F404();
              v15 = v14;
              if (v13 == sub_10002F404() && v15 == v16)
              {
              }

              else
              {
                v18 = sub_10002F854();

                if ((v18 & 1) == 0)
                {
                  return 0x6E776F6E6B6E55;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_10000EC1C(void *a1)
{
  v2 = sub_10002F3D4();
  v3 = [a1 objectForUserInfoKey:v2];

  if (v3)
  {
    sub_10002F674();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v8 == 1801678700 && v9 == 0xE400000000000000;
      if (v4 || (sub_100010FE8(1801678700) & 1) != 0)
      {

        return 1;
      }

      if (v8 == 1701670760 && v9 == 0xE400000000000000)
      {

        return 2;
      }

      v7 = sub_100010FE8(1701670760);

      if (v7)
      {
        return 2;
      }
    }
  }

  else
  {
    sub_100010800(v12, &qword_10004A5D8, qword_100035580);
  }

  return 0;
}

uint64_t sub_10000EDD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) sourceContents];
  objc_opt_self();
  sub_100010C70();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = PPPosterOverrideConfigurationFromConfiguration(v2);
    sub_100010B50();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v0;
}

id sub_10000EE94()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) targetConfiguration];

  return v1;
}

id sub_10000F08C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider18EditingEnvironment_posterKitEnvironment) traitCollection];

  return v1;
}

uint64_t sub_10000F168()
{
  sub_100010D34();
  sub_100010D64();
  swift_unknownObjectRetain();
  sub_100002274();
  sub_100010D64();
  swift_unknownObjectRelease();
  return v0;
}

__n128 sub_10000F1C4@<Q0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = a2();
  v11 = v8;
  v12 = v7;
  v9 = v6;

  result = v11;
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_10000F220()
{
  sub_100010D34();
  sub_100010D64();
  swift_unknownObjectRetain();
  sub_100002284();
  sub_100010D64();
  swift_unknownObjectRelease();
  return v0;
}

void PRMutablePosterConfiguration.pu_displayNameLocalizationKey.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10002F3D4();
  }

  else
  {
    v3 = 0;
  }

  [v2 setDisplayNameLocalizationKey:v3];
}

id sub_10000F5F4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) backgroundView];

  return v1;
}

id sub_10000F678()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) foregroundView];

  return v1;
}

id sub_10000F6FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20PhotosPosterProvider11EditorViews_posterKitViewProviding) floatingView];

  return v1;
}

uint64_t sub_10000F798()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B558 = result;
  return result;
}

uint64_t sub_10000F848(void *a1)
{
  v17[0] = 0;
  v2 = [a1 loadUserInfoWithError:v17];
  v3 = v17[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_10002F3A4();
    v6 = v3;

    sub_10002F6C4();
    sub_10001157C(v5, &v18, v17);
    sub_10001072C(v17);
    if (v19)
    {
      swift_dynamicCast();
    }

    else
    {

      sub_100010800(&v18, &qword_10004A5D8, qword_100035580);
    }
  }

  else
  {
    v7 = v17[0];
    v8 = sub_10002F0F4();

    swift_willThrow();
    v17[0] = v8;
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    swift_dynamicCast();
    v9 = v18;
    v10 = sub_10002F5D4();
    if (qword_100049680 != -1)
    {
      swift_once();
    }

    v11 = qword_10004B558;
    if (os_log_type_enabled(qword_10004B558, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = a1;
      v13[1] = v9;
      v14 = a1;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v11, v10, "Failed to load user info from descriptor:%@ error:%@", v12, 0x16u);
      sub_100004120(&qword_100049CC0, &qword_1000355C0);
      swift_arrayDestroy();
    }
  }

  return 0;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100010000();
  sub_10001096C(&qword_100049E48, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10002F2A4();
  return 0;
}

id sub_10000FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_10002F3D4();

  v10 = sub_10002F3D4();

  v11 = a6[3];
  if (v11)
  {
    v12 = sub_100010414(a6, a6[3]);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_10002F844();
    (*(v13 + 8))(v15, v11);
    sub_100004168(a6);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 initWithIdentifier:v9 displayName:v10 initialTimeFontConfiguration:a5 initialTitleColor:v16];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_10000FF9C(void *a1)
{
  v1 = [a1 displayNameLocalizationKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F404();

  return v3;
}

unint64_t sub_100010000()
{
  result = qword_100049E40;
  if (!qword_100049E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100049E40);
  }

  return result;
}

uint64_t sub_100010054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010118(uint64_t a1)
{
  result = sub_10002F304();
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

uint64_t sub_1000101DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010214(uint64_t a1)
{
  result = sub_10002F1B4();
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

uint64_t sub_100010364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100010414(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010458()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000104B4()
{
  sub_100004120(&qword_10004A618, &qword_1000355A0);
  sub_100010B10();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010540()
{
  sub_100004120(&qword_10004A618, &qword_1000355A0);

  return sub_100009E88();
}

uint64_t sub_1000105B0()
{
  sub_100010C44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100010C50(v1);

  return v3(v2);
}

uint64_t sub_100010648()
{
  sub_100010F34();
  v1 = *v0;
  sub_100010AE8();
  *v2 = v1;

  sub_100010C84();

  return v3();
}

uint64_t sub_100010780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&qword_10004A5D8, qword_100035580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000107F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010800(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004120(a2, a3);
  sub_100010B10();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100010858()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000108A0()
{
  sub_100010C44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100010C50(v1);

  return v3(v2);
}

uint64_t sub_10001096C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010054(&qword_100049E50, &qword_100035300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010A24(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100010A44(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100010AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_100010B8C(uint64_t a1)
{

  return sub_10002F854();
}

uint64_t sub_100010BB0(uint64_t a1)
{

  return swift_once();
}

double sub_100010C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, _OWORD);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return sub_10001157C(v4, va, va1);
}

uint64_t sub_100010C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_10002F2E4();
}

uint64_t sub_100010D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return __swift_stdlib_reportUnimplementedInitializer(a1, a2, a3, 6, 0);
}

uint64_t sub_100010D34()
{

  return swift_getObjectType();
}

uint64_t sub_100010DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_10002F7C4(a1, a2, a3, a4, a5, a6, 47, 2, a9, a10);
}

uint64_t sub_100010E10()
{
}

uint64_t sub_100010E2C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100010E4C(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100010E70()
{

  return sub_10002F404();
}

void *sub_100010E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return sub_10002F6C4();
}

uint64_t sub_100010EA4(uint64_t a1, uint64_t a2)
{

  return sub_100009EC4(a1, a2, 2);
}

void sub_100010F68()
{
}

void sub_100010F88()
{
}

void sub_100010FA8()
{
}

uint64_t sub_100010FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_10002F2E4();
}

uint64_t sub_100010FE8(uint64_t a1)
{

  return sub_10002F854();
}

uint64_t sub_100011008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_10002F2E4();
}

id sub_100011020()
{
  v0 = type metadata accessor for EditingEnvironment(0);

  return objc_allocWithZone(v0);
}

void sub_100011048(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004120(&qword_10004A9A0, &qword_100035788);
    sub_10002AED8();
    v2 = sub_10002F7E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 56) + v10);
    *&v31[0] = *(*(a1 + 48) + v10);
    v11 = *&v31[0];
    type metadata accessor for PISegmentationOption(0);
    v13 = v11;
    v12;
    swift_dynamicCast();
    sub_1000042B4(0, &qword_100049CD8, NSNumber_ptr);
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000107F0(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000107F0(v30, v31);
    v14 = sub_10002F6A4(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      sub_10002B2D4();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*&v7[8 * v15] != -1)
        {
          sub_10002B2C0();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_10002B2E8();
LABEL_21:
    v5 &= v5 - 1;
    sub_10002B2AC();
    *&v7[v19] |= v20;
    v22 = v2[6] + 40 * v21;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_1000107F0(v31, (v2[7] + 32 * v21));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1000112EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004120(&qword_10004A9A0, &qword_100035788);
    sub_10002AED8();
    v2 = sub_10002F7E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_100029554(*(a1 + 56) + 32 * v10, v34);
    *&v33 = v13;
    *(&v33 + 1) = v12;
    v31[2] = v33;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v31[0] = v33;

    swift_dynamicCast();
    sub_1000107F0(v32, v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000107F0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000107F0(v30, v31);
    v14 = sub_10002F6A4(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      sub_10002B2D4();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (*&v7[8 * v15] != -1)
        {
          sub_10002B2C0();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_10002B2E8();
LABEL_21:
    v5 &= v5 - 1;
    sub_10002B2AC();
    *&v7[v19] |= v20;
    v22 = v2[6] + 40 * v21;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    sub_1000107F0(v31, (v2[7] + 32 * v21));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_10001157C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100023154(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100029554(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_1000115E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100023198(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_100011628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100023198(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100029554(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100011690(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002F404();
  v4 = v3;
  if (v2 == sub_10002F404() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    sub_10002B058();
    v7 = sub_10002F854();
  }

  return v7 & 1;
}

id sub_100011710()
{
  sub_100010D64();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10002F134(v2);
  v4 = v3;
  v5 = sub_10002B358();
  v7 = [v5 v6];

  sub_10002F1B4();
  sub_100010B10();
  (*(v8 + 8))(v0);
  return v7;
}

uint64_t sub_10001179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&unk_10004A9F0, &qword_1000357C0);
  sub_10002AE90(v4);
  sub_10002B288();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = sub_10002F564();
  sub_1000103AC(v7, 1, 1, v8);
  sub_10002AC74();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_10002AC74();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1000357D0;
  v10[5] = v9;
  sub_10002237C(0, 0, v7, &unk_1000357E0, v10);
}

id sub_10001189C(uint64_t a1, uint64_t a2)
{
  sub_100010CB8();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_100010C70();
  isa = sub_10002F4A4().super.isa;

  v5 = [v3 initWithDescriptorType:v2 media:isa];

  return v5;
}

Swift::Int sub_10001195C(char a1)
{
  sub_10002F8D4();
  sub_10002F8E4(a1 & 1);
  return sub_10002F8F4();
}

Swift::Int sub_1000119C0(uint64_t a1)
{
  v2 = *v1;
  sub_10002F8D4();
  sub_10002F8E4(v2);
  return sub_10002F8F4();
}

uint64_t sub_100011A14()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B590 = result;
  return result;
}

uint64_t sub_100011ACC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_10002F304();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100011B94, v5, 0);
}

uint64_t sub_100011B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10002B3B8();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v25 = *(v22 + 32);
  qword_10004B590;
  sub_10002F2F4();
  v26 = sub_10002F614();
  sub_10002B0E0(v26, &_mh_execute_header);
  objc_autoreleasePoolPush();
  v25(&a10);
  sub_10002B42C();
  v27 = sub_10002F604();
  sub_10002B0BC(v27, &_mh_execute_header);
  v28 = sub_10002AC38();
  v29(v28);

  sub_10002AC68();
  sub_10002ACB8();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011D00()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100011D58()
{
  type metadata accessor for PosterUpdater.Serializer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10004B5A0 = v0;
  return result;
}

id sub_100011D94()
{
  v1 = v0;
  v2 = sub_10002F1B4();
  v3 = sub_10002AE90(v2);
  __chkstk_darwin(v3);
  sub_10002AC04();
  v4 = OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary;
  v5 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary);
  }

  else
  {
    sub_1000042B4(0, &qword_10004A610, PHPhotoLibrary_ptr);
    v7 = [objc_opt_self() systemPhotoLibraryURL];
    sub_10002F164();

    v8 = sub_100011710();
    v9 = *(v0 + v4);
    *(v1 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

uint64_t sub_100011E90()
{
  sub_100010F34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = swift_getObjectType();
  sub_10002AE84();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100011EFC()
{
  sub_100010C44();
  if (qword_100049690 != -1)
  {
    sub_10002AC8C(&qword_100049690);
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
  *(v1 + 32) = v2;
  v3 = sub_10002B40C();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100011FFC;

  return v5("updateDescriptors", 17, 2, sub_10002A154, v1);
}

uint64_t sub_100011FFC()
{
  sub_100010C44();
  v3 = v2;
  sub_10002AC5C();
  v5 = v4;
  sub_10002ABD4();
  *v6 = v5;
  v7 = *v1;
  sub_100010AE8();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_10002AE84();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_10001213C()
{
  sub_100010F34();

  sub_100010C84();

  return v0();
}

void sub_100012198(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_10002925C(a1);
  if (!v8)
  {
LABEL_10:
    v21 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      swift_once();
    }

    v22 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v21))
    {
      v29 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v61 = v56;
      *v29 = 136315138;
      v30 = sub_1000292C8(a1, &selRef_identifier);
      if (!v31)
      {
        v30 = 7104878;
      }

      LODWORD(v54) = v21;
      v32 = a3;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE300000000000000;
      }

      v34 = a2;
      v35 = sub_100022BB4(v30, v33, &v61);
      a3 = v32;
      v4 = v3;

      *(v29 + 4) = v35;
      a2 = v34;
      _os_log_impl(&_mh_execute_header, v22, v21, "Update Descriptors called with refresh session identifier '%s'", v29, 0xCu);
      sub_100004168(v56);
    }

    sub_1000129C4(a2, a1, v23, v24, v25, v26, v27, v28, v52, v54, v56, v58);
    v37 = v36;
    if ([objc_opt_self() wallpaperDemoModeEnabled])
    {

      *&v61 = sub_1000294B8(v45, sub_1000295B4);
      sub_100023A00(&v61);
      if (v4)
      {

        __break(1u);
        return;
      }

      v46 = v61;

      v47 = sub_10002F5E4();
      sub_10002F2D4(v47, &_mh_execute_header, v22, "Demo Mode ON", 12, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      sub_100020E98(v37, v38, v39, v40, v41, v42, v43, v44, v53, v55, v57, v59, v60, v61, *(&v61 + 1), v62, v63, v64, v65, v66);
      v46 = v48;
    }

    sub_1000154C4(a2, v46);

    *a3 = v46;
    return;
  }

  sub_100011628(0x444974616863, 0xE600000000000000, v8, &v61);

  if (!v63)
  {
    sub_100010800(&v61, &qword_10004A5D8, qword_100035580);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    swift_once();
  }

  v10 = qword_10004B590;
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000352B0;
  v12 = sub_10002F264();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10002A174();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = v10;
  sub_10002F2D4(v9, &_mh_execute_header, v10, "Fetching descriptors for conversation %@", 40, 2, v11);

  v16 = objc_opt_self();
  *&v61 = 0;
  v17 = [v16 openPhotoLibraryWithWellKnownIdentifier:1 error:&v61];
  if (v17)
  {
    v18 = v17;
    v19 = v61;
    v20 = sub_10002B550(v58, v60, v18, a2);

    if (v3)
    {
    }

    else
    {
      v50 = sub_10002F5E4();
      if (os_log_type_enabled(v15, v50))
      {

        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = sub_1000126D0(v20);

        _os_log_impl(&_mh_execute_header, v15, v50, "Found: %ld descriptors", v51, 0xCu);
      }

      *a3 = v20;
    }
  }

  else
  {
    v49 = v61;

    sub_10002F0F4();

    swift_willThrow();
  }
}

uint64_t sub_1000126D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10002F7D4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100012714(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
  v4[6] = sub_10002F3A4();
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_100012820;

  return sub_100011E90();
}

uint64_t sub_100012820()
{
  sub_100010EDC();
  v2 = v0;
  v4 = v3;
  sub_10002AC5C();
  v6 = v5;
  sub_10002ABD4();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  v11 = *v1;
  sub_100010AE8();
  *v12 = v11;

  if (v2)
  {
    sub_10002F0E4();
    sub_10002AE40();

    v13 = v4;
  }

  else
  {
    isa = sub_10002F4A4().super.isa;

    v13 = isa;
  }

  v15 = *(v6 + 32);
  v16 = sub_10002AECC();
  v17(v16);

  _Block_release(v15);
  sub_100010C84();

  return v18();
}

void sub_1000129C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100010CCC();
  v13 = v12;
  v15 = v14;
  v16 = sub_10002F1B4();
  sub_100004368();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100010B68();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  if (!PLIsFeaturedContentAllowed())
  {
    v38 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
LABEL_67:
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4(v38, &_mh_execute_header, qword_10004B590, "Featured content not allowed. Return empty descriptors", 54, 2, _swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  v26 = [objc_opt_self() standardUserDefaults];
  v27 = sub_10002F3D4();
  v28 = [v26 BOOLForKey:v27];

  if (v28)
  {
    v29 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4(v29, &_mh_execute_header, qword_10004B590, "PhotosWallpaperForceColdStart is TRUE, forcing Cold Start Mode", 62, 2, _swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  sub_1000292C8(v13, &selRef_identifier);
  if (v39)
  {
    sub_10002F124();

    sub_100013734();
    if (v40)
    {
      v116 = v18;
      v117 = v16;
      v41 = sub_10002B028();
      sub_100013DB0(v41, v42, v25, v43, v44, v45, v46, v47, v114, v115, v116, SHIDWORD(v116), v117, v25, v119, v120, v121, v122, v123, v124, v125);
      v49 = v48;

      v115 = v49;
      v122 = v49;
      v50 = v15 + 8;
      v51 = 1 << *(v15 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v38 = v52 & v15[8];
      v53 = (v51 + 63) >> 6;

      v54 = 0;
      v119 = v15;
      if (v38)
      {
        while (1)
        {
          v55 = v54;
LABEL_21:
          v56 = __clz(__rbit64(v38)) | (v55 << 6);
          v57 = (v15[6] + 16 * v56);
          v59 = *v57;
          v58 = v57[1];
          v60 = *(v15[7] + 8 * v56);
          v61 = objc_opt_self();

          v62 = v60;
          v63 = [v61 descriptorTypeStringWithType:202];
          v64 = sub_10002F404();
          v66 = v65;

          if (v59 == v64 && v58 == v66)
          {

            goto LABEL_62;
          }

          sub_10002B034();
          v68 = sub_10002F854();

          if (v68)
          {
            break;
          }

          v38 &= v38 - 1;

          v54 = v55;
          v15 = v119;
          if (!v38)
          {
            goto LABEL_18;
          }
        }

LABEL_62:
        v111 = sub_10002F5E4();
        v112 = v117;
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        sub_10002F2D4(v111, &_mh_execute_header, qword_10004B590, "UpgradeSuggestionGyroPoster Descriptor present in current descriptors, prepending it to updated descriptors", 107, 2, _swiftEmptyArrayStorage);
        sub_100004120(&qword_10004A650, qword_1000355D8);
        sub_10002ADD0();
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1000352A0;
        *(v113 + 32) = v62;
        v124 = v113;
        sub_1000133C0(v115);
        (*(v116 + 8))(v118, v112);
        v122 = v124;
      }

      else
      {
        while (1)
        {
LABEL_18:
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
            goto LABEL_66;
          }

          if (v55 >= v53)
          {
            break;
          }

          v38 = v50[v55];
          ++v54;
          if (v38)
          {
            goto LABEL_21;
          }
        }

        v84 = v118;
        v124 = sub_10002F184();
        v125 = v85;
        v120 = 0xD00000000000001ALL;
        v121 = 0x80000001000348C0;
        sub_100029F90();
        v86 = sub_10002F664();

        if (v86)
        {
          v87 = sub_10002F5E4();
          if (qword_100049688 != -1)
          {
            sub_10002AA04();
            swift_once();
          }

          sub_10002F2D4(v87, &_mh_execute_header, qword_10004B590, "Initiated from Spatial3DOnboardingSession, appending existing descriptors", 73, 2, _swiftEmptyArrayStorage);

          sub_10001346C(v88);
          v89 = sub_10002B058();
        }

        else
        {
          v90 = v117;
          v91 = *(v116 + 8);
          v89 = v84;
        }

        v91(v89, v90);
      }
    }

    else
    {
      v92 = v25;

      v94 = sub_1000136A4(v93);
      v95 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v96 = qword_10004B590;
      (*(v18 + 16))(v22, v92, v16);
      if (os_log_type_enabled(v96, v95))
      {
        swift_bridgeObjectRetain_n();
        sub_10002AB80();
        v97 = swift_slowAlloc();
        sub_10002AB68();
        v98 = swift_slowAlloc();
        v124 = v98;
        *v97 = 136315394;
        LODWORD(v119) = v95;
        v99 = sub_10002F184();
        v118 = v92;
        v100 = *(v18 + 8);
        v100(v22, v16);
        v101 = sub_10002B37C();
        sub_100022BB4(v101, v102, v103);
        sub_10002B328();

        *(v97 + 4) = v99;
        *(v97 + 12) = 2048;
        sub_1000126D0(v94);
        sub_10002B004();

        *(v97 + 14) = v99;

        _os_log_impl(&_mh_execute_header, v96, v119, "Failed to load descriptor identifiers from %s, returning %ld existing descriptors", v97, 0x16u);
        sub_100004168(v98);
        sub_10002AB08();

        sub_10002AAC4();

        v100(v118, v16);
      }

      else
      {
        v110 = *(v18 + 8);
        v110(v22, v16);
        v110(v92, v16);
      }
    }

LABEL_11:
    sub_100010CE4();
    return;
  }

  if (v15[2])
  {

    v38 = sub_1000136A4(v69);
    v70 = PXSolariumEnabled();
    v119 = _swiftEmptyArrayStorage;
    if (v70)
    {
      sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {

        sub_10002AB80();
        v71 = swift_slowAlloc();
        *v71 = 134218240;
        *(v71 + 4) = sub_1000126D0(v38);

        *(v71 + 12) = 2048;
        *(v71 + 14) = 2;
        sub_10002AD04();
        _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
        sub_10002AA78();
      }

      v119 = &off_100040F28;
    }

    v120 = _swiftEmptyArrayStorage;
    v77 = sub_1000126D0(v38);
    v78 = 0;
    v79 = v38 & 0xC000000000000001;
    while (v77 != v78)
    {
      sub_100023130(v78, v79 == 0, v38);
      if (v79)
      {
        sub_10002AD14();
        v80 = sub_10002F734();
      }

      else
      {
        v80 = *(v38 + 8 * v78 + 32);
      }

      v81 = v80;
      if (__OFADD__(v78, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v82 = [v80 identifier];
      sub_10002F404();
      sub_10002B040();

      v124 = v27;
      v125 = v28;
      __chkstk_darwin(v83);
      *(&v114 - 2) = &v124;
      LOBYTE(v82) = sub_100027134(sub_10002A134, (&v114 - 4), v119);

      if (v82)
      {
      }

      else
      {
        sub_10002F764();
        v27 = v120[2];
        sub_10002F794();
        sub_10002B1FC();
        sub_10002F7A4();
        sub_10002F774();
      }

      ++v78;
    }

    v104 = v120;
    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v105 = sub_10002AE9C();
    if (os_log_type_enabled(v105, v106))
    {

      sub_10002AB74();
      v107 = swift_slowAlloc();
      *v107 = 134217984;
      *(v107 + 4) = sub_1000126D0(v104);

      sub_10002AE4C(&_mh_execute_header, v108, v109, "Nil SessionInfo, Returning %ld existing descriptors");
      sub_10002AB08();
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_100010CE4();

  sub_100014E50(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1000133C0(unint64_t a1)
{
  v3 = sub_1000126D0(a1);
  v4 = sub_1000126D0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100027050(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000295B4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10001346C(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_1000126D0(*v1);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100027050(v9, 1);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_100029B20();
  if (v11 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v2 + 16);
    v8 = __OFADD__(v12, v11);
    v13 = v12 + v11;
    if (v8)
    {
      __break(1u);
LABEL_13:
      v16 = (v2 + 64) >> 6;
      while (1)
      {
        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_34;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v10 + 8 * v17);
        ++v6;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v6 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v13;
  }

  v5 = v26;
  if (v11 != v10)
  {
LABEL_7:
    sub_100029F34(v5);
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v10 = v27;
  v2 = v28;
  v6 = v29;
  if (!v30)
  {
    goto LABEL_13;
  }

  v14 = (v30 - 1) & v30;
  v15 = __clz(__rbit64(v30)) | (v29 << 6);
  v16 = (v28 + 64) >> 6;
LABEL_18:
  v19 = *(*(v5 + 56) + 8 * v15);
  v20 = v19;
LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10002F4E4();
  }

  v3 = *v1;
  v24 = *v1 & 0xFFFFFFFFFFFFFF8;
  v25 = *(v24 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v25)
    {
      *(v24 + 16) = v4;
      goto LABEL_19;
    }

    *(v24 + 32 + 8 * v4++) = v19;
    if (!v14)
    {
      break;
    }

    v21 = v6;
LABEL_29:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v5 + 56) + ((v21 << 9) | (8 * v22)));
    v23 = v19;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= v16)
    {
      *(v24 + 16) = v4;
      goto LABEL_7;
    }

    v14 = *(v10 + 8 * v21);
    ++v6;
    if (v14)
    {
      v6 = v21;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1000136A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_100022AB8(*(a1 + 16), 0);
  sub_100029B20();
  v4 = v3;
  sub_100029F34(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_100013734()
{
  sub_100010CCC();
  v2 = v1;
  v3 = sub_10002F1B4();
  sub_100004368();
  __chkstk_darwin(v4);
  sub_100010B68();
  __chkstk_darwin(v5);
  sub_10002AF24();
  __chkstk_darwin(v6);
  sub_10002AC50();
  v55 = v7;
  sub_10002ABF8();
  __chkstk_darwin(v8);
  sub_10002AC50();
  v59 = v9;
  sub_10002ABF8();
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = sub_10002F5B4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v14 = qword_10004B590;
  v15 = sub_10002B370();
  v56 = v17;
  v57 = v16;
  (v17)(v15);
  if (os_log_type_enabled(v14, v13))
  {
    sub_10002AB74();
    v18 = swift_slowAlloc();
    v54 = v2;
    v19 = v18;
    sub_10002AB68();
    v20 = swift_slowAlloc();
    v53 = v13;
    v21 = v20;
    v60 = v20;
    *v19 = 136315138;
    v22 = v14;
    v23 = sub_10002F184();
    v25 = v24;
    v26 = sub_10002AC38();
    v58 = v27;
    v27(v26);
    v28 = v23;
    v14 = v22;
    sub_100022BB4(v28, v25, &v60);
    sub_10002B004();

    *(v19 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v22, v53, "Loading poster descriptor identifiers with refresh session directory: %s", v19, 0xCu);
    sub_100004168(v21);
    sub_10002AA18();

    v2 = v54;
    sub_10002AB08();
  }

  else
  {
    v29 = sub_10002AC38();
    v58 = v30;
    v30(v29);
  }

  v31 = v59;
  sub_10002F154();
  v32 = [objc_opt_self() defaultManager];
  sub_10002F184();
  v33 = sub_10002F3D4();

  v34 = [v32 fileExistsAtPath:v33];

  if (v34)
  {
    v35 = v55;
    v56(v55, v31, v3);
    v36 = objc_allocWithZone(NSArray);
    v50 = sub_100021D08(v35);
    v51 = sub_10002B028();
    v58(v51);
    v60 = 0;
    sub_10002F4B4();
  }

  else
  {
    v37 = sub_10002F5E4();
    v38 = v2;
    v39 = v37;
    v56(v0, v38, v3);
    if (os_log_type_enabled(v14, v39))
    {
      sub_10002AB74();
      v40 = swift_slowAlloc();
      sub_10002AB68();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136315138;
      v42 = v0;
      sub_10002F184();
      sub_10002B334();
      v43 = sub_10002AD5C();
      v44 = v14;
      v45 = v58;
      v58(v43);
      sub_100022BB4(v42, v33, &v60);
      sub_10002AEB4();

      *(v40 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v44, v39, "Missing poster descriptor identifiers plist file in refresh session directory: %s", v40, 0xCu);
      sub_100004168(v41);
      sub_10002AA78();

      sub_10002AAC4();

      v46 = sub_10002B028();
      v45(v46);
    }

    else
    {
      v47 = sub_10002AD5C();
      v48 = v58;
      v58(v47);
      v49 = sub_10002B028();
      v48(v49);
    }
  }

  sub_100010CE4();
}

void sub_100013DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100010CCC();
  a20 = v23;
  a21 = v24;
  v240 = v21;
  v241 = v25;
  v244 = v26;
  v28 = v27;
  v29 = 0;
  sub_10002B208(__stack_chk_guard);
  v249 = sub_10002F1B4();
  sub_100004368();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100010B68();
  v238 = (v33 - v34);
  sub_10002ABF8();
  v36 = __chkstk_darwin(v35);
  v45 = (&v233 - v44);
  v254 = _swiftEmptyArrayStorage;
  v46 = *(v28 + 16);
  if (v46)
  {
    v47 = objc_opt_self();
    v247 = (v31 + 8);
    v248 = v47;
    v239 = _swiftEmptyArrayStorage;
    v48 = (v28 + 40);
    *&v49 = 136315138;
    v245 = v49;
    *&v49 = 136315394;
    v242 = v49;
    *&v49 = 138412290;
    v235 = v49;
    v243 = v45;
    while (1)
    {
      v50 = *(v48 - 1);
      v51 = *v48;

      v52 = sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v53 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v52))
      {
        sub_10002AB74();
        v54 = swift_slowAlloc();
        sub_10002AB68();
        v55 = swift_slowAlloc();
        LODWORD(v56) = sub_10002AD20(v55).n128_u32[0];
        *(v54 + 4) = sub_10002AB9C(v56);
        sub_10002B4EC(&_mh_execute_header, v53, v52, "Processing descriptor '%s'", v233);
        sub_100004168(v22);
        sub_10002AA88();

        sub_10002AA38();
      }

      sub_10002AC2C();
      sub_10002F144();
      sub_10002F134(v57);
      v59 = v58;
      v256[0] = 0;
      v60 = [v248 loadFromURL:v58 error:v256];

      if (!v60)
      {
        v73 = v256[0];
        sub_100010D64();
        v74 = sub_10002F0F4();

        swift_willThrow();
        v251 = 0;
        v256[0] = v74;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v75 = sub_10002B394();
        v76 = sub_1000042B4(v75, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44(v76);
        v77 = v253;
        v78 = sub_10002F5D4();
        if (sub_10002B4D4(v78))
        {
          sub_10002AB80();
          v79 = swift_slowAlloc();
          sub_10002ABC8();
          v22 = swift_slowAlloc();
          v255 = v22;
          *v79 = v242;
          v80 = sub_10002AC2C();
          sub_100022BB4(v80, v81, v82);
          sub_10002B504();
          *(v79 + 4) = v50;
          *(v79 + 12) = 2080;
          v83 = [v77 localizedDescription];
          v84 = sub_10002F404();
          v252 = v77;
          v85 = v45;
          v86 = v48;
          v87 = v46;
          v89 = v88;

          v90 = sub_100022BB4(v84, v89, &v255);
          v46 = v87;
          v48 = v86;
          v45 = v85;

          *(v79 + 14) = v90;
          sub_10002AC80();
          sub_10002AD50();
          _os_log_impl(v91, v92, v93, v94, v95, v96);
          swift_arrayDestroy();
          sub_10002AA88();

          sub_10002AA38();
        }

        else
        {
        }

        v138 = sub_10002B1B4();
        v139(v138);

        v29 = v251;
        goto LABEL_47;
      }

      v61 = v256[0];
      v252 = v60;
      v62 = sub_10002F5B4();
      v63 = sub_10002B070(v62);
      v250 = v48;
      if (v63)
      {
        sub_10002AB80();
        v64 = swift_slowAlloc();
        sub_10002ABE0();
        v65 = swift_slowAlloc();
        sub_10002AB68();
        swift_slowAlloc();
        v251 = v29;
        sub_10002AEF4();
        v256[0] = v66;
        *(v64 + 4) = sub_10002AB9C(*&v242);
        *(v64 + 12) = 2112;
        v29 = v251;
        *(v64 + 14) = v252;
        *v65 = v60;
        v22 = v45;
        sub_10002AD50();
        _os_log_impl(v67, v68, v69, v70, v71, v72);
        sub_100010800(v65, &qword_100049CC0, &qword_1000355C0);
        v45 = v243;
        sub_10002AB08();

        sub_100004168(v46);
        sub_10002B2A0();
        sub_10002AB08();

        sub_10002AA38();
      }

      else
      {
        v22 = v53;
      }

      v97 = v241;
      if (!*(v241 + 16))
      {
        break;
      }

      v98 = sub_10002AC2C();
      v100 = sub_100023198(v98, v99);
      if ((v101 & 1) == 0)
      {
        break;
      }

      v102 = *(*(v97 + 56) + 8 * v100);
      sub_10002F5E4();
      sub_10002AD74();
      v103 = v22;
      if (os_log_type_enabled(v22, v104))
      {
        sub_10002AB74();
        v105 = swift_slowAlloc();
        sub_10002ABE0();
        v106 = v46;
        v107 = swift_slowAlloc();
        *v105 = v235;
        *(v105 + 4) = v102;
        *v107 = v102;
        v108 = v102;
        _os_log_impl(&_mh_execute_header, v103, v97, "Found current descriptor '%@'", v105, 0xCu);
        sub_100010800(v107, &qword_100049CC0, &qword_1000355C0);
        v46 = v106;
        sub_10002AB08();

        sub_10002AA88();
      }

      v109 = [v102 assetDirectory];
      v110 = v238;
      sub_10002F164();

      sub_10002F134(v111);
      v114 = v112;
      v22 = *v247;
      (*v247)(v110, v249);
      v256[0] = 0;
      v113 = [v248 loadFromURL:v114 error:v256];

      LOBYTE(v114) = v256[0];
      if (!v113)
      {
        v140 = v256[0];
        sub_100010D64();
        v141 = sub_10002F0F4();

        swift_willThrow();
        v29 = 0;
        v256[0] = v141;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v142 = sub_10002B394();
        v143 = sub_1000042B4(v142, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44(v143);
        v144 = v253;
        sub_10002F5D4();
        sub_10002AD74();
        if (os_log_type_enabled(v103, v145))
        {
          sub_10002AB80();
          v146 = swift_slowAlloc();
          sub_10002ABC8();
          v237 = swift_slowAlloc();
          v255 = v237;
          *v146 = v242;
          v147 = sub_10002AC2C();
          *(v146 + 4) = sub_100022BB4(v147, v148, v149);
          *(v146 + 12) = 2080;
          v251 = v144;
          v150 = [v144 localizedDescription];
          sub_10002F404();
          v22 = v51;
          v234 = v102;
          sub_10002AEF4();
          HIDWORD(v233) = v141;
          v152 = v151;

          v153 = sub_10002B2A0();
          v103 = v102;
          sub_100022BB4(v153, v152, v154);
          sub_100010D64();

          *(v146 + 14) = v150;
          sub_10002B3AC();
          _os_log_impl(&_mh_execute_header, v102, v155, "Failed to load current descriptor model '%s': %s", v146, 0x16u);
          sub_10002AFBC(&a17);
          swift_arrayDestroy();
          sub_10002AAB4();

          sub_10002AB08();
        }

        else
        {
        }

LABEL_32:
        v45 = v243;
LABEL_33:
        v156 = sub_10002F5E4();
        if (sub_10002B070(v156))
        {
          sub_10002AB74();
          v157 = swift_slowAlloc();
          sub_10002AB68();
          v158 = swift_slowAlloc();
          LODWORD(v159) = sub_10002AD20(v158).n128_u32[0];
          *(v157 + 4) = sub_10002AB9C(v159);
          sub_10002B4EC(&_mh_execute_header, v103, v156, "Descriptor '%s' has changed, updating", v233);
          sub_100004168(v22);
          sub_10002AA88();

          sub_10002AA38();
        }

        v160 = sub_10002AC2C();
        sub_1000165F8(v160, v161, v252, v45, v162, v163, v164, v165, v233, v234, v235, *(&v235 + 1), v236, v237, v238, v239, v240, v241, v242, *(&v242 + 1));
        if (!v29)
        {
          v186 = v166;
          v22 = sub_10002F5E4();
          if (sub_10002B070(v22))
          {
            sub_10002AB80();
            v187 = swift_slowAlloc();
            sub_10002ABE0();
            swift_slowAlloc();
            v251 = 0;
            sub_10002AEF4();
            sub_10002AB68();
            v188 = swift_slowAlloc();
            v256[0] = v188;
            sub_10002AB9C(*&v242);
            sub_10002B504();
            *(v187 + 4) = v50;
            *(v187 + 12) = 2112;
            *(v187 + 14) = v186;
            *v46 = v186;
            v189 = v186;
            v29 = v251;
            sub_10002AD50();
            _os_log_impl(v190, v191, v192, v193, v194, v195);
            sub_100010800(v46, &qword_100049CC0, &qword_1000355C0);
            sub_10002B2A0();
            sub_10002AB08();

            sub_100004168(v188);
            v45 = v243;
            sub_10002AB08();

            sub_10002AA38();
          }

          else
          {
          }

          v48 = v250;
          v196 = v186;
          sub_10002F494();
          sub_10002AD3C();
          if (v198)
          {
            sub_10002ABBC(v197);
            sub_10002F4E4();
          }

          sub_100010C90();
          sub_10002F504();
          sub_10002AF94();

          v199 = sub_10002B1B4();
          v36 = v200(v199);
          goto LABEL_47;
        }

        v167 = v29;
        v29 = 0;
        v256[0] = v167;
        sub_100004120(&qword_10004A630, &unk_100035270);
        v168 = sub_10002B394();
        v169 = sub_1000042B4(v168, &unk_10004A8D0, NSError_ptr);
        sub_10002AB44(v169);
        v170 = v253;
        v171 = sub_10002F5D4();
        if (sub_10002B070(v171))
        {
          sub_10002AB80();
          v172 = swift_slowAlloc();
          sub_10002ABC8();
          v22 = swift_slowAlloc();
          v255 = v22;
          *v172 = v242;
          v173 = sub_10002AC2C();
          sub_100022BB4(v173, v174, v175);
          sub_10002B504();
          *(v172 + 4) = v50;
          *(v172 + 12) = 2080;
          v176 = [v170 localizedDescription];
          v177 = sub_10002F404();
          v251 = 0;
          v46 = v178;

          v179 = sub_100022BB4(v177, v46, &v255);
          sub_10002B2A0();

          *(v172 + 14) = v179;
          sub_10002AD50();
          _os_log_impl(v180, v181, v182, v183, v184, v185);
          swift_arrayDestroy();
          sub_10002AA88();

          sub_10002AA38();

          v29 = v251;
        }

        else
        {
        }

        v45 = v243;
        (*v247)(v243, v249);

        goto LABEL_42;
      }

      v237 = v22;
      v115 = v256[0];
      v22 = sub_10002F5B4();
      if (sub_10002B070(v22))
      {
        sub_10002AB80();
        v114 = swift_slowAlloc();
        sub_10002ABE0();
        v116 = swift_slowAlloc();
        v251 = v29;
        v117 = v102;
        v118 = v46;
        v119 = v116;
        sub_10002AB68();
        v120 = swift_slowAlloc();
        v256[0] = v120;
        *(v114 + 4) = sub_10002AB9C(*&v242);
        *(v114 + 12) = 2112;
        *(v114 + 14) = v113;
        *v119 = v113;
        v121 = v113;
        sub_10002AD50();
        _os_log_impl(v122, v123, v124, v125, v126, v127);
        sub_100010800(v119, &qword_100049CC0, &qword_1000355C0);
        v46 = v118;
        v102 = v117;
        v29 = v251;
        sub_10002AB08();

        sub_100004168(v120);
        sub_10002AAB4();

        sub_10002AA38();
      }

      sub_1000042B4(0, &qword_10004A9D8, NSObject_ptr);
      sub_10002B328();
      if ((sub_10002F644() & 1) == 0)
      {

        goto LABEL_32;
      }

      sub_10002F5E4();
      sub_10002AD74();
      if (os_log_type_enabled(v103, v128))
      {
        sub_10002AB74();
        v129 = swift_slowAlloc();
        sub_10002AB68();
        v130 = swift_slowAlloc();
        *v129 = sub_10002AD20(v130).n128_u32[0];
        v131 = sub_10002AC2C();
        sub_100022BB4(v131, v132, v133);
        sub_10002B504();
        *(v129 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v103, v114, "Descriptor '%s' hasn't changed, keeping", v129, 0xCu);
        sub_100004168(v22);
        sub_10002AA88();

        sub_10002AAB4();
      }

      else
      {
      }

      v201 = v237;
      sub_10002F494();
      sub_10002AD3C();
      if (v198)
      {
        sub_10002ABBC(v202);
        sub_10002F4E4();
      }

      sub_10002AFE0();
      sub_10002F504();
      sub_10002AF94();

      v45 = v243;
      v36 = (v201)(v243, v249);
LABEL_42:
      v48 = v250;
LABEL_47:
      v48 += 2;
      v46 = (v46 - 1);
      if (!v46)
      {
        goto LABEL_54;
      }
    }

    v134 = sub_10002F5E4();
    v103 = v22;
    if (os_log_type_enabled(v22, v134))
    {
      sub_10002AB74();
      v135 = swift_slowAlloc();
      sub_10002AB68();
      v136 = swift_slowAlloc();
      LODWORD(v137) = sub_10002AD20(v136).n128_u32[0];
      *(v135 + 4) = sub_10002AB9C(v137);
      sub_10002B4EC(&_mh_execute_header, v22, v134, "No current descriptor '%s'", v233);
      sub_100004168(v22);
      sub_10002AA88();

      sub_10002AA38();
    }

    goto LABEL_33;
  }

  v239 = _swiftEmptyArrayStorage;
LABEL_54:
  sub_100019D0C(v36, v37, v38, v39, v40, v41, v42, v43, v233, v234, v235, *(&v235 + 1), v236, v237, v238, v239, v240, v241, v242, *(&v242 + 1), v243, v244, v245, *(&v245 + 1), v246, v247);
  v203 = v241;
  if (v204)
  {
    sub_10001B7F8(103, 0xD000000000000011, 0x80000001000326F0, v241);
    if (v29)
    {
      v256[0] = v29;
      sub_100004120(&qword_10004A630, &unk_100035270);
      v205 = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002AB44(v205);
      v206 = v253;
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v207 = swift_slowAlloc();
        sub_10002AB68();
        v208 = swift_slowAlloc();
        v255 = v208;
        *v207 = 136315138;
        v209 = [v206 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v210 = sub_10002AD30();
        sub_100022BB4(v210, v211, v212);
        sub_10002ADFC();

        *(v207 + 4) = v209;
        sub_10002AD04();
        _os_log_impl(v213, v214, v215, v216, v217, 0xCu);
        sub_100004168(v208);
        sub_10002AA18();

        sub_10002AA78();
      }

      v29 = 0;
    }

    else
    {
      sub_10002F494();
      sub_10002AD3C();
      if (v198)
      {
        sub_10002ABBC(v218);
        sub_10002F4E4();
      }

      sub_100010C90();
      sub_10002F504();
      sub_10002AF94();
    }

    v203 = v241;
  }

  if (sub_10001A200())
  {
    sub_10001B7F8(104, 0xD000000000000014, 0x80000001000326D0, v203);
    if (v29)
    {
      v256[0] = v29;
      sub_100004120(&qword_10004A630, &unk_100035270);
      v219 = sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002AB44(v219);
      v220 = v253;
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v221 = swift_slowAlloc();
        sub_10002AB68();
        v222 = swift_slowAlloc();
        v255 = v222;
        *v221 = 136315138;
        v223 = [v220 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v224 = sub_10002AD30();
        sub_100022BB4(v224, v225, v226);
        sub_10002ADFC();

        *(v221 + 4) = v223;
        sub_10002AD04();
        _os_log_impl(v227, v228, v229, v230, v231, 0xCu);
        sub_100004168(v222);
        sub_10002AA18();

        sub_10002AA78();
      }
    }

    else
    {
      sub_10002F494();
      sub_10002AF84();
      if (v198)
      {
        sub_10002ABBC(v232);
        sub_10002F4E4();
      }

      sub_10002B058();
      sub_10002F504();
    }
  }

  sub_100010CE4();
}

char *sub_1000154C4(uint64_t a1, unint64_t a2)
{

  v4 = sub_1000159FC(v3);
  v5 = sub_1000126D0(a2);
  if (v5)
  {
    v6 = v5;
    result = sub_1000233C8(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_10002AFE0();
        v9 = sub_10002F734();
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      v12 = sub_10002F404();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        v18 = sub_10002ABBC(v15);
        sub_1000233C8(v18, v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v6 != v8);
  }

  v19 = sub_100015B18(_swiftEmptyArrayStorage);
  v20 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v21 = qword_10004B590;
  if (sub_10002B104())
  {

    sub_10002AB74();
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = sub_1000126D0(a2);

    sub_10002B11C(&_mh_execute_header, v21, v20, "Finished updating %ld descriptors:", v71);
    sub_10002AA28();
  }

  v23 = sub_100015BD8(v4, v19);
  sub_100015C2C(v23);

  v24 = sub_10002F5E4();
  if (sub_10002B4D4(v24))
  {

    sub_10002AB80();
    v25 = swift_slowAlloc();
    sub_10002AB68();
    v72 = swift_slowAlloc();
    sub_10002B484(3.8521e-34);
    *(v25 + 12) = 2080;
    v26 = sub_10002AD8C();
    sub_100004120(v26, v27);
    sub_10002AA5C();
    sub_10002A0B0(v28, v29, &qword_100035798);
    sub_10002ACD4();
    sub_10002F3C4();
    sub_10002B01C();

    v30 = sub_10002AD8C();
    sub_100022BB4(v30, v31, v32);
    sub_10002AD80();

    *(v25 + 14) = &unk_10004A9C0;
    sub_10002B2FC(&_mh_execute_header, v21, v24, "Added %ld: \n%s");
    _os_log_impl(v33, v34, v35, v36, v37, v38);
    sub_100004168(v72);
    sub_10002AAC4();

    sub_10002AA28();
  }

  else
  {
  }

  v39 = sub_100010C90();
  v41 = sub_100027B90(v39, v40);
  sub_100015C2C(v41);

  v42 = sub_10002F5E4();
  if (sub_10002B4D4(v42))
  {

    sub_10002AB80();
    v43 = swift_slowAlloc();
    sub_10002AB68();
    v73 = swift_slowAlloc();
    sub_10002B484(3.8521e-34);
    *(v43 + 12) = 2080;
    v44 = sub_10002AD8C();
    sub_100004120(v44, v45);
    sub_10002AA5C();
    sub_10002A0B0(v46, v47, &qword_100035798);
    sub_10002ACD4();
    sub_10002F3C4();
    sub_10002B01C();

    v48 = sub_10002AD8C();
    sub_100022BB4(v48, v49, v50);
    sub_10002AD80();

    *(v43 + 14) = &unk_10004A9C0;
    sub_10002B2FC(&_mh_execute_header, v21, v42, "Maintained %ld: \n%s");
    _os_log_impl(v51, v52, v53, v54, v55, v56);
    sub_100004168(v73);
    sub_10002AAC4();

    sub_10002AA28();
  }

  else
  {
  }

  v57 = sub_100010C90();
  v59 = sub_100015BD8(v57, v58);

  v60 = sub_100015C2C(v59);

  v61 = sub_10002F5E4();
  if (!sub_10002B4D4(v61))
  {
  }

  sub_10002AB80();
  v62 = swift_slowAlloc();
  sub_10002AB68();
  v74 = swift_slowAlloc();
  *v62 = 134218242;
  *(v62 + 4) = v60[2];

  *(v62 + 12) = 2080;
  v63 = sub_10002B370();
  sub_100004120(v63, v64);
  sub_10002AA5C();
  sub_10002A0B0(v65, v66, &qword_100035798);
  sub_10002ACD4();
  sub_10002F3C4();

  v67 = sub_10002B370();
  v70 = sub_100022BB4(v67, v68, v69);

  *(v62 + 14) = v70;
  _os_log_impl(&_mh_execute_header, v21, v61, "Removed %ld: \n%s", v62, 0x16u);
  sub_100004168(v74);
  sub_10002AA28();

  sub_10002AA78();
}

uint64_t sub_1000159FC(uint64_t a1)
{
  result = sub_10002F594();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1000271E4(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015B18(uint64_t a1)
{
  result = sub_10002F594();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1000271E4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void *sub_100015BD8(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100027330(a1);
    return a2;
  }

  else
  {

    return sub_10002745C(a1, a2);
  }
}

void *sub_100015C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_100022B38(*(a1 + 16), 0);
  v4 = sub_100029C68(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_100029F34(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_100023A7C(&v7, sub_10002A0F4, sub_100023EA0);
  return v7;
}

void sub_100015D38()
{
  sub_100010CCC();
  v4 = v3;
  v6 = v5;
  v7 = sub_10002F1B4();
  sub_100004368();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100010B68();
  sub_10002AF24();
  __chkstk_darwin(v11);
  sub_10002B274();
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = [v6 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_10002AED8();
  v16 = sub_10002F4C4();

  if (sub_1000126D0(v16))
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      sub_10002F734();
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v17 = *(v16 + 32);
    }

    sub_100010B50();

    v18 = [v4 assetDirectory];
    sub_10002F164();

    v78 = v15;
    v19 = [v15 subpath];
    sub_10002F404();

    sub_10002AECC();
    v79 = v14;
    sub_10002F154();

    objc_opt_self();
    sub_10002F134(v20);
    v22 = v21;
    v82 = 0;
    v23 = sub_10002B04C();
    v25 = [v23 v24];

    v26 = v82;
    v80 = v4;
    v81 = v1;
    if (v25)
    {
      *&v77 = v9;
      v27 = objc_opt_self();
      v28 = v26;
      v29 = [v27 styleWithBakedStyle:v25];
      v30 = [v29 clockFont];
      sub_10002F404();
      sub_10002B040();

      sub_1000042B4(0, &qword_10004A9B8, PFParallaxColor_ptr);
      v31 = [v29 clockColor];
      v32 = [objc_opt_self() whiteColor];
      sub_10002AE40();
      LOBYTE(v27) = sub_10002F644();

      if (v27)
      {
        v33 = [v29 kind];
        v34 = PIParallaxStylePrefersVibrantClockForKind();

        v35 = objc_opt_self();
        if (v34)
        {
          v36 = [v35 vibrantMaterialColor];
        }

        else
        {
          v36 = [v35 vibrantMonochromeColor];
        }

        v59 = v36;
      }

      else
      {
        v55 = [v29 clockColor];
        v56 = [v55 CGColor];

        v57 = [objc_allocWithZone(UIColor) initWithCGColor:v56];
        [v29 clockVibrancy];
        v58 = [v57 colorWithAlphaComponent:?];

        v59 = [objc_allocWithZone(PRPosterColor) initWithColor:v58 preferredStyle:2];
      }

      v14 = v59;
      v46 = v77;
      v15 = v6;
      goto LABEL_22;
    }

    v38 = v82;
    sub_100010B50();
    v39 = sub_10002F0F4();

    v76 = v39;
    swift_willThrow();
    v6 = [v6 styleCategory];
    if (!v6)
    {
      v6 = PFParallaxStyleCategoryTrueColors;
    }

    v0 = PFDefaultParallaxStyleKindForCategory();
    v16 = PIParallaxStyleClockFontForKind();
    v15 = sub_10002F404();
    *&v77 = v40;

    v14 = [objc_opt_self() vibrantMaterialColor];
    LODWORD(v16) = sub_10002F5B4();
    if (qword_100049688 == -1)
    {
LABEL_15:
      v41 = qword_10004B590;
      (*(v9 + 16))(v2, v81, v7);
      if (os_log_type_enabled(v41, v16))
      {
        sub_10002AB80();
        v42 = swift_slowAlloc();
        v73 = v0;
        v43 = v42;
        sub_10002ABC8();
        v44 = swift_slowAlloc();
        HIDWORD(v74) = v16;
        v82 = v44;
        *v43 = 136315394;
        v75 = v15;
        v45 = sub_10002F174(1);
        v46 = v9;
        v47 = v7;
        (*(v46 + 8))(v2, v7);
        v48 = sub_10002AC38();
        sub_100022BB4(v48, v49, v50);
        sub_10002B010();

        *(v43 + 4) = v45;
        sub_10002AE6C();
        v51 = v73;
        v52 = sub_10002F404();
        v54 = sub_100022BB4(v52, v53, &v82);
        v15 = v75;

        *(v43 + 14) = v54;
        v7 = v47;
        sub_10002B0A4(&_mh_execute_header, v41, BYTE4(v74), "Failed to load poster style from '%s', falling back to '%s'", v73, v74);
        swift_arrayDestroy();
        sub_10002AAB4();

        sub_10002AB08();
      }

      else
      {

        v60 = sub_10002AD5C();
        v61(v60);
        v46 = v9;
      }

LABEL_22:
      sub_10002AD8C();
      sub_10002F3D4();
      sub_10002AD80();

      v62 = PRPosterRoleLockScreen;
      v63 = sub_10002AECC();
      v65 = PPCreateTimeFontConfiguration(v63, v64);
      sub_100004120(&qword_10004A650, qword_1000355D8);
      sub_10002ADD0();
      v66 = swift_allocObject();
      v77 = xmmword_1000352A0;
      *(v66 + 16) = xmmword_1000352A0;
      *(v66 + 32) = v65;
      sub_1000042B4(0, &qword_10004A9B0, PRTimeFontConfiguration_ptr);
      v67 = v65;
      sub_10002AD30();
      isa = sub_10002F4A4().super.isa;

      v69 = v80;
      [v80 setPreferredTimeFontConfigurations:isa];

      sub_10002ADD0();
      v70 = swift_allocObject();
      *(v70 + 16) = v77;
      *(v70 + 32) = v14;
      sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
      v71 = sub_10002F4A4().super.isa;

      [v69 setPreferredTitleColors:v71];

      v72 = *(v46 + 8);
      v72(v81, v7);
      v72(v79, v7);
      sub_100010CE4();
      return;
    }

LABEL_25:
    sub_10002AA04();
    swift_once();
    goto LABEL_15;
  }

  sub_100010CE4();
}

uint64_t sub_100016590(uint64_t a1)
{
  result = sub_1000298E4(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_100029924(result, v3, 0, a1);
  }
}

void sub_1000165F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002B46C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v28);
  sub_10002B288();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v32 = sub_10002F1B4();
  sub_100010B10();
  v33 = sub_10002B028();
  v34(v33);
  sub_1000103AC(v31, 0, 1, v32);
  sub_100016B18(v27, v25, v23, v31, 0);
  sub_100010800(v31, &unk_10004A5E0, &qword_100035720);
  sub_10002B4BC();
}

void sub_10001670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002B46C();
  v60 = v5;
  v7 = v6;
  v58 = v8;
  v59 = v9;
  v10 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v10);
  sub_10002B288();
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
  v14 = sub_10002F3B4();
  v15 = sub_1000126D0(v7);
  v16 = 0;
  v64 = v7 & 0xC000000000000001;
  v65 = v15;
  v62 = v7 & 0xFFFFFFFFFFFFFF8;
  v63 = v7;
  v17 = &selRef_uuid;
  v61 = v13;
  while (v65 != v16)
  {
    if (v64)
    {
      v18 = sub_10002F734();
    }

    else
    {
      if (v16 >= *(v62 + 16))
      {
        goto LABEL_25;
      }

      v18 = *(v63 + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v66 = v16;
    v20 = v17;
    v21 = sub_1000292C8(v18, v17);
    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = v21;
    v24 = v22;
    v25 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v14;
    v27 = sub_10002B034();
    sub_100023198(v27, v28);
    sub_10002B234();
    if (v31)
    {
      goto LABEL_26;
    }

    v32 = v29;
    v33 = v30;
    sub_100004120(&qword_10004A9A8, &qword_100035790);
    if (sub_10002F7B4(isUniquelyReferenced_nonNull_native, v14))
    {
      v34 = sub_10002B034();
      v36 = sub_100023198(v34, v35);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_32;
      }

      v32 = v36;
    }

    v14 = v67;
    if (v33)
    {
      v38 = *(v67 + 56);
      v39 = *(v38 + 8 * v32);
      *(v38 + 8 * v32) = v25;
    }

    else
    {
      sub_10002B220(v67 + 8 * (v32 >> 6));
      v41 = (v40 + 16 * v32);
      *v41 = v23;
      v41[1] = v24;
      *(*(v14 + 56) + 8 * v32) = v25;
      v42 = *(v14 + 16);
      v31 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v31)
      {
        goto LABEL_27;
      }

      *(v14 + 16) = v43;
    }

    v17 = v20;
    sub_1000292C8(v25, v20);
    v44 = objc_allocWithZone(PFPosterMedia);
    v45 = sub_10002B388();
    v47 = sub_100021CA8(v45, v46);
    sub_10002F494();
    sub_10002AB34();
    if (v49)
    {
      sub_10002AA48(v48);
      sub_10002F4E4();
    }

    sub_10002F504();

    v16 = v66 + 1;
    v13 = v61;
  }

  sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
  v50 = sub_10001189C(1, _swiftEmptyArrayStorage);
  v51 = PFParallaxStyleFrequencyTable();
  type metadata accessor for PFParallaxStyleCategory(0);
  v52 = sub_10002F4C4();

  v53 = *(v52 + 16);
  if (!v53)
  {
    goto LABEL_28;
  }

  v54 = qword_10004B598 % v53;
  if (v54 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v55 = *(v52 + 8 * v54 + 32);
  sub_10002B254();

  [v50 setStyleCategory:v51];

  if (!__OFADD__(qword_10004B598, 1))
  {
    ++qword_10004B598;
    v56 = sub_10002F1B4();
    sub_1000103AC(v13, 1, 1, v56);
    sub_100016B18(v58, v59, v50, v13, v14);
    sub_100010800(v13, &unk_10004A5E0, &qword_100035720);

    sub_10002B4BC();
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_10002F874();
  __break(1u);
}

char *sub_100016B18(uint64_t a1, uint64_t a2, void *a3, id a4, char *a5)
{
  v306 = a3;
  v315 = sub_10002F104();
  sub_100004368();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_10002AC04();
  v314 = v16 - v15;
  v17 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v17);
  sub_10002B288();
  __chkstk_darwin(v18);
  v20 = &v294 - v19;
  sub_10002F1B4();
  sub_100004368();
  v307 = v21;
  __chkstk_darwin(v22);
  sub_100010B68();
  v319 = v23 - v24;
  sub_10002ABF8();
  __chkstk_darwin(v25);
  sub_10002B274();
  __chkstk_darwin(v26);
  sub_10002B260();
  __chkstk_darwin(v27);
  sub_10002AC50();
  v317 = v28;
  sub_10002ABF8();
  __chkstk_darwin(v29);
  v313 = &v294 - v30;
  v318 = v31;
  if (sub_1000103D4(a4, 1, v31) == 1 && !a5)
  {
    sub_100029F3C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    return a5;
  }

  v311 = v13;
  v312 = v5;
  v33 = PRPosterRoleLockScreen;
  sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
  v34 = v33;

  v304 = a1;
  v305 = a2;
  v299 = v34;
  v303 = sub_1000189FC(a1, a2, v34);
  v35 = [v303 assetDirectory];
  sub_10002F164();

  sub_10002A47C(a4, v20, &unk_10004A5E0, &qword_100035720);
  v36 = v318;
  if (sub_1000103D4(v20, 1, v318) != 1)
  {
    v57 = v307;
    v58 = v317;
    v59 = sub_10002AD5C();
    v60(v59);
    v61 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v62 = qword_10004B590;
    a5 = *(v57 + 16);
    (a5)(v6, v58, v36);
    (a5)(v7, v313, v36);
    v63 = os_log_type_enabled(v62, v61);
    v310 = v62;
    if (v63)
    {
      sub_10002AB68();
      v64 = swift_slowAlloc();
      v309 = v61;
      v65 = v64;
      a5 = swift_slowAlloc();
      *&v324 = a5;
      *v65 = 136315650;
      *(v65 + 4) = sub_10002AB14(a5, v66, &v324);
      *(v65 + 12) = 2080;
      v67 = v6;
      sub_10002F184();
      sub_10002B01C();
      v68 = v6;
      v6 = *(v57 + 8);
      (v6)(v68, v36);
      v69 = sub_10002AD8C();
      sub_100022BB4(v69, v70, v71);
      sub_10002AD80();

      *(v65 + 14) = v67;
      *(v65 + 22) = 2080;
      v72 = v7;
      sub_10002F184();
      sub_10002B01C();
      v73 = sub_10002AEC0();
      (v6)(v73);
      v74 = sub_10002AD8C();
      sub_100022BB4(v74, v75, v76);
      sub_10002AD80();
      sub_10002B3A0();

      *(v65 + 24) = v7;
      sub_10002B3AC();
      _os_log_impl(v77, v62, v78, v79, v65, 0x20u);
      swift_arrayDestroy();
      sub_10002AA18();

      sub_10002AA28();
    }

    else
    {
      v80 = *(v57 + 8);
      v72 = v80;
      v81 = sub_10002AEC0();
      v80(v81);
      v82 = v6;
      v6 = v80;
      (v80)(v82, v36);
    }

    v83 = v312;
    sub_10002ACAC();
    sub_10002AC44();
    sub_100018ABC(v84, v7, v85, v86, v87, v88, v89, v90, v294, *(&v294 + 1), v295, *&v296, v297, *(&v297 + 1), v298, v299, v300, v301, SHIDWORD(v301), v302, v303);
    v39 = v83;
    if (v83)
    {
      *&v324 = v83;
      swift_errorRetain();
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002B1C8();
      sub_10002ABEC();
      v91 = swift_dynamicCast();
      v92 = v310;
      if (v91)
      {

        v93 = v322;
        sub_10002F5D4();
        sub_10002AD74();
        if (os_log_type_enabled(v92, v94))
        {
          sub_10002AB80();
          v95 = swift_slowAlloc();
          sub_10002ABC8();
          v96 = swift_slowAlloc();
          v97 = sub_10002AF14(v96);
          *v95 = 136315394;
          *(v95 + 4) = sub_10002AB14(v97, v98, v320);
          *(v95 + 12) = 2080;
          v99 = [v93 localizedDescription];
          sub_10002F404();
          sub_10002B158();
          sub_10002AC44();
          sub_100022BB4(v100, v93, v101);
          sub_10002ADFC();
          sub_10002B3A0();

          *(v95 + 14) = v99;
          _os_log_impl(&_mh_execute_header, v92, v72, "Failed to copy resources for descriptor '%s': %s", v95, 0x16u);
          sub_10002AB8C();
          swift_arrayDestroy();
          sub_10002ACAC();
          sub_10002AB08();

          sub_10002AAB4();
        }

        swift_willThrow();
      }

      sub_10002AFA4();
      v102 = v318;
      (v6)(v58, v318);
      (v6)(v7, v102);
      goto LABEL_131;
    }

    v103 = sub_10002F5B4();
    v104 = v310;
    if (os_log_type_enabled(v310, v103))
    {
      sub_10002AB80();
      a5 = swift_slowAlloc();
      sub_10002AB68();
      v105 = swift_slowAlloc();
      *&v324 = v105;
      *a5 = 134218242;
      sub_10002AF64();
      *(a5 + 14) = sub_10002AB14(v106, v107, &v324);
      _os_log_impl(&_mh_execute_header, v104, v103, "Successfully copied %ld resources for descriptor '%s'", a5, 0x16u);
      sub_100004168(v105);
      sub_10002AA28();

      sub_10002ACAC();
      sub_10002AB08();
    }

    (v6)(v58, v318);
    goto LABEL_26;
  }

  sub_100010800(v20, &unk_10004A5E0, &qword_100035720);
  if (!a5)
  {
    v39 = v312;
    sub_10002AC44();
    sub_10002ACAC();
LABEL_26:
    a4 = v306;
    goto LABEL_28;
  }

  type metadata accessor for PhotosPosterUpdaterUtils();
  sub_10002AFBC(&v325);
  sub_10002AC44();
  v37 = v312;
  sub_100003510(v38, v7, a5, 1, 1);
  v39 = v37;
  if (v37)
  {
    *&v324 = v37;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002B1C8();
    sub_10002ABEC();
    swift_dynamicCast();
    sub_10002ACAC();
    if (v40)
    {

      v39 = v322;
      LOBYTE(v41) = sub_10002F5D4();
      if (qword_100049688 == -1)
      {
LABEL_9:
        if (os_log_type_enabled(qword_10004B590, v41))
        {
          sub_10002AB80();
          v42 = swift_slowAlloc();
          sub_10002ABC8();
          v43 = swift_slowAlloc();
          v44 = sub_10002AF14(v43);
          *v42 = 136315394;
          v46 = sub_10002AB14(v44, v45, v320);
          sub_10002AF04(v46);
          v47 = [v39 localizedDescription];
          sub_10002F404();
          sub_10002B158();
          v48 = sub_10002AD30();
          sub_100022BB4(v48, v49, v50);
          sub_10002ADFC();

          *(v42 + 14) = v47;
          sub_10002AD50();
          _os_log_impl(v51, v52, v53, v54, v55, v56);
          sub_10002AB8C();
          swift_arrayDestroy();
          sub_10002AA18();

          sub_10002AA38();

          swift_willThrow();

          sub_10002AFA4();
          (*(v307 + 8))(v313, v318);
LABEL_131:

          return a5;
        }

        swift_willThrow();

        sub_10002AFA4();
LABEL_130:
        (*(v307 + 8))(v7, v318);
        goto LABEL_131;
      }

LABEL_154:
      sub_10002AA04();
      swift_once();
      goto LABEL_9;
    }

    v122 = sub_10002AA98();
    v123(v122);

LABEL_128:
    sub_10002AFA4();
    goto LABEL_131;
  }

  sub_10002ACAC();
LABEL_28:
  sub_100015D38();
  v108 = [a4 media];
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  sub_10002AED8();
  v298 = v109;
  v110 = sub_10002F4C4();

  if (!sub_1000126D0(v110))
  {

    goto LABEL_50;
  }

  if ((v110 & 0xC000000000000001) != 0)
  {
    v111 = sub_10002F734();
  }

  else
  {
    if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }

    v111 = *(v110 + 32);
  }

  v112 = v111;

  v113 = sub_10002AFBC(&v325);
  v115 = PPGalleryOptionsForDescriptorType([v113 v114], v112);
  v116 = sub_1000292C8(v110, &selRef_displayNameLocalizationKey);
  if (v117)
  {
    sub_1000290BC(v116, v117, v115);

    v118 = [v306 shuffleConfiguration];
    if (v118)
    {
      v7 = v118;
      if ([v118 shuffleType])
      {
        goto LABEL_35;
      }

      v273 = sub_100029114(v7);
      if (!v273)
      {
        goto LABEL_35;
      }

      if (*(v273 + 16) != 1)
      {

        goto LABEL_36;
      }

      v274 = sub_100016590(v273);
      v276 = v275;

      if (!v276)
      {
LABEL_35:

        goto LABEL_36;
      }

      v317 = v112;
      v277 = objc_opt_self();
      sub_100004120(&qword_10004A838, qword_1000356F8);
      sub_10002AC74();
      v278 = swift_allocObject();
      *(v278 + 16) = xmmword_1000352B0;
      *(v278 + 32) = v274;
      *(v278 + 40) = v276;

      v279.super.isa = sub_10002F4A4().super.isa;
      v312 = v274;
      isa = v279.super.isa;

      v108 = sub_100011D94();
      v281 = [v108 librarySpecificFetchOptions];

      v282 = [v277 fetchPersonsWithLocalIdentifiers:isa options:v281];
      if ([v282 firstObject])
      {
        sub_10002B328();

        v283 = [v108 px_localizedName];
        v112 = sub_10002F404();

        sub_10002AD5C();
        if (sub_10002F454() < 1)
        {
        }

        else
        {
          v284 = sub_10002AD5C();
          sub_100029174(v284, v285, v115);
        }
      }

      else
      {
        v108 = v312;
        v112 = sub_10002F5D4();
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        v286 = qword_10004B590;
        if (os_log_type_enabled(qword_10004B590, v112))
        {
          sub_10002AB74();
          v287 = swift_slowAlloc();
          LODWORD(v316) = v112;
          v112 = v287;
          sub_10002AB68();
          v310 = swift_slowAlloc();
          *&v324 = v310;
          *v112 = 136315138;
          v288 = sub_10002B37C();
          sub_100022BB4(v288, v289, v290);
          sub_10002B328();

          *(v112 + 1) = v108;
          sub_10002B3AC();
          _os_log_impl(v291, v286, v292, v293, v112, 0xCu);
          v108 = v310;
          sub_100004168(v310);
          sub_10002AA38();

          sub_10002AB08();
        }

        else
        {
        }
      }

      sub_10002B3A0();
    }
  }

LABEL_36:
  sub_1000292C8(v115, &selRef_displayNameLocalizationKey);
  sub_10002AC44();
  if (v120)
  {
    if (v119 == 0xD00000000000002DLL && v120 == 0x8000000100034750)
    {
    }

    else
    {
      v108 = sub_10002F854();

      if ((v108 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if ([v115 featuredConfidenceLevel] == 2)
    {
      [v115 setFeaturedConfidenceLevel:1];
    }
  }

LABEL_48:
  *&v324 = 0;
  if (![a5 storeGalleryOptions:v115 error:&v324])
  {
    v195 = v324;
    sub_100010B50();
    v196 = sub_10002F0F4();

    swift_willThrow();
    *&v324 = v196;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002B1C8();
    sub_10002ABEC();
    if (swift_dynamicCast())
    {

      v197 = v322;
      v198 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (os_log_type_enabled(qword_10004B590, v198))
      {
        sub_10002AB80();
        v199 = swift_slowAlloc();
        sub_10002ABC8();
        v200 = swift_slowAlloc();
        v319 = v200;
        *&v320[0] = v200;
        *v199 = 136315394;
        v202 = sub_10002AB14(v200, v201, v320);
        sub_10002AF04(v202);
        a5 = v197;
        v203 = [v197 localizedDescription];
        v7 = v112;
        v204 = sub_10002F404();
        v206 = v205;

        v207 = v204;
        v112 = v7;
        v208 = sub_100022BB4(v207, v206, v320);

        *(v199 + 14) = v208;
        sub_10002ACAC();
        sub_10002AD50();
        _os_log_impl(v209, v210, v211, v212, v213, v214);
        sub_10002AFBC(&v326);
        swift_arrayDestroy();
        sub_10002AC44();
        sub_10002AB08();

        sub_10002AA38();
      }

      swift_willThrow();

      sub_10002AFA4();
      goto LABEL_130;
    }

    v270 = sub_10002AA98();
    v271(v270);

    goto LABEL_128;
  }

  v124 = v324;

LABEL_50:
  v108 = v311;
  v324 = 0u;
  v325 = 0u;
  v125 = [v306 media];
  v6 = sub_10002F4C4();

  v317 = v6;
  v126 = sub_1000126D0(v6);
  if (!v126)
  {
    v300 = 1;
    goto LABEL_104;
  }

  v128 = v126;
  if (v126 < 1)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v129 = 0;
  v316 = v317 & 0xC000000000000001;
  v311 = (v108 + 104);
  v310 = (v108 + 8);
  v309 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v308 = v307 + 8;
  v300 = 1;
  *&v127 = PXRectUnit[1];
  v302 = PXRectUnit[0];
  v301 = v127;
  *&v127 = 136315394;
  v297 = v127;
  *&v127 = 136315650;
  v294 = v127;
  v312 = v126;
  do
  {
    if (v316)
    {
      v130 = sub_10002F734();
    }

    else
    {
      v130 = *(v317 + 8 * v129 + 32);
    }

    v131 = v130;
    v132 = sub_1000292C8(v130, &selRef_assetUUID);
    if (v133)
    {
      *&v322 = v132;
      *(&v322 + 1) = v133;
      (*v311)(v314, v309, v315);
      sub_100029F90();
      sub_10002F1A4();
      v134 = sub_10002AD5C();
      v135(v134);

      v136 = objc_opt_self();
      sub_10002F134(v137);
      v139 = v138;
      *&v322 = 0;
      v140 = [v136 loadCompoundLayerStackFromWallpaperURL:v138 options:0 error:&v322];

      if (v140)
      {
        v141 = v322;
        v142 = [v140 portraitLayerStack];
        if (v142)
        {
          v143 = v142;
          v144 = [v142 depthEnabled];
        }

        else
        {
          v144 = 2;
        }

        v163 = [v140 landscapeLayerStack];
        if (v163)
        {
          v164 = v163;
          v165 = [v163 depthEnabled];
        }

        else
        {
          v165 = 2;
        }

        if (v144 != 2 && (v144 & 1) != 0 || v165 != 2 && (v165 & 1) != 0)
        {
          v300 = 0;
        }

        sub_10002A47C(&v324, &v322, &qword_10004A5D8, qword_100035580);
        if (*(&v323 + 1))
        {
          v166 = sub_10002AC14();
          v167(v166, v318);

          sub_100010800(&v322, &qword_10004A5D8, qword_100035580);
        }

        else
        {
          sub_100010800(&v322, &qword_10004A5D8, qword_100035580);
          v168 = [v140 portraitLayerStack];
          v169 = 0.0;
          v170 = 0.0;
          if (v168)
          {
            v171 = v168;
            v172 = [v168 layout];
            sub_10002AE08();
            PUPosterAdditionalViewTitleHeight();
            v170 = v173;
          }

          v174 = [v140 landscapeLayerStack];
          if (v174)
          {
            v175 = v174;
            v176 = [v174 layout];
            sub_10002AE08();
            PUPosterAdditionalViewTitleHeight();
            v169 = v177;
          }

          v178 = [objc_opt_self() deviceConfiguration];
          v179 = v178;
          if (v170 > 0.0)
          {
            v180 = [v178 portraitConfiguration];
            [v180 timeRect];
            v296 = v170;

            sub_10002B308();
            v181 = v296;
            PXRectFlippedVertically();
            v170 = v181 + CGRectGetMaxY(v327);
          }

          v182 = 0.0;
          if (v169 > 0.0)
          {
            v183 = [v179 landscapeConfiguration];
            if (v183)
            {
              v184 = v183;
              [v183 timeRect];
              sub_10002B308();
              PXRectFlippedVertically();
              MaxY = CGRectGetMaxY(v328);

              v182 = v169 + MaxY;
            }
          }

          if (PPPosterPreferredTitleStyleForLayoutProperties(v170, v182))
          {
            sub_10002F674();
            swift_unknownObjectRelease();
          }

          else
          {
            v322 = 0u;
            v323 = 0u;
          }

          v186 = sub_10002B1C8();
          sub_100029FE4(v186, v187);
          v188 = sub_10002F5E4();
          if (qword_100049688 != -1)
          {
            sub_10002AA04();
            swift_once();
          }

          v189 = qword_10004B590;
          if (os_log_type_enabled(qword_10004B590, v188))
          {
            sub_10002AB68();
            v7 = v39;
            v190 = swift_slowAlloc();
            sub_10002AB68();
            v191 = swift_slowAlloc();
            *&v322 = v191;
            *v190 = v294;
            *(v190 + 4) = sub_10002AB14(v191, v192, &v322);
            *(v190 + 12) = 2048;
            *(v190 + 14) = v170;
            *(v190 + 22) = 2048;
            *(v190 + 24) = v182;
            _os_log_impl(&_mh_execute_header, v189, v188, "Calculated title style for descriptor '%s': timeMaxYPortrait: %f, timeMaxYLandscape: %f", v190, 0x20u);
            sub_100004168(v191);
            sub_10002AB08();

            v39 = v7;
            sub_10002AC44();
            sub_10002AB08();
          }

          v193 = sub_10002AC14();
          v194(v193, v318);
        }

        v128 = v312;
      }

      else
      {
        v145 = v322;
        sub_100010B50();
        sub_10002F0F4();

        swift_willThrow();
        v146 = sub_10002F5D4();
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        v147 = qword_10004B590;
        v148 = os_log_type_enabled(qword_10004B590, v146);
        v149 = v318;
        if (v148)
        {
          sub_10002AB80();
          v150 = swift_slowAlloc();
          sub_10002ABE0();
          v151 = swift_slowAlloc();
          sub_10002AB68();
          v152 = swift_slowAlloc();
          *&v322 = v152;
          *v150 = v297;
          *(v150 + 4) = sub_10002AB14(v152, v153, &v322);
          *(v150 + 12) = 2112;
          swift_errorRetain();
          v154 = _swift_stdlib_bridgeErrorToNSError();
          *(v150 + 14) = v154;
          *v151 = v154;
          sub_10002B2FC(&_mh_execute_header, v147, v146, "Failed to load layer stack for descriptor '%s' to provide accurate gallery display options: %@");
          _os_log_impl(v155, v156, v157, v158, v159, v160);
          sub_100010800(v151, &qword_100049CC0, &qword_1000355C0);
          sub_10002AAC4();

          sub_100004168(v152);
          v149 = v318;
          sub_10002AB08();

          sub_10002AA28();
        }

        v128 = v312;
        v161 = sub_10002AC14();
        v162(v161, v149);

        v39 = 0;
      }
    }

    else
    {
    }

    ++v129;
  }

  while (v128 != v129);
LABEL_104:

  v215 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v41 = qword_10004B590;
  v216 = sub_10002AD68();
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    sub_10002ABC8();
    v219 = swift_slowAlloc();
    v220 = sub_10002AF14(v219);
    *v218 = 136315650;
    *(v218 + 4) = sub_10002AB14(v220, v221, v320);
    *(v218 + 12) = 1024;
    *(v218 + 14) = v300 & 1;
    *(v218 + 18) = 2080;
    swift_beginAccess();
    sub_10002A47C(&v324, &v322, &qword_10004A5D8, qword_100035580);
    sub_100004120(&qword_10004A5D8, qword_100035580);
    v222 = sub_10002F414();
    v7 = sub_100022BB4(v222, v223, v320);

    *(v218 + 20) = v7;
    sub_10002AC44();
    _os_log_impl(&_mh_execute_header, v41, v215, "Providing gallery options for descriptor '%s': depthDisabled: %{BOOL}d, titleStyle: %s", v218, 0x1Cu);
    sub_10002AB8C();
    swift_arrayDestroy();
    sub_10002AA18();

    sub_10002AA78();
  }

  swift_beginAccess();
  sub_10002A47C(&v324, &v322, &qword_10004A5D8, qword_100035580);
  v224 = *(&v323 + 1);
  if (*(&v323 + 1))
  {
    v225 = sub_100010414(&v322, *(&v323 + 1));
    v226 = *(v224 - 1);
    __chkstk_darwin(v225);
    sub_10002AC04();
    (*(v226 + 16))(v228 - v227);
    sub_10002AFF8();
    v229 = sub_10002F844();
    v7 = (v226 + 8);
    v230 = sub_10002AFF8();
    v231(v230);
    sub_10002AC44();
    sub_100004168(&v322);
  }

  else
  {
    v229 = 0;
  }

  v232 = v306;
  v233 = PPCreatePosterDescriptorGalleryOptions(v306, v229);
  sub_10002B004();
  swift_unknownObjectRelease();
  v234 = v303;
  [v303 setPreferredGalleryOptions:v224];

  v235 = sub_100018A6C(v232);
  sub_100029174(v235, v236, v234);
  v237 = [v232 descriptorType] != 5;
  PPPosterSetPreferredRenderingConfigurationForDescriptor(v234, v300 & 1, v237);
  v6 = &type metadata for String;
  v108 = sub_10002F3B4();
  a5 = [v232 media];
  v238 = sub_10002F4C4();

  if (!sub_1000126D0(v238))
  {

    goto LABEL_119;
  }

  if ((v238 & 0xC000000000000001) == 0)
  {
    if (!*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_154;
    }

    v239 = *(v238 + 32);
    goto LABEL_115;
  }

LABEL_152:
  v239 = sub_10002F734();
LABEL_115:
  a5 = v239;

  objc_opt_self();
  v240 = swift_dynamicCastObjCClass();
  if (v240)
  {
    [v240 suggestionSubtype];
    v241 = PHSuggestionStringWithSubtype();
    v7 = sub_10002F404();
    v243 = v242;

    *(&v323 + 1) = v6;
    *&v322 = v7;
    *(&v322 + 1) = v243;
    sub_10002AC44();
    sub_1000107F0(&v322, v320);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v321 = v108;
    sub_100028E54(v320, 0xD00000000000001CLL, 0x8000000100034730, isUniquelyReferenced_nonNull_native);

    v108 = v321;
  }

  else
  {
  }

LABEL_119:
  sub_1000112EC(v108);
  sub_10002B254();

  *&v322 = 0;
  sub_10002ACAC();
  if (sub_10002903C(v245, v246, a5))
  {
    v247 = *(v307 + 8);
    v248 = v322;
    v247(v7, v318);
    sub_10002AFA4();
    sub_100010800(&v324, &qword_10004A5D8, qword_100035580);
  }

  else
  {
    v249 = v322;
    sub_10002B254();
    v250 = sub_10002F0F4();

    swift_willThrow();
    *&v322 = v250;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002AEA8();
    if (swift_dynamicCast())
    {

      v251 = *&v320[0];
      sub_10002F5D4();
      v252 = sub_10002AF34();
      if (os_log_type_enabled(v252, v253))
      {
        sub_10002AB80();
        v254 = swift_slowAlloc();
        sub_10002ABC8();
        a5 = swift_slowAlloc();
        v321 = a5;
        *v254 = 136315394;
        v256 = sub_10002AB14(a5, v255, &v321);
        sub_10002AF04(v256);
        v257 = [v251 localizedDescription];
        sub_10002F404();
        sub_10002B158();
        sub_10002AC44();
        sub_100022BB4(v258, v251, v259);
        sub_10002ADFC();

        *(v254 + 14) = v257;
        sub_10002AD50();
        _os_log_impl(v260, v261, v262, v263, v264, v265);
        sub_10002AB8C();
        swift_arrayDestroy();
        sub_10002ACAC();
        sub_10002AB08();

        sub_10002AA38();
      }

      swift_willThrow();

      sub_10002AFA4();
      v266 = sub_10002AA98();
      v267(v266);
    }

    else
    {
      v268 = sub_10002AA98();
      v269(v268);

      sub_10002AFA4();
    }

    sub_100010800(&v324, &qword_10004A5D8, qword_100035580);
  }

  return a5;
}

id sub_1000189FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();

  v5 = [swift_getObjCClassFromMetadata() mutableDescriptorWithIdentifier:v4 role:a3];

  return v5;
}

unint64_t sub_100018A6C(void *a1)
{
  if ([a1 posterType] == 2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000026;
  }
}

void sub_100018ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  sub_10002B46C();
  v22 = v21;
  v126 = v23;
  v25 = v24;
  sub_10002B208(__stack_chk_guard);
  v134 = sub_10002F1B4();
  sub_100004368();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100010B68();
  v114 = (v29 - v30);
  sub_10002ABF8();
  v32 = __chkstk_darwin(v31);
  v34 = &v111 - v33;
  __chkstk_darwin(v32);
  sub_10002AC50();
  v123 = v35;
  sub_10002ABF8();
  __chkstk_darwin(v36);
  sub_10002AC50();
  v122 = v37;
  sub_10002ABF8();
  v39 = __chkstk_darwin(v38);
  v41 = &v111 - v40;
  __chkstk_darwin(v39);
  sub_10002AC50();
  v133 = v42;
  sub_10002ABF8();
  __chkstk_darwin(v43);
  v124 = &v111 - v44;
  v45 = [objc_opt_self() defaultManager];
  v125 = v25;
  sub_10002F134(v46);
  v48 = v47;
  v137[0] = 0;
  v49 = [v45 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:0 options:16 error:v137];

  v50 = v137[0];
  if (!v49)
  {
    v94 = v137[0];
    sub_100010D64();
    sub_10002F0F4();

    swift_willThrow();
    goto LABEL_22;
  }

  v112 = v34;
  v113 = v21;
  v51 = sub_10002F4C4();
  v52 = v50;

  v53 = 0;
  v128 = *(v51 + 16);
  v132 = v27 + 16;
  *&v54 = 136315394;
  v115 = v54;
  v127 = v45;
  v119 = v27 + 8;
  v121 = v27;
  v116 = v41;
  v120 = v51;
  while (1)
  {
    if (v128 == v53)
    {

      goto LABEL_22;
    }

    if (v53 >= *(v51 + 16))
    {
      __break(1u);
LABEL_24:
      sub_10002AA04();
      swift_once();
      goto LABEL_16;
    }

    v55 = v121;
    v56 = v51 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53;
    v57 = *(v121 + 16);
    v58 = v41;
    v59 = v124;
    v60 = v134;
    v129 = v53;
    v130 = v57;
    (v57)(v124, v56, v134);
    sub_10002F114();
    sub_10002F154();

    sub_10002F114();
    v61 = v59;
    v41 = v58;
    v131 = *(v55 + 8);
    v131(v61, v60);
    sub_10002F154();

    sub_10002F134(v62);
    v64 = v63;
    sub_10002F134(v65);
    v67 = v66;
    v137[0] = 0;
    v68 = [v127 copyItemAtURL:v64 toURL:v66 error:v137];

    if (!v68)
    {
      break;
    }

    v69 = v137[0];
    v22 = sub_10002F5B4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v70 = qword_10004B590;
    v71 = v122;
    v72 = v130;
    (v130)(v122, v133, v134);
    v73 = v123;
    v74 = sub_10002B37C();
    (v72)(v74);
    if (os_log_type_enabled(v70, v22))
    {
      sub_10002AB80();
      v75 = swift_slowAlloc();
      sub_10002ABC8();
      v130 = swift_slowAlloc();
      v137[0] = v130;
      *v75 = v115;
      sub_100029E04();
      v118 = v70;
      v76 = v71;
      v77 = v73;
      v78 = v134;
      sub_10002F824();
      sub_10002B01C();
      v117 = v22;
      v22 = v131;
      v131(v76, v78);
      v79 = sub_10002AD8C();
      sub_100022BB4(v79, v80, v81);
      sub_10002AD80();
      v82 = v133;

      *(v75 + 4) = v76;
      *(v75 + 12) = 2080;
      v83 = sub_10002F824();
      v85 = v84;
      v22(v77, v78);
      v86 = sub_10002ADC4();
      sub_100022BB4(v86, v85, v87);
      sub_10002AE28();

      *(v75 + 14) = v83;
      sub_10002B3AC();
      _os_log_impl(&_mh_execute_header, v118, v88, "Successfully copied '%s' to '%s'", v75, 0x16u);
      swift_arrayDestroy();
      v89 = v116;
      sub_10002AB08();

      sub_10002AAB4();

      v90 = sub_10002B388();
      (v22)(v90);
      v91 = v82;
      v41 = v89;
      v22(v91, v78);
    }

    else
    {
      sub_10002B214();
      v92 = v131;
      (v131)();
      v93 = sub_10002AFF8();
      v92(v93);
      (v92)(v41, v73);
      (v92)(v133, v73);
    }

    v51 = v120;
    v53 = v129 + 1;
  }

  v95 = v137[0];

  v96 = sub_10002F0F4();

  swift_willThrow();
  v137[0] = v96;
  swift_errorRetain();
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (!swift_dynamicCast())
  {

    sub_10002B214();
    v103 = v131;
    goto LABEL_21;
  }

  v22 = v135;
  LOBYTE(v41) = sub_10002F5D4();
  if (qword_100049688 != -1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v97 = qword_10004B590;
  v98 = v112;
  v99 = v134;
  v100 = v130;
  (v130)(v112, v133, v134);
  v95 = v114;
  (v100)(v114, v116, v99);
  if (os_log_type_enabled(v97, v41))
  {
    sub_10002AB68();
    v101 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v136 = v132;
    *v101 = 136315650;
    v102 = sub_100029E04();
    v130 = v97;
    sub_10002F824();
    sub_10002B340();
    v103 = v131;
    v131(v98, v134);
    v104 = sub_10002AC38();
    sub_100022BB4(v104, v105, v106);
    sub_10002B010();

    *(v101 + 4) = v98;
    *(v101 + 12) = 2080;
    sub_10002F824();
    sub_10002B334();
    (v103)(v95, v134);
    sub_100022BB4(v95, v102, &v136);
    sub_10002AEB4();

    *(v101 + 14) = v95;
    *(v101 + 22) = 2080;
    v107 = [v22 localizedDescription];
    v108 = sub_10002F404();
    v110 = v109;

    sub_100022BB4(v108, v110, &v136);
    sub_10002B010();

    *(v101 + 24) = v107;
    _os_log_impl(&_mh_execute_header, v130, v41, "Failed to copy '%s' to '%s': %s", v101, 0x20u);
    v95 = v132;
    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AAC4();
  }

  else
  {
    sub_10002B214();
    v103 = v131;
    (v131)();
    (v103)(v98, v95);
  }

  swift_willThrow();

  sub_10002B214();
LABEL_21:
  v103();
  (v103)(v133, v95);

LABEL_22:
  sub_10002B4BC();
}

void *sub_1000193F4(uint64_t a1, void *a2, char a3)
{
  v6 = _swiftEmptyArrayStorage;
  v70[0] = _swiftEmptyArrayStorage;
  if (a3)
  {
    v3 = v63;
    v6 = sub_10001A608(a2);
  }

  if (!sub_1000126D0(v6))
  {

    v7 = objc_opt_self();
    aBlock[4] = sub_100019C4C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CB4;
    aBlock[3] = &unk_100041378;
    v8 = [v7 coldStartPortraitWallpaperInPhotoLibrary:a2 passingFilterBlock:_Block_copy(aBlock) maximumNumberOfTries:PNSuggestionColdStartPortraitWallpaperMaximumNumberOfFilterTries];
    v9 = sub_10002AE40();
    _Block_release(v9);
    sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
    sub_100010C70();
    v6 = sub_10002F4C4();

    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v3 = qword_10004B590;
    v10 = sub_10002AE9C();
    if (os_log_type_enabled(v10, v11))
    {

      sub_10002AB74();
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v4 = sub_1000126D0(v6);

      *(v12 + 4) = v4;

      sub_10002AE4C(&_mh_execute_header, v13, v14, "Chose %ld fallback Portrait FeaturedPhotos");
      sub_10002AB08();
    }

    else
    {
    }
  }

  v67 = v6 & 0xC000000000000001;
  v68 = sub_1000126D0(v6);
  v66 = v6 & 0xFFFFFFFFFFFFFF8;

  v15 = 0;
  v62 = _swiftEmptyArrayStorage;
  v61 = 136315138;
  v65 = v6;
  while (1)
  {
    v16 = v15;
    if (v68 == v15)
    {
      break;
    }

    if (v67)
    {
      sub_10002B034();
      v17 = sub_10002F734();
    }

    else
    {
      if (v15 >= *(v66 + 16))
      {
        goto LABEL_41;
      }

      v17 = *(v6 + 8 * v15 + 32);
    }

    v18 = v17;
    ++v15;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_100004120(&qword_10004A838, qword_1000356F8);
    sub_10002AC74();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000352B0;
    result = sub_1000292C8(v18, &selRef_uuid);
    if (!v21)
    {
      __break(1u);
      return result;
    }

    sub_10002B334();
    v22 = objc_opt_self();
    *(v19 + 32) = v3;
    *(v19 + 40) = v4;
    sub_10002F4A4();
    sub_100010B50();

    v23 = [v22 descriptorIdentifierForDescriptorType:1 uuids:v3];

    v24 = sub_10002F404();
    if (*(a1 + 16) && (v25 = sub_10002AE34(), v27 = sub_100023198(v25, v26), (v28 & 1) != 0))
    {
      v44 = *(*(a1 + 56) + 8 * v27);
      v45 = sub_10002F5E4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v4 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v45))
      {
        sub_10002AB74();
        v46 = swift_slowAlloc();
        sub_10002AB68();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = v61;
        v48 = sub_10002AE34();
        sub_100022BB4(v48, v49, v50);
        sub_10002B364();

        *(v46 + 4) = v24;
        sub_10002B11C(&_mh_execute_header, v4, v45, "Fallback FeaturedPhoto descriptor '%s' didn't change, keeping", v61);
        sub_100004168(v47);
        sub_10002AA88();

        sub_10002AA28();
      }

      else
      {
      }

      v6 = v65;
      v54 = v44;
      v3 = v70;
      sub_10002F494();
      sub_10002AF74();
      if (v53)
      {
        sub_10002ABBC(v55);
        sub_10002F4E4();
      }

      sub_10002F504();

      v62 = v70[0];
    }

    else
    {
      sub_100004120(&qword_10004A650, qword_1000355D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000352A0;
      *(inited + 32) = v18;
      v30 = v18;
      v31 = sub_10002AE34();
      sub_10001670C(v31, v32, inited, v33, v34);
      v36 = v35;
      swift_setDeallocating();
      sub_10002288C();
      v37 = sub_10002F5E4();
      v38 = v37;
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v4 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v38))
      {
        sub_10002AB74();
        v39 = swift_slowAlloc();
        sub_10002AB68();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = v61;
        v41 = sub_10002AE34();
        sub_100022BB4(v41, v42, v43);
        sub_10002B364();

        *(v39 + 4) = v24;
        sub_10002B11C(&_mh_execute_header, v4, v38, "Successfully created fallback FeaturedPhoto descriptor '%s'", v61);
        sub_100004168(v40);
        sub_10002AA88();

        sub_10002AA28();
      }

      else
      {
      }

      v6 = v65;
      v51 = v36;
      v3 = v70;
      sub_10002F494();
      sub_10002AF74();
      if (v53)
      {
        sub_10002ABBC(v52);
        sub_10002F4E4();
      }

      sub_10002F504();
      v62 = v70[0];
    }
  }

  swift_bridgeObjectRelease_n();
  sub_10002F5E4();
  if (qword_100049688 == -1)
  {
    goto LABEL_37;
  }

LABEL_42:
  sub_10002AA04();
  swift_once();
LABEL_37:
  v56 = sub_10002AE9C();
  if (os_log_type_enabled(v56, v57))
  {

    sub_10002AB74();
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = sub_1000126D0(v62);

    sub_10002AE4C(&_mh_execute_header, v59, v60, "Created %ld fallback FeaturedPhoto descriptors.");
    sub_10002AB08();
  }

  return v62;
}

id sub_100019C4C(uint64_t a1)
{
  v1 = [objc_allocWithZone(PHWallpaperAsset) initWithPhotoAsset:a1];
  v2 = [objc_opt_self() tryLoadSegmentationForColdAsset:v1];

  return v2;
}

uint64_t sub_100019CB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_100019D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, id a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002B3F0();
  a25 = v27;
  a26 = v28;
  if ((PXSolariumEnabled() & 1) == 0)
  {
    v29 = objc_opt_self();
    a12 = 0;
    v30 = [v29 openPhotoLibraryWithWellKnownIdentifier:1 error:&a12];
    if (v30)
    {
      v31 = v30;
      v32 = a12;
      v33 = [v31 librarySpecificFetchOptions];
      [v33 setFetchLimit:1];
      sub_1000042B4(0, &qword_10004A978, NSCompoundPredicate_ptr);
      sub_100004120(&qword_10004A650, qword_1000355D8);
      sub_10002AC74();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000355F0;
      sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
      sub_100004120(&unk_100049E20, &qword_1000352F8);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100035290;
      *(v35 + 56) = &type metadata for UInt16;
      *(v35 + 64) = &protocol witness table for UInt16;
      *(v35 + 32) = 602;
      *(v35 + 96) = &type metadata for UInt16;
      *(v35 + 104) = &protocol witness table for UInt16;
      *(v35 + 72) = 652;
      *(v34 + 32) = sub_10002F5A4();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000352B0;
      *(v36 + 56) = &type metadata for UInt16;
      *(v36 + 64) = &protocol witness table for UInt16;
      *(v36 + 32) = 4;
      *(v34 + 40) = sub_10002F5A4();
      v37 = sub_10001A17C(v34);
      v38 = sub_10002B358();
      [v38 v39];

      v40 = [objc_opt_self() fetchSuggestionsWithOptions:v33];
      v41 = [v40 count];
      v42 = sub_10002F5E4();
      if (v41)
      {
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        sub_10002F2D4(v42, &_mh_execute_header, qword_10004B590, "Should include CreateAFacePeople descriptor.", 44, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        if (qword_100049688 != -1)
        {
          sub_10002AA04();
          swift_once();
        }

        sub_10002F2D4(v42, &_mh_execute_header, qword_10004B590, "No people suggestions. Will not add CreateAFacePeople descriptor.", 65, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v43 = a12;
      sub_100010D64();
      v44 = sub_10002F0F4();

      swift_willThrow();
      a12 = v44;
      sub_100004120(&qword_10004A630, &unk_100035270);
      sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
      sub_10002ABEC();
      swift_dynamicCast();
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      if (sub_10002B104())
      {
        sub_10002AB74();
        v45 = swift_slowAlloc();
        sub_10002AB68();
        v46 = swift_slowAlloc();
        a13 = v46;
        *v45 = 136315138;
        v47 = [a10 localizedDescription];
        sub_10002F404();
        sub_10002B31C();

        v48 = sub_10002AD30();
        sub_100022BB4(v48, v49, v50);
        sub_10002ADFC();

        *(v45 + 4) = v47;
        sub_10002AD04();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        sub_100004168(v46);
        sub_10002AA18();

        sub_10002AA78();
      }
    }
  }

  sub_10002B3D4();
}

id sub_10001A17C(uint64_t a1)
{
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  isa = sub_10002F4A4().super.isa;

  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];

  return v2;
}

uint64_t sub_10001A200()
{
  if (PXSolariumEnabled())
  {
    return 0;
  }

  v0 = [objc_opt_self() currentDeviceSupportsSettlingEffect];
  v1 = sub_10002F5E4();
  if (!v0)
  {
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    sub_10002F2D4(v1, &_mh_execute_header, qword_10004B590, "Device not supported. Don't include CreateAFaceLivePhoto descriptor.", 68, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  sub_10002F2D4(v1, &_mh_execute_header, qword_10004B590, "Should include CreateAFaceLivePhoto descriptor.", 47, 2, _swiftEmptyArrayStorage);
  return 1;
}

void *sub_10001A2F4(uint64_t a1, uint64_t a2)
{
  v26 = sub_100023B00(a1);
  sub_100023A7C(&v26, sub_100029DC4, sub_100023BBC);
  v3 = v26;
  v4 = *(v26 + 16);
  if (v4)
  {
    v26 = _swiftEmptyArrayStorage;
    sub_1000233A8(0, v4, 0);
    v5 = 48;
    v6 = v26;
    do
    {
      v7 = *(v3 + v5);
      v26 = v6;
      v9 = v6[2];
      v8 = v6[3];

      if (v9 >= v8 >> 1)
      {
        sub_1000233A8((v8 > 1), v9 + 1, 1);
        v6 = v26;
      }

      v6[2] = v9 + 1;
      v6[v9 + 4] = v7;
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v10 = 0;
  v11 = 0;
  v12 = v6[2];
  while (v12 != v10)
  {
    if (v10 >= v6[2])
    {
      goto LABEL_48;
    }

    v13 = v6[v10 + 4];
    if (v13 >> 62)
    {
      v14 = sub_10002F7D4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 > v11)
    {
      v11 = v14;
    }

    ++v10;
  }

  v26 = _swiftEmptyArrayStorage;
  if (v11 > 0)
  {
    v15 = 0;
    v16 = _swiftEmptyArrayStorage;
    while (!v12)
    {
LABEL_40:
      if (__OFADD__(v15++, 1))
      {
        goto LABEL_49;
      }

      if (v15 >= v11)
      {

        return v16;
      }
    }

    v17 = 0;
    while (v17 < v6[2])
    {
      v18 = v6[v17 + 4];
      if (v18 >> 62)
      {
        v19 = sub_10002F7D4();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 < v19)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {

          sub_10002AFE0();
          sub_10002F734();
        }

        else
        {
          if (v15 < 0)
          {
            goto LABEL_46;
          }

          if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v20 = *(v18 + 8 * v15 + 32);
        }

        sub_10002F494();
        sub_10002AF74();
        if (v22)
        {
          sub_10002ABBC(v21);
          sub_10002F4E4();
        }

        sub_10002F504();
        v16 = v26;
        if (v26 >> 62)
        {
          v23 = sub_10002F7D4();
        }

        else
        {
          v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v23 >= a2)
        {
          v15 = v11;
          goto LABEL_40;
        }
      }

      if (v12 == ++v17)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);

    __break(1u);
    return result;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10001A608(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100035600;
  *(sub_10002ADDC(v3, &type metadata for UInt16) + 112) = 4;
  v4 = sub_10002F5A4();
  [v2 setPredicate:v4];

  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000352A0;
  v6 = objc_allocWithZone(NSSortDescriptor);
  *(v5 + 32) = sub_100021E54(1684632949, 0xE400000000000000, 1);
  sub_1000291D8(v5, v2, &qword_10004A950, NSSortDescriptor_ptr, &selRef_setSortDescriptors_);
  v7 = [objc_opt_self() fetchSuggestionsWithOptions:v2];
  v8 = [v7 fetchedObjects];
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = v8;
  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  sub_100010C70();
  v10 = sub_10002F4C4();

  if (sub_1000126D0(v10) < 1)
  {

LABEL_40:
    v12 = sub_10002F5E4();
    if (qword_100049688 != -1)
    {
LABEL_49:
      sub_10002AA04();
      swift_once();
    }

    v68 = _swiftEmptyArrayStorage;
    sub_10002F2D4(v12, &_mh_execute_header, qword_10004B590, "Found no existing Top Suggestions", 33, 2, _swiftEmptyArrayStorage);

    return v68;
  }

  v87 = v2;
  v89 = a1;
  v85 = v7;
  v11 = sub_1000126D0(v10);
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v2 = (v10 & 0xFFFFFFFFFFFFFF8);
  v14 = &_swiftEmptyDictionarySingleton;
  v92 = v10 & 0xC000000000000001;
  v93 = v10;
  v91 = v10 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      sub_10002AC38();
      v15 = sub_10002F734();
    }

    else
    {
      if (v12 >= v2[2])
      {
        goto LABEL_47;
      }

      v15 = *(v10 + 8 * v12 + 32);
    }

    v7 = v15;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ([v15 subtype] != 602)
    {
      [v7 subtype];
      v19 = PHSuggestionStringWithSubtype();
      v20 = sub_10002F404();
      v22 = v21;

      goto LABEL_14;
    }

    v17 = sub_1000292C8(v7, &selRef_context);
    if (v18)
    {
      v20 = v17;
      v22 = v18;
LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96[0] = v14;
      v24 = sub_10002AE34();
      v12 = v14;
      sub_100023198(v24, v25);
      sub_10002B234();
      if (v28)
      {
        goto LABEL_48;
      }

      v29 = v26;
      v30 = v27;
      sub_100004120(&qword_10004A928, &qword_100035740);
      v31 = sub_10002F7B4(isUniquelyReferenced_nonNull_native, v14);
      v14 = v96[0];
      if (v31)
      {
        v32 = sub_10002AE34();
        v34 = sub_100023198(v32, v33);
        v10 = v93;
        if ((v30 & 1) != (v35 & 1))
        {
          goto LABEL_53;
        }

        v29 = v34;
        if (v30)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v10 = v93;
        if (v30)
        {
          goto LABEL_21;
        }
      }

      sub_10002B220(v96[0] + 8 * (v29 >> 6));
      v37 = (v36 + 16 * v29);
      *v37 = v20;
      v37[1] = v22;
      *(v14[7] + 8 * v29) = _swiftEmptyArrayStorage;
      v38 = v14[2];
      v28 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_51;
      }

      v14[2] = v39;
LABEL_22:
      v40 = v7;
      sub_10002F494();
      sub_10002AF84();
      if (v42)
      {
        sub_10002ABBC(v41);
        sub_10002F4E4();
      }

      sub_10002B058();
      sub_10002F504();

      v12 = v16;
      v2 = v91;
      v13 = v92;
    }

    else
    {

      ++v12;
    }
  }

  v43 = sub_10001A2F4(v14, PNSuggestionColdStartPortraitWallpaperGalleryMaximumNumberOfFeaturedPhotos);
  v44 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v45 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v44))
  {

    sub_10002AB68();
    v53 = swift_slowAlloc();
    sub_10002AB68();
    v54 = swift_slowAlloc();
    v96[0] = v54;
    *v53 = 134218498;
    *(v53 + 4) = sub_1000126D0(v10);

    *(v53 + 12) = 2048;
    *(v53 + 14) = sub_1000126D0(v43);

    *(v53 + 22) = 2080;
    v55 = sub_1000126D0(v43);
    if (v55)
    {
      v56 = v55;
      v83 = v54;
      *&v84 = v53;
      *(&v84 + 1) = v45;
      LODWORD(v91) = v44;
      v92 = v14;
      sub_1000233C8(0, v55 & ~(v55 >> 63), 0);
      if (v56 < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v57 = 0;
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          sub_10002B1FC();
          v58 = sub_10002F734();
        }

        else
        {
          v58 = *(v43 + 8 * v57 + 32);
        }

        v59 = v58;
        v60 = [v58 uuid];
        v61 = sub_10002F404();
        v63 = v62;

        v94 = _swiftEmptyArrayStorage;
        v65 = _swiftEmptyArrayStorage[2];
        v64 = _swiftEmptyArrayStorage[3];
        if (v65 >= v64 >> 1)
        {
          v67 = sub_10002ABBC(v64);
          sub_1000233C8(v67, v65 + 1, 1);
        }

        ++v57;
        _swiftEmptyArrayStorage[2] = v65 + 1;
        v66 = &_swiftEmptyArrayStorage[2 * v65];
        v66[4] = v61;
        v66[5] = v63;
      }

      while (v56 != v57);
      LOBYTE(v44) = v91;
      v45 = *(&v84 + 1);
      v53 = v84;
      v54 = v83;
    }

    v69 = sub_10002F4D4();

    v70 = sub_10002AC80();
    sub_100022BB4(v70, v71, v72);
    sub_10002AE40();

    *(v53 + 24) = v69;
    _os_log_impl(&_mh_execute_header, v45, v44, "Found %ld existing Top Suggestions, chosen %ld of them: %s", v53, 0x20u);
    sub_100004168(v54);
    sub_10002AB08();

    sub_10002AB08();
  }

  sub_10001AE50(v43, v46, v47, v48, v49, v50, v51, v52, v83, v84, v85, v87, v89, v91, v92, v93, v94, v95, v96[0], v96[1], v96[2], v96[3], v96[4], v96[5], v96[6]);
  v73 = objc_allocWithZone(PHManualFetchResult);
  v74 = v90;
  sub_10002AC80();
  sub_100021EC0();
  v76 = v75;
  sub_10001AF9C(v76);
  v77 = [v74 librarySpecificFetchOptions];
  v78 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v76 options:v77];
  if (v78)
  {
    v79 = v78;

    sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
    v80 = sub_10002F3A4();

    sub_1000136A4(v80);

    v96[0] = sub_1000294B8(v81, sub_10002974C);
    sub_100023984(v96);

    return v96[0];
  }

LABEL_52:
  __break(1u);
LABEL_53:
  sub_10002F874();
  __break(1u);

  __break(1u);
  return result;
}

void sub_10001AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, __int128 a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10002B3F0();
  a24 = v25;
  a25 = v27;
  v28 = v26;
  if (v26 >> 62)
  {
    v29 = sub_10002F7D4();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {
LABEL_12:
    sub_10002B3D4();
    return;
  }

  a13 = _swiftEmptyArrayStorage;
  sub_100023388(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a13;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_100010C90();
        sub_10002F734();
      }

      else
      {
        v32 = *(v28 + 8 * v30 + 32);
      }

      sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
      swift_dynamicCast();
      a13 = v31;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        sub_100023388((v33 > 1), v34 + 1, 1);
        v31 = a13;
      }

      ++v30;
      v31[2] = v34 + 1;
      sub_1000107F0(&a10, &v31[4 * v34 + 4]);
    }

    while (v29 != v30);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_10001AF9C(void *a1)
{
  v2 = [a1 photoLibrary];
  v51 = [v2 librarySpecificFetchOptions];
  sub_100004120(&unk_100049E20, &qword_1000352F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000351F0;
  *(sub_10002ADDC(v3, &type metadata for UInt16) + 112) = 1;
  v4 = [a1 fetchedObjectIDsSet];
  if (!v4)
  {
    __break(1u);
    goto LABEL_32;
  }

  v5 = v4;
  sub_1000042B4(0, &qword_10004A8F8, NSPredicate_ptr);
  sub_10002AFEC();
  sub_1000042B4(v6, v7, v8);
  sub_10002AFEC();
  sub_100029E94(v9, v10, v11);
  sub_10002F584();

  sub_10002AD30();
  isa = sub_10002F574().super.isa;

  sub_10002AFEC();
  *(v3 + 176) = sub_1000042B4(v13, v14, v15);
  sub_10002AFEC();
  *(v3 + 184) = sub_100029E94(v16, v17, v18);
  *(v3 + 152) = isa;
  v19 = sub_10002F5A4();
  [v51 setPredicate:v19];

  v20 = [objc_opt_self() fetchSuggestionsWithOptions:v51];
  v21 = [v20 fetchedObjects];

  if (!v21)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  sub_10002AEB4();
  v22 = sub_10002F4C4();

  v23 = [a1 fetchedObjects];
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = v23;
  v25 = sub_10002F4C4();

  aBlock[0] = _swiftEmptyArrayStorage;
  v26 = sub_1000126D0(v25);
  for (i = 0; v26 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = sub_10002F734();
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v28 featuredState] == 1)
    {
    }

    else
    {
      sub_10002F764();
      sub_10002F794();
      sub_10002B1FC();
      sub_10002F7A4();
      v20 = aBlock;
      sub_10002F774();
    }
  }

  v20 = aBlock[0];
  LOBYTE(v26) = sub_10002F5B4();
  if (qword_100049688 == -1)
  {
    goto LABEL_16;
  }

LABEL_30:
  sub_10002AA04();
  swift_once();
LABEL_16:
  v30 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v26))
  {

    sub_10002AB80();
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    *(v31 + 4) = sub_1000126D0(v20);

    *(v31 + 12) = 2048;
    *(v31 + 14) = sub_1000126D0(v22);

    sub_10002B2FC(&_mh_execute_header, v30, v26, "%ld Suggestions to feature and %ld to unfeature");
    _os_log_impl(v32, v33, v34, v35, v36, v37);
    sub_10002AA28();
  }

  if (sub_1000126D0(v20) <= 0 && sub_1000126D0(v22) < 1)
  {
  }

  else
  {
    v38 = swift_allocObject();
    v38[2] = v20;
    v38[3] = v22;
    aBlock[4] = sub_100029F14;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B34C;
    aBlock[3] = &unk_100041350;
    v39 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v40 = sub_10002B04C();
    v42 = [v40 v41];
    _Block_release(v39);
    if (v42)
    {
      v43 = aBlock[0];
    }

    else
    {
      v44 = aBlock[0];
      sub_100010CB8();
      sub_10002F0F4();

      swift_willThrow();
      v45 = sub_10002F5D4();
      if (os_log_type_enabled(v30, v45))
      {
        sub_10002AB74();
        v46 = swift_slowAlloc();
        sub_10002AB68();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315138;
        swift_getErrorValue();
        v48 = sub_10002F884();
        v50 = sub_100022BB4(v48, v49, aBlock);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v30, v45, "Error setting featured state of Suggestions: %s", v46, 0xCu);
        sub_100004168(v47);
        sub_10002AA88();

        sub_10002AB08();
      }
    }
  }
}

void sub_10001B640(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_10002F7D4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = objc_opt_self();
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = v5;
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10002F734();
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v6 changeRequestForSuggestion:v8];
      if (v10)
      {
        v11 = v10;
        [v10 setFeaturedState:1];
      }
    }
  }

  if (a2 >> 62)
  {
    v12 = sub_10002F7D4();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v13 = objc_opt_self();
  if (v12 < 1)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v14 = v13;
  for (j = 0; j != v12; ++j)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = sub_10002F734();
    }

    else
    {
      v16 = *(a2 + 8 * j + 32);
    }

    v17 = v16;
    v18 = [v14 changeRequestForSuggestion:v16];
    if (v18)
    {
      v19 = v18;
      [v18 setFeaturedState:0];
    }
  }
}

void sub_10001B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10002B46C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_10002F1B4();
  sub_100004368();
  v106 = v13;
  v109 = v12;
  __chkstk_darwin(v12);
  sub_10002AC04();
  v16 = v15 - v14;
  v17 = objc_opt_self();
  sub_100004120(&qword_10004A838, qword_1000356F8);
  sub_10002AC74();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000352B0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v7;

  isa = sub_10002F4A4().super.isa;

  v20 = [v17 descriptorIdentifierForDescriptorType:v11 uuids:isa];

  v21 = sub_10002F404();
  v23 = v22;

  v24 = [v17 descriptorTypeStringWithType:v11];
  v103 = sub_10002F404();
  v26 = v25;

  v27 = sub_10002B34C();
  if (sub_1000115E0(v27, v28, v5))
  {

    sub_10002F5E4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v29 = sub_10002AE9C();
    if (os_log_type_enabled(v29, v30))
    {
      sub_10002AB74();
      v31 = swift_slowAlloc();
      sub_10002AB68();
      v32 = v26;
      v33 = swift_slowAlloc();
      v113[0] = v33;
      *v31 = 136315138;
      v34 = sub_100022BB4(v103, v32, v113);

      *(v31 + 4) = v34;
      sub_10002AF44();
      _os_log_impl(v35, v36, v37, v38, v39, v40);
      sub_100004168(v33);
      sub_10002AA28();

      sub_10002AA18();
    }

    else
    {
    }

    goto LABEL_29;
  }

  v101 = v26;
  sub_1000042B4(0, &qword_10004A8F0, PFPosterMediaImage_ptr);
  sub_10002AEB4();

  v41 = sub_10001C1CC(v9, v7);
  sub_1000042B4(0, &qword_10004A638, PFPosterDescriptor_ptr);
  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000352A0;
  *(v42 + 32) = v41;
  v43 = v41;
  v44 = sub_10002AD5C();
  v46 = sub_10001189C(v44, v45);
  v47 = PRPosterRoleLockScreen;
  sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
  v48 = v47;

  v100 = v21;
  v49 = sub_10002B34C();
  v51 = sub_1000189FC(v49, v50, v48);
  v52 = [v51 assetDirectory];
  sub_10002F164();

  sub_10002F134(v53);
  v55 = v54;
  (*(v106 + 8))(v16, v109);
  v113[0] = 0;
  v110 = v46;
  LODWORD(v46) = [v46 saveToURL:v55 error:v113];

  v102 = v43;
  if (!v46)
  {
    v76 = v113[0];
    sub_10002AE28();

    v77 = sub_10002F0F4();
    swift_willThrow();
    v113[0] = v77;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002ABEC();
    if (swift_dynamicCast())
    {

      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v78 = sub_10002AE9C();
      if (os_log_type_enabled(v78, v79))
      {
        sub_10002AB74();
        v80 = swift_slowAlloc();
        sub_10002ABE0();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        *(v80 + 4) = v111;
        *v81 = v111;
        v82 = v111;
        sub_10002AF44();
        _os_log_impl(v83, v84, v85, v86, v87, v88);
        sub_100010800(v81, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA28();

        sub_10002AA18();
      }

      swift_willThrow();
    }

    v89 = v110;
    goto LABEL_20;
  }

  v56 = v113[0];
  v57 = PPGalleryOptionsForDescriptorType([v110 descriptorType], v43);
  v113[0] = 0;
  v58 = [v51 storeGalleryOptions:v57 error:v113];
  v59 = v113[0];
  if (!v58)
  {
    v90 = v113[0];

    v91 = sub_10002F0F4();
    swift_willThrow();
    v113[0] = v91;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002ABEC();
    if (!swift_dynamicCast())
    {

      goto LABEL_21;
    }

    v108 = v57;

    v92 = sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v93 = qword_10004B590;
    if (os_log_type_enabled(qword_10004B590, v92))
    {
      sub_10002AB80();
      v94 = swift_slowAlloc();
      sub_10002ABC8();
      v112 = swift_slowAlloc();
      *v94 = 136315394;
      sub_100022BB4(v100, v23, &v112);
      v105 = v92;
      sub_10002AE28();

      sub_10002AF64();
      v95 = [v111 localizedDescription];
      sub_10002F404();

      v96 = sub_10002AFD4();
      sub_100022BB4(v96, v97, v98);
      sub_10002AD80();

      *(v94 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v93, v105, "Failed to store galleryOptions for descriptor '%s': %s", v94, 0x16u);
      swift_arrayDestroy();
      sub_10002AAB4();

      sub_10002AA18();
    }

    else
    {
    }

    swift_willThrow();

    v89 = v108;
LABEL_20:

LABEL_21:

    goto LABEL_29;
  }

  v107 = v57;
  v99 = v48;
  v60 = objc_opt_self();
  v61 = v59;
  v62 = sub_10002F3D4();
  v63 = [v60 lookUpInfoForAssetCatalogIdentifier:v62];

  v64 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v63];
  [v51 setPreferredGalleryOptions:v64];
  v65 = sub_100018A6C(v110);
  sub_100029174(v65, v66, v51);
  v67 = sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v68 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v67))
  {
    sub_10002AB80();
    v69 = swift_slowAlloc();
    sub_10002ABC8();
    v113[0] = swift_slowAlloc();
    *v69 = 136315394;
    v70 = sub_100022BB4(v103, v101, v113);
    v104 = v63;
    v71 = v70;

    *(v69 + 4) = v71;
    *(v69 + 12) = 2080;
    v72 = sub_10002B34C();
    v75 = sub_100022BB4(v72, v73, v74);

    *(v69 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v68, v67, "Added %s descriptor %s", v69, 0x16u);
    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AA88();
  }

  else
  {
  }

LABEL_29:
  sub_10002B4BC();
}