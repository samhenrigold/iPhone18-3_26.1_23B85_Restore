unint64_t sub_100251280(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
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

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
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

unint64_t sub_100251398(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = sub_100251280(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v11 = v10;
    sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v15)
          {
            goto LABEL_45;
          }

          if (v8 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v4 + 32 + 8 * v8);
          v13 = *(v4 + 32 + 8 * v7);
          v14 = v16;
        }

        v17 = v14;
        v18 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1000C1EE4();
          v19 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v4 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

        if ((v4 & 0x8000000000000000) != 0 || v19)
        {
          v4 = sub_1000C1EE4();
          v20 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v3 = v18;
        v22 = v20 + 8 * v8;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v18 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_100251620(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchTime();
  v9 = *(v66 - 8);
  __chkstk_darwin(v66);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v74 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  v75 = v15;
  v16 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if ((v16 & 1) == 0)
  {
    v17 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
    if (v17)
    {
      v18 = v17;
      [v18 setAlpha:0.0];
      v19 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint];
      if (v19)
      {
        v20 = v19;
        [v20 setConstant:300.0];
      }
    }
  }

  v74 = &type metadata for SolariumFeatureFlag;
  v75 = v15;
  v21 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (v21)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = 0.64;
  }

  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == 1)
  {
    sub_1000490B0();
    if (v25 < v22)
    {
      sub_1000493F8(0, v22);
      v74 = &type metadata for SolariumFeatureFlag;
      v75 = v15;
      v26 = isFeatureEnabled(_:)();
      sub_100006060(aBlock);
      v27 = 0.5;
      if ((v26 & 1) == 0)
      {
        v27 = 0.64;
      }

      v28 = v27 - v22;
      if (v28 <= 0.0)
      {
        v28 = 0.0;
      }

      [*&v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v28 * *&v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    }
  }

  else
  {
    type metadata accessor for FMCardContainerViewController();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v31 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent;
      if (v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent])
      {
        if (v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] == 1)
        {
          v74 = &type metadata for SolariumFeatureFlag;
          v75 = v15;
          v32 = a1;
          v33 = isFeatureEnabled(_:)();
          sub_100006060(aBlock);
          v34 = 0.5;
          if ((v33 & 1) == 0)
          {
            v34 = 0.64;
          }
        }

        else
        {
          v36 = a1;
          v34 = 1.0;
        }
      }

      else
      {
        v35 = a1;
        v34 = 0.0;
      }

      sub_1000493F8(0, v34);
      v37 = 0.0;
      if (v4[v31])
      {
        if (v4[v31] == 1)
        {
          v74 = &type metadata for SolariumFeatureFlag;
          v75 = v15;
          v38 = isFeatureEnabled(_:)();
          sub_100006060(aBlock);
          if (v38)
          {
            v37 = 0.5;
          }

          else
          {
            v37 = 0.64;
          }
        }

        else
        {
          v37 = 1.0;
        }
      }

      v74 = &type metadata for SolariumFeatureFlag;
      v75 = v15;
      v39 = isFeatureEnabled(_:)();
      sub_100006060(aBlock);
      v40 = 0.5;
      if ((v39 & 1) == 0)
      {
        v40 = 0.64;
      }

      v41 = v40 - v37;
      if (v41 <= 0.0)
      {
        v41 = 0.0;
      }

      [*(v30 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:v41 * *(v30 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration)];
      *(v30 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) = v4[v31];
      sub_1000507D4();
    }
  }

  v42 = [v4 view];
  if (!v42)
  {
    goto LABEL_47;
  }

  v43 = v42;
  type metadata accessor for FMPassthroughView();
  v44 = swift_dynamicCastClass();
  if (!v44 || (v45 = v44, (v46 = [a1 view]) == 0))
  {
LABEL_46:

LABEL_47:
    *(*&v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 1;
    sub_10001DA30();
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v55 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v65 = *(v9 + 1);
    v56 = v66;
    v65(v11, v66);
    v57 = swift_allocObject();
    *(v57 + 16) = v4;
    v75 = sub_100252498;
    v76 = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    v74 = &unk_1006313A8;
    v58 = _Block_copy(aBlock);
    v59 = v4;

    v60 = v67;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A198(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v61 = v69;
    v62 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v58);

    (*(v71 + 8))(v61, v62);
    (*(v68 + 8))(v60, v70);
    v65(v14, v56);
    return;
  }

  v47 = v46;
  if (!swift_dynamicCastClass())
  {
LABEL_45:

    v43 = v47;
    goto LABEL_46;
  }

  v65 = v9;
  v48 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
  swift_beginAccess();
  v64 = v47;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v45 + v48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v45 + v48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v49 = *&v4[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
  if (v49)
  {
    v50 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v51 = v4;
    v47 = v49;
    v52 = sub_100251398(&v49[v50], v51);

    v53 = *&v49[v50];
    if (v53 >> 62)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
      if (v54 >= v52)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54 >= v52)
      {
LABEL_44:
        sub_1003CE0D8(v52, v54);
        swift_endAccess();

        v43 = v64;
        v9 = v65;
        goto LABEL_45;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100251E6C(void *a1)
{
  v3 = v1;
  v58 = a1;
  v4 = &type metadata for SolariumFeatureFlag;
  v60 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v61 = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v59);
  v7 = &selRef__enter3DMode;
  if (v6)
  {
    goto LABEL_7;
  }

  v8 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBar];
  if (!v8)
  {
    goto LABEL_7;
  }

  v6 = v8;
  [v6 setAlpha:1.0];
  v9 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_tabBarTopConstraint];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = qword_1006AEC30;
  v11 = v9;
  if (v10 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    [(SEL *)v11 setConstant:-*(&xmmword_1006D4720 + 1), v58];

LABEL_6:
    v12 = [v6 v7[367]];
    [v12 layoutIfNeeded];

LABEL_7:
    v13 = [v3 view];
    if (!v13)
    {
      goto LABEL_19;
    }

    v11 = v13;
    type metadata accessor for FMPassthroughView();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v4 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    v16 = *(&v4->Kind + v15);
    if (v16 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v17 = sub_100250C38();
    if (!v17)
    {
      v18 = *(&v4->Kind + v15);
      if (v18 >> 62)
      {
        v57 = _CocoaArrayWrapper.endIndex.getter();
        v20 = __OFSUB__(v57, 1);
        v21 = v57 - 1;
        if (v20)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          goto LABEL_64;
        }
      }

      v17 = sub_100250790(v21);
    }

    v2 = v7;

    swift_endAccess();
    v6 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView];
    if (!v6)
    {
      goto LABEL_66;
    }

    v7 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
    v4 = OBJC_IVAR____TtC6FindMy17FMPassthroughView_exemptViews;
    swift_beginAccess();
    if (!(*(&v4->Kind + v6) >> 62))
    {
      break;
    }

LABEL_59:
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_61:
    swift_once();
  }

  v22 = v6;
  v23 = v7;
  sub_1003CE0EC(0, 0, v23);
  swift_endAccess();

  v11 = v23;
  v7 = v2;
  v4 = &type metadata for SolariumFeatureFlag;
LABEL_18:

LABEL_19:
  v24 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController];
  if (v24)
  {
    v25 = *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController + 8];
    ObjectType = swift_getObjectType();
    v27 = v4;
    v28 = *(v25 + 8);
    v29 = v24;
    v30 = v28(ObjectType, v25);
    v4 = v27;
    v31 = v30;

    if (v31)
    {
      [v31 setContentOffset:0 animated:{0.0, 0.0}];
    }
  }

  v60 = v4;
  v61 = v5;
  v32 = isFeatureEnabled(_:)();
  sub_100006060(v59);
  *(*&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer] + OBJC_IVAR____TtC6FindMy19FMCardContainerView_appearance) = 0;
  sub_10001DA30();
  v33 = [v3 traitCollection];
  v34 = [v33 horizontalSizeClass];

  if (v34 == 1)
  {
    if (v32)
    {
      v35 = 0.5;
    }

    else
    {
      v35 = 0.64;
    }

    sub_1000493F8(0, v35);
    v60 = v4;
    v61 = v5;
    v36 = isFeatureEnabled(_:)();
    sub_100006060(v59);
    if (v36)
    {
      v37 = 0.5;
    }

    else
    {
      v37 = 0.64;
    }

    v38 = v37 - v35;
    if (v38 <= 0.0)
    {
      v38 = 0.0;
    }

    [*&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v38 * *&v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = 1;
    sub_1000507D4();
  }

  else
  {
    type metadata accessor for FMCardContainerViewController();
    v39 = v58;
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v42 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent;
      if (v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent])
      {
        if (v3[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] == 1)
        {
          v60 = v4;
          v61 = v5;
          v43 = v58;
          v44 = isFeatureEnabled(_:)();
          sub_100006060(v59);
          v39 = v58;
          v45 = 0.64;
          if (v44)
          {
            v45 = 0.5;
          }
        }

        else
        {
          v47 = v58;
          v45 = 1.0;
        }
      }

      else
      {
        v46 = v58;
        v45 = 0.0;
      }

      sub_1000493F8(0, v45);
      v48 = 0.0;
      if (v3[v42])
      {
        if (v3[v42] == 1)
        {
          v60 = v4;
          v61 = v5;
          v49 = isFeatureEnabled(_:)();
          sub_100006060(v59);
          v39 = v58;
          if (v49)
          {
            v48 = 0.5;
          }

          else
          {
            v48 = 0.64;
          }
        }

        else
        {
          v48 = 1.0;
        }
      }

      v60 = v4;
      v61 = v5;
      v50 = isFeatureEnabled(_:)();
      sub_100006060(v59);
      v51 = 0.64;
      if (v50)
      {
        v51 = 0.5;
      }

      v52 = v51 - v48;
      if (v52 <= 0.0)
      {
        v52 = 0.0;
      }

      [*(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground) setAlpha:v52 * *(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration)];
      *(v41 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) = v3[v42];
      sub_1000507D4();
    }
  }

  v53 = [v3 view];
  if (!v53)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = [v53 v7[367]];

  if (v55)
  {
    type metadata accessor for FMPassthroughView();
    v56 = swift_dynamicCastClass();
    if (v56)
    {
      *(v56 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
    }
  }
}

double sub_1002524A0(char a1)
{
  if (a1 == 1)
  {
    v7 = &type metadata for SolariumFeatureFlag;
    v8 = sub_10000BD04();
    isFeatureEnabled(_:)();
    sub_100006060(v6);
  }

  v7 = &type metadata for SolariumFeatureFlag;
  v8 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v6);
  if (v1)
  {
    sub_100250DD0();
    if (qword_1006AEBA8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_100250F24();
    sub_1002510B8();
  }

  sub_100250C9C();
  v2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale();
  v4 = v3;

  return v4;
}

id sub_100252620()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_100252798()
{
  v1 = v0;
  [v0 setDismissalType:3];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v40._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x8000000100589A70;
  v5.value._object = 0x80000001005799E0;
  v40._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v40);

  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7];

  v8 = *&v1[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView];
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v13 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000, v9, v10, v11, v12, v33);
  [v8 setImage:v13];

  [v8 setContentMode:4];
  v14 = [v2 mainBundle];
  v15.value._countAndFlagsBits = 0xD000000000000010;
  v41._object = 0x8000000100582000;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x8000000100589A90;
  v15.value._object = 0x8000000100581FE0;
  v41._countAndFlagsBits = 0xD000000000000015;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v41);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();

  v38 = sub_100253178;
  v39 = v18;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_100631718;
  v20 = _Block_copy(&aBlock);
  v21 = objc_opt_self();

  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  v23 = [v1 addAction:v22];

  v24 = [v2 mainBundle];
  v42._object = 0x8000000100579A00;
  v25._countAndFlagsBits = 0xD00000000000001CLL;
  v25._object = 0x8000000100589AB0;
  v26.value._object = 0x80000001005799E0;
  v42._countAndFlagsBits = 0xD000000000000018;
  v26.value._countAndFlagsBits = 0xD000000000000013;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v42);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = String._bridgeToObjectiveC()();

  v38 = sub_100253198;
  v39 = v28;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_100631740;
  v30 = _Block_copy(&aBlock);

  v31 = [v21 actionWithTitle:v29 style:1 handler:v30];

  _Block_release(v30);

  v32 = [v1 addAction:v31];
}

void sub_100252C60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  __chkstk_darwin(v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      *v6 = a3;
      swift_storeEnumTagMultiPayload();
      sub_10026E410(v6);

      sub_1002531B8(v6);
    }
  }
}

void sub_100252D54()
{
  v23 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005521F0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView];
  v3 = [v2 centerXAnchor];
  v4 = [v0 contentView];
  v5 = [v4 mainContentGuide];

  v6 = [v5 centerXAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v1 + 32) = v7;
  v8 = [v2 topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 mainContentGuide];

  v11 = [v10 topAnchor];
  v12 = [v8 constraintGreaterThanOrEqualToAnchor:v11];

  *(v1 + 40) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v0 contentView];
  v15 = [v14 mainContentGuide];

  v16 = [v15 bottomAnchor];
  v17 = [v13 constraintLessThanOrEqualToAnchor:v16];

  *(v1 + 48) = v17;
  v18 = [v2 centerYAnchor];
  v19 = [v0 contentView];
  v20 = [v19 mainContentGuide];

  v21 = [v20 centerYAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];

  *(v1 + 56) = v22;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

id sub_1002530C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMAccessoryDiscoveryFlowSelectionCard();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002531B8(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPUnknownItem.findingProductType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPUnknownItem.productType.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FMIPProductType.b389(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_100012DF0(v5, &qword_1006B1AA8, &qword_100554140);
LABEL_5:
    v8 = enum case for FMFindingProductType.item(_:);
    v9 = type metadata accessor for FMFindingProductType();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  if (v6 == enum case for FMIPProductType.zeus(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for FMIPZeusProductInformation();
    (*(*(v7 - 8) + 8))(v5, v7);
    goto LABEL_5;
  }

  if (v6 == enum case for FMIPProductType.hawkeye(_:))
  {
    (*(v3 + 96))(v5, v2);
    if ((FMIPUnknownItem.isAppleAudioAccessory.getter() & 1) != 0 && (v11 = FMIPUnknownItem.unknownBeacon.getter()) != 0)
    {
      v12 = v11;
      v13 = SPUnknownBeacon.productId.getter();
      v14 = [v12 type];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *a1 = v13;
      *(a1 + 8) = v19 & 1;
      v20 = &enum case for FMFindingProductType.airpods(_:);
    }

    else
    {
      v20 = &enum case for FMFindingProductType.item(_:);
    }

    v21 = *v20;
    v22 = type metadata accessor for FMFindingProductType();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    return sub_100012DF0(v5, &qword_1006C39A0, &unk_100558B20);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t FMIPUnknownItem.findingPartType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMFindingPartType.standalone(_:);
  v3 = type metadata accessor for FMFindingPartType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002535EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void *FMIPUnknownItem.supportedFindingTechnologies.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingTechnology();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = v34 - v5;
  v6 = type metadata accessor for FMItemCapabilities();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v34 - v11;
  v38 = _swiftEmptySetSingleton;
  FMIPUnknownItem.capabilities.getter();
  static FMItemCapabilities.canR1.getter();
  v13 = sub_100259DA8(&qword_1006B4180, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = sub_10007EBC0(&qword_1006C0020, &qword_100555030);
    v34[0] = v13;
    v17 = v2;
    v18 = *(v16 + 48);
    v19 = v35;
    *v35 = 1;
    v20 = enum case for FMFindingType.ut(_:);
    v21 = type metadata accessor for FMFindingType();
    v22 = *(*(v21 - 8) + 104);
    v34[1] = v1;
    v23 = v37;
    v22(&v19[v18], v20, v21);
    (*(v23 + 104))(v19, enum case for FMFindingTechnology.precision(_:), v17);
    v24 = v36;
    sub_1002549AC(v36, v19);
    v25 = v24;
    v2 = v17;
    (*(v23 + 8))(v25, v17);
  }

  FMIPUnknownItem.capabilities.getter();
  static FMItemCapabilities.canBTFinding.getter();
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15(v9, v6);
  v15(v12, v6);
  if (v26)
  {
    v27 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
    v28 = enum case for FMFindingType.ut(_:);
    v29 = type metadata accessor for FMFindingType();
    v30 = v35;
    (*(*(v29 - 8) + 104))(v35, v28, v29);
    v30[v27] = 0;
    v31 = v37;
    (*(v37 + 104))(v30, enum case for FMFindingTechnology.proximity(_:), v2);
    v32 = v36;
    sub_1002549AC(v36, v30);
    (*(v31 + 8))(v32, v2);
  }

  return v38;
}

uint64_t FMIPUnknownItem.videoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMFindingProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPUnknownItem.findingProductType.getter(v5);
  FMFindingProductType.videoInfo(isZeus:)(0, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100253B80@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_100253BFC(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  if (a2 > 4u)
  {
    switch(a2)
    {
      case 5u:
        v6 = 4;
        goto LABEL_15;
      case 6u:
        v6 = 5;
        goto LABEL_15;
      case 7u:
        v6 = 6;
        goto LABEL_15;
    }

LABEL_12:
    Hasher._combine(_:)(3uLL);
    Hasher._combine(_:)(a2 & 1);
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (a2 != 4)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  Hasher._combine(_:)(v6);
LABEL_16:
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 48);
    do
    {
      v12 = *(v11 + v9);
      if (v12 > 4)
      {
        switch(v12)
        {
          case 5u:
            if (a2 == 5)
            {
              result = 0;
              LOBYTE(a2) = 5;
              goto LABEL_41;
            }

            break;
          case 6u:
            if (a2 == 6)
            {
              result = 0;
              LOBYTE(a2) = 6;
              goto LABEL_41;
            }

            break;
          case 7u:
            if (a2 == 7)
            {
              result = 0;
              LOBYTE(a2) = 7;
              goto LABEL_41;
            }

            break;
          default:
            goto LABEL_33;
        }
      }

      else
      {
        if (v12 == 2)
        {
          if (a2 == 2)
          {
            result = 0;
            LOBYTE(a2) = 2;
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        if (v12 != 3)
        {
          if (v12 == 4)
          {
            if (a2 == 4)
            {
              result = 0;
              LOBYTE(a2) = 4;
              goto LABEL_41;
            }

            goto LABEL_19;
          }

LABEL_33:
          if ((a2 - 2) >= 6u && ((v12 ^ a2) & 1) == 0)
          {
            result = 0;
            LOBYTE(a2) = *(v11 + v9);
            goto LABEL_41;
          }

          goto LABEL_19;
        }

        if (a2 == 3)
        {
          result = 0;
          LOBYTE(a2) = 3;
          goto LABEL_41;
        }
      }

LABEL_19:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_100256BE8(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  result = 1;
LABEL_41:
  *a1 = a2;
  return result;
}

uint64_t sub_100253E7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B85B8, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100256E70(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10025415C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B7AA8, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100257138(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10025443C(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1003B8270(v16, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      sub_1003B53E4(v10, a2);
      v12 = v11;

      if (v12)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v16[0] = *v2;

    sub_100257400(v14, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v16[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_10025457C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10025758C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1002546CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10025770C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002549AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingTechnology();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B85D0, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002579D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100254CD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100259DA8(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100257C9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_100254FB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10007EBC0(&qword_1006B8598, &qword_10055A7A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10004F7CC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1002559B0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100255194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B85A0, &qword_10055A7A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_100256A2C(*(*(v3 + 48) + (v11 | (v5 << 6))), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1002552F8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for FMFFriend();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10007EBC0(&qword_1006B85C0, &qword_10055A7B8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100255654(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for FMIPItem();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10007EBC0(&qword_1006B6910, &unk_100558B10);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1002559B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B8598, &qword_10055A7A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100255BD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B85A8, &qword_10055A7B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = v4 + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      sub_1003B8270(v19, v16);
      Hasher._finalize()();
      v17 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      bzero((v3 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v18;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100255DB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B4358, &qword_100556358);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100256018(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10007EBC0(&qword_1006B6950, &qword_100558B40);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100256374(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for FMFindingTechnology();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10007EBC0(&qword_1006B85D8, &unk_10055A7C0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1002566D0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10007EBC0(&qword_1006B8590, &qword_10055A798);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_100256A2C(unsigned __int8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v4 = 4;
        goto LABEL_15;
      case 6u:
        v4 = 5;
        goto LABEL_15;
      case 7u:
        v4 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v4 = 0;
        goto LABEL_15;
      case 3u:
        v4 = 1;
        goto LABEL_15;
      case 4u:
        v4 = 2;
LABEL_15:
        Hasher._combine(_:)(v4);
        goto LABEL_16;
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(a1 & 1);
LABEL_16:
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100256B64(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100256BE8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_47;
  }

  if (a3)
  {
    sub_100255194(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100257F64();
      a2 = v7;
      goto LABEL_47;
    }

    sub_100258700(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if (v4 > 4u)
  {
    switch(v4)
    {
      case 5u:
        v9 = 4;
        goto LABEL_22;
      case 6u:
        v9 = 5;
        goto LABEL_22;
      case 7u:
        v9 = 6;
        goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        v9 = 0;
        goto LABEL_22;
      case 3u:
        v9 = 1;
        goto LABEL_22;
      case 4u:
        v9 = 2;
LABEL_22:
        Hasher._combine(_:)(v9);
        goto LABEL_23;
    }
  }

  Hasher._combine(_:)(3uLL);
  Hasher._combine(_:)(v4 & 1);
LABEL_23:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_47;
  }

  v12 = ~v11;
  while (1)
  {
    v13 = *(*(v8 + 48) + a2);
    if (v13 > 4)
    {
      break;
    }

    switch(v13)
    {
      case 2u:
        if (v4 == 2)
        {
          goto LABEL_46;
        }

        break;
      case 3u:
        if (v4 == 3)
        {
          goto LABEL_46;
        }

        break;
      case 4u:
        if (v4 == 4)
        {
          goto LABEL_46;
        }

        break;
      default:
        goto LABEL_40;
    }

LABEL_26:
    a2 = (a2 + 1) & v12;
    if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  switch(v13)
  {
    case 5u:
      if (v4 == 5)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
    case 6u:
      if (v4 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
    case 7u:
      if (v4 == 7)
      {
        goto LABEL_46;
      }

      goto LABEL_26;
  }

LABEL_40:
  if (v4 - 2) < 6u || ((v13 ^ v4))
  {
    goto LABEL_26;
  }

LABEL_46:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_47:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

uint64_t sub_100256E70(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002552F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for FMFFriend, &qword_1006B85C0, &qword_10055A7B8);
      goto LABEL_12;
    }

    sub_100258828(v11 + 1);
  }

  v13 = *v3;
  sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B85B8, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100257138(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100255654(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for FMIPItem, &qword_1006B6910, &unk_100558B10);
      goto LABEL_12;
    }

    sub_100258B44(v11 + 1);
  }

  v13 = *v3;
  sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B7AA8, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100257400(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100255BD8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1002581F4();
      goto LABEL_12;
    }

    sub_100259074(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  sub_1003B8270(v20, a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_10007EBC0(&qword_1006B4228, &qword_100555EA8);

      sub_1003B53E4(v12, a1);
      v14 = v13;

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10025758C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100255DB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100258344();
      goto LABEL_16;
    }

    sub_10025921C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10025770C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100256018(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for FMIPPlaySoundChannels, &qword_1006B6950, &qword_100558B40);
      goto LABEL_12;
    }

    sub_100259454(v11 + 1);
  }

  v13 = *v3;
  sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002579D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for FMFindingTechnology();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100256374(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for FMFindingTechnology, &qword_1006B85D8, &unk_10055A7C0);
      goto LABEL_12;
    }

    sub_100259770(v11 + 1);
  }

  v13 = *v3;
  sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B85D0, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100257C9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002566D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002584C8(&type metadata accessor for UUID, &qword_1006B8590, &qword_10055A798);
      goto LABEL_12;
    }

    sub_100259A8C(v11 + 1);
  }

  v13 = *v3;
  sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100259DA8(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100257F64()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B85A0, &qword_10055A7A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1002580A4()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B8598, &qword_10055A7A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1002581F4()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B85A8, &qword_10055A7B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100258344()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006B4358, &qword_100556358);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1002584C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_10007EBC0(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_100258700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B85A0, &qword_10055A7A8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      sub_100256A2C(*(*(v3 + 48) + (v10 | (v5 << 6))), v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_100258828(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for FMFFriend();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10007EBC0(&qword_1006B85C0, &qword_10055A7B8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100259DA8(&qword_1006B85B0, &type metadata accessor for FMFFriend, &protocol conformance descriptor for FMFFriend);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100258B44(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for FMIPItem();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10007EBC0(&qword_1006B6910, &unk_100558B10);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100259DA8(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100258E60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B8598, &qword_10055A7A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100259074(uint64_t a1)
{
  v2 = *v1;
  sub_10007EBC0(&qword_1006B85A8, &qword_10055A7B0);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = v3 + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      Hasher.init(_seed:)();

      sub_1003B8270(v16, v14);
      Hasher._finalize()();
      v15 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }
}

void sub_10025921C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007EBC0(&qword_1006B4358, &qword_100556358);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100259454(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10007EBC0(&qword_1006B6950, &qword_100558B40);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100259DA8(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100259770(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for FMFindingTechnology();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10007EBC0(&qword_1006B85D8, &unk_10055A7C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100259DA8(&qword_1006B85C8, &type metadata accessor for FMFindingTechnology, &protocol conformance descriptor for FMFindingTechnology);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_100259A8C(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10007EBC0(&qword_1006B8590, &qword_10055A798);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100259DA8(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

uint64_t sub_100259DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100259DF0(uint64_t a1)
{
  v37 = a1;
  v44 = type metadata accessor for UIHostingControllerSizingOptions();
  v40 = *(v44 - 8);
  v41 = v40;
  __chkstk_darwin(v44);
  v43 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Font.TextStyle();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMChooseMapView(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [objc_allocWithZone(MKMapView) init];
  sub_10007EBC0(&qword_1006B2570, &unk_10055A810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = NSForegroundColorAttributeName;
  v10 = objc_opt_self();
  v11 = NSForegroundColorAttributeName;
  *(inited + 40) = [v10 labelColor];
  *(inited + 48) = NSFontAttributeName;
  v12 = objc_opt_self();
  v13 = NSFontAttributeName;
  *(inited + 56) = [v12 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v14 = sub_1001535F0(inited);
  swift_setDeallocating();
  sub_10007EBC0(&unk_1006B4DC0, qword_100554B20);
  swift_arrayDestroy();
  sub_1000F0914(v14);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = v34;
  v17 = [v34 mapAttributionWithStringAttributes:isa underlineText:1];

  type metadata accessor for FMChooseMapViewModel(0);
  swift_allocObject();
  v18 = v37;

  v36 = v17;
  v19 = sub_10024C314(v18, v17);
  v35 = xmmword_1005521A0;
  *v8 = xmmword_10055A7D0;
  *(v8 + 1) = xmmword_1005521A0;
  *(v8 + 4) = 0x4028000000000000;
  v20 = *(v6 + 32);
  *&v8[v20] = swift_getKeyPath();
  sub_10007EBC0(&qword_1006B5338, &qword_10055A850);
  swift_storeEnumTagMultiPayload();
  v21 = *(v6 + 36);
  *&v8[v21] = swift_getKeyPath();
  sub_10007EBC0(&qword_1006B5340, &qword_1005571F0);
  swift_storeEnumTagMultiPayload();
  *&v45[0] = 0x4020000000000000;
  (*(v38 + 104))(v4, enum case for Font.TextStyle.footnote(_:), v39);
  sub_10019C2C4();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(v8 + 5) = sub_10025AC20;
  *(v8 + 6) = v19;
  v8[56] = 0;
  v22 = objc_allocWithZone(sub_10007EBC0(&qword_1006B8610, &unk_10055A890));
  v23 = UIHostingController.init(rootView:)();
  *(v42 + OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController) = v23;
  sub_10007EBC0(&qword_1006B3280, &unk_100555040);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100552220;
  v25 = v23;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v45[0] = v24;
  sub_10025AC28();
  sub_10007EBC0(&qword_1006B3288, &unk_10055A8A0);
  sub_10025AC80();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v54 = 0;
  v45[0] = xmmword_100554AC0;
  v45[1] = xmmword_100554AD0;
  v45[2] = xmmword_100552170;
  v45[3] = xmmword_100552180;
  v45[4] = xmmword_100552190;
  v45[5] = v35;
  v45[6] = xmmword_1005521B0;
  v45[7] = xmmword_1005521C0;
  v45[8] = xmmword_1005521D0;
  v45[9] = xmmword_1005521E0;
  v46 = 0;
  v47 = 0x403A000000000000;
  v48 = 0;
  *v49 = *v53;
  *&v49[3] = *&v53[3];
  __asm { FMOV            V0.2D, #16.0 }

  v50 = _Q0;
  v51 = 0x4046000000000000;
  v52 = 0;
  v31 = sub_100278C9C(v18, v45);

  return v31;
}

id sub_10025A43C(uint64_t a1)
{
  sub_1002791F0();
  v2 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  [v2 setContentInsetAdjustmentBehavior:2];
  [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView] setHidden:1];
  [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel] setHidden:1];
  v3 = [objc_opt_self() mainBundle];
  v17._object = 0x800000010057ECE0;
  v4._object = 0x800000010057ECC0;
  v17._countAndFlagsBits = 0xD000000000000023;
  v4._countAndFlagsBits = 0xD000000000000011;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText] = v6;

  sub_10027D190(v7);
  v8 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
  [v8 setNumberOfLines:1];
  LODWORD(v9) = 1132068864;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = *&v1[OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController];
  result = [v10 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor:v13];

  [v1 addChildViewController:v10];
  v14 = *&v2[OBJC_IVAR____TtC6FindMy12FMScrollView_content];
  result = [v10 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = result;
  [v14 addSubview:result];

  return [v10 didMoveToParentViewController:v1];
}

void sub_10025A6AC()
{
  sub_10027A200();
  v1 = [*&v0[OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController] view];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v2 topAnchor];
  v5 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] lastBaselineAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:19.0];

  *(v3 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v7 constraintEqualToAnchor:v11];

  *(v3 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v13 constraintEqualToAnchor:v18];

  *(v3 + 48) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] + OBJC_IVAR____TtC6FindMy12FMScrollView_content) bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v3 + 56) = v22;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];
}

uint64_t sub_10025AB58(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

unint64_t sub_10025AC28()
{
  result = qword_1006C1310;
  if (!qword_1006C1310)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1310);
  }

  return result;
}

unint64_t sub_10025AC80()
{
  result = qword_1006C1320;
  if (!qword_1006C1320)
  {
    sub_10007EC08(&qword_1006B3288, &unk_10055A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1320);
  }

  return result;
}

uint64_t sub_10025ACE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10025AD2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10025AE30()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMSideBarViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  sub_10025AFBC();
  sub_10025B188();
  v2 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator;
  v3 = *(*&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator] + 16);
  sub_1003CCFC4(v1, v3);

  v4 = *(*(v1 + v2) + 24);
  type metadata accessor for FMDevicesSubscription(0);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v5 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100631800;
  swift_unknownObjectWeakAssign();
  v6 = *(v4 + 16);

  os_unfair_lock_lock((v6 + 24));
  sub_10000E7C0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_devicesSubscription) = v5;

  return result;
}

void sub_10025AFBC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_sideBarView]];

  v3 = sub_10025B73C();
  sub_10052A850(v3);
  v4 = objc_allocWithZone(type metadata accessor for FMSegmentedControl());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa];

  v7 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl];
  *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl] = v6;
  v9 = v6;

  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v9 addTarget:v0 action:"indexChangedWithSender:" forControlEvents:4096];

  v10 = *&v0[v7];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v10 addTarget:v0 action:"indexNotChangedWithSender:" forControlEvents:64];
  v11 = *&v0[v7];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v11 setHidden:*(v3 + 2) < 2uLL];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v0[v7];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = v13;

  [v14 addSubview:v15];
}

void sub_10025B188()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_sideBarView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = [v4 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9 constant:0.0];

  v11 = *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint] = v10;
  v12 = v10;

  if (v12)
  {
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100552EF0;
    *(v13 + 32) = v12;
    v14 = *&v0[v1];
    if (!v14)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = v13;
    v16 = v12;
    v17 = [v14 leadingAnchor];
    v18 = [v0 view];
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = v18;
    v20 = [v18 leadingAnchor];

    v21 = [v17 constraintEqualToAnchor:v20 constant:10.0];
    *(v15 + 40) = v21;
    v22 = *&v0[v1];
    if (!v22)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = [v22 trailingAnchor];
    v24 = [v0 view];
    if (!v24)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 trailingAnchor];

    v28 = [v23 constraintEqualToAnchor:v27 constant:-10.0];
    *(v15 + 48) = v28;
    sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];
  }

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1005521F0;
  v31 = [v3 topAnchor];
  v32 = [v0 view];
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v30 + 32) = v35;
  v36 = [v3 bottomAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v30 + 40) = v40;
  v41 = [v3 leadingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v30 + 48) = v45;
  v46 = [v3 trailingAnchor];
  v47 = [v0 view];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  v49 = objc_opt_self();
  v50 = [v48 trailingAnchor];

  v51 = [v46 constraintEqualToAnchor:v50];
  *(v30 + 56) = v51;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints:v52];
}

char *sub_10025B73C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 16);
  v2 = v1[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted];
  v3 = qword_1006AECC0;
  v4 = v1;
  if (v3 != -1)
  {
    v28 = v4;
    swift_once();
    v4 = v28;
  }

  if (byte_1006D4AD1 != 1)
  {

LABEL_10:
    v10 = _swiftEmptyArrayStorage;
    if (v2)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = v4[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

  if (v5)
  {
    goto LABEL_10;
  }

  v6 = [objc_opt_self() mainBundle];
  v34._object = 0x8000000100589CB0;
  v7._object = 0x8000000100589C90;
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v7._countAndFlagsBits = 0xD000000000000018;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v34);

  v10 = sub_10008B9E4(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v10 + 2);
  v12 = *(v10 + 3);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v29 = v2;
    v30 = v11 + 1;
    v31 = v10;
    v32 = *(v10 + 2);
    v33 = sub_10008B9E4((v12 > 1), v11 + 1, 1, v31);
    v11 = v32;
    v13 = v30;
    v2 = v29;
    v10 = v33;
  }

  *(v10 + 2) = v13;
  *&v10[16 * v11 + 32] = v9;
  if ((v2 & 1) == 0)
  {
LABEL_11:
    v14 = [objc_opt_self() mainBundle];
    v35._object = 0x8000000100589C60;
    v15._countAndFlagsBits = 0xD000000000000019;
    v15._object = 0x8000000100589C40;
    v35._countAndFlagsBits = 0xD00000000000002BLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v35);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10008B9E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_10008B9E4((v18 > 1), v19 + 1, 1, v10);
    }

    *(v10 + 2) = v19 + 1;
    *&v10[16 * v19 + 32] = v17;
  }

LABEL_16:
  if (FMIPItemsTabEnabled.getter())
  {
    v20 = [objc_opt_self() mainBundle];
    v21.value._countAndFlagsBits = 0xD000000000000013;
    v36._object = 0x8000000100579A00;
    v22._countAndFlagsBits = 0x41545F534D455449;
    v21.value._object = 0x80000001005799E0;
    v22._object = 0xE900000000000042;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000018;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v36);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10008B9E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_10008B9E4((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    *&v10[16 * v26 + 32] = v24;
  }

  return v10;
}

uint64_t sub_10025BAC8(void *a1)
{
  v3 = type metadata accessor for FMSelectedSection(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 selectedSegmentIndex];
  v8 = qword_1006AECC0;
  v9 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 16);
  if (v8 != -1)
  {
    v13 = v9;
    swift_once();
    v9 = v13;
  }

  if (byte_1006D4AD1 == 1)
  {
    v10 = v9[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (__OFADD__(v7++, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  if (v7 == -1)
  {
    v7 = 0;
  }

  if (v7 == 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }

LABEL_21:
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v16 = 0xD00000000000002ELL;
    v17 = 0x8000000100589C10;
    v15[1] = v7;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

LABEL_18:
  swift_storeEnumTagMultiPayload();
  sub_100352650(v6);
  swift_unknownObjectRelease();
  return sub_10005D4E4(v6);
}

uint64_t sub_10025BDB4(void *a1)
{
  v3 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v16 - v8;
  v10 = [a1 selectedSegmentIndex];
  if (v10 > 0)
  {
    if (v10 == 1)
    {
      v11 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v11 + v12, v5);
      swift_beginAccess();

      sub_100058530(v9, v11 + v12);
      swift_endAccess();
      sub_100058594(v5);

      sub_10005D4E4(v5);
      return sub_10005D4E4(v9);
    }

    if (v10 == 2)
    {
      v11 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
      goto LABEL_10;
    }
  }

  else
  {
    if (v10 == -1)
    {
      [a1 setSelectedSegmentIndex:0];
LABEL_7:
      v11 = *(*(v1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_mediator) + 56);
      goto LABEL_10;
    }

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  v14 = v10;
  _StringGuts.grow(_:)(48);

  v17 = 0xD00000000000002ELL;
  v18 = 0x8000000100589C10;
  v16[0] = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10025C094(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = [v3 selectedSegmentIndex];
  v5 = *(a1 + v2);
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v5 removeAllSegments];
  v6 = sub_10025B73C();
  v7 = v6;
  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = &v6[16 * v8 + 24];
    while (v9 < *(v7 + 2))
    {
      v11 = *(a1 + v2);
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = v11;
      v13 = String._bridgeToObjectiveC()();

      [v12 insertSegmentWithTitle:v13 atIndex:0 animated:1];

      --v9;
      v10 -= 16;
      if (v9 == -1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:

  v14 = *(a1 + v2);
  if (!v14)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v14 setSelectedSegmentIndex:v4];
}

id sub_10025C208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSideBarViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10025C364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  v16 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v16, v17, v18);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_10025C610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B8670, &qword_10055A968);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FMIPPartType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  v31 = a1;
  FMIPItem.partType.getter();
  v32 = a2;
  FMIPItem.partType.getter();
  v20 = *(v5 + 56);
  v21 = *(v9 + 32);
  v21(v7, v19, v8);
  v21(&v7[v20], v16, v8);
  v22 = *(v9 + 88);
  v23 = v22(v7, v8);
  v24 = enum case for FMIPPartType.leftBud(_:);
  if (v23 != enum case for FMIPPartType.leftBud(_:))
  {
    if (v23 == enum case for FMIPPartType.rightBud(_:) && v22(&v7[v20], v8) == v24)
    {
      (*(v9 + 8))(v7, v8);
      v25 = 0;
      return v25 & 1;
    }

LABEL_7:
    FMIPItem.partType.getter();
    v26 = v30;
    FMIPItem.partType.getter();
    v25 = static FMIPPartType.< infix(_:_:)();
    v27 = *(v9 + 8);
    v27(v26, v8);
    v27(v13, v8);
    sub_100012DF0(v7, &qword_1006B8670, &qword_10055A968);
    return v25 & 1;
  }

  if (v22(&v7[v20], v8) != enum case for FMIPPartType.rightBud(_:))
  {
    goto LABEL_7;
  }

  (*(v9 + 8))(v7, v8);
  v25 = 1;
  return v25 & 1;
}

void sub_10025C924(uint64_t *a1)
{
  v2 = *(type metadata accessor for FMIPItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F2DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10025C9CC(v5);
  *a1 = v3;
}

void sub_10025C9CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMIPItem();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMIPItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10025D160(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10025CAF8(0, v2, 1, a1);
  }
}

void sub_10025CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v83 = sub_10007EBC0(&qword_1006B8670, &qword_10055A968);
  __chkstk_darwin(v83);
  v91 = &v61 - v8;
  v90 = type metadata accessor for FMIPPartType();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v61 - v12;
  __chkstk_darwin(v13);
  v82 = &v61 - v14;
  __chkstk_darwin(v15);
  v81 = &v61 - v16;
  v17 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v17);
  v73 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v61 - v20;
  v23 = __chkstk_darwin(v21);
  v88 = &v61 - v24;
  v63 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v77 = (v9 + 32);
    v78 = v27;
    v29 = (v9 + 88);
    v84 = enum case for FMIPPartType.leftBud(_:);
    v76 = enum case for FMIPPartType.rightBud(_:);
    v74 = (v26 - 8);
    v75 = (v9 + 8);
    v79 = v26;
    v30 = (v25 + v28 * (a3 - 1));
    v70 = -v28;
    v71 = (v26 + 16);
    v31 = a1 - a3;
    v72 = v25;
    v62 = v28;
    v32 = v25 + v28 * a3;
    v80 = v17;
LABEL_6:
    v67 = a3;
    v64 = v32;
    v65 = v31;
    v34 = v31;
    v66 = v30;
    while (1)
    {
      v86 = v34;
      v87 = v32;
      v35 = v78;
      (v78)(v88, v32, v17, v23);
      v35(v89, v30, v17);
      v36 = v81;
      FMIPItem.partType.getter();
      v37 = v82;
      FMIPItem.partType.getter();
      v38 = *(v83 + 48);
      v39 = *v77;
      v40 = v91;
      v41 = v90;
      (*v77)(v91, v36, v90);
      v39(&v40[v38], v37, v41);
      v42 = *v29;
      v43 = (*v29)(v40, v41);
      if (v43 == v84)
      {
        v44 = v42(&v91[v38], v90);
        if (v44 == v76)
        {
          (*v75)(v91, v90);
          v45 = *v74;
          v17 = v80;
          (*v74)(v89, v80);
          v45(v88, v17);
          v47 = v86;
          v46 = v87;
          goto LABEL_13;
        }
      }

      else if (v43 == v76)
      {
        v48 = v42(&v91[v38], v90);
        if (v48 == v84)
        {
          (*v75)(v91, v90);
          v33 = *v74;
          v17 = v80;
          (*v74)(v89, v80);
          v33(v88, v17);
LABEL_5:
          a3 = v67 + 1;
          v30 = &v66[v62];
          v31 = v65 - 1;
          v32 = v64 + v62;
          if (v67 + 1 == v63)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      v49 = v68;
      v50 = v88;
      FMIPItem.partType.getter();
      v51 = v69;
      v52 = v89;
      FMIPItem.partType.getter();
      v85 = static FMIPPartType.< infix(_:_:)();
      v53 = *v75;
      v54 = v51;
      v55 = v91;
      v56 = v90;
      (*v75)(v54, v90);
      v53(v49, v56);
      sub_100012DF0(v55, &qword_1006B8670, &qword_10055A968);
      v57 = *v74;
      v17 = v80;
      (*v74)(v52, v80);
      v57(v50, v17);
      v47 = v86;
      v46 = v87;
      if ((v85 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (!v72)
      {
        __break(1u);
        return;
      }

      v58 = *v71;
      v59 = v73;
      (*v71)(v73, v46, v17);
      swift_arrayInitWithTakeFrontToBack();
      v58(v30, v59, v17);
      v30 += v70;
      v32 = v46 + v70;
      v60 = __CFADD__(v47, 1);
      v34 = v47 + 1;
      if (v60)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10025D160(int64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v5 = v4;
  v180 = a1;
  v209 = sub_10007EBC0(&qword_1006B8670, &qword_10055A968);
  __chkstk_darwin(v209);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = &v174 - v11;
  v213 = type metadata accessor for FMIPPartType();
  v12 = *(v213 - 8);
  __chkstk_darwin(v213);
  v204 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v203 = &v174 - v15;
  __chkstk_darwin(v16);
  v196 = &v174 - v17;
  __chkstk_darwin(v18);
  v195 = &v174 - v19;
  __chkstk_darwin(v20);
  v189 = &v174 - v21;
  __chkstk_darwin(v22);
  v188 = &v174 - v23;
  v197 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v197);
  v184 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v200 = &v174 - v26;
  __chkstk_darwin(v27);
  v217 = &v174 - v28;
  __chkstk_darwin(v29);
  v218 = &v174 - v30;
  __chkstk_darwin(v31);
  v190 = &v174 - v32;
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  v175 = &v174 - v35;
  v39 = __chkstk_darwin(v36);
  v174 = &v174 - v40;
  v41 = *(a3 + 1);
  v191 = v38;
  if (v41 < 1)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_109:
    v60 = *v180;
    if (!*v180)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_111;
  }

  v42 = v41;
  v192 = v37;
  v43 = 0;
  v210 = v38 + 16;
  v211 = (v38 + 8);
  v208 = (v12 + 32);
  v212 = (v12 + 88);
  v214 = enum case for FMIPPartType.leftBud(_:);
  v207 = enum case for FMIPPartType.rightBud(_:);
  v205 = (v38 + 32);
  v206 = (v12 + 8);
  v44 = _swiftEmptyArrayStorage;
  v181 = a3;
  v179 = a4;
  v202 = v9;
LABEL_4:
  v45 = v43;
  if (v43 + 1 >= v42)
  {
    v60 = v43 + 1;
    goto LABEL_33;
  }

  v194 = v42;
  v46 = *a3;
  v47 = *(v191 + 72);
  v48 = *a3 + v47 * (v43 + 1);
  v49 = *(v191 + 16);
  v50 = v174;
  v216 = v48;
  v51 = v197;
  v49(v174, v39);
  v215 = v46;
  v52 = &v46[v47 * v43];
  v53 = v43;
  v54 = v175;
  v199 = v49;
  (v49)(v175, v52, v51);
  LODWORD(v201) = sub_10025C610(v50, v54);
  if (v5)
  {
    v173 = *v211;
    (*v211)(v54, v51);
    v173(v50, v51);
    goto LABEL_121;
  }

  v176 = v44;
  v178 = 0;
  v55 = *v211;
  (*v211)(v54, v51);
  v198 = v55;
  v55(v50, v51);
  v177 = v53;
  v56 = v53 + 2;
  v57 = v216;
  v58 = v215 + v47 * (v53 + 2);
  v59 = v190;
  v60 = v194;
  v61 = v47;
  v215 = v47;
  while (v60 != v56)
  {
    v70 = v192;
    v71 = v199;
    (v199)(v192, v58, v51);
    v216 = v57;
    v71(v59, v57, v51);
    FMIPItem.partType.getter();
    v72 = v189;
    FMIPItem.partType.getter();
    v73 = *(v209 + 48);
    v74 = *v208;
    v75 = v193;
    (*v208)();
    (v74)(v75 + v73, v72, v213);
    v76 = v213;
    v77 = *v212;
    v78 = (*v212)(v75, v213);
    if (v78 == v214)
    {
      v79 = v77(v75 + v73, v76);
      if (v79 == v207)
      {
        (*v206)(v75, v76);
        v68 = v70;
        v65 = 1;
LABEL_16:
        v64 = v190;
        goto LABEL_8;
      }
    }

    else if (v78 == v207)
    {
      v80 = v77(v75 + v73, v76);
      if (v80 == v214)
      {
        (*v206)(v75, v76);
        v68 = v70;
        v65 = 0;
        goto LABEL_16;
      }
    }

    v62 = v195;
    FMIPItem.partType.getter();
    v63 = v196;
    v64 = v190;
    FMIPItem.partType.getter();
    v65 = static FMIPPartType.< infix(_:_:)();
    v66 = *v206;
    (*v206)(v63, v76);
    v67 = v76;
    v68 = v192;
    v66(v62, v67);
    v60 = v194;
    sub_100012DF0(v193, &qword_1006B8670, &qword_10055A968);
LABEL_8:
    v51 = v197;
    v69 = v198;
    (v198)(v64, v197);
    v69(v68, v51);
    ++v56;
    v61 = v215;
    v58 += v215;
    v57 = &v216[v215];
    v59 = v64;
    if ((v201 ^ v65))
    {
      v60 = v56 - 1;
      break;
    }
  }

  v5 = v178;
  a3 = v181;
  a4 = v179;
  v44 = v176;
  v45 = v177;
  if ((v201 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v60 < v177)
  {
    goto LABEL_142;
  }

  if (v177 < v60)
  {
    v81 = v61 * (v60 - 1);
    v82 = v60 * v61;
    v83 = v60;
    v84 = v177;
    v85 = v177 * v61;
    do
    {
      if (v84 != --v83)
      {
        v87 = v60;
        v88 = *v181;
        if (!*v181)
        {
          goto LABEL_146;
        }

        v216 = *v205;
        (v216)(v184, v88 + v85, v197);
        if (v85 < v81 || v88 + v85 >= (v88 + v82))
        {
          v86 = v197;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v86 = v197;
          if (v85 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        (v216)(v88 + v81, v184, v86);
        v60 = v87;
        v61 = v215;
      }

      ++v84;
      v81 -= v61;
      v82 -= v61;
      v85 += v61;
    }

    while (v84 < v83);
    v5 = v178;
    a3 = v181;
    a4 = v179;
    v45 = v177;
  }

LABEL_33:
  v89 = *(a3 + 1);
  if (v60 >= v89)
  {
    goto LABEL_41;
  }

  if (__OFSUB__(v60, v45))
  {
    goto LABEL_139;
  }

  if (v60 - v45 >= a4)
  {
LABEL_41:
    v43 = v60;
    if (v60 < v45)
    {
      goto LABEL_138;
    }

    goto LABEL_42;
  }

  if (__OFADD__(v45, a4))
  {
    goto LABEL_140;
  }

  if (v45 + a4 < v89)
  {
    v89 = v45 + a4;
  }

  if (v89 < v45)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    v44 = sub_10025EFD4(v44);
LABEL_111:
    v219 = v44;
    v169 = *(v44 + 2);
    if (v169 >= 2)
    {
      while (*a3)
      {
        v170 = *&v44[16 * v169];
        v171 = *&v44[16 * v169 + 24];
        sub_10025E2B4(*a3 + *(v191 + 72) * v170, (*a3 + *(v191 + 72) * *&v44[16 * v169 + 16]), (*a3 + *(v191 + 72) * v171), v60);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v171 < v170)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10025EFD4(v44);
        }

        if (v169 - 2 >= *(v44 + 2))
        {
          goto LABEL_137;
        }

        v172 = &v44[16 * v169];
        *v172 = v170;
        *(v172 + 1) = v171;
        v219 = v44;
        sub_10025EF48(v169 - 1);
        v44 = v219;
        v169 = *(v219 + 2);
        if (v169 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v183 = v89;
  if (v60 == v89)
  {
    goto LABEL_41;
  }

  v176 = v44;
  v178 = v5;
  v136 = *a3;
  v137 = *(v191 + 72);
  v201 = *(v191 + 16);
  v138 = &v136[v137 * (v60 - 1)];
  v198 = -v137;
  v177 = v45;
  v139 = (v45 - v60);
  v199 = v136;
  v182 = v137;
  v140 = &v136[v60 * v137];
  v141 = v197;
  while (2)
  {
    v194 = v60;
    v185 = v140;
    v143 = v140;
    v186 = v139;
    v144 = v139;
    v187 = v138;
    v145 = v138;
LABEL_96:
    v216 = v144;
    v146 = v201;
    (v201)(v218, v143, v141, v39);
    v146(v217, v145, v141);
    v147 = v203;
    FMIPItem.partType.getter();
    v148 = v204;
    FMIPItem.partType.getter();
    v149 = *(v209 + 48);
    v150 = *v208;
    v151 = v202;
    v152 = v147;
    v153 = v213;
    (*v208)(v202, v152, v213);
    (v150)(v151 + v149, v148, v153);
    v154 = *v212;
    v155 = (*v212)(v151, v153);
    if (v155 != v214)
    {
      if (v155 != v207)
      {
        goto LABEL_101;
      }

      v158 = v154(v151 + v149, v153);
      if (v158 != v214)
      {
        goto LABEL_101;
      }

      (*v206)(v151, v153);
      v142 = *v211;
      (*v211)(v217, v141);
      v142(v218, v141);
LABEL_94:
      v60 = v194 + 1;
      v138 = &v187[v182];
      v139 = v186 - 1;
      v140 = &v185[v182];
      if (v194 + 1 != v183)
      {
        continue;
      }

      v5 = v178;
      a3 = v181;
      v44 = v176;
      v45 = v177;
      v43 = v183;
      if (v183 < v177)
      {
        goto LABEL_138;
      }

LABEL_42:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_10008B8B8(0, *(v44 + 2) + 1, 1, v44);
      }

      v91 = *(v44 + 2);
      v90 = *(v44 + 3);
      v92 = v91 + 1;
      v93 = a3;
      if (v91 >= v90 >> 1)
      {
        v44 = sub_10008B8B8((v90 > 1), v91 + 1, 1, v44);
      }

      *(v44 + 2) = v92;
      v94 = &v44[16 * v91];
      *(v94 + 4) = v45;
      *(v94 + 5) = v43;
      if (!*v180)
      {
        goto LABEL_148;
      }

      if (!v91)
      {
LABEL_3:
        a3 = v93;
        v42 = *(v93 + 1);
        a4 = v179;
        if (v43 >= v42)
        {
          goto LABEL_109;
        }

        goto LABEL_4;
      }

      a3 = *v180;
      while (1)
      {
        v60 = v92 - 1;
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v95 = *(v44 + 4);
          v96 = *(v44 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_62:
          if (v98)
          {
            goto LABEL_127;
          }

          v111 = &v44[16 * v92];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_130;
          }

          v117 = &v44[16 * v60 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_134;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v60 = v92 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v121 = &v44[16 * v92];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_76:
        if (v116)
        {
          goto LABEL_129;
        }

        v124 = &v44[16 * v60];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_132;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_83:
        v132 = v60 - 1;
        if (v60 - 1 >= v92)
        {
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
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v93)
        {
          goto LABEL_145;
        }

        v133 = *&v44[16 * v132 + 32];
        v134 = *&v44[16 * v60 + 40];
        sub_10025E2B4(*v93 + *(v191 + 72) * v133, (*v93 + *(v191 + 72) * *&v44[16 * v60 + 32]), (*v93 + *(v191 + 72) * v134), a3);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v134 < v133)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10025EFD4(v44);
        }

        if (v132 >= *(v44 + 2))
        {
          goto LABEL_124;
        }

        v135 = &v44[16 * v132];
        *(v135 + 4) = v133;
        *(v135 + 5) = v134;
        v219 = v44;
        sub_10025EF48(v60);
        v44 = v219;
        v92 = *(v219 + 2);
        if (v92 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v44[16 * v92 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_125;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_126;
      }

      v106 = &v44[16 * v92];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_128;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_131;
      }

      if (v110 >= v102)
      {
        v128 = &v44[16 * v60 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_135;
        }

        if (v97 < v131)
        {
          v60 = v92 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

    break;
  }

  v156 = v154(v151 + v149, v153);
  if (v156 == v207)
  {
    (*v206)(v151, v153);
    v157 = *v211;
    (*v211)(v217, v141);
    v157(v218, v141);
    goto LABEL_102;
  }

LABEL_101:
  v159 = v195;
  FMIPItem.partType.getter();
  v160 = v196;
  v161 = v217;
  FMIPItem.partType.getter();
  LODWORD(v215) = static FMIPPartType.< infix(_:_:)();
  v162 = *v206;
  (*v206)(v160, v153);
  v163 = v159;
  v141 = v197;
  v162(v163, v153);
  sub_100012DF0(v151, &qword_1006B8670, &qword_10055A968);
  v164 = *v211;
  (*v211)(v161, v141);
  v164(v218, v141);
  if ((v215 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_102:
  v165 = v216;
  if (v199)
  {
    v166 = *v205;
    v167 = v200;
    (*v205)(v200, v143, v141);
    swift_arrayInitWithTakeFrontToBack();
    (v166)(v145, v167, v141);
    v145 += v198;
    v143 += v198;
    v168 = __CFADD__(v165, 1);
    v144 = v165 + 1;
    if (v168)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_10025E2B4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v129 = a4;
  v125 = sub_10007EBC0(&qword_1006B8670, &qword_10055A968);
  __chkstk_darwin(v125);
  v106 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v104 - v9;
  v130 = type metadata accessor for FMIPPartType();
  v11 = *(v130 - 8);
  __chkstk_darwin(v130);
  v115 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v114 = (&v104 - v14);
  __chkstk_darwin(v15);
  v121 = &v104 - v16;
  __chkstk_darwin(v17);
  v120 = &v104 - v18;
  __chkstk_darwin(v19);
  v118 = &v104 - v20;
  __chkstk_darwin(v21);
  v119 = &v104 - v22;
  v131 = type metadata accessor for FMIPItem();
  v23 = *(v131 - 8);
  __chkstk_darwin(v131);
  v117 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v127 = &v104 - v27;
  __chkstk_darwin(v28);
  v126 = &v104 - v30;
  v124 = *(v31 + 72);
  if (!v124)
  {
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (&a2[-a1] == 0x8000000000000000 && v124 == -1)
  {
    goto LABEL_77;
  }

  v32 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v124 != -1)
  {
    v33 = &a2[-a1] / v124;
    v134 = a1;
    v34 = v129;
    v133 = v129;
    if (v33 < v32 / v124)
    {
      v35 = v33 * v124;
      if (v129 < a1 || a1 + v35 <= v129)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v129 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v34 = v129;
LABEL_17:
      v117 = (v34 + v35);
      v132 = v34 + v35;
      if (v35 >= 1 && a2 < a3)
      {
        v39 = *(v23 + 16);
        v113 = (v11 + 32);
        v114 = v39;
        LODWORD(v123) = enum case for FMIPPartType.leftBud(_:);
        LODWORD(v112) = enum case for FMIPPartType.rightBud(_:);
        v111 = (v11 + 8);
        v115 = (v23 + 16);
        v110 = (v23 + 8);
        v40 = (v11 + 88);
        v116 = a3;
        while (1)
        {
          v128 = a2;
          v41 = v34;
          v42 = v131;
          v43 = v114;
          v114(v126, a2, v131);
          v129 = v41;
          v43(v127, v41, v42);
          v44 = v119;
          FMIPItem.partType.getter();
          v45 = v118;
          FMIPItem.partType.getter();
          v46 = *(v125 + 48);
          v47 = *v113;
          v48 = v44;
          v49 = v130;
          (*v113)(v10, v48, v130);
          (v47)(&v10[v46], v45, v49);
          v50 = *v40;
          v51 = (*v40)(v10, v49);
          if (v51 == v123)
          {
            v52 = v50(&v10[v46], v130);
            if (v52 == v112)
            {
              (*v111)(v10, v130);
              v53 = *v110;
              v54 = v131;
              (*v110)(v127, v131);
              v53(v126, v54);
              goto LABEL_29;
            }
          }

          else if (v51 == v112)
          {
            v55 = v50(&v10[v46], v130);
            if (v55 == v123)
            {
              (*v111)(v10, v130);
              v56 = *v110;
              v57 = v131;
              (*v110)(v127, v131);
              v56(v126, v57);
LABEL_34:
              a2 = v128;
              v70 = v124;
              v72 = &v129[v124];
              if (a1 < v129 || a1 >= v72)
              {
                swift_arrayInitWithTakeFrontToBack();
                v71 = v116;
              }

              else
              {
                v71 = v116;
                if (a1 != v129)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133 = v72;
              v34 = v72;
              goto LABEL_41;
            }
          }

          v58 = v40;
          v59 = v120;
          v60 = v126;
          FMIPItem.partType.getter();
          v61 = v10;
          v62 = v121;
          v63 = v127;
          FMIPItem.partType.getter();
          LODWORD(v122) = static FMIPPartType.< infix(_:_:)();
          v64 = *v111;
          v65 = v62;
          v10 = v61;
          v66 = v130;
          (*v111)(v65, v130);
          v67 = v59;
          v40 = v58;
          v64(v67, v66);
          sub_100012DF0(v10, &qword_1006B8670, &qword_10055A968);
          v68 = *v110;
          v69 = v131;
          (*v110)(v63, v131);
          v68(v60, v69);
          if ((v122 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          v70 = v124;
          a2 = &v128[v124];
          if (a1 < v128 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v129;
            v71 = v116;
          }

          else
          {
            v71 = v116;
            if (a1 != v128)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v34 = v129;
          }

LABEL_41:
          a1 += v70;
          v134 = a1;
          if (v34 >= v117 || a2 >= v71)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    v36 = v32 / v124 * v124;
    v127 = v29;
    if (v129 < a2 || &a2[v36] <= v129)
    {
      swift_arrayInitWithTakeFrontToBack();
      v29 = v127;
      v34 = v129;
      v37 = v117;
    }

    else
    {
      v37 = v117;
      if (v129 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
        v29 = v127;
        v34 = v129;
      }
    }

    v73 = v34 + v36;
    if (v36 < 1)
    {
LABEL_74:
      v134 = a2;
      v132 = v73;
LABEL_75:
      sub_10025F1E0(&v134, &v133, &v132, &type metadata accessor for FMIPItem);
      return;
    }

    v74 = -v124;
    v112 = (v23 + 16);
    v111 = (v11 + 32);
    v110 = (v11 + 88);
    LODWORD(v119) = enum case for FMIPPartType.leftBud(_:);
    v108 = enum case for FMIPPartType.rightBud(_:);
    v113 = (v11 + 8);
    v107 = (v23 + 8);
    v75 = v34 + v36;
    v109 = a1;
    v126 = -v124;
LABEL_48:
    v105 = v73;
    v76 = a2;
    v77 = &a2[v74];
    v78 = v106;
    v128 = v77;
    v118 = v76;
    while (1)
    {
      if (v76 <= a1)
      {
        v134 = v76;
        v132 = v105;
        goto LABEL_75;
      }

      v123 = a3;
      v116 = v73;
      v79 = *v112;
      v122 = v75 + v74;
      v80 = v131;
      v79(v29);
      (v79)(v37, v77, v80);
      v81 = v114;
      FMIPItem.partType.getter();
      v82 = v115;
      FMIPItem.partType.getter();
      v83 = *(v125 + 48);
      v84 = *v111;
      v85 = v81;
      v86 = v130;
      (*v111)(v78, v85, v130);
      (v84)(v78 + v83, v82, v86);
      v87 = *v110;
      v88 = (*v110)(v78, v86);
      v124 = v75;
      if (v88 == v119)
      {
        v89 = (v87)(v78 + v83, v130);
        if (v89 == v108)
        {
          (*v113)(v78, v130);
          v90 = 1;
LABEL_59:
          v92 = v117;
          v93 = v127;
          goto LABEL_61;
        }
      }

      else if (v88 == v108)
      {
        v91 = (v87)(v78 + v83, v130);
        if (v91 == v119)
        {
          (*v113)(v78, v130);
          v90 = 0;
          goto LABEL_59;
        }
      }

      v94 = v130;
      v95 = v120;
      v93 = v127;
      FMIPItem.partType.getter();
      v96 = v121;
      v92 = v117;
      FMIPItem.partType.getter();
      v90 = static FMIPPartType.< infix(_:_:)();
      v97 = *v113;
      (*v113)(v96, v94);
      v78 = v106;
      v97(v95, v94);
      sub_100012DF0(v78, &qword_1006B8670, &qword_10055A968);
LABEL_61:
      v98 = v123;
      v99 = &v123[v126];
      v100 = *v107;
      v101 = v131;
      (*v107)(v92, v131);
      v100(v93, v101);
      if (v90)
      {
        v75 = v124;
        if (v98 < v118 || v99 >= v118)
        {
          a3 = v99;
          a2 = v128;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v109;
          v73 = v116;
        }

        else
        {
          v103 = v98 == v118;
          a2 = v128;
          a1 = v109;
          v73 = v116;
          a3 = v99;
          if (!v103)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v74 = v126;
        v29 = v127;
        v37 = v92;
        if (v75 <= v129)
        {
          goto LABEL_74;
        }

        goto LABEL_48;
      }

      v102 = v122;
      v73 = v122;
      if (v98 < v124 || v99 >= v124)
      {
        a3 = v99;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v109;
      }

      else
      {
        v103 = v98 == v124;
        a1 = v109;
        a3 = v99;
        if (!v103)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v73;
      v77 = v128;
      v74 = v126;
      v29 = v127;
      v76 = v118;
      v37 = v92;
      if (v102 <= v129)
      {
        a2 = v118;
        goto LABEL_74;
      }
    }
  }

LABEL_78:
  __break(1u);
}

uint64_t sub_10025EF48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10025EFD4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10025F000(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10025F1E0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10025F408(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v46 = a4;
  LODWORD(v44) = a3;
  v5 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for FMIPAddress();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = objc_opt_self();
  v12 = [v45 mainBundle];
  v51._object = 0x8000000100579900;
  v13._countAndFlagsBits = 0x45524444415F4F4ELL;
  v13._object = 0xEA00000000005353;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD00000000000001CLL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v51)._countAndFlagsBits;

  sub_100007204(a1, v7, &qword_1006BB1E0, &unk_100558B50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &qword_1006BB1E0, &unk_100558B50);
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    goto LABEL_27;
  }

  (*(v9 + 32))(v11, v7, v8);
  v16 = FMIPAddress.displayAddress.getter();
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v16;
  v19 = v17;

  v20 = FMIPAddress.label.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v21;
  if ((v44 & 1) == 0)
  {
    countAndFlagsBits = v20;
    v25 = FMIPAddress.streetAddress.getter();
    if (!v26)
    {
      goto LABEL_14;
    }

    v27 = v25;
    v28 = v26;
    v29 = FMIPAddress.streetName.getter();
    if (!v30)
    {
      (*(v9 + 8))(v11, v8);

LABEL_15:

      if ((v46 & 1) == 0)
      {
        return countAndFlagsBits;
      }

      goto LABEL_27;
    }

    v43 = v29;
    v44 = v30;
    v49 = countAndFlagsBits;
    v50 = v22;
    v47 = v27;
    v48 = v28;
    sub_100035F3C();
    v31 = StringProtocol.contains<A>(_:)();

    if ((v31 & 1) == 0)
    {

      goto LABEL_25;
    }

    v49 = countAndFlagsBits;
    v50 = v22;
    v47 = v43;
    v48 = v44;
    v32 = StringProtocol.contains<A>(_:)();
    (*(v9 + 8))(v11, v8);

    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    countAndFlagsBits = v18;
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

    goto LABEL_27;
  }

  v23 = FMIPAddress.mapItemFormattedAddress.getter();
  if (v24)
  {
    countAndFlagsBits = v23;
LABEL_14:
    (*(v9 + 8))(v11, v8);
    goto LABEL_15;
  }

  result = FMIPAddress.formattedAddressLines.getter();
  if (!result)
  {
LABEL_20:
    (*(v9 + 8))(v11, v8);
    goto LABEL_21;
  }

  if (result[2])
  {
    v34 = result[5];
    v44 = result[4];

    v35 = [v45 mainBundle];
    v52._object = 0x8000000100584E50;
    v36._object = 0x8000000100584E30;
    v52._countAndFlagsBits = 0xD00000000000002ELL;
    v36._countAndFlagsBits = 0xD00000000000001CLL;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v52);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100552210;
    *(v38 + 56) = &type metadata for String;
    v39 = sub_10008EE84();
    *(v38 + 32) = v44;
    *(v38 + 40) = v34;
    *(v38 + 96) = &type metadata for String;
    *(v38 + 104) = v39;
    *(v38 + 64) = v39;
    *(v38 + 72) = v18;
    *(v38 + 80) = v19;
    countAndFlagsBits = String.init(format:_:)();
LABEL_25:

LABEL_26:
    (*(v9 + 8))(v11, v8);
    if ((v46 & 1) == 0)
    {
      return countAndFlagsBits;
    }

LABEL_27:

    v40 = [v45 mainBundle];
    v41._countAndFlagsBits = 0xD000000000000019;
    v53._object = 0x8000000100589D20;
    v41._object = 0x8000000100589D00;
    v53._countAndFlagsBits = 0xD00000000000002BLL;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v53)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025F99C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v91 = a3;
  v79 = a2;
  v96 = a1;
  v5 = type metadata accessor for PublishedLocation.Label.Length();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PublishedLocation.Label.DetailLevel();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v9 - 8);
  v95 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v88 = &v74 - v12;
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  __chkstk_darwin(v22);
  v24 = &v74 - v23;
  v25 = type metadata accessor for PublishedLocation.Label();
  v93 = *(v25 - 8);
  v94 = v25;
  __chkstk_darwin(v25);
  v92 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = 0;
  object = 0;
  v78 = a4;
  if (a4)
  {
    v29 = [objc_opt_self() mainBundle];
    v97._object = 0x8000000100589D20;
    v30._object = 0x8000000100589D00;
    v97._countAndFlagsBits = 0xD00000000000002BLL;
    v30._countAndFlagsBits = 0xD000000000000019;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v97);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;
  }

  v89 = object;
  v90 = countAndFlagsBits;
  v33 = v96;
  sub_100007204(v96, v24, &qword_1006BB1E0, &unk_100558B50);
  v34 = type metadata accessor for FMIPAddress();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v24, 1, v34) == 1)
  {
    sub_100012DF0(v24, &qword_1006BB1E0, &unk_100558B50);
    v86 = 0;
    v87 = 0;
  }

  else
  {
    FMIPAddress.coarseAddressModern.getter();
    v38 = v37;
    (*(v35 + 8))(v24, v34);
    if (v38)
    {
      v39 = String.nilIfEmpty.getter();
      v86 = v40;
      v87 = v39;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v33 = v96;
  }

  v41 = v95;
  sub_100007204(v33, v21, &qword_1006BB1E0, &unk_100558B50);
  if (v36(v21, 1, v34) == 1)
  {
    sub_100012DF0(v21, &qword_1006BB1E0, &unk_100558B50);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    FMIPAddress.streetAddressModern.getter();
    v43 = v42;
    (*(v35 + 8))(v21, v34);
    if (v43)
    {
      v44 = String.nilIfEmpty.getter();
      v84 = v45;
      v85 = v44;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v41 = v95;
    v33 = v96;
  }

  v46 = v88;
  sub_100007204(v33, v18, &qword_1006BB1E0, &unk_100558B50);
  if (v36(v18, 1, v34) == 1)
  {
    sub_100012DF0(v18, &qword_1006BB1E0, &unk_100558B50);
    v88 = 0;
    v83 = 0;
  }

  else
  {
    FMIPAddress.smallAddressModern.getter();
    v48 = v47;
    (*(v35 + 8))(v18, v34);
    if (v48)
    {
      v88 = String.nilIfEmpty.getter();
      v83 = v49;
    }

    else
    {
      v88 = 0;
      v83 = 0;
    }

    v41 = v95;
    v33 = v96;
  }

  sub_100007204(v33, v15, &qword_1006BB1E0, &unk_100558B50);
  if (v36(v15, 1, v34) == 1)
  {
    sub_100012DF0(v15, &qword_1006BB1E0, &unk_100558B50);
  }

  else
  {
    FMIPAddress.mediumAddressModern.getter();
    v51 = v50;
    (*(v35 + 8))(v15, v34);
    if (v51)
    {
      String.nilIfEmpty.getter();
    }

    v41 = v95;
  }

  sub_100007204(v33, v46, &qword_1006BB1E0, &unk_100558B50);
  if (v36(v46, 1, v34) == 1)
  {
    sub_100012DF0(v46, &qword_1006BB1E0, &unk_100558B50);
  }

  else
  {
    FMIPAddress.largeAddressModern.getter();
    v53 = v52;
    (*(v35 + 8))(v46, v34);
    if (v53)
    {
      String.nilIfEmpty.getter();
    }

    v41 = v95;
    v33 = v96;
  }

  sub_100007204(v33, v41, &qword_1006BB1E0, &unk_100558B50);
  if (v36(v41, 1, v34) == 1)
  {
    sub_100012DF0(v41, &qword_1006BB1E0, &unk_100558B50);
    v54 = v92;
  }

  else
  {
    FMIPAddress.poiAddressModern.getter();
    v56 = v55;
    (*(v35 + 8))(v41, v34);
    v54 = v92;
    if (v56)
    {
      String.nilIfEmpty.getter();
    }

    v33 = v96;
  }

  v57 = v89;

  PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)();
  if (v91)
  {

    v59 = v80;
    v58 = v81;
    v60 = v82;
    (*(v81 + 104))(v80, enum case for PublishedLocation.Label.DetailLevel.detailed(_:), v82);
    v61 = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    (*(v58 + 8))(v59, v60);
    if (v63)
    {
      if (!v67)
      {

        v61 = v65;
LABEL_45:
        sub_10025F408(v33, v79, 1, v78 & 1);
      }
    }

    else if (!v67)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (!v57)
    {
      v69 = v76;
      v68 = v77;
      v70 = v75;
      (*(v76 + 104))(v75, enum case for PublishedLocation.Label.Length.small(_:), v77);
      PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)();
      v72 = v71;
      (*(v69 + 8))(v70, v68);
      if (!v72)
      {
        sub_10025F408(v33, v79, 0, v78 & 1);
      }
    }

    v61 = 0;
  }

  (*(v93 + 8))(v54, v94);
  return v61;
}

uint64_t sub_100260334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v462 = a8;
  v531 = a7;
  v505 = a6;
  v466 = a5;
  v472 = a4;
  v529 = a3;
  v536 = a2;
  v530 = a9;
  v11 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v11 - 8);
  v475 = &v459 - v12;
  v490 = type metadata accessor for FMIPActionStatus();
  v502 = *(v490 - 8);
  __chkstk_darwin(v490);
  v489 = &v459 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v488 = &v459 - v15;
  v16 = sub_10007EBC0(&qword_1006B8678, &qword_100563EE0);
  __chkstk_darwin(v16 - 8);
  v495 = &v459 - v17;
  v516 = type metadata accessor for FMIPEraseMetadata();
  v515 = *(v516 - 8);
  __chkstk_darwin(v516);
  v501 = &v459 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v499 = *(v500 - 8);
  __chkstk_darwin(v500);
  v497 = &v459 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = type metadata accessor for Date.FormatStyle.DateStyle();
  v496 = *(v498 - 8);
  __chkstk_darwin(v498);
  v494 = &v459 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v21 - 8);
  v461 = &v459 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v476 = &v459 - v24;
  __chkstk_darwin(v25);
  v491 = &v459 - v26;
  __chkstk_darwin(v27);
  v514 = &v459 - v28;
  __chkstk_darwin(v29);
  v519 = &v459 - v30;
  v482 = type metadata accessor for FormatStyleCapitalizationContext();
  v483 = *(v482 - 8);
  __chkstk_darwin(v482);
  v481 = &v459 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v518 = type metadata accessor for Date();
  v517 = *(v518 - 8);
  __chkstk_darwin(v518);
  v464 = &v459 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v471 = &v459 - v34;
  __chkstk_darwin(v35);
  v470 = &v459 - v36;
  __chkstk_darwin(v37);
  v492 = &v459 - v38;
  __chkstk_darwin(v39);
  v485 = &v459 - v40;
  __chkstk_darwin(v41);
  v480 = &v459 - v42;
  __chkstk_darwin(v43);
  v493 = &v459 - v44;
  __chkstk_darwin(v45);
  v468 = &v459 - v46;
  __chkstk_darwin(v47);
  v474 = &v459 - v48;
  v537 = type metadata accessor for FMIPLocation();
  v535 = *(v537 - 8);
  __chkstk_darwin(v537);
  v465 = &v459 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = sub_10007EBC0(&qword_1006B8680, &unk_10055A970);
  __chkstk_darwin(v477);
  v479 = &v459 - v50;
  v51 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v51 - 8);
  v506 = &v459 - v52;
  v53 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v53 - 8);
  v463 = &v459 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v528 = &v459 - v56;
  __chkstk_darwin(v57);
  v534 = &v459 - v58;
  v59 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v59 - 8);
  v527 = &v459 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v525 = &v459 - v62;
  v63 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v63 - 8);
  v460 = &v459 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v469 = &v459 - v66;
  __chkstk_darwin(v67);
  v484 = &v459 - v68;
  __chkstk_darwin(v69);
  v486 = &v459 - v70;
  __chkstk_darwin(v71);
  v478 = &v459 - v72;
  __chkstk_darwin(v73);
  v473 = &v459 - v74;
  __chkstk_darwin(v75);
  v532 = &v459 - v76;
  __chkstk_darwin(v77);
  v533 = &v459 - v78;
  __chkstk_darwin(v79);
  v526 = (&v459 - v80);
  __chkstk_darwin(v81);
  v524 = &v459 - v82;
  __chkstk_darwin(v83);
  v544 = &v459 - v84;
  v540 = type metadata accessor for FMIPDeviceStatus();
  v543 = *(v540 - 1);
  __chkstk_darwin(v540);
  v512 = &v459 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v521 = &v459 - v87;
  __chkstk_darwin(v88);
  v90 = &v459 - v89;
  __chkstk_darwin(v91);
  v93 = &v459 - v92;
  v542 = type metadata accessor for FMIPDeviceState();
  v94 = *(v542 - 8);
  __chkstk_darwin(v542);
  v96 = &v459 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v99 = &v459 - v98;
  v100 = FMIPDevice.ownerIdentifier.getter();
  v102 = v101;
  if (v100 == FMIPDefaultOwnerIdentifier.getter() && v102 == v103)
  {
    v504 = 1;
  }

  else
  {
    v504 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isFamilySharedDevice.getter();
  v104 = sub_100264AC8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v105 = v542;
  v538 = v104;
  v503 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v107 = v94 + 8;
  v106 = *(v94 + 8);
  v106(v96, v105);
  v539 = v106;
  v106(v99, v105);
  if (v531)
  {
    v467 = 0;
  }

  else
  {
    v467 = FMIPDevice.isLocating.getter();
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.isLocationCapable.getter();
  v108 = v542;
  v487 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v109 = v539;
  v539(v96, v108);
  v109(v99, v108);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isLocationEnabled.getter();
  v511 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v109(v96, v108);
  v109(v99, v108);
  FMIPDevice.status.getter();
  v110 = *(v543 + 104);
  v510 = v543 + 104;
  v509 = v110;
  v110(v90, enum case for FMIPDeviceStatus.online(_:), v540);
  v111 = sub_100264AC8(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus, &protocol conformance descriptor for FMIPDeviceStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v508 = v111;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v545 == v549 && v546 == v550)
  {
    v112 = a1;
    v522 = 1;
  }

  else
  {
    v112 = a1;
    v522 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v113 = v543 + 8;
  v114 = *(v543 + 8);
  v115 = v90;
  v116 = v540;
  v114(v115, v540);
  v543 = v113;
  v507 = v114;
  v114(v93, v116);

  v541 = v112;
  FMIPDevice.state.getter();
  static FMIPDeviceState.isThisDevice.getter();
  v117 = v542;
  v520 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v118 = v539;
  v539(v96, v117);
  v513 = v107;
  v118(v99, v117);
  v119 = v525;
  sub_100007204(v536, v525, &qword_1006B07D0, qword_100552820);
  v120 = type metadata accessor for FMIPItem();
  v121 = *(v120 - 8);
  v523 = *(v121 + 48);
  if (v523(v119, 1, v120) == 1)
  {
    sub_100012DF0(v119, &qword_1006B07D0, qword_100552820);
    v122 = v535;
    v123 = v524;
    v124 = v537;
    (*(v535 + 56))(v524, 1, 1, v537);
  }

  else
  {
    v123 = v524;
    FMIPItem.location.getter();
    (*(v121 + 8))(v119, v120);
    v122 = v535;
    v126 = v535 + 48;
    v125 = *(v535 + 48);
    v124 = v537;
    if ((v125)(v123, 1, v537) != 1)
    {
      v525 = v126 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v129 = v125;
      v130 = v544;
      (*(v122 + 32))(v544, v123, v124);
      v131 = v130;
      v127 = v129;
      v128 = v525;
      (*(v122 + 56))(v131, 0, 1, v124);
      goto LABEL_18;
    }
  }

  FMIPDevice.bestLocation.getter();
  v127 = *(v122 + 48);
  v128 = (v122 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if ((v127)(v123, 1, v124) != 1)
  {
    sub_100012DF0(v123, &unk_1006C0220, qword_100553770);
  }

LABEL_18:
  v132 = v526;
  v526 = v127;
  sub_100007204(v544, v132, &unk_1006C0220, qword_100553770);
  if ((v127)(v132, 1, v124) == 1)
  {
    sub_100012DF0(v132, &unk_1006C0220, qword_100553770);
    v133 = 0;
  }

  else
  {
    v133 = FMIPLocation.isOld.getter();
    (*(v535 + 8))(v132, v537);
  }

  v134 = v533;
  v135 = v527;
  sub_100007204(v536, v527, &qword_1006B07D0, qword_100552820);
  if (v523(v135, 1, v120) == 1)
  {
    sub_100012DF0(v135, &qword_1006B07D0, qword_100552820);
    v136 = type metadata accessor for FMIPAddress();
    v137 = v528;
    (*(*(v136 - 8) + 56))(v528, 1, 1, v136);
  }

  else
  {
    v138 = v528;
    FMIPItem.address.getter();
    v139 = v120;
    v137 = v138;
    (*(v121 + 8))(v135, v139);
    v136 = type metadata accessor for FMIPAddress();
    v140 = *(v136 - 8);
    if ((*(v140 + 48))(v138, 1, v136) != 1)
    {
      v141 = v534;
      (*(v140 + 32))(v534, v138, v136);
      (*(v140 + 56))(v141, 0, 1, v136);
      goto LABEL_27;
    }
  }

  v141 = v534;
  FMIPDevice.address.getter();
  type metadata accessor for FMIPAddress();
  if ((*(*(v136 - 8) + 48))(v137, 1, v136) != 1)
  {
    sub_100012DF0(v137, &qword_1006BB1E0, &unk_100558B50);
  }

LABEL_27:
  v142 = v532;
  if (v529)
  {
    v143 = v541;
    if (v522 & v133)
    {
      v144 = 1;
    }

    else
    {
      LODWORD(v536) = v133;
      FMIPDevice.status.getter();
      v145 = v512;
      v509(v512, enum case for FMIPDeviceStatus.pending(_:), v540);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v545 == v549 && v546 == v550)
      {
        v146 = v141;
      }

      else
      {
        v146 = v141;
        LODWORD(v536) = _stringCompareWithSmolCheck(_:_:expecting:)() & v536;
      }

      v147 = v145;
      v148 = v540;
      v149 = v507;
      v507(v147, v540);
      v149(v521, v148);

      v142 = v532;
      v141 = v146;
      v134 = v533;
      v144 = v536;
    }
  }

  else
  {
    v144 = 0;
    v143 = v541;
  }

  if (FMIPDevice.pairingIncomplete.getter())
  {
    v150 = [objc_opt_self() mainBundle];
    v551._object = 0x8000000100589D70;
    v151._object = 0x8000000100589D50;
    v551._countAndFlagsBits = 0xD00000000000002ELL;
    v151._countAndFlagsBits = 0xD00000000000001CLL;
    v152._countAndFlagsBits = 0;
    v152._object = 0xE000000000000000;
    v153 = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, 0, v150, v152, v551);
    countAndFlagsBits = v153._countAndFlagsBits;
    object = v153._object;

    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = v544;
    goto LABEL_38;
  }

  v525 = v128;
  if ((v520 & 1) == 0)
  {
    FMIPDevice.state.getter();
    static FMIPDeviceState.isDeviceInPendingRemove.getter();
    v167 = v542;
    v168 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v169 = v539;
    v539(v96, v167);
    v169(v99, v167);
    if (v168)
    {
      v165 = v519;
      FMIPDevice.pendingRemoveUntilTimestamp.getter();
      v159 = v544;
      v170 = v518;
      v171 = v517;
    }

    else
    {
      v171 = v517;
      v165 = v519;
      v170 = v518;
      (*(v517 + 56))(v519, 1, 1, v518);
      v159 = v544;
    }

    v188 = v515;
    v189 = v514;
    sub_100007204(v165, v514, &unk_1006B0000, &unk_100552AA0);
    v543 = *(v171 + 48);
    v190 = (v543)(v189, 1, v170);
    v191 = v516;
    if (v190 != 1)
    {
      v195 = v493;
      (*(v171 + 32))(v493, v189, v170);
      v196 = v171;
      v197 = [objc_opt_self() mainBundle];
      v198.value._countAndFlagsBits = 0xD000000000000015;
      v552._countAndFlagsBits = 0xD00000000000001ALL;
      v552._object = 0x800000010058A0D0;
      v199._countAndFlagsBits = 0xD000000000000023;
      v199._object = 0x800000010058A080;
      v198.value._object = 0x800000010058A0B0;
      v200._countAndFlagsBits = 0;
      v200._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v199, v198, v197, v200, v552);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_100552220;
      v202 = v494;
      static Date.FormatStyle.DateStyle.abbreviated.getter();
      v203 = v497;
      static Date.FormatStyle.TimeStyle.omitted.getter();
      v204 = Date.formatted(date:time:)();
      v206 = v205;
      (*(v499 + 8))(v203, v500);
      (*(v496 + 8))(v202, v498);
      *(v201 + 56) = &type metadata for String;
      *(v201 + 64) = sub_10008EE84();
      *(v201 + 32) = v204;
      *(v201 + 40) = v206;
      countAndFlagsBits = String.init(format:_:)();
      object = v207;

      (*(v196 + 8))(v195, v170);
      v159 = v544;
      sub_100012DF0(v519, &unk_1006B0000, &unk_100552AA0);
      v156 = 0;
      v157 = 0;
      v158 = 0;
      v141 = v534;
      goto LABEL_38;
    }

    sub_100012DF0(v189, &unk_1006B0000, &unk_100552AA0);
    v192 = v495;
    FMIPDevice.eraseMetadata.getter();
    if ((*(v188 + 48))(v192, 1, v191) == 1)
    {
      sub_100012DF0(v192, &qword_1006B8678, &qword_100563EE0);
      v193 = v491;
      v141 = v534;
      v194 = v170;
      goto LABEL_63;
    }

    (*(v188 + 32))(v501, v192, v191);
    v213 = v488;
    FMIPEraseMetadata.status.getter();
    v214 = v502;
    v215 = *(v502 + 104);
    v216 = v489;
    v217 = v490;
    v542 = v502 + 104;
    v540 = v215;
    (v215)(v489, enum case for FMIPActionStatus.eraseCancelled(_:), v490);
    v539 = sub_100264AC8(&unk_1006C1DA0, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    v218 = dispatch thunk of static Equatable.== infix(_:_:)();
    v219 = *(v214 + 8);
    v219(v216, v217);
    v502 = v214 + 8;
    v219(v213, v217);
    if (v218)
    {
      (*(v188 + 8))(v501, v191);
      v141 = v534;
      v165 = v519;
      v194 = v518;
      v159 = v544;
LABEL_62:
      v193 = v491;
LABEL_63:
      FMIPDevice.wipedTimestamp.getter();
      v229 = (v543)(v193, 1, v194);
      v230 = v492;
      if (v229 == 1)
      {
        v231 = v194;
        sub_100012DF0(v193, &unk_1006B0000, &unk_100552AA0);
LABEL_73:
        v255 = v522 ^ 1;
        if (!(v504 & 1 | ((v503 & 1) == 0)) && (v255 & 1) == 0)
        {
          v256 = v484;
          sub_100007204(v159, v484, &unk_1006C0220, qword_100553770);
          v257 = v537;
          if (v526(v256, 1, v537) == 1)
          {
            sub_100012DF0(v256, &unk_1006C0220, qword_100553770);
            v258 = [objc_opt_self() mainBundle];
            v554._object = 0x8000000100589F70;
            v259._countAndFlagsBits = 0xD000000000000030;
            v259._object = 0x8000000100589F30;
            v554._countAndFlagsBits = 0xD000000000000042;
            v260._countAndFlagsBits = 0;
            v260._object = 0xE000000000000000;
            v261 = NSLocalizedString(_:tableName:bundle:value:comment:)(v259, 0, v258, v260, v554);
            countAndFlagsBits = v261._countAndFlagsBits;
            object = v261._object;

            v262 = &unk_1006B0000;
            v263 = &unk_100552AA0;
            v264 = v165;
LABEL_104:
            sub_100012DF0(v264, v262, v263);
            goto LABEL_105;
          }

          v265 = v256;
          v266 = FMIPLocation.location.getter();
          (*(v535 + 8))(v265, v257);
        }

        if (((v487 | v255) & 1) == 0)
        {
          countAndFlagsBits = sub_10022EF6C(0xD000000000000036, 0x8000000100589EF0);
          object = v274;
          goto LABEL_84;
        }

        v267 = v476;
        FMIPDevice.lockedTimestamp.getter();
        v268 = v231;
        if ((v543)(v267, 1, v231) != 1)
        {
          v290 = v165;
          v291 = v470;
          (*(v517 + 32))(v470, v267, v268);
          v292 = [objc_opt_self() mainBundle];
          v293._countAndFlagsBits = 0xD00000000000001BLL;
          v556._object = 0x8000000100589EC0;
          v293._object = 0x8000000100589EA0;
          v556._countAndFlagsBits = 0xD00000000000002DLL;
          v294._countAndFlagsBits = 0;
          v294._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v293, 0, v292, v294, v556);

          sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
          v295 = swift_allocObject();
          *(v295 + 16) = xmmword_100552220;
          if (v505)
          {
            v296 = sub_100455290();
            isa = Date._bridgeToObjectiveC()().super.isa;
            v298 = [v296 stringFromDate:isa];

            v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v301 = v300;
          }

          else
          {
            v371 = v481;
            static FormatStyleCapitalizationContext.middleOfSentence.getter();
            v299 = sub_1000CA838(v371);
            v301 = v372;
            (*(v483 + 8))(v371, v482);
          }

          *(v295 + 56) = &type metadata for String;
          *(v295 + 64) = sub_10008EE84();
          *(v295 + 32) = v299;
          *(v295 + 40) = v301;
          countAndFlagsBits = String.init(format:_:)();
          object = v373;

          (*(v517 + 8))(v291, v518);
          v262 = &unk_1006B0000;
          v263 = &unk_100552AA0;
          v264 = v290;
          goto LABEL_104;
        }

        sub_100012DF0(v267, &unk_1006B0000, &unk_100552AA0);
        v269 = v469;
        sub_100007204(v159, v469, &unk_1006C0220, qword_100553770);
        v270 = v537;
        if (v526(v269, 1, v537) == 1)
        {
          sub_100012DF0(v269, &unk_1006C0220, qword_100553770);
          if (v531)
          {
            v271 = "g PEOPLE_LIST_NO_LOCATION_LABEL";
            v272 = 0x800000010057DA00;
            v273 = [objc_opt_self() mainBundle];
LABEL_145:
            v405 = v273;
            v562._object = v272;
            v406._object = (v271 | 0x8000000000000000);
            v562._countAndFlagsBits = 0xD00000000000002ELL;
            v406._countAndFlagsBits = 0xD00000000000001CLL;
            v407._countAndFlagsBits = 0;
            v407._object = 0xE000000000000000;
            v408 = NSLocalizedString(_:tableName:bundle:value:comment:)(v406, 0, v405, v407, v562);
            countAndFlagsBits = v408._countAndFlagsBits;
            object = v408._object;

            goto LABEL_84;
          }

          if ((v522 & 1) == 0)
          {
            v271 = "g DEVICE_LIST_SUBTITLE_HOME";
            v272 = 0x8000000100589D70;
            v273 = [objc_opt_self() mainBundle];
            goto LABEL_145;
          }

          if (!a10)
          {
            v415 = v460;
            sub_100007204(v159, v460, &unk_1006C0220, qword_100553770);
            if (v526(v415, 1, v270) == 1)
            {
              sub_100012DF0(v415, &unk_1006C0220, qword_100553770);
              v416 = v461;
              (*(v517 + 56))(v461, 1, 1, v231);
              sub_100012DF0(v416, &unk_1006B0000, &unk_100552AA0);
              v417 = v165;
              v418 = [objc_opt_self() mainBundle];
              v563._object = 0x8000000100589E30;
              v419._countAndFlagsBits = 0xD000000000000031;
              v419._object = 0x8000000100589DF0;
              v563._countAndFlagsBits = 0xD000000000000043;
              v420._countAndFlagsBits = 0;
              v420._object = 0xE000000000000000;
              v421 = NSLocalizedString(_:tableName:bundle:value:comment:)(v419, 0, v418, v420, v563);
              countAndFlagsBits = v421._countAndFlagsBits;
              object = v421._object;

              v264 = v417;
              v262 = &unk_1006B0000;
              v263 = &unk_100552AA0;
              goto LABEL_104;
            }

            v455 = FMIPLocation.location.getter();
            (*(v535 + 8))(v415, v270);
            v456 = [v455 timestamp];

            v457 = v461;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100012DF0(v165, &unk_1006B0000, &unk_100552AA0);
            (*(v517 + 56))(v457, 0, 1, v231);
            sub_100012DF0(v457, &unk_1006B0000, &unk_100552AA0);
            v158 = 0;
            v156 = 0;
            v157 = 0;
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
            goto LABEL_106;
          }

          v393 = objc_opt_self();

          v394 = [v393 mainBundle];
          v395._countAndFlagsBits = 0xD000000000000010;
          v561._countAndFlagsBits = 0xD000000000000015;
          v561._object = 0x80000001005797A0;
          v395._object = 0x8000000100589E80;
          v396.value._object = 0x8000000100579780;
          v396.value._countAndFlagsBits = 0xD000000000000010;
          v397._countAndFlagsBits = 0;
          v397._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v395, v396, v394, v397, v561);

          sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
          v398 = swift_allocObject();
          *(v398 + 16) = xmmword_100552220;
          *(v398 + 56) = &type metadata for String;
          *(v398 + 64) = sub_10008EE84();
          *(v398 + 32) = v462;
          *(v398 + 40) = a10;
          countAndFlagsBits = String.init(format:_:)();
          object = v399;

LABEL_84:
          v262 = &unk_1006B0000;
          v263 = &unk_100552AA0;
LABEL_103:
          v264 = v165;
          goto LABEL_104;
        }

        v362 = v270;
        v363 = FMIPLocation.location.getter();
        (*(v535 + 8))(v269, v362);
        v364 = [v363 timestamp];

        v365 = v464;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v517 + 32))(v471, v365, v231);
        if (v531)
        {
          v366 = [objc_opt_self() mainBundle];
          v559._object = 0x800000010057DA00;
          v367._object = 0x800000010057D9E0;
          v559._countAndFlagsBits = 0xD00000000000002ELL;
          v367._countAndFlagsBits = 0xD00000000000001CLL;
          v368._countAndFlagsBits = 0;
          v368._object = 0xE000000000000000;
          v369 = NSLocalizedString(_:tableName:bundle:value:comment:)(v367, 0, v366, v368, v559);
          countAndFlagsBits = v369._countAndFlagsBits;
          object = v369._object;

          v370 = v231;
          goto LABEL_157;
        }

        if (!a10)
        {
          v370 = v231;
          if (v505)
          {
            Date.timeIntervalSinceNow.getter();
            if (v409 >= 3600.0)
            {
              v451 = sub_100455280();
              v452 = Date._bridgeToObjectiveC()().super.isa;
              v453 = [v451 stringFromDate:v452];

              countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
              object = v454;

              goto LABEL_157;
            }

            v410 = v481;
            static FormatStyleCapitalizationContext.beginningOfSentence.getter();
            v411 = sub_1000CA844(v410);
          }

          else
          {
            v410 = v481;
            static FormatStyleCapitalizationContext.beginningOfSentence.getter();
            v411 = sub_1000CA838(v410);
          }

          countAndFlagsBits = v411;
          object = v412;
          (*(v483 + 8))(v410, v482);
LABEL_157:
          if (v472)
          {
            v156 = sub_10025F99C(v141, v159, v505 & 1, v466 & 1);
            v157 = v436;
            v438 = v437;
            v440 = v439;
            v441 = [objc_opt_self() mainBundle];
            v442._countAndFlagsBits = 0xD00000000000001ALL;
            v565._object = 0x8000000100584EF0;
            v442._object = 0x8000000100584ED0;
            v565._countAndFlagsBits = 0xD00000000000002CLL;
            v443._countAndFlagsBits = 0;
            v443._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v442, 0, v441, v443, v565);

            sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
            v444 = swift_allocObject();
            *(v444 + 16) = xmmword_100552210;
            *(v444 + 56) = &type metadata for String;
            v445 = sub_10008EE84();
            *(v444 + 32) = v438;
            *(v444 + 40) = v440;
            *(v444 + 96) = &type metadata for String;
            *(v444 + 104) = v445;
            v141 = v534;
            *(v444 + 64) = v445;
            *(v444 + 72) = countAndFlagsBits;
            *(v444 + 80) = object;
            v446 = v519;
            v159 = v544;
            countAndFlagsBits = String.init(format:_:)();
            object = v447;
            v370 = v518;
          }

          else
          {
            v156 = 0;
            v446 = v165;
            v157 = 0;
          }

          v448 = sub_1004A3F00(v159);
          v449 = objc_opt_self();
          v450 = &selRef_systemRedColor;
          if ((v448 & 1) == 0)
          {
            v450 = &selRef_systemGreenColor;
          }

          v158 = [v449 *v450];
          (*(v517 + 8))(v471, v370);
          sub_100012DF0(v446, &unk_1006B0000, &unk_100552AA0);
          goto LABEL_106;
        }

        v370 = v231;
        v400 = v165;
        if (v505)
        {
          Date.timeIntervalSinceNow.getter();
          if (v401 >= 3600.0)
          {
            v422 = sub_100455280();
            v423 = Date._bridgeToObjectiveC()().super.isa;
            v424 = [v422 stringFromDate:v423];

            v413 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v414 = v425;

            goto LABEL_156;
          }

          v402 = v481;
          static FormatStyleCapitalizationContext.beginningOfSentence.getter();
          v403 = sub_1000CA844(v402);
        }

        else
        {
          v402 = v481;
          static FormatStyleCapitalizationContext.beginningOfSentence.getter();
          v403 = sub_1000CA838(v402);
        }

        v413 = v403;
        v414 = v404;
        (*(v483 + 8))(v402, v482);
LABEL_156:
        v426 = [objc_opt_self() mainBundle];
        v427._countAndFlagsBits = 0xD000000000000010;
        v564._countAndFlagsBits = 0xD000000000000015;
        v564._object = 0x80000001005797A0;
        v427._object = 0x8000000100589E80;
        v428.value._object = 0x8000000100579780;
        v428.value._countAndFlagsBits = 0xD000000000000010;
        v429._countAndFlagsBits = 0;
        v429._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v427, v428, v426, v429, v564);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v430 = swift_allocObject();
        *(v430 + 16) = xmmword_100552220;
        *(v430 + 56) = &type metadata for String;
        *(v430 + 64) = sub_10008EE84();
        *(v430 + 32) = v462;
        *(v430 + 40) = a10;
        v431 = String.init(format:_:)();
        v433 = v432;

        v545 = v431;
        v546 = v433;

        v434._countAndFlagsBits = 10;
        v434._object = 0xE100000000000000;
        String.append(_:)(v434);

        v435._countAndFlagsBits = v413;
        v435._object = v414;
        String.append(_:)(v435);

        countAndFlagsBits = v545;
        object = v546;
        v165 = v400;
        goto LABEL_157;
      }

      (*(v171 + 32))(v492, v193, v194);
      Date.timeIntervalSince1970.getter();
      v233 = v232;
      v234 = v486;
      sub_100007204(v159, v486, &unk_1006C0220, qword_100553770);
      v235 = v171;
      v236 = v537;
      if (v526(v234, 1, v537) == 1)
      {
        v231 = v194;
        sub_100012DF0(v234, &unk_1006C0220, qword_100553770);
        if (v233 <= 0.0)
        {
          (*(v517 + 8))(v230, v194);
LABEL_72:
          v159 = v544;
          goto LABEL_73;
        }
      }

      else
      {
        v237 = FMIPLocation.location.getter();
        (*(v535 + 8))(v234, v236);
        v238 = [v237 timestamp];

        v239 = v485;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince1970.getter();
        v241 = v240;
        v242 = *(v235 + 8);
        v231 = v194;
        v242(v239, v194);
        if (v241 >= v233)
        {
          v242(v230, v194);
          goto LABEL_72;
        }
      }

      v243 = v231;
      v244 = [objc_opt_self() mainBundle];
      v245._countAndFlagsBits = 0xD00000000000001BLL;
      v553._object = 0x8000000100589FE0;
      v245._object = 0x8000000100589FC0;
      v553._countAndFlagsBits = 0xD00000000000002DLL;
      v246._countAndFlagsBits = 0;
      v246._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v245, 0, v244, v246, v553);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_100552220;
      v248 = v165;
      if (v505)
      {
        v249 = sub_100455290();
        v250 = Date._bridgeToObjectiveC()().super.isa;
        v251 = [v249 stringFromDate:v250];

        v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v254 = v253;
      }

      else
      {
        v302 = v481;
        static FormatStyleCapitalizationContext.middleOfSentence.getter();
        v252 = sub_1000CA838(v302);
        v254 = v303;
        (*(v483 + 8))(v302, v482);
      }

      *(v247 + 56) = &type metadata for String;
      *(v247 + 64) = sub_10008EE84();
      *(v247 + 32) = v252;
      *(v247 + 40) = v254;
      countAndFlagsBits = String.init(format:_:)();
      object = v304;

      (*(v517 + 8))(v230, v243);
      v185 = &unk_1006B0000;
      v186 = &unk_100552AA0;
      v187 = v248;
      goto LABEL_47;
    }

    v220 = v480;
    v221 = v501;
    FMIPEraseMetadata.timestamp.getter();
    Date.timeIntervalSince1970.getter();
    v223 = v222;
    v224 = *(v171 + 8);
    v225 = v220;
    v226 = v518;
    v224(v225, v518);
    v227 = v478;
    sub_100007204(v544, v478, &unk_1006C0220, qword_100553770);
    v228 = v537;
    if (v526(v227, 1, v537) == 1)
    {
      sub_100012DF0(v227, &unk_1006C0220, qword_100553770);
      if (v223 <= 0.0)
      {
LABEL_61:
        (*(v515 + 8))(v221, v516);
        v141 = v534;
        v159 = v544;
        v165 = v519;
        v194 = v518;
        goto LABEL_62;
      }
    }

    else
    {
      v275 = v228;
      v276 = FMIPLocation.location.getter();
      (*(v535 + 8))(v227, v275);
      v277 = [v276 timestamp];

      v278 = v485;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = v517;
      Date.timeIntervalSince1970.getter();
      v280 = v279;
      v224(v278, v226);
      if (v280 >= v223)
      {
        goto LABEL_61;
      }
    }

    v281 = v488;
    FMIPEraseMetadata.status.getter();
    v282 = v489;
    v283 = v490;
    (v540)(v489, enum case for FMIPActionStatus.pending(_:), v490);
    v284 = dispatch thunk of static Equatable.== infix(_:_:)();
    v219(v282, v283);
    v219(v281, v283);
    v285 = [objc_opt_self() mainBundle];
    if (v284)
    {
      v555._object = 0x800000010058A040;
      v286._countAndFlagsBits = 0xD000000000000022;
      v286._object = 0x800000010058A010;
      v555._countAndFlagsBits = 0xD000000000000034;
      v287._countAndFlagsBits = 0;
      v287._object = 0xE000000000000000;
      v288 = NSLocalizedString(_:tableName:bundle:value:comment:)(v286, 0, v285, v287, v555);
      countAndFlagsBits = v288._countAndFlagsBits;
      object = v288._object;

      v141 = v534;
      v289 = v519;
    }

    else
    {
      v351._countAndFlagsBits = 0xD00000000000001BLL;
      v558._object = 0x8000000100589FE0;
      v351._object = 0x8000000100589FC0;
      v558._countAndFlagsBits = 0xD00000000000002DLL;
      v352._countAndFlagsBits = 0;
      v352._object = 0xE000000000000000;
      v353 = NSLocalizedString(_:tableName:bundle:value:comment:)(v351, 0, v285, v352, v558)._countAndFlagsBits;

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v354 = swift_allocObject();
      *(v354 + 16) = xmmword_100552220;
      v289 = v519;
      if (v505)
      {
        v355 = sub_100455290();
        v356 = v485;
        FMIPEraseMetadata.timestamp.getter();
        v357 = Date._bridgeToObjectiveC()().super.isa;
        v224(v356, v518);
        v358 = [v355 stringFromDate:v357];

        v359 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v361 = v360;
      }

      else
      {
        v543 = v353;
        v388 = v224;
        v389 = v485;
        FMIPEraseMetadata.timestamp.getter();
        v390 = v481;
        static FormatStyleCapitalizationContext.middleOfSentence.getter();
        v359 = sub_1000CA838(v390);
        v361 = v391;
        (*(v483 + 8))(v390, v482);
        v388(v389, v518);
      }

      *(v354 + 56) = &type metadata for String;
      *(v354 + 64) = sub_10008EE84();
      *(v354 + 32) = v359;
      *(v354 + 40) = v361;
      countAndFlagsBits = String.init(format:_:)();
      object = v392;

      v141 = v534;
    }

    (*(v515 + 8))(v221, v516);
    v185 = &unk_1006B0000;
    v186 = &unk_100552AA0;
    v187 = v289;
    goto LABEL_47;
  }

  if ((v511 & 1) == 0)
  {
    v172 = type metadata accessor for FMIPDevice();
    v173 = v143;
    v174 = v172;
    v175 = *(v172 - 8);
    v176 = v506;
    (*(v175 + 16))(v506, v173, v172);
    (*(v175 + 56))(v176, 0, 1, v174);
    v177 = sub_10022F104(0xD000000000000036, 0x800000010058A0F0, v176);
    v179 = v178;
    v181 = v180;
    v183 = v182;

    countAndFlagsBits = sub_10022E0A8(v177, v179, v181, v183, 0, 0);
    object = v184;

    swift_bridgeObjectRelease_n();
    v185 = &unk_1006BBCE0;
    v186 = &unk_1005534C0;
    v187 = v176;
LABEL_47:
    sub_100012DF0(v187, v185, v186);
    v158 = 0;
    v156 = 0;
    v157 = 0;
    v159 = v544;
    goto LABEL_106;
  }

  v159 = v544;
  if (!(v504 & 1 | ((v503 & 1) == 0)) && ((v522 ^ 1) & 1) == 0)
  {
    v162 = "_LOCATION_NOT_AVAILABLE";
    v163 = type metadata accessor for FMIPDevice();
    v164 = *(v163 - 8);
    v165 = v506;
    (*(v164 + 16))(v506, v541, v163);
    (*(v164 + 56))(v165, 0, 1, v163);
    v166 = 0xD000000000000035;
LABEL_102:
    v322 = sub_10022F104(v166, v162 | 0x8000000000000000, v165);
    v324 = v323;
    v326 = v325;
    v328 = v327;

    countAndFlagsBits = sub_10022E0A8(v322, v324, v326, v328, 0, 0);
    object = v329;

    swift_bridgeObjectRelease_n();
    v262 = &unk_1006BBCE0;
    v263 = &unk_1005534C0;
    goto LABEL_103;
  }

  v208 = v518;
  if ((v144 & 1) == 0)
  {
    goto LABEL_96;
  }

  FMIPDevice.crowdSourcedLocation.getter();
  v209 = *(v477 + 48);
  v210 = v479;
  sub_100007204(v159, v479, &unk_1006C0220, qword_100553770);
  sub_100007204(v134, v210 + v209, &unk_1006C0220, qword_100553770);
  v211 = v537;
  v212 = v526;
  if (v526(v210, 1, v537) != 1)
  {
    sub_100007204(v210, v142, &unk_1006C0220, qword_100553770);
    if (v212(v210 + v209, 1, v211) != 1)
    {
      v305 = v142;
      v306 = v535;
      v307 = v210 + v209;
      v308 = v465;
      (*(v535 + 32))(v465, v307, v211);
      sub_100264AC8(&qword_1006B8688, &type metadata accessor for FMIPLocation, &protocol conformance descriptor for FMIPLocation);
      v309 = v211;
      v310 = dispatch thunk of static Equatable.== infix(_:_:)();
      v311 = *(v306 + 8);
      v311(v308, v309);
      sub_100012DF0(v533, &unk_1006C0220, qword_100553770);
      v311(v305, v309);
      sub_100012DF0(v210, &unk_1006C0220, qword_100553770);
      v208 = v518;
      if (v310)
      {
        goto LABEL_96;
      }

LABEL_100:
      v162 = "ITLE_THIS_DEVICE";
      v318 = type metadata accessor for FMIPDevice();
      v319 = *(v318 - 8);
      v165 = v506;
      (*(v319 + 16))(v506, v541, v318);
      (*(v319 + 56))(v165, 0, 1, v318);
      v166 = 0xD000000000000037;
      goto LABEL_102;
    }

    sub_100012DF0(v134, &unk_1006C0220, qword_100553770);
    (*(v535 + 8))(v142, v211);
LABEL_87:
    sub_100012DF0(v210, &qword_1006B8680, &unk_10055A970);
    goto LABEL_100;
  }

  sub_100012DF0(v134, &unk_1006C0220, qword_100553770);
  if (v212(v210 + v209, 1, v211) != 1)
  {
    goto LABEL_87;
  }

  sub_100012DF0(v210, &unk_1006C0220, qword_100553770);
  v208 = v518;
LABEL_96:
  if ((FMIPShowCrowdSourcedLocationOnly.getter() & 1) == 0)
  {
    v162 = "_LOCATION_SERVICES_OFF";
    v320 = type metadata accessor for FMIPDevice();
    v321 = *(v320 - 8);
    v165 = v506;
    (*(v321 + 16))(v506, v541, v320);
    (*(v321 + 56))(v165, 0, 1, v320);
    v166 = 0xD000000000000020;
    goto LABEL_102;
  }

  v312 = v473;
  sub_100007204(v159, v473, &unk_1006C0220, qword_100553770);
  v313 = v537;
  if (v526(v312, 1, v537) == 1)
  {
    sub_100012DF0(v312, &unk_1006C0220, qword_100553770);
    if (v467)
    {
      v314 = [objc_opt_self() mainBundle];
      v557._object = 0x8000000100589D70;
      v315._object = 0x8000000100589D50;
      v557._countAndFlagsBits = 0xD00000000000002ELL;
      v315._countAndFlagsBits = 0xD00000000000001CLL;
      v316._countAndFlagsBits = 0;
      v316._object = 0xE000000000000000;
      v317 = NSLocalizedString(_:tableName:bundle:value:comment:)(v315, 0, v314, v316, v557);
      countAndFlagsBits = v317._countAndFlagsBits;
      object = v317._object;

LABEL_105:
      v158 = 0;
      v156 = 0;
      v157 = 0;
      goto LABEL_106;
    }

    goto LABEL_100;
  }

  v344 = FMIPLocation.location.getter();
  (*(v535 + 8))(v312, v313);
  v345 = [v344 timestamp];

  v346 = v468;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v517 + 32))(v474, v346, v208);
  if (v505)
  {
    v347 = sub_100455280();
    v348 = Date._bridgeToObjectiveC()().super.isa;
    v349 = [v347 stringFromDate:v348];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v350;
  }

  else
  {
    v374 = v481;
    static FormatStyleCapitalizationContext.beginningOfSentence.getter();
    countAndFlagsBits = sub_1000CA838(v374);
    object = v375;
    (*(v483 + 8))(v374, v482);
  }

  if (v472)
  {
    v376 = v463;
    FMIPDevice.address.getter();
    v156 = sub_10025F99C(v376, v159, v505 & 1, v466 & 1);
    v157 = v377;
    v379 = v378;
    v381 = v380;
    sub_100012DF0(v376, &qword_1006BB1E0, &unk_100558B50);
    v382 = [objc_opt_self() mainBundle];
    v383._countAndFlagsBits = 0xD00000000000001ALL;
    v560._object = 0x8000000100584EF0;
    v383._object = 0x8000000100584ED0;
    v560._countAndFlagsBits = 0xD00000000000002CLL;
    v384._countAndFlagsBits = 0;
    v384._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v383, 0, v382, v384, v560);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v385 = swift_allocObject();
    *(v385 + 16) = xmmword_100552210;
    *(v385 + 56) = &type metadata for String;
    v386 = sub_10008EE84();
    *(v385 + 32) = v379;
    *(v385 + 40) = v381;
    *(v385 + 96) = &type metadata for String;
    *(v385 + 104) = v386;
    v141 = v534;
    *(v385 + 64) = v386;
    *(v385 + 72) = countAndFlagsBits;
    *(v385 + 80) = object;
    v159 = v544;
    countAndFlagsBits = String.init(format:_:)();
    object = v387;
    v208 = v518;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  (*(v517 + 8))(v474, v208);
  v158 = 0;
LABEL_106:
  My = type metadata accessor for Feature.FindMy();
  v547 = My;
  v548 = sub_100264AC8(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v331 = sub_100008FC0(&v545);
  (*(*(My - 8) + 104))(v331, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&v545);
  v332 = v526(v159, 1, v537);
  if (My)
  {
    if (v332 == 1 && (v505 & 1) == 0 && (FMIPDevice.hasLocation.getter() & 1) != 0 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
    {

      v333 = v475;
      FMIPDevice.itemGroup.getter();
      v334 = type metadata accessor for FMIPItemGroup();
      v335 = *(v334 - 8);
      if ((*(v335 + 48))(v333, 1, v334) == 1)
      {
        sub_100012DF0(v333, &unk_1006BB1C0, &unk_1005534F0);
LABEL_119:
        v337 = [objc_opt_self() mainBundle];
        v338 = 0xD000000000000019;
        v458 = 0x8000000100589DC0;
        v339 = 0x8000000100589DA0;
        v340 = 0xD00000000000002BLL;
        goto LABEL_120;
      }

      v341 = FMIPItemGroup.partsAtMultipleLocations.getter();
      v159 = v544;
      (*(v335 + 8))(v333, v334);
      if ((v341 & 1) == 0)
      {
        goto LABEL_119;
      }

      v336 = [objc_opt_self() mainBundle];
LABEL_116:
      v337 = v336;
      v458 = 0x8000000100587260;
      v338 = 0xD00000000000001FLL;
      v339 = 0x8000000100587240;
      v340 = 0xD000000000000031;
LABEL_120:
      v342._countAndFlagsBits = 0;
      v342._object = 0xE000000000000000;
      v343 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v338, 0, v337, v342, *&v340);
      countAndFlagsBits = v343._countAndFlagsBits;
      object = v343._object;
    }
  }

  else if (v332 == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
  {

    v336 = [objc_opt_self() mainBundle];
    goto LABEL_116;
  }

LABEL_38:
  sub_100012DF0(v141, &qword_1006BB1E0, &unk_100558B50);
  result = sub_100012DF0(v159, &unk_1006C0220, qword_100553770);
  v161 = v530;
  *v530 = v156;
  v161[1] = v157;
  v161[2] = countAndFlagsBits;
  v161[3] = object;
  v161[4] = v158;
  return result;
}

uint64_t sub_1002642B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v77 = a2;
  v7 = sub_10007EBC0(&unk_1006C2470, &unk_1005642F0);
  __chkstk_darwin(v7 - 8);
  v72 = &v69 - v8;
  v9 = type metadata accessor for FMIPPartType();
  v76 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  v15 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v21 = type metadata accessor for FMIPItem();
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  v71 = a1;
  result = FMIPDevice.name.getter();
  v83 = result;
  v84 = v29;
  if (a4)
  {
    My = type metadata accessor for Feature.FindMy();
    v82[3] = My;
    v82[4] = sub_100264AC8(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v31 = sub_100008FC0(v82);
    (*(*(My - 8) + 104))(v31, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100006060(v82);
    if ((My & 1) == 0)
    {
      return v83;
    }

    v70 = a3;
    sub_100007204(v77, v20, &qword_1006B07D0, qword_100552820);
    v33 = v78;
    v32 = v79;
    v73 = *(v79 + 48);
    v74 = v79 + 48;
    v34 = v73(v20, 1, v78);
    v75 = v17;
    if (v34 == 1)
    {
      sub_100012DF0(v20, &qword_1006B07D0, qword_100552820);
      v35 = v70;
      if (!v70)
      {
        return v83;
      }

      goto LABEL_16;
    }

    (*(v32 + 32))(v27, v20, v33);
    FMIPItem.partType.getter();
    v36 = v76;
    (*(v76 + 104))(v11, enum case for FMIPPartType.case(_:), v9);
    sub_100264AC8(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v82[0] == v80 && v82[1] == v81)
    {
      v37 = *(v36 + 8);
      v37(v11, v9);
      v37(v14, v9);

      v35 = v70;
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v39 = *(v36 + 8);
      v39(v11, v9);
      v39(v14, v9);

      v35 = v70;
      if ((v38 & 1) == 0)
      {
        v43 = v72;
        FMIPItem.partInfo.getter();
        v44 = type metadata accessor for FMIPPartInfo();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44) == 1)
        {
          sub_100012DF0(v43, &unk_1006C2470, &unk_1005642F0);
          v46 = FMIPDevice.name.getter();
          v48 = v47;
        }

        else
        {
          v46 = FMIPPartInfo.name.getter();
          v48 = v49;
          (*(v45 + 8))(v43, v44);
        }

        v17 = v75;
        (*(v79 + 8))(v27, v78);
        v83 = v46;
        v84 = v48;
        if (!v35)
        {
          return v83;
        }

LABEL_16:
        v82[0] = v35;

        sub_10025C924(v82);
        v50 = *(v82[0] + 16);
        if (v50)
        {
          v51 = *(v79 + 16);
          v52 = v82[0] + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          v53 = *(v79 + 72);
          v76 = v79 + 8;
          v70 = v82[0];
          v71 = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v54 = v78;
          v79 += 16;
          v72 = v53;
          v51(v24, v52, v78);
          while (1)
          {
            v56 = FMIPItem.identifier.getter();
            v58 = v57;
            v59 = v51;
            v60 = v24;
            sub_100007204(v77, v17, &qword_1006B07D0, qword_100552820);
            if (v73(v17, 1, v54) == 1)
            {
              break;
            }

            v64 = FMIPItem.identifier.getter();
            v66 = v65;
            v67 = v17;
            v63 = *v76;
            (*v76)(v67, v54);
            if (v56 == v64 && v58 == v66)
            {

              v24 = v60;
              v51 = v59;
              v55 = v72;
              goto LABEL_19;
            }

            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v24 = v60;
            v51 = v59;
            v55 = v72;
            if ((v68 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_19:
            v54 = v78;
            v63(v24, v78);
            v52 += v55;
            --v50;
            v17 = v75;
            if (!v50)
            {
              goto LABEL_28;
            }

            v51(v24, v52, v54);
          }

          sub_100012DF0(v17, &qword_1006B07D0, qword_100552820);

          v51 = v59;
          v55 = v72;
LABEL_23:
          v61._countAndFlagsBits = 2108192;
          v61._object = 0xE300000000000000;
          String.append(_:)(v61);
          v62._countAndFlagsBits = FMIPItem.name.getter();
          String.append(_:)(v62);

          v63 = *v76;
          goto LABEL_19;
        }

LABEL_28:

        return v83;
      }
    }

    v40 = FMIPItem.name.getter();
    v42 = v41;
    (*(v79 + 8))(v27, v78);
    v83 = v40;
    v84 = v42;
    v17 = v75;
    if (!v35)
    {
      return v83;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100264AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t isSolariumEnabled.getter()
{
  v2[3] = &type metadata for SolariumFeatureFlag;
  v2[4] = sub_10000BD04();
  v0 = isFeatureEnabled(_:)();
  sub_100006060(v2);
  return v0 & 1;
}

unint64_t sub_100264B64()
{
  result = qword_1006B8690;
  if (!qword_1006B8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B8690);
  }

  return result;
}

void sub_100264BC8()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    sub_10047F330();
  }

  v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v5 = objc_opt_self();
  v6 = [v5 grayColor];
  [v4 setColor:v6];

  v7 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView];
  [v7 setDataSource:v1];
  [v7 setDelegate:v1];
  [v7 setKeyboardDismissMode:2];
  [v7 setScrollEnabled:0];
  [v7 setAllowsSelection:0];
  v8 = [v5 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setDirectionalLayoutMargins:{0.0, 1.0, 0.0, 1.0}];
  type metadata accessor for FMEditableMessageTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v7 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v10];

  v11 = [v1 contentView];
  [v11 addSubview:v7];
}

id sub_100264DE8(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FMEditableMessageTableViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectWeakAssign();
    *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textViewIsEnabled) = 1;
    v9 = v6;
    sub_100372524();

    v10 = *((swift_isaMask & *v2) + 0x268);
    v11 = *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
    v12 = v10();
    v13 = &v11[OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit];
    *v13 = v12;
    v13[8] = v14 & 1;
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message);
  v16 = *(v2 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message + 8);

  sub_100265504(v15, v16, v17, 0, 1);

  return v6;
}

void sub_100264F8C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552F00;
  v3 = [v1 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5];
  *(v2 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v2 + 40) = v10;
  v11 = [v1 leadingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-1.0];
  *(v2 + 48) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:1.0];
  *(v2 + 56) = v18;
  v19 = [v1 heightAnchor];
  v20 = [v0 view];
  if (v20)
  {
    v21 = v20;
    v22 = objc_opt_self();
    v23 = [v21 heightAnchor];

    v24 = [v19 constraintEqualToAnchor:v23];
    LODWORD(v25) = 1132068864;
    [v24 setPriority:v25];
    *(v2 + 64) = v24;
    sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}