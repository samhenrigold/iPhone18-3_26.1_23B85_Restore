void sub_1000EADFC(char *a1, uint64_t a2)
{
  v5 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (!v5 || (v25[0] = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView], sub_1000EB998(), v6 = v5, sub_10003C49C(&qword_100201040, &qword_100183EB0), (swift_dynamicCast() & 1) == 0))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_7;
  }

  if (!*(&v23 + 1))
  {
LABEL_7:
    sub_1000EB930(&v22);
    v15 = 1;
    goto LABEL_8;
  }

  v21 = v2;
  sub_100049F74(&v22, v25);
  v7 = v26;
  v8 = v27;
  sub_1000442A0(v25, v26);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = swift_allocObject();
  v10[2] = v21;
  if (v9)
  {
    v11 = v26;
    v12 = v27;
    sub_1000EB9E4(v25, v26);
    v13 = *(v12 + 40);
    v14 = v21;
    v13(sub_1000EBAB8, v10, v11, v12);
  }

  else
  {
    v10[3] = a1;
    v10[4] = a2;
    v16 = v26;
    v17 = v27;
    sub_1000EB9E4(v25, v26);
    v18 = *(v17 + 40);
    v19 = v21;
    v20 = a1;
    v18(sub_1000EBA74, v10, v16, v17);
  }

  v15 = v9 ^ 1;
  sub_100044554(v25);
LABEL_8:
  sub_1000EB0F8(a1, a2, v15 & 1);
}

double sub_1000EB018(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler + 8);

    v1(v3);

    return sub_10003C52C(v1, v2);
  }

  return result;
}

double sub_1000EB080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000EB320(a2, a3);
  v5 = *(a1 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  if (v5)
  {
    v6 = *(a1 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler + 8);

    v5(v7);

    return sub_10003C52C(v5, v6);
  }

  return result;
}

void sub_1000EB0F8(char *a1, uint64_t a2, char a3)
{
  v4 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v4)
  {
    v8 = v4;
    v9 = [a1 heightAnchor];
    if (a3)
    {
      [v8 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v11 = [v9 constraintEqualToConstant:v10];
    }

    else
    {
      v14 = [v8 heightAnchor];
      v11 = [v9 constraintEqualToAnchor:v14];

      v9 = v14;
    }

    v15 = v11;
    [v15 setActive:1];
    v16 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
    swift_beginAccess();
    v17 = *(v3 + v16);
    if (v17 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= a2)
      {
LABEL_11:
        if ((a2 & 0x8000000000000000) == 0)
        {
          sub_10003D3FC(a2, a2, v15);
          swift_endAccess();

          return;
        }

        goto LABEL_15;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (qword_1001FC7B0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v12 = qword_10020A4F8;
  v13 = static os_log_type_t.error.getter();

  os_log(_:dso:log:type:_:)("Container added does not contain a subview", 42, 2, &_mh_execute_header, v12, v13, &_swiftEmptyArrayStorage);
}

void sub_1000EB320(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  if (v5)
  {
    v7 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
    swift_beginAccess();
    v8 = *&v2[v7];
    if (!(v8 >> 62))
    {
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        return;
      }

LABEL_4:
      v9 = *&v2[v7];
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = v5;

        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9, v16, v17, v18, v19, v20, v21, v22;
      }

      else
      {
        if (a2 < 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
        {
          __break(1u);
          goto LABEL_24;
        }

        v9 = *&v9->remoteCardFilter[8 * a2];
        v10 = v5;
        v11 = v9;
      }

      v4 = &off_1001EE000;
      [(DARootViewController *)v11 setActive:0];

      v3 = *&v2[v7];
      if ((v3 & 0xC000000000000001) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
          {
            __break(1u);
            goto LABEL_27;
          }

          v12 = *&v3->remoteCardFilter[8 * a2];
          goto LABEL_12;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:

      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3, v23, v24, v25, v26, v27, v28, v29;
LABEL_12:
      [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v12 setConstant:v13];

      v9 = *&v2[v7];
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
          {
            v14 = *&v9->remoteCardFilter[8 * a2];
LABEL_16:
            [v14 v4[446]];

            [v2 layoutIfNeeded];
            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_25:

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9, v30, v31, v32, v33, v34, v35, v36;
      goto LABEL_16;
    }

    if (_CocoaArrayWrapper.endIndex.getter() > a2)
    {
      goto LABEL_4;
    }
  }
}

void sub_1000EB558(char *a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v6, v13, v14, v15, v16, v17, v18, v19;
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v7 = *&v6->remoteCardFilter[8 * a2];
LABEL_5:
  [v7 setActive:0];
  [a1 removeConstraint:v7];
  swift_beginAccess();
  v8 = sub_100150EC4(a2);
  swift_endAccess();

  v9 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v9)
  {
    v23[0] = v9;
    sub_1000EB998();
    v10 = v9;
    sub_10003C49C(&qword_100201040, &qword_100183EB0);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_100049F74(&v20, v23);
        v11 = v24;
        v12 = v25;
        sub_1000EB9E4(v23, v24);
        (*(v12 + 40))(0, 0, v11, v12);

        sub_100044554(v23);
        return;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  sub_1000EB930(&v20);
}

void sub_1000EB844()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler), *(v0 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler + 8));
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints);

  v8, v1, v2, v3, v4, v5, v6, v7;
}

id sub_1000EB888(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardStackView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000EB930(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201038, &qword_100183EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EB998()
{
  result = qword_1001FF090;
  if (!qword_1001FF090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FF090);
  }

  return result;
}

uint64_t sub_1000EB9E4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000EBA34()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000EBA80()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

unint64_t sub_1000EBAC0()
{
  result = qword_1001FF730;
  if (!qword_1001FF730)
  {
    sub_1000EB998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF730);
  }

  return result;
}

unint64_t sub_1000EBB38()
{
  result = qword_100201050;
  if (!qword_100201050)
  {
    sub_10003C4E4(&qword_100201048, &qword_100183EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201050);
  }

  return result;
}

id sub_1000EBBA8()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for CardStackView();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

double sub_1000EBBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000EBC08()
{
  v0 = type metadata accessor for Logger();
  sub_1000EBC88(v0, qword_10020A510);
  sub_10003DAAC(v0, qword_10020A510);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000EBC88(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000EBCEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EBC88(v0, qword_10020A528);
  sub_10003DAAC(v0, qword_10020A528);
  return Logger.init(subsystem:category:)();
}

Class sub_1000EBD70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000EC478();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_1000EBDFC(char a1)
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {
    v2 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) sessionID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v5;
      v39 = v4;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v6 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1;
    if (v6 > 5)
    {
      v37 = 0;
      v7 = 0;
    }

    else
    {
      v37 = *&aFunctioncosmet[8 * v6];
      v7 = *&aAl[8 * v6];
    }

    v8 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
    v9 = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        if (sub_1000660CC())
        {
          v9 = 97;
        }

        else
        {
          v9 = 99;
        }

        v10 = 0xE100000000000000;
        goto LABEL_22;
      }

      v10 = 0;
      if (v8 != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 == 3)
      {
LABEL_14:
        v10 = 0xE100000000000000;
        v9 = 100;
        goto LABEL_22;
      }

      if (v8 != 4)
      {
        v10 = 0;
        if (v8 == 5)
        {
          goto LABEL_14;
        }

LABEL_22:
        v11 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) serialNumber];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_10005CA94(a1);
        v18 = v17;
        _StringGuts.grow(_:)(24);
        0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
        v26._countAndFlagsBits = v16;
        v26._object = v18;
        String.append(_:)(v26);
        v27 = String._bridgeToObjectiveC()();
        0x800000010018E560, v28, v29, v30, v31, v32, v33, v34;
        v35 = swift_allocObject();
        v35[2] = v16;
        v35[3] = v18;
        v35[4] = 0x64616F6C3A707061;
        v35[5] = 0xE800000000000000;
        v35[6] = v39;
        v35[7] = v38;
        v35[8] = v37;
        v35[9] = v7;
        v35[10] = v9;
        v35[11] = v10;
        v35[12] = v13;
        v35[13] = v15;
        aBlock[4] = sub_1000EC56C;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000EBD70;
        aBlock[3] = &unk_1001C5810;
        v36 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v36);

        return;
      }
    }

    v10 = 0xE100000000000000;
    v9 = 98;
    goto LABEL_22;
  }
}

void sub_1000EC128(char a1)
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {
    v2 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) sessionID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v5;
      v39 = v4;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v6 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1;
    if (v6 > 5)
    {
      v37 = 0;
      v7 = 0;
    }

    else
    {
      v37 = *&aFunctioncosmet[8 * v6];
      v7 = *&aAl[8 * v6];
    }

    v8 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
    v9 = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        if (sub_1000660CC())
        {
          v9 = 97;
        }

        else
        {
          v9 = 99;
        }

        v10 = 0xE100000000000000;
        goto LABEL_22;
      }

      v10 = 0;
      if (v8 != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 == 3)
      {
LABEL_14:
        v10 = 0xE100000000000000;
        v9 = 100;
        goto LABEL_22;
      }

      if (v8 != 4)
      {
        v10 = 0;
        if (v8 == 5)
        {
          goto LABEL_14;
        }

LABEL_22:
        v11 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) serialNumber];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_10005CC84(a1);
        v18 = v17;
        _StringGuts.grow(_:)(24);
        0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
        v26._countAndFlagsBits = v16;
        v26._object = v18;
        String.append(_:)(v26);
        v27 = String._bridgeToObjectiveC()();
        0x800000010018E560, v28, v29, v30, v31, v32, v33, v34;
        v35 = swift_allocObject();
        v35[2] = v16;
        v35[3] = v18;
        v35[4] = 0x6E6576653A707061;
        v35[5] = 0xE900000000000074;
        v35[6] = v39;
        v35[7] = v38;
        v35[8] = v37;
        v35[9] = v7;
        v35[10] = v9;
        v35[11] = v10;
        v35[12] = v13;
        v35[13] = v15;
        aBlock[4] = sub_1000EC45C;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000EBD70;
        aBlock[3] = &unk_1001C57C0;
        v36 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v36);

        return;
      }
    }

    v10 = 0xE100000000000000;
    v9 = 98;
    goto LABEL_22;
  }
}

double sub_1000EC460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000EC478()
{
  result = qword_1001FCE88;
  if (!qword_1001FCE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FCE88);
  }

  return result;
}

uint64_t sub_1000EC4C4(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v8[9], v23, v24, v25, v26, v27, v28, v29;
  v8[11], v30, v31, v32, v33, v34, v35, v36;
  v8[13], v37, v38, v39, v40, v41, v42, v43;

  return _swift_deallocObject(v8, 112, 7, v44);
}

uint64_t sub_1000EC574(uint64_t a1, DARootViewController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_1000F00F0(a3, v29 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10003DD84(v10, &unk_1001FFE20, &unk_10017ED10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
      a2, v21, v22, v23, v24, v25, v26, v27;

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

  sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000EC810(uint64_t a1, DARootViewController *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_1000F00F0(a3, v29 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10003DD84(v10, &unk_1001FFE20, &unk_10017ED10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10003C49C(&qword_1002010D8, qword_100183F88);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
      a2, v21, v22, v23, v24, v25, v26, v27;
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

  sub_10003DD84(a3, &unk_1001FFE20, &unk_10017ED10);
  sub_10003C49C(&qword_1002010D8, qword_100183F88);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

char *sub_1000ECABC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeartbeatIconView();
  __chkstk_darwin(v6 - 8);
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressViewVerticalPadding] = 0x403A000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressViewHorizontalPadding] = 0x4046000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView;
  type metadata accessor for BaseProgressView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_startingProgress] = 0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_serialNumber_obj();

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = &v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_serialNumber];
    *v14 = v11;
    v14[1] = v13;
    v15 = &v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
    *v15 = 0;
    *(v15 + 1) = 0;
    *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager] = a1;
    *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID] = a2;
    v16 = a2;
    v17 = a1;
    if (_UISolariumEnabled())
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] <= 1u)
    {
      if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint])
      {
        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000023, 0x80000001001914D0);
        v20 = v19;
        v21 = String._bridgeToObjectiveC()();
        v20, v22, v23, v24, v25, v26, v27, v28;
        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000026, 0x8000000100191500);
        v30 = v29;
        v31 = String._bridgeToObjectiveC()();
        v30, v32, v33, v34, v35, v36, v37, v38;
        v140.receiver = v2;
        v140.super_class = type metadata accessor for SuiteInProgressViewController();
        v39 = objc_msgSendSuper2(&v140, "initWithTitle:detailText:icon:contentLayout:", v21, v31, 0, v18);

        HeartbeatIconView.init()();
        v40 = objc_allocWithZone(sub_10003C49C(&qword_1002010D0, &qword_100183F70));
        v41 = UIHostingController.init(rootView:)();
        v42 = [v41 view];
        if (v42)
        {
          v43 = v42;
          v44 = [v39 headerView];
          v45 = [v44 customIconContainerView];

          if (v45)
          {
            [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
            [v45 addSubview:v43];

            v46 = *&v39[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
            *&v39[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = v43;

            return v39;
          }
        }

        return v39;
      }

LABEL_20:
      _StringGuts.grow(_:)(31);
      DeviceClass = GestaltGetDeviceClass();
      v99 = sub_100100580(DeviceClass);
      v101 = v100;
      0xE000000000000000, v100, v102, v103, v104, v105, v106, v107;
      v142 = v99;
      v143 = v101;
      v108._countAndFlagsBits = 0xD00000000000001DLL;
      v108._object = 0x8000000100191490;
      String.append(_:)(v108);
      v109 = String._bridgeToObjectiveC()();
      v110 = objc_opt_self();
      v111 = [v110 _systemImageNamed:v109];

      if (v111)
      {
        v101, v112, v113, v114, v115, v116, v117, v118;
      }

      else
      {
        v119 = String._bridgeToObjectiveC()();
        v101, v120, v121, v122, v123, v124, v125, v126;
        v111 = [v110 imageNamed:v119];
      }

      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x80000001001914B0);
      v128 = v127;
      v129 = String._bridgeToObjectiveC()();
      v128, v130, v131, v132, v133, v134, v135, v136;
      v141.receiver = v3;
      v141.super_class = type metadata accessor for SuiteInProgressViewController();
      v39 = objc_msgSendSuper2(&v141, "initWithTitle:detailText:icon:contentLayout:", v129, 0, v111, v18);

      return v39;
    }

    if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] != 2)
    {
      goto LABEL_20;
    }

    v138 = v16;
    v47 = [objc_opt_self() systemBlueColor];
    v48 = objc_opt_self();
    v49 = [v48 configurationWithHierarchicalColor:v47];

    v50 = [v48 configurationWithScale:3];
    v51 = [v49 configurationByApplyingConfiguration:v50];

    v52 = v51;
    v53 = String._bridgeToObjectiveC()();
    v54 = [objc_opt_self() _systemImageNamed:v53 withConfiguration:v52];

    v137 = v54;
    v55 = [objc_allocWithZone(UIImageView) initWithImage:v54];
    [v55 setContentMode:1];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v142 = 0xD00000000000001FLL;
    v143 = 0x8000000100191550;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v56 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        v58 = 0x4E414C575FLL;
      }

      else
      {
        v58 = 0x494649575FLL;
      }

      v59 = 0xE500000000000000;
      String.append(_:)(*&v58);
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100191570);
      v61 = v60;
      v62 = String._bridgeToObjectiveC()();
      v61, v63, v64, v65, v66, v67, v68, v69;
      v70 = sub_100049C98(v142, v143);
      v72 = v71;
      v143, v71, v73, v74, v75, v76, v77, v78;
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v70, v72);
      v80 = v79;
      v72, v79, v81, v82, v83, v84, v85, v86;
      v87 = String._bridgeToObjectiveC()();
      v80, v88, v89, v90, v91, v92, v93, v94;
      v139.receiver = v3;
      v139.super_class = type metadata accessor for SuiteInProgressViewController();
      v39 = objc_msgSendSuper2(&v139, "initWithTitle:detailText:icon:contentLayout:", v62, v87, 0, v18);

      v95 = [v39 headerView];
      v96 = [v95 customIconContainerView];

      if (v96)
      {
        [v96 addSubview:v55];

        v97 = *&v39[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
        *&v39[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = v55;
      }

      else
      {
      }

      return v39;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000ED360()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager];
  v4 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint);
  if (v5 == 3)
  {
    if (!*&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID])
    {
      goto LABEL_10;
    }

    v6 = [v0 navigationItem];
    sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
    sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v99.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v99.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v99, v101).super.super.isa;
    [v6 setLeftBarButtonItem:isa];

    v5 = *(v3 + v4);
  }

  if (v5 == 1)
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
      [v9 setNavigationBarHidden:0 animated:1];
    }

    sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
    sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v100.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v100.is_nil = 0;
    v11.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v100, v102).super.super.isa;
    v12 = OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton;
    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton];
    *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton] = v11;

    v14 = _UISolariumEnabled();
    v15 = [v1 navigationItem];
    v16 = *&v1[v12];
    v17 = &selRef_setLeftBarButtonItem_;
    if (!v14)
    {
      v17 = &selRef_setRightBarButtonItem_;
    }

    [v15 *v17];
  }

LABEL_10:
  v18 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID];
  if (v19)
  {
    v20 = qword_1001FC738;
    v21 = v19;
    v22 = v21;
    if (v20 != -1)
    {
      v21 = swift_once();
    }

    v24 = qword_1001FEED0;
    v23 = qword_1001FEED8;
    if (qword_1001FEED8)
    {
      __chkstk_darwin(v21);
      v25 = v22;
      sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
      OS_dispatch_queue.sync<A>(execute:)();
      if (v98)
      {
        v97 = v4;
        v26 = [v98 suiteNameLocalizedString];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v37 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v37 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = &v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
          v39 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText + 8];
          *v38 = v27;
          v38[1] = v29;
          v39, v30, v31, v32, v33, v34, v35, v36;
          v40 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel];

          v41 = v40;
          v42 = String._bridgeToObjectiveC()();
          v29, v43, v44, v45, v46, v47, v48, v49;
          [v41 setText:v42];
        }

        else
        {

          v29, v50, v51, v52, v53, v54, v55, v56;
        }

        v4 = v97;
      }

      else
      {
      }
    }

    else
    {
    }

    v57 = sub_100096060(v22, v24, v23);
    if (v58)
    {
      v59 = v58;
      if (*(v3 + v4) == 3)
      {
        v60 = v57;
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_10017EC00;
        *(v61 + 56) = &type metadata for String;
        *(v61 + 64) = sub_10003DFBC();
        *(v61 + 32) = v60;
        *(v61 + 40) = v59;
        v62 = sub_1000494C8(0, 0, v61, 0xD000000000000023, 0x8000000100191590);
        v64 = v63;
        v61, v63, v65, v66, v67, v68, v69, v70;
        v71 = &v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
        v72 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText + 8];
        *v71 = v62;
        v71[1] = v64;
        v72, v73, v74, v75, v76, v77, v78, v79;
        v80 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel];

        v81 = v80;
        v82 = String._bridgeToObjectiveC()();
        v64, v83, v84, v85, v86, v87, v88, v89;
        [v81 setText:v82];
      }

      else
      {

        v59, v90, v91, v92, v93, v94, v95, v96;
      }
    }

    else
    {
    }
  }
}

double sub_1000ED978(int a1, id a2)
{
  v2 = [a2 navigationItem];
  v3 = [v2 leftBarButtonItem];

  if (v3)
  {
    [v3 setEnabled:0];
  }

  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  return sub_100094F00(qword_1001FEED0, qword_1001FEED8);
}

void sub_1000EDA40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v3;
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = [v5 rightBarButtonItem];

    sub_100088E48(0, v6);

    v7 = *&v4[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:0];
    }
  }
}

double sub_1000EDBA4()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  sub_1000EC128(5);
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] == 6 && (v3 = objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "serialNumber")) != 0 || objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "destination") == 1 && (v3 = objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "serialNumber")) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_1000F6DA8();
    sub_100094F00(v5, v7);

    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    sub_1000EC574(0, 0, v2, &unk_100183F80, v18);
  }

  return result;
}

void sub_1000EDDE8(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 44.0;
  }

  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017ED60;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView];
  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:v2];
  *(v4 + 32) = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-v2];
  *(v4 + 40) = v13;
  v14 = [v5 centerXAnchor];
  v15 = [v1 contentView];
  v16 = [v15 centerXAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  v18 = v3;
  *(v4 + 48) = v17;
  v19 = [v5 topAnchor];
  v20 = [v1 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:26.0];
  *(v4 + 56) = v22;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v24, v25, v26, v27, v28, v29, v30;
  [v3 activateConstraints:isa];

  v31 = [v1 headerView];
  v56 = [v31 customIconContainerView];

  v32 = v56;
  if (v56)
  {
    v33 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
    if (v33)
    {
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10017ED60;
      v35 = v33;
      v36 = [v35 heightAnchor];
      v37 = [(objc_class *)v56 heightAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];

      *(v34 + 32) = v38;
      v39 = [v35 widthAnchor];
      v40 = [(objc_class *)v56 widthAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];

      *(v34 + 40) = v41;
      v42 = [v35 centerXAnchor];
      v43 = [(objc_class *)v56 centerXAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v34 + 48) = v44;
      v45 = [v35 centerYAnchor];
      v46 = [(objc_class *)v56 centerYAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v34 + 56) = v47;
      v48 = Array._bridgeToObjectiveC()().super.isa;
      v34, v49, v50, v51, v52, v53, v54, v55;
      [v18 activateConstraints:v48];

      v32 = v48;
    }
  }
}

void sub_1000EE328(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SuiteInProgressViewController();
  objc_msgSendSuper2(&v16, "viewDidAppear:", v3 & 1);
  *(*&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C5838;
  swift_unknownObjectWeakAssign();
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  if (v4)
  {
    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear + 8];

    v4(v6);
    sub_10003C52C(v4, v5);
  }

  if (os_variant_has_internal_content())
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      v15[4] = sub_1000F0160;
      v15[5] = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100072168;
      v15[3] = &unk_1001C5A50;
      v12 = _Block_copy(v15);
      v13 = v2;

      v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v12 block:1.0];
      _Block_release(v12);
    }
  }

  sub_1000EBDFC(1);
}

void sub_1000EE534(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView);
  v4 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) + 0.1;
  *(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) = v5;
  *(*(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView) + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget) = v5;
  sub_1000FB158();
  if (*(v3 + v4) >= 1.0)
  {
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_10009617C(qword_1001FEED0, qword_1001FEED8);

    [a1 invalidate];
  }
}

id sub_1000EE6F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SuiteInProgressViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000EE7F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID);
  if (qword_1001FC738 == -1)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!v1)
    {
      return 0;
    }
  }

  result = qword_1001FEED0;
  if (!qword_1001FEED8)
  {
    return result;
  }

  __chkstk_darwin(qword_1001FEED0);
  v3 = v1;
  sub_10003C49C(&qword_1001FDF90, &unk_10017FE20);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v6)
  {
    v4 = [v6 suiteNameLocalizedString];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  return 0;
}

void sub_1000EE95C(void *a1, uint64_t a2)
{
  [a1 floatValue];
  v4 = v3 / 100.0;
  if (*(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_startingProgress) < v4)
  {
    v5 = *(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView);
    *(v5 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) = v4;
    *(*(v5 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView) + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget) = v4;
    sub_1000FB158();
  }
}

void sub_1000EE9E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v97 = a4;
  v106 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v6 - 1);
  v105 = v6;
  __chkstk_darwin(v6);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 1);
  __chkstk_darwin(v103);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v98 = *(v13 - 8);
  v99 = v13;
  __chkstk_darwin(v13);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) == 1)
  {
    if (qword_10020A548)
    {
      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      (*(v20 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v19);
      v106 = static OS_dispatch_queue.global(qos:)();
      (*(v20 + 8))(v23, v19);
      static DispatchTime.now()();
      *v12 = 5;
      (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
      + infix(_:_:)();
      (*(v10 + 8))(v12, v9);
      v24 = v99;
      v25 = *(v98 + 8);
      v25(v15, v99);
      aBlock[4] = sub_1000EF3A4;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C5938;
      v26 = _Block_copy(aBlock);
      v27 = v100;
      static DispatchQoS.unspecified.getter();
      v107 = &_swiftEmptyArrayStorage;
      sub_10005BD2C();
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_1000446A0();
      v28 = v102;
      v29 = v105;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v106;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v26);

      (v104)[1](v28, v29);
      (*(v101 + 8))(v27, v103);
      v25(v18, v24);
    }

    return;
  }

  if (a2)
  {
    swift_errorRetain();
    v31 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v32 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v32, v31, "Error occurred upon suite finish: %@", v33, 0xCu);
      sub_10003DD84(v34, &qword_1001FF0C0, &unk_10017ED00);
    }

    v36 = [v106 navigationController];
    if (!v36)
    {

      return;
    }

    v106 = v36;
    v37 = [v36 popViewControllerAnimated:1];

LABEL_39:
    v86 = v106;
    goto LABEL_40;
  }

  if (!v97)
  {
LABEL_37:
    v85 = [v106 navigationController];
    if (!v85)
    {
      return;
    }

    v106 = v85;

    goto LABEL_39;
  }

  v38 = v97;
  v39 = [v38 results];
  if (!v39)
  {
    v40 = v38;
LABEL_36:

    goto LABEL_37;
  }

  v40 = v39;
  v104 = v38;
  v41 = &selRef_btManagerAvailableSemaphore;
  v42 = [v39 components];
  sub_10003E110(0, &qword_1001FD530, ASTSuiteResultComponent_ptr);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = v43;
  if (v43 >> 62)
  {
    goto LABEL_34;
  }

  v52 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43, v44, v45, v46, v47, v48, v49, v50;
  if (!v52)
  {
LABEL_35:

    goto LABEL_36;
  }

  while (1)
  {
    v53 = [v40 v41[26]];
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v54 >> 62)
    {
      break;
    }

    v62 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v103 = v40;
    if (!v62)
    {
      goto LABEL_44;
    }

LABEL_16:
    v63 = 0;
    v105 = (v54 & 0xC000000000000001);
    v41 = (v54 & 0xFFFFFFFFFFFFFF8);
    v64 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v105)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v63 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        isUniquelyReferenced_nonNull_native = *(v54 + 8 * v63 + 32);
      }

      v65 = isUniquelyReferenced_nonNull_native;
      v66 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v40 = v62;
      v67 = [isUniquelyReferenced_nonNull_native assetLocator];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1000D4ECC(0, *&v64->hostAppBundleIdentifier[8] + 1, 1, v64, v58, v59, v60, v61);
        v64 = isUniquelyReferenced_nonNull_native;
      }

      v72 = *&v64->hostAppBundleIdentifier[8];
      v71 = *v64->responder;
      if (v72 >= v71 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1000D4ECC((v71 > 1), v72 + 1, 1, v64, v58, v59, v60, v61);
        v64 = isUniquelyReferenced_nonNull_native;
      }

      *&v64->hostAppBundleIdentifier[8] = v72 + 1;
      v73 = v64 + 16 * v72;
      *(v73 + 4) = v68;
      *(v73 + 5) = v70;
      ++v63;
      v62 = v40;
      if (v66 == v40)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v74 = v40;
    v75 = isUniquelyReferenced_nonNull_native;
    v76 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v75;
    v40 = v74;
    v77, v78, v79, v80, v81, v82, v83, v84;
    if (!v76)
    {
      goto LABEL_35;
    }
  }

  isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
  v62 = isUniquelyReferenced_nonNull_native;
  v103 = v40;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_16;
  }

LABEL_44:
  v64 = &_swiftEmptyArrayStorage;
LABEL_45:
  v54, v55, v56, v57, v58, v59, v60, v61;
  if (qword_1001FC820 != -1)
  {
    swift_once();
  }

  v87 = qword_10020A588;
  v105 = v104;
  v88 = v106;
  sub_10010E4E4(v64, v87, v88, v105);

  v64, v89, v90, v91, v92, v93, v94, v95;
  v86 = v105;
LABEL_40:
}

void sub_1000EF3A4()
{
  if (qword_10020A548)
  {
    v1 = qword_10020A548;
    OS_dispatch_semaphore.signal()();

    v0 = vars8;
  }

  sub_1000F7F54();
}

void *sub_1000EF3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID);
  v2 = v1;
  return v1;
}

void sub_1000EF43C(void *a1)
{
  v62 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!os_variant_has_internal_content() || (v8 = [objc_opt_self() standardUserDefaults], v9 = v6, v10 = v4, v11 = v1, v12 = v5, v13 = v2, v14 = String._bridgeToObjectiveC()(), v15 = objc_msgSend(v8, "BOOLForKey:", v14), v8, v14, v2 = v13, v5 = v12, v1 = v11, v4 = v10, v6 = v9, (v15 & 1) == 0))
  {
    v22 = String.lowercased()();
    if (*&v64[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_serialNumber + 8])
    {
      v29 = String.lowercased()();
      if (v22._countAndFlagsBits == v29._countAndFlagsBits && v22._object == v29._object)
      {
        v22._object, v29._object, v23, v24, v25, v26, v27, v28;
        v29._object, v46, v47, v48, v49, v50, v51, v52;
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v22._object, v32, v33, v34, v35, v36, v37, v38;
        v29._object, v39, v40, v41, v42, v43, v44, v45;
        if ((v31 & 1) == 0)
        {
          return;
        }
      }

      sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
      v53 = v64;
      v54 = static OS_dispatch_queue.main.getter();
      v55 = swift_allocObject();
      v56 = v62;
      *(v55 + 16) = v62;
      *(v55 + 24) = v53;
      aBlock[4] = sub_1000EF894;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C58C0;
      v57 = _Block_copy(aBlock);
      v58 = v56;
      v59 = v53;

      v60 = v63;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10005BD2C();
      sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
      sub_1000446A0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v60, v5);
      return;
    }

    v22._object, 0, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_1000EF854()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_1000EF89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000EF8B4(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = v3;
  v13[5] = a2;
  aBlock[4] = sub_1000EFBBC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5910;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();
  v16 = a2;
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v23 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v22);
}

uint64_t sub_1000EFB6C()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000EFBC8(uint64_t result, DARootViewController *a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v16 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result - v16;
    if (__OFSUB__(result, v16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v17 <= v18)
    {
      v19 = v17 & ~(v17 >> 63);
    }

    else
    {
      v19 = v18;
    }

    if (v18 < 0 || v17 < 1)
    {
      v6 = v17 & ~(v17 >> 63);
    }

    else
    {
      v6 = v19;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v7);
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3, v9, v10, v11, v12, v13, v14, v15;
  return _CocoaArrayWrapper.subscript.getter();
}

void sub_1000EFD24(void *a1, void *a2)
{
  v3 = [a1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  objc_allocWithZone(type metadata accessor for SelfServiceSuiteResultsViewController());
  v5 = sub_1000A4BC0(a2);
  v6 = [v4 viewControllers];
  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000EFBC8(1, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v7, v9, v11, v13, v15, v16, v17, v18;
  if ((v14 & 1) == 0)
  {
    goto LABEL_3;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = &_swiftEmptyArrayStorage;
  }

  v22 = *&v21->hostAppBundleIdentifier[8];

  if (__OFSUB__(v14 >> 1, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v22 != (v14 >> 1) - v12)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_3:
    sub_100098BE8(v8, v10, v12, v14);
    v20 = v19;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

LABEL_11:
  v23 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20, v25, v26, v27, v28, v29, v30, v31;
  [v4 setViewControllers:isa animated:1];
}

uint64_t sub_1000EFF5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000EFF9C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1000EFFE4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_1000F000C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000F0044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

uint64_t sub_1000F00F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1000F018C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1000F0A44;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5AA0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000F1934(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);

  return result;
}

NSString sub_1000F0508()
{
  result = String._bridgeToObjectiveC()();
  qword_1002010E0 = result;
  return result;
}

NSString sub_1000F0540()
{
  result = String._bridgeToObjectiveC()();
  qword_1002010E8 = result;
  return result;
}

uint64_t sub_1000F0578(void (*a1)(uint64_t))
{
  v36 = a1;
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:isDirectory:)();
  sub_10003C49C(&qword_1001FF8C8, &qword_100182058);
  inited = swift_initStackObject();
  v35 = xmmword_10017EC00;
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  v10 = NSURLVolumeAvailableCapacityKey;
  sub_10014FB04(inited);
  v12 = v11;
  swift_setDeallocating();
  sub_1000F18D8(inited + 32);
  URL.resourceValues(forKeys:)();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = URLResourceValues.volumeAvailableCapacity.getter();
  v22 = v21;
  (*(v2 + 8))(v4, v1);
  if (v22)
  {
LABEL_12:
    v24 = 1;
    goto LABEL_13;
  }

  if (qword_1001FC7D8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000F145C(qword_1002010E0);
  if ((v20 & 0x8000000000000000) != 0 || v20 < v23)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10017EC10;
    if (qword_1001FC7E0 != -1)
    {
      swift_once();
    }

    v26 = sub_1000F145C(qword_1002010E8);
    *(v25 + 56) = &type metadata for UInt64;
    *(v25 + 64) = &protocol witness table for UInt64;
    *(v25 + 32) = v26;
    *(v25 + 96) = &type metadata for Int;
    *(v25 + 104) = &protocol witness table for Int;
    *(v25 + 72) = v20;
    os_log(_:dso:log:type:_:)("Insufficient disk space available. Need %d free, but only have %d.", v35, DWORD2(v35));
    v25, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_12;
  }

  v24 = 0;
LABEL_13:
  v36(v24);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F0A0C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_1000F0A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000F0A64(uint64_t a1, uint64_t a2, int64_t a3)
{
  v86 = a1;
  v87 = a2;

  v4 = String.init<A>(_:)();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v45 = v5;
    v12 = sub_1000F0FE8(v4, v5);
    v47 = v46;
    v45, v46, v48, v49, v50, v51, v52, v53;
    v5 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v5;
      v13 = _StringObject.sharedUTF8.getter();
      v14 = v85;
      v5 = v84;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v27 = v14 - 1;
        if (v27)
        {
          v28 = a3 + 48;
          v29 = a3 + 55;
          v30 = a3 + 87;
          if (a3 > 10)
          {
            v28 = 58;
          }

          else
          {
            v30 = 97;
            v29 = 65;
          }

          if (v13)
          {
            v31 = 0;
            v32 = v13 + 1;
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v28)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  if (v33 < 0x61 || v33 >= v30)
                  {
                    goto LABEL_127;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              if (is_mul_ok(v31, a3))
              {
                v35 = v31 * a3;
                v36 = v33 + v34;
                v26 = __CFADD__(v35, v36);
                v31 = v35 + v36;
                if (!v26)
                {
                  ++v32;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v13)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v13;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_127;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if (is_mul_ok(v40, a3))
            {
              v43 = v40 * a3;
              v44 = v41 + v42;
              v26 = __CFADD__(v43, v44);
              v40 = v43 + v44;
              if (!v26)
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            if (is_mul_ok(v20, a3))
            {
              v24 = v20 * a3;
              v25 = v22 + v23;
              v26 = v24 >= v25;
              v20 = v24 - v25;
              if (v26)
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v54 = HIBYTE(v5) & 0xF;
  v86 = v12;
  v87 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v54)
      {
        v75 = 0;
        v76 = a3 + 48;
        v77 = a3 + 55;
        v78 = a3 + 87;
        if (a3 > 10)
        {
          v76 = 58;
        }

        else
        {
          v78 = 97;
          v77 = 65;
        }

        v79 = &v86;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v76)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              if (v80 < 0x61 || v80 >= v78)
              {
                goto LABEL_127;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          if (is_mul_ok(v75, a3))
          {
            v82 = v75 * a3;
            v83 = v80 + v81;
            v26 = __CFADD__(v82, v83);
            v75 = v82 + v83;
            if (!v26)
            {
              v79 = (v79 + 1);
              if (--v54)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v54)
    {
      v55 = v54 - 1;
      if (v55)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v86 + 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          if (is_mul_ok(v56, a3))
          {
            v63 = v56 * a3;
            v64 = v61 + v62;
            v26 = v63 >= v64;
            v56 = v63 - v64;
            if (v26)
            {
              ++v60;
              if (--v55)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v54)
  {
    v65 = v54 - 1;
    if (v65)
    {
      v66 = 0;
      v67 = a3 + 48;
      v68 = a3 + 55;
      v69 = a3 + 87;
      if (a3 > 10)
      {
        v67 = 58;
      }

      else
      {
        v69 = 97;
        v68 = 65;
      }

      v70 = &v86 + 1;
      while (1)
      {
        v71 = *v70;
        if (v71 < 0x30 || v71 >= v67)
        {
          if (v71 < 0x41 || v71 >= v68)
          {
            if (v71 < 0x61 || v71 >= v69)
            {
              goto LABEL_127;
            }

            v72 = -87;
          }

          else
          {
            v72 = -55;
          }
        }

        else
        {
          v72 = -48;
        }

        if (is_mul_ok(v66, a3))
        {
          v73 = v66 * a3;
          v74 = v71 + v72;
          v26 = __CFADD__(v73, v74);
          v66 = v73 + v74;
          if (!v26)
          {
            ++v70;
            if (--v65)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1000F0FE8(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v4 = v3;
  v7 = sub_1000F1068(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1000F1068(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100056FBC(v9, 0), v12 = sub_1000F11C0(v22, v11->remoteCardFilter, v10, a1, a2, a3, a4), v13 = v22[3], , v13, v14, v15, v16, v17, v18, v19, v20, v12 == v10))
    {
      v21 = static String._uncheckedFromUTF8(_:)();

      return v21;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = a3;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000F11C0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000F13E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000F13E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000F13E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

DARootViewController *sub_1000F145C(const __CFString *a1)
{
  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for CFString(0);
    if (qword_1001FC7D8 != -1)
    {
      swift_once();
    }

    sub_1000F1934(&unk_1001FDFB0, type metadata accessor for CFString, &unk_10017D8DC);
    if (static _CFObject.== infix(_:_:)())
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x200000;
    }
  }

  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.Diagnostics");
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  v45 = v4;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  result = v44;
  v13 = HIBYTE(v44) & 0xF;
  v14 = v43 & 0xFFFFFFFFFFFFLL;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v44) & 0xF;
  }

  else
  {
    v15 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v44, v14, v6, v7, v8, v9, v10, v11;
    goto LABEL_74;
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    sub_1000F0A64(v43, v44, 10);
    v19 = v34;
    v36 = v35;
    v44, v35, v37, v38, v39, v40, v41, v42;
    if ((v36 & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_74:
    v43 = v5;
    if (swift_dynamicCast())
    {
      return v45;
    }

    return v3;
  }

  if ((v44 & 0x2000000000000000) == 0)
  {
    if ((v43 & 0x1000000000000000) != 0)
    {
      v16 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
      result = v44;
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_73;
          }

          v26 = v16 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = __CFADD__(10 * v19, v27);
            v19 = 10 * v19 + v27;
            if (v22)
            {
              break;
            }

            ++v26;
            if (!--v25)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      goto LABEL_83;
    }

    if (v17 == 45)
    {
      if (v14 >= 1)
      {
        v18 = v14 - 1;
        if (v14 != 1)
        {
          v19 = 0;
          if (!v16)
          {
            goto LABEL_73;
          }

          v20 = v16 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v22 = 10 * v19 >= v21;
            v19 = 10 * v19 - v21;
            if (!v22)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v14)
    {
      v19 = 0;
      if (!v16)
      {
        goto LABEL_73;
      }

      while (1)
      {
        v30 = *v16 - 48;
        if (v30 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v30);
        v19 = 10 * v19 + v30;
        if (v22)
        {
          break;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_72;
  }

  v44 &= 0xFFFFFFFFFFFFFFuLL;
  if (v43 != 43)
  {
    if (v43 == 45)
    {
      if (!v13)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v16 = (v13 - 1);
      if (v13 != 1)
      {
        v19 = 0;
        v23 = &v43 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          if (!is_mul_ok(v19, 0xAuLL))
          {
            break;
          }

          v22 = 10 * v19 >= v24;
          v19 = 10 * v19 - v24;
          if (!v22)
          {
            break;
          }

          ++v23;
          if (!--v16)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v13)
    {
      v19 = 0;
      v31 = &v43;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v32);
        v19 = 10 * v19 + v32;
        if (v22)
        {
          break;
        }

        v31 = (v31 + 1);
        if (!--v13)
        {
LABEL_71:
          LOBYTE(v16) = 0;
          goto LABEL_73;
        }
      }
    }

LABEL_72:
    v19 = 0;
    LOBYTE(v16) = 1;
LABEL_73:
    LOBYTE(v45) = v16;
    v33 = v16;
    result, v14, v6, v7, v8, v9, v10, v11;
    if (v33)
    {
      goto LABEL_74;
    }

LABEL_78:
    swift_unknownObjectRelease();
    return v19;
  }

  if (v13)
  {
    v16 = (v13 - 1);
    if (v13 != 1)
    {
      v19 = 0;
      v28 = &v43 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (!is_mul_ok(v19, 0xAuLL))
        {
          break;
        }

        v22 = __CFADD__(10 * v19, v29);
        v19 = 10 * v19 + v29;
        if (v22)
        {
          break;
        }

        ++v28;
        if (!--v16)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1000F18D8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000F1B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000F1B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000B7C9C(0, v1, 0);
    v3 = a1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v25 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v27 = *v8;
      v10 = *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8];
      v11 = *_swiftEmptyArrayStorage.responder;

      if (v10 >= v11 >> 1)
      {
        sub_1000B7C9C((v11 > 1), v10 + 1, 1);
      }

      *&_swiftEmptyArrayStorage.hostAppBundleIdentifier[8] = v10 + 1;
      v17 = &_swiftEmptyArrayStorage + 16 * v10;
      *(v17 + 4) = v27;
      *(v17 + 5) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v18 = *(a1 + 56 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (a1 + 64 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1000B2714(v4, v26, 0, v12, v13, v14, v15, v16);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1000B2714(v4, v26, 0, v12, v13, v14, v15, v16);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1000F1D80()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC740 != -1)
  {
    swift_once();
  }

  sub_10009E188();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = 10;
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000F73A4;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1000F73E4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5B40;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v14);
}

unint64_t sub_1000F208C(char a1)
{
  result = 0x22656D6F4822;
  switch(a1)
  {
    case 1:
      result = 0x6572676173694422;
      break;
    case 2:
      result = 0x7373696D73694422;
      break;
    case 3:
      result = 0x226C65636E614322;
      break;
    case 4:
      result = 0x22656E6F4422;
      break;
    case 5:
      result = 0x76697463616E4922;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x656C7469746E4522;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 11:
    case 20:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x65657246206F4E22;
      break;
    case 12:
      result = 0x64726143206F4E22;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 15:
    case 17:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x6C20686374615722;
      break;
    case 22:
      result = 0xD00000000000001DLL;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 24:
    case 28:
      result = 0xD000000000000020;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
      result = 0xD000000000000031;
      break;
    case 27:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2424(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000F208C(*a1);
  v5 = v4;
  v6 = sub_1000F208C(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1000F24AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000F208C(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1000F2510(uint64_t a1)
{
  sub_1000F208C(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_1000F2564(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000F208C(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1000F25C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F80A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000F25F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000F208C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000F2620(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10003DFBC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v6, "%@", 2, 2, v2);
  v2, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1000F271C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000F2784()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A380;

  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_1000F2840(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount);
  if (v3 != a1)
  {
    v4 = v1;
    if (!a1 && v3 >= 1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController);
      if (!sub_1000660CC() || (v6 = *(v5 + OBJC_IVAR___DARootViewController_hostAppBundleIdentifier + 8)) == 0 || (aBlock = *(v5 + OBJC_IVAR___DARootViewController_hostAppBundleIdentifier), v34 = v6, v31 = 0xD000000000000015, v32 = 0x8000000100191E60, sub_100079A64(), StringProtocol.caseInsensitiveCompare<A>(_:)()))
      {
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:-1 completion:{0, v31, v32, aBlock, v34}];
        sub_1000F6794();
      }
    }

    if (*(v4 + v2) < 1)
    {
      if (qword_1001FC6B8 == -1)
      {
LABEL_14:
        v16 = qword_10020A368;
        v17 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_1000FB140;
        *(v19 + 24) = v18;
        v37 = sub_10003E41C;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100060C48;
        v36 = &unk_1001C61F8;
        v20 = _Block_copy(&aBlock);
        v21 = v16;

        dispatch_sync(v17, v20);
        _Block_release(v20);
        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

        if (v17)
        {
          __break(1u);
          return;
        }

        v22 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v21[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v21[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
        v23 = sub_100050814();
        [v23 setNearbySharingEnabled:(v21[v22] & 1) == 0];

        v24 = sub_100050814();
        [v24 setDiscoverableMode:*&v21[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

        v25 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
        v26 = *&v21[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
        if (v26)
        {
          [v26 invalidate];
        }

        *&v21[v25] = 0;
        swift_unknownObjectRelease();
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) stopWithCompletion:0];
        v27 = *(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer);
        if (v27)
        {
          [v27 invalidate];
        }

        v28 = [objc_opt_self() sharedApplication];
        v29 = [v28 applicationState];

        if (v29 == 2)
        {
          sub_1000F6FF8(12);
        }

        v13 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1001FC6B8 != -1)
      {
        swift_once();
      }

      v7 = qword_10020A368;
      v8 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10003E468;
      *(v10 + 24) = v9;
      v37 = sub_10003E41C;
      v38 = v10;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100060C48;
      v36 = &unk_1001C6270;
      v11 = _Block_copy(&aBlock);
      v12 = v7;

      dispatch_sync(v8, v11);
      _Block_release(v11);
      v13 = 1;
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        v14 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v12[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
        v15 = sub_100050814();
        [v15 setNearbySharingEnabled:(v12[v14] & 1) == 0];

        sub_1000508A4();
        sub_100050C28();
        sub_1000F68C0();
LABEL_22:
        v30 = [objc_opt_self() standardUserDefaults];
        [v30 setInteger:v13 forKey:@"InCurrentSession"];

        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_14;
  }
}

void sub_1000F2D90(char a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground;
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_100066608();
    type metadata accessor for DashboardViewController();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
    }

    if (*(v4 + v3) != 1)
    {
      p_opt_inst_meths = &OBJC_PROTOCOL___DKAssetResponder.opt_inst_meths;
      v10 = &unk_10020A000;
      isEscapingClosureAtFileLocation = &unk_10017E000;
      if (*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) < 1)
      {
        goto LABEL_18;
      }

      if (qword_1001FC6B8 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    v7 = qword_10020A368;
    sub_10004FAD4();
    sub_100050198();
    sub_1000F68C0();
    v8 = *&v7[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000FADE4;
    *(v10 + 24) = v9;
    v44 = sub_10003E41C;
    v45 = v10;
    v40 = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100060C48;
    v43 = &unk_1001C6018;
    v11 = _Block_copy(&v40);
    v12 = v7;

    dispatch_sync(v8, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_26:
      swift_once();
      while (1)
      {
        v32 = *(v10 + 872);
        v33 = *&v32[OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue];
        v4 = swift_allocObject();
        *(v4 + 16) = v32;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_100099D24;
        *(v34 + 24) = v4;
        v44 = sub_10003E41C;
        v45 = v34;
        v40 = _NSConcreteStackBlock;
        v41 = *(isEscapingClosureAtFileLocation + 3104);
        v42 = sub_100060C48;
        v43 = &unk_1001C5F28;
        v35 = _Block_copy(&v40);
        v36 = v32;

        dispatch_sync(v33, v35);
        _Block_release(v35);
        isEscapingClosureAtFileLocation = 1;
        v10 = swift_isEscapingClosureAtFileLocation();

        if ((v10 & 1) == 0)
        {
          sub_10004FE88();
          sub_100050510();
          v37 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
          v36[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v36[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
          v38 = sub_100050814();
          [v38 setNearbySharingEnabled:(v36[v37] & 1) == 0];

          v39 = sub_100050814();
          [v39 setDiscoverableMode:*&v36[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

          goto LABEL_23;
        }

        __break(1u);
LABEL_28:
        swift_once();
LABEL_15:
        v23 = *(v10 + 872);
        v24 = *&v23[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue];
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1000FADDC;
        *(v26 + 24) = v25;
        v44 = sub_10003E41C;
        v45 = v26;
        v40 = _NSConcreteStackBlock;
        v27 = isEscapingClosureAtFileLocation;
        v41 = *(isEscapingClosureAtFileLocation + 3104);
        v42 = sub_100060C48;
        v43 = &unk_1001C5FA0;
        v28 = _Block_copy(&v40);
        v29 = v23;

        dispatch_sync(v24, v28);
        _Block_release(v28);
        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          break;
        }

        isEscapingClosureAtFileLocation = v27;
        v10 = &unk_10020A000;
        if (v6)
        {
          v30 = *&v6[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager];
          sub_100104F24();
        }

LABEL_18:
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) stopWithCompletion:0];
        v31 = *(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer);
        if (v31)
        {
          [v31 invalidate];
        }

        if (p_opt_inst_meths[215] != -1)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    else
    {
      if (v6)
      {
        v14 = *&v6[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager];
        sub_100104F30();
      }

      if (*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) < 1)
      {
        goto LABEL_23;
      }

      [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:-1 completion:0];
      sub_1000F6794();
      v15 = *&v12[OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue];
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10003DA8C;
      *(v17 + 24) = v16;
      v44 = sub_10003E41C;
      v45 = v17;
      v40 = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_100060C48;
      v43 = &unk_1001C6090;
      v18 = _Block_copy(&v40);
      v19 = v12;

      dispatch_sync(v15, v18);
      _Block_release(v18);
      v20 = swift_isEscapingClosureAtFileLocation();

      if ((v20 & 1) == 0)
      {
        v21 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v19[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
        v22 = sub_100050814();
        [v22 setNearbySharingEnabled:(v19[v21] & 1) == 0];

        sub_1000508A4();
LABEL_23:

        return;
      }
    }

    __break(1u);
  }
}

void sub_1000F3504(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v23 = 0xD000000000000012;
  *(&v23 + 1) = 0x800000010018BB50;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v12 = sub_100064B74(v22), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_10003DB48(v22);
LABEL_8:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  sub_10003E010(*(v4 + 56) + 32 * v12, &v23);
  sub_10003DB48(v22);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_10003DD84(&v23, &unk_1001FD720, &unk_10017ED20);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v20 = v22[0];
LABEL_11:
  v21 = *(a2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount);
  *(a2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) = v20;
  sub_1000F2840(v21);
}

id sub_1000F362C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for URL();
  v120 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v7 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  __chkstk_darwin(v13);
  v15 = &v108 - v14;
  if (qword_1001FC6B8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v121 = v12;
    v16 = *(a1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController);
    result = [v16 view];
    if (!result)
    {
      break;
    }

    v18 = result;
    v19 = v16;
    sub_1000F896C(v18, v19);

    v20 = [a2 URLContexts];
    sub_10003E110(0, &qword_100201298, UIOpenURLContext_ptr);
    sub_1000AC8BC(&qword_1002012A0, &qword_100201298, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = sub_10012570C(v21);
    v21, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {
      v30 = [v22 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v120;
      v32 = v121;
      v33 = *(v120 + 32);
      v33(v121, v6, v4);
      v34 = *(v31 + 56);
      v34(v32, 0, 1, v4);
      v33(v15, v32, v4);
      v34(v15, 0, 1, v4);
      goto LABEL_35;
    }

    v114 = v4;
    v115 = a1;
    v112 = *(v120 + 56);
    v113 = v120 + 56;
    v112(v121, 1, 1, v4);
    v35 = [a2 userActivities];
    v36 = sub_10003E110(0, &qword_1002012B8, NSUserActivity_ptr);
    a2 = sub_1000AC8BC(&unk_1002012C0, &qword_1002012B8, NSUserActivity_ptr, &protocol conformance descriptor for NSObject);
    v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v116 = v15;
    v117 = v36;
    v109 = v9;
    v111 = v37;
    if ((v37 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v38 = v124;
      v15 = v125;
      v39 = v126;
      v4 = v127;
      v6 = v128;
    }

    else
    {
      v40 = -1 << *(v37 + 32);
      v38 = v37;
      v15 = (v37 + 56);
      v39 = ~v40;
      v41 = -v40;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v6 = (v42 & *(v37 + 56));

      v4 = 0;
    }

    v110 = v39;
    v12 = ((v39 + 64) >> 6);
    v119 = NSUserActivityTypeBrowsingWeb;
    if (v38 < 0)
    {
      while (1)
      {
        v47 = __CocoaSet.Iterator.next()();
        if (!v47)
        {
          break;
        }

        v122 = v47;
        swift_dynamicCast();
        v46 = v123;
        v9 = v4;
        v45 = v6;
        if (!v123)
        {
          break;
        }

LABEL_20:
        a2 = v12;
        v118 = v6;
        a1 = v38;
        v48 = v46;
        v49 = [v46 activityType];
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v54;
        if (v50 == v53 && v52 == v54)
        {
          v52, v54, v55, v56, v57, v58, v59, v60;
          v61, v87, v88, v89, v90, v91, v92, v93;
LABEL_29:
          sub_10004A320(a1);
          v111, v94, v95, v96, v97, v98, v99, v100;
          v101 = [v48 webpageURL];

          if (v101)
          {
            v102 = v109;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v103 = 0;
            v15 = v116;
            v85 = v114;
            v86 = v121;
          }

          else
          {
            v103 = 1;
            v15 = v116;
            v85 = v114;
            v86 = v121;
            v102 = v109;
          }

          v112(v102, v103, 1, v85);
          sub_1000FAE44(v102, v15);
          goto LABEL_33;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v52, v64, v65, v66, v67, v68, v69, v70;
        v61, v71, v72, v73, v74, v75, v76, v77;
        if (v63)
        {
          goto LABEL_29;
        }

        v4 = v9;
        v6 = v45;
        v38 = a1;
        v12 = a2;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_27:
      sub_10004A320(v38);
      v111, v78, v79, v80, v81, v82, v83, v84;
      v15 = v116;
      v85 = v114;
      v112(v116, 1, 1, v114);
      v86 = v121;
LABEL_33:
      if ((*(v120 + 48))(v86, 1, v85) != 1)
      {
        sub_10003DD84(v86, &qword_1001FDF40, &qword_10017F858);
      }

LABEL_35:
      sub_1000F51C4(v15);
      v104 = objc_allocWithZone(NSURLCache);
      v105 = String._bridgeToObjectiveC()();
      v106 = [v104 initWithMemoryCapacity:104857600 diskCapacity:104857600 diskPath:v105];

      [objc_opt_self() setSharedURLCache:v106];
      v107 = [objc_opt_self() sharedInstance];
      [v107 syncASTDefaultsToNVRam];

      return sub_10003DD84(v15, &qword_1001FDF40, &qword_10017F858);
    }

LABEL_12:
    v43 = v4;
    v44 = v6;
    v9 = v4;
    if (v6)
    {
LABEL_16:
      v45 = (v44 - 1) & v44;
      v46 = *(*(v38 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v44)))));
      if (v46)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v9 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v44 = *&v15[8 * v9];
      ++v43;
      if (v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1000F41B4(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v22[-v10];
  if (qword_10020A548)
  {
    v12 = qword_1001FC7B0;
    v27 = qword_10020A548;
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_10020A4F8;
    v14 = static os_log_type_t.default.getter();
    v24 = v13;
    os_log(_:dso:log:type:_:)("## Waiting for exit semaphore signals..", 39, 2, &_mh_execute_header, v13, v14, &_swiftEmptyArrayStorage);
    v15 = qword_100201128;
    if (qword_100201128 < 0)
    {
      __break(1u);
    }

    else if (qword_100201128)
    {
      v23 = enum case for DispatchTimeInterval.seconds(_:);
      v16 = (v2 + 104);
      v17 = (v2 + 8);
      v18 = (v6 + 8);
      do
      {
        static DispatchTime.now()();
        v19 = v25;
        *v4 = v26;
        (*v16)(v4, v23, v19);
        + infix(_:_:)();
        (*v17)(v4, v19);
        v20 = *v18;
        (*v18)(v8, v5);
        OS_dispatch_semaphore.wait(timeout:)();
        v20(v11, v5);
        LOBYTE(v19) = static DispatchTimeoutResult.== infix(_:_:)();
        static os_log_type_t.default.getter();
        if (v19)
        {
          os_log(_:dso:log:type:_:)("## Timed out waiting for exit semaphore signal", 46, 2, &_mh_execute_header, v24);
        }

        else
        {
          os_log(_:dso:log:type:_:)("## Got exit semaphore signal", 28, 2, &_mh_execute_header, v24);
        }

        --v15;
      }

      while (v15);
    }

    else
    {
      v21 = v27;
    }
  }
}

void sub_1000F44E8(void (*a1)(id))
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (!sub_1000660CC())
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 applicationState];

    if (v6 != 2)
    {
      if (UIApp)
      {
        a1([UIApp suspend]);
        v8 = type metadata accessor for TaskPriority();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
        type metadata accessor for MainActor();
        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = &protocol witness table for MainActor;
        sub_1000539D8(0, 0, v4, &unk_100184008, v10);

        return;
      }

      goto LABEL_10;
    }
  }

  (a1)();
  v7 = UIApp;
  if (!UIApp)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  [v7 terminateWithSuccess];
}

uint64_t sub_1000F46C8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000F4778;

  return static Task<>.sleep(nanoseconds:)(500000000);
}

uint64_t sub_1000F4778()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000FB154;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000F48FC;
  }

  return _swift_task_switch(v4, v1, v3);
}

void sub_1000F48FC()
{
  if (UIApp)
  {
    v1 = UIApp;

    [v1 terminateWithSuccess];

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F4990(char a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (sub_1000660CC())
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = &protocol witness table for MainActor;
    *(v7 + 32) = a1;
    sub_1000539D8(0, 0, v4, &unk_100184018, v7);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v11 = sub_1000B95A8(sub_1000F7984, v8);

    [v11 showOnTopWithAnimated:1 completion:0];
    v9 = v11;
  }
}

uint64_t sub_1000F4B3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_1000F4BD4, v6, v5);
}

uint64_t sub_1000F4BD4()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000F4C98;

  return sub_100137348();
}

uint64_t sub_1000F4C98()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1000FB104, v3, v4);
}

double sub_1000F4DBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a3;
  sub_1000539D8(0, 0, v6, &unk_100184028, v9);

  return result;
}

uint64_t sub_1000F4ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_1000F4F70, v6, v5);
}

uint64_t sub_1000F4F70()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000F5034;

  return sub_100137348();
}

uint64_t sub_1000F5034()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1000FB104;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1000F5158;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000F5158()
{
  v1 = *(v0 + 48);

  sub_1000F6FF8(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000F51C4(uint64_t a1)
{
  v100 = type metadata accessor for LaunchURL(0);
  __chkstk_darwin(v100);
  v105 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v97 - v8;
  v9 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v9 - 8);
  v103 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v102 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017EC10;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_10003DFBC();
  *(v14 + 64) = v15;
  strcpy((v14 + 32), "handle(url:)");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  v16 = a1;
  sub_1000FAD5C(a1, v13);
  v17 = v5;
  v18 = *(v5 + 48);
  v19 = v18(v13, 1, v4);
  v101 = v5;
  if (v19 == 1)
  {
    sub_10003DD84(v13, &qword_1001FDF40, &qword_10017F858);
    v20 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    v21 = v105;
  }

  else
  {
    v98 = v1;
    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*(v17 + 8))(v13, v4);
    v20 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    if (v24)
    {
      *v20 = v22;
      v1 = v98;
      v21 = v105;
      goto LABEL_9;
    }

    v1 = v98;
    v21 = v105;
  }

  *v20 = 7104878;
  v24 = 0xE300000000000000;
LABEL_9:
  *(v14 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@ for url: %@", 17, 2, &_mh_execute_header, v102, v25, v14);
  v14, v26, v27, v28, v29, v30, v31, v32;
  v33 = v103;
  sub_1000FAD5C(v16, v103);
  v34 = &selRef_btManagerAvailableSemaphore;
  if (v18(v33, 1, v4) == 1)
  {
    sub_10003DD84(v33, &qword_1001FDF40, &qword_10017F858);
  }

  else
  {
    v35 = v101;
    v36 = v104;
    (*(v101 + 32))(v104, v33, v4);
    v37 = v99;
    (*(v35 + 16))(v99, v36, v4);
    sub_1000B0044(v37, v21);
    v38 = v100;
    v39 = *(v21 + *(v100 + 36));
    if ([v39 destination] - 1 > 3)
    {
      v105 = v4;
      v46 = *(v21 + *(v38 + 32));
      v47 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions);
      v48 = v1;
      *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions) = v46;

      v47, v49, v50, v51, v52, v53, v54, v55;
      if (v46)
      {
        if (*(v46 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v56 = Hasher._finalize()();
          v64 = -1 << *(v46 + 32);
          v65 = v56 & ~v64;
          if ((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
          {
            v66 = ~v64;
            while (*(*(v46 + 48) + v65) != 1)
            {
              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
              0xE000000000000000, v68, v69, v70, v71, v72, v73, v74;
              if (v67)
              {
                goto LABEL_24;
              }

              v65 = (v65 + 1) & v66;
              if (((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            0xE600000000000000, v57, v58, v59, v60, v61, v62, v63;
LABEL_24:
            v75 = [objc_opt_self() defaultCenter];
            v76 = String._bridgeToObjectiveC()();
            [v75 postNotificationName:v76 object:0];
          }
        }
      }

LABEL_25:
      v1 = v48;
      sub_1000F590C(v21);
      (*(v101 + 8))(v104, v105);
      v34 = &selRef_btManagerAvailableSemaphore;
    }

    else
    {
      v40 = v21;
      v41 = v4;
      if (qword_1001FC6A0 != -1)
      {
        swift_once();
      }

      v42 = *(v35 + 8);
      v43 = qword_10020A358;
      v42(v104, v41);
      v44 = *&v43[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow];
      *&v43[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] = v39;
      v45 = v39;

      v21 = v40;
    }

    sub_1000FACAC(v21);
  }

  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v77 = qword_10020A3A8;
  v78 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 8);
  v79 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 16);
  v81 = *(qword_10020A3A8 + 16);
  v80 = *(qword_10020A3A8 + 24);
  *(qword_10020A3A8 + 16) = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
  *(v77 + 24) = v78;
  *(v77 + 32) = v79;

  v80, v82, v83, v84, v85, v86, v87, v88;
  v81, v89, v90, v91, v92, v93, v94, v95;
  v96 = [objc_opt_self() defaultCenter];
  if (qword_1001FC710 != -1)
  {
    swift_once();
  }

  [v96 v34[339]];

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken))
  {
    sub_1000F8F98();
  }

  else
  {
    sub_1000F6048();
  }
}

void sub_1000F590C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LaunchURL(0);
  __chkstk_darwin(v4);
  v6 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(v7 + 28));
  v9 = v8[1];
  if (!v9)
  {
    v25 = objc_opt_self();
    v26 = [v25 standardUserDefaults];
    v27 = [v26 stringForKey:@"currentTicketNumber"];

    if (v27)
    {
      v167 = v2;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v31 = qword_10020A4F8;
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10017EC10;
      *(v32 + 56) = &type metadata for String;
      v33 = sub_10003DFBC();
      *(v32 + 64) = v33;
      *(v32 + 32) = v28;
      *(v32 + 40) = v30;

      v34 = URL.absoluteString.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v33;
      *(v32 + 72) = v34;
      *(v32 + 80) = v35;
      v36 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("## Opened With NO ticket URL (purging stale %@): %@", 53, 2, &_mh_execute_header, v31, v36, v32);
      v32, v37, v38, v39, v40, v41, v42, v43;
      v44 = [v25 standardUserDefaults];
      v30, v45, v46, v47, v48, v49, v50, v51;
      [v44 removeObjectForKey:@"currentTicketNumber"];

      v2 = v167;
    }

    else
    {
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v146 = qword_10020A4F8;
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_10017EC00;
      v148 = URL.absoluteString.getter();
      v150 = v149;
      *(v147 + 56) = &type metadata for String;
      *(v147 + 64) = sub_10003DFBC();
      *(v147 + 32) = v148;
      *(v147 + 40) = v150;
      v151 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("## Opened With NO ticket URL (nothing stale to purge): %@", 57, 2, &_mh_execute_header, v146, v151, v147);
      v147, v152, v153, v154, v155, v156, v157, v158;
    }

    sub_1000FAC48(a1, v6);
    v159 = *&v6[*(v4 + 20)];
    v128 = *&v6[*(v4 + 24)];

    sub_1000FACAC(v6);
    v143 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
    v145 = *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
    v144 = *(v143 + 8);
    *v143 = v159;
    goto LABEL_27;
  }

  v10 = *v8;
  if (qword_10020A508 && (v10 == qword_10020A500 ? (v11 = v9 == qword_10020A508) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v12 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    v14 = URL.absoluteString.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10003DFBC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## Opened With CURRENT ticket URL: %@", 37, 2, &_mh_execute_header, v12, v17, v13);
    v13, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v52 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10017EC00;
    v54 = URL.absoluteString.getter();
    v56 = v55;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_10003DFBC();
    *(v53 + 32) = v54;
    *(v53 + 40) = v56;
    v57 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## Opened With NEW ticket URL: %@", 33, 2, &_mh_execute_header, v52, v57, v53);
    v53, v58, v59, v60, v61, v62, v63, v64;
    v65 = [objc_opt_self() standardUserDefaults];
    v66 = String._bridgeToObjectiveC()();
    [v65 setObject:v66 forKey:@"currentTicketNumber"];
  }

  v67 = qword_10020A508;
  qword_10020A500 = v10;
  qword_10020A508 = v9;

  v67, v68, v69, v70, v71, v72, v73, v74;
  if ((sub_1000E6AB8(762733924, 0xE400000000000000, v10, v9) & 1) == 0)
  {
    v110 = [objc_allocWithZone(DADeviceLocal) init];
    v111 = [v110 state];

    v112 = [v111 serialNumber];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    sub_10003C49C(&qword_100201290, &qword_10017FDD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC00;
    *(inited + 32) = v113;
    v117 = inited + 32;
    *(inited + 40) = v115;
    v118 = sub_1000F7AB4(inited);
    swift_setDeallocating();
    sub_1000FAD08(v117);
    sub_1000F1B58(v118);
    v120 = v119;
    v118, v121, v122, v123, v124, v125, v126, v127;
    v128 = sub_1000F7A18(v120);
    v120, v129, v130, v131, v132, v133, v134, v135;
    v143 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
    v145 = *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
    v144 = *(v143 + 8);
    *v143 = &_swiftEmptySetSingleton;
LABEL_27:
    *(v143 + 8) = v128;
    *(v143 + 16) = 1;
    v144, v136, v137, v138, v139, v140, v141, v142;
    v145, v160, v161, v162, v163, v164, v165, v166;
    return;
  }

  v75 = sub_1000F7AB4(&off_1001BE0A0);
  sub_1000FAD08(&unk_1001BE0C0);
  sub_1000F1B58(v75);
  v77 = v76;
  v75, v78, v79, v80, v81, v82, v83, v84;
  v85 = sub_1000F7A18(v77);
  v77, v86, v87, v88, v89, v90, v91, v92;
  v93 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
  v95 = *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
  v94 = *(v93 + 8);
  *v93 = &_swiftEmptySetSingleton;
  *(v93 + 8) = v85;
  *(v93 + 16) = 1;
  v94, v96, v97, v98, v99, v100, v101, v102;

  v95, v103, v104, v105, v106, v107, v108, v109;
}

void sub_1000F6048()
{
  v1 = v0;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  v4 = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v2 + 56) = v4;
  v5 = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v6 = v3;
  v7 = static OS_os_log.default.getter();
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## Performing first action", 26, 2, &_mh_execute_header, v7, v8, v2);
  v2, v9, v10, v11, v12, v13, v14, v15;

  *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken) = 1;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.status.getter();
    v16 = SessionStatus.rawValue.getter();
    if (v16 == SessionStatus.rawValue.getter())
    {
      v18 = 0;
    }

    else
    {
      if (qword_1001FC7C0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = off_100200F00;
      off_100200F00 = 0x8000000000000000;
      v18 = 3;
      sub_100142160(3, 0x6C6172656E6567, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      off_100200F00 = v41;
      swift_endAccess();
    }

    sub_1000F9154(v18, v17);
  }

  if (sub_1000F9498())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10017EC00;
    *(v20 + 56) = v4;
    *(v20 + 64) = v5;
    *(v20 + 32) = v6;
    v21 = v6;
    v22 = static OS_os_log.default.getter();
    v23 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## Skipping Terms and Conditions", 32, 2, &_mh_execute_header, v22, v23, v20);
    v20, v24, v25, v26, v27, v28, v29, v30;

    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 1;
    v31 = sub_100066608();
    type metadata accessor for DashboardViewController();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = [v32 navigationController];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 view];

        if (v35)
        {
          [v35 alpha];
          if (v36 == 0.0)
          {
            v37 = swift_allocObject();
            *(v37 + 16) = v35;
            v38 = objc_opt_self();
            aBlock[4] = sub_10003D8B8;
            aBlock[5] = v37;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100031FA8;
            aBlock[3] = &unk_1001C5CA8;
            v39 = _Block_copy(aBlock);
            v40 = v35;

            [v38 animateWithDuration:0x10000 delay:v39 options:0 animations:0.375 completion:0.0];
            _Block_release(v39);

LABEL_22:
            sub_1000F8F98();
            return;
          }
        }
      }
    }

    goto LABEL_22;
  }
}

void sub_1000F64F4(unsigned __int8 a1, void *a2)
{
  v3 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    aBlock[4] = sub_1000FAB84;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C5CF8;
    v14 = _Block_copy(aBlock);
    v15 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1000F6794()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 homeButtonType];

      if (v4 == 2)
      {
        v5 = [objc_opt_self() sharedInstance];
        v6 = [v5 beginConsumingPressesForButtonKind:2 eventConsumer:v0 priority:0];

        *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer) = v6;

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000F68C0()
{
  v1 = v0;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v2 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Invalidating inactivity timer", 29, 2, &_mh_execute_header, v5, v6, v2);
  v2, v7, v8, v9, v10, v11, v12, v13;

  v14 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer) invalidate];
  v15 = *(v1 + v14);
  *(v1 + v14) = 0;
}

id sub_1000F6A28()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController;
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A380;
  *&v0[v1] = qword_10020A380;
  v3 = &v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter];
  *v3 = &_swiftEmptySetSingleton;
  *(v3 + 1) = &_swiftEmptySetSingleton;
  v3[16] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
  v5 = objc_allocWithZone(DSHardwareButtonEventMonitor);
  v6 = v2;
  *&v0[v4] = [v5 init];
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimeInterval] = 0x407E000000000000;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground] = 0;
  v7 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_launcherServiceManager;
  *&v0[v7] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1000F6BBC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000F6DA8()
{
  if (__OFADD__(qword_100201128, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v27 = v1;
  ++qword_100201128;
  v2 = qword_10020A548;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (v2)
  {
    if (qword_1001FC7B0 == -1)
    {
LABEL_4:
      v3 = qword_10020A4F8;
      *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
      *(v0 + 32) = v3;
      v4 = v3;
      v26 = static OS_os_log.default.getter();
      v5 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("## Exit semaphore is already registered, exiting", 48, 2, &_mh_execute_header, v26, v5, v0);
      v0, v6, v7, v8, v9, v10, v11, v12;
      v13 = v26;
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v14 = qword_10020A4F8;
  *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
  *(v0 + 32) = v14;
  v15 = v14;
  v16 = static OS_os_log.default.getter();
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## Registering an exit semaphore", 32, 2, &_mh_execute_header, v16, v17, v0);
  v0, v18, v19, v20, v21, v22, v23, v24;

  v25 = dispatch_semaphore_create(0);
  v13 = qword_10020A548;
  qword_10020A548 = v25;
LABEL_8:
}

void sub_1000F6FF8(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1001FC7B0 != -1)
  {
    goto LABEL_37;
  }

  while (2)
  {
    v2 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    v4 = sub_1000F208C(v1);
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10003DFBC();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v7 = static os_log_type_t.default.getter();
    v8 = 2;
    os_log(_:dso:log:type:_:)("## Exiting application for reason: %@", 37, 2, &_mh_execute_header, v2, v7, v3);
    v3, v9, v10, v11, v12, v13, v14, v15;
    v16 = [objc_opt_self() sharedInstance];
    v17 = 0;
    v22 = v16;
    switch(v1)
    {
      case 5:
      case 23:
        v17 = 5;
        goto LABEL_8;
      case 7:
      case 10:
      case 12:
      case 16:
      case 25:
        v17 = 6;
        goto LABEL_8;
      case 8:
      case 11:
      case 24:
        v17 = 4;
        goto LABEL_8;
      case 9:
      case 28:
        v17 = 1;
        goto LABEL_8;
      case 15:
        v8 = 7;
        goto LABEL_25;
      case 17:
        v8 = 12;
        goto LABEL_25;
      case 18:
        v8 = 8;
        goto LABEL_25;
      case 19:
        v8 = 9;
        goto LABEL_25;
      case 20:
        v8 = 10;
        goto LABEL_25;
      case 21:
        v8 = 11;
        goto LABEL_25;
      case 22:
LABEL_25:
        [v16 informExitingForReason:v8];
        goto LABEL_26;
      case 26:
      case 27:
        v17 = 3;
        goto LABEL_8;
      default:
LABEL_8:
        [v16 informExitingForReason:v17];
        if (v1 > 6u)
        {
          if (((1 << v1) & 0x1FFFF600) != 0)
          {
LABEL_26:
            if (sub_1000660CC())
            {
LABEL_11:
              if (sub_1000660CC())
              {
                type metadata accessor for RootViewController();
                sub_100060770(v1);
              }

              else
              {
                v18 = UIApp;
                if (!UIApp)
                {
                  __break(1u);
                  JUMPOUT(0x1000F7320);
                }

LABEL_14:
                v19 = v18;
                [v19 suspend];
              }

              goto LABEL_28;
            }
          }

          else if (((1 << v1) & 0x900) != 0)
          {
            goto LABEL_11;
          }

          type metadata accessor for AppDelegate();
          sub_1000F1D80();
          goto LABEL_28;
        }

        if (v1 - 1 < 5)
        {
          goto LABEL_26;
        }

        if (!v1)
        {
          v1 = objc_opt_self();
          v20 = [objc_msgSend(v1 "currentPlatform")];
          swift_unknownObjectRelease();
          if (v20)
          {
            v21 = [v1 currentPlatform];
            goto LABEL_32;
          }

          if (sub_1000660CC())
          {
            sub_100066220();
            goto LABEL_28;
          }

          v18 = UIApp;
          if (UIApp)
          {
            goto LABEL_14;
          }

          __break(1u);
LABEL_37:
          swift_once();
          continue;
        }

        v21 = [objc_opt_self() currentPlatform];
LABEL_32:
        [v21 exitCheckerBoard];
        swift_unknownObjectRelease();
LABEL_28:

        return;
    }
  }
}

uint64_t sub_1000F73AC()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

double sub_1000F73EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F7404()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000F743C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000F46C8();
}

void sub_1000F74E8(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0xFu)
  {
    if (a1 == 14)
    {
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v18 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v18)
      {
        [v18 setResultCode:-4];
      }

      v11 = 14;
      goto LABEL_27;
    }

    if (a1 == 15)
    {
      v11 = 15;
LABEL_27:

      sub_1000F6FF8(v11);
      return;
    }

LABEL_12:
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v17 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v17)
    {
      [v17 setResultCode:-1];
    }

    v11 = a1;
    goto LABEL_27;
  }

  if (a1 == 18)
  {
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v19 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v19)
    {
      [v19 setResultCode:-2];
    }

    v11 = 18;
    goto LABEL_27;
  }

  if (a1 != 16)
  {
    goto LABEL_12;
  }

  if (qword_1001FC840 != -1)
  {
    v20 = v8;
    swift_once();
    v8 = v20;
  }

  v12 = v8;
  v13 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v13)
  {
    [v13 setResultCode:-1];
  }

  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = 16;
  aBlock[4] = sub_1000F797C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5BB8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v10, v12);
}

uint64_t sub_1000F798C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1000681EC(v4, v5);
      sub_100108B3C(v6, v5);
      sub_10003DB48(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000F7A18(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000AF790();
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100078568(v6, *v4);
      sub_100108EC8(v13, v6, v5);
      sub_1000784F0(v13[0], v13[1], v7, v8, v9, v10, v11, v12);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v14;
  }

  return result;
}

uint64_t sub_1000F7AB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100109418(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1000F7B4C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000F2784;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C6298;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000F7DB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7, v1);
}

uint64_t sub_1000F7DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000494BC;

  return sub_1000F4B3C(a1, v4, v5, v6);
}

uint64_t sub_1000F7EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_1000F4ED8(a1, v4, v5, v6);
}

void sub_1000F7F54()
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
  *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
  *(v0 + 32) = v1;
  v2 = v1;
  v3 = static OS_os_log.default.getter();
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## Unregistering an exit semaphore", 34, 2, &_mh_execute_header, v3, v4, v0);
  v0, v5, v6, v7, v8, v9, v10, v11;

  v12 = qword_10020A548;
  qword_10020A548 = 0;

  qword_100201128 = 0;
}

unint64_t sub_1000F80A0(uint64_t a1, DARootViewController *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v3;
  }
}

void sub_1000F80F4()
{
  if (qword_100201120 != 2)
  {
LABEL_7:
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    [qword_10020A380 setNeedsUpdateOfSupportedInterfaceOrientations];
    return;
  }

  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (!v1)
  {
    return;
  }

  type metadata accessor for AppDelegate();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window);
    if (v3)
    {
      v4 = [v3 windowScene];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_allocWithZone(UIWindowSceneGeometryPreferencesIOS) initWithInterfaceOrientations:2];
        v8[4] = sub_1000F2620;
        v8[5] = 0;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_1000F271C;
        v8[3] = &unk_1001C6350;
        v7 = _Block_copy(v8);
        [v5 requestGeometryUpdateWithPreferences:v6 errorHandler:v7];
        _Block_release(v7);
        swift_unknownObjectRelease();

        goto LABEL_7;
      }
    }
  }

  swift_unknownObjectRelease();
}

void sub_1000F82D4(uint64_t a1, void *a2)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EC10;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10003DFBC();
  *(v5 + 32) = 0xD00000000000001FLL;
  *(v5 + 40) = 0x8000000100191E20;
  *(v5 + 96) = sub_10003E110(0, &qword_1002012A8, UISceneConnectionOptions_ptr);
  *(v5 + 104) = sub_1000AC8BC(&qword_1002012B0, &qword_1002012A8, UISceneConnectionOptions_ptr, &protocol conformance descriptor for NSObject);
  *(v5 + 72) = a2;
  v6 = a2;
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@. connectionOptions: %@", 28, 2, &_mh_execute_header, v4, v7, v5);
  v5, v8, v9, v10, v11, v12, v13, v14;

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A368;
  v16 = qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting + 4) == 1)
  {
    *v16 = _AXSMotionCuesMode();
    *(v16 + 4) = 0;
  }

  _AXSSetMotionCuesModeAndShowBanner();
  v17 = OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting;
  if (v15[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] == 2)
  {
    v15[v17] = _AXSAssistiveTouchEnabled() != 0;
  }

  _AXSAssistiveTouchSetEnabled();
  v18 = [objc_opt_self() sharedApplication];
  [v18 setIdleTimerDisabled:1];

  v19 = v15[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled];
  v15[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled] = 0;
  if (v19 == 1)
  {
    SBSSpringBoardServerPort();
    SBSetVoiceControlEnabled();
  }

  v20 = *&v15[OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue];
  v21 = swift_allocObject();
  v21[2] = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000FADEC;
  *(v22 + 24) = v21;
  v45 = sub_10003E41C;
  v46 = v22;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100060C48;
  v44 = &unk_1001C6108;
  v23 = _Block_copy(&v41);
  v24 = v15;

  dispatch_sync(v20, v23);
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v21 = [objc_opt_self() defaultCenter];
    if (qword_1001FC850 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v25 = qword_10020A650;
  v26 = [objc_opt_self() mainQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  v45 = sub_1000FADF4;
  v46 = v27;
  v41 = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100060B2C;
  v44 = &unk_1001C6158;
  v28 = _Block_copy(&v41);
  v29 = v2;

  v30 = [v21 addObserverForName:v25 object:0 queue:v26 usingBlock:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();

  LOBYTE(v26) = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v26 & 1) == 0)
  {
    v31 = [objc_opt_self() sharedInstance];
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = [v31 homeButtonType];

    if (v33 != 2)
    {
      [*&v29[OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor] addTarget:v29 action:"consume:" forButtonEvents:62914563 propagate:0];
    }
  }

  objc_opt_self();
  v34 = [objc_allocWithZone(UIWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  v35 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_window;
  v36 = *&v29[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window];
  *&v29[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window] = v34;
  v37 = v34;

  if (v37)
  {
    [v37 setRootViewController:*&v29[OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController]];
  }

  [*&v29[v35] makeKeyAndVisible];
  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v6;
  v39 = v6;
  v40 = v29;
  sub_100061268(sub_1000FAE3C, v38);
}

void sub_1000F896C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() _configurationWithPhysicalButton:3 behavior:1 behaviorOptions:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EBF0;
  *(inited + 32) = v4;
  v6 = v4;
  sub_100150354(inited);
  v8 = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = objc_allocWithZone(_UIPhysicalButtonInteraction);
  sub_10003E110(0, &qword_1002012D0, _UIPhysicalButtonConfiguration_ptr);
  sub_1000AC8BC(&qword_1002012D8, &qword_1002012D0, _UIPhysicalButtonConfiguration_ptr, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v8, v11, v12, v13, v14, v15, v16, v17;
  v18 = [v9 initWithConfigurations:isa delegate:a2];

  [a1 addInteraction:v18];
}

void sub_1000F8AF8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100066608();
  v9 = type metadata accessor for DashboardViewController();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    v10 = [objc_allocWithZone(v9) initWithStyle:1];
  }

  v11 = sub_100066608();
  sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    v26 = v1;
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v31 = sub_10003E0BC;
    v32 = v14;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100031FA8;
    v30 = &unk_1001C5D70;
    v15 = _Block_copy(&aBlock);
    v16 = v10;

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v26 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  v17 = [v10 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (v19)
    {
      [v19 alpha];
      if (v20 == 0.0)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v19;
        v22 = objc_opt_self();
        v31 = sub_10003E440;
        v32 = v21;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100031FA8;
        v30 = &unk_1001C5DC0;
        v23 = _Block_copy(&aBlock);
        v24 = v19;

        [v22 animateWithDuration:0x10000 delay:v23 options:0 animations:0.375 completion:0.0];
        _Block_release(v23);

        return;
      }
    }
  }
}

void sub_1000F8F98()
{
  v15 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v0 = swift_dynamicCastClass();
  if (v0 && *(*(v0 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) == 1)
  {
    v1 = v0;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v3 = qword_10020A4F8;
    *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v2 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
    *(v2 + 32) = v3;
    v4 = v3;
    v5 = static OS_os_log.default.getter();
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## Evaluating persistent only", 29, 2, &_mh_execute_header, v5, v6, v2);
    v2, v7, v8, v9, v10, v11, v12, v13;

    v14 = v15;
    sub_1000E8994(0, 0, v1);
  }
}

double sub_1000F9154(char a1, double result)
{
  if (a1 == 3)
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
    {
      if (qword_1001FC7E8 != -1)
      {
        swift_once();
      }

      if (SessionManager.currentSession.getter())
      {
        if ((Session.status.getter() & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          v5 = qword_10020A4F8;
          v6 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("User launched app to see enhanced logging confirmation pane", 59, 2, &_mh_execute_header, v5, v6, &_swiftEmptyArrayStorage);
          if (qword_1001FC6C8 != -1)
          {
            swift_once();
          }

          v7 = qword_10020A380;
          v8 = sub_100060D74();
          v9 = [v8 navigationItem];

          [v9 setHidesBackButton:1];
          v10 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
          [*&v7[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
          [v7 presentViewController:*&v7[v10] animated:0 completion:0];
          v11 = qword_10020A358;
          *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) = 3;
          v12 = v11;
          v13 = sub_100030C9C();
          v14 = swift_allocObject();
          *(v14 + 16) = v12;
          v15 = v12;
          sub_100039B84(v13, 0, sub_10003E1B0, v14);
        }

        else
        {
          sub_1000F8AF8();
          sub_1000F8F98();
        }
      }
    }

    else
    {
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v2 = qword_10020A4F8;
      v3 = static os_log_type_t.default.getter();

      os_log(_:dso:log:type:_:)("Found an active TimberLorry session, but ignoring because the app is in assessment mode", 87, 2, &_mh_execute_header, v2, v3, &_swiftEmptyArrayStorage);
    }
  }

  return v4;
}

uint64_t sub_1000F9498()
{
  v0 = objc_opt_self();
  v1 = [objc_msgSend(v0 "currentPlatform")];
  swift_unknownObjectRelease();
  if (v1)
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v3 BOOLForKey:@"SkipTermsAndConditions"];

  if (v4)
  {
    return 1;
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      return 1;
    }
  }

  v10 = [v2 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    return 1;
  }

  v14 = [objc_msgSend(v0 "currentPlatform")];
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1000F9680(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v12 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10017EC00;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10003DFBC();
  *(v13 + 32) = 0xD000000000000019;
  *(v13 + 40) = 0x8000000100191DE0;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@", 5, 2, &_mh_execute_header, v12, v14, v13);
  v13, v15, v16, v17, v18, v19, v20, v21;
  result = sub_10012570C(a1);
  if (result)
  {
    v23 = result;
    v24 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 16))(v4, v11, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_1000F51C4(v4);
    sub_10003DD84(v4, &qword_1001FDF40, &qword_10017F858);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

void sub_1000F994C()
{
  v1 = v0;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EC00;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10003DFBC();
  *(v3 + 32) = 0xD00000000000001CLL;
  *(v3 + 40) = 0x8000000100191DC0;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@", 5, 2, &_mh_execute_header, v2, v4, v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground);
  *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) = 1;
  sub_1000F2D90(v12);
  sub_100061268(0, 0);
  if ((*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground) = 1;
    if (qword_1001FC708 != -1)
    {
      swift_once();
    }

    v13 = qword_10020A3A8;
    v14 = v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
    v15 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
    v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 8);
    LOBYTE(v14) = *(v14 + 16);
    v17 = *(qword_10020A3A8 + 16);
    v18 = *(qword_10020A3A8 + 24);
    *(qword_10020A3A8 + 16) = v15;
    *(v13 + 24) = v16;
    *(v13 + 32) = v14;

    v18, v19, v20, v21, v22, v23, v24, v25;
    v17, v26, v27, v28, v29, v30, v31, v32;
    v33 = [objc_opt_self() defaultCenter];
    if (qword_1001FC710 != -1)
    {
      swift_once();
    }

    [v33 postNotificationName:qword_10020A3B0 object:0];
  }

  sub_1000F8F98();
}

void sub_1000F9B80()
{
  v1 = v0;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EC00;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10003DFBC();
  *(v3 + 32) = 0xD00000000000001BLL;
  *(v3 + 40) = 0x8000000100191DA0;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@", 5, 2, &_mh_execute_header, v2, v4, v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground);
  *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) = 0;
  sub_1000F2D90(v12);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100125DD8(0, 0);
  swift_endAccess();
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v13 = qword_10020A368;
  v14 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
  *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled) = (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState) & 1) == 0;
  v15 = sub_100050814();
  [v15 setNearbySharingEnabled:(*(v13 + v14) & 1) == 0];

  v16 = sub_100050814();
  [v16 setDiscoverableMode:*(v13 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting)];

  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_launcherServiceManager) informExitingForReason:0];
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) <= 0)
  {
    sub_1000F6FF8(12);
  }
}

void sub_1000F9F38()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  [v1 setInteger:0 forKey:@"InCurrentSession"];

  v2 = [v0 standardUserDefaults];
  v3 = [v2 stringForKey:@"currentTicketNumber"];

  if (v3)
  {

    v4 = [v0 standardUserDefaults];
    [v4 removeObjectForKey:@"currentTicketNumber"];
  }
}

void sub_1000FA658(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 BOOLForKey:v2];

    if ((v3 & 1) == 0)
    {
      v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
      swift_unknownObjectRelease();
      if ((v4 & 1) == 0)
      {
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10017EC00;
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v6 = qword_10020A4F8;
        *(v5 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        *(v5 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
        *(v5 + 32) = v6;
        v7 = v6;
        v8 = static OS_os_log.default.getter();
        v9 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("## Consuming lock button long press event", 41, 2, &_mh_execute_header, v8, v9, v5);
        v5, v10, v11, v12, v13, v14, v15, v16;

        sub_100088E48(0, 0);
      }
    }
  }
}

void sub_1000FA868(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [objc_msgSend(objc_opt_self() "currentPlatform")];
      swift_unknownObjectRelease();
      if ((v13 & 1) == 0)
      {
        sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
        v14 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_1000F6CCC;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C5C58;
        v15 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10005BD2C();
        sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
        sub_1000446A0();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v15);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_1000FABC8()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_1000FAC10()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000FAC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FACAC(uint64_t a1)
{
  v2 = type metadata accessor for LaunchURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FAD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FADFC()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000FAE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40, &qword_10017F858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExitReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FB008()
{
  result = qword_1002012E0;
  if (!qword_1002012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002012E0);
  }

  return result;
}

void sub_1000FB158()
{
  v1 = OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget];
  [v0 progress];
  if (v3 < v2)
  {
    v4 = *&v0[v1];
    v5 = OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer;
    [*&v0[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer] invalidate];
    if (v4 >= 1.0)
    {
      LODWORD(v6) = *&v0[v1];

      [v0 setProgress:1 animated:v6];
    }

    else
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v4;
      v13[4] = sub_1000FB660;
      v13[5] = v9;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100072168;
      v13[3] = &unk_1001C63C8;
      v10 = _Block_copy(v13);

      v11 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:0.0166666667];
      _Block_release(v10);
      v12 = *&v0[v5];
      *&v0[v5] = v11;
    }
  }
}

void sub_1000FB314(float a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressSpeed] * 0.016667;
    if (Strong[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_asymptotic] == 1)
    {
      v6 = Strong;
      [Strong progress];
      Strong = v6;
      v5 = v5 * ((a1 - v7) * 10.0);
    }

    v8 = Strong;
    [v8 progress];
    *&v10 = v5 + v9;
    [v8 setProgress:v10];
  }
}

id sub_1000FB4A8(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressSpeed] = 1007192201;
  v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_asymptotic] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_timerUpdateInterval] = 0x3F91111111111111;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FluidProgressView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000FB588(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FluidProgressView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000FB5F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000FB628()
{

  return _swift_deallocObject(v0, 28, 7, v1);
}

double sub_1000FB66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000FB684@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_100201340, &qword_100184150);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  sub_100044704(v1 + *(v10 + 20), v9, &qword_100201340, &qword_100184150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1000FB88C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    return *v5;
  }

  v9 = static os_log_type_t.fault.getter();
  v10 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  v11 = sub_1000FD264(v7, v6, 0);
  (*(v2 + 8))(v4, v1, v11);
  return v12;
}

uint64_t sub_1000FB9F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0x4044000000000000;
  v11 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  v12 = v11[5];
  *(a5 + v12) = swift_getKeyPath();
  sub_10003C49C(&qword_100201340, &qword_100184150);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v11[6];
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(a5 + v11[8]) = a1;
  if (a1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 <= a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  v16 = a5 + v11[10];
  *(a5 + v11[9]) = v15;
  *v16 = a3;
  v16[8] = a4 & 1;
  if ((a4 & 1) != 0 || a3 > 0x18 || ((1 << a3) & 0x1010100) == 0)
  {
    v17 = v11[7];
  }

  else
  {
    v17 = v11[7];
  }

  State.init(wrappedValue:)();
  v18 = a5 + v17;
  *v18 = v20;
  *(v18 + 1) = v21;
  [objc_msgSend(objc_opt_self() "currentPlatform")];
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for SelfServiceInstructionsFullScreenViewerView(uint64_t a1)
{
  result = qword_1002013A8;
  if (!qword_1002013A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000FBBE0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v30 = static Color.black.getter();
  v29 = static SafeAreaRegions.all.getter();
  v28 = static Edge.Set.all.getter();
  v7 = static Alignment.center.getter();
  v9 = v8;
  v26 = v2;
  sub_1000FBF58(v2, &v32);
  v46[10] = v42;
  v46[11] = v43;
  v46[6] = v38;
  v46[7] = v39;
  v46[8] = v40;
  v46[9] = v41;
  v46[2] = v34;
  v46[3] = v35;
  v46[4] = v36;
  v46[5] = v37;
  v46[0] = v32;
  v46[1] = v33;
  *(&v45[10] + 7) = v42;
  *(&v45[11] + 7) = v43;
  *(&v45[6] + 7) = v38;
  *(&v45[7] + 7) = v39;
  *(&v45[8] + 7) = v40;
  *(&v45[9] + 7) = v41;
  *(&v45[2] + 7) = v34;
  *(&v45[3] + 7) = v35;
  *(&v45[4] + 7) = v36;
  *(&v45[5] + 7) = v37;
  *(v45 + 7) = v32;
  *&v47 = v44;
  *(&v47 + 1) = v7;
  *(&v45[1] + 7) = v33;
  *(&v45[12] + 7) = v47;
  v49[10] = v42;
  v49[11] = v43;
  v49[6] = v38;
  v49[7] = v39;
  v49[9] = v41;
  v49[8] = v40;
  v49[2] = v34;
  v49[3] = v35;
  v49[4] = v36;
  v49[5] = v37;
  v48 = v9;
  *(&v45[13] + 7) = v9;
  v49[0] = v32;
  v49[1] = v33;
  v50 = v44;
  v51 = v7;
  v52 = v9;
  sub_100044704(v46, &v31, &qword_100201420, &qword_100184220);
  sub_1000FD194(v49);
  v10 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD1FC(v2, v10);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  sub_1000FD270(v10, v27 + v11);
  v12 = [objc_opt_self() defaultCenter];
  v13 = sub_10003C49C(&qword_100201428, &qword_100184228);
  NSNotificationCenter.publisher(for:object:)();

  sub_1000FD1FC(v26, v10);
  v14 = swift_allocObject();
  sub_1000FD270(v10, v14 + v11);
  v15 = v45[11];
  *(a1 + 177) = v45[10];
  *(a1 + 193) = v15;
  *(a1 + 209) = v45[12];
  *(a1 + 224) = *(&v45[12] + 15);
  v16 = v45[7];
  *(a1 + 113) = v45[6];
  *(a1 + 129) = v16;
  v17 = v45[9];
  *(a1 + 145) = v45[8];
  *(a1 + 161) = v17;
  v18 = v45[3];
  *(a1 + 49) = v45[2];
  *(a1 + 65) = v18;
  v19 = v45[5];
  *(a1 + 81) = v45[4];
  *(a1 + 97) = v19;
  result = *v45;
  v21 = v45[1];
  *(a1 + 17) = v45[0];
  v22 = v29;
  *a1 = v30;
  *(a1 + 8) = v22;
  *(a1 + 16) = v28;
  *(a1 + 33) = v21;
  v23 = v27;
  *(a1 + 240) = sub_1000FD2D4;
  *(a1 + 248) = v23;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v24 = (a1 + *(v13 + 56));
  *v24 = sub_1000FD2EC;
  v24[1] = v14;
  return result;
}

void sub_1000FBF58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000FD1FC(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1000FD270(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = v5[12];
  v11 = *(a1 + v5[11]);
  v12 = *(a1 + v10);
  v13 = *(a1 + v10 + 8);

  sub_10012C6B0(v14, sub_1000FD3C8, v9, v11, 0, v12, v13, v38);
  v32 = static SafeAreaRegions.all.getter();
  v31 = static Edge.Set.all.getter();
  v15 = (a1 + v5[9]);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v35) = *v15;
  *(&v35 + 1) = v17;
  sub_10003C49C(&qword_100201430, &qword_100184230);
  State.wrappedValue.getter();
  v18 = v33;
  sub_1000FB88C();
  if (v18 == 1 && qword_1001FC828 != -1)
  {
    swift_once();
  }

  LOBYTE(v35) = v16;
  *(&v35 + 1) = v17;
  State.wrappedValue.getter();
  v19 = v33;
  v20 = sub_1000FB88C();
  if ((v19 & 1) == 0 && qword_1001FC828 != -1)
  {
    v30 = v20;
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v34[7] = v35;
  *&v34[23] = v36;
  *&v34[39] = v37;
  if (v13)
  {
    goto LABEL_8;
  }

  if (v12 == 8 || v12 == 24)
  {
    v21 = 0xBFF921FB54442D18;
    goto LABEL_14;
  }

  if (v12 != 16)
  {
LABEL_8:
    v21 = 0;
  }

  else
  {
    v21 = 0x3FF921FB54442D18;
  }

LABEL_14:
  static UnitPoint.center.getter();
  v22 = v38[5];
  *(a2 + 64) = v38[4];
  *(a2 + 80) = v22;
  *(a2 + 96) = v38[6];
  v23 = v38[1];
  *a2 = v38[0];
  *(a2 + 16) = v23;
  v24 = v38[3];
  *(a2 + 32) = v38[2];
  *(a2 + 48) = v24;
  *(a2 + 112) = v32;
  *(a2 + 120) = v31;
  v25 = *v34;
  v26 = *&v34[16];
  v27 = *&v34[32];
  *(a2 + 168) = *&v34[47];
  *(a2 + 153) = v27;
  *(a2 + 137) = v26;
  *(a2 + 121) = v25;
  *(a2 + 176) = v21;
  *(a2 + 184) = v28;
  *(a2 + 192) = v29;
}

double sub_1000FC2F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000FD1FC(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FD270(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v12 = a1;
  sub_10003C49C(&qword_100201440, &qword_100184238);
  sub_1000FD62C();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v9 = a2 + *(sub_10003C49C(&qword_1002014B0, &qword_100184270) + 36);
  *v9 = a1;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_1000FC474(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  __chkstk_darwin(v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[3] = v9;
  v10 = sub_10005BAD0(v15);
  sub_1000FD1FC(a1, v10);
  sub_10003E010(v15, v14);
  if (swift_dynamicCast())
  {
    sub_1000FD36C(v8);
    qword_100201120 = 2;
    sub_1000F80F4();
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Unknown caller is requesting an orientation lock, ignoring", 58, 2, &_swiftEmptyArrayStorage);
  }

  sub_100044554(v15);
  [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  sub_1000FB684(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

double sub_1000FC69C@<D0>(uint64_t a2@<X8>)
{
  v3 = Image.init(systemName:)();
  v4 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v6 = static Color.white.getter();
  v7 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = static Color.black.getter();
  v9 = static Edge.Set.all.getter();
  *a2 = v3;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v11;
  *(a2 + 56) = v12;
  result = *&v13;
  *(a2 + 72) = v13;
  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  return result;
}

double sub_1000FC78C(uint64_t a1)
{
  v2 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  __chkstk_darwin(v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003E110(0, &qword_100201438, UIPageControl_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata appearance];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [v6 setCurrentPageIndicatorTintColor:v8];

  v9 = [ObjCClassFromMetadata appearance];
  v10 = [v7 whiteColor];
  v11 = [v10 colorWithAlphaComponent:0.5];

  [v9 setPageIndicatorTintColor:v11];
  v17[3] = v2;
  v12 = sub_10005BAD0(v17);
  sub_1000FD1FC(a1, v12);
  sub_10003E010(v17, v16);
  if (swift_dynamicCast())
  {
    sub_1000FD36C(v4);
    qword_100201120 = 30;
    sub_1000F80F4();
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Unknown caller is requesting an orientation lock, ignoring", 58, 2, &_swiftEmptyArrayStorage);
  }

  return sub_100044554(v17);
}

void sub_1000FC9D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0) + 40) + 8) == 1)
  {
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 connectedScenes];

    sub_10003E110(0, &qword_1001FD3F0, UIScene_ptr);
    sub_10004A2B8();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = a2;
    if ((v5 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v7 = v39;
      v6 = v40;
      v8 = v41;
      v9 = v42;
      v10 = v43;
    }

    else
    {
      v11 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v5 + 56);

      v9 = 0;
      v7 = v5;
    }

    v14 = (v8 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (v10)
    {
LABEL_13:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (v19)
      {
        while ([v19 activationState])
        {

          v9 = v17;
          v10 = v18;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v19 = v38;
            v17 = v9;
            v18 = v10;
            if (v38)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        sub_10004A320(v7);
        v5, v27, v28, v29, v30, v31, v32, v33;
        objc_opt_self();
        v34 = swift_dynamicCastObjCClass();
        if (v34)
        {
          v35 = [v34 effectiveGeometry];
          v36 = [v35 interfaceOrientation];

          sub_1000FD35C(v36);

          sub_10003C49C(&qword_100201430, &qword_100184230);
          State.wrappedValue.setter();
        }
      }

      else
      {
LABEL_20:
        sub_10004A320(v7);
        v5, v20, v21, v22, v23, v24, v25, v26;
      }
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_20;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1000FCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C49C(&qword_100201348, qword_100184180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000FCE20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003C49C(&qword_100201348, qword_100184180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_1000FCEE8(uint64_t a1)
{
  sub_1000FD05C(319, &qword_1002013B8, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000FD05C(319, &qword_1002013C0, type metadata accessor for CGSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000FD0C0();
      if (v3 <= 0x3F)
      {
        sub_1000FD110(319);
        if (v4 <= 0x3F)
        {
          sub_1000FD05C(319, &unk_1002013D8, type metadata accessor for UIInterfaceOrientationMask, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000FD05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000FD0C0()
{
  if (!qword_1002013C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1002013C8);
    }
  }
}

void sub_1000FD110(uint64_t a1)
{
  if (!qword_1002013D0)
  {
    sub_10003E110(255, &unk_100202950, UIImage_ptr);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1002013D0);
    }
  }
}

uint64_t sub_1000FD194(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201420, &qword_100184220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FD1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1000FD264(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000FD270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000FD2EC(uint64_t a1)
{
  v3 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000FC9D0(a1, v4);
}

uint64_t sub_1000FD36C(uint64_t a1)
{
  v2 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000FD3C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000FC2F0(v4, a1);
}

uint64_t sub_1000FD448()
{
  v1 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[5];
  sub_10003C49C(&qword_100201340, &qword_100184150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1000FD264(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));

  *(v5 + v1[8]), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, v3 + v4, v2 | 7, v15);
}

uint64_t sub_1000FD5B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000FD62C()
{
  result = qword_100201448;
  if (!qword_100201448)
  {
    sub_10003C4E4(&qword_100201440, &qword_100184238);
    sub_1000FD6E4();
    sub_10005C71C(&qword_1002014A0, &qword_1002014A8, &qword_100185620, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201448);
  }

  return result;
}

unint64_t sub_1000FD6E4()
{
  result = qword_100201450;
  if (!qword_100201450)
  {
    sub_10003C4E4(&qword_100201458, &qword_100184240);
    sub_1000FD79C();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8, &unk_100182850, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201450);
  }

  return result;
}

unint64_t sub_1000FD79C()
{
  result = qword_100201460;
  if (!qword_100201460)
  {
    sub_10003C4E4(&qword_100201468, &qword_100184248);
    sub_1000FD828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201460);
  }

  return result;
}

unint64_t sub_1000FD828()
{
  result = qword_100201470;
  if (!qword_100201470)
  {
    sub_10003C4E4(&qword_100201478, &qword_100184250);
    sub_1000FD8E0();
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218, &qword_100181A40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201470);
  }

  return result;
}

unint64_t sub_1000FD8E0()
{
  result = qword_100201480;
  if (!qword_100201480)
  {
    sub_10003C4E4(&qword_100201488, &qword_100184258);
    sub_10005C71C(&qword_100201490, &qword_100201498, &unk_100184260, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201480);
  }

  return result;
}

uint64_t sub_1000FD9F8()
{
  type metadata accessor for SessionManager();
  swift_allocObject();
  result = SessionManager.init()();
  qword_10020A550 = result;
  return result;
}

id sub_1000FDACC()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_delegate] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state;
  v2 = sub_1000D59EC(&_swiftEmptyArrayStorage);
  v3 = objc_allocWithZone(DADeviceState);
  v4 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v3 initWithSerialNumber:v4 attributes:isa];

  *&v0[v1] = v13;
  v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_isLocal] = 1;
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateInterval] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for DeviceEnhancedLogging();
  v14 = objc_msgSendSuper2(&v18, "init");
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    sub_1000FEEC4(&qword_100201510, v15, type metadata accessor for DeviceEnhancedLogging, &unk_100184310);
    v14;
    Session.delegate.setter();
    v16 = Session.status.getter();
    sub_1000FDD58(v16);
  }

  return v14;
}

void sub_1000FDD58(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v30 - v11;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
        v36 = sub_1000FE4BC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65A8;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_19;
        }

        v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
        v36 = sub_1000FE4CC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C6580;
      }
    }

    else
    {
      v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
      if (a1 == 4)
      {
        v36 = sub_1000FEFA0;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65F8;
      }

      else
      {
        v36 = sub_1000FE4AC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65D0;
      }
    }
  }

  else if (a1 > 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    if (a1 == 2)
    {
      v36 = sub_1000FE48C;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v14 = &unk_1001C6648;
    }

    else
    {
      v36 = sub_1000FEFA0;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v14 = &unk_1001C6620;
    }
  }

  else
  {
    if (!a1)
    {
      v15 = &v30 - v11;
      v16 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
      [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] invalidate];
      v17 = *&v1[v16];
      *&v1[v16] = 0;
      v12 = v15;

      goto LABEL_19;
    }

    if (a1 != 1)
    {
      goto LABEL_19;
    }

    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    v36 = sub_1000FE47C;
    v37 = 0;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v14 = &unk_1001C6670;
  }

  v34 = sub_100072168;
  v35 = v14;
  v18 = _Block_copy(&aBlock);
  [v13 transactionWithBlock:v18];
  _Block_release(v18);
LABEL_19:
  v19 = SessionStatus.rawValue.getter();
  if (v19 == SessionStatus.rawValue.getter())
  {
    v20 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v36 = sub_1000FEEAC;
    v37 = v21;
    v31 = v8;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100072168;
    v35 = &unk_1001C6508;
    v22 = _Block_copy(&aBlock);
    v30 = v7;
    v23 = v1;

    [v20 transactionWithBlock:v22];
    _Block_release(v22);
    sub_100057B68();
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v36 = sub_1000FEEB4;
    v37 = v25;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100031FA8;
    v35 = &unk_1001C6558;
    v26 = _Block_copy(&aBlock);
    v27 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000FEEC4(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v4 + 8))(v6, v3);
    (*(v31 + 8))(v12, v30);
  }

  else
  {
    v28 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
    [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] invalidate];
    v29 = *&v1[v28];
    *&v1[v28] = 0;
  }
}

void sub_1000FE4DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v8[4] = sub_1000FEEBC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100072168;
  v8[3] = &unk_1001C66C0;
  v4 = _Block_copy(v8);
  v5 = a1;

  v6 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:30.0];
  _Block_release(v4);
  v7 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer];
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] = v6;
}

void sub_1000FE5F0(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_1000FEFDC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100072168;
  v7[3] = &unk_1001C6710;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 transactionWithBlock:v5];
  _Block_release(v5);
}

id sub_1000FE6D4(void *a1)
{
  v2 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v5 = 0.0;
  if (SessionManager.currentSession.getter())
  {
    Session.projectedCollectionEndDate.getter();

    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_10003DD84(v4, &unk_1001FD540, &unk_10017F278);
    }

    else
    {
      Date.timeIntervalSinceNow.getter();
      v5 = v8;
      (*(v7 + 8))(v4, v6);
    }
  }

  return [a1 setDurationRemaining:v5];
}

id sub_1000FE864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnhancedLogging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FE918()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 1);
}

void sub_1000FE97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000FEDE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072168;
  aBlock[3] = &unk_1001C64B8;
  v11 = _Block_copy(aBlock);

  [v8 transactionWithBlock:v11];
  _Block_release(v11);
}

uint64_t sub_1000FEB30(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_1000FEB60(unsigned __int8 *a1)
{
  v2 = v1;
  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10003DAAC(v4, qword_10020A528);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Enhanced logging session ended with error: %@", v7, 0xCu);
    sub_10003DD84(v8, &qword_1001FF0C0, &unk_10017ED00);
  }

  v11 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
  [*(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer) invalidate];
  v12 = *(v2 + v11);
  *(v2 + v11) = 0;

  if (a1)
  {
    swift_errorRetain();
    v13 = sub_1000B99C8(a1, sub_1000FE918, 0);
    [v13 showOnTopWithAnimated:1 completion:0];
  }
}

uint64_t sub_1000FED58()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7, v6);
}

id sub_1000FEDE0(void *a1)
{
  type metadata accessor for Date();
  Date.timeIntervalSinceNow.getter();

  return [a1 setDurationRemaining:?];
}

double sub_1000FEE5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000FEE74()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000FEEC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1000FEF20()
{
  result = qword_100201518;
  if (!qword_100201518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201518);
  }

  return result;
}

double sub_1000FF0D4(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.attachConsentForm(data:)();
  }

  return result;
}

id sub_1000FF2D0(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[4];
    v5 = a1[2];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v17 = objc_opt_self();
    sub_1001003A0(a1, v57);
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 _systemImageNamed:v18 fallback:v19];

    if (!v20)
    {
      goto LABEL_14;
    }

    v9 = [v20 imageWithTintColor:v3];

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v21 = [objc_opt_self() configurationWithFont:v5];
    v22 = [v9 imageWithConfiguration:v21];

    v2, v23, v24, v25, v26, v27, v28, v29;
    return v22;
  }

  if (qword_1001FC808 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A570;
  if (!*(qword_10020A570 + 16) || (v11 = sub_100068EB8(), (v12 & 1) == 0))
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v39 = qword_10020A4F8;
    *(v38 + 56) = sub_1000AF424();
    *(v38 + 64) = sub_1000516BC();
    *(v38 + 32) = v39;
    v40 = v39;
    v41 = static OS_os_log.default.getter();
    v42 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Failed to load glyph attributes", 31, 2, &_mh_execute_header, v41, v42, v38);
    v38, v43, v44, v45, v46, v47, v48, v49;

    return 0;
  }

  v13 = (*(v10 + 56) + 40 * v11);
  v2 = v13[1];
  v14 = v13[2];
  v15 = v13[3];
  v4 = v13[4];
  v16 = v4;

  v5 = v14;
  v3 = v15;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = v4;
  sub_1001003A0(a1, v57);
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  if (!v8)
  {

    v2, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_19;
  }

  v9 = [v8 imageWithTintColor:v6 renderingMode:1];

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:

  v2, v31, v32, v33, v34, v35, v36, v37;
LABEL_19:

  return 0;
}

id sub_1000FF634()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  qword_10020A558 = result;
  return result;
}

id sub_1000FF67C()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.607843137 alpha:1.0];
  qword_10020A560 = result;
  return result;
}

id sub_1000FF6BC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  qword_10020A568 = result;
  return result;
}

void *sub_1000FF704()
{
  result = sub_1000FF724();
  qword_10020A570 = result;
  return result;
}

void *sub_1000FF724()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection];

  v2 = 0;
  v3 = 0xD00000000000001CLL;
  if (!v1)
  {
    v3 = 0xD00000000000001DLL;
  }

  v123 = v3;
  if (v1)
  {
    v4 = "Failed to load glyph attributes";
  }

  else
  {
    v4 = "arrow.uturn.left.circle.fill";
  }

  v122 = v4 | 0x8000000000000000;
  if (v1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v1)
  {
    v6 = "arrow.uturn.right.circle.fill";
  }

  else
  {
    v6 = "chevron.left.circle.fill";
  }

  v120 = v6 | 0x8000000000000000;
  v121 = v5;
  while (1)
  {
    v11 = *(&off_1001BDA48 + v2 + 32);
    v12 = objc_opt_self();
    if (v11 > 2)
    {
      break;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        v13 = [v12 systemFontOfSize:22.0];
        v14 = [objc_opt_self() whiteColor];
        if (qword_1001FC7F8 != -1)
        {
          swift_once();
        }

        v15 = qword_10020A560;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_100068EB8();
        v27 = _swiftEmptyDictionarySingleton[2];
        v28 = (v26 & 1) == 0;
        v9 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v9)
        {
          goto LABEL_120;
        }

        v30 = v26;
        if (_swiftEmptyDictionarySingleton[3] < v29)
        {
          sub_10013FE50(v29, isUniquelyReferenced_nonNull_native);
          v25 = sub_100068EB8();
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_127;
          }

          goto LABEL_68;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_68:
          if (v30)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v103 = v25;
          sub_100142F88();
          v25 = v103;
          if (v30)
          {
LABEL_69:
            v86 = (_swiftEmptyDictionarySingleton[7] + 40 * v25);
            v88 = v86[1];
            v87 = v86[2];
            v89 = v86[3];
            v90 = v86[4];
            *v86 = 0xD000000000000010;
            v91 = 0x80000001001922A0;
            goto LABEL_88;
          }
        }

        _swiftEmptyDictionarySingleton[(v25 >> 6) + 8] |= 1 << v25;
        *(_swiftEmptyDictionarySingleton[6] + v25) = 1;
        v104 = (_swiftEmptyDictionarySingleton[7] + 40 * v25);
        *v104 = 0xD000000000000010;
        v104[1] = 0x80000001001922A0;
        v104[2] = v13;
        v104[3] = v14;
        v104[4] = v15;
        v105 = _swiftEmptyDictionarySingleton[2];
        v9 = __OFADD__(v105, 1);
        v10 = v105 + 1;
        if (v9)
        {
          goto LABEL_123;
        }

        goto LABEL_14;
      }

      v13 = [v12 systemFontOfSize:22.0];
      v14 = [objc_opt_self() whiteColor];
      if (qword_1001FC7F0 != -1)
      {
        swift_once();
      }

      v15 = qword_10020A558;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_100068EB8();
      v53 = _swiftEmptyDictionarySingleton[2];
      v54 = (v52 & 1) == 0;
      v9 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v9)
      {
        goto LABEL_117;
      }

      v56 = v52;
      if (_swiftEmptyDictionarySingleton[3] < v55)
      {
        sub_10013FE50(v55, v51);
        v17 = sub_100068EB8();
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_127;
        }

        goto LABEL_71;
      }

      if (v51)
      {
LABEL_71:
        if (v56)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v106 = v17;
        sub_100142F88();
        v17 = v106;
        if (v56)
        {
          goto LABEL_77;
        }
      }

      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + v17) = 2;
      v92 = (_swiftEmptyDictionarySingleton[7] + 40 * v17);
      *v92 = 0xD000000000000014;
      v92[1] = 0x8000000100192280;
      v92[2] = v13;
      v92[3] = v14;
      v92[4] = v15;
      v93 = _swiftEmptyDictionarySingleton[2];
      v9 = __OFADD__(v93, 1);
      v10 = v93 + 1;
      if (v9)
      {
        goto LABEL_125;
      }

      goto LABEL_14;
    }

    v40 = [v12 systemFontOfSize:22.0];
    v41 = [objc_opt_self() whiteColor];
    if (qword_1001FC7F0 != -1)
    {
      swift_once();
    }

    v42 = qword_10020A558;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v44 = sub_100068EB8();
    v46 = _swiftEmptyDictionarySingleton[2];
    v47 = (v45 & 1) == 0;
    v9 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v9)
    {
      goto LABEL_119;
    }

    v49 = v45;
    if (_swiftEmptyDictionarySingleton[3] >= v48)
    {
      if ((v43 & 1) == 0)
      {
        v102 = v44;
        sub_100142F88();
        v44 = v102;
        if (v49)
        {
LABEL_66:
          v74 = (_swiftEmptyDictionarySingleton[7] + 40 * v44);
          v75 = v74[1];
          v76 = v74[2];
          v77 = v74[3];
          v78 = v74[4];
          *v74 = 0xD000000000000010;
          v74[1] = 0x80000001001922A0;
          v74[2] = v40;
          v74[3] = v41;
          v74[4] = v42;

          v75, v79, v80, v81, v82, v83, v84, v85;
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_10013FE50(v48, v43);
      v44 = sub_100068EB8();
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v49)
    {
      goto LABEL_66;
    }

LABEL_13:
    _swiftEmptyDictionarySingleton[(v44 >> 6) + 8] |= 1 << v44;
    *(_swiftEmptyDictionarySingleton[6] + v44) = 0;
    v7 = (_swiftEmptyDictionarySingleton[7] + 40 * v44);
    *v7 = 0xD000000000000010;
    v7[1] = 0x80000001001922A0;
    v7[2] = v40;
    v7[3] = v41;
    v7[4] = v42;
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_121;
    }

LABEL_14:
    _swiftEmptyDictionarySingleton[2] = v10;
LABEL_15:
    if (++v2 == 7)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  if (v11 > 4)
  {
    if (v11 == 5)
    {
      v13 = [v12 systemFontOfSize:32.0];
      v14 = [objc_opt_self() whiteColor];
      if (qword_1001FC7F8 != -1)
      {
        swift_once();
      }

      v15 = qword_10020A560;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = sub_100068EB8();
      v35 = _swiftEmptyDictionarySingleton[2];
      v36 = (v34 & 1) == 0;
      v9 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v9)
      {
        goto LABEL_116;
      }

      v38 = v34;
      if (_swiftEmptyDictionarySingleton[3] < v37)
      {
        sub_10013FE50(v37, v32);
        v33 = sub_100068EB8();
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_127;
        }

        goto LABEL_79;
      }

      if (v32)
      {
LABEL_79:
        if (v38)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v110 = v33;
        sub_100142F88();
        v33 = v110;
        if (v38)
        {
LABEL_80:
          v86 = (_swiftEmptyDictionarySingleton[7] + 40 * v33);
          v88 = v86[1];
          v87 = v86[2];
          v89 = v86[3];
          v90 = v86[4];
          *v86 = 0xD000000000000011;
          v91 = 0x800000010018CF60;
          goto LABEL_88;
        }
      }

      _swiftEmptyDictionarySingleton[(v33 >> 6) + 8] |= 1 << v33;
      *(_swiftEmptyDictionarySingleton[6] + v33) = 5;
      v111 = (_swiftEmptyDictionarySingleton[7] + 40 * v33);
      *v111 = 0xD000000000000011;
      v111[1] = 0x800000010018CF60;
      v111[2] = v13;
      v111[3] = v14;
      v111[4] = v15;
      v112 = _swiftEmptyDictionarySingleton[2];
      v9 = __OFADD__(v112, 1);
      v10 = v112 + 1;
      if (v9)
      {
        goto LABEL_124;
      }

      goto LABEL_14;
    }

    v13 = [v12 systemFontOfSize:32.0];
    v14 = [objc_opt_self() whiteColor];
    if (qword_1001FC800 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A568;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_100068EB8();
    v69 = _swiftEmptyDictionarySingleton[2];
    v70 = (v68 & 1) == 0;
    v9 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v9)
    {
      goto LABEL_118;
    }

    v72 = v68;
    if (_swiftEmptyDictionarySingleton[3] >= v71)
    {
      if ((v66 & 1) == 0)
      {
        v116 = v67;
        sub_100142F88();
        v67 = v116;
        if (v72)
        {
LABEL_86:
          v86 = (_swiftEmptyDictionarySingleton[7] + 40 * v67);
          v88 = v86[1];
          v87 = v86[2];
          v89 = v86[3];
          v90 = v86[4];
          v91 = v122;
          v94 = v123;
LABEL_87:
          *v86 = v94;
LABEL_88:
          v86[1] = v91;
          v86[2] = v13;
          v86[3] = v14;
          v86[4] = v15;

          v88, v95, v96, v97, v98, v99, v100, v101;
          goto LABEL_15;
        }

        goto LABEL_110;
      }
    }

    else
    {
      sub_10013FE50(v71, v66);
      v67 = sub_100068EB8();
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v72)
    {
      goto LABEL_86;
    }

LABEL_110:
    _swiftEmptyDictionarySingleton[(v67 >> 6) + 8] |= 1 << v67;
    *(_swiftEmptyDictionarySingleton[6] + v67) = 6;
    v117 = (_swiftEmptyDictionarySingleton[7] + 40 * v67);
    *v117 = v123;
    v117[1] = v122;
    v117[2] = v13;
    v117[3] = v14;
    v117[4] = v15;
    v118 = _swiftEmptyDictionarySingleton[2];
    v9 = __OFADD__(v118, 1);
    v10 = v118 + 1;
    if (v9)
    {
      __break(1u);
      return _swiftEmptyDictionarySingleton;
    }

    goto LABEL_14;
  }

  if (v11 != 3)
  {
    v13 = [v12 systemFontOfSize:32.0];
    v14 = [objc_opt_self() whiteColor];
    if (qword_1001FC7F0 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A558;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = sub_100068EB8();
    v61 = _swiftEmptyDictionarySingleton[2];
    v62 = (v60 & 1) == 0;
    v9 = __OFADD__(v61, v62);
    v63 = v61 + v62;
    if (v9)
    {
      goto LABEL_115;
    }

    v64 = v60;
    if (_swiftEmptyDictionarySingleton[3] >= v63)
    {
      if ((v58 & 1) == 0)
      {
        v113 = v59;
        sub_100142F88();
        v59 = v113;
        if (v64)
        {
LABEL_83:
          v86 = (_swiftEmptyDictionarySingleton[7] + 40 * v59);
          v88 = v86[1];
          v87 = v86[2];
          v89 = v86[3];
          v90 = v86[4];
          v91 = v120;
          v94 = v121;
          goto LABEL_87;
        }

LABEL_106:
        _swiftEmptyDictionarySingleton[(v59 >> 6) + 8] |= 1 << v59;
        *(_swiftEmptyDictionarySingleton[6] + v59) = 4;
        v114 = (_swiftEmptyDictionarySingleton[7] + 40 * v59);
        *v114 = v121;
        v114[1] = v120;
        v114[2] = v13;
        v114[3] = v14;
        v114[4] = v15;
        v115 = _swiftEmptyDictionarySingleton[2];
        v9 = __OFADD__(v115, 1);
        v10 = v115 + 1;
        if (v9)
        {
          goto LABEL_122;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_10013FE50(v63, v58);
      v59 = sub_100068EB8();
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v64)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

  v13 = [v12 systemFontOfSize:22.0];
  v14 = [objc_opt_self() whiteColor];
  if (qword_1001FC7F8 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A560;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_100068EB8();
  v19 = _swiftEmptyDictionarySingleton[2];
  v20 = (v18 & 1) == 0;
  v9 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (!v9)
  {
    v22 = v18;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_10013FE50(v21, v16);
      v17 = sub_100068EB8();
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_127;
      }

      goto LABEL_76;
    }

    if (v16)
    {
LABEL_76:
      if (v22)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v107 = v17;
      sub_100142F88();
      v17 = v107;
      if (v22)
      {
LABEL_77:
        v86 = (_swiftEmptyDictionarySingleton[7] + 40 * v17);
        v88 = v86[1];
        v87 = v86[2];
        v89 = v86[3];
        v90 = v86[4];
        *v86 = 0xD000000000000014;
        v91 = 0x8000000100192280;
        goto LABEL_88;
      }
    }

    _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
    *(_swiftEmptyDictionarySingleton[6] + v17) = 3;
    v108 = (_swiftEmptyDictionarySingleton[7] + 40 * v17);
    *v108 = 0xD000000000000014;
    v108[1] = 0x8000000100192280;
    v108[2] = v13;
    v108[3] = v14;
    v108[4] = v15;
    v109 = _swiftEmptyDictionarySingleton[2];
    v9 = __OFADD__(v109, 1);
    v10 = v109 + 1;
    if (v9)
    {
      goto LABEL_126;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001003A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201520, &qword_100184420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100100410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100100458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001004C4()
{
  result = qword_100201528;
  if (!qword_100201528)
  {
    sub_10003C4E4(&qword_100201530, qword_100184480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201528);
  }

  return result;
}

unint64_t sub_10010052C()
{
  result = qword_100201538;
  if (!qword_100201538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201538);
  }

  return result;
}

uint64_t sub_100100580(int a1)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return 0x7674656C707061;
      case 6:
        return 0x6863746177;
      case 11:
        return 0x6E6F69736976;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656E6F687069;
  }

  result = 1684107369;
  if (a1 == 2)
  {
    return 1685024873;
  }

  if (a1 != 3)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_100100644()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView);
  [v1 hide];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView);
  v3 = [objc_opt_self() labelColor];
  [v2 setBackgroundColor:v3];

  return [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
}

id sub_1001006FC()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];

  return [v0 addSubview:v1];
}

void sub_100100758()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100180E60;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];
  v5 = [v4 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:1.0];

  *(v3 + 40) = v10;
  v11 = [v4 widthAnchor];
  v12 = [v1 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-12.0];

  *(v3 + 48) = v13;
  v14 = [v4 heightAnchor];
  v15 = [v1 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-12.0];

  *(v3 + 56) = v16;
  v17 = *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView];
  v18 = [v17 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v3 + 64) = v20;
  v21 = [v17 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v3 + 72) = v23;
  v24 = [v17 leadingAnchor];
  v25 = [v1 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v3 + 80) = v26;
  v27 = [v17 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v3 + 88) = v29;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v30, v31, v32, v33, v34, v35, v36;
  [v2 activateConstraints:isa];
}

id sub_100100B34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_yOffset] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_padding] = 0xC028000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView;
  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = [objc_allocWithZone(DACheckAnimationView) initWithColor:v10 lineWidth:2.5 scale:0.33];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CheckmarkView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100100C70(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_yOffset] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_padding] = 0xC028000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView;
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = [objc_allocWithZone(DACheckAnimationView) initWithColor:v4 lineWidth:2.5 scale:0.33];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  *&v1[v6] = [objc_allocWithZone(UIView) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CheckmarkView();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100100DAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView);
}

id sub_100100DEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CheckmarkView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100100F64(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions] = &_swiftEmptyArrayStorage;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstructionList();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_100101044();
  }

  return v5;
}

void sub_100101044()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setDataSource:v0];
  [v1 setDelegate:v0];
  [v1 setScrollEnabled:0];
  [v1 setAllowsSelection:0];
  [v1 setShowsVerticalScrollIndicator:0];
  [v1 setSeparatorStyle:0];
  [v1 setRowHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedRowHeight:0.0];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  type metadata accessor for InstructionListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10017ED60;
  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6, v19, v20, v21, v22, v23, v24, v25;
  [v5 activateConstraints:isa];
}

id sub_10010144C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InstructionList();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001014F8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for InstructionListCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for InstructionListCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions);
    if (result < *(v7 + 16))
    {
      v8 = v7 + 24 * result;
      v9 = *(v8 + 48);
      v10 = &v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v11 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v12 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8];
      v13 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16];
      v14 = *(v8 + 32);
      *v10 = v14;
      *(v10 + 2) = v9;
      v15 = v14;
      swift_bridgeObjectRetain_n();
      v16 = v15;
      sub_1000A01EC(v11, v12, v13, v17, v18, v19, v20, v21);
      sub_10009F5E8();
      v9, v22, v23, v24, v25, v26, v27, v28;

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_10010178C()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

void sub_10010181C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for InstructionListCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for InstructionListCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v6 = IndexPath.section.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions);
    if (v6 < *(v7 + 16))
    {
      v8 = v7 + 24 * v6;
      v9 = *(v8 + 48);
      v10 = &v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v11 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v12 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8];
      v13 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16];
      v14 = *(v8 + 32);
      *v10 = v14;
      *(v10 + 2) = v9;
      v15 = v14;
      swift_bridgeObjectRetain_n();
      v16 = v15;
      sub_1000A01EC(v11, v12, v13, v17, v18, v19, v20, v21);
      sub_10009F5E8();
      v9, v22, v23, v24, v25, v26, v27, v28;

      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      v29 = [v5 contentView];
      [a1 frame];
      Width = CGRectGetWidth(v33);
      LODWORD(v31) = 1148846080;
      LODWORD(v32) = 1112014848;
      [v29 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v31, v32}];

      return;
    }
  }

  __break(1u);
}

id sub_100101BF8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseTableView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100101C50()
{
  v1 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [*(v0 + v1) setEstimatedRowHeight:60.0];
  [*(v0 + v1) setRowHeight:UITableViewAutomaticDimension];
  [*(v0 + v1) setSeparatorStyle:1];
  [*(v0 + v1) setDelegate:v0];
  v6 = *(v0 + v1);

  return [v6 setScrollEnabled:0];
}