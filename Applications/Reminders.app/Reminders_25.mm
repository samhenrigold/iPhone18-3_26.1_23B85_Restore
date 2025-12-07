void sub_1002AA6EC(void *a1, uint64_t a2)
{
  if (!*(a2 + OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListSubtitle))
  {
    goto LABEL_36;
  }

  [a1 addArrangedSubview:?];
  v4 = [a1 arrangedSubviews];
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
LABEL_4:
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (v7)
      {
        __break(1u);
      }

      else if ((v5 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v9 = *(v5 + 8 * v8 + 32);
        goto LABEL_9;
      }

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
      v10 = v9;

      [a1 setCustomSpacing:v10 afterView:6.0];

      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_12:
  if (!*(a2 + OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListExplanation))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [a1 addArrangedSubview:?];
  if (!*(a2 + OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [a1 addArrangedSubview:?];
  v11 = [a1 arrangedSubviews];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_16:
      v7 = __OFSUB__(v13, 1);
      v14 = v13 - 1;
      if (!v7)
      {
        if ((v12 & 0xC000000000000001) == 0)
        {
          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v15 = *(v12 + 8 * v14 + 32);
LABEL_21:
              v16 = v15;

              [a1 setCustomSpacing:v16 afterView:22.0];

              goto LABEL_24;
            }

            goto LABEL_35;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_32:
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

LABEL_24:
  if (!*(a2 + OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients))
  {
LABEL_39:
    __break(1u);
    return;
  }

  [a1 addArrangedSubview:?];
}

unint64_t sub_1002AABFC()
{
  result = qword_100778A60;
  if (!qword_100778A60)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778A60);
  }

  return result;
}

id sub_1002AAC54()
{
  v0 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for UIButton.Configuration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() buttonWithType:1];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UIButton.configuration.setter();
  v8 = [v7 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v9 setFont:v10];
  }

  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1002AAE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100781F20, &unk_10062D7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for TTRIGroupMembershipViewModel(void *a1)
{
}

uint64_t *sub_1002AB004(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for TTRIGroupMembershipViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for TTRIGroupMembershipViewModel(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

void sub_1002AB0EC(uint64_t a1)
{
  v3 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  __chkstk_darwin(v3 - 8);
  v63 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v70 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v50 - v12;
  v13 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v14 = *(v13 - 8);
  v61 = v13;
  v62 = v14;
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move(0);
  v58 = *(v17 - 8);
  v59 = v17;
  __chkstk_darwin(v17);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v56 = v10;
    v60 = v7;
    v50 = v1;
    v71 = _swiftEmptyArrayStorage;
    sub_1004A202C(0, v19, 0);
    v67 = v71;
    v20 = a1 + 64;
    v21 = _HashTable.startBucket.getter();
    v22 = 0;
    v68 = (v8 + 48);
    v51 = a1 + 72;
    v52 = v19;
    v23 = v63;
    v53 = v16;
    v54 = a1 + 64;
    v55 = a1;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(a1 + 32))
    {
      if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
      {
        goto LABEL_33;
      }

      v26 = *(a1 + 36);
      v65 = v22;
      v66 = v26;
      sub_1002B0460(*(a1 + 56) + *(v62 + 72) * v21, v16, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v27 = v60;
      sub_1002B0380(v16, v60);
      v28 = *v68;
      if ((*v68)(v27, 1, v70) == 1)
      {
        sub_1000079B4(v27, &qword_100769F08, &unk_10062EAC0);
LABEL_29:
        sub_1002B0264();
        swift_allocError();
        *v49 = 5;
        swift_willThrow();
        sub_1002B0320(v16, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);

        return;
      }

      sub_1002B02B8(v27, v69, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v29 = v61;
      v30 = &v16[*(v61 + 24)];
      if (v30[8])
      {
        v48 = v69;
LABEL_28:
        sub_1002B0320(v48, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        goto LABEL_29;
      }

      v31 = *v30;
      sub_1002B0380(&v16[*(v61 + 20)], v23);
      if (v28(v23, 1, v70) == 1)
      {
        sub_1002B0320(v69, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1000079B4(v23, &qword_100769F08, &unk_10062EAC0);
        goto LABEL_29;
      }

      v64 = v21 >> 6;
      v32 = v56;
      sub_1002B02B8(v23, v56, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v33 = &v16[*(v29 + 28)];
      if (v33[8])
      {
        sub_1002B0320(v32, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v48 = v69;
        goto LABEL_28;
      }

      v34 = *v33;
      v35 = v57;
      sub_1002B02B8(v69, v57, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v36 = v59;
      sub_1002B02B8(v32, v35 + *(v59 + 24), type metadata accessor for TTRIGroupMembershipViewModel.Item);
      *(v35 + *(v36 + 20)) = v31;
      *(v35 + *(v36 + 28)) = v34;
      sub_1002B0320(v16, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v37 = v67;
      v71 = v67;
      v39 = v67[2];
      v38 = v67[3];
      if (v39 >= v38 >> 1)
      {
        sub_1004A202C((v38 > 1), v39 + 1, 1);
        v37 = v71;
      }

      v37[2] = v39 + 1;
      v40 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v67 = v37;
      sub_1002B02B8(v35, v37 + v40 + *(v58 + 72) * v39, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
      v20 = v54;
      a1 = v55;
      v24 = 1 << *(v55 + 32);
      if (v21 >= v24)
      {
        goto LABEL_34;
      }

      v41 = *(v54 + 8 * v64);
      if ((v41 & (1 << v21)) == 0)
      {
        goto LABEL_35;
      }

      if (v66 != *(v55 + 36))
      {
        goto LABEL_36;
      }

      v42 = v41 & (-2 << (v21 & 0x3F));
      if (v42)
      {
        v24 = __clz(__rbit64(v42)) | v21 & 0x7FFFFFFFFFFFFFC0;
        v16 = v53;
        v23 = v63;
        v25 = v65;
      }

      else
      {
        v43 = v64 << 6;
        v44 = v64 + 1;
        v45 = (v51 + 8 * v64);
        v16 = v53;
        v23 = v63;
        while (v44 < (v24 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_10000FBA0(v21, v66, 0);
            v24 = __clz(__rbit64(v46)) + v43;
            goto LABEL_23;
          }
        }

        sub_10000FBA0(v21, v66, 0);
LABEL_23:
        v25 = v65;
      }

      v22 = v25 + 1;
      v21 = v24;
      if (v22 == v52)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

void *sub_1002AB7D4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = &qword_100769F08;
  v3 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v53 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v44 = *(v53 - 8);
  v10 = v44;
  v9 = v44;
  __chkstk_darwin(v53);
  v54 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = &v42 - v13;
  __chkstk_darwin(v14);
  v52 = &v42 - v15;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  sub_100058000(&qword_100778AD0, &qword_100638348);
  v19 = v9[9];
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v43 = swift_allocObject();
  v46 = v20;
  v21 = v43 + v20;
  v22 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v26 = 2;
  v24(v21, 1, 2, v22);
  v51 = v19;
  v45 = v22;
  v24(v19 + v21, 2, 2, v22);
  v50 = (v44 + 7);
  v27 = (v44 + 6);
  v44 = (v25 - 8);
  v28 = _swiftEmptyArrayStorage;
  v42 = v21;
  do
  {
    sub_1002B0460(v21, v18, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    sub_1002B0460(v18, v8, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v31 = v53;
    (*v50)(v8, 0, 1, v53);
    sub_1002B0380(v8, v5);
    if ((*v27)(v5, 1, v31) == 1)
    {
      v29 = v2;
      sub_1000079B4(v5, v2, &unk_10062EAC0);
      v32 = sub_1002AB7D4(v48, v49)[2];
    }

    else
    {
      v33 = v52;
      sub_1002B02B8(v5, v52, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v34 = v33;
      v35 = v47;
      sub_1002B0460(v34, v47, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v36 = (*v44)(v35, 2, v45);
      if (!v36)
      {
        sub_1002B0320(v52, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1000079B4(v8, v2, &unk_10062EAC0);
        sub_1002B0320(v47, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v29 = v2;
LABEL_3:
        sub_1002B0320(v18, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v2 = v29;
        v30 = v51;
        goto LABEL_4;
      }

      v29 = v2;
      if (v36 == 1)
      {
        v37 = v48;
      }

      else
      {
        v37 = v49;
      }

      v32 = *(v37 + 16);
      sub_1002B0320(v52, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    }

    sub_1000079B4(v8, v29, &unk_10062EAC0);
    if (!v32)
    {
      goto LABEL_3;
    }

    sub_1002B02B8(v18, v54, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1004A1FE8(0, v28[2] + 1, 1);
      v28 = v55;
    }

    v40 = v28[2];
    v39 = v28[3];
    if (v40 >= v39 >> 1)
    {
      sub_1004A1FE8((v39 > 1), v40 + 1, 1);
      v28 = v55;
    }

    v28[2] = v40 + 1;
    v30 = v51;
    sub_1002B02B8(v54, v28 + v46 + v40 * v51, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v2 = &qword_100769F08;
LABEL_4:
    v21 += v30;
    --v26;
  }

  while (v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v28;
}

void sub_1002ABD2C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  sub_1002B0380(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100769F08, &unk_10062EAC0);
    v20 = sub_1002AB7D4(a3, a4);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20[2] > a1)
    {
      sub_1002B0460(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, a5, type metadata accessor for TTRIGroupMembershipViewModel.Item);

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1002B02B8(v12, v19, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  sub_1002B0460(v19, v16, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v21 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v16, 2, v21);
  if (v23 == 1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (*(a3 + 16) <= a1)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v24 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
LABEL_13:
    sub_1002B0460(v24 + *(v22 + 72) * a1, a5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    sub_1002B0320(v19, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    (*(v22 + 56))(a5, 0, 2, v21);
    return;
  }

  if (v23 == 2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (*(a4 + 16) <= a1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = a4 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    goto LABEL_13;
  }

LABEL_21:
  if (qword_100767118 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_100778A68);
  v26 = sub_100008E04(_swiftEmptyArrayStorage);
  v27 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Requested child of list", 23, 2uLL, v26, v27);
  __break(1u);
}

uint64_t sub_1002AC0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B0460(a1, v13, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  if ((*(v8 + 48))(v13, 2, v7))
  {
    return (*(v8 + 56))(a4, 1, 1, v7);
  }

  sub_1002B02B8(v13, v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
  v19 = a2;

  v16 = sub_1000815FC(v15);
  v17 = v19;
  __chkstk_darwin(v16);
  *(&v18 - 2) = v10;
  sub_1002EC8F0(sub_1002B054C, v17, a4);

  return sub_1002B0320(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
}

uint64_t sub_1002AC318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  sub_1002B0380(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100769F08, &unk_10062EAC0);
    v16 = sub_1002AB7D4(a2, a3)[2];
  }

  else
  {
    sub_1002B02B8(v8, v15, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    sub_1002B0460(v15, v12, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v17 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v18 = (*(*(v17 - 8) + 48))(v12, 2, v17);
    if (v18)
    {
      if (v18 == 1)
      {
        v16 = *(a2 + 16);
      }

      else
      {
        v16 = *(a3 + 16);
      }

      sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    }

    else
    {
      sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      sub_1002B0320(v12, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      return 0;
    }
  }

  return v16;
}

uint64_t sub_1002AC588()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100778A68);
  v1 = sub_100003E30(v0, qword_100778A68);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002AC650(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B0460(v2, v9, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    Hasher._combine(_:)(v10 != 1);
  }

  else
  {
    sub_1002B02B8(v9, v6, type metadata accessor for TTRIGroupMembershipViewModel.List);
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();
    Hasher._combine(_:)(v6[16]);
    type metadata accessor for TTRListOrCustomSmartListChangeItem();
    sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
    dispatch thunk of Hashable.hash(into:)();
    sub_1002B0320(v6, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }
}

void sub_1002AC858(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  sub_1002B0460(v2, &v20 - v14, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v16 = *(v4 + 48);
  v17 = v16(v15, 2, v3);
  if (v17)
  {
    Hasher._combine(_:)(v17 != 1);
  }

  else
  {
    sub_1002B02B8(v15, v9, type metadata accessor for TTRIGroupMembershipViewModel.List);
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();
    Hasher._combine(_:)(v9[16]);
    type metadata accessor for TTRListOrCustomSmartListChangeItem();
    sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
    dispatch thunk of Hashable.hash(into:)();
    sub_1002B0320(v9, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  v18 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move(0);
  Hasher._combine(_:)(*(v2 + v18[5]));
  sub_1002B0460(v2 + v18[6], v12, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v19 = v16(v12, 2, v3);
  if (v19)
  {
    Hasher._combine(_:)(v19 != 1);
  }

  else
  {
    sub_1002B02B8(v12, v6, type metadata accessor for TTRIGroupMembershipViewModel.List);
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();
    Hasher._combine(_:)(v6[16]);
    type metadata accessor for TTRListOrCustomSmartListChangeItem();
    sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
    dispatch thunk of Hashable.hash(into:)();
    sub_1002B0320(v6, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  Hasher._combine(_:)(*(v2 + v18[7]));
}

Swift::Int sub_1002ACC28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 16));
  type metadata accessor for TTRListOrCustomSmartListChangeItem();
  sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002ACCE0(uint64_t a1)
{
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  type metadata accessor for TTRListOrCustomSmartListChangeItem();
  sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002ACD7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  type metadata accessor for TTRListOrCustomSmartListChangeItem();
  sub_1002B021C(&qword_100778D48, &type metadata accessor for TTRListOrCustomSmartListChangeItem, &protocol conformance descriptor for TTRListOrCustomSmartListChangeItem);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002ACE30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return static TTRListOrCustomSmartListChangeItem.== infix(_:_:)();
}

Swift::Int sub_1002ACEDC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002ACF40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *sub_1002AD000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1002B0460(a1, &v33 - v14, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v16 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 2, v16);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = *(a2 + 16);
      v20 = _swiftEmptyArrayStorage;
      if (v19)
      {
        v34 = _swiftEmptyArrayStorage;
        sub_1004A1FE8(0, v19, 0);
        v20 = v34;
        v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v22 = *(v17 + 72);
        v23 = (v17 + 56);
        do
        {
          sub_1002B0460(v21, v12, type metadata accessor for TTRIGroupMembershipViewModel.List);
          (*v23)(v12, 0, 2, v16);
          v34 = v20;
          v25 = v20[2];
          v24 = v20[3];
          if (v25 >= v24 >> 1)
          {
            sub_1004A1FE8((v24 > 1), v25 + 1, 1);
            v20 = v34;
          }

          v20[2] = v25 + 1;
          sub_1002B02B8(v12, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v21 += v22;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      v26 = *(a3 + 16);
      v20 = _swiftEmptyArrayStorage;
      if (v26)
      {
        v34 = _swiftEmptyArrayStorage;
        sub_1004A1FE8(0, v26, 0);
        v20 = v34;
        v27 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v28 = *(v17 + 72);
        v29 = (v17 + 56);
        do
        {
          sub_1002B0460(v27, v9, type metadata accessor for TTRIGroupMembershipViewModel.List);
          (*v29)(v9, 0, 2, v16);
          v34 = v20;
          v31 = v20[2];
          v30 = v20[3];
          if (v31 >= v30 >> 1)
          {
            sub_1004A1FE8((v30 > 1), v31 + 1, 1);
            v20 = v34;
          }

          v20[2] = v31 + 1;
          sub_1002B02B8(v9, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v27 += v28;
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {
    sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    return _swiftEmptyArrayStorage;
  }

  return v20;
}

uint64_t sub_1002AD3AC()
{
  sub_100003540(0, &qword_100775690, NSObject_ptr);
  type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v0 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  v1 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

uint64_t sub_1002AD450()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B0460(v1, v8, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      return 0x65537265626D656DLL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1002B02B8(v8, v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    v11 = TTRListOrCustomSmartListChangeItem.objectID.getter();
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v18[0] = v13;
    v18[1] = v15;
    v16._countAndFlagsBits = 539831584;
    v16._object = 0xE400000000000000;
    String.append(_:)(v16);
    String.append(_:)(*v5);
    v17 = v18[0];
    sub_1002B0320(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    return v17;
  }
}

uint64_t sub_1002AD670()
{
  v0 = sub_1002AD450();
  v2 = v1;
  if (v0 == sub_1002AD450() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1002AD794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100769EF8, &qword_10062EAA8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1002B0460(a1, &v20 - v12, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  sub_1002B0460(a2, &v13[v15], type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_1002B0320(v13, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002B0460(v13, v10, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_1002B02B8(&v13[v15], v7, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v19 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v10[16] != v7[16] || (static TTRListOrCustomSmartListChangeItem.== infix(_:_:)() & 1) == 0)
      {
        sub_1002B0320(v7, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v13, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        return 0;
      }

      sub_1002B0320(v7, type metadata accessor for TTRIGroupMembershipViewModel.List);
      sub_1002B0320(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
      goto LABEL_8;
    }

    sub_1002B0320(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

LABEL_9:
  sub_1000079B4(v13, &qword_100769EF8, &qword_10062EAA8);
  return 0;
}

uint64_t (*sub_1002ADB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = sub_100058000(&qword_100778A88, &qword_100638308);
  __chkstk_darwin(v8 - 8);
  v250 = &v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v260 = &v234 - v11;
  __chkstk_darwin(v12);
  v276 = &v234 - v13;
  __chkstk_darwin(v14);
  v280 = &v234 - v15;
  __chkstk_darwin(v16);
  v251 = &v234 - v17;
  __chkstk_darwin(v18);
  v261 = &v234 - v19;
  v303 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v300 = *(v303 - 8);
  __chkstk_darwin(v303);
  v271 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v270 = &v234 - v22;
  __chkstk_darwin(v23);
  v294 = &v234 - v24;
  __chkstk_darwin(v25);
  v293 = &v234 - v26;
  __chkstk_darwin(v27);
  v274 = &v234 - v28;
  __chkstk_darwin(v29);
  v273 = &v234 - v30;
  v299 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v259 = *(v299 - 8);
  __chkstk_darwin(v299);
  v269 = &v234 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v292 = &v234 - v33;
  __chkstk_darwin(v34);
  v272 = &v234 - v35;
  v296 = sub_100058000(&qword_100778A90, &unk_100638310);
  v298 = *(v296 - 8);
  __chkstk_darwin(v296);
  v37 = (&v234 - v36);
  v38 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  __chkstk_darwin(v38 - 8);
  v254 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v275 = &v234 - v41;
  __chkstk_darwin(v42);
  v257 = &v234 - v43;
  __chkstk_darwin(v44);
  v278 = &v234 - v45;
  __chkstk_darwin(v46);
  v295 = &v234 - v47;
  v302 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v258 = *(v302 - 8);
  __chkstk_darwin(v302);
  v242 = &v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v252 = &v234 - v50;
  __chkstk_darwin(v51);
  v253 = &v234 - v52;
  __chkstk_darwin(v53);
  v243 = &v234 - v54;
  __chkstk_darwin(v55);
  v256 = &v234 - v56;
  __chkstk_darwin(v57);
  v255 = &v234 - v58;
  __chkstk_darwin(v59);
  v301 = &v234 - v60;
  v244 = sub_100058000(&qword_100778A98, &qword_100638320);
  v246 = *(v244 - 8);
  __chkstk_darwin(v244);
  v297 = (&v234 - v61);
  v62 = sub_100058000(&qword_100778AA0, &qword_100638328);
  v249 = *(v62 - 8);
  __chkstk_darwin(v62);
  v64 = (&v234 - v63);
  sub_1002AB7D4(a1, a2);
  sub_1002AB7D4(a3, a4);
  v266 = a1;
  v306 = a1;
  v307 = a2;
  v267 = a2;
  v304 = a3;
  v305 = a4;
  sub_1002B021C(&qword_100778AA8, type metadata accessor for TTRIGroupMembershipViewModel.Item, &unk_1006382D8);
  TTRCheapTreeDiff<A>(source:target:sourceChildrenGetter:targetChildrenGetter:contentEqualityChecker:)();

  v65 = v64;
  v66 = *(TTRTreeDiffResult.patch.getter() + 16);

  if (!v66)
  {
    sub_1002B0264();
    swift_allocError();
    *v217 = 0;
    swift_willThrow();
    (*(v249 + 8))(v64, v62);
    return v65;
  }

  v67 = v249;
  v68 = &_swiftEmptyDictionarySingleton;
  v309 = &_swiftEmptyDictionarySingleton;
  v236 = v62;
  v65 = v64;
  v69 = TTRTreeDiffResult.patch.getter();
  v234 = *(v69 + 16);
  v235 = v64;
  if (!v234)
  {
LABEL_101:

    v219 = v237;
    sub_1002AB0EC(v218);
    if (!v219)
    {
      v65 = v220;
    }

    (*(v67 + 8))(v235, v236);
    swift_bridgeObjectRelease_n();
    return v65;
  }

  v70 = 0;
  v240 = v246 + 16;
  v279 = (v258 + 48);
  v289 = v298 + 16;
  v288 = v298 + 88;
  v287 = enum case for ExtendedPatch.insertion<A>(_:);
  v290 = (v298 + 96);
  v71 = (v258 + 56);
  v268 = enum case for ExtendedPatch.deletion<A>(_:);
  v285 = (v259 + 48);
  v247 = v259 + 56;
  v248 = enum case for ExtendedPatch.move<A>(_:);
  v284 = (v300 + 56);
  v283 = (v300 + 48);
  v239 = (v246 + 8);
  v72 = v244;
  v73 = v296;
  v65 = v297;
  v74 = v295;
  v281 = (v258 + 56);
  v245 = v37;
  v238 = v69;
  while (1)
  {
    if (v70 >= *(v69 + 16))
    {
      goto LABEL_124;
    }

    v75 = v69 + ((*(v246 + 80) + 32) & ~*(v246 + 80));
    v76 = *(v246 + 72);
    v241 = v70;
    (*(v246 + 16))(v65, v75 + v76 * v70, v72);
    TTRTreeDiffResult.ParentAndPatch.parent.getter();
    v277 = *v279;
    if (v277(v74, 1, v302) == 1)
    {

      sub_1000079B4(v74, &qword_100769F08, &unk_10062EAC0);
      sub_1002B0264();
      swift_allocError();
      *v230 = 1;
      swift_willThrow();
      (*v239)(v65, v72);
      (*(v67 + 8))(v235, v236);
LABEL_110:

      return v65;
    }

    sub_1002B02B8(v74, v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v77 = TTRTreeDiffResult.ParentAndPatch.patch.getter();
    v78 = v77;
    v291 = *(v77 + 16);
    if (v291)
    {
      break;
    }

LABEL_4:
    v70 = v241 + 1;

    sub_1002B0320(v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    v72 = v244;
    (*v239)(v65, v244);
    v67 = v249;
    v69 = v238;
    if (v70 == v234)
    {
      goto LABEL_101;
    }
  }

  v79 = 0;
  v286 = v77;
  while (v79 < *(v78 + 16))
  {
    v81 = v298;
    (*(v298 + 16))(v37, v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v79, v73);
    v82 = (*(v81 + 88))(v37, v73);
    if (v82 != v287)
    {
      v282 = v79;
      if (v82 != v268)
      {
        if (v82 != v248)
        {
          if (v82 != enum case for ExtendedPatch.update<A>(_:))
          {
            goto LABEL_137;
          }

          (*v290)(v37, v73);
          v223 = sub_100058000(&qword_100778AB8, &qword_100638330);
          v224 = *(v223 + 48);
          v225 = *(v223 + 64);
          sub_1002B0264();
          swift_allocError();
          *v226 = 4;
          swift_willThrow();
          v65 = type metadata accessor for TTRIGroupMembershipViewModel.Item;
          sub_1002B0320(v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          (*v239)(v297, v244);
          (*(v249 + 8))(v235, v236);
          sub_1002B0320(v37 + v225, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v222 = v37 + v224;
          goto LABEL_109;
        }

        (*v290)(v37, v73);
        v110 = *v37;
        v264 = v37[1];
        v111 = v275;
        sub_1002B0460(v301, v275, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v112 = *v71;
        v113 = v302;
        (*v71)(v111, 0, 1, v302);
        v114 = v111;
        v115 = v254;
        sub_1002B0380(v114, v254);
        v116 = v277(v115, 1, v113);
        v263 = v110;
        if (v116 == 1)
        {
          sub_1000079B4(v115, &qword_100769F08, &unk_10062EAC0);
          v117 = sub_1002AB7D4(v266, v267);
          v118 = v253;
          if ((v110 & 0x8000000000000000) != 0)
          {
            goto LABEL_120;
          }

          if (v110 >= v117[2])
          {
            goto LABEL_121;
          }

          sub_1002B0460(v117 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v110, v253, type metadata accessor for TTRIGroupMembershipViewModel.Item);

          sub_1000079B4(v275, &qword_100769F08, &unk_10062EAC0);
          v119 = *v285;
          v120 = v299;
        }

        else
        {
          v143 = v115;
          v144 = v252;
          sub_1002B02B8(v143, v252, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v145 = v242;
          sub_1002B0460(v144, v242, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          v119 = *v285;
          v146 = (*v285)(v145, 2, v299);
          if (v146 == 1)
          {
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_129;
            }

            v147 = v266;
            if (v110 >= *(v266 + 16))
            {
              goto LABEL_131;
            }
          }

          else
          {
            if (v146 != 2)
            {
              goto LABEL_134;
            }

            v147 = v267;
            if ((v110 & 0x8000000000000000) != 0)
            {
              goto LABEL_130;
            }

            if (v110 >= *(v267 + 16))
            {
              goto LABEL_132;
            }
          }

          v179 = v110;
          v180 = v259;
          v118 = v253;
          sub_1002B0460(v147 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v259 + 72) * v179, v253, type metadata accessor for TTRIGroupMembershipViewModel.List);
          sub_1002B0320(v252, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          sub_1000079B4(v275, &qword_100769F08, &unk_10062EAC0);
          v181 = *(v180 + 56);
          v120 = v299;
          v181(v118, 0, 2, v299);
        }

        v265 = *(sub_100058000(&qword_100778AC0, &qword_100638338) + 64);
        if (v119(v118, 2, v120))
        {

          sub_1002B0320(v118, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          sub_1002B0264();
          swift_allocError();
          *v228 = 2;
          swift_willThrow();
          sub_1002B0320(v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
          (*v239)(v65, v244);
          (*(v249 + 8))(v235, v236);
          v222 = v37 + v265;
          goto LABEL_109;
        }

        sub_1002B02B8(v118, v269, type metadata accessor for TTRIGroupMembershipViewModel.List);
        v182 = TTRListOrCustomSmartListChangeItem.objectID.getter();
        v183 = v68[2];
        v262 = v182;
        if (v183)
        {
          v184 = sub_1002613B0(v182);
          v185 = v250;
          if (v186)
          {
            sub_1002B0460(v68[7] + *(v300 + 72) * v184, v260, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
            v187 = 0;
          }

          else
          {
            v187 = 1;
          }
        }

        else
        {
          v187 = 1;
          v185 = v250;
        }

        v188 = v260;
        v189 = v303;
        (*v284)(v260, v187, 1, v303);
        sub_1002B03F0(v188, v185);
        v190 = (*v283)(v185, 1, v189);
        v191 = v270;
        if (v190 == 1)
        {
          v192 = v302;
          v193 = v112;
          v112(v270, 1, 1, v302);
          v194 = v303;
          v112(v191 + *(v303 + 20), 1, 1, v192);
          v195 = v191 + v194[6];
          *v195 = 0;
          *(v195 + 8) = 1;
          v196 = v191 + v194[7];
          *v196 = 0;
          *(v196 + 8) = 1;
          sub_1000079B4(v185, &qword_100778A88, &qword_100638308);
          v197 = v71;
        }

        else
        {
          sub_1002B02B8(v185, v270, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v192 = v302;
          v194 = v303;
          v197 = v71;
          v193 = v112;
        }

        sub_1000079B4(v191, &qword_100769F08, &unk_10062EAC0);
        v198 = v301;
        sub_1002B0460(v301, v191, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v193(v191, 0, 1, v192);
        v199 = v191 + v194[6];
        *v199 = v263;
        *(v199 + 8) = 0;
        v200 = v194[5];
        sub_1000079B4(v191 + v200, &qword_100769F08, &unk_10062EAC0);
        sub_1002B0460(v198, v191 + v200, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v193(v191 + v200, 0, 1, v192);
        v201 = v191 + v194[7];
        *v201 = v264;
        *(v201 + 8) = 0;
        swift_beginAccess();
        sub_1002B0460(v191, v271, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = v309;
        v308 = v309;
        v204 = v262;
        v205 = sub_1002613B0(v262);
        v207 = v203[2];
        v208 = (v206 & 1) == 0;
        v130 = __OFADD__(v207, v208);
        v209 = v207 + v208;
        if (v130)
        {
          goto LABEL_117;
        }

        v210 = v206;
        v71 = v197;
        if (v203[3] >= v209)
        {
          v37 = v245;
          v78 = v286;
          v80 = v282;
          v73 = v296;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_90;
          }

          v213 = v205;
          sub_1003AEDF8();
          v205 = v213;
          v68 = v308;
          if ((v210 & 1) == 0)
          {
            goto LABEL_97;
          }

LABEL_91:
          sub_1002B04C8(v271, v68[7] + *(v300 + 72) * v205);
        }

        else
        {
          sub_10054A754(v209, isUniquelyReferenced_nonNull_native);
          v205 = sub_1002613B0(v204);
          v37 = v245;
          v78 = v286;
          v80 = v282;
          v73 = v296;
          if ((v210 & 1) != (v211 & 1))
          {
            goto LABEL_133;
          }

LABEL_90:
          v68 = v308;
          if (v210)
          {
            goto LABEL_91;
          }

LABEL_97:
          v68[(v205 >> 6) + 8] |= 1 << v205;
          *(v68[6] + 8 * v205) = v204;
          sub_1002B02B8(v271, v68[7] + *(v300 + 72) * v205, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v214 = v68[2];
          v130 = __OFADD__(v214, 1);
          v215 = v214 + 1;
          if (v130)
          {
            goto LABEL_123;
          }

          v68[2] = v215;
          v216 = v204;
        }

        v309 = v68;
        swift_endAccess();

        sub_1002B0320(v269, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v270, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        sub_1002B0320(v37 + v265, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        goto LABEL_11;
      }

      (*v290)(v37, v73);
      v91 = *v37;
      v92 = v278;
      sub_1002B0460(v301, v278, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v93 = *v71;
      v94 = v302;
      (*v71)(v92, 0, 1, v302);
      v95 = v92;
      v96 = v257;
      sub_1002B0380(v95, v257);
      if (v277(v96, 1, v94) == 1)
      {
        sub_1000079B4(v96, &qword_100769F08, &unk_10062EAC0);
        v97 = sub_1002AB7D4(v266, v267);
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

        if (v91 >= v97[2])
        {
          goto LABEL_119;
        }

        v98 = v255;
        sub_1002B0460(v97 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v91, v255, type metadata accessor for TTRIGroupMembershipViewModel.Item);

        sub_1000079B4(v278, &qword_100769F08, &unk_10062EAC0);
        v99 = (*v285)(v98, 2, v299);
      }

      else
      {
        v137 = v96;
        v138 = v256;
        sub_1002B02B8(v137, v256, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v139 = v243;
        sub_1002B0460(v138, v243, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        v140 = *v285;
        v141 = (*v285)(v139, 2, v299);
        if (v141 == 1)
        {
          v98 = v255;
          if ((v91 & 0x8000000000000000) != 0)
          {
            goto LABEL_125;
          }

          v142 = v266;
          if (v91 >= *(v266 + 16))
          {
            goto LABEL_127;
          }
        }

        else
        {
          v98 = v255;
          if (v141 != 2)
          {
            goto LABEL_134;
          }

          v142 = v267;
          if ((v91 & 0x8000000000000000) != 0)
          {
            goto LABEL_126;
          }

          if (v91 >= *(v267 + 16))
          {
            goto LABEL_128;
          }
        }

        v148 = v259;
        sub_1002B0460(v142 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v259 + 72) * v91, v98, type metadata accessor for TTRIGroupMembershipViewModel.List);
        sub_1002B0320(v256, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1000079B4(v278, &qword_100769F08, &unk_10062EAC0);
        v149 = *(v148 + 56);
        v150 = v299;
        v149(v98, 0, 2, v299);
        v99 = v140(v98, 2, v150);
      }

      if (v99)
      {

        sub_1002B0320(v98, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        sub_1002B0264();
        swift_allocError();
        *v227 = 2;
        swift_willThrow();
        sub_1002B0320(v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
        (*v239)(v65, v244);
        (*(v249 + 8))(v235, v236);
        goto LABEL_110;
      }

      sub_1002B02B8(v98, v272, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v151 = TTRListOrCustomSmartListChangeItem.objectID.getter();
      v152 = v151;
      if (v68[2])
      {
        v153 = sub_1002613B0(v151);
        v71 = v281;
        if (v154)
        {
          sub_1002B0460(v68[7] + *(v300 + 72) * v153, v261, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v155 = 0;
        }

        else
        {
          v155 = 1;
        }

        v156 = v251;
      }

      else
      {
        v155 = 1;
        v156 = v251;
        v71 = v281;
      }

      v157 = v261;
      v158 = v303;
      (*v284)(v261, v155, 1, v303);
      sub_1002B03F0(v157, v156);
      v159 = (*v283)(v156, 1, v158);
      v160 = v273;
      v161 = v302;
      if (v159 == 1)
      {
        v93(v273, 1, 1, v302);
        v162 = v303;
        v93(v160 + *(v303 + 20), 1, 1, v161);
        v163 = v160 + *(v162 + 24);
        *v163 = 0;
        *(v163 + 8) = 1;
        v164 = v160 + *(v162 + 28);
        *v164 = 0;
        *(v164 + 8) = 1;
        sub_1000079B4(v156, &qword_100778A88, &qword_100638308);
      }

      else
      {
        sub_1002B02B8(v156, v273, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      }

      sub_1000079B4(v160, &qword_100769F08, &unk_10062EAC0);
      sub_1002B0460(v301, v160, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      v93(v160, 0, 1, v161);
      v165 = v160 + *(v303 + 24);
      *v165 = v91;
      *(v165 + 8) = 0;
      swift_beginAccess();
      sub_1002B0460(v160, v274, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v167 = v309;
      v308 = v309;
      v169 = sub_1002613B0(v152);
      v170 = v167[2];
      v171 = (v168 & 1) == 0;
      v172 = v170 + v171;
      if (__OFADD__(v170, v171))
      {
        goto LABEL_116;
      }

      v173 = v168;
      if (v167[3] >= v172)
      {
        v78 = v286;
        if (v166)
        {
          v68 = v308;
          if ((v168 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
          sub_1003AEDF8();
          v68 = v308;
          if ((v173 & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        sub_10054A754(v172, v166);
        v174 = sub_1002613B0(v152);
        v78 = v286;
        if ((v173 & 1) != (v175 & 1))
        {
          goto LABEL_133;
        }

        v169 = v174;
        v68 = v308;
        if ((v173 & 1) == 0)
        {
LABEL_66:
          v68[(v169 >> 6) + 8] |= 1 << v169;
          *(v68[6] + 8 * v169) = v152;
          sub_1002B02B8(v274, v68[7] + *(v300 + 72) * v169, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
          v176 = v68[2];
          v130 = __OFADD__(v176, 1);
          v177 = v176 + 1;
          if (v130)
          {
            goto LABEL_122;
          }

          v68[2] = v177;
          v178 = v152;
          goto LABEL_71;
        }
      }

      sub_1002B04C8(v274, v68[7] + *(v300 + 72) * v169);
LABEL_71:
      v309 = v68;
      swift_endAccess();

      sub_1002B0320(v272, type metadata accessor for TTRIGroupMembershipViewModel.List);
      sub_1002B0320(v273, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v73 = v296;
      v80 = v282;
      goto LABEL_11;
    }

    v83 = v79;
    (*v290)(v37, v73);
    v84 = *v37;
    v85 = *(sub_100058000(&qword_100778AC8, &qword_100638340) + 48);
    if ((*v285)(v37 + v85, 2, v299))
    {

      sub_1002B0264();
      swift_allocError();
      *v221 = 3;
      swift_willThrow();
      v65 = type metadata accessor for TTRIGroupMembershipViewModel.Item;
      sub_1002B0320(v301, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      (*v239)(v297, v244);
      (*(v249 + 8))(v235, v236);
      v222 = v37 + v85;
LABEL_109:
      sub_1002B0320(v222, type metadata accessor for TTRIGroupMembershipViewModel.Item);
      goto LABEL_110;
    }

    sub_1002B02B8(v37 + v85, v292, type metadata accessor for TTRIGroupMembershipViewModel.List);
    v86 = TTRListOrCustomSmartListChangeItem.objectID.getter();
    v87 = v86;
    if (v68[2] && (v88 = sub_1002613B0(v86), (v89 & 1) != 0))
    {
      sub_1002B0460(v68[7] + *(v300 + 72) * v88, v280, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v100 = v280;
    v101 = v303;
    (*v284)(v280, v90, 1, v303);
    v102 = v276;
    sub_1002B03F0(v100, v276);
    if ((*v283)(v102, 1, v101) == 1)
    {
      v103 = *v71;
      v104 = v293;
      v105 = v302;
      (*v71)(v293, 1, 1, v302);
      v106 = v303;
      v103(v104 + *(v303 + 20), 1, 1, v105);
      v107 = v104 + *(v106 + 24);
      *v107 = 0;
      *(v107 + 8) = 1;
      v108 = *(v106 + 28);
      v71 = v281;
      v109 = v104 + v108;
      *v109 = 0;
      *(v109 + 8) = 1;
      sub_1000079B4(v102, &qword_100778A88, &qword_100638308);
    }

    else
    {
      v104 = v293;
      sub_1002B02B8(v102, v293, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v105 = v302;
    }

    v121 = v303;
    v122 = *(v303 + 20);
    sub_1000079B4(v104 + v122, &qword_100769F08, &unk_10062EAC0);
    sub_1002B0460(v301, v104 + v122, type metadata accessor for TTRIGroupMembershipViewModel.Item);
    (*v71)(v104 + v122, 0, 1, v105);
    v123 = v104 + *(v121 + 28);
    *v123 = v84;
    *(v123 + 8) = 0;
    swift_beginAccess();
    sub_1002B0460(v104, v294, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v309;
    v308 = v309;
    v126 = sub_1002613B0(v87);
    v128 = v125[2];
    v129 = (v127 & 1) == 0;
    v130 = __OFADD__(v128, v129);
    v131 = v128 + v129;
    v73 = v296;
    if (v130)
    {
      goto LABEL_114;
    }

    v132 = v127;
    if (v125[3] < v131)
    {
      sub_10054A754(v131, v124);
      v126 = sub_1002613B0(v87);
      v78 = v286;
      if ((v132 & 1) != (v133 & 1))
      {
        goto LABEL_133;
      }

LABEL_37:
      v68 = v308;
      if ((v132 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_9;
    }

    v78 = v286;
    if (v124)
    {
      goto LABEL_37;
    }

    v212 = v126;
    sub_1003AEDF8();
    v126 = v212;
    v68 = v308;
    if ((v132 & 1) == 0)
    {
LABEL_38:
      v68[(v126 >> 6) + 8] |= 1 << v126;
      *(v68[6] + 8 * v126) = v87;
      sub_1002B02B8(v294, v68[7] + *(v300 + 72) * v126, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
      v134 = v68[2];
      v130 = __OFADD__(v134, 1);
      v135 = v134 + 1;
      if (v130)
      {
        goto LABEL_115;
      }

      v68[2] = v135;
      v136 = v87;
      goto LABEL_10;
    }

LABEL_9:
    sub_1002B04C8(v294, v68[7] + *(v300 + 72) * v126);
LABEL_10:
    v309 = v68;
    swift_endAccess();

    sub_1002B0320(v292, type metadata accessor for TTRIGroupMembershipViewModel.List);
    sub_1002B0320(v293, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
    v80 = v83;
LABEL_11:
    v79 = v80 + 1;
    v65 = v297;
    v74 = v295;
    if (v291 == v79)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_114:
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
  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_134:
  if (qword_100767118 != -1)
  {
    swift_once();
  }

  v231 = type metadata accessor for Logger();
  sub_100003E30(v231, qword_100778A68);
  v232 = sub_100008E04(_swiftEmptyArrayStorage);
  v233 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Requested child of list", 23, 2uLL, v232, v233);
  __break(1u);
LABEL_137:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t (*sub_1002B0004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v4 = sub_1002ADB04(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1002B021C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002B0264()
{
  result = qword_100778AB0;
  if (!qword_100778AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778AB0);
  }

  return result;
}

uint64_t sub_1002B02B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B0320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B0380(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B03F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778A88, &qword_100638308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B0460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B04C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B056C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002B0460(a1, v8, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0x4544554C434E49;
      v11 = 0x800000010067DD40;
      v12 = 0xE700000000000000;
      v13 = 0xD000000000000034;
    }

    else
    {
      v10 = 0x53494C2045524F4DLL;
      v13 = 0xD000000000000038;
      v11 = 0x800000010067DD00;
      v12 = 0xEA00000000005354;
    }

    return TTRLocalizedString(_:comment:)(*&v10, *&v13)._countAndFlagsBits;
  }

  else
  {
    sub_1002B02B8(v8, v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    v14 = *v5;

    sub_1002B0320(v5, type metadata accessor for TTRIGroupMembershipViewModel.List);
    return v14;
  }
}

uint64_t *assignWithCopy for TTRIGroupMembershipViewModel.Diff(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for TTRIGroupMembershipViewModel.Diff(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIGroupMembershipViewModel.Diff(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIGroupMembershipViewModel.Diff(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1002B0874(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t *sub_1002B08B4(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      v10 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(a2, 2, v12))
      {
        memcpy(a1, a2, *(v8 + 64));
      }

      else
      {
        v14 = a2[1];
        *a1 = *a2;
        a1[1] = v14;
        *(a1 + 16) = *(a2 + 16);
        v33 = *(v12 + 24);
        v15 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
        v31 = *(*(v15 - 8) + 16);

        v31(a1 + v33, a2 + v33, v15);
        (*(v13 + 56))(a1, 0, 2, v12);
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v16 = a3[5];
    v17 = (a1 + v16);
    v18 = (a2 + v16);
    if (v9((a2 + v16), 1, v7))
    {
      v19 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
      memcpy(v17, v18, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v18, 2, v20))
      {
        memcpy(v17, v18, *(v8 + 64));
      }

      else
      {
        v22 = v18[1];
        *v17 = *v18;
        v17[1] = v22;
        *(v17 + 16) = *(v18 + 16);
        v34 = *(v20 + 24);
        v23 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
        v32 = *(*(v23 - 8) + 16);

        v32(v17 + v34, v18 + v34, v23);
        (*(v21 + 56))(v17, 0, 2, v20);
      }

      (*(v8 + 56))(v17, 0, 1, v7);
    }

    v24 = a3[6];
    v25 = a3[7];
    v26 = a1 + v24;
    v27 = a2 + v24;
    *v26 = *v27;
    v26[8] = v27[8];
    v28 = a1 + v25;
    v29 = a2 + v25;
    *v28 = *v29;
    v28[8] = v29[8];
  }

  return a1;
}

uint64_t sub_1002B0CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(a1, 1, v4))
  {
    v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    if (!(*(*(v6 - 8) + 48))(a1, 2, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v8 - 8) + 8))(a1 + v7, v8);
    }
  }

  v9 = a1 + *(a2 + 20);
  result = (v5)(v9, 1, v4);
  if (!result)
  {
    v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    result = (*(*(v11 - 8) + 48))(v9, 2, v11);
    if (!result)
    {

      v12 = *(v11 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v14 = *(*(v13 - 8) + 8);

      return v14(v9 + v12, v13);
    }
  }

  return result;
}

void *sub_1002B0EB8(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 2, v10))
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      *(a1 + 16) = *(a2 + 16);
      v31 = *(v10 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v29 = *(*(v13 - 8) + 16);

      v29(a1 + v31, a2 + v31, v13);
      (*(v11 + 56))(a1, 0, 2, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = a3[5];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  if (v8((a2 + v14), 1, v6))
  {
    v17 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 2, v18))
    {
      memcpy(v15, v16, *(v7 + 64));
    }

    else
    {
      v20 = v16[1];
      *v15 = *v16;
      v15[1] = v20;
      *(v15 + 16) = *(v16 + 16);
      v32 = *(v18 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v30 = *(*(v21 - 8) + 16);

      v30(v15 + v32, v16 + v32, v21);
      (*(v19 + 56))(v15, 0, 2, v18);
    }

    (*(v7 + 56))(v15, 0, 1, v6);
  }

  v22 = a3[6];
  v23 = a3[7];
  v24 = a1 + v22;
  v25 = a2 + v22;
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = a1 + v23;
  v27 = a2 + v23;
  *v26 = *v27;
  v26[8] = v27[8];
  return a1;
}

uint64_t sub_1002B12A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v69 = v7;
      v14 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v65 = *(v14 - 8);
      v15 = *(v65 + 48);
      v16 = v15(a1, 2, v14);
      v17 = v15(a2, 2, v14);
      if (v16)
      {
        v7 = v69;
        if (!v17)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 16) = *(a2 + 16);
          v18 = *(v14 + 24);
          v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v62 = *(*(v19 - 8) + 16);

          v62(a1 + v18, a2 + v18, v19);
          v7 = v69;
          (*(v65 + 56))(a1, 0, 2, v14);
          goto LABEL_14;
        }
      }

      else
      {
        v7 = v69;
        if (!v17)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);

          *(a1 + 16) = *(a2 + 16);
          v56 = *(v14 + 24);
          v57 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v57 - 8) + 24))(a1 + v56, a2 + v56, v57);
          goto LABEL_14;
        }

        sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v13 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v13);
      goto LABEL_14;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_7:
    v13 = *(*(sub_100058000(&qword_100769F08, &unk_10062EAC0) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v68 = v7;
  v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2, 2, v11))
  {
    v7 = v68;
    memcpy(a1, a2, *(v68 + 64));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v66 = a3;
    v20 = *(v11 + 24);
    v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v63 = *(*(v21 - 8) + 16);

    v22 = a1 + v20;
    v23 = a2 + v20;
    a3 = v66;
    v63(v22, v23, v21);
    (*(v12 + 56))(a1, 0, 2, v11);
    v7 = v68;
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v24 = a3[5];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = v8(a1 + v24, 1, v6);
  v28 = v8(v26, 1, v6);
  if (!v27)
  {
    if (!v28)
    {
      v33 = a3;
      v34 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v71 = *(v34 - 8);
      v35 = *(v71 + 48);
      v36 = v35(v25, 2, v34);
      v37 = v35(v26, 2, v34);
      if (v36)
      {
        if (!v37)
        {
          *v25 = *v26;
          *(v25 + 8) = *(v26 + 8);
          *(v25 + 16) = *(v26 + 16);
          v51 = *(v34 + 24);
          v52 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v53 = *(*(v52 - 8) + 16);

          v54 = v25 + v51;
          v55 = v26 + v51;
          a3 = v33;
          v53(v54, v55, v52);
          (*(v71 + 56))(v25, 0, 2, v34);
          goto LABEL_27;
        }

        a3 = v33;
        v32 = *(v7 + 64);
      }

      else
      {
        if (!v37)
        {
          *v25 = *v26;
          *(v25 + 8) = *(v26 + 8);

          *(v25 + 16) = *(v26 + 16);
          v58 = *(v34 + 24);
          v59 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          v60 = v25 + v58;
          v61 = v26 + v58;
          a3 = v33;
          (*(*(v59 - 8) + 24))(v60, v61, v59);
          goto LABEL_27;
        }

        a3 = v33;
        sub_1002B0320(v25, type metadata accessor for TTRIGroupMembershipViewModel.List);
        v32 = *(v7 + 64);
      }

      goto LABEL_21;
    }

    sub_1002B0320(v25, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_20:
    v32 = *(*(sub_100058000(&qword_100769F08, &unk_10062EAC0) - 8) + 64);
LABEL_21:
    memcpy(v25, v26, v32);
    goto LABEL_27;
  }

  if (v28)
  {
    goto LABEL_20;
  }

  v70 = v7;
  v29 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v26, 2, v29))
  {
    v31 = v70;
    memcpy(v25, v26, *(v70 + 64));
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    v67 = a3;
    v38 = *(v29 + 24);
    v39 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v64 = *(*(v39 - 8) + 16);

    v40 = v25 + v38;
    v41 = v26 + v38;
    a3 = v67;
    v64(v40, v41, v39);
    (*(v30 + 56))(v25, 0, 2, v29);
    v31 = v70;
  }

  (*(v31 + 56))(v25, 0, 1, v6);
LABEL_27:
  v42 = a3[6];
  v43 = a1 + v42;
  v44 = (a2 + v42);
  v45 = *v44;
  *(v43 + 8) = *(v44 + 8);
  *v43 = v45;
  v46 = a3[7];
  v47 = a1 + v46;
  v48 = (a2 + v46);
  v49 = *v48;
  *(v47 + 8) = *(v48 + 8);
  *v47 = v49;
  return a1;
}

_BYTE *sub_1002B1AD4(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 2, v10))
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      *a1 = *a2;
      a1[16] = a2[16];
      v12 = *(v10 + 24);
      v13 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      (*(v11 + 56))(a1, 0, 2, v10);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = a3[5];
  v15 = &a1[v14];
  v16 = &a2[v14];
  if (v8(&a2[v14], 1, v6))
  {
    v17 = sub_100058000(&qword_100769F08, &unk_10062EAC0);
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 2, v18))
    {
      memcpy(v15, v16, *(v7 + 64));
    }

    else
    {
      *v15 = *v16;
      v15[16] = v16[16];
      v20 = *(v18 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v21 - 8) + 32))(&v15[v20], &v16[v20], v21);
      (*(v19 + 56))(v15, 0, 2, v18);
    }

    (*(v7 + 56))(v15, 0, 1, v6);
  }

  v22 = a3[6];
  v23 = a3[7];
  v24 = &a1[v22];
  v25 = &a2[v22];
  *v24 = *v25;
  v24[8] = v25[8];
  v26 = &a1[v23];
  v27 = &a2[v23];
  *v26 = *v27;
  v26[8] = v27[8];
  return a1;
}

_BYTE *sub_1002B1E88(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v55 = *(v14 - 8);
      v15 = *(v55 + 48);
      v16 = v15(a1, 2, v14);
      v17 = v15(a2, 2, v14);
      if (v16)
      {
        if (!v17)
        {
          *a1 = *a2;
          a1[16] = a2[16];
          v18 = *(v14 + 24);
          v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
          (*(v55 + 56))(a1, 0, 2, v14);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v17)
        {
          v49 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v49;

          a1[16] = a2[16];
          v50 = *(v14 + 24);
          v51 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v51 - 8) + 40))(&a1[v50], &a2[v50], v51);
          goto LABEL_14;
        }

        sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v13 = *(v7 + 64);
LABEL_8:
      memcpy(a1, a2, v13);
      goto LABEL_14;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_7:
    v13 = *(*(sub_100058000(&qword_100769F08, &unk_10062EAC0) - 8) + 64);
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2, 2, v11))
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v20 = *(v11 + 24);
    v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v21 - 8) + 32))(&a1[v20], &a2[v20], v21);
    (*(v12 + 56))(a1, 0, 2, v11);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v22 = a3[5];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = v8(&a1[v22], 1, v6);
  v26 = v8(v24, 1, v6);
  if (!v25)
  {
    if (!v26)
    {
      v30 = v7;
      v31 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
      v56 = *(v31 - 8);
      v32 = *(v56 + 48);
      v33 = v32(v23, 2, v31);
      v34 = v32(v24, 2, v31);
      if (v33)
      {
        if (!v34)
        {
          *v23 = *v24;
          v23[16] = v24[16];
          v35 = *(v31 + 24);
          v36 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v36 - 8) + 32))(&v23[v35], &v24[v35], v36);
          (*(v56 + 56))(v23, 0, 2, v31);
          goto LABEL_27;
        }
      }

      else
      {
        if (!v34)
        {
          v52 = *(v24 + 1);
          *v23 = *v24;
          *(v23 + 1) = v52;

          v23[16] = v24[16];
          v53 = *(v31 + 24);
          v54 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
          (*(*(v54 - 8) + 40))(&v23[v53], &v24[v53], v54);
          goto LABEL_27;
        }

        sub_1002B0320(v23, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      v29 = *(v30 + 64);
      goto LABEL_21;
    }

    sub_1002B0320(v23, type metadata accessor for TTRIGroupMembershipViewModel.Item);
LABEL_20:
    v29 = *(*(sub_100058000(&qword_100769F08, &unk_10062EAC0) - 8) + 64);
LABEL_21:
    memcpy(v23, v24, v29);
    goto LABEL_27;
  }

  if (v26)
  {
    goto LABEL_20;
  }

  v27 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 2, v27))
  {
    memcpy(v23, v24, *(v7 + 64));
  }

  else
  {
    *v23 = *v24;
    v23[16] = v24[16];
    v37 = v7;
    v38 = *(v27 + 24);
    v39 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v40 = &v23[v38];
    v41 = &v24[v38];
    v7 = v37;
    (*(*(v39 - 8) + 32))(v40, v41, v39);
    (*(v28 + 56))(v23, 0, 2, v27);
  }

  (*(v7 + 56))(v23, 0, 1, v6);
LABEL_27:
  v42 = a3[6];
  v43 = a3[7];
  v44 = &a1[v42];
  v45 = &a2[v42];
  *v44 = *v45;
  v44[8] = v45[8];
  v46 = &a1[v43];
  v47 = &a2[v43];
  *v46 = *v47;
  v46[8] = v47[8];
  return a1;
}

void sub_1002B261C(uint64_t a1)
{
  sub_1002B26B4(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1002B26B4(uint64_t a1)
{
  if (!qword_100778B40)
  {
    type metadata accessor for TTRIGroupMembershipViewModel.Item(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100778B40);
    }
  }
}

uint64_t *sub_1002B270C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 2, v7))
    {
      v10 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      *(a1 + 16) = *(a2 + 16);
      v13 = *(v7 + 24);
      v14 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v23 = *(*(v14 - 8) + 16);

      v23(a1 + v13, a2 + v13, v14);
      (*(v8 + 56))(a1, 0, 2, v7);
    }

    v15 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    if (v9((a2 + v15), 2, v7))
    {
      v18 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    else
    {
      v19 = v17[1];
      *v16 = *v17;
      v16[1] = v19;
      *(v16 + 16) = *(v17 + 16);
      v20 = *(v7 + 24);
      v21 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v24 = *(*(v21 - 8) + 16);

      v24(v16 + v20, v17 + v20, v21);
      (*(v8 + 56))(v16, 0, 2, v7);
    }

    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t sub_1002B29BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(*(v4 - 8) + 48);
  if (!v5(a1, 2, v4))
  {

    v6 = *(v4 + 24);
    v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
  }

  v8 = a1 + *(a2 + 24);
  result = (v5)(v8, 2, v4);
  if (!result)
  {

    v10 = *(v4 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v12 = *(*(v11 - 8) + 8);

    return v12(v8 + v10, v11);
  }

  return result;
}

void *sub_1002B2B00(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 2, v6))
  {
    v9 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = *(v6 + 24);
    v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v23 = *(*(v12 - 8) + 16);

    v23(a1 + v11, a2 + v11, v12);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v13 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  if (v8((a2 + v13), 2, v6))
  {
    v16 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

  else
  {
    v17 = v15[1];
    *v14 = *v15;
    v14[1] = v17;
    *(v14 + 16) = *(v15 + 16);
    v25 = a3;
    v18 = *(v6 + 24);
    v19 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v24 = *(*(v19 - 8) + 16);

    v20 = v14 + v18;
    v21 = v15 + v18;
    a3 = v25;
    v24(v20, v21, v19);
    (*(v7 + 56))(v14, 0, 2, v6);
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002B2D74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v27 = *(*(v12 - 8) + 16);

      v27(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
LABEL_6:
    v13 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v23 = *(v6 + 24);
  v24 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
LABEL_7:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v14 = a3[6];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = v8(a1 + v14, 2, v6);
  v18 = v8(v16, 2, v6);
  if (!v17)
  {
    if (!v18)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);

      *(v15 + 16) = *(v16 + 16);
      v25 = *(v6 + 24);
      v26 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v26 - 8) + 24))(v15 + v25, v16 + v25, v26);
      goto LABEL_13;
    }

    sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.List);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v21 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v15, v16, *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  v19 = *(v6 + 24);
  v20 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v28 = *(*(v20 - 8) + 16);

  v28(v15 + v19, v16 + v19, v20);
  (*(v7 + 56))(v15, 0, 2, v6);
LABEL_13:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

_BYTE *sub_1002B315C(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 2, v6))
  {
    v9 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v10 = *(v6 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 2, v6);
  }

  v12 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  v13 = &a1[v12];
  v14 = &a2[v12];
  if (v8(&a2[v12], 2, v6))
  {
    v15 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  else
  {
    *v13 = *v14;
    v13[16] = v14[16];
    v16 = *(v6 + 24);
    v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v17 - 8) + 32))(&v13[v16], &v14[v16], v17);
    (*(v7 + 56))(v13, 0, 2, v6);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_1002B3390(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
LABEL_6:
    v13 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v23 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v23;

  *(a1 + 16) = *(a2 + 16);
  v24 = *(v6 + 24);
  v25 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v25 - 8) + 40))(a1 + v24, a2 + v24, v25);
LABEL_7:
  v14 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v8(a1 + v14, 2, v6);
  v18 = v8(v16, 2, v6);
  if (!v17)
  {
    if (!v18)
    {
      v26 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v26;

      v15[16] = v16[16];
      v27 = *(v6 + 24);
      v28 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v28 - 8) + 40))(&v15[v27], &v16[v27], v28);
      goto LABEL_13;
    }

    sub_1002B0320(v15, type metadata accessor for TTRIGroupMembershipViewModel.List);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v21 = type metadata accessor for TTRIGroupMembershipViewModel.Item(0);
    memcpy(v15, v16, *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  *v15 = *v16;
  v15[16] = v16[16];
  v19 = *(v6 + 24);
  v20 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v20 - 8) + 32))(&v15[v19], &v16[v19], v20);
  (*(v7 + 56))(v15, 0, 2, v6);
LABEL_13:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002B3724(uint64_t a1)
{
  result = type metadata accessor for TTRIGroupMembershipViewModel.Item(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1002B37C0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = a2[1];
    *a1 = *a2;
    a1[1] = v12;
    *(a1 + 16) = *(a2 + 16);
    v13 = *(v7 + 24);
    v14 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v15 = *(*(v14 - 8) + 16);

    v15(a1 + v13, a2 + v13, v14);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002B397C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {

    v4 = *(v2 + 24);
    v5 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v4, v5);
  }

  return result;
}

void *sub_1002B3A3C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = *(v6 + 24);
    v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v13 = *(*(v12 - 8) + 16);

    v13(a1 + v11, a2 + v11, v12);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_1002B3BBC(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *(a1 + 16) = *(a2 + 16);
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      *(a1 + 16) = *(a2 + 16);
      v16 = *(v6 + 24);
      v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v17 - 8) + 24))(a1 + v16, a2 + v16, v17);
      return a1;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_BYTE *sub_1002B3DF0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    a1[16] = a2[16];
    v10 = *(v6 + 24);
    v11 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

char *sub_1002B3F4C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      a1[16] = a2[16];
      v11 = *(v6 + 24);
      v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v15;

      a1[16] = a2[16];
      v16 = *(v6 + 24);
      v17 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
      (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
      return a1;
    }

    sub_1002B0320(a1, type metadata accessor for TTRIGroupMembershipViewModel.List);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1002B4178(uint64_t a1)
{
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_1002B41E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_1002B4250(uint64_t a1)
{
  result = type metadata accessor for TTRIGroupMembershipViewModel.List(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1002B42C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_1002B43B0(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1002B4424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1002B44C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1002B455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1002B45DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1002B4690(uint64_t a1)
{
  result = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1002B480C()
{
  result = qword_100778D40;
  if (!qword_100778D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778D40);
  }

  return result;
}

uint64_t sub_1002B4870@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  __chkstk_darwin(v1);
  v49 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  v44 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppIntentsDependencyKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v32 - v17;
  v19 = sub_100058000(&qword_100778DC8, &qword_100638688);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  __chkstk_darwin(v19);
  v45 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v43 = v32 - v23;
  v37 = sub_100058000(&qword_100767540, &qword_100645990);
  v42 = enum case for AppIntentsDependencyKey.remStore(_:);
  v41 = v13[13];
  v41(v18);
  v40 = v13[2];
  v35 = v15;
  v40(v15, v18, v12);
  v39 = sub_1002B5E0C(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey, &protocol conformance descriptor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  v38 = v13[1];
  v38(v18, v12);
  v36 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v24 = AppDependency.__allocating_init(key:manager:)();
  LOBYTE(v52) = 1;
  v53 = v24;
  v32[0] = v9;
  String.LocalizationValue.init(stringLiteral:)();
  v32[1] = v6;
  static Locale.current.getter();
  v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v51 + 104);
  v51 += 104;
  v34 = v25;
  v25(v49);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1002B5E54();
  v26 = v43;
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  (v41)(v18, v42, v12);
  v40(v35, v18, v12);
  AnyHashable.init<A>(_:)();
  v38(v18, v12);
  static AppDependencyManager.shared.getter();
  v27 = AppDependency.__allocating_init(key:manager:)();
  LOBYTE(v52) = 2;
  v53 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v49, v33, v50);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v45;
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  type metadata accessor for AnyListEntity(0);
  sub_1002B5E0C(&qword_100778DB8, type metadata accessor for AnyListEntity, &protocol conformance descriptor for AnyListEntity);
  sub_1002B5DA8();
  v29 = v46;
  static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A, B>(_:_:)();
  v30 = *(v47 + 8);
  v30(v28, v29);
  return (v30)(v26, v29);
}

uint64_t sub_1002B4F78()
{
  v0 = sub_100058000(&qword_100778D50, &qword_1006385F8);
  __chkstk_darwin(v0 - 8);
  v72 = &v56 - v1;
  v70 = sub_100058000(&qword_100778D58, &qword_100638600);
  __chkstk_darwin(v70);
  v69 = &v56 - v2;
  v3 = sub_100058000(&qword_100778D60, &qword_100638608);
  __chkstk_darwin(v3 - 8);
  v71 = &v56 - v4;
  v5 = sub_100058000(&qword_100778D68, &qword_100638610);
  __chkstk_darwin(v5 - 8);
  v73 = &v56 - v6;
  v67 = sub_100058000(&qword_100778D70, &qword_100638618);
  __chkstk_darwin(v67);
  v66 = &v56 - v7;
  v80 = type metadata accessor for LocalizedStringResource.BundleDescription();
  KeyPath = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v77 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v76 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v82 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppShortcutPhraseToken();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_100778D78, &qword_100638620);
  __chkstk_darwin(v19);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v81 = type metadata accessor for AppShortcut();
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100778D80, &qword_100638628);
  v23 = *(sub_100058000(&qword_100778D88, &qword_100638630) - 8);
  v58 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v68 = xmmword_10062D3F0;
  v65 = v25;
  *(v25 + 16) = xmmword_10062D3F0;
  v74 = v25 + v24;
  sub_1002B5D00();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x800000010067DD80;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v16;
  v28 = v16 + 104;
  v29 = *(v16 + 104);
  v56 = v18;
  v30 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v63 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v75 = v15;
  v29(v18);
  v60 = v28;
  v62 = v29;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v31 = *(v27 + 8);
  v31(v18, v15);
  v59 = v31;
  v61 = v27 + 8;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v32);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v33._object = 0x800000010067DDA0;
  v33._countAndFlagsBits = 0xD000000000000019;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v56;
  v35 = v75;
  (v29)(v56, v30, v75);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v31(v34, v35);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v36);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v37 = *(KeyPath + 104);
  KeyPath += 104;
  v58 = v37;
  v37(v78);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = v79;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v74 = static AppShortcutsBuilder.buildExpression(_:)();
  v39 = *(v84 + 8);
  v84 += 8;
  v65 = v39;
  v39(v38, v81);
  v91 = _s9Reminders20OpenAnyListAppIntentVACycfC_0();
  sub_100058000(&qword_100778D98, &qword_100638638);
  sub_100058000(&qword_100778DA0, &qword_100638640);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D400;
  v64 = v40;
  sub_1002B5D54();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._countAndFlagsBits = 0x206E65704FLL;
  v41._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v41);
  swift_getKeyPath();
  sub_100058000(&qword_100778DB0, &unk_100638670);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v42._countAndFlagsBits = 544106784;
  v42._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v42);
  v43 = v75;
  (v62)(v34, v63, v75);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v59(v34, v43);
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v44);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58(v78, v57, v80);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  KeyPath = swift_getKeyPath();
  v45 = type metadata accessor for AnyListEntity(0);
  sub_100058000(&qword_100767530, &unk_10062BD20);
  v46 = sub_1002B5E0C(&qword_100778DB8, type metadata accessor for AnyListEntity, &protocol conformance descriptor for AnyListEntity);
  AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._countAndFlagsBits = 0x206E65704FLL;
  v47._object = 0xE500000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v47);
  swift_getKeyPath();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)();

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v48);
  AppShortcutParameterPresentationSummaryString.init(stringInterpolation:)();
  AppShortcutParameterPresentationSummary.init(_:table:)();
  sub_100058000(&qword_100778DC0, &qword_100638680);
  v49 = sub_10005D20C(&qword_100778DC8, &qword_100638688);
  v50 = sub_1002B5DA8();
  v85 = v45;
  v86 = v49;
  v87 = v49;
  v88 = v46;
  v89 = v50;
  v90 = v50;
  swift_getOpaqueTypeConformance2();
  AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)();
  v51 = v79;
  AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)();
  v52 = static AppShortcutsBuilder.buildExpression(_:)();
  v65(v51, v81);
  sub_100058000(&qword_100778DD8, &unk_100638690);
  v53 = swift_allocObject();
  *(v53 + 16) = v68;
  *(v53 + 32) = v74;
  *(v53 + 40) = v52;
  v54 = static AppShortcutsBuilder.buildBlock(_:)();

  return v54;
}

unint64_t sub_1002B5D00()
{
  result = qword_100778D90;
  if (!qword_100778D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778D90);
  }

  return result;
}

unint64_t sub_1002B5D54()
{
  result = qword_100778DA8;
  if (!qword_100778DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DA8);
  }

  return result;
}

unint64_t sub_1002B5DA8()
{
  result = qword_100778DD0;
  if (!qword_100778DD0)
  {
    sub_10005D20C(&qword_100778DC8, &qword_100638688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DD0);
  }

  return result;
}

uint64_t sub_1002B5E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002B5E54()
{
  result = qword_100778DE0;
  if (!qword_100778DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100778DE0);
  }

  return result;
}

uint64_t sub_1002B5EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v10, v3);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v4 + 8))(v6, v3);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    result = sub_1000079B4(v9, &qword_100772738, &unk_10063D2B0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v11;
    *(a1 + 32) = &protocol witness table for TTRRemindersListViewModel.Reminder;
    v14 = sub_1000317B8(a1);
    return (*(v12 + 32))(v14, v9, v11);
  }

  return result;
}

uint64_t sub_1002B60C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100778DE8);
  v1 = sub_100003E30(v0, qword_100778DE8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002B6190(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider] = 0;
  v10 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:);
  v13 = sub_100058000(&unk_100772740, &unk_100634AD0);
  (*(*(v13 - 8) + 104))(&v4[v10], v12, v13);
  static TTRRectCorners.allCorners.getter();
  v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = 0;
  v14 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v15 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v17 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v19 = sub_100058000(&qword_100778EB0, &qword_100638730);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement] = 0;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell, &unk_100638870);
  v21 = v20;
  TTRIRemindersListReminderCellAccessibilityElementContaining.ttriCreateReminderAccessibilityElement()();
  sub_1002B6458();

  return v21;
}

uint64_t sub_1002B6458()
{
  v1 = sub_100058000(&qword_10076C030, &qword_1006301C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100778FF0, &qword_1006389E8);
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver) = TTRViewModelObserver.init(didReceiveNewValue:)();

  sub_1002B7A54();
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  v8 = [objc_opt_self() tintColor];
  UIBackgroundConfiguration.strokeColor.setter();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v5 + 8))(v7, v4);
}

id sub_1002B669C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider] = 0;
  v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  v6 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:);
  v8 = sub_100058000(&unk_100772740, &unk_100634AD0);
  (*(*(v8 - 8) + 104))(&v2[v5], v7, v8);
  static TTRRectCorners.allCorners.getter();
  v2[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = 0;
  v9 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v10 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v12 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v14 = sub_100058000(&qword_100778EB0, &qword_100638730);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement] = 0;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);
  if (v15)
  {
    sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell, &unk_100638870);
    v16 = v15;
    TTRIRemindersListReminderCellAccessibilityElementContaining.ttriCreateReminderAccessibilityElement()();
    sub_1002B6458();
  }

  return v15;
}

uint64_t sub_1002B6978(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UICellConfigurationState.DropState();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C030, &qword_1006301C0);
  __chkstk_darwin(v6 - 8);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewCell.backgroundConfiguration.getter();
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    static UIBackgroundConfiguration.clear()();
    if (v15(v10, 1, v11) != 1)
    {
      sub_1000079B4(v10, &qword_10076C030, &qword_1006301C0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v16 = UIBackgroundConfiguration.customView.getter();
  if (v16)
  {
    v17 = v16;
    type metadata accessor for TTRIBoardReminderCellBackgroundStrokeView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for TTRIBoardReminderCellBackgroundStrokeView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setAutoresizingMask:18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:1];
  v19 = [objc_opt_self() tintColor];
  v20 = *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor];
  *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor] = v19;
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v21 = v19;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    [v18 setNeedsLayout];
  }

  UIBackgroundConfiguration.customView.setter();
LABEL_11:
  v22 = UICellConfigurationState.isHighlighted.getter();
  v23 = 1.5;
  if ((v22 & 1) == 0)
  {
    v24 = UICellConfigurationState.isSelected.getter();
    v23 = 0.0;
    if (v24)
    {
      v23 = 1.5;
    }
  }

  v25 = *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth];
  *&v18[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth] = v23;
  if (v23 != v25)
  {
    [v18 setNeedsLayout];
  }

  v26 = [v2 traitCollection];
  v27 = UITraitCollection.modifyingTraits(_:)();

  v28 = objc_opt_self();
  v29 = [v28 secondarySystemBackgroundColor];
  v30 = [v29 resolvedColorWithTraitCollection:v27];

  UICellConfigurationState.cellDropState.getter();
  v31 = (*(v45 + 88))(v5, v46);
  if (v31 == enum case for UICellConfigurationState.DropState.none(_:) || v31 == enum case for UICellConfigurationState.DropState.notTargeted(_:))
  {
    v32 = v30;
  }

  else if (v31 == enum case for UICellConfigurationState.DropState.targeted(_:))
  {
    v32 = [v28 systemFillColor];
  }

  else
  {
    v42 = v14;
    v33 = *(v45 + 8);
    v32 = v30;
    v33(v5, v46);
    v14 = v42;
  }

  if (UICellConfigurationState.isFocused.getter())
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_1002C5734;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002C4478;
    aBlock[3] = &unk_10071E630;
    v36 = _Block_copy(aBlock);
    v37 = v32;
    [v35 initWithDynamicProvider:v36];
    _Block_release(v36);
  }

  else
  {
    v38 = v32;
  }

  UIBackgroundConfiguration.backgroundColor.setter();
  v39 = v43;
  (*(v12 + 16))(v43, v14, v11);
  (*(v12 + 56))(v39, 0, 1, v11);
  UICollectionViewCell.backgroundConfiguration.setter();
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v49.receiver = v2;
  v49.super_class = ObjectType;
  objc_msgSendSuper2(&v49, "_bridgedUpdateConfigurationUsingState:", isa);

  return (*(v12 + 8))(v14, v11);
}

void sub_1002B7044(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() tintColor];
  v5 = [v4 resolvedColorWithTraitCollection:a1];

  v6 = [v5 colorWithAlphaComponent:0.15];
  v7 = [a2 resolvedColorWithTraitCollection:a1];
  v8 = [v7 _colorBlendedWithColor:v6];

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

double sub_1002B7578(double a1, double a2, float a3, float a4)
{
  type metadata accessor for UILayoutPriority(0);
  sub_1002C56EC(&qword_100778FE8, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    a1 = 0.0;
  }

  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    a2 = 0.0;
  }

  v9 = [v4 contentView];
  *&v10 = a3;
  *&v11 = a4;
  [v9 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v10, v11}];
  v13 = v12;

  return v13;
}

uint64_t sub_1002B7904()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider;
  if (*(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell____lazy_storage___timeZoneMultipleDayEncapsulationProvider);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TTRTimeZoneDayStringTextEncapsulationProvider();
    swift_allocObject();
    v2 = TTRTimeZoneDayStringTextEncapsulationProvider.init(font:textColor:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002B7988()
{
  type metadata accessor for TTRCounterBasedIdentifierGenerator();
  result = TTRCounterBasedIdentifierGenerator.__allocating_init()();
  qword_100778E00 = result;
  return result;
}

void sub_1002B79BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    sub_100058000(&unk_100772740, &unk_100634AD0);
    TTRLazilyLoadedViewModelState.transitionToOutdated()();
    swift_endAccess();
    sub_1002B7A54();
  }
}

uint64_t sub_1002B7A54()
{
  v120 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v124 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v117 - v1;
  v2 = sub_100058000(&qword_100778F00, &qword_100642B40);
  __chkstk_darwin(v2 - 8);
  v119 = &v117 - v3;
  v123 = sub_100058000(&qword_100778EA0, &unk_10063D390);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v117 - v4;
  v5 = sub_100058000(&unk_100781940, &unk_100638910);
  __chkstk_darwin(v5 - 8);
  v121 = &v117 - v6;
  v7 = sub_100058000(&qword_100781950, &unk_100642A90);
  __chkstk_darwin(v7 - 8);
  v129 = &v117 - v8;
  v131 = sub_100058000(&qword_10078A3B0, &unk_100638720);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v117 - v9;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v128 = &v117 - v11;
  v133 = type metadata accessor for TTRRemindersListViewModel.Item();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v142 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v13 - 8);
  v137 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v117 - v16;
  v17 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v18 = *(v17 - 8);
  v143 = v17;
  v144 = v18;
  __chkstk_darwin(v17);
  v138 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v126 = &v117 - v21;
  v22 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v139 = *(v22 - 8);
  __chkstk_darwin(v22);
  v136 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v117 - v25;
  v27 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v134 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v117 - v31;
  v33 = sub_100058000(&qword_100772730, &unk_100634AC0);
  __chkstk_darwin(v33 - 8);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v117 - v37;
  __chkstk_darwin(v39);
  v41 = &v117 - v40;
  __chkstk_darwin(v42);
  v44 = &v117 - v43;
  v146 = v0;
  if (!*&v0[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver])
  {
    __break(1u);
    goto LABEL_56;
  }

  TTRViewModelObserver.localValue.getter();

  v145 = v44;
  sub_10000794C(v44, v41, &qword_100772730, &unk_100634AC0);
  v141 = *(v28 + 48);
  v45 = v141(v41, 1, v27);
  v140 = v28;
  if (v45 == 1)
  {
    sub_1000079B4(v41, &qword_100772730, &unk_100634AC0);
LABEL_6:
    v47 = 0;
    goto LABEL_7;
  }

  (*(v28 + 32))(v32, v41, v27);
  v46 = TTRBoardColumnItemIntermediateViewModel.isTargetOfContextualPresentation.getter();
  (*(v28 + 8))(v32, v27);
  if ((v46 & 1) == 0)
  {
    goto LABEL_6;
  }

  v47 = 1;
LABEL_7:
  v48 = v139;
  v49 = v146;
  [v146 setTintAdjustmentMode:v47];
  v50 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  v135 = *(v48 + 16);
  v135(v26, &v49[v50], v22);
  v51 = (*(v48 + 88))(v26, v22);
  if (v51 == enum case for TTRLazilyLoadedViewModelState.valid<A>(_:))
  {
    (*(v48 + 96))(v26, v22);
    v52 = v26[*(sub_100058000(&qword_100778F28, &qword_100638920) + 48)];
    (*(v144 + 8))(v26, v143);
    if (v52)
    {
      LODWORD(v134) = 0;
      v53 = v146;
      goto LABEL_19;
    }

LABEL_13:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000794C(v145, v38, &qword_100772730, &unk_100634AC0);
      if (v141(v38, 1, v27) == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v38, &qword_100772730, &unk_100634AC0);
      }

      else
      {
        (*(v140 + 32))(v134, v38, v27);
        v54 = v127;
        sub_1001CBE40(v127);
        v55 = v54;
        v56 = v144;
        v57 = v54;
        v58 = v143;
        if ((*(v144 + 48))(v57, 1, v143) != 1)
        {
          (*(v56 + 32))(v126, v55, v58);
          swift_beginAccess();
          v89 = v126;
          TTRLazilyLoadedViewModelState.transitionToValid(with:)();
          swift_endAccess();
          swift_unknownObjectRelease();
          (*(v144 + 8))(v89, v58);
          v59 = v140;
          (*(v140 + 8))(v134, v27);
          LODWORD(v134) = 1;
          v53 = v146;
          v48 = v139;
LABEL_20:
          sub_10000794C(v145, v35, &qword_100772730, &unk_100634AC0);
          v60 = v141(v35, 1, v27);
          v61 = v142;
          if (v60 == 1)
          {
            sub_1000079B4(v35, &qword_100772730, &unk_100634AC0);
          }

          else
          {
            v62 = v59;
            v63 = TTRBoardColumnItemIntermediateViewModel.isPonderingTextEffectVisible.getter() & 1;
            (*(v62 + 8))(v35, v27);
            if (v63 != v53[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible])
            {
              v53[OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_isPonderingTextEffectVisible] = v63;
              v64 = 1;
              goto LABEL_25;
            }
          }

          v64 = 0;
LABEL_25:
          v65 = v145;
          v66 = v137;
          v67 = v136;
          v135(v136, &v53[v50], v22);
          TTRLazilyLoadedViewModelState.viewModel.getter();
          (*(v48 + 8))(v67, v22);
          v68 = v143;
          v69 = v144;
          if ((*(v144 + 48))(v66, 1, v143) == 1)
          {
            sub_1000079B4(v66, &qword_100772738, &unk_10063D2B0);
            v150 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
            v151 = sub_1002C56EC(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_1006477E8);
            v70 = sub_1000317B8(&v149);
            sub_1005A333C(v70);
            UICollectionViewCell.contentConfiguration.setter();
LABEL_54:
            sub_1002BC2B8();
            return sub_1000079B4(v65, &qword_100772730, &unk_100634AC0);
          }

          (*(v69 + 32))(v138, v66, v68);
          TTRRemindersListViewModel.Reminder.item.getter();
          v71 = v134;
          v72 = v134 | v64;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v74 = Strong;
            v75 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
            swift_beginAccess();
            v76 = v130;
            v77 = v131;
            v140 = *(v130 + 48);
            v78 = (v140)(&v53[v75], 1, v131);
            v141 = v74;
            if (v78)
            {
              v79 = v128;
              (*(v132 + 56))(v128, 1, 1, v133);
            }

            else
            {
              v80 = v125;
              (*(v76 + 16))(v125, &v53[v75], v77);
              TTRRemindersListInCellModule.interface.getter();
              (*(v76 + 8))(v80, v77);
              swift_getObjectType();
              v79 = v128;
              v65 = v145;
              TTRIReminderCellTitleModuleInterface.item.getter();
              swift_unknownObjectRelease();
            }

            v81 = v129;
            v82 = swift_unknownObjectWeakLoadStrong();
            if (v82)
            {
              v83 = *(v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
              v84 = *(v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
              sub_10000C36C((v82 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v83);
              v85 = (*(*(v84 + 8) + 312))(v142, v79, v83);
              swift_unknownObjectRelease();
              sub_1000079B4(v79, &qword_100772140, &qword_10062D9F0);
              if (v85)
              {
                v86 = v141;
                v87 = swift_unknownObjectWeakLoadStrong();
                v69 = v144;
                v65 = v145;
                if (v87)
                {
                  sub_10048112C(v86, v142);
                  swift_unknownObjectRelease();
                  v88 = 0;
                }

                else
                {
                  v88 = 1;
                }

                v90 = v131;
                v91 = v130;
                (*(v130 + 56))(v81, v88, 1, v131);
                v92 = v146;
                swift_beginAccess();
                sub_10000D184(v81, &v92[v75], &qword_100781950, &unk_100642A90);
                swift_endAccess();
                if (!(v140)(&v92[v75], 1, v90))
                {
                  v93 = v125;
                  (*(v91 + 16))(v125, &v146[v75], v90);
                  TTRRemindersListInCellModule.interface.getter();
                  (*(v91 + 8))(v93, v90);
                  swift_getObjectType();
                  sub_1002C56EC(&qword_100778F20, type metadata accessor for TTRIBoardReminderCell, &unk_100638790);
                  swift_unknownObjectRetain();
                  v69 = v144;
                  v65 = v145;
                  dispatch thunk of TTRIReminderCellTitleModuleInterface.hostCell.setter();
                  swift_unknownObjectRelease();
                }

                v94 = v141;
                v95 = swift_unknownObjectWeakLoadStrong();
                v96 = v124;
                v97 = v123;
                v98 = v122;
                v99 = v121;
                v61 = v142;
                if (v95)
                {
                  sub_100481230(v94, v142);
                  swift_unknownObjectRelease();
                  v100 = 0;
                }

                else
                {
                  v100 = 1;
                }

                v101 = v146;
                (*(v98 + 56))(v99, v100, 1, v97);
                v102 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
                swift_beginAccess();
                sub_10000D184(v99, &v101[v102], &unk_100781940, &unk_100638910);
                swift_endAccess();
                if (!(*(v98 + 48))(&v101[v102], 1, v97))
                {
                  v103 = v118;
                  (*(v98 + 16))(v118, &v101[v102], v97);
                  TTRRemindersListInCellModule.interface.getter();
                  (*(v98 + 8))(v103, v97);
                  swift_getObjectType();
                  sub_1002C56EC(&qword_100778F18, type metadata accessor for TTRIBoardReminderCell, &unk_100638758);
                  swift_unknownObjectRetain();
                  v69 = v144;
                  v65 = v145;
                  dispatch thunk of TTRIReminderCellNotesModuleInterface.hostCell.setter();
                  swift_unknownObjectRelease();
                }

                v104 = sub_1002E8CAC(v61);
                if (v104)
                {
                  v107 = v104;
                  v147 = v105;
                  v148 = v106;
                  v150 = type metadata accessor for TTRIReminderCellAutoCompleteViewController();
                  v149 = v107;
                  swift_unknownObjectRetain();
                  v108 = v107;
                  sub_100058000(&qword_100778F10, &qword_1006428B0);
                  v109 = v119;
                  TTRRemindersListInCellModule.init(interface:controller:)();
                  v110 = v120;
                  (*(v96 + 56))(v109, 0, 1, v120);
                  v111 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
                  swift_beginAccess();
                  sub_10000D184(v109, &v101[v111], &qword_100778F00, &qword_100642B40);
                  swift_endAccess();
                  if ((*(v96 + 48))(&v101[v111], 1, v110))
                  {
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v112 = v117;
                    (*(v96 + 16))(v117, &v101[v111], v110);
                    TTRRemindersListInCellModule.interface.getter();
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    v113 = v112;
                    v69 = v144;
                    (*(v96 + 8))(v113, v110);
                    v149[5] = &off_10071E350;
                    swift_unknownObjectWeakAssign();
                  }

                  swift_unknownObjectRelease();
                  v71 = 1;
                  v72 = 1;
                  v68 = v143;
                  v65 = v145;
                }

                else
                {
                  swift_unknownObjectRelease();
                  v71 = 1;
                  v72 = 1;
                  v68 = v143;
                }

                goto LABEL_53;
              }

              swift_unknownObjectRelease();
              v65 = v145;
              v68 = v143;
              v69 = v144;
            }

            else
            {
              swift_unknownObjectRelease();
              sub_1000079B4(v79, &qword_100772140, &qword_10062D9F0);
            }

            v61 = v142;
            v71 = v134;
          }

LABEL_53:
          v150 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
          v151 = sub_1002C56EC(&qword_100778F08, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_1006477E8);
          v114 = sub_1000317B8(&v149);
          v115 = v138;
          sub_1002B8F48(v138, v72, v71, v65, v114);
          UICollectionViewCell.contentConfiguration.setter();
          (*(v132 + 8))(v61, v133);
          (*(v69 + 8))(v115, v68);
          goto LABEL_54;
        }

        (*(v140 + 8))(v134, v27);
        swift_unknownObjectRelease();
        sub_1000079B4(v55, &qword_100772738, &unk_10063D2B0);
        v48 = v139;
      }
    }

    v53 = v146;
    swift_beginAccess();
    TTRLazilyLoadedViewModelState.transitionToNone()();
    swift_endAccess();
    LODWORD(v134) = 1;
LABEL_19:
    v59 = v140;
    goto LABEL_20;
  }

  if (v51 == enum case for TTRLazilyLoadedViewModelState.invalid<A>(_:))
  {
    (*(v48 + 8))(v26, v22);
    goto LABEL_13;
  }

  if (v51 == enum case for TTRLazilyLoadedViewModelState.none<A>(_:))
  {
    goto LABEL_13;
  }

LABEL_56:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B8F48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v411 = a4;
  v356 = a3;
  v342 = a2;
  v402 = a1;
  v6 = sub_100058000(&qword_100778F00, &qword_100642B40);
  __chkstk_darwin(v6 - 8);
  v390 = &v305 - v7;
  v388 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  __chkstk_darwin(v388);
  v389 = &v305 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100778F30, &qword_100638928);
  __chkstk_darwin(v9 - 8);
  v386 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v387 = &v305 - v12;
  v318 = type metadata accessor for TTRReminderCellStyle.Role();
  v317 = *(v318 - 8);
  __chkstk_darwin(v318);
  v316 = &v305 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v315 = &v305 - v15;
  v385 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v384 = *(v385 - 8);
  __chkstk_darwin(v385);
  v383 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_100058000(&qword_100776378, &unk_100636960);
  __chkstk_darwin(v306);
  v378 = &v305 - v17;
  v381 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v380 = *(v381 - 8);
  __chkstk_darwin(v381);
  v379 = &v305 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v376 = *(v377 - 8);
  __chkstk_darwin(v377);
  v375 = &v305 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = type metadata accessor for TTRReminderCellStyle();
  v396 = *(v394 - 8);
  __chkstk_darwin(v394);
  v382 = &v305 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v369 = &v305 - v22;
  v23 = sub_100058000(&qword_100778F38, &unk_100647820);
  __chkstk_darwin(v23 - 8);
  v393 = &v305 - v24;
  v374 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v373 = *(v374 - 8);
  __chkstk_darwin(v374);
  v372 = &v305 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v366 = *(v367 - 1);
  __chkstk_darwin(v367);
  v365 = &v305 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100778EE0, &unk_100638900);
  __chkstk_darwin(v27 - 8);
  v363 = &v305 - v28;
  v364 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v362 = *(v364 - 8);
  __chkstk_darwin(v364);
  v360 = &v305 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v358 = *(v359 - 8);
  __chkstk_darwin(v359);
  v357 = &v305 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_100778EE8, &qword_100647150);
  __chkstk_darwin(v31 - 8);
  v353 = &v305 - v32;
  v355 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v354 = *(v355 - 8);
  __chkstk_darwin(v355);
  v352 = &v305 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100058000(&qword_100778F40, &qword_100638930);
  __chkstk_darwin(v34 - 8);
  v347 = &v305 - v35;
  v345 = type metadata accessor for TTRReminderDetailViewModel.FlaggedState();
  v343 = *(v345 - 8);
  __chkstk_darwin(v345);
  v341 = &v305 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v339 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v305 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_100058000(&qword_100778F48, &qword_100638938);
  v336 = *(v337 - 8);
  __chkstk_darwin(v337);
  v335 = &v305 - v38;
  v39 = sub_100058000(&qword_100781950, &unk_100642A90);
  __chkstk_darwin(v39 - 8);
  v334 = &v305 - v40;
  v395 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v400 = *(v395 - 8);
  __chkstk_darwin(v395);
  v371 = &v305 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v350 = &v305 - v43;
  v392 = v44;
  __chkstk_darwin(v45);
  v326 = &v305 - v46;
  v311 = type metadata accessor for TTRReminderCellTitleViewModel();
  v314 = *(v311 - 8);
  __chkstk_darwin(v311);
  v313 = &v305 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_100058000(&qword_100778F50, &unk_100638940);
  v332 = *(v333 - 8);
  __chkstk_darwin(v333);
  v329 = &v305 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v330 = &v305 - v50;
  v331 = sub_100058000(&qword_100778F58, &qword_100642AA0);
  v328 = *(v331 - 8);
  __chkstk_darwin(v331);
  v327 = &v305 - v51;
  v406 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel();
  v399 = *(v406 - 8);
  __chkstk_darwin(v406);
  v307 = &v305 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100058000(&qword_100778F60, &qword_100638950);
  __chkstk_darwin(v53);
  v55 = &v305 - v54;
  v305 = sub_100058000(&qword_100778F68, &qword_100638958);
  __chkstk_darwin(v305);
  v361 = &v305 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v348 = &v305 - v58;
  __chkstk_darwin(v59);
  v351 = &v305 - v60;
  __chkstk_darwin(v61);
  v310 = &v305 - v62;
  __chkstk_darwin(v63);
  v312 = &v305 - v64;
  __chkstk_darwin(v65);
  v324 = &v305 - v66;
  __chkstk_darwin(v67);
  v325 = (&v305 - v68);
  __chkstk_darwin(v69);
  v323 = &v305 - v70;
  __chkstk_darwin(v71);
  v320 = &v305 - v72;
  __chkstk_darwin(v73);
  v391 = &v305 - v74;
  __chkstk_darwin(v75);
  v77 = &v305 - v76;
  __chkstk_darwin(v78);
  v80 = &v305 - v79;
  __chkstk_darwin(v81);
  v83 = &v305 - v82;
  v84 = sub_100058000(&qword_100772730, &unk_100634AC0);
  __chkstk_darwin(v84 - 8);
  v308 = &v305 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v370 = &v305 - v87;
  __chkstk_darwin(v88);
  v368 = &v305 - v89;
  __chkstk_darwin(v90);
  v349 = &v305 - v91;
  __chkstk_darwin(v92);
  v344 = &v305 - v93;
  __chkstk_darwin(v94);
  v309 = &v305 - v95;
  __chkstk_darwin(v96);
  v322 = &v305 - v97;
  __chkstk_darwin(v98);
  v321 = &v305 - v99;
  __chkstk_darwin(v100);
  v319 = &v305 - v101;
  __chkstk_darwin(v102);
  v104 = &v305 - v103;
  __chkstk_darwin(v105);
  v107 = &v305 - v106;
  v407 = a5;
  sub_1005A333C(a5);
  sub_10000794C(v411, v107, &qword_100772730, &unk_100634AC0);
  v108 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v109 = *(v108 - 8);
  v409 = *(v109 + 48);
  v410 = v109 + 48;
  v110 = v409(v107, 1, v108);
  v401 = v109;
  if (v110 == 1)
  {
    sub_1000079B4(v107, &qword_100772730, &unk_100634AC0);
    v111 = 0;
  }

  else
  {
    v111 = TTRBoardColumnItemIntermediateViewModel.isUserInteractionEnabled.getter();
    (*(v109 + 8))(v107, v108);
  }

  *v407 = v111 & 1;
  sub_10000794C(v411, v104, &qword_100772730, &unk_100634AC0);
  v112 = v409(v104, 1, v108);
  v403 = v108;
  if (v112 == 1)
  {
    sub_1000079B4(v104, &qword_100772730, &unk_100634AC0);
    v113 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v401 + 8))(v104, v108);
    v113 = 0;
  }

  v114 = v399;
  v115 = v399 + 56;
  v116 = *(v399 + 56);
  v117 = v406;
  v116(v83, v113, 1, v406);
  v118 = *(v114 + 104);
  v346 = enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.subtask(_:);
  v118(v80);
  v404 = v116;
  v405 = v115;
  v116(v80, 0, 1, v117);
  v119 = *(v53 + 48);
  sub_10000794C(v83, v55, &qword_100778F68, &qword_100638958);
  sub_10000794C(v80, &v55[v119], &qword_100778F68, &qword_100638958);
  v120 = v114;
  v121 = v117;
  v122 = *(v120 + 48);
  v123 = v122(v55, 1, v117);
  v124 = v407;
  v397 = v122;
  v398 = v120 + 48;
  if (v123 == 1)
  {
    sub_1000079B4(v80, &qword_100778F68, &qword_100638958);
    sub_1000079B4(v83, &qword_100778F68, &qword_100638958);
    if (v122(&v55[v119], 1, v121) == 1)
    {
      sub_1000079B4(v55, &qword_100778F68, &qword_100638958);
      v125 = 1;
LABEL_13:
      v126 = v403;
      goto LABEL_15;
    }

LABEL_12:
    sub_1000079B4(v55, &qword_100778F60, &qword_100638950);
    v125 = 0;
    goto LABEL_13;
  }

  sub_10000794C(v55, v77, &qword_100778F68, &qword_100638958);
  if (v122(&v55[v119], 1, v121) == 1)
  {
    sub_1000079B4(v80, &qword_100778F68, &qword_100638958);
    sub_1000079B4(v83, &qword_100778F68, &qword_100638958);
    (*(v399 + 8))(v77, v121);
    goto LABEL_12;
  }

  v127 = v399;
  v128 = v307;
  (*(v399 + 32))(v307, &v55[v119], v121);
  sub_1002C56EC(&qword_100778F90, &type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel, &protocol conformance descriptor for TTRBoardColumnItemIntermediateViewModel.ItemLevel);
  v125 = dispatch thunk of static Equatable.== infix(_:_:)();
  v129 = *(v127 + 8);
  v129(v128, v121);
  sub_1000079B4(v80, &qword_100778F68, &qword_100638958);
  sub_1000079B4(v83, &qword_100778F68, &qword_100638958);
  v129(v77, v121);
  v124 = v407;
  sub_1000079B4(v55, &qword_100778F68, &qword_100638958);
  v126 = v403;
LABEL_15:
  v130 = v391;
  v131 = v319;
  *(v124 + 2) = v125 & 1;
  sub_10000794C(v411, v131, &qword_100772730, &unk_100634AC0);
  v132 = v409(v131, 1, v126);
  v133 = v402;
  if (v132 == 1)
  {
    sub_1000079B4(v131, &qword_100772730, &unk_100634AC0);
    v134 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v401 + 8))(v131, v126);
    v134 = 0;
  }

  v135 = v320;
  v136 = v406;
  v404(v130, v134, 1, v406);
  sub_10000794C(v130, v135, &qword_100778F68, &qword_100638958);
  v137 = v397(v135, 1, v136);
  v138 = &UIFontTextStyleBody;
  v139 = v399;
  if (v137 != 1)
  {
    v140 = (*(v399 + 88))(v135, v136);
    v138 = &UIFontTextStyleBody;
    if (v140 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:) && v140 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
    {
      if (v140 != v346)
      {
        goto LABEL_91;
      }

      v138 = &UIFontTextStyleSubheadline;
    }
  }

  v141 = *v138;
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v142 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

  sub_1000079B4(v391, &qword_100778F68, &qword_100638958);
  v124[1] = v142;
  v143 = v321;
  sub_10000794C(v411, v321, &qword_100772730, &unk_100634AC0);
  v144 = v403;
  if (v409(v143, 1, v403) == 1)
  {
    sub_1000079B4(v143, &qword_100772730, &unk_100634AC0);
    v145 = 1;
    v146 = v325;
    v147 = v323;
  }

  else
  {
    v148 = v323;
    v149 = v139;
    v150 = v143;
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    v147 = v148;
    v151 = v150;
    v139 = v149;
    (*(v401 + 8))(v151, v144);
    v145 = 0;
    v146 = v325;
  }

  v404(v147, v145, 1, v136);
  v325 = UIFontTextStyleSubheadline;
  v152 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  sub_1000079B4(v147, &qword_100778F68, &qword_100638958);

  v124[2] = v152;
  v153 = v322;
  sub_10000794C(v411, v322, &qword_100772730, &unk_100634AC0);
  if (v409(v153, 1, v144) == 1)
  {
    sub_1000079B4(v153, &qword_100772730, &unk_100634AC0);
    v154 = 1;
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v401 + 8))(v153, v144);
    v154 = 0;
  }

  v155 = v324;
  v156 = v406;
  v404(v146, v154, 1, v406);
  sub_10000794C(v146, v155, &qword_100778F68, &qword_100638958);
  if (v397(v155, 1, v156) == 1 || (v158 = (*(v139 + 88))(v155, v156), v158 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v158 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
  {
    v157 = UIFontTextStyleBody;
  }

  else
  {
    v157 = v325;
    if (v158 != v346)
    {
      goto LABEL_91;
    }
  }

  v159 = v157;
  sub_1000079B4(v146, &qword_100778F68, &qword_100638958);
  v391 = objc_opt_self();
  v160 = [v391 configurationWithTextStyle:v159];

  v124[3] = v160;
  if (v342)
  {
    (*(v400 + 16))(v326, v133, v395);
    v161 = v309;
    sub_10000794C(v411, v309, &qword_100772730, &unk_100634AC0);
    v162 = v409(v161, 1, v144);
    v163 = v406;
    if (v162 == 1)
    {
      sub_1000079B4(v161, &qword_100772730, &unk_100634AC0);
      v164 = 1;
      v165 = v313;
      v166 = v312;
    }

    else
    {
      v166 = v312;
      TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
      (*(v401 + 8))(v161, v144);
      v164 = 0;
      v165 = v313;
    }

    v170 = v311;
    v171 = v310;
    v404(v166, v164, 1, v163);
    sub_10000794C(v166, v171, &qword_100778F68, &qword_100638958);
    if (v397(v171, 1, v163) == 1 || (v173 = (*(v139 + 88))(v171, v163), v173 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v173 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
    {
      v172 = UIFontTextStyleBody;
    }

    else
    {
      v172 = v325;
      if (v173 != v346)
      {
        goto LABEL_91;
      }
    }

    v174 = v172;
    static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

    sub_1000079B4(v166, &qword_100778F68, &qword_100638958);
    TTRReminderCellTitleViewModel.init(reminder:font:)();
    TTRReminderCellTitleViewModel.isPonderingTextEffectVisible.setter();
    v175 = *(sub_100058000(&qword_100778F88, &unk_100638980) + 48);
    v176 = v314;
    v169 = v330;
    (*(v314 + 16))(v330, v165, v170);
    v177 = v347;
    if (qword_100767128 != -1)
    {
      swift_once();
    }

    v178 = TTRCounterBasedIdentifierGenerator.allocID()();
    (*(v176 + 8))(v165, v170);
    *&v169[v175] = v178;
    v167 = &enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
    v168 = v177;
  }

  else
  {
    v167 = &enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
    v168 = v347;
    v169 = v330;
  }

  v179 = v332;
  v180 = v333;
  (*(v332 + 104))(v169, *v167, v333);
  v181 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
  v182 = v408;
  swift_beginAccess();
  sub_10000794C(v182 + v181, v334, &qword_100781950, &unk_100642A90);
  (*(v179 + 16))(v329, v169, v180);
  sub_100058000(&unk_100775AA0, &unk_100638960);
  v183 = v327;
  TTRBoardReminderCellTitleConfiguration.init(module:viewModelUpdate:)();
  (*(v179 + 8))(v169, v180);
  v184 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  (*(v328 + 40))(v124 + v184[17], v183, v331);
  v185 = v335;
  v186 = v411;
  sub_1002C1B34(v133, v411, v356 & 1, v335);
  (*(v336 + 40))(v124 + v184[18], v185, v337);
  v187 = sub_1002C2358(v133);
  v188 = v184[24];

  *(v124 + v188) = v187;
  v189 = v338;
  sub_1002C2A78(v186, v338);
  v190.n128_f64[0] = (*(v339 + 40))(v124 + v184[11], v189, v340);
  v191 = sub_1002C49E0(v190);
  v193 = v192;
  v194 = (v124 + v184[20]);

  *v194 = v191;
  v194[1] = v193;
  v195 = TTRRemindersListViewModel.Reminder.imageAttachments.getter();
  v196 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v197 = (v124 + v184[16]);

  sub_1000301AC(v197[1], v197[2]);
  *v197 = v195;
  v197[1] = sub_1002C5448;
  v197[2] = v196;
  v198 = v341;
  TTRRemindersListViewModel.Reminder.flaggedState.getter();
  v199 = v343;
  v200 = v345;
  v201 = (*(v343 + 88))(v198, v345);
  if (v201 == enum case for TTRReminderDetailViewModel.FlaggedState.supported(_:))
  {
    (*(v199 + 96))(v198, v200);
    v202 = *v198;
  }

  else
  {
    if (v201 != enum case for TTRReminderDetailViewModel.FlaggedState.unsupported(_:))
    {
      goto LABEL_92;
    }

    v202 = 0;
  }

  *(v124 + v184[21]) = v202;
  v203 = TTRRemindersListViewModel.Reminder.color.getter();
  v204 = v184[19];

  *(v124 + v204) = v203;
  TTRRemindersListViewModel.Reminder.listNameData.getter();
  v205 = type metadata accessor for TTRRemindersListViewModel.ListNameData();
  v206 = *(v205 - 8);
  if ((*(v206 + 48))(v168, 1, v205) == 1)
  {
    sub_1000079B4(v168, &qword_100778F40, &qword_100638930);
    v207 = 0;
    v208 = 0;
  }

  else
  {
    v207 = TTRRemindersListViewModel.ListNameData.name.getter();
    v208 = v209;
    (*(v206 + 8))(v168, v205);
  }

  v210 = (v124 + v184[23]);

  *v210 = v207;
  v210[1] = v208;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRRemindersListViewModel.Reminder.subtaskCount.getter();
  TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.getter();
  v211 = [objc_opt_self() tintColor];
  v212 = v352;
  TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCount:displayStyle:tintColor:onSubtaskCountPressed:)();

  (*(v354 + 40))(v124 + v184[13], v212, v355);
  v213 = TTRRemindersListViewModel.Reminder.priorityLevelDisplayString.getter();
  v215 = v214;
  v216 = (v124 + v184[22]);

  *v216 = v213;
  v216[1] = v215;
  v217 = v357;
  sub_1002C30A0(v357);
  (*(v358 + 40))(v124 + v184[25], v217, v359);
  v218 = v363;
  TTRRemindersListViewModel.Reminder.assignmentData.getter();
  v219 = v360;
  sub_1002C33B8(v218, v360);
  sub_1000079B4(v218, &qword_100778EE0, &unk_100638900);
  (*(v362 + 40))(v124 + v184[26], v219, v364);
  v220 = v365;
  sub_1002C3794(v365);
  (*(v366 + 5))(v124 + v184[27], v220, v367);
  v221 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v222 = v400;
  v223 = v350;
  v224 = v395;
  v367 = *(v400 + 16);
  v367(v350, v133, v395);
  v225 = (*(v222 + 80) + 24) & ~*(v222 + 80);
  v226 = swift_allocObject();
  *(v226 + 16) = v221;
  v227 = *(v222 + 32);
  v400 = v222 + 32;
  v366 = v227;
  v227(v226 + v225, v223, v224);

  LODWORD(v365) = TTRRemindersListViewModel.Reminder.isCompleted.getter();
  v228 = v369;
  TTRRemindersListViewModel.Reminder.style.getter();
  v229 = v393;
  TTRReminderCellStyle.completedButtonType.getter();
  v230 = *(v396 + 8);
  v396 += 8;
  v369 = v230;
  (v230)(v228, v394);
  v231 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  (*(*(v231 - 8) + 56))(v229, 0, 1, v231);
  v232 = v344;
  sub_10000794C(v411, v344, &qword_100772730, &unk_100634AC0);
  v233 = v403;
  if (v409(v232, 1, v403) == 1)
  {
    sub_1000079B4(v232, &qword_100772730, &unk_100634AC0);
    v234 = 1;
    v235 = v361;
    v236 = v351;
  }

  else
  {
    v236 = v351;
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v401 + 8))(v232, v233);
    v234 = 0;
    v235 = v361;
  }

  v237 = v348;
  v238 = v406;
  v404(v236, v234, 1, v406);
  sub_10000794C(v236, v237, &qword_100778F68, &qword_100638958);
  if (v397(v237, 1, v238) == 1 || (v240 = (*(v399 + 88))(v237, v406), v240 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:)) || v240 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:))
  {
    v239 = UIFontTextStyleBody;
  }

  else
  {
    v239 = v325;
    if (v240 != v346)
    {
      goto LABEL_91;
    }
  }

  v241 = v239;
  sub_1000079B4(v236, &qword_100778F68, &qword_100638958);
  v242 = [v391 configurationWithTextStyle:v241];

  v243 = v372;
  TTRBoardReminderCellCompletedButtonConfiguration.init(isCompleted:tintColor:style:preferredSymbolConfiguration:onCompletedPressed:)();

  (*(v373 + 40))(&v407[v184[10]], v243, v374);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v244 = v349;
  sub_10000794C(v411, v349, &qword_100772730, &unk_100634AC0);
  v245 = v403;
  LODWORD(v243) = v409(v244, 1, v403);

  if (v243 == 1)
  {
    sub_1000079B4(v244, &qword_100772730, &unk_100634AC0);
    v404(v235, 1, 1, v406);
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
    (*(v401 + 8))(v244, v245);
    v246 = v406;
    v404(v235, 0, 1, v406);
    v247 = v399;
    v248 = (*(v399 + 88))(v235, v246);
    if (v248 == enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithSubtasks(_:))
    {
      (*(v247 + 96))(v235, v246);
    }

    else if (v248 != enum case for TTRBoardColumnItemIntermediateViewModel.ItemLevel.topLevelWithoutSubtasks(_:) && v248 != v346)
    {
      goto LABEL_91;
    }
  }

  v249 = v402;
  TTRRemindersListViewModel.Reminder.controlColor.getter();
  v250 = v375;
  TTRBoardReminderCellShowSubtasksConfiguration.init(isShowingSubtasks:subtaskCount:tintColor:subtaskFont:onShowSubtasksButtonPress:)();

  (*(v376 + 40))(&v407[v184[12]], v250, v377);
  v251 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v252 = v371;
  v253 = v395;
  v367(v371, v249, v395);
  v254 = swift_allocObject();
  *(v254 + 16) = v251;
  v366(v254 + v225, v252, v253);

  v255 = v378;
  TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter();
  v256 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
  v257 = *(v256 - 8);
  if ((*(v257 + 48))(v255, 1, v256) == 1)
  {
    v258 = v389;
    v259 = v382;
    v260 = v403;
    v261 = v368;
    goto LABEL_76;
  }

  v262 = (*(v257 + 88))(v255, v256);
  v258 = v389;
  v259 = v382;
  v261 = v368;
  if (v262 != enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:))
  {
    v260 = v403;
    if (v262 == enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:))
    {
      goto LABEL_76;
    }

    while (1)
    {
LABEL_91:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_92:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  (*(v257 + 96))(v255, v256);
  if (*(v255 + 3))
  {
  }

  v260 = v403;
LABEL_76:
  sub_10000794C(v411, v261, &qword_100772730, &unk_100634AC0);
  if (v409(v261, 1, v260) == 1)
  {
    sub_1000079B4(v261, &qword_100772730, &unk_100634AC0);
  }

  else
  {
    TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
    (*(v401 + 8))(v261, v260);
  }

  v263 = v379;
  TTRBoardReminderCellSuggestedSectionConfiguration.init(sectionTitle:onSuggestedSectionPress:isEditingItem:isInMultiSelectMode:)();

  (*(v380 + 40))(&v407[v184[14]], v263, v381);
  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v265 = v370;
  sub_10000794C(v411, v370, &qword_100772730, &unk_100634AC0);
  LODWORD(v263) = v409(v265, 1, v260);

  v266 = v369;
  if (v263 == 1)
  {
    sub_1000079B4(v265, &qword_100772730, &unk_100634AC0);
    v267 = 1;
  }

  else
  {
    v268 = TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
    (*(v401 + 8))(v265, v260);
    v267 = v268 ^ 1;
  }

  v269 = v387;
  v270 = v394;
  TTRRemindersListViewModel.Reminder.style.getter();
  v271 = TTRReminderCellStyle.allowsEditing.getter();
  v266(v259, v270);
  if ((v271 & 1) != 0 && (TTRRemindersListViewModel.Reminder.style.getter(), v406 = v264, v272 = v267, v273 = v184, v274 = v258, v275 = v315, TTRReminderCellStyle.role.getter(), v266(v259, v270), v276 = v317, v277 = v316, v278 = v318, (*(v317 + 104))(v316, enum case for TTRReminderCellStyle.Role.placeholder(_:), v318), v279 = static TTRReminderCellStyle.Role.== infix(_:_:)(), v280 = *(v276 + 8), v280(v277, v278), v281 = v275, v258 = v274, v184 = v273, v280(v281, v278), (v279 & v272 & 1) == 0))
  {
    v285 = v308;
    sub_10000794C(v411, v308, &qword_100772730, &unk_100634AC0);
    v286 = v403;
    if (v409(v285, 1, v403) == 1)
    {
      sub_1000079B4(v285, &qword_100772730, &unk_100634AC0);
      v287 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
      (*(*(v287 - 8) + 56))(v269, 1, 1, v287);
    }

    else
    {
      TTRBoardColumnItemIntermediateViewModel.infoButtonState.getter();
      (*(v401 + 8))(v285, v286);
      v288 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
      (*(*(v288 - 8) + 56))(v269, 0, 1, v288);
    }
  }

  else
  {
    v282 = enum case for TTRBoardReminderCellInfoButtonState.hidden(_:);
    v283 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
    v284 = *(v283 - 8);
    (*(v284 + 104))(v269, v282, v283);
    (*(v284 + 56))(v269, 0, 1, v283);
  }

  sub_10000794C(v269, v386, &qword_100778F30, &qword_100638928);
  TTRRemindersListViewModel.Reminder.controlColor.getter();
  v289 = v383;
  TTRBoardReminderCellInfoButtonConfiguration.init(infoButtonState:infoButtonSymbolConfiguration:tintColor:onInfoPressed:)();
  sub_1000079B4(v269, &qword_100778F30, &qword_100638928);

  v290 = v407;
  (*(v384 + 40))(&v407[v184[15]], v289, v385);
  TTRRemindersListViewModel.Reminder.item.getter();
  v291 = v388;
  *(v258 + *(v388 + 20)) = 0;
  v292 = (v258 + *(v291 + 24));
  *v292 = 0;
  v292[1] = 0;
  *(v258 + *(v291 + 28)) = _swiftEmptyArrayStorage;
  if (qword_100767128 != -1)
  {
    swift_once();
  }

  v293 = TTRCounterBasedIdentifierGenerator.allocID()();
  v294 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  v295 = v408;
  swift_beginAccess();
  v296 = v390;
  sub_10000794C(v295 + v294, v390, &qword_100778F00, &qword_100642B40);
  v297 = &v290[v184[28]];
  sub_1000079B4(v297, &qword_100778F70, &unk_100642B10);
  v298 = sub_100058000(&qword_100778F70, &unk_100642B10);
  v299 = v297 + *(v298 + 28);
  v300 = *(sub_100058000(&qword_100778F78, &unk_100638970) + 48);
  sub_1002C5104(v258, v299, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
  *(v299 + v300) = v293;
  v301 = enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
  v302 = sub_100058000(&qword_100778F80, &unk_100649010);
  (*(*(v302 - 8) + 104))(v299, v301, v302);
  v303 = sub_100058000(&qword_100778EB0, &qword_100638730);
  (*(*(v303 - 8) + 56))(v297, 1, 1, v303);
  *(v297 + *(v298 + 32)) = 1;
  return sub_10000D184(v296, v297, &qword_100778F00, &qword_100642B40);
}

uint64_t sub_1002BC2B8()
{
  v0 = type metadata accessor for AppEntityID();
  v49 = *(v0 - 8);
  v50 = v0;
  __chkstk_darwin(v0);
  v48 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v56 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v58 = *(v18 - 8);
  v59 = v18;
  __chkstk_darwin(v18);
  v51 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMFeatureFlags();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for REMFeatureFlags.viewAnnotation(_:), v20, v22);
  v25 = REMFeatureFlags.isEnabled.getter();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v27 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    v28 = v57;
    swift_beginAccess();
    (*(v7 + 16))(v9, v28 + v27, v6);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v7 + 8))(v9, v6);
    v29 = v56;
    if ((*(v56 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &qword_100772738, &unk_10063D2B0);
      (*(v58 + 56))(v17, 1, 1, v59);
      return sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
    }

    v30 = v55;
    (*(v29 + 32))(v55, v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    v32 = v58;
    v31 = v59;
    (*(v58 + 56))(v17, 0, 1, v59);
    (*(v29 + 8))(v30, v13);
    if ((*(v32 + 48))(v17, 1, v31) == 1)
    {
      return sub_1000079B4(v17, &qword_100772140, &qword_10062D9F0);
    }

    v33 = v51;
    (*(v32 + 32))(v51, v17, v31);
    v34 = v52;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v36 = v53;
    v35 = v54;
    v37 = (*(v53 + 88))(v34, v54);
    if (v37 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v36 + 96))(v34, v35);
      v38 = v45;
      v39 = v46;
      v40 = v34;
      v41 = v47;
      (*(v46 + 32))(v45, v40, v47);
      v42 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v39 + 8))(v38, v41);
      type metadata accessor for ReminderEntity();
      v43 = v42;
      v44 = v48;
      AppEntityID.init(objectID:)();
      sub_1002C56EC(&qword_10076DF78, &type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      (*(v49 + 8))(v44, v50);
      return (*(v32 + 8))(v33, v31);
    }

    if (v37 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v37 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v37 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_13:
        UIView.removeAssociatedAppEntity()();
        return (*(v32 + 8))(v33, v31);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v36 + 8))(v34, v35);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002BCB18()
{
  v1 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772738, &unk_10063D2B0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = dispatch thunk of TTRIRemindersListReminderCellViewModel.identifier.getter();
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

char *sub_1002BCEBC()
{
  sub_1002BD084();
  if (v1)
  {
    v2 = [v0 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (swift_dynamicCastClass())
    {
      sub_1004C0A28();
      v4 = v3;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
    swift_beginAccess();
    v6 = *&v0[v5];
    if (v6)
    {
      v7 = type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    }

    else
    {
      v7 = 0;
      v16[1] = 0;
      v16[2] = 0;
    }

    v16[0] = v6;
    v16[3] = v7;
    v8 = v6;
    sub_10000794C(v16, &v14, &qword_10076AE40, &qword_10062EE50);
    v12[0] = v14;
    v12[1] = v15;
    if (*(&v15 + 1))
    {
      sub_100007DD8(v12, v13);
      v4 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1005470E4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1005470E4((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      sub_100007DD8(v13, &v4[32 * v10 + 32]);
    }

    else
    {
      sub_1000079B4(v12, &qword_10076AE40, &qword_10062EE50);
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
  }

  return v4;
}

void sub_1002BD084()
{
  v1 = sub_100058000(&qword_100772730, &unk_100634AC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_intermediateViewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &qword_100772730, &unk_100634AC0);
      if (qword_100767120 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003E30(v8, qword_100778DE8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "No intermediate view model found when trying to check for editing subviews", v11, 2u);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002BD2E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v16) = UICellConfigurationState.isEditing.getter();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v28.receiver = v1;
    v28.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v28, "accessibilityActivate");
  }

  else
  {
    v18 = [v1 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (swift_dynamicCastClass())
    {
      if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
      {
        v19 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
        swift_beginAccess();
        v20 = v25;
        (*(v25 + 16))(v7, &v1[v19], v5);
        TTRLazilyLoadedViewModelState.viewModel.getter();
        (*(v20 + 8))(v7, v5);
        v21 = v26;
        if ((*(v26 + 48))(v4, 1, v8) == 1)
        {

          sub_1000079B4(v4, &qword_100772738, &unk_10063D2B0);
        }

        else
        {
          (*(v21 + 32))(v10, v4, v8);
          sub_1002BD6D4(v10, 1);

          (*(v21 + 8))(v10, v8);
        }

        v17 = 0;
      }

      else
      {
        sub_1004C0D5C();
        v23 = v22;

        v17 = v23;
      }
    }

    else
    {

      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1002BD6D4(uint64_t a1, int a2)
{
  v26 = a2;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderCellStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.style.getter();
  TTRReminderCellStyle.completedButtonType.getter();
  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.toggle(_:))
  {
    TTRRemindersListViewModel.Reminder.item.getter();
    v16 = TTRRemindersListViewModel.Reminder.isCompleted.getter();
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1004862A0(v6, (v16 & 1) == 0);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v6, v27);
  }

  else
  {
    v17 = v28;
    if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.confirmSuggestedReminder(_:))
    {
      (*(v8 + 8))(v10, v7);
    }

    else if (v15 == enum case for TTRReminderCellStyle.CompletedButtonType.placeholder(_:))
    {
      if (v26)
      {
        v18 = [v28 contentView];
        type metadata accessor for TTRIBoardReminderCellContentView(0);
        if (swift_dynamicCastClass())
        {
          sub_1004C0D5C();
        }
      }

      else
      {
        v20 = v23;
        v19 = v24;
        v21 = v25;
        (*(v24 + 104))(v23, enum case for TTREditingStateOption.InputType.unspecified(_:), v25);
        v22 = [v17 contentView];
        type metadata accessor for TTRIBoardReminderCellContentView(0);
        if (swift_dynamicCastClass())
        {
          sub_1004C1558(v20);
        }

        (*(v19 + 8))(v20, v21);
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

unint64_t sub_1002BDC74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&qword_100778ED8, &qword_1006388F8);
  __chkstk_darwin(v2 - 8);
  v169 = &v156 - v3;
  v173 = type metadata accessor for TTRRemindersListViewModel.AppLink();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v180 = v5;
  v181 = v6;
  __chkstk_darwin(v5);
  v178 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v7;
  __chkstk_darwin(v8);
  v163 = &v156 - v9;
  v177 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment();
  v182 = *(v177 - 8);
  __chkstk_darwin(v177);
  v176 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  __chkstk_darwin(v11 - 8);
  v166 = &v156 - v12;
  v167 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  v165 = *(v167 - 8);
  __chkstk_darwin(v167);
  v162 = (&v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&qword_100778EE0, &unk_100638900);
  __chkstk_darwin(v14 - 8);
  v168 = (&v156 - v15);
  v161 = type metadata accessor for TTRITreeViewExpandedState();
  *&v160 = *(v161 - 1);
  __chkstk_darwin(v161);
  v159 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100058000(&qword_100778EE8, &qword_100647150);
  __chkstk_darwin(v158);
  v164 = &v156 - v17;
  v175 = type metadata accessor for TTRReminderCellStyle();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v156 - v22;
  v24 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = type metadata accessor for UICellConfigurationState();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BD084();
  if (v31)
  {
    return 0;
  }

  v32 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v32) = UICellConfigurationState.isEditing.getter();
  (*(v28 + 8))(v30, v27);
  if (v32)
  {
    return 0;
  }

  v33 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v21 + 16))(v23, v1 + v33, v20);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v21 + 8))(v23, v20);
  v34 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    sub_1000079B4(v26, &qword_100772738, &unk_10063D2B0);
    return 0;
  }

  v36 = v1;
  v185 = v34;
  v186 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  v37 = sub_1000317B8(&aBlock);
  (*(v35 + 32))(v37, v26, v34);
  sub_100005FD0(&aBlock, &v189);
  sub_10000C36C(&v189, v190);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.style.getter();
  v38 = TTRReminderCellStyle.hasAccessibilityCustomActions.getter();
  (*(v174 + 8))(v19, v175);
  if ((v38 & 1) == 0)
  {
    sub_100004758(&v189);
    return 0;
  }

  v188 = _swiftEmptyArrayStorage;
  static TTRAccesibility.RemindersList.Action.EditTitle.getter();
  v174 = sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v39 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = objc_allocWithZone(UIAccessibilityCustomAction);

  v42 = String._bridgeToObjectiveC()();

  v186 = sub_1002C530C;
  v187 = v40;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v184 = sub_10044E9F0;
  v185 = &unk_10071E388;
  v43 = _Block_copy(&aBlock);
  v44 = [v41 initWithName:v42 image:v39 actionHandler:v43];

  _Block_release(v43);

  v45 = v44;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v156 = v45;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v46 = v188;
  sub_10000C36C(&v189, v190);
  v47 = dispatch thunk of TTRIRemindersListReminderCellViewModel.hasShowInfoButton.getter();
  v157 = v36;
  v48 = v173;
  v49 = v172;
  if (v47)
  {
    static TTRAccesibility.RemindersList.Action.EnterDetail.getter();
    v50 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = objc_allocWithZone(UIAccessibilityCustomAction);

    v53 = String._bridgeToObjectiveC()();

    v186 = sub_1002C5414;
    v187 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E518;
    v54 = _Block_copy(&aBlock);
    v55 = [v52 initWithName:v53 image:v50 actionHandler:v54];

    _Block_release(v54);

    v56 = v55;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = v157;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v46 = v188;
  }

  v57 = [v36 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  if (swift_dynamicCastClass())
  {
    sub_10000C36C(&v189, v190);
    v58 = dispatch thunk of TTRIRemindersListReminderCellViewModel.attributedNotes.getter();
    if (!v58)
    {
      goto LABEL_21;
    }

    v59 = v58;
    v60 = [v58 string];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v64 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      static TTRAccesibility.RemindersList.Action.EditNote.getter();
    }

    else
    {
LABEL_21:
      static TTRAccesibility.RemindersList.Action.AddNote.getter();
    }

    v66 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = objc_allocWithZone(UIAccessibilityCustomAction);

    v69 = String._bridgeToObjectiveC()();

    v186 = sub_1002C540C;
    v187 = v67;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E4F0;
    v70 = _Block_copy(&aBlock);
    v71 = [v68 initWithName:v69 image:v66 actionHandler:v70];

    _Block_release(v70);

    v72 = v71;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v46 = v188;
  }

  else
  {
  }

  sub_10000C36C(&v189, v190);
  v73 = dispatch thunk of TTRIRemindersListReminderCellViewModel.subtaskCount.getter();
  if ((v74 & 1) != 0 || v73 < 1 || (sub_10000C36C(&v189, v190), v75 = v164, dispatch thunk of TTRIRemindersListReminderCellViewModel.subtaskCountDisplayStyle.getter(), v76 = type metadata accessor for TTRRemindersListViewModel.SubtaskCountDisplayStyle(), v77 = *(v76 - 8), (*(v77 + 48))(v75, 1, v76) == 1))
  {
LABEL_43:
    sub_10000C36C(&v189, v190);
    v93 = v168;
    dispatch thunk of TTRIRemindersListReminderCellViewModel.assignmentData.getter();
    v94 = type metadata accessor for TTRRemindersListViewModel.AssignmentData();
    v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
    sub_1000079B4(v93, &qword_100778EE0, &unk_100638900);
    if (v95 != 1)
    {
      UICollectionViewCell.contentConfiguration.getter();
      v96 = (v165 + 56);
      if (v185)
      {
        v97 = v165;
        sub_100058000(&qword_10077A650, &qword_10063DD30);
        v98 = v166;
        v99 = v167;
        v100 = swift_dynamicCast();
        (*(v97 + 56))(v98, v100 ^ 1u, 1, v99);
        if ((*(v97 + 48))(v98, 1, v99) != 1)
        {
          v101 = v98;
          v102 = v162;
          sub_1002C5104(v101, v162, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          sub_1002C56EC(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration, &unk_100647580);
          if (TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter())
          {
            sub_1002C51D0(v102, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
          }

          else
          {
            static TTRAccesibility.RemindersList.Action.AssignmentDetail.getter();
            v149 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
            v150 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v151 = objc_allocWithZone(UIAccessibilityCustomAction);

            v152 = String._bridgeToObjectiveC()();

            v186 = sub_1002C53C8;
            v187 = v150;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v184 = sub_10044E9F0;
            v185 = &unk_10071E450;
            v153 = _Block_copy(&aBlock);
            v154 = [v151 initWithName:v152 image:v149 actionHandler:v153];

            _Block_release(v153);

            v155 = v154;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            sub_1002C51D0(v162, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
            v46 = v188;
          }

          goto LABEL_50;
        }
      }

      else
      {
        sub_1000079B4(&aBlock, &qword_100768868, &unk_10062D7D0);
        v98 = v166;
        (*v96)(v166, 1, 1, v167);
      }

      sub_1000079B4(v98, &qword_100778EC8, &qword_100642A30);
    }

LABEL_50:
    sub_10000C36C(&v189, v190);
    v103 = dispatch thunk of TTRIRemindersListReminderCellViewModel.linkAttachments.getter();
    if (v103)
    {
      v104 = *(v103 + 16);
      if (v104)
      {
        v168 = *(v182 + 16);
        v105 = (*(v182 + 80) + 32) & ~*(v182 + 80);
        v159 = v103;
        v106 = v103 + v105;
        v167 = *(v182 + 72);
        v182 += 16;
        v166 = (v182 - 8);
        v165 = v181 + 16;
        v164 = (v181 + 32);
        v162 = &v184;
        v161 = (v181 + 8);
        v160 = xmmword_10062D400;
        v107 = v163;
        v108 = v178;
        v109 = v180;
        do
        {
          v175 = v104;
          v110 = v176;
          v111 = v177;
          v168(v176, v106, v177);
          TTRRemindersListViewModel.LinkAttachment.url.getter();
          (*v166)(v110, v111);
          v112 = URL.domain.getter();
          if (!v113)
          {
            v112 = URL.absoluteString.getter();
          }

          v114 = v112;
          v115 = v113;
          static TTRAccesibility.RemindersList.Action.OpenLinkFormat.getter();
          sub_100058000(&unk_100786CB0, &qword_100636EF0);
          v116 = swift_allocObject();
          *(v116 + 16) = v160;
          *(v116 + 56) = &type metadata for String;
          *(v116 + 64) = sub_10005C390();
          *(v116 + 32) = v114;
          *(v116 + 40) = v115;
          String.init(format:_:)();

          v117 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
          v118 = v181;
          (*(v181 + 16))(v108, v107, v109);
          v119 = (*(v118 + 80) + 16) & ~*(v118 + 80);
          v120 = swift_allocObject();
          (*(v118 + 32))(v120 + v119, v108, v109);
          v121 = objc_allocWithZone(UIAccessibilityCustomAction);
          v122 = String._bridgeToObjectiveC()();

          v186 = sub_1002C5358;
          v187 = v120;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v184 = sub_10044E9F0;
          v185 = &unk_10071E428;
          v123 = _Block_copy(&aBlock);
          v124 = [v121 initWithName:v122 image:v117 actionHandler:v123];

          _Block_release(v123);

          v125 = v124;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v161)(v107, v109);
          v106 += v167;
          v104 = v175 - 1;
        }

        while (v175 != 1);
        v46 = v188;
        v48 = v173;
        v49 = v172;
      }
    }

    sub_10000C36C(&v189, v190);
    if (dispatch thunk of TTRIRemindersListReminderCellViewModel.totalImageCount.getter() >= 1)
    {
      static TTRAccesibility.RemindersList.Action.PreviewImages.getter();
      v126 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v127 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v128 = objc_allocWithZone(UIAccessibilityCustomAction);

      v129 = String._bridgeToObjectiveC()();

      v186 = sub_1002C5350;
      v187 = v127;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E3D8;
      v130 = _Block_copy(&aBlock);
      v131 = [v128 initWithName:v129 image:v126 actionHandler:v130];

      _Block_release(v130);

      v132 = v131;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v188;
    }

    sub_10000C36C(&v189, v190);
    v133 = v169;
    dispatch thunk of TTRIRemindersListReminderCellViewModel.appLink.getter();
    if ((*(v49 + 48))(v133, 1, v48) == 1)
    {
      sub_1000079B4(v133, &qword_100778ED8, &qword_1006388F8);
    }

    else
    {
      (*(v49 + 32))(v170, v133, v48);
      v134 = TTRRemindersListViewModel.AppLink.name.getter();
      if (!v135)
      {
        v134 = static TTRAccesibility.RemindersList.Action.GoToAppSourceUnknownApp.getter();
      }

      v136 = v134;
      v137 = v135;
      static TTRAccesibility.RemindersList.Action.GoToAppSourceFormat.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_10062D400;
      *(v138 + 56) = &type metadata for String;
      *(v138 + 64) = sub_10005C390();
      *(v138 + 32) = v136;
      *(v138 + 40) = v137;
      String.init(format:_:)();

      v139 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v140 = objc_allocWithZone(UIAccessibilityCustomAction);

      v141 = String._bridgeToObjectiveC()();

      v186 = sub_1002C531C;
      v187 = v139;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E3B0;
      v142 = _Block_copy(&aBlock);
      v143 = [v140 initWithName:v141 actionHandler:v142];

      _Block_release(v142);

      v144 = v143;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v49 + 8))(v170, v48);
      v46 = v188;
    }

    v145 = static TTRCommonAsset.Image.sectionIcon.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1002C56EC(&qword_100778EF0, type metadata accessor for TTRIBoardReminderCell, &unk_100638870);

    v146 = TTRIRemindersListReminderCellAccessibilityElementContaining.moveToSuggestedSectionAccessibilityAction(viewModel:image:mainHandler:)();

    if (v146)
    {
      v147 = v146;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v148 = v156;
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = v188;
    }

    else
    {
    }

    sub_100004758(&v189);
    return v46;
  }

  v78 = (*(v77 + 88))(v75, v76);
  if (v78 == enum case for TTRRemindersListViewModel.SubtaskCountDisplayStyle.linkToExternalList(_:))
  {
    static TTRAccesibility.RemindersList.Action.ShowSubtasksInList.getter();
    v79 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = objc_allocWithZone(UIAccessibilityCustomAction);

    v82 = String._bridgeToObjectiveC()();

    v186 = sub_1002C53D0;
    v187 = v80;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v184 = sub_10044E9F0;
    v185 = &unk_10071E478;
    v83 = _Block_copy(&aBlock);
    [v81 initWithName:v82 image:v79 actionHandler:v83];

    _Block_release(v83);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_42:
    v46 = v188;
    goto LABEL_43;
  }

  if (v78 == enum case for TTRRemindersListViewModel.SubtaskCountDisplayStyle.expandCollapseControl(_:))
  {
    v84 = v159;
    sub_1002BFD84(v159);
    v85 = (*(v160 + 88))(v84, v161);
    if (v85 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
    {
      goto LABEL_43;
    }

    if (v85 == enum case for TTRITreeViewExpandedState.collapsed(_:))
    {
      static TTRAccesibility.RemindersList.Action.ExpandSubtasks.getter();
LABEL_39:
      UIAccessibilityButtonShapesEnabled();
      v86 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

      v87 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = objc_allocWithZone(UIAccessibilityCustomAction);

      v89 = String._bridgeToObjectiveC()();

      v186 = sub_1002C5404;
      v187 = v87;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v184 = sub_10044E9F0;
      v185 = &unk_10071E4A0;
      v90 = _Block_copy(&aBlock);
      v91 = [v88 initWithName:v89 image:v86 actionHandler:v90];

      _Block_release(v90);

      v92 = v91;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_42;
    }

    if (v85 == enum case for TTRITreeViewExpandedState.expanded(_:))
    {
      static TTRAccesibility.RemindersList.Action.CollapseSubtasks.getter();
      goto LABEL_39;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002BFC7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong contentView];

    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (swift_dynamicCastClass())
    {
      sub_1004C0D5C();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1002BFD20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004C0E4C();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1002BFD84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100778EC8, &qword_100642A30);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3 - 8];
  v5 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  UICollectionViewCell.contentConfiguration.getter();
  if (!v20)
  {
    sub_1000079B4(v19, &qword_100768868, &unk_10062D7D0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_100058000(&qword_10077A650, &qword_10063DD30);
  v9 = swift_dynamicCast();
  (*(v6 + 56))(v4, v9 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_1000079B4(v4, &qword_100778EC8, &qword_100642A30);
    goto LABEL_7;
  }

  sub_1002C5104(v4, v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  if (TTRBoardReminderCellShowSubtasksConfiguration.isHidden.getter())
  {
    sub_1002C51D0(v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
LABEL_7:
    v10 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v11 = type metadata accessor for TTRITreeViewExpandedState();
    v12 = *(*(v11 - 8) + 104);
    v13 = a1;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  v16 = TTRBoardReminderCellShowSubtasksConfiguration.isShowingSubtasks.getter();
  sub_1002C51D0(v8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(*(v11 - 8) + 104);
  if (v16 == 2)
  {
    v17 = &enum case for TTRITreeViewExpandedState.notExpandable(_:);
  }

  else if (v16)
  {
    v17 = &enum case for TTRITreeViewExpandedState.expanded(_:);
  }

  else
  {
    v17 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
  }

  v14 = *v17;
  v13 = a1;
  return v12(v13, v14, v11);
}

uint64_t sub_1002C0078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CC3FC(v3);
      sub_1002B7A54();

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C0114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = [v3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (swift_dynamicCastClass())
    {
      v5 = sub_1004C3290();
      sub_1001CD308(v3, v5);

      swift_unknownObjectRelease();
      v6 = 1;
    }

    else
    {

      swift_unknownObjectRelease();
      v6 = 0;
    }

    v3 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1002C021C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    sub_10046187C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1002C56EC(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey, &unk_10062D358);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}

uint64_t sub_1002C0364(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v27 = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
      swift_beginAccess();
      (*(v11 + 16))(v13, &v18[v19], v10);
      TTRLazilyLoadedViewModelState.viewModel.getter();
      (*(v11 + 8))(v13, v10);
      v20 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v16, 1, v20) == 1)
      {

        swift_unknownObjectRelease();
        sub_1000079B4(v16, &qword_100772738, &unk_10063D2B0);
      }

      else
      {
        v29 = v20;
        v30 = &protocol witness table for TTRRemindersListViewModel.Reminder;
        v22 = sub_1000317B8(&v28);
        (*(v21 + 32))(v22, v16, v20);
        sub_100005FD0(&v28, v31);
        sub_10000C36C(v31, v31[3]);
        v23 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
        if (v23)
        {
          if (*(v23 + 16))
          {
            v24 = v27;
            (*(v27 + 16))(v6, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v3);

            (*(v24 + 32))(v9, v6, v3);
            v25 = TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
            sub_1001CD5E4(v18, v25, 0, 0);

            swift_unknownObjectRelease();
            (*(v24 + 8))(v9, v3);
            sub_100004758(v31);
            return 1;
          }
        }

        swift_unknownObjectRelease();
        sub_100004758(v31);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002C0774(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3(v5);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C080C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result contentView];

    type metadata accessor for TTRIBoardReminderCellContentView(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4 + qword_100786D58;
      swift_beginAccess();
      v6 = type metadata accessor for TTRIBoardReminderCellContentConfiguration(0);
      result = (*(*(v6 - 8) + 48))(v5, 1, v6);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v7 = TTRBoardReminderCellSuggestedSectionConfiguration.onSuggestedSectionPress.getter();
        if (v7)
        {
          v9 = v7;
          v10 = v8;
          v11 = swift_endAccess();
          v9(v11);

          sub_1000301AC(v9, v10);
        }

        else
        {
          swift_endAccess();
        }

        return 1;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIBoardReminderCell(uint64_t a1)
{
  result = qword_100778E78;
  if (!qword_100778E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C0BC4(uint64_t a1)
{
  sub_1002C0DA8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRRectCorners();
    if (v2 <= 0x3F)
    {
      sub_100014068(319, &qword_100778E90, &qword_10078A3B0, &unk_100638720);
      if (v3 <= 0x3F)
      {
        sub_100014068(319, &qword_100778E98, &qword_100778EA0, &unk_10063D390);
        if (v4 <= 0x3F)
        {
          sub_100014068(319, &qword_100778EA8, &qword_100778EB0, &qword_100638730);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002C0DA8(uint64_t a1)
{
  if (!qword_100778E88)
  {
    type metadata accessor for TTRRemindersListViewModel.Reminder();
    v1 = type metadata accessor for TTRLazilyLoadedViewModelState();
    if (!v2)
    {
      atomic_store(v1, &qword_100778E88);
    }
  }
}

uint64_t sub_1002C0E00()
{
  v1 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  TTRLazilyLoadedViewModelState.viewModel.getter();
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772738, &unk_10063D2B0);
    v13 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();
    (*(v9 + 8))(v11, v8);
  }

  return v13 & 1;
}

uint64_t sub_1002C1088()
{
  v1 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v27 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = v15;
    v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v18, v1);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v2 + 8))(v4, v1);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v7, &qword_100772738, &unk_10063D2B0);
      (*(v30 + 56))(v14, 1, 1, v29);
LABEL_7:
      sub_1000079B4(v14, &qword_100772140, &qword_10062D9F0);
      return 0;
    }

    (*(v9 + 32))(v11, v7, v8);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    v19 = v29;
    v20 = v30;
    (*(v30 + 56))(v14, 0, 1, v29);
    (*(v9 + 8))(v11, v8);
    if ((*(v20 + 48))(v14, 1, v19) == 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    v21 = v27;
    (*(v20 + 32))(v27, v14, v19);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v23 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v24);
      v25 = (*(*(v23 + 8) + 1112))(v21, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v25 = 0;
    }

    (*(v20 + 8))(v21, v19);
    return v25;
  }

  return result;
}

uint64_t sub_1002C1564()
{
  v1 = sub_100058000(&unk_100772740, &unk_100634AD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_100058000(&qword_100772738, &unk_10063D2B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v27 = *(v14 - 8);
  __chkstk_darwin(v14);
  v24 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v14;
    v16 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v16, v1);
    TTRLazilyLoadedViewModelState.viewModel.getter();
    (*(v2 + 8))(v4, v1);
    v17 = v26;
    if ((*(v26 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v7, &qword_100772738, &unk_10063D2B0);
      (*(v27 + 56))(v13, 1, 1, v25);
    }

    else
    {
      (*(v17 + 32))(v10, v7, v8);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      v19 = v27;
      v20 = v25;
      (*(v27 + 56))(v13, 0, 1, v25);
      (*(v17 + 8))(v10, v8);
      if ((*(v19 + 48))(v13, 1, v20) != 1)
      {
        v21 = v24;
        (*(v19 + 32))(v24, v13, v20);
        v18 = sub_1001CD8F4(v21);
        swift_unknownObjectRelease();
        (*(v19 + 8))(v21, v20);
        return v18 & 1;
      }

      swift_unknownObjectRelease();
    }

    sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void *sub_1002C19D4()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1002C1A20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_customAccessibilityElement;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1002C1B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v67 = a4;
  v68 = a1;
  v5 = sub_100058000(&unk_100781940, &unk_100638910);
  __chkstk_darwin(v5 - 8);
  v66 = v52 - v6;
  v7 = type metadata accessor for TTRReminderCellInlineHashtagVisibility();
  __chkstk_darwin(v7 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRReminderHashtagData();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v57 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TTRReminderCellStyle();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100778FC8, &unk_1006389C0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v63 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v52 - v22;
  v24 = sub_100058000(&qword_100772730, &unk_100634AC0);
  __chkstk_darwin(v24 - 8);
  v26 = v52 - v25;
  sub_10000794C(a2, v52 - v25, &qword_100772730, &unk_100634AC0);
  v27 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000079B4(v26, &qword_100772730, &unk_100634AC0);
    goto LABEL_6;
  }

  v29 = TTRBoardColumnItemIntermediateViewModel.isEditingItem.getter();
  (*(v28 + 8))(v26, v27);
  if ((v29 & 1) == 0)
  {
LABEL_6:
    v31 = TTRRemindersListViewModel.Reminder.attributedNotes.getter();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 length];

      v30 = v33 < 1;
      if (v62)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v30 = 1;
      if (v62)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v36 = &enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
    goto LABEL_16;
  }

  v30 = 0;
  if ((v62 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v54 = v9;
  v53 = v30;
  if (IsBoldTextEnabled)
  {
    v35 = static UIFont.roundedHeadlineFont.getter();
  }

  else
  {
    v35 = static UIFont.roundedSubheadlineFont.getter();
  }

  v37 = v35;
  v52[1] = v16;
  TTRRemindersListViewModel.Reminder.item.getter();
  TTRRemindersListViewModel.Reminder.style.getter();
  v62 = TTRReminderCellStyle.allowsEditing.getter();
  (*(v55 + 8))(v13, v56);
  v56 = TTRRemindersListViewModel.Reminder.attributedNotes.getter();
  sub_100058000(&qword_100778FD0, &qword_1006389D0);
  inited = swift_initStackObject();
  *(inited + 32) = NSFontAttributeName;
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 40) = v37;
  *(inited + 48) = NSForegroundColorAttributeName;
  v39 = objc_opt_self();
  v40 = NSFontAttributeName;
  v41 = v37;
  v42 = NSForegroundColorAttributeName;
  *(inited + 56) = [v39 secondaryLabelColor];
  sub_1004619A4(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100778FD8, &qword_1006389D8);
  swift_arrayDestroy();
  v43 = v57;
  TTRRemindersListViewModel.Reminder.hashtagData.getter();
  TTRReminderHashtagData.inlineHashtagVisibility.getter();
  (*(v59 + 8))(v43, v60);
  TTRRemindersListViewModel.Reminder.supportsStylingInNote.getter();
  v44 = v58;
  TTRIReminderCellNotesViewModel.init(item:allowsEditing:notes:baseTextStyles:inlineHashtagVisibility:supportsStyling:)();
  v45 = *(sub_100058000(&qword_100778FE0, &qword_1006389E0) + 48);
  v46 = v61;
  v47 = v64;
  (*(v61 + 16))(v23, v44, v64);
  if (qword_100767128 != -1)
  {
    swift_once();
  }

  v48 = TTRCounterBasedIdentifierGenerator.allocID()();

  (*(v46 + 8))(v44, v47);
  *&v23[v45] = v48;
  v36 = &enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:);
LABEL_16:
  (*(v19 + 104))(v23, *v36, v18);
  v49 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_notesModule;
  v50 = v65;
  swift_beginAccess();
  sub_10000794C(v50 + v49, v66, &unk_100781940, &unk_100638910);
  (*(v19 + 16))(v63, v23, v18);
  sub_100058000(&qword_100775A90, &qword_100647540);
  TTRBoardReminderCellNotesConfiguration.init(isHidden:module:viewModelUpdate:)();
  return (*(v19 + 8))(v23, v18);
}

void *sub_1002C2358(uint64_t a1)
{
  v2 = sub_100058000(&qword_100778FB0, &unk_1006470F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - v3;
  TTRRemindersListViewModel.Reminder.displayDate.getter();
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &qword_100778FB0, &unk_1006470F0);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = TTRRemindersListViewModel.DisplayDate.string.getter();
    v8 = v9;
    (*(v6 + 8))(v4, v5);
  }

  v53 = TTRRemindersListViewModel.Reminder.urgentIconString.getter();
  v54 = v10;
  v11 = TTRRemindersListViewModel.Reminder.recurrenceDescription.getter();
  v13 = v11;
  v14 = v12;
  v55 = a1;
  if (v8)
  {
    v57 = v8;
    if (v12)
    {
      static TTRLocalizableStrings.Common.dueDateAndRecurrenceFormat.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10062D3F0;
      *(v15 + 56) = &type metadata for String;
      v16 = sub_10005C390();
      v17 = v57;
      *(v15 + 32) = v7;
      *(v15 + 40) = v17;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = v13;
      *(v15 + 80) = v14;
LABEL_9:
      v19 = static String.localizedStringWithFormat(_:_:)();
      v57 = v20;
      v52 = v19;

      goto LABEL_12;
    }

    v52 = v7;
  }

  else
  {
    if (v12)
    {
      static TTRLocalizableStrings.Common.recurrenceFormat.getter();
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10062D400;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10005C390();
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      goto LABEL_9;
    }

    v52 = v11;
    v57 = 0;
  }

LABEL_12:
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  v56 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSForegroundColorAttributeName;
  v22 = objc_opt_self();
  v23 = NSForegroundColorAttributeName;
  v24 = [v22 secondaryLabelColor];
  v25 = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 64) = v25;
  *(inited + 40) = v24;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0, &unk_10062D7F0);
  v26 = TTRRemindersListViewModel.Reminder.showsAsOverdue.getter();
  v27 = &selRef_ttr_systemRedColor;
  if ((v26 & 1) == 0)
  {
    v27 = &selRef_secondaryLabelColor;
  }

  v28 = [v22 *v27];
  v29 = swift_initStackObject();
  *(v29 + 16) = v56;
  *(v29 + 32) = v23;
  *(v29 + 64) = v25;
  *(v29 + 40) = v28;
  v30 = v28;
  sub_100460A28(v29);
  swift_setDeallocating();
  sub_1000079B4(v29 + 32, &unk_100776BE0, &unk_10062D7F0);
  if (TTRRemindersListViewModel.Reminder.showsAsOverdue.getter())
  {
    ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
    v32 = v54;
    if (ShouldDifferentiateWithoutColor)
    {
      static TTRAccesibility.ImagePlaceholders.DifferentiateWithoutColors_Overdue.getter();
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v32 = v54;
  }

  type metadata accessor for TTRRemindersListViewModel();
  v35 = static TTRRemindersListViewModel.reminderDescription(baseAttributes:dateAttributes:listNameToShow:dateString:recurrenceString:urgentIconString:assignmentString:ttrAccessibilityOverdueIconString:)();

  if (!v34)
  {
    goto LABEL_22;
  }

  if (v35)
  {
    sub_100058000(&qword_100778FB8, &qword_1006389B0);
    v36 = swift_initStackObject();
    *(v36 + 16) = v56;
    *(v36 + 32) = static TTRAccesibility.ImagePlaceholders.DifferentiateWithoutColors_Overdue.getter();
    *(v36 + 40) = v37;
    *(v36 + 48) = static TTRAccesibility.DifferentiateWithoutColorsIcons.OverdueReminder.getter();
    *(v36 + 56) = v38;
    *(v36 + 64) = v30;
    v39 = v30;
    v40 = sub_100461A9C(v36);
    swift_setDeallocating();
    sub_1000079B4(v36 + 32, &qword_100778FC0, &qword_1006389B8);
    v41 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v40);

    v35 = v41;
LABEL_22:
    if (v32)
    {

      if (v35)
      {
        sub_100058000(&qword_100778FB8, &qword_1006389B0);
        v42 = swift_initStackObject();
        *(v42 + 16) = v56;
        *(v42 + 32) = static TTRLocalizableStrings.Common.urgentImagePlaceholder.getter();
        *(v42 + 40) = v43;
        *(v42 + 48) = 0x6D72616C61;
        *(v42 + 56) = 0xE500000000000000;
        *(v42 + 64) = v30;
        v44 = v30;
        v45 = sub_100461A9C(v42);
        swift_setDeallocating();
        sub_1000079B4(v42 + 32, &qword_100778FC0, &qword_1006389B8);
        v46 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v45);

        v35 = v46;
      }
    }

    goto LABEL_28;
  }

  if (v32)
  {
  }

  v35 = 0;
LABEL_28:
  if ((TTRRemindersListViewModel.Reminder.hasTimeZoneDifferentDayString.getter() & 1) != 0 && v35)
  {
    static TTRLocalizableStrings.Common.plusOneImagePlaceholder.getter();
    v47 = static TTRLocalizableStrings.TimeZone.plusOneDay.getter();
    __chkstk_darwin(v47);
    v48 = NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)();

    static TTRLocalizableStrings.Common.minusOneImagePlaceholder.getter();
    v49 = static TTRLocalizableStrings.TimeZone.minusOneDay.getter();
    __chkstk_darwin(v49);
    v35 = NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)();
  }

  else
  {
  }

  return v35;
}

uint64_t sub_1002C2A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772730, &unk_100634AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100058000(&qword_100778F68, &qword_100638958);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_100058000(&qword_100778FA8, &unk_1006389A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.LocationData();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.location.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100778FA8, &unk_1006389A0);
    return TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();
  }

  else
  {
    v43 = a2;
    (*(v14 + 32))(v16, v12, v13);
    sub_10000794C(a1, v6, &qword_100772730, &unk_100634AC0);
    v18 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v6, 1, v18);
    v41 = v14;
    v42 = v13;
    if (v20 == 1)
    {
      sub_1000079B4(v6, &qword_100772730, &unk_100634AC0);
      v21 = 1;
    }

    else
    {
      TTRBoardColumnItemIntermediateViewModel.itemLevel.getter();
      (*(v19 + 8))(v6, v18);
      v21 = 0;
    }

    v22 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel.ItemLevel();
    (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
    v23 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v24 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    sub_1000079B4(v9, &qword_100778F68, &qword_100638958);
    v25 = [objc_opt_self() configurationWithFont:v24 scale:1];
    v26 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

    v39 = TTRRemindersListViewModel.LocationData.localizedLabelFormatString.getter();
    v38 = v27;
    v37 = TTRRemindersListViewModel.LocationData.locationName.getter();
    v36 = sub_100003540(0, &qword_1007708F0, NSAttributedString_ptr);
    sub_100058000(&unk_100776BD0, &unk_100632860);
    inited = swift_initStackObject();
    v35 = xmmword_10062D400;
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = v23;
    *(inited + 40) = v24;
    v29 = NSFontAttributeName;
    v30 = v24;
    sub_100460A28(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_100776BE0, &unk_10062D7F0);
    v31 = swift_initStackObject();
    *(v31 + 16) = v35;
    *(v31 + 32) = v29;
    *(v31 + 64) = v23;
    *(v31 + 40) = v30;
    v32 = v30;
    sub_100460A28(v31);
    swift_setDeallocating();
    sub_1000079B4(v31 + 32, &unk_100776BE0, &unk_10062D7F0);
    v33 = static NSAttributedString.formattedString(format:formatAttributes:content:contentAttributes:)();

    if (TTRRemindersListViewModel.LocationData.hasStrikethroughStyling.getter())
    {
      v44.value.super.isa = [objc_opt_self() secondaryLabelColor];
      isa = v44.value.super.isa;
      NSAttributedString.addingStrikethrough(color:)(v44);
    }

    TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();

    return (*(v41 + 8))(v16, v42);
  }
}

uint64_t sub_1002C30A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2 - 8);
  v26 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = TTRRemindersListViewModel.Reminder.linkAttachments.getter();
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v19[1] = a1;
      v19[2] = v9;
      v12 = *(v6 + 16);
      v11 = v6 + 16;
      v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v21 = *(v11 + 56);
      v22 = v12;
      v23 = v11;
      v19[3] = v27 + 32;
      v20 = (v11 - 8);
      v14 = _swiftEmptyArrayStorage;
      do
      {
        v15 = v24;
        v22(v8, v13, v24);
        TTRRemindersListViewModel.LinkAttachment.url.getter();
        TTRRemindersListViewModel.LinkAttachment.attachmentID.getter();
        TTRRemindersListViewModel.LinkAttachment.metadata.getter();
        TTRBoardReminderCellURLConfiguration.Attachment.init(url:attachmentID:metadata:)();
        (*v20)(v8, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100548138(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_100548138((v16 > 1), v17 + 1, 1, v14);
        }

        v14[2] = v17 + 1;
        (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v17, v5, v25);
        v13 += v21;
        --v10;
      }

      while (v10);
    }
  }

  return TTRBoardReminderCellURLConfiguration.init(attachments:)();
}

uint64_t sub_1002C33B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for TTRAssigneeCandidateData();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100778EE0, &unk_100638900);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_100058000(&unk_100775910, &unk_100635F20);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  sub_10000794C(a1, v11, &qword_100778EE0, &unk_100638900);
  v15 = type metadata accessor for TTRRemindersListViewModel.AssignmentData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    sub_1000079B4(v11, &qword_100778EE0, &unk_100638900);
  }

  else
  {
    v22 = a1;
    TTRRemindersListViewModel.AssignmentData.assignment.getter();
    (*(v16 + 8))(v11, v15);
    v18 = type metadata accessor for TTRAssignment();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_1000079B4(v14, &unk_100775910, &unk_100635F20);
    }

    else
    {
      TTRAssignment.assignee.getter();
      (*(v19 + 8))(v14, v18);
      TTRAssigneeCandidateData.contact.getter();
      (*(v23 + 8))(v5, v24);
    }

    a1 = v22;
  }

  sub_10000794C(a1, v8, &qword_100778EE0, &unk_100638900);
  if (v17(v8, 1, v15) == 1)
  {
    sub_1000079B4(v8, &qword_100778EE0, &unk_100638900);
  }

  else
  {
    TTRRemindersListViewModel.AssignmentData.assignmentString.getter();
    (*(v16 + 8))(v8, v15);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  return TTRBoardReminderCellAssigneeConfiguration.init(contact:name:onAssigneePress:)();
}

uint64_t sub_1002C3794@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_100058000(&qword_100778ED8, &qword_1006388F8);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  TTRRemindersListViewModel.Reminder.appLink.getter();
  v7 = type metadata accessor for TTRRemindersListViewModel.AppLink();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100778ED8, &qword_1006388F8);
  }

  else
  {
    TTRRemindersListViewModel.AppLink.icon.getter();
    (*(v8 + 8))(v6, v7);
  }

  TTRRemindersListViewModel.Reminder.appLink.getter();
  if (v9(v3, 1, v7) == 1)
  {
    sub_1000079B4(v3, &qword_100778ED8, &qword_1006388F8);
  }

  else
  {
    TTRRemindersListViewModel.AppLink.name.getter();
    (*(v8 + 8))(v3, v7);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  return TTRBoardReminderCellAppLinkConfiguration.init(icon:name:onAppLinkPress:)();
}

void sub_1002C39CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002BD6D4(a2, 0);
  }
}

void *sub_1002C3A2C(uint64_t a1)
{
  v1 = sub_100058000(&qword_100776378, &unk_100636960);
  __chkstk_darwin(v1);
  v3 = (&v22 - v2);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    TTRRemindersListViewModel.Reminder.item.getter();
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.getter();
    v10 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) != 1)
    {
      v12 = (*(v11 + 88))(v3, v10);
      if (v12 == enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:))
      {
        (*(v11 + 96))(v3, v10);
        v13 = *v3;
        v14 = v3[1];

        if (swift_unknownObjectWeakLoadStrong())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v16 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v17 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v16);
            (*(*(v17 + 8) + 1048))(v7, v13, v14, v16);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return (*(v5 + 8))(v7, v4);
      }

      if (v12 != enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    if (qword_100767120 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100778DE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Should not be able to trigger didPressSuggestedSectionFor as button should be hidden when no suggestion available", v21, 2u);
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_1002C3DDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CD308(v4, a1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002C3E6C(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2(v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002C3EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1001CD5E4(v8, a1, a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1002C3FA8()
{
  v1 = [v0 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  if (*(result + qword_100786CF0))
  {
    __chkstk_darwin(result);

    v3 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002C409C()
{
  v1 = [v0 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  if (swift_dynamicCastClass())
  {
    sub_1004C149C();
    v3 = v2;
  }

  else
  {

    return 0;
  }

  return v3;
}

void sub_1002C410C(uint64_t a1)
{
  v3 = [v1 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  if (swift_dynamicCastClass())
  {
    sub_1004C1558(a1);
  }
}

double sub_1002C4188@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_getObjectType();
  sub_1002C44E0(a1, a2, v7, v10);
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_1002C41F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v9, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    (*(v6 + 16))(v8, v2 + v9, v5);
    TTRRemindersListInCellModule.interface.getter();
    (*(v6 + 8))(v8, v5);
    v10 = sub_1002F8590(a1, a2);
    swift_unknownObjectRelease();
  }

  return v10 & 1;
}

id sub_1002C4478(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1002C44E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v51[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [a3 bounds];
    goto LABEL_3;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      if (*(v20 + qword_100786CF0))
      {
        v21 = v20;
        LOBYTE(v51[0]) = 2;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIReminderTitleTextView();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            [v23 bounds];
            [v21 convertRect:v24 fromCoordinateSpace:?];
            v54 = CGRectInset(v53, 0.0, -12.0);
            x = v54.origin.x;
            y = v54.origin.y;
            width = v54.size.width;
            height = v54.size.height;
            [v21 bounds];
            v59.origin.x = v29;
            v59.origin.y = v30;
            v59.size.width = v31;
            v59.size.height = v32;
            v55.origin.x = x;
            v55.origin.y = y;
            v55.size.width = width;
            v55.size.height = height;
            CGRectIntersection(v55, v59);

            goto LABEL_3;
          }

LABEL_28:

          goto LABEL_3;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A18(v51);
LABEL_24:
    v45 = v51[0];
    v46 = v51[1];
    v47 = v51[2];
    v48 = v51[3];
    v49 = v52;

    if (v49)
    {
      v18 = 1;
      v14 = v45;
      v15 = v46;
      v16 = v47;
      v17 = v48;
      goto LABEL_4;
    }

LABEL_3:
    [a2 convertRect:a3 fromCoordinateSpace:?];
    v18 = 0;
LABEL_4:
    *a4 = v14;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
    return;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      if (*(v33 + qword_100786CF0))
      {
        v34 = v33;
        LOBYTE(v51[0]) = 7;

        v22 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

        if (v22)
        {
          type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
          v35 = swift_dynamicCastClass();
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            [v34 convertRect:v36 fromCoordinateSpace:?];
            v57 = CGRectInset(v56, 0.0, -12.0);
            v37 = v57.origin.x;
            v38 = v57.origin.y;
            v39 = v57.size.width;
            v40 = v57.size.height;
            [v34 bounds];
            v60.origin.x = v41;
            v60.origin.y = v42;
            v60.size.width = v43;
            v60.size.height = v44;
            v58.origin.x = v37;
            v58.origin.y = v38;
            v58.size.width = v39;
            v58.size.height = v40;
            CGRectIntersection(v58, v60);

            goto LABEL_3;
          }

          goto LABEL_28;
        }

LABEL_20:

        goto LABEL_3;
      }

      goto LABEL_30;
    }

LABEL_26:

    v18 = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  if (v13 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v19 = [a3 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_26;
    }

    sub_1004C1A34(v51);
    goto LABEL_24;
  }

LABEL_31:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1002C49E0(__n128 a1)
{
  v1 = type metadata accessor for TTRReminderHashtagData();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMHashtagLabelCollection();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Reminder.hashtagData.getter();
  v9 = TTRReminderHashtagData.tags.getter();
  (*(v2 + 8))(v4, v1);
  v27 = v9;
  sub_100058000(&qword_100778F98, &unk_100638990);
  sub_10000E188(&qword_100778FA0, &qword_100778F98, &unk_100638990, &protocol conformance descriptor for [A]);
  REMHashtagLabelCollection.init<A>(hashtags:)();
  v10 = REMHashtagLabelCollection.labels.getter();
  (*(v6 + 8))(v8, v5);
  v27 = v10;
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_10076DB20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v11 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

  v12 = *(v11 + 16);
  if (v12)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1004A1CD0(0, v12, 0);
    v13 = v29;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      v27 = static String.hashtagTokenDefaultPrefix.getter();
      v28 = v17;

      v18._countAndFlagsBits = v15;
      v18._object = v16;
      String.append(_:)(v18);

      v19 = v27;
      v20 = v28;
      v29 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_1004A1CD0((v21 > 1), v22 + 1, 1);
        v13 = v29;
      }

      v13[2] = v22 + 1;
      v23 = &v13[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v27 = v13;
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v24 = BidirectionalCollection<>.joined(separator:)();

  return v24;
}

uint64_t sub_1002C4D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v29 = a1;
  v4 = sub_100058000(&qword_100771588, &qword_1006388F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100778EB0, &qword_100638730);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_autoCompleteModule;
  swift_beginAccess();
  result = (*(v15 + 48))(v3 + v18, 1, v14);
  if (!result)
  {
    v28 = v6;
    v20 = v31;
    (*(v15 + 16))(v17, v3 + v18, v14);
    TTRRemindersListInCellModule.interface.getter();
    (*(v15 + 8))(v17, v14);
    v21 = v32;
    v22 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
    swift_beginAccess();
    sub_10000794C(v21 + v22, v9, &qword_100771588, &qword_1006388F0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v9, &qword_100771588, &qword_1006388F0);
    }

    else
    {
      sub_1002C5104(v9, v13, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
      if ((v13[v10[5]] & 1) == 0)
      {
        v23 = v10[7];
        v24 = v30;

        *&v13[v23] = v24;
        v25 = &v13[v10[6]];

        *v25 = v29;
        v25[1] = v20;
        v26 = v28;
        sub_1002C516C(v13, v28, v27);
        (*(v11 + 56))(v26, 0, 1, v10);
        sub_1002F82D8(v26);
      }

      swift_unknownObjectRelease();
      return sub_1002C51D0(v13, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
    }
  }

  return result;
}

uint64_t sub_1002C5104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C516C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C51D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002C5230(char a1, uint64_t (*a2)(void))
{
  v4 = [v2 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  if (!*(result + qword_100786CF0))
  {
    __break(1u);
    return result;
  }

  v6 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  result = 0;
  if (v6)
  {
    a2(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id sub_1002C5358()
{
  type metadata accessor for URL();

  return sub_1002C021C();
}

uint64_t sub_1002C54C8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002C55A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRRemindersListViewModel.Reminder() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_1002C56A8()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "invalidateIntrinsicContentSize");
}

uint64_t sub_1002C56EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002C57A0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListBadgeView.Shape();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListBadgeView.ImageParams();
  __chkstk_darwin(v7 - 8);
  v8 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  [v8 setTextColor:v10];

  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v11 = static UIFont.roundedFootnoteFont.getter();
  [v8 setFont:v11];

  v12 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
  v38 = v1;
  v13 = [v9 labelColor];
  [v12 setTextColor:v13];

  v14 = static UIFont.roundedBodyFont.getter();
  [v12 setFont:v14];

  v15 = *&v1[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge];
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  static UIImage.ttr_systemSymbolImage(named:)();
  dispatch thunk of TTRListBadgeView.image.setter();
  (*(v4 + 104))(v6, enum case for TTRListBadgeView.ImageContentMode.center(_:), v34);
  v16 = [v9 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  dispatch thunk of TTRListBadgeView.imageParams.setter();
  (*(v36 + 104))(v35, enum case for TTRListBadgeView.Shape.round(_:), v37);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  v17 = [v9 systemGreenColor];
  [v15 setTintColor:v17];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10062D410;
  *(v18 + 32) = [v9 whiteColor];
  *(v18 + 40) = [v9 systemGreenColor];
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = objc_opt_self();
  v21 = [v20 configurationWithPaletteColors:isa];

  v22 = v21;
  v23 = static UIFont.roundedSubheadlineSemiboldFont.getter();
  v24 = [v20 configurationWithFont:v23];

  v25 = [v22 configurationByApplyingConfiguration:v24];
  v26 = v25;
  v27 = [v20 configurationWithScale:3];
  v28 = [v26 configurationByApplyingConfiguration:v27];

  v29 = v28;
  v30 = static UIImage.ttr_systemSymbolImage(named:withConfiguration:)();

  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = v31;
  [v38 setAccessoryView:v32];
}

char *sub_1002C5D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRListBadgeView();
  *&v3[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge;
  v10 = *&v8[OBJC_IVAR____TtC9Reminders37TTRIAccountsListsSuggestGroceriesCell_badge];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  v13 = v8;
  v14 = v10;
  [v12 bounds];
  [v14 setFrame:?];

  [*&v8[v9] setAutoresizingMask:18];
  [*&v8[v11] addSubview:*&v8[v9]];
  [*&v13[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] setEnabled:0];

  return v13;
}

uint64_t type metadata accessor for TTRIAccountsListsSuggestGroceriesCell(uint64_t a1)
{
  result = qword_100779020;
  if (!qword_100779020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C5FDC()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1002C6048()
{
  v1 = sub_100058000(&qword_100779390, &qword_100638AD0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v25 - v3;
  v5 = type metadata accessor for Date();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100779398, &qword_100638AD8);
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v0 + 24);
    v16 = [objc_opt_self() sharedApplication];
    [v16 userInterfaceLayoutDirection];

    Date.init()();
    TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration.init(isRightToLeft:timestamp:)();
    v17 = TTRReminderPrintingPresenterCapability.fetchAndGenerateHTML(configuration:)();
    v25[2] = v17;
    (*(v7 + 8))(v9, v6);
    v28 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v15;
    swift_unknownObjectRetain();
    v25[1] = static Subscribers.Demand.unlimited.getter();
    v25[0] = sub_100058000(&qword_1007793A8, &unk_100638AF0);
    sub_100058000(&unk_10076DFD0, &unk_100638AE0);
    sub_100058000(&qword_10076DFA8, &unk_100631A60);
    sub_10000E188(&qword_1007793B0, &qword_1007793A8, &unk_100638AF0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10000E188(&qword_10076DFB8, &qword_10076DFA8, &unk_100631A60, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    sub_10000E188(&qword_1007793B8, &qword_100779398, &qword_100638AD8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v19 = v27;
    v20 = Publisher.eraseToAnyPublisher()();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v12, v19);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 internalErrorWithDebugDescription:v22];

    v28 = v23;
    sub_100058000(&unk_10076DFD0, &unk_100638AE0);
    sub_100058000(&qword_1007699F0, &qword_10062E420);
    Fail.init(error:)();
    sub_10000E188(&qword_1007793A0, &qword_100779390, &qword_100638AD0, &protocol conformance descriptor for Fail<A, B>);
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v4, v1);
  }

  return v20;
}

uint64_t sub_1002C6564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = sub_100058000(&qword_1007793C0, &qword_100638B00);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100058000(&qword_1007793C8, &qword_100638B08);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C68A8(a1, v10);
  v15 = *(v8 + 56);
  (*(v12 + 32))(v14, v10, v11);
  sub_100005FD0(&v10[v15], v25);
  v24 = sub_1005A8850(v14);
  sub_10000B0D8(v25, v23);
  v16 = swift_allocObject();
  sub_100005FD0(v23, v16 + 16);
  sub_100058000(&qword_1007793D0, &unk_100638B10);
  sub_100058000(&unk_10076DFD0, &unk_100638AE0);
  sub_10000E188(&qword_1007793D8, &qword_1007793D0, &unk_100638B10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E188(&qword_1007793E0, &qword_1007793C0, &qword_100638B00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = v20;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v21 + 8))(v6, v17);
  sub_100004758(v25);
  result = (*(v12 + 8))(v14, v11);
  *v22 = v18;
  return result;
}

uint64_t sub_1002C68A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007793C8, &qword_100638B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002C6918@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v4 = *a1;
  *a2 = *a1;
  sub_10000B0D8(v2 + 16, (a2 + 1));

  return v4;
}

uint64_t sub_1002C6960()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007793E8);
  v1 = sub_100003E30(v0, qword_1007793E8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002C6A28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100058000(&unk_10077FC20, &unk_100638BA0);
  __chkstk_darwin(v11 - 8);
  v37 = &v35 - v12;
  v36 = type metadata accessor for UICellAccessory.Placement();
  v13 = *(v36 - 8);
  __chkstk_darwin(v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v16 = *(v38 - 8);
  __chkstk_darwin(v38);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
  v20 = sub_100058000(&qword_100779468, &qword_100638B58);
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  v22 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView;
  v24 = [objc_allocWithZone(UIImageView) init];
  v25 = [objc_opt_self() configurationWithScale:3];
  [v24 setPreferredSymbolConfiguration:v25];

  *&v5[v23] = v24;
  *&v5[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage] = 0;
  *&v5[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage] = 0;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  sub_100058000(&unk_10077C050, &unk_10063A220);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  v27 = *&v26[OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView];
  v28 = &v15[*(sub_100058000(&qword_100779498, &unk_100638BB0) + 48)];
  v29 = enum case for UICellAccessory.DisplayedState.always(_:);
  v30 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v30 - 8) + 104))(v15, v29, v30);
  *v28 = sub_1002C896C;
  v28[1] = 0;
  (*(v13 + 104))(v15, enum case for UICellAccessory.Placement.leading(_:), v36);
  v31 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
  v32 = v26;
  v33 = v27;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  (*(v16 + 8))(v18, v38);
  UICollectionViewListCell.accessories.setter();

  return v32;
}

uint64_t sub_1002C6F48()
{
  v1 = sub_100058000(&qword_100779480, &unk_100638B80);
  __chkstk_darwin(v1 - 8);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v26 - v4;
  v5 = sub_100058000(&unk_10077A660, &unk_100634770);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v27 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030908();
  sub_100058000(&qword_10076EA28, &unk_100631EF0);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v15[*(v13 + 28)], v7, &unk_10077A660, &unk_100634770);
  v18 = sub_100058000(&qword_10077A670, &unk_100631300);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1000299A4(v15);
    return sub_1000079B4(v7, &unk_10077A660, &unk_100634770);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v15);
    (*(v19 + 8))(v7, v18);
    if ((*(v9 + 88))(v11, v8) == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
    {
      (*(v9 + 96))(v11, v8);
      v22 = v26;
      v21 = v27;
      (*(v27 + 32))(v26, v11, v16);
      v23 = v28;
      (*(v21 + 16))(v28, v22, v16);
      (*(v21 + 56))(v23, 0, 1, v16);
      v24 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
      swift_beginAccess();
      v25 = v29;
      sub_10000794C(v0 + v24, v29, &qword_100779480, &unk_100638B80);
      swift_beginAccess();
      sub_100019180(v23, v0 + v24, &qword_100779480, &unk_100638B80);
      swift_endAccess();
      sub_1002C7428(v25);
      sub_1000079B4(v25, &qword_100779480, &unk_100638B80);
      sub_1000079B4(v23, &qword_100779480, &unk_100638B80);
      return (*(v21 + 8))(v22, v16);
    }

    else
    {
      return (*(v9 + 8))(v11, v8);
    }
  }
}

void sub_1002C7428(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100779480, &unk_100638B80);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100779488, &unk_100638B90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_100779480, &unk_100638B80);
  sub_10000794C(a1, &v12[v14], &qword_100779480, &unk_100638B80);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000079B4(v12, &qword_100779480, &unk_100638B80);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_100779480, &unk_100638B80);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100779488, &unk_100638B90);
LABEL_7:
    sub_1002C7744(v16);
    return;
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_1002C8914();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  sub_1000079B4(v12, &qword_100779480, &unk_100638B80);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1002C7744(__n128 a1)
{
  v2 = v1;
  v132 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100768848, &unk_10063B3E0);
  __chkstk_darwin(v4 - 8);
  v134 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v133 = &v114 - v7;
  v8 = sub_100058000(&qword_100779478, &qword_100638B78);
  __chkstk_darwin(v8 - 8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v125 = &v114 - v11;
  v129 = sub_100058000(&qword_100779468, &qword_100638B58);
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v121 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v114 - v14;
  v137 = type metadata accessor for TTRAccountsListsViewModel.SmartList.DynamicGlyph();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v124 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v136 = &v114 - v17;
  v18 = sub_100058000(&qword_100771DD8, &qword_100634250);
  __chkstk_darwin(v18 - 8);
  v138 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v139 = &v114 - v21;
  v128 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v141 = *(v128 - 8);
  __chkstk_darwin(v128);
  v140 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = type metadata accessor for UIListContentConfiguration();
  v142 = *(v26 - 8);
  __chkstk_darwin(v26);
  v127 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v114 - v29;
  v31 = sub_100058000(&qword_100779480, &unk_100638B80);
  __chkstk_darwin(v31 - 8);
  v33 = &v114 - v32;
  v34 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  swift_beginAccess();
  v39 = v2 + v38;
  v40 = v2;
  sub_10000794C(v39, v33, &qword_100779480, &unk_100638B80);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1000079B4(v33, &qword_100779480, &unk_100638B80);
    return;
  }

  v118 = v35;
  v41 = *(v35 + 32);
  v119 = v34;
  v41(v37, v33, v34);
  sub_10003139C(v30);
  TTRAccountsListsViewModel.SmartList.type.getter();
  TTRListType.PredefinedSmartListType.longTitle.getter();
  v42 = *(v141 + 8);
  v43 = v25;
  v44 = v128;
  v117 = v141 + 8;
  v116 = v42;
  v42(v43, v128);
  UIListContentConfiguration.text.setter();
  v45 = v142;
  v46 = *(v142 + 16);
  v47 = v127;
  v120 = v30;
  v46(v127, v30, v26);
  *(v40 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 1;
  v143[3] = v26;
  v143[4] = &protocol witness table for UIListContentConfiguration;
  v48 = sub_1000317B8(v143);
  v46(v48, v47, v26);
  v49 = v40;
  UICollectionViewCell.contentConfiguration.setter();
  v50 = *(v45 + 8);
  v127 = v26;
  v142 = v45 + 8;
  v115 = v50;
  v50(v47, v26);
  v51 = v140;
  TTRAccountsListsViewModel.SmartList.type.getter();
  v52 = v139;
  TTRAccountsListsViewModel.SmartList.dynamicGlyph.getter();
  v53 = v52;
  v54 = v138;
  sub_10000794C(v53, v138, &qword_100771DD8, &qword_100634250);
  v55 = v135;
  v56 = v137;
  v57 = (*(v135 + 48))(v54, 1, v137);
  v58 = v44;
  v59 = v141;
  if (v57 == 1)
  {
    sub_1000079B4(v138, &qword_100771DD8, &qword_100634250);
    v60 = TTRListType.PredefinedSmartListType.glyph.getter();
    v61 = v60;
    v62 = v51;
    v63 = v49;
LABEL_13:
    v89 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v90 = *(v89 + 20);
    v91 = v133;
    v92 = v62;
    v93 = v58;
    (*(v59 + 16))(&v133[v90], v92, v58);
    v94 = enum case for TTRListBadgeView.ColorInfo.predefinedSmartListColor(_:);
    v95 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v95 - 8) + 104))(&v91[v90], v94, v95);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    swift_storeEnumTagMultiPayload();
    v96 = *(v89 + 24);
    v97 = enum case for TTRListBadgeView.Shape.round(_:);
    v98 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v98 - 8) + 104))(&v91[v96], v97, v98);
    v99 = objc_opt_self();
    v100 = [v99 whiteColor];
    (*(v131 + 104))(v130, enum case for TTRListBadgeView.ImageContentMode.scaleAspectFit(_:), v132);
    TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
    *v91 = v60;
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
    swift_storeEnumTagMultiPayload();
    v101 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
    (*(*(v101 - 8) + 56))(v91, 0, 1, v101);
    v102 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
    swift_beginAccess();
    v103 = v134;
    sub_10000794C(v63 + v102, v134, &qword_100768848, &unk_10063B3E0);
    swift_beginAccess();
    sub_100019180(v91, v63 + v102, &qword_100768848, &unk_10063B3E0);
    swift_endAccess();
    sub_100036640(v103);
    sub_1000079B4(v103, &qword_100768848, &unk_10063B3E0);
    sub_1000079B4(v91, &qword_100768848, &unk_10063B3E0);
    v104 = TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
    v105 = *(v63 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView);
    if (v104)
    {
      v106 = sub_1002C86F8();
    }

    else
    {
      v106 = sub_1002C8618();
    }

    v107 = v106;
    v108 = v120;
    [v105 setImage:v106];

    v109 = v127;
    if (v104)
    {
      v110 = 0;
    }

    else
    {
      v110 = [v99 tertiaryLabelColor];
    }

    [v105 setTintColor:v110];

    sub_1000079B4(v139, &qword_100771DD8, &qword_100634250);
    v116(v140, v93);
    v115(v108, v109);
    (*(v118 + 8))(v37, v119);
    return;
  }

  v114 = v37;
  v64 = *(v55 + 32);
  v65 = v136;
  v64(v136, v138, v56);
  v66 = v124;
  (*(v55 + 16))(v124, v65, v56);
  if ((*(v55 + 88))(v66, v56) == enum case for TTRAccountsListsViewModel.SmartList.DynamicGlyph.today(_:))
  {
    (*(v55 + 96))(v66, v56);
    v67 = v66;
    v68 = *v66;
    v69 = v67[1];
    v70 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
    swift_beginAccess();
    v71 = v125;
    sub_10000794C(v49 + v70, v125, &qword_100779478, &qword_100638B78);
    if ((*(v126 + 48))(v71, 1, v129) == 1)
    {
      v72 = &qword_100779478;
      v73 = &qword_100638B78;
      v74 = v71;
    }

    else
    {
      v75 = v122;
      sub_1002C89E4(v71, v122);
      v76 = v136;
      if (static TTRAccountsListsViewModel.SmartList.DynamicGlyph.== infix(_:_:)())
      {
        v77 = *(v135 + 8);
        v78 = v76;
        v79 = v137;
        v77(v78, v137);

        v80 = v75;
        v81 = v121;
        sub_1002C89E4(v80, v121);
        v60 = *(v81 + *(v129 + 48));
        v82 = v60;
        v77(v81, v79);
        v63 = v49;
LABEL_12:
        v37 = v114;
        v62 = v140;
        v59 = v141;
        goto LABEL_13;
      }

      v72 = &qword_100779468;
      v73 = &qword_100638B58;
      v74 = v75;
    }

    sub_1000079B4(v74, v72, v73);
    v63 = v49;
    type metadata accessor for TTRIDateIconGenerator();
    swift_allocObject();
    TTRIDateIconGenerator.init()();
    v83._countAndFlagsBits = v68;
    v83._object = v69;
    isa = TTRIDateIconGenerator.generateTodaySmartListTemplateIcon(withText:)(v83).super.isa;

    v85 = v129;
    v86 = *(v129 + 48);
    v87 = v123;
    v64(v123, v136, v137);
    *(v87 + v86) = isa;
    (*(v126 + 56))(v87, 0, 1, v85);
    swift_beginAccess();
    v60 = isa;
    sub_1002C8974(v87, v63 + v70);
    swift_endAccess();
    v88 = v60;
    goto LABEL_12;
  }

  if (qword_100767130 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  sub_100003E30(v111, qword_1007793E8);
  v112 = sub_100008E04(_swiftEmptyArrayStorage);
  v113 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown dynamic glyph", 21, 2uLL, v112, v113);
  __break(1u);
}

id sub_1002C8618()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage);
  }

  else
  {
    v4 = v0;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100058000(&qword_10077FBD0, &qword_10063BA70);
    Optional<A>.ensureNonNil()();

    v7 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1002C86F8()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
  }

  else
  {
    v4 = v0;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100058000(&qword_10077FBD0, &qword_10063BA70);
    Optional<A>.ensureNonNil()();

    v7 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1002C87E0()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache, &qword_100779478, &qword_100638B78);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList, &qword_100779480, &unk_100638B80);

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage);
}

unint64_t sub_1002C8914()
{
  result = qword_100779490;
  if (!qword_100779490)
  {
    type metadata accessor for TTRAccountsListsViewModel.SmartList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100779490);
  }

  return result;
}

uint64_t sub_1002C8974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100779478, &qword_100638B78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C89E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100779468, &qword_100638B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002C8A54()
{
  v1 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_dynamicGlyphCache;
  v2 = sub_100058000(&qword_100779468, &qword_100638B58);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_predefinedSmartList;
  v4 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell_checkmarkImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  v7 = [objc_opt_self() configurationWithScale:3];
  [v6 setPreferredSymbolConfiguration:v7];

  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___unselectedCheckmarkImage) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders48TTRIAccountsListsEditablePredefinedSmartListCell____lazy_storage___selectedCheckmarkImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C8BD4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007794A0);
  v1 = sub_100003E30(v0, qword_1007794A0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C8C9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = sub_100003E30(v2, qword_1007A8938);
  return sub_1002D674C(v3, a1, type metadata accessor for TTRRemindersListEditingInteractionOptions);
}

uint64_t sub_1002C8D20()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380, &qword_10062DE60);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_1002C8E7C()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_1002C8F8C(uint64_t a1)
{
  v1 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v5 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v2 + 104))(v4, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v1);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1002C909C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002C9110@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v4 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v5 = sub_1002D586C;
  v5[1] = v1;
}

double sub_1002C91D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a1, v5, v7);
  v11 = (*(v6 + 88))(v9, v5);
  v12 = enum case for TTRRemindersListViewModel.Item.reminder(_:);
  (*(v6 + 8))(v9, v5);
  if (v11 == v12)
  {
    v13 = type metadata accessor for MoveSubject(0);
    *(a2 + 24) = v13;
    *(a2 + 32) = &off_10071E738;
    v14 = sub_1000317B8(a2);
    (v10)(v14, a1, v5);
    *(v14 + *(v13 + 20)) = v2;
    *(v14 + *(v13 + 24)) = 0;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002C935C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v29 = type metadata accessor for RemindersInsertionRequest(0);
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = sub_100058000(&qword_100779B70, &unk_100638C68);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v28 - v15;
  v17 = *(v7 + 16);
  v17(v12, a1, v6, v14);
  (v17)(v9, v12, v6);
  v18 = (*(v7 + 88))(v9, v6);
  if (v18 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v18 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v18 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v18 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v18 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v18 != enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      if (v18 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v18 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v7 + 8))(v12, v6);
      goto LABEL_3;
    }

LABEL_2:
    v19 = *(v7 + 8);
    v19(v12, v6);
    v19(v9, v6);
LABEL_3:
    v20 = 1;
    v21 = v29;
    goto LABEL_6;
  }

  (*(v7 + 32))(v5, v12, v6);
  v22 = v28[1];
  v21 = v29;
  *&v5[*(v29 + 20)] = 0;
  *&v5[*(v21 + 24)] = v22;
  v23 = *(v7 + 8);

  v23(v9, v6);
  sub_1002D66C4(v5, v16, type metadata accessor for RemindersInsertionRequest);
  v20 = 0;
LABEL_6:
  (*(v3 + 56))(v16, v20, 1, v21);
  if ((*(v3 + 48))(v16, 1, v21) == 1)
  {
    result = sub_1000079B4(v16, &qword_100779B70, &unk_100638C68);
    v25 = v30;
    *v30 = 0u;
    *(v25 + 1) = 0u;
    v25[4] = 0;
  }

  else
  {
    v26 = v30;
    v30[3] = v21;
    v26[4] = &off_10071E758;
    v27 = sub_1000317B8(v26);
    return sub_1002D66C4(v16, v27, type metadata accessor for RemindersInsertionRequest);
  }

  return result;
}

uint64_t sub_1002C97B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = type metadata accessor for RemindersInsertionRequest(0);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100779B70, &unk_100638C68);
  __chkstk_darwin(v8 - 8);
  v45 = &v40 - v9;
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v22 = a1;
  v24 = v23;
  sub_10000794C(v22, v12, &qword_100772140, &qword_10062D9F0);
  if ((*(v24 + 48))(v12, 1, v13) == 1)
  {
    result = sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return result;
  }

  v42 = a3;
  v26 = *(v24 + 32);
  v26(v21, v12, v13);
  v27 = v24;
  v28 = *(v24 + 16);
  v41 = v21;
  v28(v18, v21, v13);
  v28(v15, v18, v13);
  v29 = (*(v27 + 88))(v15, v13);
  if (v29 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_4;
  }

  if (v29 != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    if (v29 != enum case for TTRRemindersListViewModel.Item.reminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) && v29 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v29 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v29 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v29 != enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      if (v29 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v29 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v30 = *(v27 + 8);
      v30(v18, v13);
      goto LABEL_5;
    }

LABEL_4:
    v30 = *(v27 + 8);
    v30(v18, v13);
    v30(v15, v13);
LABEL_5:
    v31 = 1;
    v32 = v47;
    v33 = v45;
    goto LABEL_8;
  }

  v26(v7, v18, v13);
  v32 = v47;
  v34 = v44;
  *&v7[*(v47 + 20)] = v43;
  *&v7[*(v32 + 24)] = v34;
  v30 = *(v27 + 8);

  v30(v15, v13);
  v33 = v45;
  sub_1002D66C4(v7, v45, type metadata accessor for RemindersInsertionRequest);
  v31 = 0;
LABEL_8:
  v35 = v46;
  (*(v46 + 56))(v33, v31, 1, v32);
  v36 = (*(v35 + 48))(v33, 1, v32);
  v38 = v41;
  v37 = v42;
  if (v36 == 1)
  {
    v30(v41, v13);
    result = sub_1000079B4(v33, &qword_100779B70, &unk_100638C68);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0;
  }

  else
  {
    *(v42 + 24) = v32;
    *(v37 + 32) = &off_10071E758;
    v39 = sub_1000317B8(v37);
    sub_1002D66C4(v33, v39, type metadata accessor for RemindersInsertionRequest);
    return (v30)(v38, v13);
  }

  return result;
}