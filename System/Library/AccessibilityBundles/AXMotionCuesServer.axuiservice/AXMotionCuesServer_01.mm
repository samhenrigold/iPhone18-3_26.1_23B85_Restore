uint64_t sub_1B6EC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_32D48();
    v5 = v4;
    v6 = sub_32D98();
    v8 = v7;
    v9 = sub_32D58();
    sub_1C124(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C124(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_32D38();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BD80(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C124(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1B808(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __asm { FMOV            V0.2D, #-1.0 }

  *(v3 + 40) = _Q0;
  *(v3 + 56) = 0xBFF0000000000000;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = [objc_allocWithZone(type metadata accessor for AXMotionCuesGridElementView()) initWithFrame:{0.5, 0.5, 0.0, 0.0}];
  v15 = sub_28D00();
  *(v3 + 64) = v15;
  v16 = *(v3 + 16);
  v17 = v15;
  [v16 bounds];
  [v17 setFrame:?];

  (*(v7 + 104))(v9, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  LOBYTE(v16) = sub_325A8();
  (*(v7 + 8))(v9, v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v18 = 10.5;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_5:
    v18 = 6.0;
  }

  [*(v3 + 64) setCornerRadius:v18];
  v19 = *(v3 + 16);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [*(v3 + 16) layer];
  [v23 addSublayer:*(v3 + 64)];

  v24 = [*(v3 + 16) layer];
  [v24 setCornerRadius:v18];

  return v3;
}

double sub_1BA94(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 48);
  if (v10 <= a1)
  {
    v14 = 5.02654825;
  }

  else
  {
    v11 = [objc_opt_self() currentDevice];
    [v11 userInterfaceIdiom];

    v12 = sub_1BFA4();
    if ((v13 & 1) == 0)
    {
      sub_1C0AC(v12);
    }

    sub_29508();
    v14 = v15 * 6.28318531;
    v10 = *(v3 + 48);
  }

  v16 = 1.0 / (1.0 / a2) / (1.0 / (1.0 / a2) + 1.0 / v14);
  v17 = v16 * a1 + v10 * (1.0 - v16);
  (*(v7 + 104))(v9, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  v18 = sub_325A8();
  (*(v7 + 8))(v9, v6);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v19 = 21.0;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_11:
    v19 = 12.0;
  }

  v20 = 0.0;
  if (v17 >= 0.0)
  {
    v20 = v17;
  }

  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  *(v3 + 40) = a1;
  *(v3 + 48) = v21;
  [*(v3 + 64) setBounds:{0.0, 0.0, v21, v21}];
  [*(v3 + 64) frame];
  v22 = CGRectGetWidth(v26) * 0.5;
  [*(v3 + 64) cornerRadius];
  if (v22 != v23)
  {
    [*(v3 + 64) setCornerRadius:v22];
  }

  return v21;
}

uint64_t sub_1BD1C()
{

  return swift_deallocClassInstance();
}

void sub_1BD80(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_32D88();
      sub_1A964(0, &qword_4C280, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1A964(0, &qword_4C280, UIScene_ptr);
    if (sub_32D68() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_32D78();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_32CC8(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_32CD8();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

id sub_1BFA4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1A964(0, &qword_4C280, UIScene_ptr);
  sub_1C0BC();
  v2 = sub_32B98();

  v3 = sub_1B6EC(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_1C0BC()
{
  result = qword_4C530;
  if (!qword_4C530)
  {
    sub_1A964(255, &qword_4C280, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C530);
  }

  return result;
}

uint64_t sub_1C124(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1C130()
{
  type metadata accessor for AXMotionCuesAnalyticsHelper(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime;
  v2 = sub_32538();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_4E9E8 = v0;
  return result;
}

uint64_t sub_1C1BC(char a1, char a2)
{
  v3 = v2;
  v6 = sub_A168(&qword_4C0D0, &qword_34888);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_32538();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime;
  swift_beginAccess();
  sub_1C718(v3 + v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C788(v11);
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    sub_32528();
    sub_324F8();
    v21 = v20;
    v32 = v9;
    v22 = a2;
    v23 = a1;
    v24 = *(v13 + 8);
    v24(v16, v12);
    v24(v18, v12);
    a1 = v23;
    *(v3 + 24) = v21 + *(v3 + 24);
    v25 = v32;
    (*(v13 + 56))(v32, 1, 1, v12);
    swift_beginAccess();
    sub_199B4(v25, v3 + v19);
    swift_endAccess();
    if (v22)
    {
      goto LABEL_8;
    }
  }

  result = _AXSMotionCuesMode();
  if (result || *(v3 + 17) != 1 || (a1 & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  result = sub_1CD78();
  v27 = *(v3 + 24) / 600.0;
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v27 < 9.22337204e18)
  {
    v28 = result;
    isa = sub_32BA8().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v28;
    sub_1CA94(isa, 0x7544657669746361, 0xEE006E6F69746172, isUniquelyReferenced_nonNull_native);
    sub_1CF7C(0xD000000000000029, 0x8000000000037E10, v33);

    *(v3 + 16) = 0;
LABEL_12:
    *(v3 + 17) = a1 & 1;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C55C()
{
  sub_1C788(v0 + OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AXMotionCuesAnalyticsHelper(uint64_t a1)
{
  result = qword_4C2C0;
  if (!qword_4C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C614(uint64_t a1)
{
  sub_1C6C0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C6C0(uint64_t a1)
{
  if (!qword_4C2D0)
  {
    sub_32538();
    v1 = sub_32CF8();
    if (!v2)
    {
      atomic_store(v1, &qword_4C2D0);
    }
  }
}

uint64_t sub_1C718(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4C0D0, &qword_34888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C788(uint64_t a1)
{
  v2 = sub_A168(&qword_4C0D0, &qword_34888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_A168(&qword_4C0C8, &qword_34AD0);
  v35 = v4;
  result = sub_32E78();
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

      sub_32F78();
      sub_329E8();
      result = sub_32F88();
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

uint64_t sub_1CA94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1889C(a2, a3);
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
      sub_1C7F0(v16, a4 & 1);
      v11 = sub_1889C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_32F18();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1CC0C();
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

id sub_1CC0C()
{
  v1 = v0;
  sub_A168(&qword_4C0C8, &qword_34AD0);
  v2 = *v0;
  v3 = sub_32E68();
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

unint64_t sub_1CD78()
{
  sub_A168(&qword_4C3F0, &qword_34AD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_34A60;
  *(inited + 32) = 1701080941;
  *(inited + 40) = 0xE400000000000000;
  _AXSMotionCuesMode();
  *(inited + 48) = sub_32F68();
  *(inited + 56) = 0x656C797473;
  *(inited + 64) = 0xE500000000000000;
  _AXSMotionCuesStyle();
  *(inited + 72) = sub_32F68();
  *(inited + 80) = 0x6373796172477369;
  *(inited + 88) = 0xEB00000000656C61;
  _AXSMotionCuesTintColor();
  *(inited + 96) = sub_32A88();
  *(inited + 104) = 0x73746F4465726F6DLL;
  *(inited + 112) = 0xE800000000000000;
  sub_32C28();
  v1 = sub_32C18();
  v2 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_32BE8();
  *(inited + 120) = sub_32A88();
  *(inited + 128) = 0x6F4472656772616CLL;
  *(inited + 136) = 0xEA00000000007374;
  v4 = sub_32C18();
  v5 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_32BF8();
  *(inited + 144) = sub_32A88();
  v7 = sub_1976C(inited);
  swift_setDeallocating();
  sub_A168(&qword_4C3F8, &unk_34AE0);
  swift_arrayDestroy();
  return v7;
}

void sub_1CF7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_32698();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_AD0C(v5, MCLog);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_32678();
  v11 = sub_32C68();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136315394;
    *(v12 + 4) = sub_182B0(a1, a2, &v21);
    *(v12 + 12) = 2080;
    sub_1D278();
    v13 = sub_32928();
    v15 = sub_182B0(v13, v14, &v21);
    v19 = v5;
    v16 = v15;

    *(v12 + 14) = v16;
    _os_log_impl(&dword_0, v10, v11, "AXMotionCuesAnalyticsHelper: Sending event %s with payload %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v19);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v17 = sub_32968();
  sub_1D278();
  isa = sub_32908().super.isa;
  AnalyticsSendEvent();
}

unint64_t sub_1D278()
{
  result = qword_4C0D8;
  if (!qword_4C0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4C0D8);
  }

  return result;
}

void sub_1D2C4(int64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>)
{
  v4 = vmulq_f64(a3, xmmword_34AF0);
  v5 = vnegq_f64(a2);
  v6 = vmulq_f64(a3, a3);
  v7 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(a2, a2), v6));
  v8 = vmulq_n_f64(v4, v7);
  v9 = vmulq_n_f64(v5, v7);
  v10 = vmulq_f64(v8, xmmword_34AF0);
  v11 = vnegq_f64(v9);
  v12 = vextq_s8(v10, vnegq_f64(v10), 8uLL);
  v13 = vmlaq_f64(vmulq_f64(v10, 0), 0, v12);
  v14 = vaddq_f64(v12, vmlaq_f64(vmulq_f64(v9, 0), 0, vextq_s8(v11, v9, 8uLL)));
  v15 = vaddq_f64(vextq_s8(v9, v11, 8uLL), v13);
  v16 = vnegq_f64(v15);
  v17 = vextq_s8(v14, vnegq_f64(v14), 8uLL);
  v18 = vmlaq_n_f64(vmulq_laneq_f64(v16, v9, 1), vextq_s8(v15, v16, 8uLL), v9.f64[0]);
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v8, 1), vextq_s8(v16, v15, 8uLL), v8.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v14, v9, 1), v17, v9.f64[0]));
  v20 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v14, v8, 1), v17, v8.f64[0]), v18);
  v21 = vmulq_f64(v19, v19);
  v21.f64[0] = 1.0 / sqrt(vmulq_f64(v20, v20).f64[0] + vaddvq_f64(v21));
  v22 = vmulq_n_f64(v19, v21.f64[0]);
  v23 = vmulq_f64(v20, v21);
  v24 = v23.f64[0] + vaddvq_f64(vmulq_f64(v22, 0));
  if (fabs(v24 + -1.0) >= 0.000001)
  {
    if (fabs(v24 + 1.0) >= 0.000001)
    {
      v34 = vmulq_f64(v23, vnegq_f64(0));
      v23.f64[1] = v22.f64[0];
      v35 = vmlaq_f64(vmulq_f64(v22, xmmword_34B00), 0, v23);
      __asm { FMOV            V2.2D, #1.0 }

      v41 = vmlaq_laneq_f64(v34, _Q2, v22, 1);
      v42 = vmulq_f64(v35, v35);
      v43 = vmulq_f64(v41, v41).f64[0];
      v41.f64[1] = v35.f64[0];
      v6.f64[0] = 1.0 / sqrt(v42.f64[1] + v43 + v42.f64[0]);
      v51 = vmulq_n_f64(v41, v6.f64[0]);
      v53 = vmulq_laneq_f64(v6, v35, 1);
      v44 = acos(v24);
      v46 = __sincos_stret(v44 * 0.5);
      v45.f64[0] = v46.__sinval;
      *&v47.f64[0] = v51.i64[0];
      *&v47.f64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      *&v48.f64[0] = *&vmulq_f64(v53, v45);
      v48.f64[1] = v46.__cosval;
      v55[0] = vmulq_n_f64(v47, v46.__sinval);
      v55[1] = v48;
      sub_1D844(v55, v54, v49);
      v30 = v54[0];
      v28 = v54[1];
      v31 = v54[2];
      v33 = v54[3];
      v32 = v54[4];
      v29 = v54[5];
      goto LABEL_7;
    }

    sub_A168(&unk_4C400, &qword_34B18);
    v25 = swift_allocObject();
    v25[2] = 0x3FF0000000000000uLL;
    v25[3] = 0uLL;
    v26.i64[0] = 0;
    v26.i64[1] = 0xBFF0000000000000;
    v25[4] = v26;
    v25[5] = 0uLL;
    v27 = 0xBFF0000000000000;
  }

  else
  {
    sub_A168(&unk_4C400, &qword_34B18);
    v25 = swift_allocObject();
    v25[2] = 0x3FF0000000000000uLL;
    v25[3] = 0uLL;
    v26.i64[0] = 0;
    v26.i64[1] = 0x3FF0000000000000;
    v25[4] = v26;
    v25[5] = 0uLL;
    v27 = 0x3FF0000000000000;
  }

  v25[6] = 0u;
  v25[7] = v27;
  v50 = v26;
  v52 = v27;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v29 = v52;
  v28 = 0u;
  v30 = vzip1q_s64(0x3FF0000000000000uLL, v50);
  v31 = vzip2q_s64(0x3FF0000000000000uLL, v50);
  v32 = vzip1q_s64(0, 0);
  v33 = vdupq_laneq_s64(0, 1);
LABEL_7:
  *a1 = v30;
  a1[1] = v28;
  a1[2] = v31;
  a1[3] = v33;
  a1[4] = v32;
  a1[5] = v29;
}

__n128 sub_1D754@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q1>)
{
  a3.f64[0] = *(a1 + 120);
  v22 = *(a1 + 96);
  v23 = a3;
  a3.f64[1] = v22;
  v21 = *(a1 + 104);
  sub_1D2C4(&v24, v21, a3);
  v5.f64[0] = *a1;
  v6.f64[0] = *(a1 + 8);
  v7 = vmulq_f64(v25, v5);
  v8 = vmlaq_n_f64(vmulq_n_f64(v24, *a1), v26, v6.f64[0]);
  v9 = vmlaq_f64(v7, v6, v27);
  v6.f64[0] = *(a1 + 16);
  v10.f64[0] = *(a1 + 24);
  v11 = vmlaq_f64(v9, v6, v29);
  v12 = vmlaq_n_f64(v8, v28, v6.f64[0]);
  v6.f64[0] = *(a1 + 32);
  v13.f64[0] = *(a1 + 40);
  v14 = vmlaq_f64(vmlaq_f64(vmulq_f64(v25, v10), v6, v27), v13, v29);
  v15 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v24, v10.f64[0]), v26, v6.f64[0]), v28, v13.f64[0]);
  v6.f64[0] = *(a1 + 48);
  v13.f64[0] = *(a1 + 56);
  v16.f64[0] = *(a1 + 64);
  v17 = *&vmlaq_f64(vmlaq_f64(vmulq_f64(v25, v6), v13, v27), v16, v29);
  v18 = *(a1 + 128);
  v19 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v24, v6.f64[0]), v26, v13.f64[0]), v28, v16.f64[0]);
  *a2 = v12;
  *(a2 + 16) = vzip1q_s64(v11, v15);
  *(a2 + 32) = vextq_s8(v15, v14, 8uLL);
  *(a2 + 48) = v19;
  *(a2 + 64) = v17;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v22;
  *(a2 + 104) = v21;
  result = v23;
  *(a2 + 120) = v23.n128_u64[0];
  *(a2 + 128) = v18;
  return result;
}

__n128 sub_1D844@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q7>)
{
  result = *a1;
  _Q2 = a1[1];
  _D1 = a1->f64[1];
  _D5 = _Q2.f64[1];
  __asm { FMLA            D3, D5, V2.D[1] }

  v13 = vmuld_lane_f64(_Q2.f64[0], _Q2, 1);
  v14.f64[0] = vmuld_lane_f64(_D1, _Q2, 1);
  *&v3 = -(v14.f64[0] - a1->f64[0] * _Q2.f64[0]) - (v14.f64[0] - a1->f64[0] * _Q2.f64[0]);
  *(&_Q3 + 1) = v13 + a1->f64[0] * _D1 + v13 + a1->f64[0] * _D1;
  *&v15 = -(v13 - a1->f64[0] * _D1) - (v13 - a1->f64[0] * _D1);
  __asm
  {
    FMLA            D4, D1, V0.D[1]
    FMLA            D4, D5, V2.D[1]
  }

  a3.n128_f64[0] = vmuld_lane_f64(a1->f64[0], _Q2, 1);
  a3.n128_f64[0] = a3.n128_f64[0] + _D1 * _Q2.f64[0] + a3.n128_f64[0] + _D1 * _Q2.f64[0];
  *(&v15 + 1) = _D4 - result.n128_f64[0] * result.n128_f64[0];
  v14.f64[1] = -(a1->f64[0] * _Q2.f64[1]);
  v18 = vmlaq_n_f64(v14, *a1, _Q2.f64[0]);
  *a2 = _Q3;
  *(a2 + 16) = v3;
  *(a2 + 32) = v15;
  *(a2 + 48) = a3;
  __asm { FMLS            D2, D1, V0.D[1] }

  *(a2 + 64) = vaddq_f64(v18, v18);
  *(a2 + 80) = _Q2;
  return result;
}

uint64_t sub_1D8DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink] = 0;
  v11 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp];
  *v11 = 0;
  v11[8] = 1;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows] = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  *&v5[v12] = [objc_allocWithZone(UIView) init];
  v13 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge];
  *v18 = 0;
  v18[8] = 1;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask] = 0;
  v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount] = 0;
  v19 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics];
  *v19 = 0u;
  *(v19 + 2) = 0x7FEFFFFFFFFFFFFFLL;
  *(v19 + 24) = 0u;
  *(v19 + 40) = xmmword_34130;
  v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = 2;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_model] = a1;
  v20 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler];
  *v21 = a4;
  v21[1] = a5;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for AXMotionCuesRootViewController();
  return objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
}

id AXMotionCuesRootViewController.__deallocating_deinit()
{
  AXMotionCuesRootViewController.tearDown()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AXMotionCuesRootViewController.tearDown()()
{
  sub_22438();
  v1 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink;
  [*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  swift_beginAccess();
  _UIUpdateRequestDeactivate();
  swift_endAccess();
  if (qword_4C410)
  {
    _UIUpdateSequenceRemoveItem();
    qword_4C410 = 0;
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidLoad()()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AXMotionCuesRootViewController();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_AD0C(v1, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v4, v6, v1);
  v7 = v0;
  v8 = sub_32678();
  v9 = sub_32C48();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "AXMotionCuesRootViewController viewDidLoad %@", v10, 0xCu);
    sub_233BC(v11);
  }

  (*(v2 + 8))(v4, v1);
  v13 = [v7 view];
  if (v13)
  {
    v14 = v13;
    [v13 frame];
    v16 = v15;
    v18 = v17;

    sub_21DAC(v16, v18);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AXMotionCuesRootViewController();
  v16.receiver = v1;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v8 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v6, v8, v3);
  v9 = v1;
  v10 = sub_32678();
  v11 = sub_32C48();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "AXMotionCuesRootViewController viewDidAppear %@", v12, 0xCu);
    sub_233BC(v13);
  }

  (*(v4 + 8))(v6, v3);
  sub_20A64();
  sub_1E5F4();
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AXMotionCuesRootViewController();
  v20.receiver = v1;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, "viewDidDisappear:", a1);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v8 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v6, v8, v3);
  v9 = v1;
  v10 = sub_32678();
  v11 = sub_32C48();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "AXMotionCuesRootViewController viewDidDisappear %@", v12, 0xCu);
    sub_233BC(v13);
  }

  (*(v4 + 8))(v6, v3);
  v15 = &v9[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v18, v9);

  if (*&v9[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask])
  {

    sub_32B58();
  }

  if (*&v9[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask])
  {

    sub_32B58();
  }
}

CFNotificationCenterRef sub_1E5F4()
{
  v1 = v0;
  v2 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSMotionCuesCustomizationDidChangeNotification)
  {
    v6 = result;
    v7 = kAXSMotionCuesCustomizationDidChangeNotification;
    CFNotificationCenterAddObserver(v6, v1, sub_1E908, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v8 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask;
    if (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask])
    {

      sub_32B58();
    }

    v9 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask;
    if (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask])
    {

      sub_32B58();
    }

    v10 = sub_32AE8();
    v11 = *(*(v10 - 8) + 56);
    v11(v4, 1, 1, v10);
    sub_32AC8();
    v12 = v1;
    v13 = sub_32AB8();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    *&v1[v8] = sub_DBE0(0, 0, v4, &unk_34CB0, v14);

    v11(v4, 1, 1, v10);
    v15 = v12;
    v16 = sub_32AB8();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    *&v1[v9] = sub_DBE0(0, 0, v4, &unk_34CC0, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E898(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result frame];
    v4 = v3;
    v6 = v5;

    sub_21DAC(v4, v6);
    return sub_20A64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_A168(&qword_4C588, &qword_34CC8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_A168(&qword_4C590, &qword_34CD0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = sub_32AC8();
  v4[13] = sub_32AB8();
  v8 = sub_32A98();
  v4[14] = v8;
  v4[15] = v7;

  return (_swift_task_switch)(sub_1EA7C, v8, v7);
}

uint64_t sub_1EA7C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_32C28();
  v4 = sub_32C18();
  v5 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_32BD8();
  sub_32B28();
  (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount;
  v0[16] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager;
  v0[17] = v7;
  v0[18] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount;
  v8 = sub_32AB8();
  v0[19] = v8;
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1EBF0;
  v10 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v8, &protocol witness table for MainActor, v10);
}

uint64_t sub_1EBF0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return (_swift_task_switch)(sub_1ED34, v3, v2);
}

uint64_t sub_1ED34(char *a1)
{
  v2 = *(v1 + 168);
  if ((*(v1 + 172) & 1) == 0)
  {
    if (qword_4BB28 != -1)
    {
      swift_once();
    }

    if (*&dword_4EA0C == v2)
    {
      goto LABEL_35;
    }

    v5 = *(v1 + 128);
    v6 = *(v1 + 40);
    dword_4EA0C = LODWORD(v2);
    v7 = *(v6 + v5);
    if (v7)
    {
      v8 = v7;
      sub_2AB2C();

      goto LABEL_35;
    }

    v9 = objc_opt_self();
    v10 = [v9 currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v12 = objc_opt_self();
    v13 = [v12 sharedApplication];
    v14 = &stru_4A000;
    v15 = [v13 connectedScenes];

    sub_1A964(0, &qword_4C280, UIScene_ptr);
    sub_1C0BC();
    v16 = sub_32B98();

    v17 = sub_1B6EC(v16);

    if (v17)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = [v18 interfaceOrientation];

        v20 = sub_1C0AC(v19);
        v14 = &stru_4A000;
        if (v11 == &dword_0 + 1)
        {
          if (v20)
          {
            v21 = 6;
            goto LABEL_21;
          }

          goto LABEL_17;
        }

        if (v20)
        {
          v21 = 4;
          goto LABEL_21;
        }

LABEL_20:
        v21 = 8;
LABEL_21:
        v22 = [v9 currentDevice];
        v23 = [v22 userInterfaceIdiom];

        v24 = [v12 sharedApplication];
        v25 = [v24 v14[41].name];

        v26 = sub_32B98();
        v27 = sub_1B6EC(v26);

        if (v27)
        {
          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (v28)
          {
            v29 = [v28 interfaceOrientation];

            v30 = sub_1C0AC(v29);
            if (v23 == &dword_0 + 1)
            {
              if (v30)
              {
                v31 = 9;
LABEL_31:
                v32 = *(v1 + 40);
                if (v21 != *&v32[*(v1 + 136)] || v31 != *&v32[*(v1 + 144)])
                {
                  v33 = [v32 view];
                  if (!v33)
                  {
                    __break(1u);
                    return AsyncStream.Iterator.next(isolation:)(v33, v34, v35, v36);
                  }

                  v37 = v33;
                  [v33 frame];
                  v39 = v38;
                  v41 = v40;

                  sub_21DAC(v39, v41);
                  sub_20A64();
                }

LABEL_35:
                v42 = sub_32AB8();
                *(v1 + 152) = v42;
                v43 = swift_task_alloc();
                *(v1 + 160) = v43;
                *v43 = v1;
                v43[1] = sub_1EBF0;
                v36 = *(v1 + 72);
                v35 = &protocol witness table for MainActor;
                v33 = (v1 + 168);
                v34 = v42;

                return AsyncStream.Iterator.next(isolation:)(v33, v34, v35, v36);
              }

LABEL_28:
              v31 = 7;
              goto LABEL_31;
            }

            if (v30)
            {
              goto LABEL_28;
            }

LABEL_30:
            v31 = 5;
            goto LABEL_31;
          }
        }

        if (v23 == &dword_0 + 1)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      }
    }

    if (v11 == &dword_0 + 1)
    {
LABEL_17:
      v21 = 10;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1F1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_A168(&qword_4C588, &qword_34CC8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_A168(&qword_4C590, &qword_34CD0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = sub_32AC8();
  v4[13] = sub_32AB8();
  v8 = sub_32A98();
  v4[14] = v8;
  v4[15] = v7;

  return (_swift_task_switch)(sub_1F330, v8, v7);
}

uint64_t sub_1F330()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_32C28();
  v4 = sub_32C18();
  v5 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_32BC8();
  sub_32B28();
  (*(v2 + 8))(v1, v3);
  v0[16] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager;
  v7 = sub_32AB8();
  v0[17] = v7;
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1F490;
  v9 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 19, v7, &protocol witness table for MainActor, v9);
}

uint64_t sub_1F490()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return (_swift_task_switch)(sub_1F5D4, v3, v2);
}

uint64_t sub_1F5D4(uint64_t a1)
{
  v2 = *(v1 + 152);
  if (*(v1 + 156))
  {
    (*(*(v1 + 80) + 8))(*(v1 + 88), *(v1 + 72));

    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    if (qword_4BB20 != -1)
    {
      swift_once();
    }

    if (*&dword_4EA08 != v2)
    {
      v5 = *(v1 + 128);
      v6 = *(v1 + 40);
      dword_4EA08 = LODWORD(v2);
      v7 = *(v6 + v5);
      if (v7)
      {
        v8 = v7;
        sub_2AB2C();
      }
    }

    v9 = sub_32AB8();
    *(v1 + 136) = v9;
    v10 = swift_task_alloc();
    *(v1 + 144) = v10;
    *v10 = v1;
    v10[1] = sub_1F490;
    v11 = *(v1 + 72);

    return AsyncStream.Iterator.next(isolation:)(v1 + 152, v9, &protocol witness table for MainActor, v11);
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidLayoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AXMotionCuesRootViewController();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];

      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v2;
      sub_326E8();
      sub_2D374();
    }

    else
    {
      __break(1u);
    }
  }
}

void AXMotionCuesRootViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for AXMotionCuesRootViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_23464;
  v17 = v7;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1FAD0;
  v15 = &unk_45E48;
  v8 = _Block_copy(&v12);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v16 = sub_234BC;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1FAD0;
  v15 = &unk_45E98;
  v11 = _Block_copy(&v12);

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_1FA74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20E20(0, 0);
  }
}

uint64_t sub_1FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1FB30(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21DAC(a1, a2);
    sub_20A64();
  }
}

uint64_t AXMotionCuesRootViewController.prepareForRemoval()()
{
  v1[2] = v0;
  v1[3] = sub_32AC8();
  v1[4] = sub_32AB8();
  v3 = sub_32A98();
  v1[5] = v3;
  v1[6] = v2;

  return (_swift_task_switch)(sub_1FCBC, v3, v2);
}

uint64_t sub_1FCBC(uint64_t a1)
{
  v2 = v1[2];
  v1[7] = sub_32AB8();
  v3 = swift_task_alloc();
  v1[8] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_1FDC0;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1FDC0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return (_swift_task_switch)(sub_1FF20, v3, v2);
}

uint64_t sub_1FF20(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1FF80(uint64_t a1)
{
  v2 = sub_A168(&qword_4C578, &unk_34C98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_20E20(sub_23E20, v7);
}

void sub_200C8()
{
  if (_UIUpdateCycleEnabled())
  {
    if (!qword_4C410)
    {
      v1 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_23D5C;
      v11[5] = v1;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_20358;
      v11[3] = &unk_46048;
      v2 = _Block_copy(v11);

      sub_329D8();
      inserted = _UIUpdateSequenceInsertItem();

      _Block_release(v2);
      qword_4C410 = inserted;
      swift_beginAccess();
      _UIUpdateRequestActivate();
      swift_endAccess();
    }
  }

  else
  {
    v4 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink;
    if (!*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink))
    {
      v5 = [objc_opt_self() displayLinkWithTarget:v0 selector:"updateLayout"];
      LODWORD(v6) = 1123024896;
      LODWORD(v7) = 1114636288;
      LODWORD(v8) = 1.0;
      [v5 setPreferredFrameRateRange:{v8, v6, v7}];
      v9 = [objc_opt_self() mainRunLoop];
      [v5 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];

      v10 = *(v0 + v4);
      *(v0 + v4) = v5;
    }
  }
}

void sub_20304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_215D4();
  }
}

uint64_t sub_20358(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_203C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AXMotionCuesVFXManager(0);
  v5 = sub_2D8EC(0x747261505F434D56, 0xED000073656C6369);
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(v4);
    v8 = a1 & 1;
    v9 = sub_30958(v6, a1 & 1);

    sub_23BB0(&qword_4C538, type metadata accessor for AXMotionCuesVFXManager, &protocol conformance descriptor for AXMotionCuesVFXManager);
    sub_32758();
    v10 = v9;
    sub_326A8();
    v11 = v10;
    sub_A168(&qword_4C540, &qword_34C80);
    sub_23C08();
    sub_32878();
    sub_32828();

    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor:v15];

      [v2 addChildViewController:v12];
      v16 = [v2 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v12 view];
        if (v18)
        {
          v19 = v18;
          [v17 addSubview:v18];

          v20 = [v12 view];
          if (v20)
          {
            v21 = v20;
            [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

            sub_A168(&qword_4C568, &qword_34C90);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_34B20;
            v23 = [v12 view];
            if (v23)
            {
              v24 = v23;
              v58 = v11;
              v25 = [v23 leadingAnchor];

              v26 = [v2 view];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 leadingAnchor];

                v29 = [v25 constraintEqualToAnchor:v28];
                *(v22 + 32) = v29;
                v30 = [v12 view];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 trailingAnchor];

                  v33 = [v2 view];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 trailingAnchor];

                    v36 = [v32 constraintEqualToAnchor:v35];
                    *(v22 + 40) = v36;
                    v37 = [v12 view];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = [v37 topAnchor];

                      v40 = [v2 view];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = [v40 topAnchor];

                        v43 = [v39 constraintEqualToAnchor:v42];
                        *(v22 + 48) = v43;
                        v44 = [v12 view];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = [v44 bottomAnchor];

                          v47 = [v2 view];
                          if (v47)
                          {
                            v48 = v47;
                            v49 = objc_opt_self();
                            v50 = [v48 bottomAnchor];

                            v51 = [v46 constraintEqualToAnchor:v50];
                            *(v22 + 56) = v51;
                            sub_1A964(0, &qword_4C570, NSLayoutConstraint_ptr);
                            isa = sub_32A38().super.isa;

                            [v49 activateConstraints:isa];

                            [v12 didMoveToParentViewController:v2];
                            swift_unknownObjectWeakAssign();
                            v53 = [v2 view];
                            if (v53)
                            {
                              v54 = v53;
                              [v53 frame];

                              swift_getKeyPath();
                              swift_getKeyPath();
                              v55 = v58;
                              sub_326E8();
                              sub_2D374();

                              v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = v8;
                              v56 = *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
                              *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = v10;

                              v57 = *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController];
                              *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController] = v12;

                              return;
                            }

LABEL_29:
                            __break(1u);
                            return;
                          }

LABEL_28:
                          __break(1u);
                          goto LABEL_29;
                        }

LABEL_27:
                        __break(1u);
                        goto LABEL_28;
                      }

LABEL_26:
                      __break(1u);
                      goto LABEL_27;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

void *sub_20A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v1)
  {
    v2 = v1;
    v3 = sub_32898();
    __chkstk_darwin(v3);
    sub_32718();
  }

  v4 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  result = swift_beginAccess();
  v6 = *(v0 + v4);
  v23 = *(v6 + 16);
  if (!v23)
  {
    return result;
  }

  v22 = v6 + 32;

  v7 = 0;
  v21 = v6;
  while (v7 < *(v6 + 16))
  {
    v8 = *(v22 + 8 * v7);
    if (v8 >> 62)
    {
      result = sub_32E58();
      v9 = result;
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    result = objc_opt_self();
    v10 = v9 - 1;
    if (v9 < 1)
    {
      goto LABEL_22;
    }

    v11 = result;

    v12 = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_12:
      v13 = sub_32E28();
      goto LABEL_14;
    }

    while (1)
    {
      v13 = *(v8 + 8 * v12 + 32);

LABEL_14:
      v14 = sub_32968();
      v15 = [v11 animationWithKeyPath:v14];

      CATransform3DMakeScale(&v27, 0.01, 0.01, 0.01);
      isa = sub_32C38().super.isa;
      [v15 setFromValue:isa];

      CATransform3DMakeScale(&v26, 1.0, 1.0, 1.0);
      v17 = sub_32C38().super.isa;
      [v15 setToValue:v17];

      v18 = v15;
      [v18 setDuration:0.25];
      [v18 setRemovedOnCompletion:1];

      v19 = [*(v13 + 16) layer];
      v20 = sub_32968();
      [v19 addAnimation:v18 forKey:v20];

      CATransform3DMakeScale(&v25, 1.0, 1.0, 1.0);
      v24 = v25;
      [v19 setTransform:&v24];

      if (v10 == v12)
      {
        break;
      }

      ++v12;
      if ((v8 & 0xC000000000000001) != 0)
      {
        goto LABEL_12;
      }
    }

    v6 = v21;
LABEL_6:
    if (++v7 == v23)
    {
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_20E20(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v52 = a1;
  v3 = sub_328A8();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_328C8();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_328E8();
  v42 = *(v51 - 8);
  v6 = __chkstk_darwin(v51);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v39 - v8;
  v9 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v9)
  {
    v10 = v9;
    v11 = sub_32898();
    __chkstk_darwin(v11);
    *(&v39 - 2) = v10;
    sub_32718();
    v40 = 0;
  }

  else
  {
    v40 = 0;
  }

  v12 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  v55 = *(v14 + 16);
  if (!v55)
  {
LABEL_21:
    v29 = v52;
    if (v52)
    {
      sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
      v30 = v49;

      v55 = sub_32C88();
      v31 = v41;
      sub_328D8();
      sub_328F8();
      v56 = *(v42 + 8);
      v56(v31, v51);
      v32 = swift_allocObject();
      *(v32 + 16) = v29;
      *(v32 + 24) = v30;
      *&v58.m21 = sub_23B84;
      *&v58.m22 = v32;
      *&v58.m11 = _NSConcreteStackBlock;
      *&v58.m12 = 1107296256;
      *&v58.m13 = sub_1D8DC;
      *&v58.m14 = &unk_46020;
      v33 = _Block_copy(&v58);

      v34 = v43;
      sub_328B8();
      *&v58.m11 = &_swiftEmptyArrayStorage;
      sub_23BB0(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_A168(&qword_4C108, &qword_348E0);
      sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0, &protocol conformance descriptor for [A]);
      v35 = v45;
      v36 = v48;
      sub_32D28();
      v37 = v50;
      v38 = v55;
      sub_32C78();
      _Block_release(v33);

      sub_23BF8(v52, v30);
      (*(v47 + 8))(v35, v36);
      (*(v44 + 8))(v34, v46);
      return (v56)(v37, v51);
    }

    return result;
  }

  v54 = v14 + 32;

  v15 = 0;
  v53 = v14;
  while (v15 < *(v14 + 16))
  {
    v16 = *(v54 + 8 * v15);
    if (v16 >> 62)
    {
      result = sub_32E58();
      v17 = result;
      if (!result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    result = objc_opt_self();
    v18 = v17 - 1;
    if (v17 < 1)
    {
      goto LABEL_25;
    }

    v19 = result;
    v56 = v15;

    v20 = 0;
    if ((v16 & 0xC000000000000001) != 0)
    {
LABEL_13:
      v21 = sub_32E28();
      goto LABEL_15;
    }

    while (1)
    {
      v21 = *(v16 + 8 * v20 + 32);

LABEL_15:
      v22 = sub_32968();
      v23 = [v19 animationWithKeyPath:v22];

      CATransform3DMakeScale(&v60, 1.0, 1.0, 1.0);
      isa = sub_32C38().super.isa;
      [v23 setFromValue:isa];

      CATransform3DMakeScale(&v59, 0.01, 0.01, 0.01);
      v25 = sub_32C38().super.isa;
      [v23 setToValue:v25];

      v26 = v23;
      [v26 setDuration:0.25];
      [v26 setRemovedOnCompletion:1];

      v27 = [*(v21 + 16) layer];
      v28 = sub_32968();
      [v27 addAnimation:v26 forKey:v28];

      CATransform3DMakeScale(&v58, 0.01, 0.01, 0.01);
      v57 = v58;
      [v27 setTransform:&v57];

      if (v18 == v20)
      {
        break;
      }

      ++v20;
      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }
    }

    v14 = v53;
    v15 = v56;
LABEL_7:
    if (++v15 == v55)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_215D4()
{
  v2 = v0;
  v3 = sub_32698();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = CACurrentMediaTime();
  v9 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp;
  if (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp + 8))
  {
    v10 = 0.0166666667;
  }

  else
  {
    v11 = v8 - *v9;
    if (v11 <= 0.00833333333)
    {
      v11 = 0.00833333333;
    }

    v10 = fmin(v11, 1.0);
  }

  *v9 = v8;
  *(v9 + 8) = 0;
  sub_24228(&v55, v10);
  if (v58)
  {
    v12 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData;
    if (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) == 1)
    {
      (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler))(0);
      *(v0 + v12) = 0;
    }

    v1 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount;
    v13 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_44;
    }

    *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = v15;
    if (v15 == 50)
    {
      if (qword_4BAF0 != -1)
      {
        goto LABEL_45;
      }

      goto LABEL_12;
    }

    return;
  }

  v23 = v55;
  v54 = v56;
  v24 = v57;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = 0;
  v25 = CFAbsoluteTimeGetCurrent();
  v26 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v26)
  {
    v27 = v10 * 60.0;
    v28 = objc_opt_self();
    v29 = v26;
    v30 = [v28 currentDevice];
    v31 = [v30 userInterfaceIdiom];

    v32 = -16.0;
    if (v31 != &dword_0 + 1)
    {
      v32 = -13.0;
    }

    v33 = 13.0;
    if (v31 == &dword_0 + 1)
    {
      v33 = 16.0;
    }

    sub_2CC68(v27 * (v23 * v33), v27 * (v32 * *&v54));

    goto LABEL_38;
  }

  v34 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  swift_beginAccess();
  v35 = *(v2 + v34);
  v52 = *(v35 + 16);
  if (!v52)
  {
LABEL_38:
    v47 = v25 - Current;
    v48 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData;
    if ((*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) & 1) == 0)
    {
      (*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler))(1);
    }

    *(v2 + v48) = 1;
    v49 = CFAbsoluteTimeGetCurrent();
    sub_23AA0(v47, v49 - Current);
    return;
  }

  v36 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  v51 = v35 + 32;

  v3 = 0;
  v37 = v54;
  v50 = v35;
  while (v3 < *(v35 + 16))
  {
    v6 = *(v51 + 8 * v3);
    if (v6 >> 62)
    {
      v46 = sub_32E58();
      v37 = v54;
      v38 = v46;
      if (!v46)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v38 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (!v38)
      {
        goto LABEL_25;
      }
    }

    v59 = v23;
    v60 = v37;
    v61 = v24;
    v62 = 0;
    if (v38 < 1)
    {
      goto LABEL_43;
    }

    v53 = v3;

    v39 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v4 = sub_32E28();
      }

      else
      {
        v4 = *&v6[8 * v39 + 32];
      }

      ++v39;
      v40 = *(v4 + 16);
      v1 = *(v2 + v36);
      [v40 center];
      [v1 convertPoint:0 toView:?];
      v42 = v41;

      sub_22734(&v59, v4, v42, v43, v10);
      sub_21BF0(v4, v23, *&v54, v44, v45, v10);
    }

    while (v38 != v39);

    v37 = v54;
    v35 = v50;
    v3 = v53;
LABEL_25:
    if (++v3 == v52)
    {

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_12:
  v16 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v6, v16, v3);
  v17 = sub_32678();
  v18 = sub_32C58();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "got 50 nil model outputs in a row", v19, 2u);
  }

  (*(v4 + 8))(v6, v3);
  *&v1[v2] = 0;
  v20 = v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(ObjectType, v21);
    swift_unknownObjectRelease();
  }
}

id sub_21BF0(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = a6 * 60.0;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth + 8) & 1) == 0)
  {
    v13 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge);
    v14 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth);
    v15 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge);
    v16 = 13.0;
    if (v12 == &dword_0 + 1)
    {
      v16 = 16.0;
    }

    v17 = v10 * (v16 * a2) + *(a1 + 24);
    *(a1 + 24) = v17;
    if (v15 <= v17)
    {
      v18 = v17 - v14;
      goto LABEL_10;
    }

    if (v17 <= v13)
    {
      v18 = v14 + v17;
LABEL_10:
      *(a1 + 24) = v18;
    }
  }

  if ((*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight + 8) & 1) == 0)
  {
    v19 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge);
    v20 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight);
    v21 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge);
    v22 = -13.0;
    if (v12 == &dword_0 + 1)
    {
      v22 = -16.0;
    }

    v23 = v10 * (v22 * a3) + *(a1 + 32);
    *(a1 + 32) = v23;
    if (v21 <= v23)
    {
      v24 = v23 - v20;
    }

    else
    {
      if (v23 > v19)
      {
        goto LABEL_21;
      }

      v24 = v20 + v23;
    }

    *(a1 + 32) = v24;
  }

LABEL_21:
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);

  return [v25 setCenter:{v26, v27}];
}

id sub_21DAC(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22438();
  v10 = _AXSMotionCuesStyle();
  (*(v7 + 104))(v9, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  v11 = sub_325A8();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (v10 == 1)
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (v10 == 2)
    {
      v12 = 0;
LABEL_13:
      sub_203C8(v12);
      return (*&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler])(1);
    }
  }

  sub_200C8();
  v13 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  [*&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView] setFrame:{0.5, 0.5, a1, a2}];
  v14 = sub_28D00();
  [*&v3[v13] bounds];
  [v14 setFrame:?];
  [v14 setCaptureOnly:1];
  v15 = [*&v3[v13] layer];
  [v15 addSublayer:v14];

  result = [v3 view];
  if (result)
  {
    v17 = result;
    [result addSubview:*&v3[v13]];

    v18 = objc_opt_self();
    v19 = [v18 currentDevice];
    v20 = [v19 userInterfaceIdiom];

    v21 = sub_1BFA4();
    if (v22)
    {
      if (v20 != &dword_0 + 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = sub_1C0AC(v21);
      if (v20 == &dword_0 + 1)
      {
        if (v23)
        {
          v24 = 9;
          goto LABEL_17;
        }
      }

      else if (!v23)
      {
LABEL_16:
        v24 = 5;
LABEL_17:
        *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount] = v24;
        v25 = a2 * 1.1;
        v26 = a1 * -0.05;
        v27 = a1 * 1.1 / v24;
        v28 = [v18 currentDevice];
        v29 = [v28 userInterfaceIdiom];

        v30 = sub_1BFA4();
        v56 = v14;
        if (v31)
        {
          if (v29 == &dword_0 + 1)
          {
LABEL_23:
            v33 = 10;
            goto LABEL_27;
          }
        }

        else
        {
          v32 = sub_1C0AC(v30);
          if (v29 == &dword_0 + 1)
          {
            if (v32)
            {
              v33 = 6;
              goto LABEL_27;
            }

            goto LABEL_23;
          }

          if (v32)
          {
            v33 = 4;
            goto LABEL_27;
          }
        }

        v33 = 8;
LABEL_27:
        *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount] = v33;
        v34 = v25 / v33;
        v35 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight];
        *v35 = v25;
        *(v35 + 8) = 0;
        v36 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth];
        *v36 = a1 * 1.1;
        *(v36 + 8) = 0;
        v37 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge];
        *v37 = v26;
        *(v37 + 8) = 0;
        v38 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge];
        *v38 = a1 * 1.05;
        *(v38 + 8) = 0;
        v39 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge];
        *v39 = a2 * -0.05;
        *(v39 + 8) = 0;
        v40 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge];
        *v40 = a2 * 1.05;
        *(v40 + 8) = 0;
        v41 = a2 * 0.5 + v34 - (v34 + vcvtd_n_f64_u64(v33, 1uLL) * v34);
        memset(v64, 0, sizeof(v64));
        v65 = 1;
        v60 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
        type metadata accessor for AXMotionCuesGridElement();
        v42 = 0;
        v57 = v33;
        while (1)
        {
          v59 = v42 + 1;
          v43 = (v42 & 1) != 0 ? v27 * 0.5 : a1 * 1.1 / v24;
          v44 = v26 + v43;
          v63 = &_swiftEmptyArrayStorage;
          for (i = 1; ; ++i)
          {
            v46 = v44 + v27 * i;
            swift_allocObject();
            v47 = sub_1B808(v46, v41);
            sub_22734(v64, v47, v46, v48, 0.0);
            v49 = [*(v47 + 16) layer];
            CATransform3DMakeScale(&v62, 0.01, 0.01, 0.01);
            v61 = v62;
            [v49 setTransform:&v61];

            [*&v3[v13] addSubview:*(v47 + 16)];

            sub_32A28();
            if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v58 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
              sub_32A58();
            }

            sub_32A78();

            if (v24 == i)
            {
              break;
            }
          }

          v58 = v63;
          v50 = v60;
          swift_beginAccess();
          v51 = *&v3[v50];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v50] = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v51 = sub_26530(0, v51[2] + 1, 1, v51);
            *&v3[v60] = v51;
          }

          v54 = v51[2];
          v53 = v51[3];
          if (v54 >= v53 >> 1)
          {
            v51 = sub_26530((v53 > 1), v54 + 1, 1, v51);
          }

          v51[2] = v54 + 1;
          v51[v54 + 4] = v58;
          *&v3[v60] = v51;
          swift_endAccess();
          v42 = v59;
          if (v59 == v57)
          {
            break;
          }

          v41 = v34 + v41;
        }

        return (*&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler])(1);
      }
    }

    v24 = 7;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_22438()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView] subviews];
  sub_1A964(0, &qword_4C598, UIView_ptr);
  v3 = sub_32A48();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_32E28();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 subviews];

    v12 = sub_32A48();
    if (v12 >> 62)
    {
      goto LABEL_27;
    }

    for (j = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); j; j = sub_32E58())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_32E28();
        }

        else
        {
          if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v15 removeFromSuperview];

        ++v14;
        if (v17 == j)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v18 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
    swift_beginAccess();
    *&v1[v18] = &_swiftEmptyArrayStorage;

    (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler])(0);
    v19 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
    *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = 0;

    v20 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController;
    v21 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      [v22 removeFromSuperview];

      v21 = *&v1[v20];
LABEL_31:
      [v21 removeFromParentViewController];
      v24 = *&v1[v20];
      *&v1[v20] = 0;

      v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = 2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22734(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = sub_325B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v5 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v100.origin.x = v17;
  v100.origin.y = v19;
  v100.size.width = v21;
  v100.size.height = v23;
  Width = CGRectGetWidth(v100);
  v25 = Width;
  if (Width >= a3)
  {
    Width = a3;
  }

  if (Width < 0.0)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = Width;
  }

  v27 = *(v11 + 104);
  v98 = enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:);
  v99 = v11 + 104;
  v97 = v27;
  v27(v13);
  v28 = sub_325A8();
  v96 = *(v11 + 8);
  v96(v13, v10);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v29 = 21.0;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_11:
    v29 = 12.0;
  }

  v94 = a2;
  v95 = a1;
  v30 = objc_opt_self();
  v31 = [v30 currentDevice];
  v32 = [v31 userInterfaceIdiom];

  v33 = sub_1BFA4();
  v35 = (v34 & 1) == 0 && sub_1C0AC(v33);
  v97(v13, v98, v10);
  v36 = sub_325A8();
  v96(v13, v10);
  if ((v36 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (qword_4BB28 != -1)
  {
    swift_once();
  }

  if (*&dword_4EA0C > 1.5)
  {
    v37 = 0.23;
    if (!v35)
    {
      v37 = 0.18;
    }

    if (v32 == &dword_0 + 1)
    {
      v38 = 0.18;
    }

    else
    {
      v38 = v37;
    }
  }

  else
  {
LABEL_24:
    v39 = 0.09;
    if (v35)
    {
      v39 = 0.145;
    }

    if (v32 == &dword_0 + 1)
    {
      v38 = 0.12;
    }

    else
    {
      v38 = v39;
    }
  }

  v40 = [v30 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v42 = sub_1BFA4();
  v44 = (v43 & 1) == 0 && sub_1C0AC(v42);
  v45 = v94;
  v97(v13, v98, v10);
  v46 = sub_325A8();
  v96(v13, v10);
  v47 = v95;
  if ((v46 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_4BB28 != -1)
  {
    swift_once();
  }

  if (*&dword_4EA0C <= 1.5)
  {
LABEL_38:
    v48 = !v44;
    v49 = 0.15;
    v50 = 0.2;
LABEL_39:
    if (v48)
    {
      v50 = v49;
    }

    goto LABEL_42;
  }

  if (v41 == &dword_0 + 1)
  {
    v48 = !v44;
    v49 = 0.3;
    v50 = 0.35;
    goto LABEL_39;
  }

  v50 = 0.25;
  if (v44)
  {
    v50 = 0.3;
  }

LABEL_42:
  v51 = v25 * 0.0;
  v52 = v25 * v38;
  v53 = 0.0;
  v54 = 0.0;
  if ((*(v47 + 32) & 1) == 0)
  {
    v54 = *(v47 + 16);
    v53 = *(v47 + 24);
    if (v54 >= 0.05)
    {
      if (v54 <= 0.05)
      {
        v57 = *(v45 + 56);
        v58 = 1.0;
        goto LABEL_73;
      }

      v55 = *(v45 + 24);
      v56 = v25 * 0.5;
      v58 = 1.0;
      goto LABEL_66;
    }
  }

  v55 = *(v45 + 24);
  v56 = v25 * 0.5;
  v57 = *(v45 + 56);
  if (v25 * 0.5 >= v55)
  {
    if (v57 == 0.0)
    {
      v59 = fabs(v54) * 0.25 / 0.05 + 0.5;
      v58 = 1.0;
      if (v59 < 1.0 || (v58 = 2.0, v59 >= 2.0))
      {
        if (v54 <= 0.05)
        {
          goto LABEL_73;
        }

        goto LABEL_66;
      }

      goto LABEL_63;
    }

    v58 = 1.0;
LABEL_56:
    if (v54 <= 0.05)
    {
      goto LABEL_73;
    }

    goto LABEL_66;
  }

  v58 = 1.0;
  if (v57 != 1.0)
  {
    goto LABEL_56;
  }

  v59 = fabs(v54) * 0.5 / 0.05 + 0.5;
  v57 = 1.0;
  if (v59 < 1.0)
  {
    v58 = 1.0;
    goto LABEL_65;
  }

  v58 = 3.0;
  if (v59 < 3.0)
  {
LABEL_63:
    v58 = v59;
    if (v54 <= 0.05)
    {
      goto LABEL_73;
    }

    goto LABEL_66;
  }

LABEL_65:
  if (v54 <= 0.05)
  {
LABEL_76:
    v62 = v52 * v58;
    v57 = 1.0;
    goto LABEL_77;
  }

LABEL_66:
  v57 = *(v45 + 56);
  if (v55 >= v56)
  {
    if (v57 == 0.0)
    {
      v61 = fabs(v54) * 0.25 / 0.05 + 0.5;
      v58 = 1.0;
      if (v61 >= 1.0)
      {
        v58 = fmin(v61, 2.0);
      }
    }
  }

  else if (v57 == 1.0)
  {
    v60 = fabs(v54) * 0.5 / 0.05 + 0.5;
    if (v60 >= 1.0)
    {
      v58 = fmin(v60, 3.0);
    }

    else
    {
      v58 = 1.0;
    }

    goto LABEL_76;
  }

LABEL_73:
  v62 = v52 * v58;
  if (v57 < 1.0)
  {
    v62 = v62 + v29 / -10.0;
  }

LABEL_77:
  if (v57 == 100.0)
  {
    v51 = -0.0;
  }

  v63 = v29 * 0.5 + v51;
  v64 = 1.0;
  if (v26 > v63)
  {
    v65 = v25 * v50;
    v66 = fabs(v54);
    if (v62 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v62;
    }

    v68 = v25 * (v66 + v66);
    v69 = v25 * 0.5;
    if (v68 >= v25 * 0.5)
    {
      v68 = v25 * 0.5;
    }

    if (v65 >= v69)
    {
      v65 = v25 * 0.5;
    }

    if (v68 >= v65)
    {
      v68 = v65;
    }

    if (v67 > v68)
    {
      v68 = v67;
    }

    v70 = fabs(v53);
    v71 = v25 * (v70 + v70) * 1.3;
    if (v71 >= v69)
    {
      v71 = v25 * 0.5;
    }

    if (v71 < v65)
    {
      v65 = v71;
    }

    if (v67 > v65)
    {
      v65 = v67;
    }

    if (v66 > 0.05)
    {
      v65 = v68;
    }

    v72 = v63 + v65;
    if (v63 >= v26 || v26 > v72)
    {
      v78 = v25 - v72;
      if (v72 < v26 && v26 <= v78)
      {
        v73 = v52 * 0.75 + v63;
        v64 = 0.0;
        v74 = 0.0;
        if (v26 > v73)
        {
          goto LABEL_103;
        }

LABEL_131:
        v77 = 1.0;
        v74 = v64;
        goto LABEL_136;
      }

      if (v26 > v25 - v63 || v78 >= v26)
      {
        if (v25 - v63 >= v26)
        {
          v64 = 0.0;
        }

        else
        {
          v64 = 1.0;
        }
      }
    }
  }

  v73 = v52 * 0.75 + v63;
  if (v26 <= v73)
  {
    v74 = 1.0;
    v77 = 1.0;
    if (v64 >= 1.0)
    {
      goto LABEL_136;
    }

    goto LABEL_131;
  }

  v74 = v64;
LABEL_103:
  v75 = v25 * 0.2;
  v76 = v25 * 0.2 + v73;
  if (v73 < v26 && v26 <= v76)
  {
    v77 = (v26 - v73) / v75 * -0.75 + 1.0;
    goto LABEL_134;
  }

  v80 = v25 - v76;
  if (v76 < v26 && v26 <= v80)
  {
    v77 = 0.25;
    goto LABEL_134;
  }

  v82 = v25 - v73;
  v83 = v26 <= v82 && v80 < v26;
  if (v83)
  {
    v77 = (v26 - v80) / v75 * 0.75 + 0.25;
    goto LABEL_134;
  }

  if (v82 >= v26)
  {
    v77 = 0.0;
LABEL_134:
    if (v74 < 1.0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v77 = 1.0;
  if (v74 >= 1.0)
  {
LABEL_135:
    v74 = 1.0;
  }

LABEL_136:
  *(v45 + 56) = v74;
  v84 = sub_1BA94(v29 * v74 * v77, a5);
  v97(v13, v98, v10);
  v85 = sub_325A8();
  v96(v13, v10);
  if ((v85 & 1) != 0 && _AXSMotionCuesTintColor())
  {
    v86 = 0.63;
  }

  else
  {
    v86 = 0.85;
  }

  v87 = (fabs(v84) + -2.0) * 0.5;
  v88 = fmin(v87, 1.0);
  v83 = v87 < 0.0;
  v89 = 0.0;
  if (!v83)
  {
    v89 = v88;
  }

  v90 = v89 * v86;
  v91 = v90 + v90;
  v92 = [*(v45 + 16) layer];
  *&v93 = v91;
  [v92 setOpacity:v93];
}

id AXMotionCuesRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_32968();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void AXMotionCuesRootViewController.renderer(_:updateAtTime:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_23500;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1D8DC;
  v4[3] = &unk_45EE8;
  v2 = _Block_copy(v4);
  v3 = v0;

  AXPerformBlockOnMainThread();
  _Block_release(v2);
}

double sub_232B8@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_23338(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_326E8();
  return sub_2D374();
}

uint64_t sub_233BC(uint64_t a1)
{
  v2 = sub_A168(&qword_4BEA0, &qword_34BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2342C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2346C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23484(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_234C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_23524(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

void sub_235A8()
{
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink) = 0;
  v1 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows) = &_swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = 0;
  v9 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics;
  *v9 = 0u;
  *(v9 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  *(v9 + 24) = 0u;
  *(v9 + 40) = xmmword_34130;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience) = 2;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_32E48();
  __break(1u);
}

uint64_t sub_23794(void *a1)
{
  v2 = sub_328A8();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_328C8();
  v15 = *(v5 - 8);
  v16 = v5;
  result = __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
    v9 = a1;
    v10 = sub_32C88();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    aBlock[4] = sub_23FF8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8DC;
    aBlock[3] = &unk_46110;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    sub_328B8();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_23BB0(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_A168(&qword_4C108, &qword_348E0);
    sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0, &protocol conformance descriptor for [A]);
    sub_32D28();
    sub_32C98();
    _Block_release(v12);

    (*(v17 + 8))(v4, v2);
    return (*(v15 + 8))(v8, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23AA0(double a1, double a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    if (*(v2 + 40) > a1)
    {
      *(v2 + 40) = a1;
    }

    if (*(v2 + 48) < a1)
    {
      *(v2 + 48) = a1;
    }

    *(v2 + 32) = a1 * 0.25 + *(v2 + 32) * 0.75;
    if (*(v2 + 16) > a2)
    {
      *(v2 + 16) = a2;
    }

    if (*(v2 + 24) < a2)
    {
      *(v2 + 24) = a2;
    }

    *(v2 + 8) = a2 * 0.25 + *(v2 + 8) * 0.75;
  }
}

uint64_t sub_23B4C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_23BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23C08()
{
  result = qword_4C548;
  if (!qword_4C548)
  {
    sub_9EA8(&qword_4C540, &qword_34C80);
    sub_23CC0();
    sub_23D14(&qword_4C558, &qword_4C560, &qword_34C88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C548);
  }

  return result;
}

unint64_t sub_23CC0()
{
  result = qword_4C550;
  if (!qword_4C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C550);
  }

  return result;
}

uint64_t sub_23D14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_9EA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D8C()
{
  v1 = sub_A168(&qword_4C578, &unk_34C98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16240;

  return sub_1E910(a1, v4, v5, v6);
}

uint64_t sub_23F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B048;

  return sub_1F1C4(a1, v4, v5, v6);
}

uint64_t sub_2405C()
{
  *(v0[3] + 16) = 0;
  *(v0[4] + 16) = 0;
  *(v0[5] + 16) = 0;
  *(v0[6] + 16) = 0;
  *(v0[7] + 16) = 0;
  *(v0[8] + 16) = 0;
  *(v0[9] + 16) = 0;
  *(v0[10] + 16) = 0;
  *(v0[11] + 16) = 0;
  *(v0[12] + 16) = 0;
  *(v0[13] + 16) = 0;
  v1 = v0[28];
  *(v1 + 24) = 0;
  v2 = sub_32A68();
  *(v2 + 16) = 24;
  bzero((v2 + 32), 0x240uLL);
  *(v1 + 32) = v2;
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32938();
  sub_32F08();
  sub_32EF8();
  return (*(v4 + 8))(v6, a2);
}

void sub_24228(int8x16_t *a1@<X8>, double a2@<D0>)
{

  sub_31F98(v90);

  v5 = sub_26884(v90);
  v6 = 0uLL;
  v7 = 0uLL;
  if (v5 == 1)
  {
    goto LABEL_115;
  }

  v92[6] = v90[6];
  v92[7] = v90[7];
  v92[2] = v90[2];
  v92[3] = v90[3];
  v92[4] = v90[4];
  v92[5] = v90[5];
  v92[0] = v90[0];
  v92[1] = v90[1];
  v8 = 1.0 / fmax(a2, 0.008);
  v93 = v91;
  sub_1D754(v92, v87, v90[0]);
  v9 = sub_268A0();
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  sub_1B05C(v87, v11, v88);
  sub_269E4(v88, v89);
  v12 = *(v2 + 24);
  v13 = v89[1];
  v14 = 1.0 / v8;
  v15 = v14 / (v14 + 1.0 / (v12[4] * 6.28318531));
  v16 = v89[0] * v15 + v12[2] * (1.0 - v15);
  v12[2] = v16;
  v12[3] = v15;
  v17 = *(v2 + 32);
  v18 = v14 / (v14 + 1.0 / (v17[4] * 6.28318531));
  v19 = v13 * v18 + v17[2] * (1.0 - v18);
  v17[2] = v19;
  v17[3] = v18;
  v20 = *(v2 + 40);
  v21 = v89[4];
  v22 = v14 / (v14 + 1.0 / (v20[4] * 6.28318531));
  v23 = v89[3] * v22 + v20[2] * (1.0 - v22);
  v20[2] = v23;
  v20[3] = v22;
  v24 = *(v2 + 48);
  v25 = v14 / (v14 + 1.0 / (v24[4] * 6.28318531));
  v26 = v21 * v25 + v24[2] * (1.0 - v25);
  v24[2] = v26;
  v24[3] = v25;
  v27 = *(v2 + 56);
  v28 = v14 / (v14 + 1.0 / (v27[4] * 6.28318531));
  v29 = v89[8] * v28 + v27[2] * (1.0 - v28);
  v27[2] = v29;
  v27[3] = v28;
  v30 = *(v2 + 64);
  v31 = v14 / (v14 + 1.0 / (v30[4] * 6.28318531));
  v32 = v89[7];
  v33 = v89[6] * v31 + v30[2] * (1.0 - v31);
  v30[2] = v33;
  v30[3] = v31;
  v34 = *(v2 + 72);
  v35 = v14 / (v14 + 1.0 / (v34[4] * 6.28318531));
  v36 = v32 * v35 + v34[2] * (1.0 - v35);
  v34[2] = v36;
  v34[3] = v35;
  if (v16 > 0.3)
  {
    v37 = 0x3FD3333333333333;
    if (v19 > 0.3)
    {
LABEL_7:
      v38 = 0.5;
      if (v29 <= 0.5)
      {
        v38 = -0.5;
        if (v29 > -0.5)
        {
          v38 = v29;
        }
      }

      v19 = *&v37;
      v16 = *&v37;
      goto LABEL_40;
    }

    if (v19 <= -0.3)
    {
      v38 = 0.5;
      if (v29 <= 0.5)
      {
        v38 = -0.5;
        if (v29 > -0.5)
        {
          v38 = v29;
        }
      }

      v16 = 0.3;
      v19 = -0.3;
      goto LABEL_40;
    }

    v38 = 0.5;
    if (v29 <= 0.5)
    {
      v38 = -0.5;
      if (v29 > -0.5)
      {
        v38 = v29;
      }
    }

    v37 = 0x3FD3333333333333;
    goto LABEL_24;
  }

  v39 = 0x3FD3333333333333;
  if (v16 <= -0.3)
  {
    if (v19 > 0.3)
    {
      v38 = 0.5;
      if (v29 <= 0.5)
      {
        v38 = -0.5;
        if (v29 > -0.5)
        {
          v38 = v29;
        }
      }

      v16 = -0.3;
      v19 = 0.3;
      goto LABEL_40;
    }

    v37 = 0xBFD3333333333333;
    if (v19 <= -0.3)
    {
      goto LABEL_7;
    }

    v38 = 0.5;
    if (v29 <= 0.5)
    {
      v38 = -0.5;
      if (v29 > -0.5)
      {
        v38 = v29;
      }
    }

LABEL_24:
    v16 = *&v37;
    goto LABEL_40;
  }

  if (v19 > 0.3 || (v39 = 0xBFD3333333333333, v19 <= -0.3))
  {
    v40 = fabs(v16);
    v38 = 0.5;
    if (v29 <= 0.5)
    {
      v38 = -0.5;
      if (v29 > -0.5)
      {
        v38 = v29;
      }
    }

    v19 = *&v39;
  }

  else
  {
    v38 = -0.5;
    if (v29 > -0.5)
    {
      v38 = v29;
    }

    if (v29 > 0.5)
    {
      v38 = 0.5;
    }

    v40 = fabs(v16);
  }

  if (v40 < 0.05)
  {
    *(v2 + 160) = 0;
    goto LABEL_43;
  }

LABEL_40:
  v41 = *(v2 + 160) + a2;
  *(v2 + 160) = v41;
  if (v41 >= 0.5)
  {
    *(v2 + 176) = 1;
  }

  v40 = fabs(v16);
LABEL_43:
  if (v40 >= 0.05)
  {
    *(v2 + 168) = 0;
  }

  else
  {
    v42 = *(v2 + 168) + a2;
    *(v2 + 168) = v42;
    if (v42 >= 0.1)
    {
      *(v2 + 176) = 0;
    }
  }

  if (*(v2 + 176))
  {
    goto LABEL_48;
  }

  v44 = v36 * v36 * 20.0 / 9.81;
  if (v16 > 0.0)
  {
    v16 = v16 - v44;
    if (v16 <= 0.0)
    {
      goto LABEL_53;
    }

LABEL_48:
    v43 = fabs(v19);
    goto LABEL_54;
  }

  v16 = v44 + v16;
  if (v16 <= 0.0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v43 = fabs(v19);
  v16 = 0.0;
LABEL_54:
  if (v43 >= 0.05)
  {
    v46 = *(v2 + 128) + a2;
    *(v2 + 128) = v46;
    if (v38 * *(v2 + 208) <= 0.0)
    {
      *(v2 + 136) = 0;
      v45 = 0.0;
      if (v46 < 0.5)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v45 = *(v2 + 136) + a2;
      *(v2 + 136) = v45;
      if (v46 < 0.5 || v45 >= 0.4)
      {
LABEL_66:
        if (fabs(v19) >= 0.05 && v45 < 0.4)
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }
    }

    *(v2 + 152) = 1;
    goto LABEL_66;
  }

  *(v2 + 128) = 0;
  if (v38 * *(v2 + 208) > 0.0)
  {
    v45 = *(v2 + 136) + a2;
    *(v2 + 136) = v45;
    goto LABEL_66;
  }

  *(v2 + 136) = 0;
LABEL_63:
  if (fabs(v19) >= 0.05)
  {
LABEL_68:
    *(v2 + 144) = 0;
    goto LABEL_71;
  }

LABEL_69:
  v47 = *(v2 + 144) + a2;
  *(v2 + 144) = v47;
  if (v47 >= 0.05)
  {
    *(v2 + 152) = 0;
  }

LABEL_71:
  v48 = fabs(v29);
  v49 = v48 + -0.4 + v48 + -0.4;
  v50 = 0.0;
  if (v49 >= 0.0)
  {
    v50 = v49;
  }

  v51 = v50 * 0.5;
  if (v49 >= 1.0)
  {
    v52 = 0.5;
  }

  else
  {
    v52 = v51;
  }

  if ((*(v2 + 152) & 1) == 0)
  {
    v53 = v29 * v29;
    if (v19 <= 0.0)
    {
      v55 = v53 * 9.0 * v52 / 9.81 + v19;
      v19 = 0.0;
      if (v55 <= 0.0)
      {
        v19 = v55;
      }
    }

    else
    {
      v54 = v19 + v53 * -10.0 * v52 / 9.81;
      v19 = 0.0;
      if (v54 > 0.0)
      {
        v19 = v54;
      }
    }
  }

  *(v2 + 208) = v38;
  v56 = fabs(v19);
  if (v56 >= 0.05)
  {
    v57 = *(v2 + 184) + a2;
    *(v2 + 184) = v57;
    if (v57 >= 0.5)
    {
      *(v2 + 200) = 1;
    }
  }

  else
  {
    *(v2 + 184) = 0;
  }

  if (v56 >= 0.05)
  {
    *(v2 + 192) = 0;
  }

  else
  {
    v58 = *(v2 + 192) + a2;
    *(v2 + 192) = v58;
    if (v58 >= 0.1)
    {
      *(v2 + 200) = 0;
    }
  }

  if (*(v2 + 200))
  {
LABEL_92:
    if (v16 < 0.025)
    {
      v59 = 0.0;
      if (v16 > -0.025)
      {
LABEL_104:
        if (v19 >= 0.025)
        {
          v61 = v19 + -0.025;
        }

        else
        {
          v61 = 0.0;
          if (v19 <= -0.025)
          {
            v61 = v19 + 0.025;
          }
        }

        goto LABEL_108;
      }

      goto LABEL_101;
    }

LABEL_102:
    v62 = -0.025;
    goto LABEL_103;
  }

  v60 = v33 * v33 * 20.0 / 9.81;
  if (v19 <= 0.0)
  {
    v19 = v60 + v19;
    if (v19 <= 0.0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v19 = v19 - v60;
    if (v19 > 0.0)
    {
      goto LABEL_92;
    }
  }

  v19 = 0.0;
  if (v16 >= 0.025)
  {
    goto LABEL_102;
  }

  v59 = 0.0;
  v61 = 0.0;
  if (v16 <= -0.025)
  {
LABEL_101:
    v62 = 0.025;
LABEL_103:
    v59 = v16 + v62;
    goto LABEL_104;
  }

LABEL_108:
  v63 = fabs(v59);
  v64 = fabs(v61);
  if (v63 <= 0.001 || v64 >= v63)
  {
    if (v63 < v61 && v64 > 0.001)
    {
      v59 = v59 * (v59 / v61 * (v59 / v61));
    }
  }

  else
  {
    v61 = v61 * (v61 / v59 * (v61 / v59));
  }

  v65 = sub_24F24(v59, v61, v23, v26, v38);
  v66 = *(v2 + 80);
  v67 = v14 / (v14 + 1.0 / (v66[4] * 6.28318531));
  *v68.i64 = v65 * v67 + v66[2] * (1.0 - v67);
  v66[2] = *v68.i64;
  v66[3] = v67;
  v69 = *(v2 + 88);
  v70 = v14 / (v14 + 1.0 / (v69[4] * 6.28318531));
  v72 = v71 * v70 + v69[2] * (1.0 - v70);
  v69[2] = v72;
  v69[3] = v70;
  v73 = *(v2 + 96);
  v74 = v14 / (v14 + 1.0 / (v73[4] * 6.28318531));
  *&v68.i64[1] = v72;
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  v76 = vnegq_f64(v75);
  v77 = vdupq_n_s64(0x7FF0000000000000uLL);
  __asm { FMOV            V18.2D, #1.0 }

  *v83.i64 = v65 * v74 + v73[2] * (1.0 - v74);
  v73[2] = *v83.i64;
  v73[3] = v74;
  v84 = *(v2 + 104);
  v85 = v14 / (v14 + 1.0 / (v84[4] * 6.28318531));
  v86 = v71 * v85 + v84[2] * (1.0 - v85);
  v84[2] = v86;
  v84[3] = v85;
  *&v83.i64[1] = v86;
  v6 = vbicq_s8(v68, vorrq_s8(vcgeq_s64(vandq_s8(v68, v76), v77), vcgtq_f64(vabsq_f64(v68), _Q18)));
  v7 = vbicq_s8(v83, vorrq_s8(vcgeq_s64(vandq_s8(v83, v76), v77), vcgtq_f64(vabsq_f64(v83), _Q18)));
LABEL_115:
  *a1 = v6;
  a1[1] = v7;
  a1[2].i8[0] = v5 == 1;
}

double sub_24B6C(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_26780((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[16 * v7];
    *(v8 + 4) = Current;
    *(v8 + 5) = a1;
    *(v1 + 16) = v4;
    *(v1 + 32) = *(v1 + 32) + a1;
    v9 = *(v4 + 2);
    a1 = 0.0;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      if (*(v1 + 24) >= Current - *(v4 + 4))
      {
        return *(v1 + 32) / v9;
      }

      *(v1 + 32) = *(v1 + 32) - *(v4 + 5);
      v11 = *(v4 + 2);
      if (!v11)
      {
        break;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v4;
      if (!v12 || (v11 - 1) > *(v4 + 3) >> 1)
      {
        v4 = sub_26780(v12, v11, 1, v4);
        *(v1 + 16) = v4;
      }

      v10 = *(v4 + 2);
      memmove(v4 + 32, v4 + 48, 16 * v10 - 16);
      *(v4 + 2) = v10 - 1;
      *(v1 + 16) = v4;
      v9 = *(v4 + 2);
      if (!v9)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_16:
    v4 = sub_26780(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }

  return a1;
}

uint64_t sub_24CE0()
{

  return swift_deallocClassInstance();
}

double sub_24D3C(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_26780((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[16 * v7];
    *(v8 + 4) = Current;
    *(v8 + 5) = a1;
    *(v1 + 16) = v4;
    *(v1 + 48) = *(v1 + 48) + a1;
    v9 = *(v4 + 2);
    v10 = a1;
    if (!v9)
    {
      return vabdd_f64(a1, v10);
    }

    if (Current - *(v4 + 4) <= 15.0)
    {
LABEL_12:
      v10 = *(v1 + 48) / v9;
      return vabdd_f64(a1, v10);
    }

    while (1)
    {
      *(v1 + 48) = *(v1 + 48) - *(v4 + 5);
      v11 = *(v4 + 2);
      if (!v11)
      {
        break;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v4;
      if (!v12 || (v11 - 1) > *(v4 + 3) >> 1)
      {
        v4 = sub_26780(v12, v11, 1, v4);
        *(v1 + 16) = v4;
      }

      v13 = *(v4 + 2);
      memmove(v4 + 32, v4 + 48, 16 * v13 - 16);
      *(v4 + 2) = v13 - 1;
      *(v1 + 16) = v4;
      v9 = *(v4 + 2);
      if (!v9)
      {
        v10 = a1;
        return vabdd_f64(a1, v10);
      }

      if (Current - *(v4 + 4) <= 15.0)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    v4 = sub_26780(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }
}

uint64_t sub_24EC8()
{

  return swift_deallocClassInstance();
}

double sub_24F24(double a1, double a2, double a3, double a4, double a5)
{
  Current = CFAbsoluteTimeGetCurrent();
  v12 = Current - *(v5 + 40);
  v13 = fmax(v12, 0.00833333333);
  if (v12 >= 1.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = v13;
  }

  *(v5 + 40) = Current;
  v15 = -0.001;
  if (a1 >= -0.001)
  {
    v16 = 0.0;
    if (a1 > 0.001)
    {
      v16 = a1 + -0.001;
    }
  }

  else
  {
    v16 = a1 + 0.001;
  }

  v78 = a1;
  if (a2 >= -0.001)
  {
    v17 = 0.0;
    if (a2 <= 0.001)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0.001;
  }

  v17 = a2 + v15;
LABEL_12:
  v18 = -0.01;
  if (a5 >= -0.01)
  {
    v19 = 0.0;
    if (a5 <= 0.01)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0.01;
  }

  v19 = a5 + v18;
LABEL_16:
  v20 = sub_24B6C(v16);
  v21 = sub_24B6C(v17);
  v22 = sub_24B6C(v19);
  v23 = sub_24D3C(a3);
  v24 = sub_24D3C(a4);
  v25 = fabs(v20);
  v26 = fabs(v22);
  if (v25 <= 0.05)
  {
    *(v5 + 80) = 0;
    if (v25 <= 0.02 || (v27 = 0.0, v26 < 0.05))
    {
      *(v5 + 64) = 0;
      v28 = 1.0;
      goto LABEL_35;
    }
  }

  else
  {
    v27 = 100.0;
    if (v14 + *(v5 + 80) <= 100.0)
    {
      v27 = v14 + *(v5 + 80);
    }

    *(v5 + 80) = v27;
    if (v25 <= 0.02 || fabs(v22) < 0.05)
    {
      *(v5 + 64) = 0;
      if (v27 < 0.0)
      {
        v28 = 5.0;
LABEL_35:
        v30 = 0.0;
        v31 = 48;
LABEL_36:
        *(v5 + v31) = v30;
        goto LABEL_37;
      }

      goto LABEL_30;
    }
  }

  v29 = 100.0;
  if (v14 + *(v5 + 64) <= 100.0)
  {
    v29 = v14 + *(v5 + 64);
  }

  *(v5 + 64) = v29;
  if (v27 < v29)
  {
    *(v5 + 48) = v29;
    v28 = 5.0;
    if (v29 <= 3.5)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 48) = v27;
  v28 = 1.0;
  if (v27 > 3.5)
  {
LABEL_31:
    *(v5 + 16) = 1;
    v30 = v20 / v25;
    if (v25 < 0.001)
    {
      v30 = 1.0;
    }

    v31 = 128;
    goto LABEL_36;
  }

LABEL_37:
  v32 = *(v5 + 16);
  v33 = *(v5 + 128);
  if (v32 == 1 && v25 > 0.005 && v20 * v33 >= 0.0)
  {
    *(v5 + 96) = 0;
    v34 = 0.0;
    v35 = 0.0;
  }

  else
  {
    v34 = v14 + *(v5 + 96);
    if (v34 > 100.0)
    {
      v34 = 100.0;
    }

    *(v5 + 96) = v34;
    v36 = v20 < 0.005;
    if (v33 > 0.0)
    {
      v36 = v20 > -0.005;
    }

    if (v34 > 0.05)
    {
      v37 = v32;
    }

    else
    {
      v37 = 0;
    }

    v35 = 0.0;
    if (v37 == 1)
    {
      if (v25 <= 0.08)
      {
        if (!v36)
        {
          goto LABEL_56;
        }

        v38 = *(v5 + 112);
        v39 = v14 * 1.5 / v28;
      }

      else
      {
        v38 = *(v5 + 112);
        v39 = v14 / v28;
      }

      v40 = v39 + v38;
      if (v40 <= 100.0)
      {
        v35 = v40;
      }

      else
      {
        v35 = 100.0;
      }
    }
  }

LABEL_56:
  *(v5 + 112) = v35;
  if (v35 > 2.5 || v34 > 35.0)
  {
    v32 = 0;
    *(v5 + 16) = 0;
  }

  v41 = fabs(v21);
  if (v41 <= 0.05)
  {
    *(v5 + 88) = 0;
    if (v41 <= 0.02 || (v42 = 0.0, v26 <= 0.05))
    {
      *(v5 + 72) = 0;
      v43 = 1.0;
      goto LABEL_78;
    }
  }

  else
  {
    v42 = v14 + *(v5 + 88);
    if (v42 > 100.0)
    {
      v42 = 100.0;
    }

    *(v5 + 88) = v42;
    if (v41 <= 0.02 || fabs(v22) <= 0.05)
    {
      *(v5 + 72) = 0;
      if (v42 < 0.0)
      {
        v43 = 5.0;
LABEL_78:
        v48 = 0.0;
        v49 = 56;
LABEL_79:
        *(v5 + v49) = v48;
        goto LABEL_80;
      }

      goto LABEL_73;
    }
  }

  v44 = v14 + *(v5 + 72);
  if (v44 > 100.0)
  {
    v44 = 100.0;
  }

  *(v5 + 72) = v44;
  if (v42 < v44)
  {
    *(v5 + 56) = v44;
    v43 = 5.0;
    if (v44 <= 3.5)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 56) = v42;
  v43 = 1.0;
  if (v42 > 3.5)
  {
LABEL_74:
    *(v5 + 17) = 1;
    v45 = fabs(v21);
    v46 = v21 / v45;
    v47 = v45 < 0.001;
    v48 = 1.0;
    if (!v47)
    {
      v48 = v46;
    }

    v49 = 136;
    goto LABEL_79;
  }

LABEL_80:
  v50 = *(v5 + 17);
  v51 = *(v5 + 136);
  if (v50 == 1 && fabs(v21) > 0.005 && v21 * v51 >= 0.0)
  {
    *(v5 + 104) = 0;
    v52 = 0.0;
    v53 = 0.0;
LABEL_95:
    v56 = v78;
    goto LABEL_96;
  }

  v52 = v14 + *(v5 + 104);
  if (v52 > 100.0)
  {
    v52 = 100.0;
  }

  *(v5 + 104) = v52;
  v54 = v21 > -0.005;
  if (v51 <= 0.0)
  {
    v54 = v21 < 0.005;
  }

  if (v52 > 0.05)
  {
    v55 = v50;
  }

  else
  {
    v55 = 0;
  }

  v53 = 0.0;
  if (v55 != 1)
  {
    goto LABEL_95;
  }

  if (fabs(v21) > 0.08)
  {
    v53 = v14 / v43 + *(v5 + 120);
    if (v53 > 100.0)
    {
      v53 = 100.0;
    }

    goto LABEL_95;
  }

  v56 = v78;
  if (v54)
  {
    v53 = v14 * 1.5 / v43 + *(v5 + 120);
    if (v53 > 100.0)
    {
      v53 = 100.0;
    }
  }

LABEL_96:
  *(v5 + 120) = v53;
  if (v53 > 2.5 || v52 > 35.0)
  {
    *(v5 + 17) = 0;
    v57 = v23 * 0.5;
    v58 = 0.2;
    v59 = fabs(v56);
    if (v23 * 0.5 >= 0.2)
    {
      if (v59 > 0.1)
      {
        goto LABEL_123;
      }

      v26 = fabs(v22);
      if (v26 > 0.03)
      {
        v57 = 0.2;
        goto LABEL_130;
      }

      if (v34 > 25.0)
      {
        v57 = 0.2;
        goto LABEL_137;
      }

      if (v35 > 2.0)
      {
        v57 = 0.2;
        goto LABEL_142;
      }

      if ((v32 & 1) == 0 || v33 * v56 > 0.0)
      {
        return v56;
      }

      if (v56 < 0.0)
      {
        v69 = 0.2;
LABEL_187:
        v68 = v56 + v69;
        return fmin(v68, 0.0);
      }

      v74 = -0.2;
    }

    else
    {
      if (v57 >= 0.1)
      {
        if (v59 <= 0.1)
        {
          v26 = fabs(v22);
          if (v26 > 0.03)
          {
            goto LABEL_130;
          }

          if (v34 > 25.0)
          {
LABEL_137:
            v66 = (35.0 - v34) / 10.0;
            if (v66 < 1.0)
            {
              if (v66 >= 0.0)
              {
                v57 = v66 * v57;
              }

              else
              {
                v57 = v57 * 0.0;
              }
            }

LABEL_141:
            if (v35 <= 2.0)
            {
              goto LABEL_146;
            }

            goto LABEL_142;
          }

          if (v35 > 2.0)
          {
LABEL_142:
            v67 = 35.0 - v34 + 35.0 - v34;
            if (v67 < 1.0)
            {
              if (v67 >= 0.0)
              {
                if ((v32 & 1) == 0)
                {
                  return v56;
                }

                v57 = v67 * v57;
              }

              else
              {
                if ((v32 & 1) == 0)
                {
                  return v56;
                }

                v57 = v57 * 0.0;
              }

              goto LABEL_147;
            }

LABEL_146:
            if ((v32 & 1) == 0)
            {
              return v56;
            }

LABEL_147:
            if (v33 * v56 > 0.0)
            {
              return v56;
            }

            if (v56 < 0.0)
            {
LABEL_149:
              v68 = v57 + v56;
              return fmin(v68, 0.0);
            }

            goto LABEL_218;
          }

          if ((v32 & 1) != 0 && v33 * v56 <= 0.0)
          {
            if (v56 < 0.0)
            {
              goto LABEL_149;
            }

LABEL_218:
            v75 = v56 - v57;
            goto LABEL_219;
          }

          return v56;
        }

LABEL_122:
        v58 = v57;
        goto LABEL_123;
      }

      v58 = 0.1;
      if (v59 > 0.1)
      {
        goto LABEL_123;
      }

      v26 = fabs(v22);
      if (v26 > 0.03)
      {
        v57 = 0.1;
        goto LABEL_130;
      }

      if (v34 > 25.0)
      {
        v57 = 0.1;
        goto LABEL_137;
      }

      if (v35 > 2.0)
      {
        v57 = 0.1;
        goto LABEL_142;
      }

      if ((v32 & 1) == 0 || v33 * v56 > 0.0)
      {
        return v56;
      }

      if (v56 < 0.0)
      {
        v69 = 0.1;
        goto LABEL_187;
      }

      v74 = -0.1;
    }

    v75 = v56 + v74;
LABEL_219:
    if (v75 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return v75;
    }
  }

  v57 = v23 * 0.5;
  v58 = 0.2;
  v59 = fabs(v56);
  if (v23 * 0.5 >= 0.2)
  {
    if (v59 <= 0.1)
    {
      if (v26 > 0.03)
      {
        v57 = 0.2;
        goto LABEL_130;
      }

      if (v34 > 25.0)
      {
        v57 = 0.2;
        goto LABEL_137;
      }

      if (v35 > 2.0)
      {
        v57 = 0.2;
        goto LABEL_142;
      }

      if (!v32)
      {
        return v56;
      }

      if (v33 * v56 <= 0.0)
      {
        if (v56 < 0.0)
        {
          v70 = 0.2;
          goto LABEL_228;
        }

        v77 = -0.2;
LABEL_243:
        v56 = v56 + v77;
        if (v56 >= 0.0)
        {
          return v56;
        }

        return 0.0;
      }

LABEL_204:
      v72 = v24 * 0.5;
      v73 = fabs(a2);
      if (v72 < 0.2 && v72 < 0.1 && v73 <= 0.1 && v52 <= 25.0 && v53 <= 2.0)
      {
        if (v51 * a2 > 0.0)
        {
          v50 = 0;
        }

        if (v50 == 1)
        {
          goto LABEL_212;
        }
      }

      return v56;
    }

    goto LABEL_123;
  }

  v58 = 0.1;
  if (v57 >= 0.1)
  {
    if (v59 <= 0.1)
    {
      goto LABEL_129;
    }

    goto LABEL_122;
  }

  if (v59 > 0.1)
  {
LABEL_123:
    v60 = (0.2 - v59) / 0.1;
    v61 = 0.0;
    if (v60 >= 0.0)
    {
      v61 = (0.2 - v59) / 0.1;
    }

    if (v60 >= 1.0)
    {
      v62 = 1.0;
    }

    else
    {
      v62 = v61;
    }

    v57 = v62 * v58;
LABEL_129:
    v26 = fabs(v22);
    if (v26 <= 0.03)
    {
      goto LABEL_136;
    }

    goto LABEL_130;
  }

  v26 = fabs(v22);
  if (v26 > 0.03)
  {
    v57 = 0.1;
LABEL_130:
    v63 = (0.1 - v26) / 0.07;
    v64 = 0.0;
    if (v63 >= 0.0)
    {
      v64 = v63;
    }

    if (v63 >= 1.0)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = v64;
    }

    v57 = v65 * v57;
LABEL_136:
    if (v34 <= 25.0)
    {
      goto LABEL_141;
    }

    goto LABEL_137;
  }

  if (v34 > 25.0)
  {
    v57 = 0.1;
    goto LABEL_137;
  }

  if (v35 > 2.0)
  {
    v57 = 0.1;
    goto LABEL_142;
  }

  if (!v32)
  {
    goto LABEL_204;
  }

  if (v33 * v56 <= 0.0)
  {
    if (v56 < 0.0)
    {
      v70 = 0.1;
LABEL_228:
      v56 = v56 + v70;
      if (v56 < 0.0)
      {
        return v56;
      }

      return 0.0;
    }

    v77 = -0.1;
    goto LABEL_243;
  }

  v71 = fabs(a2);
  if (v24 * 0.5 >= 0.2)
  {
    if (v71 <= 0.1 && v52 <= 25.0 && v53 <= 2.0)
    {
      if (v51 * a2 > 0.0)
      {
        v50 = 0;
      }

      if (v50 == 1)
      {
        if (a2 < 0.0)
        {
          return v78;
        }

        return v78;
      }
    }
  }

  else if (v24 * 0.5 < 0.1 && v71 <= 0.1 && v52 <= 25.0 && v53 <= 2.0)
  {
    if (v51 * a2 > 0.0)
    {
      v50 = 0;
    }

    if (v50 != 1)
    {
      return v78;
    }

LABEL_212:
    if (a2 < 0.0)
    {
      return v78;
    }

    return v78;
  }

  return v56;
}

uint64_t sub_25EF0(uint64_t a1, uint64_t a2)
{

  return swift_deallocClassInstance();
}

uint64_t sub_25F6C()
{
  *(v0 + 16) = 257;
  *(v0 + 24) = CFAbsoluteTimeGetCurrent();
  *(v0 + 32) = CFAbsoluteTimeGetCurrent();
  *(v0 + 40) = CFAbsoluteTimeGetCurrent();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(v0 + 112) = 0u;
  *(v0 + 128) = _Q1;
  *(v0 + 144) = xmmword_34D70;
  *(v0 + 160) = xmmword_34D80;
  *(v0 + 176) = xmmword_34D90;
  *(v0 + 192) = xmmword_34DA0;
  *(v0 + 208) = xmmword_34DB0;
  *(v0 + 224) = xmmword_34DC0;
  type metadata accessor for MovingAverage();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptyArrayStorage;
  *(v6 + 24) = xmmword_34DD0;
  *(v0 + 240) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  *(v7 + 24) = xmmword_34DD0;
  *(v0 + 248) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  *(v8 + 24) = xmmword_34DE0;
  *(v0 + 256) = v8;
  type metadata accessor for GravityCheck();
  v9 = swift_allocObject();
  *(v9 + 40) = 1;
  *(v9 + 48) = 0;
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  *(v9 + 24) = 0x402E000000000000;
  *(v9 + 32) = 0;
  *(v0 + 264) = v9;
  v10 = swift_allocObject();
  *(v10 + 24) = 0x402E000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  *(v10 + 48) = 0;
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 272) = v10;
  return v0;
}

uint64_t sub_260E0(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DriftMitigation();
  v4 = swift_allocObject();
  sub_25F6C();
  *(v2 + 16) = v4;
  type metadata accessor for LowPassFilter();
  v5 = swift_allocObject();
  *(v5 + 32) = 0x4010000000000000;
  *(v5 + 16) = xmmword_34DF0;
  *(v2 + 24) = v5;
  v6 = swift_allocObject();
  *(v6 + 32) = 0x4010000000000000;
  *(v6 + 16) = xmmword_34DF0;
  *(v2 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 32) = 0x4010000000000000;
  *(v7 + 16) = xmmword_34DF0;
  *(v2 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 32) = 0x4010000000000000;
  *(v8 + 16) = xmmword_34DF0;
  *(v2 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 32) = 0x4010000000000000;
  *(v9 + 16) = xmmword_34DF0;
  *(v2 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 32) = 0x4010000000000000;
  *(v10 + 16) = xmmword_34DF0;
  *(v2 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 32) = 0x4010000000000000;
  *(v11 + 16) = xmmword_34DF0;
  *(v2 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 32) = 0x3FF8000000000000;
  *(v12 + 16) = xmmword_34E00;
  *(v2 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 32) = 0x3FF8000000000000;
  *(v13 + 16) = xmmword_34E00;
  *(v2 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 32) = 0x3FB999999999999ALL;
  *(v14 + 16) = xmmword_34E10;
  *(v2 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 32) = 0x3FB999999999999ALL;
  *(v15 + 16) = xmmword_34E10;
  *(v2 + 104) = v15;
  *(v2 + 208) = 0;
  type metadata accessor for StaticDetection();
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 137) = 0u;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  v16 = swift_allocObject();
  *(v16 + 40) = 0;
  *(v16 + 16) = xmmword_34E20;
  v17 = sub_32A68();
  *(v17 + 16) = 24;
  bzero((v17 + 32), 0x240uLL);
  *(v16 + 32) = v17;
  *(v2 + 216) = a1;
  *(v2 + 224) = v16;
  return v2;
}

void *sub_26344(uint64_t a1, uint64_t a2)
{

  return v2;
}

uint64_t sub_263CC(uint64_t a1, uint64_t a2)
{
  sub_26344(a1, a2);

  return swift_deallocClassInstance();
}

char *sub_26424(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD60, &qword_350F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26530(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_A168(&qword_4CD50, &qword_350E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_A168(&qword_4CD58, &qword_350F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26664(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD48, &qword_350E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_26780(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD40, "X|");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26884(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_268A0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_26998();
  sub_1C0BC();
  v2 = sub_32B98();

  v3 = sub_1B6EC(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_26998()
{
  result = qword_4C280;
  if (!qword_4C280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4C280);
  }

  return result;
}

void sub_269E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  if (v5 >= 24)
  {
    v5 = 0;
    v2[5] = 0;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 128);
  v13 = v2[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = sub_26FAC(v13);
  if (v5 < 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v5 >= *(v13 + 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = &v13[24 * v5];
  v15[4] = v6 + v8;
  v15[5] = v7 + v10;
  v15[6] = v9 + v11;
  v2[4] = v13;
  v16 = v2[5];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v2[5] = v18;
  v19 = v2[3];
  if (v19 <= 23)
  {
    v2[3] = v19 + 1;
  }

  sub_26B6C();
  v20 = *(a1 + 48);
  v32 = *(a1 + 64);
  v31 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 112);
  v30 = *(a1 + 72);
  v24 = v23 + v21 + v22 < 0.00001;
  v25 = 0.0;
  if (v24)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v6;
  }

  if (v24)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v7;
  }

  if (!v24)
  {
    v25 = v9;
  }

  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v25;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 64) = v32;
  *(a2 + 48) = v20;
  *(a2 + 88) = v31;
  *(a2 + 72) = v30;
  *(a2 + 96) = v28;
  *(a2 + 112) = v29;
  *(a2 + 128) = v12;
}

uint64_t sub_26B6C()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 32);
    v7 = *(v6 + 16);
    if (!v7)
    {
      v10 = 0.0;
      v9.f64[0] = 0.0;
      v16 = 0.0;
LABEL_16:
      sub_29740(v10, v9.f64[0], v16, v5);
      v30 = *(v0 + 24);
      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (!v30)
        {
          v33 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          goto LABEL_27;
        }

        v31 = *(v0 + 32);
        if (*(v31 + 16) > v30 - 1)
        {
          if (v30 > 3)
          {
            v36 = vdupq_lane_s64(v27, 0);
            v37 = vdupq_lane_s64(v28, 0);
            v38 = vdupq_lane_s64(v29, 0);
            v32 = v30 & 0x7FFFFFFFFFFFFFFCLL;
            v39 = (v31 + 80);
            v33 = 0.0;
            v40 = v30 & 0x7FFFFFFFFFFFFFFCLL;
            v34 = 0.0;
            v35 = 0.0;
            do
            {
              v41 = v39 - 6;
              v56 = vld3q_f64(v41);
              v57 = vld3q_f64(v39);
              v42 = vsubq_f64(v56.val[0], v36);
              v43 = vsubq_f64(v57.val[0], v36);
              v44 = vmulq_f64(v42, v42);
              v45 = vmulq_f64(v43, v43);
              v46 = vsubq_f64(v56.val[1], v37);
              v47 = vsubq_f64(v57.val[1], v37);
              v48 = vmulq_f64(v46, v46);
              v49 = vmulq_f64(v47, v47);
              v56.val[0] = vsubq_f64(v56.val[2], v38);
              v56.val[1] = vsubq_f64(v57.val[2], v38);
              v56.val[0] = vmulq_f64(v56.val[0], v56.val[0]);
              v56.val[1] = vmulq_f64(v56.val[1], v56.val[1]);
              v33 = v33 + v56.val[0].f64[0] + v56.val[0].f64[1] + v56.val[1].f64[0] + v56.val[1].f64[1];
              v34 = v34 + v48.f64[0] + v48.f64[1] + v49.f64[0] + v49.f64[1];
              v35 = v35 + v44.f64[0] + v44.f64[1] + v45.f64[0] + v45.f64[1];
              v39 += 12;
              v40 -= 4;
            }

            while (v40);
            if (v30 == v32)
            {
LABEL_27:
              if (v30 <= 2)
              {
                v30 = 2;
              }

              return sub_29740(v35, v34, v33, (v30 - 1));
            }
          }

          else
          {
            v32 = 0;
            v33 = 0.0;
            v34 = 0.0;
            v35 = 0.0;
          }

          v50 = v30 - v32;
          v51 = (v31 + 24 * v32 + 48);
          do
          {
            v52 = (*(v51 - 2) - *&v27) * (*(v51 - 2) - *&v27);
            v53 = (*(v51 - 1) - *&v28) * (*(v51 - 1) - *&v28);
            v54 = *v51;
            v51 += 3;
            v35 = v35 + v52;
            v34 = v34 + v53;
            v33 = v33 + (v54 - *&v29) * (v54 - *&v29);
            --v50;
          }

          while (v50);
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    if (v7 == 1)
    {
      v8 = 0;
      v9 = 0uLL;
      v10 = 0.0;
    }

    else
    {
      v8 = v7 & 0x7FFFFFFFFFFFFFFELL;
      v17 = (v6 + 64);
      v9 = 0uLL;
      v10 = 0.0;
      v18 = v7 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v19 = v17[-2].f64[0];
        v20 = v17[-1].f64[1];
        v21 = *(v17 - 24);
        v22 = *v17;
        v17 += 3;
        v9 = vaddq_f64(vaddq_f64(v9, v21), v22);
        v10 = v10 + v19 + v20;
        v18 -= 2;
      }

      while (v18);
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }

    v23 = v7 - v8;
    v24 = (v6 + 24 * v8 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v24 = (v24 + 24);
      v10 = v10 + v25;
      v9 = vaddq_f64(v9, v26);
      --v23;
    }

    while (v23);
LABEL_15:
    v16 = v9.f64[1];
    goto LABEL_16;
  }

  if (qword_4BAF0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v11 = sub_AD0C(v1, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v4, v11, v1);
  v12 = sub_32678();
  v13 = sub_32C58();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Static detection: attempt to compute variance without any samples", v14, 2u);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26F50()
{

  return swift_deallocClassInstance();
}

BOOL sub_26FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_32E08();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_270B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_27178(uint64_t a1, uint64_t a2)
{
  v4 = sub_32698();
  v120 = *(v4 - 8);
  v121 = v4;
  v5 = __chkstk_darwin(v4);
  v117 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v115 = &v101 - v8;
  __chkstk_darwin(v7);
  v113 = &v101 - v9;
  v10 = sub_32538();
  v114 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_32478();
  v118 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_329B8();
  __chkstk_darwin(v16 - 8);
  v17 = sub_324E8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = &_swiftEmptyArrayStorage;
  v116 = a1;
  v119 = a2;
  sub_324B8();
  sub_329A8();
  *&v21 = COERCE_DOUBLE(sub_32958());
  v23 = v22;
  v112 = v15;
  v117 = v13;
  v111 = v12;
  v110 = v10;
  (*(v18 + 8))(v20, v17);
  v126 = *&v21;
  v127 = v23;
  v123 = (&dword_8 + 2);
  v124 = 0xE100000000000000;
  v24 = sub_28118();
  v25 = sub_32D08();

  if (!*(v25 + 16))
  {
    goto LABEL_51;
  }

  v26 = *(v25 + 40);
  v27 = 0x8000000000038920;
  v126 = *(v25 + 32);
  v127 = v26;

  v28 = v112;
  sub_32468();
  v29 = sub_32D18();
  v31 = v30;
  v32 = v118 + 1;
  v109 = v118[1];
  v109(v28, v117);
  if (v29 == 0xD000000000000089 && 0x8000000000038920 == v31)
  {

    goto LABEL_7;
  }

  v33 = sub_32EE8();

  if ((v33 & 1) == 0)
  {

LABEL_51:

    v25 = v120;
    v38 = v121;
    v32 = v115;
    if (qword_4BAF0 != -1)
    {
LABEL_69:
      swift_once();
    }

    v96 = sub_AD0C(v38, MCLog);
    swift_beginAccess();
    (*(v25 + 16))(v32, v96, v38);
    v97 = sub_32678();
    v98 = sub_32C58();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_0, v97, v98, "CSV file is in an incorrect format", v99, 2u);
    }

    (*(v25 + 8))(v32, v38);
    return &_swiftEmptyArrayStorage;
  }

LABEL_7:
  v34 = *(v25 + 16);

  if (!v34)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_45:
    v91 = sub_AD0C(v34, MCLog);
    swift_beginAccess();
    (*(v27 + 16))(v28, v91, v34);

    v92 = sub_32678();
    v93 = sub_32C68();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v123 = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_182B0(v116, v26, &v123);
      _os_log_impl(&dword_0, v92, v93, "Error parsing column in %s", v94, 0xCu);
      sub_1A508(v95);
    }

    (*(v27 + 8))(v28, v34);
    return v32;
  }

  v35 = *(v25 + 16);
  v36 = v114;
  if (!v35)
  {
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v25;
  if (!isUniquelyReferenced_nonNull_native || (v35 - 1) > *(v25 + 24) >> 1)
  {
    v25 = sub_26424(isUniquelyReferenced_nonNull_native, v35, 1, v25);
    v125 = v25;
  }

  sub_270B8(0, 1, 0);
  v103 = *(v25 + 16);
  if (v103)
  {
    v104 = v24;
    v118 = v32;
    v38 = 0;
    v102 = (*&v36 + 8);
    v39 = (v25 + 40);
    v32 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v38 >= *(v25 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
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
        __break(1u);
        goto LABEL_69;
      }

      v115 = v38;
      v40 = *v39;
      v126 = *(v39 - 1);
      v127 = *&v40;

      v38 = v112;
      sub_32468();
      *&v41 = COERCE_DOUBLE(sub_32D18());
      v43 = v42;
      v109(v38, v117);

      v126 = *&v41;
      v127 = v43;
      v123 = (&stru_20 + 12);
      v124 = 0xE100000000000000;
      v44 = sub_32D08();

      if (!v44[2])
      {
        goto LABEL_57;
      }

      v45 = v44[4];
      v46 = v44[5];
      v126 = 0.0;

      LOBYTE(v45) = sub_26FC0(v45, v46, &v126);

      if ((v45 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 2uLL)
      {
        goto LABEL_58;
      }

      v114 = v126;
      v47 = v44[6];
      v48 = v44[7];
      v126 = 0.0;

      LOBYTE(v47) = sub_26FC0(v47, v48, &v126);

      if ((v47 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 3uLL)
      {
        goto LABEL_59;
      }

      v108 = v126;
      v49 = v44[8];
      v50 = v44[9];
      v126 = 0.0;

      LOBYTE(v49) = sub_26FC0(v49, v50, &v126);

      if ((v49 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 4uLL)
      {
        goto LABEL_60;
      }

      v107 = v126;
      v51 = v44[10];
      v52 = v44[11];
      v126 = 0.0;

      LOBYTE(v51) = sub_26FC0(v51, v52, &v126);

      if ((v51 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 5uLL)
      {
        goto LABEL_61;
      }

      v53 = v126;
      v54 = v44[12];
      v55 = v44[13];
      v126 = 0.0;

      LOBYTE(v54) = sub_26FC0(v54, v55, &v126);

      if ((v54 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 6uLL)
      {
        goto LABEL_62;
      }

      v56 = v126;
      v57 = v44[14];
      v58 = v44[15];
      v126 = 0.0;

      LOBYTE(v57) = sub_26FC0(v57, v58, &v126);

      if ((v57 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 7uLL)
      {
        goto LABEL_63;
      }

      v59 = v126;
      v60 = v44[16];
      v61 = v44[17];
      v126 = 0.0;

      LOBYTE(v60) = sub_26FC0(v60, v61, &v126);

      if ((v60 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 8uLL)
      {
        goto LABEL_64;
      }

      v62 = v126;
      v63 = v44[18];
      v64 = v44[19];
      v126 = 0.0;

      LOBYTE(v63) = sub_26FC0(v63, v64, &v126);

      if ((v63 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 9uLL)
      {
        goto LABEL_65;
      }

      v65 = v126;
      v66 = v44[20];
      v67 = v44[21];
      v126 = 0.0;

      LOBYTE(v66) = sub_26FC0(v66, v67, &v126);

      if ((v66 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 0xAuLL)
      {
        goto LABEL_66;
      }

      v68 = v126;
      v69 = v44[22];
      v70 = v44[23];
      v126 = 0.0;

      LOBYTE(v69) = sub_26FC0(v69, v70, &v126);

      if ((v69 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 0xBuLL)
      {
        goto LABEL_67;
      }

      v71 = v126;
      v72 = v44[24];
      v73 = v44[25];
      v126 = 0.0;

      LOBYTE(v72) = sub_26FC0(v72, v73, &v126);

      if ((v72 & 1) == 0)
      {
        break;
      }

      if (v44[2] < 0xCuLL)
      {
        goto LABEL_68;
      }

      v74 = v126;
      v75 = v44[26];
      v76 = v44[27];

      v126 = 0.0;
      v77 = sub_26FC0(v75, v76, &v126);

      if (!v77)
      {
        goto LABEL_44;
      }

      v106 = v59;
      v105 = v56;
      v78 = v126;
      v79 = objc_allocWithZone(type metadata accessor for MockCMAttitude());
      v80 = sub_2835C(v74, v71, v78);
      v81 = v111;
      sub_32528();
      sub_32508();
      v83 = v82;
      (*v102)(v81, v110);
      v84 = type metadata accessor for MockDeviceMotion();
      v85 = objc_allocWithZone(v84);
      v86 = &v85[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration];
      v87 = v108;
      *v86 = v114;
      *(v86 + 1) = v87;
      *(v86 + 2) = v107;
      v88 = &v85[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity];
      v89 = v105;
      *v88 = v53;
      *(v88 + 1) = v89;
      *(v88 + 2) = v106;
      v90 = &v85[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate];
      *v90 = v62;
      *(v90 + 1) = v65;
      *(v90 + 2) = v68;
      *&v85[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__attitude] = v80;
      *&v85[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__timestamp] = v83;
      v122.receiver = v85;
      v122.super_class = v84;
      objc_msgSendSuper2(&v122, "init");
      sub_32A28();
      if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_32A58();
      }

      v38 = (v115 + 1);
      sub_32A78();

      v32 = v128;
      v39 += 2;
      if (v103 == v38)
      {
        goto LABEL_49;
      }
    }

LABEL_44:

    v27 = v120;
    v34 = v121;
    v26 = v119;
    v28 = v113;
    if (qword_4BAF0 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_45;
  }

  v32 = &_swiftEmptyArrayStorage;
LABEL_49:

  return v32;
}

unint64_t sub_28118()
{
  result = qword_4CE20;
  if (!qword_4CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CE20);
  }

  return result;
}

_BYTE *sub_2816C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_2835C(double a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__roll] = a1;
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__pitch] = a2;
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__yaw] = a3;
  v8 = __sincos_stret(a1 * 0.5);
  v9 = __sincos_stret(a2 * 0.5);
  v10 = __sincos_stret(a3 * 0.5);
  v11 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion];
  *v11 = v8.__cosval * v9.__sinval * v10.__cosval + v8.__sinval * v9.__cosval * v10.__sinval;
  v11[1] = v8.__sinval * v9.__cosval * v10.__cosval - v8.__cosval * v9.__sinval * v10.__sinval;
  v11[2] = v8.__cosval * v9.__cosval * v10.__sinval + v8.__sinval * v9.__sinval * v10.__cosval;
  v11[3] = v8.__cosval * v9.__cosval * v10.__cosval - v8.__sinval * v9.__sinval * v10.__sinval;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t MCSignpost.server.unsafeMutableAddressor()
{
  if (qword_4BB18 != -1)
  {
    swift_once();
  }

  v0 = sub_32618();

  return sub_AD0C(v0, static MCSignpost.server);
}

uint64_t sub_28590()
{
  v0 = sub_32618();
  sub_1AFB0(v0, static MCSignpost.server);
  sub_AD0C(v0, static MCSignpost.server);
  return sub_32608();
}

uint64_t static MCSignpost.server.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4BB18 != -1)
  {
    swift_once();
  }

  v2 = sub_32618();
  v3 = sub_AD0C(v2, static MCSignpost.server);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2871C(uint64_t a1, float (*a2)(void), float *a3)
{
  sub_32C28();
  v5 = sub_32C18();
  v6 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v7 = *&v5[v6];

  v8 = a2();
  *a3 = v8;
}

void sub_2882C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_allocWithZone(CAFilter);
  v6 = v4;
  v7 = [v5 initWithType:v6];

  *a3 = v7;
}

char *sub_28890(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_32E58();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_28A5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_32E28();
        sub_294BC();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_28A5C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_199A4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_294BC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_28A5C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_199A4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_28A5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_28A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CEC8, &unk_351B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_28B8C(uint64_t a1, double a2)
{
  if ((a1 & 0x100000000) != 0 || (a1 - 1) > 5)
  {
    return 0;
  }

  v2 = a1 - 1;
  result = [objc_opt_self() *(&off_46170)[v2]];
  if (result)
  {
    if (a2 == 1.0)
    {
      v5 = result;
      v6 = [result CGColor];

      return v6;
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
      v10 = 1.0;
      v11 = 0.0;
      v7 = result;
      [v7 getHue:&v13 saturation:&v12 brightness:&v11 alpha:&v10];
      v8 = [objc_allocWithZone(UIColor) initWithHue:v13 saturation:v12 * a2 brightness:v11 alpha:v10];
      v9 = [v8 CGColor];

      return v9;
    }
  }

  return result;
}

id sub_28D00()
{
  v0 = sub_325B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(AXMCNoAnimationBackdropLayer) init];
  v5 = sub_32968();
  [v4 setGroupName:v5];

  v46 = &_swiftEmptyArrayStorage;
  if (qword_4BB30 != -1)
  {
    swift_once();
  }

  v6 = qword_4EA10;
  sub_32A28();
  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_32A58();
  }

  sub_32A78();
  if (qword_4BB38 != -1)
  {
    swift_once();
  }

  v7 = qword_4EA18;
  sub_32A28();
  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_32A58();
  }

  sub_32A78();
  if (qword_4BB40 != -1)
  {
    swift_once();
  }

  v8 = qword_4EA20;
  sub_32A28();
  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_32A58();
  }

  sub_32A78();
  if (qword_4BB48 != -1)
  {
    swift_once();
  }

  v9 = qword_4EA28;
  sub_32A28();
  if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_32A58();
  }

  sub_32A78();
  v10 = v46;
  v11 = _AXSMotionCuesTintColor();
  v12 = *(v1 + 104);
  v43 = enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:);
  v42 = v12;
  v12(v3);
  v13 = sub_325A8();
  v14 = *(v1 + 8);
  v14(v3, v0);
  if (v13)
  {
    v45 = 0;
    v15 = v11;
    v16 = sub_28B8C(v11, 1.0);
    if (v16)
    {
      v17 = v16;
      v41 = v4;
      v44 = 0;
      v18 = sub_28B8C(v15, 0.25);
      if (v18)
      {
        v19 = v18;
        if (qword_4BB50 != -1)
        {
          swift_once();
        }

        v20 = qword_4EA30;
        v21 = kCAFilterInputColor;
        [qword_4EA30 setValue:v17 forKey:?];
        v22 = v20;
        sub_32A28();
        if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v40 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
          sub_32A58();
        }

        sub_32A78();
        if (qword_4BB58 != -1)
        {
          swift_once();
        }

        v23 = qword_4EA38;
        [qword_4EA38 setValue:v19 forKey:v21];
        v24 = v23;
        sub_32A28();
        if (*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v46 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v40 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
          sub_32A58();
        }

        sub_32A78();

        v10 = v46;
      }

      else
      {
      }

      v4 = v41;
    }
  }

  v25 = v4;
  sub_28890(v10);

  isa = sub_32A38().super.isa;

  [v25 setFilters:isa];

  v27 = sub_32BA8().super.super.isa;
  v28 = sub_32968();
  [v25 setValue:v27 forKeyPath:v28];

  v29 = sub_32A88().super.super.isa;
  v30 = sub_32968();
  [v25 setValue:v29 forKeyPath:v30];

  v31 = sub_32B78().super.super.isa;
  v32 = sub_32968();
  [v25 setValue:v31 forKeyPath:v32];

  v33 = sub_32A38().super.isa;
  v34 = sub_32968();
  [v25 setValue:v33 forKeyPath:v34];

  v35 = sub_32BA8().super.super.isa;
  v36 = sub_32968();
  [v25 setValue:v35 forKeyPath:v36];

  [v25 setAllowsEdgeAntialiasing:1];
  v42(v3, v43, v0);
  LOBYTE(v35) = sub_325A8();
  v14(v3, v0);
  if ((v35 & 1) != 0 && _AXSMotionCuesTintColor())
  {
    v38 = 1059145646;
  }

  else
  {
    v38 = 1062836634;
  }

  LODWORD(v37) = v38;
  [v25 setOpacity:v37];

  return v25;
}

unint64_t sub_294BC()
{
  result = qword_4CEC0;
  if (!qword_4CEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4CEC0);
  }

  return result;
}

uint64_t sub_29508()
{
  v0 = sub_325B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v0);
  v4 = sub_325A8();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_4BB28 != -1)
    {
      result = swift_once();
    }

    if (qword_4BB20 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

uint64_t sub_29740(double a1, double a2, double a3, double a4)
{
  v5 = sub_32698();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 0.0)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v10 = sub_AD0C(v5, MCLog);
    swift_beginAccess();
    (*(v6 + 16))(v9, v10, v5);
    v11 = sub_32678();
    v12 = sub_32C58();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Attempt to divide IMUVector by zero.", v13, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

char *sub_29928()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for AXMotionCuesVFXContainerView()) initWithFrame:{v4, v6, v8, v10}];
  v12 = v11;
  if (*v0)
  {
    [*&v11[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView] setWorld:?];
  }

  v13 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  [*&v12[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView] setAntialiasingMode:0];
  [*&v12[v13] setRendersContinuously:1];
  v14 = *&v12[v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v14;
  [v16 setDelegate:Strong];

  swift_unknownObjectRelease();
  v17 = *&v12[v13];
  v18 = [v1 mainScreen];
  [v18 scale];
  v20 = v19;

  [v17 setContentScaleFactor:v20 * 0.8];
  [*&v12[v13] setPreferredFramesPerSecond:60];
  return v12;
}

void sub_29AC8(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v2];
}

uint64_t sub_29B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A38C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_29BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A38C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_29C74(uint64_t a1)
{
  sub_2A38C();
  sub_327F8();
  __break(1u);
}

char *sub_29C9C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  *&v4[v10] = [objc_allocWithZone(VFXView) init];
  *&v4[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = 0;
  v48.receiver = v4;
  v48.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  v11 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  v13 = *&v11[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView];
  v14 = v11;
  [v14 addSubview:v13];
  v15 = *&v11[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame:{v20, v22, v24, v26}];
  v27 = sub_28D00();
  [*&v11[v12] bounds];
  [v27 setFrame:?];
  v28 = [*&v11[v12] layer];
  [v28 addSublayer:v27];

  v29 = *&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer];
  *&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = v27;
  v30 = v27;

  v31 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView]];
  v32 = *&v14[v31];
  v33 = [v16 mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  [v32 setFrame:{v35, v37, v39, v41}];
  v42 = *&v14[v31];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 clearColor];
  [v44 setBackgroundColor:v45];

  [*&v11[v12] setMaskView:*&v14[v31]];
  v46 = [v43 clearColor];
  [v14 setBackgroundColor:v46];

  return v14;
}

void sub_29FC8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

id sub_2A0D8(void *a1)
{
  v3 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  *&v1[v4] = [objc_allocWithZone(VFXView) init];
  *&v1[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_2A1B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2A26C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2A2C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2A338()
{
  result = qword_4CF10;
  if (!qword_4CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF10);
  }

  return result;
}

unint64_t sub_2A38C()
{
  result = qword_4CF18;
  if (!qword_4CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF18);
  }

  return result;
}

uint64_t sub_2A40C@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v15[0] = sub_32888();
  v15[1] = v5;
  v13[0] = sub_32888();
  v13[1] = v6;
  sub_2A6D0(a1, v14);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = a1;
    sub_326D8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    sub_32888();
    sub_32708();
    sub_2A85C(v13, v16, &qword_4CF20, &qword_35450);
    v16[9] = v19;
    v16[10] = v20;
    v16[11] = v21;
    sub_32888();
    sub_32738();
    sub_2A85C(v15, v13, &qword_4CF28, &qword_35458);
    v14[16] = v26;
    v14[17] = v27;
    v14[18] = v28;
    v14[12] = v22;
    v14[13] = v23;
    v14[14] = v24;
    v14[15] = v25;
    v8 = sub_32728();
    v9 = sub_32838();
    sub_2A85C(v13, v15, &qword_4CF30, &qword_35460);
    v17 = v8;
    v18 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;
    sub_326D8();

    if (LOBYTE(v13[0]))
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    result = sub_2A85C(v15, a3, &qword_4CF38, &qword_354B0);
    *(a3 + 336) = v11;
  }

  else
  {
    type metadata accessor for AXMotionCuesVFXManager(0);
    sub_2A7F4();
    result = sub_32748();
    __break(1u);
  }

  return result;
}

uint64_t sub_2A6D0@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_world);
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v4;
    swift_unknownObjectWeakInit();
    v6 = v4;

    sub_32888();
    sub_32738();
    result = sub_2A8C4(&v11, a3);
    v8 = v17;
    a3[5] = v16;
    a3[6] = v8;
    a3[7] = v18;
    v9 = v13;
    a3[1] = v12;
    a3[2] = v9;
    v10 = v15;
    a3[3] = v14;
    a3[4] = v10;
  }

  else
  {
    type metadata accessor for AXMotionCuesVFXManager(0);
    sub_2A7F4();
    result = sub_32748();
    __break(1u);
  }

  return result;
}

unint64_t sub_2A7F4()
{
  result = qword_4C538;
  if (!qword_4C538)
  {
    type metadata accessor for AXMotionCuesVFXManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C538);
  }

  return result;
}

uint64_t sub_2A85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_A168(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2A924()
{
  result = qword_4CF40;
  if (!qword_4CF40)
  {
    sub_9EA8(&qword_4CF48, &qword_354B8);
    sub_2A9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF40);
  }

  return result;
}

unint64_t sub_2A9B0()
{
  result = qword_4CF50;
  if (!qword_4CF50)
  {
    sub_9EA8(&qword_4CF38, &qword_354B0);
    sub_2AA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF50);
  }

  return result;
}

unint64_t sub_2AA3C()
{
  result = qword_4CF58;
  if (!qword_4CF58)
  {
    sub_9EA8(&qword_4CF30, &qword_35460);
    sub_2AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF58);
  }

  return result;
}

unint64_t sub_2AAC8()
{
  result = qword_4CF60;
  if (!qword_4CF60)
  {
    sub_9EA8(&qword_4CF28, &qword_35458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF60);
  }

  return result;
}

uint64_t sub_2AB2C()
{
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  if (LOBYTE(v116[0]) == 1)
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_32EE8();
  }

  sub_2F51C(v0 & 1);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  sub_2F344(v116[1] < v116[0]);

  sub_32C28();
  v1 = sub_32C18();
  v2 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_32C08();
  v5 = v4;

  v6 = sub_32C18();
  v7 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v8 = *&v6[v7];

  sub_32BB8();
  v10 = v9;

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = 0.0;
  swift_retain_n();
  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v14 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v14;
    sub_2ED8C(10, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = 0.0;
  swift_retain_n();
  sub_326E8();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = *(v15 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v18 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v18;
    sub_2ED8C(11, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  sub_2F548(0);

  sub_2F5E0(0);

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = 0.9;
  swift_retain_n();
  sub_326E8();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v22 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v22;
    sub_2ED8C(9, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != &dword_0 + 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_326D8();

    sub_2F5E0(SLOBYTE(v116[0]));

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = 0.055;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = 0.06;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();

    if (v5 > 0.75)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v116[0] = 0.092;
      swift_retain_n();
      sub_326E8();
      sub_2F0F4();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v66 = 9.0;
    }

    else
    {
      v66 = 11.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v66;

    sub_326E8();
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      v69 = *(v67 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v70 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v70;
      sub_2ED8C(3, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v71 = 15.0;
    }

    else
    {
      v71 = 10.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v71;

    sub_326E8();
    v72 = swift_unknownObjectWeakLoadStrong();
    if (v72)
    {
      v73 = v72;
      v74 = *(v72 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v75 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v75;
      sub_2ED8C(4, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v76 = 8.0;
    }

    else
    {
      v76 = 3.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v76;

    sub_326E8();
    v77 = swift_unknownObjectWeakLoadStrong();
    if (v77)
    {
      v78 = v77;
      v79 = *(v77 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v80 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v80;
      sub_2ED8C(5, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v81 = 1.4;
    }

    else
    {
      v81 = 1.3;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v81;

    sub_326E8();
    v82 = swift_unknownObjectWeakLoadStrong();
    if (v82)
    {
      v83 = v82;
      v84 = *(v82 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v85 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v85;
      sub_2ED8C(6, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    if (v10 > 1.5)
    {

      sub_2F5E0(0);

      swift_getKeyPath();
      swift_getKeyPath();

      sub_326D8();

      sub_2F548((LOBYTE(v116[0]) & 1) == 0);

      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v116[0]))
      {
        v86 = 10.0;
      }

      else
      {
        v86 = 13.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v116[0] = v86;

      sub_326E8();
      v87 = swift_unknownObjectWeakLoadStrong();
      if (v87)
      {
        v88 = v87;
        v89 = *(v87 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v90 = v116[0];
        v117 = &type metadata for Float;
        *v116 = v90;
        sub_2ED8C(3, v116);

        sub_B744(v116, &qword_4D650, &qword_357C0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v116[0]))
      {
        v91 = 30.0;
      }

      else
      {
        v91 = 20.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v116[0] = v91;

      sub_326E8();
      v92 = swift_unknownObjectWeakLoadStrong();
      if (v92)
      {
        v93 = v92;
        v94 = *(v92 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v95 = v116[0];
        v117 = &type metadata for Float;
        *v116 = v95;
        sub_2ED8C(4, v116);

        sub_B744(v116, &qword_4D650, &qword_357C0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v116[0]))
      {
        v96 = 10.0;
      }

      else
      {
        v96 = 5.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v116[0] = v96;

      sub_326E8();
      v97 = swift_unknownObjectWeakLoadStrong();
      if (v97)
      {
        v98 = v97;
        v99 = *(v97 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v100 = v116[0];
        v117 = &type metadata for Float;
        *v116 = v100;
        sub_2ED8C(5, v116);

        sub_B744(v116, &qword_4D650, &qword_357C0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v116[0]))
      {
        v101 = 1.5;
      }

      else
      {
        v101 = 1.4;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v116[0] = v101;

      sub_326E8();
      v102 = swift_unknownObjectWeakLoadStrong();
      if (v102)
      {
        v103 = v102;
        v104 = *(v102 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v105 = v116[0];
        v117 = &type metadata for Float;
        *v116 = v105;
        sub_2ED8C(6, v116);

        sub_B744(v116, &qword_4D650, &qword_357C0);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v106 = -0.15;
    }

    else
    {
      v106 = 0.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v106;

    sub_326E8();
    v107 = swift_unknownObjectWeakLoadStrong();
    if (v107)
    {
      v108 = v107;
      v109 = *(v107 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v110 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v110;
      sub_2ED8C(10, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v111 = -0.24;
    }

    else
    {
      v111 = 0.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v111;

    sub_326E8();
    v112 = swift_unknownObjectWeakLoadStrong();
    if (!v112)
    {
      goto LABEL_109;
    }

    v113 = v112;
    v63 = *(v112 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v114 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v114;
    v65 = 11;
    goto LABEL_108;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = 0.037;
  swift_retain_n();
  sub_326E8();
  sub_2F0F4();

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = 0.043;
  swift_retain_n();
  sub_326E8();
  sub_2F0F4();

  if (v5 > 0.75)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = 0.072;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v116[0]))
  {
    v25 = 10.0;
  }

  else
  {
    v25 = 12.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = v25;

  sub_326E8();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v29 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v29;
    sub_2ED8C(3, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v116[0]))
  {
    v30 = 10.0;
  }

  else
  {
    v30 = 9.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = v30;

  sub_326E8();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    v33 = *(v31 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v34 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v34;
    sub_2ED8C(4, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v116[0]))
  {
    v35 = 7.0;
  }

  else
  {
    v35 = 6.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = v35;

  sub_326E8();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = *(v36 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v39 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v39;
    sub_2ED8C(5, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v116[0]))
  {
    v40 = 1.4;
  }

  else
  {
    v40 = 1.3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v116[0] = v40;

  sub_326E8();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;
    v43 = *(v41 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v44 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v44;
    sub_2ED8C(6, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
  }

  if (v10 > 1.5)
  {

    sub_2F548(1);

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v45 = 12.0;
    }

    else
    {
      v45 = 14.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v45;

    sub_326E8();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = *(v46 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v49 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v49;
      sub_2ED8C(3, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v50 = 30.0;
    }

    else
    {
      v50 = 20.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v50;

    sub_326E8();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = *(v51 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v54 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v54;
      sub_2ED8C(4, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v55 = 12.0;
    }

    else
    {
      v55 = 9.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v55;

    sub_326E8();
    v56 = swift_unknownObjectWeakLoadStrong();
    if (v56)
    {
      v57 = v56;
      v58 = *(v56 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v59 = v116[0];
      v117 = &type metadata for Float;
      *v116 = v59;
      sub_2ED8C(5, v116);

      sub_B744(v116, &qword_4D650, &qword_357C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v116[0]))
    {
      v60 = 1.5;
    }

    else
    {
      v60 = 1.4;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v116[0] = v60;

    sub_326E8();
    v61 = swift_unknownObjectWeakLoadStrong();
    if (!v61)
    {
      goto LABEL_109;
    }

    v62 = v61;
    v63 = *(v61 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v64 = v116[0];
    v117 = &type metadata for Float;
    *v116 = v64;
    v65 = 6;
LABEL_108:
    sub_2ED8C(v65, v116);

    sub_B744(v116, &qword_4D650, &qword_357C0);
LABEL_109:
  }

  return sub_2E75C();
}

uint64_t sub_2CC68(double a1, double a2)
{
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v4 = v16[0] * a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v16[0] = fmax(fmin(v16[0] * a1, 1.0), -1.0);
  swift_retain_n();
  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v8 = v16[0];
    v17 = &type metadata for Float;
    *v16 = v8;
    sub_2ED8C(0, v16);

    sub_B744(v16, &qword_4D650, &qword_357C0);
  }

  v9 = -v4;
  if (v4 < -1.0)
  {
    v9 = 1.0;
  }

  if (v4 >= 1.0)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = v9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16[0] = v10;
  swift_retain_n();
  sub_326E8();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v14 = v16[0];
    v17 = &type metadata for Float;
    *v16 = v14;
    sub_2ED8C(1, v16);

    sub_B744(v16, &qword_4D650, &qword_357C0);
  }
}

uint64_t sub_2CF90(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xED00006469724773;
  }

  else
  {
    v2 = 0xE900000000000073;
  }

  if (*a2)
  {
    v3 = 0xED00006469724773;
  }

  else
  {
    v3 = 0xE900000000000073;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_32EE8();
  }

  return v4 & 1;
}

Swift::Int sub_2D030()
{
  sub_32F78();
  sub_329E8();

  return sub_32F88();
}

uint64_t sub_2D0B0(uint64_t a1)
{
  sub_329E8();
}

Swift::Int sub_2D11C(uint64_t a1)
{
  sub_32F78();
  sub_329E8();

  return sub_32F88();
}

uint64_t sub_2D198@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_45540;
  v8._object = v3;
  v5 = sub_32EA8(v4, v8);

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

void sub_2D1F8(void *a1@<X8>)
{
  v2 = 0xE900000000000073;
  if (*v1)
  {
    v2 = 0xED00006469724773;
  }

  *a1 = 0x656C636974726170;
  a1[1] = v2;
}

uint64_t sub_2D2BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

uint64_t sub_2D374()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  v2 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  v3 = v14;
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v13 / v14;

  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v7 = v13;
    v15 = &type metadata for Float;
    *&v13 = v7;
    sub_2ED8C(8, &v13);

    sub_B744(&v13, &qword_4D650, &qword_357C0);
  }

  v8 = v1 == &dword_0 + 1;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_2F4F0(v9);

  sub_2F370(0);

  sub_2F4C4(v8);

  sub_2F344(v3 < v2);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v10 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v10;

  sub_326E8();
  sub_2F5F8();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v11 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v11;

  sub_326E8();
  sub_2F5F8();
}

double sub_2D7E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v1;
}

uint64_t sub_2D854()
{
  v1 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values;
  if (*&v0[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values])
  {
    v2 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values];
  }

  else
  {
    type metadata accessor for AXMotionCuesVFXManager.Values(0);
    swift_allocObject();
    v3 = v0;
    v2 = sub_31224(v3);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_2D8EC(uint64_t a1, uint64_t a2)
{
  v46 = sub_32698();
  v44 = *(v46 - 8);
  v2 = __chkstk_darwin(v46);
  v41[1] = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v41 - v4;
  v43 = sub_324E8();
  v45 = *(v43 - 8);
  v6 = __chkstk_darwin(v43);
  v41[0] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = v41 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v41 - v11;
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass:ObjCClassFromMetadata];
  v18 = sub_32968();
  v19 = sub_32968();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_324D8();

    type metadata accessor for AXMotionCuesVFXManager(0);
    v21 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
    v22 = sub_32968();
    v23 = sub_32968();
    v24 = [v21 URLForResource:v22 withExtension:v23];

    v25 = v14;
    if (v24)
    {
      sub_324D8();

      sub_A168(&qword_4D690, &unk_35E60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_354D0;
      v27 = VFXWorldLoaderOptionMetalLibraryURL;
      *(inited + 32) = VFXWorldLoaderOptionMetalLibraryURL;
      v28 = v43;
      *(inited + 64) = v43;
      v29 = sub_31998((inited + 40));
      v30 = v45;
      (*(v45 + 16))(v29, v12, v28);
      v31 = v27;
      v24 = sub_1987C(inited);
      swift_setDeallocating();
      sub_B744(inited + 32, &qword_4C0C0, &unk_34860);
      (*(v30 + 8))(v12, v28);
    }

    else
    {
      v30 = v45;
      v28 = v43;
    }

    sub_1A964(0, &qword_4D680, VFXWorld_ptr);
    v38 = v42;
    (*(v30 + 16))(v42, v25, v28);
    v39 = sub_2E120(v38, v24);
    (*(v30 + 8))(v25, v28);
    return v39;
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v32 = v46;
    v33 = sub_AD0C(v46, MCLog);
    swift_beginAccess();
    v34 = v44;
    (*(v44 + 16))(v5, v33, v32);
    v35 = sub_32678();
    v36 = sub_32C58();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Error getting VFX source file url", v37, 2u);
    }

    (*(v34 + 8))(v5, v32);
    return 0;
  }
}

id sub_2E120(uint64_t a1, uint64_t a2)
{
  sub_324C8(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_319FC(&qword_4BC18, type metadata accessor for VFXWorldLoaderOption, &unk_344B4);
    v6.super.isa = sub_32908().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_324E8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_324A8();

    swift_willThrow();
    v13 = sub_324E8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

id AXMotionCuesVFXManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXMotionCuesVFXManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesVFXManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2E570@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXMotionCuesVFXManager(0);
  result = sub_326B8();
  *a2 = result;
  return result;
}

void sub_2E5B8(uint64_t a1)
{
  sub_2FC1C(319, &qword_4CFC0, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_2FC1C(319, &qword_4CFC8, &type metadata for AXMotionCuesVFXExperience);
    if (v2 <= 0x3F)
    {
      sub_2E704(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2E704(uint64_t a1)
{
  if (!qword_4CFD0)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_326F8();
    if (!v2)
    {
      atomic_store(v1, &qword_4CFD0);
    }
  }
}

uint64_t sub_2E75C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter) childNodes];
  sub_1A964(0, &qword_4D678, VFXNode_ptr);
  v2 = sub_32A48();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_32E28();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 particleEmitter];
      [v8 killParticles];

      v9 = [v6 particleEmitter];
      if (v9)
      {
        v10 = v9;
        [v9 restart];
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return sub_2E8F8();
}

uint64_t sub_2E8F8()
{
  v1 = [v0 particleEmitter];
  [v1 killParticles];

  v2 = [v0 particleEmitter];
  [v2 restart];

  v3 = [v0 childNodes];
  sub_1A964(0, &qword_4D678, VFXNode_ptr);
  v4 = sub_32A48();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_32E28();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_2E8F8();

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2EAA4(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_326E8();
}

uint64_t sub_2EB1C(char a1)
{
  result = 0x586563726F66;
  switch(a1)
  {
    case 1:
      result = 0x596563726F66;
      break;
    case 2:
      result = 0x754D736563726F66;
      break;
    case 3:
    case 6:
      result = 0x656C636974726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6152746365707361;
      break;
    case 9:
      result = 0x66694C5064697267;
      break;
    case 10:
      v3 = 0x415864697267;
      goto LABEL_18;
    case 11:
      v3 = 0x415964697267;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6A64000000000000;
      break;
    case 12:
      result = 0x6F69736E656D6964;
      break;
    case 13:
      result = 0x6373646E614C7369;
      break;
    case 14:
      result = 0x63614D7369;
      break;
    case 15:
      result = 0x6461507369;
      break;
    case 16:
      result = 0x656E6F68507369;
      break;
    case 17:
      result = 0x646972477369;
      break;
    case 18:
      result = 0x6C6C616D537369;
      break;
    case 19:
      result = 0x656772614C7369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2ED8C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_2EB1C(a1);
    sub_300EC(a2, v15);
    v8 = v16;
    if (v16)
    {
      v9 = sub_1A554(v15, v16);
      v10 = *(v8 - 8);
      __chkstk_darwin(v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_32ED8();
      (*(v10 + 8))(v12, v8);
      sub_1A508(v15);
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_32968();

    [v7 setObject:v13 forKeyedSubscript:v14];

    swift_unknownObjectRelease();
  }
}

char *sub_2EF44(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *&result[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v7 = v8[0];
    *&v8[3] = &type metadata for Float;
    *v8 = v7;
    sub_2ED8C(a3, v8);

    return sub_B744(v8, &qword_4D650, &qword_357C0);
  }

  return result;
}

void sub_2F0F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *&v0.f64[0] = v6[0];
  *&v0.f64[1] = v6[0];
  v1 = [objc_opt_self() valueWithVFXFloat2:COERCE_DOUBLE(vcvt_f32_f64(v0))];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    v6[3] = sub_1A964(0, &qword_4D648, NSValue_ptr);
    v6[0] = v1;
    v5 = v1;
    sub_2ED8C(7, v6);

    sub_B744(v6, &qword_4D650, &qword_357C0);
  }

  else
  {
  }
}

double sub_2F2C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v3;
}

char *sub_2F388(char a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v9[0] = a1;

  sub_326E8();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *&result[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v10 = &type metadata for Bool;
    sub_2ED8C(a4, v9);

    return sub_B744(v9, &qword_4D650, &qword_357C0);
  }

  return result;
}

uint64_t sub_2F574(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  return v3;
}

void sub_2F5F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *&v0.f64[0] = v6[0];
  *&v0.f64[1] = v6[0];
  v1 = [objc_opt_self() valueWithVFXFloat2:COERCE_DOUBLE(vcvt_f32_f64(v0))];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    v6[3] = sub_1A964(0, &qword_4D648, NSValue_ptr);
    v6[0] = v1;
    v5 = v1;
    sub_2ED8C(12, v6);

    sub_B744(v6, &qword_4D650, &qword_357C0);
  }

  else
  {
  }
}

uint64_t sub_2F778()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceX;
  v2 = sub_A168(&qword_4D658, &qword_35D68);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceY, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forcesMul, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleLife, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridPLife, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridXAdjust, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridYAdjust, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCount, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountCenter, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountTopBottom, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMin, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMax, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsX, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsY, v2);
  v3(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__aspectRatio, v2);
  v4 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLandscape;
  v5 = sub_A168(&qword_4D660, &qword_35D70);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isMac, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPad, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPhone, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isGrid, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isSmall, v5);
  v6(v0 + OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLarge, v5);
  return v0;
}

uint64_t sub_2FA80()
{
  sub_2F778();

  return swift_deallocClassInstance();
}

void sub_2FB00(uint64_t a1)
{
  sub_2FC1C(319, &unk_4D0C0, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_2FC1C(319, &qword_4CFC0, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2FC1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_326F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AXMotionCuesVFXExperience(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXMotionCuesVFXExperience(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2FE2C()
{
  result = qword_4D640;
  if (!qword_4D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4D640);
  }

  return result;
}

uint64_t sub_2FE80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXMotionCuesVFXManager.Values(0);
  result = sub_326B8();
  *a2 = result;
  return result;
}

uint64_t sub_2FEE8(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_326E8();
}

void sub_2FF54(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  sub_2F0F4();
}

void sub_30048(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  sub_2F5F8();
}

uint64_t sub_300EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4D650, &qword_357C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_3015C@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  result = v6;
  *a4 = v6;
  return result;
}

char *sub_301D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326E8();
  return sub_2EF44(a5, a6, a7);
}

void sub_30270(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  *a4 = v5;
}

char *sub_30958(void *a1, int a2)
{
  LODWORD(v56) = a2;
  v4 = sub_328A8();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_328C8();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_328E8();
  v58 = *(v65 - 8);
  v7 = __chkstk_darwin(v65);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v52 - v10;
  v11 = sub_A168(&qword_4D670, &qword_35E58);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = sub_A168(&qword_4D660, &qword_35D70);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager__isVFXVisible;
  LOBYTE(aBlock) = 1;
  sub_326C8();
  (*(v16 + 32))(&v2[v19], v18, v15);
  v20 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager__viewSize;
  v21 = [objc_opt_self() mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;

  aBlock = v23;
  v67 = v25;
  type metadata accessor for CGSize(0);
  sub_326C8();
  (*(v12 + 32))(&v2[v20], v14, v11);
  *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_world] = a1;
  v26 = a1;
  v27 = [v26 rootNode];
  v28 = sub_32968();
  v29 = [v27 childNodeWithName:v28];

  if (v29)
  {
    v30 = [v26 rootNode];
    v31 = sub_32968();
    v32 = [v30 childNodeWithName:v31];

    if (v32)
    {
      v33 = [v26 rootNode];
      v34 = sub_32968();
      v35 = [v33 childNodeWithName:v34];

      if (v35)
      {
        v36 = [v26 rootNode];
        v37 = sub_32968();
        v38 = [v36 childNodeWithName:v37];

        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_screen] = v38;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_camera] = v29;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter] = v32;
        *&v2[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_gridEmitter] = v35;
        swift_beginAccess();
        v73[0] = v56 & 1;
        v56 = v29;
        v55 = v32;
        v54 = v35;
        sub_326C8();
        swift_endAccess();
        v39 = type metadata accessor for AXMotionCuesVFXManager(0);
        v72.receiver = v2;
        v72.super_class = v39;
        v40 = objc_msgSendSuper2(&v72, "init");
        v41 = *&v40[OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_screen];
        v42 = v40;
        [v41 setHidden:1];
        sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
        v53 = sub_32C88();
        sub_328D8();
        v43 = v57;
        sub_328F8();
        v58 = *(v58 + 8);
        (v58)(v9, v65);
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        v70 = sub_3195C;
        v71 = v44;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1D8DC;
        v69 = &unk_463E0;
        v45 = _Block_copy(&aBlock);
        v46 = v42;

        v47 = v59;
        sub_328B8();
        aBlock = &_swiftEmptyArrayStorage;
        sub_319FC(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_A168(&qword_4C108, &qword_348E0);
        sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0, &protocol conformance descriptor for [A]);
        v48 = v61;
        v49 = v64;
        sub_32D28();
        v50 = v53;
        sub_32C78();
        _Block_release(v45);

        (*(v63 + 8))(v48, v49);
        (*(v60 + 8))(v47, v62);
        (v58)(v43, v65);
        return v46;
      }
    }

    else
    {
      v32 = v29;
    }
  }

  result = sub_32E48();
  __break(1u);
  return result;
}

uint64_t sub_31224(uint64_t a1)
{
  v35 = a1;
  v2 = sub_A168(&qword_4D660, &qword_35D70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_A168(&qword_4D658, &qword_35D68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceX;
  v36 = 0;
  sub_326C8();
  v11 = *(v7 + 32);
  v11(v1 + v10, v9, v6);
  v12 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forceY;
  v36 = 0;
  sub_326C8();
  v11(v1 + v12, v9, v6);
  v13 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__forcesMul;
  v36 = 0x3FE999999999999ALL;
  sub_326C8();
  v11(v1 + v13, v9, v6);
  v14 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleLife;
  v36 = 0x3FF0000000000000;
  sub_326C8();
  v11(v1 + v14, v9, v6);
  v15 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridPLife;
  v36 = 0x3FE0000000000000;
  sub_326C8();
  v11(v1 + v15, v9, v6);
  v16 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridXAdjust;
  v36 = 0xBFC3333333333333;
  sub_326C8();
  v11(v1 + v16, v9, v6);
  v17 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__gridYAdjust;
  v36 = 0;
  sub_326C8();
  v11(v1 + v17, v9, v6);
  v18 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCount;
  v36 = 0x402E000000000000;
  sub_326C8();
  v11(v1 + v18, v9, v6);
  v19 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountCenter;
  v36 = 0x4024000000000000;
  sub_326C8();
  v11(v1 + v19, v9, v6);
  v20 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleCountTopBottom;
  v36 = 0x4014000000000000;
  sub_326C8();
  v11(v1 + v20, v9, v6);
  v21 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMin;
  v36 = 0x3F989374BC6A7EFALL;
  sub_326C8();
  v11(v1 + v21, v9, v6);
  v22 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__particleSizeRangeMax;
  v36 = 0x3FABA5E353F7CED9;
  sub_326C8();
  v11(v1 + v22, v9, v6);
  v23 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsX;
  v36 = 0x4077700000000000;
  sub_326C8();
  v11(v1 + v23, v9, v6);
  v24 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__dimensionsY;
  v36 = 0x4089600000000000;
  sub_326C8();
  v11(v1 + v24, v9, v6);
  v25 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__aspectRatio;
  v36 = 0x3FF999999999999ALL;
  sub_326C8();
  v11(v1 + v25, v9, v6);
  v26 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLandscape;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27 = *(v3 + 32);
  v27(v1 + v26, v5, v2);
  v28 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isMac;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v28, v5, v2);
  v29 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPad;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v29, v5, v2);
  v30 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isPhone;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v30, v5, v2);
  v31 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isGrid;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v31, v5, v2);
  v32 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isSmall;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v32, v5, v2);
  v33 = OBJC_IVAR____TtCC18AXMotionCuesServer22AXMotionCuesVFXManager6Values__isLarge;
  LOBYTE(v36) = 0;
  sub_326C8();
  v27(v1 + v33, v5, v2);
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_31924()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_31998(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_319FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_31A48()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = *(v0 + 16);
  if ([v8 isDeviceMotionAvailableNoSim])
  {
    if ([v8 isDeviceMotionActiveNoSim])
    {
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v9 = sub_AD0C(v1, MCLog);
      swift_beginAccess();
      (*(v2 + 16))(v7, v9, v1);
      v10 = sub_32678();
      v11 = sub_32C58();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_0, v10, v11, "Already capturing device motion data. No need to start.", v12, 2u);
      }

      return (*(v2 + 8))(v7, v1);
    }

    else
    {
      return [v8 startDeviceMotionUpdatesNoSim];
    }
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v14 = sub_AD0C(v1, MCLog);
    swift_beginAccess();
    (*(v2 + 16))(v5, v14, v1);
    v15 = sub_32678();
    v16 = sub_32C58();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Device motion is not available.", v17, 2u);
    }

    (*(v2 + 8))(v5, v1);
    sub_AD44();
    swift_allocError();
    *v18 = 0xD00000000000001ELL;
    v18[1] = 0x8000000000039110;
    return swift_willThrow();
  }
}

id sub_31DA4()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if ([v5 isDeviceMotionActiveNoSim])
  {

    return [v5 stopDeviceMotionUpdatesNoSim];
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v7 = sub_AD0C(v1, MCLog);
    swift_beginAccess();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_32678();
    v9 = sub_32C58();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "No ongoing capture. No need to stop.", v10, 2u);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

__n128 sub_31F98@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (![v7 isDeviceMotionActiveNoSim])
  {
LABEL_9:
    sub_323D8(&v64);
    goto LABEL_10;
  }

  v8 = [v7 deviceMotionNoSim];
  if (!v8)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v38 = sub_AD0C(v3, MCLog);
    swift_beginAccess();
    (*(v4 + 16))(v6, v38, v3);
    v39 = sub_32678();
    v40 = sub_32C58();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Device motion is empty.", v41, 2u);
    }

    (*(v4 + 8))(v6, v3);
    goto LABEL_9;
  }

  v9 = v8;
  [v8 userAcceleration];
  v54 = v11;
  v55 = v10;
  v53 = v12;
  [v9 gravity];
  v51 = v14;
  v52 = v13;
  v50 = v15;
  [v9 rotationRate];
  v48 = v17;
  v49 = v16;
  v47 = v18;
  v19 = [v9 attitude];
  v20 = [v9 attitude];
  [v20 quaternion];

  [v9 timestamp];
  v22 = v21;
  v23 = v19;
  [v23 pitch];
  v25 = v24;
  [v23 roll];
  v27 = v26;
  [v23 yaw];
  v29 = v28;

  [v23 quaternion];
  v31 = v30;
  [v23 quaternion];
  v33 = v32;
  [v23 quaternion];
  v35 = v34;
  [v23 quaternion];
  v37 = v36;

  *&v56 = v55;
  *(&v56 + 1) = v54;
  v57.n128_u64[0] = v53;
  v57.n128_u64[1] = v52;
  *&v58 = v51;
  *(&v58 + 1) = v50;
  *&v59 = v49;
  *(&v59 + 1) = v48;
  *&v60 = v47;
  *(&v60 + 1) = v25;
  *&v61 = v27;
  *(&v61 + 1) = v29;
  *&v62 = v37;
  *(&v62 + 1) = v31;
  *&v63[0] = v33;
  *(&v63[0] + 1) = v35;
  *&v63[1] = v22;
  sub_323FC(&v56);
  v70 = v62;
  v71[0] = v63[0];
  *(v71 + 9) = *(v63 + 9);
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v64 = v56;
  v65 = v57;
LABEL_10:
  v42 = v71[0];
  *(a1 + 96) = v70;
  *(a1 + 112) = v42;
  *(a1 + 121) = *(v71 + 9);
  v43 = v67;
  *(a1 + 32) = v66;
  *(a1 + 48) = v43;
  v44 = v69;
  *(a1 + 64) = v68;
  *(a1 + 80) = v44;
  result = v65;
  *a1 = v64;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_32378()
{
  sub_31DA4();

  return swift_deallocClassInstance();
}

double sub_323D8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
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