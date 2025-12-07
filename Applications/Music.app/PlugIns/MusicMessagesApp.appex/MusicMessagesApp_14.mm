void sub_10015D0C4(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
{
  v7 = *a1;
  v8 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  v8[1] = a5;
  if (a2)
  {
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for Gliss.Transition(255, *(v7 + 80), *(v7 + 88), v9);
    swift_getFunctionTypeMetadata1();
    sub_1004DD98C();

    swift_getWitnessTable();
    sub_1004DD7DC();
  }

  sub_10015A168();
}

uint64_t sub_10015D2A0(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_1004D82AC();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100638350, &qword_10051CFE8);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100004CB8(&qword_100638358, &unk_10051CFF0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001636A0(5);
  if (qword_100633CD8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_1004D966C();
    sub_100035430(v16, qword_100671CE8);

    v17 = sub_1004D964C();
    v18 = sub_1004DDF9C();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_1004DEFFC();
      v25 = sub_1000343A8(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      sub_100008D24(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_100162514(v15, v59);
    sub_100162514(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_10001074C(v13, &qword_100638358, &unk_10051CFF0);
      v34 = v59;
      sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_10001074C(v34, &qword_100638358, &unk_10051CFF0);
      v35 = v57;
LABEL_14:
      sub_100161D0C(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_100162514(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_10001074C(v56, &qword_100638358, &unk_10051CFF0);
      v34 = v59;
      sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_10001074C(v34, &qword_100638350, &qword_10051CFE8);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_100162584();
    v41 = v27;
    v42 = sub_1004DD35C();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_10001074C(v56, &qword_100638358, &unk_10051CFF0);
    sub_10001074C(v15, &qword_100638358, &unk_10051CFF0);
    v43(v36, v28);
    sub_10001074C(v39, &qword_100638358, &unk_10051CFF0);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004DD98C();

    swift_getWitnessTable();
    sub_1004DD7DC();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_1001575CC(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_10015DAF8(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_1001E2288(0, v11);
  return swift_endAccess();
}

void sub_10015DC3C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_10015DC6C()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[22];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v18[0] = v0;
    v5 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator(0, v1[10], v1[11], v6);
    v4 = [v5 initWithTarget:sub_1004DF06C() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v7 = v4;
  v8 = v3;
  [v7 setDelegate:v0];
  v9 = *((swift_isaMask & *v0) + 0xB0);
  v10 = *(v0 + v9);
  *(v0 + v9) = v7;
  v11 = v7;

  [v11 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v18);
  v12 = v18[0];
  sub_10000DE74(v18[1], v18[2]);
  sub_10000DE74(v18[3], v18[4]);
  sub_10000DE74(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    sub_100006F10(0, &qword_100638360, UIView_ptr);
    if ((sub_1004DE5FC() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (sub_100006F10(0, &qword_100638360, UIView_ptr), v16 = v12, v17 = sub_1004DE5FC(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void sub_10015DEC4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v286 = v279 - v6;
  v7 = *((v5 & v4) + 0x50);
  v305 = *((v5 & v4) + 0x58);
  v302 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v303 = *(sub_1004DE7CC() - 8);
  __chkstk_darwin();
  v287 = v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = v279 - v10;
  __chkstk_darwin();
  v289 = v279 - v11;
  __chkstk_darwin();
  v291 = v279 - v12;
  __chkstk_darwin();
  v294 = (v279 - v13);
  __chkstk_darwin();
  v293 = v279 - v14;
  v306 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v295 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = v279 - v17;
  __chkstk_darwin();
  v19 = v279 - v18;
  __chkstk_darwin();
  v304 = v279 - v20;
  v284 = v21;
  __chkstk_darwin();
  v300 = v22;
  v301 = v279 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v279 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v45 = sub_1004D966C();
    sub_100035430(v45, qword_100671CE8);
    v306 = sub_1004D964C();
    v46 = sub_1004DDF9C();
    if (os_log_type_enabled(v306, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v306, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v306;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v310);
  v30 = v310[0];
  sub_10000DE74(v310[1], v310[2]);
  sub_10000DE74(v310[3], v310[4]);
  sub_10000DE74(v310[5], v310[6]);
  v288 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v49 = sub_1004D966C();
    sub_100035430(v49, qword_100671CE8);
    v50 = sub_1004D964C();
    v51 = sub_1004DDF9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v307 = v53;
      *v52 = 136446210;
      v311 = v32;
      v312 = v34;
      _s3__C7CGPointVMa_0(0);
      v54 = sub_1004DD4DC();
      v56 = sub_1000343A8(v54, v55, &v307);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      sub_100008D24(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v298 = isa;
  v35 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v292 = TupleTypeMetadata2;
  v296 = v2;
  v297 = v29;
  v299 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v301;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v296;
      sub_100161D0C(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v302;
      (v305[3].isa)(v299, &v299[*(TupleTypeMetadata2 + 48)], v38, v302);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v298[2])(v38, v35 + v39, v306);
      v40 = v25;
      v41 = v299;
      v42 = v305[3].isa;
      v43 = *(v292 + 48);

      v44 = v302;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v292;

      v2 = v296;
    }
  }

  else
  {
    v38 = v301;
    Gliss.Coordinator.item.getter(v301);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v302;
    (v305[3].isa)(v58, v57, v38, v302);
  }

  v59 = v298;
  v60 = v298[1];
  v281 = (v298 + 1);
  v282 = v25;
  v60(v38, v306);
  Gliss.Coordinator.gestureConfiguration.getter(&v311);
  v61 = v311;
  sub_10000DE74(v312, v313);
  sub_10000DE74(v314, v315);
  sub_10000DE74(v316, v317);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v283 = v60;
  v280 = v61;
  if (v32 < 0.0)
  {
    v63 = v304;
    if (!v62)
    {
      goto LABEL_30;
    }

    if (v62 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v19);
      goto LABEL_39;
    }

LABEL_26:
    v64 = v294;
    (*(v303 + 2))(v294, v299, v300);
    v65 = v59[6];
    if (v65(v64, 1, v306) != 1)
    {
      (v59[4])(v19, v64, v306);
      v2 = v296;
      v44 = v302;
      goto LABEL_39;
    }

    v66 = v296;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v306);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v302;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v304;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v299[*(TupleTypeMetadata2 + 48)];
  v71 = v293;
  (*(v303 + 2))(v293, v70, v300);
  v72 = v59[6];
  if (v72(v71, 1, v306) != 1)
  {
    (v59[4])(v19, v71, v306);
    TupleTypeMetadata2 = v292;
    v2 = v296;
    goto LABEL_39;
  }

  v73 = v296;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v306);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v292;
  if (!v68)
  {
LABEL_32:
    (*(v303 + 1))(v69, v300);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v306);
  if ((v305[4].isa)(v63, v44))
  {
    v279[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v280;
    [v288 velocityInView:v77];
    v79 = v78;
    v81 = v80;
    v82 = sub_10015A9FC(v63, v32 >= 0.0);
    v295 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v319);
    v84 = v82 + *(*v82 + 168);
    swift_beginAccess();
    v85 = v84[32];
    v86 = v85 != 2;
    v87 = v86 & v85;
    if ((v86 & v84[33]) != 0)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    *v84 = v32;
    *(v84 + 1) = v34;
    *(v84 + 2) = v79;
    *(v84 + 3) = v81;
    *(v84 + 16) = v88 | v87;
    v89 = *(*v82 + 128);
    swift_beginAccess();
    v90 = *(v82 + v89);
    v294 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (qword_100633CD8 != -1)
      {
        swift_once();
      }

      v92 = sub_1004D966C();
      v293 = sub_100035430(v92, qword_100671CE8);
      v93 = sub_1004D964C();
      v94 = sub_1004DDF9C();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = sub_1004D964C();
      v97 = sub_1004DDF9C();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v99;
        *v98 = 136446210;
        LOBYTE(v309[0]) = v32 >= 0.0;
        v100 = sub_1004DD4DC();
        v102 = sub_1000343A8(v100, v101, &v307);

        *(v98 + 4) = v102;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        sub_100008D24(*&v99);
      }

      v103 = sub_1004D964C();
      v104 = sub_1004DDF9C();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v106;
        *v105 = 136446210;
        v309[0] = v82;
        v107 = v306;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = sub_1004DEFFC();
        v112 = sub_1000343A8(v110, v111, &v307);

        *(v105 + 4) = v112;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        sub_100008D24(*&v106);
      }

      v76 = v292;
      v75 = v91;
      v2 = v296;
      sub_10015B718(v82);
      v63 = v304;
    }

    v113 = [v288 state];
    if (v113 <= 2)
    {
      if (v113 < 2)
      {
        v114 = sub_10015A76C();
        [v114 prepare];

        goto LABEL_69;
      }

      v139 = v283;
      if (v113 == 2)
      {
LABEL_69:
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v148 = sub_1004D966C();
        v149 = sub_100035430(v148, qword_100671CE8);
        v150 = sub_1004D964C();
        v151 = sub_1004DDF6C();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "🤏 Swipe Gesture Updated", v152, 2u);
        }

        v153 = sub_1004D964C();
        v154 = sub_1004DDF6C();
        v155 = os_log_type_enabled(v153, v154);
        v305 = v149;
        if (v155)
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v309[0] = v157;
          *v156 = 136446210;
          v307 = v32;
          v308 = v34;
          _s3__C7CGPointVMa_0(0);
          v158 = sub_1004DD4DC();
          v160 = sub_1000343A8(v158, v159, v309);

          *(v156 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v153, v154, "   Translation=%{public}s", v156, 0xCu);
          sub_100008D24(v157);
        }

        v161 = sub_1004D964C();
        v162 = sub_1004DDF6C();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v295;
        v165 = v303;
        if (v163)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v309[0] = v167;
          *v166 = 136446210;
          v307 = v79;
          v308 = v81;
          _s3__C7CGPointVMa_0(0);
          v168 = sub_1004DD4DC();
          v170 = sub_1000343A8(v168, v169, v309);

          *(v166 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v161, v162, "   Velocity=%{public}s", v166, 0xCu);
          sub_100008D24(v167);
        }

        v171 = v291;
        [v164 bounds];
        v172 = fabs(v32);
        v173 = v172 * (1.0 / CGRectGetWidth(v320));
        v174 = *(*v82 + 112);
        swift_beginAccess();
        v175 = *(v165 + 2);
        v302 = v174;
        v176 = v82 + v174;
        v177 = v300;
        v178 = v175;
        v175(v171, v176, v300);
        v179 = v298[6];
        v298 += 6;
        v180 = v179;
        if (v179(v171, 1, v306) == 1)
        {

          v181 = *(v165 + 1);
          v181(v171, v177);
          v182 = v177;
          v183 = v178;
          v184 = v180;
        }

        else
        {
          v181 = *(v165 + 1);
          v181(v171, v177);
          v185 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v186 = v185[1];
          v185[1] = v173;
          v187 = sub_1004D964C();
          v188 = sub_1004DDF6C();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 134349056;
            *(v189 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v187, v188, "   Progression Value=%{public}f", v189, 0xCu);
          }

          v183 = v178;
          if (v186 >= 0.45)
          {
            v184 = v180;
            if (v186 <= 0.55)
            {
              v224 = v302;
              if (v173 < 0.45 || v173 > 0.55)
              {
                v272 = sub_10015A76C();
                [v288 locationInView:v164];
                v274 = v273;
                v276 = v275;

                [v272 impactOccurredAtLocation:{v274, v276}];
                v278 = sub_100163D14(&v307);
                if (*(v277 + 32) != 2)
                {
                  *(v277 + 32) = v173 >= 0.55;
                }

                (v278)(&v307, 0);
                v182 = v300;
              }

              else
              {

                v182 = v300;
              }

LABEL_110:
              if (v173 <= 1.0)
              {
                v226 = 0;
              }

              else
              {
                v225 = v289;
                v183(v289, v294 + v224, v182);
                v226 = v184(v225, 1, v306) != 1;
                v181(v225, v182);
              }

              v228 = sub_100163D14(&v307);
              if (*(v227 + 32) != 2)
              {
                *(v227 + 33) = v226;
              }

              (v228)(&v307, 0);
              v229 = v294;
              v230 = v290;
              v183(v290, v294 + v224, v182);
              v231 = v229;
              LODWORD(v229) = v184(v230, 1, v306) == 1;
              v181(v230, v182);
              v232 = v282;
              v233 = v283;
              v234 = v292;
              v235 = v299;
              if (((v229 | v226) & 1) == 0)
              {
                goto LABEL_125;
              }

              v236 = v295;
              [v295 bounds];
              v237 = CGRectGetWidth(v321) * 0.2;
              v238 = 0.0;
              if (v226)
              {
                [v236 bounds];
                v238 = CGRectGetWidth(v322);
              }

              v239 = v237 * ((v172 - v238) / (v237 + v237 + v172 - v238));
              [v236 bounds];
              v240 = 1.0 / CGRectGetWidth(v323) * v239;
              if (v226)
              {
                v241 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v241 + 8) = v240 + 1.0;

                v242 = sub_1004D964C();
                v243 = sub_1004DDF6C();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v241 + 8);
                  v245 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v242, v243, v245, v244, 0xCu);

                  v234 = v292;
                }
              }

              else
              {
                v246 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v246 + 8) = v240;

                v242 = sub_1004D964C();
                v243 = sub_1004DDF6C();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v246 + 8);
                  v245 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_10015A15C();

              swift_unknownObjectRelease();

              v233(v304, v306);
              (*(v232 + 8))(v235, v234);
              return;
            }

            v182 = v300;
          }

          else
          {

            v182 = v300;
            v184 = v180;
          }
        }

        v224 = v302;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v138 = v298;
    if (v113 != 3)
    {
      if (v113 == 4)
      {

        v139 = v283;
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v199 = sub_1004D966C();
        sub_100035430(v199, qword_100671CE8);
        v141 = sub_1004D964C();
        v142 = sub_1004DDF9C();
        if (!os_log_type_enabled(v141, v142))
        {
          goto LABEL_98;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v139 = v283;
        if (v113 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v198 = v295;

LABEL_99:
          v139(v63, v306);
LABEL_100:
          (*(v282 + 8))(v299, v76);
          return;
        }

        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v140 = sub_1004D966C();
        sub_100035430(v140, qword_100671CE8);
        v141 = sub_1004D964C();
        v142 = sub_1004DDF9C();
        if (!os_log_type_enabled(v141, v142))
        {
LABEL_98:

          sub_10015BA20(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v141, v142, v144, v143, 2u);
      v76 = v292;

      goto LABEL_98;
    }

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v190 = sub_1004D966C();
    sub_100035430(v190, qword_100671CE8);
    v191 = sub_1004D964C();
    v192 = sub_1004DDF9C();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "🤏✅ Swipe Gesture Ended", v193, 2u);
      v138 = v298;
      v2 = v296;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v194 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v194[1] < 0.5)
      {

        v195 = sub_1004D964C();
        v196 = sub_1004DDF9C();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&_mh_execute_header, v195, v196, "   Hasn't reached translation thresholds. Cancelling ❎", v197, 2u);
        }

        sub_10015BA20(v82, 1);
        swift_unknownObjectRelease();

        v283(v63, v306);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v200 = v303;
      v201 = v287;
      if (v79 <= 0.0)
      {
LABEL_103:
        v202 = *(*v82 + 112);
        swift_beginAccess();
        v203 = v82 + v202;
        v204 = v300;
        (*(v200 + 2))(v201, v203, v300);
        if ((v138[6])(v201, 1, v306) == 1)
        {
          (*(v200 + 1))(v201, v204);
          v205 = sub_10015A848();
          [v205 prepare];

          v206 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v207 = v295;
          [v288 locationInView:v295];
          v209 = v208;
          v211 = v210;

          [v206 impactOccurredWithIntensity:0.5 atLocation:{v209, v211}];
          sub_10015BA20(v82, 1);
          v212 = sub_100161CAC();
          if (*(v212 + 16))
          {
            v213 = direct field offset for Gliss.Transition.id;

            v214 = sub_100056C8C(v82 + v213);
            v215 = v283;
            if (v216)
            {
              v217 = *(*(v212 + 56) + 8 * v214);

              sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
              v218 = sub_1004DE14C();
              [v217 duration];
              v220 = v219 + -0.1;
              v221 = v215;
              v222 = swift_allocObject();
              *(v222 + 16) = v2;
              v223 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_1001621D8, v222, v220);

              swift_unknownObjectRelease();

              v221(v63, v306);
LABEL_139:
              (*(v282 + 8))(v299, v292);
              return;
            }
          }

          else
          {

            v215 = v283;
          }

          swift_unknownObjectRelease();

          v215(v63, v306);
          goto LABEL_139;
        }

        v251 = v201;
        v252 = v295;

        v253 = v285;
        v254 = v251;
        v255 = v306;
        v75(v285, v254, v306);
        v256 = sub_1004DDA8C();
        (*(*(v256 - 8) + 56))(v286, 1, 1, v256);
        (v138[2])(v301, v253, v255);
        sub_1004DDA4C();
        v303 = v252;

        v257 = v297;
        swift_unknownObjectRetain();
        v298 = v2;
        v300 = v288;
        v296 = sub_1004DDA3C();
        v258 = (*(v138 + 80) + 56) & ~*(v138 + 80);
        v259 = (v284 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = v75;
        v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        v264[2] = v296;
        v264[3] = &protocol witness table for MainActor;
        v265 = v301;
        v266 = v305;
        v264[4] = v302;
        v264[5] = v266;
        v264[6] = v257;
        v267 = v264 + v258;
        v268 = v306;
        v262(v267, v265, v306);
        *(v264 + v259) = v298;
        *(v264 + v260) = v294;
        v269 = v303;
        *(v264 + v261) = v303;
        v270 = v264 + v263;
        *v270 = v79;
        *(v270 + 1) = v81;
        *(v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8)) = v300;
        sub_10011F560(0, 0, v286, &unk_10051CFE0, v264);

        swift_unknownObjectRelease();

        v271 = v283;
        v283(v285, v268);
        v271(v304, v268);
        goto LABEL_139;
      }
    }

    else
    {
      v200 = v303;
      v201 = v287;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v247 = sub_1004D964C();
    v248 = sub_1004DDF9C();
    v249 = os_log_type_enabled(v247, v248);
    v76 = v292;
    if (v249)
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v247, v248, "   Going opposite direction. Cancelling ❎", v250, 2u);
      v76 = v292;
    }

    sub_10015BA20(v82, 1);
    swift_unknownObjectRelease();

    v283(v63, v306);
    goto LABEL_100;
  }

  v115 = v299;
  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v116 = sub_1004D966C();
  sub_100035430(v116, qword_100671CE8);
  v117 = v59[2];
  v118 = v295;
  v119 = v63;
  v117(v295, v63, v306);
  v120 = sub_1004D964C();
  v121 = sub_1004DDF9C();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v282;
  if (v122)
  {
    v124 = swift_slowAlloc();
    v305 = v120;
    v125 = v124;
    v126 = COERCE_DOUBLE(swift_slowAlloc());
    v307 = v126;
    *v125 = 136446210;
    v127 = v306;
    v117(v301, v118, v306);
    v128 = sub_1004DD4DC();
    v129 = v127;
    v130 = v123;
    v132 = v131;
    v133 = v118;
    v134 = v283;
    v283(v133, v129);
    v135 = sub_1000343A8(v128, v132, &v307);

    *(v125 + 4) = v135;
    v136 = v121;
    v137 = v305;
    _os_log_impl(&_mh_execute_header, v305, v136, "DataSource doesn't allow swipe for item=%{public}s", v125, 0xCu);
    sub_100008D24(*&v126);

    swift_unknownObjectRelease();
    v134(v304, v129);
    (*(v130 + 8))(v299, v292);
  }

  else
  {

    swift_unknownObjectRelease();
    v145 = v118;
    v146 = v306;
    v147 = v283;
    v283(v145, v306);
    v147(v119, v146);
    (*(v123 + 8))(v115, TupleTypeMetadata2);
  }
}

uint64_t sub_1001601C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_1004DDA4C();
  *(v9 + 152) = sub_1004DDA3C();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_1001603D0;

  return v19(a6, v16, v14);
}

uint64_t sub_1001603D0()
{
  *(*v1 + 184) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_100160860;
  }

  else
  {
    v4 = sub_100160528;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100160528()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_100158AA4(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_1001579D4(sub_1001625DC, v9, v8);

  sub_10015C9C8(v4, 1);
  v10 = v4 + *(*v4 + 21);
  swift_beginAccess();
  v11 = v10[32];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_10015A76C();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_1004D966C();
    sub_100035430(v19, qword_100671CE8);
    v20 = sub_1004D964C();
    v21 = sub_1004DDF9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_1004DDB9C();
      v26 = sub_1000343A8(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_100008D24(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100160860()
{
  v19 = v0;

  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, qword_100671CE8);
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_10015A924();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_10015BA20(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_100160AC0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10015DEC4(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  v5 = v2;
  if ((sub_1004DE5FC() & 1) == 0)
  {

    return 1;
  }

  v6 = [(objc_class *)a1.super.isa view];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 velocityInView:v7];
  v9 = v8;
  v11 = v10;
  if (fabs(v10) < fabs(v8))
  {
    [(objc_class *)a1.super.isa locationInView:v7];
    v9 = v12;
    v11 = v13;

    Gliss.Coordinator.gestureConfiguration.getter(v59);
    v15 = v59[1];
    v14 = v59[2];

    sub_10000DE74(v59[3], v59[4]);
    sub_10000DE74(v59[5], v59[6]);
    if (v15)
    {
      v16 = v15(v7);
      v17 = v16 + 56;
      v18 = -*(v16 + 16);
      v19 = -1;
      while (1)
      {
        if (v18 + v19 == -1)
        {
          sub_10000DE74(v15, v14);

          v22 = 0;
          goto LABEL_20;
        }

        if (++v19 >= *(v16 + 16))
        {
          break;
        }

        v20 = v17 + 32;
        v72.x = v9;
        v72.y = v11;
        v21 = CGRectContainsPoint(*(v17 - 24), v72);
        v17 = v20;
        if (v21)
        {
          sub_10000DE74(v15, v14);

          v22 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v7 bounds];
    v73.x = v9;
    v73.y = v11;
    v22 = CGRectContainsPoint(v74, v73);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v60);
    v33 = v61;
    v32 = v62;
    v34 = v60[0];
    sub_10000DE64(v61, v62);

    sub_10000DE74(v60[1], v60[2]);
    sub_10000DE74(v33, v32);
    sub_10000DE74(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      sub_10000DE74(v33, v32);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = 1;
      if (v22)
      {
LABEL_22:
        if (v35)
        {
LABEL_23:

LABEL_37:
          return v22 & v35;
        }

LABEL_32:
        if (qword_100633CD8 != -1)
        {
          swift_once();
        }

        v50 = sub_1004D966C();
        sub_100035430(v50, qword_100671CE8);
        v51 = sub_1004D964C();
        v52 = sub_1004DDF9C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          _s3__C7CGPointVMa_0(0);
          v55 = sub_1004DD4DC();
          v57 = sub_1000343A8(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          sub_100008D24(v54);
        }

        goto LABEL_37;
      }
    }

    if (qword_100633CD8 != -1)
    {
      swift_once();
    }

    v36 = sub_1004D966C();
    sub_100035430(v36, qword_100671CE8);
    v37 = v3;
    v38 = sub_1004D964C();
    v39 = sub_1004DDF9C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      _s3__C7CGPointVMa_0(0);
      v41 = sub_1004DD4DC();
      v43 = sub_1000343A8(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      sub_10000DE74(v68, v69);
      sub_10000DE74(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      sub_100004CB8(&qword_1006381E8, &qword_10051CE90);
      v47 = sub_1004DD4DC();
      v49 = sub_1000343A8(v47, v48, &v58);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_100633CD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = sub_1004D966C();
  sub_100035430(v24, qword_100671CE8);
  v25 = sub_1004D964C();
  v26 = sub_1004DDF9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    _s3__C7CGPointVMa_0(0);
    v29 = sub_1004DD4DC();
    v31 = sub_1000343A8(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    sub_100008D24(v28);
  }

  return 0;
}

uint64_t sub_100161208(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_100161260(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_100161D74(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1001613AC(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  sub_10000DE74(v3, v4);
  sub_10000DE74(v5, v6);
  sub_10000DE74(v7, v8);

  v9 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *((swift_isaMask & *a1) + 0x80);
  v12 = sub_1004DE7CC();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void sub_100161688(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_1001616EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v30 = *((v8 & v7) + 0x58);
  v29 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_10005F7CC(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v28 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 1) = v21;
  *(v20 + 2) = *(a3 + 32);
  *(v20 + 6) = v19;
  swift_beginAccess();
  *&v4[v9] = a4;
  v22 = v14;
  sub_10000DE64(v15, v16);
  sub_10000DE64(v17, v18);
  sub_10000DE64(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  sub_1001579D4(sub_1001628B8, v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  sub_10015DC6C();

  return v25;
}

uint64_t sub_100161A84()
{

  return swift_deallocObject();
}

void sub_100161AC4(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_100161AD8(result, a2, a3);
  }
}

void sub_100161AD8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_100161AEC(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_100161B00(result, a2, a3);
  }

  return result;
}

id sub_100161B00(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_100161B14()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    sub_100161AD8(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

double sub_100161BE4(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_100159974(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_100161C78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100161CAC()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_100161D0C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_10015A230(v3);

  return result;
}

uint64_t sub_100161D74(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  sub_10000DE74(v19[1], v19[2]);
  sub_10000DE74(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  sub_10000DE74(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (qword_100633CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_1004D966C();
  sub_100035430(v6, qword_100671CE8);
  v7 = a1;
  v8 = sub_1004D964C();
  v9 = sub_1004DDF9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1004DD43C();
    v16 = v15;

    v17 = sub_1000343A8(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    sub_100008D24(v11);
  }

  return 0;
}

uint64_t sub_100161F9C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1004DE7CC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001620B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001620F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10016213C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001621A0()
{

  return swift_deallocObject();
}

void sub_1001621D8()
{
  v0 = sub_10015A848();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_100162234()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_100162370(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100035B28;

  return sub_1001601C4(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_100162514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100638358, &unk_10051CFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100162584()
{
  result = qword_100635890;
  if (!qword_100635890)
  {
    sub_1004D82AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635890);
  }

  return result;
}

uint64_t sub_1001625F4(void *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return sub_1001576C8(v3, v2, ObjectType, *(v4 + 80), v5);
}

double sub_1001626C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001626E4()
{

  return swift_deallocObject();
}

uint64_t sub_100162768()
{

  return swift_deallocObject();
}

uint64_t sub_1001627E8(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_100162850(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_100162988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  sub_100162DF0(a1, a2, v7, a4, a5);
  return v10;
}

id sub_100162A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(sub_1004DE7CC() - 8);
  __chkstk_darwin();
  v13 = &v38 - v12;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v18 = v38;

      return *&v18;
    }

    else
    {
      v23 = v11;
      if (UIAccessibilityIsReduceMotionEnabled() || (v24 = *(*a1 + 120), swift_beginAccess(), *(a1 + v24) == 2))
      {
        v25 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v26 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v26 initWithDuration:v25 timingParameters:{0.25, *&v38}];
      }

      else
      {
        v28 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v28 + 32) == 2)
        {
          [a2 bounds];
          v29 = CGRectGetWidth(v40) * 0.5;
        }

        else
        {
          v29 = *(v28 + 16);
        }

        v30 = fabs(v29);
        [a2 bounds];
        Width = CGRectGetWidth(v41);
        v32 = fabs(*v28);
        if (*(v28 + 32) == 2)
        {
          v32 = 0.0;
        }

        v33 = v30 / (Width - v32);
        v34 = *(*a1 + 112);
        swift_beginAccess();
        (*(v10 + 16))(v13, a1 + v34, v23);
        if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = 0.8;
        }

        (*(v10 + 8))(v13, v23);
        v25 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v35 initialVelocity:{v33, 0.0}];
        v36 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v36 initWithDuration:v25 timingParameters:{0.0, *&v38}];
      }

      v37 = v27;

      return v37;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = *&a4;
      }

      v15 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v20 bounce:v38];
      v21 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v21 initWithDuration:v15 timingParameters:{0.0, *&v38}];
    }

    else
    {
      v14 = v38;
      v15 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v16 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v16 initWithDuration:v15 timingParameters:{v14, *&v38}];
    }

    v22 = v17;

    return v22;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100162DF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition(255, v11, *(v9 + 88), v15);
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = sub_1004DD8DC();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = sub_1004DD8DC();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = sub_1004DE7CC();
  (*(*(v18 - 8) + 40))(v5 + v10, a2, v18);
  swift_endAccess();
  v19 = v5 + *(*v5 + 120);
  *v19 = a3;
  *(v19 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = sub_1004D82AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100163130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1001631C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100163380@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = sub_1004DE7CC();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

uint64_t sub_100163424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004DE7CC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1004DE7CC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001636A0(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata1();
  sub_1004DD98C();

  sub_1004DD93C();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata2();
  sub_1004DD98C();

  sub_1004DD93C();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + *(*v4 + 160));
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_100056D10(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  sub_10000904C(*(v6 + 56) + 32 * v8, v13);

LABEL_6:
  sub_100004CB8(&qword_100638E60, &unk_10051A920);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_100163BD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_100163C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_1004DE7CC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v17 - v9;
  strcpy(v22, "Transition(\n");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v21._countAndFlagsBits = 0x3A646920202020;
  v21._object = 0xE700000000000000;
  v23._countAndFlagsBits = sub_1004D827C();
  sub_1004DD5FC(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  sub_1004DD5FC(v24);
  sub_1004DD5FC(v21);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x6D6F726620202020;
  v25._object = 0xEA0000000000203ALL;
  sub_1004DD5FC(v25);
  v11 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v2);
  sub_1004DF02C();
  v12 = *(v7 + 8);
  v12(v10, v2);
  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  sub_1004DD5FC(v26);
  sub_1004DD5FC(v20);

  v13 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v13, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v27._object = 0xED00000A656E6F6ELL;
    v27._countAndFlagsBits = 0x203A6F7420202020;
    sub_1004DD5FC(v27);
  }

  else
  {
    v14 = v17;
    (*(v7 + 32))(v17, v6, v2);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    v28._object = 0xE800000000000000;
    sub_1004DD5FC(v28);
    sub_1004DF02C();
    v29._countAndFlagsBits = 10;
    v29._object = 0xE100000000000000;
    sub_1004DD5FC(v29);
    sub_1004DD5FC(v18);

    v12(v14, v2);
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1004DEAAC(19);

  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x80000001004EF460;
  v15 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v30._countAndFlagsBits = Gliss.Progression.description.getter(*v15, *(v15 + 8));
  sub_1004DD5FC(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  sub_1004DD5FC(v31);
  sub_1004DD5FC(v19);

  v32._countAndFlagsBits = 10528;
  v32._object = 0xE200000000000000;
  sub_1004DD5FC(v32);
  return v22[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_1004D82AC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_1004DE7CC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100161AD8(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001643EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_1004D82AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001644A0()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  sub_100004CB8(&qword_1006381D8, &qword_10051CE88);
  v3._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_1004DD5FC(v4);
  v5._countAndFlagsBits = 0x6F69746365726964;
  v5._object = 0xEA00000000003D6ELL;
  sub_1004DD5FC(v5);

  v6._countAndFlagsBits = sub_1004DDB9C();
  sub_1004DD5FC(v6);

  v7._countAndFlagsBits = 0x3D65756C6176;
  v7._object = 0xE600000000000000;
  sub_1004DD5FC(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_1004DD5FC(v8);
  return 0xD000000000000014;
}

unint64_t sub_10016471C()
{
  result = qword_100635888;
  if (!qword_100635888)
  {
    sub_1004D82AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635888);
  }

  return result;
}

unint64_t sub_100164778()
{
  result = qword_100638370;
  if (!qword_100638370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638370);
  }

  return result;
}

unint64_t sub_1001647D0()
{
  result = qword_100638378;
  if (!qword_100638378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638378);
  }

  return result;
}

__n128 sub_100164838(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100164858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001648C0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_100164938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1001649E4(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100164A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100164A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100164AB8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_100164AF4(uint64_t a1)
{
  result = sub_1004D82AC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1004DE7CC();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_100164CFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100164D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100164D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = sub_1004DD21C();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_100056B84(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_100030C58();
    v6 = sub_1004DE8BC();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_1004DF08C() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_1004DF08C() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_1004DF08C();

  return v10 & 1;
}

uint64_t sub_100165090(uint64_t a1)
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

uint64_t sub_1001650AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001650F4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100165138(uint64_t result, unsigned int a2)
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

uint64_t sub_100165168()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638400);
  sub_100035430(v0, qword_100638400);
  return sub_1004D965C();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  __chkstk_darwin();
  v7 = &v45 - v6;
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_100633CE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1004D966C();
  sub_100035430(v8, qword_100638400);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking for a staged install of Music", v11, 2u);
  }

  sub_1004D7FAC();
  v12 = [objc_opt_self() defaultManager];
  sub_1004D803C();
  v13 = sub_1004DD3FC();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = sub_1004D964C();
  if (v14)
  {
    v16 = sub_1004DDF7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found Music.app in staged_system_apps", v17, 2u);
    }

    v18 = sub_1004D80BC();
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2 || *(v18 + 16) == *(v18 + 24))
      {
LABEL_23:
        sub_100010598(v18, v19);
        v15 = sub_1004D964C();
        v20 = sub_1004DDF7C();
        if (os_log_type_enabled(v15, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v23)
    {
      if (v18 == v18 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = v18;
    v47 = v19;
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 executableURL];

    if (!v26)
    {
LABEL_39:
      v36 = sub_1004D964C();
      v37 = sub_1004DDF7C();
      if (os_log_type_enabled(v36, v37))
      {
        v29 = 2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to read data of running executable", v38, 2u);

        sub_100010598(v24, v47);
        (*(v1 + 8))(v7, v0);
        return v29;
      }

      sub_100010598(v24, v47);

      goto LABEL_27;
    }

    sub_1004D802C();

    (*(v1 + 32))(v5, v3, v0);
    v27 = sub_1004D80BC();
    v31 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }

      v32 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    else
    {
      if (!v31)
      {
        if ((v28 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v45 = v27;
        v46 = v28;
        v39 = sub_100165D90(v27, v28, v24, v47);
        v40 = sub_1004D964C();
        if (v39)
        {
          v41 = sub_1004DDF9C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);
          }
        }

        else
        {
          v41 = sub_1004DDF7C();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_100010598(v45, v46);
        sub_100010598(v24, v47);
        v44 = *(v1 + 8);
        v44(v5, v0);
        v44(v7, v0);
        return v39;
      }

      v32 = v27;
      v33 = v27 >> 32;
    }

    if (v32 != v33)
    {
      goto LABEL_42;
    }

LABEL_38:
    v34 = v27;
    v35 = v28;
    (*(v1 + 8))(v5, v0);
    sub_100010598(v34, v35);
    goto LABEL_39;
  }

  v20 = sub_1004DDF9C();
  if (!os_log_type_enabled(v15, v20))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v7, v0);
    return 2;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v15, v20, v22, v21, 2u);

  (*(v1 + 8))(v7, v0);
  return 2;
}

uint64_t sub_100165918@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1004D7CAC();
    if (v10)
    {
      v11 = sub_1004D7CDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1004D7CCC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1004D7CAC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004D7CDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004D7CCC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100165B48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100165CD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100010598(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100165918(v13, a3, a4, &v12);
  v10 = v4;
  sub_100010598(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100165CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004D7CAC();
  v11 = result;
  if (result)
  {
    result = sub_1004D7CDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1004D7CCC();
  sub_100165918(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100165D90(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100010530(a3, a4);
          return sub_100165B48(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StagedInstall(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100165FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v122 = a8;
  v117 = a7;
  v135 = a6;
  v121 = a4;
  v120 = a3;
  v119 = a2;
  v118 = a1;
  LODWORD(v12) = a10;
  v132 = sub_1004D7F8C();
  v13 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v133 = &v107 - v15;
  v16 = sub_1004D809C();
  v140 = *(v16 - 8);
  v141 = v16;
  __chkstk_darwin();
  v138 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v107 - v18;
  __chkstk_darwin();
  v136 = &v107 - v19;
  __chkstk_darwin();
  v112 = &v107 - v20;
  sub_100004CB8(&qword_100637978, &qword_10051B948);
  __chkstk_darwin();
  v22 = &v107 - v21;
  v23 = sub_1004D7C7C();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100634428 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004D7C5C();
    result = (*(v24 + 48))(v22, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      if (a5 >> 62)
      {
        v22 = sub_1004DED5C();
      }

      else
      {
        v22 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v111 = a9;
      v110 = v12;
      v109 = v23;
      v108 = v24;
      v107 = v26;
      if (v22 || *(v135 + 16))
      {
        v28 = [objc_opt_self() defaultManager];
        if (qword_100633CE8 != -1)
        {
          swift_once();
        }

        v29 = sub_100035430(v141, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)(v29);
        v137 = 0;
      }

      else
      {
        v137 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v23 = a5 & 0xFFFFFFFFFFFFFF8;
      v130 = _swiftEmptyArrayStorage;
      while (v22 != a9)
      {
        if (v12)
        {
          v30 = sub_1004DEB2C();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v30 = *(a5 + 8 * a9 + 32);
        }

        v24 = v30;
        v31 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v26 = sub_100167610(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_10003A134(0, *(v130 + 2) + 1, 1, v130);
          }

          v24 = *(v130 + 2);
          v34 = *(v130 + 3);
          if (v24 >= v34 >> 1)
          {
            v130 = sub_10003A134((v34 > 1), v24 + 1, 1, v130);
          }

          v35 = v130;
          *(v130 + 2) = v24 + 1;
          v36 = &v35[16 * v24];
          *(v36 + 4) = v26;
          *(v36 + 5) = v33;
          a9 = v31;
        }
      }

      a5 = v135 + 64;
      v39 = 1 << *(v135 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v22 = v40 & *(v135 + 64);
      a9 = (v39 + 63) >> 6;
      v128 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v126 = (v13 + 8);
      v127 = (v13 + 104);
      v139 = (v140 + 8);
      v125 = (v140 + 56);
      v116 = (v140 + 32);
      v124 = (v140 + 48);

      v41 = 0;
      *&v42 = 136446210;
      v113 = v42;
      v115 = _swiftEmptyArrayStorage;
      v43 = v141;
      v44 = &qword_100633000;
      v12 = v137;
      v129 = a9;
      v123 = a5;
      while (v22)
      {
        v13 = v41;
LABEL_35:
        v137 = v12;
        v45 = (v13 << 10) | (16 * __clz(__rbit64(v22)));
        v46 = (*(v135 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v135 + 56) + v45);
        v23 = *v49;
        v50 = v49[1];

        sub_100010530(v23, v50);
        if (v44[413] != -1)
        {
          swift_once();
        }

        sub_100035430(v43, static URL.tapToRadarDirectory);
        v143[0] = 47;
        v143[1] = 0xE100000000000000;
        v145._countAndFlagsBits = v48;
        v134 = v47;
        v145._object = v47;
        sub_1004DD5FC(v145);
        v52 = v131;
        v51 = v132;
        (*v127)(v131, v128, v132);
        sub_100030C58();
        v53 = v136;
        sub_1004D808C();
        (*v126)(v52, v51);

        v12 = v137;
        sub_1004D811C();
        v24 = v50;
        if (v12)
        {
          v54 = v141;
          if (qword_100633CF0 != -1)
          {
            swift_once();
          }

          v55 = sub_1004D966C();
          sub_100035430(v55, qword_100638418);
          swift_errorRetain();
          v56 = sub_1004D964C();
          v57 = sub_1004DDF7C();

          v44 = &qword_100633000;
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v137 = v23;
            v59 = v24;
            v60 = v58;
            v61 = swift_slowAlloc();
            v142 = v12;
            v143[0] = v61;
            *v60 = v113;
            swift_errorRetain();
            sub_100004CB8(&qword_100638980, &qword_100515B30);
            v62 = sub_1004DD4DC();
            v64 = sub_1000343A8(v62, v63, v143);

            *(v60 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v56, v57, "Tap-to-Radar Attachment file write failed with error: %{public}s", v60, 0xCu);
            sub_100008D24(v61);
            v43 = v141;

            v24 = v59;
            v23 = v137;

            v44 = &qword_100633000;

            (*v139)(v136, v43);
          }

          else
          {

            v43 = v54;
            (*v139)(v136, v54);
          }

          v12 = 0;
          v66 = 1;
          v65 = v133;
        }

        else
        {
          v65 = v133;
          v43 = v141;
          (*v116)(v133, v53, v141);
          v66 = 0;
          v44 = &qword_100633000;
        }

        v26 = v134;
        v22 &= v22 - 1;
        (*v125)(v65, v66, 1, v43);

        sub_100010598(v23, v24);
        v67 = (*v124)(v65, 1, v43);
        a5 = v123;
        if (v67 == 1)
        {
          sub_100031B48(v65);
          v41 = v13;
          a9 = v129;
        }

        else
        {
          v26 = 0;
          v68 = *v116;
          v24 = v112;
          (*v116)(v112, v65, v43);
          v68(v114, v24, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_10003A98C(0, *(v115 + 2) + 1, 1, v115);
          }

          v23 = *(v115 + 2);
          v69 = *(v115 + 3);
          if (v23 >= v69 >> 1)
          {
            v115 = sub_10003A98C((v69 > 1), v23 + 1, 1, v115);
          }

          v70 = v115;
          *(v115 + 2) = v23 + 1;
          v43 = v141;
          v68(&v70[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v23], v114, v141);
          v41 = v13;
          v12 = 0;
          a9 = v129;
        }
      }

      while (1)
      {
        v13 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v22 = *(a5 + 8 * v13);
        ++v41;
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v143[0] = v115;

      sub_1000453DC(v71);
      v72 = v143[0];
      v73 = *(v143[0] + 16);
      if (v73)
      {
        v143[0] = _swiftEmptyArrayStorage;
        sub_1000374EC(0, v73, 0);
        v74 = *(v140 + 16);
        v75 = v143[0];
        v76 = (*(v140 + 80) + 32) & ~*(v140 + 80);
        v137 = v72;
        v77 = v72 + v76;
        v140 += 16;
        v78 = *(v140 + 56);
        do
        {
          v79 = v138;
          v80 = v141;
          v74(v138, v77, v141);
          v81 = sub_1004D803C();
          v83 = v82;
          (*v139)(v79, v80);
          v143[0] = v75;
          v85 = *(v75 + 2);
          v84 = *(v75 + 3);
          if (v85 >= v84 >> 1)
          {
            sub_1000374EC((v84 > 1), v85 + 1, 1);
            v75 = v143[0];
          }

          *(v75 + 2) = v85 + 1;
          v86 = &v75[16 * v85];
          *(v86 + 4) = v81;
          *(v86 + 5) = v83;
          v77 += v78;
          --v73;
        }

        while (v73);
      }

      else
      {

        v75 = _swiftEmptyArrayStorage;
      }

      sub_100004CB8(&qword_100635078, &qword_100526F50);
      v87 = *(sub_1004D7BBC() - 8);
      v88 = *(v87 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_100512840;
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      sub_1004D7B8C();
      v91 = [objc_opt_self() mainBundle];
      v92 = [v91 bundleIdentifier];

      v93 = v122;
      if (v92)
      {
        sub_1004DD43C();
      }

      sub_1004D7B8C();

      v143[0] = v130;
      v94 = sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
      v95 = sub_1000533D4();
      sub_1004DD30C();
      sub_1004D7B8C();

      v143[0] = v75;
      v140 = v95;
      v141 = v94;
      sub_1004DD30C();
      sub_1004D7B8C();

      v96 = *(v93 + 16);
      v97 = _swiftEmptyArrayStorage;
      if (v96)
      {
        v137 = v90 + v89;
        v138 = v88;
        v139 = v90;
        v143[0] = _swiftEmptyArrayStorage;
        sub_1000374EC(0, v96, 0);
        v97 = v143[0];
        v98 = (v93 + 32);
        do
        {
          v99 = *v98++;
          v142 = qword_10051D4A0[v99];
          v100 = sub_1004DEFFC();
          v102 = v101;
          v143[0] = v97;
          v104 = v97[2];
          v103 = v97[3];
          if (v104 >= v103 >> 1)
          {
            sub_1000374EC((v103 > 1), v104 + 1, 1);
            v97 = v143[0];
          }

          v97[2] = v104 + 1;
          v105 = &v97[2 * v104];
          v105[4] = v100;
          v105[5] = v102;
          --v96;
        }

        while (v96);
      }

      v143[0] = v97;
      sub_1004DD30C();

      sub_1004D7B8C();

      v143[0] = v130;
      sub_1000452E8(v75);

      sub_1004D7B8C();

      sub_1004D7B8C();

      v106 = v107;
      sub_1004D7BDC();
      sub_1004D7BFC();
      return (*(v108 + 8))(v106, v109);
    }
  }

  else
  {
    v37 = v141;
    v38 = *(v140 + 56);

    return v38(a9, 1, 1, v37);
  }

  return result;
}

uint64_t sub_100167184()
{
  v0 = sub_1004D7F8C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = sub_1004D809C();
  sub_100035718(v6, static URL.tapToRadarDirectory);
  sub_100035430(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1004D806C();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D809C();

  return sub_100035430(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D809C();
  v3 = sub_100035430(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100167450()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638418);
  sub_100035430(v0, qword_100638418);
  return sub_1004D965C();
}

Swift::Int sub_1001674F8()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_10051D4A0[v1]);
  return sub_1004DF2BC();
}

Swift::Int sub_100167580()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(qword_10051D4A0[v1]);
  return sub_1004DF2BC();
}

uint64_t sub_1001675CC@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_100167610(uint64_t a1, UIImage *a2)
{
  v4 = sub_1004D7F8C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D809C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633CE8 != -1)
  {
    swift_once();
  }

  sub_100035430(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1004DEAAC(24);

  v20 = 0xD000000000000012;
  v21 = 0x80000001004EF600;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_1004DD5FC(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_100030C58();
  sub_1004D808C();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1004D810C();
    v16 = v15;

    sub_1004D811C();
    sub_100010598(v14, v16);
  }

  v17 = sub_1004D803C();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_100167B00()
{
  result = qword_100638430;
  if (!qword_100638430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638430);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004DDA4C();
  *(v3 + 40) = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_100167C14, v5, v4);
}

uint64_t sub_100167C14(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_1004DDA3C();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_100167D30;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004EA4A0, sub_1000744E4, v6, &type metadata for Bool);
}

uint64_t sub_100167D30()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001720B4, v3, v2);
}

void sub_100167E90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100167EFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635968, &qword_100516C70);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10000904C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100006F5C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006F5C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006F5C(v31, v32);
    v16 = sub_1004DEA2C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100006F5C(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1001681C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635968, &qword_100516C70);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100006F5C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100006F5C(v29, v30);
    v14 = sub_1004DEA2C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
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
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_100006F5C(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

__int128 *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    sub_1004DD37C();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_100633A80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    sub_1004DD37C();
    (*v8)(v5, v7, v2);
    if (qword_100633A80 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004DD37C();
  (*v8)(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = qword_100671958;
  sub_1004D838C();
  v10 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int sub_100168C24()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(~v1);
  return sub_1004DF2BC();
}

Swift::Int sub_100168C9C()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(~v1);
  return sub_1004DF2BC();
}

uint64_t sub_100168CE0@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_100004CB8(&qword_100638458, &qword_10051D4C8);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

BOOL CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_100168EBC;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_100168EBC;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_100168EBC()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_100168F90()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  sub_1004DD37C();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v6 = qword_100671958;
  sub_1004D838C();
  v7 = sub_1004DD4AC();
  v9 = v8;
  result = (*(v1 + 8))(v5, v0);
  *&static CloudLibrary.EnablementContext.action = v7;
  *(&static CloudLibrary.EnablementContext.action + 1) = v9;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_1001691DC()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_100169278();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

double static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100169278()
{
  v1 = v0;
  v2 = sub_100004CB8(&unk_100638478, &qword_10051D528);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v31[-v4];
  v33 = 2;
  v32[0] = 0xD000000000000014;
  v32[1] = 0x80000001004E9E20;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_100030C58();
  UserDefault.init(wrappedValue:defaults:key:)(&v33, v6, v32, &type metadata for String, &type metadata for Bool, v7, &v34);
  v8 = v35;
  v9 = v36;
  *(v1 + 16) = v34;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v34 = 0x80000000;

  sub_1004D9B2C();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_100004CB8(&unk_1006372F0, &unk_10051B160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  if (qword_100633BC0 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.length = *(v1 + 56);
  v14 = CFRange.init(_:)(v13);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v14;
  v15 = qword_100633BE0;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.length = *(v1 + 56);
  v19 = CFRange.init(_:)(v18);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v19;
  v20 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  v21 = CFRange.init(_:)(MPCloudControllerCloudLibraryFailureDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v23 = v17;

  v24 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_100171E2C, v22);

  swift_beginAccess();
  sub_1004DD84C();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  v25 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedCloudController];
  v29 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, v28, 1, 1, sub_100171E34, v29);

  return v1;
}

void sub_10016977C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_100073E60(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = sub_1004DF08C();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        sub_1004D9B7C();
        sub_10016B164(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100073E60(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = sub_100171E3C;
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = sub_100022450;
        *(&v9 + 1) = &unk_1005E0B50;
        v6 = _Block_copy(&v8);

        [v5 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v6];

        _Block_release(v6);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_100169AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DBEBC();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DBEFC();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v12 = sub_1004DE14C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_100171E8C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E0BA0;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_100042B08(&qword_10063ACA0, &unk_100638950, &qword_10051B260, &protocol conformance descriptor for [A]);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_100169DF0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v3 = a2;
  if (_s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v3 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B7C();
    sub_10016B164(v4);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_10016B164(v4);
}

double sub_100169F90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10016B858();
  }

  return result;
}

void *sub_100169FE8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_100004CB8(&qword_100638458, &qword_10051D4C8);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_1004D9B7C();
    return sub_10016B164(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_100004CB8(&qword_100638458, &qword_10051D4C8);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

void *CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_100004CB8(&qword_100638458, &qword_10051D4C8);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_100169FE8();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_100004CB8(&qword_100638458, &qword_10051D4C8);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_10016A2C0;
}

void sub_10016A2C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_100169FE8();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10003AB0C(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10003AB0C((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_1001705B0;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_1004D9B7C();
  sub_10016B164(v11);
  sub_100004CB8(&qword_100638468, &qword_10051D518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_10005F6BC(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100638470, &qword_10051D520);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_1001681C4(v15);

    isa = sub_1004DD1FC().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_100170590;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100167E90;
    v21[3] = &unk_1005E0408;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10016A6DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DBEBC();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DBEFC();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_100633D08 != -1)
    {
      swift_once();
    }

    v18 = sub_1004D966C();
    sub_100035430(v18, qword_100638440);
    v10 = sub_1004D964C();
    v19 = sub_1004DDF9C();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100633D08 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D966C();
  sub_100035430(v9, qword_100638440);
  swift_errorRetain();
  v10 = sub_1004D964C();
  v11 = sub_1004DDF7C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v15 = sub_1004DD4DC();
    v17 = sub_1000343A8(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    sub_100008D24(v14);
    v3 = v27;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
    v23 = sub_1004DE14C();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = sub_100171E24;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005E0B28;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_1004DBEDC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_100638950, &qword_10051B260);
    sub_100042B08(&qword_10063ACA0, &unk_100638950, &qword_10051B260, &protocol conformance descriptor for [A]);
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

void sub_10016AC28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *(v7 - 8);
      v9 = a2 == 0;

      v8(&v9);

      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_1001705DC(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100170614(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_1001705DC(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10003AB7C(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_10003AB7C((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_100060260(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_100170614(v18);
}

void CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      sub_1001705DC(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100170614(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_100055120(v6, v9);
          sub_100170614(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

void sub_10016B018(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_10016B098(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  return sub_10016B164(v3);
}

uint64_t sub_10016B164(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_100633D08 != -1)
    {
      swift_once();
    }

    v3 = sub_1004D966C();
    sub_100035430(v3, qword_100638440);

    v4 = sub_1004D964C();
    v5 = sub_1004DDF9C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v8 = sub_1004DD4DC();
      v10 = sub_1000343A8(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_100008D24(v7);
    }

    return sub_10016C524();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_10016B3E8(void *a1)
{
  swift_beginAccess();
  sub_100004CB8(&unk_100638478, &qword_10051D528);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_10016B460(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100004CB8(&unk_100638960, &unk_10051DBA0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100004CB8(&unk_100638478, &qword_10051D528);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_100004CB8(&unk_100638478, &qword_10051D528);
  sub_1004D9B3C();
  return swift_endAccess();
}

float sub_10016B658(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B7C();
    sub_10016B164(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*sub_10016B7F4(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_10016B828;
}

float sub_10016B828(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_10016B658(v4);
}

void sub_10016B858()
{
  v1 = sub_1004DBEBC();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004DBEFC();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DBEAC();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = sub_1004DBF2C();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DE1CC();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DBECC();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 sharedCloudController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 isUpdateInProgress];

  v19 = [v15 sharedCloudController];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 isInitialImport];

  v22 = v18 & v21;
  v23 = *(v0 + 88);
  if (v22 == 1)
  {
    if (!v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_10016B658(v24);
      sub_100006F10(0, &unk_100638920, OS_dispatch_source_ptr);
      sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = sub_1004DE18C();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100171CE4(&unk_100638930, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      sub_100004CB8(&qword_10063AC80, &unk_10051DB90);
      sub_100042B08(&unk_100638940, &qword_10063AC80, &unk_10051DB90, &protocol conformance descriptor for [A]);
      sub_1004DE92C();
      v26 = sub_1004DE1DC();

      (*(v43 + 8))(v10, v8);
      ObjectType = swift_getObjectType();
      v28 = v44;
      sub_1004DBF1C();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_1004DE36C();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_100171D2C;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      aBlock[3] = &unk_1005E08F8;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_10021CD50(ObjectType);
      v39 = v53;
      sub_10021CD54();
      sub_1004DE1EC();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1004DE1FC();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1004DE20C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      sub_1004DE1FC();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_10016B658(v41);
  }
}

void sub_10016C028(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_100171D34;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10016C4D0;
    v5[3] = &unk_1005E0920;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10016C11C(uint64_t a1, float a2)
{
  v3 = sub_1004DBEBC();
  v15 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DBEFC();
  v6 = *(v14 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v9 = sub_1004DE14C();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_100171D74;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005E0970;
  v12 = _Block_copy(aBlock);

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100171CE4(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950, &qword_10051B260);
  sub_100042B08(&qword_10063ACA0, &unk_100638950, &qword_10051B260, &protocol conformance descriptor for [A]);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_10016C43C(uint64_t a1, float a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_10016B7F4(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a2;
    }

    (v4)(v5, 0);
  }
}

double sub_10016C4D0(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

uint64_t sub_10016C524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v1 = v10[0];
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_1001705DC(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_100170614(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_100004CB8(&unk_100638478, &qword_10051D528);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10016C740@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v8 = qword_100671958;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_1004DD37C();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v9 = qword_100671958;
  sub_1004D838C();
  v10 = sub_1004DD4AC();
  (*(v3 + 8))(v7, v2);
  return v10;
}

BOOL static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  return sub_1004DE5FC() & 1;
}

BOOL sub_10016CC90(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100006F10(0, &qword_1006381E0, NSObject_ptr);
  return sub_1004DE5FC() & 1;
}

void sub_10016CD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_100633D00 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

double sub_10016CD8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = sub_100004CB8(&qword_100635DF0, &qword_100517B30);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v6, a3, a4, sub_1001720E8, v14);

  return result;
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_100073E60(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_100073E60(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v9, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004DDA4C();
  *(v3 + 40) = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_10016D144, v5, v4);
}

uint64_t sub_10016D144(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_1004DDA3C();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_10016D260;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD000000000000045, 0x80000001004EFBF0, sub_100171114, v6, &type metadata for Bool);
}

uint64_t sub_10016D260()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10016D3C0, v3, v2);
}

uint64_t sub_10016D3C0()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016D424(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_100004CB8(&qword_100635DF0, &qword_100517B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *(v6 + 16);
  v14(&v21[-v12], a1, v5, v11);
  (v14)(v10, v13, v5);
  (v14)(v8, v13, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v13, v5);
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v41[4] = v37;
  v41[5] = v38;
  v41[6] = v39;
  v41[7] = v40;
  v41[0] = v33;
  v41[1] = v34;
  v41[2] = v35;
  v41[3] = v36;
  sub_100073E60(v41);
  if (BYTE2(v41[0]))
  {
    v17 = *(v6 + 8);
    v17(v10, v5);
    LOBYTE(v33) = 1;
    sub_1004DD9DC();

    return (v17)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    sub_100073E60(&v33);
    if (BYTE9(v33))
    {
      v20 = *(v6 + 8);
      v20(v10, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v22, v23, v24, sub_100171D84, v16);

      return (v20)(v8, v5);
    }

    else
    {
      LOBYTE(v25) = 0;
      sub_1004DD9DC();

      v19 = *(v6 + 8);
      v19(v8, v5);
      return (v19)(v10, v5);
    }
  }
}

char *sub_10016D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_100638698) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_10000DE64(a5, a6);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_1004D9B2C();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v17 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_10000DE74(v16, v17);
  *(v6 + qword_100638690) = v13;
  sub_100171CE4(&qword_100638970, type metadata accessor for EnableCloudLibraryView.Model, &unk_10051DA24);
  swift_retain_n();
  v32 = sub_1004DA13C();
  v33 = v18;
  v19 = sub_1004DA9BC();
  v20 = *&v19[qword_100638690];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v23 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v24 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v22 = sub_100171DDC;
  v22[1] = v21;
  v25 = v19;

  sub_10000DE74(v23, v24);

  sub_10016DE2C();
  v26 = [v25 presentingViewController];
  if (v26)
  {
    v27 = v26;
    sub_100004CB8(&qword_100638978, &unk_10051DBB0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100511DA0;
    *(v28 + 32) = sub_1004D993C();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004DE05C();
    swift_unknownObjectRelease();
  }

  v29 = [v25 presentationController];

  if (v29)
  {
    sub_100004CB8(&qword_100638978, &unk_10051DBB0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100511DA0;
    *(v30 + 32) = sub_1004D993C();
    *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004DE37C();

    sub_10000DE74(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_10000DE74(a5, a6);
  }

  return v25;
}

void sub_10016DB10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10016DB74(uint64_t a1)
{
  *(a1 + qword_100638698) = 0;
  sub_1004DECCC();
  __break(1u);
}

void sub_10016DBDC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_10016DCA4();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}

objc_class *sub_10016DCA4()
{
  v1 = qword_100638698;
  v2 = *(v0 + qword_100638698);
  if (v2)
  {
    v3 = *(v0 + qword_100638698);
  }

  else
  {
    sub_100006F10(0, &unk_100638910, UIBarButtonItem_ptr);
    sub_100006F10(0, &qword_1006350D0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = sub_1004DE62C();
    v9.is_nil = 0;
    v5.super.super.isa = sub_1004DDFDC(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10016DDC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10016DE2C()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B7C();
  }
}

void sub_10016DF34(void *a1)
{
  v1 = a1;
  sub_10016DE2C();
}

void sub_10016DF7C()
{

  v1 = *(v0 + qword_100638698);
}

id sub_10016DFBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016DFF4(uint64_t a1)
{

  v2 = *(a1 + qword_100638698);
}

uint64_t sub_10016E040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

uint64_t sub_10016E114()
{

  sub_10000DE74(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = sub_100004CB8(&qword_100638908, &qword_10051DB88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss), *(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_10016E1E8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t sub_10016E228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100004CB8(&qword_100638828, &qword_10051DA60);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = sub_100004CB8(&qword_100638830, &qword_10051DA68) - 8;
  __chkstk_darwin();
  v10 = &v33 - v9;
  *v7 = sub_1004DAEFC();
  v11 = sub_100004CB8(&qword_100638838, &qword_10051DA70);
  sub_10016E4C0(a1, a2, &v7[*(v11 + 44)]);
  v12 = sub_1004DAF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100047F38(v7, v10, &qword_100638828, &qword_10051DA60);
  v21 = &v10[*(v8 + 44)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = sub_1004DAF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100047F38(v10, a3, &qword_100638830, &qword_10051DA68);
  result = sub_100004CB8(&qword_100638840, &qword_10051DAC0);
  v32 = a3 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_10016E4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  sub_100004CB8(&qword_100638848, &qword_10051DAC8);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  sub_100004CB8(&qword_100638850, &qword_10051DAD0);
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  sub_100004CB8(&qword_100638858, &qword_10051DAD8);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  *v16 = sub_1004DA90C();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100004CB8(&qword_100638860, &qword_10051DAE0);
  sub_10016E85C(a1, a2, &v16[*(v17 + 44)]);
  *v12 = sub_1004DA90C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = sub_100004CB8(&qword_100638868, &qword_10051DAE8);
  sub_10016EE1C(a1, a2, &v12[*(v18 + 44)]);
  *v8 = sub_1004DA90C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = sub_100004CB8(&qword_100638870, &qword_10051DAF0);
  sub_10016F50C(a1, a2, &v8[*(v19 + 44)]);
  v20 = v14;
  v25 = v14;
  sub_1000108DC(v16, v14, &qword_100638858, &qword_10051DAD8);
  sub_1000108DC(v12, v10, &qword_100638850, &qword_10051DAD0);
  v21 = v6;
  sub_1000108DC(v8, v6, &qword_100638848, &qword_10051DAC8);
  v22 = v26;
  sub_1000108DC(v20, v26, &qword_100638858, &qword_10051DAD8);
  v23 = sub_100004CB8(&qword_100638878, &qword_10051DAF8);
  sub_1000108DC(v10, v22 + *(v23 + 48), &qword_100638850, &qword_10051DAD0);
  sub_1000108DC(v21, v22 + *(v23 + 64), &qword_100638848, &qword_10051DAC8);
  sub_10001074C(v8, &qword_100638848, &qword_10051DAC8);
  sub_10001074C(v12, &qword_100638850, &qword_10051DAD0);
  sub_10001074C(v16, &qword_100638858, &qword_10051DAD8);
  sub_10001074C(v21, &qword_100638848, &qword_10051DAC8);
  sub_10001074C(v10, &qword_100638850, &qword_10051DAD0);
  return sub_10001074C(v25, &qword_100638858, &qword_10051DAD8);
}

uint64_t sub_10016E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004DAD8C();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100638880, &qword_10051DB00);
  v34 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v33 = sub_100004CB8(&qword_100638888, &qword_10051DB08);
  v38 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v30 - v14;
  v40 = sub_1004DA90C();
  v42 = 0;
  sub_10016FD34(&v52);
  v45 = *&v53[16];
  v46 = *&v53[32];
  v47[0] = *&v53[48];
  *(v47 + 9) = *&v53[57];
  v43 = v52;
  v44 = *v53;
  *(v49 + 9) = *&v53[57];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  v49[0] = *&v53[48];
  v48[0] = v52;
  v48[1] = *v53;
  sub_1000108DC(&v43, &v50, &qword_1006388F0, &qword_10051DB40);
  sub_10001074C(v48, &qword_1006388F0, &qword_10051DB40);
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47[0];
  v41[5] = *(v47 + 9);
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  v39 = v42;
  v31 = sub_1004DB95C();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_100004CB8(&qword_1006388B0, &qword_10051DB28);
  sub_100171B08();
  sub_1004DBA3C();
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880, &qword_10051DB00, &protocol conformance descriptor for Button<A>);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v16 = v37;
  v17 = v35;
  sub_1004DB3DC();
  (*(v36 + 8))(v9, v17);
  (*(v34 + 8))(v12, v10);
  v18 = *(v38 + 16);
  v19 = v32;
  v20 = v33;
  v18(v32, v16, v33);
  *&v50 = v40;
  *(&v50 + 1) = 0x4020000000000000;
  v51[0] = v39;
  *&v51[1] = v41[0];
  *&v51[17] = v41[1];
  *&v51[33] = v41[2];
  *&v51[81] = v41[5];
  *&v51[65] = v41[4];
  *&v51[49] = v41[3];
  v21 = v50;
  v22 = *v51;
  v23 = *&v51[32];
  *(a3 + 32) = *&v51[16];
  *(a3 + 48) = v23;
  *a3 = v21;
  *(a3 + 16) = v22;
  v24 = *&v51[48];
  v25 = *&v51[64];
  v26 = *&v51[80];
  *(a3 + 112) = v51[96];
  *(a3 + 80) = v25;
  *(a3 + 96) = v26;
  *(a3 + 64) = v24;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v31;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v27 = sub_100004CB8(&qword_100638900, &qword_10051DB80);
  v18((a3 + *(v27 + 96)), v19, v20);
  sub_1000108DC(&v50, &v52, &qword_1006388A0, &qword_10051DB20);
  v28 = *(v38 + 8);

  v28(v37, v20);
  v28(v19, v20);

  *&v53[33] = v41[2];
  *&v53[49] = v41[3];
  *&v53[65] = v41[4];
  v54 = v41[5];
  *&v53[1] = v41[0];
  *&v52 = v40;
  *(&v52 + 1) = 0x4020000000000000;
  v53[0] = v39;
  *&v53[17] = v41[1];
  return sub_10001074C(&v52, &qword_1006388A0, &qword_10051DB20);
}

uint64_t sub_10016EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = sub_1004DAD8C();
  v51 = *(v49 - 8);
  __chkstk_darwin();
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100004CB8(&qword_100638880, &qword_10051DB00);
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v8 = v40 - v7;
  v9 = sub_100004CB8(&qword_100638888, &qword_10051DB08);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin();
  v42 = v40 - v10;
  v48 = sub_100004CB8(&qword_100638890, &qword_10051DB10) - 8;
  __chkstk_darwin();
  v50 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v40 - v12;
  __chkstk_darwin();
  v45 = v40 - v14;
  v47 = sub_1004DA90C();
  v59 = 0;
  sub_10016FD34(&v56);
  v62 = *&v57[2];
  v63 = *&v57[4];
  v64[0] = *&v57[6];
  *(v64 + 9) = *(&v57[7] + 1);
  v60 = v56;
  v61 = *v57;
  *(v66 + 9) = *(&v57[7] + 1);
  v65[2] = *&v57[2];
  v65[3] = *&v57[4];
  v66[0] = *&v57[6];
  v65[0] = v56;
  v65[1] = *v57;
  sub_1000108DC(&v60, &v54, &qword_1006388F0, &qword_10051DB40);
  sub_10001074C(v65, &qword_1006388F0, &qword_10051DB40);
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  *(&v58[4] + 7) = v64[0];
  v58[5] = *(v64 + 9);
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  v41 = v59;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v40[1] = a2;

  sub_100004CB8(&qword_1006388B0, &qword_10051DB28);
  sub_100171B08();
  sub_1004DBA3C();
  v16 = v43;
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880, &qword_10051DB00, &protocol conformance descriptor for Button<A>);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v17 = v42;
  v18 = v44;
  v19 = v49;
  sub_1004DB3DC();
  (*(v51 + 8))(v16, v19);
  (*(v46 + 8))(v8, v18);
  LOBYTE(v8) = sub_1004DAF3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v52 + 32))(v13, v17, v53);
  v28 = &v13[*(v48 + 44)];
  *v28 = v8;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = v45;
  sub_100047F38(v13, v45, &qword_100638890, &qword_10051DB10);
  v30 = v50;
  sub_1000108DC(v29, v50, &qword_100638890, &qword_10051DB10);
  v31 = v47;
  *&v54 = v47;
  *(&v54 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v41;
  v55[0] = v41;
  *&v55[1] = v58[0];
  *&v55[17] = v58[1];
  *&v55[33] = v58[2];
  *&v55[81] = v58[5];
  *&v55[65] = v58[4];
  *&v55[49] = v58[3];
  v32 = v54;
  v33 = *v55;
  v34 = *&v55[32];
  *(a3 + 32) = *&v55[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  v35 = *&v55[48];
  v36 = *&v55[64];
  v37 = *&v55[80];
  *(a3 + 112) = v55[96];
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 64) = v35;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v38 = sub_100004CB8(&qword_1006388F8, &qword_10051DB78);
  sub_1000108DC(v30, a3 + *(v38 + 64), &qword_100638890, &qword_10051DB10);
  sub_1000108DC(&v54, &v56, &qword_1006388A0, &qword_10051DB20);
  sub_10001074C(v29, &qword_100638890, &qword_10051DB10);
  sub_10001074C(v30, &qword_100638890, &qword_10051DB10);
  *(&v57[4] + 1) = v58[2];
  *(&v57[6] + 1) = v58[3];
  *(&v57[8] + 1) = v58[4];
  *(&v57[10] + 1) = v58[5];
  *(v57 + 1) = v58[0];
  *&v56 = v31;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(v57[0]) = a2;
  *(&v57[2] + 1) = v58[1];
  return sub_10001074C(&v56, &qword_1006388A0, &qword_10051DB20);
}

uint64_t sub_10016F50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a3;
  v5 = sub_1004DAD8C();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100004CB8(&qword_100638880, &qword_10051DB00);
  v52 = *(v50 - 8);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v58 = sub_100004CB8(&qword_100638888, &qword_10051DB08);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v46 = &v44 - v11;
  v53 = sub_100004CB8(&qword_100638890, &qword_10051DB10) - 8;
  __chkstk_darwin();
  v57 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  __chkstk_darwin();
  v51 = &v44 - v15;
  v16 = sub_100004CB8(&qword_100638898, &qword_10051DB18);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin();
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v44 - v18;
  sub_1004DAEFC();
  v60 = a1;
  v61 = a2;
  sub_100004CB8(&qword_1006388A0, &qword_10051DB20);
  sub_100042B08(&qword_1006388A8, &qword_1006388A0, &qword_10051DB20, &protocol conformance descriptor for VStack<A>);
  sub_1004D9D0C();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_100004CB8(&qword_1006388B0, &qword_10051DB28);
  sub_100171B08();
  sub_1004DBA3C();
  sub_1004DAD7C();
  sub_100042B08(&qword_1006388D0, &qword_100638880, &qword_10051DB00, &protocol conformance descriptor for Button<A>);
  sub_100171CE4(&qword_1006388D8, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v20 = v46;
  v21 = v50;
  v22 = v54;
  sub_1004DB3DC();
  (*(v55 + 8))(v8, v22);
  (*(v52 + 8))(v10, v21);
  LOBYTE(v8) = sub_1004DAF3C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_1004D9C8C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v56 + 32))(v14, v20, v58);
  v31 = &v14[*(v53 + 44)];
  *v31 = v8;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v51;
  sub_100047F38(v14, v51, &qword_100638890, &qword_10051DB10);
  v34 = v48;
  v33 = v49;
  v35 = *(v48 + 16);
  v36 = v47;
  v37 = v45;
  v35(v47, v45, v49);
  v38 = v57;
  sub_1000108DC(v32, v57, &qword_100638890, &qword_10051DB10);
  v39 = v59;
  v35(v59, v36, v33);
  v40 = sub_100004CB8(&unk_1006388E0, &qword_10051DB38);
  v41 = &v39[*(v40 + 48)];
  *v41 = 0;
  v41[8] = 1;
  sub_1000108DC(v38, &v39[*(v40 + 64)], &qword_100638890, &qword_10051DB10);
  sub_10001074C(v32, &qword_100638890, &qword_10051DB10);
  v42 = *(v34 + 8);
  v42(v37, v33);
  sub_10001074C(v38, &qword_100638890, &qword_10051DB10);
  return (v42)(v36, v33);
}

double sub_10016FBE4@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_1004DA90C();
  v17 = 0;
  sub_10016FD34(&v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  sub_1000108DC(&v18, &v10, &qword_1006388F0, &qword_10051DB40);
  sub_10001074C(v23, &qword_1006388F0, &qword_10051DB40);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22[0];
  *&v16[80] = *(v22 + 9);
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a3 + 49) = *&v16[32];
  *(a3 + 65) = v5;
  v6 = *&v16[80];
  *(a3 + 81) = *&v16[64];
  *(a3 + 97) = v6;
  result = *&v16[16];
  v8 = *v16;
  *(a3 + 33) = *&v16[16];
  v9 = v17;
  *a3 = v4;
  *(a3 + 8) = 0x4020000000000000;
  *(a3 + 16) = v9;
  *(a3 + 17) = v8;
  return result;
}

uint64_t sub_10016FD34@<X0>(uint64_t a2@<X8>)
{
  sub_100030C58();

  v3 = sub_1004DB34C();
  v5 = v4;
  v7 = v6;
  sub_1004DAFEC();
  v8 = sub_1004DB2AC();
  v10 = v9;
  v12 = v11;

  sub_100051E10(v3, v5, v7 & 1);

  sub_1004DB03C();
  v13 = sub_1004DB23C();
  v37 = v14;
  v38 = v13;
  v36 = v15;
  v39 = v16;
  sub_100051E10(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();

  v17 = sub_1004DB34C();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_1004DB0AC();
  v21 = sub_1004DB2AC();
  v23 = v22;
  v25 = v24;

  sub_100051E10(v17, v19, v10 & 1);

  sub_1004DABEC();
  v26 = sub_1004DB24C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100051E10(v21, v23, v25 & 1);

  v33 = swift_getKeyPath();
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = v30 & 1;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  *(a2 + 88) = 1;
  sub_100051E00(v38, v37, v36 & 1);

  sub_100051E00(v26, v28, v30 & 1);

  sub_100051E10(v26, v28, v30 & 1);

  sub_100051E10(v38, v37, v36 & 1);
}

void sub_100170010(uint64_t a1, uint64_t a2)
{
  if (qword_100633D00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss;
  v4 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    sub_10000DE74(v4, v5);
  }
}

__n128 sub_1001700BC@<Q0>(uint64_t a1@<X8>)
{
  if (qword_100633CF8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_100030C58();

  v2 = sub_1004DB34C();
  v4 = v3;
  v6 = v5;
  v7 = sub_1004DB29C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100051E10(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_1004DAF8C();
  sub_1004D9C8C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1004DBD1C();
  sub_1004DA45C();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_1001702C0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100638440);
  sub_100035430(v0, qword_100638440);
  return sub_1004D965C();
}

void sub_100170340(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1001703C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100170558(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_100170598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  sub_1004D83FC();
  __chkstk_darwin();
  v77[1] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DD3EC();
  v77[0] = *(v10 - 8);
  __chkstk_darwin();
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v77 - v13;
  v15 = CloudLibrary.EnablementContext.title.getter(a1);
  v17 = v16;
  v18 = CloudLibrary.EnablementContext.message.getter(a1);
  v20 = v19;
  v78 = a3;
  if (a3)
  {
    v21 = sub_1004DD3FC();

    v22 = sub_1004DD3FC();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    sub_1004DD37C();
    v24 = v77[0];
    (*(v77[0] + 16))(v12, v14, v10);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v25 = qword_100671958;
    sub_1004D838C();
    sub_1004DD4AC();
    (*(v24 + 8))(v14, v10);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v27 = a5;
    sub_10000DE64(a4, a5);
    v28 = sub_1004DD3FC();

    v84 = sub_100171D8C;
    v85 = v26;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_100018634;
    v83 = &unk_1005E09E8;
    v29 = _Block_copy(&aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:1 handler:v29];
    _Block_release(v29);

    [v23 addAction:v31];
    if (qword_100633CF8 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = v27;
    sub_10000DE64(a4, v27);
    v33 = sub_1004DD3FC();
    v84 = sub_100171DC0;
    v85 = v32;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_100018634;
    v83 = &unk_1005E0A38;
    v34 = _Block_copy(&aBlock);

    v35 = [v30 actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    [v23 addAction:v35];
    v36 = v78;
    v37 = v79;
    if (v78 != 1)
    {
      v38 = v78;
      [v23 setPreferredStyle:0];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = [v23 popoverPresentationController];
      if (v47)
      {
        v48 = v47;
        [v47 setSourceView:v38];
        [v48 setSourceRect:{v40, v42, v44, v46}];
        sub_100171DCC(v36);
        [v48 setPermittedArrowDirections:15];
      }

      sub_100171DCC(v36);
    }

    v49 = *(v37 + 80);
    if (v49)
    {
      v50 = *(v37 + 88);
      v51 = qword_100633E08;

      if (v51 != -1)
      {
        swift_once();
      }

      v52 = sub_1004D966C();
      sub_100035430(v52, qword_10063B820);
      v53 = sub_1004D964C();
      v54 = sub_1004DDF9C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Deferring presentation…", v55, 2u);
      }

      v56 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100257E18;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100258DB8;
      v83 = &unk_1005E0A60;
      v57 = _Block_copy(&aBlock);
      v58 = [v56 initWithTimeout:v57 interruptionHandler:10.0];
      _Block_release(v57);

      sub_1000699E8(v37, &aBlock);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      sub_10006A8BC(&aBlock, v59 + 24);
      *(v59 + 120) = v23;
      *(v59 + 128) = 1;
      *(v59 + 129) = v36 != 1;
      *(v59 + 136) = 0;
      *(v59 + 144) = 0;
      v60 = v58;
      v61 = v23;
      v49(v37, v61, sub_10007DB94, v59);
      sub_10000DE74(v49, v50);

LABEL_22:

      return;
    }

    sub_1002562F8(v23, 1, (v36 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_10000DE64(a4, a5);
    v62 = sub_10016D7D8(v15, v17, v18, v20, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v62];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v63 = v79;
    v64 = *(v79 + 80);
    if (v64)
    {
      v65 = *(v79 + 88);
      v66 = qword_100633E08;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1004D966C();
      sub_100035430(v67, qword_10063B820);
      v68 = sub_1004D964C();
      v69 = sub_1004DDF9C();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_100257E18;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100258DB8;
      v83 = &unk_1005E0AB0;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_1000699E8(v63, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_10006A8BC(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v60 = v73;
      v75 = v78;
      v64(v63, v75, sub_10007DCE4, v74);
      sub_10000DE74(v64, v65);

      goto LABEL_22;
    }

    sub_1002562F8(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_100171124()
{
  result = qword_100638488;
  if (!qword_100638488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638488);
  }

  return result;
}

unint64_t sub_10017117C()
{
  result = qword_100638490;
  if (!qword_100638490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.FailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.FailureType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_10017149C(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_1001714CC(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.EnablementContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.EnablementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100171688(uint64_t a1)
{
  sub_100171758();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100171758()
{
  if (!qword_1006384D0)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006384D0);
    }
  }
}

uint64_t sub_1001717A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001717C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100171814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_100171928(uint64_t a1)
{
  sub_1001719D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001719D0(uint64_t a1)
{
  if (!qword_100638740)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v1 = sub_1004D9B9C();
    if (!v2)
    {
      atomic_store(v1, &qword_100638740);
    }
  }
}

uint64_t sub_100171A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100171A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100171B08()
{
  result = qword_1006388B8;
  if (!qword_1006388B8)
  {
    sub_100008DE4(&qword_1006388B0, &qword_10051DB28);
    sub_100171B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006388B8);
  }

  return result;
}

unint64_t sub_100171B94()
{
  result = qword_1006388C0;
  if (!qword_1006388C0)
  {
    sub_100008DE4(&qword_1006388C8, &qword_10051DB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006388C0);
  }

  return result;
}

uint64_t sub_100171C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA61C();
  *a1 = result;
  return result;
}

uint64_t sub_100171C6C()
{

  return swift_deallocObject();
}

uint64_t sub_100171CA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100171CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100171D3C()
{

  return swift_deallocObject();
}

uint64_t sub_100171D8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_100171DCC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100171DE4()
{

  return swift_deallocObject();
}

uint64_t sub_100171E44()
{

  return swift_deallocObject();
}

uint64_t sub_100171E98()
{
  v1 = sub_100004CB8(&qword_100635DF0, &qword_100517B30);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_100171F30()
{
  result = qword_100638988;
  if (!qword_100638988)
  {
    sub_100008DE4(&qword_100638840, &qword_10051DAC0);
    sub_100171FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638988);
  }

  return result;
}

unint64_t sub_100171FBC()
{
  result = qword_100638990;
  if (!qword_100638990)
  {
    sub_100008DE4(&qword_100638830, &qword_10051DA68);
    sub_100042B08(&qword_100638998, &qword_100638828, &qword_10051DA60, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100638990);
  }

  return result;
}

uint64_t sub_100172118(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v3 + 2096) = swift_task_alloc();
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v3 + 2104) = swift_task_alloc();
  v4 = sub_1004D966C();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_1001722AC, 0, 0);
}

uint64_t sub_1001722AC()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = sub_100035430(v76, qword_1006350F8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_1000108DC(v0 + 1784, v0 + 1920, &qword_1006359A8, &qword_10051E160);
        v82 = sub_1004D964C();
        v83 = sub_1004DDF7C();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_10001074C(v0 + 1784, &qword_1006359A8, &qword_10051E160);
          v93 = sub_1000343A8(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          sub_100008D24(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_10001074C(v0 + 1784, &qword_1006359A8, &qword_10051E160);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_100042AA4();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x80000001004EA0B0;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = sub_100035430(v11, qword_1006350F8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_1000108DC(v0 + 152, v0 + 288, &qword_1006359A8, &qword_10051E160);
    v18 = sub_1004D964C();
    v19 = sub_1004DDF9C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_10001074C(v0 + 152, &qword_1006359A8, &qword_10051E160);
      v29 = sub_1000343A8(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      sub_100008D24(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_10001074C(v0 + 152, &qword_1006359A8, &qword_10051E160);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_100006F10(0, &qword_100635118, NSTimer_ptr);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = sub_1004DE74C();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_1004DE59C();

    sub_10001074C(v30, &qword_100635110, &qword_100515B20);
    *(v0 + 2072) = v33;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v34 = sub_1004D9B0C();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_1000108DC(v0 + 424, v0 + 560, &qword_1006359A8, &qword_10051E160);
    sub_100004CB8(&qword_100635128, &qword_100515B28);
    sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 2192) = sub_1004D9C0C();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_100172E70;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = sub_100035430(v51, qword_1006350F8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_1000108DC(v0 + 1512, v0 + 1648, &qword_1006359A8, &qword_10051E160);
  sub_100035CC8(v47, v48);
  v57 = sub_1004D964C();
  v58 = sub_1004DDF7C();
  sub_1000354D0(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_10001074C(v0 + 1512, &qword_1006359A8, &qword_10051E160);
    v67 = sub_1000343A8(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    sub_100004CB8(&unk_100639EB0, &qword_100518300);
    v68 = sub_1004DD4DC();
    v70 = sub_1000343A8(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_10001074C(v0 + 1512, &qword_1006359A8, &qword_10051E160);

    (*(v61 + 8))(v60, v62);
  }

  sub_100042AA4();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_100172E70()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_100173358;
  }

  else
  {
    v2 = sub_100172F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100172F84()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  sub_1004D9AAC();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_1000108DC(v0 + 968, v0 + 1104, &qword_1006359A8, &qword_10051E160);
  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_10001074C(v0 + 968, &qword_1006359A8, &qword_10051E160);
    v19 = sub_1000343A8(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_10001074C(v0 + 968, &qword_1006359A8, &qword_10051E160);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = sub_1004DDA8C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_1000108DC(v0 + 1240, v0 + 1376, &qword_1006359A8, &qword_10051E160);
  sub_100041790(0, 0, v20, &unk_10051E170, v26);

  sub_10001074C(v20, &qword_100635240, &qword_1005171A0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100173358()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_1000108DC(v0 + 696, v0 + 832, &qword_1006359A8, &qword_10051E160);
  swift_errorRetain();
  v9 = sub_1004D964C();
  v10 = sub_1004DDF7C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_10001074C(v0 + 696, &qword_1006359A8, &qword_10051E160);
    v17 = sub_1000343A8(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_10001074C(v0 + 696, &qword_1006359A8, &qword_10051E160);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100173670(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v3 + 64) = swift_task_alloc();
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006359B0, &qword_10051E110);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100173880, 0, 0);
}

uint64_t sub_100173880()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100035430(v67, qword_1006350F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000108DC(v70, v69, &qword_1006359B0, &qword_10051E110);
        v72 = sub_1004D964C();
        v73 = sub_1004DDF7C();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_10001074C(v78, &qword_1006359B0, &qword_10051E110);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_1000343A8(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100008D24(v80);
        }

        else
        {
          sub_10001074C(*(v0 + 144), &qword_1006359B0, &qword_10051E110);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004EA0B0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100035430(v6, qword_1006350F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000108DC(v9, v8, &qword_1006359B0, &qword_10051E110);
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_10001074C(v18, &qword_1006359B0, &qword_10051E110);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_1000343A8(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100008D24(v20);
    }

    else
    {
      sub_10001074C(*(v0 + 128), &qword_1006359B0, &qword_10051E110);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100006F10(0, &qword_100635118, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004DE74C();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004DE59C();

    sub_10001074C(v27, &qword_100635110, &qword_100515B20);
    *(v0 + 32) = v32;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_1004D9B0C();

    *(v0 + 40) = v33;
    sub_1000108DC(v29, v25, &qword_1006359B0, &qword_10051E110);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100047F38(v25, v36 + v35, &qword_1006359B0, &qword_10051E110);
    sub_100004CB8(&qword_100635128, &qword_100515B28);
    sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_1004D9C0C();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_100174398;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100035430(v42, qword_1006350F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000108DC(v45, v44, &qword_1006359B0, &qword_10051E110);

  v47 = sub_1004D964C();
  v48 = sub_1004DDF7C();
  sub_1000354D0(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_10001074C(v53, &qword_1006359B0, &qword_10051E110);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_1000343A8(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100004CB8(&unk_100639EB0, &qword_100518300);
    v61 = sub_1004DD4DC();
    v63 = sub_1000343A8(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_10001074C(*(v0 + 136), &qword_1006359B0, &qword_10051E110);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100042AA4();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_100174398()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100174864;
  }

  else
  {
    v2 = sub_1001744AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001744AC()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B0, &qword_10051E110);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_1006359B0, &qword_10051E110);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_1000343A8(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10001074C(*(v0 + 112), &qword_1006359B0, &qword_10051E110);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004DDA8C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000108DC(v22, v20, &qword_1006359B0, &qword_10051E110);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100047F38(v20, v24 + ((v19 + 32) & ~v19), &qword_1006359B0, &qword_10051E110);
  sub_100041790(0, 0, v21, &unk_10051E120, v24);

  sub_10001074C(v21, &qword_100635240, &qword_1005171A0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100174864()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B0, &qword_10051E110);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_1006359B0, &qword_10051E110);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_10001074C(v0[13], &qword_1006359B0, &qword_10051E110);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100174B90(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v3 + 64) = swift_task_alloc();
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100004CB8(&qword_1006359B8, &qword_100516F40);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004D966C();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100174DA0, 0, 0);
}

uint64_t sub_100174DA0()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_100035920();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_1000358CC();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_100633A90 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100035430(v67, qword_1006350F8);
        (*(v68 + 16))(v66, v71, v67);
        sub_1000108DC(v70, v69, &qword_1006359B8, &qword_100516F40);
        v72 = sub_1004D964C();
        v73 = sub_1004DDF7C();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_10001074C(v78, &qword_1006359B8, &qword_100516F40);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_1000343A8(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100008D24(v80);
        }

        else
        {
          sub_10001074C(*(v0 + 144), &qword_1006359B8, &qword_100516F40);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004EA0B0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_100633A90 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100035430(v6, qword_1006350F8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_1000108DC(v9, v8, &qword_1006359B8, &qword_100516F40);
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_10001074C(v18, &qword_1006359B8, &qword_100516F40);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_1000343A8(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100008D24(v20);
    }

    else
    {
      sub_10001074C(*(v0 + 128), &qword_1006359B8, &qword_100516F40);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100006F10(0, &qword_100635118, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004DE74C();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004DE59C();

    sub_10001074C(v27, &qword_100635110, &qword_100515B20);
    *(v0 + 32) = v32;
    sub_1004DE58C();
    sub_1001ABC10(&qword_100635120, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_1004D9B0C();

    *(v0 + 40) = v33;
    sub_1000108DC(v29, v25, &qword_1006359B8, &qword_100516F40);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100047F38(v25, v36 + v35, &qword_1006359B8, &qword_100516F40);
    sub_100004CB8(&qword_100635128, &qword_100515B28);
    sub_100042B08(&qword_100635130, &qword_100635128, &qword_100515B28, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_1004D9C0C();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1001758B8;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_100633A90 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100035430(v42, qword_1006350F8);
  (*(v43 + 16))(v41, v46, v42);
  sub_1000108DC(v45, v44, &qword_1006359B8, &qword_100516F40);

  v47 = sub_1004D964C();
  v48 = sub_1004DDF7C();
  sub_1000354D0(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_10001074C(v53, &qword_1006359B8, &qword_100516F40);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_1000343A8(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100004CB8(&unk_100639EB0, &qword_100518300);
    v61 = sub_1004DD4DC();
    v63 = sub_1000343A8(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_10001074C(*(v0 + 136), &qword_1006359B8, &qword_100516F40);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100042AA4();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1001758B8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100175D84;
  }

  else
  {
    v2 = sub_1001759CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001759CC()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004D9AAC();
  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B8, &qword_100516F40);
  v7 = sub_1004D964C();
  v8 = sub_1004DDF9C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_10001074C(v13, &qword_1006359B8, &qword_100516F40);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_1000343A8(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000343A8(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10001074C(*(v0 + 112), &qword_1006359B8, &qword_100516F40);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004DDA8C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_1000108DC(v22, v20, &qword_1006359B8, &qword_100516F40);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100047F38(v20, v24 + ((v19 + 32) & ~v19), &qword_1006359B8, &qword_100516F40);
  sub_100041790(0, 0, v21, &unk_10051E148, v24);

  sub_10001074C(v21, &qword_100635240, &qword_1005171A0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100175D84()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_1000108DC(v6, v5, &qword_1006359B8, &qword_100516F40);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_10001074C(v12, &qword_1006359B8, &qword_100516F40);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000343A8(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v18 = sub_1004DD4DC();
    v20 = sub_1000343A8(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_10001074C(v0[13], &qword_1006359B8, &qword_100516F40);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001760B0(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100004CB8(&qword_100635110, &qword_100515B20);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004D966C();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100176238, 0, 0);
}