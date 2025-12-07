uint64_t sub_10003D87C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10003D8C0()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7, v1);
}

uint64_t sub_10003D928()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10003DA44()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10003DAAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003DB04()
{

  return _swift_deallocObject(v0, 25, 7, v1);
}

void sub_10003DB9C()
{
  if ([*(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {

    sub_1000F74E8(16);
  }
}

uint64_t sub_10003DBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DC58(uint64_t a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DCB4()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7, v1);
}

uint64_t sub_10003DD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DD84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10003C49C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10003DDE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10003DE1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100036DB0();
}

uint64_t sub_10003DEC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10003DFBC()
{
  result = qword_1001FD700;
  if (!qword_1001FD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD700);
  }

  return result;
}

uint64_t sub_10003E010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10003E074()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_10003E110(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10003E160()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_10003E1B8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7, v9);
}

void sub_10003E200(char a1)
{
  if (a1)
  {
    sub_1000396DC();
  }

  else
  {
    sub_100032AE0();
  }
}

uint64_t sub_10003E230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003E278(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_10003E4D4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_10003E560()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DeviceInformationView();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  [v0 tintAdjustmentMode];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = sub_1000FF2D0(v6);
  [v1 setImage:v2 forState:0];

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
  v4 = sub_1000FF2D0(v6);
  [v3 setImage:v4 forState:0];
}

void sub_10003E6C8()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state];
  if (!v1)
  {
    return;
  }

  v2 = v0;

  sub_100073380(v3, v2);

  v4 = [*(v1 + 40) serialNumber];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v9 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber + 8];
  v8 = *v9;
  v236 = v9;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber] = v5;
  *v9 = v7;
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];

  v18 = String._bridgeToObjectiveC()();
  v7, v19, v20, v21, v22, v23, v24, v25;
  [v17 setText:v18];

  v26 = [*(v1 + 40) attributes];
  sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v27 + 16))
  {
    v36 = v29;
    sub_100064AFC(v28, v29);
    v38 = v37;
    v36, v37, v39, v40, v41, v42, v43, v44;
    if (v38)
    {
      swift_unknownObjectRetain();
      v27, v52, v53, v54, v55, v56, v57, v58;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v59 = v238;
      v60 = [*(v1 + 40) attributes];
      v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v61 + 16))
      {
        v70 = v63;
        sub_100064AFC(v62, v63);
        v72 = v71;
        v70, v71, v73, v74, v75, v76, v77, v78;
        if (v72)
        {
          swift_unknownObjectRetain();
          v61, v86, v87, v88, v89, v90, v91, v92;
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_49:
            v111 = v59;
            goto LABEL_11;
          }

          v93 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, aBlock, v238);
          v95 = v94;
          v238, v94, v96, v97, v98, v99, v100, v101;
          v102 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, aBlock, v238);
          v59 = v103;
          v238, v103, v104, v105, v106, v107, v108, v109;
          sub_100043700(v93, v95, v102, v59);
          v110 = v95;
LABEL_48:
          v110, v79, v80, v81, v82, v83, v84, v85;
          goto LABEL_49;
        }
      }

      else
      {
        v63, v63, v64, v65, v66, v67, v68, v69;
      }

      v110 = v61;
      goto LABEL_48;
    }
  }

  else
  {
    v29, v29, v30, v31, v32, v33, v34, v35;
  }

  v111 = v27;
LABEL_11:
  v111, v45, v46, v47, v48, v49, v50, v51;
LABEL_12:
  v112 = [*(v1 + 40) attributes];
  v113 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v113 + 16))
  {
    v115, v115, v116, v117, v118, v119, v120, v121;
    goto LABEL_17;
  }

  v122 = v115;
  sub_100064AFC(v114, v115);
  v124 = v123;
  v122, v123, v125, v126, v127, v128, v129, v130;
  if ((v124 & 1) == 0)
  {
LABEL_17:
    v113, v131, v132, v133, v134, v135, v136, v137;
    v153 = 0;
    v154 = 0;
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  v113, v138, v139, v140, v141, v142, v143, v144;
  v145 = swift_dynamicCast();
  v153 = aBlock;
  v154 = v238;
  if (!v145)
  {
    v153 = 0;
    v154 = 0;
  }

LABEL_18:
  v156 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei + 8];
  v155 = *v156;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei] = v153;
  *v156 = v154;
  v155, v146, v147, v148, v149, v150, v151, v152;
  v157 = [*(v1 + 40) attributes];
  v158 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v158 + 16))
  {
    v160, v160, v161, v162, v163, v164, v165, v166;
    goto LABEL_27;
  }

  v167 = v160;
  sub_100064AFC(v159, v160);
  v169 = v168;
  v167, v168, v170, v171, v172, v173, v174, v175;
  if ((v169 & 1) == 0)
  {
LABEL_27:
    v158, v176, v177, v178, v179, v180, v181, v182;
    v192 = 0;
    v193 = 0;
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  v158, v183, v184, v185, v186, v187, v188, v189;
  v190 = swift_dynamicCast();
  v191 = v190 == 0;
  if (v190)
  {
    v192 = aBlock;
  }

  else
  {
    v192 = 0;
  }

  if (v191)
  {
    v193 = 0;
  }

  else
  {
    v193 = v238;
  }

LABEL_28:
  sub_10003F6B4(v192, v193);
  v194 = [*(v1 + 40) sessionSettings];
  v195 = [v194 deviceIdentifier];

  v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v198 = v197;

  sub_10003F294(v196, v198);
  v199 = [*(v1 + 40) sessionSettings];
  LODWORD(v195) = [v199 displayDeviceIdentifier];

  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = v195;
  v200 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel];
  [v200 alpha];
  if (!v195)
  {
    if (v201 == 1.0)
    {
      v212 = swift_allocObject();
      *(v212 + 16) = v200;
      v235 = objc_opt_self();
      v241 = sub_100044298;
      v242 = v212;
      aBlock = _NSConcreteStackBlock;
      v238 = 1107296256;
      v239 = sub_100031FA8;
      v240 = &unk_1001BF8A8;
      v213 = _Block_copy(&aBlock);
      v214 = v200;

      [v235 animateWithDuration:0x20000 delay:v213 options:0 animations:0.125 completion:0.0];
      _Block_release(v213);
    }

    v206 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView];
    [v206 alpha];
    if (v215 == 0.0)
    {
      v216 = swift_allocObject();
      *(v216 + 16) = v206;
      v217 = objc_opt_self();
      v241 = sub_10003D8B8;
      v242 = v216;
      aBlock = _NSConcreteStackBlock;
      v238 = 1107296256;
      v239 = sub_100031FA8;
      v240 = &unk_1001BF858;
      v210 = _Block_copy(&aBlock);
      v211 = v206;

      [v217 animateWithDuration:0x10000 delay:v210 options:0 animations:0.375 completion:0.0];
      goto LABEL_37;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v201 == 0.0)
  {
    v202 = swift_allocObject();
    *(v202 + 16) = v200;
    v203 = objc_opt_self();
    v241 = sub_10003E440;
    v242 = v202;
    aBlock = _NSConcreteStackBlock;
    v238 = 1107296256;
    v239 = sub_100031FA8;
    v240 = &unk_1001BF948;
    v204 = _Block_copy(&aBlock);
    v205 = v200;

    [v203 animateWithDuration:0x10000 delay:v204 options:0 animations:0.375 completion:0.0];
    _Block_release(v204);
  }

  v206 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView];
  [v206 alpha];
  if (v207 != 1.0)
  {
    goto LABEL_38;
  }

  v208 = swift_allocObject();
  *(v208 + 16) = v206;
  v209 = objc_opt_self();
  v241 = sub_10004487C;
  v242 = v208;
  aBlock = _NSConcreteStackBlock;
  v238 = 1107296256;
  v239 = sub_100031FA8;
  v240 = &unk_1001BF8F8;
  v210 = _Block_copy(&aBlock);
  v211 = v206;

  [v209 animateWithDuration:0x20000 delay:v210 options:0 animations:0.125 completion:0.0];
LABEL_37:
  _Block_release(v210);

LABEL_39:
  sub_100041FA8();
  v218 = *(v1 + 24);
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = v218;
  v219 = v236;
  if (v218)
  {
    v219 = v156;
  }

  v220 = *v219;
  if (*v219)
  {

    v221 = String._bridgeToObjectiveC()();
    v220, v222, v223, v224, v225, v226, v227, v228;
  }

  else
  {
    v221 = 0;
  }

  [v17 setText:v221];

  v229 = objc_opt_self();
  v230 = swift_allocObject();
  *(v230 + 16) = v2;
  v231 = swift_allocObject();
  *(v231 + 16) = sub_100044268;
  *(v231 + 24) = v230;
  v241 = sub_10003DAA4;
  v242 = v231;
  aBlock = _NSConcreteStackBlock;
  v238 = 1107296256;
  v239 = sub_100060C48;
  v240 = &unk_1001BF808;
  v232 = _Block_copy(&aBlock);
  v233 = v2;

  [v229 performWithoutAnimation:v232];

  _Block_release(v232);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10003F1F0(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView);
  *(a2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView) = a1;
  v3 = a1;

  sub_10003F77C();
}

double sub_10003F22C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler + 8);

    v1(v3);

    return sub_10003C52C(v1, v2);
  }

  return result;
}

void sub_10003F294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  v15 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier + 8];
  *v14 = a1;
  *(v14 + 1) = a2;

  v15, v16, v17, v18, v19, v20, v21, v22;
  if (a2)
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v29 = v10;
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = a1;
    v25[4] = a2;
    aBlock[4] = sub_1000445F0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BFDA8;
    v26 = _Block_copy(aBlock);
    v27 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100044658(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v29);
  }
}

void sub_10003F5F4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v3 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber;
  if (a1)
  {
    v3 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei;
  }

  v4 = *(v1 + *v3 + 8);
  if (v4)
  {

    v12 = String._bridgeToObjectiveC()();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 setText:v12];
}

id sub_10003F6B4(uint64_t a1, DARootViewController *a2)
{
  v4 = (v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName);
  v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName + 8);
  *v4 = a1;
  v4[1] = a2;

  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel);
  if (a2)
  {
    v14 = String._bridgeToObjectiveC()();
    a2, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  [v13 frame];

  return [v13 setPreferredMaxLayoutWidth:v22];
}

void sub_10003F77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView);
  if (v1)
  {
    v2 = v1;
    [v2 setContentMode:2];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v3 = [*(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView) subviews];
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v13 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v4 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        [v14 removeFromSuperview];

        ++v13;
        if (v16 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    v4, v5, v6, v7, v8, v9, v10, v11;
    [*&v37[v0] addSubview:v2];
    v17 = objc_opt_self();
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017ED60;
    v19 = [v2 centerYAnchor];
    v20 = [*&v37[v0] centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v18 + 32) = v21;
    v22 = [v2 leadingAnchor];
    v23 = [*&v37[v0] leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v18 + 40) = v24;
    v25 = [v2 trailingAnchor];
    v26 = [*&v37[v0] trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v18 + 48) = v27;
    v28 = [v2 heightAnchor];
    v29 = [v28 constraintEqualToConstant:70.0];

    *(v18 + 56) = v29;
    sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18, v30, v31, v32, v33, v34, v35, v36;
    [v17 activateConstraints:isa];
  }
}

id sub_10003FB28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v64 = type metadata accessor for UIShape();
  v10 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&qword_1001FD068, &qword_10017EEF8);
  __chkstk_darwin(v12 - 8);
  v63 = &v61 - v13;
  v14 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v17 = type metadata accessor for UIButton.Configuration();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeMarketingName] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeDescription] = 0x4028000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeSerialNumber] = 0x402E000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeIDLabel] = 0x4049000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageMinimumWidth] = 0x4049000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageHeight] = 0x4051800000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonAndImageGap] = 0x4008000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsVerticalPadding] = 0x4000000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsHorizontalPadding] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_buttonWidthHeight] = 0x4046000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonImageBorder] = 0x401C000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthHeight] = 0x403C000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonHoverInset] = 0x4020000000000000;
  v24 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel;
  *&v5[v25] = [objc_allocWithZone(UILabel) init];
  v26 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel;
  *&v5[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel;
  *&v5[v27] = [objc_allocWithZone(UILabel) init];
  v28 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel;
  *&v5[v28] = [objc_allocWithZone(UILabel) init];
  v29 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator;
  *&v5[v29] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = 0;
  v30 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = 0;
  v31 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName];
  *v33 = 0;
  v33[1] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = 0;
  v34 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler];
  *v35 = 0;
  v35[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_hasExplicitHeight] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints] = &_swiftEmptyArrayStorage;
  v36 = [objc_opt_self() defaultMetrics];
  v37 = objc_opt_self();
  [v37 defaultFontSize];
  v38 = [v37 systemFontOfSize:?];
  v39 = [v36 scaledFontForFont:v38];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v39;
  v40 = v39;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v41 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v41 - 8) + 56))(v16, 0, 1, v41);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  UIButton.Configuration.contentInsets.setter();
  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  v66 = v18;
  v42 = *(v18 + 16);
  v42(v20, v23, v17);
  v43 = UIButton.init(configuration:primaryAction:)();
  v44 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton] = v43;
  v65 = v23;
  v42(v20, v23, v17);
  v45 = UIButton.init(configuration:primaryAction:)();
  v46 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] = v45;
  v47 = [objc_opt_self() currentDevice];
  v48 = [v47 userInterfaceIdiom];

  if (v48 == 6)
  {
    v49 = *&v5[v44];
    sub_10003E110(0, &unk_1001FD080, UIHoverStyle_ptr);
    v50 = v49;
    v51 = v62;
    static UIShape.circle.getter();
    v52 = v63;
    UIShape.inset(by:)();
    v53 = v64;
    (*(v10 + 8))(v51, v64);
    v54 = *(v10 + 56);
    v54(v52, 0, 1, v53);
    v55 = UIHoverStyle.init(shape:)();
    [v50 setHoverStyle:v55];

    v56 = *&v5[v46];
    static UIShape.circle.getter();
    v54(v52, 0, 1, v53);
    v57 = UIHoverStyle.init(shape:)();
    [v56 setHoverStyle:v57];
  }

  v58 = type metadata accessor for DeviceInformationView();
  v67.receiver = v5;
  v67.super_class = v58;
  v59 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  (*(v66 + 8))(v65, v17);
  return v59;
}

id sub_100040338(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIShape();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FD068, &qword_10017EEF8);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v8 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeMarketingName] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeDescription] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeSerialNumber] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeIDLabel] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageMinimumWidth] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageHeight] = 0x4051800000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonAndImageGap] = 0x4008000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsVerticalPadding] = 0x4000000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsHorizontalPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_buttonWidthHeight] = 0x4046000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonImageBorder] = 0x401C000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonMargin] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthHeight] = 0x403C000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonHoverInset] = 0x4020000000000000;
  v18 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  *&v2[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel;
  *&v2[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel;
  *&v2[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator;
  *&v2[v23] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = 0;
  v24 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  *v24 = 0;
  v24[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = 0;
  v25 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName];
  *v27 = 0;
  v27[1] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = 0;
  v28 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v29 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler];
  *v29 = 0;
  v29[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_hasExplicitHeight] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints] = &_swiftEmptyArrayStorage;
  v30 = [objc_opt_self() defaultMetrics];
  v31 = objc_opt_self();
  [v31 defaultFontSize];
  v32 = [v31 systemFontOfSize:?];
  v33 = [v30 scaledFontForFont:v32];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v33;
  v34 = v33;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v35 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  UIButton.Configuration.contentInsets.setter();
  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  v62 = v12;
  v36 = *(v12 + 16);
  v36(v14, v17, v11);
  v37 = UIButton.init(configuration:primaryAction:)();
  v38 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton] = v37;
  v61 = v17;
  v63 = v11;
  v36(v14, v17, v11);
  v39 = UIButton.init(configuration:primaryAction:)();
  v40 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] = v39;
  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 6)
  {
    v43 = *&v2[v38];
    sub_10003E110(0, &unk_1001FD080, UIHoverStyle_ptr);
    v44 = v43;
    v45 = v57;
    static UIShape.circle.getter();
    v46 = v58;
    UIShape.inset(by:)();
    v47 = v59;
    v48 = v60;
    (*(v59 + 8))(v45, v60);
    v49 = *(v47 + 56);
    v49(v46, 0, 1, v48);
    v50 = UIHoverStyle.init(shape:)();
    [v44 setHoverStyle:v50];

    v51 = *&v2[v40];
    static UIShape.circle.getter();
    v49(v46, 0, 1, v48);
    v52 = UIHoverStyle.init(shape:)();
    [v51 setHoverStyle:v52];
  }

  v53 = type metadata accessor for DeviceInformationView();
  v64.receiver = v2;
  v64.super_class = v53;
  v54 = objc_msgSendSuper2(&v64, "initWithCoder:", a1);

  (*(v62 + 8))(v61, v63);
  return v54;
}

id sub_100040B28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel);
  v3 = objc_opt_self();
  v4 = [v3 defaultMetrics];
  v5 = objc_opt_self();
  v6 = [v5 boldSystemFontOfSize:20.0];
  v7 = [v4 scaledFontForFont:v6];

  v8 = v2;
  [v2 setFont:v7];

  v47 = v2;
  [v2 setNumberOfLines:0];
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  [v8 setTextColor:v10];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel);
  v12 = v3;
  v48 = v3;
  v13 = [v3 defaultMetrics];
  v14 = [v5 systemFontOfSize:12.0];
  v15 = [v13 scaledFontForFont:v14];

  [v11 setFont:v15];
  [v11 setNumberOfLines:2];
  v16 = [v9 labelColor];
  [v11 setTextColor:v16];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v18 = [v12 defaultMetrics];
  v19 = v5;
  v20 = [v5 systemFontOfSize:15.0];
  v21 = [v18 scaledFontForFont:v20];

  [v17 setFont:v21];
  [v17 setLineBreakMode:2];
  [v17 setAdjustsFontSizeToFitWidth:1];
  [v17 setUserInteractionEnabled:1];
  v22 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"infoLabelTapped"];
  [v17 addGestureRecognizer:v22];

  v23 = _UISolariumEnabled();
  v24 = &selRef_secondaryLabelColor;
  if (!v23)
  {
    v24 = &selRef_labelColor;
  }

  v25 = [v9 *v24];
  [v17 setTextColor:v25];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView) setContentMode:2];
  [*(v1 + v26) setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  [v27 setTextAlignment:1];
  v28 = [v48 defaultMetrics];
  v29 = [v19 boldSystemFontOfSize:50.0];
  v30 = [v28 scaledFontForFont:v29];

  [v27 setFont:v30];
  [v27 setAdjustsFontSizeToFitWidth:1];
  [v27 setBaselineAdjustment:1];
  v31 = 0.0;
  [v27 setAlpha:0.0];
  v49 = v9;
  v32 = [v9 labelColor];
  [v27 setTextColor:v32];

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  sub_100044658(&qword_1001FD038, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v33) = v50[0];
  [v47 setContentHuggingPriority:0 forAxis:v33];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v34) = v50[0];
  [v11 setContentHuggingPriority:0 forAxis:v34];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v35) = v50[0];
  [v17 setContentHuggingPriority:0 forAxis:v35];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v36) = v50[0];
  [v27 setContentHuggingPriority:0 forAxis:v36];
  v37 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
  [v37 addTarget:v1 action:"addButtonPressedWithSender:" forControlEvents:64];
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v38 = sub_1000FF2D0(v50);
  [v37 setImage:v38 forState:0];

  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [objc_opt_self() standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  LOBYTE(v29) = [v39 BOOLForKey:v40];

  if ((v29 & 1) == 0)
  {
    v41 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v41)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 1.0;
    }
  }

  [v37 setAlpha:v31];
  v42 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
  [v42 addTarget:v1 action:"ellipsisButtonPressedWithSender:" forControlEvents:64];
  v43 = sub_1000FF2D0(v50);
  [v42 setImage:v43 forState:0];

  [v42 setAlpha:0.0];
  [v42 setContentVerticalAlignment:0];
  [v42 setContentHorizontalAlignment:0];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
  v45 = [v49 labelColor];
  [v44 setColor:v45];

  [v44 setAlpha:0.0];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  return [v44 startAnimating];
}

id sub_100041390()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];

  return [v0 addSubview:v1];
}

void sub_10004147C()
{
  v1 = [*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel] bottomAnchor];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
  v3 = [v2 topAnchor];
  v4 = [v1 constraintEqualToAnchor:v3 constant:-1.0];

  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = v4;
  v6 = v4;

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];
  v8 = [v7 topAnchor];
  v9 = [v2 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:1.0];

  v11 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = v10;
  v104 = v10;

  v106 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
  v12 = [v106 widthAnchor];
  v13 = [v12 constraintEqualToConstant:44.0];

  v14 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = v13;
  v98 = v13;

  v100 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
  v15 = [v100 widthAnchor];
  v16 = [v15 constraintEqualToConstant:44.0];

  v17 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = v16;
  v101 = v16;

  v18 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  v19 = [*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] widthAnchor];
  v20 = [v19 constraintEqualToConstant:50.0];

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10017ED70;
  *(v21 + 32) = v6;
  v105 = v6;
  v22 = [v7 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23 constant:-15.0];

  *(v21 + 40) = v24;
  v25 = [v7 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-15.0];

  *(v21 + 48) = v27;
  v28 = [v2 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-15.0];

  *(v21 + 56) = v30;
  v31 = [*&v0[v18] leadingAnchor];
  v32 = [v106 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v21 + 64) = v33;
  *(v21 + 72) = v20;
  v34 = *&v0[v18];
  v103 = v20;
  v35 = [v34 heightAnchor];
  v36 = [v35 constraintEqualToConstant:70.0];

  *(v21 + 80) = v36;
  v37 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel];
  v38 = [v37 topAnchor];
  v39 = [*&v0[v18] topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v21 + 88) = v40;
  v41 = [v37 bottomAnchor];
  v42 = [*&v0[v18] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v21 + 96) = v43;
  v44 = [v37 leadingAnchor];
  v45 = [*&v0[v18] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v21 + 104) = v46;
  v47 = [v37 trailingAnchor];
  v48 = [*&v0[v18] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v21 + 112) = v49;
  v50 = [v106 centerYAnchor];
  v51 = [*&v0[v18] centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v21 + 120) = v52;
  *(v21 + 128) = v98;
  v99 = v98;
  v53 = [v106 heightAnchor];
  v54 = [v106 widthAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v21 + 136) = v55;
  v56 = [v100 topAnchor];
  v57 = [v0 topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:10.0];

  *(v21 + 144) = v58;
  v59 = [v100 trailingAnchor];
  v60 = [v0 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-10.0];

  *(v21 + 152) = v61;
  *(v21 + 160) = v101;
  v102 = v101;
  v62 = [v100 heightAnchor];
  v63 = [v100 widthAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v21 + 168) = v64;
  v65 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];
  v66 = [v65 centerXAnchor];
  v67 = [v106 centerXAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:1.0];

  *(v21 + 176) = v68;
  v69 = [v65 centerYAnchor];
  v70 = [v106 centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:1.0];

  *(v21 + 184) = v71;
  v72 = [v65 widthAnchor];
  v73 = [v106 widthAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v21 + 192) = v74;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017ED80;
  *(inited + 32) = v104;
  v76 = *&v0[v18];
  v77 = v104;
  v78 = [v76 bottomAnchor];
  v79 = [v0 bottomAnchor];
  v80 = [v78 constraintLessThanOrEqualToAnchor:v79 constant:-15.0];

  *(inited + 40) = v80;
  v81 = [v106 leadingAnchor];
  v82 = [v0 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:8.0];

  *(inited + 48) = v83;
  v84 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    v85 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v86 = *(inited + 8 * v85 + 32);
      }

      v88 = v86;
      ++v85;
      LODWORD(v87) = 1148829696;
      [v86 setPriority:v87];
    }

    while (v84 != v85);
  }

  v89 = objc_opt_self();
  sub_100074470(inited);
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21, v91, v92, v93, v94, v95, v96, v97;
  [v89 activateConstraints:isa];
}

void sub_100041FA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints;
  swift_beginAccess();
  v3 = *&v0[v2];
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 removeConstraints:isa];

  v12 = *&v1[v2];
  *&v1[v2] = &_swiftEmptyArrayStorage;
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 preferredContentSizeCategory];

  LOBYTE(v20) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v20)
  {
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EDB0;
    v23 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel];
    v24 = [v23 topAnchor];
    v25 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v26 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] bottomAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:2.0];

    *(inited + 32) = v27;
    v28 = [v23 leadingAnchor];
    v29 = [v1 leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:15.0];

    *(inited + 40) = v30;
    v31 = [v23 trailingAnchor];
    v32 = [v1 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-15.0];

    *(inited + 48) = v33;
    v34 = [*&v1[v25] topAnchor];
    v35 = [v1 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:15.0];

    *(inited + 56) = v36;
    v37 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel] leadingAnchor];
    v38 = [v1 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:15.0];

    *(inited + 64) = v39;
    v40 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel] leadingAnchor];
    v41 = [v1 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];

    *(inited + 72) = v42;
    swift_beginAccess();
    v43 = inited;
  }

  else
  {
    v44 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel];
    [v44 intrinsicContentSize];
    v46 = v45;
    v87 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
    [v87 intrinsicContentSize];
    v48 = v46 + v47;
    v88 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];
    [v88 intrinsicContentSize];
    v50 = v48 + v49 + 2.0;
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10017ED90;
    v52 = [v44 topAnchor];
    v53 = [v1 topAnchor];
    if (v50 <= 70.0)
    {
      v58 = [v52 constraintGreaterThanOrEqualToAnchor:v53 constant:15.0];

      *(v51 + 32) = v58;
      v55 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] topAnchor];
      v56 = [v1 topAnchor];
      v57 = [v55 constraintEqualToAnchor:v56 constant:15.0];
    }

    else
    {
      v54 = [v52 constraintEqualToAnchor:v53 constant:15.0];

      *(v51 + 32) = v54;
      v55 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] topAnchor];
      v56 = [v1 topAnchor];
      v57 = [v55 constraintGreaterThanOrEqualToAnchor:v56 constant:15.0];
    }

    v59 = v57;

    *(v51 + 40) = v59;
    swift_beginAccess();
    sub_100074470(v51);
    swift_endAccess();
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10017EDA0;
    v61 = [v44 leadingAnchor];
    v62 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v63 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] trailingAnchor];
    v64 = [v61 constraintEqualToAnchor:v63 constant:10.0];

    *(v60 + 32) = v64;
    v65 = [v44 trailingAnchor];
    v66 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v60 + 40) = v67;
    v68 = [v87 centerYAnchor];
    v69 = [*&v1[v62] centerYAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v60 + 48) = v70;
    v71 = [v87 leadingAnchor];
    v72 = [*&v1[v62] trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:10.0];

    *(v60 + 56) = v73;
    v74 = [v88 leadingAnchor];
    v75 = [*&v1[v62] trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:10.0];

    *(v60 + 64) = v76;
    swift_beginAccess();
    v43 = v60;
  }

  sub_100074470(v43);
  swift_endAccess();
  v77 = objc_opt_self();
  v78 = *&v1[v2];

  v79 = Array._bridgeToObjectiveC()().super.isa;
  v78, v80, v81, v82, v83, v84, v85, v86;
  [v77 activateConstraints:v79];
}

void sub_10004287C(id a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a2;
    if (a2)
    {
      v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
      [v5 alpha];
      if (v6 == 1.0)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        v8 = objc_opt_self();
        v32 = sub_10004487C;
        v33 = v7;
        v28 = _NSConcreteStackBlock;
        v29 = 1107296256;
        v30 = sub_100031FA8;
        v31 = &unk_1001BFD58;
        v9 = _Block_copy(&v28);
        v10 = v5;

        [v8 animateWithDuration:0x20000 delay:v9 options:0 animations:0.125 completion:0.0];
        _Block_release(v9);
      }
    }

    if ((v4 & 2) != 0)
    {
      v11 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
      [v11 alpha];
      if (v12 == 1.0)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v11;
        v14 = objc_opt_self();
        v32 = sub_10004487C;
        v33 = v13;
        v28 = _NSConcreteStackBlock;
        v29 = 1107296256;
        v30 = sub_100031FA8;
        v31 = &unk_1001BFD08;
        v15 = _Block_copy(&v28);
        v16 = v11;

        [v14 animateWithDuration:0x20000 delay:v15 options:0 animations:0.125 completion:0.0];
        _Block_release(v15);
      }
    }

    if ((v4 & 4) != 0)
    {
      v17 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
      [v17 alpha];
      if (v18 == 1.0)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        v20 = objc_opt_self();
        v32 = sub_10004487C;
        v33 = v19;
        v28 = _NSConcreteStackBlock;
        v29 = 1107296256;
        v30 = sub_100031FA8;
        v31 = &unk_1001BFCB8;
        v21 = _Block_copy(&v28);
        v22 = v17;

        [v20 animateWithDuration:0x20000 delay:v21 options:0 animations:0.125 completion:0.0];
        _Block_release(v21);
      }
    }

    if ((v4 & 5) != 0)
    {
      sub_100043418();
    }

    if ((v4 & 2) != 0)
    {
      sub_100043598();
    }
  }

  if (a1)
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24];

    if ((v25 & 1) != 0 || (v27 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v27))
    {
      LOBYTE(a1) = a1 & 0xFC;
    }

    sub_100042CC8(a1, 1, v26);
    if ((a1 & 5) != 0)
    {
      sub_1000432C0();
    }

    if ((a1 & 2) != 0)
    {
      sub_100043448();
    }
  }
}

double sub_100042CC8(char a1, char a2, double result)
{
  if (a1)
  {
    v6 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
    [v6 alpha];
    if (a2)
    {
      if (result != 0.0)
      {
        goto LABEL_8;
      }

      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = objc_opt_self();
      v35 = sub_10003E440;
      v36 = v7;
      v31 = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100031FA8;
      v34 = &unk_1001BFC68;
      v9 = _Block_copy(&v31);
      v10 = v6;

      [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
    }

    else
    {
      if (result != 1.0)
      {
        goto LABEL_8;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      v12 = objc_opt_self();
      v35 = sub_10004487C;
      v36 = v11;
      v31 = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100031FA8;
      v34 = &unk_1001BFC18;
      v9 = _Block_copy(&v31);
      v13 = v6;

      [v12 animateWithDuration:0x20000 delay:v9 options:0 animations:0.125 completion:0.0];
    }

    _Block_release(v9);
  }

LABEL_8:
  if ((a1 & 2) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
  [v14 alpha];
  if (a2)
  {
    if (result != 0.0)
    {
      goto LABEL_15;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = objc_opt_self();
    v35 = sub_10003E440;
    v36 = v15;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100031FA8;
    v34 = &unk_1001BFBC8;
    v17 = _Block_copy(&v31);
    v18 = v14;

    [v16 animateWithDuration:0x10000 delay:v17 options:0 animations:0.375 completion:0.0];
  }

  else
  {
    if (result != 1.0)
    {
      goto LABEL_15;
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v20 = objc_opt_self();
    v35 = sub_10004487C;
    v36 = v19;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100031FA8;
    v34 = &unk_1001BFB78;
    v17 = _Block_copy(&v31);
    v21 = v14;

    [v20 animateWithDuration:0x20000 delay:v17 options:0 animations:0.125 completion:0.0];
  }

  _Block_release(v17);

LABEL_15:
  if ((a1 & 4) != 0)
  {
    v22 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
    [v22 alpha];
    if (a2)
    {
      if (result == 0.0)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v24 = objc_opt_self();
        v35 = sub_10003E440;
        v36 = v23;
        v31 = _NSConcreteStackBlock;
        v32 = 1107296256;
        v33 = sub_100031FA8;
        v34 = &unk_1001BFB28;
        v25 = _Block_copy(&v31);
        v26 = v22;

        [v24 animateWithDuration:0x10000 delay:v25 options:0 animations:0.375 completion:0.0];
        _Block_release(v25);
      }

      [v22 startAnimating];
    }

    else if (result == 1.0)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      v28 = objc_opt_self();
      v35 = sub_10004487C;
      v36 = v27;
      v31 = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100031FA8;
      v34 = &unk_1001BFAD8;
      v29 = _Block_copy(&v31);
      v30 = v22;

      [v28 animateWithDuration:0x20000 delay:v29 options:0 animations:0.125 completion:0.0];
      _Block_release(v29);
    }
  }

  return result;
}

double sub_1000432C0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint];
  if (v2)
  {
    [v2 constant];
    if (result == 44.0)
    {
      return result;
    }

    v4 = *&v0[v1];
    if (v4)
    {
      [v4 setConstant:44.0];
    }
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_opt_self();
  v9[4] = sub_1000445A0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100031FA8;
  v9[3] = &unk_1001BFA88;
  v7 = _Block_copy(v9);
  v8 = v0;

  [v6 animateWithDuration:1 delay:v7 options:0 animations:0.25 completion:0.0];
  _Block_release(v7);

  return result;
}

double sub_100043448()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint];
  if (v2)
  {
    [v2 constant];
    if (result == 28.0)
    {
      return result;
    }

    v4 = *&v0[v1];
    if (v4)
    {
      [v4 setConstant:28.0];
    }
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_opt_self();
  v9[4] = sub_100044870;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100031FA8;
  v9[3] = &unk_1001BF9E8;
  v7 = _Block_copy(v9);
  v8 = v0;

  [v6 animateWithDuration:1 delay:v7 options:0 animations:0.25 completion:0.0];
  _Block_release(v7);

  return result;
}

double sub_1000435C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *&v4[*a1];
  if (v8)
  {
    [v8 constant];
    if (result == 0.0)
    {
      return result;
    }

    v10 = *&v4[v7];
    if (v10)
    {
      [v10 setConstant:0.0];
    }
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v12 = objc_opt_self();
  v15[4] = a3;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100031FA8;
  v15[3] = a4;
  v13 = _Block_copy(v15);
  v14 = v4;

  [v12 animateWithDuration:1 delay:v13 options:0 animations:0.25 completion:0.0];
  _Block_release(v13);

  return result;
}

void sub_100043700(uint64_t a1, DARootViewController *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *&v67 = a1;
  *(&v67 + 1) = a2;

  v9._countAndFlagsBits = 0x20A280E220;
  v9._object = 0xA500000000000000;
  String.append(_:)(v9);

  v10._countAndFlagsBits = a3;
  v64 = a4;
  v10._object = a4;
  String.append(_:)(v10);
  *(&v67 + 1), v11, v12, v13, v14, v15, v16, v17;
  v18 = *(&v67 + 1);
  if (v67 == __PAIR128__(0xE000000000000000, 0) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
    if (v19)
    {
      [v19 setConstant:1.0];
    }

    v20 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
    if (v20)
    {
      v21 = -1.0;
LABEL_11:
      [v20 setConstant:{v21, a4}];
    }
  }

  else
  {
    v22 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
    if (v22)
    {
      [v22 setConstant:2.0];
    }

    v20 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
    if (v20)
    {
      v21 = -2.0;
      goto LABEL_11;
    }
  }

  v23 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
  [v23 frame];
  v66 = [objc_allocWithZone(UILabel) initWithFrame:{v24, v25, v26, v27}];
  [v66 setNumberOfLines:2];
  v28 = [objc_opt_self() systemFontOfSize:12.0];
  [v66 setFont:v28];

  v29 = String._bridgeToObjectiveC()();
  [v66 setText:v29];

  [v66 frame];
  [v66 sizeThatFits:{v30, 1.79769313e308}];
  v32 = v31;
  v33 = lroundf(v32);
  v34 = [v66 font];
  if (!v34)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 lineHeight];
  v37 = v36;

  v38 = v37;
  v39 = lroundf(v38);
  if (!v39)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_22;
  }

  if (v33 / v39 >= 2)
  {
    *(&v67 + 1), v40, v41, v42, v43, v44, v45, v46;

    v47._countAndFlagsBits = 10;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);

    v48._countAndFlagsBits = a3;
    v48._object = v65;
    String.append(_:)(v48);
    a2, v49, v50, v51, v52, v53, v54, v55;
    v18 = a2;
  }

  v56 = String._bridgeToObjectiveC()();
  v18, v57, v58, v59, v60, v61, v62, v63;
  [v23 setText:v56];

  [v5 layoutIfNeeded];
}

void sub_100043AD0(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  sub_100044704(v1 + v3, v5, &qword_1001FD030, &unk_10017EEE0);
  if (v6)
  {
    sub_10004476C(v5, v4);
    sub_10003DD84(v5, &qword_1001FD030, &unk_10017EEE0);
    sub_1000442A0(v4, v4[3]);
    sub_100119A08(a1, 1);
    sub_100044554(v4);
  }

  else
  {
    sub_10003DD84(v5, &qword_1001FD030, &unk_10017EEE0);
  }
}

void sub_100043C0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType);
    if (v2)
    {
      if (v2 != 1)
      {
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = 0;
      v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
      v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber + 8);

      v3 = 0;
      if (!v1)
      {
        v5 = 0;
LABEL_7:
        [v4 setText:v5];

        v13 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
        swift_beginAccess();
        sub_100044704(v0 + v13, v15, &qword_1001FD030, &unk_10017EEE0);
        if (v15[3])
        {
          sub_10004476C(v15, v14);
          sub_10003DD84(v15, &qword_1001FD030, &unk_10017EEE0);
          sub_1000442A0(v14, v14[3]);
          sub_100119DA0(v3);
          sub_100044554(v14);
        }

        else
        {
          sub_10003DD84(v15, &qword_1001FD030, &unk_10017EEE0);
        }

        return;
      }
    }

    else
    {
      v3 = 1;
      *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = 1;
      v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
    }

    v5 = String._bridgeToObjectiveC()();
    v1, v6, v7, v8, v9, v10, v11, v12;
    goto LABEL_7;
  }
}

void sub_100043E04()
{

  *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier + 8), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber + 8), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei + 8), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName + 8), v22, v23, v24, v25, v26, v27, v28;

  sub_10003DD84(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate, &qword_1001FD030, &unk_10017EEE0);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler), *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler + 8));

  v36 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints);

  v36, v29, v30, v31, v32, v33, v34, v35;
}

id sub_100043F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceInformationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000441A4()
{
  result = qword_1001FD008;
  if (!qword_1001FD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD008);
  }

  return result;
}

double sub_10004420C(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4, v5);
}

uint64_t sub_100044230()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100044280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000442A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_1000442E4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  sub_100044704(v0 + v1, v28, &qword_1001FD030, &unk_10017EEE0);
  if (v29)
  {
    sub_10004476C(v28, v27);
    sub_10003DD84(v28, &qword_1001FD030, &unk_10017EEE0);
    v2 = *sub_1000442A0(v27, v27[3]);
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if (*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
    {
      v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
      if (v3)
      {
        v4 = [*(v3 + 40) serialNumber];
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        v8 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
        swift_beginAccess();
        sub_100044704(v2 + v8, v25, &qword_1001FD060, &qword_10017EEF0);
        if (v26)
        {
          sub_10004476C(v25, v24);
          sub_10003DD84(v25, &qword_1001FD060, &qword_10017EEF0);
          sub_1000442A0(v24, v24[3]);
          sub_100102FA4(v5, v7, 0);
          v7, v16, v17, v18, v19, v20, v21, v22;
          sub_100044554(v24);
        }

        else
        {
          v7, v9, v10, v11, v12, v13, v14, v15;
          sub_10003DD84(v25, &qword_1001FD060, &qword_10017EEF0);
        }
      }
    }

    else
    {
      sub_10004287C(4, 3);
      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(2, 1);
    }

    return sub_100044554(v27);
  }

  else
  {
    sub_10003DD84(v28, &qword_1001FD030, &unk_10017EEE0);
  }

  return result;
}

double sub_100044554(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_1000445B0()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7, v8);
}

void sub_1000445F0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

uint64_t sub_100044658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000446A0()
{
  result = qword_1001FDE70;
  if (!qword_1001FDE70)
  {
    sub_10003C4E4(&unk_1001FD050, &qword_10017F6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDE70);
  }

  return result;
}

uint64_t sub_100044704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10003C49C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004476C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000448C0()
{
  type metadata accessor for CoreMotionManager();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(CMMotionManager) init];
  *(v0 + 16) = result;
  qword_10020A360 = v0;
  return result;
}

uint64_t sub_100044914()
{

  return swift_deallocClassInstance();
}

void *sub_100044970(double a1)
{
  v1[5] = 0;
  v1[6] = 0;
  if (qword_1001FC6A8 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10020A360 + 16);
  v1[2] = v3;
  [v3 setDeviceMotionUpdateInterval:a1];
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  v1[3] = v4;
  [v4 setMaxConcurrentOperationCount:1];
  type metadata accessor for UserAccelerationBuffer();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 10;
  *(v5 + 40) = 0x3F847AE147AE147BLL;
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 10;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v5 + 16) = v6;
  v1[4] = v5;
  return v1;
}

void sub_100044A9C()
{
  v1 = *(v0 + 16);
  if (![v1 isDeviceMotionAvailable])
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[DeviceMotionProvider] Failed to start motion updates. Device Motion is not available.";
    goto LABEL_11;
  }

  if (([v1 isDeviceMotionActive] & 1) == 0)
  {
    v7 = *(v0 + 24);
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000451EC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000450B4;
    aBlock[3] = &unk_1001BFE48;
    v9 = _Block_copy(aBlock);

    [v1 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v7 withHandler:v9];
    _Block_release(v9);
    return;
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[DeviceMotionProvider] Failed to start motion updates. Device Motion is already active.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_12:
}

void sub_100044D14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v5 = Strong;

      v6 = a1;
      [v6 userAcceleration];
      v10 = sub_1000E9760(v7, v8, v9);

      if (v10 == 2 || (v10 & 1) == 0)
      {
      }

      else
      {
        if (qword_1001FC7C8 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10003DAAC(v11, qword_10020A510);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "[DeviceMotionProvider] Sending motion update", v14, 2u);
        }

        sub_10003C49C(&qword_1001FD1E8, &qword_10017EF98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10017EF10;
        *(inited + 32) = 7823737;
        *(inited + 40) = 0xE300000000000000;
        v16 = [v6 attitude];
        [v16 yaw];
        v18 = v17;

        *(inited + 48) = v18;
        *(inited + 56) = 0x6863746970;
        *(inited + 64) = 0xE500000000000000;
        v19 = [v6 attitude];
        [v19 pitch];
        v21 = v20;

        *(inited + 72) = v21;
        *(inited + 80) = 1819045746;
        *(inited + 88) = 0xE400000000000000;
        v22 = [v6 attitude];
        [v22 roll];
        v24 = v23;

        *(inited + 96) = v24;
        v25 = sub_1000D58E8(inited);
        swift_setDeallocating();
        sub_10003C49C(&qword_1001FD1F0, qword_10017EFA0);
        swift_arrayDestroy();
        v26 = v5;
        v27 = *(v5 + 40);
        if (v27)
        {
          v28 = *(v26 + 48);

          v27(v25);
          sub_10003C52C(v27, v28);
        }

        v25, v29, v30, v31, v32, v33, v34, v35;
      }

      goto LABEL_18;
    }
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10003DAAC(v36, qword_10020A510);
  v6 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v6, v37, "[DeviceMotionProvider] Failed to get device motion data.", v38, 2u);
  }

LABEL_18:
}

void sub_1000450B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100045140()
{

  sub_10003C52C(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1000451B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000451F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10004520C(uint64_t a1, DARootViewController *a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = String.uppercased()();
  v57 = 0xD000000000000013;
  v58 = 0x8000000100189AF0;

  String.append(_:)(v6);
  v6._object, v7, v8, v9, v10, v11, v12, v13;

  v14._countAndFlagsBits = 0x454C5449545FLL;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  0x8000000100189AF0, v15, v16, v17, v18, v19, v20, v21;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100189AF0);
  v23 = v22;
  0x8000000100189AF0, v22, v24, v25, v26, v27, v28, v29;
  sub_100045B38();
  v31 = v30;
  a2, v30, v32, v33, v34, v35, v36, v37;
  v38 = String._bridgeToObjectiveC()();
  v23, v39, v40, v41, v42, v43, v44, v45;
  v46 = String._bridgeToObjectiveC()();
  v31, v47, v48, v49, v50, v51, v52, v53;
  v56.receiver = v3;
  v56.super_class = type metadata accessor for DetailedConsentNavigationController();
  v54 = objc_msgSendSuper2(&v56, "initWithTitle:detailText:symbolName:contentLayout:", v38, v46, 0, 2);

  return v54;
}

void sub_100045444()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4545524741, 0xE500000000000000);
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setTitle:v4 forState:0];

  [v1 addTarget:v0 action:"agreeButtonClicked" forControlEvents:64];
  v12 = [v0 buttonTray];
  [v12 addButton:v1];

  v13 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x4545524741534944, 0xE800000000000000);
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v15, v17, v18, v19, v20, v21, v22, v23;
  [v13 setTitle:v16 forState:0];

  [v13 addTarget:v0 action:"disagreeButtonClicked" forControlEvents:64];
  v24 = [v0 buttonTray];
  [v24 addButton:v13];
}

void sub_100045624()
{
  v1 = v0;
  v39 = [v0 parentViewController];
  if (!v39)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = [v2 viewControllers];

  sub_100045CC4();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v12 = *(v4 + 32);
      }

      v39 = v12;
      v4, v13, v14, v15, v16, v17, v18, v19;
      type metadata accessor for EnhancedLoggingConsentViewController();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
LABEL_26:
        v36 = v39;
LABEL_27:

        return;
      }

      v21 = *&v1[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle + 8];
      if (!v21)
      {
        goto LABEL_39;
      }

      v22 = v20;
      v23 = *(v20 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles);
      v24 = *(v23 + 16);
      v25 = v39;
      if (!v24)
      {
LABEL_18:

        goto _objc_release_x2;
      }

      v26 = 0;
      v27 = *&v1[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle];
      v28 = (v23 + 40);
      while (*(v28 - 1) != v27 || v21 != *v28)
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v25 = v39;
        if (v30)
        {
          break;
        }

        ++v26;
        v28 += 2;
        if (v24 == v26)
        {
          goto LABEL_18;
        }
      }

      v31 = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        if (v31 >= *(v23 + 16))
        {
          v40 = v25;
          v37 = objc_allocWithZone(type metadata accessor for ConsentSignatureController());
          v38 = sub_10014BA14();
          [v22 showViewController:v38 sender:v1];

          v36 = v38;
          goto LABEL_27;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          v32 = (v23 + 32 + 16 * v31);
          v33 = *v32;
          v34 = v32[1];
          objc_allocWithZone(type metadata accessor for DetailedConsentNavigationController());

          v35 = sub_10004520C(v33, v34);
          [v22 showViewController:v35 sender:v1];

          goto LABEL_26;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
_objc_release_x2:
      _objc_release_x2();
      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
}

id sub_100045ACC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DetailedConsentNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100045B38()
{
  v0 = String.uppercased()();
  _StringGuts.grow(_:)(29);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  String.append(_:)(v0);
  v8._countAndFlagsBits = 0x544E45544E4F435FLL;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v10 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (v0._countAndFlagsBits == 0x52545F454C435943 && v0._object == 0xEE00474E494B4341)
      {
        0xEE00474E494B4341, v12, 0x52545F454C435943, 0xEE00474E494B4341, v15, v16, v17, v18;
LABEL_8:
        v27._countAndFlagsBits = 0x495041575FLL;
        v27._object = 0xE500000000000000;
        String.append(_:)(v27);
        goto LABEL_9;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v0._object, v20, v21, v22, v23, v24, v25, v26;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v0._object, v12, v13, v14, v15, v16, v17, v18;
    }

LABEL_9:
    v28 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100189AF0);
    0x8000000100189AF0, v29, v30, v31, v32, v33, v34, v35;
    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_100045CC4()
{
  result = qword_1001FDE30;
  if (!qword_1001FDE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDE30);
  }

  return result;
}

id sub_100045DB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseVisualEffectView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

NSString sub_100045E0C()
{
  result = String._bridgeToObjectiveC()();
  qword_1001FD250 = result;
  return result;
}

uint64_t sub_100045E44(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6B0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1001FD250 object:0];

  return a1();
}

double sub_100045FC8(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);

  return result;
}

uint64_t sub_1000460A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = [objc_msgSend(v4 "currentPlatform")];
  result = swift_unknownObjectRelease();
  if (v5)
  {
    [objc_msgSend(v4 "currentPlatform")];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10004628C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DKViewControllerDelegateResponder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000462E8(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  if (v5 == 1)
  {
    v6 = 15;
    v7 = 16;
    if (a1 != 15)
    {
      v7 = a1;
    }

    if (a1 != 16)
    {
      v6 = v7;
    }

    if ((a2 & 1) == 0)
    {
      return v6;
    }
  }

  return a1;
}

uint64_t sub_10004638C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_1000463CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v30 - v11);
  v13 = *(v3 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle);
  v14 = *(v3 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = qword_1001FC838;

  if (v16 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = &v9[v7[9]];
  *v9 = a1;
  v9[8] = 0;
  *(v9 + 2) = 0;
  v18 = a1;
  Date.init()();
  v9[v7[8]] = 1;
  *v17 = v13;
  v17[8] = v14;
  v19 = [v18 popoverPresentationController];
  v20 = v19;
  if (v19)
  {
    [v19 sourceRect];
    v31 = v21;
    v32 = v22;
    v30 = v23;
    v33 = v24;

    *&v26 = v30;
    *&v25 = v31;
    *(&v25 + 1) = v32;
    *(&v26 + 1) = v33;
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v27 = &v9[v7[10]];
  v28 = &v9[v7[11]];
  *v28 = v25;
  *(v28 + 1) = v26;
  v28[32] = v20 == 0;
  *v27 = sub_100046898;
  v27[1] = v15;
  sub_10003DBF4(v9, v12);

  sub_100127134(v12);
  sub_10003DC58(v12);
  swift_endAccess();

  return result;
}

uint64_t sub_10004660C(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = [a1 presentedViewController];
  if (v7)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v3;
    v8[4] = a2;
    v8[5] = a3;
    v15[4] = sub_10004683C;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100031FA8;
    v15[3] = &unk_1001BFEC0;
    v9 = _Block_copy(v15);
    v10 = a1;
    v11 = v3;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else
  {
    sub_100125854(1, *&v3[OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle], v3[OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle + 8], a2, a3);
  }

  v12 = objc_opt_self();
  v13 = [objc_msgSend(v12 "currentPlatform")];
  result = swift_unknownObjectRelease();
  if (v13)
  {
    [objc_msgSend(v12 "currentPlatform")];
    swift_unknownObjectRelease();
    [objc_msgSend(v12 "currentPlatform")];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000467F4()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_100046848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046860()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

id sub_1000468A8(uint64_t a1, char a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton] = 0;
  sub_10003DD14(a1, &v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_error]);
  v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_isSource] = a2;
  v6 = 0x454352554F535FLL;
  if (a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v83 = v6;
  v84 = v7;
  v81 = String.init<A>(_:)();
  v82 = v8;
  String.append<A>(contentsOf:)();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v17 = v81;
  v16 = v82;
  if (_UISolariumEnabled())
  {
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017ED90;
    v19 = objc_opt_self();
    *(v18 + 32) = [v19 systemRedColor];
    *(v18 + 40) = [v19 labelColor];
    sub_10003E110(0, &qword_100202970, UIColor_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v18, v21, v22, v23, v24, v25, v26, v27;
    v28 = &selRef_configurationWithPaletteColors_;
  }

  else
  {
    v20.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    v28 = &selRef_configurationWithHierarchicalColor_;
  }

  v29 = [objc_opt_self() *v28];

  _StringGuts.grow(_:)(24);
  DeviceClass = GestaltGetDeviceClass();
  v31 = sub_100100580(DeviceClass);
  v33 = v32;
  0xE000000000000000, v32, v34, v35, v36, v37, v38, v39;
  v83 = v31;
  v84 = v33;
  v40._object = 0x8000000100189E10;
  v40._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v40);
  v41 = v33;
  v42 = String._bridgeToObjectiveC()();
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = [objc_opt_self() _systemImageNamed:v42];

  if (v50)
  {
    v51 = [v50 imageWithConfiguration:v29];
  }

  else
  {
    v51 = 0;
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100189DC0);
  v53 = v52;
  v54 = String._bridgeToObjectiveC()();
  v53, v55, v56, v57, v58, v59, v60, v61;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v17, v16);
  v63 = v62;
  v16, v62, v64, v65, v66, v67, v68, v69;
  v70 = String._bridgeToObjectiveC()();
  v63, v71, v72, v73, v74, v75, v76, v77;
  v80.receiver = v3;
  v80.super_class = type metadata accessor for AssessmentIssueFoundViewController(0);
  v78 = objc_msgSendSuper2(&v80, "initWithTitle:detailText:icon:contentLayout:", v54, v70, v51, 2);

  sub_10003DD84(a1, &qword_1001FCE98, &unk_10017F0E0);
  return v78;
}

uint64_t sub_100046C70()
{
  v1 = sub_10003C49C(&qword_1001FD3A8, &unk_10017F0C8);
  __chkstk_darwin(v1 - 8);
  v110 = &v102 - v2;
  v3 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v108 = *(v3 - 8);
  v109 = v3;
  __chkstk_darwin(v3);
  v107 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v5 - 8);
  v106 = &v102 - v6;
  v105 = type metadata accessor for UIButton.Configuration.Size();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin(v8);
  v111 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssessmentError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v115 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003C49C(&qword_1001FD3B0, &qword_10017F0D8);
  __chkstk_darwin(v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v102 - v17;
  v19 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  __chkstk_darwin(v19 - 8);
  v114 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v122 = &v102 - v22;
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  __chkstk_darwin(v26);
  v28 = &v102 - v27;
  found = type metadata accessor for AssessmentIssueFoundViewController(0);
  v125.receiver = v0;
  v125.super_class = found;
  objc_msgSendSuper2(&v125, "viewDidLoad");
  v30 = OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_error;
  static AssessmentError.retryExceeded.getter();
  v117 = *(v11 + 56);
  v118 = v11 + 56;
  v117(v28, 0, 1, v10);
  v121 = v13;
  v31 = *(v13 + 48);
  v124 = v0;
  v119 = v30;
  sub_10003DD14(&v0[v30], v18);
  sub_10003DD14(v28, &v18[v31]);
  v32 = *(v11 + 48);
  v33 = v32(v18, 1, v10);
  v116 = v11;
  v123 = v15;
  v120 = v32;
  if (v33 == 1)
  {
    sub_10003DD84(v28, &qword_1001FCE98, &unk_10017F0E0);
    if (v32(&v18[v31], 1, v10) == 1)
    {
      sub_10003DD84(v18, &qword_1001FCE98, &unk_10017F0E0);
      v34 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10003DD14(v18, v25);
  if (v32(&v18[v31], 1, v10) == 1)
  {
    sub_10003DD84(v28, &qword_1001FCE98, &unk_10017F0E0);
    (*(v11 + 8))(v25, v10);
LABEL_6:
    sub_10003DD84(v18, &qword_1001FD3B0, &qword_10017F0D8);
    v34 = 0;
    goto LABEL_8;
  }

  v35 = &v18[v31];
  v36 = v115;
  (*(v11 + 32))(v115, v35, v10);
  sub_1000490A4();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v11 + 8);
  v37(v36, v10);
  sub_10003DD84(v28, &qword_1001FCE98, &unk_10017F0E0);
  v37(v25, v10);
  sub_10003DD84(v18, &qword_1001FCE98, &unk_10017F0E0);
LABEL_8:
  v38 = v124;
  v39 = [v124 navigationItem];
  [v39 setHidesBackButton:1];

  v40 = v34 & 1;
  if (v34)
  {
    v41 = UIBarButtonSystemItemClose;
  }

  else
  {
    v41 = UIBarButtonSystemItemCancel;
  }

  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v40;
  v126.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v126.is_nil = 0;
  v44.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(v41, v126, v127).super.super.isa;
  v45 = OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton;
  v46 = *&v38[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton];
  *&v38[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton] = v44;

  LODWORD(v42) = _UISolariumEnabled();
  v47 = [v38 navigationItem];
  v48 = *&v38[v45];
  v49 = &selRef_setLeftBarButtonItem_;
  if (!v42)
  {
    v49 = &selRef_setRightBarButtonItem_;
  }

  [v47 *v49];

  v50 = v122;
  static AssessmentError.possibleIssueDetected.getter();
  v117(v50, 0, 1, v10);
  v51 = *(v121 + 48);
  v52 = v123;
  sub_10003DD14(&v38[v119], v123);
  sub_10003DD14(v50, v52 + v51);
  v53 = v120;
  if (v120(v52, 1, v10) != 1)
  {
    v55 = v114;
    sub_10003DD14(v52, v114);
    if (v53(v52 + v51, 1, v10) != 1)
    {
      v56 = v115;
      v57 = v116;
      (*(v116 + 32))(v115, v52 + v51, v10);
      sub_1000490A4();
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *(v57 + 8);
      v59(v56, v10);
      sub_10003DD84(v50, &qword_1001FCE98, &unk_10017F0E0);
      v59(v55, v10);
      result = sub_10003DD84(v52, &qword_1001FCE98, &unk_10017F0E0);
      if ((v58 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    sub_10003DD84(v50, &qword_1001FCE98, &unk_10017F0E0);
    (*(v116 + 8))(v55, v10);
    return sub_10003DD84(v52, &qword_1001FD3B0, &qword_10017F0D8);
  }

  sub_10003DD84(v50, &qword_1001FCE98, &unk_10017F0E0);
  if (v53(v52 + v51, 1, v10) != 1)
  {
    return sub_10003DD84(v52, &qword_1001FD3B0, &qword_10017F0D8);
  }

  result = sub_10003DD84(v52, &qword_1001FCE98, &unk_10017F0E0);
LABEL_20:
  if (v124[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_isSource] == 1)
  {
    v60 = [objc_opt_self() boldButton];
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100189D70);
    v62 = v61;
    v63 = String._bridgeToObjectiveC()();
    v62, v64, v65, v66, v67, v68, v69, v70;
    [v60 setTitle:v63 forState:0];

    v71 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v60 addAction:v71 forControlEvents:64];

    v72 = v111;
    static UIButton.Configuration.glass()();
    (*(v104 + 104))(v103, enum case for UIButton.Configuration.Size.large(_:), v105);
    UIButton.Configuration.buttonSize.setter();
    v73 = v106;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v74 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v108 + 104))(v107, enum case for UIButton.Configuration.TitleAlignment.center(_:), v109);
    UIButton.Configuration.titleAlignment.setter();
    v75 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    v76 = objc_opt_self();
    v77 = [v76 configurationWithFont:v75];

    v78 = [v76 configurationWithWeight:7];
    v79 = [v77 configurationByApplyingConfiguration:v78];

    UIButton.Configuration.imagePlacement.setter();
    v80 = v79;
    v81 = String._bridgeToObjectiveC()();
    v82 = [objc_opt_self() systemImageNamed:v81 withConfiguration:v80];

    UIButton.Configuration.image.setter();
    v83 = [objc_opt_self() linkButton];
    v84 = v112;
    v85 = v113;
    v86 = v110;
    (*(v112 + 16))(v110, v72, v113);
    (*(v84 + 56))(v86, 0, 1, v85);
    v87 = v83;
    UIButton.configuration.setter();

    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000002CLL, 0x8000000100189D90);
    v89 = v88;
    v90 = String._bridgeToObjectiveC()();
    v89, v91, v92, v93, v94, v95, v96, v97;
    [v87 setTitle:v90 forState:0];

    v98 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v87 addAction:v98 forControlEvents:64];

    v99 = v124;
    v100 = [v124 buttonTray];
    [v100 addButton:v60];

    v101 = [v99 buttonTray];
    [v101 addButton:v87];

    return (*(v84 + 8))(v72, v85);
  }

  return result;
}

void sub_100047AFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      sub_1000EC128(3);
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v6 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v6)
      {
        [v6 setResultCode:-1];
      }

      sub_1000F6FF8(17);
    }

    else
    {
      sub_1000EC128(4);
      *(swift_allocObject() + 16) = v5;
      v7 = [v5 navigationItem];
      v8 = [v7 rightBarButtonItem];

      sub_100088E48(0, v8);
    }

    v9 = *&v5[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton];
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled:0];
    }
  }
}

double sub_100047CA4()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F198, v5);

  return result;
}

uint64_t sub_100047DB8()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100047E4C, v2, v1);
}

uint64_t sub_100047E4C()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100047F10;

  return sub_100137348();
}

uint64_t sub_100047F10()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1000494C0;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10004804C()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v3)
  {
    [v3 setResultCode:-3];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A388;
  type metadata accessor for LoadingViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 pushViewController:v5 animated:1];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F188, v8);

  sub_1000EC128(9);
}

uint64_t sub_100048238()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000482CC, v2, v1);
}

uint64_t sub_1000482CC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_10020A5F8;

  return _swift_task_switch(sub_100048368, 0, 0);
}

uint64_t sub_100048368()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10004844C;

    return sub_1000D9F78();
  }

  else
  {
    v4 = v0[3];
    v5 = v0[4];

    return _swift_task_switch(sub_100048570, v4, v5);
  }
}

uint64_t sub_10004844C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000485D4;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v3 = sub_100048570;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100048570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000485D4()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100048638, v1, v2);
}

uint64_t sub_100048638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004869C()
{
  v0 = sub_10003C49C(&qword_1001FD3C8, &qword_10017F100);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v5[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1000491C8();
  AttributeContainer.subscript.getter();

  v5[1] = 2;
  AttributeContainer.Builder.callAsFunction(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100048830()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  static AssessmentError.viewSupportOptions.getter();
  v6 = type metadata accessor for AssessmentError();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_10013752C(v5);
  sub_10003DD84(v5, &qword_1001FCE98, &unk_10017F0E0);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F0F8, v9);

  sub_1000EC128(8);
}

uint64_t sub_100048A38()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100048ACC, v2, v1);
}

uint64_t sub_100048ACC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100048B90;

  return sub_100137348();
}

uint64_t sub_100048B90()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_100048CCC;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100048CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100048E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentIssueFoundViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AssessmentIssueFoundViewController(uint64_t a1)
{
  result = qword_1001FD390;
  if (!qword_1001FD390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048F2C(uint64_t a1)
{
  sub_100048FD0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100048FD0(uint64_t a1)
{
  if (!qword_1001FD3A0)
  {
    type metadata accessor for AssessmentError();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001FD3A0);
    }
  }
}

uint64_t sub_100049028()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100049060()
{

  return _swift_deallocObject(v0, 25, 7, v1);
}

unint64_t sub_1000490A4()
{
  result = qword_1001FD3C0;
  if (!qword_1001FD3C0)
  {
    type metadata accessor for AssessmentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3C0);
  }

  return result;
}

uint64_t sub_1000490FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100048A38();
}

unint64_t sub_1000491C8()
{
  result = qword_1001FD3D0;
  if (!qword_1001FD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3D0);
  }

  return result;
}

void sub_10004921C(uint64_t a1, uint64_t *a2)
{
  sub_1000491C8();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000492C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000492FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100048238();
}

uint64_t sub_1000493A8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000493E0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_100049408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100047DB8();
}

uint64_t sub_1000494C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v86._object = 0xE000000000000000;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  v18.value._countAndFlagsBits = a1;
  v18.value._object = a2;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v86);
  object = v20._object;
  v14, v20._object, v22, v23, v24, v25, v26, v27;

  v35 = v20._countAndFlagsBits == a4 && v20._object == a5;
  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v20._object, v28, v29, v30, v31, v32, v33, v34;
    v36 = [v15 mainBundle];
    v87._object = 0xE000000000000000;
    v37._countAndFlagsBits = a4;
    v37._object = a5;
    v38.value._countAndFlagsBits = a1;
    v38.value._object = a2;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v87._countAndFlagsBits = 0;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v87);
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;

    if (v40._countAndFlagsBits == a4 && v40._object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v40._object, v42, v43, v44, v45, v46, v47, v48;
      v49 = [v15 mainBundle];
      v88._object = 0xE000000000000000;
      v50._countAndFlagsBits = a4;
      v50._object = a5;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v88._countAndFlagsBits = 0;
      v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v88);
      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      object, v42, v43, v44, v45, v46, v47, v48;
      v53 = [v15 mainBundle];
      v89._object = 0xE000000000000000;
      v54.value._countAndFlagsBits = 0xD000000000000016;
      v54.value._object = 0x8000000100189EC0;
      v55._countAndFlagsBits = a4;
      v55._object = a5;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v89._countAndFlagsBits = 0;
      v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v54, v53, v56, v89);
      countAndFlagsBits = v57._countAndFlagsBits;
      object = v57._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      object, v42, v43, v44, v45, v46, v47, v48;
      v58 = [v15 mainBundle];
      v90._object = 0xE000000000000000;
      v59.value._countAndFlagsBits = 0xD000000000000015;
      v59.value._object = 0x8000000100189EA0;
      v60._countAndFlagsBits = a4;
      v60._object = a5;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      v90._countAndFlagsBits = 0;
      v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v90);
      countAndFlagsBits = v62._countAndFlagsBits;
      object = v62._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      object, v42, v43, v44, v45, v46, v47, v48;
      v63 = [v15 mainBundle];
      v91._object = 0xE000000000000000;
      v64.value._countAndFlagsBits = 0xD000000000000012;
      v64.value._object = 0x8000000100189E80;
      v65._countAndFlagsBits = a4;
      v65._object = a5;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      v91._countAndFlagsBits = 0;
      v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v64, v63, v66, v91);
      countAndFlagsBits = v67._countAndFlagsBits;
      object = v67._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      object, v42, v43, v44, v45, v46, v47, v48;
      v68 = [v15 mainBundle];
      v92._object = 0xE000000000000000;
      v69.value._countAndFlagsBits = 0xD000000000000013;
      v69.value._object = 0x8000000100189E60;
      v70._countAndFlagsBits = a4;
      v70._object = a5;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      v92._countAndFlagsBits = 0;
      v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v69, v68, v71, v92);
      countAndFlagsBits = v72._countAndFlagsBits;
      object = v72._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      object, v42, v43, v44, v45, v46, v47, v48;
      v73 = [v15 mainBundle];
      v93._object = 0xE000000000000000;
      v74.value._object = 0x8000000100189E40;
      v75._countAndFlagsBits = a4;
      v75._object = a5;
      v74.value._countAndFlagsBits = 0xD000000000000010;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v93._countAndFlagsBits = 0;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v74, v73, v76, v93)._object;
    }
  }

  v77 = String.init(format:arguments:)();
  object, v78, v79, v80, v81, v82, v83, v84;
  return v77;
}

NSString sub_1000499F0(DARootViewController *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = a2 + 32;
      v5 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_10003E010(v4, v47);
        sub_100049EFC(v47, v46);
        sub_10003C49C(&qword_1001FD3E0, &qword_10017F1A8);
        if (swift_dynamicCast())
        {
          if (*(&v44 + 1))
          {
            sub_100049F74(&v43, v46);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1000D4E80(0, (*&v5->hostAppBundleIdentifier[8] + 1), 1, v5);
            }

            v7 = *&v5->hostAppBundleIdentifier[8];
            v6 = *v5->responder;
            if (v7 >= v6 >> 1)
            {
              v5 = sub_1000D4E80((v6 > 1), (v7 + 1), 1, v5);
            }

            *&v5->hostAppBundleIdentifier[8] = v7 + 1;
            sub_100049F74(v46, &v5->remoteCardFilter[40 * v7]);
            goto LABEL_6;
          }
        }

        else
        {
          v45 = 0;
          v43 = 0u;
          v44 = 0u;
        }

        sub_100049F0C(&v43);
LABEL_6:
        v4 += 32;
        if (!--v3)
        {
          goto LABEL_16;
        }
      }
    }

    v5 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

LABEL_16:
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a1)
  {
    v46[0] = 0uLL;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
    a1 = *(&v46[0] + 1);
    if (*(&v46[0] + 1))
    {
      v11 = *&v46[0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000494C8(v11, a1, v5, v8, v10);
  v13 = v12;
  v10, v12, v14, v15, v16, v17, v18, v19;
  v5, v20, v21, v22, v23, v24, v25, v26;
  a1, v27, v28, v29, v30, v31, v32, v33;
  v34 = String._bridgeToObjectiveC()();
  v13, v35, v36, v37, v38, v39, v40, v41;
  return v34;
}

id sub_100049C98(uint64_t a1, uint64_t a2)
{

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = MobileGestalt_copy_deviceClass_obj();

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (v5 == 0x656E6F685069 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
        v15 = 0x454E4F4850495FLL;
LABEL_7:
        v16 = 0xE700000000000000;
LABEL_27:
        String.append(_:)(*&v15);
        return a1;
      }

      if (v5 == 1684099177 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
        v17 = 1095780703;
LABEL_12:
        v15 = v17 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
        v16 = 0xE500000000000000;
        goto LABEL_27;
      }

      if (v5 == 1685016681 && v7 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
        v17 = 1330661727;
        goto LABEL_12;
      }

      if (v5 == 0x5654656C707041 && v7 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
        v15 = 5657695;
        v16 = 0xE300000000000000;
        goto LABEL_27;
      }

      if (v5 == 0x447974696C616552 && v7 == 0xED00006563697665)
      {
        0xED00006563697665, 0xED00006563697665, v9, v10, v11, v12, v13, v14;
LABEL_25:
        v15 = 0x4E4F495349565FLL;
        goto LABEL_7;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v7, v19, v20, v21, v22, v23, v24, v25;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    v15 = 0x434952454E45475FLL;
    v16 = 0xE800000000000000;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

_OWORD *sub_100049EFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100049F0C(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD3E8, &unk_10017F1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049F74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100049F8C()
{
  v1 = [v0 connectedScenes];
  v2 = sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
  v3 = sub_10004A2B8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (!v8)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_12:
  v16 = (v14 - 1) & v14;
  v3 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (!v3)
  {
LABEL_19:
    v18 = v4;
LABEL_20:
    sub_10004A320(v18);
    return;
  }

  while (1)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      break;
    }

    v7 = v15;
    v8 = v16;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (__CocoaSet.Iterator.next()())
    {
      swift_dynamicCast();
      v3 = v36;
      v15 = v7;
      v16 = v8;
      if (v36)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v19 = [v17 windows];
  sub_10003E110(0, &qword_1001FD400, UIWindow_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_28:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    v2, v20, v21, v22, v23, v24, v25, v26;

    v18 = v4;
    goto LABEL_20;
  }

LABEL_23:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v2 + 32);
LABEL_26:
    v35 = v27;
    v2, v28, v29, v30, v31, v32, v33, v34;

    [v35 bounds];
    return;
  }

  __break(1u);
}

unint64_t sub_10004A2B8()
{
  result = qword_1001FD3F8;
  if (!qword_1001FD3F8)
  {
    sub_10003E110(255, &qword_1001FD3F0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3F8);
  }

  return result;
}

id sub_10004A338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeTestRunner] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeButton] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_verticalPadding] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_horizontalPadding] = 0x4020000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_bottomMarginWithoutButtons] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconViewWidthHeight] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonMinimumSize] = vdupq_n_s64(0x4046000000000000uLL);
  v20 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView;
  *&v5[v20] = [objc_allocWithZone(UIStackView) init];
  v21 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView;
  *&v5[v21] = [objc_allocWithZone(UIView) init];
  v22 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel;
  *&v5[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  type metadata accessor for TestRunnerIconView();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
  *&v5[v25] = [objc_allocWithZone(UIProgressView) init];
  v26 = &v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v27 = &v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  *v27 = 0;
  v27[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_hasExplicitHeight] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = 0;
  v28 = [objc_opt_self() defaultMetrics];
  v29 = [objc_opt_self() systemFontOfSize:16.0];
  v30 = [v28 scaledFontForFont:v29];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v30;
  v31 = v30;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v32 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  (*(v14 + 16))(v16, v19, v13);
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton] = UIButton.init(configuration:primaryAction:)();
  v33 = type metadata accessor for TestRunnerView();
  v36.receiver = v5;
  v36.super_class = v33;
  v34 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  (*(v14 + 8))(v19, v13);
  return v34;
}

id sub_10004A7DC(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeTestRunner] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeButton] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_verticalPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_horizontalPadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_bottomMarginWithoutButtons] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconViewWidthHeight] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonMinimumSize] = vdupq_n_s64(0x4046000000000000uLL);
  v14 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView;
  *&v2[v14] = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView;
  *&v2[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView;
  *&v2[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel;
  *&v2[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  type metadata accessor for TestRunnerIconView();
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
  *&v2[v19] = [objc_allocWithZone(UIProgressView) init];
  v20 = &v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = &v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  *v21 = 0;
  v21[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_hasExplicitHeight] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = 0;
  v22 = [objc_opt_self() defaultMetrics];
  v23 = [objc_opt_self() systemFontOfSize:16.0];
  v24 = [v22 scaledFontForFont:v23];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v26 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  (*(v8 + 16))(v10, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton] = UIButton.init(configuration:primaryAction:)();
  v27 = type metadata accessor for TestRunnerView();
  v30.receiver = v2;
  v30.super_class = v27;
  v28 = objc_msgSendSuper2(&v30, "initWithCoder:", a1);

  (*(v8 + 8))(v13, v7);
  return v28;
}

void sub_10004AC60()
{
  v1 = sub_10003C49C(&qword_1001FD068, &qword_10017EEF8);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v39 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView);
  [v5 setAxis:{1, v2}];
  [v5 setAlignment:0];
  [v5 setDistribution:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010018A0F0);
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v6 setText:v9];

  [v6 setNumberOfLines:0];
  v17 = [objc_opt_self() defaultMetrics];
  v18 = [objc_opt_self() boldSystemFontOfSize:20.0];
  v19 = [v17 scaledFontForFont:v18];

  [v6 setFont:v19];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
  v21 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v20 setTintColor:v21];

  v22 = [objc_opt_self() opaqueSeparatorColor];
  [v20 setTrackTintColor:v22];

  [v20 setAlpha:0.0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
  [v23 addTarget:v0 action:"skipPressed" forControlEvents:64];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v25, v27, v28, v29, v30, v31, v32, v33;
  [v23 setTitle:v26 forState:0];

  v34 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v23 setTitleColor:v34 forState:0];

  [v23 setContentHorizontalAlignment:0];
  [v23 setAlpha:0.0];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [objc_opt_self() currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 6)
  {
    sub_10003E110(0, &unk_1001FD080, UIHoverStyle_ptr);
    static UIShape.capsule.getter();
    v37 = type metadata accessor for UIShape();
    (*(*(v37 - 8) + 56))(v4, 0, 1, v37);
    v38 = UIHoverStyle.init(shape:)();
    [v23 setHoverStyle:v38];
  }
}

id sub_10004B0E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
  v2 = UIAccessibilityTraitUpdatesFrequently;
  v3 = [v1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return [v1 setAccessibilityTraits:v4 | v3];
}

void sub_10004B14C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TestRunnerView();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v1 = [v0 tintAdjustmentMode];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton];
  if (v1 == 2)
  {
    v3 = [objc_opt_self() grayColor];
  }

  else
  {
    v3 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  v4 = v3;
  [v2 setTitleColor:v3 forState:0];
}

id sub_10004B260()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView]];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel]];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView]];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton]];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView];
  [v3 addArrangedSubview:v1];
  [v3 addArrangedSubview:v2];

  return [v0 addSubview:v3];
}

void sub_10004B354()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView];
  v95 = v2;
  v3 = [v2 heightAnchor];
  v4 = [v3 constraintGreaterThanOrEqualToConstant:44.0];

  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = v4;

  v6 = [v2 heightAnchor];
  v7 = [v6 constraintEqualToConstant:16.0];

  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = v7;

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10017F1C0;
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView];
  v11 = [v10 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v9 + 32) = v13;
  v14 = [v10 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v9 + 40) = v16;
  v17 = [v10 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:15.0];

  *(v9 + 48) = v19;
  v20 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel];
  v21 = [v20 bottomAnchor];
  v96 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  v22 = [v96 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-10.0];

  *(v9 + 56) = v23;
  v24 = [v20 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:28.0];

  *(v9 + 64) = v26;
  v94 = v20;
  v27 = [v20 trailingAnchor];
  v28 = [v10 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-28.0];

  *(v9 + 72) = v29;
  v30 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  v31 = [v30 centerYAnchor];
  v32 = [v20 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v9 + 80) = v33;
  v34 = [v30 leadingAnchor];
  v35 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v9 + 88) = v37;
  v38 = [v30 widthAnchor];
  v39 = [v38 constraintEqualToConstant:20.0];

  *(v9 + 96) = v39;
  v40 = [v30 heightAnchor];
  v41 = [v40 constraintEqualToConstant:20.0];

  *(v9 + 104) = v41;
  v42 = [v96 leadingAnchor];
  v93 = v10;
  v43 = [v10 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:28.0];

  *(v9 + 112) = v44;
  v45 = [v96 trailingAnchor];
  v46 = [v10 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-28.0];

  *(v9 + 120) = v47;
  v48 = [v95 leadingAnchor];
  v49 = [v35 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v9 + 128) = v50;
  v51 = [v95 trailingAnchor];
  v52 = [v35 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v9 + 136) = v53;
  v54 = [v95 heightAnchor];
  v55 = [v54 constraintEqualToConstant:44.0];

  *(v9 + 144) = v55;
  v56 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton];
  v57 = [v56 topAnchor];
  v58 = [v95 topAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:10.0];

  *(v9 + 152) = v59;
  v60 = [v56 bottomAnchor];
  v61 = [v95 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-10.0];

  *(v9 + 160) = v62;
  v63 = [v56 centerXAnchor];
  v64 = [v95 centerXAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v9 + 168) = v65;
  v66 = [v56 widthAnchor];
  [v56 sizeThatFits:{0.0, 0.0}];
  v67 = [v66 constraintEqualToConstant:?];

  *(v9 + 176) = v67;
  v97 = v9;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EBF0;
  v69 = [v94 topAnchor];
  v70 = [v35 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(inited + 32) = v71;
  sub_100074470(inited);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_10017ED90;
  v73 = [v93 trailingAnchor];
  v74 = [v1 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-15.0];

  *(v72 + 32) = v75;
  v76 = [v96 bottomAnchor];
  v77 = [v35 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v72 + 40) = v78;
  v79 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    v80 = 0;
    do
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v81 = *(v72 + 8 * v80 + 32);
      }

      v83 = v81;
      ++v80;
      LODWORD(v82) = 1148829696;
      [v81 setPriority:v82];
    }

    while (v79 != v80);
  }

  v84 = objc_opt_self();
  sub_100074470(v72);
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v97, v86, v87, v88, v89, v90, v91, v92;
  [v84 activateConstraints:isa];
}

double sub_10004BDE0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if ((v8 & 1) != 0 || (v9 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v9))
  {
    v10 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer;
    [*(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer) invalidate];
    v11 = *(v3 + v10);
    *(v3 + v10) = 0;

    v12 = a1;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        v13 = objc_opt_self();
        v66[4] = sub_10004C358;
        v66[5] = 0;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 1107296256;
        v66[2] = sub_100072168;
        v66[3] = &unk_1001C0120;
        v14 = _Block_copy(v66);
        v15 = [v13 scheduledTimerWithTimeInterval:0 repeats:v14 block:60.0];
        _Block_release(v14);
        v16 = *(v3 + v10);
        *(v3 + v10) = v15;

LABEL_23:
        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010018A0F0);
        v35 = v34;
        v36 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
        v37 = String._bridgeToObjectiveC()();
        [v36 setText:v37];

        v38 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
        if (v38)
        {
          v39 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

          v38(v40);
          sub_10003C52C(v38, v39);
        }

        v41 = UIAccessibilityAnnouncementNotification;
        v42 = String._bridgeToObjectiveC()();
        UIAccessibilityPostNotification(v41, v42);

        v35, v43, v44, v45, v46, v47, v48, v49;
        return sub_10004C770();
      }

LABEL_8:
      if (v12 == 1)
      {
        if (a3)
        {
          v17 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
          v18 = String._bridgeToObjectiveC()();
          [v17 setText:v18];

          v19 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
          if (v19)
          {
            v20 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

            v19(v21);
            sub_10003C52C(v19, v20);
          }

          v22 = UIAccessibilityAnnouncementNotification;
          v23 = String._bridgeToObjectiveC()();
          UIAccessibilityPostNotification(v22, v23);
        }

        return sub_10004C524();
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = a1;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }
  }

  if (v12 == 3)
  {
    v25 = 0xD000000000000012;
    v26 = 0x800000010018A110;
    goto LABEL_27;
  }

  if (v12 == 4)
  {
    v25 = 0x454E4E4F43534944;
    v26 = 0xED0000474E495443;
LABEL_27:
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v25, v26);
    v51 = v50;
    v52 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
    v53 = String._bridgeToObjectiveC()();
    [v52 setText:v53];

    v54 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
    if (v54)
    {
      v55 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

      v54(v56);
      sub_10003C52C(v54, v55);
    }

    v57 = UIAccessibilityAnnouncementNotification;
    v58 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v57, v58);

    v51, v59, v60, v61, v62, v63, v64, v65;
    goto LABEL_30;
  }

LABEL_19:
  if (a3)
  {
    v27 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
    v28 = String._bridgeToObjectiveC()();
    [v27 setText:v28];

    v29 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
    if (v29)
    {
      v30 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

      v29(v31);
      sub_10003C52C(v29, v30);
    }

    v32 = UIAccessibilityAnnouncementNotification;
    v33 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v32, v33);
  }

LABEL_30:

  return sub_10004C770();
}

void sub_10004C358()
{
  v0 = static os_log_type_t.info.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v1 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v1, "Exiting due to inactivity from AST 2", 36, 2, &_swiftEmptyArrayStorage);

  sub_1000F6FF8(23);
}

double sub_10004C3E4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate;
  swift_beginAccess();
  sub_10004CC34(v0 + v1, v17);
  if (!v18)
  {
    sub_10004CB7C(v17);
    return result;
  }

  sub_10004476C(v17, v16);
  sub_10004CB7C(v17);
  v2 = *(*sub_1000442A0(v16, v16[3]) + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = [*(v2 + 40) suiteName];
  if (!v3)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3 = v5;
LABEL_8:
  sub_100118538(v3, v7);
  v7, v9, v10, v11, v12, v13, v14, v15;
  return sub_100044554(v16);
}

double sub_10004C524()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if ((v3 & 1) == 0)
  {
    v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v5 & 1) == 0)
    {
      v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
      [v6 alpha];
      if (result == 0.0)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v8 = objc_opt_self();
        v16[4] = sub_10003D8B8;
        v16[5] = v7;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_100031FA8;
        v16[3] = &unk_1001C00F8;
        v9 = _Block_copy(v16);
        v10 = v6;

        [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
        _Block_release(v9);
      }

      v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint);
      if (v11)
      {
        [v11 setActive:1];
      }

      v12 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
      if (v12)
      {
        [v12 setActive:0];
      }

      v13 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
      if (v13)
      {
        v14 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

        v13(v15);
        return sub_10003C52C(v13, v14);
      }
    }
  }

  return result;
}

double sub_10004C770()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
  [v1 alpha];
  if (result == 1.0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v12[4] = sub_100044298;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100031FA8;
    v12[3] = &unk_1001C00A8;
    v5 = _Block_copy(v12);
    v6 = v1;

    [v4 animateWithDuration:0x20000 delay:v5 options:0 animations:0.125 completion:0.0];
    _Block_release(v5);
  }

  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint);
  if (v7)
  {
    [v7 setActive:0];
  }

  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
  if (v8)
  {
    [v8 setActive:1];
  }

  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8);

    v9(v11);
    return sub_10003C52C(v9, v10);
  }

  return result;
}

void sub_10004C918()
{
  sub_10004CB7C(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler), *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
}

id sub_10004C9FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestRunnerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10004CB58(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4, v5);
}

uint64_t sub_10004CB7C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD4D0, &unk_100184AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CBE4()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10004CC1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004CC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD4D0, &unk_100184AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10004CCC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton;
  *&v2[v5] = [objc_opt_self() boldButton];
  v6 = _UISolariumEnabled();
  v7 = 15.0;
  if (v6)
  {
    v7 = 16.0;
  }

  *&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing] = v7;
  *&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_suiteManager] = a1;
  v8 = a1;
  _StringGuts.grow(_:)(31);
  DeviceClass = GestaltGetDeviceClass();
  v10 = sub_100100580(DeviceClass);
  v12 = v11;
  0xE000000000000000, v11, v13, v14, v15, v16, v17, v18;
  v76 = v10;
  v77 = v12;
  v19._object = 0x800000010018A1E0;
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v19);
  v20 = v12;
  v21 = String._bridgeToObjectiveC()();
  v22 = objc_opt_self();
  v23 = [v22 _systemImageNamed:v21];

  if (v23)
  {
    v20, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v31 = String._bridgeToObjectiveC()();
    v20, v32, v33, v34, v35, v36, v37, v38;
    v23 = [v22 imageNamed:v31];
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x5F4E4F4953534553, 0xEF59524F54534948);
  v40 = v39;
  v41 = String._bridgeToObjectiveC()();
  v49 = v41;
  if (qword_1001FC738 != -1)
  {
    v41 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v41);
    sub_10003C49C(&qword_1001FDEC0, &unk_10017FDF0);
    OS_dispatch_queue.sync<A>(execute:)();
    v50 = v76;
    if (!(v76 >> 62))
    {
LABEL_10:
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    v50 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_10;
    }
  }

  v53 = v50;
  v51 = _CocoaArrayWrapper.endIndex.getter();
  v50 = v53;
LABEL_11:
  v50, v42, v43, v44, v45, v46, v47, v48;
  if (v51 <= 0)
  {
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x415441445F4F4ELL, 0xE700000000000000);
    v55 = v54;
    v52 = String._bridgeToObjectiveC()();
    v55, v56, v57, v58, v59, v60, v61, v62;
  }

  else
  {
    v52 = 0;
  }

  v75.receiver = v2;
  v75.super_class = type metadata accessor for SelfServiceSessionHistoryViewController();
  v63 = objc_msgSendSuper2(&v75, "initWithTitle:detailText:icon:contentLayout:", v49, v52, v23, 2);

  v64 = v63;
  v65 = [v64 navigationItem];
  v66 = String._bridgeToObjectiveC()();
  v40, v67, v68, v69, v70, v71, v72, v73;
  [v65 setBackButtonTitle:v66];

  return v64;
}

void sub_10004D11C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setDataSource:v1];
  [v3 setDelegate:v1];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setScrollEnabled:0];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setEstimatedRowHeight:100.0];
  if (_UISolariumEnabled())
  {
    [v3 setDirectionalLayoutMargins:{0.0, *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing], 0.0, *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing]}];
    [v3 setPreservesSuperviewLayoutMargins:1];
  }

  type metadata accessor for SelfServiceSessionHistoryCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

  v7 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 1162760004, 0xE400000000000000);
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v9, v11, v12, v13, v14, v15, v16, v17;
  [v7 setTitle:v10 forState:0];

  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 addAction:v19 forControlEvents:{64, 0, 0, 0, sub_10004E740, v18}];

  v20 = [v1 scrollView];
  [v20 setShowsVerticalScrollIndicator:0];
}

void sub_10004D42C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong navigationController], v3, v4))
  {
    v5 = [v4 popViewControllerAnimated:1];
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v5 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10004D504(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDEC0, &unk_10017FDF0);
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = v15;
    if (!(v15 >> 62))
    {
LABEL_5:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v14 = v10;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v14;
LABEL_6:
  v10, a2, a3, a4, a5, a6, a7, a8;
  if (v11 >= 1)
  {
    v12 = [v9 contentView];
    [v12 addSubview:*&v9[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView]];
  }

  v13 = [v9 buttonTray];
  [v13 addButton:*&v9[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton]];
}

void sub_10004D6C8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView];
  v3 = [v0 contentView];
  v4 = [v2 isDescendantOfView:v3];

  if (v4)
  {
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10017ED60;
    v6 = [v2 leadingAnchor];
    v7 = [v1 contentView];
    v8 = [v7 leadingAnchor];

    v9 = _UISolariumEnabled();
    v10 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing];
    if (v9)
    {
      v11 = -v10;
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing];
    }

    v12 = [v6 constraintEqualToAnchor:v8 constant:v11];

    *(v5 + 32) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [v1 contentView];
    v15 = [v14 trailingAnchor];

    if (!_UISolariumEnabled())
    {
      v10 = -v10;
    }

    v16 = objc_opt_self();
    v17 = [v13 constraintEqualToAnchor:v15 constant:v10];

    *(v5 + 40) = v17;
    v18 = [v2 topAnchor];
    v19 = [v1 contentView];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v5 + 48) = v21;
    v22 = [v2 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v5 + 56) = v25;
    sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5, v27, v28, v29, v30, v31, v32, v33;
    [v16 activateConstraints:isa];

    [v2 invalidateIntrinsicContentSize];
  }
}

id sub_10004DA80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SelfServiceSessionHistoryViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10004DC84(void *a1, unint64_t a2)
{
  v5 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  __chkstk_darwin(v5 - 8);
  v7 = v67 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 dequeueReusableCellWithIdentifier:v8];

  if (v9)
  {
    type metadata accessor for SelfServiceSessionHistoryCell(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceSessionHistoryCell(0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v15 = *(v2 + OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_suiteManager);
  if (qword_1001FC738 != -1)
  {
    v14 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v14);
    v67[-4] = v15;
    v67[-3] = v16;
    v67[-2] = v17;
    sub_10003C49C(&qword_1001FDEC0, &unk_10017FDF0);
    v13 = 0;
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = v67[1];
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = a2;
  v20 = IndexPath.row.getter();
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *&v18->remoteCardFilter[8 * v20];
      goto LABEL_14;
    }

    __break(1u);
LABEL_24:
    v64 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v13 = v21;
  v18, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v13 testSuiteName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v12[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  v34 = *&v12[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName + 8];
  *v33 = v30;
  v33[1] = v32;
  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = *&v12[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel];

  v43 = v42;
  v44 = String._bridgeToObjectiveC()();
  v32, v45, v46, v47, v48, v49, v50, v51;
  [v43 setText:v44];

  v52 = [v13 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = type metadata accessor for Date();
  (*(*(v53 - 8) + 56))(v7, 0, 1, v53);
  v54 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  swift_beginAccess();
  sub_10004E630(v7, &v12[v54]);
  swift_endAccess();
  sub_10007D7F4();
  sub_10004E6A0(v7);
  v55 = [v13 results];
  if (!v55)
  {
    goto LABEL_20;
  }

  v19 = v55;
  v56 = [v55 components];
  sub_10003E110(0, &qword_1001FD530, ASTSuiteResultComponent_ptr);
  a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v64 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  a2, v57, v58, v59, v60, v61, v62, v63;
  if (v64)
  {
    v65 = v12;
    [v65 setAccessoryType:1];

    v19 = v65;
  }

LABEL_20:
  return v12;
}

void sub_10004E348(void *a1)
{
  v3 = v1;
  v4 = a1;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDEC0, &unk_10017FDF0);
    v2 = 0;
    OS_dispatch_queue.sync<A>(execute:)();
    v5 = v31;
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v6 = v4;
  v7 = IndexPath.row.getter();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v5 + 8 * v7 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_22:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_13;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v2 = v8;
  v5, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v2 results];
  if (!v16)
  {
    goto LABEL_18;
  }

  v6 = v16;
  v17 = [v16 components];
  sub_10003E110(0, &qword_1001FD530, ASTSuiteResultComponent_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  v5, v18, v19, v20, v21, v22, v23, v24;
  if (v25)
  {
    [v3 navigationController];
    v26 = [v2 testSuiteName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    objc_allocWithZone(sub_10003C49C(&qword_1001FD538, &qword_10017F270));
    v27 = v6;
    v28 = UIHostingController.init(rootView:)();
    v29 = [v3 navigationController];
    if (v29)
    {
      v30 = v29;
      [v29 pushViewController:v28 animated:1];
    }

    v6 = v2;
    v2 = v27;
  }

LABEL_18:
}

uint64_t sub_10004E630(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E6A0(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E708()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_10004E760()
{
  result = [objc_allocWithZone(type metadata accessor for Assertions()) init];
  qword_10020A368 = result;
  return result;
}

void sub_10004E790(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion) && !sub_1000660CC())
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Taking out a status bar style assertion", 39, 2, &_mh_execute_header, v6, v7, v3);
    v3, v8, v9, v10, v11, v12, v13, v14;

    v15 = [objc_allocWithZone(SBSStatusBarStyleOverridesAssertion) initWithStatusBarStyleOverrides:0x8000 forPID:getpid() exclusive:0 showsWhenForeground:0];
    v16 = *(a1 + v1);
    *(a1 + v1) = v15;
    v17 = v15;

    if (v17)
    {
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000019, 0x800000010018A8B0);
      v19 = v18;
      v20 = String._bridgeToObjectiveC()();
      v19, v21, v22, v23, v24, v25, v26, v27;
      [v17 setStatusString:v20];
    }

    v28 = *(a1 + v1);
    if (v28)
    {
      v36 = sub_10004EA54;
      v37 = 0;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_100084F94;
      v35 = &unk_1001C01C0;
      v29 = _Block_copy(&v32);
      v36 = sub_10004EB50;
      v37 = 0;
      v32 = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_100031FA8;
      v35 = &unk_1001C01E8;
      v30 = _Block_copy(&v32);
      v31 = v28;
      [v31 acquireWithHandler:v29 invalidationHandler:v30];
      _Block_release(v30);
      _Block_release(v29);
    }
  }
}

void sub_10004EA54(char a1)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  v3 = sub_10003DFBC();
  v4 = 28277;
  if (a1)
  {
    v4 = 0;
  }

  v5 = 0xE200000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = v3;
  if (a1)
  {
    v5 = 0xE000000000000000;
  }

  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Took out a status bar assertion %ssuccessfully", v13);

  v2, v6, v7, v8, v9, v10, v11, v12;
}

void sub_10004EB50()
{
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v0 + 64) = sub_1000516BC();
  *(v0 + 32) = v1;
  v2 = v1;
  v11 = static OS_os_log.default.getter();
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Status bar assertion was invalidated", 36, 2, &_mh_execute_header, v11, v3, v0);
  v0, v4, v5, v6, v7, v8, v9, v10;
}

void sub_10004EC64(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Invalidating status bar style assertion", 39, 2, &_mh_execute_header, v5, v6, v2);
  v2, v7, v8, v9, v10, v11, v12, v13;

  v14 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion;
  v15 = *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion);
  if (v15)
  {
    [v15 invalidate];
    v15 = *(a1 + v14);
  }

  *(a1 + v14) = 0;
}

void sub_10004ED98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions;
  swift_beginAccess();
  if (!*(*(a1 + v4) + 16) || (sub_100064BB8(a2), (v5 & 1) == 0))
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10017EC00;
    *(v6 + 56) = &type metadata for Int32;
    *(v6 + 64) = &protocol witness table for Int32;
    *(v6 + 32) = a2;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Taking out prevent task suspend assertions for pid: %d", v54);
    v6, v7, v8, v9, v10, v11, v12, v13;
    v14 = [objc_opt_self() targetWithPid:a2];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017EBF0;
    *(v18 + 32) = v17;
    v19 = objc_allocWithZone(RBSAssertion);
    v20 = v14;
    v21 = v17;
    v22 = v20;
    v23 = String._bridgeToObjectiveC()();
    sub_10003E110(0, &unk_1001FD710, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18, v25, v26, v27, v28, v29, v30, v31;
    v32 = [v19 initWithExplanation:v23 target:v22 attributes:isa];

    v56[0] = 0;
    v33 = [v32 acquireWithError:v56];
    v34 = v56[0];
    if (v33)
    {
      swift_beginAccess();
      v35 = v34;
      v36 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(a1 + v4);
      *(a1 + v4) = 0x8000000000000000;
      sub_1001422C4(v36, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + v4) = v55;
      swift_endAccess();
    }

    else
    {
      v38 = v56[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      swift_errorRetain();
      v39 = static OS_os_log.default.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56[0] = v42;
        *v41 = 136315138;
        swift_errorRetain();
        sub_10003C49C(&qword_100201C30, &unk_100183150);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        v46 = sub_100056B7C(v43, v44, v56);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v41 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unable to acquire Task Suspend Assertion, error: %s", v41, 0xCu);
        sub_100044554(v42);
      }

      else
      {
      }
    }
  }
}

void sub_10004F25C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions;
  swift_beginAccess();
  v36 = v2;
  v37 = a1;
  v3 = *(a1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v38 = v3;

  v9 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v28 = *(v37 + v36);
      *(v37 + v36) = _swiftEmptyDictionarySingleton;
      v28, v29, v30, v31, v32, v33, v34, v35;
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = qword_1001FC7B0;
        v12 = *(*(v38 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
        if (v11 != -1)
        {
          swift_once();
        }

        v7 &= v7 - 1;
        v13 = qword_10020A4F8;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10017EC00;
        v15 = [v12 target];
        v16 = [v15 description];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_10003DFBC();
        *(v14 + 32) = v17;
        *(v14 + 40) = v19;
        v20 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Invalidating prevent task suspend assertion for bundle identifier: %@", 69, 2, &_mh_execute_header, v13, v20, v14);
        v14, v21, v22, v23, v24, v25, v26, v27;
        [v12 invalidate];
      }

      while (v7);
    }
  }

  __break(1u);
}

void sub_10004F49C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient))
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Taking out a prevent prox cards assertion", 41, 2, &_mh_execute_header, v6, v7, v3);
    v3, v8, v9, v10, v11, v12, v13, v14;

    v15 = [objc_allocWithZone(SFClient) init];
    v16 = *(a1 + v1);
    *(a1 + v1) = v15;
    v17 = v15;

    if (v17)
    {
      v18 = String._bridgeToObjectiveC()();
      [v17 activateAssertionWithIdentifier:v18];
    }
  }
}

void sub_10004F650(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Invalidating prevent prox cards assertion", 41, 2, &_mh_execute_header, v5, v6, v2);
  v2, v7, v8, v9, v10, v11, v12, v13;

  v14 = OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient;
  [*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient) invalidate];
  v15 = *(a1 + v14);
  *(a1 + v14) = 0;
}

void sub_10004F780(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion))
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Taking out a disable sytem gestures assertion", 45, 2, &_mh_execute_header, v6, v7, v3);
    v3, v8, v9, v10, v11, v12, v13, v14;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v17 = [objc_opt_self() mainBundle];
    v18 = [v17 bundleIdentifier];

    if (v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = String._bridgeToObjectiveC()();
    v16, v22, v23, v24, v25, v26, v27, v28;
    if (v20)
    {
      v29 = String._bridgeToObjectiveC()();
      v20, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v29 = 0;
    }

    v37 = [objc_allocWithZone(AXAssertion) initWithType:v21 identifier:v29];

    v38 = *(a1 + v1);
    *(a1 + v1) = v37;
  }
}

void sub_10004F9B4(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Invalidating disable system gestures assertion", 46, 2, &_mh_execute_header, v5, v6, v2);
  v2, v7, v8, v9, v10, v11, v12, v13;

  v14 = *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion);
  *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion) = 0;
}

void sub_10004FAD4()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting;
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting) == 2)
    {
      v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting;
      if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting) == 2)
      {
        v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
        swift_unknownObjectRelease();
        if ((v3 & 1) == 0)
        {
          v4 = [objc_allocWithZone(SBSTestAutomationService) init];
          v5 = [v4 isChamoisWindowingUIEnabled];

          *(v0 + v1) = v5;
          v6 = static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          v7 = qword_10020A4F8;
          sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
          v8 = swift_allocObject();
          v35[1] = 2;
          *(v8 + 16) = xmmword_10017EC00;
          *(v8 + 56) = &type metadata for Bool;
          *(v8 + 64) = &protocol witness table for Bool;
          *(v8 + 32) = v5;
          os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Saved Chamois user setting: %d", 1);
          v8, v9, v10, v11, v12, v13, v14, v15;
          if (v5)
          {
            v16 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v7, "Disabling Chamois", 17, 2, &_swiftEmptyArrayStorage);
            v17 = [objc_allocWithZone(SBSTestAutomationService) init];
            [v17 setChamoisWindowingUIEnabled:0];
          }

          v18 = objc_allocWithZone(NSUserDefaults);
          v19 = String._bridgeToObjectiveC()();
          v20 = [v18 initWithSuiteName:v19];

          if (v20)
          {
            v21 = v20;
            v22 = String._bridgeToObjectiveC()();
            v23 = [v21 BOOLForKey:v22];

            *(v0 + v2) = v23;
            v24 = static os_log_type_t.default.getter();
            v25 = swift_allocObject();
            *(v25 + 16) = *v35;
            *(v25 + 56) = &type metadata for Bool;
            *(v25 + 64) = &protocol witness table for Bool;
            *(v25 + 32) = v23;
            os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v7, "Saved Windowed Apps user setting: %d", LODWORD(v35[0]));
            v25, v26, v27, v28, v29, v30, v31, v32;
            v33 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v7, "Disabling Windowed Apps", 23, 2, &_swiftEmptyArrayStorage);
            v36 = v21;
            v34 = String._bridgeToObjectiveC()();
            [v36 setInteger:0 forKey:v34];
          }

          else
          {
            *(v0 + v2) = 2;
          }
        }
      }
    }
  }
}

void sub_10004FE88()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v1 & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting;
      v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting);
      if (v3 != 2)
      {
        v4 = static os_log_type_t.default.getter();
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v5 = qword_10020A4F8;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_10017EC00;
        *(v6 + 56) = &type metadata for Bool;
        *(v6 + 64) = &protocol witness table for Bool;
        *(v6 + 32) = v3 & 1;
        os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Setting Windowed Apps to user saved setting: %d", v35);
        v6, v7, v8, v9, v10, v11, v12, v13;
        v14 = objc_allocWithZone(NSUserDefaults);
        v15 = String._bridgeToObjectiveC()();
        v16 = [v14 initWithSuiteName:v15];

        if (v16)
        {
          if (*(v0 + v2) == 2)
          {
            v17 = v16;
            isa = 0;
          }

          else
          {
            v19 = v16;
            isa = Bool._bridgeToObjectiveC()().super.super.isa;
          }

          v20 = String._bridgeToObjectiveC()();
          [v16 setObject:isa forKey:v20];
          swift_unknownObjectRelease();
        }

        *(v0 + v2) = 2;
      }

      v21 = OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting;
      v22 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting);
      if (v22 != 2)
      {
        v23 = static os_log_type_t.default.getter();
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v24 = qword_10020A4F8;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10017EC00;
        *(v25 + 56) = &type metadata for Bool;
        *(v25 + 64) = &protocol witness table for Bool;
        v26 = v22 & 1;
        *(v25 + 32) = v26;
        os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Setting Chamois to saved user setting: %d", v35);
        v25, v27, v28, v29, v30, v31, v32, v33;
        v34 = [objc_allocWithZone(SBSTestAutomationService) init];
        [v34 setChamoisWindowingUIEnabled:v26];

        *(v0 + v21) = 2;
      }
    }
  }
}

void sub_100050198()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes;
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes + 8) == 1)
    {
      v2 = v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes;
      if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes + 8) == 1)
      {
        v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
        swift_unknownObjectRelease();
        if ((v3 & 1) == 0)
        {
          v4 = objc_allocWithZone(NSUserDefaults);
          v5 = String._bridgeToObjectiveC()();
          v6 = [v4 initWithSuiteName:v5];

          if (v6)
          {
            v7 = String._bridgeToObjectiveC()();
            v8 = [v6 integerForKey:v7];

            *v1 = v8;
            *(v1 + 8) = 0;
            v9 = String._bridgeToObjectiveC()();
            v10 = [v6 integerForKey:v9];

            *v2 = v10;
            *(v2 + 8) = 0;
            v33 = static os_log_type_t.default.getter();
            if (qword_1001FC7B0 != -1)
            {
              swift_once();
            }

            v11 = qword_10020A4F8;
            sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_10017EC10;
            if (*(v1 + 8))
            {
              v13 = 0;
              v14 = 0;
            }

            else
            {
              sub_1000517EC();
              v13 = BinaryInteger.description.getter();
              v14 = v15;
            }

            *(v12 + 56) = &type metadata for String;
            v16 = sub_10003DFBC();
            v17 = v16;
            *(v12 + 64) = v16;
            if (v14)
            {
              v18 = v13;
            }

            else
            {
              v18 = 7104878;
            }

            v19 = 0xE300000000000000;
            if (v14)
            {
              v19 = v14;
            }

            *(v12 + 32) = v18;
            *(v12 + 40) = v19;
            if (*(v2 + 8) == 1)
            {
              v20 = (v12 + 72);
              *(v12 + 96) = &type metadata for String;
              *(v12 + 104) = v16;
            }

            else
            {
              sub_1000517EC();
              v21 = BinaryInteger.description.getter();
              v20 = (v12 + 72);
              *(v12 + 96) = &type metadata for String;
              *(v12 + 104) = v17;
              if (v22)
              {
                *v20 = v21;
LABEL_21:
                *(v12 + 80) = v22;
                os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v11, "Saved Gesture Touch Type user settings for left corner: %@, right corner: %@", 76, 2, v12);
                v12, v23, v24, v25, v26, v27, v28, v29;
                v30 = String._bridgeToObjectiveC()();
                [v6 setInteger:0 forKey:v30];

                v31 = String._bridgeToObjectiveC()();
                [v6 setInteger:0 forKey:v31];

                v32 = static os_log_type_t.default.getter();
                os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v11, "Setting Gesture Touch Type user settings for left and right corner to disabled.", 79, 2, &_swiftEmptyArrayStorage);

                return;
              }
            }

            *v20 = 7104878;
            v22 = 0xE300000000000000;
            goto LABEL_21;
          }
        }
      }
    }
  }
}

void sub_100050510()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v1 & 1) == 0)
    {
      v2 = objc_allocWithZone(NSUserDefaults);
      v3 = String._bridgeToObjectiveC()();
      v29 = [v2 initWithSuiteName:v3];

      if (v29)
      {
        if ((*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes + 8) & 1) == 0)
        {
          v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes);
          v5 = static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          v6 = qword_10020A4F8;
          sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_10017EC00;
          *(v7 + 56) = &type metadata for Int;
          *(v7 + 64) = &protocol witness table for Int;
          *(v7 + 32) = v4;
          os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Setting Gesture Touch Type for left corner to user saved setting: %d", v28);
          v7, v8, v9, v10, v11, v12, v13, v14;
          v15 = String._bridgeToObjectiveC()();
          [v29 setInteger:v4 forKey:v15];
        }

        if ((*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes + 8) & 1) == 0)
        {
          v16 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes);
          v17 = static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          v18 = qword_10020A4F8;
          sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10017EC00;
          *(v19 + 56) = &type metadata for Int;
          *(v19 + 64) = &protocol witness table for Int;
          *(v19 + 32) = v16;
          os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Setting Gesture Touch Type for right corner to user saved setting: %d", v28);
          v19, v20, v21, v22, v23, v24, v25, v26;
          v27 = String._bridgeToObjectiveC()();
          [v29 setInteger:v16 forKey:v27];
        }
      }
    }
  }
}

id sub_100050814()
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController);
  }

  else
  {
    v4 = [objc_allocWithZone(SFAirDropDiscoveryController) init];
    v5 = [v4 isNearbySharingEnabled];
    *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState) = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1000508A4()
{
  v1 = v0;
  v2 = kSFOperationDiscoverableModeKey;
  if (!kSFOperationDiscoverableModeKey)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyAppValue(v2, v3);

  if (!v4 || (swift_dynamicCast() & 1) == 0)
  {
    if (kSFOperationDiscoverableModeOff)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v6;
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v5 = v25;
LABEL_7:
  v7 = String._bridgeToObjectiveC()();
  v5, v8, v9, v10, v11, v12, v13, v14;
  v15 = kSFOperationDiscoverableModeContactsOnly;
  if (kSFOperationDiscoverableModeContactsOnly)
  {
    type metadata accessor for CFString(0);
    sub_1000517A4(&unk_1001FDFB0, type metadata accessor for CFString, &unk_10017D8DC);
    v16 = v7;
    v17 = v15;
    v18 = static _CFObject.== infix(_:_:)();

    if (v18)
    {

      v19 = 1;
LABEL_14:
      *(v1 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting) = v19;
      v24 = sub_100050814();
      [v24 setDiscoverableMode:0];

      return;
    }
  }

  else
  {
    v20 = v7;
  }

  v21 = kSFOperationDiscoverableModeEveryone;
  v22 = kSFOperationDiscoverableModeEveryone;

  if (v21)
  {
    type metadata accessor for CFString(0);
    sub_1000517A4(&unk_1001FDFB0, type metadata accessor for CFString, &unk_10017D8DC);
    v23 = static _CFObject.== infix(_:_:)();

    if (v23)
    {
      v19 = 2;
      goto LABEL_14;
    }
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting) = 0;
}

void sub_100050ADC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting;
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) == 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 copyPropertyForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      v5 = swift_dynamicCast();
      v6 = v10;
      if (!v5)
      {
        v6 = 2;
      }
    }

    else
    {
      sub_10005173C(v13);
      v6 = 2;
    }

    *(v0 + v1) = v6;
  }

  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setProperty:isa forKey:v9];
}

void sub_100050C28()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    v2 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("We are not in CheckerBoard. Not attempting to aquire capture button assertion from SpringBoard", 94, 2, &_mh_execute_header, v9, v2, &_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion))
    {
      sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      v4 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Capture button assertion has already been acquired, ignoring request", 68, 2, &_mh_execute_header, v9, v4, &_swiftEmptyArrayStorage);
    }

    else
    {
      v9 = [objc_opt_self() sharedInstance];
      v5 = String._bridgeToObjectiveC()();
      v6 = [v9 acquireCaptureButtonSuppressionAssertionWithOptions:0 reason:v5];

      *(v0 + v3) = v6;
      swift_unknownObjectRelease();
      if (!*(v0 + v3))
      {
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v7 = static OS_os_log.default.getter();
        v8 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Failed to get capture button assertion!", 39, 2, &_mh_execute_header, v7, v8, &_swiftEmptyArrayStorage);
      }
    }
  }
}

id sub_100050E34()
{
  v1 = v0;
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue;
  v38 = sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v30 = "Disabling Chamois";
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  v37 = sub_1000517A4(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v36 = sub_10003C49C(&unk_1001FCEA0, &unk_10017ED50);
  v9 = sub_100051840();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v34 = *(v2 + 104);
  v35 = v2 + 104;
  v32 = v4;
  v10 = v4;
  v11 = v39;
  v34(v10);
  v29[0] = v8;
  *&v0[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = ".statusBarStyleQueue";
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue;
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  v29[1] = v5;
  v29[2] = v9;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v33;
  v13 = v34;
  (v34)(v32, v33, v11);
  *&v0[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = ".preventTaskSuspendQueue";
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue;
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v32;
  v15 = v39;
  v13(v32, v12, v39);
  *&v1[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue;
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v34)(v14, v33, v15);
  *&v1[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardDefaultsDomain];
  *v17 = 0xD000000000000015;
  v17[1] = 0x800000010018ADC0;
  v18 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardMultiWindowDefault];
  *v18 = 0xD00000000000001BLL;
  v18[1] = 0x800000010018ADE0;
  v19 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardLeftGestureTouchTypesDefault];
  *v19 = 0xD000000000000023;
  v19[1] = 0x800000010018AE00;
  v20 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardRightGestureTouchTypesDefault];
  *v20 = 0xD000000000000024;
  v20[1] = 0x800000010018AE30;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardGestureTouchTypesDisabled] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion] = 0;
  v21 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneSettingsKey];
  *v21 = 0xD000000000000016;
  v21[1] = 0x800000010018AE60;
  v22 = OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient;
  *&v1[v22] = [objc_allocWithZone(BrightnessSystemClient) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions] = _swiftEmptyDictionarySingleton;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState] = 2;
  v23 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes];
  *v24 = 0;
  v24[8] = 1;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting] = 0;
  v25 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_sharingdDomain];
  *v25 = 0xD000000000000032;
  v25[1] = 0x800000010018AE80;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting] = 2;
  v26 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting];
  *v26 = 0;
  v26[4] = 1;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting] = 2;
  v27 = type metadata accessor for Assertions();
  v40.receiver = v1;
  v40.super_class = v27;
  return objc_msgSendSuper2(&v40, "init");
}

id sub_100051510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Assertions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000516BC()
{
  result = qword_100201280;
  if (!qword_100201280)
  {
    sub_10003E110(255, &qword_1001FD6F0, OS_os_log_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201280);
  }

  return result;
}

uint64_t sub_100051724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005173C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD720, &unk_10017ED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000517A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000517EC()
{
  result = qword_1001FD730;
  if (!qword_1001FD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD730);
  }

  return result;
}

unint64_t sub_100051840()
{
  result = qword_1001FD750;
  if (!qword_1001FD750)
  {
    sub_10003C4E4(&unk_1001FCEA0, &unk_10017ED50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD750);
  }

  return result;
}

id sub_100051968(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceObserverTimberLorryDevelopment();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000519C0(uint64_t a1)
{
  v1 = qword_10020A508;
  if (qword_10020A508)
  {
    v3 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v3, v1))
    {
      sub_10003C49C(&qword_100202520, qword_10017F308);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      v12 = objc_allocWithZone(type metadata accessor for DeviceTimberLorryDevelopment());
      sub_10011B4F0(v3, v1);
      sub_100051B18();
      AnyHashable.init<A>(_:)();
      v13 = sub_1000F798C(inited);
      swift_setDeallocating();
      sub_10003DB48(inited + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;
      (*(a1 + 16))(a1, isa);
      v13, v15, v16, v17, v18, v19, v20, v21;
    }

    else
    {
      v1, v4, v5, v6, v7, v8, v9, v10;
    }
  }

  return [objc_allocWithZone(NSUUID) init];
}

unint64_t sub_100051B18()
{
  result = qword_1001FD790;
  if (!qword_1001FD790)
  {
    type metadata accessor for DeviceTimberLorryDevelopment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD790);
  }

  return result;
}

void sub_100051B70(void *a1)
{
  v2 = v1;
  v106 = type metadata accessor for UUID();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10003DAAC(v5, qword_10020A510);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v101 = v2;
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100056B7C(0x6C66287055746573, 0xEC000000293A776FLL, aBlock);
    *(v9 + 12) = 2080;
    v11 = [v6 debugDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100056B7C(v12, v14, aBlock);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s flow: %s", v9, 0x16u);
    swift_arrayDestroy();
    v2 = v101;
  }

  if ([v6 destination] != 4 && objc_msgSend(v6, "destination") != 5)
  {
    v69 = 0;
LABEL_23:
    sub_10005A074();
    swift_allocError();
    *v99 = v69;
    swift_willThrow();
    return;
  }

  v23 = [v6 serialNumber];
  if (!v23)
  {
LABEL_22:
    v69 = 1;
    goto LABEL_23;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [v6 sessionID];
  if (!v28)
  {
    v27, v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_22;
  }

  v36 = v28;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = *(v2 + 24);
  *(v2 + 16) = v25;
  *(v2 + 24) = v27;
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = *(v2 + 40);
  *(v2 + 32) = v37;
  *(v2 + 40) = v39;
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = [v6 destination];
  *(v2 + 64) = v56 == 5;
  if (v56 != 5)
  {
    v70 = [v6 passcode];
    if (v70)
    {
      v71 = v70;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v68 = *(v2 + 56);
      *(v2 + 48) = v72;
      *(v2 + 56) = v74;
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v57 = v102;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  (*(v103 + 8))(v57, v106);
  v68 = *(v2 + 56);
  *(v2 + 48) = v58;
  *(v2 + 56) = v60;
LABEL_16:
  v68, v61, v62, v63, v64, v65, v66, v67;
  v75 = v2;
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v76 = qword_10020A368;
  v77 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_10003DA8C;
  *(v79 + 24) = v78;
  aBlock[4] = sub_10003DAA4;
  aBlock[5] = v79;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060C48;
  aBlock[3] = &unk_1001C03F0;
  v80 = _Block_copy(aBlock);
  v81 = v76;

  dispatch_sync(v77, v80);
  _Block_release(v80);
  LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

  if (v80)
  {
    __break(1u);
  }

  else
  {
    v82 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v81[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v83 = sub_100050814();
    [v83 setNearbySharingEnabled:(v81[v82] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
    v84 = [objc_opt_self() sharedApplication];
    v85 = [v84 delegate];

    if (v85)
    {
      type metadata accessor for AppDelegate();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
        v88 = v86;
        [*(v86 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
        v89 = *(v88 + v87);
        swift_unknownObjectRelease();
        v90 = type metadata accessor for ButtonEventsConsumer();
        v91 = objc_allocWithZone(v90);
        v92 = &v91[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        *v92 = 0;
        *(v92 + 1) = 0;
        v104.receiver = v91;
        v104.super_class = v90;
        v93 = v89;

        v94 = objc_msgSendSuper2(&v104, "init");
        v95 = &v94[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        v96 = *&v94[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        v97 = *&v94[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler + 8];
        *v95 = sub_10005A1B4;
        v95[1] = v75;
        v98 = v94;
        sub_10003C52C(v96, v97);

        [v93 addTarget:v98 action:"consume:" forButtonEvents:48 propagate:0];
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_100052250()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = *(v0 + 3);
  if (v9 && (v10 = *(v0 + 5)) != 0 && (v11 = *(v0 + 7)) != 0)
  {
    v12 = *(v0 + 4);
    if (*(v0 + 64) == 1)
    {
      v13 = *(v0 + 6);
      v50 = *(v0 + 2);
      v51 = v13;
      v53 = v6;
      v52 = objc_allocWithZone(DADiagnosticFlow);

      v14 = String._bridgeToObjectiveC()();
      v50 = v14;
      v15 = String._bridgeToObjectiveC()();
      v51 = String._bridgeToObjectiveC()();
      v16 = [v52 initWithDestination:3 serialNumber:v14 sessionID:v15 passcode:v51];

      sub_1000B1294(v8);
      v9, v17, v18, v19, v20, v21, v22, v23;
      v10, v24, v25, v26, v27, v28, v29, v30;
      v11, v31, v32, v33, v34, v35, v36, v37;

      v38 = v53;
      (*(v2 + 16))(v4, v8, v53);
      v39 = objc_allocWithZone(type metadata accessor for AssessmentQRCodeViewController(0));
      v0 = sub_1000B5B34(v4, 1);
      (*(v2 + 8))(v8, v38);
    }

    else
    {

      v0 = sub_100052EBC(v12, v10, 0);
      v10, v42, v43, v44, v45, v46, v47, v48;
    }
  }

  else
  {
    sub_10005A074();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
  }

  return v0;
}

void *sub_1000524E4()
{
  type metadata accessor for CosmeticAssessmentAssessorManager();
  swift_allocObject();
  result = sub_100052530();
  qword_10020A370 = result;
  return result;
}

void *sub_100052530()
{
  type metadata accessor for DeviceAssessmentPeerDeviceSession();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  swift_allocObject();
  *(v0 + 72) = DeviceAssessmentPeerDeviceSession.init()();
  sub_10005A124(&qword_1001FD898, v1, type metadata accessor for CosmeticAssessmentAssessorManager, &unk_10017F3F0);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;

  DeviceAssessmentPeerDeviceSession.delegate.setter();

  return v0;
}

uint64_t sub_1000525EC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10005A1BC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0418;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005A124(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_100052890(uint64_t a1)
{

  sub_100088E48(1, 0);

  return result;
}

double sub_100052904(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1000EC810(0, 0, v4, &unk_10017F558, v7);

  return result;
}

uint64_t sub_100052A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100052AF8, v6, v5);
}

uint64_t sub_100052AF8()
{
  v1 = *(*(v0 + 24) + 88);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);

    static AssessmentError.userCanceledSession.getter();
    v3 = type metadata accessor for AssessmentError();
    (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_100052C44;
    v5 = *(v0 + 32);

    return sub_1000DC0DC(v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100052C44()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_10003DD84(v3, &qword_1001FCE98, &unk_10017F0E0);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100052E50;
  }

  else
  {
    v6 = sub_100052DD0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100052DD0()
{

  **(v0 + 16) = *(v0 + 64) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052E50()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100052EBC(uint64_t a1, uint64_t a2, char a3)
{
  v32 = type metadata accessor for DeviceAssessmentViewController.Configuration();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for DeviceAssessmentViewController.Configuration.AssessmentContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v17 = &v31 - v15;
  v18 = &enum case for DeviceAssessmentViewController.Configuration.AssessmentContext.target(_:);
  if ((a3 & 1) == 0)
  {
    v18 = &enum case for DeviceAssessmentViewController.Configuration.AssessmentContext.helper(_:);
  }

  (*(v11 + 104))(&v31 - v15, *v18, v10, v16);
  (*(v11 + 16))(v13, v17, v10);

  DeviceAssessmentViewController.Configuration.init(sessionID:context:)();
  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  v19 = v4;
  v20 = v32;
  (*(v4 + 16))(v6, v9, v32);
  v21 = objc_allocWithZone(type metadata accessor for DeviceAssessmentViewController());
  swift_retain_n();
  v22 = DeviceAssessmentViewController.init(configuration:peerDeviceSession:)();
  sub_10005A124(&qword_1001FD8A0, v23, type metadata accessor for CosmeticAssessmentAssessorManager, &unk_10017F468);
  swift_unknownObjectRetain();
  DeviceAssessmentViewController.delegate.setter();
  v24 = v22;
  v25 = [v24 navigationItem];
  [v25 setHidesBackButton:1];

  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 userInterfaceLayoutDirection];

  if (v27 == 1)
  {
    v28 = 15;
  }

  else
  {
    v28 = 16;
  }

  [v24 setModalPresentationStyle:0];
  [v24 setModalTransitionStyle:v28];
  v33 = 1;
  v29 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v24, &unk_1001FEDE0, v29, 1);
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v19 + 8))(v9, v20);
  (*(v11 + 8))(v17, v10);
  return v24;
}

void sub_1000532CC()
{
  v1 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v35);
    _os_log_impl(&_mh_execute_header, v3, v4, "[Assessor] %s", v5, 0xCu);
    sub_100044554(v6);
  }

  if (v0[11])
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v35);
      _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s called with an active connection; ignoring", v9, 0xCu);
      sub_100044554(v10);
    }
  }

  else
  {
    v11 = v0[5];
    if (v11 && (v12 = v0[7]) != 0)
    {
      v13 = v0[4];
      v14 = v1[6];
      type metadata accessor for CosmeticAssessmentP2PConnectionManager();
      swift_allocObject();

      v15 = sub_1000705B8(v13, v11, v14, v12, 1);
      v11, v16, v17, v18, v19, v20, v21, v22;
      v12, v23, v24, v25, v26, v27, v28, v29;
      v1[10] = v15;

      if (v1[10])
      {

        sub_10006D8F8();
      }
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v35);
        _os_log_impl(&_mh_execute_header, v30, v31, "[Assessor] %s called before setting up; ignoring", v32, 0xCu);
        sub_100044554(v33);
      }

      sub_10005A074();
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
    }
  }
}

void sub_100053678(uint64_t a1)
{
  v3 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v1[11] = a1;

  v6 = v1[5];
  if (v6)
  {
    v7 = v1[4];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    v11[5] = v7;
    v11[6] = v6;
    sub_1000539D8(0, 0, v5, &unk_10017F568, v11);
  }

  else
  {
  }
}

uint64_t sub_100053804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000538A0, v8, v7);
}

uint64_t sub_1000538A0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_100052EBC(v2, v1, *(v3 + 64));
  v5 = sub_1000882F0();
  if (v5 == 2 || (v5 & 1) == 0)
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    [qword_10020A388 pushViewController:v4 animated:1];
  }

  else
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    [qword_10020A388 presentViewController:v4 animated:1 completion:0];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000539D8(uint64_t a1, DARootViewController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100044704(a3, v32 - v10, &unk_1001FFE20, &unk_10017ED10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10003DD84(v11, &unk_1001FFE20, &unk_10017ED10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
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

uint64_t sub_100053CD8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocClassInstance();
}

uint64_t sub_100053D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for AssessmentError();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100053F14, v10, v9);
}

uint64_t sub_100053F14()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[9];

  (*(v3 + 16))(v1, v5, v4);
  static AssessmentError.canceledInitialLoad.getter();
  sub_10005A124(&qword_1001FD3C0, 255, &type metadata accessor for AssessmentError, &protocol conformance descriptor for AssessmentError);
  LOBYTE(v1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  if (v1 & 1) != 0 || (v7 = v0[19], v8 = v0[17], static AssessmentError.userCanceledSession.getter(), v9 = dispatch thunk of static Equatable.== infix(_:_:)(), v6(v7, v8), (v9))
  {
    v6(v0[20], v0[17]);
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v10 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v10)
    {
      [v10 setResultCode:-4];
    }

    v11 = 14;
LABEL_8:
    sub_1000F6FF8(v11);
    goto LABEL_9;
  }

  v14 = v0[19];
  v15 = v0[17];
  static AssessmentError.clientTerminatedSession.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6(v14, v15);
  if (v16)
  {
    v17 = v0[16];
    v33 = v0[15];
    v34 = v0[14];
    v18 = v0[12];
    v19 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v6(v0[20], v0[17]);
    sub_100057B68();
    v22 = static OS_dispatch_queue.main.getter();
    v0[6] = sub_100057BB4;
    v0[7] = v21;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100031FA8;
    v0[5] = &unk_1001C0288;
    v23 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = &_swiftEmptyArrayStorage;
    sub_10005A124(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v18 + 8))(v19, v20);
    (*(v33 + 8))(v17, v34);
  }

  else
  {
    v24 = v0[19];
    v25 = v0[17];
    static AssessmentError.viewSupportOptions.getter();
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v6(v24, v25);
    v27 = v0[20];
    if (v26)
    {
      v6(v0[20], v0[17]);
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v28 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v28)
      {
        [v28 setResultCode:-2];
      }

      v11 = 18;
      goto LABEL_8;
    }

    v29 = v0[19];
    v30 = v0[17];
    static AssessmentError.retryExceeded.getter();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v6(v29, v30);
    v6(v27, v30);
    if (v31)
    {
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v32 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v32)
      {
        [v32 setResultCode:-1];
      }

      v11 = 17;
      goto LABEL_8;
    }

    sub_1000F74E8(16);
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

void sub_100054480()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A388;
  [qword_10020A388 dismissViewControllerAnimated:1 completion:0];
  v1 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v2 = sub_10009A744(2);
  [v0 pushViewController:v2 animated:1];
}

double sub_100054558(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if (*(a2 + 80))
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    (*(v5 + 32))(v10 + v9, v8, v4);

    sub_100054714(sub_100059F9C, v10);
  }

  return v6.n128_f64[0];
}

uint64_t sub_1000546C4(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = a1;

  sub_10003C49C(&qword_1001FD880, &qword_10017F540);
  return CheckedContinuation.resume(returning:)();
}

void sub_100054714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWBrowser.Descriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v2 + 48);
  v12 = *(v3 + 56);
  *(v3 + 48) = sub_10005A01C;
  *(v3 + 56) = v10;

  sub_10003C52C(v11, v12);
  type metadata accessor for NWParameters();
  swift_allocObject();
  NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  *v9 = 0xD000000000000019;
  v9[1] = 0x800000010018B2E0;
  v9[2] = 0;
  v9[3] = 0;
  (*(v7 + 104))(v9, enum case for NWBrowser.Descriptor.bonjour(_:), v6);
  type metadata accessor for NWBrowser();
  swift_allocObject();

  v13 = NWBrowser.init(for:using:)();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = a1;
  v15[5] = a2;

  sub_10003C48C(sub_10005A060, v15);
  NWBrowser.stateUpdateHandler.setter();

  v16 = swift_allocObject();
  swift_weakInit();

  sub_10003C48C(sub_10005A06C, v16);
  NWBrowser.browseResultsChangedHandler.setter();

  sub_100057B68();
  v17 = static OS_dispatch_queue.main.getter();
  NWBrowser.start(queue:)();
}

void sub_1000549F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWBrowser.Descriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v2 + 48);
  v12 = *(v3 + 56);
  *(v3 + 48) = sub_10005A0C8;
  *(v3 + 56) = v10;

  sub_10003C52C(v11, v12);
  type metadata accessor for NWParameters();
  swift_allocObject();
  NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  *v9 = 0xD000000000000019;
  v9[1] = 0x800000010018B2E0;
  v9[2] = 0;
  v9[3] = 0;
  (*(v7 + 104))(v9, enum case for NWBrowser.Descriptor.bonjour(_:), v6);
  type metadata accessor for NWBrowser();
  swift_allocObject();

  v13 = NWBrowser.init(for:using:)();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v13;
  v15[4] = a1;
  v15[5] = a2;

  sub_10003C48C(sub_10005A118, v15);
  NWBrowser.stateUpdateHandler.setter();

  v16 = swift_allocObject();
  swift_weakInit();

  sub_10003C48C(sub_10005A5A4, v16);
  NWBrowser.browseResultsChangedHandler.setter();

  sub_100057B68();
  v17 = static OS_dispatch_queue.main.getter();
  NWBrowser.start(queue:)();
}

uint64_t sub_100054CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100057BD4();
}

uint64_t sub_100054D6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100058064();
}

uint64_t sub_100054E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000581F8();
}

uint64_t sub_100054EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058550();
}

uint64_t sub_100054F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058D44();
}

uint64_t sub_100054FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058F60();
}

uint64_t sub_10005508C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000494BC;

  return sub_10005917C(a2);
}

uint64_t sub_100055138(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000494BC;

  return sub_10005975C(a2);
}

uint64_t sub_1000551E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10005876C();
}

uint64_t sub_100055284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058B28();
}

uint64_t sub_100055324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100059540();
}

void sub_1000553C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for TargetDevicePeerConnection(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    a3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x800000010018B300, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to cast actor to type %s", v8, 0xCu);
      sub_100044554(v9);
    }
  }
}

void sub_100055570(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for AssessorDevicePeerConnection(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    a3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100056B7C(0xD00000000000001CLL, 0x800000010018B340, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to cast actor to type %s", v8, 0xCu);
      sub_100044554(v9);
    }
  }
}

void sub_10005571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v52 = a4;
  v53 = a5;
  v54 = a3;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v55 = &v49 - v17;
  v18 = type metadata accessor for NWBrowser.State();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 != enum case for NWBrowser.State.failed(_:))
  {
    if (v22 == enum case for NWBrowser.State.ready(_:))
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10003DAAC(v35, qword_10020A510);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_23;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Browser ready";
    }

    else
    {
      if (v22 != enum case for NWBrowser.State.cancelled(_:))
      {

        (*(v19 + 8))(v21, v18);
        return;
      }

      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10003DAAC(v48, qword_10020A510);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v36, v37))
      {
LABEL_23:

        return;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Browser cancelled";
    }

    _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);

    goto LABEL_23;
  }

  (*(v19 + 96))(v21, v18);
  v23 = v55;
  (*(v7 + 32))(v55, v21, v6);
  *v15 = -65569;
  (*(v7 + 104))(v15, enum case for NWError.dns(_:), v6);
  v24 = static NWError.== infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v15, v6);
  v51 = v25;
  if (v24)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10003DAAC(v26, qword_10020A510);
    v27 = *(v7 + 16);
    v27(v12, v23, v6);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v30 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v27(v31, v12, v6);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v51;
      v51(v12, v6);
      *(v30 + 4) = v32;
      v34 = v50;
      *v50 = v32;
      v23 = v55;
      _os_log_impl(&_mh_execute_header, v28, v29, "Browser failed with %@, restarting", v30, 0xCu);
      sub_10003DD84(v34, &qword_1001FF0C0, &unk_10017ED00);
    }

    else
    {

      v33 = v51;
      v51(v12, v6);
    }

    NWBrowser.cancel()();
    sub_100054714(v52, v53);
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10003DAAC(v40, qword_10020A510);
    v41 = *(v7 + 16);
    v41(v9, v23, v6);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v44 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v41(v45, v9, v6);
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v51;
      v51(v9, v6);
      *(v44 + 4) = v46;
      v47 = v53;
      *v53 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Browser failed with %@, stopping", v44, 0xCu);
      sub_10003DD84(v47, &qword_1001FF0C0, &unk_10017ED00);
    }

    else
    {

      v33 = v51;
      v51(v9, v6);
    }

    NWBrowser.cancel()();
    v23 = v55;
  }

  v33(v23, v6);
}

void sub_100055F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v52 = a4;
  v53 = a5;
  v54 = a3;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v55 = &v49 - v17;
  v18 = type metadata accessor for NWBrowser.State();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 != enum case for NWBrowser.State.failed(_:))
  {
    if (v22 == enum case for NWBrowser.State.ready(_:))
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10003DAAC(v35, qword_10020A510);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_23;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Browser ready";
    }

    else
    {
      if (v22 != enum case for NWBrowser.State.cancelled(_:))
      {

        (*(v19 + 8))(v21, v18);
        return;
      }

      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10003DAAC(v48, qword_10020A510);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v36, v37))
      {
LABEL_23:

        return;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Browser cancelled";
    }

    _os_log_impl(&_mh_execute_header, v36, v37, v39, v38, 2u);

    goto LABEL_23;
  }

  (*(v19 + 96))(v21, v18);
  v23 = v55;
  (*(v7 + 32))(v55, v21, v6);
  *v15 = -65569;
  (*(v7 + 104))(v15, enum case for NWError.dns(_:), v6);
  v24 = static NWError.== infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v15, v6);
  v51 = v25;
  if (v24)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10003DAAC(v26, qword_10020A510);
    v27 = *(v7 + 16);
    v27(v12, v23, v6);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v30 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v27(v31, v12, v6);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v51;
      v51(v12, v6);
      *(v30 + 4) = v32;
      v34 = v50;
      *v50 = v32;
      v23 = v55;
      _os_log_impl(&_mh_execute_header, v28, v29, "Browser failed with %@, restarting", v30, 0xCu);
      sub_10003DD84(v34, &qword_1001FF0C0, &unk_10017ED00);
    }

    else
    {

      v33 = v51;
      v51(v12, v6);
    }

    NWBrowser.cancel()();
    sub_1000549F0(v52, v53);
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10003DAAC(v40, qword_10020A510);
    v41 = *(v7 + 16);
    v41(v9, v23, v6);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v44 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v41(v45, v9, v6);
      v46 = _swift_stdlib_bridgeErrorToNSError();
      v33 = v51;
      v51(v9, v6);
      *(v44 + 4) = v46;
      v47 = v53;
      *v53 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Browser failed with %@, stopping", v44, 0xCu);
      sub_10003DD84(v47, &qword_1001FF0C0, &unk_10017ED00);
    }

    else
    {

      v33 = v51;
      v51(v9, v6);
    }

    NWBrowser.cancel()();
    v23 = v55;
  }

  v33(v23, v6);
}

uint64_t sub_100056764(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000567B0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100056810(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005A594;

  return v6(a1);
}

uint64_t sub_100056908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100056A00;

  return v6(a1);
}

uint64_t sub_100056A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100056B20(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_100056B7C(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

unint64_t sub_100056B7C(uint64_t a1, DARootViewController *a2, uint64_t *a3)
{

  v6 = sub_100056C48(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10003E010(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100044554(v18);
  return v14;
}

unint64_t sub_100056C48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100056D54(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

DARootViewController *sub_100056D54(uint64_t a1, unint64_t a2)
{
  v3 = sub_100056DA0(a1, a2);
  sub_100056ED0(&off_1001BD830);
  return v3;
}

DARootViewController *sub_100056DA0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100056FBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6->remoteCardFilter, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7->remoteCardFilter, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100056FBC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_100056ED0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *&(*v1)->hostAppBundleIdentifier[8];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->responder >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_100057030(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *&v3->hostAppBundleIdentifier[8];
  if ((*v3->responder >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->remoteCardFilter[v15], (result + 32), v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *&v3->hostAppBundleIdentifier[8];
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *&v3->hostAppBundleIdentifier[8] = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

DARootViewController *sub_100056FBC(uint64_t a1, uint64_t a2)
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

  sub_10003C49C(&qword_1001FD878, &qword_10017F4B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  *&v4->hostAppBundleIdentifier[8] = a1;
  *v4->responder = 2 * v5 - 64;
  return result;
}

DARootViewController *sub_100057030(DARootViewController *result, int64_t a2, void *a3, DARootViewController *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->responder;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *&a4->hostAppBundleIdentifier[8];
  if (v11 <= v12)
  {
    v13 = *&a4->hostAppBundleIdentifier[8];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_1001FD878, &qword_10017F4B8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v17 = a4->remoteCardFilter;
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v17[v12])
    {
      memmove(remoteCardFilter, v17, v12);
    }

    *&a4->hostAppBundleIdentifier[8] = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_BYTE **sub_100057124(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100057134(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000571A8(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1000571E4(uint64_t a1, DARootViewController *a2)
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10003DAAC(v4, qword_10020A510);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  a2, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100056B7C(0xD000000000000036, 0x800000010018B030, &v15);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100056B7C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s sessionID: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000F6FF8(15);
}

double sub_10005737C(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v4 = v3;
  v52 = a2;
  v7 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v7 - 8);
  v55 = &v48 - v8;
  v9 = type metadata accessor for AssessmentError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = v11;
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10003DAAC(v15, qword_10020A510);
  v56 = *(v10 + 16);
  v56(v14, a1, v9);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a3, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v51 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v26 = 136315650;
    *(v26 + 4) = sub_100056B7C(0xD00000000000003ELL, 0x800000010018AFF0, &v57);
    *(v26 + 12) = 2112;
    sub_10005A124(&qword_1001FD870, 255, &type metadata accessor for AssessmentError, &protocol conformance descriptor for AssessmentError);
    swift_allocError();
    v50 = a1;
    v56(v28, v14, v9);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    (*(v10 + 8))(v14, v9);
    *(v26 + 14) = v29;
    *v27 = v29;
    *(v26 + 22) = 2080;
    if (a3)
    {
      v30 = v52;
    }

    else
    {
      v30 = 0;
    }

    if (a3)
    {
      v31 = a3;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v32 = sub_100056B7C(v30, v31, &v57);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 24) = v32;
    a1 = v50;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s error: %@, sessionID: %s", v26, 0x20u);
    sub_10003DD84(v27, &qword_1001FF0C0, &unk_10017ED00);

    swift_arrayDestroy();

    v4 = v51;
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  byte_10020A378 = 1;
  v40 = type metadata accessor for TaskPriority();
  v41 = v55;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v42 = v54;
  v56(v54, a1, v9);
  type metadata accessor for MainActor();

  v43 = static MainActor.shared.getter();
  v44 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v45 = (v53 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  *(v46 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v46 + v44, v42, v9);
  *(v46 + v45) = v4;
  sub_1000539D8(0, 0, v41, &unk_10017F4A8, v46);

  return result;
}

uint64_t sub_10005787C()
{
  v1 = type metadata accessor for AssessmentError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7, v6);
}

uint64_t sub_100057954(uint64_t a1)
{
  v4 = *(type metadata accessor for AssessmentError() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003DEC8;

  return sub_100053D5C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100057A78()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100057AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056810(a1, v4);
}

unint64_t sub_100057B68()
{
  result = qword_1001FD040;
  if (!qword_1001FD040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD040);
  }

  return result;
}

uint64_t sub_100057BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057BF4()
{
  v33 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000035, 0x800000010018B2A0, &v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = v0[2];
  if ((*(v6 + 64) & 1) == 0)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = *(v6 + 56);
      if (v8)
      {
        v9 = *(v6 + 32);
        v10 = *(v6 + 48);
        type metadata accessor for CosmeticAssessmentP2PConnectionManager();
        swift_allocObject();

        v11 = sub_1000705B8(v9, v7, v10, v8, 1);
        v8, v12, v13, v14, v15, v16, v17, v18;
        v7, v19, v20, v21, v22, v23, v24, v25;
        *(v6 + 80) = v11;

        v26 = swift_task_alloc();
        v0[3] = v26;
        *v26 = v0;
        v26[1] = sub_100057F20;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)();
      }
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Missing service name or passcode required for starting P2P connection", v29, 2u);
    }
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_100057F20()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_10005804C;
  }

  else
  {
    v2 = sub_100058034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058080()
{
  v9 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000002ALL, 0x800000010018B270, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100058218()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003ALL, 0x800000010018B230, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DCAE4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058414()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005A58C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100058570()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003BLL, 0x800000010018B1F0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DCE34();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10005878C()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000033, 0x800000010018B0E0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058988;

    return sub_1000DD184();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058988()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100058AC4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100058AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058B48()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003BLL, 0x800000010018B0A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DD4D4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058D64()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000045, 0x800000010018B1A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DD954();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058F80()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003DLL, 0x800000010018B160, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DDCA4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10005917C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10005919C, 0, 0);
}

uint64_t sub_10005919C()
{
  v12 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003FLL, 0x800000010018B120, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[3] + 88);
  v0[4] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_1000593A0;
    v8 = v0[2];

    return sub_1000DDFF4(v8);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000593A0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000594DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000594DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059560()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000002ELL, 0x800000010018B070, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DE880();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}