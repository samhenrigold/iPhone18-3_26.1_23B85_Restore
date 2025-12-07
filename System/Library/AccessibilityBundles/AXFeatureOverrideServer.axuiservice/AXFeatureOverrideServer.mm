uint64_t sub_1778()
{
  v0 = sub_4BE4();
  sub_4B1C(v0, FeatureOverrideLog);
  sub_185C(v0, FeatureOverrideLog);
  return sub_4BD4();
}

uint64_t FeatureOverrideLog.unsafeMutableAddressor()
{
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v0 = sub_4BE4();

  return sub_185C(v0, FeatureOverrideLog);
}

uint64_t sub_185C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1894()
{
  result = [objc_allocWithZone(type metadata accessor for AXFeatureOverrideServer()) init];
  qword_C7A0 = result;
  return result;
}

id static AXFeatureOverrideServer.sharedInstance()()
{
  if (qword_C798 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

char *sub_19B8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___AXFeatureOverrideServer_grayscalePriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_invertColorsPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_voiceControlPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_voiceOverPriorState] = 0;
  v0[OBJC_IVAR___AXFeatureOverrideServer_zoomPriorState] = 0;
  v2 = &v0[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_activeTimer] = 0;
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_sessionOverrideTimeInterval] = 0x4072C00000000000;
  v3 = OBJC_IVAR___AXFeatureOverrideServer_SBSubstantialTransitionNotification;
  *&v0[v3] = sub_4C24();
  *&v0[OBJC_IVAR___AXFeatureOverrideServer_applicationStateChanged] = sub_1BD4;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "init");
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, 0, *&v4[OBJC_IVAR___AXFeatureOverrideServer_applicationStateChanged], *&v4[OBJC_IVAR___AXFeatureOverrideServer_SBSubstantialTransitionNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v4;
}

void sub_1B48()
{
  if (*(v0 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8))
  {
    _AXSGrayscaleSetEnabled();
    _AXSInvertColorsSetEnabled();
    _AXSCommandAndControlSetEnabled();
    _AXSVoiceOverTouchSetEnabled();

    _AXSZoomTouchSetEnabled();
  }
}

uint64_t AXFeatureOverrideServer.processMessage(_:withIdentifier:fromClientWithIdentifier:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_4BE4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v67 - v13;
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = sub_459C(&_swiftEmptyArrayStorage);
  }

  v80 = a2;

  v75 = sub_4C14();
  v17 = v16;
  v18 = sub_459C(&_swiftEmptyArrayStorage);
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v19 = sub_185C(v9, FeatureOverrideLog);
  swift_beginAccess();
  v20 = *(v10 + 16);
  v73 = v19;
  v72 = v10 + 16;
  v71 = v20;
  v20(v14, v19, v9);

  v78 = v14;
  v21 = sub_4BC4();
  v22 = v10;
  v23 = sub_4C74();

  v24 = os_log_type_enabled(v21, v23);
  v74 = a4;
  v79 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v69 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v68 = v15;
    v82[0] = v27;
    *v26 = 134218498;
    v70 = v22;
    v28 = v80;
    *(v26 + 4) = v80;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_3324(v76, a4, v82);
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_3324(v75, v17, v82);
    _os_log_impl(&dword_0, v21, v23, "Incoming message: %ld from client: %s. Payload: %s", v26, 0x20u);
    swift_arrayDestroy();
    v15 = v68;

    v5 = v69;

    v29 = v70;
    v30 = *(v70 + 8);
    v30(v78, v9);
    if (v28 != 2)
    {
LABEL_8:
      v31 = v28;
      if (v28 == 1)
      {

        *&v81[0] = 0xD00000000000001FLL;
        *(&v81[0] + 1) = 0x80000000000056D0;
        sub_4CB4();
        if (*(v15 + 16))
        {
          v32 = sub_38CC(v82);
          if (v33)
          {
            sub_470C(*(v15 + 56) + 32 * v32, &v83);
            sub_46B8(v82);
            if (swift_dynamicCast())
            {
              v34 = v18;
              v35 = v81[0];
              *&v81[0] = 0xD000000000000021;
              *(&v81[0] + 1) = 0x80000000000056F0;
              sub_4CB4();
              if (!*(v15 + 16) || (v36 = sub_38CC(v82), (v37 & 1) == 0))
              {
LABEL_36:

                sub_46B8(v82);
                return v18;
              }

              sub_470C(*(v15 + 56) + 32 * v36, &v83);
              sub_46B8(v82);
              if (swift_dynamicCast())
              {
                v38 = v5;
                v39 = *&v81[0];
                *&v81[0] = 0xD000000000000022;
                *(&v81[0] + 1) = 0x8000000000005720;
                sub_4CB4();
                if (*(v15 + 16))
                {
                  v40 = sub_38CC(v82);
                  if (v41)
                  {
                    sub_470C(*(v15 + 56) + 32 * v40, &v83);
                    sub_46B8(v82);

                    if (swift_dynamicCast())
                    {
                      v42 = OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions;
                      if (*(v38 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions) || (v43 = OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions, *(v38 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions)))
                      {

                        *&v83 = 0x746C75736572;
                        *(&v83 + 1) = 0xE600000000000000;
                        sub_4CB4();
                        v84 = &type metadata for Int;
                        *&v83 = 1;
                      }

                      else
                      {
                        v66 = *&v81[0];
                        *(v38 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride) = v35;

                        *(v38 + v42) = v39;
                        *(v38 + v43) = v66;
                        sub_26E0();
                        if (sub_276C())
                        {
                          return v34;
                        }

                        *&v83 = 0x746C75736572;
                        *(&v83 + 1) = 0xE600000000000000;
                        sub_4CB4();
                        v84 = &type metadata for Int;
                        *&v83 = 0;
                      }

                      sub_4768(&v83, v81);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v85 = v34;
                      goto LABEL_47;
                    }

                    goto LABEL_45;
                  }
                }

                goto LABEL_36;
              }
            }

LABEL_45:

            return v18;
          }
        }

        goto LABEL_29;
      }

      v80 = v18;

      v71(v77, v73, v9);
      v49 = v74;

      v50 = v79;

      v51 = sub_4BC4();
      v52 = v9;
      v53 = sub_4C64();

      if (os_log_type_enabled(v51, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v70 = v29;
        v82[0] = v55;
        *v54 = 134218498;
        *(v54 + 4) = v31;
        v56 = v52;
        *(v54 + 12) = 2080;
        *(v54 + 14) = sub_3324(v76, v49, v82);
        *(v54 + 22) = 2080;
        v57 = sub_3324(v75, v50, v82);

        *(v54 + 24) = v57;
        _os_log_impl(&dword_0, v51, v53, "Unhandled message: %ld from client: %s. Payload: %s", v54, 0x20u);
        swift_arrayDestroy();

        v58 = v77;
        v59 = v56;
      }

      else
      {

        v58 = v77;
        v59 = v52;
      }

      v30(v58, v59);
      return v80;
    }
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v78, v9);
    v29 = v22;
    v28 = v80;
    if (v80 != 2)
    {
      goto LABEL_8;
    }
  }

  *&v81[0] = 0xD00000000000001FLL;
  *(&v81[0] + 1) = 0x80000000000056D0;
  sub_4CB4();
  if (!*(v15 + 16) || (v45 = sub_38CC(v82), (v46 & 1) == 0))
  {
LABEL_29:

    sub_46B8(v82);
    return v18;
  }

  sub_470C(*(v15 + 56) + 32 * v45, &v83);
  sub_46B8(v82);

  if (swift_dynamicCast())
  {
    v47 = (v5 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride);
    v48 = *(v5 + OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8);
    if (!v48)
    {
      goto LABEL_45;
    }

    if (__PAIR128__(v48, *v47) == v81[0])
    {
    }

    else
    {
      v61 = sub_4D24();

      if ((v61 & 1) == 0)
      {
        *&v83 = 0x746C75736572;
        *(&v83 + 1) = 0xE600000000000000;
        sub_4CB4();
        v84 = &type metadata for Int;
        *&v83 = 2;
        sub_4768(&v83, v81);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v18;
LABEL_47:
        sub_3BC8(v81, v82, isUniquelyReferenced_nonNull_native);
        sub_46B8(v82);
        return v85;
      }
    }

    sub_1B48();
    *v47 = 0;
    v47[1] = 0;

    *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions) = 0;
    *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions) = 0;
    v62 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
    v63 = *(v5 + OBJC_IVAR___AXFeatureOverrideServer_activeTimer);
    if (v63)
    {
      v64 = v63;
      if ([v64 isPending])
      {
        [v64 cancel];
      }
    }

    v65 = *(v5 + v62);
    *(v5 + v62) = 0;
  }

  return v18;
}

uint64_t sub_26E0()
{
  v1 = _AXSGrayscaleEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_grayscalePriorState) = v1;
  v2 = _AXSInvertColorsEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_invertColorsPriorState) = v2;
  v3 = _AXSCommandAndControlEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceControlPriorState) = v3;
  v4 = _AXSVoiceOverTouchEnabled() != 0;
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_voiceOverPriorState) = v4;
  result = _AXSZoomTouchEnabled();
  *(v0 + OBJC_IVAR___AXFeatureOverrideServer_zoomPriorState) = result != 0;
  return result;
}

BOOL sub_276C()
{
  v1 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions);
  v2 = *(v0 + OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions);
  if ((v1 & 1) != 0 || (v2 & 1) == 0 && _AXSGrayscaleEnabled())
  {
    _AXSGrayscaleSetEnabled();
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _AXSGrayscaleSetEnabled();
    if ((v1 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  if ((v2 & 2) != 0 || !_AXSInvertColorsEnabled())
  {
    _AXSInvertColorsSetEnabled();
    if ((v1 & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_9:
  _AXSInvertColorsSetEnabled();
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v2 & 4) != 0 || !_AXSCommandAndControlEnabled())
  {
    _AXSCommandAndControlSetEnabled();
    if ((v1 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_14:
  _AXSCommandAndControlSetEnabled();
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((v2 & 8) != 0 || !_AXSVoiceOverTouchEnabled())
  {
    _AXSVoiceOverTouchSetEnabled();
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_19:
  _AXSVoiceOverTouchSetEnabled();
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if ((v2 & 0x10) == 0)
  {
    _AXSZoomTouchEnabled();
  }

LABEL_24:
  _AXSZoomTouchSetEnabled();

  return sub_29C4();
}

BOOL sub_29C4()
{
  v1 = v0;
  v2 = sub_4BE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4BB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() mainAccessQueue];
  v11 = [objc_allocWithZone(AXAccessQueueTimer) initWithTargetAccessQueue:v10];

  if (v11)
  {
    sub_4BA4();
    sub_4B94();
    v13 = v12 + 300.0;
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_4998;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3040;
    aBlock[3] = &unk_8680;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    [v11 afterDelay:v15 processBlock:v13];
    _Block_release(v15);
    (*(v7 + 8))(v9, v6);
    v17 = *&v16[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
    *&v16[OBJC_IVAR___AXFeatureOverrideServer_activeTimer] = v11;
  }

  else
  {
    if (qword_C790 != -1)
    {
      swift_once();
    }

    v18 = sub_185C(v2, FeatureOverrideLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v18, v2);
    v19 = sub_4BC4();
    v20 = sub_4C64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Unable to start timer for feature override session, could not get access queue", v21, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v11 != 0;
}

void sub_2D50(void *a1)
{
  v2 = sub_4BE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v6 = sub_185C(v2, FeatureOverrideLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_4BC4();
  v9 = sub_4C74();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = &v7[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
    if (*&v7[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8])
    {
      v13 = *v12;
      v14 = v12[1];
    }

    else
    {
      v14 = 0xE800000000000000;
      v13 = 0x64697575206C696ELL;
    }

    v15 = sub_3324(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "Timer for override session [%s] has elapsed", v10, 0xCu);
    sub_49B8(v11);

    (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_1B48();
  v16 = &v7[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
  *v16 = 0;
  *(v16 + 1) = 0;

  *&v7[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
  *&v7[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
  v17 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
  v18 = *&v7[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
  if (v18)
  {
    v19 = v18;
    if ([v19 isPending])
    {
      [v19 cancel];
    }
  }

  v20 = *&v7[v17];
  *&v7[v17] = 0;
}

uint64_t sub_3040(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id AXFeatureOverrideServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_3160(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_3190@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_31BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_32C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_3FFC(a1);

  *a2 = v3;
  return result;
}

void *sub_3308@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_3324(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_33F0(v11, 0, 0, 1, a1, a2);
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
    sub_470C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_49B8(v11);
  return v7;
}

unint64_t sub_33F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_34FC(a5, a6);
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
    result = sub_4CE4();
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

char *sub_34FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_3548(a1, a2);
  sub_3678(&off_8550);
  return v3;
}

char *sub_3548(uint64_t a1, unint64_t a2)
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

  v6 = sub_3764(v5, 0);
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

  result = sub_4CE4();
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
        v10 = sub_4C44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3764(v10, 0);
        result = sub_4CD4();
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

uint64_t sub_3678(uint64_t result)
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

  result = sub_37D8(result, v11, 1, v3);
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

void *sub_3764(uint64_t a1, uint64_t a2)
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

  sub_4A60(&qword_C708, &qword_5698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_37D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_4A60(&qword_C708, &qword_5698);
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

unint64_t sub_38CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_4C94(*(v2 + 40));

  return sub_3D90(a1, v4);
}

uint64_t sub_3910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_4A60(&qword_C700, &qword_5690);
  result = sub_4D04();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_4768((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_4A04(v23, &v36);
        sub_470C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_4C94(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_4768(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_3BC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_38CC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_3E58();
      goto LABEL_7;
    }

    sub_3910(v13, a3 & 1);
    v19 = sub_38CC(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_4A04(a2, v21);
      return sub_3D14(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_4D34();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_49B8(v17);

  return sub_4768(a1, v17);
}

_OWORD *sub_3D14(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_4768(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_3D90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4A04(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_4CA4();
      sub_46B8(v8);
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

void *sub_3E58()
{
  v1 = v0;
  sub_4A60(&qword_C700, &qword_5690);
  v2 = *v0;
  v3 = sub_4CF4();
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
        v18 = 40 * v17;
        sub_4A04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_470C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_4768(v22, (*(v4 + 56) + v17));
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

uint64_t sub_3FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_4034()
{
  v0 = sub_4BE4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v7 = sub_185C(v0, FeatureOverrideLog);
  swift_beginAccess();
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v9 = sub_4BC4();
  v10 = sub_4C74();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Observed application state change", v11, 2u);
  }

  v12 = *(v1 + 8);
  v12(v6, v0);
  type metadata accessor for AXFeatureOverrideServer();
  v13 = static AXFeatureOverrideServer.sharedInstance()();
  v14 = *&v13[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride + 8];

  if (v14)
  {

    v8(v4, v7, v0);
    v15 = sub_4BC4();
    v16 = sub_4C74();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Reverting to prior feature enablement and removing active overrides", v17, 2u);
    }

    v12(v4, v0);
    v18 = static AXFeatureOverrideServer.sharedInstance()();
    sub_1B48();

    v19 = static AXFeatureOverrideServer.sharedInstance()();
    v20 = &v19[OBJC_IVAR___AXFeatureOverrideServer_uuidForActiveOverride];
    *v20 = 0;
    *(v20 + 1) = 0;

    *&v19[OBJC_IVAR___AXFeatureOverrideServer_activeEnableOptions] = 0;
    *&v19[OBJC_IVAR___AXFeatureOverrideServer_activeDisableOptions] = 0;
    v21 = OBJC_IVAR___AXFeatureOverrideServer_activeTimer;
    v22 = *&v19[OBJC_IVAR___AXFeatureOverrideServer_activeTimer];
    if (v22)
    {
      v23 = v22;
      if ([v23 isPending])
      {
        [v23 cancel];
      }
    }

    v24 = *&v19[v21];
    *&v19[v21] = 0;
  }
}

Swift::Int sub_437C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4A60(&unk_C720, &unk_56B0);
    v3 = sub_4CC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_4A04(v6 + 40 * v4, v19);
      result = sub_4C94(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_4A04(*(v3 + 48) + 40 * i, v18);
        v11 = sub_4CA4();
        result = sub_46B8(v18);
        if (v11)
        {
          sub_46B8(v19);
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

Swift::Int _s23AXFeatureOverrideServerAAC48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0(uint64_t a1)
{
  if ((a1 - 1) > 1)
  {
    return 0;
  }

  sub_4A60(&qword_C718, &qword_56A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5390;
  sub_4CB4();
  v2 = sub_437C(inited);
  swift_setDeallocating();
  sub_46B8(inited + 32);
  return v2;
}

unint64_t sub_459C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4A60(&qword_C700, &qword_5690);
    v3 = sub_4D14();
    v4 = a1 + 32;

    while (1)
    {
      sub_4AAC(v4, v13);
      result = sub_38CC(v13);
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
      result = sub_4768(&v15, (v3[7] + 32 * result));
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

uint64_t sub_470C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_4768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_4800(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_48B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Options(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4960()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_49A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_49B8(void *a1)
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

uint64_t sub_4A60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4A60(&qword_C710, &qword_56A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_4B1C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}