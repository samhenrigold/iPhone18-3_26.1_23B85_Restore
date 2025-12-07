id sub_100015728()
{
  v1 = v0;
  v2 = sub_1000345A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100034874();
  *&v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  *&v99 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035B0(&qword_1000478A8, &qword_100036B50);
  __chkstk_darwin(v8 - 8);
  v10 = &v91 - v9;
  v11 = sub_1000345B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 16);
  sub_100034BF4();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007DDC(v10, &qword_1000478A8, &qword_100036B50);
  }

  else
  {
    v94 = v6;
    v91 = v5;
    v92 = v3;
    v93 = v2;
    v97 = v12;
    v16 = *(v12 + 32);
    v98 = v11;
    v16(v14, v10, v11);
    v17 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v102) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v19 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v18 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v21 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v20 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v22 = *(v1 + 16);
    v103 = v18;
    v23 = v14;
    v24 = v1;
    v25 = v19;
    sub_1000053EC(v21, v20);
    v26 = [objc_msgSend(v22 "environment")];
    swift_unknownObjectRelease();
    v27 = *(v24 + 16);
    v28 = sub_100009638(v27, v26);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = v28;

    v109 = v17;
    v110 = v102;
    *v111 = *v108;
    *&v111[3] = *&v108[3];
    v112 = v19;
    v113 = v18;
    v114 = v21;
    v115 = v20;
    v116 = v30;
    v117 = v32;
    v118 = v34;
    v119 = v35;
    v102 = v25;
    v101 = v103;
    v103 = v20;
    sub_1000053EC(v21, v20);
    v96 = v23;
    sub_100006128(v23);
    v37 = v36;
    v38 = v24;
    v39 = [*(v24 + 24) vistaView];
    [v39 removeBackBuffers];

    v40 = v99;
    sub_100034824();
    v41 = v37;
    v42 = sub_100034854();
    v43 = sub_100034C44();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Taking snapshot for key: %@", v44, 0xCu);
      sub_100007DDC(v45, &unk_1000478C0, &unk_100036B60);
    }

    v95 = v41;

    (*(v100 + 8))(v40, v94);
    v47 = v38;
    v48 = sub_100016628();
    v104 = sub_10000B0AC();
    v105 = v49;
    v106 = v50;
    v107 = v51;
    [v48 applyStyleDefinition:&v104];
    v52 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    v53 = v102;
    [v48 updateLocation:v102 fallbackLocation:v52 animated:0];

    v54 = v21;
    sub_1000054D4(v21, v103);

    v55 = [v48 vistaView];
    [v55 updateSunLocationAnimated:0];

    v56 = *(v47 + 16);
    v57 = sub_10000B9F0();
    v58 = [objc_msgSend(v56 "environment")];
    swift_unknownObjectRelease();
    v59 = v98;
    v60 = v97;
    if (v58)
    {

      v61 = 0.0;
      v62 = v96;
    }

    else
    {
      v62 = v96;
      if (v57)
      {
        v63 = v91;
        sub_100034BE4();
        v64 = sub_100034584();

        (*(v92 + 8))(v63, v93);
        v61 = 0.0;
        if (v64)
        {
          v61 = 1.0;
        }
      }

      else
      {

        v61 = 0.0;
      }
    }

    [v48 setLocationDotAlpha:v61];
    v65 = [objc_msgSend(*(v47 + 16) "environment")];
    swift_unknownObjectRelease();
    v66 = 0.0;
    if ((v65 - 2) < 3)
    {
      v66 = flt_100036BEC[(v65 - 2)];
    }

    v67 = [v48 vistaView];
    v68 = [v67 scene];

    [v68 restingCameraRoll];
    v70 = v69;
    [v68 cameraPosition];
    v100 = v71;
    [v68 cameraTarget];
    v99 = v72;
    [v68 cameraUp];
    *&v73 = v66 + v70;
    [v68 setCamera:*&v100 target:*&v99 up:v74 roll:v73];
    [v68 updateCamera];
    v75 = *(v47 + 16);
    sub_100034C04();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v84 = sub_1000056D8();
    if (v84)
    {
      v85 = v84;
      v86 = [objc_opt_self() mainScreen];
      [v86 scale];
      v88 = v87;

      v89 = [v85 snapshotInRect:v77 scale:v79 time:{v81, v83, v88, 0.0}];
      sub_1000054D4(v54, v103);

      (*(v60 + 8))(v62, v59);
      return v89;
    }

    (*(v60 + 8))(v62, v59);

    sub_1000054D4(v54, v103);
  }

  return 0;
}

void sub_100016074(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = [objc_allocWithZone(CALayer) init];
  [v11 setFrame:{a2, a3, a4, a5}];
  [v11 setCompositingFilter:kCAFilterDestOut];
  [v11 setOpaque:0];
  sub_1000035B0(&qword_100047990, &qword_100036B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000369A0;
  *(inited + 32) = 0x73746E65746E6F63;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  sub_10001BA8C(inited);
  swift_setDeallocating();
  sub_100007DDC(inited + 32, &qword_100047998, &qword_100036B78);
  sub_1000035B0(&qword_1000479A0, &qword_100036B80);
  isa = sub_100034914().super.isa;

  [v11 setActions:isa];

  sub_10001CCAC(a1, v23, &qword_100047C40, &qword_100036B58);
  v14 = v24;
  if (v24)
  {
    v15 = sub_1000054E4(v23, v24);
    v16 = *(v14 - 8);
    __chkstk_darwin(v15);
    v18 = &v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_100034EB4();
    (*(v16 + 8))(v18, v14);
    sub_1000026BC(v23);
  }

  else
  {
    v19 = 0;
  }

  [v11 setContents:v19];
  swift_unknownObjectRelease();
  v20 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer;
  [*(v5 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer) removeFromSuperlayer];
  v21 = *(v5 + v20);
  *(v5 + v20) = v11;
}

void sub_10001635C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView;
  v7 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView);
  if (v7)
  {
    v8 = v7;
    sub_100034824();
    v9 = sub_100034854();
    v10 = sub_100034C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing background snapshot image view", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    [v8 removeFromSuperview];

    v12 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  v13 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView;
  v14 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView);
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *(v1 + v13);
    *(v1 + v13) = 0;
  }
}

id sub_100016500(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + *a2);
  if (v5)
  {
    v6 = v5;
    [v6 setImage:a1];
    return v6;
  }

  else
  {
    v8 = [objc_allocWithZone(UIImageView) initWithImage:a1];
    [v8 setOpaque:0];
    v9 = *(v2 + v4);
    *(v2 + v4) = v8;
    v10 = v8;

    return v10;
  }
}

void sub_10001659C()
{
  v1 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView;
  v5 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;
  }
}

id sub_100016628()
{
  v1 = sub_1000342C4();
  v129 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v108 - v5;
  v7 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v7);
  v131 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (&v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v108 - v13;
  v15 = sub_100034874();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v20 = &v108 - v19;
  v130 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v21)
  {

    return v21;
  }

  v116 = v7;
  v121 = v12;
  v110 = v18;
  v113 = v4;
  v114 = v6;
  v127 = v1;
  v128 = v14;
  v123 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController;
  sub_100034824();
  v23 = sub_100034854();
  v24 = sub_100034C44();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v129;
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "creating snapshotVistaController", v27, 2u);
  }

  v28 = *(v16 + 8);
  v112 = v15;
  v111 = v16 + 8;
  v109 = v28;
  v28(v20, v15);
  v29 = v130;
  v30 = [objc_msgSend(*(v130 + 16) "environment")];
  swift_unknownObjectRelease();
  v31 = *(v29 + 16);
  v117 = sub_100009638(v31, v30);

  v126 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v139 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
  v138[0] = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 9);
  *(v138 + 3) = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 12);
  v32 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v33 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v34 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v35 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
  v140 = v33;
  v36 = *(v29 + 16);
  v37 = v32;
  v38 = v36;
  sub_10001CCAC(&v140, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v34, v35);
  v39 = sub_100034C14();

  v40 = [*(v29 + 16) backgroundView];
  [v40 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  (*(v26 + 56))(v128, 1, 1, v127);
  v49 = v37;
  if (!v32)
  {
    v49 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v125 = v49;
  v115 = v139;
  v50 = swift_allocObject();
  v51 = v126;
  *(v50 + 16) = v126;
  *(v50 + 24) = v139;
  *(v50 + 25) = v138[0];
  *(v50 + 28) = *(v138 + 3);
  *(v50 + 32) = v32;
  *(v50 + 40) = v33;
  *(v50 + 48) = v34;
  *(v50 + 56) = v35;
  v124 = v39;
  *(v50 + 64) = v39 & 1;
  v120 = v37;
  sub_10001CCAC(&v140, &aBlock, &unk_1000481C0, &qword_100036F70);
  v122 = v35;
  sub_1000053EC(v34, v35);
  v52 = sub_100007FF8();
  v53 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v52 configuration:{v42, v44, v46, v48}];

  v54 = objc_allocWithZone(NUNIScene);
  v136 = sub_10001CC6C;
  v137 = v50;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100033AE4;
  v135 = &unk_100041B70;
  v55 = _Block_copy(&aBlock);

  v56 = [v54 initWithSphereoids:16515070 currentDateBlock:v55];
  _Block_release(v55);

  [v56 setSnap:3];
  [v56 setBackgroundType:2];
  v118 = v56;
  [v53 setScene:v56];
  v57 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v53];
  [v57 setIsBacklightTransitionEnabled:1];
  [v57 setActiveModeFrameInterval:1];
  [v57 setVista:v51];
  [v57 setVistaTransitionStyle:1];
  v58 = [v53 scene];
  v59 = [v58 currentDateBlock];

  v60 = v59[2](v59);
  v61 = v131;
  sub_100034324();

  _Block_release(v59);
  v62 = v125;
  *(v61 + *(v116 + 20)) = v125;
  v63 = v34;
  v64 = v115;
  v119 = v53;
  if (v115)
  {
    v65 = sub_100034EC4();
    v66 = v62;

    v67 = v127;
    v68 = v124;
    v69 = v117;
    if ((v65 & 1) != 0 && v126 != 2)
    {
      v70 = v121;
      if (v126 != 3)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (v126 > 2)
    {
      v70 = v121;
      if ((v126 - 4) < 6)
      {
        if (qword_100046A18 != -1)
        {
          v104 = v117;
          swift_once();
          v69 = v104;
        }

        v71 = v128;
        goto LABEL_30;
      }

      if (v126 == 3)
      {
        if (qword_100046A08 != -1)
        {
          v107 = v117;
          swift_once();
          v69 = v107;
        }

        v71 = v128;
        goto LABEL_30;
      }

      goto LABEL_50;
    }

    v70 = v121;
    if (!v126)
    {
      if (qword_100046A80 != -1)
      {
        v105 = v117;
        swift_once();
        v69 = v105;
      }

      v71 = v128;
      goto LABEL_30;
    }

    if (v126 == 1)
    {
      v101 = v117;
      sub_100009BF0(v131, v117);
      v69 = v101;
      v71 = v128;
LABEL_30:
      sub_100009914(v64, v69);
      v73 = v77 * 1.1;
      goto LABEL_31;
    }

    if (v126 != 2)
    {
LABEL_50:
      if (qword_100046A00 != -1)
      {
        v106 = v117;
        swift_once();
        v69 = v106;
      }

      v71 = v128;
      goto LABEL_30;
    }

LABEL_27:
    if (qword_100046A10 != -1)
    {
      v103 = v69;
      swift_once();
      v69 = v103;
    }

    v71 = v128;
    goto LABEL_30;
  }

  v72 = v62;

  v67 = v127;
  v70 = v121;
  v68 = v124;
  v69 = v117;
  if (v126 == 2)
  {
    goto LABEL_27;
  }

  if (v126 != 3)
  {
LABEL_13:
    v71 = v128;
    if (qword_100046A40 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_17:
  v71 = v128;
  if (qword_100046A48 != -1)
  {
LABEL_53:
    v102 = v69;
    swift_once();
    v69 = v102;
  }

LABEL_18:
  sub_100009914(v64, v69);
LABEL_31:
  *&aBlock = v73;
  v133 = v74;
  v134 = v75;
  LODWORD(v135) = v76;
  [v57 applyStyleDefinition:&aBlock];
  sub_10001CCAC(v71, v70, &qword_1000479B0, &qword_100036B90);
  v78 = v129;
  if ((*(v129 + 48))(v70, 1, v67) == 1)
  {
    sub_100007DDC(v70, &qword_1000479B0, &qword_100036B90);
  }

  else
  {
    v126 = v63;
    v79 = v114;
    (*(v78 + 32))(v114, v70, v67);
    sub_1000342A4(v80);
    v82 = v81;
    [v57 setCacheDirectory:v81];

    v83 = v110;
    sub_100034804();
    v84 = v113;
    (*(v78 + 16))(v113, v79, v67);
    v85 = sub_100034854();
    v86 = sub_100034C54();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v117 = v87;
      v121 = swift_slowAlloc();
      aBlock = v121;
      *v87 = 136315138;
      sub_10001CD14(&qword_1000479B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      LODWORD(v116) = v86;
      v88 = sub_100034EA4();
      v89 = v67;
      v91 = v90;
      v92 = *(v78 + 8);
      v92(v84, v89);
      v93 = sub_10001AF94(v88, v91, &aBlock);

      v94 = v117;
      *(v117 + 1) = v93;
      _os_log_impl(&_mh_execute_header, v85, v116, "Vista Controller created with asset directory: %s", v94, 0xCu);
      sub_1000026BC(v121);

      v109(v83, v112);
      v92(v79, v127);
    }

    else
    {

      v95 = *(v78 + 8);
      v95(v84, v67);
      v109(v83, v112);
      v95(v79, v67);
    }

    v71 = v128;
    v63 = v126;
    v62 = v125;
    v68 = v124;
  }

  [v57 disableCloudDataFetch:v68 & 1];
  v96 = [v57 mode];
  v97 = v122;
  if (v96 != 1)
  {
    [v57 applyMode:1];
  }

  [v57 updateLocation:0 fallbackLocation:v62 animated:0];
  v98 = [v57 vistaView];
  [v98 updateSunLocationAnimated:0];

  sub_10000A5B0(v131);
  sub_100007DDC(v71, &qword_1000479B0, &qword_100036B90);
  if ([v57 mode] != 1)
  {
    [v57 applyMode:1];
  }

  sub_100007DDC(&v140, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v63, v97);
  v99 = *(v130 + v123);
  *(v130 + v123) = v57;
  v100 = v57;

  return v100;
}

uint64_t sub_100017744(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + 32))
    {
      __chkstk_darwin(result);
      v5 = v4;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();

      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v3 + 16);
    sub_1000178A4(v6, v7);

    v8 = qword_100047100;
    v9 = off_100047108;

    v11._countAndFlagsBits = v8;
    v11._object = v9;
    sub_100034684(v11);
  }

  return result;
}

void sub_1000178A4(void *a1, void *a2)
{
  v3 = v2;
  v66 = a1;
  v5 = sub_100034874();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = __chkstk_darwin(v5);
  v64 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v59 - v8;
  v62 = sub_1000347F4();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000345A4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = *(v3 + 16);
  *(v3 + 16) = a2;
  v18 = a2;

  v63 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;

  sub_1000346C4();

  v19 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v20 = *(v11 + 16);
  v20(v16, v3 + v19, v10);
  LOBYTE(a2) = sub_100034554();
  v21 = *(v11 + 8);
  v21(v16, v10);
  if (a2 & 1) != 0 || (v20(v14, v3 + v19, v10), v29 = sub_100034544(), v21(v14, v10), (v29 & 1) == 0) && (v30 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, swift_beginAccess(), v31 = v61, v32 = v60, v33 = v62, (*(v61 + 16))(v60, v3 + v30, v62), LOBYTE(v30) = sub_100034794(), (*(v31 + 8))(v32, v33), (v30))
  {
    v22 = v65;
    sub_100034834();
    v23 = sub_100034854();
    v24 = sub_100034C64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Received location update call but currently transitioning; queue location update", v25, 2u);
    }

    (*(v67 + 8))(v22, v68);
    v26 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate);
    v27 = v66;
    *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate) = v66;
    v28 = v27;
  }

  else
  {
    v34 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v35 = *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v36 = v66;
    *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16) = v66;
    v37 = v36;

    v38 = *(v34 + 8);
    v39 = v34[3];
    v40 = v34[4];
    v41 = v34[5];
    v72 = *v34;
    v73 = v38;
    v74 = v36;
    v75 = v39;
    v76 = v40;
    v77 = v41;
    v42 = v39;
    sub_1000053EC(v40, v41);
    sub_10000CBDC(&v72);

    sub_1000054D4(v40, v41);
    v43 = *(v3 + 24);
    v44 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    [v43 updateLocation:v37 fallbackLocation:v44 animated:0];

    [*(v3 + 16) noteContentSignificantlyChanged];
    v45 = *(v3 + 16);
    LOBYTE(v44) = sub_100034C14();

    [v43 disableCloudDataFetch:v44 & 1];
    v46 = *(v3 + 16);
    LOBYTE(v44) = sub_100034BD4();

    if (v44)
    {
      sub_10000E8E4();
    }

    else
    {
      sub_10000F9CC();
    }

    v47 = [v43 vistaView];
    [v47 purgeUnused];

    v48 = qword_100047100;
    v49 = off_100047108;

    v78._countAndFlagsBits = v48;
    v78._object = v49;
    sub_100034684(v78);

    v50 = v64;
    sub_100034834();

    v51 = sub_100034854();
    v52 = sub_100034C64();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71 = v54;
      *v53 = 136315138;
      v55 = v34[2];
      if (v55)
      {
        v56 = v34[2];
      }

      else
      {
        v56 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
        v55 = 0;
      }

      v69 = 0;
      v70 = 0xE000000000000000;
      v57 = v55;
      [v56 coordinate];
      sub_100034BA4();
      v79._countAndFlagsBits = 44;
      v79._object = 0xE100000000000000;
      sub_100034A14(v79);
      [v56 coordinate];
      sub_100034BA4();

      v58 = sub_10001AF94(v69, v70, &v71);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Updated location to %s", v53, 0xCu);
      sub_1000026BC(v54);

      (*(v67 + 8))(v64, v68);
    }

    else
    {

      (*(v67 + 8))(v50, v68);
    }
  }
}

uint64_t sub_10001804C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000341E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1000341D4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100018140(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    sub_1000178A4(0, v3);

    v4 = qword_100047100;
    v5 = off_100047108;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    sub_100034684(v6);
  }

  return result;
}

void sub_100018200(void *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, float a10, float a11, uint64_t a12, uint64_t a13)
{
  *&v88 = a7;
  v89 = a9;
  v86 = sub_1000345C4();
  v21 = *(v86 - 8);
  __chkstk_darwin(v86);
  v23 = &v79.i8[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v83 = v21;
    v84 = a5;
    v85 = a8;
    v87 = a13;
    v26 = a3 + 2;
    v27 = a4 + 2;
    if (*(Strong + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
    {
      sub_1000139A8(a11, v89, a10);
    }

    else
    {
      v82 = a12;
      swift_beginAccess();
      v28 = a3[3];
      swift_beginAccess();
      [a1 setCameraOffset:{COERCE_DOUBLE(vmla_n_f32(v28, vsub_f32(a4[3], v28), v89.n128_f32[0]))}];
      if ((v88 & 0x10100000000) == 0)
      {
        v29 = *&v88;
        swift_beginAccess();
        v30 = v26->f32[0] + (a10 * ((v26->f32[0] * v29) - v26->f32[0]));
        swift_beginAccess();
        v26->f32[0] = v30;
      }

      v31 = vdup_lane_s32(v89.n128_u64[0], 0);
      v32 = v87;
      if ((v87 & 0x10100000000) == 0)
      {
        swift_beginAccess();
        v33 = v27->f32[0] + (v89.n128_f32[0] * ((v27->f32[0] * *&v32) - v27->f32[0]));
        swift_beginAccess();
        v27->f32[0] = v33;
      }

      v34 = v32 & 0x10000000000;
      v35 = *&v82;
      v81 = v34 | v82 & &_mh_execute_header;
      v80 = v88 & 0x10000000000 | a6 & &_mh_execute_header;
      swift_beginAccess();
      v36 = a3[2].f32[0];
      swift_beginAccess();
      *&v37 = v36 + (v89.n128_f32[0] * (a4[2].f32[0] - v36));
      [a1 setCameraOrbit:v37];
      swift_beginAccess();
      v38 = a3[4];
      swift_beginAccess();
      v39 = a4[4];
      v41 = CLLocationCoordinate2DMake(0.0, 0.0);
      *v40.i64 = v41.longitude;
      v42.i64[0] = *(v25 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v43.i64[0] = 1;
      v40.i64[1] = *&v41.latitude;
      __asm { FMOV            V0.2S, #-15.0 }

      v79 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v42, v43).i64[0], 0), v40, vcvtq_f64_f32(vmul_f32(vmla_f32(v38, vsub_f32(v39, v38), v31), _D0)));
      v49 = *&a6;
      if (v80)
      {
        v49 = 0.0;
      }

      v50 = v35;
      if (v81)
      {
        v50 = 0.0;
      }

      CLLocationCoordinate2DMake(0.0, (((a10 * v49) + 0.0) + (v89.n128_f32[0] * (v50 - ((a10 * v49) + 0.0)))));
      NUNIAstronomyAddLocationCoordinates();
      [a1 setOffsetCoordinate:*&v79];
    }

    v51 = [a1 spheroidOfType:3];
    if (v51)
    {
      v52 = v51;
      swift_beginAccess();
      v53 = a3[5].f32[0];
      swift_beginAccess();
      *&v54 = sub_10001D128(v53, a4[5].f32[0], v89.n128_f32[0]);
      [v52 setCloudOpacity:v54];
    }

    if (sub_10000B9F0())
    {
      if ([*(v25 + 24) forceDisableLocationDot])
      {
        v55 = v83;
      }

      else
      {
        v58 = *(v25 + 16);
        v59 = sub_100034C14();

        v55 = v83;
        if ((v59 & 1) == 0)
        {
          sub_10000B9F0();
        }
      }

      v60 = enum case for TimingFunction.easeOutExpo(_:);
      v61 = *(v55 + 104);
      v62 = v86;
      v61(v23, enum case for TimingFunction.easeOutExpo(_:), v86);
      sub_100034974();
      v63 = *(v55 + 8);
      v63(v23, v62);
      CLKInterpolateBetweenFloatsClipped();
      *&v64 = v64;
      [a1 setLocationDotAlpha:v64];
      v61(v23, v60, v62);
      sub_100034974();
      v63(v23, v62);
      CLKInterpolateBetweenFloatsClipped();
      v56 = v57;
    }

    else
    {
      v56 = 0.0;
      [a1 setLocationDotAlpha:0.0];
    }

    v66 = *&v84;
    v65 = *&v85;
    v67 = v87 & 0x10000000000 | v85 & &_mh_execute_header;
    v68 = v88 & 0x10000000000 | v84 & &_mh_execute_header;
    *&v57 = v56;
    [a1 setLocationDotPulseOverrideAlpha:v57];
    if (v68)
    {
      v69 = 0.0;
    }

    else
    {
      v69 = v66;
    }

    if (v67)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = v65;
    }

    v71 = sub_100034714();

    v72 = 0.0;
    if ((v71 - 2) <= 2)
    {
      v72 = flt_100036BEC[v71 - 2];
    }

    [a1 restingCameraRoll];
    v74 = (((a10 * v69) + 0.0) + (v89.n128_f32[0] * (v70 - ((a10 * v69) + 0.0)))) + (v72 + v73);
    [a1 cameraPosition];
    v89 = v75;
    [a1 cameraTarget];
    v88 = v76;
    [a1 cameraUp];
    *&v77 = v74;
    [a1 setCamera:v89.n128_f64[0] target:*&v88 up:v78 roll:v77];
  }
}

void sub_10001889C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v216 = a3;
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v8 = __chkstk_darwin(v7 - 8);
  v204 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v200 = &v195 - v10;
  *&v214 = sub_100034354();
  v203 = *(v214 - 8);
  v11 = __chkstk_darwin(v214 - 8);
  v205 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v201 = &v195 - v13;
  v213 = type metadata accessor for Geotime(0);
  v14 = __chkstk_darwin(v213);
  v16 = &v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v202 = &v195 - v17;
  v18 = sub_1000345A4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v208 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v207 = &v195 - v22;
  v211 = sub_100034874();
  v23 = *(v211 - 8);
  __chkstk_darwin(v211);
  v25 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v26 = sub_100034854();
  v27 = sub_100034C64();
  v28 = os_log_type_enabled(v26, v27);
  *&v215 = v4;
  *&v212 = a1;
  v206 = v16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    *v29 = 134218498;
    *(v29 + 4) = v216.n128_f32[0];
    *(v29 + 12) = 2080;
    v30 = sub_100034CD4();
    v210 = v18;
    v32 = v19;
    v33 = sub_10001AF94(v30, v31, &v217);

    *(v29 + 14) = v33;
    *(v29 + 22) = 2080;
    v34 = sub_100034CD4();
    v36 = sub_10001AF94(v34, v35, &v217);
    v18 = v210;

    *(v29 + 24) = v36;
    v19 = v32;
    a1 = v212;
    _os_log_impl(&_mh_execute_header, v26, v27, "Renderer rotating: %f from: %s to: %s", v29, 0x20u);
    swift_arrayDestroy();
    v4 = v215;
  }

  (*(v23 + 8))(v25, v211);
  v37 = 0.0;
  v38 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v38 = flt_100036BEC[a1 - 2];
  }

  if ((a2 - 2) <= 2)
  {
    v37 = flt_100036BEC[a2 - 2];
  }

  v39 = vabds_f32(v38, v37);
  if (v39 == 3.1416)
  {
    if (v38 < v37)
    {
      v37 = v37 + -6.2832;
    }
  }

  else if (v39 > 3.1416)
  {
    if (v38 >= v37)
    {
      v40 = -6.2832;
    }

    else
    {
      v40 = 6.2832;
    }

    v38 = v38 + v40;
  }

  v41 = [*(v4 + 24) vistaView];
  v42 = [v41 scene];

  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment + 24))
  {
    v43 = *(v4 + 16);
    *&v209 = sub_100009638(v43, v212);
  }

  else
  {
    *&v209 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment + 16);
  }

  v44 = *(v4 + 16);
  v210 = sub_100009638(v44, a2);

  v45 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v46 = v207;
  (*(v19 + 16))(v207, v4 + v45, v18);
  v47 = v208;
  sub_100034574();
  LOBYTE(v44) = sub_100034564();
  v48 = *(v19 + 8);
  v48(v47, v18);
  v48(v46, v18);
  v211 = v42;
  if ((v44 & 1) != 0 || UIAccessibilityIsReduceMotionEnabled())
  {
    v49 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v53 = v49[3];
    v55 = v49[4];
    v54 = v49[5];
    if (v52 == 1)
    {
      v196 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      LODWORD(v208) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v56 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v58 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v57 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v199 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v59 = v54;
      v60 = v199;
      *&v212 = v56;
      v61 = v56;
      sub_1000053EC(v58, v57);
      v54 = v59;
    }

    else
    {
      v196 = *v49;
      LODWORD(v208) = v51;
      *&v212 = v52;
      v199 = v53;
      v58 = v55;
      v57 = v54;
    }

    v198 = v58;
    v197 = v57;
    if (v58)
    {
      sub_10001BC90(v50, v51, v52, v53, v55, v54);
      v62 = v200;
      v58();
      v63 = v203;
      v64 = *(v203 + 56);
      v65 = v214;
      (v64)(v62, 0, 1, v214);
      v66 = v201;
      (*(v63 + 32))(v201, v62, v65);
      v67 = v202;
    }

    else
    {
      v68 = v203;
      v69 = v200;
      v65 = v214;
      v207 = *(v203 + 56);
      v70 = v54;
      (v207)(v200, 1, 1, v214);
      v71 = v51;
      v63 = v68;
      sub_10001BC90(v50, v71, v52, v53, v55, v70);
      v66 = v201;
      sub_100034334();
      if ((*(v68 + 48))(v69, 1, v65) != 1)
      {
        sub_100007DDC(v69, &unk_100048480, &qword_100036730);
      }

      v67 = v202;
      v64 = v207;
    }

    v72 = v208;
    v73 = v212;
    if (!v212)
    {
      v73 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    v74 = *(v63 + 32);
    v74(v67, v66, v65);
    *(v67 + v213[5]) = v73;
    v208 = (v63 + 32);
    v207 = v74;
    if (v196 > 2)
    {
      v75 = v198;
      if ((v196 - 4) < 6)
      {
        v76 = qword_100046A18;
        v77 = v212;
        if (v76 != -1)
        {
          swift_once();
        }

        v78 = v209;
        goto LABEL_61;
      }

      if (v196 == 3)
      {
        v114 = qword_100046A08;
        v77 = v212;
        if (v114 != -1)
        {
          swift_once();
        }

        v78 = v209;
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v75 = v198;
    if (v196)
    {
      if (v196 == 1)
      {
        if (v72)
        {
          v77 = v212;
          v116 = v209;
          sub_100009BF0(v67, v209);
          v78 = v116;
          goto LABEL_61;
        }
      }

      else if (v196 == 2)
      {
        v79 = qword_100046A10;
        v77 = v212;
        if (v79 != -1)
        {
          swift_once();
        }

        v78 = v209;
        goto LABEL_61;
      }
    }

    else if (v72)
    {
      v115 = qword_100046A80;
      v77 = v212;
      if (v115 != -1)
      {
        swift_once();
      }

      v78 = v209;
LABEL_61:
      v118 = v199;
      sub_100009914(v72 & 1, v78);
      v92 = v119;
      v212 = v120;
      v95 = v121;
      sub_10000A5B0(v67);

      sub_1000054D4(v75, v197);
      v122 = *v49;
      v123 = v49[1];
      v125 = v49[2];
      v124 = v49[3];
      v127 = v49[4];
      v126 = v49[5];
      if (v125 == 1)
      {
        v200 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
        LODWORD(v199) = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
        v203 = v127;
        v128 = v126;
        v129 = v123;
        v130 = v122;
        v131 = v124;
        v132 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
        v133 = v63;
        v134 = v64;
        v135 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
        v136 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
        *&v209 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
        v137 = v209;
        v201 = v132;
        v138 = v132;
        v124 = v131;
        v122 = v130;
        v123 = v129;
        v126 = v128;
        v127 = v203;
        v202 = v136;
        v139 = v136;
        v64 = v134;
        v63 = v133;
        v140 = v199;
        sub_1000053EC(v135, v139);
      }

      else
      {
        v200 = v122;
        v140 = v123;
        v201 = v125;
        *&v209 = v124;
        v135 = v127;
        v202 = v126;
      }

      v203 = v135;
      if (v135)
      {
        sub_10001BC90(v122, v123, v125, v124, v127, v126);
        v141 = v204;
        v142 = v202;
        v135();
        v143 = v214;
        (v64)(v141, 0, 1, v214);
        v144 = v205;
        v145 = v141;
        v146 = v207;
        (v207)(v205, v145, v143);
      }

      else
      {
        v147 = v204;
        v148 = v64;
        v149 = v63;
        v143 = v214;
        (v148)(v204, 1, 1, v214);
        sub_10001BC90(v122, v123, v125, v124, v127, v126);
        v144 = v205;
        sub_100034334();
        v150 = (*(v149 + 48))(v147, 1, v143);
        v146 = v207;
        v142 = v202;
        if (v150 != 1)
        {
          sub_100007DDC(v147, &unk_100048480, &qword_100036730);
        }
      }

      v112 = v215;
      v151 = v206;
      v152 = v201;
      if (v201)
      {
        v153 = v201;
      }

      else
      {
        v153 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
      }

      (v146)(v151, v144, v143);
      *(v151 + v213[5]) = v153;
      if (v200 <= 2)
      {
        if (v200)
        {
          if (v200 == 1)
          {
            if (v140)
            {
              v155 = v152;
              v161 = v210;
              sub_100009BF0(v151, v210);
              v156 = v161;
              v113 = v211;
              v157 = v209;
LABEL_95:
              sub_100009914(v140 & 1, v156);
              v107 = v163;
              v214 = v164;
              v110 = v165;
              sub_10000A5B0(v151);

              sub_1000054D4(v203, v142);
              goto LABEL_96;
            }
          }

          else if (v200 == 2)
          {
            v158 = qword_100046A10;
            v155 = v152;
            if (v158 != -1)
            {
              swift_once();
            }

            v156 = v210;
            v113 = v211;
            v157 = v209;
            goto LABEL_95;
          }
        }

        else if (v140)
        {
          v160 = qword_100046A80;
          v155 = v152;
          if (v160 != -1)
          {
            swift_once();
          }

          v156 = v210;
          v113 = v211;
          v157 = v209;
          goto LABEL_95;
        }
      }

      else
      {
        if ((v200 - 4) < 6)
        {
          v154 = qword_100046A18;
          v155 = v152;
          if (v154 != -1)
          {
            swift_once();
          }

          v156 = v210;
          v113 = v211;
          v157 = v209;
          goto LABEL_95;
        }

        if (v200 == 3)
        {
          v159 = qword_100046A08;
          v155 = v152;
          if (v159 != -1)
          {
            swift_once();
          }

          v156 = v210;
          v113 = v211;
          v157 = v209;
          goto LABEL_95;
        }
      }

      v162 = qword_100046A00;
      v155 = v152;
      if (v162 != -1)
      {
        swift_once();
      }

      v156 = v210;
      v113 = v211;
      v157 = v209;
      goto LABEL_95;
    }

LABEL_58:
    v117 = qword_100046A00;
    v77 = v212;
    if (v117 != -1)
    {
      swift_once();
    }

    v78 = v209;
    goto LABEL_61;
  }

  v80 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = v80[2];
  v84 = v80[3];
  v85 = v80[4];
  v86 = v80[5];
  if (v83 == 1)
  {
    v87 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v213 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v212) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v88 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v89 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v90 = *(v87 + 40);
    *&v214 = *(v87 + 24);
    v208 = v88;
    sub_1000053EC(v89, v90);
  }

  else
  {
    *&v214 = v80[3];
    v208 = v83;
    v213 = v81;
    LODWORD(v212) = v82;
    v88 = v83;
    v89 = v85;
    v90 = v86;
  }

  sub_10001BC90(v81, v82, v83, v84, v85, v86);
  sub_100009EC0(v213, v212 & 1, v88, v89, v90, v209);
  v92 = v91;
  v212 = v93;
  v95 = v94;

  sub_1000054D4(v89, v90);
  v96 = *v80;
  v97 = v80[1];
  v98 = v80[2];
  v99 = v80[3];
  v100 = v80[4];
  v101 = v80[5];
  if (v98 == 1)
  {
    *&v214 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v102 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v103 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v104 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v105 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v213 = *(v215 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    *&v209 = v103;
    sub_1000053EC(v104, v105);
  }

  else
  {
    v213 = v80[3];
    *&v209 = v98;
    *&v214 = v96;
    v102 = v97;
    v103 = v98;
    v104 = v100;
    v105 = v101;
  }

  sub_10001BC90(v96, v97, v98, v99, v100, v101);
  sub_100009EC0(v214, v102 & 1, v103, v104, v105, v210);
  v107 = v106;
  v214 = v108;
  v110 = v109;

  sub_1000054D4(v104, v105);
  v112 = v215;
  v113 = v211;
LABEL_96:
  *&v111 = v92 + (v216.n128_f32[0] * (v107 - v92));
  [v113 setCameraOrbit:v111];
  *&v166 = vceqz_f32(*&v212);
  if ((vpmin_u32(*&v166, *&v166).u32[0] & 0x80000000) != 0 || (v167 = vceqz_f32(*&v214), (vpmin_u32(v167, v167).u32[0] & 0x80000000) != 0) || (vceq_f32(*&v212, *&v214).u8[0] & 1) != 0 || (v168 = *(&v212 + 1), v169 = *(&v214 + 1), *(&v212 + 1) == *(&v214 + 1)))
  {
    v170 = vmla_n_f32(*&v212, vsub_f32(*&v214, *&v212), v216.n128_f32[0]);
  }

  else
  {
    *&v215 = v37;
    *&v166 = vmul_f32(*&v212, *&v212);
    v184 = vadd_f32(*&v166, vdup_lane_s32(*&v166, 1)).u32[0];
    v185 = vmul_f32(*&v214, *&v214);
    LODWORD(v213) = sqrtf(vaddv_f32(*&v166));
    *&v166 = vadd_f32(v185, vdup_lane_s32(v185, 1));
    v209 = v166;
    LODWORD(v210) = sqrtf(vaddv_f32(v185));
    v186 = vrsqrte_f32(v184);
    v187 = vmul_f32(v186, vrsqrts_f32(v184, vmul_f32(v186, v186)));
    v188 = acosf(fminf(fmaxf(vmul_f32(*&v212, vmul_f32(v187, vrsqrts_f32(v184, vmul_f32(v187, v187)))).f32[0], -1.0), 1.0));
    if (v168 >= 0.0)
    {
      v189 = v188;
    }

    else
    {
      v189 = 6.2832 - v188;
    }

    v190 = vrsqrte_f32(v209);
    v191 = vmul_f32(v190, vrsqrts_f32(v209, vmul_f32(v190, v190)));
    v192 = acosf(fminf(fmaxf(vmul_f32(*&v214, vmul_f32(v191, vrsqrts_f32(v209, vmul_f32(v191, v191)))).f32[0], -1.0), 1.0));
    if (v169 < 0.0)
    {
      v192 = 6.2832 - v192;
    }

    if ((v192 - v189) >= 3.1406)
    {
      v189 = v189 + 6.2832;
    }

    else if ((v189 - v192) > 3.1426)
    {
      v192 = v192 + 6.2832;
    }

    v37 = *&v215;
    *&v193 = *&v213 + (v216.n128_f32[0] * (*&v210 - *&v213));
    v215 = v193;
    v194 = __sincosf_stret(v189 + (v216.n128_f32[0] * (v192 - v189)));
    v170 = vmul_n_f32(__PAIR64__(LODWORD(v194.__sinval), LODWORD(v194.__cosval)), *&v215);
  }

  [v113 setCameraOffset:*&v170];
  *&v171 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  if (*(v112 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) == 1)
  {
    v172.f64[1] = v171;
  }

  else
  {
    __asm { FMOV            V0.2S, #-15.0 }

    v172 = vcvtq_f64_f32(vmul_f32(vmla_n_f32(v95, vsub_f32(v110, v95), v216.n128_f32[0]), _D0));
  }

  [v113 setOffsetCoordinate:v172.f64[1]];
  [v113 restingCameraRoll];
  v179 = v178;
  [v113 cameraPosition];
  v215 = v180;
  [v113 cameraTarget];
  v214 = v181;
  [v113 cameraUp];
  *&v182 = (v38 + (v216.n128_f32[0] * (v37 - v38))) + v179;
  [v113 setCamera:*&v215 target:*&v214 up:v183 roll:v182];
  [v113 updateCamera];
}

void sub_100019F98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v4 - 8);
  v125 = &v110 - v5;
  v6 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v6 - 8);
  v121 = &v110 - v7;
  v123 = sub_100034354();
  *&v128 = *(v123 - 8);
  __chkstk_darwin(v123);
  v127 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v122);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000345A4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v130 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v110 - v14;
  v16 = sub_100034874();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v20 = sub_100034854();
  v21 = sub_100034C64();
  v22 = os_log_type_enabled(v20, v21);
  v131 = v10;
  *&v132 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v129 = v16;
    v24 = v23;
    v25 = swift_slowAlloc();
    v126 = v17;
    v26 = v25;
    v133 = v25;
    *v24 = 136315138;
    v27 = sub_100034CD4();
    v29 = v15;
    v30 = v11;
    v31 = v2;
    v32 = sub_10001AF94(v27, v28, &v133);
    v10 = v131;

    *(v24 + 4) = v32;
    v2 = v31;
    v11 = v30;
    v15 = v29;
    a1 = v132;
    _os_log_impl(&_mh_execute_header, v20, v21, "Renderer didRotate: %s", v24, 0xCu);
    sub_1000026BC(v26);

    v126[1](v19, v129);
  }

  else
  {

    v17[1](v19, v16);
  }

  v33 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v33 = flt_100036BEC[a1 - 2];
  }

  v34 = [*(v2 + 24) vistaView];
  v126 = [v34 scene];

  v35 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v36 = *(v11 + 16);
  v36(v15, v2 + v35, v10);
  v37 = v130;
  sub_100034574();
  LOBYTE(v34) = sub_100034564();
  v38 = *(v11 + 8);
  v38(v37, v10);
  v130 = v38;
  v38(v15, v10);
  v129 = v11 + 8;
  if ((v34 & 1) == 0)
  {
    *&v54 = sub_10000A8E8();
    v56 = v55;
    v58 = v57;
    v59 = v126;
    goto LABEL_43;
  }

  v114 = v36;
  v115 = v11 + 16;
  v116 = v35;
  v117 = v15;

  v39 = sub_100034714();

  v40 = *(v2 + 16);
  v113 = sub_100009638(v40, v39);

  v41 = (v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v45 = v41[2];
  v44 = v41[3];
  v47 = v41[4];
  v46 = v41[5];
  v118 = v2;
  if (v45 == 1)
  {
    v110 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v119 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v49 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v48 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v50 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v51 = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v52 = v48;
    v111 = v49;
    v53 = v49;
    v120 = v51;
    sub_1000053EC(v50, v51);
  }

  else
  {
    v110 = v42;
    v119 = v43;
    v111 = v45;
    v48 = v44;
    v50 = v47;
    v120 = v46;
  }

  v59 = v126;
  v126 = v48;
  v60 = v121;
  v112 = v50;
  if (v50)
  {
    sub_10001BC90(v42, v43, v45, v44, v47, v46);
    v50();
    v61 = v128;
    v62 = v123;
    (*(v128 + 56))(v60, 0, 1, v123);
    (*(v61 + 32))(v127, v60, v62);
  }

  else
  {
    v63 = v128;
    v62 = v123;
    (*(v128 + 56))(v121, 1, 1, v123);
    sub_10001BC90(v42, v43, v45, v44, v47, v46);
    sub_100034334();
    if ((*(v63 + 48))(v60, 1, v62) != 1)
    {
      sub_100007DDC(v60, &unk_100048480, &qword_100036730);
    }
  }

  v64 = v124;
  v36 = v114;
  v65 = v111;
  if (v111)
  {
    v66 = v111;
  }

  else
  {
    v66 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v15 = v117;
  (*(v128 + 32))(v64, v127, v62);
  *(v64 + *(v122 + 20)) = v66;
  if (v110 > 2)
  {
    if ((v110 - 4) < 6)
    {
      v67 = qword_100046A18;
      v68 = v65;
      if (v67 != -1)
      {
        swift_once();
      }

      v69 = v113;
      v2 = v118;
      v10 = v131;
      v70 = v126;
      goto LABEL_42;
    }

    if (v110 == 3)
    {
      v72 = qword_100046A08;
      v68 = v65;
      v2 = v118;
      if (v72 != -1)
      {
        swift_once();
      }

      v69 = v113;
      v10 = v131;
      v70 = v126;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (!v110)
  {
    if (v119)
    {
      v73 = qword_100046A80;
      v68 = v65;
      v2 = v118;
      if (v73 != -1)
      {
        swift_once();
      }

      v69 = v113;
      v10 = v131;
      v70 = v126;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v110 != 1)
  {
    if (v110 == 2)
    {
      v71 = qword_100046A10;
      v68 = v65;
      v2 = v118;
      if (v71 != -1)
      {
        swift_once();
      }

      v69 = v113;
      v10 = v131;
      v70 = v126;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if ((v119 & 1) == 0)
  {
LABEL_39:
    v75 = qword_100046A00;
    v68 = v65;
    v2 = v118;
    if (v75 != -1)
    {
      swift_once();
    }

    v69 = v113;
    v10 = v131;
    v70 = v126;
    goto LABEL_42;
  }

  v68 = v65;
  v74 = v113;
  sub_100009BF0(v64, v113);
  v69 = v74;
  v2 = v118;
  v10 = v131;
  v70 = v126;
LABEL_42:
  sub_100009914(v119 & 1, v69);
  v77 = v76;
  v56 = v78;
  v58 = v79;
  sub_10000A5B0(v64);

  sub_1000054D4(v112, v120);
  LODWORD(v54) = v77;
  v35 = v116;
LABEL_43:
  [v59 setCameraOrbit:{v54, v110}];
  [v59 setCameraOffset:v56];
  v80 = *(v2 + 16);
  v81 = sub_100009638(v80, v132);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v81;

  v89 = v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v89 = v83 | (v85 << 32);
  *(v89 + 8) = v87;
  *(v89 + 16) = v88;
  *(v89 + 24) = 0;
  v91 = CLLocationCoordinate2DMake(0.0, 0.0);
  *v90.i64 = v91.longitude;
  v92.i64[0] = 1;
  v93.i64[0] = *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v90.i64[1] = *&v91.latitude;
  __asm { FMOV            V0.2S, #-15.0 }

  [v59 setOffsetCoordinate:{COERCE_DOUBLE(vbslq_s8(vdupq_lane_s64(vceqq_s64(v93, v92), 0), v90, vcvtq_f64_f32(vmul_f32(v58, _D0))).i64[1])}];
  [v59 restingCameraRoll];
  v100 = v99;
  [v59 cameraPosition];
  v132 = v101;
  [v59 cameraTarget];
  v128 = v102;
  [v59 cameraUp];
  *&v103 = v33 + v100;
  [v59 setCamera:*&v132 target:*&v128 up:v104 roll:v103];
  [v59 updateCamera];
  v36(v15, v2 + v35, v10);
  LOBYTE(v80) = sub_100034544();
  (v130)(v15, v10);
  if (v80)
  {
    sub_100012108(0);
  }

  else
  {
    v105 = sub_100034B44();
    v106 = v125;
    (*(*(v105 - 8) + 56))(v125, 1, 1, v105);
    v107 = swift_allocObject();
    swift_weakInit();
    sub_100034B24();

    v108 = sub_100034B14();
    v109 = swift_allocObject();
    *(v109 + 16) = v108;
    *(v109 + 24) = &protocol witness table for MainActor;
    *(v109 + 32) = v107;
    *(v109 + 40) = 0;

    sub_10000E0F4(0, 0, v106, &unk_100036AE8, v109);
  }
}

uint64_t sub_10001ADA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001AE9C;

  return v6(a1);
}

uint64_t sub_10001AE9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10001AF94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B060(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007EA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000026BC(v11);
  return v7;
}

unint64_t sub_10001B060(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B16C(a5, a6);
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
    result = sub_100034DD4();
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

char *sub_10001B16C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001B1B8(a1, a2);
  sub_10001B2E8(&off_1000411A0);
  return v3;
}

char *sub_10001B1B8(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001B3D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100034DD4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100034A24();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001B3D4(v10, 0);
        result = sub_100034D94();
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

uint64_t sub_10001B2E8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001B448(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001B3D4(uint64_t a1, uint64_t a2)
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

  sub_1000035B0(&unk_100047870, &qword_100036AF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001B448(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035B0(&unk_100047870, &qword_100036AF0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_10001B53C(uint64_t a1, uint64_t a2)
{
  sub_100034EF4();
  sub_100034A04();
  v4 = sub_100034F14();

  return sub_10001B5F8(a1, a2, v4);
}

unint64_t sub_10001B5B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100034D64(*(v2 + 40));

  return sub_10001B6B0(a1, v4);
}

unint64_t sub_10001B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100034EC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001B6B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100007E3C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100034D74();
      sub_10001CD88(v8);
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

unint64_t sub_10001B778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479F8, &qword_100036BE0);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10001B874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479F0, &qword_100036BD8);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10001B978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_100046B88, &qword_100036750);
    v3 = sub_100034E74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001B53C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10001BA8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000035B0(&qword_1000479A8, &qword_100036B88);
    v3 = sub_100034E74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10001B53C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10001BB90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BBCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D270;

  return sub_10000D1A4(a1, v4, v5, v6, v7);
}

void sub_10001BC90(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 1)
  {
    v10 = a4;
    v11 = a3;

    sub_1000053EC(a5, a6);
  }
}

uint64_t sub_10001BCF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BD28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001D270;

  return sub_10001ADA4(a1, v4);
}

void *sub_10001BDE0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a2;
  v43 = a1;
  v44 = sub_1000347F4();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000345A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[4] = 0;
  v13 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  sub_1000346F4();
  swift_allocObject();
  *(v3 + v13) = sub_1000346E4();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) = 2;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
  v14 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 1;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  v15 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_displayLink;
  sub_100034534();
  swift_allocObject();
  *(v3 + v15) = sub_100034524();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationDuration) = 1069547520;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw) = 1;
  sub_1000342D4();
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_pulseWaitTime) = 0x407E000000000000;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange) = 1;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate) = 0;
  v16 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationAnimator;
  sub_100034784();
  swift_allocObject();
  *(v3 + v16) = sub_100034774();
  v17 = v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundDebugColorView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingDebugColorView) = 0;
  *(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer) = 0;
  v18 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotManager;
  sub_100034614();
  swift_allocObject();
  *(v3 + v18) = sub_100034604();
  v19 = v43;
  v3[2] = a3;
  v3[3] = v19;
  v20 = a3;
  v21 = v19;
  sub_100034BE4();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState, v12, v9);
  sub_100034C24();
  (*(v6 + 32))(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, v8, v44);
  v22 = v20;
  [objc_msgSend(v22 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v23 = sub_10001D800();
  v25 = v24;
  v27 = v26;

  swift_unknownObjectRelease();
  if (v27 == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v23;
  }

  if (v27 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v30 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  *v30 = v28;
  v30[8] = (v27 != 1) & v25;
  *(v30 + 2) = v29;
  *(v30 + 3) = 0;
  *(v30 + 4) = 0;
  *(v30 + 5) = 0;
  sub_10001CD14(&qword_100047888, type metadata accessor for AegirRenderingCoordinator, &unk_100036A78);

  sub_100034764();

  sub_100034724();

  [v21 setPulseAnimationDelegate:v4];
  [v21 setVistaTransitionStyle:0];
  v31 = [v21 vistaView];
  [v31 setObserver:v4];

  sub_10000BB98();
  v32 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v48 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v49 = v32;
  v47 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  v50 = v48;
  v33 = v32;
  sub_10001CCAC(&v50, v46, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v50 + 8, v46, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v33, *(&v33 + 1));
  sub_10000CBDC(&v47);
  sub_100007DDC(&v50, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v50 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v33, *(&v33 + 1));
  sub_10001CD14(&qword_1000478A0, type metadata accessor for AegirRenderingCoordinator, &unk_100036AA8);

  sub_100034504();

  sub_100034514();

  v34 = objc_opt_self();

  v35.super.isa = [v34 currentRunLoop];
  isa = v35.super.isa;
  sub_1000344F4(v35, NSRunLoopCommonModes);

  v37 = v4[3];
  v38 = v4[2];
  v39 = sub_100034C14();

  [v37 disableCloudDataFetch:v39 & 1];
  v40 = v4[2];
  LOBYTE(v37) = sub_100034BD4();

  if (v37)
  {
    sub_10000E8E4();
  }

  else
  {
    sub_10000F9CC();
  }

  v41 = [v4[3] vistaView];
  [v41 purgeUnused];

  return v4;
}

uint64_t sub_10001C508()
{
  v1 = [objc_allocWithZone(SBSWallpaperService) init];
  v0[175] = v1;
  v2 = swift_task_alloc();
  v0[176] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  type metadata accessor for CGRect(0);
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  v0[177] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 167, sub_10001C620, v0 + 162);
}

uint64_t sub_10001C63C()
{
  *(v0 + 1424) = CGRectGetMinY(*(v0 + 1336));

  return _swift_asyncLet_get(v0 + 656, v0 + 1368, sub_10001C6B8, v0 + 1296);
}

uint64_t sub_10001C6D4()
{
  *(v0 + 1432) = CGRectGetMinY(*(v0 + 1368));

  return _swift_asyncLet_finish(v0 + 656, v0 + 1368, sub_10001C750, v0 + 1296);
}

uint64_t sub_10001C76C()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, sub_10001C7D8, v0 + 656);
}

uint64_t sub_10001C7F4()
{
  v1 = *(v0 + 1400);

  [v1 invalidate];

  v2 = *(v0 + 8);
  v3 = *(v0 + 1424) != *(v0 + 1432);

  return v2(v3);
}

uint64_t sub_10001C87C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001D270;

  return sub_10000E3F4(a1, v5, v4);
}

uint64_t sub_10001C928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C9D4;

  return sub_10000E694(a1, v5, v4);
}

uint64_t sub_10001C9D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10001CAF4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 1)
  {

    sub_1000054D4(a5, a6);
  }
}

unint64_t sub_10001CB50()
{
  result = qword_1000478B0;
  if (!qword_1000478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000478B0);
  }

  return result;
}

uint64_t sub_10001CC10(uint64_t a1)
{
  if (*(v1 + 48))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10001CC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CCAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001CF10()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001CF50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D270;

  return sub_100012850(a1, v4, v5, v7, v6);
}

unint64_t sub_10001D010()
{
  result = qword_1000479D8;
  if (!qword_1000479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479D8);
  }

  return result;
}

uint64_t sub_10001D074()
{

  return _swift_deallocObject(v0, 86, 7);
}

uint64_t sub_10001D13C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C9D4;

  return sub_10000D1A4(a1, v4, v5, v6, v7);
}

uint64_t sub_10001D200()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

void sub_10001D240(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_10001D27C(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x79726572724FLL;
      }

      if (a1 == 3)
      {
        return 0x6E7275746153;
      }

      return 0x7972756372654DLL;
    }

    if (!a1)
    {
      return 0x6874726145;
    }

    if (a1 == 1)
    {
      return 1852796749;
    }

    return 0;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x7265746970754ALL;
      case 8:
        return 0x73756E617255;
      case 9:
        return 0x656E757470654ELL;
    }

    return 0;
  }

  if (a1 == 5)
  {
    return 0x73756E6556;
  }

  else
  {
    return 1936875853;
  }
}

uint64_t sub_10001D3B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6874726145 && a2 == 0xE500000000000000)
  {
    return 0;
  }

  if (sub_100034EC4())
  {
    return 0;
  }

  if (a1 == 1852796749 && a2 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x79726572724FLL && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7972756372654DLL && a2 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x73756E6556 && a2 == 0xE500000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 1936875853 && a2 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x7265746970754ALL && a2 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x6E7275746153 && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x73756E617255 && a2 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x656E757470654ELL && a2 == 0xE700000000000000)
  {
    return 9;
  }

  if (sub_100034EC4())
  {
    return 9;
  }

  return 0;
}

uint64_t sub_10001D678(float a1, float a2, float a3)
{
  sub_100034DB4(38);
  v4._countAndFlagsBits = 0x203A6B636F6C6E75;
  v4._object = 0xE800000000000000;
  sub_100034A14(v4);
  sub_100034BC4();
  v5._countAndFlagsBits = 0x203A656B6177203BLL;
  v5._object = 0xE800000000000000;
  sub_100034A14(v5);
  sub_100034BC4();
  v6._object = 0x80000001000378B0;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_100034A14(v6);
  sub_100034BC4();
  return 0;
}

uint64_t initializeBufferWithCopyOfBuffer for AegirSceneUpdateDriver(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirSceneUpdateDriver(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AegirSceneUpdateDriver(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10001D800()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v47 - v7;
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v50[0] = 0;
  v11 = [v0 loadUserInfoWithError:v50];
  v12 = v50[0];
  if (!v11)
  {
    v33 = v50[0];
    sub_100034294();

    swift_willThrow();
    sub_100034804();
    swift_errorRetain();
    v34 = sub_100034854();
    v35 = sub_100034C54();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_100034EE4();
      v40 = sub_10001AF94(v38, v39, v50);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to load configuration from contents %s", v36, 0xCu);
      sub_1000026BC(v37);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v13 = v11;
  v14 = sub_100034924();
  v15 = v12;

  v48 = 0x6174736956;
  v49 = 0xE500000000000000;
  sub_100034D84();
  if (!*(v14 + 16) || (v16 = sub_10001B5B4(v50), (v17 & 1) == 0))
  {

    sub_10001CD88(v50);
LABEL_13:
    sub_100034804();
    v30 = sub_100034854();
    v31 = sub_100034C54();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Vista not available in userInfo", v32, 2u);
    }

    (*(v2 + 8))(v8, v1);
    return 0;
  }

  sub_100007EA8(*(v14 + 56) + 32 * v16, v51);
  sub_10001CD88(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v19 = v48;
  v18 = v49;
  v48 = 0x656C797453;
  v49 = 0xE500000000000000;
  sub_100034D84();
  if (*(v14 + 16) && (v20 = sub_10001B5B4(v50), (v21 & 1) != 0))
  {
    sub_100007EA8(*(v14 + 56) + 32 * v20, v51);
    sub_10001CD88(v50);
    if (swift_dynamicCast())
    {
      v23 = v48;
      v22 = v49;
      v48 = 0x6E6F697461636F4CLL;
      v49 = 0xE800000000000000;
      sub_100034D84();
      if (*(v14 + 16) && (v24 = sub_10001B5B4(v50), (v25 & 1) != 0))
      {
        sub_100007EA8(*(v14 + 56) + 32 * v24, v51);
        sub_10001CD88(v50);

        if (swift_dynamicCast())
        {
          v26 = v48;
          v27 = v49;
          sub_10001DE38();
          v28 = sub_100001E48(v26, v27);
          v29 = v28;
LABEL_30:
          v45 = sub_10001D3B8(v19, v18);

          v46._rawValue = &off_100041468;
          v52._countAndFlagsBits = v23;
          v52._object = v22;
          sub_100034E94(v46, v52);

          return v45;
        }
      }

      else
      {

        sub_10001CD88(v50);
      }

      v28 = 0;
      goto LABEL_30;
    }
  }

  else
  {

    sub_10001CD88(v50);
  }

  sub_100034804();
  v42 = sub_100034854();
  v43 = sub_100034C64();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Style not available in configuration", v44, 2u);
  }

  (*(v2 + 8))(v10, v1);
  return 0;
}

unint64_t sub_10001DE38()
{
  result = qword_1000470C0;
  if (!qword_1000470C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000470C0);
  }

  return result;
}

id sub_10001DE84(int a1)
{
  v1 = BYTE2(a1) * 0.00392156863;
  v2 = BYTE1(a1) * 0.00392156863;
  v3 = a1 * 0.00392156863;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = [objc_allocWithZone(UIColor) initWithRed:v1 green:v2 blue:v3 alpha:1.0];
  v6 = [v4 initWithColor:v5];

  return v6;
}

Swift::Int sub_10001DF78()
{
  v1 = *v0;
  sub_100034EF4();
  sub_100034F04(dword_100036D30[v1]);
  return sub_100034F14();
}

Swift::Int sub_10001E000(uint64_t a1)
{
  v2 = *v1;
  sub_100034EF4();
  sub_100034F04(dword_100036D30[v2]);
  return sub_100034F14();
}

uint64_t sub_10001E04C@<X0>(Swift::UInt32 *a1@<X0>, AegirPoster::PlanetColors_optional *a2@<X8>)
{
  result = _s11AegirPoster12PlanetColorsO8rawValueACSgs6UInt32V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t _s11AegirPoster12PlanetColorsO8rawValueACSgs6UInt32V_tcfC_0(int a1)
{
  if (a1 <= 10589062)
  {
    if (a1 > 8308449)
    {
      if (a1 == 8308450)
      {
        return 7;
      }

      if (a1 == 9211020)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 6920424)
      {
        return 8;
      }

      if (a1 == 7442351)
      {
        return 2;
      }
    }
  }

  else if (a1 <= 12426328)
  {
    if (a1 == 10589063)
    {
      return 0;
    }

    if (a1 == 11435597)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 12426329:
        return 6;
      case 12544846:
        return 5;
      case 14452348:
        return 4;
    }
  }

  return 9;
}

unint64_t sub_10001E1A4()
{
  result = qword_100047B80;
  if (!qword_100047B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanetColors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanetColors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E368()
{
  v0 = sub_100034874();
  sub_100007D20(v0, qword_1000493E8);
  sub_100007CE8(v0, qword_1000493E8);
  sub_100034844();
  return sub_100034864();
}

id sub_10001E3D0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AegirUpdatingController();
  v1 = objc_msgSendSuper2(&v7, "init");
  if (qword_100046AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_1000493E8);
  v3 = sub_100034854();
  v4 = sub_100034C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AegirUpdatingController created", v5, 2u);
  }

  return v1;
}

id sub_10001E4F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirUpdatingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001E54C()
{
  sub_1000035B0(&qword_100047C48, &qword_100036DE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036D60;
  sub_10000A83C(0, &qword_100046B68, PRPosterColor_ptr);
  v1 = sub_10001DE84(7442351);
  v2 = PRTimeFontIdentifierSoft;
  *(v0 + 32) = 0x747261452D313056;
  *(v0 + 40) = 0xE900000000000068;
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = &off_1000414B8;
  v3 = v2;
  v4 = sub_10001DE84(9211020);
  v5 = PRTimeFontIdentifierRounded;
  *(v0 + 80) = 0x6E6F6F4D2D323056;
  *(v0 + 88) = 0xE800000000000000;
  *(v0 + 96) = 1;
  *(v0 + 104) = v4;
  *(v0 + 112) = v5;
  *(v0 + 120) = &off_1000414F0;
  v6 = v5;
  v7 = sub_10001DE84(14452348);
  v8 = PRTimeFontIdentifierStencil;
  *(v0 + 128) = 0x7372614D2D333056;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = 6;
  *(v0 + 152) = v7;
  *(v0 + 160) = v8;
  *(v0 + 168) = &off_100041528;
  v9 = v8;
  v10 = sub_10001DE84(12544846);
  v11 = PRTimeFontIdentifierNewYork;
  *(v0 + 176) = 0x6970754A2D343056;
  *(v0 + 184) = 0xEB00000000726574;
  *(v0 + 192) = 7;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  *(v0 + 216) = &off_100041560;
  v12 = v11;
  v13 = sub_10001DE84(12426329);
  v14 = PRTimeFontIdentifierSlab;
  *(v0 + 224) = 0x757461532D353056;
  *(v0 + 232) = 0xEA00000000006E72;
  *(v0 + 240) = 3;
  *(v0 + 248) = v13;
  *(v0 + 256) = v14;
  *(v0 + 264) = &off_100041598;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 vibrantMaterialColor];
  v18 = PRTimeFontIdentifierRail;
  *(v0 + 272) = 0x6572724F2D363056;
  *(v0 + 280) = 0xEA00000000007972;
  *(v0 + 288) = 2;
  *(v0 + 296) = v17;
  *(v0 + 304) = v18;
  *(v0 + 312) = &off_1000415D0;
  off_100047B90 = v0;

  return _objc_retain_x1();
}

void sub_10001E908(uint64_t a1, uint64_t a2)
{
  sub_1000035B0(&qword_1000483A0, qword_100037210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100036D70;
  v3 = objc_allocWithZone(ATXComplication);
  v4 = sub_100034984();
  v5 = sub_100034984();
  v6 = sub_100034984();
  v7 = [v3 initWithExtensionBundleIdentifier:v4 kind:v5 containerBundleIdentifier:v6 widgetFamily:11 intent:0 source:5];

  *(inited + 32) = v7;
  v122 = inited + 32;
  v8 = objc_allocWithZone(ATXComplication);
  v9 = sub_100034984();
  v10 = sub_100034984();
  v11 = sub_100034984();
  v12 = [v8 initWithExtensionBundleIdentifier:v9 kind:v10 containerBundleIdentifier:v11 widgetFamily:10 intent:0 source:5];

  *(inited + 40) = v12;
  v13 = objc_allocWithZone(ATXComplication);
  v14 = sub_100034984();
  v15 = sub_100034984();
  v16 = sub_100034984();
  v17 = [v13 initWithExtensionBundleIdentifier:v14 kind:v15 containerBundleIdentifier:v16 widgetFamily:10 intent:0 source:5];

  *(inited + 48) = v17;
  v18 = objc_allocWithZone(ATXComplication);
  v19 = sub_100034984();
  v20 = sub_100034984();
  v21 = sub_100034984();
  v22 = [v18 initWithExtensionBundleIdentifier:v19 kind:v20 containerBundleIdentifier:v21 widgetFamily:10 intent:0 source:5];

  *(inited + 56) = v22;
  v23 = objc_allocWithZone(ATXComplication);
  v24 = sub_100034984();
  v25 = sub_100034984();
  v26 = sub_100034984();
  v27 = [v23 initWithExtensionBundleIdentifier:v24 kind:v25 containerBundleIdentifier:v26 widgetFamily:10 intent:0 source:5];

  *(inited + 64) = v27;
  v28 = objc_allocWithZone(ATXComplication);
  v29 = sub_100034984();
  v30 = sub_100034984();
  v31 = sub_100034984();
  v32 = [v28 initWithExtensionBundleIdentifier:v29 kind:v30 containerBundleIdentifier:v31 widgetFamily:10 intent:0 source:5];

  *(inited + 72) = v32;
  v33 = [objc_opt_self() currentDevice];
  v123 = [v33 userInterfaceIdiom];

  if (qword_100046AA8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v34 = off_100047B90;
    v126 = *(off_100047B90 + 2);
    if (!v126)
    {
      break;
    }

    v121 = inited & 0xC000000000000001;
    v124 = inited & 0xFFFFFFFFFFFFFF8;
    inited = 0;
    v35 = (off_100047B90 + 72);
    v36 = a1;
    v125 = off_100047B90;
    while (inited < v34[2])
    {
      v38 = *(v35 - 5);
      v37 = *(v35 - 4);
      v40 = *(v35 - 3);
      v39 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      v43 = *(v36 + 16);
      swift_bridgeObjectRetain_n();
      v44 = v39;
      v45 = v38;
      log = v44;
      v46 = v41;
      v131 = v42;

      if (v43)
      {
        v47 = sub_10001B53C(v45, v37);
        if (v48)
        {
          v49 = v45;
          v50 = *(*(v36 + 56) + 8 * v47);
          v51 = sub_100034984();
          v52 = [v50 objectForUserInfoKey:v51];

          if (v52)
          {
            sub_100034D44();
            swift_unknownObjectRelease();
          }

          else
          {
            v136 = 0u;
            v137 = 0u;
          }

          v138[0] = v136;
          v138[1] = v137;
          v45 = v49;
          if (*(&v137 + 1))
          {
            if ((swift_dynamicCast() & 1) != 0 && *&v135[0] == 1000)
            {
              if (qword_100046AA0 != -1)
              {
                swift_once();
              }

              v53 = sub_100034874();
              sub_100007CE8(v53, qword_1000493E8);

              v54 = sub_100034854();
              v55 = sub_100034C64();

              if (os_log_type_enabled(v54, v55))
              {
                v56 = v45;
                v57 = swift_slowAlloc();
                v58 = swift_slowAlloc();
                *&v138[0] = v58;
                *v57 = 136315138;
                v59 = sub_10001AF94(v56, v37, v138);
                v60 = v46;
                v61 = v59;

                *(v57 + 4) = v61;
                v46 = v60;
                _os_log_impl(&_mh_execute_header, v54, v55, "Reusing descriptor %s", v57, 0xCu);
                sub_1000026BC(v58);
                v36 = a1;
              }

              else
              {
              }

              goto LABEL_46;
            }
          }

          else
          {

            sub_10001FCF8(v138);
          }
        }
      }

      if (qword_100046AA0 != -1)
      {
        swift_once();
      }

      v130 = inited;
      v62 = sub_100034874();
      sub_100007CE8(v62, qword_1000493E8);

      v63 = sub_100034854();
      v64 = sub_100034C64();

      v134 = v46;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v138[0] = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_10001AF94(v45, v37, v138);
        _os_log_impl(&_mh_execute_header, v63, v64, "Creating descriptor %s", v65, 0xCu);
        sub_1000026BC(v66);
      }

      v128 = v45;
      v67 = sub_100034984();
      v68 = [objc_opt_self() mutableDescriptorWithIdentifier:v67];

      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_100036D80;
      v70 = v37;
      v71 = objc_allocWithZone(PRTimeFontConfiguration);
      v50 = v68;
      *(v69 + 32) = [v71 initWithTimeFontIdentifier:v134];
      sub_10000A83C(0, &qword_100047C30, PRTimeFontConfiguration_ptr);
      isa = sub_100034AB4().super.isa;

      [v50 setPreferredTimeFontConfigurations:isa];

      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100036D80;
      *(v73 + 32) = log;
      sub_10000A83C(0, &qword_100046B68, PRPosterColor_ptr);
      v129 = log;
      v74 = sub_100034AB4().super.isa;

      [v50 setPreferredTitleColors:v74];

      v75 = [objc_allocWithZone(PRPosterRenderingConfiguration) initWithDepthEffectDisabled:0 motionEffectsDisabled:1];
      [v50 setPreferredRenderingConfiguration:v75];

      *&v136 = 0x6174736956;
      *(&v136 + 1) = 0xE500000000000000;
      sub_100034D84();
      v76 = sub_10001D27C(v40);
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v76;
      *(&v136 + 1) = v77;
      sub_100007E98(&v136, v135);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v135, v138, isUniquelyReferenced_nonNull_native);
      sub_10001CD88(v138);
      *&v136 = 0x656C797453;
      *(&v136 + 1) = 0xE500000000000000;
      sub_100034D84();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = 1819047238;
      *(&v136 + 1) = 0xE400000000000000;
      sub_100007E98(&v136, v135);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v135, v138, v79);
      sub_10001CD88(v138);
      *&v136 = 0x6E6F6973726576;
      *(&v136 + 1) = 0xE700000000000000;
      sub_100034D84();
      *(&v137 + 1) = &type metadata for Int;
      *&v136 = 1000;
      sub_100007E98(&v136, v135);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000071FC(v135, v138, v80);
      sub_10001CD88(v138);
      v81 = sub_100034914().super.isa;

      *&v138[0] = 0;
      LODWORD(v71) = [v50 storeUserInfo:v81 error:v138];

      v82 = *&v138[0];
      if (v71)
      {
        v83 = objc_allocWithZone(ATXPosterDescriptorGalleryOptions);
        v84 = v82;
        v85 = [v83 init];
        [v85 setAllowsSystemSuggestedComplications:0];
        [v85 setFeaturedConfidenceLevel:1];
        if (v123)
        {
          inited = v130;
          [v85 setAllowsSystemSuggestedComplicationsInLandscape:(v130 & 1) == 0];
        }

        else
        {
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_100036610;
          inited = v130;
          if (!v131[2])
          {
            goto LABEL_59;
          }

          v96 = v95;
          v97 = v131[4];
          if (v121)
          {
            v96[4] = sub_100034DC4();
            if (v131[2] < 2uLL)
            {
              goto LABEL_61;
            }

            v96[5] = sub_100034DC4();
            if (v131[2] < 3uLL)
            {
              goto LABEL_64;
            }

            v106 = sub_100034DC4();
          }

          else
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v97 >= *(v124 + 16))
            {
              goto LABEL_62;
            }

            v98 = *(v122 + 8 * v97);
            v96[4] = v98;
            v99 = v131[2];
            v100 = v98;
            if (v99 < 2)
            {
              goto LABEL_61;
            }

            v101 = v131[5];
            if ((v101 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v101 >= *(v124 + 16))
            {
              goto LABEL_65;
            }

            v102 = *(v122 + 8 * v101);
            v96[5] = v102;
            v103 = v131[2];
            v104 = v102;
            if (v103 < 3)
            {
              goto LABEL_64;
            }

            v105 = v131[6];
            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            if (v105 >= *(v124 + 16))
            {
              goto LABEL_67;
            }

            v106 = *(v122 + 8 * v105);
          }

          v96[6] = v106;
          sub_10000A83C(0, &qword_100047C38, ATXComplication_ptr);
          v107 = sub_100034AB4().super.isa;

          [v85 setModularComplications:v107];
        }

        *&v138[0] = 0;
        if ([v50 storeGalleryOptions:v85 error:v138])
        {
          v108 = *&v138[0];

          v36 = a1;
          v46 = v134;
LABEL_46:
          v109 = v50;
          sub_100034AA4();
          if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100034AE4();
          }

          sub_100034AF4();

          goto LABEL_6;
        }

        v110 = *&v138[0];
        v111 = sub_100034294();

        swift_willThrow();

        swift_errorRetain();
        v112 = sub_100034854();
        v113 = sub_100034C54();

        loga = v112;
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *&v138[0] = swift_slowAlloc();
          *v114 = 136315394;
          v115 = sub_10001AF94(v128, v70, v138);

          *(v114 + 4) = v115;
          *(v114 + 12) = 2082;
          *&v136 = v111;
          swift_errorRetain();
          sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
          v116 = sub_1000349C4();
          v118 = sub_10001AF94(v116, v117, v138);

          *(v114 + 14) = v118;
          _os_log_impl(&_mh_execute_header, loga, v113, "Unable to store gallery options %s error=%{public}s", v114, 0x16u);
          swift_arrayDestroy();
          inited = v130;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v36 = a1;
      }

      else
      {
        v86 = *&v138[0];
        v87 = sub_100034294();

        swift_willThrow();

        swift_errorRetain();
        v88 = sub_100034854();
        v89 = sub_100034C54();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *&v138[0] = swift_slowAlloc();
          *v90 = 136315394;
          v91 = sub_10001AF94(v45, v70, v138);

          *(v90 + 4) = v91;
          *(v90 + 12) = 2082;
          *&v136 = v87;
          swift_errorRetain();
          sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
          v92 = sub_1000349C4();
          v94 = sub_10001AF94(v92, v93, v138);

          *(v90 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v88, v89, "Unable to store user info %s error=%{public}s", v90, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v36 = a1;
        inited = v130;
      }

LABEL_6:
      ++inited;
      v35 += 6;
      v34 = v125;
      if (v126 == inited)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

LABEL_57:

  sub_10000A83C(0, &unk_100047C20, PRPosterDescriptor_ptr);
  v119 = sub_100034AB4().super.isa;
  (*(a2 + 16))(a2, v119, 0);
}

uint64_t sub_10001FBEC(uint64_t a1, uint64_t a2)
{
  if (qword_100046AA0 != -1)
  {
    swift_once();
  }

  v4 = sub_100034874();
  sub_100007CE8(v4, qword_1000493E8);
  v5 = sub_100034854();
  v6 = sub_100034C64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "updateConfiguration", v7, 2u);
  }

  v8 = *(a2 + 16);

  return v8(a2, a1, 0);
}

uint64_t sub_10001FCF8(uint64_t a1)
{
  v2 = sub_1000035B0(&qword_100047C40, &qword_100036B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FD60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001FDA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

AegirPoster::AegirPosterCropStyle __swiftcall AegirPosterCropStyle.init(name:)(Swift::String name)
{
  object = name._object;
  v5._countAndFlagsBits = name._countAndFlagsBits;
  v2._rawValue = &off_100041468;
  v5._object = object;
  v3 = sub_100034E94(v2, v5);

  return v3 == 1;
}

AegirPoster::AegirPosterCropStyle_optional __swiftcall AegirPosterCropStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100041468;
  v6._object = object;
  v3 = sub_100034E94(v2, v6);

  if (v3 == 1)
  {
    v4.value = AegirPoster_AegirPosterCropStyle_detail;
  }

  else
  {
    v4.value = AegirPoster_AegirPosterCropStyle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t AegirPosterCropStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C6961746544;
  }

  else
  {
    return 1819047238;
  }
}

uint64_t sub_10001FECC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6961746544;
  }

  else
  {
    v3 = 1819047238;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6961746544;
  }

  else
  {
    v5 = 1819047238;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100034EC4();
  }

  return v8 & 1;
}

Swift::Int sub_10001FF68()
{
  sub_100034EF4();
  sub_100034A04();

  return sub_100034F14();
}

uint64_t sub_10001FFE0(uint64_t a1)
{
  sub_100034A04();
}

Swift::Int sub_100020044(uint64_t a1)
{
  sub_100034EF4();
  sub_100034A04();

  return sub_100034F14();
}

uint64_t sub_1000200B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100041468;
  v8._object = v3;
  v5 = sub_100034E94(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100020118(uint64_t *a1@<X8>)
{
  v2 = 1819047238;
  if (*v1)
  {
    v2 = 0x6C6961746544;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100020170(float32_t a1, float32x2_t a2, int8x8_t a3, float32_t a4, float32x2_t a5, int8x8_t a6)
{
  v6 = vext_s8(a3, a2, 4uLL);
  *v7.f32 = vdup_lane_s32(a3, 0);
  *&v7.u32[2] = v6;
  v7.f32[0] = a1;
  v8 = vext_s8(a6, a5, 4uLL);
  *v9.f32 = vdup_lane_s32(a6, 0);
  *&v9.u32[2] = v8;
  v9.f32[0] = a4;
  v10 = vmovn_s32(vceqq_f32(v7, v9));
  v10.i16[0] = vminv_u16(v10);
  return v10.i32[0] & vceq_f32(a2, a5).i32[1] & 1;
}

unint64_t sub_1000201B8()
{
  result = qword_100047C50;
  if (!qword_100047C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047C50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AegirPosterCropStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AegirPosterCropStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_100020368()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator] = 0;
  v5 = type metadata accessor for AegirEditingController();
  v11.receiver = v0;
  v11.super_class = v5;
  v6 = objc_msgSendSuper2(&v11, "init");
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AegirEditingController created", v9, 2u);
  }

  (*(v2 + 8))(v4, v1);
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();

  swift_unknownObjectRelease_n();

  return v6;
}

id sub_100020554(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AegirEditingController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000205BC(void *a1, void *a2)
{
  v3 = v2;
  v10[4] = sub_10002070C;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100020770;
  v10[3] = &unk_100041EE8;
  v6 = _Block_copy(v10);

  [a1 updatePreferences:v6];
  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [a2 deviceOrientation];
    type metadata accessor for AegirEditingCoordinator();
    swift_allocObject();
    v8 = a1;
    v9 = sub_10002C5E0(v7, v8);

    *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator) = v9;
  }
}

id sub_10002070C(void *a1)
{
  [a1 setDepthEffectEnabled:1];
  [a1 setAdaptiveTimeMode:3];

  return [a1 setComplicationRowMode:1];
}

double sub_100020770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  swift_unknownObjectRelease();
  return result;
}

double sub_100020D54(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100034874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Editor did update. Updating editingCoordinator.", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  if (*(v2 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {

    sub_10002CAC0();
  }

  return result;
}

void sub_100020EC0(uint64_t a1, const void *a2)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a2);
  sub_100034814();
  v8 = sub_100034854();
  v9 = sub_100034C64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "finalizeWithCompletion", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if (*(a1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator))
  {
    _Block_copy(a2);

    sub_10002CC4C(v11, a2);
    _Block_release(a2);
  }

  _Block_release(a2);
}

double sub_10002104C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v6 = sub_100034854();
  v7 = sub_100034C64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AegirEditingController invalidated", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator) = 0;

  return result;
}

uint64_t sub_1000211A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirEditingController_coordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 56);
  v8 = *(v1 + 40);
  v9 = v2;
  v7 = *(v1 + 24);
  v10 = v8;
  v3 = v2;

  sub_10001CCAC(&v10, v6, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v10 + 8, v6, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v3, *(&v3 + 1));
  v4 = sub_100004930(&v7);
  sub_100007DDC(&v10, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v10 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v3, *(&v3 + 1));

  return v4;
}

unint64_t sub_1000212C8()
{
  result = qword_100047CF0;
  if (!qword_100047CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047CF0);
  }

  return result;
}

uint64_t sub_100021314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002132C()
{
  v0 = sub_100034874();
  sub_100007D20(v0, qword_100049400);
  sub_100007CE8(v0, qword_100049400);
  return sub_100034864();
}

uint64_t CLAuthorizationStatus.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6574654420746F4ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736552;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 0x6465696E6544;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000016;
    }

    return 0x6E776F6E6B6E55;
  }

  return 0x7A69726F68747541;
}

uint64_t sub_100021478()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6574654420746F4ELL;
    }

    if (v1 == 1)
    {
      return 0x7463697274736552;
    }

    return 0x6E776F6E6B6E55;
  }

  if (v1 == 2)
  {
    return 0x6465696E6544;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000016;
    }

    return 0x6E776F6E6B6E55;
  }

  return 0x7A69726F68747541;
}

NSString sub_100021544()
{
  result = sub_100034984();
  qword_100049418 = result;
  return result;
}

NSString sub_10002157C()
{
  result = sub_100034984();
  qword_100049420 = result;
  return result;
}

id sub_1000215B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location);
  *a2 = v2;
  return v2;
}

void sub_1000215EC(int a1)
{
  v20 = a1;
  v2 = sub_100034C74();
  __chkstk_darwin(v2);
  v3 = sub_1000348B4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100034C84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager] = 0;
  v19 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationQueue;
  v18 = sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1000348A4();
  v22 = &_swiftEmptyArrayStorage;
  sub_10002345C(&qword_100047DB8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000035B0(&qword_100047DC0, "h#");
  sub_1000234A4(&qword_100047DC8, &qword_100047DC0, "h#");
  sub_100034D54();
  *&v1[v19] = sub_100034CC4();
  v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_isInEditor] = v20;
  v8 = type metadata accessor for AegirLocationManager();
  v21.receiver = v1;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, "init");
  v10 = objc_allocWithZone(CLLocationManager);
  v11 = v9;
  v12 = [v10 init];
  v13 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager;
  v14 = *&v11[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager];
  *&v11[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v15 setDelegate:v11];

  v16 = *&v11[v13];
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v16 setDesiredAccuracy:kCLLocationAccuracyThreeKilometers];
  v17 = *&v11[v13];
  if (v17)
  {
    [v17 setShowsBackgroundLocationIndicator:0];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100021958(unint64_t a1)
{
  v4 = v1;
  if ((*&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus] - 3) > 1)
  {
    v10 = *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location];
    *&v1[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location] = 0;

    return;
  }

  if (a1)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v11 = a1;
      v6 = sub_100034E44();
      a1 = v11;
      if (v6)
      {
LABEL_5:
        v7 = __OFSUB__(v6, 1);
        v8 = v6 - 1;
        if (v7)
        {
          __break(1u);
        }

        else if ((a1 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *(v5 + 16))
          {
            v9 = *(a1 + 8 * v8 + 32);
LABEL_10:
            v2 = v9;
            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_46;
        }

        v9 = sub_100034DC4();
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }
  }

  v2 = 0;
LABEL_14:
  v3 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location;
  v12 = *&v4[OBJC_IVAR____TtC11AegirPoster20AegirLocationManager__location];
  if (!v12)
  {
    if (!v2)
    {
      return;
    }

    if (qword_100046AB0 == -1)
    {
LABEL_29:
      v31 = sub_100034874();
      sub_100007CE8(v31, qword_100049400);
      v32 = v2;
      v33 = sub_100034854();
      v34 = sub_100034C64();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v49 = v36;
        *v35 = 136380675;

        [v32 coordinate];
        sub_100034BA4();
        v52._countAndFlagsBits = 44;
        v52._object = 0xE100000000000000;
        sub_100034A14(v52);
        [v32 coordinate];
        sub_100034BA4();
        v37 = sub_10001AF94(0, 0xE000000000000000, &v49);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "current location: nil; new location: %{private}s)", v35, 0xCu);
        sub_1000026BC(v36);

LABEL_37:

        goto LABEL_39;
      }

LABEL_36:

      goto LABEL_37;
    }

LABEL_46:
    swift_once();
    goto LABEL_29;
  }

  if (!v2)
  {
    if (qword_100046AB0 != -1)
    {
      swift_once();
    }

    v38 = sub_100034874();
    sub_100007CE8(v38, qword_100049400);
    v32 = v4;
    v33 = sub_100034854();
    v39 = sub_100034C64();
    if (os_log_type_enabled(v33, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136380675;
      v42 = *&v4[v3];
      if (!v42)
      {

        __break(1u);
        return;
      }

      v43 = v41;
      v44 = v42;

      [v44 coordinate];
      sub_100034BA4();
      v53._countAndFlagsBits = 44;
      v53._object = 0xE100000000000000;
      sub_100034A14(v53);
      [v44 coordinate];
      sub_100034BA4();

      v45 = sub_10001AF94(0, 0xE000000000000000, &v49);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v33, v39, "current location: %{private}s); new location: nil", v40, 0xCu);
      sub_1000026BC(v43);

      v2 = 0;
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v13 = v2;
  v14 = v12;
  [v14 coordinate];
  v16 = v15;
  [v13 coordinate];
  v18 = (v16 - v17) * 40.0;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v19 = floor(v18);
  v20 = sub_100034874();
  sub_100007CE8(v20, qword_100049400);
  v21 = v13;
  v22 = v14;
  v23 = sub_100034854();
  v24 = sub_100034C64();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v25 = 136381187;
    v49 = v48;
    [v22 coordinate];
    sub_100034BA4();
    v47 = v24;
    v50._countAndFlagsBits = 44;
    v50._object = 0xE100000000000000;
    sub_100034A14(v50);
    [v22 coordinate];
    sub_100034BA4();
    v26 = sub_10001AF94(0, 0xE000000000000000, &v49);

    *(v25 + 4) = v26;
    *(v25 + 12) = 2081;
    [v21 coordinate];
    sub_100034BA4();
    v51._countAndFlagsBits = 44;
    v51._object = 0xE100000000000000;
    sub_100034A14(v51);
    [v21 coordinate];
    sub_100034BA4();
    v27 = sub_10001AF94(0, 0xE000000000000000, &v49);

    *(v25 + 14) = v27;
    *(v25 + 22) = 2080;
    if (v19 == 0.0)
    {
      v28 = 7562585;
    }

    else
    {
      v28 = 28494;
    }

    if (v19 == 0.0)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE200000000000000;
    }

    v30 = sub_10001AF94(v28, v29, &v49);

    *(v25 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v23, v47, "current location: %{private}s); new location: %{private}s); areEqual? %s", v25, 0x20u);
    swift_arrayDestroy();

    if (v19 == 0.0)
    {
      goto LABEL_40;
    }

LABEL_39:
    v46 = *&v4[v3];
    *&v4[v3] = v2;

    return;
  }

  if (v19 != 0.0)
  {
    goto LABEL_39;
  }

LABEL_40:
}

void sub_1000220FC(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (*a1 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 postNotificationName:*a2 object:0];
}

void sub_1000221A0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_isInEditor) == 1)
  {
    v2 = v1;
    v4 = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
    if (qword_100046AB0 != -1)
    {
      swift_once();
    }

    v5 = sub_100034874();
    sub_100007CE8(v5, qword_100049400);
    v6 = sub_100034854();
    v7 = sub_100034C64();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_26:

      v16 = *(v2 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
      if (a1)
      {
        if (v16)
        {
          v17 = "requestWhenInUseAuthorizationWithPrompt";
LABEL_31:

          [v16 v17];
          return;
        }

        __break(1u);
      }

      else if (v16)
      {
        v17 = "requestWhenInUseAuthorization";
        goto LABEL_31;
      }

      __break(1u);
      return;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    if (v4 <= 1)
    {
      if (!v4)
      {
        v10 = 0xEE0064656E696D72;
        v11 = 0x6574654420746F4ELL;
        goto LABEL_25;
      }

      if (v4 != 1)
      {
        goto LABEL_24;
      }

      v11 = 0x7463697274736552;
    }

    else
    {
      if (v4 == 2)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6465696E6544;
        goto LABEL_25;
      }

      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v10 = 0x8000000100037C40;
          v11 = 0xD000000000000016;
LABEL_25:
          v15 = sub_10001AF94(v11, v10, &v19);

          *(v8 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v6, v7, "Requesting authorization (current: %s", v8, 0xCu);
          sub_1000026BC(v9);

          goto LABEL_26;
        }

LABEL_24:
        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E55;
        goto LABEL_25;
      }

      v11 = 0x7A69726F68747541;
    }

    v10 = 0xEA00000000006465;
    goto LABEL_25;
  }

  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v12 = sub_100034874();
  sub_100007CE8(v12, qword_100049400);
  oslog = sub_100034854();
  v13 = sub_100034C54();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Tried to request location authorization outside of editor. This is not allowed.", v14, 2u);
  }
}

id sub_1000224F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v3 = sub_100034874();
  sub_100007CE8(v3, qword_100049400);
  v4 = sub_100034854();
  v5 = sub_100034C64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    if (v2 <= 1)
    {
      if (!v2)
      {
        v8 = 0xEE0064656E696D72;
        v9 = 0x6574654420746F4ELL;
        goto LABEL_17;
      }

      if (v2 != 1)
      {
        goto LABEL_16;
      }

      v9 = 0x7463697274736552;
    }

    else
    {
      if (v2 == 2)
      {
        v8 = 0xE600000000000000;
        v9 = 0x6465696E6544;
        goto LABEL_17;
      }

      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v8 = 0x8000000100037C40;
          v9 = 0xD000000000000016;
LABEL_17:
          v10 = sub_10001AF94(v9, v8, &v12);

          *(v6 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v4, v5, "startUpdatingLocation (authorization: %s", v6, 0xCu);
          sub_1000026BC(v7);

          goto LABEL_18;
        }

LABEL_16:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_17;
      }

      v9 = 0x7A69726F68747541;
    }

    v8 = 0xEA00000000006465;
    goto LABEL_17;
  }

LABEL_18:

  result = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
  if (result)
  {

    return [result _startMonitoringSignificantLocationChangesOfDistance:1 withPowerBudget:50000.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100022740()
{
  v1 = v0;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_100049400);
  v3 = sub_100034854();
  v4 = sub_100034C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "stopUpdatingLocation", v5, 2u);
  }

  result = *(v1 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_locationManager);
  if (result)
  {

    return [result stopMonitoringSignificantLocationChanges];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100022878(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AegirLocationManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100022A28(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus;
  v4 = *(v2 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus);
  v5 = [a1 authorizationStatus];
  *(v2 + v3) = v5;
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v6 = sub_100034874();
  sub_100007CE8(v6, qword_100049400);
  v7 = sub_100034854();
  v8 = sub_100034C64();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 0xEE0064656E696D72;
    v10 = 0x6574654420746F4ELL;
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136315394;
    if (v4 <= 1)
    {
      v12 = 0x6574654420746F4ELL;
      v13 = 0xEE0064656E696D72;
      if (!v4)
      {
        goto LABEL_16;
      }

      if (v4 != 1)
      {
        goto LABEL_15;
      }

      v12 = 0x7463697274736552;
    }

    else
    {
      if (v4 == 2)
      {
        v13 = 0xE600000000000000;
        v12 = 0x6465696E6544;
        goto LABEL_16;
      }

      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v12 = 0xD000000000000016;
          v13 = 0x8000000100037C40;
          goto LABEL_16;
        }

LABEL_15:
        v13 = 0xE700000000000000;
        v12 = 0x6E776F6E6B6E55;
LABEL_16:
        v14 = sub_10001AF94(v12, v13, &v16);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        if (v5 <= 1)
        {
          if (!v5)
          {
            goto LABEL_28;
          }

          if (v5 != 1)
          {
LABEL_27:
            v9 = 0xE700000000000000;
            v10 = 0x6E776F6E6B6E55;
            goto LABEL_28;
          }

          v10 = 0x7463697274736552;
        }

        else
        {
          if (v5 == 2)
          {
            v9 = 0xE600000000000000;
            v10 = 0x6465696E6544;
            goto LABEL_28;
          }

          if (v5 != 3)
          {
            if (v5 == 4)
            {
              v10 = 0xD000000000000016;
              v9 = 0x8000000100037C40;
LABEL_28:
              v15 = sub_10001AF94(v10, v9, &v16);

              *(v11 + 14) = v15;
              _os_log_impl(&_mh_execute_header, v7, v8, "Location manager didChangeAuthorization: %s -> %s", v11, 0x16u);
              swift_arrayDestroy();

              goto LABEL_29;
            }

            goto LABEL_27;
          }

          v10 = 0x7A69726F68747541;
        }

        v9 = 0xEA00000000006465;
        goto LABEL_28;
      }

      v12 = 0x7A69726F68747541;
    }

    v13 = 0xEA00000000006465;
    goto LABEL_16;
  }

LABEL_29:

  if (v5 >= 3)
  {
    if ((v5 - 3) <= 1)
    {

      sub_1000224F0();
    }
  }

  else
  {

    sub_100022740();
  }
}

uint64_t sub_100022E0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100022E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034894();
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000348B4();
  v7 = *(v13 - 8);
  __chkstk_darwin(v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  v10 = sub_100034C94();
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DEC8;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);
  sub_1000348A4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002345C(&qword_100047DD0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000035B0(&unk_1000483C0, "j#");
  sub_1000234A4(&qword_100047DE0, &unk_1000483C0, "j#");
  sub_100034D54();
  sub_100034CB4();
  _Block_release(v11);

  (*(v14 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v13);
}

void sub_1000230F8(unint64_t a1)
{
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100034874();
  sub_100007CE8(v2, qword_100049400);

  v3 = sub_100034854();
  v4 = sub_100034C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136380675;
    sub_10000A83C(0, &qword_1000470C0, CLLocation_ptr);
    v7 = sub_100034AD4();
    v9 = sub_10001AF94(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Location manager didUpdateLocations: %{private}s", v5, 0xCu);
    sub_1000026BC(v6);
  }

  sub_100021958(a1);
  if (v10)
  {
    sub_100022E54(sub_1000220B4, &unk_100041F38);
  }
}

uint64_t sub_1000232A4(uint64_t a1)
{
  if (qword_100046AB0 != -1)
  {
    swift_once();
  }

  v1 = sub_100034874();
  sub_100007CE8(v1, qword_100049400);
  swift_errorRetain();
  v2 = sub_100034854();
  v3 = sub_100034C54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_100034EE4();
    v8 = sub_10001AF94(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Location manager didFailWithError: %s", v4, 0xCu);
    sub_1000026BC(v5);
  }

  sub_100021958(0);
  return sub_100022E54(sub_1000220D8, &unk_100041F10);
}

uint64_t sub_100023444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002345C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000234A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022E0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023500(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000035B0(&qword_100046B90, &qword_100036758);
    v2 = sub_100034E74();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100007E98(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100007E98(v29, v30);
    result = sub_100034D64(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100007E98(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000237C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001CCAC(a3, v22 - v9, &unk_100047860, &unk_100036AD0);
  v11 = sub_100034B44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007DDC(v10, &unk_100047860, &unk_100036AD0);
  }

  else
  {
    sub_100034B34();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100034B04();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000349E4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);

      return v20;
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

  sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_100023ACC(void *a1)
{
  v3 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v3 - 8);
  v5 = &v91 - v4;
  v6 = sub_100034354();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 96);
  if (!v13 || *(v1 + 112) != 1)
  {
    return;
  }

  v104 = v13;
  [a1 contentOffset];
  v15 = v14;
  [a1 frame];
  v16 = v15 / CGRectGetWidth(v113);
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  if (v16 < 0.0)
  {
    v17 = [objc_opt_self() mainScreen];
    v18 = [v17 traitCollection];

    v19 = [v18 layoutDirection];
    v21 = *(qword_1000493C0 + 16);
    v100 = v7;
    if (v19 == 1)
    {
      if (v21)
      {
        v99 = v12;
        v22 = (qword_1000493C0 + 48 * v21);
        v23 = (v22 - 2);
        v24 = v22 - 1;
        v25 = v22 + 1;
        v26 = (v22 + 2);
        v27 = (v22 + 3);
LABEL_15:
        v38 = *v24;
        v39 = *v23;
        v40 = *v26;
        v41 = *v22;
        v42 = *v27;
        v101 = *v25;
        v102 = v39;
        v43 = v101;
        v44 = v41;
        v45 = v41;
        *&v103 = v42;
        sub_1000053EC(v40, v42);
        v12 = v99;
        goto LABEL_17;
      }
    }

    else if (v21)
    {
      v99 = v12;
      v23 = (qword_1000493C0 + 32);
      v24 = (qword_1000493C0 + 40);
      v22 = (qword_1000493C0 + 48);
      v25 = (qword_1000493C0 + 56);
      v26 = (qword_1000493C0 + 64);
      v27 = (qword_1000493C0 + 72);
      goto LABEL_15;
    }

    v101 = 0;
    v102 = 0;
    v38 = 0;
    v40 = 0;
    *&v103 = 0;
    v44 = 1;
LABEL_17:
    v46 = fabs(v16);
    LODWORD(v20) = -1.5;
    if (v44 == 1)
    {
      goto LABEL_18;
    }

LABEL_26:
    v95 = v20;
    v53 = v38;
    v96 = v38;
    v54 = v101;
    v55 = v103;
    sub_10001BC90(v102, v53, v44, v101, v40, v103);
    v94 = v54;
    sub_10002A3CC();
    v56 = *(v1 + 96);
    v97 = v40;
    v99 = v44;
    if (v56)
    {
      v57 = v56;
      if ([v57 mode])
      {
        [v57 applyMode:0];
      }

      sub_1000054D4(v40, v103);
    }

    else
    {
      sub_1000054D4(v40, v55);
    }

    v58 = *(v1 + 56);
    v59 = *(v1 + 64);
    v60 = *(v1 + 152);
    v61 = v100;
    v98 = v59;
    if (v60 || (v60 = *(v1 + 40)) != 0)
    {
      sub_1000053EC(v58, v59);
      sub_1000053EC(v58, v59);
      v62 = v60;
    }

    else
    {
      v72 = *(v1 + 48);
      v93 = objc_allocWithZone(CLLocation);
      sub_1000053EC(v58, v59);
      sub_1000053EC(v58, v59);
      sub_1000053EC(v58, v59);
      v92 = v72;
      v62 = [v93 initWithLatitude:37.33182 longitude:-122.03118];

      sub_1000054D4(v58, v59);
    }

    v63 = *(v1 + 88);
    if (v58)
    {
      v58(v62);
      (*(v61 + 56))(v5, 0, 1, v6);
      (*(v61 + 32))(v9, v5, v6);
    }

    else
    {
      (*(v61 + 56))(v5, 1, 1, v6);
      v64 = v62;
      sub_100034334();
      if ((*(v61 + 48))(v5, 1, v6) != 1)
      {
        sub_100007DDC(v5, &unk_100048480, &qword_100036730);
      }
    }

    (*(v61 + 32))(v12, v9, v6);
    *&v12[*(v10 + 20)] = v62;
    v65 = v102;
    if (v102 <= 2)
    {
      v66 = v96;
      if (v102)
      {
        if (v102 == 1)
        {
          if (v96)
          {
            v77 = v62;
            sub_100009BF0(v12, v63);
            v69 = v103;
LABEL_63:
            sub_100009914(v66, v63);
            v81 = v80;
            v83 = v82;
            v85 = v84;
            v87 = v86;
            sub_10000A5B0(v12);
            v88 = v94;

            v89 = v98;
            sub_1000054D4(v58, v98);
            *&v90 = v95;
            v103 = v90;
            [v104 setVista:v65];
            v108 = v81;
            v109 = v83;
            v110 = v85;
            v111 = v87;
            v105 = 1091188195;
            v106 = v103;
            v107 = 1065353216;
            [v104 applyTransitionFraction:&v108 fromStyleDefinition:&v105 toStyleDefinition:v46];
            sub_10001CAF4(v65, v66, v99, v101, v97, v69);

            sub_1000054D4(v58, v89);
            return;
          }
        }

        else if (v102 == 2)
        {
          v70 = qword_100046A10;
          v71 = v62;
          if (v70 != -1)
          {
            swift_once();
          }

          v69 = v103;
          goto LABEL_63;
        }
      }

      else if (v96)
      {
        v75 = qword_100046A80;
        v76 = v62;
        if (v75 != -1)
        {
          swift_once();
        }

        v69 = v103;
        goto LABEL_63;
      }
    }

    else
    {
      v66 = v96;
      if ((v102 - 4) < 6)
      {
        v67 = qword_100046A18;
        v68 = v62;
        if (v67 != -1)
        {
          swift_once();
        }

        v69 = v103;
        goto LABEL_63;
      }

      if (v102 == 3)
      {
        v73 = qword_100046A08;
        v74 = v62;
        if (v73 != -1)
        {
          swift_once();
        }

        v69 = v103;
        goto LABEL_63;
      }
    }

    v78 = qword_100046A00;
    v79 = v62;
    if (v78 != -1)
    {
      swift_once();
    }

    v69 = v103;
    goto LABEL_63;
  }

  if (v16 > (*(qword_1000493C0 + 16) - 1))
  {
    v28 = [objc_opt_self() mainScreen];
    v29 = [v28 traitCollection];

    v30 = [v29 layoutDirection];
    v31 = *(qword_1000493C0 + 16);
    v100 = v7;
    if (v30 == 1)
    {
      if (v31)
      {
        v99 = v12;
        v32 = (qword_1000493C0 + 32);
        v33 = (qword_1000493C0 + 40);
        v34 = (qword_1000493C0 + 48);
        v35 = (qword_1000493C0 + 56);
        v36 = (qword_1000493C0 + 64);
        v37 = (qword_1000493C0 + 72);
LABEL_23:
        v38 = *v33;
        v48 = *v32;
        v40 = *v36;
        v49 = *v34;
        v50 = *v37;
        v101 = *v35;
        v102 = v48;
        v51 = v101;
        v44 = v49;
        v52 = v49;
        *&v103 = v50;
        sub_1000053EC(v40, v50);
        v12 = v99;
        goto LABEL_25;
      }
    }

    else if (v31)
    {
      v99 = v12;
      v34 = (qword_1000493C0 + 48 * v31);
      v32 = (v34 - 2);
      v33 = v34 - 1;
      v35 = v34 + 1;
      v36 = (v34 + 2);
      v37 = (v34 + 3);
      goto LABEL_23;
    }

    v101 = 0;
    v102 = 0;
    v38 = 0;
    v40 = 0;
    *&v103 = 0;
    v44 = 1;
LABEL_25:
    *&v20 = fmod(v16, 1.0);
    v46 = *&v20;
    LODWORD(v20) = 1.5;
    if (v44 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_18:
  v47 = v104;
}

id sub_1000245B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100024620(void *a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
  v6 = a1;

  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = v3;
    if (![v4 vista])
    {
      v5 = 0.0;
      if (((*(v1 + 152) != 0) & *(v1 + 144)) != 0)
      {
        v5 = 1.0;
      }

      [v4 setLocationDotAlpha:v5];
    }
  }
}

void sub_1000246C0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v6 = sub_100034854();
  v7 = sub_100034C64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setup location manager", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  if (qword_100046AB8 != -1)
  {
    swift_once();
  }

  v11 = qword_100049418;
  v12 = swift_allocObject();
  swift_weakInit();
  v28 = sub_10002D628;
  v29 = v12;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10001804C;
  v27 = &unk_100042050;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  v15 = [v9 defaultCenter];
  if (qword_100046AC0 != -1)
  {
    swift_once();
  }

  v16 = qword_100049420;
  v17 = swift_allocObject();
  swift_weakInit();
  v28 = sub_10002D630;
  v29 = v17;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10001804C;
  v27 = &unk_100042078;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v20 = objc_allocWithZone(type metadata accessor for AegirLocationManager());
  sub_1000215EC(1);
  v21 = *(v1 + 104);
  *(v1 + 104) = v22;
  v23 = v22;

  sub_1000221A0(0);
  sub_1000224F0();
}

uint64_t sub_100024A8C(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v2 - 8);
  v104 = &v97 - v3;
  v4 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v4 - 8);
  v6 = &v97 - v5;
  *&v108 = sub_100034354();
  *&v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v102);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100034874();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v15 = sub_100034854();
  v16 = sub_100034C64();
  v17 = os_log_type_enabled(v15, v16);
  v105 = v8;
  v106 = v10;
  v103 = v6;
  if (v17)
  {
    v18 = v11;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v111 = v20;
    *v19 = 136315138;
    v21 = a1;
    v22 = sub_100034CD4();
    v24 = sub_10001AF94(v22, v23, &v111);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Editor didRotate: %s", v19, 0xCu);
    sub_1000026BC(v20);

    result = (*(v12 + 8))(v14, v18);
  }

  else
  {
    v21 = a1;

    result = (*(v12 + 8))(v14, v11);
  }

  v26 = *(v110 + 96);
  if (v26)
  {
    v28 = *(v110 + 40);
    v27 = *(v110 + 48);
    v29 = *(v110 + 56);
    v30 = *(v110 + 64);
    v31 = v21;
    v32 = 0.0;
    if ((v21 - 2) <= 2)
    {
      v32 = flt_100037134[v21 - 2];
    }

    v33 = v110;
    v34 = *(v110 + 24);
    v101 = *(v110 + 32);
    v100 = v27;
    v35 = v26;
    v109 = v28;
    sub_1000053EC(v29, v30);
    v99 = v35;
    v36 = [v35 vistaView];
    v98 = [v36 scene];

    v37 = *(v33 + 16);
    v38 = sub_100009644(v37, v31);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v38;

    *(v33 + 72) = v40;
    *(v33 + 76) = v42;
    *(v33 + 80) = v44;
    *(v33 + 88) = v45;
    if (v29)
    {
      v46 = v103;
      v29();
      v47 = v107;
      v48 = v108;
      (*(v107 + 56))(v46, 0, 1, v108);
      v49 = *(v47 + 32);
      v50 = v105;
      v49(v105, v46, v48);
    }

    else
    {
      v51 = v30;
      v52 = v107;
      v53 = v103;
      v54 = v108;
      (*(v107 + 56))(v103, 1, 1, v108);
      v50 = v105;
      sub_100034334();
      v55 = v52;
      v30 = v51;
      v29 = 0;
      if ((*(v55 + 48))(v53, 1, v54) != 1)
      {
        sub_100007DDC(v53, &unk_100048480, &qword_100036730);
      }
    }

    v56 = v109;
    if (!v28)
    {
      v56 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    v57 = v106;
    (*(v107 + 32))(v106, v50, v108);
    *(v57 + *(v102 + 20)) = v56;
    if (v34 <= 2)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          if (v101)
          {
            v66 = v109;
            sub_100009BF0(v57, v45);
LABEL_31:
            sub_100009914(v101, v45);
            v70 = v69;
            v72 = v71;
            v74 = v73;
            sub_10000A5B0(v57);
            v75 = v98;
            LODWORD(v76) = v70;
            [v98 setCameraOrbit:v76];
            [v75 setCameraOffset:v72];
            v78 = CLLocationCoordinate2DMake(0.0, 0.0);
            *v77.i64 = v78.longitude;
            v79.i64[0] = v34;
            v80.i64[0] = 1;
            v77.i64[1] = *&v78.latitude;
            __asm { FMOV            V0.2S, #-15.0 }

            [v75 setOffsetCoordinate:{COERCE_DOUBLE(vbslq_s8(vdupq_lane_s64(vceqq_s64(v79, v80), 0), v77, vcvtq_f64_f32(vmul_f32(v74, _D0))).i64[1])}];
            [v75 restingCameraRoll];
            v87 = v86;
            [v75 cameraPosition];
            v108 = v88;
            [v75 cameraTarget];
            v107 = v89;
            [v75 cameraUp];
            *&v90 = v32 + v87;
            [v75 setCamera:*&v108 target:*&v107 up:v91 roll:v90];
            [v75 updateCamera];
            v92 = sub_100034B44();
            v93 = v104;
            (*(*(v92 - 8) + 56))(v104, 1, 1, v92);
            v94 = swift_allocObject();
            swift_weakInit();
            sub_100034B24();

            v95 = sub_100034B14();
            v96 = swift_allocObject();
            v96[2] = v95;
            v96[3] = &protocol witness table for MainActor;
            v96[4] = v94;

            sub_10000E0F4(0, 0, v93, &unk_100037110, v96);

            sub_10002A9F0();

            return sub_1000054D4(v29, v30);
          }
        }

        else if (v34 == 2)
        {
          v60 = qword_100046A10;
          v61 = v109;
          if (v60 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }
      }

      else if (v101)
      {
        v64 = qword_100046A80;
        v65 = v109;
        if (v64 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if ((v34 - 4) < 6)
      {
        v58 = qword_100046A18;
        v59 = v109;
        if (v58 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (v34 == 3)
      {
        v62 = qword_100046A08;
        v63 = v109;
        if (v62 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    v67 = qword_100046A00;
    v68 = v109;
    if (v67 == -1)
    {
      goto LABEL_31;
    }

LABEL_33:
    swift_once();
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_10002546C()
{
  sub_10002551C();
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = [v1 vistaView];
    [v2 purgeUnused];
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  sub_1000054D4(v4, v5);

  return v0;
}

void sub_10002551C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 104);
  if (v6)
  {
    v7 = v6;
    sub_100034814();
    v8 = sub_100034854();
    v9 = sub_100034C64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Teardown location manager", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v11 = [objc_opt_self() defaultCenter];
    [v11 removeObserver:v1];

    sub_100022740();
    v12 = *(v1 + 104);
    *(v1 + 104) = 0;
  }
}

uint64_t sub_1000256BC()
{
  sub_10002546C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

void sub_100025714(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v228 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v244 = &v228 - v10;
  v11 = sub_100034354();
  v245 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v228 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v246 = &v228 - v15;
  *&v248 = type metadata accessor for Geotime(0);
  v16 = __chkstk_darwin(v248);
  v18 = &v228 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  *&v249 = &v228 - v19;
  v20 = sub_100034874();
  v21 = __chkstk_darwin(v20);
  v23 = &v228 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v228 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v228 - v28;
  v30 = __chkstk_darwin(v27);
  v33 = &v228 - v32;
  if (*(v3 + 112) != 1)
  {
    return;
  }

  v243 = v31;
  v247 = v30;
  v240 = v14;
  v242 = v11;
  v241 = v9;
  v239 = v18;
  v34 = [*(v3 + 16) currentLook];
  v35 = [v34 identifier];

  v36 = sub_1000349B4();
  v38 = v37;

  v39 = sub_10000386C(v36, v38);
  if (v40)
  {
    sub_100034814();
    v41 = a1;
    v42 = sub_100034854();
    v43 = sub_100034C54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Current look identifier can not convert to Int: %@", v44, 0xCu);
      sub_100007DDC(v45, &unk_1000478C0, &unk_100036B60);
    }

    (*(v243 + 8))(v23, v247);
    return;
  }

  v47 = v39;
  v48 = [a1 identifier];
  v49 = sub_1000349B4();
  v51 = v50;

  v52 = sub_10000386C(v49, v51);
  if (v53)
  {
    sub_100034814();
    v54 = a1;
    v55 = sub_100034854();
    v56 = sub_100034C54();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&_mh_execute_header, v55, v56, "Transitioning look identifier can not convert to Int: %@", v57, 0xCu);
      sub_100007DDC(v58, &unk_1000478C0, &unk_100036B60);
    }

    (*(v243 + 8))(v26, v247);
    return;
  }

  v60 = v52;
  v238 = v3;
  sub_100034814();
  v61 = sub_100034854();
  v62 = sub_100034C44();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134218496;
    *(v63 + 4) = v47;
    *(v63 + 12) = 2048;
    *(v63 + 14) = v60;
    *(v63 + 22) = 2048;
    *(v63 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v61, v62, "Scrolling from: %ld to index: %ld, progress: %f", v63, 0x20u);
  }

  v64 = v243 + 8;
  v65 = *(v243 + 8);
  v65(v33, v247);
  v66 = *(v238 + 96);
  if (v66)
  {
    if (v47 == v60)
    {
      v67 = v66;
      sub_100034814();
      v68 = sub_100034854();
      v69 = sub_100034C44();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 134217984;
        *(v70 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v68, v69, "Scrolled to: %ld", v70, 0xCu);
      }

      v65(v29, v247);
      if ([v67 mode] != 1)
      {
        [v67 applyMode:1];
      }

      return;
    }

    v71 = qword_1000469B0;
    v234 = v66;
    if (v71 == -1)
    {
      if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_once();
      if ((v60 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v72 = *(qword_1000493C0 + 16);
        if (v60 < v72)
        {
          if (v47 < v72)
          {
            v73 = qword_1000493C0 + 32 + 48 * v60;
            v243 = *v73;
            v237 = *(v73 + 8);
            v74 = *(v73 + 16);
            v247 = *(v73 + 24);
            v76 = *(v73 + 32);
            v75 = *(v73 + 40);
            v77 = qword_1000493C0 + 32 + 48 * v47;
            v78 = *v77;
            v231 = *(v77 + 8);
            v79 = *(v77 + 16);
            v80 = *(v77 + 24);
            v62 = *(v77 + 32);
            v236 = *(v77 + 40);
            v228 = v80;
            v233 = v79;
            v232 = v62;
            v235 = v74;
            v230 = v75;
            v229 = v76;
            if (v47 >= v60)
            {
              v89 = v247;
              v90 = v74;
              sub_1000053EC(v76, v75);
              v91 = v80;
              v92 = v79;
              sub_1000053EC(v62, v236);
              v49 = v78;
              v3 = v238;
              v64 = v237;
            }

            else
            {
              v81 = objc_opt_self();
              v82 = v247;
              v83 = v74;
              sub_1000053EC(v76, v75);
              v84 = v80;
              v85 = v79;
              sub_1000053EC(v62, v236);
              v86 = [v81 mainScreen];
              v87 = [v86 traitCollection];

              v88 = [v87 layoutDirection];
              v49 = v78;
              v3 = v238;
              v64 = v237;
              if (v88 != 1)
              {
LABEL_30:
                v71 = v247;
                if (v47 < *(qword_1000493C0 + 16))
                {
                  v96 = qword_1000493C0 + 48 * v47;
                  v243 = *(v96 + 32);
                  v237 = *(v96 + 40);
                  v62 = *(v96 + 48);
                  v97 = *(v96 + 56);
                  v98 = *(v96 + 64);
                  v99 = *(v96 + 72);
                  v100 = v97;
                  v101 = v62;
                  sub_1000053EC(v98, v99);

                  sub_1000054D4(v229, v230);
                  if (v60 < *(qword_1000493C0 + 16))
                  {
                    v102 = qword_1000493C0 + 48 * v60;
                    v49 = *(v102 + 32);
                    v231 = *(v102 + 40);
                    v64 = *(v102 + 48);
                    v103 = *(v102 + 56);
                    v104 = *(v102 + 64);
                    v105 = *(v102 + 72);
                    v106 = v103;
                    v107 = v64;
                    sub_1000053EC(v104, v105);

                    sub_1000054D4(v232, v236);
                    v232 = v104;
                    v236 = v105;
                    v233 = v64;
                    v108 = v98;
                    v247 = v97;
                    v109 = v62;
                    v110 = v103;
                    LODWORD(v64) = v237;
                    goto LABEL_35;
                  }

LABEL_130:
                  __break(1u);
                  goto LABEL_131;
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }
            }

            if (v60 < v47)
            {
              v93 = [objc_opt_self() mainScreen];
              v94 = v49;
              v49 = [v93 traitCollection];

              v95 = [v49 layoutDirection];
              if (v95 == 1)
              {
                goto LABEL_30;
              }

              v49 = v94;
            }

            a2 = 1.0 - a2;
            v110 = v228;
            v109 = v235;
            v99 = v230;
            v108 = v229;
LABEL_35:
            v111 = v243;
            if (v243 == v49)
            {
              if (v64)
              {
                v112 = 0x6C6961746544;
              }

              else
              {
                v112 = 1819047238;
              }

              if (v64)
              {
                v113 = 0xE600000000000000;
              }

              else
              {
                v113 = 0xE400000000000000;
              }

              if (v231)
              {
                v114 = 0x6C6961746544;
              }

              else
              {
                v114 = 1819047238;
              }

              if (v231)
              {
                v115 = 0xE600000000000000;
              }

              else
              {
                v115 = 0xE400000000000000;
              }

              if (v112 == v114 && v113 == v115)
              {
                sub_1000054D4(v108, v99);

LABEL_56:
                v120 = v232;

                sub_1000054D4(v120, v236);
                return;
              }

              v119 = sub_100034EC4();
              sub_1000054D4(v108, v99);

              v111 = v243;
              if (v119)
              {

                goto LABEL_56;
              }
            }

            else
            {
              sub_1000054D4(v108, v99);
            }

            v243 = v111;
            v116 = *(v3 + 56);
            v117 = *(v3 + 64);
            v118 = *(v3 + 152);
            v237 = v64;
            if (v118)
            {
              sub_1000053EC(v116, v117);
              sub_1000053EC(v116, v117);
              v235 = v118;
              sub_1000054D4(v232, v236);
            }

            else
            {
              v121 = *(v3 + 40);
              v122 = *(v3 + 48);
              if (v121)
              {
                sub_1000053EC(v116, v117);
                sub_1000053EC(v116, v117);
                v123 = v121;
                sub_1000053EC(v116, v117);
                v124 = v122;
                v125 = v123;
                sub_1000054D4(v232, v236);

                v235 = v125;
              }

              else
              {
                v126 = objc_allocWithZone(CLLocation);
                sub_1000053EC(v116, v117);
                sub_1000053EC(v116, v117);
                sub_1000053EC(v116, v117);
                v127 = v122;
                v235 = [v126 initWithLatitude:37.33182 longitude:-122.03118];
                sub_1000054D4(v232, v236);
              }

              sub_1000054D4(v116, v117);
            }

            v128 = *(v3 + 56);
            v129 = *(v3 + 64);
            v130 = *(v3 + 152);
            v232 = v128;
            v230 = v116;
            if (v130 || (v130 = *(v3 + 40)) != 0)
            {
              sub_1000053EC(v128, v129);
              sub_1000053EC(v128, v129);
              v131 = v235;
              v132 = v130;
            }

            else
            {
              v161 = *(v3 + 48);
              v162 = objc_allocWithZone(CLLocation);
              sub_1000053EC(v128, v129);
              sub_1000053EC(v128, v129);
              sub_1000053EC(v128, v129);
              v163 = v161;
              v164 = v235;
              v132 = [v162 initWithLatitude:37.33182 longitude:-122.03118];

              sub_1000054D4(v128, v129);
            }

            v233 = v132;

            v133 = sub_100034714();
            v134 = v238;
            v135 = v133;

            v136 = *(v134 + 16);
            v137 = sub_100009644(v136, v135);
            v139 = v138;
            v141 = v140;
            v143 = v142;
            v144 = v137;

            *(v134 + 72) = v139;
            *(v134 + 76) = v141;
            *(v134 + 80) = v143;
            v145 = v144;
            *(v134 + 88) = v144;
            v146 = v230;
            v228 = v49;
            v229 = v117;
            v147 = v110;
            if (v230)
            {
              v148 = v247;
              v149 = v244;
              v146(v148);
              v3 = v245;
              v150 = v242;
              v71 = *(v245 + 56);
              (v71)(v149, 0, 1, v242);
              v151 = v246;
              (*(v3 + 32))(v246, v149, v150);
            }

            else
            {
              v3 = v245;
              v152 = v244;
              v153 = v242;
              v71 = *(v245 + 56);
              (v71)(v244, 1, 1, v242);
              v154 = v247;
              sub_100034334();
              if ((*(v3 + 48))(v152, 1, v153) != 1)
              {
                sub_100007DDC(v152, &unk_100048480, &qword_100036730);
              }

              v150 = v242;
              v151 = v246;
            }

            v49 = *(v3 + 32);
            v155 = v249;
            (v49)(v249, v151, v150);
            *(v155 + *(v248 + 20)) = v235;
            v236 = v129;
            if (v243 <= 2)
            {
              v62 = v147;
              if (v243)
              {
                v64 = v145;
                if (v243 == 1)
                {
                  v158 = v230;
                  if (v237)
                  {
                    v169 = v235;
                    sub_100009BF0(v249, v64);
                    goto LABEL_88;
                  }
                }

                else
                {
                  v158 = v230;
                  if (v243 == 2)
                  {
                    v159 = qword_100046A10;
                    v160 = v235;
                    if (v159 == -1)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_133;
                  }
                }
              }

              else
              {
                v64 = v145;
                v158 = v230;
                if (v237)
                {
                  v167 = qword_100046A80;
                  v168 = v235;
                  if (v167 == -1)
                  {
LABEL_88:
                    v172 = v231;
                    sub_100009914(v237, v64);
                    v174 = v173;
                    v176 = v175;
                    v178 = v177;
                    v180 = v179;
                    sub_10000A5B0(v249);

                    sub_1000054D4(v158, v229);
                    v181 = v232;
                    if (v232)
                    {
                      v182 = v62;
                      v183 = v62;
                      v184 = v241;
                      v181(v183);
                      v185 = v242;
                      (v71)(v184, 0, 1, v242);
                      v186 = v240;
                      (v49)(v240, v184, v185);
                      v187 = v238;
                    }

                    else
                    {
                      v188 = v62;
                      v189 = v241;
                      v190 = v3;
                      v185 = v242;
                      (v71)(v241, 1, 1, v242);
                      v182 = v188;
                      v191 = v188;
                      v186 = v240;
                      sub_100034334();
                      v192 = (*(v190 + 48))(v189, 1, v185);
                      v187 = v238;
                      if (v192 != 1)
                      {
                        sub_100007DDC(v189, &unk_100048480, &qword_100036730);
                      }
                    }

                    v193 = v239;
                    (v49)(v239, v186, v185);
                    v194 = v193;
                    v195 = v233;
                    *(v193 + *(v248 + 20)) = v233;
                    v196 = v228;
                    if (v228 <= 2)
                    {
                      v197 = v182;
                      v198 = v172;
                      if (v228)
                      {
                        v201 = v229;
                        if (v228 == 1)
                        {
                          if (v198)
                          {
                            v208 = v195;
                            sub_100009BF0(v193, v64);
LABEL_110:
                            sub_100009914(v198, v64);
                            v212 = v211;
                            v248 = v213;
                            v249 = v214;
                            v216 = v215;
                            sub_10000A5B0(v194);

                            v217 = v232;
                            sub_1000054D4(v232, v236);
                            v218 = sub_10002A3CC();
                            v219 = *(v187 + 96);
                            v220 = v230;
                            if (v219)
                            {
                              v221 = v219;
                              if ([v221 mode])
                              {
                                [v221 applyMode:0];
                              }
                            }

                            v222 = [v234 vista];
                            if (v243 == v196)
                            {
                              if (v222 != v196)
                              {
                                [v234 setVista:v196];
                              }

                              v254 = v174;
                              v255 = v176;
                              v256 = v178;
                              v257 = v180;
                              v250 = v248;
                              v251 = v212;
                              v252 = v249;
                              v253 = v216;
                              v223 = v234;
                              [v234 applyTransitionFraction:&v254 fromStyleDefinition:&v250 toStyleDefinition:a2];
                            }

                            else
                            {
                              if (v222 != v243)
                              {
                                [v234 setVista:v243];
                              }

                              [v234 styleDefinition];
                              *v224.f32 = vdup_lane_s32(v256, 0);
                              *&v224.u32[2] = vext_s8(v256, v255, 4uLL);
                              v224.i32[0] = v254;
                              v225 = v249;
                              *v226.f32 = vdup_lane_s32(*&v249, 0);
                              *&v226.u32[2] = vext_s8(*&v249, v212, 4uLL);
                              v227 = v248;
                              v226.i32[0] = v248;
                              if ((vminv_u16(vmovn_s32(vceqq_f32(v224, v226))) & 1) == 0 || (vceq_f32(*&v255, v212).i32[1] & 1) == 0)
                              {
                                v254 = v248;
                                v255 = v212;
                                v256 = v249;
                                v257 = v216;
                                [v234 setStyleDefinition:&v254];
                                v227 = v248;
                                v225 = v249;
                              }

                              v254 = v174;
                              v255 = v176;
                              v256 = v178;
                              v257 = v180;
                              v250 = v227;
                              v251 = v212;
                              v252 = v225;
                              v253 = v216;
                              v223 = v234;
                              [v234 applyTransitionFraction:v243 fromVista:&v254 fromStyleDefinition:v196 toVista:&v250 toStyleDefinition:a2];
                            }

                            sub_1000054D4(v217, v236);
                            sub_1000054D4(v220, v201);

                            return;
                          }
                        }

                        else if (v228 == 2)
                        {
                          v202 = qword_100046A10;
                          v203 = v195;
                          if (v202 == -1)
                          {
                            goto LABEL_110;
                          }

                          goto LABEL_134;
                        }
                      }

                      else
                      {
                        v201 = v229;
                        if (v198)
                        {
                          v206 = qword_100046A80;
                          v207 = v195;
                          if (v206 == -1)
                          {
                            goto LABEL_110;
                          }

                          goto LABEL_134;
                        }
                      }
                    }

                    else
                    {
                      v197 = v182;
                      v198 = v172;
                      if ((v228 - 4) < 6)
                      {
                        v199 = qword_100046A18;
                        v200 = v195;
                        v201 = v229;
                        if (v199 == -1)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_134;
                      }

                      v201 = v229;
                      if (v228 == 3)
                      {
                        v204 = qword_100046A08;
                        v205 = v195;
                        if (v204 == -1)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_134;
                      }
                    }

                    v209 = qword_100046A00;
                    v210 = v195;
                    if (v209 == -1)
                    {
                      goto LABEL_110;
                    }

LABEL_134:
                    swift_once();
                    goto LABEL_110;
                  }

LABEL_133:
                  swift_once();
                  goto LABEL_88;
                }
              }
            }

            else
            {
              v62 = v147;
              if ((v243 - 4) < 6)
              {
                v156 = qword_100046A18;
                v157 = v235;
                v64 = v145;
                if (v156 == -1)
                {
LABEL_72:
                  v158 = v230;
                  goto LABEL_88;
                }

LABEL_131:
                swift_once();
                goto LABEL_72;
              }

              v64 = v145;
              v158 = v230;
              if (v243 == 3)
              {
                v165 = qword_100046A08;
                v166 = v235;
                if (v165 == -1)
                {
                  goto LABEL_88;
                }

                goto LABEL_133;
              }
            }

            v170 = qword_100046A00;
            v171 = v235;
            if (v170 == -1)
            {
              goto LABEL_88;
            }

            goto LABEL_133;
          }

LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

LABEL_127:
        __break(1u);
        goto LABEL_128;
      }
    }

    __break(1u);
    goto LABEL_127;
  }
}

void sub_100027060(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v109 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v7 - 8);
  v9 = &v102[-v8];
  v10 = sub_100034354();
  v107 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v106);
  v108 = &v102[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a1 identifier];
  v15 = sub_1000349B4();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  v19 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_64;
  }

  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) != 0)
    {
      v110 = v15;
      v111 = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v15 == 43)
      {
        if (!v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (--v18)
        {
          v15 = 0;
          v32 = &v110 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v15 == 45)
      {
        if (!v18)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (--v18)
        {
          v15 = 0;
          v26 = &v110 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v18)
      {
        v15 = 0;
        v37 = &v110;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = sub_100034DD4();
    }

    v22 = *v21;
    if (v22 == 43)
    {
      if (v19 < 1)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_61;
      }

      v15 = 0;
      if (v21)
      {
        v29 = v21 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            goto LABEL_61;
          }

          v31 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_61;
          }

          v15 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            goto LABEL_61;
          }

          ++v29;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v22 == 45)
    {
      if (v19 < 1)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_61;
      }

      v15 = 0;
      if (v21)
      {
        v23 = v21 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            goto LABEL_61;
          }

          v25 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_61;
          }

          v15 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            goto LABEL_61;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_61:
        v15 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_62;
      }

      v15 = 0;
      if (v21)
      {
        do
        {
          v35 = *v21 - 48;
          if (v35 > 9)
          {
            goto LABEL_61;
          }

          v36 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            goto LABEL_61;
          }

          v15 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            goto LABEL_61;
          }

          ++v21;
        }

        while (--v19);
      }
    }

    LOBYTE(v18) = 0;
LABEL_62:
    v114 = v18;
    v14 = v18;
    goto LABEL_63;
  }

  v114 = 0;
  v15 = sub_100003B6C(v15, v17, 10);
  v14 = v100;
LABEL_63:

  if (v14)
  {
LABEL_64:
    sub_100034814();
    v40 = a1;
    v41 = sub_100034854();
    v42 = sub_100034C54();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Current look identifier can not convert to Int: %@", v43, 0xCu);
      sub_100007DDC(v44, &unk_1000478C0, &unk_100036B60);
    }

    (*(v109 + 8))(v6, v4);
    return;
  }

  v46 = *(v2 + 96);
  if (!v46)
  {
    return;
  }

  v47 = qword_1000469B0;
  v48 = v46;
  if (v47 == -1)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v101 = v48;
  swift_once();
  v48 = v101;
  if (v15 < 0)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v15 >= *(qword_1000493C0 + 16))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v49 = v12;
  v50 = qword_1000493C0 + 48 * v15;
  v104 = *(v50 + 32);
  v105 = v48;
  v103 = *(v50 + 40);
  v51 = *(v50 + 56);
  a1 = *(v2 + 56);
  v52 = *(v2 + 64);
  v53 = *(v2 + 152);
  v109 = v52;
  if (v53)
  {
    v12 = v51;
    v54 = v51;
    sub_1000053EC(a1, v52);
    v55 = v54;
    sub_1000053EC(a1, v52);
    v56 = v53;
  }

  else
  {
    v12 = v51;
    v57 = *(v2 + 40);
    if (v57)
    {
      v58 = v51;
      sub_1000053EC(a1, v52);
      v59 = v58;
      sub_1000053EC(a1, v52);
      v60 = v57;
    }

    else
    {
      v61 = objc_allocWithZone(CLLocation);
      v62 = v12;
      sub_1000053EC(a1, v52);
      v63 = v62;
      sub_1000053EC(a1, v52);
      v60 = [v61 initWithLatitude:37.33182 longitude:-122.03118];
    }

    v56 = v60;
  }

  v64 = v53;
  v15 = v56;

  v65 = sub_100034714();

  v66 = *(v2 + 16);
  v67 = sub_100009644(v66, v65);
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v14 = v67;

  *(v2 + 72) = v69;
  *(v2 + 76) = v71;
  *(v2 + 80) = v73;
  *(v2 + 88) = v14;
  if (a1)
  {
    (a1)();
    v74 = v107;
    (*(v107 + 56))(v9, 0, 1, v10);
    (*(v74 + 32))(v49, v9, v10);
    v17 = v108;
  }

  else
  {
    v74 = v107;
    (*(v107 + 56))(v9, 1, 1, v10);
    sub_100034334();
    v75 = (*(v74 + 48))(v9, 1, v10);
    v17 = v108;
    if (v75 != 1)
    {
      sub_100007DDC(v9, &unk_100048480, &qword_100036730);
    }
  }

  (*(v74 + 32))(v17, v49, v10);
  *(v17 + *(v106 + 20)) = v15;
  v4 = v104;
  if (v104 > 2)
  {
    LOBYTE(v10) = v103;
    if ((v104 - 4) < 6)
    {
      v76 = qword_100046A18;
      v77 = v15;
      if (v76 == -1)
      {
        goto LABEL_99;
      }

      goto LABEL_121;
    }

    if (v104 == 3)
    {
      v80 = qword_100046A08;
      v81 = v15;
      if (v80 == -1)
      {
        goto LABEL_99;
      }

      goto LABEL_121;
    }

LABEL_98:
    v85 = qword_100046A00;
    v86 = v15;
    if (v85 == -1)
    {
      goto LABEL_99;
    }

LABEL_121:
    swift_once();
    goto LABEL_99;
  }

  LOBYTE(v10) = v103;
  if (!v104)
  {
    if (v103)
    {
      v82 = qword_100046A80;
      v83 = v15;
      if (v82 == -1)
      {
        goto LABEL_99;
      }

      goto LABEL_121;
    }

    goto LABEL_98;
  }

  if (v104 != 1)
  {
    if (v104 == 2)
    {
      v78 = qword_100046A10;
      v79 = v15;
      if (v78 == -1)
      {
        goto LABEL_99;
      }

      goto LABEL_121;
    }

    goto LABEL_98;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_98;
  }

  v84 = v15;
  sub_100009BF0(v17, v14);
LABEL_99:
  sub_100009914(v10, v14);
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  sub_10000A5B0(v17);

  v95 = v109;
  sub_1000054D4(a1, v109);
  v96 = v105;
  if ([v105 vista] != v4)
  {
    [v96 setVista:v4];
  }

  v97 = sub_10002A3CC();
  v98 = *(v2 + 96);
  if (v98)
  {
    v99 = v98;
    if ([v99 mode])
    {
      [v99 applyMode:0];
    }
  }

  LODWORD(v110) = v88;
  v111 = v90;
  v112 = v92;
  v113 = v94;
  [v96 applyStyleDefinition:{&v110, v97}];
  sub_100028C28(0, 0);
  if (!*(v2 + 24) && *(v2 + 152) && (*(v2 + 144) & 1) != 0)
  {
    [v96 pulseLocationDot];

    sub_1000054D4(a1, v95);
    *(v2 + 114) = 1;
  }

  else
  {
    sub_10002A564(200000000);

    sub_1000054D4(a1, v95);
  }
}

id sub_100027C58(char *a1, void **a2)
{
  v102 = a2;
  v111 = sub_1000342C4();
  v97 = *(v111 - 8);
  v3 = __chkstk_darwin(v111);
  v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v107 = &v96 - v5;
  v101 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v101);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v8 = __chkstk_darwin(v7 - 8);
  v105 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v96 - v10;
  v11 = sub_100034874();
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  sub_100034814();
  v17 = *(a1 + 2);
  v120[0] = *(a1 + 3);
  v18 = *(a1 + 4);
  v19 = *(a1 + 5);
  v108 = v17;
  v20 = v17;
  sub_10001CCAC(v120, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v18, v19);
  v21 = sub_100034854();
  v22 = sub_100034C64();
  v98 = v20;

  sub_100007DDC(v120, &unk_1000481C0, &qword_100036F70);
  v100 = v18;
  v99 = v19;
  sub_1000054D4(v18, v19);
  v23 = os_log_type_enabled(v21, v22);
  v96 = v14;
  v104 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    v26 = sub_100007B44(*a1, a1[8], v108);
    v28 = sub_10001AF94(v26, v27, &aBlock);
    v29 = v97;

    *(v24 + 4) = v28;
    v30 = v111;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating vista controller with configuration: %s", v24, 0xCu);
    sub_1000026BC(v25);

    (*(v109 + 8))(v16, v110);
  }

  else
  {

    (*(v109 + 8))(v16, v110);
    v30 = v111;
    v29 = v97;
  }

  v31 = v102;
  v32 = [v102 contentOverlayView];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [objc_msgSend(v31 "environment")];
  swift_unknownObjectRelease();
  v42 = [v41 assetDirectory];
  swift_unknownObjectRelease();
  v43 = v113;
  sub_1000342B4();

  (*(v29 + 56))(v43, 0, 1, v30);
  v44 = v98;
  v45 = v98;
  v46 = v106;
  if (!v108)
  {
    v45 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v47 = v104;
  v48 = *v104;
  v49 = v104[8];
  v102 = v103[11];
  v50 = swift_allocObject();
  v51 = *(v47 + 1);
  v50[1] = *v47;
  v50[2] = v51;
  v50[3] = *(v47 + 2);
  v52 = v44;
  sub_10001CCAC(v120, &aBlock, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v100, v99);
  v53 = sub_100007FF8();
  [v53 setQuadViewOptions:{objc_msgSend(v53, "quadViewOptions") | 0x200}];
  v54 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v53 configuration:{v34, v36, v38, v40}];

  v55 = objc_allocWithZone(NUNIScene);
  v118 = sub_10002C5A0;
  v119 = v50;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_100033AE4;
  v117 = &unk_100042028;
  v56 = _Block_copy(&aBlock);
  v108 = v50;

  v57 = [v55 initWithSphereoids:16515070 currentDateBlock:v56];
  _Block_release(v56);

  [v57 setSnap:3];
  [v57 setBackgroundType:2];
  v103 = v57;
  [v54 setScene:v57];
  v58 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v54];
  [v58 setIsBacklightTransitionEnabled:1];
  [v58 setActiveModeFrameInterval:1];
  [v58 setVista:v48];
  [v58 setVistaTransitionStyle:1];
  v104 = v54;
  v59 = [v54 scene];
  v60 = [v59 currentDateBlock];

  v61 = v60[2](v60);
  v62 = v112;
  sub_100034324();

  _Block_release(v60);
  *(v62 + *(v101 + 20)) = v45;
  v63 = v49;
  if ((v49 & 1) == 0)
  {
    v70 = v45;

    v66 = v107;
    if (v48 == 2)
    {
      goto LABEL_23;
    }

LABEL_15:
    v67 = v46;
    if (v48 == 3)
    {
      v69 = v105;
      v71 = v102;
      if (qword_100046A48 == -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v69 = v105;
      v71 = v102;
      if (qword_100046A40 == -1)
      {
LABEL_19:
        sub_100009914(v63, v71);
        goto LABEL_27;
      }
    }

    v95 = v102;
    swift_once();
    v71 = v95;
    goto LABEL_19;
  }

  v64 = sub_100034EC4();
  v65 = v45;

  v66 = v107;
  if ((v64 & 1) != 0 && v48 != 2)
  {
    goto LABEL_15;
  }

  v67 = v46;
  if (v48 > 2)
  {
    if ((v48 - 4) < 6)
    {
      if (qword_100046A18 != -1)
      {
        swift_once();
      }

      v68 = v102;
      v69 = v105;
      goto LABEL_26;
    }

    if (v48 == 3)
    {
      if (qword_100046A08 != -1)
      {
        swift_once();
      }

      v68 = v102;
      v69 = v105;
      v67 = v46;
      goto LABEL_26;
    }

LABEL_44:
    if (qword_100046A00 != -1)
    {
      swift_once();
    }

    v68 = v102;
    v69 = v105;
    v67 = v46;
    goto LABEL_26;
  }

  if (!v48)
  {
    if (qword_100046A80 != -1)
    {
      swift_once();
    }

    v68 = v102;
    v69 = v105;
    goto LABEL_26;
  }

  if (v48 != 1)
  {
    if (v48 != 2)
    {
      goto LABEL_44;
    }

LABEL_23:
    if (qword_100046A10 != -1)
    {
      swift_once();
    }

    v68 = v102;
    v69 = v105;
    v67 = v46;
    goto LABEL_26;
  }

  v94 = v102;
  sub_100009BF0(v112, v102);
  v68 = v94;
  v69 = v105;
LABEL_26:
  sub_100009914(v63, v68);
  v72 = v76 * 1.1;
LABEL_27:
  *&aBlock = v72;
  v115 = v73;
  v116 = v74;
  LODWORD(v117) = v75;
  [v58 applyStyleDefinition:&aBlock];
  sub_10001CCAC(v113, v69, &qword_1000479B0, &qword_100036B90);
  v77 = v111;
  if ((*(v29 + 48))(v69, 1, v111) == 1)
  {
    sub_100007DDC(v69, &qword_1000479B0, &qword_100036B90);
  }

  else
  {
    v105 = v45;
    (*(v29 + 32))(v66, v69, v77);
    sub_1000342A4(v78);
    v80 = v79;
    [v58 setCacheDirectory:v79];

    v81 = v96;
    sub_100034804();
    (*(v29 + 16))(v67, v66, v77);
    v82 = sub_100034854();
    v83 = sub_100034C54();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      aBlock = v102;
      *v84 = 136315138;
      sub_10002D5E0(&qword_1000479B8, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = sub_100034EA4();
      v86 = v67;
      v88 = v87;
      v89 = *(v29 + 8);
      v89(v86, v77);
      v90 = sub_10001AF94(v85, v88, &aBlock);

      *(v84 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v82, v83, "Vista Controller created with asset directory: %s", v84, 0xCu);
      sub_1000026BC(v102);

      (*(v109 + 8))(v81, v110);
      v89(v107, v77);
    }

    else
    {

      v91 = *(v29 + 8);
      v91(v67, v77);
      (*(v109 + 8))(v81, v110);
      v91(v66, v77);
    }

    v45 = v105;
  }

  [v58 disableCloudDataFetch:0];
  if ([v58 mode] != 1)
  {
    [v58 applyMode:1];
  }

  [v58 updateLocation:0 fallbackLocation:v45 animated:0];
  v92 = [v58 vistaView];
  [v92 updateSunLocationAnimated:0];

  sub_10000A5B0(v112);
  sub_100007DDC(v113, &qword_1000479B0, &qword_100036B90);
  return v58;
}

void sub_100028C28(int a1, int a2)
{
  v3 = v2;
  v6 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v154[-v7];
  v9 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v9 - 8);
  v174 = &v154[-v10];
  v176 = sub_100034354();
  v11 = *(v176 - 8);
  __chkstk_darwin(v176);
  v13 = &v154[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v175);
  v15 = &v154[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100034874();
  v179 = *(v16 - 1);
  v180 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v154[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v154[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v154[-v24];
  __chkstk_darwin(v23);
  v168 = &v154[-v26];
  sub_100007864(*(v3 + 16), &v186);
  v181 = v189;
  if (v189 == 1)
  {
    sub_100034814();
    v27 = sub_100034854();
    v28 = sub_100034C64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to create configuration", v29, 2u);
    }

    (*(v179 + 8))(v19, v180);
    return;
  }

  v169 = v22;
  v170 = v13;
  v165 = v15;
  v166 = a1;
  v30 = v186;
  v31 = v187;
  v177 = v190;
  v172 = v191;
  v32 = v192;
  v194 = v187;
  v193[0] = *v188;
  *(v193 + 3) = *&v188[3];
  sub_10002AD2C();

  v33 = sub_100034714();

  v34 = *(v3 + 16);
  v35 = sub_100009644(v34, v33);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v173 = v35;

  v42 = *(v3 + 24);
  v178 = v30;
  v171 = v11;
  v164 = v8;
  v167 = a2;
  if (v42 == v30)
  {
    if (*(v3 + 32))
    {
      v43 = 0x6C6961746544;
    }

    else
    {
      v43 = 1819047238;
    }

    if (*(v3 + 32))
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    if (v31)
    {
      v45 = 0x6C6961746544;
    }

    else
    {
      v45 = 1819047238;
    }

    if (v31)
    {
      v46 = 0xE600000000000000;
    }

    else
    {
      v46 = 0xE400000000000000;
    }

    if (v43 == v45 && v44 == v46)
    {

      v47 = *(v3 + 72);
      v163 = (v3 + 72);
      v48 = v32;
      v49 = v169;
      v162 = (v3 + 76);
      v161 = (v3 + 80);
      v160 = (v3 + 88);
      if (v47 == v37)
      {
        v50 = v172;
        if (*(v3 + 76) == v39 && *(v3 + 80) == v41 && *(v3 + 88) == v173)
        {
LABEL_24:
          if ((v167 & 1) == 0)
          {
            v51 = v168;
            sub_100034814();
            v52 = sub_100034854();
            v53 = sub_100034C64();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&_mh_execute_header, v52, v53, "Configuration and Environment are equal and not rotating", v54, 2u);

              v196 = v181;
              sub_100007DDC(&v196, &unk_100047890, &unk_100036B40);
              v182 = v177;
              sub_100007DDC(&v182, &unk_1000481C0, &qword_100036F70);
              sub_1000054D4(v50, v48);
            }

            else
            {
              v196 = v181;
              sub_100007DDC(&v196, &unk_100047890, &unk_100036B40);
              v182 = v177;
              sub_100007DDC(&v182, &unk_1000481C0, &qword_100036F70);
              sub_1000054D4(v50, v48);
            }

            (*(v179 + 8))(v51, v180);
            return;
          }

          goto LABEL_53;
        }

        goto LABEL_50;
      }

      goto LABEL_43;
    }

    v60 = sub_100034EC4();

    v61 = *(v3 + 72);
    v62 = *(v3 + 80);
    v163 = (v3 + 72);
    v63 = *(v3 + 88);
    v160 = (v3 + 88);
    v48 = v32;
    v49 = v169;
    v162 = (v3 + 76);
    v161 = (v3 + 80);
    if (v61 == v37 && *(v3 + 76) == v39 && v62 == v41 && v63 == v173)
    {
      if (v60)
      {
        v50 = v172;
        goto LABEL_24;
      }

      v55 = v32;
      v59 = 1;
      goto LABEL_35;
    }

    if (v60)
    {
LABEL_43:
      v50 = v172;
LABEL_50:
      sub_100034814();

      v90 = sub_100034854();
      v91 = sub_100034C64();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *v92 = 136315394;
        v93 = sub_100008654(*v160, *v163, *v162);
        v95 = sub_10001AF94(v93, v94, &v182);

        *(v92 + 4) = v95;
        *(v92 + 12) = 2080;
        v96 = sub_100008654(v173, v37, v39);
        v98 = sub_10001AF94(v96, v97, &v182);

        *(v92 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v90, v91, "Environment changed from: %s; to: %s", v92, 0x16u);
        swift_arrayDestroy();
      }

      (*(v179 + 8))(v49, v180);
      goto LABEL_53;
    }

    v55 = v32;
  }

  else
  {
    v55 = v32;
    v56 = *(v3 + 72);
    v163 = (v3 + 72);
    v162 = (v3 + 76);
    v161 = (v3 + 80);
    v160 = (v3 + 88);
    if (v56 == v37)
    {
      v58 = *(v3 + 80) == v41 && *(v3 + 76) == v39;
      v59 = v58 && *(v3 + 88) == v173;
LABEL_35:
      v158 = v59;
      goto LABEL_46;
    }
  }

  v158 = 0;
LABEL_46:
  v64 = v181;
  sub_100034814();
  v195 = v177;
  v65 = v64;

  sub_10001CCAC(&v195, &v182, &unk_1000481C0, &qword_100036F70);
  v66 = v172;
  sub_1000053EC(v172, v55);
  v67 = sub_100034854();
  v68 = sub_100034C64();
  v157 = v65;

  v50 = v66;
  v48 = v55;
  sub_100007DDC(&v195, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v66, v55);
  v168 = v67;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v159 = v55;
    v70 = v69;
    v182 = swift_slowAlloc();
    *v70 = 136315394;
    v71 = *(v3 + 24);
    v72 = *(v3 + 32);
    v156 = v25;
    v73 = *(v3 + 40);
    v75 = *(v3 + 56);
    v74 = *(v3 + 64);
    v76 = *(v3 + 48);
    v155 = v68;
    v77 = v76;
    v78 = v73;
    sub_1000053EC(v75, v74);
    v79 = sub_100007B44(v71, v72, v73);
    v81 = v80;

    v82 = v75;
    v50 = v172;
    sub_1000054D4(v82, v74);
    v83 = sub_10001AF94(v79, v81, &v182);

    *(v70 + 4) = v83;
    *(v70 + 12) = 2080;
    LOBYTE(v83) = v194;
    v84 = v157;
    sub_10001CCAC(&v195, &v196, &unk_1000481C0, &qword_100036F70);
    sub_1000053EC(v50, v159);
    v85 = sub_100007B44(v178, v83, v181);
    v87 = v86;

    sub_100007DDC(&v195, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v50, v159);
    v88 = sub_10001AF94(v85, v87, &v182);

    *(v70 + 14) = v88;
    v89 = v168;
    _os_log_impl(&_mh_execute_header, v168, v155, "Configuration changed from: %s; to: %s", v70, 0x16u);
    swift_arrayDestroy();

    v48 = v159;

    (*(v179 + 8))(v156, v180);
  }

  else
  {

    (*(v179 + 8))(v25, v180);
  }

  v49 = v169;
  if ((v158 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_53:
  v99 = *(v3 + 96);
  if (!v99)
  {
    v116 = *(v3 + 40);
    v117 = *(v3 + 48);
    v118 = *(v3 + 56);
    v119 = *(v3 + 64);
    *(v3 + 24) = v178;
    *(v3 + 32) = v194;
    *(v3 + 33) = v193[0];
    *(v3 + 36) = *(v193 + 3);
    v120 = v177;
    *(v3 + 40) = v181;
    *(v3 + 48) = v120;
    *(v3 + 56) = v50;
    *(v3 + 64) = v48;

    sub_1000054D4(v118, v119);
    return;
  }

  v100 = *(v3 + 24);
  v101 = v99;
  v102 = v101;
  v103 = v178;
  v104 = v181;
  if (v100 != v178)
  {
    [v101 setVista:v178];
  }

  v105 = v177;
  v196 = v177;
  v106 = *(v3 + 40);
  v107 = *(v3 + 48);
  v108 = *(v3 + 56);
  v109 = *(v3 + 64);
  *(v3 + 24) = v103;
  *(v3 + 32) = v194;
  *(v3 + 33) = v193[0];
  *(v3 + 36) = *(v193 + 3);
  *(v3 + 40) = v104;
  *(v3 + 48) = v105;
  *(v3 + 56) = v50;
  *(v3 + 64) = v48;
  v180 = v104;
  sub_10001CCAC(&v196, &v182, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v50, v48);

  v110 = sub_1000054D4(v108, v109);
  v111 = v173;
  v112 = v176;
  if ((v167 & 1) == 0)
  {
    *v163 = v37;
    *v162 = v39;
    *v161 = v41;
    *v160 = v111;
  }

  v113 = v165;
  v114 = v174;
  if (v50)
  {
    v50(v110);
    v115 = v171;
    (*(v171 + 56))(v114, 0, 1, v112);
    (*(v115 + 32))(v170, v114, v112);
  }

  else
  {
    v121 = v171;
    (*(v171 + 56))(v174, 1, 1, v112);
    sub_100034334();
    if ((*(v121 + 48))(v114, 1, v112) != 1)
    {
      sub_100007DDC(v114, &unk_100048480, &qword_100036730);
    }
  }

  v122 = v180;
  if (!v181)
  {
    v122 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  LOBYTE(v123) = v194;
  (*(v171 + 32))(v113, v170, v112);
  *(v113 + *(v175 + 20)) = v122;
  if (v178 > 2)
  {
    if ((v178 - 4) < 6)
    {
      v124 = qword_100046A18;
      v125 = v180;
      if (v124 != -1)
      {
        goto LABEL_107;
      }

      goto LABEL_86;
    }

    if (v178 == 3)
    {
      v128 = qword_100046A08;
      v129 = v180;
      if (v128 != -1)
      {
        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_82:
    v133 = qword_100046A00;
    v134 = v180;
    if (v133 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_86;
  }

  if (v178)
  {
    if (v178 == 1)
    {
      if (v123)
      {
        v132 = v180;
        sub_100009BF0(v113, v111);
        goto LABEL_86;
      }
    }

    else if (v178 == 2)
    {
      v126 = qword_100046A10;
      v127 = v180;
      if (v126 != -1)
      {
        goto LABEL_107;
      }

      goto LABEL_86;
    }

    goto LABEL_82;
  }

  if ((v123 & 1) == 0)
  {
    goto LABEL_82;
  }

  v130 = qword_100046A80;
  v131 = v180;
  if (v130 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
LABEL_86:
    sub_100009914(v123, v111);
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    sub_10000A5B0(v113);
    if ((v166 & 1) == 0)
    {
      LODWORD(v182) = v136;
      v183 = v138;
      v184 = v140;
      v185 = v142;
      [v102 applyStyleDefinition:&v182];
      goto LABEL_101;
    }

    v143 = sub_10002A3CC();
    v144 = *(v3 + 96);
    if (v144)
    {
      v123 = v144;
      if ([v123 mode])
      {
        [v123 applyMode:0];
      }
    }

    if ((v167 & 1) == 0)
    {
      LODWORD(v182) = v136;
      v183 = v138;
      v184 = v140;
      v185 = v142;
      LODWORD(v143) = 1050253722;
      [v102 animateToStyleDefinition:&v182 duration:v143];
      v148 = 300000000;
      goto LABEL_100;
    }

    [v102 hideLocationDotPulse];
    *(v3 + 114) = 0;

    sub_100034754();
    v146 = v145;

    v147 = (v146 + 0.1) * 1000000000.0;
    if (COERCE_INT(fabs(v147)) > 2139095039)
    {
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v147 <= -1.0)
    {
      goto LABEL_105;
    }

    if (v147 < 1.8447e19)
    {
      break;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    swift_once();
  }

  if (v147 <= 0x11E1A300)
  {
    v148 = 300000000;
  }

  else
  {
    v148 = v147;
  }

LABEL_100:
  sub_10002A564(v148);
LABEL_101:
  v149 = sub_100034B44();
  v150 = v164;
  (*(*(v149 - 8) + 56))(v164, 1, 1, v149);
  v151 = swift_allocObject();
  swift_weakInit();
  sub_100034B24();

  v152 = sub_100034B14();
  v153 = swift_allocObject();
  v153[2] = v152;
  v153[3] = &protocol witness table for MainActor;
  v153[4] = v151;

  sub_10000E0F4(0, 0, v150, &unk_100037128, v153);

  sub_100007DDC(&v196, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v50, v48);
}

uint64_t sub_100029FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_100034874();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_100034B24();
  v4[9] = sub_100034B14();
  v7 = sub_100034B04();

  return _swift_task_switch(sub_10002A0D0, v7, v6);
}

uint64_t sub_10002A0D0()
{
  v28 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v3 = sub_100034714();

    LODWORD(v4) = !sub_1000097C8(*(v2 + 32), v3);
    sub_100034814();
    v5 = sub_100034854();
    v6 = sub_100034C64();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];
    if (v7)
    {
      v26 = v0[6];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 67109378;
      *(v11 + 4) = v4 & 1;
      *(v11 + 8) = 2080;
      v13 = sub_100034CD4();
      v25 = v9;
      v15 = v4;
      v4 = sub_10001AF94(v13, v14, &v27);

      *(v11 + 10) = v4;
      LOBYTE(v4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Foreground should be hidden: %{BOOL}d, using orientation: %s", v11, 0x12u);
      sub_1000026BC(v12);

      (*(v8 + 8))(v25, v26);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    v16 = *(v2 + 96);
    if (v16)
    {
      v17 = v16;
      v18 = [v17 vistaView];
      v19 = [v18 quadViews];

      sub_1000057F4();
      v20 = sub_100034AC4();

      if (v20 >> 62)
      {
        result = sub_100034E44();
        if (result)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_8:
          if ((v20 & 0xC000000000000001) != 0)
          {
            v22 = sub_100034DC4();
          }

          else
          {
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v22 = *(v20 + 32);
          }

          v23 = v22;
          goto LABEL_15;
        }
      }

      v23 = 0;
LABEL_15:

      [v23 setHidden:v4 & 1];

      goto LABEL_16;
    }
  }

LABEL_16:

  v24 = v0[1];

  return v24();
}

double sub_10002A3CC()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 136))
  {

    sub_100034814();
    v7 = sub_100034854();
    v8 = sub_100034C64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Applying scheduled deactive mode", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
    sub_100034B54();

    *(v1 + 136) = 0;
  }

  return result;
}

double sub_10002A564(uint64_t a1)
{
  v3 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  if (!*(v1 + 136))
  {
    v7 = *(v1 + 96);
    if (!v7 || [v7 mode] != 1)
    {
      v8 = sub_100034B44();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_100034B24();

      v10 = v1;
      v11 = sub_100034B14();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = a1;
      v12[5] = v9;

      *(v10 + 136) = sub_1000237C8(0, 0, v6, &unk_100037120, v12);
    }
  }

  return result;
}

uint64_t sub_10002A6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v5[6] = sub_100034B24();
  v5[7] = sub_100034B14();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_10002A7AC;

  return static Task<>.sleep(nanoseconds:)(a4);
}

uint64_t sub_10002A7AC()
{
  *(*v1 + 72) = v0;

  v3 = sub_100034B04();
  if (v0)
  {
    v4 = sub_100012B6C;
  }

  else
  {
    v4 = sub_10002A908;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002A908()
{

  if ((sub_100034B64() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 96);
      if (v2)
      {
        v3 = Strong;
        v4 = v2;
        if ([v4 mode] != 1)
        {
          [v4 applyMode:1];
        }

        Strong = v3;
      }

      *(Strong + 136) = 0;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_10002A9F0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = sub_100034704();

  if ((v6 & 1) == 0 && (*(v0 + 114) & 1) == 0)
  {
    sub_100034814();
    v7 = sub_100034854();
    v8 = sub_100034C64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Applying deactive mode", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    sub_10002A3CC();
    v10 = *(v1 + 96);
    if (v10)
    {
      v11 = v10;
      if ([v11 mode] != 1)
      {
        [v11 applyMode:1];
      }
    }
  }
}

void sub_10002ABA0(void *a1)
{
  v3 = a1;
  sub_100024620(a1);
  sub_10002AD2C();
  v4 = *(v1 + 96);
  if (v4)
  {
    v5 = objc_allocWithZone(CLLocation);
    v10 = v4;
    v6 = [v5 initWithLatitude:37.33182 longitude:-122.03118];
    [v10 updateLocation:v3 fallbackLocation:v6 animated:0];

    if ([v10 mode] == 1)
    {
      v7 = [v10 vistaView];
      [v7 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
    }

    if (!*(v1 + 24) && *(v1 + 152) && (*(v1 + 144) & 1) != 0)
    {
      sub_10002A3CC();
      v8 = *(v1 + 96);
      if (v8)
      {
        v9 = v8;
        if ([v9 mode])
        {
          [v9 applyMode:0];
        }
      }

      [v10 pulseLocationDot];
    }
  }
}

void sub_10002AD2C()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v3 = v1;
    if (![v3 vista])
    {
      v2 = 0.0;
      if (((*(v0 + 152) != 0) & *(v0 + 144)) != 0)
      {
        v2 = 1.0;
      }

      [v3 setLocationDotAlpha:v2];
    }
  }
}