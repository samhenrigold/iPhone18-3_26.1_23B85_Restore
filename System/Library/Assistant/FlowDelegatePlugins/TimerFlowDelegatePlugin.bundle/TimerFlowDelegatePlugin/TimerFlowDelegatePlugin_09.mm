uint64_t sub_1133B8(uint64_t a1, uint64_t a2)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a1;
  v2 = sub_125CDC();
  v3 = type metadata accessor for TimerTimer(0);
  WitnessTable = swift_getWitnessTable();
  return sub_11394C(sub_116010, v7, v2, v3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);
}

uint64_t sub_113460()
{
  sub_1153C8();
  v0 = sub_12438C();
  if (v0)
  {
  }

  else
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v1 = sub_125ABC();
    sub_5B30(v1, qword_162FF0);

    v2 = sub_125AAC();
    v3 = sub_125DEC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      sub_12466C();

      v6 = sub_125BAC();
      v8 = sub_8530(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, v2, v3, "Fail to build uso entity %s", v4, 0xCu);
      sub_5BB0(v5);
    }
  }

  return v0;
}

uint64_t sub_1135FC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_12513C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5AE8(&qword_163020, &qword_12B9C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = [v1 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_125B9C();
    v28 = v13;
    v29 = v12;
  }

  else
  {
    v28 = 0xE000000000000000;
    v29 = 0;
  }

  v14 = sub_123D1C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = [v1 label];
  if (v15)
  {
    v16 = v15;
    v26 = sub_125B9C();
    v27 = v17;
  }

  else
  {
    v26 = 0x72656D6954;
    v27 = 0xE500000000000000;
  }

  v18 = [v1 duration];
  v19 = v18;
  if (v18)
  {
    [v18 doubleValue];
    v21 = v20;

    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  v22 = [v1 remainingTime];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
  }

  [v1 state];
  sub_1258BC();
  (*(v4 + 104))(v6, enum case for PunchOutApp.timer(_:), v3);
  sub_12512C();
  (*(v4 + 8))(v6, v3);
  return sub_124F3C();
}

uint64_t sub_11394C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_125D8C();
  if (!v19)
  {
    return sub_125CBC();
  }

  v41 = v19;
  v45 = sub_1260AC();
  v32 = sub_1260BC();
  sub_12605C(v41);
  result = sub_125D7C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_125DBC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_12609C();
      result = sub_125D9C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_113D6C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_12513C();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&unk_15F170, &unk_126E00);
  v10 = __chkstk_darwin(v9 - 8);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v68 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  v68 = v20;
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    type metadata accessor for TimerTimer.Builder(0);
    swift_allocObject();
    v21 = sub_94508();
  }

  sub_124D6C();
  swift_allocObject();

  sub_124D5C();
  v22 = [v2 duration];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
  }

  sub_124D4C();

  v24 = sub_124D3C();

  v25 = a2;
  v76 = v24;
  sub_124D0C();
  swift_allocObject();
  sub_124D5C();
  v26 = [v3 remainingTime];
  v27 = v26;
  if (v26)
  {
    [v26 doubleValue];
  }

  sub_124D4C();

  v28 = sub_124D3C();

  v72 = v25;
  v75 = v28;
  sub_124D0C();
  v29 = [v3 label];
  v74 = a2;
  if (v29)
  {
    v30 = v29;
    sub_125B9C();

    sub_125BCC();

    v31 = sub_124E4C();
    (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
  }

  else
  {
    v31 = sub_124E4C();
    (*(*(v31 - 8) + 56))(v19, 1, 1, v31);
  }

  v32 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_label;
  swift_beginAccess();
  sub_10F5E4(v19, v21 + v32);
  swift_endAccess();
  sub_5CA8(v19, &unk_15F170, &unk_126E00);
  [v3 type];
  sub_12588C();
  sub_124E4C();
  v33 = *(v31 - 8);
  v34 = *(v33 + 56);
  v35 = v33 + 56;
  v34(v17, 0, 1, v31);
  v36 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_type;
  swift_beginAccess();
  sub_10F5E4(v17, v21 + v36);
  swift_endAccess();
  sub_5CA8(v17, &unk_15F170, &unk_126E00);
  [v3 state];
  sub_1258AC();
  v77 = v35;
  v78 = v34;
  v34(v17, 0, 1, v31);
  v37 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_state;
  swift_beginAccess();
  sub_10F5E4(v17, v21 + v37);
  swift_endAccess();
  sub_5CA8(v17, &unk_15F170, &unk_126E00);
  *(v21 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_remainingTime) = v75;

  *(v21 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_duration) = v76;

  v39 = v70;
  v38 = v71;
  (*(v70 + 104))(v8, enum case for PunchOutApp.timer(_:), v71);
  sub_12511C();
  (*(v39 + 8))(v8, v38);
  v40 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_action;
  swift_beginAccess();
  sub_10F5E4(v17, v21 + v40);
  swift_endAccess();
  sub_5CA8(v17, &unk_15F170, &unk_126E00);
  v41 = [v3 identifier];
  if (v41)
  {
    v42 = v41;
    sub_125B9C();
  }

  v44 = v73;
  v43 = v74;
  sub_124E2C();
  v78(v17, 0, 1, v31);
  v45 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_timerIDString;
  swift_beginAccess();
  sub_22A1C(v17, v21 + v45);
  swift_endAccess();

  v46 = [v3 device];
  if (!v46)
  {
    goto LABEL_29;
  }

  v47 = v46;
  v48 = [v46 roomName];
  if (v48)
  {
    v49 = v48;
    sub_125B9C();

    v50 = v68;
    sub_125BCC();

    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v68;
  }

  v52 = 1;
  v78(v50, v51, 1, v31);
  v53 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_roomName;
  swift_beginAccess();
  sub_10F5E4(v50, v21 + v53);
  swift_endAccess();
  sub_5CA8(v50, &unk_15F170, &unk_126E00);
  v54 = [v47 deviceName];
  if (v54)
  {
    v55 = v54;
    sub_125B9C();

    sub_125BCC();

    v52 = 0;
  }

  v56 = v78;
  v78(v44, v52, 1, v31);
  v57 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_deviceName;
  swift_beginAccess();
  sub_10F5E4(v44, v21 + v57);
  swift_endAccess();
  sub_5CA8(v44, &unk_15F170, &unk_126E00);
  v56(v17, 1, 1, v31);
  swift_beginAccess();
  sub_10F5E4(v17, v21 + v40);
  swift_endAccess();
  sub_5CA8(v17, &unk_15F170, &unk_126E00);
  v58 = [v47 targetMatchType];
  if (v58 == &dword_0 + 2)
  {
    v59 = v69;
    sub_125BCC();
    v43 = v74;
LABEL_25:
    v78(v59, 0, 1, v31);
    v60 = OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_targetDeviceType;
    swift_beginAccess();
    sub_10F5E4(v59, v21 + v60);
    swift_endAccess();
    sub_5CA8(v59, &unk_15F170, &unk_126E00);
    v61 = [v47 isInRespondingRoom];
    if (v61)
    {
      v62 = v61;
      v63 = [v61 BOOLValue];
    }

    else
    {
      v63 = 0;
    }

    *(v21 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isInRespondingRoom) = v63;
LABEL_29:
    type metadata accessor for TimerTimer(0);
    swift_allocObject();
    v64 = sub_96BA0(v21);

    swift_beginAccess();
    v65 = *(v64 + 16);
    *(v64 + 16) = v43;
    v66 = v72;

    return v64;
  }

  v59 = v69;
  v43 = v74;
  if (v58 == &dword_0 + 1 || !v58)
  {
    sub_125BCC();
    goto LABEL_25;
  }

  v79 = v58;
  result = sub_1261EC();
  __break(1u);
  return result;
}

id sub_1147F8(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_125B8C();

  v5 = sub_125B8C();
  v6 = [v3 initWithIdentifier:v4 displayString:v5];

  v7 = v6;
  [v7 setLabel:0];
  v8 = objc_opt_self();
  [v8 defaultDuration];
  isa = sub_125D5C().super.super.isa;
  [v7 setDuration:isa];

  [v8 defaultDuration];
  v10 = sub_125D5C().super.super.isa;
  [v7 setRemainingTime:v10];

  [v7 setState:0];
  return v7;
}

uint64_t sub_114918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v6 = sub_12513C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_163020, &qword_12B9C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = [v2 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_125B9C();
    v33 = v16;
    v34 = v15;
  }

  else
  {
    v33 = 0xE000000000000000;
    v34 = 0;
  }

  v17 = sub_123D1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, a1, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = [v2 label];
  if (v19)
  {
    v20 = v19;
    v31 = sub_125B9C();
    v32 = v21;
  }

  else
  {
    v31 = 0x72656D6954;
    v32 = 0xE500000000000000;
  }

  v22 = [v2 duration];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
    v25 = v24;

    v30 = v25;
  }

  else
  {
    v30 = 0;
  }

  v26 = [v2 remainingTime];
  v27 = v26;
  if (v26)
  {
    [v26 doubleValue];
  }

  [v2 state];
  sub_1258BC();
  (*(v7 + 104))(v9, enum case for PunchOutApp.timer(_:), v6);
  sub_12512C();
  (*(v7 + 8))(v9, v6);
  return sub_124F3C();
}

Swift::Bool __swiftcall SiriTimer.isDefault()()
{
  v1 = [v0 duration];
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = objc_opt_self();
  [v5 defaultDuration];
  if (v2)
  {
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = [v0 remainingTime];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  [v5 defaultDuration];
  result = 0;
  if (v10 && v12 == v13)
  {
    v14 = [v0 identifier];
    if (v14)
    {

      return 0;
    }

    else
    {
      [v0 state];
      v15 = sub_1258BC();
      return v15 == sub_1258BC();
    }
  }

  return result;
}

uint64_t sub_114E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v56 = a4;
  v10 = sub_5AE8(&qword_162C28, &qword_12B6D8);
  v11 = __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v53 - v13;
  v15 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v15 - 8);
  v17 = v53 - v16;
  v18 = sub_125B4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v60 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v21 = sub_113460();
  v61 = v18;
  if (v21)
  {
    v53[1] = a3;
    v58 = v19;
    v59 = a5;
    v22 = [v62 identifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_125B9C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v53[0] = a1;
    v54 = a2;
    v63[0] = v24;
    v63[1] = v26;
    sub_5AE8(&qword_162000, &qword_129F18);
    v57 = sub_125BAC();
    if (qword_15EE98 != -1)
    {
      swift_once();
    }

    v27 = sub_125ADC();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v30 = v28 + 56;
    v29(v14, 1, 1, v27);
    sub_1257EC();

    v31 = v62;
    sub_125B2C();
    v57 = v30;
    v62 = v29;
    v46 = v58;
    v47 = *(v58 + 56);
    v48 = v61;
    v47(v17, 0, 1, v61);
    v49 = *(v46 + 32);
    v50 = v60;
    v49(v60, v17, v48);
    if (v54)
    {
      if ((v56 & 1) == 0)
      {

        v51 = v55;
        sub_125ACC();
        v62(v51, 0, 1, v27);
        v50 = v60;
        sub_125B3C();
      }
    }

    v52 = v59;
    v49(v59, v50, v48);
    return (v47)(v52, 0, 1, v48);
  }

  else
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v32 = sub_125ABC();
    sub_5B30(v32, qword_162FF0);
    v33 = v62;
    v34 = sub_125AAC();
    v35 = sub_125DEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v19;
      v38 = swift_slowAlloc();
      v63[0] = v38;
      *v36 = 136315138;
      v39 = v33;
      v40 = [v39 description];
      v41 = sub_125B9C();
      v43 = v42;

      v44 = sub_8530(v41, v43, v63);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_0, v34, v35, "Fail to build rr entity from timer %s", v36, 0xCu);
      sub_5BB0(v38);
      v19 = v37;

      v18 = v61;
    }

    return (*(v19 + 56))(a5, 1, 1, v18);
  }
}

uint64_t sub_1153C8()
{
  v1 = v0;
  v2 = sub_12442C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12466C();
  swift_allocObject();
  v6 = sub_12465C();
  sub_12481C();
  swift_allocObject();
  sub_12480C();
  (*(v3 + 104))(v5, enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:), v2);
  sub_1247FC();
  (*(v3 + 8))(v5, v2);
  v7 = [v0 duration];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  [v7 doubleValue];
  v10 = v9;
  v11 = v9;

  sub_12476C();
  swift_allocObject();
  result = sub_12475C();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_12474C();
  sub_124B3C();
  swift_allocObject();
  sub_124B2C();

  sub_124B0C();

  sub_124B1C();

  sub_1247EC();
  swift_allocObject();
  sub_1247DC();

  sub_1247BC();

  sub_12463C();

LABEL_6:
  v13 = [v1 remainingTime];
  if (v13)
  {
    v14 = v13;
    [v13 doubleValue];
    v16 = v15;
    v17 = v15;

    sub_12476C();
    swift_allocObject();
    result = sub_12475C();
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          sub_12474C();
          sub_124B3C();
          swift_allocObject();
          sub_124B2C();

          sub_124B0C();

          sub_124B1C();

          sub_1247EC();
          swift_allocObject();
          sub_1247DC();

          sub_1247BC();

          sub_12462C();

          goto LABEL_11;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_11:
  v18 = [v1 label];
  if (v18)
  {
    v19 = v18;
    v20 = sub_125B9C();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_12464C();
    }
  }

  return v6;
}

id sub_11585C()
{
  v1 = v0;
  v2 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = [objc_allocWithZone(SATimerObject) init];
  v6 = [v0 label];
  if (v6)
  {
    v7 = v6;
    v8 = sub_125B9C();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      [v5 setTitle:v7];
    }
  }

  v12 = [v1 duration];
  if (v12)
  {
    v13 = v12;
    [v12 doubleValue];
    v15 = v14;

    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
    [v5 setTimerValue:v16];
  }

  v17 = [v1 state];
  if (v17 == &dword_0 + 1)
  {
    v18 = &SATimerStateRunningValue;
  }

  else
  {
    v18 = &SATimerStateUndefinedValue;
  }

  if (v17 == &dword_0 + 2)
  {
    v18 = &SATimerStatePausedValue;
  }

  [v5 setState:*v18];
  v19 = [v1 identifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_125B9C();
    v23 = v22;

    v31 = 0;
    v32 = 0xE000000000000000;
    v24 = v5;
    sub_125FEC(25);

    v31 = 0xD000000000000017;
    v32 = 0x800000000012F1D0;
    v33._countAndFlagsBits = v21;
    v33._object = v23;
    sub_125C0C(v33);

    sub_122ECC();

    v25 = sub_122EDC();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v4, 1, v25) != 1)
    {
      sub_122EAC(v27);
      v28 = v29;
      (*(v26 + 8))(v4, v25);
    }

    [v24 setIdentifier:v28];
  }

  if ([v1 type] == &dword_0 + 2)
  {
    [v5 setType:SATimerTypeSleepTimerValue];
  }

  return v5;
}

uint64_t sub_115B98()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_162FF0);
  sub_5B30(v0, qword_162FF0);
  return sub_12578C();
}

uint64_t sub_115BE4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  type metadata accessor for TimerTimer.Builder(0);
  swift_allocObject();
  v5 = sub_94508();
  sub_125CBC();
  v6 = [v4 device];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 roomID];

    if (v8)
    {

      sub_125B9C();

      __chkstk_darwin(v9);
      sub_125CDC();

      swift_getWitnessTable();
      sub_12602C();
    }
  }

  v10 = [v4 label];
  if (v10)
  {
    v11 = v10;
    v12 = sub_125B9C();
    v14 = v13;

    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      __chkstk_darwin(v15);
      sub_125CDC();

      swift_getWitnessTable();
      v17 = sub_125C2C();

      *(v5 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom) = (v17 & 1) == 0;
      __chkstk_darwin(a2);

      swift_getWitnessTable();
      v25 = sub_12602C();
      __chkstk_darwin(v25);
      v18 = sub_125C2C();

      *(v5 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup) = (v18 & 1) == 0;
    }
  }

  sub_125CDC();
  swift_getWitnessTable();
  v19 = sub_125DAC();

  *(v5 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom) = v19 & 1;

  v21 = sub_113D6C(v20, 0);

  *a4 = v21;
  return result;
}

uint64_t sub_116030(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = [*a1 device];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 roomID];

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = sub_125B9C();
  v13 = v12;

  if (v11 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_1261BC();

    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v16 = [v7 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_125B9C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a4 identifier];
  if (!v21)
  {
    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v22 = v21;
  v23 = sub_125B9C();
  v25 = v24;

  if (!v20)
  {
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_23:
    v26 = 0;
    return v26 & 1;
  }

  if (v25)
  {
    if (v18 != v23 || v20 != v25)
    {
      v28 = sub_1261BC();

      v26 = v28 ^ 1;
      return v26 & 1;
    }

    goto LABEL_23;
  }

LABEL_22:

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_116200(id *a1, void *a2)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_125B9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a2 identifier];
  if (!v8)
  {
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = sub_125B9C();
  v12 = v11;

  if (!v7)
  {
    if (v12)
    {
LABEL_15:

      v15 = 1;
      return v15 & 1;
    }

LABEL_17:
    v15 = 0;
    return v15 & 1;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  if (v5 == v10 && v7 == v12)
  {

    goto LABEL_17;
  }

  v14 = sub_1261BC();

  v15 = v14 ^ 1;
  return v15 & 1;
}

uint64_t sub_116320(id *a1, void *a2)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_125B9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a2 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_125B9C();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_1261BC();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
LABEL_13:
    v14 = 0;
LABEL_18:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

id sub_11649C(uint64_t a1)
{
  v2 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v2 - 8);
  v4 = v28 - v3;
  v5 = sub_124F8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  sub_12408C();
  sub_124F7C();

  v9 = sub_124F5C();

  v10 = *(v6 + 8);
  v10(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_124F7C();
  sub_124F6C();
  v10(v8, v5);
  v11 = sub_125B4C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {

    sub_5CA8(v4, &qword_15F5F0, &unk_12AAA0);
LABEL_12:
    sub_1257EC();

    return sub_113084(v27);
  }

  sub_1257EC();
  v13 = sub_125B1C();
  (*(v12 + 8))(v4, v11);
  if (!v13)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v14 = sub_125ABC();
  sub_5B30(v14, qword_162FF0);
  v15 = v13;
  v16 = sub_125AAC();
  v17 = sub_125DFC();
  v18 = v15;

  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v19 = 136315138;
    v18 = v18;
    v21 = [v18 description];
    v22 = sub_125B9C();
    v24 = v23;

    v25 = sub_8530(v22, v24, v28);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, "toSiriTimer: Resolved timer %s from SRR. Using it to search timer.", v19, 0xCu);
    sub_5BB0(v20);
  }

  return v18;
}

void *sub_11688C(uint64_t a1)
{
  v2 = sub_124F8C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5AE8(&qword_15F5F0, &unk_12AAA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v62 - v6;
  v8 = sub_12470C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v67 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5AE8(&qword_163008, &qword_12B9B8);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  v14 = sub_5AE8(&qword_163010, &qword_12B9C0);
  v15 = __chkstk_darwin(v14 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v62 - v17;
  __chkstk_darwin(v16);
  v21 = &v62 - v20;
  if (!a1)
  {
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v23 = sub_125ABC();
    sub_5B30(v23, qword_162FF0);
    v24 = sub_125AAC();
    v25 = sub_125DFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Failed parsing NoEntity reference: nil", v26, 2u);
    }

    return 0;
  }

  v65 = v19;
  v63 = v2;

  v69 = sub_12408C();

  v22 = sub_12421C();

  v68 = a1;
  v64 = v7;
  v62 = v3;
  if (v22)
  {
    sub_1246FC();
  }

  else
  {
    (*(v9 + 56))(v21, 1, 1, v8);
  }

  (*(v9 + 104))(v18, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v8);
  (*(v9 + 56))(v18, 0, 1, v8);
  v27 = *(v11 + 48);
  sub_1175EC(v21, v13);
  sub_1175EC(v18, &v13[v27]);
  v28 = *(v9 + 48);
  if (v28(v13, 1, v8) == 1)
  {
    sub_5CA8(v18, &qword_163010, &qword_12B9C0);
    sub_5CA8(v21, &qword_163010, &qword_12B9C0);
    if (v28(&v13[v27], 1, v8) == 1)
    {
      sub_5CA8(v13, &qword_163010, &qword_12B9C0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v29 = v65;
  sub_1175EC(v13, v65);
  if (v28(&v13[v27], 1, v8) == 1)
  {
    sub_5CA8(v18, &qword_163010, &qword_12B9C0);
    sub_5CA8(v21, &qword_163010, &qword_12B9C0);
    (*(v9 + 8))(v29, v8);
LABEL_15:
    sub_5CA8(v13, &qword_163008, &qword_12B9B8);
LABEL_21:
    if (qword_15F058 != -1)
    {
      swift_once();
    }

    v39 = sub_125ABC();
    sub_5B30(v39, qword_162FF0);

    v40 = sub_125AAC();
    v41 = sub_125DFC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v70 = v43;
      *v42 = 136315138;
      sub_12439C();
      v44 = sub_12409C();
      v46 = v45;

      v47 = sub_8530(v44, v46, &v70);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v40, v41, "Failed to resolve NoEntity reference to Timer entity:\n %s", v42, 0xCu);
      sub_5BB0(v43);
    }

    else
    {
    }

    return 0;
  }

  v30 = &v13[v27];
  v31 = v67;
  (*(v9 + 32))(v67, v30, v8);
  sub_11765C();
  v32 = sub_125B7C();
  v33 = *(v9 + 8);
  v33(v31, v8);
  sub_5CA8(v18, &qword_163010, &qword_12B9C0);
  sub_5CA8(v21, &qword_163010, &qword_12B9C0);
  v33(v29, v8);
  sub_5CA8(v13, &qword_163010, &qword_12B9C0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_12466C();
  swift_allocObject();
  sub_12465C();
  v34 = sub_12438C();

  if (!v34)
  {
    goto LABEL_21;
  }

  v35 = v66;
  sub_124F7C();
  v36 = v64;
  sub_124F6C();
  (*(v62 + 8))(v35, v63);
  v37 = sub_125B4C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {

    sub_5CA8(v36, &qword_15F5F0, &unk_12AAA0);
    goto LABEL_21;
  }

  sub_1257EC();
  v49 = sub_125B1C();
  (*(v38 + 8))(v36, v37);
  if (!v49)
  {

    goto LABEL_21;
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v50 = sub_125ABC();
  sub_5B30(v50, qword_162FF0);
  v51 = v49;
  v52 = sub_125AAC();
  v53 = sub_125DFC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70 = v55;
    *v54 = 136315138;
    v56 = v51;
    v57 = [v56 description];
    v58 = sub_125B9C();
    v60 = v59;

    v61 = sub_8530(v58, v60, &v70);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_0, v52, v53, "resolvedNoEntityReference: Resolved NoEntity reference %s from SRR. Using it to search timer.", v54, 0xCu);
    sub_5BB0(v55);
  }

  return v49;
}

id sub_1172B0(uint64_t a1)
{
  v1 = sub_C5BD0(a1);
  if (v1)
  {
    v2 = sub_11649C(v1);

    return v2;
  }

  v4 = sub_CB454(0);
  if (v4)
  {
    v5 = sub_11688C(v4);
    if (v5)
    {
      v6 = v5;
      if (qword_15F058 != -1)
      {
        swift_once();
      }

      v7 = sub_125ABC();
      sub_5B30(v7, qword_162FF0);
      v8 = v6;
      v9 = sub_125AAC();
      v10 = sub_125DFC();
      v11 = v8;

      if (os_log_type_enabled(v9, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v27 = v13;
        *v12 = 136315138;
        v11 = v11;
        v14 = [v11 description];
        v15 = sub_125B9C();
        v17 = v16;

        v18 = sub_8530(v15, v17, &v27);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_0, v9, v10, "Found NoEntity reference: %s", v12, 0xCu);
        sub_5BB0(v13);
      }

      return v11;
    }
  }

  if (qword_15F058 != -1)
  {
    swift_once();
  }

  v19 = sub_125ABC();
  sub_5B30(v19, qword_162FF0);

  v20 = sub_125AAC();
  v21 = sub_125DEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v27 = v23;
    *v22 = 136315138;
    sub_124BAC();

    v24 = sub_125BAC();
    v26 = sub_8530(v24, v25, &v27);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v20, v21, "Failed to find timer reference from task: %s", v22, 0xCu);
    sub_5BB0(v23);
  }

  sub_1257EC();
  return sub_113084(0);
}

uint64_t sub_1175EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_163010, &qword_12B9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_11765C()
{
  result = qword_163018;
  if (!qword_163018)
  {
    sub_12470C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163018);
  }

  return result;
}

uint64_t sub_1176D0(void *a1)
{
  sub_12558C();
  sub_12557C();
  sub_1233FC();
  if (qword_15EEA8 != -1)
  {
    swift_once();
  }

  sub_12333C();
  sub_5AE8(&qword_1606C8, &qword_128190);
  sub_1233AC();
  sub_5AE8(&qword_162468, &qword_12A848);
  sub_5C60(&qword_163028, &qword_162468, &qword_12A848, &unk_12A6F8);
  sub_12335C();
  sub_1233EC();
  sub_2F488(a1, v5);
  sub_117998();
  sub_12334C();
  sub_1233DC();
  sub_2F488(a1, v4);
  sub_1179EC();
  sub_12332C();
  sub_12339C();
  sub_2F488(a1, v3);
  sub_5AE8(&qword_163040, &qword_12B9D8);
  sub_5C60(&qword_163048, &qword_163040, &qword_12B9D8, &unk_128670);
  sub_12337C();
  sub_1233CC();
  sub_5BB0(a1);
  sub_117A40(v3);
  sub_117AA8(v4);
  return sub_117AFC(v5);
}

uint64_t sub_11790C(uint64_t *a1)
{
  *a1 = sub_DEBCC();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_117998()
{
  result = qword_163030;
  if (!qword_163030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163030);
  }

  return result;
}

unint64_t sub_1179EC()
{
  result = qword_163038;
  if (!qword_163038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163038);
  }

  return result;
}

uint64_t sub_117A40(uint64_t a1)
{
  v2 = sub_5AE8(&qword_163040, &qword_12B9D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_117B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_12532C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_117C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_12532C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa_6(uint64_t a1)
{
  result = qword_1630C0;
  if (!qword_1630C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_117D14()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163050);
  sub_5B30(v0, qword_163050);
  return sub_1257AC();
}

uint64_t sub_117D60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_5AE8(&qword_163100, &qword_12BAE8);
  v2[9] = swift_task_alloc();
  v3 = sub_1259CC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_12590C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v2[16] = swift_task_alloc();
  v5 = sub_122F6C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_117F54, 0, 0);
}

uint64_t sub_117F54()
{
  sub_12357C();
  sub_23B08(v0 + 2, v0[5]);
  sub_123A7C();
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[16];
    sub_5BB0(v0 + 2);
    sub_122F2C();

    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v10 = v0[19];
      v9 = v0[20];
      v12 = v0[17];
      v11 = v0[18];
      v13 = v0[15];
      v14 = v0[14];
      v15 = v0[11];
      v22 = v0[12];
      v23 = v0[10];
      v24 = v0[9];
      v25 = v0[13];
      (*(v11 + 32))(v9, v0[16], v12);
      _s20HandleIntentStrategyVMa_6(0);
      v16 = sub_12530C();
      sub_12599C();
      sub_12598C();
      sub_5AE8(&qword_163118, &qword_12BB28);
      sub_5AE8(&qword_160810, &unk_127420);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_126EB0;
      *(v17 + 32) = v16;
      *v13 = v17;
      v13[1] = 0;
      (*(v11 + 16))(v10, v9, v12);
      (*(v15 + 104))(v22, enum case for ExecutionInfo.Action.timerDismiss(_:), v23);
      v18 = sub_1259BC();
      (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
      v19 = v16;
      sub_1259AC();
      (*(v14 + 104))(v13, enum case for CrossDeviceCommandExecution.started(_:), v25);
      sub_12597C();

      (*(v14 + 8))(v13, v25);
      sub_1236CC();
      sub_1236BC();

      (*(v11 + 8))(v9, v12);
      goto LABEL_11;
    }

    sub_5CA8(v0[16], &qword_15F960, &qword_12BAF0);
  }

  else
  {
    sub_5BB0(v0 + 2);
  }

  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v5 = sub_125ABC();
  sub_5B30(v5, qword_163050);
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "DismissTimer.HandleIntentStrategy.makePreHandleIntentOutput() returning - selectedDevice not found in halInfo", v8, 2u);
  }

  sub_1236CC();
  sub_1236BC();
LABEL_11:

  v20 = v0[1];

  return v20();
}

uint64_t sub_118374(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_12392C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_12368C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_1254DC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_125ABC();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = sub_124FFC();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v9 = sub_12501C();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_5AE8(&qword_163100, &qword_12BAE8);
  v3[29] = swift_task_alloc();
  v10 = sub_1259CC();
  v3[30] = v10;
  v3[31] = *(v10 - 8);
  v3[32] = swift_task_alloc();
  v11 = sub_12590C();
  v3[33] = v11;
  v3[34] = *(v11 - 8);
  v3[35] = swift_task_alloc();
  v12 = sub_1258FC();
  v3[36] = v12;
  v3[37] = *(v12 - 8);
  v3[38] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v3[39] = swift_task_alloc();
  v13 = sub_122F6C();
  v3[40] = v13;
  v3[41] = *(v13 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1187FC, 0, 0);
}

uint64_t sub_1187FC()
{
  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(*(v0 + 152), qword_163050);
  *(v0 + 352) = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DismissTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  sub_12357C();
  sub_23B08((v0 + 16), *(v0 + 40));
  sub_123A7C();
  if (!v5)
  {
    sub_5BB0((v0 + 16));
    goto LABEL_9;
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = *(v0 + 312);
  sub_5BB0((v0 + 16));
  sub_122F2C();

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_5CA8(*(v0 + 312), &qword_15F960, &qword_12BAF0);
LABEL_9:
    v9 = *(v0 + 352);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    sub_12361C();
    sub_12391C();
    _s20HandleIntentStrategyVMa_6(0);
    sub_12532C();
    v16 = sub_12520C() & 1;
    *(v0 + 424) = v16;
    (*(v10 + 104))(v11, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v13);
    (*(v15 + 16))(v12, v9, v14);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EEF0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 72);
    v18 = swift_task_alloc();
    *(v0 + 376) = v18;
    *(v18 + 16) = v17;
    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    *v19 = v0;
    v19[1] = sub_119238;

    return sub_E062C(v16, sub_11B3EC, v18);
  }

  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v38 = *(v0 + 320);
  v39 = *(v0 + 344);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v37 = *(v0 + 288);
  v25 = *(v0 + 280);
  v43 = *(v0 + 272);
  v44 = *(v0 + 264);
  v26 = *(v0 + 248);
  v40 = *(v0 + 256);
  v41 = *(v0 + 240);
  v42 = *(v0 + 232);
  v45 = *(v0 + 184);
  v46 = *(v0 + 192);
  v47 = *(v0 + 176);
  v48 = *(v0 + 160);
  v49 = *(v0 + 168);
  v50 = *(v0 + 152);
  v51 = *(v0 + 144);
  v52 = *(v0 + 136);
  v53 = *(v0 + 128);
  (*(v22 + 32))();
  sub_5AE8(&qword_1621A0, &unk_12A210);
  v27 = sub_123A9C();
  sub_12569C();

  v28 = sub_1256BC();
  v29 = sub_1256BC();
  v30 = &enum case for CrossDeviceCommandExecution.Result.success(_:);
  if (v28 != v29)
  {
    v30 = &enum case for CrossDeviceCommandExecution.Result.error(_:);
  }

  (*(v24 + 104))(v23, *v30, v37);
  sub_12599C();
  sub_12598C();
  v31 = *(sub_5AE8(&qword_163110, &unk_12BB10) + 48);
  (*(v22 + 16))(v21, v39, v38);
  (*(v26 + 104))(v40, enum case for ExecutionInfo.Action.timerDismiss(_:), v41);
  v32 = sub_1259BC();
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  sub_1259AC();
  (*(v24 + 16))(v25 + v31, v23, v37);
  (*(v43 + 104))(v25, enum case for CrossDeviceCommandExecution.ended(_:), v44);
  sub_12597C();

  (*(v43 + 8))(v25, v44);
  (*(v45 + 104))(v46, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v47);
  (*(v48 + 16))(v49, v1, v50);
  mach_absolute_time();
  sub_12502C();
  *v51 = sub_123ABC();
  (*(v52 + 104))(v51, enum case for SiriSuggestions.Intent.inIntent(_:), v53);
  v33 = sub_E210(_swiftEmptyArrayStorage);
  *(v0 + 360) = v33;
  v34 = swift_task_alloc();
  *(v0 + 368) = v34;
  *v34 = v0;
  v34[1] = sub_118E94;
  v35 = *(v0 + 344);
  v36 = *(v0 + 144);

  return sub_11C83C(v35, v36, v33);
}

uint64_t sub_118E94()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_119008, 0, 0);
}

uint64_t sub_119008(uint64_t a1)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v6 = *(v1 + 296);
  v5 = *(v1 + 304);
  v7 = *(v1 + 288);
  v8 = *(v1 + 224);
  v9 = *(v1 + 200);
  v10 = *(v1 + 208);
  sub_12500C();
  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v11 = *(v1 + 352);
  v12 = *(v1 + 184);
  v13 = *(v1 + 192);
  v14 = *(v1 + 168);
  v15 = *(v1 + 176);
  v16 = *(v1 + 152);
  v17 = *(v1 + 160);
  sub_12361C();
  sub_12391C();
  _s20HandleIntentStrategyVMa_6(0);
  sub_12532C();
  v18 = sub_12520C() & 1;
  *(v1 + 424) = v18;
  (*(v12 + 104))(v13, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v15);
  (*(v17 + 16))(v14, v11, v16);
  mach_absolute_time();
  sub_12502C();
  if (qword_15EEF0 != -1)
  {
    swift_once();
  }

  v19 = *(v1 + 72);
  v20 = swift_task_alloc();
  *(v1 + 376) = v20;
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v1 + 384) = v21;
  *v21 = v1;
  v21[1] = sub_119238;

  return sub_E062C(v18, sub_11B3EC, v20);
}

uint64_t sub_119238(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_119698, 0, 0);
  }

  else
  {
    *(v4 + 400) = a1;

    v6 = swift_task_alloc();
    *(v4 + 408) = v6;
    *v6 = v5;
    v6[1] = sub_1193F8;
    v7 = *(v4 + 424);
    v8 = *(v4 + 216);
    v9 = *(v4 + 120);
    v10 = *(v4 + 96);
    v11 = *(v4 + 56);

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v11, v9, v10, v8, v7);
  }
}

uint64_t sub_1193F8()
{
  v2 = *(*v1 + 400);
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_119814;
  }

  else
  {
    v3 = sub_119524;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_119524()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_119698()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_119814()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_119990(uint64_t a1)
{
  v2 = sub_5AE8(&unk_15F170, &unk_126E00);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - v7;
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  _s20HandleIntentStrategyVMa_6(0);
  sub_12532C();
  v11 = sub_1251FC();
  if (v11)
  {
    v12 = v11;
    sub_12592C();

    v13 = sub_124E4C();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_124E4C();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = type metadata accessor for DismissTimerHandledRemoteParameters(0);
  sub_22A1C(v10, a1 + *(v15 + 20));
  v16 = sub_1251FC();
  if (v16)
  {
    v17 = v16;
    sub_12593C();
  }

  else
  {
    v18 = sub_124E4C();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  sub_22A1C(v8, a1 + *(v15 + 28));
  v19 = sub_1251FC();
  if (v19)
  {
    v20 = v19;
    sub_12591C();
  }

  else
  {
    v21 = sub_124E4C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  }

  return sub_22A1C(v5, a1);
}

uint64_t sub_119C1C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_124EDC();
  v2[9] = swift_task_alloc();
  v3 = sub_125ABC();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_12501C();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_12392C();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_12368C();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  sub_5AE8(&qword_163100, &qword_12BAE8);
  v2[25] = swift_task_alloc();
  v8 = sub_1259CC();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = sub_12590C();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  sub_5AE8(&qword_15F960, &qword_12BAF0);
  v2[32] = swift_task_alloc();
  v10 = sub_122F6C();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_11A008, 0, 0);
}

uint64_t sub_11A008()
{
  if (qword_15F060 != -1)
  {
    swift_once();
  }

  v32 = sub_5B30(v0[10], qword_163050);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "DismissTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  _s20HandleIntentStrategyVMa_6(0);
  sub_12532C();
  v4 = sub_1251FC();
  if (v4)
  {

    sub_12357C();
    sub_23B08(v0 + 2, v0[5]);
    sub_123A7C();
    if (v5)
    {
      v6 = v0[33];
      v7 = v0[34];
      v8 = v0[32];
      sub_5BB0(v0 + 2);
      sub_122F2C();

      if ((*(v7 + 48))(v8, 1, v6) == 1)
      {
        sub_5CA8(v0[32], &qword_15F960, &qword_12BAF0);
      }

      else
      {
        v9 = v0[36];
        v10 = v0[33];
        v11 = v0[34];
        v12 = v0[31];
        v13 = v0[30];
        v31 = v0[29];
        v14 = v0[27];
        v15 = v0[28];
        v16 = v0[25];
        v28 = v0[35];
        v29 = v0[26];
        (*(v11 + 32))(v9, v0[32], v10);
        sub_12599C();
        sub_12598C();
        v30 = *(sub_5AE8(&qword_163108, &qword_12BAF8) + 48);
        (*(v11 + 16))(v28, v9, v10);
        (*(v14 + 104))(v15, enum case for ExecutionInfo.Action.timerDismiss(_:), v29);
        v17 = sub_1259BC();
        (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
        sub_1259AC();
        v18 = enum case for CrossDeviceCommandExecution.FailureReason.unknown(_:);
        v19 = sub_1258EC();
        (*(*(v19 - 8) + 104))(v12 + v30, v18, v19);
        (*(v13 + 104))(v12, enum case for CrossDeviceCommandExecution.failed(_:), v31);
        sub_12597C();

        (*(v13 + 8))(v12, v31);
        (*(v11 + 8))(v9, v10);
      }
    }

    else
    {
      sub_5BB0(v0 + 2);
    }
  }

  v21 = v0[14];
  v20 = v0[15];
  v23 = v0[12];
  v22 = v0[13];
  v25 = v0[10];
  v24 = v0[11];
  sub_12364C();
  sub_12391C();
  (*(v21 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v22);
  (*(v24 + 16))(v23, v32, v25);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for DeleteTimerCATPatternsExecutor(0);
  sub_124ECC();
  v0[37] = sub_124DBC();
  v33 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v26 = swift_task_alloc();
  v0[38] = v26;
  *v26 = v0;
  v26[1] = sub_11A4E0;

  return (v33)(0xD000000000000017, 0x800000000012F260, _swiftEmptyArrayStorage);
}

uint64_t sub_11A4E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_11A7B0, 0, 0);
  }

  else
  {
    v4[40] = a1;

    v6 = swift_task_alloc();
    v4[41] = v6;
    *v6 = v5;
    v6[1] = sub_11A684;
    v7 = v4[24];
    v8 = v4[21];
    v9 = v4[18];
    v10 = v4[7];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v8, v9, 0);
  }
}

uint64_t sub_11A684()
{
  v2 = *(*v1 + 320);
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_11AA78;
  }

  else
  {
    v3 = sub_11A91C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_11A7B0()
{

  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_11A91C()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_11AA78()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_11ABDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C;

  return sub_117D60(a1);
}

uint64_t sub_11AC74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_11AD1C;

  return sub_118374(a1, a2);
}

uint64_t sub_11AD1C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11AE50, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_11AE50()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_11AF1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_11AFC4;

  return sub_119C1C(a1);
}

uint64_t sub_11AFC4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11B0F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_11B0F8()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_11B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_11B264, 0, 0);
}

uint64_t sub_11B264()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[5] + 20);
  v6 = sub_12532C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = sub_A85C8(v4, v2, v1);
  sub_5CA8(v1, &qword_15FFB0, &unk_1270A0);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_11B394()
{
  result = qword_1630F8;
  if (!qword_1630F8)
  {
    _s20HandleIntentStrategyVMa_6(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1630F8);
  }

  return result;
}

uint64_t sub_11B454()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1270B0;
  *(v4 + 32) = 7368801;
  *(v4 + 40) = 0xE300000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = sub_124DEC();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  strcpy((v4 + 80), "pausedTimers");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  v8 = v0[1];
  v9 = sub_5AE8(&qword_15F928, &unk_127400);
  *(v4 + 96) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x6174614477656976;
  *(v4 + 136) = 0xE800000000000000;
  v10 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(v10 + 24), v3, &unk_15F170, &unk_126E00);
  v11 = sub_124E4C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {

    sub_5CA8(v3, &unk_15F170, &unk_126E00);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v11;
    v13 = sub_23B4C((v4 + 144));
    (*(v12 + 32))(v13, v3, v11);
  }

  return v4;
}

uint64_t sub_11B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_11B71C, 0, 0);
}

uint64_t sub_11B71C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[2];
  v4 = *(v0[6] + 24);
  v5 = sub_124E4C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *v1 = 0;
  *(v1 + 1) = v3;

  v2(v1);
  v6 = sub_11B454();
  v0[8] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_11B864;

  return v9(0xD000000000000019, 0x800000000012D490, v6);
}

uint64_t sub_11B864(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_11BA24;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_11B9B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11B9B0()
{
  sub_11C350(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_11BA24()
{
  sub_11C350(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11BA94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11BAB4, 0, 0);
}

uint64_t sub_11BAB4()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "pausedTimers");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23FD8;

  return v5(0xD000000000000018, 0x800000000012D470, v2);
}

uint64_t sub_11BC00(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 96) = a1;
  return _swift_task_switch(sub_11BC28, 0, 0);
}

uint64_t sub_11BC28()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 32);
  *(v0 + 24) = 0;
  v1(v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_1270C0;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x800000000012D730;
  *(v4 + 48) = v2;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "remainingTime");
  *(v4 + 94) = -4864;
  v5 = 0;
  if (v3)
  {
    v5 = sub_124D7C();
  }

  else
  {
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v0 + 64) = v3;
  *(v4 + 96) = v3;
  *(v4 + 120) = v5;
  v8 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_11BDD4;

  return v8(0xD000000000000021, 0x800000000012D700, v4);
}

uint64_t sub_11BDD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_11BF88;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_11BF20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11BF20()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_11BF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11BFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_E344(a1, v11, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v12;
}

uint64_t sub_11C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5AE8(&unk_15F170, &unk_126E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_11C280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11C350(uint64_t a1)
{
  v2 = type metadata accessor for PauseTimerHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11C3EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_11C448(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = *v2;
  return _swift_task_switch(sub_11C470, 0, 0);
}

uint64_t sub_11C470()
{
  v1 = v0[7];
  v2 = type metadata accessor for TimerBaseAppNotInstalledParameters(0);
  v0[5] = v2;
  v0[6] = sub_11C798();
  v3 = sub_23B4C(v0 + 2);
  v4 = sub_124E4C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  *(v3 + *(v2 + 20)) = 0;
  v1(v0 + 2);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_11C5A4;
  v6 = v0[9];

  return sub_104778(v6, (v0 + 2));
}

uint64_t sub_11C5A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_11C734;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_11C6CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11C6CC()
{
  sub_5BB0(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_11C734()
{
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_11C798()
{
  result = qword_163208;
  if (!qword_163208)
  {
    type metadata accessor for TimerBaseAppNotInstalledParameters(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163208);
  }

  return result;
}

uint64_t sub_11C7F0()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163210);
  sub_5B30(v0, qword_163210);
  return sub_12510C();
}

uint64_t sub_11C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_11C860, 0, 0);
}

uint64_t sub_11C860()
{
  sub_1254BC();
  sub_1254AC();
  v1 = v0[5];
  v2 = v0[6];
  sub_23B08(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = *(v2 + 8);
  *v3 = v0;
  v3[1] = sub_11C93C;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v7, v5, v6, 1, v1, v4);
}

uint64_t sub_11C93C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_11CAB0;
  }

  else
  {
    v2 = sub_11CA50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_11CA50()
{
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11CAB0()
{
  v12 = v0;
  sub_5BB0((v0 + 16));
  if (qword_15F068 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_163210);
  swift_errorRetain();
  v2 = sub_125AAC();
  v3 = sub_125DEC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_12621C();
    v8 = sub_8530(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "SuggestionsProvider.submitIntentToSiriSuggestions caught error: %s", v4, 0xCu);
    sub_5BB0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_11CC78(uint64_t a1, uint64_t a2)
{
  if (sub_1235CC() & 1) != 0 || (sub_1235AC())
  {
    return 1;
  }

  return dispatch thunk of DeviceState.isPod.getter(a1, a2);
}

uint64_t sub_11CD50(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t sub_11CE04()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163228);
  sub_5B30(v0, qword_163228);
  return sub_1257AC();
}

uint64_t sub_11CE50()
{
  v0 = sub_1250BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1250AC();
  v4 = sub_12506C();
  (*(v1 + 8))(v3, v0);
  if (!v4)
  {
    goto LABEL_6;
  }

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v5 = sub_123B4C();
  v6 = [v5 targetTimer];

  v7 = [v6 shouldMatchAny];
  sub_8BAC();
  v8.super.super.isa = sub_125EFC(1).super.super.isa;
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = sub_125F0C();

  if (v9)
  {
    v10 = sub_123B4C();
    v8.super.super.isa = [v10 targetingInfo];

    if (!v8.super.super.isa)
    {
      if (qword_15F080 != -1)
      {
        swift_once();
      }

      v17 = sub_125ABC();
      sub_5B30(v17, qword_163228);
      v12 = sub_125AAC();
      v18 = sub_125DFC();
      if (!os_log_type_enabled(v12, v18))
      {
        v15 = 1;
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v12, v18, "ResolveRecord indicates we are searching for a room confirmation", v19, 2u);
      v15 = 1;
      goto LABEL_10;
    }

LABEL_5:
  }

LABEL_6:
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v11 = sub_125ABC();
  sub_5B30(v11, qword_163228);
  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (!os_log_type_enabled(v12, v13))
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  _os_log_impl(&dword_0, v12, v13, "ResolveRecord not searching for room confirmation", v14, 2u);
  v15 = 0;
LABEL_10:

LABEL_12:

  return v15;
}

uint64_t sub_11D168@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5AE8(&unk_15F1B0, qword_126E30);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v10 = sub_125ABC();
  sub_5B30(v10, qword_163228);
  v11 = sub_125AAC();
  v12 = sub_125DFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PauseTimer.NeedsConfirmationStrategy.actionForInput() called)", v13, 2u);
  }

  v14 = sub_12532C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = sub_11CE50();
  v16 = &enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  if ((v15 & 1) == 0)
  {
    v16 = &enum case for DecideAction.PromptExpectation.confirmation(_:);
  }

  v17 = *v16;
  v18 = sub_12514C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v6, v17, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  sub_4657C(a1, v9, 0, v6, a2);
  sub_5CA8(v6, &unk_15F1B0, qword_126E30);
  return sub_5CA8(v9, &qword_15FFB0, &unk_1270A0);
}

uint64_t sub_11D428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_5AE8(&unk_161EC0, &unk_126E20);
  v4[11] = swift_task_alloc();
  v5 = sub_12379C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_11D530, 0, 0);
}

uint64_t sub_11D530()
{
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_163228);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.parseConfirmationResponse() called", v4, 2u);
  }

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (!swift_dynamicCast())
  {
    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();

    v21 = *(v0 + 8);
    goto LABEL_28;
  }

  v7 = *(v0 + 48);
  v8 = sub_123B4C();
  v9 = [v8 targetTimer];

  v10 = [v9 shouldMatchAny];
  v11 = objc_allocWithZone(sub_12555C());
  v12 = v7;
  v13 = [v11 init];
  [v12 setShouldMatchAny:v10];
  v14 = v12;
  [v13 setTargetTimer:v14];

  if ((sub_11CE50() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_9D860(*(v0 + 64), 1, *(v0 + 120));
  v15 = sub_A8C70();
  if (v15 <= 1)
  {
    if (v15)
    {
      v16 = sub_125AAC();
      v17 = sub_125DFC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "Received explicit 'here' confirmation – only local timers for pauseMultiple", v18, 2u);
      }

      v19 = [v13 targetTimer];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_15:
    v22 = sub_125AAC();
    v23 = sub_125DFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Received explicit 'everywhere' confirmation to include remote timers for pauseMultiple", v24, 2u);
    }

    v25 = [v13 targetTimer];
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    v27 = 1;
    goto LABEL_24;
  }

  if (v15 == 2)
  {
    goto LABEL_15;
  }

  v28 = *(v0 + 112);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  sub_12377C();
  v31 = sub_12375C();
  v51 = *(v30 + 8);
  v51(v28, v29);
  v32 = sub_125AAC();
  v33 = sub_125DFC();
  v34 = os_log_type_enabled(v32, v33);
  if ((v31 & 1) == 0)
  {
    if (v34)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v32, v33, "Defaulting confirmation to reject for no/cancel", v43, 2u);
    }

    v50 = *(v0 + 120);
    v45 = *(v0 + 88);
    v44 = *(v0 + 96);

    v46 = enum case for ConfirmationResponse.rejected(_:);
    v47 = sub_123A1C();
    v48 = *(v47 - 8);
    (*(v48 + 104))(v45, v46, v47);
    (*(v48 + 56))(v45, 0, 1, v47);
    v49 = v13;
    sub_125EDC();

    sub_123AEC();
    v51(v50, v44);
    goto LABEL_27;
  }

  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v32, v33, "Confirming use only local timers for pauseMultiple", v35, 2u);
  }

  v19 = [v13 targetTimer];
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_23:
  v26 = v19;
  v27 = 0;
LABEL_24:
  sub_8BAC();
  isa = sub_125EEC(v27).super.super.isa;
  [v26 setShouldMatchRemote:isa];

LABEL_25:
  (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
LABEL_26:
  v37 = *(v0 + 88);
  v38 = enum case for ConfirmationResponse.confirmed(_:);
  v39 = sub_123A1C();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v37, v38, v39);
  (*(v40 + 56))(v37, 0, 1, v39);
  v41 = v13;
  sub_125EDC();

  sub_123AEC();
LABEL_27:

  v21 = *(v0 + 8);
LABEL_28:

  return v21();
}

uint64_t sub_11DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  sub_5AE8(&unk_162190, &unk_128500);
  v3[15] = swift_task_alloc();
  sub_124EDC();
  v3[16] = swift_task_alloc();
  v4 = sub_125ABC();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_124FFC();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_12501C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = sub_12392C();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_1250BC();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_12368C();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_11DFE0, 0, 0);
}

uint64_t sub_11DFE0()
{
  if (qword_15F080 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[17], qword_163228);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PauseTimer.NeedsConfirmationStrategy.makePromptForConfirmation() called", v4, 2u);
  }

  sub_5AE8(&qword_162490, &qword_12BDD0);
  v5 = sub_123B5C();
  v6 = [v5 itemToConfirm];

  sub_125F4C();
  swift_unknownObjectRelease();
  sub_1257EC();
  if (swift_dynamicCast())
  {
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[33];
    v10 = v0[12];
    v0[39] = v10;
    sub_12362C();
    sub_1250AC();
    v11 = sub_12506C();
    (*(v8 + 8))(v7, v9);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [v10 shouldMatchAny];
    sub_8BAC();
    v13.super.super.isa = sub_125EFC(1).super.super.isa;
    if (v12)
    {
      v14 = sub_125F0C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      v15 = sub_123B4C();
      v13.super.super.isa = [v15 targetingInfo];

      if (!v13.super.super.isa)
      {
        v46 = v0[21];
        v45 = v0[22];
        v48 = v0[19];
        v47 = v0[20];
        v49 = v0[17];
        v50 = v0[18];
        sub_FFF04(5, v0[32]);
        (*(v46 + 104))(v45, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v47);
        (*(v50 + 16))(v48, v1, v49);
        mach_absolute_time();
        sub_12502C();
        type metadata accessor for PauseTimerCATsSimple(0);
        sub_124ECC();
        v0[40] = sub_124E7C();
        v41 = "tConfirmAll_Dialog";
        v53 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
        v51 = swift_task_alloc();
        v0[41] = v51;
        *v51 = v0;
        v51[1] = sub_D03C0;
        v43 = 0xD000000000000020;
LABEL_26:
        v27 = _swiftEmptyArrayStorage;
        v25 = v41 | 0x8000000000000000;
        v26 = v43;
        goto LABEL_27;
      }
    }

LABEL_11:
    v16 = [v10 device];
    if (v16)
    {
      v17 = v0[21];
      v18 = v0[22];
      v20 = v0[19];
      v19 = v0[20];
      v21 = v0[18];
      v52 = v0[17];

      sub_FFAE8(5);
      (*(v17 + 104))(v18, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v19);
      (*(v21 + 16))(v20, v1, v52);
      mach_absolute_time();
      sub_12502C();
      type metadata accessor for TimerBaseCATsSimple(0);
      sub_124ECC();
      v0[45] = sub_124E7C();
      v22 = sub_113D6C(0, 0);
      v0[46] = v22;
      sub_5AE8(&qword_15F180, &unk_126E10);
      v23 = swift_allocObject();
      v0[47] = v23;
      *(v23 + 16) = xmmword_126CB0;
      *(v23 + 32) = 0x72656D6974;
      *(v23 + 40) = 0xE500000000000000;
      *(v23 + 72) = type metadata accessor for TimerTimer(0);
      *(v23 + 48) = v22;
      v53 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);

      v24 = swift_task_alloc();
      v0[48] = v24;
      *v24 = v0;
      v24[1] = sub_D0964;
      v25 = 0x800000000012DD90;
      v26 = 0xD000000000000023;
      v27 = v23;
LABEL_27:

      return (v53)(v26, v25, v27);
    }

LABEL_16:
    v32 = v0[21];
    v31 = v0[22];
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[17];
    v36 = v0[18];
    sub_FFAE8(5);
    (*(v32 + 104))(v31, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v33);
    (*(v36 + 16))(v34, v1, v35);
    mach_absolute_time();
    sub_12502C();
    v37 = [v10 shouldMatchAny];
    sub_8BAC();
    v38.super.super.isa = sub_125EFC(1).super.super.isa;
    isa = v38.super.super.isa;
    if (v37)
    {
      v40 = sub_125F0C();

      if (v40)
      {
        if (qword_15EDD8 != -1)
        {
          swift_once();
        }

        v41 = "tConfirmationPrompt";
        v53 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
        v42 = swift_task_alloc();
        v0[52] = v42;
        *v42 = v0;
        v42[1] = sub_11E850;
        v43 = 0xD000000000000022;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (qword_15EDD8 != -1)
    {
      swift_once();
    }

    v53 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
    v44 = swift_task_alloc();
    v0[54] = v44;
    *v44 = v0;
    v44[1] = sub_11EA44;
    v27 = _swiftEmptyArrayStorage;
    v25 = 0x800000000012F3B0;
    v26 = 0xD000000000000023;
    goto LABEL_27;
  }

  sub_5AE8(&unk_15F1A0, &unk_126ED0);
  sub_84CC();
  swift_allocError();
  *v28 = 2;
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_11E850(uint64_t a1)
{
  v3 = *v2;
  v3[6] = v2;
  v3[7] = a1;
  v3[8] = v1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_D1124;
  }

  else
  {
    v4 = sub_11E96C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_11E96C()
{
  v1 = v0[7];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[56] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_11EDA4;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_11EA44(uint64_t a1)
{
  v3 = *v2;
  v3[9] = v2;
  v3[10] = a1;
  v3[11] = v1;
  v3[55] = v1;

  if (v1)
  {
    v4 = sub_11EC38;
  }

  else
  {
    v4 = sub_11EB60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_11EB60()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v0[56] = v1;
  (*(v3 + 56))(v4, 1, 1, v2);
  v1;
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_11EDA4;
  v6 = v0[25];
  v7 = v0[15];
  v8 = v0[13];

  return sub_F2BE4(v8, 5, v7, v6);
}

uint64_t sub_11EC38()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_11EDA4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 448);
  sub_5CA8(*(v2 + 120), &unk_162190, &unk_128500);

  if (v0)
  {
    v4 = sub_11F070;
  }

  else
  {
    v4 = sub_11EF00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_11EF00()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_11F070()
{
  v1 = *(v0 + 448);
  v12 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v12, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_11F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_11F29C;

  return sub_11D428(a1, a2, a3);
}

uint64_t sub_11F29C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11F3D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_11F3D0()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_11F49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_11F54C;

  return sub_11DCC0(a1, a2, a3);
}

uint64_t sub_11F54C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_11F680, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_11F680()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

unint64_t sub_11F750()
{
  result = qword_163240;
  if (!qword_163240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_163240);
  }

  return result;
}

uint64_t sub_11F7B4()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_163248);
  sub_5B30(v0, qword_163248);
  return sub_1257AC();
}

uint64_t sub_11F800(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_124EDC();
  v2[4] = swift_task_alloc();
  v3 = sub_125ABC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_124FFC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_12501C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_5AE8(&qword_160CC8, &unk_12BE70);
  v2[15] = swift_task_alloc();
  v6 = sub_1256FC();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_12392C();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = sub_12368C();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v9 = sub_5AE8(&unk_15FF60, &unk_127BA0);
  v2[32] = v9;
  v2[33] = *(v9 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_11FBB8, 0, 0);
}

uint64_t sub_11FBB8()
{
  if (qword_15F088 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[3];
  v5 = sub_5B30(v0[5], qword_163248);
  (*(v1 + 16))(v2, v4, v3);
  v53 = v5;
  v6 = sub_125AAC();
  v7 = sub_125DFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = sub_123B5C();
    v14 = [v13 unsupportedReason];

    (*(v9 + 8))(v10, v11);
    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v6, v7, "CreateTimer.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v12, 0xCu);
  }

  else
  {
    (*(v9 + 8))(v0[34], v0[32]);
  }

  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[15];

  sub_12363C();
  sub_124D6C();
  swift_allocObject();
  sub_124D5C();
  v18 = sub_123B4C();
  sub_1255CC();

  sub_124D4C();

  v19 = sub_124D3C();
  v0[35] = v19;

  sub_1028BC();
  v20 = sub_123B5C();
  [v20 unsupportedReason];

  sub_1256EC();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v21 = v0[9];
    v22 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[5];
    v26 = v0[6];
    sub_122A40(v0[15]);
    (*(v21 + 104))(v22, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v23);
    (*(v26 + 16))(v24, v53, v25);
    mach_absolute_time();
    sub_12502C();
    if (qword_15EE18 != -1)
    {
      swift_once();
    }

    v27 = v0[3];
    v28 = swift_task_alloc();
    v0[67] = v28;
    *(v28 + 16) = v27;
    *(v28 + 24) = v19;
    v29 = swift_task_alloc();
    v0[68] = v29;
    *v29 = v0;
    v29[1] = sub_121A58;

    return sub_3201C(sub_122AA8, v28);
  }

  else
  {
    v31 = v0[19];
    v33 = v0[16];
    v32 = v0[17];
    v52 = v0[18];
    v34 = v0[9];
    v35 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v39 = v0[5];
    v38 = v0[6];
    (*(v32 + 32))(v31, v0[15], v33);
    (*(v34 + 104))(v35, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v36);
    (*(v38 + 16))(v37, v53, v39);
    mach_absolute_time();
    sub_12502C();
    (*(v32 + 16))(v52, v31, v33);
    v40 = (*(v32 + 88))(v52, v33);
    if (v40 == enum case for TimerHandlerError.durationTooLong(_:))
    {
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[37] = sub_124DBC();
      v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v41 = swift_task_alloc();
      v0[38] = v41;
      *v41 = v0;
      v41[1] = sub_120318;
      v42 = _swiftEmptyArrayStorage;
      v43 = 0xD000000000000020;
      v44 = 0x800000000012C650;
    }

    else
    {
      v45 = v40;
      v46 = enum case for TimerHandlerError.createSleepTimerNothingPlaying(_:);
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[36] = sub_124DBC();
      if (v45 == v46)
      {
        v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v47 = swift_task_alloc();
        v0[47] = v47;
        *v47 = v0;
        v47[1] = sub_120AAC;
        v42 = _swiftEmptyArrayStorage;
        v43 = 0xD00000000000001CLL;
        v44 = 0x800000000012CF00;
      }

      else
      {
        v48 = sub_124EAC();
        sub_12524C();
        sub_12523C();
        sub_12522C();

        v49 = sub_124E9C();
        v0[56] = v49;
        sub_5AE8(&qword_15F180, &unk_126E10);
        v50 = swift_allocObject();
        *(v50 + 32) = 0x656369766564;
        *(v50 + 40) = 0xE600000000000000;
        *(v50 + 72) = v48;
        v54 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
        v0[57] = v50;
        *(v50 + 16) = xmmword_126CB0;
        *(v50 + 48) = v49;

        v51 = swift_task_alloc();
        v0[58] = v51;
        *v51 = v0;
        v51[1] = sub_12123C;
        v44 = 0x800000000012C010;
        v43 = 0xD000000000000011;
        v42 = v50;
      }
    }

    return (v54)(v43, v44, v42);
  }
}

uint64_t sub_120318(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_12071C;
  }

  else
  {
    *(v4 + 320) = a1;

    v5 = sub_120448;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_120448(uint64_t a1)
{
  sub_12364C();
  sub_12391C();
  v2 = swift_task_alloc();
  v1[41] = v2;
  *v2 = v1;
  v2[1] = sub_120508;
  v3 = v1[30];
  v4 = v1[24];
  v5 = v1[14];
  v6 = v1[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v3, v4, v5, 0);
}

uint64_t sub_120508()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v13 = *(*v1 + 240);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 192);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 160);
  v2[42] = v0;

  v9 = *(v7 + 8);
  v2[43] = v9;
  v2[44] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v10 = *(v4 + 8);
  v2[45] = v10;
  v2[46] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v13, v5);
  if (v0)
  {
    v11 = sub_121ED8;
  }

  else
  {
    v11 = sub_1208F8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_12071C()
{
  v1 = v0[27];
  v2 = v0[21];
  v11 = v0[20];
  v12 = v0[25];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v0[31], v0[26]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1208F8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  (*(v0 + 360))(*(v0 + 248), *(v0 + 208));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_120AAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_120EB0;
  }

  else
  {
    *(v4 + 392) = a1;

    v5 = sub_120BDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_120BDC()
{
  sub_12365C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[50] = v1;
  *v1 = v0;
  v1[1] = sub_120C9C;
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[14];
  v5 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v2, v3, v4, 0);
}

uint64_t sub_120C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v13 = *(*v1 + 232);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 160);
  v2[51] = v0;

  v9 = *(v7 + 8);
  v2[52] = v9;
  v2[53] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v10 = *(v4 + 8);
  v2[54] = v10;
  v2[55] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v13, v5);
  if (v0)
  {
    v11 = sub_122094;
  }

  else
  {
    v11 = sub_121088;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_120EB0()
{
  v1 = v0[27];
  v2 = v0[21];
  v11 = v0[20];
  v12 = v0[25];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v0[31], v0[26]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_121088()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  (*(v0 + 432))(*(v0 + 248), *(v0 + 208));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_12123C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_121680;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_121388;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_121388()
{

  sub_12364C();
  sub_12391C();
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_121468;
  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[14];
  v5 = v0[2];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v2, v3, v4, 0);
}

uint64_t sub_121468()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v13 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 176);
  v7 = *(*v1 + 168);
  v8 = *(*v1 + 160);
  v2[62] = v0;

  v9 = *(v7 + 8);
  v2[63] = v9;
  v2[64] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  v10 = *(v4 + 8);
  v2[65] = v10;
  v2[66] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v13, v5);
  if (v0)
  {
    v11 = sub_122250;
  }

  else
  {
    v11 = sub_12187C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_121680()
{
  v1 = v0[27];
  v14 = v0[26];
  v15 = v0[31];
  v2 = v0[21];
  v12 = v0[20];
  v13 = v0[25];
  v11 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  (*(v7 + 8))(v5, v6);
  v8 = *(v3 + 8);
  v8(v11, v4);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 8))(v15, v14);
  v8(v0[18], v0[16]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_12187C()
{
  v15 = v0[65];
  v14 = v0[31];
  v1 = v0[25];
  v12 = v0[63];
  v13 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v9(v3, v5);
  v12(v1, v2);
  v15(v14, v13);
  v9(v0[18], v0[16]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_121A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 552) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_122434, 0, 0);
  }

  else
  {
    v4[70] = a1;

    v6 = swift_task_alloc();
    v4[71] = v6;
    *v6 = v5;
    v6[1] = sub_121C04;
    v7 = v4[31];
    v8 = v4[25];
    v9 = v4[13];
    v10 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v7, v8, v9, 0);
  }
}

uint64_t sub_121C04()
{
  v2 = *(*v1 + 560);
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_1225E4;
  }

  else
  {
    v3 = sub_121D30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_121D30()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v0[31], v0[26]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_121ED8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  (*(v0 + 360))(*(v0 + 248), *(v0 + 208));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_122094()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 200);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  (*(v0 + 432))(*(v0 + 248), *(v0 + 208));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_122250()
{
  v15 = v0[65];
  v14 = v0[31];
  v1 = v0[25];
  v12 = v0[63];
  v13 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  (*(v8 + 8))(v6, v7);
  v9 = *(v4 + 8);
  v9(v3, v5);
  v12(v1, v2);
  v15(v14, v13);
  v9(v0[18], v0[16]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_122434()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v0[31], v0[26]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1225E4()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v0[31], v0[26]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_122794(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5AE8(&unk_15F170, &unk_126E00);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  v8 = sub_123B4C();
  v9 = [v8 label];

  if (v9)
  {
    sub_125E0C();

    v10 = sub_124E4C();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = sub_124E4C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  TimerPromptLabelDuplicateParameters = type metadata accessor for CreateTimerPromptLabelDuplicateParameters(0);
  sub_22A1C(v7, a1 + *(TimerPromptLabelDuplicateParameters + 20));

  *a1 = a3;
  return result;
}

uint64_t sub_122908(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_11F800(a1, a2);
}

uint64_t sub_1229C8()
{
  sub_5AE8(&unk_15FF60, &unk_127BA0);
  v1 = sub_123B4C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_122A40(uint64_t a1)
{
  v2 = sub_5AE8(&qword_160CC8, &unk_12BE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeleteTimerCATsSimple(uint64_t a1)
{
  result = qword_163260;
  if (!qword_163260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_122B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_606C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v12;
}

uint64_t sub_122CC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_124EDC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_124E6C();
  (*(v4 + 8))(a2, v3);
  return v7;
}