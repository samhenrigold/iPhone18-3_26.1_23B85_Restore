void sub_1001437E0()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025B0, &qword_100185EC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        swift_unknownObjectRetain();
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
}

void sub_100143950()
{
  v1 = v0;
  sub_10003C49C(&qword_100202598, &qword_100185EB0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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
}

void sub_100143AC8()
{
  v1 = v0;
  sub_10003C49C(&qword_100202580, &qword_100185E98);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_100143C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for IndexPath();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100202590, &qword_100185EA8);
  v5 = *v2;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v3;
    v33 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v3 = v7;
  }
}

void sub_100143EB4()
{
  v1 = v0;
  sub_10003C49C(&qword_100202588, &qword_100185EA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        v19 = v18;
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
}

void sub_100144014()
{
  v1 = v0;
  sub_10003C49C(&qword_100200708, &qword_100182DB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

unint64_t sub_100144170()
{
  result = qword_1001FDE80;
  if (!qword_1001FDE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDE80);
  }

  return result;
}

uint64_t sub_1001441BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100144204(uint64_t a1)
{
  v2 = v1;
  v279.receiver = v1;
  v279.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  objc_msgSendSuper2(&v279, "viewDidLoad");
  v3 = [v1 navigationItem];
  [v3 setHidesBackButton:1];

  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_images];
  v5 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructions];
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_style];

  if (_UISolariumEnabled())
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 38.0;
  }

  sub_10003C49C(&qword_100202670, &qword_100185F28);
  State.init(wrappedValue:)();
  v8 = v266;
  v9 = v267;
  type metadata accessor for CGSize(0);
  v276 = 0;
  v277 = 0;
  State.init(wrappedValue:)();
  v10 = v267;
  v11 = v266;
  v278 = BYTE8(v266);
  *&v266 = 0x4044000000000000;
  *(&v266 + 1) = v7;
  v267 = v8;
  v268 = v278;
  memset(v269, 0, sizeof(v269));
  v270 = v9;
  v271 = v11;
  v272 = v10;
  v273 = v4;
  v274 = v5;
  v275 = v6;
  v12 = objc_allocWithZone(sub_10003C49C(&qword_100202678, qword_100185F30));
  v13 = UIHostingController.init(rootView:)();
  v14 = [v13 view];
  if (!v14)
  {

    return;
  }

  v261 = v13;
  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v2 contentView];
  [v16 addSubview:v15];

  v17 = [v2 scrollView];
  [v17 setShowsVerticalScrollIndicator:0];

  v18 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10017ED60;
  v20 = [v15 leadingAnchor];
  v21 = [v2 contentView];
  v22 = [v21 leadingAnchor];

  v23 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructionsViewHorizontalSpacing];
  v24 = [v20 constraintEqualToAnchor:v22 constant:v23];

  *(v19 + 32) = v24;
  v25 = [v15 trailingAnchor];
  v26 = [v2 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-v23];
  *(v19 + 40) = v28;
  v29 = [v15 topAnchor];
  v30 = [v2 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor:v31];
  *(v19 + 48) = v32;
  v260 = v15;
  v33 = [v15 bottomAnchor];
  v34 = [v2 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v33 constraintEqualToAnchor:v35];
  *(v19 + 56) = v36;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19, v38, v39, v40, v41, v42, v43, v44;
  [v18 activateConstraints:isa];

  v263 = v2;
  v45 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_options];
  v46 = *(v45 + 16);

  if (v46)
  {
    v54 = 0;
    v264 = v46;
    while (v54 < *(v45 + 16))
    {
      v55 = *(v45 + 32 + 8 * v54);
      if (v54)
      {
        v56 = &selRef_linkButton;
      }

      else
      {
        v56 = &selRef_boldButton;
      }

      v57 = objc_opt_self();

      v58 = [v57 *v56];
      if (*(v55 + 16) == 1)
      {
        v59 = 0;
        v60 = 1 << *(v55 + 32);
        v61 = (v60 + 63) >> 6;
        v62 = 64;
        while (1)
        {
          v63 = *(v55 + v62);
          if (v63)
          {
            break;
          }

          v59 -= 64;
          v62 += 8;
          if (!--v61)
          {
            goto LABEL_22;
          }
        }

        v92 = __clz(__rbit64(v63));
        if (v92 - v60 != v59)
        {
          v121 = sub_1001455F8(&v266, v92 - v59, *(v55 + 36), 0, v55);
          v123 = v122;
          v55, v122, v124, v125, v126, v127, v128, v129;
          v130 = v266;

          v131 = String._bridgeToObjectiveC()();
          *(&v130 + 1), v132, v133, v134, v135, v136, v137, v138;
          [v58 setTitle:v131 forState:0];

          sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
          v139 = swift_allocObject();
          *(v139 + 16) = v263;
          *(v139 + 24) = v121;
          *(v139 + 32) = v123;
          *(v139 + 40) = v130;
          v140 = v263;
          v141 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          [v58 addAction:v141 forControlEvents:{64, 0, 0, 0, sub_100145734, v139}];

          v94 = [v140 buttonTray];
          [v94 addButton:v58];
          goto LABEL_8;
        }

LABEL_22:
        v93 = static os_log_type_t.error.getter();
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v94 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v94, v93))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *&v266 = v103;
          *v102 = 136315138;
          v104 = Dictionary.description.getter();
          v106 = v105;
          v55, v105, v107, v108, v109, v110, v111, v112;
          v113 = sub_100056B7C(v104, v106, &v266);
          v106, v114, v115, v116, v117, v118, v119, v120;
          *(v102 + 4) = v113;
          _os_log_impl(&_mh_execute_header, v94, v93, "Unable to obtain the key-value pair from the option %s, skipping", v102, 0xCu);
          sub_100044554(v103);

          v46 = v264;
        }

        else
        {
          v55, v95, v96, v97, v98, v99, v100, v101;
        }

LABEL_8:
      }

      else
      {
        v64 = static os_log_type_t.error.getter();
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v65 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v65, v64))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v266 = v74;
          *v73 = 136315138;
          v75 = Dictionary.description.getter();
          v77 = v76;
          v55, v76, v78, v79, v80, v81, v82, v83;
          v84 = sub_100056B7C(v75, v77, &v266);
          v77, v85, v86, v87, v88, v89, v90, v91;
          *(v73 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v65, v64, "Bad options were provided to instructional prompt: %s, skipping", v73, 0xCu);
          sub_100044554(v74);

          v46 = v264;
        }

        else
        {
          v55, v66, v67, v68, v69, v70, v71, v72;
        }
      }

      if (++v54 == v46)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_27:
  v45, v47, v48, v49, v50, v51, v52, v53;
  v142 = *&v263[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions];
  v143 = *(v142 + 16);
  if (!v143)
  {

    return;
  }

  v265 = 0;
  v144 = 0;
  v262 = v143;
  while (1)
  {
LABEL_31:
    if (v144 >= *(v142 + 16))
    {
      goto LABEL_70;
    }

    v145 = 0;
    v146 = 0;
    v147 = *(v142 + 32 + 8 * v144++);
    v148 = 1 << *(v147 + 32);
    while (1)
    {
      v149 = *(v147 + 8 * v146 + 64);
      if (v149)
      {
        break;
      }

      ++v146;
      v145 -= 64;
      if ((v148 + 63) >> 6 == v146)
      {
        goto LABEL_37;
      }
    }

    v150 = __clz(__rbit64(v149));
    if (v150 - v148 != v145)
    {
      break;
    }

LABEL_37:

    v151 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v152 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v152, v151))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v266 = v161;
      *v160 = 136315138;
      v162 = Dictionary.description.getter();
      v164 = v163;
      v147, v163, v165, v166, v167, v168, v169, v170;
      v171 = sub_100056B7C(v162, v164, &v266);
      v164, v172, v173, v174, v175, v176, v177, v178;
      *(v160 + 4) = v171;
      _os_log_impl(&_mh_execute_header, v152, v151, "Unable to obtain the key-value pair from action %s, skipping", v160, 0xCu);
      sub_100044554(v161);
    }

    else
    {
      v147, v153, v154, v155, v156, v157, v158, v159;
    }

    if (v144 == v143)
    {
      goto LABEL_66;
    }
  }

  if ((-v145 & 0x8000000000000000) == 0)
  {
    v179 = v150 - v145;
    if (v179 < v148)
    {
      if (((*(v147 + 64 + 8 * (v146 & 0x3FFFFFFFFFFFFFFLL)) >> v150) & 1) == 0)
      {
        goto LABEL_72;
      }

      v180 = (*(v147 + 48) + 16 * v179);
      v182 = *v180;
      v181 = v180[1];
      v183 = (*(v147 + 56) + 16 * v179);
      v185 = *v183;
      v184 = v183[1];
      v186 = String.lowercased()();
      v187 = v186._countAndFlagsBits == 0x6C65636E6163 && v186._object == 0xE600000000000000;
      if (v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v186._object, v188, v189, v190, v191, v192, v193, v194;
        v195 = UIBarButtonSystemItemCancel;
      }

      else
      {
        if (v186._countAndFlagsBits == 1701736292 && v186._object == 0xE400000000000000)
        {

          object = v186._object;
        }

        else
        {
          v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v186._object, v203, v204, v205, v206, v207, v208, v209;
          if ((v202 & 1) == 0)
          {
            v184, v210, v211, v212, v213, v214, v215, v216;
            v181, v218, v219, v220, v221, v222, v223, v224;
            v225 = static os_log_type_t.error.getter();
            sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
            v226 = static OS_os_log.default.getter();
            if (os_log_type_enabled(v226, v225))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *&v266 = v235;
              *v234 = 136315138;
              v236 = Dictionary.description.getter();
              v238 = v237;
              v147, v237, v239, v240, v241, v242, v243, v244;
              v245 = sub_100056B7C(v236, v238, &v266);
              v238, v246, v247, v248, v249, v250, v251, v252;
              *(v234 + 4) = v245;
              _os_log_impl(&_mh_execute_header, v226, v225, "Unable to obtain a valid UIBarButtonItemType from action %s, skipping", v234, 0xCu);
              sub_100044554(v235);
            }

            else
            {
              v147, v227, v228, v229, v230, v231, v232, v233;
            }

LABEL_52:
            v143 = v262;
            if (v144 != v262)
            {
              goto LABEL_31;
            }

LABEL_66:

            v142, v253, v254, v255, v256, v257, v258, v259;
            return;
          }

          object = v147;
        }

        object, v210, v211, v212, v213, v214, v215, v216;
        v195 = UIBarButtonSystemItemDone;
      }

      sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
      sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
      v196 = swift_allocObject();
      v196[2] = v263;
      v196[3] = v182;
      v196[4] = v181;
      v196[5] = v185;
      v196[6] = v184;
      v197 = v263;
      v280.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v280.is_nil = 0;
      v198.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(v195, v280, v281).super.super.isa;
      v199 = [v197 navigationItem];
      v200 = v199;
      if (v265)
      {
        [v199 setLeftBarButtonItem:v198.super.super.isa];
      }

      else
      {
        [v199 setRightBarButtonItem:v198.super.super.isa];
      }

      v265 = 1;
      goto LABEL_52;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_100145110()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(CATransition) init];
  [v4 setDuration:0.2];
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  [v4 setTimingFunction:v5];

  [v4 setType:kCATransitionPush];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v7 semanticContentAttribute];

  v10 = [v8 userInterfaceLayoutDirectionForSemanticContentAttribute:v9];
  v11 = &kCATransitionFromLeft;
  if (!v10)
  {
    v11 = &kCATransitionFromRight;
  }

  [v4 setSubtype:*v11];
  v12 = [v3 view];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 layer];

  [v14 addAnimation:v4 forKey:kCATransition];
  v15 = [v3 popViewControllerAnimated:0];
}

double sub_10014534C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  objc_msgSendSuper2(&v20, "viewDidDisappear:", v3 & 1);
  v5 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer + 8];
  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
    if (v6)
    {
      v7 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer];
      v8 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress + 8];

      sub_10003C48C(v6, v8);
      v6(v7, v5);
      sub_10003C52C(v6, v8);
      v5, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  v16 = &v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  v17 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  if (v17)
  {
    v18 = *(v16 + 1);

    v17(v19);
    return sub_10003C52C(v17, v18);
  }

  return result;
}

id sub_1001454F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1001455F8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100145698()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 56, 7, v15);
}

void sub_1001456E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer);
  v4 = v3[1];
  *v3 = v1;
  v3[1] = v2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_100145110();
}

id sub_100145760()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries];
  if (!(v1 >> 62))
  {
    v2 = &off_1001EE000;
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = &off_1001EE000;
  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x59524F54534948, 0xE700000000000000);
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    v4, v6, v7, v8, v9, v10, v11, v12;
    [v0 v2[489]];
  }

LABEL_4:
  v13 = _UISolariumEnabled();
  v14 = [v0 navigationItem];
  if (v13)
  {
    v15 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"donePressed"];
    [v14 setRightBarButtonItem:v15];
  }

  else
  {
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1162760004, 0xE400000000000000);
    v17 = v16;
    v18 = type metadata accessor for HistoryTableViewController();
    v75 = v18;
    aBlock[0] = v0;
    v19 = v0;
    v20 = String._bridgeToObjectiveC()();
    v17, v21, v22, v23, v24, v25, v26, v27;
    if (v18)
    {
      v28 = sub_1000442A0(aBlock, v18);
      v29 = *(v18 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = aBlock - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v29 + 8))(v32, v18);
      sub_100044554(aBlock);
    }

    else
    {
      v33 = 0;
    }

    v34 = objc_allocWithZone(UIBarButtonItem);
    v35 = [v34 initWithTitle:v20 style:2 target:v33 action:{"donePressed", aBlock[0]}];

    swift_unknownObjectRelease();
    [v14 setRightBarButtonItem:v35];
  }

  v36 = [v0 navigationController];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 navigationBar];

    [v38 setPrefersLargeTitles:1];
  }

  result = [v0 view];
  if (result)
  {
    v40 = result;
    v41 = objc_opt_self();
    v42 = [v40 semanticContentAttribute];

    v43 = [v41 userInterfaceLayoutDirectionForSemanticContentAttribute:v42];
    v44 = [v0 navigationController];
    if (v44)
    {
      if (v43)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = 14.0;
      }

      if (v43)
      {
        v46 = 14.0;
      }

      else
      {
        v46 = 0.0;
      }

      v47 = v44;
      v48 = [v44 navigationBar];

      [v48 setLayoutMargins:{0.0, v45, 0.0, v46}];
    }

    v49 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
    [v49 setDelegate:v0];
    [v49 setDataSource:v0];
    [v49 setAllowsSelection:0];
    [v49 setEstimatedRowHeight:60.0];
    [v49 setSeparatorInset:{0.0, 15.0, 0.0, 0.0}];
    [v49 setRowHeight:UITableViewAutomaticDimension];
    type metadata accessor for HistoryTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = String._bridgeToObjectiveC()();
    [v49 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v51];

    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
    [v49 bounds];
    [v52 setFrame:?];
    v53 = [v49 backgroundColor];
    [v52 setBackgroundColor:v53];

    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4F545349485F4F4ELL, 0xEA00000000005952);
    v55 = v54;
    v56 = String._bridgeToObjectiveC()();
    v55, v57, v58, v59, v60, v61, v62, v63;
    [v52 v2[489]];

    if (*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered] >= 1)
    {
      [v52 setAlpha:0.0];
    }

    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = [objc_opt_self() defaultCenter];
    v65 = *(*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_state] + 40);
    v66 = objc_opt_self();
    v67 = @"com.apple.Diagnostics.deviceStateChangedNotification";
    v68 = v65;
    v69 = [v66 mainQueue];
    v70 = swift_allocObject();
    *(v70 + 16) = v0;
    v76 = sub_100147518;
    v77 = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060B2C;
    v75 = &unk_1001C90D0;
    v71 = _Block_copy(aBlock);
    v72 = v0;

    v73 = [v64 addObserverForName:v67 object:v68 queue:v69 usingBlock:v71];
    _Block_release(v71);

    *&v72[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver] = v73;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100145EA4(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v12 = sub_100064B74(v34), (v5 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v12, v35);
      sub_10003DB48(v34);
      v4, v13, v14, v15, v16, v17, v18, v19;
      sub_10003E110(0, &unk_100201860, off_1001BA120);
      if (swift_dynamicCast())
      {
        if (([v33 changedProperties] & 0x20) != 0)
        {
          v20 = [v33 snapshot];
          v21 = [v20 history];

          sub_10003E110(0, &qword_1001FDEB8, &off_1001BA128);
          v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = *(a2 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries);
          *(a2 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries) = v22;
          v23, v24, v25, v26, v27, v28, v29, v30;
          sub_100146DD0(v31, v32);
        }
      }
    }

    else
    {
      v4, v5, v6, v7, v8, v9, v10, v11;
      sub_10003DB48(v34);
    }
  }
}

void sub_100146034()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView]];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView]];
}

void sub_1001460E8()
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180E60;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
  v3 = [v2 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v1 + 40) = v12;
  v13 = [v2 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v1 + 48) = v17;
  v18 = [v2 trailingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v1 + 56) = v22;
  v23 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
  v24 = [v23 topAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v1 + 64) = v28;
  v29 = [v23 bottomAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v1 + 72) = v33;
  v34 = [v23 leadingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v1 + 80) = v38;
  v39 = [v23 trailingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v41 trailingAnchor];

  v44 = [v39 constraintEqualToAnchor:v43];
  *(v1 + 88) = v44;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v45, v46, v47, v48, v49, v50, v51;
  [v42 activateConstraints:isa];
}

id sub_1001465C0(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HistoryTableViewController();
  result = objc_msgSendSuper2(&v8, "viewWillDisappear:", v2 & 1);
  v4 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver];
  if (v5)
  {
    v6 = objc_opt_self();
    swift_unknownObjectRetain();
    v7 = [v6 defaultCenter];
    [v7 removeObserver:v5];

    swift_unknownObjectRelease();
    *&v1[v4] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001466E4(void *a1, DARootViewController *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 dequeueReusableCellWithIdentifier:v10];

  if (v11)
  {
    type metadata accessor for HistoryTableViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries;
      v15 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries);
      v16 = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (IndexPath.row.getter() < v16)
      {
        v17 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered);
        v18 = v17 - 1;
        if (__OFSUB__(v17, 1))
        {
          __break(1u);
        }

        else
        {
          v19 = IndexPath.row.getter();
          v20 = __OFSUB__(v18, v19);
          v21 = v18 - v19;
          if (!v20)
          {
            a2 = *(v3 + v14);
            v88 = v7;
            if ((a2 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v22 = *&a2->remoteCardFilter[8 * v21];
                goto LABEL_12;
              }

              __break(1u);
              goto LABEL_30;
            }

LABEL_27:

            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            a2, v80, v81, v82, v83, v84, v85, v86;
LABEL_12:
            v23 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
            v24 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView);
            v25 = *&v13[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel];
            [v24 bounds];
            v27 = v26;
            v28 = v11;
            [v13 separatorInset];
            [v25 setPreferredMaxLayoutWidth:v27 - (v29 + v29)];

            v30 = *&v13[v23];
            if ([v22 skipped])
            {
              sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_10017EC00;
              v32 = [v22 testSuiteName];
              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;

              *(v31 + 56) = &type metadata for String;
              *(v31 + 64) = sub_10003DFBC();
              *(v31 + 32) = v33;
              *(v31 + 40) = v35;
              v36 = 0x5F44455050494B53;
              v37 = 0xED00004554495553;
              v38 = v31;
            }

            else
            {
              v40 = [v22 testSuiteName];
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = v42;

              v38 = &_swiftEmptyArrayStorage;
              v36 = v41;
              v37 = v31;
            }

            sub_1000494C8(0, 0, v38, v36, v37);
            v44 = v43;
            v31, v43, v45, v46, v47, v48, v49, v50;
            v51 = String._bridgeToObjectiveC()();
            v44, v52, v53, v54, v55, v56, v57, v58;
            [v30 setText:v51];

            v59 = *&v13[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel];
            v60 = objc_opt_self();
            v61 = v59;
            v62 = [v60 sharedFormatter];
            if (v62)
            {
              v63 = v62;
              v64 = [v62 formatterWithType:6];

              if (v64)
              {
                v65 = [v22 date];
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                (*(v88 + 8))(v9, v6);
                v67 = [v64 stringFromDate:isa];

                if (!v67)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v69 = v68;
                  v67 = String._bridgeToObjectiveC()();
                  v69, v70, v71, v72, v73, v74, v75, v76;
                }

                [v61 setText:v67];

                v77 = objc_opt_self();
                v78 = v28;
                v79 = [v77 clearColor];
                [v13 setBackgroundColor:v79];

                [v13 setSelectionStyle:0];
                return;
              }

LABEL_31:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }
  }

  v39 = objc_allocWithZone(UITableViewCell);

  [v39 init];
}

void sub_100146DD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered;
  v10 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered);
  v11 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries;
  v12 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries);
  if (v12 >> 62)
  {
LABEL_33:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(v3 + v9);
  v15 = *(&v11->super.super.super.super.isa + v3);
  v16 = v15 >> 62;
  if (v10 >= v13)
  {
    if (!v16)
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v14)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_37:
    if (_CocoaArrayWrapper.endIndex.getter() >= v14)
    {
      return;
    }

LABEL_19:
    v22 = *(&v11->super.super.super.super.isa + v3);
    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v3 + v9) = v23;
      if (!v23)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

LABEL_41:
    v67 = _CocoaArrayWrapper.endIndex.getter();
    *(v3 + v9) = v67;
    if (!v67)
    {
LABEL_21:
      v24 = *(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView);
      [v24 alpha];
      if (v6 == 0.0)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v26 = objc_opt_self();
        v74 = sub_10003D8B8;
        v75 = v25;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_100031FA8;
        v73 = &unk_1001C9120;
        v27 = _Block_copy(&aBlock);
        v28 = v24;

        [v26 animateWithDuration:0x10000 delay:v27 options:0 animations:0.375 completion:0.0];
        _Block_release(v27);
      }
    }

LABEL_23:
    [*(v3 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView) reloadData];
    return;
  }

  if (!v16)
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_6:
  if (v18 < v14)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = v3;
  v69 = v9;
  v9 = 0;
  v19 = v14 - v17 + 1;
  v11 = &_swiftEmptyArrayStorage;
  while (1)
  {
    IndexPath.init(row:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000D5328(0, *&v11->hostAppBundleIdentifier[8] + 1, 1, v11);
    }

    v10 = *&v11->hostAppBundleIdentifier[8];
    v20 = *v11->responder;
    if (v10 >= v20 >> 1)
    {
      v11 = sub_1000D5328((v20 > 1), v10 + 1, 1, v11);
    }

    *&v11->hostAppBundleIdentifier[8] = v10 + 1;
    (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v8, v4);
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (!(v19 + v9))
    {
      break;
    }

    v21 = v14 + v9++;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_32;
    }
  }

  v29 = v68;
  v30 = *&v68[v69];
  v31 = __OFADD__(v30, v3);
  v32 = v30 + v3;
  if (v31)
  {
    goto LABEL_40;
  }

  *&v68[v69] = v32;
  v33 = *&v29[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v33 insertRowsAtIndexPaths:isa withRowAnimation:4];

  if (v3 < 1)
  {
    v11, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v42 = *&v29[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
    [v42 alpha];
    v44 = v43;
    v11, v45, v46, v47, v48, v49, v50, v51;
    if (v44 > 0.0)
    {
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x59524F54534948, 0xE700000000000000);
      v53 = v52;
      v54 = String._bridgeToObjectiveC()();
      v53, v55, v56, v57, v58, v59, v60, v61;
      [v29 setTitle:v54];

      [v42 alpha];
      if (v62 == 1.0)
      {
        v63 = swift_allocObject();
        *(v63 + 16) = v42;
        v64 = objc_opt_self();
        v74 = sub_100044298;
        v75 = v63;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_100031FA8;
        v73 = &unk_1001C9170;
        v65 = _Block_copy(&aBlock);
        v66 = v42;

        [v64 animateWithDuration:0x20000 delay:v65 options:0 animations:0.125 completion:0.0];
        _Block_release(v65);
      }
    }
  }
}

void sub_10014739C()
{

  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView);
}

id sub_10014740C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HistoryTableViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001474E0()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_100147520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100147538(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_cellRowEstimatedHeight] = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  result = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView] = result;
    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_state] = a1;
    v5 = *(a1 + 40);

    v6 = [v5 history];
    sub_10003E110(0, &qword_1001FDEB8, &off_1001BA128);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries] = v7;
    v8 = [v5 history];
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9, v10, v11, v12, v13, v14, v15, v16;
    *&v1[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered] = v17;
    v18.receiver = v1;
    v18.super_class = type metadata accessor for HistoryTableViewController();
    return objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001476FC()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_cellRowEstimatedHeight) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver) = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10014780C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100147854(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

double sub_1001478CC@<D0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = static VerticalAlignment.center.getter();
  LOBYTE(v68[0]) = 0;
  sub_100147C88(v3, &v33);
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v54 = v37;
  v55 = v38;
  v56 = v39;
  v57 = v40;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v66[12] = v45;
  v66[13] = v46;
  v66[14] = v47;
  v66[8] = v41;
  v66[9] = v42;
  v66[10] = v43;
  v66[11] = v44;
  v66[4] = v37;
  v66[5] = v38;
  v66[6] = v39;
  v66[7] = v40;
  v66[0] = v33;
  v66[1] = v34;
  v65 = v48;
  v67 = v48;
  v66[2] = v35;
  v66[3] = v36;
  sub_100044704(&v50, v32, &qword_100202720, &qword_100186110);
  sub_10003DD84(v66, &qword_100202720, &qword_100186110);
  *&v49[199] = v62;
  *&v49[215] = v63;
  *&v49[231] = v64;
  *&v49[135] = v58;
  *&v49[151] = v59;
  *&v49[167] = v60;
  *&v49[183] = v61;
  *&v49[71] = v54;
  *&v49[87] = v55;
  *&v49[103] = v56;
  *&v49[119] = v57;
  *&v49[7] = v50;
  *&v49[23] = v51;
  *&v49[39] = v52;
  v49[247] = v65;
  *&v49[55] = v53;
  v6 = v68[0];
  v7 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v33) = 0;
  v16 = [objc_opt_self() secondarySystemBackgroundColor];
  v17 = Color.init(_:)();
  v18 = static Edge.Set.all.getter();
  v19 = *(v3 + 32);
  v20 = (a1 + *(sub_10003C49C(&qword_100202728, &qword_100186118) + 36));
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = v19;
  *(v20 + 1) = v19;
  *&v20[*(sub_10003C49C(&qword_100200048, &qword_100186120) + 36)] = 256;
  v24 = *&v49[208];
  *(a1 + 209) = *&v49[192];
  *(a1 + 225) = v24;
  *(a1 + 241) = *&v49[224];
  v25 = *&v49[144];
  *(a1 + 145) = *&v49[128];
  *(a1 + 161) = v25;
  v26 = *&v49[176];
  *(a1 + 177) = *&v49[160];
  *(a1 + 193) = v26;
  v27 = *&v49[80];
  *(a1 + 81) = *&v49[64];
  *(a1 + 97) = v27;
  v28 = *&v49[112];
  *(a1 + 113) = *&v49[96];
  *(a1 + 129) = v28;
  v29 = *&v49[16];
  *(a1 + 17) = *v49;
  *(a1 + 33) = v29;
  result = *&v49[32];
  v31 = *&v49[48];
  *(a1 + 49) = *&v49[32];
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 257) = *&v49[240];
  *(a1 + 65) = v31;
  *(a1 + 265) = v33;
  *(a1 + 268) = *(&v33 + 3);
  *(a1 + 272) = v7;
  *(a1 + 273) = v32[0];
  *(a1 + 276) = *(v32 + 3);
  *(a1 + 280) = v9;
  *(a1 + 288) = v11;
  *(a1 + 296) = v13;
  *(a1 + 304) = v15;
  *(a1 + 312) = 0;
  *(a1 + 313) = v68[0];
  *(a1 + 316) = *(v68 + 3);
  *(a1 + 320) = v17;
  *(a1 + 328) = v18;
  return result;
}

uint64_t sub_100147C88@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 5);
  if (v4)
  {
    v48 = v4;
    sub_1000B7164(v48, &v96);
    v5 = v98;
    v6 = BYTE2(v98);
    v46 = v97;
    v47 = v96;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v129) = v6;
    *&v62[5] = v126;
    *&v62[21] = v127;
    *&v62[37] = v128;
    v7 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = 0;
    v63[1] = v46;
    v63[0] = v47;
    *v64 = v5;
    v64[2] = v6;
    *&v64[3] = *v62;
    *&v64[19] = *&v62[16];
    *&v64[35] = *&v62[32];
    *&v64[48] = *&v62[45];
    v64[56] = v7;
    *&v65 = v8;
    *(&v65 + 1) = v9;
    *&v66 = v10;
    *(&v66 + 1) = v11;
    v67 = 0;
    v12 = *(a1 + 7);
    *&v96 = a1[6];
    *(&v96 + 1) = v12;
    sub_100079A64();

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = v17 & 1;
    LOBYTE(v129) = 0;
    *&v68 = v13;
    *(&v68 + 1) = v15;
    LOBYTE(v69) = v17 & 1;
    *(&v69 + 1) = v19;
    LOBYTE(v70) = v20;
    *(&v70 + 1) = v21;
    *&v71 = v22;
    *(&v71 + 1) = v23;
    *v72 = v24;
    v72[8] = 0;
    *&v72[16] = swift_getKeyPath();
    v72[24] = 0;
    v60 = v65;
    v61 = v66;
    v56 = *v64;
    v57 = *&v64[16];
    v58 = *&v64[32];
    v59 = *&v64[48];
    v77[2] = v70;
    v77[3] = v71;
    v78[0] = *v72;
    *(v78 + 9) = *&v72[9];
    v77[0] = v68;
    v77[1] = v69;
    v73[6] = v65;
    v73[7] = v66;
    v74 = 0;
    v73[2] = *v64;
    v73[3] = *&v64[16];
    v73[4] = *&v64[32];
    v73[5] = *&v64[48];
    v73[0] = v47;
    v73[1] = v46;
    v53 = v65;
    v54 = v66;
    v55[0] = 0;
    v49 = *v64;
    v50 = *&v64[16];
    v51 = *&v64[32];
    v52 = *&v64[48];
    v75[2] = v70;
    v75[3] = v71;
    v76[0] = *v72;
    *(v76 + 9) = *&v72[9];
    v75[0] = v68;
    v75[1] = v69;
    *&v55[40] = v70;
    *&v55[56] = v71;
    *&v55[81] = *&v72[9];
    *&v55[72] = *v72;
    *&v55[8] = v68;
    *&v55[24] = v69;
    v93 = *&v55[64];
    v94 = *&v55[80];
    LOBYTE(v95) = 0;
    v89 = *v55;
    v90 = *&v55[16];
    v92 = *&v55[48];
    v91 = *&v55[32];
    v85 = *&v64[32];
    v86 = *&v64[48];
    v88 = v66;
    v87 = v65;
    v81 = v47;
    v82 = v46;
    v84 = *&v64[16];
    v83 = *v64;
    sub_100044704(v63, &v96, &qword_100200058, &qword_100186180);
    sub_100044704(&v68, &v96, &qword_100202738, &qword_100186160);
    sub_100044704(v73, &v96, &qword_100200058, &qword_100186180);
    sub_100044704(v75, &v96, &qword_100202738, &qword_100186160);
    sub_10003DD84(v77, &qword_100202738, &qword_100186160);
    v79[6] = v60;
    v79[7] = v61;
    v80 = 0;
    v79[2] = v56;
    v79[3] = v57;
    v79[5] = v59;
    v79[4] = v58;
    v79[1] = v46;
    v79[0] = v47;
    sub_10003DD84(v79, &qword_100200058, &qword_100186180);
    v108 = *&v55[64];
    v109 = *&v55[80];
    LOBYTE(v110) = v55[96];
    v104 = *v55;
    v105 = *&v55[16];
    v107 = *&v55[48];
    v106 = *&v55[32];
    v100 = v51;
    v101 = v52;
    v103 = v54;
    v102 = v53;
    v96 = v47;
    v97 = v46;
    v99 = v50;
    v98 = v49;
    sub_1001497CC(&v96);
    v141 = v108;
    v142 = v109;
    v143 = v110;
    v137 = v104;
    v138 = v105;
    v140 = v107;
    v139 = v106;
    v133 = v100;
    v134 = v101;
    v136 = v103;
    v135 = v102;
    v129 = v96;
    v130 = v97;
    v132 = v99;
    v131 = v98;
    sub_100044704(&v81, &v111, &qword_100202768, &qword_100186188);
    sub_10003C49C(&qword_100202730, &qword_100186158);
    sub_10003C49C(&qword_100202738, &qword_100186160);
    sub_10005C71C(&qword_100202740, &qword_100202730, &qword_100186158, &protocol conformance descriptor for TupleView<A>);
    sub_100149690();
    _ConditionalContent<>.init(storage:)();

    sub_10003DD84(&v81, &qword_100202768, &qword_100186188);
    sub_10003DD84(&v68, &qword_100202738, &qword_100186160);
    sub_10003DD84(v63, &qword_100200058, &qword_100186180);
    v141 = v123;
    v142 = v124;
    v143 = v125;
    v137 = v119;
    v138 = v120;
    v140 = v122;
    v139 = v121;
    v133 = v115;
    v134 = v116;
    v136 = v118;
    v135 = v117;
    v129 = v111;
    v130 = v112;
    v132 = v114;
    v131 = v113;
  }

  else
  {
    sub_100079A64();

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v129) = 0;
    *&v96 = v25;
    *(&v96 + 1) = v27;
    LOBYTE(v97) = v29 & 1;
    *(&v97 + 1) = v31;
    LOBYTE(v98) = v32;
    *(&v98 + 1) = v33;
    *&v99 = v34;
    *(&v99 + 1) = v35;
    *&v100 = v36;
    BYTE8(v100) = 0;
    *&v101 = swift_getKeyPath();
    BYTE8(v101) = 0;
    sub_100149684(&v96);
    v123 = v108;
    v124 = v109;
    v125 = v110;
    v119 = v104;
    v120 = v105;
    v122 = v107;
    v121 = v106;
    v115 = v100;
    v116 = v101;
    v118 = v103;
    v117 = v102;
    v111 = v96;
    v112 = v97;
    v114 = v99;
    v113 = v98;
    sub_10003C49C(&qword_100202730, &qword_100186158);
    sub_10003C49C(&qword_100202738, &qword_100186160);
    sub_10005C71C(&qword_100202740, &qword_100202730, &qword_100186158, &protocol conformance descriptor for TupleView<A>);
    sub_100149690();
    _ConditionalContent<>.init(storage:)();
  }

  v123 = v141;
  v124 = v142;
  v119 = v137;
  v120 = v138;
  v122 = v140;
  v121 = v139;
  v115 = v133;
  v116 = v134;
  v118 = v136;
  v117 = v135;
  v111 = v129;
  v112 = v130;
  v114 = v132;
  v113 = v131;
  v93 = v141;
  v94 = v142;
  v89 = v137;
  v90 = v138;
  v92 = v140;
  v91 = v139;
  v85 = v133;
  v86 = v134;
  v88 = v136;
  v87 = v135;
  v81 = v129;
  v82 = v130;
  v84 = v132;
  v83 = v131;
  v108 = v141;
  v109 = v142;
  v104 = v137;
  v105 = v138;
  v107 = v140;
  v106 = v139;
  v100 = v133;
  v101 = v134;
  v103 = v136;
  v102 = v135;
  v96 = v129;
  v97 = v130;
  v125 = v143;
  v95 = v143;
  LOWORD(v110) = v143;
  v99 = v132;
  v98 = v131;
  LOBYTE(v73[0]) = 1;
  v37 = v142;
  *(a2 + 192) = v141;
  *(a2 + 208) = v37;
  v38 = v110;
  v39 = v105;
  *(a2 + 128) = v104;
  *(a2 + 144) = v39;
  v40 = v107;
  *(a2 + 160) = v106;
  *(a2 + 176) = v40;
  v41 = v101;
  *(a2 + 64) = v100;
  *(a2 + 80) = v41;
  v42 = v103;
  *(a2 + 96) = v102;
  *(a2 + 112) = v42;
  v43 = v97;
  *a2 = v96;
  *(a2 + 16) = v43;
  v44 = v99;
  *(a2 + 32) = v98;
  *(a2 + 48) = v44;
  *(a2 + 224) = v38;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  sub_100044704(&v81, v79, &qword_100202760, &qword_100186178);
  return sub_10003DD84(&v111, &qword_100202760, &qword_100186178);
}

void *sub_1001486AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.leading.getter();
  v19 = 1;
  sub_1001487CC(v2, __src);
  memcpy(__dst, __src, 0x1D1uLL);
  memcpy(v21, __src, 0x1D1uLL);
  sub_100044704(__dst, v16, &qword_1002026E0, &unk_100186040);
  sub_10003DD84(v21, &qword_1002026E0, &unk_100186040);
  memcpy(&v18[7], __dst, 0x1D1uLL);
  v5 = v19;
  v6 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  result = memcpy((a1 + 17), v18, 0x1D8uLL);
  *(a1 + 496) = v6;
  *(a1 + 504) = v8;
  *(a1 + 512) = v10;
  *(a1 + 520) = v12;
  *(a1 + 528) = v14;
  *(a1 + 536) = 0;
  return result;
}

uint64_t sub_1001487CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v178 = *(a1 + 32);

  v177 = static Font.title.getter();
  v176 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LOBYTE(v254) = 0;
  v11 = *(a1 + 48);
  v12 = [v11 result];
  __asm { FMOV            V0.2D, #20.0 }

  v179 = _Q0;
  if (v12)
  {
    v18 = v12;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v20;
    v171 = v19;

    v21 = [v11 name];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *&v254 = v22;
    *(&v254 + 1) = v24;
    sub_100079A64();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    LOBYTE(v24) = v28;
    v30 = v29;
    static Font.title3.getter();
    v31 = Text.font(_:)();
    v173 = v11;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_10007C874(v25, v27, (v24 & 1), v38, v39, v40, v41, v42);
    v30, v43, v44, v45, v46, v47, v48, v49;
    static Font.Weight.semibold.getter();
    v50 = Text.fontWeight(_:)();
    v167 = v51;
    v168 = v50;
    LOBYTE(v27) = v52;
    v54 = v53;
    sub_10007C874(v31, v33, (v35 & 1), v53, v55, v56, v57, v58);
    v37, v59, v60, v61, v62, v63, v64, v65;
    v66 = [v173 status];
    LOBYTE(v24) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    LOBYTE(v254) = 0;
    v75 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v76 = (v27 & 1);
    LOBYTE(v213) = v76;
    v186 = xmmword_100185F80;
    v187 = v179;
    DWORD1(v190) = *&v180[3];
    *(&v190 + 1) = *v180;
    HIDWORD(v192) = *&v182[3];
    *(&v192 + 9) = *v182;
    DWORD1(v193) = *&v181[3];
    *(&v193 + 1) = *v181;
    *&v188 = 0x403A000000000000;
    *(&v188 + 1) = v66;
    *&v189 = v171;
    *(&v189 + 1) = v169;
    LOBYTE(v190) = v24;
    *(&v190 + 1) = v68;
    *&v191 = v70;
    *(&v191 + 1) = v72;
    *&v192 = v74;
    BYTE8(v192) = 0;
    LOBYTE(v193) = v75;
    *(&v193 + 1) = v77;
    *v194 = v78;
    *&v194[8] = v79;
    *&v194[16] = v80;
    v194[24] = 0;
    v224 = v179;
    v223 = xmmword_100185F80;
    v228 = v191;
    v227 = v190;
    v226 = v189;
    v225 = v188;
    *&v231[9] = *&v194[9];
    *v231 = *v194;
    v230 = v193;
    v229 = v192;
    *&v236 = 0x403A000000000000;
    *(&v236 + 1) = v66;
    v234 = xmmword_100185F80;
    v235 = v179;
    *&v237 = v171;
    *(&v237 + 1) = v169;
    LOBYTE(v238) = v24;
    *(&v238 + 1) = *v180;
    DWORD1(v238) = *&v180[3];
    *(&v238 + 1) = v68;
    *&v239 = v70;
    *(&v239 + 1) = v72;
    *&v240 = v74;
    BYTE8(v240) = 0;
    HIDWORD(v240) = *&v182[3];
    *(&v240 + 9) = *v182;
    LOBYTE(v241) = v75;
    DWORD1(v241) = *&v181[3];
    *(&v241 + 1) = *v181;
    *(&v241 + 1) = v77;
    *&v242 = v78;
    *(&v242 + 1) = v79;
    *&v243 = v80;
    BYTE8(v243) = 0;
    sub_10007C884(v168, v167, v76);

    sub_100044704(&v186, &v254, &qword_1002026F8, &qword_100186060);
    sub_10003DD84(&v234, &qword_1002026F8, &qword_100186060);
    sub_10007C874(v168, v167, v76, v81, v82, v83, v84, v85);
    v54, v86, v87, v88, v89, v90, v91, v92;
    *&v254 = v168;
    *(&v254 + 1) = v167;
    LOBYTE(v255) = v76;
    v11 = v173;
    *(&v255 + 1) = v54;
    v262 = v229;
    v263 = v230;
    *v264 = *v231;
    *&v264[9] = *&v231[9];
    v258 = v225;
    v259 = v226;
    v260 = v227;
    v261 = v228;
    v256 = v223;
    v257 = v224;
    Int.id.getter();
    v273 = v262;
    v274 = v263;
    *v275 = *v264;
    *&v275[9] = *&v264[9];
    v269 = v258;
    v270 = v259;
    v271 = v260;
    v272 = v261;
    v265 = v254;
    v266 = v255;
    v267 = v256;
    v268 = v257;
  }

  else
  {
    sub_1001494B4(&v265);
  }

  v93 = [v11 testDescription];
  if (v93)
  {
    v94 = v93;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = v96;
    v172 = v95;

    *&v254 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x48545F54554F4241, 0xEF545345545F5349);
    *(&v254 + 1) = v97;
    sub_100079A64();
    v98 = Text.init<A>(_:)();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    static Font.title3.getter();
    v105 = Text.font(_:)();
    v107 = v106;
    v109 = v108;
    v111 = v110;

    sub_10007C874(v98, v100, (v102 & 1), v112, v113, v114, v115, v116);
    v104, v117, v118, v119, v120, v121, v122, v123;
    static Font.Weight.semibold.getter();
    v124 = Text.fontWeight(_:)();
    v126 = v125;
    LOBYTE(v100) = v127;
    v174 = v128;
    sub_10007C874(v105, v107, (v109 & 1), v128, v129, v130, v131, v132);
    v111, v133, v134, v135, v136, v137, v138, v139;
    LOBYTE(v98) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    LOBYTE(v254) = 0;
    v148 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v149 = (v100 & 1);
    LOBYTE(v197) = v149;
    v213 = xmmword_100185F80;
    v214 = v179;
    v215 = 0x403A000000000000uLL;
    *&v216 = v172;
    *(&v216 + 1) = v170;
    LOBYTE(v217) = v98;
    DWORD1(v217) = *&v183[3];
    *(&v217 + 1) = *v183;
    *(&v217 + 1) = v141;
    *&v218 = v143;
    *(&v218 + 1) = v145;
    *&v219 = v147;
    BYTE8(v219) = 0;
    HIDWORD(v219) = *&v185[3];
    *(&v219 + 9) = *v185;
    LOBYTE(v220) = v148;
    DWORD1(v220) = *&v184[3];
    *(&v220 + 1) = *v184;
    *(&v220 + 1) = v150;
    *v221 = v151;
    *&v221[8] = v152;
    *&v221[16] = v153;
    v221[24] = 0;
    v186 = xmmword_100185F80;
    v187 = v179;
    v190 = v217;
    v191 = v218;
    v188 = 0x403A000000000000uLL;
    v189 = v216;
    *&v194[9] = *&v221[9];
    v193 = v220;
    *v194 = *v221;
    v192 = v219;
    LOBYTE(v245) = 1;
    *&v226 = v172;
    *(&v226 + 1) = v170;
    v223 = xmmword_100185F80;
    v224 = v179;
    v225 = 0x403A000000000000uLL;
    LOBYTE(v227) = v98;
    *(&v227 + 1) = *v183;
    DWORD1(v227) = *&v183[3];
    *(&v227 + 1) = v141;
    *&v228 = v143;
    *(&v228 + 1) = v145;
    *&v229 = v147;
    BYTE8(v229) = 0;
    HIDWORD(v229) = *&v185[3];
    *(&v229 + 9) = *v185;
    LOBYTE(v230) = v148;
    DWORD1(v230) = *&v184[3];
    *(&v230 + 1) = *v184;
    *(&v230 + 1) = v150;
    *v231 = v151;
    *&v231[8] = v152;
    *&v231[16] = v153;
    v231[24] = 0;
    sub_10007C884(v124, v126, v149);

    sub_100044704(&v213, &v254, &qword_1002026F8, &qword_100186060);
    sub_10003DD84(&v223, &qword_1002026F8, &qword_100186060);
    sub_10007C874(v124, v126, v149, v154, v155, v156, v157, v158);
    v174, v159, v160, v161, v162, v163, v164, v165;
    *&v234 = v124;
    *(&v234 + 1) = v126;
    LOBYTE(v235) = v149;
    *(&v235 + 1) = v174;
    v242 = v192;
    v243 = v193;
    *v244 = *v194;
    *&v244[9] = *&v194[9];
    v238 = v188;
    v239 = v189;
    v240 = v190;
    v241 = v191;
    v236 = v186;
    v237 = v187;
    *&v244[32] = 0;
    v244[40] = 1;
    Int.id.getter();
    *v264 = *v244;
    *&v264[16] = *&v244[16];
    *&v264[25] = *&v244[25];
    v260 = v240;
    v261 = v241;
    v263 = v243;
    v262 = v242;
    v256 = v236;
    v257 = v237;
    v259 = v239;
    v258 = v238;
    v255 = v235;
    v254 = v234;
  }

  else
  {
    sub_1001494D8(&v254);
  }

  v205 = v273;
  v206 = v274;
  v207[0] = *v275;
  *(v207 + 9) = *&v275[9];
  v201 = v269;
  v202 = v270;
  v203 = v271;
  v204 = v272;
  v197 = v265;
  v198 = v266;
  v199 = v267;
  v200 = v268;
  *v244 = *v264;
  *&v244[16] = *&v264[16];
  *&v244[25] = *&v264[25];
  v240 = v260;
  v241 = v261;
  v243 = v263;
  v242 = v262;
  v236 = v256;
  v237 = v257;
  v239 = v259;
  v238 = v258;
  v235 = v255;
  v234 = v254;
  v208 = v178;
  *&v209 = v177;
  BYTE8(v209) = v176;
  *(&v209 + 9) = v276[0];
  HIDWORD(v209) = *(v276 + 3);
  *&v210 = v4;
  *(&v210 + 1) = v6;
  *&v211 = v8;
  *(&v211 + 1) = v10;
  __src[2] = v210;
  __src[3] = v211;
  __src[0] = v178;
  __src[1] = v209;
  v216 = v268;
  v215 = v267;
  v214 = v266;
  v213 = v265;
  v220 = v272;
  v219 = v271;
  v218 = v270;
  v217 = v269;
  *(v222 + 9) = *&v275[9];
  v222[0] = *v275;
  *&v221[16] = v274;
  *v221 = v273;
  *(&__src[12] + 8) = v273;
  *(&__src[13] + 8) = v274;
  *(&__src[14] + 8) = *v275;
  *(&__src[15] + 1) = *&v275[9];
  *(&__src[8] + 8) = v269;
  *(&__src[9] + 8) = v270;
  *(&__src[10] + 8) = v271;
  *(&__src[11] + 8) = v272;
  *(&__src[4] + 8) = v265;
  *(&__src[5] + 8) = v266;
  *(&__src[6] + 8) = v267;
  *(&__src[7] + 8) = v268;
  v232 = *v264;
  v233[0] = *&v264[16];
  *(v233 + 9) = *&v264[25];
  v229 = v260;
  v230 = v261;
  *&v231[16] = v263;
  *v231 = v262;
  v225 = v256;
  v226 = v257;
  v228 = v259;
  v227 = v258;
  v224 = v255;
  v223 = v254;
  *(&__src[26] + 8) = *v264;
  *(&__src[27] + 8) = *&v264[16];
  *(&__src[28] + 1) = *&v264[25];
  *(&__src[22] + 8) = v260;
  *(&__src[23] + 8) = v261;
  *(&__src[24] + 8) = v262;
  *(&__src[25] + 8) = v263;
  *(&__src[18] + 8) = v256;
  *(&__src[19] + 8) = v257;
  v212 = 0;
  LOBYTE(__src[4]) = 0;
  *(&__src[20] + 8) = v258;
  *(&__src[21] + 8) = v259;
  *(&__src[16] + 8) = v254;
  *(&__src[17] + 8) = v255;
  memcpy(a2, __src, 0x1D1uLL);
  sub_100044704(&v208, &v186, &qword_1001FF288, &qword_100181AB0);
  sub_100044704(&v213, &v186, &qword_1002026E8, &qword_100186050);
  sub_100044704(&v223, &v186, &qword_1002026F0, &qword_100186058);
  sub_10003DD84(&v234, &qword_1002026F0, &qword_100186058);
  *v194 = v205;
  *&v194[16] = v206;
  v195[0] = v207[0];
  *(v195 + 9) = *(v207 + 9);
  v190 = v201;
  v191 = v202;
  v192 = v203;
  v193 = v204;
  v186 = v197;
  v187 = v198;
  v188 = v199;
  v189 = v200;
  sub_10003DD84(&v186, &qword_1002026E8, &qword_100186050);
  v245 = v178;
  v246 = v177;
  v247 = v176;
  *v248 = v276[0];
  *&v248[3] = *(v276 + 3);
  v249 = v4;
  v250 = v6;
  v251 = v8;
  v252 = v10;
  v253 = 0;
  return sub_10003DD84(&v245, &qword_1001FF288, &qword_100181AB0);
}

double sub_1001494B4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1001494D8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1001494FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100149544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001495A8()
{
  result = qword_100202700;
  if (!qword_100202700)
  {
    sub_10003C4E4(&qword_100202708, &qword_1001860B0);
    sub_10005C71C(&qword_100202710, &qword_100202718, qword_1001860B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202700);
  }

  return result;
}

unint64_t sub_100149690()
{
  result = qword_100202748;
  if (!qword_100202748)
  {
    sub_10003C4E4(&qword_100202738, &qword_100186160);
    sub_100149748();
    sub_10005C71C(&qword_1001FE908, &qword_1001FE910, &qword_100186170, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202748);
  }

  return result;
}

unint64_t sub_100149748()
{
  result = qword_100202750;
  if (!qword_100202750)
  {
    sub_10003C4E4(&qword_100202758, &qword_100186168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202750);
  }

  return result;
}

unint64_t sub_1001497D8()
{
  result = qword_100202770;
  if (!qword_100202770)
  {
    sub_10003C4E4(&qword_100202728, &qword_100186118);
    sub_100149890();
    sub_10005C71C(&qword_1002000B0, &qword_100200048, &qword_100186120, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202770);
  }

  return result;
}

unint64_t sub_100149890()
{
  result = qword_100202778;
  if (!qword_100202778)
  {
    sub_10003C4E4(&qword_100202780, &qword_100186190);
    sub_100149948();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8, &unk_100182850, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202778);
  }

  return result;
}

unint64_t sub_100149948()
{
  result = qword_100202788;
  if (!qword_100202788)
  {
    sub_10003C4E4(&qword_100202790, &qword_100186198);
    sub_10005C71C(&qword_100202798, &qword_1002027A0, &qword_1001861A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202788);
  }

  return result;
}

void sub_100149A00(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text);
  v10 = *(v8 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text + 8);
  *v9 = a1;
  v9[1] = a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = *(v8 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label);
  if (v9[1])
  {
    object = String.uppercased()()._object;
    v20 = String._bridgeToObjectiveC()();
    object, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v20 = 0;
  }

  [v11 setText:v20];
}

id sub_100149AA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_textSize] = 0x4028000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonTextSize] = 0x402E000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonWidthHeight] = 0x4036000000000000;
  v20 = _UISolariumEnabled();
  v21 = 8.0;
  if (v20)
  {
    v21 = 23.0;
  }

  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing] = v21;
  v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 0;
  v22 = &v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label;
  *&v5[v24] = [objc_allocWithZone(UILabel) init];
  v25 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightMedium];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v25;
  v26 = v25;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v27 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  (*(v14 + 16))(v16, v19, v13);
  *&v5[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] = UIButton.init(configuration:primaryAction:)();
  v28 = type metadata accessor for DashboardSectionHeaderView();
  v31.receiver = v5;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  (*(v14 + 8))(v19, v13);
  return v29;
}

id sub_100149E1C(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_textSize] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonTextSize] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonWidthHeight] = 0x4036000000000000;
  v14 = _UISolariumEnabled();
  v15 = 8.0;
  if (v14)
  {
    v15 = 23.0;
  }

  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing] = v15;
  v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 0;
  v16 = &v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label;
  *&v2[v18] = [objc_allocWithZone(UILabel) init];
  v19 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightMedium];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v19;
  v20 = v19;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  (*(v8 + 16))(v10, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] = UIButton.init(configuration:primaryAction:)();
  v22 = type metadata accessor for DashboardSectionHeaderView();
  v25.receiver = v2;
  v25.super_class = v22;
  v23 = objc_msgSendSuper2(&v25, "initWithCoder:", a1);

  (*(v8 + 8))(v13, v7);
  return v23;
}

id sub_10014A178()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD3A8, &unk_10017F0C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label];
  v9 = objc_opt_self();
  v10 = [v9 grayColor];
  [v8 setTextColor:v10];

  v11 = [objc_opt_self() defaultMetrics];
  v12 = [objc_opt_self() systemFontOfSize:12.0];
  v13 = [v11 scaledFontForFont:v12];

  [v8 setFont:v13];
  [v8 setAlpha:0.0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v15 = *&v1[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button];
  v16 = String._bridgeToObjectiveC()();
  [v15 setTitle:v16 forState:0];

  v17 = *&v1[v14];
  v18 = [v9 clearColor];
  [v17 setBackgroundColor:v18];

  v19 = *&v1[v14];
  UIButton.configuration.getter();
  v20 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v20 - 8) + 48))(v7, 1, v20))
  {
    sub_10014B014(v7, v4);
    UIButton.configuration.setter();

    sub_10014B084(v7);
  }

  else
  {
    UIButton.Configuration.contentInsets.setter();
    UIButton.configuration.setter();
  }

  [*&v1[v14] setAlpha:0.0];
  v21 = [*&v1[v14] layer];
  [v21 setBorderWidth:1.25];

  v22 = [*&v1[v14] layer];
  result = [v1 tintColor];
  if (result)
  {
    v24 = result;
    v25 = [result CGColor];

    [v22 setBorderColor:v25];
    [*&v1[v14] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v14] addTarget:v1 action:"buttonPressedWithSender:" forControlEvents:64];
    [*&v1[v14] addTarget:v1 action:"buttonDownWithSender:" forControlEvents:1];
    [*&v1[v14] addTarget:v1 action:"buttonDownWithSender:" forControlEvents:16];
    [*&v1[v14] addTarget:v1 action:"buttonUpWithSender:" forControlEvents:32];
    return [*&v1[v14] addTarget:v1 action:"buttonUpWithSender:" forControlEvents:256];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10014A5B4()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button];

  return [v0 addSubview:v1];
}

void sub_10014A610()
{
  v34 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180E60;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 bottomAnchor];
  v7 = [v0 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-9.0];

  *(v1 + 40) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 leadingAnchor];
  sub_1000A4A08();
  v11 = [v9 constraintEqualToAnchor:v10 constant:?];

  *(v1 + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v14 = [*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button] leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:*&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_horizontalSpacing]];

  *(v1 + 56) = v15;
  v16 = [*&v0[v13] trailingAnchor];
  v17 = [v0 trailingAnchor];
  sub_1000A4A08();
  v19 = [v16 constraintEqualToAnchor:v17 constant:-v18];

  *(v1 + 64) = v19;
  v20 = [*&v0[v13] centerYAnchor];
  v21 = [v2 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v1 + 72) = v22;
  v23 = [*&v0[v13] widthAnchor];
  v24 = [v23 constraintEqualToConstant:22.0];

  *(v1 + 80) = v24;
  v25 = [*&v0[v13] heightAnchor];
  v26 = [v25 constraintEqualToConstant:22.0];

  *(v1 + 88) = v26;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v27, v28, v29, v30, v31, v32, v33;
  [v34 activateConstraints:isa];
}

void sub_10014ACAC(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button;
  v6 = [*(v1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button) layer];
  v7 = [v6 borderColor];

  [v4 setFromValue:v7];
  [v4 setToValue:a1];
  [v4 setDuration:0.333];
  v8 = [*(v1 + v5) layer];
  [v8 setBorderColor:a1];

  v9 = [*(v1 + v5) layer];
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v4 forKey:v10];
}

id sub_10014AE60(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_label) setAlpha:1.0];
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton) == 1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);

    return [v3 setAlpha:1.0];
  }

  return result;
}

void sub_10014AEE0()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction), *(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction + 8));
  *(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_text + 8), v1, v2, v3, v4, v5, v6, v7;

  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
}

id sub_10014AF48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DashboardSectionHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10014B014(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD3A8, &unk_10017F0C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014B084(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD3A8, &unk_10017F0C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014B0EC()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction + 8];

    v1(v3);
    sub_10003C52C(v1, v2);
  }

  v4 = [v0 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];

    sub_10014ACAC(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10014B1B4()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10014B1F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014B208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014B260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

Swift::Int sub_10014B2C0(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a2]);
  }

  return Hasher._finalize()();
}

void sub_10014B338(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 >= 9)
  {

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[v2]);
  }
}

Swift::Int sub_10014B39C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[v2]);
  }

  return Hasher._finalize()();
}

unint64_t sub_10014B424()
{
  result = qword_100202818;
  if (!qword_100202818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202818);
  }

  return result;
}

BOOL sub_10014B478(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a2]);
  }

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  if (a4 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_1001862A0[a4]);
  }

  return v6 == Hasher._finalize()();
}

DARootViewController *sub_10014B558(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = a1 + 32;
    do
    {
      v5 += 8;
      swift_errorRetain();
      sub_10003C49C(&qword_100201C30, &unk_100183150);
      sub_10003E110(0, &qword_100202990, NSError_ptr);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

DARootViewController *sub_10014B66C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v19 = &_swiftEmptyArrayStorage;
    sub_1000B7D40(0, v7, 0);
    v8 = v19;
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      swift_dynamicCast();
      v19 = v8;
      v15 = *&v8->hostAppBundleIdentifier[8];
      v14 = *v8->responder;
      if (v15 >= v14 >> 1)
      {
        sub_1000B7D40((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      *&v8->hostAppBundleIdentifier[8] = v15 + 1;
      sub_100049EFC(&v18, &v8->remoteCardFilter[32 * v15]);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

DARootViewController *sub_10014B804(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1000B7D40(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10003C49C(&qword_1002018E0, &qword_100184680);
      swift_dynamicCast();
      v9 = v2;
      v6 = *&v2->hostAppBundleIdentifier[8];
      v5 = *v2->responder;
      if (v6 >= v5 >> 1)
      {
        sub_1000B7D40((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *&v2->hostAppBundleIdentifier[8] = v6 + 1;
      sub_100049EFC(&v8, &v2->remoteCardFilter[32 * v6]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

DARootViewController *sub_10014B914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1000B7D40(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *&v2->hostAppBundleIdentifier[8];
      v5 = *v2->responder;
      if (v6 >= v5 >> 1)
      {
        sub_1000B7D40((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *&v2->hostAppBundleIdentifier[8] = v6 + 1;
      sub_100049EFC(&v8, &v2->remoteCardFilter[32 * v6]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_10014BA14()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_commonHeight] = 0x4045000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_componentPadding] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_topPadding] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_topPaddingForLabel] = 0x4034000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_labelWidth] = 0x4059000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_textFieldSpacer] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureViewHeight] = 0x4069000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_fontSizeForLabels] = 0x4032000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper] = 0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100194120);
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v2, v4, v5, v6, v7, v8, v9, v10;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100194140);
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for ConsentSignatureController();
  v21 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:symbolName:contentLayout:", v3, v13, 0, 2);

  return v21;
}

void sub_10014BCAC()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001001940B0);
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setTitle:v4 forState:0];

  [v1 addTarget:v0 action:"generateConsentDocument" forControlEvents:64];
  v12 = [v0 buttonTray];
  [v12 addButton:v1];

  v13 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x80000001001940D0);
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v13 setTitle:v16 forState:0];

  [v13 addTarget:v0 action:"cancelConsent" forControlEvents:64];
  v24 = [v0 buttonTray];
  [v24 addButton:v13];
}

void sub_10014BE9C()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v2 - 8);
  v4 = &v166 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v166 - v10;
  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleTapOutside:"];
  v13 = [v1 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_38;
  }

  v14 = v13;
  v168 = v4;
  v169 = v8;
  v170 = v6;
  v171 = v5;
  [v13 addGestureRecognizer:v12];

  v15 = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel;
  v17 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel];
  *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel] = v15;
  v18 = v15;

  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100194010);
  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v20, v22, v23, v24, v25, v26, v27, v28;
  [v18 setText:v21];

  v29 = *&v1[v16];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultMetrics];
  v33 = objc_opt_self();
  v34 = [v33 systemFontOfSize:18.0 weight:UIFontWeightRegular];
  v35 = [v32 scaledFontForFont:v34];

  [v31 setFont:v35];
  v36 = *&v1[v16];
  if (!v36)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v36 sizeToFit];
  v37 = *&v1[v16];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v37 setNumberOfLines:2];
  v38 = *&v1[v16];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v38 setAdjustsFontSizeToFitWidth:1];
  if (!_UISolariumEnabled())
  {
    goto LABEL_10;
  }

  v39 = *&v1[v16];
  if (v39)
  {
    v40 = objc_opt_self();
    v41 = v39;
    v42 = [v40 secondaryLabelColor];
    [v41 setTextColor:v42];

LABEL_10:
    v43 = [v1 contentView];
    if (*&v1[v16])
    {
      v44 = v43;
      [v43 addSubview:?];

      v45 = [objc_allocWithZone(ELSConsentSignatureView) init];
      v46 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
      v47 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
      *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView] = v45;

      v48 = [v1 contentView];
      if (*&v1[v46])
      {
        v49 = v48;
        [v48 addSubview:?];

        v50 = [objc_allocWithZone(UILabel) init];
        v51 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel;
        v52 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel];
        *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel] = v50;
        v53 = v50;

        if (v53)
        {
          sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000022, 0x8000000100194030);
          v55 = v54;
          v56 = String._bridgeToObjectiveC()();
          v55, v57, v58, v59, v60, v61, v62, v63;
          [v53 setText:v56];

          v64 = *&v1[v51];
          if (v64)
          {
            v65 = v64;
            v66 = [v30 defaultMetrics];
            v67 = [v33 systemFontOfSize:18.0 weight:UIFontWeightSemibold];
            v68 = [v66 scaledFontForFont:v67];

            [v65 setFont:v68];
            v69 = *&v1[v51];
            if (v69)
            {
              [v69 sizeToFit];
              v70 = *&v1[v51];
              if (v70)
              {
                [v70 setAdjustsFontSizeToFitWidth:1];
                v71 = [v1 contentView];
                if (*&v1[v51])
                {
                  v72 = v71;
                  v167 = v12;
                  [v71 addSubview:?];

                  v73 = [objc_allocWithZone(UITextField) init];
                  v74 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
                  v75 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
                  *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField] = v73;
                  v76 = v73;

                  if (v76)
                  {
                    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
                    v78 = v77;
                    v79 = String._bridgeToObjectiveC()();
                    v78, v80, v81, v82, v83, v84, v85, v86;
                    [v76 setPlaceholder:v79];

                    v87 = *&v1[v74];
                    if (v87)
                    {
                      [v87 setKeyboardType:6];
                      v88 = *&v1[v74];
                      if (v88)
                      {
                        [v88 setReturnKeyType:4];
                        v89 = *&v1[v74];
                        if (v89)
                        {
                          [v89 setDelegate:v1];
                          v90 = [v1 contentView];
                          if (*&v1[v74])
                          {
                            v91 = v90;
                            [v90 addSubview:?];

                            v92 = [objc_allocWithZone(UILabel) init];
                            v93 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel;
                            v94 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel];
                            *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel] = v92;
                            v95 = v92;

                            if (v95)
                            {
                              sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000021, 0x8000000100194060);
                              v97 = v96;
                              v98 = String._bridgeToObjectiveC()();
                              v97, v99, v100, v101, v102, v103, v104, v105;
                              [v95 setText:v98];

                              v106 = *&v1[v93];
                              if (v106)
                              {
                                v107 = v106;
                                v108 = [v30 defaultMetrics];
                                v109 = [v33 systemFontOfSize:18.0 weight:UIFontWeightSemibold];
                                v110 = [v108 scaledFontForFont:v109];

                                [v107 setFont:v110];
                                v111 = *&v1[v93];
                                if (v111)
                                {
                                  [v111 sizeToFit];
                                  v112 = *&v1[v93];
                                  if (v112)
                                  {
                                    [v112 setAdjustsFontSizeToFitWidth:1];
                                    v113 = [v1 contentView];
                                    if (*&v1[v93])
                                    {
                                      v114 = v113;
                                      [v113 addSubview:?];

                                      v115 = [objc_allocWithZone(UITextField) init];
                                      v116 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
                                      v117 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
                                      *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField] = v115;
                                      v118 = v115;

                                      if (v118)
                                      {
                                        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
                                        v120 = v119;
                                        v121 = String._bridgeToObjectiveC()();
                                        v120, v122, v123, v124, v125, v126, v127, v128;
                                        [v118 setPlaceholder:v121];

                                        v129 = *&v1[v116];
                                        if (v129)
                                        {
                                          [v129 setKeyboardType:6];
                                          v130 = *&v1[v116];
                                          if (v130)
                                          {
                                            [v130 setReturnKeyType:9];
                                            v131 = *&v1[v116];
                                            if (v131)
                                            {
                                              [v131 setDelegate:v1];
                                              v132 = [v1 contentView];
                                              if (*&v1[v116])
                                              {
                                                v133 = v132;
                                                [v132 addSubview:?];

                                                v134 = [v30 defaultMetrics];
                                                [v33 defaultFontSize];
                                                v135 = [v33 systemFontOfSize:?];
                                                v136 = [v134 scaledFontForFont:v135];

                                                static UIButton.Configuration.plain()();
                                                *(swift_allocObject() + 16) = v136;
                                                v137 = v136;
                                                v138 = v168;
                                                UIConfigurationTextAttributesTransformer.init(_:)();
                                                v139 = type metadata accessor for UIConfigurationTextAttributesTransformer();
                                                (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
                                                UIButton.Configuration.titleTextAttributesTransformer.setter();

                                                sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
                                                v140 = v170;
                                                v141 = v171;
                                                (*(v170 + 16))(v169, v11, v171);
                                                v142 = UIButton.init(configuration:primaryAction:)();
                                                v143 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn;
                                                v144 = *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn];
                                                *&v1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn] = v142;
                                                v145 = v142;

                                                v146 = [objc_opt_self() systemBackgroundColor];
                                                [v145 setBackgroundColor:v146];

                                                v147 = *&v1[v143];
                                                if (v147)
                                                {
                                                  v148 = v147;
                                                  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100194090);
                                                  v150 = v149;
                                                  v151 = String._bridgeToObjectiveC()();
                                                  v150, v152, v153, v154, v155, v156, v157, v158;
                                                  [v148 setTitle:v151 forState:0];

                                                  v159 = *&v1[v143];
                                                  if (v159)
                                                  {
                                                    v160 = objc_allocWithZone(UIColor);
                                                    v161 = v159;
                                                    v162 = [v160 initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
                                                    [v161 setTitleColor:v162 forState:0];

                                                    v163 = *&v1[v143];
                                                    if (v163)
                                                    {
                                                      [v163 addTarget:v1 action:"clearSignature" forControlEvents:64];
                                                      v164 = [v1 contentView];
                                                      if (*&v1[v143])
                                                      {
                                                        v165 = v164;
                                                        [v164 addSubview:?];

                                                        (*(v140 + 8))(v11, v141);
                                                        return;
                                                      }

                                                      goto LABEL_68;
                                                    }

LABEL_67:
                                                    __break(1u);
LABEL_68:
                                                    __break(1u);
                                                    goto LABEL_69;
                                                  }

LABEL_66:
                                                  __break(1u);
                                                  goto LABEL_67;
                                                }

LABEL_65:
                                                __break(1u);
                                                goto LABEL_66;
                                              }

LABEL_64:
                                              __break(1u);
                                              goto LABEL_65;
                                            }

LABEL_63:
                                            __break(1u);
                                            goto LABEL_64;
                                          }

LABEL_62:
                                          __break(1u);
                                          goto LABEL_63;
                                        }

LABEL_61:
                                        __break(1u);
                                        goto LABEL_62;
                                      }

LABEL_60:
                                      __break(1u);
                                      goto LABEL_61;
                                    }

LABEL_59:
                                    __break(1u);
                                    goto LABEL_60;
                                  }

LABEL_58:
                                  __break(1u);
                                  goto LABEL_59;
                                }

LABEL_57:
                                __break(1u);
                                goto LABEL_58;
                              }

LABEL_56:
                              __break(1u);
                              goto LABEL_57;
                            }

LABEL_55:
                            __break(1u);
                            goto LABEL_56;
                          }

LABEL_54:
                          __break(1u);
                          goto LABEL_55;
                        }

LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }

LABEL_52:
                      __break(1u);
                      goto LABEL_53;
                    }

LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }

LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_69:
  __break(1u);
}

void sub_10014CB74()
{
  v1 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameLabel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = v0;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel;
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameLabel];
  if (!v7)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
  if (!v9)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v199 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel;
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureLabel];
  if (!v10)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v198 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  v11 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (!v11)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn;
  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_clearSignBtn];
  if (!v13)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v200 = v8;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017ED60;
  v15 = *&v3[v1];
  if (!v15)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = [v15 leadingAnchor];
  v17 = [v3 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v14 + 32) = v19;
  v20 = *&v3[v1];
  if (!v20)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v21 = [v20 topAnchor];
  v22 = [v3 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:20.0];
  *(v14 + 40) = v24;
  v25 = *&v3[v1];
  if (!v25)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v26 = [v25 widthAnchor];
  v27 = [v26 constraintEqualToConstant:100.0];

  *(v14 + 48) = v27;
  v28 = *&v3[v1];
  if (!v28)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v29 = objc_opt_self();
  v30 = [v28 heightAnchor];
  v31 = [v30 constraintEqualToConstant:42.0];

  *(v14 + 56) = v31;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v33, v34, v35, v36, v37, v38, v39;
  [v29 activateConstraints:isa];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10017ED60;
  v41 = *&v3[v4];
  if (!v41)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v197 = v12;
  v42 = [v41 topAnchor];
  v43 = *&v3[v1];
  if (!v43)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v44 = [v43 topAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];

  *(v40 + 32) = v45;
  v46 = *&v3[v4];
  if (!v46)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v47 = [v46 leadingAnchor];
  v48 = *&v3[v1];
  if (!v48)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v49 = [v48 trailingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:30.0];

  *(v40 + 40) = v50;
  v51 = *&v3[v4];
  if (!v51)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v52 = [v51 trailingAnchor];
  v53 = [v3 contentView];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor:v54];
  *(v40 + 48) = v55;
  v56 = *&v3[v4];
  if (!v56)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v57 = [v56 heightAnchor];
  v58 = [v57 constraintEqualToConstant:42.0];

  *(v40 + 56) = v58;
  v59 = Array._bridgeToObjectiveC()().super.isa;
  v40, v60, v61, v62, v63, v64, v65, v66;
  [v29 activateConstraints:v59];

  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_10017ED60;
  v68 = *&v3[v6];
  if (!v68)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v69 = [v68 leadingAnchor];
  v70 = [v3 contentView];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v67 + 32) = v72;
  v73 = *&v3[v6];
  if (!v73)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v74 = [v73 topAnchor];
  v75 = *&v3[v1];
  if (!v75)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v76 = [v75 bottomAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:15.0];

  *(v67 + 40) = v77;
  v78 = *&v3[v6];
  if (!v78)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v79 = [v78 widthAnchor];
  v80 = [v79 constraintEqualToConstant:100.0];

  *(v67 + 48) = v80;
  v81 = *&v3[v6];
  if (!v81)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v82 = [v81 heightAnchor];
  v83 = [v82 constraintEqualToConstant:42.0];

  *(v67 + 56) = v83;
  v84 = Array._bridgeToObjectiveC()().super.isa;
  v67, v85, v86, v87, v88, v89, v90, v91;
  [v29 activateConstraints:v84];

  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_10017ED60;
  v93 = *&v3[v200];
  if (!v93)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v94 = [v93 topAnchor];
  v95 = *&v3[v6];
  if (!v95)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v96 = [v95 topAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];

  *(v92 + 32) = v97;
  v98 = *&v3[v200];
  if (!v98)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v99 = [v98 leadingAnchor];
  v100 = *&v3[v6];
  if (!v100)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v101 = [v100 trailingAnchor];
  v102 = [v99 constraintEqualToAnchor:v101 constant:30.0];

  *(v92 + 40) = v102;
  v103 = *&v3[v200];
  if (!v103)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v104 = [v103 trailingAnchor];
  v105 = [v3 contentView];
  v106 = [v105 trailingAnchor];

  v107 = [v104 constraintEqualToAnchor:v106];
  *(v92 + 48) = v107;
  v108 = *&v3[v200];
  if (!v108)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v109 = [v108 heightAnchor];
  v110 = [v109 constraintEqualToConstant:42.0];

  *(v92 + 56) = v110;
  v111 = Array._bridgeToObjectiveC()().super.isa;
  v92, v112, v113, v114, v115, v116, v117, v118;
  [v29 activateConstraints:v111];

  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_10017ED60;
  v120 = *&v3[v199];
  if (!v120)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v121 = [v120 topAnchor];
  v122 = *&v3[v6];
  if (!v122)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v123 = [v122 bottomAnchor];
  v124 = [v121 constraintEqualToAnchor:v123 constant:30.0];

  *(v119 + 32) = v124;
  v125 = *&v3[v199];
  if (!v125)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v126 = [v125 leftAnchor];
  v127 = [v3 contentView];
  v128 = [v127 leftAnchor];

  v129 = [v126 constraintEqualToAnchor:v128];
  *(v119 + 40) = v129;
  v130 = *&v3[v199];
  if (!v130)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v131 = [v130 rightAnchor];
  v132 = [v3 contentView];
  v133 = [v132 rightAnchor];

  v134 = [v131 constraintEqualToAnchor:v133];
  *(v119 + 48) = v134;
  v135 = *&v3[v199];
  if (!v135)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v136 = [v135 heightAnchor];
  v137 = [v136 constraintEqualToConstant:42.0];

  *(v119 + 56) = v137;
  v138 = Array._bridgeToObjectiveC()().super.isa;
  v119, v139, v140, v141, v142, v143, v144, v145;
  [v29 activateConstraints:v138];

  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_10017ED90;
  v147 = *&v3[v198];
  if (!v147)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v148 = [v147 topAnchor];
  v149 = *&v3[v199];
  if (!v149)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v150 = [v149 bottomAnchor];
  v151 = [v148 constraintEqualToAnchor:v150 constant:20.0];

  *(v146 + 32) = v151;
  v152 = *&v3[v198];
  if (!v152)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v153 = [v152 heightAnchor];
  v154 = [v153 constraintEqualToConstant:200.0];

  *(v146 + 40) = v154;
  v155 = sub_10014FCF8(&off_1001BE1B0);
  v156 = [objc_opt_self() currentDevice];
  v157 = [v156 userInterfaceIdiom];

  LOBYTE(v156) = sub_1000743A4(v157, v155);
  v155, v158, v159, v160, v161, v162, v163, v164;
  if (v156)
  {
    v165 = sub_10014DA40(v3);
  }

  else
  {
    v165 = sub_10014DBC4(v3);
  }

  sub_100074470(v165);
  v166 = Array._bridgeToObjectiveC()().super.isa;
  v146, v167, v168, v169, v170, v171, v172, v173;
  [v29 activateConstraints:v166];

  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_10017ED80;
  v175 = *&v3[v197];
  if (!v175)
  {
    goto LABEL_84;
  }

  v176 = [v175 centerXAnchor];
  v177 = *&v3[v198];
  if (!v177)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v178 = [v177 centerXAnchor];
  v179 = [v176 constraintEqualToAnchor:v178];

  *(v174 + 32) = v179;
  v180 = *&v3[v197];
  if (!v180)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v181 = [v180 topAnchor];
  v182 = *&v3[v198];
  if (!v182)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v183 = [v182 bottomAnchor];
  v184 = [v181 constraintEqualToAnchor:v183 constant:10.0];

  *(v174 + 40) = v184;
  v185 = *&v3[v197];
  if (!v185)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v186 = [v185 bottomAnchor];
  v187 = [v3 contentView];
  v188 = [v187 bottomAnchor];

  v189 = [v186 constraintEqualToAnchor:v188];
  *(v174 + 48) = v189;
  v201 = Array._bridgeToObjectiveC()().super.isa;
  v174, v190, v191, v192, v193, v194, v195, v196;
  [v29 activateConstraints:v201];
}

void *sub_10014DA40(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (result)
  {
    v5 = [result centerXAnchor];
    v6 = [a1 contentView];
    v7 = [v6 centerXAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v2 + 32) = v8;
    result = *&a1[v3];
    if (result)
    {
      v9 = [result widthAnchor];
      v10 = [a1 contentView];
      v11 = [v10 widthAnchor];

      v12 = [v9 constraintEqualToAnchor:v11 multiplier:0.666666667];
      *(v2 + 40) = v12;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10014DBC4(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  result = *&a1[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
  if (result)
  {
    v5 = [result leftAnchor];
    v6 = [a1 contentView];
    v7 = [v6 leftAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v2 + 32) = v8;
    result = *&a1[v3];
    if (result)
    {
      v9 = [result rightAnchor];
      v10 = [a1 contentView];
      v11 = [v10 rightAnchor];

      v12 = [v9 constraintEqualToAnchor:v11];
      *(v2 + 40) = v12;
      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10014DD58()
{
  v1 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField);
  if (!v2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v7, v8, v9, v10, v11, v12, v13, v14;
    v15 = (v7 >> 56) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v15 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      v16 = *(v0 + v1);
      if (!v16)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = v16;
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
      v19 = v18;
      sub_10003C49C(&qword_1002020A8, &qword_1001855E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      *(inited + 32) = NSForegroundColorAttributeName;
      v21 = objc_opt_self();
      v22 = NSForegroundColorAttributeName;
      v23 = [v21 redColor];
      *(inited + 64) = sub_10003E110(0, &qword_100202970, UIColor_ptr);
      *(inited + 40) = v23;
      v24 = sub_1000D6020(inited);
      swift_setDeallocating();
      sub_10014FEF0(inited + 32);
      v25 = objc_allocWithZone(NSAttributedString);
      v26 = String._bridgeToObjectiveC()();
      v19, v27, v28, v29, v30, v31, v32, v33;
      type metadata accessor for Key(0);
      sub_10014FF58(&qword_1001FCCE0, type metadata accessor for Key, &unk_10017E92C);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v24, v35, v36, v37, v38, v39, v40, v41;
      v42 = [v25 initWithString:v26 attributes:isa];

      [v17 setAttributedPlaceholder:v42];
    }
  }

  v43 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  v44 = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField);
  if (!v44)
  {
    goto LABEL_22;
  }

  v45 = [v44 text];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = (v49 >> 56) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v57 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57)
    {
      v58 = *(v0 + v43);
      if (!v58)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v59 = v58;
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100193FE0);
      v61 = v60;
      sub_10003C49C(&qword_1002020A8, &qword_1001855E0);
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_10017EC00;
      *(v62 + 32) = NSForegroundColorAttributeName;
      v63 = objc_opt_self();
      v64 = NSForegroundColorAttributeName;
      v65 = [v63 redColor];
      *(v62 + 64) = sub_10003E110(0, &qword_100202970, UIColor_ptr);
      *(v62 + 40) = v65;
      v66 = sub_1000D6020(v62);
      swift_setDeallocating();
      sub_10014FEF0(v62 + 32);
      v67 = objc_allocWithZone(NSAttributedString);
      v68 = String._bridgeToObjectiveC()();
      v61, v69, v70, v71, v72, v73, v74, v75;
      type metadata accessor for Key(0);
      sub_10014FF58(&qword_1001FCCE0, type metadata accessor for Key, &unk_10017E92C);
      v76 = Dictionary._bridgeToObjectiveC()().super.isa;
      v66, v77, v78, v79, v80, v81, v82, v83;
      v84 = [v67 initWithString:v68 attributes:v76];

      [v59 setAttributedPlaceholder:v84];
    }
  }

  v85 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView;
  v86 = *(v0 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView);
  if (!v86)
  {
    goto LABEL_23;
  }

  if ([v86 signatureExists])
  {
    return;
  }

  v87 = *(v0 + v85);
  if (!v87)
  {
    goto LABEL_24;
  }

  v88 = [v87 layer];
  v89 = [objc_opt_self() redColor];
  v90 = [v89 CGColor];

  [v88 setBorderColor:v90];
}

void sub_10014E2C8(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 0);
  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
    }
  }
}

void sub_10014E440()
{
  sub_10014DD58();
  if (v1)
  {
    v2 = sub_10014E85C();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = *&v0[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField];
    if (v4)
    {
      v5 = v3;
      v6 = v0;
      v7 = [v4 text];
      if (!v7)
      {
LABEL_14:
        v2, v8, v9, v10, v11, v12, v13, v14;
        v98 = static os_log_type_t.fault.getter();
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v99 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v99, "Consent forms were advanced without saving consent data", 55, 2, &_swiftEmptyArrayStorage);

        sub_10014EA98(v6);

        return;
      }

      v15 = v7;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = *&v6[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField];
      if (v19)
      {
        v20 = [v19 text];
        if (!v20)
        {
LABEL_13:
          v18, v21, v22, v23, v24, v25, v26, v27;
          goto LABEL_14;
        }

        v28 = v20;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = *&v6[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_signatureView];
        if (v32)
        {
          v33 = [v32 signatureImage];
          [v33 copy];

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10003E110(0, &unk_100202950, UIImage_ptr);
          if (swift_dynamicCast())
          {
            v100 = v107;
            v41 = sub_10014B914(v2);
            v42 = objc_allocWithZone(DADocumentHelper);
            isa = Array._bridgeToObjectiveC()().super.isa;
            v41, v44, v45, v46, v47, v48, v49, v50;
            v51 = [v42 initWithConsentHandles:isa];

            v52 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper;
            v53 = *&v6[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper];
            *&v6[OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_documentHelper] = v51;
            v54 = v51;

            if (v54)
            {
              aBlock = v16;
              v102 = v18;

              v55._countAndFlagsBits = 32;
              v55._object = 0xE100000000000000;
              String.append(_:)(v55);

              v56._countAndFlagsBits = v29;
              v56._object = v31;
              String.append(_:)(v56);
              v18, v57, v58, v59, v60, v61, v62, v63;
              v64 = String._bridgeToObjectiveC()();
              v18, v65, v66, v67, v68, v69, v70, v71;
              [v54 setFullName:v64];

              v72 = *&v6[v52];
              if (v72)
              {
                [v72 setImageSignature:v100];
                v73 = *&v6[v52];
                if (v73)
                {
                  v74 = v73;
                  v31, v75, v76, v77, v78, v79, v80, v81;
                  v18, v82, v83, v84, v85, v86, v87, v88;
                  v2, v89, v90, v91, v92, v93, v94, v95;
                  v96 = swift_allocObject();
                  *(v96 + 16) = sub_10014FE98;
                  *(v96 + 24) = v5;
                  v105 = sub_10003D960;
                  v106 = v96;
                  aBlock = _NSConcreteStackBlock;
                  v102 = 1107296256;
                  v103 = sub_100031FA8;
                  v104 = &unk_1001C94C8;
                  v97 = _Block_copy(&aBlock);

                  [v74 saveConsentDocument:v97];
                  _Block_release(v97);

                  return;
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v31, v34, v35, v36, v37, v38, v39, v40;
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

DARootViewController *sub_10014E85C()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consentHandles];
  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  sub_10003C49C(&unk_100202960, &qword_100182490);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v4 + 16);
  if (!v12)
  {
LABEL_10:
    v4, v5, v6, v7, v8, v9, v10, v11;
    return v3;
  }

  v37 = &_swiftEmptyArrayStorage;
  sub_1000B7CBC(0, v12, 0);
  v13 = 0;
  v3 = &_swiftEmptyArrayStorage;
  while (v13 < *(v4 + 16))
  {
    v14 = *(v4 + 8 * v13 + 32);

    AnyHashable.init<A>(_:)();
    if (!*(v14 + 16))
    {
      goto LABEL_13;
    }

    v15 = sub_100064B74(v34);
    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_10003E010(*(v14 + 56) + 32 * v15, v35);
    sub_10003DB48(v34);
    sub_100049EFC(v35, &v36);
    swift_dynamicCast();
    v17 = String.uppercased()();
    0xE600000000000000, v17._object, v18, v19, v20, v21, v22, v23;
    v14, v24, v25, v26, v27, v28, v29, v30;
    v37 = v3;
    v32 = *&v3->hostAppBundleIdentifier[8];
    v31 = *v3->responder;
    if (v32 >= v31 >> 1)
    {
      sub_1000B7CBC((v31 > 1), v32 + 1, 1);
      v3 = v37;
    }

    ++v13;
    *&v3->hostAppBundleIdentifier[8] = v32 + 1;
    *&v3->remoteCardFilter[16 * v32] = v17;
    if (v12 == v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  result = sub_10003DB48(v34);
  __break(1u);
  return result;
}

void sub_10014EA98(void *a1)
{
  v20 = [a1 parentViewController];
  if (!v20)
  {
    return;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = [v1 viewControllers];

  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v11 = *(v3 + 32);
    }

    v20 = v11;
    v3, v12, v13, v14, v15, v16, v17, v18;
    type metadata accessor for EnhancedLoggingConsentViewController();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      sub_10014EC64(v19);
    }

LABEL_10:

    return;
  }

  v3, v4, v5, v6, v7, v8, v9, v10;
}

double sub_10014EC64(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter() && (v7 = Session.requiresDeviceSelection.getter(), , (v7 & 1) != 0))
  {
    v8 = objc_allocWithZone(type metadata accessor for DeviceSelector());
    v17 = sub_1000BDA58(2);
    [a1 showViewController:v17 sender:v1];
    v9 = v17;
  }

  else
  {
    v11 = [v1 buttonTray];
    [v11 showButtonsBusy];

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v2;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_1000539D8(0, 0, v6, &unk_100186370, v15);
  }

  return result;
}

uint64_t sub_10014EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for Session.CollectOptions();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10014EF70, v7, v6);
}

uint64_t sub_10014EF70(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v2 = SessionManager.currentSession.getter();
  v1[10] = v2;
  if (v2)
  {
    v1[2] = &_swiftEmptyArrayStorage;
    sub_10014FF58(&qword_100202930, &type metadata accessor for Session.CollectOptions, &protocol conformance descriptor for Session.CollectOptions);
    sub_10003C49C(&unk_1001FFE30, &unk_100181F90);
    sub_10014FE34();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v3 = swift_task_alloc();
    v1[11] = v3;
    *v3 = v1;
    v3[1] = sub_10014F1E8;
    v4 = v1[6];

    return Session.startCollectingFromLocalDevice(options:)(v4);
  }

  else
  {

    sub_10008CDB0();
    v5 = swift_allocError();
    swift_willThrow();
    v6 = v1[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = v6;
    v9 = sub_1000B99C8(v5, sub_1000CA504, v7);

    [v8 presentViewController:v9 animated:1 completion:0];

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_10014F1E8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  v3 = v2[9];
  v4 = v2[8];
  if (v0)
  {
    v5 = sub_10014F464;
  }

  else
  {
    v5 = sub_10014F370;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10014F370()
{
  v1 = *(v0 + 24);

  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);

      goto LABEL_7;
    }
  }

LABEL_7:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10014F464()
{

  v1 = v0[12];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  v5 = sub_1000B99C8(v1, sub_1000CA504, v3);

  [v4 presentViewController:v5 animated:1 completion:0];

  v6 = v0[1];

  return v6();
}

id sub_10014F5C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConsentSignatureController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10014F6C4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField;
  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_lastNameTextField);
  if (v5)
  {
    sub_10003E110(0, &qword_100202928, UITextField_ptr);
    v6 = a1;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      [v6 resignFirstResponder];
      return 1;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC11Diagnostics26ConsentSignatureController_firstNameTextField);
  if (!v9)
  {
    return 1;
  }

  sub_10003E110(0, &qword_100202928, UITextField_ptr);
  v10 = a1;
  v11 = v9;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  result = *(v2 + v4);
  if (result)
  {
    [result becomeFirstResponder];
    return 1;
  }

  __break(1u);
  return result;
}

void sub_10014F820(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v1 view];
  [a1 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 hitTest:0 withEvent:{v7, v9}];
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();

    if (v11)
    {
      return;
    }
  }

  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 endEditing:1];
}

uint64_t sub_10014F9D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_10014FA18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10014EE7C(a1, v4, v5, v6);
}

uint64_t sub_10014FACC()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10014FB04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002029A8, &qword_1001863B0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v65 = a1 + 32;
    v6 = v1;
    do
    {
      v21 = *(v65 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
      Hasher.init(_seed:)();
      v66 = v21;
      String.hash(into:)();
      v24 = Hasher._finalize()();
      v23, v25, v26, v27, v28, v29, v30, v31;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13;
          v44, v14, v15, v16, v17, v18, v19, v20;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40, v47, v48, v49, v50, v51, v52, v53;
        v44, v54, v55, v56, v57, v58, v59, v60;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v66;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

Swift::Int sub_10014FCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100202978, &unk_100186390);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10014FE34()
{
  result = qword_100202940;
  if (!qword_100202940)
  {
    sub_10003C4E4(&unk_1001FFE30, &unk_100181F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202940);
  }

  return result;
}

uint64_t sub_10014FEA0()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_10014FED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10014FEF0(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100200718, &unk_100186380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014FF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10014FFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&unk_100202998, &unk_1001863A0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v62 = v1;
    v63 = a1 + 32;
    while (1)
    {
      v13 = *(v63 + v4);
      v64 = v4 + 1;
      Hasher.init(_seed:)();
      v14 = 0xEF6C6562614C6275;
      if (v13 != 4)
      {
        v14 = 0xEB000000006C6562;
      }

      v15 = 0x8000000100188950;
      v16 = 0x8000000100188930;
      if (v13 != 3)
      {
        v15 = v14;
      }

      if (v13 == 1)
      {
        v16 = 0x8000000100188910;
      }

      if (!v13)
      {
        v16 = 0x80000001001888F0;
      }

      if (v13 <= 2)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      String.hash(into:)();
      v17, v18, v19, v20, v21, v22, v23, v24;
      v25 = Hasher._finalize()();
      v32 = ~(-1 << *(v3 + 32));
      v33 = v25 & v32;
      v34 = (v25 & v32) >> 6;
      v35 = *(v5 + 8 * v34);
      v36 = 1 << (v25 & v32);
      if ((v36 & v35) != 0)
      {
        do
        {
          v37 = *(*(v3 + 48) + v33);
          if (v37 > 2)
          {
            if (v37 != 3)
            {
              v38 = 0x487972616D697270;
              v39 = 0xEF6C6562614C6275;
              if (v37 != 4)
              {
                v38 = 0x614C72656B6E6974;
                v39 = 0xEB000000006C6562;
                if (v13 > 2)
                {
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              goto LABEL_32;
            }

            v38 = 0xD00000000000001BLL;
            v39 = 0x8000000100188950;
            if (v13 > 2)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (!*(*(v3 + 48) + v33))
            {
              v38 = 0xD000000000000010;
              v39 = 0x80000001001888F0;
LABEL_32:
              if (v13 > 2)
              {
                goto LABEL_43;
              }

              goto LABEL_33;
            }

            if (v37 == 1)
            {
              v38 = 0xD000000000000010;
            }

            else
            {
              v38 = 0xD000000000000011;
            }

            if (v37 == 1)
            {
              v39 = 0x8000000100188910;
            }

            else
            {
              v39 = 0x8000000100188930;
            }

            if (v13 > 2)
            {
LABEL_43:
              v42 = 0x614C72656B6E6974;
              if (v13 == 4)
              {
                v42 = 0x487972616D697270;
              }

              v43 = 0xEF6C6562614C6275;
              if (v13 != 4)
              {
                v43 = 0xEB000000006C6562;
              }

              if (v13 == 3)
              {
                v40 = 0xD00000000000001BLL;
              }

              else
              {
                v40 = v42;
              }

              if (v13 == 3)
              {
                v41 = 0x8000000100188950;
              }

              else
              {
                v41 = v43;
              }

              if (v38 != v40)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }
          }

LABEL_33:
          if (v13)
          {
            if (v13 == 1)
            {
              v40 = 0xD000000000000010;
            }

            else
            {
              v40 = 0xD000000000000011;
            }

            if (v13 == 1)
            {
              v41 = 0x8000000100188910;
            }

            else
            {
              v41 = 0x8000000100188930;
            }

            if (v38 != v40)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v40 = 0xD000000000000010;
            v41 = 0x80000001001888F0;
            if (v38 != 0xD000000000000010)
            {
              goto LABEL_57;
            }
          }

LABEL_56:
          if (v39 == v41)
          {
            v39, v26, v40, v27, v28, v29, v30, v31;
            v41, v6, v7, v8, v9, v10, v11, v12;
            goto LABEL_4;
          }

LABEL_57:
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v39, v45, v46, v47, v48, v49, v50, v51;
          v41, v52, v53, v54, v55, v56, v57, v58;
          if (v44)
          {
            goto LABEL_4;
          }

          v33 = (v33 + 1) & v32;
          v34 = v33 >> 6;
          v35 = *(v5 + 8 * (v33 >> 6));
          v36 = 1 << v33;
        }

        while ((v35 & (1 << v33)) != 0);
      }

      *(v5 + 8 * v34) = v35 | v36;
      *(*(v3 + 48) + v33) = v13;
      v59 = *(v3 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        break;
      }

      *(v3 + 16) = v61;
LABEL_4:
      v4 = v64;
      if (v64 == v62)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_100150354(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10003C49C(&unk_1002029B0, &unk_1001863B8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10003E110(0, &qword_1002012D0, _UIPhysicalButtonConfiguration_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10003E110(0, &qword_1002012D0, _UIPhysicalButtonConfiguration_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_100150644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&unk_100202980, &qword_100184810);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1000681EC(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1000681EC(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10003DB48(v18);
        if (v11)
        {
          sub_10003DB48(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1001507AC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for CardViewCell();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_100064FA0(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

unint64_t sub_100150864(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100150974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TargetDevice.DeviceType() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1001572DC(&qword_1001FDEB0, &type metadata accessor for TargetDevice.DeviceType, &protocol conformance descriptor for TargetDevice.DeviceType);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_100150A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_22:
    v45 = a2 & 0xFFFFFFFFFFFFFF8;
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = a2 & 0xFFFFFFFFFFFFFF8;
    v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v47 == v3)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v45 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a2 + 8 * v3 + 32);
    }

    v5 = [*(v4 + 40) serialNumber];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [*(a1 + 40) serialNumber];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8, v15, v16, v17, v18, v19, v20, v21;
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  v8, v31, v32, v33, v34, v35, v36, v37;
  v12, v38, v39, v40, v41, v42, v43, v44;
  return v3;
}

void sub_100150C44()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CardState();
    sub_1001572DC(&qword_1001FE6B0, type metadata accessor for CardState, &unk_1001805F0);
    Set.Iterator.init(_cocoa:)();
    v2 = v28;
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CardState(), swift_dynamicCast(), v15 = v27, v13 = v5, v14 = v6, !v27))
    {
LABEL_21:
      sub_10004A320(v2);
      return;
    }

LABEL_19:
    if (*(v15 + 16) == 1)
    {
      v16 = [*(v15 + 40) serialNumber];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      sub_100102FA4(v17, v19, 0);

      v19, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_21;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100150EDC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

NSString sub_100150F74()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A650 = result;
  return result;
}

NSString sub_100150FAC()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A658 = result;
  return result;
}

NSString sub_100150FE4()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A660 = result;
  return result;
}

void sub_10015101C(DARootViewController *a1, DARootViewController *a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  v9, v10, v11, v12, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly);
  *(v7 + 16) = v24;
  swift_endAccess();
  v25 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();
  v26 = *(v3 + v25);
  v56 = &_swiftEmptyArrayStorage;

  sub_100073A18(v27, a1, a2, v24, &v56);
  v26, v28, v29, v30, v31, v32, v33, v34;
  a2, v35, v36, v37, v38, v39, v40, v41;
  a1, v42, v43, v44, v45, v46, v47, v48;
  v56, v49, v50, v51, v52, v53, v54, v55;
}

void sub_100151130()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly);
  v2 = v0 + OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter;
  swift_beginAccess();
  *(v2 + 16) = v1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v66 = &_swiftEmptyArrayStorage;

  sub_100073A18(v6, v3, v4, v1, &v66);
  v6, v7, v8, v9, v10, v11, v12, v13;
  v4, v14, v15, v16, v17, v18, v19, v20;
  v3, v21, v22, v23, v24, v25, v26, v27;
  v66, v28, v29, v30, v31, v32, v33, v34;
  v35 = *v2;
  v36 = *(v2 + 8);
  LODWORD(v2) = *(v2 + 16);
  v37 = *(v0 + v5);
  v66 = &_swiftEmptyArrayStorage;

  sub_100073A18(v37, v35, v36, v2, &v66);
  v37, v38, v39, v40, v41, v42, v43, v44;
  v36, v45, v46, v47, v48, v49, v50, v51;
  v35, v52, v53, v54, v55, v56, v57, v58;
  v66, v59, v60, v61, v62, v63, v64, v65;
}

void sub_10015127C()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1001FC850 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A650;
  sub_10003C49C(&qword_1002018D0, &qword_100180840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  AnyHashable.init<A>(_:)();
  v5 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_100068EB8(), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    swift_endAccess();
    v10 = 0;
  }

  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v10;
  v11 = sub_1000D57AC(inited);
  swift_setDeallocating();
  sub_10003DD84(inited + 32, &qword_1001FE6C0, &unk_100180660);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v2 postNotificationName:v3 object:v1 userInfo:{isa, 0xD000000000000012, 0x800000010018BB50}];
}

uint64_t sub_10015147C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16) && (v4 = sub_100068EB8(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + v2);
  if (*(v8 + 16))
  {
    v9 = sub_100068EB8();
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      if (v11 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
        v13 = __OFADD__(v7, v20);
        v7 += v20;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = __OFADD__(v7, v12);
        v7 += v12;
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

LABEL_12:
  v14 = *(v1 + v2);
  if (!*(v14 + 16))
  {
    return v7;
  }

  v15 = sub_100068EB8();
  if ((v16 & 1) == 0)
  {
    return v7;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = __OFADD__(v7, v18);
    result = v7 + v18;
    if (!v13)
    {
      return result;
    }

    goto LABEL_17;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  v13 = __OFADD__(v7, v21);
  result = v7 + v21;
  if (v13)
  {
LABEL_17:
    __break(1u);
    return v7;
  }

  return result;
}

void sub_1001515E0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) & 1) == 0 && (a1)
  {
    v2 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
    v3 = swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      sub_10015400C(v3, v4);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1001FC858 != -1)
      {
        swift_once();
      }

      v6 = qword_10020A658;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      strcpy(v26, "cardActionsKey");
      HIBYTE(v26[1]) = -18;
      AnyHashable.init<A>(_:)();
      v8 = *(v1 + v2);
      *(inited + 96) = sub_10003C49C(&qword_1001FEAC0, &qword_100180D38);
      *(inited + 72) = v8;

      v9 = sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_10003DD84(inited + 32, &qword_1001FE6C0, &unk_100180660);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v9, v11, v12, v13, v14, v15, v16, v17;
      [v5 postNotificationName:v6 object:v1 userInfo:{isa, v26[0], v26[1]}];

      v18 = *(v1 + v2);
      *(v1 + v2) = &_swiftEmptyArrayStorage;
      v18, v19, v20, v21, v22, v23, v24, v25;
    }
  }
}

char *sub_1001517D8()
{
  v1 = &v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter];
  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10020A3A8 + 24);
  v3 = *(qword_10020A3A8 + 32);
  *v1 = *(qword_10020A3A8 + 16);
  *(v1 + 1) = v2;
  v1[16] = v3;
  v0[OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  sub_10003C49C(&qword_100202A90, &qword_1001863F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EF10;
  *(inited + 32) = 0;
  *(inited + 40) = &_swiftEmptyArrayStorage;
  *(inited + 48) = 1;
  *(inited + 56) = &_swiftEmptyArrayStorage;
  *(inited + 64) = 2;
  *(inited + 72) = &_swiftEmptyArrayStorage;
  v6 = sub_1000D6270(inited);
  swift_setDeallocating();

  sub_10003C49C(&unk_100202A98, &qword_100186400);
  swift_arrayDestroy();
  *&v0[v4] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_cardCells] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue] = 0;
  v49.receiver = v0;
  v49.super_class = type metadata accessor for CardManager();
  super_class = v49.super_class;
  v8 = objc_msgSendSuper2(&v49, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  if (qword_1001FC810 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A578;
  v40 = OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager;
  v13 = *&v10[OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager];
  v14 = objc_opt_self();
  v15 = v13;
  v42 = v14;
  v16 = [v14 mainQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v47 = sub_1001572C4;
  v48 = v17;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C96A8;
  v18 = _Block_copy(&aBlock);
  v19 = v10;

  v20 = [v11 addObserverForName:v12 object:v15 queue:v16 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  v21 = [v9 defaultCenter];
  if (qword_1001FC818 != -1)
  {
    swift_once();
  }

  v22 = qword_10020A580;
  v23 = *&v10[v40];
  v24 = [v42 mainQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v47 = sub_1001572CC;
  v48 = v25;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C96F8;
  v26 = _Block_copy(&aBlock);

  v27 = [v21 addObserverForName:v22 object:v23 queue:v24 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  v28 = [v9 defaultCenter];
  v29 = v10;
  if (qword_1001FC710 != -1)
  {
    swift_once();
  }

  v30 = qword_10020A3B0;
  v31 = [v42 mainQueue];
  v32 = swift_allocObject();
  *(v32 + 16) = v19;
  v47 = sub_1001572D4;
  v48 = v32;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C9748;
  v33 = _Block_copy(&aBlock);
  v34 = v19;

  v35 = [v28 addObserverForName:v30 object:0 queue:v31 usingBlock:v33];
  _Block_release(v33);
  swift_unknownObjectRelease();

  v36 = *&v29[v40];
  v46 = super_class;
  v47 = &off_1001C9518;
  v37 = v36;

  aBlock = v34;
  v38 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001196C4(&aBlock, v37 + v38, &qword_100201810, &unk_100181730);
  swift_endAccess();

  return v34;
}

void sub_100151E38(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    strcpy(v20, "deviceStateKey");
    HIBYTE(v20[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v10 = sub_100064B74(v21), (v3 & 1) != 0))
    {
      sub_10003E010(*(v2 + 56) + 32 * v10, v22);
      sub_10003DB48(v21);
      v2, v11, v12, v13, v14, v15, v16, v17;
      sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      if (swift_dynamicCast())
      {
        type metadata accessor for CardState();
        swift_allocObject();
        v18 = v20[0];
        v19 = sub_100073C08(v18);

        sub_100152560(v19);
      }
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
      sub_10003DB48(v21);
    }
  }
}

void sub_100151F84(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    strcpy(v30, "deviceStateKey");
    HIBYTE(v30[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v10 = sub_100064B74(v31), (v3 & 1) != 0))
    {
      sub_10003E010(*(v2 + 56) + 32 * v10, v32);
      sub_10003DB48(v31);
      v2, v11, v12, v13, v14, v15, v16, v17;
      sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      if (swift_dynamicCast())
      {
        v18 = [v30[0] serialNumber];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_100154768(v19, v21);
        v21, v23, v24, v25, v26, v27, v28, v29;
        if (v22)
        {
          sub_1001528CC(v22);
        }
      }
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
      sub_10003DB48(v31);
    }
  }
}

void sub_1001520F8()
{
  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10020A3A8 + 16);
  v1 = *(qword_10020A3A8 + 24);
  v2 = *(qword_10020A3A8 + 32);

  sub_10015101C(v0, v1, v2);
}

void sub_1001521A4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for IndexPath();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v16 = [*(a1 + 40) serialNumber];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_100154768(v17, v19);
  v19, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    sub_10007287C(a1);
    a1 = v20;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }
  }

  v28 = sub_1001544D8(a1);
  if (v28 == 3)
  {
    goto LABEL_9;
  }

  v29 = 1 << *(a1 + 32);
  if ((v29 & 0x1FE0) != 0)
  {
    if (!v28)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v29 & 0xE) != 0)
  {
    if (v28 == 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_100153AEC(a1);
    goto LABEL_9;
  }

  if (v28 != 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v30 = v35;
    v31 = (v35 + 48);
    if (*(a1 + 17) == 1)
    {
      sub_100154954(a1, v15);
      if ((*v31)(v15, 1, v4) == 1)
      {

        v32 = v15;
      }

      else
      {
        sub_10003DD84(v15, &unk_1001FFEC0, &qword_100182508);
        sub_100152A38(a1, 1, 0, v11);

        v32 = v11;
      }
    }

    else
    {
      sub_100154954(a1, v8);
      if ((*v31)(v8, 1, v4) == 1)
      {
        sub_10003DD84(v8, &unk_1001FFEC0, &qword_100182508);
        v33 = v34;
        sub_1001530F0(a1, 1, v34);

        (*(v30 + 8))(v33, v4);
        return;
      }

      v32 = v8;
    }

    sub_10003DD84(v32, &unk_1001FFEC0, &qword_100182508);
  }

  else
  {
  }
}

void sub_100152560(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A3A0;
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  aBlock[4] = sub_1001572BC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060B2C;
  aBlock[3] = &unk_1001C9658;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  v9 = [v3 addObserverForName:v4 object:a1 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v10 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardStates;
  swift_beginAccess();

  sub_1001090EC(&v43, a1);
  swift_endAccess();

  v11 = &v8[OBJC_IVAR____TtC11Diagnostics11CardManager_cardFilter];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  LODWORD(v11) = v11[16];
  v14 = *&v8[v10];
  v43 = &_swiftEmptyArrayStorage;

  sub_100073A18(v14, v12, v13, v11, &v43);
  v14, v15, v16, v17, v18, v19, v20, v21;
  v13, v22, v23, v24, v25, v26, v27, v28;
  v12, v29, v30, v31, v32, v33, v34, v35;
  v43, v36, v37, v38, v39, v40, v41, v42;
}

void sub_1001527C4(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    strcpy(v18, "changeInfoKey");
    HIWORD(v18[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v10 = sub_100064B74(v19), (v3 & 1) != 0))
    {
      sub_10003E010(*(v2 + 56) + 32 * v10, v20);
      sub_10003DB48(v19);
      v2, v11, v12, v13, v14, v15, v16, v17;
      if (swift_dynamicCast())
      {
        sub_1001521A4(v18[0], v18[1]);
      }
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
      sub_10003DB48(v19);
    }
  }
}

uint64_t sub_1001528CC(uint64_t a1)
{
  v3 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6F0 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v1 name:qword_10020A3A0 object:a1];

  swift_beginAccess();
  sub_1001282FC(a1);
  swift_endAccess();

  sub_100152A38(a1, 1, 0, v5);
  return sub_10003DD84(v5, &unk_1001FFEC0, &qword_100182508);
}

uint64_t sub_100152A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  v81 = a2;
  v82 = type metadata accessor for Remove(0);
  __chkstk_darwin(v82);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v11 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v73 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  sub_100154954(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10003DD84(v16, &unk_1001FFEC0, &qword_100182508);
    v21 = 1;
  }

  else
  {
    v79 = a3;
    v77 = *(v18 + 32);
    v78 = v18 + 32;
    v77(v20, v16, v17);
    v22 = *(v5 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
    v76 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
    *(v5 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
    v75 = v22;
    sub_1001515E0(v22);
    v23 = IndexPath.section.getter();
    v80 = a4;
    if (v23 > 2)
    {
      v25 = 0;
      v24 = 2;
    }

    else
    {
      v24 = v23;
      v25 = IndexPath.row.getter();
    }

    v26 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
    swift_beginAccess();
    v27 = *(v5 + v26);
    if (*(v27 + 16))
    {
      v28 = sub_100068EB8();
      if (v29)
      {
        v88 = *(*(v27 + 56) + 8 * v28);

        sub_100150EDC(v25, sub_10003E3D8);

        v30 = v88;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = *(v5 + v26);
        *(v5 + v26) = 0x8000000000000000;
        sub_100142CD4(v30, v24, isUniquelyReferenced_nonNull_native);
        *(v5 + v26) = v87;
        swift_endAccess();
        sub_10015127C();
        v74 = *(v83 + 40);
        v32 = [v74 serialNumber];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        swift_beginAccess();
        sub_100155D10(v33, v35, v13);
        sub_10003DD84(v13, &unk_1001FFEC0, &qword_100182508);
        swift_endAccess();
        v35, v36, v37, v38, v39, v40, v41, v42;
        if (v81)
        {
          v43 = [v74 serialNumber];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          (*(v18 + 16))(v10 + *(v82 + 20), v20, v17);
          *v10 = v44;
          v10[1] = v46;
          v47 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
          swift_beginAccess();
          v48 = *(v5 + v47);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + v47) = v48;
          if ((v49 & 1) == 0)
          {
            v48 = sub_1000D552C(0, (*&v48->hostAppBundleIdentifier[8] + 1), 1, v48);
            *(v5 + v47) = v48;
          }

          v51 = *&v48->hostAppBundleIdentifier[8];
          v50 = *v48->responder;
          if (v51 >= v50 >> 1)
          {
            v48 = sub_1000D552C((v50 > 1), (v51 + 1), 1, v48);
            *(v5 + v47) = v48;
          }

          v85 = v82;
          v86 = &off_1001C9770;
          v52 = sub_10005BAD0(&v84);
          sub_1001571FC(v10, v52, type metadata accessor for Remove);
          *&v48->hostAppBundleIdentifier[8] = v51 + 1;
          sub_100049F74(&v84, &v48->remoteCardFilter[40 * v51]);
          sub_100081AB8(v10, type metadata accessor for Remove);
          *(v5 + v47) = v48;
          swift_endAccess();
        }
      }
    }

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v53 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10017EF10;
    v55 = v83;
    v56 = [*(v83 + 40) serialNumber];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10003DFBC();
    *(v54 + 32) = v57;
    *(v54 + 40) = v59;
    v60 = IndexPath.section.getter();
    *(v54 + 96) = &type metadata for Int;
    *(v54 + 104) = &protocol witness table for Int;
    *(v54 + 72) = v60;
    v61 = IndexPath.row.getter();
    *(v54 + 136) = &type metadata for Int;
    *(v54 + 144) = &protocol witness table for Int;
    *(v54 + 112) = v61;
    v62 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("DataSource remove: [%@] %d/%d", 29, 2, &_mh_execute_header, v53, v62, v54);
    v54, v63, v64, v65, v66, v67, v68, v69;
    v70 = *(v5 + v76);
    *(v5 + v76) = v75;
    sub_1001515E0(v70);
    if ((v79 & 1) == 0)
    {
      swift_beginAccess();
      v71 = sub_100155E80(v55);
      swift_endAccess();
    }

    a4 = v80;
    v77(v80, v20, v17);
    v21 = 0;
  }

  return (*(v18 + 56))(a4, v21, 1, v17);
}

void sub_1001530F0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v161 = type metadata accessor for Add(0);
  __chkstk_darwin(v161);
  v162 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
  v164 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
  *(v3 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
  v163 = v7;
  sub_1001515E0(v7);
  v8 = byte_10018644A[*(a1 + 32)];
  v9 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v166 = v3;
  v158 = v9;
  v10 = *(v3 + v9);
  v11 = &selRef_btManagerAvailableSemaphore;
  if (!*(v10 + 16) || (v12 = sub_100068EB8(), (v13 & 1) == 0))
  {
LABEL_77:
    IndexPath.init(row:section:)();
    v121 = a3;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v122 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_10017EF10;
    v124 = *(a1 + 40);
    v125 = [v124 v11[435]];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v11;
    v129 = v128;

    *(v123 + 56) = &type metadata for String;
    *(v123 + 64) = sub_10003DFBC();
    *(v123 + 32) = v126;
    *(v123 + 40) = v129;
    v130 = IndexPath.section.getter();
    *(v123 + 96) = &type metadata for Int;
    *(v123 + 104) = &protocol witness table for Int;
    *(v123 + 72) = v130;
    v131 = IndexPath.row.getter();
    *(v123 + 136) = &type metadata for Int;
    *(v123 + 144) = &protocol witness table for Int;
    *(v123 + 112) = v131;
    v132 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("DataSource add: [%@] %d/%d", 26, 2, &_mh_execute_header, v122, v132, v123);
    v123, v133, v134, v135, v136, v137, v138, v139;
    if (v160)
    {
      v140 = [v124 v127[435]];
      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      v144 = *(v161 + 20);
      v145 = type metadata accessor for IndexPath();
      v146 = v162;
      (*(*(v145 - 8) + 16))(v162 + v144, v121, v145);
      *v146 = v141;
      v146[1] = v143;
      v147 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
      v148 = v166;
      swift_beginAccess();
      v149 = *(v148 + v147);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v148 + v147) = v149;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v149 = sub_1000D552C(0, (*&v149->hostAppBundleIdentifier[8] + 1), 1, v149);
        *(v166 + v147) = v149;
      }

      v152 = *&v149->hostAppBundleIdentifier[8];
      v151 = *v149->responder;
      if (v152 >= v151 >> 1)
      {
        v149 = sub_1000D552C((v151 > 1), (v152 + 1), 1, v149);
        *(v166 + v147) = v149;
      }

      v175 = v161;
      v176 = &off_1001C9778;
      v153 = sub_10005BAD0(&v174);
      v154 = v162;
      sub_1001571FC(v162, v153, type metadata accessor for Add);
      *&v149->hostAppBundleIdentifier[8] = v152 + 1;
      sub_100049F74(&v174, &v149->remoteCardFilter[40 * v152]);
      sub_100081AB8(v154, type metadata accessor for Add);
      *(v166 + v147) = v149;
      swift_endAccess();
    }

    v155 = *(v166 + v164);
    *(v166 + v164) = v163;
    sub_1001515E0(v155);
    return;
  }

  v14 = *(*(v10 + 56) + 8 * v12);
  v177 = v14;
  v171 = a1;
  if (v14 >> 62)
  {
LABEL_69:
    v115 = v14;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v116 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v115;
      v170 = v116;
      if (v116)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
    }

LABEL_72:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:
    v165 = 0;
LABEL_76:
    v117 = v177;
    v118 = v166;
    v119 = v158;
    swift_beginAccess();
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v173 = *(v118 + v119);
    *(v118 + v119) = 0x8000000000000000;
    sub_100142CD4(v117, v8, v120);
    *(v118 + v119) = v173;
    swift_endAccess();
    sub_10015127C();
    a1 = v171;
    goto LABEL_77;
  }

  v170 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v170)
  {
    goto LABEL_72;
  }

LABEL_5:
  v156 = v8;
  v157 = a3;
  v168 = *(a1 + 48);
  v169 = v14 & 0xC000000000000001;
  v159 = v14 & 0xFFFFFFFFFFFFFF8;
  v15 = v14;
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v8 = 0;
  v165 = 0;
  v167 = v15;
  while (1)
  {
    if (v169)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v159 + 16))
      {
        goto LABEL_68;
      }

      v23 = *&v16->remoteCardFilter[8 * v8];
    }

    if (__OFADD__(v8, 1))
    {
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
      __break(1u);
      goto LABEL_69;
    }

    v24 = *(v23 + 48);
    v14 = *(v24 + 16);
    if (v14 < 2)
    {
      goto LABEL_63;
    }

    v14 = *(v24 + 56);
    if (v14 > 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = qword_100186458[v14];
    }

    if (*(v168 + 16) < 2uLL)
    {
      goto LABEL_64;
    }

    v26 = *(v168 + 56);
    v27 = v26 > 8 ? 0 : qword_100186458[v26];
    v172 = v8 + 1;
    if (v14 > 8)
    {
      v14 = 0;
      if (v26 > 8)
      {
LABEL_24:
        v28 = 0;
        if (v25 != v27)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v14 = qword_1001864A0[v14];
      if (v26 > 8)
      {
        goto LABEL_24;
      }
    }

    v28 = qword_1001864A0[v26];
    if (v25 != v27)
    {
LABEL_25:
      if (v28 < v14)
      {
        break;
      }

      goto LABEL_33;
    }

LABEL_29:
    v29 = [*(v23 + 40) v11[435]];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v31;

    v32 = [*(a1 + 40) v11[435]];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v33 == v30 && v35 == a3)
    {
      a3, v36, v37, v38, v39, v40, v41, v42;
      v35, v43, v44, v45, v46, v47, v48, v49;
      goto LABEL_33;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a3, v51, v52, v53, v54, v55, v56, v57;
    v35, v58, v59, v60, v61, v62, v63, v64;
    if (v50)
    {
      break;
    }

LABEL_33:
    a1 = v15 >> 62;
    if (v15 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      if (!v65)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    else
    {
      v65 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_6;
      }
    }

    v66 = __OFSUB__(v65, 1);
    v67 = v65 - 1;
    if (v66)
    {
      goto LABEL_65;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v67 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      a3 = *(v15 + 8 * v67 + 32);
    }

    v68 = *(a3 + 40);

    v69 = [v68 v11[435]];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = [*(v23 + 40) v11[435]];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v70 == v74 && v72 == v76)
    {

      v72, v77, v78, v79, v80, v81, v82, v83;
      v76, v84, v85, v86, v87, v88, v89, v90;
LABEL_44:
      v11 = &selRef_btManagerAvailableSemaphore;
      if (a1)
      {
        v165 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v165 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = v171;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a1 = v171;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v15 = v177;
      goto LABEL_8;
    }

    v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v72, v92, v93, v94, v95, v96, v97, v98;
    v76, v99, v100, v101, v102, v103, v104, v105;
    if (v91)
    {
      goto LABEL_44;
    }

    v11 = &selRef_btManagerAvailableSemaphore;
LABEL_7:
    a1 = v171;
LABEL_8:
    ++v8;
    v14 = v172;
    v16 = v167;
    if (v172 == v170)
    {
      v167, v167, v17, v18, v19, v20, v21, v22;
      a3 = v157;
      LOBYTE(v8) = v156;
      goto LABEL_76;
    }
  }

  v165 = sub_100150A94(v23, v15);
  if ((v106 & 1) == 0)
  {
    v167, v106, v107, v108, v109, v110, v111, v112;
    a3 = v157;
    LOBYTE(v8) = v156;
    if (v15 >> 62)
    {
      v113 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v113 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v114 = v165;
    if (v113 < v165)
    {
      __break(1u);
    }

    else if ((v165 & 0x8000000000000000) == 0)
    {

      sub_10003D760(v114, v114, a1);

      goto LABEL_76;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100153AEC(uint64_t a1)
{
  v2 = v1;
  v62 = type metadata accessor for Move(0);
  __chkstk_darwin(v62);
  v61 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v5 - 8);
  v7 = &v55[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v55[-v13];
  v15 = OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue;
  v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue);
  *(v1 + OBJC_IVAR____TtC11Diagnostics11CardManager_freezeChangeQueue) = 1;
  sub_1001515E0(v16);
  sub_100152A38(a1, 0, 1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10003DD84(v7, &unk_1001FFEC0, &qword_100182508);
  }

  v56 = v16;
  v57 = v15;
  (*(v9 + 32))(v14, v7, v8);
  sub_1001530F0(a1, 0, v11);
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v60 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100180D00;
  v19 = *(a1 + 40);
  v20 = [v19 serialNumber];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10003DFBC();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = IndexPath.section.getter();
  *(v18 + 96) = &type metadata for Int;
  *(v18 + 104) = &protocol witness table for Int;
  *(v18 + 72) = v24;
  v25 = IndexPath.row.getter();
  *(v18 + 136) = &type metadata for Int;
  *(v18 + 144) = &protocol witness table for Int;
  *(v18 + 112) = v25;
  v26 = IndexPath.section.getter();
  *(v18 + 176) = &type metadata for Int;
  *(v18 + 184) = &protocol witness table for Int;
  *(v18 + 152) = v26;
  v27 = IndexPath.row.getter();
  *(v18 + 216) = &type metadata for Int;
  *(v18 + 224) = &protocol witness table for Int;
  *(v18 + 192) = v27;
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("DataSource move: [%@] %d/%d => %d/%d", 36, 2, &_mh_execute_header, v60, v28, v18);
  v18, v29, v30, v31, v32, v33, v34, v35;
  v36 = [v19 serialNumber];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = v62;
  v41 = *(v62 + 20);
  v58 = v9;
  v59 = v14;
  v42 = *(v9 + 16);
  v43 = v61;
  v42(v61 + v41, v14, v8);
  v44 = v43 + *(v40 + 24);
  v60 = v11;
  v42(v44, v11, v8);
  *v43 = v37;
  v43[1] = v39;
  v45 = OBJC_IVAR____TtC11Diagnostics11CardManager_changeQueue;
  swift_beginAccess();
  v46 = *(v2 + v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v45) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_1000D552C(0, (*&v46->hostAppBundleIdentifier[8] + 1), 1, v46);
    *(v2 + v45) = v46;
  }

  v49 = *&v46->hostAppBundleIdentifier[8];
  v48 = *v46->responder;
  v50 = v58;
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000D552C((v48 > 1), (v49 + 1), 1, v46);
    *(v2 + v45) = v46;
  }

  v64 = v62;
  v65 = &off_1001C9780;
  v51 = sub_10005BAD0(&v63);
  v52 = v61;
  sub_1001571FC(v61, v51, type metadata accessor for Move);
  *&v46->hostAppBundleIdentifier[8] = v49 + 1;
  sub_100049F74(&v63, &v46->remoteCardFilter[40 * v49]);
  sub_100081AB8(v52, type metadata accessor for Move);
  *(v2 + v45) = v46;
  swift_endAccess();
  v53 = *(v2 + v57);
  *(v2 + v57) = v56;
  sub_1001515E0(v53);
  v54 = *(v50 + 8);
  v54(v60, v8);
  return (v54)(v59, v8);
}

void sub_10015400C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v71 - v9;
  v10 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v11 = *(v3 + v10);
  v12 = *(v11 + 64);
  v72 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v88 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  v71 = (v13 + 63) >> 6;
  v85 = (v5 + 32);
  v79 = v5;
  v77 = v5 + 40;

  v16 = 0;
  v78 = v3;
  v73 = v11;
  do
  {
LABEL_5:
    if (!v15)
    {
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_38;
        }

        if (v17 >= v71)
        {

          return;
        }

        v15 = *(v72 + 8 * v17);
        ++v16;
      }

      while (!v15);
      v16 = v17;
    }

    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(v11 + 56);
    v84 = *(*(v11 + 48) + v18);
    v20 = *(v19 + 8 * v18);
    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 &= v15 - 1;
  }

  while (!v21);
  v74 = v16;
  v83 = v20 & 0xC000000000000001;
  v75 = v15;
  v76 = v20 & 0xFFFFFFFFFFFFFF8;

  v22 = 0;
  v23 = v4;
  v81 = v21;
  v82 = v20;
  while (v83)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_35;
    }

LABEL_22:
    v86 = v41;
    v87 = v40;
    v42 = [*(v40 + 40) serialNumber];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = v23;
    v47 = v80;
    IndexPath.init(row:section:)();
    v48 = v88;
    swift_beginAccess();
    v49 = *v85;
    v50 = v7;
    v51 = v47;
    v23 = v46;
    (*v85)(v7, v51, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v3 + v48);
    v53 = v89;
    *(v3 + v48) = 0x8000000000000000;
    v61 = sub_100064AFC(v43, v45);
    v62 = v53[2];
    v63 = (v54 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_36;
    }

    v65 = v54;
    if (v53[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v54)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100143C34(v64, v54);
        if (v65)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_100141874(v64, isUniquelyReferenced_nonNull_native);
      v66 = sub_100064AFC(v43, v45);
      if ((v65 & 1) != (v54 & 1))
      {
        goto LABEL_40;
      }

      v61 = v66;
      if (v65)
      {
LABEL_14:
        v45, v54, v55, v56, v57, v58, v59, v60;
        v24 = v89;
        v7 = v50;
        (*(v79 + 40))(v89[7] + *(v79 + 72) * v61, v50, v23);
        goto LABEL_15;
      }
    }

    v24 = v89;
    v89[(v61 >> 6) + 8] |= 1 << v61;
    v67 = (v24[6] + 16 * v61);
    *v67 = v43;
    v67[1] = v45;
    v7 = v50;
    v49((v24[7] + *(v79 + 72) * v61), v50, v23);
    v68 = v24[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_37;
    }

    v24[2] = v70;
LABEL_15:
    v3 = v78;
    v32 = *(v78 + v88);
    *(v78 + v88) = v24;
    v32, v25, v26, v27, v28, v29, v30, v31;
    swift_endAccess();

    ++v22;
    if (v86 == v81)
    {
      v4 = v23;
      v82, v33, v34, v35, v36, v37, v38, v39;
      v11 = v73;
      v15 = v75;
      v16 = v74;
      goto LABEL_5;
    }
  }

  if (v22 >= *(v76 + 16))
  {
    goto LABEL_39;
  }

  v41 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_22;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1001544D8(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFEC0, &qword_100182508);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100154954(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10003DD84(v4, &unk_1001FFEC0, &qword_100182508);
    return 3;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = IndexPath.section.getter();
    if (v10 > 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
      IndexPath.row.getter();
    }

    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

uint64_t sub_100154694(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  result = sub_100068EB8();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * result);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8, v10, v11, v12, v13, v14, v15, v16;
    return v9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v9 = *&v8->remoteCardFilter[8 * a2];

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100154768(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!*(v13 + 16))
  {
    return 0;
  }

  v14 = sub_100064AFC(a1, a2);
  if (v15)
  {
    (*(v6 + 16))(v8, *(v13 + 56) + *(v6 + 72) * v14, v5);
    v13, v22, v23, v24, v25, v26, v27, v28;
    (*(v6 + 32))(v11, v8, v5);
    v29 = IndexPath.section.getter();
    if (v29 >= 3)
    {
      v31 = 0;
      v30 = 2;
    }

    else
    {
      v30 = v29;
      v31 = IndexPath.row.getter();
    }

    v33 = sub_100154694(v30, v31);
    (*(v6 + 8))(v11, v5);
    return v33;
  }

  else
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    return 0;
  }
}

uint64_t sub_100154954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 40) serialNumber];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v16 = *(v2 + v8);
  if (*(v16 + 16))
  {

    v17 = sub_100064AFC(v5, v7);
    v19 = v18;
    v7, v18, v20, v21, v22, v23, v24, v25;
    if (v19)
    {
      v26 = *(v16 + 56);
      v27 = type metadata accessor for IndexPath();
      v28 = *(v27 - 8);
      (*(v28 + 16))(a2, v26 + *(v28 + 72) * v17, v27);
      v16, v29, v30, v31, v32, v33, v34, v35;
      return (*(v28 + 56))(a2, 0, 1, v27);
    }

    v37 = v16;
  }

  else
  {
    v37 = v7;
  }

  v37, v9, v10, v11, v12, v13, v14, v15;
  v38 = type metadata accessor for IndexPath();
  return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
}

id sub_100154B08(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100154C08(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = a2;

  sub_1000A2A0C();
  v7 = *(v4 + OBJC_IVAR____TtC11Diagnostics11CardManager_deviceManager);
  v23[3] = type metadata accessor for DeviceManager();
  v23[4] = &off_1001C6908;
  v23[0] = v7;
  v8 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
  swift_beginAccess();
  v9 = v7;
  sub_1001196C4(v23, &a1[v8], &qword_1001FD060, &qword_10017EEF0);
  swift_endAccess();
  [a1 setClipsToBounds:1];
  v10 = objc_opt_self();
  v11 = [v10 clearColor];
  [a1 setBackgroundColor:v11];

  v12 = [a1 contentView];
  v13 = [v10 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = &a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  v16 = *&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  v17 = *&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler + 8];
  *v15 = sub_100157154;
  *(v15 + 1) = v14;
  v18 = a3;
  sub_10003C52C(v16, v17);
  v19 = (*&a1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView] + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_100157154;
  v19[1] = v14;

  return sub_10003C52C(v20, v21);
}

char *sub_100154E10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (IndexPath.section.getter())
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v6 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10017EC00;
    v8 = sub_1000729F8();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10003DFBC();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Spawned a new CardViewSessionCell for: %@", 41, 2, &_mh_execute_header, v6, v11, v7);
    v7, v12, v13, v14, v15, v16, v17, v18;
    v19 = objc_allocWithZone(type metadata accessor for CardViewSessionCell());
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v20 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10017EC00;
    v22 = sub_1000729F8();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10003DFBC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Spawned a new CardViewPersistentCell for: %@", 44, 2, &_mh_execute_header, v20, v25, v21);
    v21, v26, v27, v28, v29, v30, v31, v32;
    v19 = objc_allocWithZone(type metadata accessor for CardViewPersistentCell());
  }

  v33 = String._bridgeToObjectiveC()();
  v34 = [v19 initWithStyle:0 reuseIdentifier:v33];

  v35 = v34;
  sub_100154C08(v35, a1, a4);

  return v35;
}

double sub_100155078(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v7[4] = sub_10015715C;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031FA8;
  v7[3] = &unk_1001C9608;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v3 animateWithDuration:0 delay:v4 options:0 animations:0.25 completion:0.0];
  _Block_release(v4);

  return result;
}

char *sub_10015518C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EC00;
  v8 = IndexPath.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10003DFBC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = static os_log_type_t.default.getter();
  v12 = 2;
  os_log(_:dso:log:type:_:)("Fetching cell at indexPath: %@", 30, 2, &_mh_execute_header, v6, v11, v7);
  v7, v13, v14, v15, v16, v17, v18, v19;
  v20 = IndexPath.section.getter();
  if (v20 > 2)
  {
    v22 = 0;
  }

  else
  {
    v21 = v20;
    v22 = IndexPath.row.getter();
    v12 = v21;
  }

  v23 = sub_100154694(v12, v22);
  if (v23)
  {
    v24 = v23;
    v25 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardCells;
    swift_beginAccess();
    v26 = *(v3 + v25);

    v27 = sub_1001507AC(v24, v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
    if (!v27)
    {
      v27 = sub_100154E10(v24, a2, v3, a1);
    }

    swift_beginAccess();
    v35 = *(v3 + v25);
    if ((v35 & 0xC000000000000001) == 0)
    {
      v40 = v27;
      goto LABEL_19;
    }

    if (v35 < 0)
    {
      v36 = *(v3 + v25);
    }

    else
    {
      v36 = v35 & 0xFFFFFFFFFFFFFF8;
    }

    v37 = v27;
    result = __CocoaDictionary.count.getter();
    if (!__OFADD__(result, 1))
    {
      *(v3 + v25) = sub_100155FD8(v36, (result + 1));
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v3 + v25);
      sub_100142B78(v27, v24, isUniquelyReferenced_nonNull_native);
      *(v3 + v25) = v42;
      swift_endAccess();

      return v27;
    }

    __break(1u);
  }

  else
  {
    v39 = objc_allocWithZone(UITableViewCell);

    return [v39 init];
  }

  return result;
}

uint64_t sub_10015569C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_100064AFC(a1, a2);
    if (v10)
    {
      v17 = v9;
      v18 = *(v8 + 56);
      v19 = type metadata accessor for IndexPath();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a3, v18 + *(v20 + 72) * v17, v19);
      v8, v21, v22, v23, v24, v25, v26, v27;
      return (*(v20 + 56))(a3, 0, 1, v19);
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
  }

  v29 = type metadata accessor for IndexPath();
  return (*(*(v29 - 8) + 56))(a3, 1, 1, v29);
}

uint64_t sub_10015597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC11Diagnostics11CardManager_bySerialNumber;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    return a4(1);
  }

  v19 = sub_100064AFC(a2, a3);
  if ((v20 & 1) == 0)
  {
    v18, v20, v21, v22, v23, v24, v25, v26;
    return a4(1);
  }

  (*(v11 + 16))(v13, *(v18 + 56) + *(v11 + 72) * v19, v10);
  v18, v27, v28, v29, v30, v31, v32, v33;
  (*(v11 + 32))(v16, v13, v10);
  v34 = IndexPath.section.getter();
  if (v34 >= 3)
  {
    v36 = 0;
    v35 = 2;
  }

  else
  {
    v35 = v34;
    v36 = IndexPath.row.getter();
  }

  v38 = sub_100154694(v35, v36);
  if (v38)
  {
    v39 = v38;
    type metadata accessor for CardState();
    swift_allocObject();
    v40 = sub_1000737F8(v39);
    v41 = swift_allocObject();
    v41[2] = a4;
    v41[3] = a5;
    v41[4] = v39;
    v42 = *(v40 + 56);
    v43 = *(v40 + 64);
    *(v40 + 56) = sub_100156F74;
    *(v40 + 64) = v41;

    sub_10003C52C(v42, v43);
    v45 = *(v40 + 19);
    *(v40 + 19) = 1;
    if ((v45 & 1) == 0)
    {
      v46 = *(v40 + 80);
      if ((v46 & 8) == 0)
      {
        *(v40 + 80) = v46 | 8;
      }

      sub_1000724B4(v44);
    }

    sub_10007287C(v40);
  }

  else
  {
    a4(1);
  }

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_100155C78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100064AFC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v19 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001437E0();
    v15 = v19;
  }

  *(*(v15 + 48) + 16 * v6 + 8), v8, v9, v10, v11, v12, v13, v14;
  v16 = *(*(v15 + 56) + 8 * v6);
  sub_1001563FC(v6, v15, v17);
  *v3 = v15;
  return v16;
}

uint64_t sub_100155D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100064AFC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v28 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100143C34(isUniquelyReferenced_nonNull_native, v10);
      v17 = v28;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = *(v17 + 56);
    v19 = type metadata accessor for IndexPath();
    v27 = *(v19 - 8);
    v20.n128_f64[0] = (*(v27 + 32))(a3, v18 + *(v27 + 72) * v8, v19);
    sub_100156738(v8, v17, v20);
    *v4 = v17;
    v21 = *(v27 + 56);
    v22 = a3;
    v23 = 0;
    v24 = v19;
  }

  else
  {
    v25 = type metadata accessor for IndexPath();
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a3;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_100155E80(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v21 = sub_100064FA0(a1);
    if (v22)
    {
      v4 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v26 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_100156924(v4, v8, v24);
        goto LABEL_11;
      }

LABEL_15:
      sub_100143EB4();
      v8 = v26;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100155FD8(v5, v7);

  v9 = sub_100064FA0(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100156924(v9, v8, v13);
  v4, v14, v15, v16, v17, v18, v19, v20;
LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100155FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100202588, &qword_100185EA0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v30 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for CardState();
      do
      {
        swift_dynamicCast();
        type metadata accessor for CardViewCell();
        swift_dynamicCast();
        v23 = *(v2 + 16);
        if (*(v2 + 24) <= v23)
        {
          sub_100141BF4(v23 + 1, 1);
        }

        v2 = v30;
        Hasher.init(_seed:)();
        v5 = [*(v29 + 40) serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        String.hash(into:)();
        v7, v8, v9, v10, v11, v12, v13, v14;
        result = Hasher._finalize()();
        v16 = v30 + 64;
        v17 = -1 << *(v30 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v30 + 64 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v30 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = 0;
          v25 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v25 && (v24 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v26 = v19 == v25;
            if (v19 == v25)
            {
              v19 = 0;
            }

            v24 |= v26;
            v27 = *(v16 + 8 * v19);
          }

          while (v27 == -1);
          v20 = __clz(__rbit64(~v27)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v30 + 48) + 8 * v20) = v29;
        *(*(v30 + 56) + 8 * v20) = v28;
        ++*(v30 + 16);
        v21 = __CocoaDictionary.Iterator.next()();
        v4 = v22;
      }

      while (v21);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_10015624C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v8;
      if (v4 >= v9)
      {
        if (v19 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v4);
        v22 = (v20 + 16 * v7);
        if (v4 != v7 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 16 * v4);
        v25 = (v23 + 16 * v7);
        if (v4 != v7 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1001563FC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v8;
      if (v4 >= v9)
      {
        if (v19 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v4);
        v22 = (v20 + 16 * v7);
        if (v4 != v7 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 8 * v4);
        v25 = (v23 + 8 * v7);
        if (v4 != v7 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1001565AC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v7);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 >= v9 && v4 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 16 * v4);
          v21 = (v19 + 16 * v7);
          if (v4 != v7 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v4 = v7;
          }
        }
      }

      else if (v13 >= v9 || v4 >= v13)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_100156738(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v10 = *(*(a2 + 48) + 16 * v7 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v19 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v20 = *(a2 + 48);
      v21 = (v20 + 16 * v4);
      v22 = (v20 + 16 * v7);
      if (v4 != v7 || v21 >= v22 + 1)
      {
        *v21 = *v22;
      }

      v23 = *(a2 + 56);
      v24 = *(*(type metadata accessor for IndexPath() - 8) + 72);
      v25 = v24 * v4;
      v26 = v23 + v24 * v4;
      v27 = v24 * v7;
      v28 = v23 + v24 * v7 + v24;
      if (v25 < v27 || v26 >= v28)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v25 == v27)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v19 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }
}

void sub_100156924(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      Hasher.init(_seed:)();
      v11 = *(v10 + 40);

      v12 = [v11 serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      String.hash(into:)();
      v14, v15, v16, v17, v18, v19, v20, v21;
      v22 = Hasher._finalize()();

      v23 = v22 & v8;
      if (v4 >= v9)
      {
        if (v23 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v23 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v23)
      {
LABEL_10:
        v24 = *(a2 + 48);
        v25 = (v24 + 8 * v4);
        v26 = (v24 + 8 * v7);
        if (v4 != v7 || v25 >= v26 + 1)
        {
          *v25 = *v26;
        }

        v27 = *(a2 + 56);
        v28 = (v27 + 8 * v4);
        v29 = (v27 + 8 * v7);
        if (v4 != v7 || v28 >= v29 + 1)
        {
          *v28 = *v29;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }
}

uint64_t sub_100156B0C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128), uint64_t a5)
{
  v27 = a2;
  v28 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return a4(1, v13);
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    return a4(1, v13);
  }

  v19 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v19)
  {
    return a4(1, v13);
  }

  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v23 = v27;
  v24 = v28;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = v24;
  v22[5] = a4;
  v22[6] = a5;
  aBlock[4] = sub_100156F0C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C9568;
  v25 = _Block_copy(aBlock);
  v26 = v5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001572DC(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v30 + 8))(v11, v9);
  return (*(v29 + 8))(v15, v12);
}

uint64_t sub_100156EC4()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7, v8);
}

double sub_100156F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100156F34()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

double sub_100156F74()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  v4 = *(v1 + 19);
  *(v1 + 19) = 0;
  if (v4 == 1)
  {
    v5 = *(v1 + 80);
    if ((v5 & 8) == 0)
    {
      *(v1 + 80) = v5 | 8;
    }

    return sub_1000724B4(v2);
  }

  return result;
}

uint64_t sub_100156FCC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_100068EB8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  if (v6 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10015706C(uint64_t a1)
{
  v1 = IndexPath.section.getter();
  if (v1 > 2)
  {
    v3 = 0;
    v2 = 2;
  }

  else
  {
    v2 = v1;
    v3 = IndexPath.row.getter();
  }

  v4 = sub_100154694(v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = [*(v4 + 40) serialNumber];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10015711C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_10015715C()
{
  v1 = *(v0 + 16);
  [v1 beginUpdates];
  [v1 endUpdates];
  v2 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v2, 0);
}

uint64_t sub_1001571FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100157284(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001572DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100157380(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for IndexPath();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100157410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IndexPath();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001574D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IndexPath();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100157574(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for IndexPath();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_100157664(int a1, int a2, int a3)
{
  if (qword_10020A340 == -1)
  {
    v3 = dword_10020A330 < a1;
    if (dword_10020A330 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10015970C();
    a2 = v6;
    a3 = v5;
    v3 = dword_10020A330 < a1;
    if (dword_10020A330 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10020A334 > a2)
  {
    return 1;
  }

  if (dword_10020A334 < a2)
  {
    return 0;
  }

  return dword_10020A338 >= a3;
}

uint64_t sub_100157724(int a1, int a2, int a3, int a4)
{
  if (qword_10020A348 == -1)
  {
    if (qword_10020A350)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100159724();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10020A350)
    {
      return _availability_version_check();
    }
  }

  if (qword_10020A340 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10015970C();
    a3 = v10;
    a4 = v9;
    v8 = dword_10020A330 < v11;
    if (dword_10020A330 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10020A334 > a3)
      {
        return 1;
      }

      if (dword_10020A334 >= a3)
      {
        return dword_10020A338 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10020A330 < a2;
  if (dword_10020A330 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001578B8(uint64_t result)
{
  v1 = qword_10020A350;
  if (qword_10020A350)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10020A350 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10020A330, &dword_10020A334, &dword_10020A338);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100157BEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No serial numbers are present for paired airpods device %@", &v2, 0xCu);
}

void sub_100157C8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add Bluetooth device: %@", &v2, 0xCu);
}

void sub_100157D48(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(a1 + 40);
  v5 = [*a2 description];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to switch to device: %@ with error: %@", &v6, 0x16u);
}

void sub_100157E84(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  sub_10000CDF4(&_mh_execute_header, a2, a3, "ASTSession %@ ended without error, with reason: %ld", *v3, *&v3[8], *&v3[16]);
}

void sub_100157F70(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000CE14(&_mh_execute_header, a2, a3, "[DADeviceConnectionLocal] Error upon receiving the suite summary: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100157FDC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DADeviceConnectionLocal session:didUpdateTestSuiteProgress:]";
  sub_10000CE30(&_mh_execute_header, a1, a3, "[DADeviceConnectionLocal] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158054(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DADeviceConnectionLocal session:performActions:sequentially:stopOnError:]";
  sub_10000CE30(&_mh_execute_header, a1, a3, "[DADeviceConnectionLocal] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001580CC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 action];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unrecognized action %@", a1, 0xCu);
}

void sub_1001581B4(void *a1, NSObject *a2)
{
  v4 = [a1 domain];
  v5 = 138412546;
  v6 = v4;
  v7 = 2048;
  v8 = [a1 code];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Send auth info result failed with error: (domain = %@, code = %ld)", &v5, 0x16u);
}

void sub_10015826C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[DADeviceConnectionLocal session:signPayload:completionHandler:]";
  sub_10000CE30(&_mh_execute_header, a1, a3, "[DADeviceConnectionLocal] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1001582E4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  sub_10000CE14(&_mh_execute_header, a2, a3, "Requested next boot mode %ld for session is unsupported", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158420(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Session does not exist for serial numbers: %@, error: %@", &v4, 0x16u);
}

void sub_1001584F4(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 unsignedIntegerValue];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognised housing color returned with value %lu", &v3, 0xCu);
}

void sub_10015861C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unsupported watch case size %d. Falling back to default size", v2, 8u);
}

void sub_1001586C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Localization] [%@] => [%@]", &v3, 0x16u);
}

void sub_10015878C()
{
  v1[0] = 136315394;
  sub_100012C44();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_10015880C()
{
  v1[0] = 136315394;
  sub_100012C44();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_100158948(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error downloading asset: %@", &v3, 0xCu);
}

void sub_1001589EC(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get in-box update mode status with error: %@", &v4, 0xCu);
}

void sub_100158AAC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to send message: %@ because the destination was nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158B18(id *a1, uint64_t a2)
{
  v3 = [*a1 destination];
  *v10 = 138412546;
  *&v10[4] = v3;
  *&v10[12] = 2112;
  *&v10[14] = *(a2 + 40);
  sub_10001B264(&_mh_execute_header, v4, v5, "Cannot communicate to destination: %@; dropping message: %@;", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_100158BC0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 56);
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to send IDS message: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158C30(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 56);
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to send IDS Message because destination was passcode locked: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158CA0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 56);
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to start Diagnostics because device is already in a diagnostic session: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100158D10(uint64_t a1)
{
  v1 = [*(a1 + 64) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Response block is nil. Dropping response message: %@; for destination: %@", v4, v5, v6, v7);
}

void sub_100158DA4(uint64_t a1)
{
  v1 = [*(a1 + 40) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Round trip timer expired for message: %@; destination: %@", v4, v5, v6, v7);
}

void sub_100158E34(uint64_t a1)
{
  v1 = [*(a1 + 40) destination];
  sub_10001B24C();
  sub_10001B264(&_mh_execute_header, v2, v3, "Response block is nil. Dropping response message: %@; for destination: %@", v4, v5, v6, v7);
}

void sub_100158EC4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignoring device state update since it is stale. last = %@, this = %@", &v3, 0x16u);
}

void sub_100158FA4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to get certificate in PEM format. Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100159184(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  sub_10001FA0C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create file handle from file at path = %@.", v4, 0xCu);
}

void sub_1001592B4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  sub_10001F9F0(&_mh_execute_header, a2, a3, "Failed to obtain device identity key, error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100159328(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_10000CE14(&_mh_execute_header, a2, a3, "Failed to create device identification public key digest, %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100159470(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection %@ not established because the process is not appropriately entitled.", &v2, 0xCu);
}

void sub_100159570(void *a1)
{
  v1 = [a1 airpodsDevice];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_10002AD30(&_mh_execute_header, v2, v3, "Timed out waiting for AirPods device %@ to connect", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_1001595F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "allowSessionAccessoryDisconnectForDuration called with an invalid duration of %@. Ignoring request. If the accessory disconnects, the session will end. This is a bug in the calling DK.", &v2, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}