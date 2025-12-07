void sub_10002ADB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100034814();
    v8 = sub_100034854();
    v9 = sub_100034C64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Location Updated", v10, 2u);
    }

    v11 = (*(v3 + 8))(v5, v2);
    if (*(v7 + 104))
    {
      __chkstk_darwin(v11);
      v15[-2] = v12;
      v13 = v12;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();

      v14 = v15[2];
    }

    else
    {
      v14 = 0;
    }

    sub_10002ABA0(v14);
  }
}

double sub_10002AFCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100034814();
    v7 = sub_100034854();
    v8 = sub_100034C64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Location Failed", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    sub_10002ABA0(0);
  }

  return result;
}

uint64_t sub_10002B218(char *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v149 = a3;
  v7 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v140 = &v136 - v11;
  *&v148 = sub_100034354();
  v12 = *(v148 - 8);
  v13 = __chkstk_darwin(v148);
  v146 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  *&v144 = &v136 - v15;
  *&v145 = type metadata accessor for Geotime(0);
  v16 = __chkstk_darwin(v145);
  v138 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  *&v147 = &v136 - v18;
  v19 = sub_100034874();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v23 = sub_100034854();
  v24 = sub_100034C64();
  v25 = os_log_type_enabled(v23, v24);
  v141 = v10;
  v139 = a2;
  v150 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v142 = v19;
    v27 = v26;
    v28 = swift_slowAlloc();
    v143 = v12;
    v151[0] = v28;
    *v27 = 134218498;
    *(v27 + 4) = v149.n128_f32[0];
    *(v27 + 12) = 2080;
    v29 = sub_100034CD4();
    v31 = sub_10001AF94(v29, v30, v151);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2080;
    v32 = sub_100034CD4();
    v34 = sub_10001AF94(v32, v33, v151);

    *(v27 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Editor rotating: %f from: %s to: %s", v27, 0x20u);
    swift_arrayDestroy();
    v12 = v143;

    result = (*(v20 + 8))(v22, v142);
  }

  else
  {

    result = (*(v20 + 8))(v22, v19);
  }

  v36 = *(v4 + 96);
  if (!v36)
  {
    return result;
  }

  v37 = 0.0;
  v38 = 0.0;
  if ((v150 - 2) <= 2)
  {
    v38 = flt_100037134[(v150 - 2)];
  }

  v39 = *(v4 + 48);
  v40 = *(v4 + 56);
  v41 = *(v4 + 64);
  v42 = v139;
  if ((v139 - 2) <= 2)
  {
    v37 = flt_100037134[v139 - 2];
  }

  v43 = *(v4 + 40);
  v44 = vabds_f32(v38, v37);
  if (v44 == 3.1416)
  {
    if (v38 < v37)
    {
      v37 = v37 + -6.2832;
    }
  }

  else if (v44 > 3.1416)
  {
    if (v38 >= v37)
    {
      v45 = -6.2832;
    }

    else
    {
      v45 = 6.2832;
    }

    v38 = v38 + v45;
  }

  v46 = *(v4 + 24);
  LODWORD(v143) = *(v4 + 32);
  v136 = v39;
  v47 = v36;
  v150 = v43;
  sub_1000053EC(v40, v41);
  v137 = v47;
  v48 = [v47 vistaView];
  v49 = [v48 scene];

  v50 = *(v4 + 88);
  v51 = *(v4 + 16);
  v139 = sub_100009644(v51, v42);

  v142 = v41;
  if (v40)
  {
    v52 = v140;
    v40();
    v53 = *(v12 + 56);
    v54 = v148;
    v53(v52, 0, 1, v148);
    (*(v12 + 32))(v144, v52, v54);
  }

  else
  {
    v53 = *(v12 + 56);
    v55 = v140;
    v56 = v148;
    v53(v140, 1, 1, v148);
    sub_100034334();
    if ((*(v12 + 48))(v55, 1, v56) != 1)
    {
      sub_100007DDC(v55, &unk_100048480, &qword_100036730);
    }
  }

  v57 = v150;
  v140 = v43;
  if (!v43)
  {
    v57 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v58 = *(v12 + 32);
  v59 = v147;
  v58(v147, v144, v148);
  *(v59 + *(v145 + 20)) = v57;
  if (v46 > 2)
  {
    if ((v46 - 4) < 6)
    {
      v60 = qword_100046A18;
      v61 = v150;
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = v138;
      goto LABEL_47;
    }

    if (v46 == 3)
    {
      v65 = qword_100046A08;
      v66 = v150;
      if (v65 != -1)
      {
        swift_once();
      }

      v62 = v138;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v46)
  {
    if (v46 == 1)
    {
      if (v143)
      {
        v69 = v150;
        sub_100009BF0(v147, v50);
        v62 = v138;
        goto LABEL_47;
      }
    }

    else if (v46 == 2)
    {
      v63 = qword_100046A10;
      v64 = v150;
      if (v63 != -1)
      {
        swift_once();
      }

      v62 = v138;
      goto LABEL_47;
    }

LABEL_44:
    v70 = qword_100046A00;
    v71 = v150;
    if (v70 != -1)
    {
      swift_once();
    }

    v62 = v138;
    goto LABEL_47;
  }

  if ((v143 & 1) == 0)
  {
    goto LABEL_44;
  }

  v67 = qword_100046A80;
  v68 = v150;
  if (v67 != -1)
  {
    swift_once();
  }

  v62 = v138;
LABEL_47:
  v72 = v46;
  sub_100009914(v143, v50);
  v74 = v73;
  v144 = v75;
  v77 = v76;
  v78 = sub_10000A5B0(v147);
  v79 = v40;
  if (v40)
  {
    v80 = v141;
    v81 = v79;
    (v79)(v78);
    v82 = v148;
    v53(v80, 0, 1, v148);
    v58(v146, v80, v82);
  }

  else
  {
    v81 = 0;
    v83 = v141;
    v84 = v148;
    v53(v141, 1, 1, v148);
    sub_100034334();
    if ((*(v12 + 48))(v83, 1, v84) != 1)
    {
      sub_100007DDC(v83, &unk_100048480, &qword_100036730);
    }
  }

  v85 = v150;
  if (!v140)
  {
    v85 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v58(v62, v146, v148);
  *(v62 + *(v145 + 20)) = v85;
  if (v72 > 2)
  {
    v86 = v72;
    if ((v72 - 4) < 6)
    {
      v87 = qword_100046A18;
      v88 = v150;
      v89 = v139;
      if (v87 != -1)
      {
        swift_once();
      }

      v90 = v137;
      goto LABEL_77;
    }

    v89 = v139;
    if (v86 == 3)
    {
      v93 = qword_100046A08;
      v94 = v150;
      if (v93 != -1)
      {
        swift_once();
      }

      v90 = v137;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v86 = v72;
  if (!v72)
  {
    v89 = v139;
    if (v143)
    {
      v95 = qword_100046A80;
      v96 = v150;
      if (v95 != -1)
      {
        swift_once();
      }

      v90 = v137;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v89 = v139;
  if (v86 != 1)
  {
    if (v86 == 2)
    {
      v91 = qword_100046A10;
      v92 = v150;
      if (v91 != -1)
      {
        swift_once();
      }

      v90 = v137;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  if ((v143 & 1) == 0)
  {
LABEL_74:
    v98 = qword_100046A00;
    v99 = v150;
    if (v98 != -1)
    {
      swift_once();
    }

    v90 = v137;
    goto LABEL_77;
  }

  v97 = v150;
  sub_100009BF0(v62, v89);
  v90 = v137;
LABEL_77:
  sub_100009914(v143, v89);
  v101 = v100;
  v148 = v102;
  v104 = v103;
  sub_10000A5B0(v62);
  *&v105 = v74 + (v149.n128_f32[0] * (v101 - v74));
  [v49 setCameraOrbit:v105];
  *&v106 = vceqz_f32(*&v144);
  if ((vpmin_u32(*&v106, *&v106).u32[0] & 0x80000000) != 0 || (v107 = vceqz_f32(*&v148), (vpmin_u32(v107, v107).u32[0] & 0x80000000) != 0) || (vceq_f32(*&v144, *&v148).u8[0] & 1) != 0 || (v108 = *(&v144 + 1), v109 = *(&v148 + 1), *(&v144 + 1) == *(&v148 + 1)))
  {
    v110 = vmla_n_f32(*&v144, vsub_f32(*&v148, *&v144), v149.n128_f32[0]);
    v111 = v142;
  }

  else
  {
    *&v106 = vmul_f32(*&v144, *&v144);
    v125 = vadd_f32(*&v106, vdup_lane_s32(*&v106, 1)).u32[0];
    v126 = vmul_f32(*&v148, *&v148);
    LODWORD(v147) = sqrtf(vaddv_f32(*&v106));
    *&v106 = vadd_f32(v126, vdup_lane_s32(v126, 1));
    v145 = v106;
    LODWORD(v146) = sqrtf(vaddv_f32(v126));
    v127 = vrsqrte_f32(v125);
    v128 = vmul_f32(v127, vrsqrts_f32(v125, vmul_f32(v127, v127)));
    v129 = acosf(fminf(fmaxf(vmul_f32(*&v144, vmul_f32(v128, vrsqrts_f32(v125, vmul_f32(v128, v128)))).f32[0], -1.0), 1.0));
    if (v108 >= 0.0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 6.2832 - v129;
    }

    v131 = vrsqrte_f32(v145);
    v132 = vmul_f32(v131, vrsqrts_f32(v145, vmul_f32(v131, v131)));
    v133 = acosf(fminf(fmaxf(vmul_f32(*&v148, vmul_f32(v132, vrsqrts_f32(v145, vmul_f32(v132, v132)))).f32[0], -1.0), 1.0));
    if (v109 < 0.0)
    {
      v133 = 6.2832 - v133;
    }

    v111 = v142;
    if ((v133 - v130) >= 3.1406)
    {
      v130 = v130 + 6.2832;
    }

    else if ((v130 - v133) > 3.1426)
    {
      v133 = v133 + 6.2832;
    }

    *&v134 = *&v147 + (v149.n128_f32[0] * (*&v146 - *&v147));
    v148 = v134;
    v135 = __sincosf_stret(v130 + (v149.n128_f32[0] * (v133 - v130)));
    v110 = vmul_n_f32(__PAIR64__(LODWORD(v135.__sinval), LODWORD(v135.__cosval)), *&v148);
  }

  [v49 setCameraOffset:*&v110];
  *&v112 = *&CLLocationCoordinate2DMake(0.0, 0.0);
  if (v86 == 1)
  {
    v113.f64[1] = v112;
  }

  else
  {
    __asm { FMOV            V0.2S, #-15.0 }

    v113 = vcvtq_f64_f32(vmul_f32(vmla_n_f32(v77, vsub_f32(v104, v77), v149.n128_f32[0]), _D0));
  }

  [v49 setOffsetCoordinate:v113.f64[1]];
  [v49 restingCameraRoll];
  v120 = v119;
  [v49 cameraPosition];
  v148 = v121;
  [v49 cameraTarget];
  v147 = v122;
  [v49 cameraUp];
  *&v123 = (v38 + (v149.n128_f32[0] * (v37 - v38))) + v120;
  [v49 setCamera:*&v148 target:*&v147 up:v124 roll:v123];
  [v49 updateCamera];

  return sub_1000054D4(v81, v111);
}

uint64_t sub_10002C26C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C2A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001D270;

  return sub_100029FDC(a1, v4, v5, v6);
}

uint64_t sub_10002C35C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C9D4;

  return sub_10002A6F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10002C45C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C49C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C9D4;

  return sub_100029FDC(a1, v4, v5, v6);
}

uint64_t sub_10002C550()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002C5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C5E0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v2 + 113) = 0;
  sub_100034784();
  *(v2 + 96) = 0u;
  swift_allocObject();
  *(v2 + 120) = sub_100034774();
  *(v2 + 128) = [objc_allocWithZone(type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver()) init];
  *(v2 + 136) = 0;
  *(v2 + 144) = 2;
  *(v2 + 152) = 0;
  *(v2 + 16) = a2;
  *(v2 + 72) = vneg_f32(0x7F0000007FLL);
  *(v2 + 80) = 2139095040;
  *(v2 + 88) = 0;
  v6 = a2;
  *(v3 + 112) = !UIAccessibilityIsReduceMotionEnabled();
  v7 = v6;
  sub_100007864(v7, &v23);
  v8 = v25;
  if (v25 == 1)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v11 = 0;
    v12 = 0uLL;
  }

  else
  {
    v11 = v27;
    v12 = v26;
    v10 = v24;
    v9 = v23;
  }

  *(v3 + 24) = v9;
  *(v3 + 32) = v10 & 1;
  *(v3 + 40) = v8;
  *(v3 + 48) = v12;
  *(v3 + 64) = v11;

  sub_100034724();

  sub_10002D5E0(&unk_1000481D0, v13, type metadata accessor for AegirEditingCoordinator, "ў");

  sub_100034764();

  swift_weakAssign();
  if (*(v3 + 112) == 1)
  {
    [v7 setLooksScrollingDecelerationRate:PRScrollViewDecelerationRateSlow];
  }

  v14 = *(v3 + 56);
  v29 = *(v3 + 40);
  v30 = v14;
  v28 = *(v3 + 24);
  v31 = v29;
  v15 = v14;
  sub_10001CCAC(&v31, v22, &unk_100047890, &unk_100036B40);
  sub_10001CCAC(&v31 + 8, v22, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v15, *(&v15 + 1));
  v16 = sub_100027C58(&v28, v7);
  sub_100007DDC(&v31, &unk_100047890, &unk_100036B40);
  sub_100007DDC(&v31 + 8, &unk_1000481C0, &qword_100036F70);
  sub_1000054D4(v15, *(&v15 + 1));
  [v16 setStyleAnimationDelegate:v3];
  [v16 setPulseAnimationDelegate:v3];
  v17 = *(v3 + 96);
  *(v3 + 96) = v16;
  v18 = v16;

  sub_100028C28(0, 0);
  sub_1000246C0();
  v19 = *(v3 + 104);
  if (v19)
  {
    v20 = (*(v19 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus) - 3) < 2;
  }

  else
  {
    v20 = 2;
  }

  *(v3 + 144) = v20;
  sub_100024A8C(a1);

  return v3;
}

void sub_10002C90C(void *a1)
{
  v2 = v1;
  v4 = [a1 backgroundView];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [v5 superview];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        [v7 _addScrollViewScrollObserver:*(v2 + 128)];
      }
    }
  }

  v8 = *(v2 + 96);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 backgroundView];
    v11 = [a1 floatingView];
    sub_100005528(v10, v11);

    v12 = [v9 vistaView];
    [v12 updateSunLocationAnimated:0];

    sub_10002AD2C();
    v13 = [v9 vistaView];
    [v13 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
}

void sub_10002CAC0()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034814();
  v6 = sub_100034854();
  v7 = sub_100034C64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Editor did update. Updating editingCoordinator.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  if ((*(v1 + 113) & 1) == 0)
  {
    v9 = *(v1 + 16);

    v10 = v9;
    v11 = sub_100034734();

    sub_100028C28(1, v11 & 1);
  }
}

void sub_10002CC4C(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = sub_100034874();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v75 = &v71 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v71 - v11;
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  sub_100034814();
  v15 = sub_100034854();
  v16 = sub_100034C64();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "finalizeWithCompletion", v17, 2u);
  }

  v20 = *(v4 + 8);
  v19 = v4 + 8;
  v18 = v20;
  v20(v14, v3);
  v21 = [*(a1 + 16) currentLook];
  sub_100004E58(v21, &v80);

  if (v82 != 1)
  {
    v72 = v7;
    v73 = v18;
    v74 = v19;
    v29 = v80;
    v30 = v84;
    v76 = v84;
    v77 = v85;
    v31 = v81;
    v86 = v83;
    v87 = v82;
    *(a1 + 113) = 1;
    v32 = *(a1 + 104);
    if (v32)
    {
      __chkstk_darwin(v22);
      *(&v71 - 2) = v32;
      sub_1000053EC(v30, v77);
      sub_10001CCAC(&v86, &v79, &unk_1000481C0, &qword_100036F70);
      v33 = v32;
      sub_1000035B0(&unk_100047890, &unk_100036B40);
      sub_100034CA4();
      v30 = v76;
      sub_100007DDC(&v87, &unk_100047890, &unk_100036B40);

      v34 = v79;
    }

    else
    {
      sub_1000053EC(v30, v77);
      sub_10001CCAC(&v86, &v79, &unk_1000481C0, &qword_100036F70);
      sub_100007DDC(&v87, &unk_100047890, &unk_100036B40);
      v34 = 0;
    }

    v35 = v34;
    v36 = sub_1000079B0(v29, v31 & 1, v34);

    sub_100007DDC(&v86, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v30, v77);
    v37 = [objc_msgSend(*(a1 + 16) "environment")];
    swift_unknownObjectRelease();
    sub_100023500(v36);

    isa = sub_100034914().super.isa;

    v79 = 0;
    v39 = [v37 storeUserInfo:isa error:&v79];

    v40 = v79;
    if (v39 && (v41 = *(a1 + 16), v42 = v79, v43 = [objc_msgSend(v41 "environment")], swift_unknownObjectRelease(), v79 = 0, v44 = objc_msgSend(v43, "loadUserInfoWithError:", &v79), v43, v40 = v79, v44))
    {
      sub_100034924();
      v45 = v40;

      v46 = v75;
      sub_100034814();

      v47 = sub_100034854();
      v48 = sub_100034C64();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v79 = v50;
        *v49 = 136315138;
        v51 = v3;
        v52 = v35;
        v53 = sub_100034934();
        v55 = v54;

        v56 = sub_10001AF94(v53, v55, &v79);

        *(v49 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "Stored configuration with userInfo: %s", v49, 0xCu);
        sub_1000026BC(v50);

        sub_100007DDC(&v86, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v76, v77);

        v57 = v75;
        v58 = v51;
LABEL_20:
        v73(v57, v58);
        goto LABEL_21;
      }

      sub_100007DDC(&v86, &unk_1000481C0, &qword_100036F70);
      sub_1000054D4(v76, v77);

      v57 = v46;
    }

    else
    {
      v75 = v35;
      v59 = v40;
      sub_100034294();

      swift_willThrow();
      v60 = v72;
      sub_100034814();
      swift_errorRetain();
      v61 = sub_100034854();
      v62 = sub_100034C54();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v79 = v64;
        *v63 = 136315138;
        swift_getErrorValue();
        v65 = sub_100034EE4();
        v67 = sub_10001AF94(v65, v66, &v79);

        *(v63 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to store user info in editor.environment.targetConfiguration. %s", v63, 0xCu);
        sub_1000026BC(v64);

        sub_100007DDC(&v86, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v76, v77);
      }

      else
      {

        sub_100007DDC(&v86, &unk_1000481C0, &qword_100036F70);
        sub_1000054D4(v76, v77);
      }

      v57 = v60;
    }

    v58 = v3;
    goto LABEL_20;
  }

  sub_100034814();

  v23 = sub_100034854();
  v24 = sub_100034C54();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v18;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = [*(a1 + 16) currentLook];
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not create configuration from current look: %@", v26, 0xCu);
    sub_100007DDC(v27, &unk_1000478C0, &unk_100036B60);

    v18 = v25;
  }

  v18(v12, v3);
LABEL_21:
  (*(v78 + 16))();
  v68 = *(a1 + 96);
  if (v68)
  {
    v69 = v68;
    if ([v69 mode] != 1)
    {
      [v69 applyMode:1];
    }

    v70 = [v69 vistaView];
    [v70 purgeUnused];
  }
}

uint64_t sub_10002D5E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *DeviceUtilities.forceDisableForeground.unsafeMutableAddressor()
{
  if (qword_100046AD0 != -1)
  {
    swift_once();
  }

  return &static DeviceUtilities.forceDisableForeground;
}

void sub_10002D6B4()
{
  v0 = MTLCreateSystemDefaultDevice();
  if (v0)
  {
    v1 = [v0 supportsFamily:1006];
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  static DeviceUtilities.supportsGPUFamilyApple6 = v1;
}

char *DeviceUtilities.supportsGPUFamilyApple6.unsafeMutableAddressor()
{
  if (qword_100046AC8 != -1)
  {
    swift_once();
  }

  return &static DeviceUtilities.supportsGPUFamilyApple6;
}

void sub_10002D77C()
{
  v0 = sub_100034984();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    if (sub_1000349B4() == 0x3031303874 && v2 == 0xE500000000000000)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_100034EC4();
    }
  }

  else
  {
    v4 = 0;
  }

  static DeviceUtilities.forceDisableForeground = v4 & 1;
}

uint64_t sub_10002D868(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

Swift::Void __swiftcall aegirProxyAppDataUsageAttribution()()
{
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();
  swift_unknownObjectRelease_n();
}

uint64_t sub_10002D960@<X0>(uint64_t *a1@<X8>)
{
  sub_1000348F4();
  swift_allocObject();
  sub_100034904();
  sub_1000348C4();
  swift_allocObject();

  sub_1000348D4();
  sub_1000035B0(&qword_100048298, &unk_1000371E0);
  sub_1000343E4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100037160;
  sub_10002DDFC(&qword_1000482A0, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_1000343D4();
  sub_10002DDFC(&qword_1000482A8, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_1000343D4();

  *a1 = v2;
  return result;
}

id sub_10002DBBC(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

double sub_10002DBFC()
{
  [objc_allocWithZone(type metadata accessor for AegirUpdatingController()) init];
  sub_1000035B0(&qword_100048288, &unk_100037170);
  swift_allocObject();
  sub_1000348E4();
  sub_10002DE78(&qword_100048290, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000344D4();

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10002DD60();
  sub_10002DE78(&qword_100048280, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000344B4();
  return 0;
}

unint64_t sub_10002DD60()
{
  result = qword_100048278;
  if (!qword_100048278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048278);
  }

  return result;
}

uint64_t sub_10002DDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002DE78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100022E0C(&qword_100048288, &unk_100037170);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10002DEC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_10002DF0C()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for AegirAppViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:"onDeviceOrientationDidChange" name:UIDeviceOrientationDidChangeNotification object:0];

  v3 = [objc_opt_self() currentDevice];
  [v3 beginGeneratingDeviceOrientationNotifications];

  if (qword_1000469A0 != -1)
  {
    swift_once();
  }

  v4 = static PreferencePane.aegirPreferencePane;
  v5 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig;
  v6 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig];
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = static PreferencePane.aegirPreferencePane;
  v7 = v4;

  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  sub_100034434();
  sub_100034484();
  v10 = sub_1000343F4();
  v11 = [v8 standardUserDefaults];
  sub_100034434();

  v12 = sub_100034404();
  v13 = [v8 standardUserDefaults];
  sub_100034434();

  v14 = *&v1[v5];
  if (v14)
  {
    v15 = v1;
    v16 = v14;
    sub_100034474();

    sub_10002E708();
    v17 = *&v15[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
    if (v17)
    {
      v18 = v17;
      v19 = [v18 vistaView];
      [v19 setObserver:v15];

      [v18 prepareForTransitions];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10002E20C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  sub_10002EAFC();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AegirAppViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002E41C()
{
  v1 = sub_100034894();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000348B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A83C(0, &qword_100047DB0, OS_dispatch_queue_ptr);
  v9 = sub_100034C94();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100031BB0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DEC8;
  aBlock[3] = &unk_100042160;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1000348A4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100031BD8();
  sub_1000035B0(&unk_1000483C0, "j#");
  sub_100031C30();
  sub_100034D54();
  sub_100034CB4();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_10002E708()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_100030838(v5, v7, v9, v11);
  v12 = *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
  if (!v12)
  {
    return;
  }

  v38 = v12;
  v13 = [v38 vistaView];
  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  [v14 addSubview:v13];

  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v16 = sub_100034424();
  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_10002EBC0();
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  [v38 applyMode:v17];
  sub_10000A83C(0, &qword_1000483B8, UIAction_ptr);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = v1;
  v20 = sub_100034D04();
  v21 = [v19 view];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v40.origin.x = v24;
  v40.origin.y = v26;
  v40.size.width = v28;
  v40.size.height = v30;
  v31 = [objc_allocWithZone(UIButton) initWithFrame:v20 primaryAction:{20.0, CGRectGetMaxY(v40) + -70.0, 50.0, 50.0}];
  v32 = sub_100034984();
  v33 = [objc_opt_self() imageNamed:v32];

  [v31 setImage:v33 forState:0];
  v34 = [v19 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 addSubview:v31];

  v36 = *&v19[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton];
  *&v19[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = v31;

  v37 = sub_100034424();
  if (v37 != 2 && (v37 & 1) != 0)
  {
    [v38 pulseLocationDot];
  }
}

void sub_10002EAFC()
{
  v1 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton;
  v2 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView;
  v5 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(v0 + v4);
    *(v0 + v4) = 0;
  }

  v7 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController;
  v8 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (v8)
  {
    v9 = [v8 vistaView];
    [v9 removeFromSuperview];

    v8 = *(v0 + v7);
  }

  *(v0 + v7) = 0;
}

void sub_10002EBC0()
{
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1000493C0 + 16);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIScrollView) initWithFrame:{v5, v7, v9, v11}];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v61.origin.x = v16;
  v61.origin.y = v18;
  v61.size.width = v20;
  v61.size.height = v22;
  Width = CGRectGetWidth(v61);
  v24 = [v0 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v62.origin.x = v27;
  v62.origin.y = v29;
  v62.size.width = v31;
  v62.size.height = v33;
  [v12 setContentSize:{Width * v1, CGRectGetHeight(v62)}];
  v34 = objc_opt_self();
  v35 = v12;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor:v36];

  [v35 setPagingEnabled:0];
  [v35 setDelegate:v0];
  [v35 setDecelerationRate:UIScrollViewDecelerationRateNormal];
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v37 = static PreferencePane.aegirGeneralPreferencePane;
  if ([static PreferencePane.aegirGeneralPreferencePane vista] == 1)
  {
    [v35 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v46 = CGRectGetWidth(v63);
LABEL_12:
    [v35 setContentOffset:0 animated:{v46, 0.0}];
    goto LABEL_14;
  }

  if ([v37 vista] == 2)
  {
    [v35 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v64.origin.x = v48;
    v64.origin.y = v50;
    v64.size.width = v52;
    v64.size.height = v54;
    v55 = CGRectGetWidth(v64);
    v46 = v55 + v55;
    goto LABEL_12;
  }

LABEL_14:
  v56 = [v0 view];
  if (!v56)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v57 = v56;
  [v56 addSubview:v35];

  v58 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapView:"];
  [v35 addGestureRecognizer:v58];

  v59 = *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView];
  *&v0[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = v35;
}

void sub_10002EF94(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (!v2)
  {
    return;
  }

  v34 = v2;
  [a1 contentOffset];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  if (qword_1000469B0 != -1)
  {
    swift_once();
  }

  v8 = qword_1000493C0;
  v9 = *(qword_1000493C0 + 16);
  v10 = fmod(v5, v7) / v7;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = floor(v5 / v7);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v13 = v9 - 1;
  v14 = v12;
  if ((v9 - 1) < v12)
  {
    v14 = v9 - 1;
  }

  v15 = v14 & ~(v14 >> 63);
  if (v15 >= v9)
  {
    goto LABEL_22;
  }

  if (v13 >= v15 + 1)
  {
    v13 = v15 + 1;
  }

  v16 = v8 + 32;
  v17 = v8 + 32 + 48 * v15;
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);
  v20 = *(v17 + 16);
  v31 = *(v17 + 8);
  v21 = *v17;
  v22 = v16 + 48 * v13;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  v28 = *(v22 + 40);
  v33 = *(v17 + 24);
  v32 = v20;
  sub_1000053EC(v19, v18);
  v29 = v26;
  v30 = v25;
  sub_1000053EC(v27, v28);
  sub_100031394(v21, v31, v23, v24, v11);

  sub_1000054D4(v27, v28);
  sub_1000054D4(v19, v18);
}

void sub_10002F25C(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034804();
  v8 = a1;
  v9 = sub_100034854();
  v10 = sub_100034C64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    [v8 contentOffset];
    *(v11 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "scrollViewDidEndDecelerating. %f", v11, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  sub_10002F544();
  v13 = *(v2 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (v13)
  {
    v14 = v13;
    v15 = [v14 vistaView];
    [v15 purgeUnused];
  }
}

uint64_t sub_10002F544()
{
  v3 = v0;
  v4 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v4);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100034354();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView);
  if (v12)
  {
    v13 = v12;
    [v13 contentOffset];
    if (v14 > 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    [v13 bounds];
    v17 = v16;
    if (qword_1000469A8 != -1)
    {
      swift_once();
    }

    v18 = static PreferencePane.aegirGeneralPreferencePane;
    v19 = sub_100034424();
    if (v19 == 2 || (v19 & 1) == 0)
    {
      sub_100034334();
    }

    else
    {
      sub_100034304();
    }

    if (qword_1000469B0 != -1)
    {
      swift_once();
    }

    v20 = floor(v15 / v17);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        v21 = *(qword_1000493C0 + 16);
        v22 = v21 - 1;
        if ((v21 - 1) >= v20)
        {
          v22 = v20;
        }

        v23 = v22 & ~(v22 >> 63);
        if (v23 < v21)
        {
          v64[1] = v18;
          v24 = qword_1000493C0 + 48 * v23;
          v2 = *(v24 + 32);
          v65 = *(v24 + 40);
          v1 = *(v24 + 48);
          v25 = *(v24 + 56);
          v27 = *(v24 + 64);
          v26 = *(v24 + 72);
          v68 = v27;
          v66 = v25;
          v67 = v26;
          (*(v8 + 16))(v6, v11, v7);
          v28 = *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
          *&v6[*(v4 + 20)] = v28;
          if (v2 <= 2)
          {
            if (v2)
            {
              if (v2 == 1)
              {
                if (v65)
                {
                  v45 = v66;
                  v46 = v1;
                  sub_1000053EC(v68, v67);
                  v47 = v28;
                  sub_100009BF0(v6, 1);
                  goto LABEL_37;
                }
              }

              else if (v2 == 2)
              {
                v33 = v66;
                v34 = v1;
                sub_1000053EC(v68, v67);
                v35 = qword_100046A10;
                v36 = v28;
                if (v35 != -1)
                {
                  goto LABEL_45;
                }

LABEL_37:
                sub_100009914(v65, 1);
                v53 = v52;
                v55 = v54;
                v57 = v56;
                v59 = v58;
                sub_10000A5B0(v6);
                v60 = *(v3 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
                if (v60)
                {
                  v61 = v60;
                  [v61 setVista:v2];
                  LODWORD(v69) = v53;
                  v70 = v55;
                  v71 = v57;
                  LODWORD(v72) = v59;
                  [v61 setStyleDefinition:&v69];
                  v62 = sub_10001D27C(v2);
                  v72 = &type metadata for String;
                  v69 = v62;
                  v70 = v63;
                  sub_100034444();
                  sub_10001FCF8(&v69);
                  [v61 cleanUpAfterTransitions];

                  sub_1000054D4(v68, v67);
                  return (*(v8 + 8))(v11, v7);
                }

                else
                {
                  (*(v8 + 8))(v11, v7);

                  return sub_1000054D4(v68, v67);
                }
              }
            }

            else if (v65)
            {
              v41 = v66;
              v42 = v1;
              sub_1000053EC(v68, v67);
              v43 = qword_100046A80;
              v44 = v28;
              if (v43 != -1)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }
          }

          else
          {
            if ((v2 - 4) < 6)
            {
              v29 = v66;
              v30 = v1;
              sub_1000053EC(v68, v67);
              v31 = qword_100046A18;
              v32 = v28;
              if (v31 == -1)
              {
                goto LABEL_37;
              }

LABEL_45:
              swift_once();
              goto LABEL_37;
            }

            if (v2 == 3)
            {
              v37 = v66;
              v38 = v1;
              sub_1000053EC(v68, v67);
              v39 = qword_100046A08;
              v40 = v28;
              if (v39 != -1)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }
          }

          v48 = v66;
          v49 = v1;
          sub_1000053EC(v68, v67);
          v50 = qword_100046A00;
          v51 = v28;
          if (v50 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_45;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_43;
  }

  return result;
}

void sub_10002FB7C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v4);
  v6 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100034354();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100034874();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v60[-v15];
  v17 = *&v2[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
  if (v17)
  {
    v64 = v7;
    v65 = v6;
    v63 = v8;
    v18 = v17;
    [v18 setVistaTransitionStyle:0];
    v19 = [v18 vistaView];
    [a1 locationInView:v19];
    v21 = v20;
    v23 = v22;

    sub_100034804();
    v24 = sub_100034854();
    v25 = sub_100034C64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v21;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "tap occured at. %f %f", v26, 0x16u);
    }

    v27 = *(v11 + 8);
    v27(v16, v10);
    if ([v18 vista] != 2)
    {
      goto LABEL_13;
    }

    sub_100034804();
    v28 = sub_100034854();
    v29 = sub_100034C64();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Tapping on the Orrery", v30, 2u);
    }

    v27(v14, v10);
    v31 = [v18 vistaView];
    v32 = [v31 spheroidAtPoint:{v21, v23}];

    if (!v32)
    {
LABEL_13:

      return;
    }

    [v32 type];
    v62 = NUNIAstronomyVistaView_SpheroidTypeToVista();
    if (qword_1000469A8 != -1)
    {
      swift_once();
    }

    v33 = sub_100034424();
    v34 = v66;
    if (v33 == 2 || (v33 & 1) == 0)
    {
      sub_100034334();
    }

    else
    {
      sub_100034304();
    }

    if (qword_1000469B0 != -1)
    {
      swift_once();
    }

    if (*(qword_1000493C0 + 16))
    {
      v61 = *(qword_1000493C0 + 40);
      v35 = *(qword_1000493C0 + 48);
      v36 = *(qword_1000493C0 + 56);
      v27 = *(qword_1000493C0 + 64);
      v14 = *(qword_1000493C0 + 72);
      v37 = v65;
      (*(v63 + 16))(v65, v34, v64);
      v38 = *&v2[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation];
      *(v37 + v4[5]) = v38;
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 == 1)
          {
            if (v61)
            {
              v2 = v36;
              v4 = v35;
              sub_1000053EC(v27, v14);
              v47 = v38;
              sub_100009BF0(v65, 1);
LABEL_36:
              v50 = v66;
              sub_100009914(v61, 1);
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v58 = v57;
              sub_10000A5B0(v65);
              v67 = v52;
              v68 = v54;
              v69 = v56;
              v70 = v58;
              LODWORD(v59) = 1.5;
              [v18 animateToVista:v62 styleDefinition:&v67 duration:v59];

              sub_1000054D4(v27, v14);
              (*(v63 + 8))(v50, v64);
              return;
            }
          }

          else if (v62 == 2)
          {
            v2 = v36;
            v4 = v35;
            sub_1000053EC(v27, v14);
            v41 = qword_100046A10;
            v42 = v38;
            if (v41 == -1)
            {
              goto LABEL_36;
            }

            goto LABEL_39;
          }
        }

        else if (v61)
        {
          v2 = v36;
          v4 = v35;
          sub_1000053EC(v27, v14);
          v45 = qword_100046A80;
          v46 = v38;
          if (v45 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }
      }

      else
      {
        if ((v62 - 4) < 6)
        {
          v2 = v36;
          v4 = v35;
          sub_1000053EC(v27, v14);
          v39 = qword_100046A18;
          v40 = v38;
          if (v39 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }

        if (v62 == 3)
        {
          v2 = v36;
          v4 = v35;
          sub_1000053EC(v27, v14);
          v43 = qword_100046A08;
          v44 = v38;
          if (v43 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_39;
        }
      }

      v2 = v36;
      v4 = v35;
      sub_1000053EC(v27, v14);
      v48 = qword_100046A00;
      v49 = v38;
      if (v48 == -1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

LABEL_39:
    swift_once();
    goto LABEL_36;
  }
}

void sub_1000303B0()
{
  v1 = v0;
  v2 = sub_1000344A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig];
  if (v9)
  {
    v10 = v9;
    sub_100034494();
    v11 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController;
    v12 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController];
    if (v12)
    {
      goto LABEL_5;
    }

    (*(v3 + 16))(v6, v8, v2);
    v13 = objc_allocWithZone(sub_1000035B0(&qword_100048398, "v"));
    v14 = sub_100034884();
    v15 = *&v1[v11];
    *&v1[v11] = v14;
    v16 = v14;

    v17 = [v16 view];
    if (v17)
    {
      v18 = [objc_opt_self() whiteColor];
      [v17 setBackgroundColor:v18];

      v12 = *&v1[v11];
      if (!v12)
      {
LABEL_14:
        (*(v3 + 8))(v8, v2);
        return;
      }

LABEL_5:
      v19 = *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController];
      v20 = v12;
      if (v19)
      {
        [v19 applyMode:2];
      }

      [v12 setModalInPresentation:1];
      v21 = [objc_opt_self() currentDevice];
      v22 = [v21 userInterfaceIdiom];

      if (v22 == 1)
      {
        [v12 setModalPresentationStyle:7];
        v23 = [v12 popoverPresentationController];
        if (v23)
        {
          v24 = v23;
          [v23 setSourceView:*&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton]];
LABEL_12:
        }
      }

      else
      {
        [v12 setModalPresentationStyle:1];
        v25 = [v12 sheetPresentationController];
        if (v25)
        {
          v24 = v25;
          sub_1000035B0(&qword_1000483A0, qword_100037210);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_100036D80;
          sub_10000A83C(0, &unk_1000483A8, UISheetPresentationControllerDetent_ptr);
          *(swift_allocObject() + 16) = v1;
          v27 = v1;
          v28 = sub_100034CE4();

          *(v26 + 32) = v28;
          isa = sub_100034AB4().super.isa;

          [v24 setDetents:isa];

          [v24 setPrefersGrabberVisible:1];
          [v24 setPrefersScrollingExpandsWhenScrolledToEdge:0];
          [v24 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
          goto LABEL_12;
        }
      }

      [v1 presentViewController:v12 animated:1 completion:0];

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000307CC(int a1, id a2)
{
  result = [a2 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    [result bounds];
    v5 = v4;

    *&result = v5 / 3.0;
  }

  return result;
}

void sub_100030838(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v10);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v13 = static PreferencePane.aegirGeneralPreferencePane;
  v14 = sub_100034414();
  if (v15)
  {
    if (v14 == 0x65706F696C6C6143 && v15 == 0xE800000000000000)
    {
    }

    else
    {
      v17 = sub_100034EC4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v23 = sub_100007FF8();
    [v23 setQuadViewOptions:{objc_msgSend(v23, "quadViewOptions") | 0x200}];
    goto LABEL_21;
  }

LABEL_9:
  v18 = sub_100034414();
  if (v19)
  {
    if (v18 == 0x7269676541 && v19 == 0xE500000000000000)
    {
    }

    else
    {
      v21 = sub_100034EC4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = sub_100008214();
    goto LABEL_20;
  }

LABEL_15:
  v22 = sub_100008230();
LABEL_20:
  v23 = v22;
LABEL_21:
  v24 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v23 configuration:{a1, a2, a3, a4}];

  v25 = objc_allocWithZone(NUNIScene);
  v58 = sub_100030E28;
  v59 = 0;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100033AE4;
  v57 = &unk_1000420C0;
  v26 = _Block_copy(&aBlock);
  v27 = [v25 initWithSphereoids:16515070 currentDateBlock:v26];
  _Block_release(v26);

  [v27 setSnap:3];
  [v27 setBackgroundType:2];
  [v24 setScene:v27];
  v28 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v24];
  v29 = *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController) = v28;
  v30 = v28;

  [v30 setActiveModeFrameInterval:0];
  [v30 setVista:{objc_msgSend(v13, "vista")}];
  v31 = [v13 vista];
  v32 = PreferencePane.crop.getter();
  sub_100034344();
  v33 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  v34 = *(v5 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
  *&v12[*(v10 + 20)] = v34;
  if (v31 > 2)
  {
    if ((v31 - 4) < 6)
    {
      v35 = qword_100046A18;
      v36 = v34;
      if (v35 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v31 == 3)
    {
      v39 = qword_100046A08;
      v40 = v34;
      if (v39 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v31)
  {
    if (v32)
    {
      v41 = qword_100046A80;
      v42 = v34;
      if (v41 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

LABEL_38:
    v44 = qword_100046A00;
    v45 = v34;
    if (v44 == -1)
    {
      goto LABEL_39;
    }

LABEL_40:
    swift_once();
    goto LABEL_39;
  }

  if (v31 != 1)
  {
    if (v31 == 2)
    {
      v37 = qword_100046A10;
      v38 = v34;
      if (v37 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_38;
  }

  v43 = v34;
  sub_100009BF0(v12, 1);
LABEL_39:
  sub_100009914(v32 & 1, 1);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_10000A5B0(v12);
  LODWORD(aBlock) = v47;
  v55 = v49;
  v56 = v51;
  LODWORD(v57) = v53;
  [v30 applyStyleDefinition:&aBlock];
  [v30 setVistaTransitionStyle:1];
  [v30 updateLocation:*(v5 + v33) fallbackLocation:0];
  [v30 applyMode:2];
}

uint64_t sub_100030E28()
{
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v0 = sub_100034424();
  if (v0 == 2 || (v0 & 1) == 0)
  {

    return sub_100034334();
  }

  else
  {

    return sub_100034304();
  }
}

void sub_100030EEC(uint64_t a1)
{
  sub_10000A83C(0, &qword_100048390, NSObject_ptr);
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  if (sub_100034CF4())
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController);
    if (v2)
    {
      v3 = [v2 view];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 superview];

        if (v5)
        {

          sub_10002EAFC();

          sub_10002E708();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_10003106C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController] = 0;
  v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_isActive] = 0;
  v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_animateSun] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_rotationModel] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = 0;
  *&v3[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController] = 0;
  v6 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  *&v3[v6] = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  if (a2)
  {
    v7 = sub_100034984();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for AegirAppViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000311F4(void *a1)
{
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController] = 0;
  v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_isActive] = 0;
  v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_animateSun] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_settingsButton] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_scrollView] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_rotationModel] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_renderingConfig] = 0;
  *&v1[OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_preferenceViewController] = 0;
  v3 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  *&v1[v3] = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AegirAppViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10003133C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031354()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031394(uint64_t a1, int a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v82 = a1;
  v11 = type metadata accessor for Geotime(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v76 - v15;
  v17 = sub_100034354();
  v18 = *(v17 - 8);
  result = __chkstk_darwin(v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v6 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_vistaController);
  if (!v22)
  {
    return result;
  }

  LODWORD(v81) = a2;
  v23 = qword_1000469A8;
  *&v80 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_100034424();
  v79 = a3;
  v78 = a4;
  if (v24 == 2 || (v24 & 1) == 0)
  {
    sub_100034334();
  }

  else
  {
    sub_100034304();
  }

  v77 = v18;
  v25 = *(v18 + 16);
  v26 = v17;
  v25(v16, v21, v17);
  v27 = OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation;
  v28 = *(v6 + OBJC_IVAR____TtC11AegirPoster22AegirAppViewController_currentLocation);
  *&v16[*(v11 + 20)] = v28;
  if (v82 > 2)
  {
    if ((v82 - 4) < 6)
    {
      v29 = qword_100046A18;
      v30 = v28;
      if (v29 == -1)
      {
        goto LABEL_26;
      }

LABEL_64:
      swift_once();
      goto LABEL_26;
    }

    if (v82 == 3)
    {
      v33 = qword_100046A08;
      v34 = v28;
      if (v33 != -1)
      {
        goto LABEL_64;
      }

      goto LABEL_26;
    }

LABEL_25:
    v38 = qword_100046A00;
    v39 = v28;
    if (v38 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

  if (v82)
  {
    if (v82 == 1)
    {
      if (v81)
      {
        v37 = v28;
        sub_100009BF0(v16, 1);
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v82 != 2)
    {
      goto LABEL_25;
    }

    v31 = qword_100046A10;
    v32 = v28;
    if (v31 != -1)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((v81 & 1) == 0)
    {
      goto LABEL_25;
    }

    v35 = qword_100046A80;
    v36 = v28;
    if (v35 != -1)
    {
      goto LABEL_64;
    }
  }

LABEL_26:
  sub_100009914(v81 & 1, 1);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_10000A5B0(v16);
  v25(v14, v21, v26);
  v48 = *(v6 + v27);
  *&v14[*(v11 + 20)] = v48;
  v49 = v79;
  if (v79 > 2)
  {
    v50 = v80;
    v51 = v78;
    if ((v79 - 4) < 6)
    {
      v52 = qword_100046A18;
      v53 = v48;
      v54 = v26;
      if (v52 != -1)
      {
        swift_once();
      }

      v55 = v77;
      goto LABEL_45;
    }

    v54 = v26;
    v55 = v77;
    if (v79 == 3)
    {
      v58 = qword_100046A08;
      v59 = v48;
      if (v58 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }

    goto LABEL_44;
  }

  v50 = v80;
  v51 = v78;
  if (!v79)
  {
    v54 = v26;
    v55 = v77;
    if (v78)
    {
      v60 = qword_100046A80;
      v61 = v48;
      if (v60 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }

LABEL_44:
    v63 = qword_100046A00;
    v64 = v48;
    if (v63 == -1)
    {
      goto LABEL_45;
    }

LABEL_65:
    swift_once();
    goto LABEL_45;
  }

  v54 = v26;
  if (v79 != 1)
  {
    v55 = v77;
    if (v79 == 2)
    {
      v56 = qword_100046A10;
      v57 = v48;
      if (v56 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_65;
    }

    goto LABEL_44;
  }

  v55 = v77;
  if ((v78 & 1) == 0)
  {
    goto LABEL_44;
  }

  v62 = v48;
  sub_100009BF0(v14, 1);
LABEL_45:
  sub_100009914(v51 & 1, 1);
  v66 = v65;
  v80 = v67;
  v81 = v68;
  v70 = v69;
  sub_10000A5B0(v14);
  v71 = [v50 vista];
  if (v82 == v49)
  {
    if (v71 != v82)
    {
      [v50 setVista:?];
    }

    v87 = v41;
    v88 = v43;
    v89 = v45;
    v90 = v47;
    v83 = v80;
    v84 = v66;
    v85 = v81;
    v86 = v70;
    [v50 applyTransitionFraction:&v87 fromStyleDefinition:&v83 toStyleDefinition:a5];
  }

  else
  {
    if (v71 != v82)
    {
      [v50 setVista:v82];
    }

    [v50 styleDefinition];
    *v72.f32 = vdup_lane_s32(v89, 0);
    *&v72.u32[2] = vext_s8(v89, v88, 4uLL);
    v72.i32[0] = v87;
    v73 = v81;
    *v74.f32 = vdup_lane_s32(*&v81, 0);
    *&v74.u32[2] = vext_s8(*&v81, v66, 4uLL);
    v75 = v80;
    v74.i32[0] = v80;
    if ((vminv_u16(vmovn_s32(vceqq_f32(v72, v74))) & 1) == 0 || (vceq_f32(*&v88, v66).i32[1] & 1) == 0)
    {
      v87 = v80;
      v88 = v66;
      v89 = v81;
      v90 = v70;
      [v50 setStyleDefinition:&v87];
      v75 = v80;
      v73 = v81;
    }

    v87 = v41;
    v88 = v43;
    v89 = v45;
    v90 = v47;
    v83 = v75;
    v84 = v66;
    v85 = v73;
    v86 = v70;
    [v50 applyTransitionFraction:v82 fromVista:&v87 fromStyleDefinition:v49 toVista:&v83 toStyleDefinition:a5];
  }

  return (*(v55 + 8))(v21, v54);
}

unint64_t sub_100031BD8()
{
  result = qword_100047DD0;
  if (!qword_100047DD0)
  {
    sub_100034894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047DD0);
  }

  return result;
}

unint64_t sub_100031C30()
{
  result = qword_100047DE0;
  if (!qword_100047DE0)
  {
    sub_100022E0C(&unk_1000483C0, "j#");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047DE0);
  }

  return result;
}

id sub_100031C94(void *a1, uint64_t a2, double a3)
{
  [a1 contentOffset];
  if (v6 <= 0.0)
  {
    v6 = 0.0;
  }

  v7 = v6;
  result = [a1 bounds];
  v10 = v9;
  v11 = floorf(v7 / v10);
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  if (__OFADD__(v11, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (a3 > 0.0)
  {
    v12 = v11 + 1;
  }

  v13 = (v10 * v12);
  result = [a1 contentOffset];
  *a2 = v13;
  *(a2 + 8) = v14;
  return result;
}

id sub_100031EBC()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator] = 0;
  v5 = OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_overrideDate;
  v6 = sub_100034354();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = type metadata accessor for AegirRenderingController(0);
  v13.receiver = v0;
  v13.super_class = v7;
  v8 = objc_msgSendSuper2(&v13, "init");
  sub_100034834();
  v9 = sub_100034854();
  v10 = sub_100034C64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AegirRenderingController created", v11, 2u);
  }

  (*(v2 + 8))(v4, v1);
  nw_parameters_create();
  sub_1000349E4();
  swift_unknownObjectRetain();
  nw_parameters_set_source_application_by_bundle_id();

  swift_unknownObjectRelease_n();

  return v8;
}

id sub_1000320F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AegirRenderingController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AegirRenderingController(uint64_t a1)
{
  result = qword_100048408;
  if (!qword_100048408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000321D0(uint64_t a1)
{
  sub_10003226C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003226C(uint64_t a1)
{
  if (!qword_100048418)
  {
    sub_100034354();
    v1 = sub_100034D14();
    if (!v2)
    {
      atomic_store(v1, &qword_100048418);
    }
  }
}

uint64_t sub_1000322C4(SEL *a1, SEL *a2)
{
  v131 = sub_1000342C4();
  v130 = *(v131 - 8);
  v6 = __chkstk_darwin(v131);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v111 - v9;
  v11 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v11);
  v122 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  v14 = __chkstk_darwin(v13 - 8);
  v129 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = &v111 - v16;
  v17 = sub_100034874();
  v18 = *(v17 - 8);
  v134 = v17;
  v135 = v18;
  v19 = __chkstk_darwin(v17);
  v125 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v111 - v22;
  __chkstk_darwin(v21);
  v25 = &v111 - v24;
  if (sub_100034BD4())
  {
    sub_1000346F4();
    sub_1000346B4();
  }

  v141 = sub_100033704;
  v142 = 0;
  aBlock = _NSConcreteStackBlock;
  v138 = 1107296256;
  v139 = sub_100020770;
  v140 = &unk_100042188;
  v26 = _Block_copy(&aBlock);

  [(SEL *)a1 updatePreferences:v26];
  _Block_release(v26);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_71;
  }

  v114 = v23;
  v112 = v8;
  v113 = v10;
  v128 = [(SEL *)a2 deviceOrientation];
  v27 = [-[SEL environment](a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v28 = sub_10001D800();
  v30 = v29;
  v32 = v31;
  swift_unknownObjectRelease();
  if (v32 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v28;
  }

  if (v32 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v121 = v34;
  sub_100034834();
  sub_100034020(v28, v30, v32);
  v35 = sub_100034854();
  v36 = sub_100034C64();
  sub_10001D240(v28, v30, v32);
  v37 = os_log_type_enabled(v35, v36);
  v124 = v32;
  v132 = v30;
  v123 = v28;
  LODWORD(v133) = (v32 != 1) & v30;
  v126 = v33;
  v116 = v11;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v127 = a1;
    v39 = v38;
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v39 = 136315138;
    sub_100034020(v28, v30, v32);
    v41 = sub_100007B44(v33, (v32 != 1) & v30, v121);
    v43 = v42;
    sub_10001D240(v28, v30, v124);
    v44 = sub_10001AF94(v41, v43, &aBlock);

    *(v39 + 4) = v44;
    v45 = v128;
    v46 = v134;
    v32 = v124;
    _os_log_impl(&_mh_execute_header, v35, v36, "didInitialize — configuration: %s", v39, 0xCu);
    sub_1000026BC(v40);

    a1 = v127;

    v120 = *(v135 + 8);
    v120(v25, v46);
  }

  else
  {

    v120 = *(v135 + 8);
    v120(v25, v134);
    v45 = v128;
  }

  v3 = a1;
  v115 = sub_100009638(v3, v45);

  a1 = &stru_100045000;
  v47 = [(SEL *)v3 backgroundView];
  [v47 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  (v130[7])(v136, 1, 1, v131);
  v56 = v121;
  if (v121)
  {
    v127 = v121;
  }

  else
  {
    v127 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v57 = v132;
  v58 = v123;
  sub_100034020(v123, v132, v32);
  v118 = sub_100034C14();
  if (sub_100034C14())
  {
    v59 = swift_allocObject();
    *(v59 + 16) = v126;
    *(v59 + 24) = v133;
    *(v59 + 25) = *v143;
    *(v59 + 28) = *&v143[3];
    *(v59 + 32) = v56;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = v3;
    v60 = sub_1000341AC;
LABEL_20:
    sub_100034020(v58, v57, v32);
    v62 = v3;
    v63 = sub_100007FF8();
    goto LABEL_22;
  }

  v61 = sub_100034BD4();
  v59 = swift_allocObject();
  *(v59 + 16) = v126;
  *(v59 + 24) = v133;
  *(v59 + 25) = *v143;
  *(v59 + 28) = *&v143[3];
  *(v59 + 32) = v56;
  *(v59 + 40) = 0;
  *(v59 + 48) = 0;
  *(v59 + 56) = 0;
  *(v59 + 64) = v3;
  if (v61)
  {
    v60 = sub_100034034;
    v57 = v132;
    goto LABEL_20;
  }

  sub_100034020(v58, v132, v32);
  v64 = v3;
  v63 = sub_100007FF8();
  [v63 setQuadViewOptions:{objc_msgSend(v63, "quadViewOptions") | 0x200}];

  v60 = sub_100034034;
LABEL_22:
  v2 = [objc_allocWithZone(NUNIAstronomyVistaView) initWithFrame:v63 configuration:{v49, v51, v53, v55}];

  v65 = objc_allocWithZone(NUNIScene);
  v141 = v60;
  v142 = v59;
  aBlock = _NSConcreteStackBlock;
  v138 = 1107296256;
  v139 = sub_100033AE4;
  v140 = &unk_1000421D8;
  v66 = _Block_copy(&aBlock);
  v121 = v59;

  v67 = [v65 initWithSphereoids:16515070 currentDateBlock:v66];
  _Block_release(v66);

  [v67 setSnap:3];
  [v67 setBackgroundType:2];
  v117 = v67;
  [v2 setScene:v67];
  v8 = [objc_allocWithZone(NUNIAstronomyVistaController) initWithVistaView:v2];
  [v8 setIsBacklightTransitionEnabled:1];
  [v8 setActiveModeFrameInterval:1];
  v68 = v126;
  [v8 setVista:v126];
  [v8 setVistaTransitionStyle:1];
  v69 = [v2 scene];
  v70 = [v69 currentDateBlock];

  v10 = v70[2](v70);
  a2 = v122;
  sub_100034324();

  _Block_release(v70);
  v71 = v127;
  *(a2 + *(v116 + 20)) = v127;
  LOBYTE(v10) = v133;
  if (v133)
  {
    v72 = sub_100034EC4();
    v73 = v71;

    v26 = v130;
    if ((v72 & 1) != 0 && v58 != 2)
    {
      v74 = v58 == 3;
      LOBYTE(v10) = v133;
      goto LABEL_28;
    }

    if (v58 > 2)
    {
      LOBYTE(v10) = v133;
      if ((v58 - 4) < 6)
      {
        if (qword_100046A18 != -1)
        {
          swift_once();
        }

        v11 = v115;
        v23 = v131;
        goto LABEL_45;
      }

      if (v58 == 3)
      {
        v11 = v115;
        if (qword_100046A08 != -1)
        {
          swift_once();
        }

        v23 = v131;
        goto LABEL_45;
      }

      goto LABEL_67;
    }

    LOBYTE(v10) = v133;
    if (!v58)
    {
      if (qword_100046A80 != -1)
      {
        swift_once();
      }

      v11 = v115;
      v23 = v131;
      goto LABEL_45;
    }

    if (v58 == 1)
    {
      v11 = v115;
      sub_100009BF0(a2, v115);
      v23 = v131;
LABEL_45:
      sub_100009914(v10, v11);
      v76 = v80 * 1.1;
      goto LABEL_46;
    }

    if (v58 != 2)
    {
LABEL_67:
      v11 = v115;
      if (qword_100046A00 != -1)
      {
        swift_once();
      }

      v23 = v131;
      goto LABEL_45;
    }

LABEL_42:
    v11 = v115;
    if (qword_100046A10 != -1)
    {
      swift_once();
    }

    v23 = v131;
    goto LABEL_45;
  }

  v75 = v71;

  v26 = v130;
  if (v68 == 2)
  {
    goto LABEL_42;
  }

  v74 = v68 == 3;
LABEL_28:
  v11 = v115;
  if (v74)
  {
    v23 = v131;
    if (qword_100046A48 != -1)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v23 = v131;
    if (qword_100046A40 != -1)
    {
      goto LABEL_72;
    }
  }

  while (1)
  {
    sub_100009914(v10, v11);
LABEL_46:
    *&aBlock = v76;
    v138 = v77;
    v139 = v78;
    LODWORD(v140) = v79;
    [v8 applyStyleDefinition:&aBlock];
    v81 = v129;
    sub_100034078(v136, v129);
    if ((v26[6])(v81, 1, v23) == 1)
    {
      sub_100007DDC(v129, &qword_1000479B0, &qword_100036B90);
    }

    else
    {
      v131 = v2;
      v133 = v3;
      v82 = v113;
      (v26[4])(v113, v129, v23);
      v83 = v26;
      sub_1000342A4(v84);
      v86 = v85;
      [v8 setCacheDirectory:v85];

      v87 = v114;
      sub_100034804();
      v88 = v112;
      (v83[2])(v112, v82, v23);
      v89 = sub_100034854();
      v90 = sub_100034C54();
      if (os_log_type_enabled(v89, v90))
      {
        v11 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        aBlock = v130;
        *v11 = 136315138;
        sub_1000340E8();
        v91 = sub_100034EA4();
        v92 = v23;
        v94 = v93;
        v95 = v83[1];
        v96 = v88;
        v97 = v92;
        v95(v96, v92);
        v98 = sub_10001AF94(v91, v94, &aBlock);
        v23 = v134;

        *(v11 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v89, v90, "Vista Controller created with asset directory: %s", v11, 0xCu);
        sub_1000026BC(v130);

        v120(v114, v23);
        v95(v82, v97);
        a2 = v122;
        v3 = v133;
        a1 = &stru_100045000;
      }

      else
      {

        v99 = v83[1];
        v99(v88, v23);
        v120(v87, v134);
        v99(v82, v23);
        a2 = v122;
        v3 = v133;
      }

      v2 = v131;
    }

    [v8 disableCloudDataFetch:v118 & 1];
    v100 = [v8 mode];
    v101 = v128;
    v102 = v127;
    if (v100 != 1)
    {
      [v8 applyMode:1];
    }

    [v8 updateLocation:0 fallbackLocation:v102 animated:0];
    v103 = [v8 vistaView];
    [v103 updateSunLocationAnimated:0];

    sub_10000A5B0(a2);
    sub_100007DDC(v136, &qword_1000479B0, &qword_100036B90);
    v104 = [v3 a1[251]];
    v105 = [(SEL *)v3 floatingView];
    sub_100005528(v104, v105);

    type metadata accessor for AegirRenderingCoordinator(0);
    swift_allocObject();
    a2 = v3;
    v10 = v8;
    v106 = sub_10001BDE0(v10, v101, a2);

    *(v119 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator) = v106;

    sub_10000C688(a2);
    v141 = sub_100033714;
    v142 = 0;
    aBlock = _NSConcreteStackBlock;
    v138 = 1107296256;
    v139 = sub_100020770;
    v140 = &unk_100042200;
    v26 = _Block_copy(&aBlock);

    [(SEL *)a2 updatePreferences:v26];
    _Block_release(v26);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

  sub_100034834();
  v107 = sub_100034854();
  v108 = sub_100034C64();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&_mh_execute_header, v107, v108, "Finished setting up renderer", v109, 2u);

    sub_10001D240(v123, v132, v124);
  }

  else
  {
    sub_10001D240(v123, v132, v124);
  }

  return (v120)(v125, v134);
}

id sub_100033714(void *a1)
{
  [a1 setHandlesWakeAnimation:1];
  [a1 setUserTapEventsRequested:1];

  return [a1 setHideDimmingLayer:1];
}

uint64_t sub_100033908()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v6 = sub_100034854();
  v7 = sub_100034C64();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "didInvalidate", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator) = 0;

  result = sub_100034BD4();
  if (result)
  {
    sub_1000346F4();
    return sub_1000346A4();
  }

  return result;
}

Class sub_100033AE4(uint64_t a1)
{
  v2 = sub_100034354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);

  v6(v7);

  v8.super.isa = sub_1000342F4().super.isa;
  (*(v3 + 8))(v5, v2);

  return v8.super.isa;
}

void sub_100033BE8(void *a1, uint64_t a2)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v8 = a1;
  v9 = sub_100034854();
  v10 = sub_100034C64();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = sub_100034C14() & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = sub_100034BD4() & 1;

    _os_log_impl(&_mh_execute_header, v9, v10, "didUpdate — isPreview: %{BOOL}d; isSnapshot: %{BOOL}d", v11, 0xEu);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator);
  if (v12)
  {

    v13 = sub_100034744();

    if (v13)
    {
      *(v12 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange) = 1;
      v14 = [*(v12 + 24) vistaView];
      v15 = [*(v12 + 24) vistaView];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      [v14 updatePortalLayerBounds:{v17, v19, v21, v23}];
    }

    sub_10000C688(v8);
  }
}

void sub_100033E74(double a1, double a2)
{
  v3 = v2;
  v6 = sub_100034874();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v10 = sub_100034854();
  v11 = sub_100034C64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = a1;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "didReceiveTapAt: %f, %f", v12, 0x16u);
  }

  (*(v7 + 8))(v9, v6);
  if (*(v3 + OBJC_IVAR____TtC11AegirPoster24AegirRenderingController_coordinator))
  {

    sub_100014B60(a1, a2);
  }
}

double sub_100034008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100034020(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100034078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&qword_1000479B0, &qword_100036B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000340E8()
{
  result = qword_1000479B8;
  if (!qword_1000479B8)
  {
    sub_1000342C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479B8);
  }

  return result;
}

uint64_t sub_100034140()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}