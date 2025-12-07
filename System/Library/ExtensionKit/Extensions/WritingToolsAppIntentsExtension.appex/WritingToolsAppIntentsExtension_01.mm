uint64_t sub_1000187F0(uint64_t a1)
{
  v2 = sub_100050518();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_10004A138(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v4, v30), !swift_dynamicCast()))
  {
LABEL_6:
    v29 = 0;
    v7 = sub_100050518();
    if (*(a1 + 16))
    {
      v9 = sub_10004A138(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v9, v30), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        v31._countAndFlagsBits = 58;
        v31._object = 0xE100000000000000;
        sub_100050578(v31);
        v12 = sub_100050518();
        if (*(a1 + 16))
        {
          v14 = sub_10004A138(v12, v13);
          v16 = v15;

          if ((v16 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v14, v30), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            v32._countAndFlagsBits = 124;
            v32._object = 0xE100000000000000;
            sub_100050578(v32);
            v17 = sub_100050518();
            if (*(a1 + 16))
            {
              v19 = sub_10004A138(v17, v18);
              v21 = v20;

              if ((v21 & 1) == 0 || (sub_100015440(*(a1 + 56) + 32 * v19, v30), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                v33._countAndFlagsBits = 58;
                v33._object = 0xE100000000000000;
                sub_100050578(v33);
                v22 = sub_100050518();
                if (*(a1 + 16))
                {
                  v24 = sub_10004A138(v22, v23);
                  v26 = v25;

                  if ((v26 & 1) == 0)
                  {
                    return v29;
                  }

                  sub_100015440(*(a1 + 56) + 32 * v24, v30);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v29;
                  }

                  sub_100050578(v28);
                }

                return v29;
              }

              sub_100050578(v28);
            }

            goto LABEL_21;
          }

          sub_100050578(v28);
        }

        goto LABEL_16;
      }

      sub_100050578(v28);
    }

    goto LABEL_11;
  }

  return v29;
}

uint64_t sub_100018B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&unk_100070190, &qword_100058E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B88(uint64_t a1)
{
  v2 = sub_100002814(&unk_100070190, &qword_100058E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018C0C()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100018CB8@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_100018D6C()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  if (*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isForEditableContent) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__wantsInlineEditing) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_10004FB58();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100018EB4()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);

  return v1;
}

uint64_t sub_100018F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  a2[1] = v4;
}

uint64_t sub_100019028(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  v6 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1000509B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000191E0()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_10001928C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager);
}

uint64_t sub_100019340(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

uint64_t sub_1000194B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (sub_10000D730(*(v4 + *a2), a1))
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

uint64_t sub_100019614@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1000196CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots;

  v5 = sub_10000DC80(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

uint64_t sub_10001983C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_1000198E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse);
}

uint64_t sub_100019994(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB48();
}

uint64_t sub_100019AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100005070(a1, &v11 - v8, &qword_100070160, &qword_100057D20);
  return a5(v9);
}

uint64_t sub_100019B9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v7 - 8);
  v9 = v13 - v8;
  v10 = *a2;
  swift_beginAccess();
  sub_100005070(v4 + v10, v9, &qword_100070160, &qword_100057D20);
  LOBYTE(a2) = sub_10001D5D0(v9, a1);
  sub_10000CBA0(v9, &qword_100070160, &qword_100057D20);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v4;
    v13[-1] = a1;
    v13[2] = v4;
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  else
  {
    sub_100005070(a1, v9, &qword_100070160, &qword_100057D20);
    swift_beginAccess();
    sub_10001D9C0(v9, v4 + v10);
    swift_endAccess();
  }

  return sub_10000CBA0(a1, &qword_100070160, &qword_100057D20);
}

uint64_t sub_100019DA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_10001DAB8(a2, a1 + v5, &qword_100070160, &qword_100057D20);
  return swift_endAccess();
}

uint64_t sub_100019E68(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v2 + *a2);
}

uint64_t sub_100019F08@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_100019FE4(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return result;
}

void *sub_10001A0E8()
{
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  v2 = v1;
  return v1;
}

id sub_10001A198@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  *a2 = v4;

  return v4;
}

void sub_10001A258(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_10001A40C(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v35 - v7);
  v9 = sub_10004FAD8();
  v39 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v35 = &v35 - v13;
  v14 = __chkstk_darwin(v12);
  v36 = &v35 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v35 - v17;
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  swift_getKeyPath();
  v41 = v1;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v21 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(v1 + v21, v8, &qword_1000711B0, &qword_100057D28);
  v22 = type metadata accessor for CompositionModel.Session(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v8, 1, v22))
  {
    v24 = v39;
    sub_10000CBA0(v8, &qword_1000711B0, &qword_100057D28);
    sub_100005070(v38, v6, &qword_1000711B0, &qword_100057D28);
    if (v23(v6, 1, v22) == 1)
    {
      return sub_10000CBA0(v6, &qword_1000711B0, &qword_100057D28);
    }

    else
    {
      v30 = *v6;
      sub_10001D2F4(v6);
      v31 = [v30 uuid];

      v32 = v35;
      sub_10004FAB8();

      v33 = v36;
      (*(v24 + 32))(v36, v32, v9);
      if (qword_10006E9C8 != -1)
      {
        swift_once();
      }

      v34 = v37;
      (*(v24 + 16))(v37, v33, v9);
      swift_beginAccess();
      sub_100047CC8(0, v34);
      swift_endAccess();
      return (*(v24 + 8))(v33, v9);
    }
  }

  else
  {
    v26 = *v8;
    sub_10000CBA0(v8, &qword_1000711B0, &qword_100057D28);
    v27 = [v26 uuid];

    sub_10004FAB8();
    v28 = v39;
    (*(v39 + 32))(v20, v18, v9);
    if (qword_10006E9C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = qword_10007B420;
    qword_10007B420 = 0x8000000000000000;
    sub_10004C37C(v2, v20, isUniquelyReferenced_nonNull_native);
    qword_10007B420 = v40;
    swift_endAccess();
    return (*(v28 + 8))(v20, v9);
  }
}

uint64_t sub_10001A97C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v10 = *a2;
  swift_beginAccess();
  return sub_100005070(v12 + v10, a5, a3, a4);
}

uint64_t sub_10001AA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v11 = *a3;
  swift_beginAccess();
  return sub_100005070(v10 + v11, a6, a4, a5);
}

uint64_t sub_10001AB40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100005070(a1, &v9[-v5], &qword_1000711B0, &qword_100057D28);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB48();

  return sub_10000CBA0(v6, &qword_1000711B0, &qword_100057D28);
}

uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100005070(a2, &v12[-v8], &qword_1000711B0, &qword_100057D28);
  v10 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(a1 + v10, v7, &qword_1000711B0, &qword_100057D28);
  swift_beginAccess();
  sub_10001DAB8(v9, a1 + v10, &qword_1000711B0, &qword_100057D28);
  swift_endAccess();
  sub_10001A40C(v7);
  sub_10000CBA0(v7, &qword_1000711B0, &qword_100057D28);
  return sub_10000CBA0(v9, &qword_1000711B0, &qword_100057D28);
}

unint64_t sub_10001ADF0()
{
  result = sub_100004A78(&_swiftEmptyArrayStorage);
  qword_10007B420 = result;
  return result;
}

void sub_10001AE18(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for CompositionModel.Session(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = sub_100018D6C();
    if (v17)
    {
      v18 = v17;
      if ([v17 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
      {
        v52 = nullsub_1;
        v53 = 0;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_10001B644;
        v51 = &unk_10006B0F0;
        v19 = _Block_copy(&aBlock);
        [v18 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v19];
        swift_unknownObjectRelease();
        _Block_release(v19);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_getKeyPath();
    aBlock = v5;
    sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = sub_10004F958();
      [v27 endWritingToolsWithError:v28];

      swift_unknownObjectRelease();
    }

    return;
  }

  swift_getKeyPath();
  aBlock = v4;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v20 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  swift_beginAccess();
  sub_100005070(v5 + v20, v12, &qword_1000711B0, &qword_100057D28);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CBA0(v12, &qword_1000711B0, &qword_100057D28);
    if (qword_10006EA20 != -1)
    {
      swift_once();
    }

    v21 = sub_100050188();
    sub_1000071F4(v21, qword_10007B558);
    v22 = sub_100050168();
    v23 = sub_100050738();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100046C30(0xD00000000000001FLL, 0x8000000100052850, &aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s is called without session. The session may have been ended by a different view trying to start a new session", v24, 0xCu);
      sub_10000CC70(v25);
    }

    if (a3)
    {
      (a3)();
    }

    return;
  }

  sub_10001D290(v12, v16);
  if (qword_10006EA20 != -1)
  {
    swift_once();
  }

  v29 = sub_100050188();
  sub_1000071F4(v29, qword_10007B558);
  v30 = sub_100050168();
  v31 = sub_100050758();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    if (a1 == 2)
    {
      v33 = 1;
    }

    else
    {
      v33 = a1 & 1;
    }

    *(v32 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v30, v31, "Ending WT session, accepted: %{BOOL}d", v32, 8u);
  }

  if (v16[2])
  {
    v47 = a3;
    v34 = a4;
    sub_100050338();
    v35 = sub_100050168();
    v36 = sub_100050758();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Ending GES session", v37, 2u);
    }

    sub_100050348();
    v38 = sub_100050328();

    a4 = v34;
    a3 = v47;
    if (v38)
    {
      goto LABEL_32;
    }

    v39 = sub_100050168();
    v40 = sub_100050738();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "GES session termination returned failure";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
    }
  }

  else
  {
    v39 = sub_100050168();
    v40 = sub_100050758();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "No GES session to end";
      goto LABEL_30;
    }
  }

LABEL_32:
  v43 = sub_100018D6C();
  if (v43)
  {
    v44 = v43;
    if ([v43 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
    {
      v52 = nullsub_1;
      v53 = 0;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_10001B644;
      v51 = &unk_10006B0C8;
      v45 = _Block_copy(&aBlock);
      [v44 endTextPlaceholderAndWillInsertText:(a1 == 2) | (a1 & 1) completion:v45];
      swift_unknownObjectRelease();
      _Block_release(v45);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v46 = sub_100018D6C();
  if (v46)
  {
    [v46 didEndWritingToolsSession:*v16 accepted:(a1 == 2) | (a1 & 1)];
    swift_unknownObjectRelease();
  }

  sub_10001B688(v16, v5, a3, a4);
  sub_10001D2F4(v16);
}

uint64_t sub_10001B644(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10001B688(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v33[1] = a4;
  v35 = a3;
  v6 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v6 - 8);
  v34 = v33 - v7;
  v8 = sub_100002814(&qword_1000711B0, &qword_100057D28);
  __chkstk_darwin(v8 - 8);
  v10 = v33 - v9;
  v11 = sub_100002814(&qword_100071090, &qword_100057BB0);
  __chkstk_darwin(v11 - 8);
  v13 = v33 - v12;
  v14 = sub_100002814(&qword_100071120, qword_100057BC0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - v16;
  v18 = type metadata accessor for CompositionModel.Session(0);
  sub_100005070(a1 + *(v18 + 28), v13, &qword_100071090, &qword_100057BB0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CBA0(v13, &qword_100071090, &qword_100057BB0);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    if (qword_10006EA20 != -1)
    {
      swift_once();
    }

    v19 = sub_100050188();
    sub_1000071F4(v19, qword_10007B558);
    v20 = sub_100050168();
    v21 = sub_100050728();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "user reverted while continuation was still active", v22, 2u);
    }

    sub_10001D55C();
    v23 = swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    v36 = v23;
    sub_100050638();
    (*(v15 + 8))(v17, v14);
  }

  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v33[-2] = a2;
  v33[-1] = v10;
  v36 = a2;
  sub_10001DB20(&qword_1000711B8, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB48();

  sub_10000CBA0(v10, &qword_1000711B0, &qword_100057D28);
  v26 = (a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  if (*(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice + 8))
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    v33[-3] = 0;
    v33[-2] = 0;
    v33[-4] = a2;
    v36 = a2;
    sub_10004FB48();
  }

  else
  {
    *v26 = 0;
    v26[1] = 0;
  }

  sub_100019490(&_swiftEmptyArrayStorage);
  sub_1000191B8(&_swiftEmptyArrayStorage);
  if (*(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse))
  {
    v28 = swift_getKeyPath();
    __chkstk_darwin(v28);
    v33[-2] = a2;
    v33[-1] = 0;
    v36 = a2;
    sub_10004FB48();
  }

  swift_getKeyPath();
  v36 = a2;
  sub_10004FB58();

  v36 = a2;
  swift_getKeyPath();
  sub_10004FB78();

  *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse) = &_swiftEmptyDictionarySingleton;

  v36 = a2;
  swift_getKeyPath();
  sub_10004FB68();

  swift_getKeyPath();
  v36 = a2;
  sub_10004FB58();

  v36 = a2;
  swift_getKeyPath();
  sub_10004FB78();

  *(a2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots) = &_swiftEmptyArrayStorage;

  v36 = a2;
  swift_getKeyPath();
  sub_10004FB68();

  swift_getKeyPath();
  v36 = a2;
  sub_10004FB58();

  sub_100045880();

  v29 = sub_10004FAD8();
  v30 = *(*(v29 - 8) + 56);
  v31 = v34;
  v30(v34, 1, 1, v29);
  sub_100019A74(v31);
  v30(v31, 1, 1, v29);
  result = sub_100019B74(v31);
  if (v35)
  {
    return v35(result);
  }

  return result;
}

uint64_t sub_10001BE40()
{
  v1 = v0;
  v2 = sub_10004FB38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000504D8();
  __chkstk_darwin(v3 - 8);
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__state) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inclusionPolicy) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__prompt);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__resultAttributedString) = 0;
  v6 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__resultAttributedStringRange;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__inputStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__promptStringsForFeedback) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachments) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__generatedImages) = &_swiftEmptyArrayStorage;
  v7 = sub_10001D0E0();
  v8 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__modelInfoString);
  *v8 = v7;
  v8[1] = v9;
  v10 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__allowedResultOptions) = 0;
  type metadata accessor for AttachmentManager(0);
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptyArrayStorage;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0;
  *(v11 + 64) = &_swiftEmptyArrayStorage;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) = v11;
  v12 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_education;
  type metadata accessor for CompositionEducationModel(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x8000000100052880;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  v14 = [objc_allocWithZone(NSUserDefaults) init];
  v15 = sub_1000504E8();
  v16 = [v14 BOOLForKey:v15];

  *(v13 + 32) = v16;
  *(v0 + v12) = v13;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__refinements) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slots) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__requestedInfoResponse) = sub_10000396C(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedSlotSourceIds) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__slotParser) = 0;
  v17 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID;
  v18 = sub_10004FAD8();
  v19 = *(*(v18 - 8) + 56);
  v19(v1 + v17, 1, 1, v18);
  v19(v1 + v17, 1, 1, v18);
  v20 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID;
  v19(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, 1, 1, v18);
  v19(v1 + v20, 1, 1, v18);
  sub_100050068();
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isFeatureEnabled) = sub_100050058() & 1;
  type metadata accessor for CompositionRateLimitModel(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  sub_100050468();
  sub_10004FB08();
  *(v21 + 24) = sub_100050528();
  *(v21 + 32) = v22;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__rateLimitModel) = v21;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__wantsInlineEditing) = 1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isForEditableContent) = 1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isWebKitView) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__hasGeneratedResponseDrafts) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__activeGeneratedResponseIndex) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__isHandoff) = 0;
  v23 = v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 24) = -1;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__showingOriginal) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__allWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__selectedWordCount) = 0;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonSelectedWordCount) = 0;
  v24 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session;
  v25 = type metadata accessor for CompositionModel.Session(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel_userInfoSearcher;
  type metadata accessor for UserInfoSearcher();
  swift_allocObject();
  *(v1 + v27) = sub_10001E548();
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v1 + 49) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = -1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  return v1;
}

uint64_t sub_10001C41C()
{
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__delegate);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID, &qword_100070160, &qword_100057D20);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, &qword_100070160, &qword_100057D20);

  sub_100013054(*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 24));
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session, &qword_1000711B0, &qword_100057D28);

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel___observationRegistrar;
  v2 = sub_10004FB98();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10001C664()
{
  v0 = ToolModel.deinit();
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__delegate);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSearchToolQueryID, &qword_100070160, &qword_100057D20);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__currentSlotQueryRequestID, &qword_100070160, &qword_100057D20);

  sub_100013054(*(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 8), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 16), *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__handoffOriginatorMode + 24));
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__session, &qword_1000711B0, &qword_100057D28);

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10001C8AC()
{
  sub_10001C664();

  return swift_deallocClassInstance();
}

void sub_10001C928(uint64_t a1)
{
  sub_10001CB34(319, &qword_100070020, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_10001CB34(319, &unk_100070310, type metadata accessor for CompositionModel.Session);
    if (v2 <= 0x3F)
    {
      sub_10004FB98();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001CB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000507E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001CBA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CC14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002814(&qword_100071090, &qword_100057BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10001CCE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002814(&qword_100071090, &qword_100057BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001CD94(uint64_t a1)
{
  sub_10000E5D8(319, &unk_100071100, WTSession_ptr);
  if (v1 <= 0x3F)
  {
    sub_10000E5D8(319, &qword_10006F748, WTContext_ptr);
    if (v2 <= 0x3F)
    {
      sub_10001CB34(319, &qword_100071110, &type metadata accessor for GenerativeExperiencesSession);
      if (v3 <= 0x3F)
      {
        sub_10001CEA4(319);
        if (v4 <= 0x3F)
        {
          sub_10001CF08(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001CEA4(uint64_t a1)
{
  if (!qword_100071118)
  {
    sub_1000028C0(&qword_100071120, qword_100057BC0);
    v1 = sub_1000507E8();
    if (!v2)
    {
      atomic_store(v1, &qword_100071118);
    }
  }
}

void sub_10001CF08(uint64_t a1)
{
  if (!qword_100071128)
  {
    sub_10000E5D8(255, &qword_100071130, NSAttributedString_ptr);
    v1 = sub_1000507E8();
    if (!v2)
    {
      atomic_store(v1, &qword_100071128);
    }
  }
}

unint64_t sub_10001CF74()
{
  result = qword_100071170;
  if (!qword_100071170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071170);
  }

  return result;
}

unint64_t sub_10001CFCC()
{
  result = qword_100071178;
  if (!qword_100071178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071178);
  }

  return result;
}

unint64_t sub_10001D024()
{
  result = qword_100071180;
  if (!qword_100071180)
  {
    sub_1000028C0(&qword_100071188, qword_100057C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071180);
  }

  return result;
}

unint64_t sub_10001D08C()
{
  result = qword_100071190;
  if (!qword_100071190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071190);
  }

  return result;
}

uint64_t sub_10001D0E0()
{
  sub_10004FFE8();
  sub_10004FFD8();
  sub_10004FFC8();

  if (v7)
  {
    sub_1000050D8(&v6, v8);
    sub_10000D634(v8, v8[3]);
    v0 = sub_10004FFF8();
    sub_10000CC70(v8);
  }

  else
  {
    sub_10000CBA0(&v6, &qword_100071198, &unk_100057D10);
    if (qword_10006EA08 != -1)
    {
      swift_once();
    }

    v1 = sub_100050188();
    sub_1000071F4(v1, qword_10007B510);
    v2 = sub_100050168();
    v3 = sub_100050738();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No LLM is available to show", v4, 2u);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_10001D290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D2F4(uint64_t a1)
{
  v2 = type metadata accessor for CompositionModel.Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001D350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001D490(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10001A258(v1);
}

void sub_10001D4C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__nonInlineSupportResponse) = v2;
  v4 = v2;
}

uint64_t sub_10001D504(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100019028(v1, v2);
}

unint64_t sub_10001D55C()
{
  result = qword_1000711C0;
  if (!qword_1000711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000711C0);
  }

  return result;
}

uint64_t sub_10001D5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004FAD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002814(&qword_1000711C8, &qword_100057EC0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100005070(a1, &v21 - v13, &qword_100070160, &qword_100057D20);
  sub_100005070(a2, &v14[v15], &qword_100070160, &qword_100057D20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100005070(v14, v10, &qword_100070160, &qword_100057D20);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10001DB20(&unk_1000711D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = sub_100050448();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000CBA0(v14, &qword_100070160, &qword_100057D20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000CBA0(v14, &qword_1000711C8, &qword_100057EC0);
    v17 = 1;
    return v17 & 1;
  }

  sub_10000CBA0(v14, &qword_100070160, &qword_100057D20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10001D9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100070160, &qword_100057D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DB20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001DCA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__attachmentManager) = *(v0 + 24);
}

uint64_t sub_10001DD48(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_10001DD8C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension16CompositionModel__notice);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10001DDD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001DDF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DE4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10001DE9C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001DF20(void *a1)
{
  v3 = v1;
  v5 = sub_100002814(&qword_100071298, &qword_100058138);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000D634(a1, a1[3]);
  sub_10001EA90();
  sub_100050AC8();
  LOBYTE(v11) = 0;
  sub_100050978();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_100002814(&qword_1000712A8, &qword_100058140);
    sub_10001EAE4(&qword_1000712B0, &qword_1000712A8, &qword_100058140, &protocol conformance descriptor for <A> [A]);
    sub_100050988();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    sub_100002814(&qword_1000712B8, &qword_100058148);
    sub_10001EAE4(&qword_1000712C0, &qword_1000712B8, &qword_100058148, &protocol conformance descriptor for <> Set<A>);
    sub_100050988();
    LOBYTE(v11) = 3;
    sub_100050968();
    LOBYTE(v11) = 4;
    sub_100050968();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10001E1AC(__int128 *a1)
{
  v2 = v1;
  sub_100050568();
  v4 = v2[2];
  v5 = *(v4 + 16);
  sub_100050A88(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_100050568();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_10001E798(a1, v2[3]);
  if (!v2[5])
  {
    sub_100050A98(0);
    if (v2[7])
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100050A98(0);
    return;
  }

  sub_100050A98(1u);
  sub_100050568();
  if (!v2[7])
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_100050A98(1u);

  sub_100050568();
}

uint64_t sub_10001E2BC()
{
  v1 = *v0;
  v2 = 0x736E4174726F6873;
  v3 = 0x4449656372756F73;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x676F6C616964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001E35C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001ED9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001E390(uint64_t a1)
{
  v2 = sub_10001EA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E3CC(uint64_t a1)
{
  v2 = sub_10001EA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E420(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10001E8F4(v7, v8) & 1;
}

Swift::Int sub_10001E46C()
{
  sub_100050A78();
  sub_10001E1AC(v1);
  return sub_100050AA8();
}

Swift::Int sub_10001E4B0(uint64_t a1)
{
  sub_100050A78();
  sub_10001E1AC(v2);
  return sub_100050AA8();
}

uint64_t sub_10001E4EC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10001E548()
{
  v1 = sub_10004FEE8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_100071280, &qword_100058048);
  __chkstk_darwin(v5 - 8);
  v6 = sub_10004FF18();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultEnvironment];
  v16[3] = sub_10001E9DC();
  v16[4] = &protocol witness table for LNEnvironment;
  v16[0] = v10;
  sub_10004FED8();
  (*(v2 + 104))(v4, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  sub_10004FF08();
  v11 = sub_10004FEF8();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_10000CC70(v16);
  *(v0 + 16) = v11;
  *(v0 + 24) = v13;
  return v0;
}

void sub_10001E798(__int128 *a1, uint64_t a2)
{
  sub_100050AA8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_100050A88(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_100050A78();

        sub_100050568();
        v10 = sub_100050AA8();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_10001E8F4(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1000509B8() & 1) == 0 || (sub_10000D730(a1[2], a2[2]) & 1) == 0 || (sub_10000E060(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  if (v5)
  {
    if (!v6 || (a1[4] != a2[4] || v5 != v6) && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a2[7];
  if (v7)
  {
    if (v8 && (a1[6] == a2[6] && v7 == v8 || (sub_1000509B8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10001E9DC()
{
  result = qword_100071288;
  if (!qword_100071288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071288);
  }

  return result;
}

unint64_t sub_10001EA3C()
{
  result = qword_100071290;
  if (!qword_100071290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071290);
  }

  return result;
}

unint64_t sub_10001EA90()
{
  result = qword_1000712A0;
  if (!qword_1000712A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712A0);
  }

  return result;
}

uint64_t sub_10001EAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SynthesizedAnswer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EC98()
{
  result = qword_1000712C8;
  if (!qword_1000712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712C8);
  }

  return result;
}

unint64_t sub_10001ECF0()
{
  result = qword_1000712D0;
  if (!qword_1000712D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D0);
  }

  return result;
}

unint64_t sub_10001ED48()
{
  result = qword_1000712D8;
  if (!qword_1000712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712D8);
  }

  return result;
}

uint64_t sub_10001ED9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E4174726F6873 && a2 == 0xEB00000000726577;
  if (v4 || (sub_1000509B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE900000000000073 || (sub_1000509B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676F6C616964 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000509B8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001EF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F698(a1, a2);
  v5 = [v4 domain];

  v6 = sub_100050518();
  v8 = v7;

  if (v6 == sub_100050518() && v8 == v9)
  {

    goto LABEL_8;
  }

  v11 = sub_1000509B8();

  result = 0;
  if (v11)
  {
LABEL_8:
    v13 = sub_10001F698(a1, a2);
    v14 = [v13 code];

    v15 = vdupq_n_s64(v14);
    return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100069FD0, v15), vceqq_s64(unk_100069FE0, v15)), vuzp1q_s32(vceqq_s64(xmmword_100069FF0, v15), vceqq_s64(unk_10006A000, v15))))) & 1;
  }

  return result;
}

uint64_t sub_10001F088(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001F698(v6, v9);
  v11 = [v10 domain];

  v12 = sub_100050518();
  v14 = v13;

  if (v12 == sub_100050518() && v14 == v15)
  {

    goto LABEL_9;
  }

  v17 = sub_1000509B8();

  if (v17)
  {
LABEL_9:
    v20 = sub_10001F698(a1, a2);
    v21 = [v20 code];

    v19 = v21 == 35;
    return v19 & 1;
  }

  (*(v5 + 16))(v8, v2, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {
    v18 = v23[1];
    v19 = sub_1000503F8();
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

id sub_10001F260(uint64_t a1, uint64_t a2)
{
  sub_100004808(&_swiftEmptyArrayStorage);
  v4 = sub_100050518();
  v6 = v5;
  v7 = sub_10001F7E0(a1, a2);
  v9 = v8;

  v35 = &type metadata for String;
  *&v34 = v7;
  *(&v34 + 1) = v9;
  sub_100005060(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C(v33, v4, v6, isUniquelyReferenced_nonNull_native);

  sub_10001F7E0(a1, a2);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v15 = sub_100050518();
    v17 = v16;
    v35 = &type metadata for String;
    *&v34 = v12;
    *(&v34 + 1) = v14;
    sub_100005060(&v34, v33);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, v15, v17, v18);
  }

  if (sub_100020C34(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD000000000000021, 0x80000001000529E0, v19);
  }

  if (sub_100020F44(a1, a2))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD00000000000001DLL, 0x80000001000529C0, v20);
  }

  if (sub_1000210A8(a1, a2))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100005060(&v34, v33);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C(v33, 0xD000000000000015, 0x80000001000529A0, v21);
  }

  v22 = sub_100050A28();
  v35 = &type metadata for String;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  sub_100005060(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C(v33, 0xD00000000000001DLL, 0x8000000100052980, v24);
  v25 = sub_10001F698(a1, a2);
  v26 = [v25 domain];

  if (!v26)
  {
    sub_100050518();
    v26 = sub_1000504E8();
  }

  v27 = sub_10001F698(a1, a2);
  v28 = [v27 code];

  v29 = objc_allocWithZone(NSError);
  isa = sub_100050408().super.isa;

  v31 = [v29 initWithDomain:v26 code:v28 userInfo:isa];

  return v31;
}

uint64_t sub_10001F634()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B438);
  sub_1000071F4(v0, qword_10007B438);
  return sub_10004F978();
}

uint64_t sub_10001F698(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (sub_1000509A8())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = sub_10004F958();

  return v8;
}

uint64_t sub_10001F7E0(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v83 = sub_100050078();
  v79 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000504B8();
  __chkstk_darwin(v4 - 8);
  v85 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002814(&qword_1000712E0, &qword_100058268);
  v7 = __chkstk_darwin(v6 - 8);
  v90 = v69 - v8;
  v9 = *(a1 - 8);
  v10 = __chkstk_darwin(v7);
  v75 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v87 = v69 - v13;
  __chkstk_darwin(v12);
  v15 = v69 - v14;
  v98 = sub_1000500A8();
  v92 = *(v98 - 8);
  __chkstk_darwin(v98);
  v86 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004FB38();
  __chkstk_darwin(v17 - 8);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000504D8();
  __chkstk_darwin(v20 - 8);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050468();
  sub_10004FB08();
  v74 = sub_100050528();
  v96 = v23;
  sub_100050468();
  sub_10004FB08();
  v73 = sub_100050528();
  v97 = v24;
  v80 = "Try a longer selection.";
  v81 = 0xD000000000000011;
  sub_100050468();
  sub_10004FB08();
  v78 = sub_100050528();
  v94 = v25;
  sub_100050468();
  sub_10004FB08();
  v77 = sub_100050528();
  v91 = v26;
  sub_100050468();
  sub_10004FB08();
  v70 = sub_100050528();
  v95 = v27;
  sub_100050468();
  sub_10004FB08();
  v69[1] = sub_100050528();
  v29 = v28;
  v71 = "nticationErrorKey";
  sub_100050468();
  sub_10004FB08();
  v76 = sub_100050528();
  v31 = v30;
  sub_100050468();
  sub_10004FB08();
  v88 = v22;
  v89 = v19;
  v72 = sub_100050528();
  v33 = v32;
  v34 = *(v9 + 16);
  v35 = v93;
  v34(v15);
  v36 = v90;
  v37 = v98;
  if (swift_dynamicCast())
  {

    v38 = v92;
    (*(v92 + 56))(v36, 0, 1, v37);
    v39 = v86;
    (*(v38 + 32))(v86, v36, v37);
    v40 = sub_100050088();
    if (v41)
    {
      v42 = v40;
      v43 = v41;

      sub_1000504A8();
      v101._countAndFlagsBits = 0x65736E6F70736552;
      v101._object = 0xEE00206D6F726620;
      sub_100050498(v101);
      v102._countAndFlagsBits = sub_10001D0E0();
      sub_100050488(v102);

      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      sub_100050498(v103);
      sub_1000504C8();
      sub_10004FB08();
      v44 = sub_100050528();
      sub_1000504A8();
      v104._countAndFlagsBits = 10256610;
      v104._object = 0xA300000000000000;
      sub_100050498(v104);
      v105._countAndFlagsBits = v42;
      v105._object = v43;
      sub_100050488(v105);

      v106._countAndFlagsBits = 10322146;
      v106._object = 0xA300000000000000;
      sub_100050498(v106);
      sub_1000504C8();
      sub_10004FB08();
      sub_100050528();
      (*(v38 + 8))(v39, v98);
      return v44;
    }

    v46 = v82;
    sub_100050098();
    v47 = v79;
    v48 = v83;
    v49 = (*(v79 + 88))(v46, v83);
    if (v49 == enum case for GenerativeError.ErrorType.networking(_:) || v49 == enum case for GenerativeError.ErrorType.availability(_:) || v49 == enum case for GenerativeError.ErrorType.canceled(_:))
    {

      (*(v47 + 8))(v46, v48);
      sub_100050468();
      sub_10004FB08();
      v44 = sub_100050528();
      sub_100050468();
      sub_10004FB08();
      sub_100050528();
      (*(v38 + 8))(v39, v37);
      return v44;
    }

    if (v49 == enum case for GenerativeError.ErrorType.authentication(_:))
    {

      sub_100050468();
      sub_10004FB08();
      v44 = sub_100050528();
      sub_1000504A8();
      v107._countAndFlagsBits = 0x7920657461647055;
      v107._object = 0xEC0000002072756FLL;
      sub_100050498(v107);
      v108._countAndFlagsBits = sub_10001D0E0();
      sub_100050488(v108);

      v109._countAndFlagsBits = 0xD000000000000015;
      v109._object = 0x8000000100052CA0;
      sub_100050498(v109);
      sub_1000504C8();
      sub_10004FB08();
      sub_100050528();
      (*(v38 + 8))(v39, v37);
      (*(v47 + 8))(v82, v83);
      return v44;
    }

    (*(v38 + 8))(v39, v37);
    (*(v47 + 8))(v46, v48);
    return v78;
  }

  v85 = v31;
  v86 = v29;
  v83 = v33;
  (*(v92 + 56))(v36, 1, 1, v37);
  sub_100021270(v36);
  (v34)(v87, v35, a1);
  if (swift_dynamicCast())
  {

    if (v100 != 2)
    {
      sub_1000212D8(v99, v100);
      return v78;
    }

    goto LABEL_6;
  }

  v45 = v84;
  if (sub_100020F44(a1, v84))
  {

    sub_100050468();
    sub_10004FB08();
    v44 = sub_100050528();
    sub_100050468();
    sub_10004FB08();
    goto LABEL_9;
  }

  (v34)(v75, v35, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    v50 = v99;
    v51 = sub_10001F698(a1, v45);
    v52 = [v51 code];

    v44 = v76;
    if (v52 != 3)
    {

      return v44;
    }

    goto LABEL_18;
  }

  v98 = a1;
  v53 = sub_10001F698(a1, v45);
  v54 = [v53 domain];

  v55 = sub_100050518();
  v57 = v56;

  v58 = sub_100050518();
  v44 = v76;
  if (v58 == v55 && v59 == v57)
  {

LABEL_27:

    v62 = v98;
    v63 = v84;
    v64 = sub_10001F698(v98, v84);
    v65 = [v64 code];

    if (v65 == 1)
    {
LABEL_18:

      return v74;
    }

    if (v65 > 0x1B)
    {
      goto LABEL_44;
    }

    if (((1 << v65) & 0xCD08000) != 0)
    {
LABEL_32:

      sub_100050468();
      sub_10004FB08();
      return sub_100050528();
    }

    if (((1 << v65) & 0x5A00) == 0 && v65 != 24)
    {
LABEL_44:
      if (v65 - 4 >= 4 && v65 != 8)
      {
        if (sub_10001EF50(v62, v63) & 1) != 0 || (sub_10001F088(v62, v63))
        {
          goto LABEL_32;
        }

        if (v65 != 38)
        {
          return v44;
        }
      }
    }

LABEL_6:

    sub_100050468();
    sub_10004FB08();
    v44 = sub_100050528();
    sub_100050468();
    sub_10004FB08();
LABEL_9:
    sub_100050528();
    return v44;
  }

  v61 = sub_1000509B8();

  if (v61)
  {
    goto LABEL_27;
  }

  if ((v55 != 0xD00000000000001ALL || 0x8000000100052AE0 != v57) && (sub_1000509B8() & 1) == 0)
  {

    if (v55 == 0xD000000000000016 && 0x80000001000513D0 == v57)
    {
    }

    else
    {
      v67 = sub_1000509B8();

      if ((v67 & 1) == 0)
      {
        return v44;
      }
    }

    v68 = sub_10001F698(v98, v84);
    [v68 code];

    return v44;
  }

  v66 = sub_10001F698(v98, v84);
  [v66 code];

  return v70;
}

BOOL sub_100020C34(uint64_t a1)
{
  v2 = v1;
  v24 = sub_100050078();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002814(&qword_1000712E0, &qword_100058268);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = *(a1 - 8);
  __chkstk_darwin(v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000500A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v2, a1);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v10, 0, 1, v14);
    (*(v15 + 32))(v17, v10, v14);
    sub_100050098();
    (*(v15 + 8))(v17, v14);
    v20 = v24;
    v21 = (*(v4 + 88))(v6, v24) == enum case for GenerativeError.ErrorType.authentication(_:);
    (*(v4 + 8))(v6, v20);
  }

  else
  {
    v19(v10, 1, 1, v14);
    sub_100021270(v10);
    return 0;
  }

  return v21;
}

BOOL sub_100020F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F698(a1, a2);
  v5 = [v4 domain];

  v6 = sub_100050518();
  v8 = v7;

  if (sub_100050518() == v6 && v9 == v8)
  {
    v12 = 2;
LABEL_8:

    goto LABEL_9;
  }

  v11 = sub_1000509B8();

  if (v11)
  {
    v12 = 2;
LABEL_9:

LABEL_10:
    v13 = sub_10001F698(a1, a2);
    v14 = [v13 code];

    return v14 == v12;
  }

  if (sub_100050518() == v6 && v16 == v8)
  {
    v12 = 1002;
    goto LABEL_8;
  }

  v18 = sub_1000509B8();

  result = 0;
  if (v18)
  {
    v12 = 1002;
    goto LABEL_10;
  }

  return result;
}

BOOL sub_1000210A8(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  v8 = sub_10001F698(a1, a2);
  v9 = [v8 domain];

  v10 = sub_100050518();
  v12 = v11;

  if (sub_100050518() == v10 && v13 == v12)
  {

    goto LABEL_10;
  }

  v15 = sub_1000509B8();

  result = 0;
  if (v15)
  {
LABEL_10:
    v16 = sub_10001F698(a1, a2);
    v17 = [v16 code];

    return v17 == 39;
  }

  return result;
}

uint64_t sub_100021270(uint64_t a1)
{
  v2 = sub_100002814(&qword_1000712E0, &qword_100058268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000212D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1000212F0()
{
  result = qword_1000712E8;
  if (!qword_1000712E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712E8);
  }

  return result;
}

unint64_t sub_100021348()
{
  result = qword_1000712F0;
  if (!qword_1000712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F0);
  }

  return result;
}

unint64_t sub_1000213A0()
{
  result = qword_1000712F8;
  if (!qword_1000712F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000712F8);
  }

  return result;
}

uint64_t sub_100021444()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B450);
  sub_1000071F4(v0, qword_10007B450);
  return sub_10004F978();
}

uint64_t sub_1000214A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100021754(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10004FB38();
  v2[11] = swift_task_alloc();
  sub_1000504D8();
  v2[12] = swift_task_alloc();
  v3 = sub_10004F8A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v5 = sub_100050628();
  v2[21] = v5;
  v2[22] = v4;

  return _swift_task_switch(sub_1000218C8, v5, v4);
}

uint64_t sub_1000218C8()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v3;
    *(v0 + 48) = v2;
    sub_1000224FC();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v5 = sub_100050628();

    return _swift_task_switch(sub_100021B6C, v5, v4);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v6 = sub_100050188();
    sub_1000071F4(v6, qword_10007B4F8);
    v7 = sub_100050168();
    v8 = sub_100050728();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to obtain an app audit token from AppIntents.", v9, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100021B6C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v3 = *(v0 + 112);
  v16 = *(v0 + 104);

  sub_100050468();
  sub_10004FB08();
  v4 = sub_100050528();
  *(v0 + 208) = v5;
  *(v1 + 3) = v4;
  *(v1 + 4) = v5;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v6 = sub_100009ACC(1, 0);
  *(v0 + 216) = v6;
  *(v1 + 2) = v6;
  sub_100008F38(8, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v6;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v7 = objc_allocWithZone(BSAuditToken);

  v8 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v8;
  sub_100011960([v7 initWithAuditToken:v0 + 296]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v9 = *(v3 + 16);
  v9(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v17, v16);
  sub_100007288();
  v9(v18, v17, v16);
  v10 = sub_100050798();
  v11 = [objc_allocWithZone(WTContext) initWithAttributedText:v10 range:{0, objc_msgSend(v10, "length")}];
  *(v0 + 224) = v11;

  v12 = *(v3 + 8);
  *(v0 + 232) = v12;
  *(v0 + 240) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v17, v16);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v11;
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v13, v14);
}

uint64_t sub_100021E50@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B450);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100021EF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002814(&qword_100071318, &qword_1000583F8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002814(&qword_100071320, &qword_100058400);
  __chkstk_darwin(v3);
  sub_10004F778();
  v5._countAndFlagsBits = 0x73696C20656B614DLL;
  v5._object = 0xEF206D6F72662074;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_100071328, &unk_100058430);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_10002209C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100021754(a1, v4);
}

uint64_t sub_10002213C@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10004F9A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10004F8A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10004F678();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v20 = result;
  return result;
}

uint64_t sub_10002246C(uint64_t a1)
{
  v2 = sub_1000212F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000224FC()
{
  result = qword_100071310;
  if (!qword_100071310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071310);
  }

  return result;
}

uint64_t sub_100022558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_100022584()
{

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25CompositionEducationModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionEducationModel(uint64_t a1)
{
  result = qword_100071360;
  if (!qword_100071360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002267C(uint64_t a1)
{
  result = sub_10004FB98();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100022720()
{

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25CompositionRateLimitModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionRateLimitModel(uint64_t a1)
{
  result = qword_100071490;
  if (!qword_100071490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022818(uint64_t a1)
{
  result = sub_10004FB98();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000228C0()
{
  result = qword_1000715D0;
  if (!qword_1000715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715D0);
  }

  return result;
}

unint64_t sub_100022918()
{
  result = qword_1000715D8;
  if (!qword_1000715D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715D8);
  }

  return result;
}

unint64_t sub_100022970()
{
  result = qword_1000715E0;
  if (!qword_1000715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E0);
  }

  return result;
}

uint64_t sub_100022A14()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B468);
  sub_1000071F4(v0, qword_10007B468);
  return sub_10004F978();
}

uint64_t sub_100022A78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100022D24()
{
  v0 = sub_100002814(&qword_100071680, &qword_1000589A0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100002814(&qword_100071688, &qword_1000589A8);
  __chkstk_darwin(v1);
  sub_1000228C0();
  sub_10004F778();
  v3._countAndFlagsBits = 0x20656B614DLL;
  v3._object = 0xE500000000000000;
  sub_10004F768(v3);
  swift_getKeyPath();
  sub_100002814(&qword_100071690, &qword_1000589D8);
  sub_10004F758();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_10004F768(v4);
  swift_getKeyPath();
  sub_100002814(&qword_100071698, &unk_100058A08);
  sub_10004F758();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_10004F768(v5);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100022F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_10004FB38();
  v3[13] = swift_task_alloc();
  sub_1000504D8();
  v3[14] = swift_task_alloc();
  v4 = sub_10004F8A8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_100050658();
  v3[22] = sub_100050648();
  v6 = sub_100050628();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_1000230A4, v6, v5);
}

uint64_t sub_1000230A4()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = v1[1];
    *(v0 + 288) = *v1;
    *(v0 + 304) = v2;
    sub_10004F698();
    *(v0 + 200) = qword_100058A18[*(v0 + 352)];
    *(v0 + 48) = *(v0 + 88);
    sub_1000256F4();
    *(v0 + 208) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 216) = swift_allocObject();
    *(v0 + 224) = sub_100050648();
    v4 = sub_100050628();

    return _swift_task_switch(sub_10002336C, v4, v3);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v5 = sub_100050188();
    sub_1000071F4(v5, qword_10007B4F8);
    v6 = sub_100050168();
    v7 = sub_100050728();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to obtain an app audit token from AppIntents.", v8, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10002336C()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v19 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);

  sub_100050468();
  sub_10004FB08();
  v7 = sub_100050528();
  *(v0 + 232) = v8;
  *(v1 + 3) = v7;
  *(v1 + 4) = v8;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v9 = sub_100009ACC(1, 0);
  *(v0 + 240) = v9;
  *(v1 + 2) = v9;
  sub_100008F38(v3, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 64) = v9;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v10 = objc_allocWithZone(BSAuditToken);

  v11 = *(v0 + 304);
  *(v0 + 320) = *(v0 + 288);
  *(v0 + 336) = v11;
  sub_100011960([v10 initWithAuditToken:v0 + 320]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v12 = *(v5 + 16);
  v12(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v19, v6);
  sub_100007288();
  v12(v4, v19, v6);
  v13 = sub_100050798();
  v14 = [objc_allocWithZone(WTContext) initWithAttributedText:v13 range:{0, objc_msgSend(v13, "length")}];
  *(v0 + 248) = v14;

  v15 = *(v5 + 8);
  *(v0 + 256) = v15;
  *(v0 + 264) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v19, v6);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v14;
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);

  return _swift_task_switch(sub_100023640, v16, v17);
}

uint64_t sub_100023640()
{
  sub_10004F898();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1000236E0;
  v2 = *(v0 + 136);

  return sub_100025888(v2);
}

uint64_t sub_1000236E0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000239F4;
  }

  else
  {
    v5 = sub_10002381C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002381C()
{
  v1 = v0[32];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];

  v1(v3, v4);
  (*(v5 + 32))(v3, v2, v4);
  v6 = v0[32];
  v7 = v0[26];
  v8 = v0[27];
  v13 = v0[31];
  v9 = v0[18];
  v10 = v0[15];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v6(v8 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v10);

  swift_deallocClassInstance();
  v6(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000239F4()
{
  v1 = v0[35];

  v0[9] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v2 = v0[3];
    if (v2 == 1)
    {

      v3 = v0[32];
      v4 = v0[26];
      v5 = v0[27];
      v15 = v0[31];
      v6 = v0[18];
      v7 = v0[15];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v3(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v7);

      swift_deallocClassInstance();
      v3(v6, v7);

      v8 = v0[1];
      goto LABEL_6;
    }

    sub_1000072D4(v0[2], v2, v0[4], v0[5]);
  }

  v9 = v0[32];
  v10 = v0[31];
  v12 = v0[26];
  v11 = v0[27];
  v16 = v0[18];
  v13 = v0[15];

  swift_willThrow();

  swift_setDeallocating();
  v9(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

  swift_deallocClassInstance();
  v9(v16, v13);

  v8 = v0[1];
LABEL_6:

  return v8();
}

uint64_t sub_100023CF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B468);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023DA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006CB4;

  return sub_100022F2C(a1, v5, v4);
}

uint64_t sub_100023E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002524C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023E78(uint64_t a1)
{
  v2 = sub_1000228C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100023EB4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v24 = sub_100050458();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000504B8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v4 - 8);
  v25 = v19 - v5;
  v6 = sub_10004F988();
  v20 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004FB38();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000504D8();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10004F9A8();
  v22 = *(v12 - 8);
  v23 = v12;
  __chkstk_darwin(v12);
  sub_100050468();
  sub_10004FB08();
  v13 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v7 + 104);
  v19[1] = v7 + 104;
  v14(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10004F9B8();
  sub_1000504A8();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_100050498(v27);
  v15 = v21;
  v16 = v24;
  (*(v1 + 104))(v21, enum case for String.LocalizationValue.Placeholder.int(_:), v24);
  sub_100050478();
  (*(v1 + 8))(v15, v16);
  v28._countAndFlagsBits = 0x73656E6F7420;
  v28._object = 0xE600000000000000;
  sub_100050498(v28);
  sub_1000504C8();
  sub_10004FB08();
  v14(v9, v13, v20);
  v17 = v25;
  sub_10004F9B8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_10004F7F8();
}

uint64_t sub_10002432C()
{
  v0 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v0 - 8);
  v2 = v25 - v1;
  v3 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = sub_10004F9A8();
  v27 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_100071668, &qword_100058958);
  v10 = sub_100002814(&qword_10006ED78, &qword_1000559C0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v31 = 2 * v11;
  v13 = swift_allocObject();
  v32 = v13;
  *(v13 + 16) = xmmword_100056D20;
  v26 = *(v10 + 48);
  v14 = v10;
  *(v13 + v12) = 0;
  v15 = v13 + v12;
  sub_10004F978();
  v16 = *(v7 + 56);
  v28 = v7 + 56;
  v29 = v16;
  v16(v5, 1, 1, v6);
  sub_10004F6F8();
  v33 = sub_10004F718();
  v17 = *(v33 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v2, 0, 1, v33);
  v25[0] = v9;
  v25[1] = v19;
  v20 = v15;
  sub_10004F728();
  v30 = v15;
  v26 = *(v14 + 48);
  *(v15 + v11) = 1;
  sub_10004F978();
  v21 = v27;
  v22 = v29;
  v29(v5, 1, 1, v27);
  sub_10004F6F8();
  v18(v2, 0, 1, v33);
  sub_10004F728();
  *(v20 + v31) = 2;
  sub_10004F978();
  v22(v5, 1, 1, v21);
  sub_10004F6F8();
  v18(v2, 0, 1, v33);
  sub_10004F728();
  v23 = sub_100004A9C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10007B480 = v23;
  return result;
}

uint64_t sub_1000247C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737365666F7270;
  v4 = 0xEC0000006C616E6FLL;
  if (v2 != 1)
  {
    v3 = 0x657369636E6F63;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x796C646E65697266;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x69737365666F7270;
  v8 = 0xEC0000006C616E6FLL;
  if (*a2 != 1)
  {
    v7 = 0x657369636E6F63;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x796C646E65697266;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000509B8();
  }

  return v11 & 1;
}

unint64_t sub_1000248D8()
{
  result = qword_1000715E8;
  if (!qword_1000715E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715E8);
  }

  return result;
}

Swift::Int sub_10002492C()
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_1000249D8(uint64_t a1)
{
  sub_100050568();
}

Swift::Int sub_100024A70(uint64_t a1)
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

unint64_t sub_100024B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000256A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100024B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC0000006C616E6FLL;
  v5 = 0x69737365666F7270;
  if (v2 != 1)
  {
    v5 = 0x657369636E6F63;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C646E65697266;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100024BB4()
{
  result = qword_1000715F0;
  if (!qword_1000715F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F0);
  }

  return result;
}

unint64_t sub_100024C0C()
{
  result = qword_1000715F8;
  if (!qword_1000715F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000715F8);
  }

  return result;
}

unint64_t sub_100024C64()
{
  result = qword_100071600;
  if (!qword_100071600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071600);
  }

  return result;
}

unint64_t sub_100024CC8()
{
  result = qword_100071608;
  if (!qword_100071608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071608);
  }

  return result;
}

unint64_t sub_100024D20()
{
  result = qword_100071610;
  if (!qword_100071610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071610);
  }

  return result;
}

unint64_t sub_100024D74()
{
  result = qword_100071618;
  if (!qword_100071618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071618);
  }

  return result;
}

unint64_t sub_100024DCC()
{
  result = qword_100071620;
  if (!qword_100071620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071620);
  }

  return result;
}

unint64_t sub_100024E78()
{
  result = qword_100071628;
  if (!qword_100071628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071628);
  }

  return result;
}

uint64_t sub_100024ED0(uint64_t a1)
{
  v2 = sub_100024E78();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100024F20()
{
  result = qword_100071630;
  if (!qword_100071630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071630);
  }

  return result;
}

unint64_t sub_100024F78()
{
  result = qword_100071638;
  if (!qword_100071638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071638);
  }

  return result;
}

unint64_t sub_100024FD0()
{
  result = qword_100071640;
  if (!qword_100071640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071640);
  }

  return result;
}

uint64_t sub_100025024()
{
  if (qword_10006E9E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100025080(uint64_t a1)
{
  v2 = sub_100024DCC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100025130(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100025178(uint64_t result, int a2, int a3)
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

uint64_t sub_10002524C()
{
  v0 = sub_10004F798();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002814(&qword_10006F080, &unk_100059350);
  v5 = __chkstk_darwin(v4 - 8);
  v31 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v12 - 8);
  v14 = v24 - v13;
  v24[0] = v24 - v13;
  v15 = sub_10004F9A8();
  v30 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v28 = sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  v17 = *(v16 + 56);
  v27 = v16 + 56;
  v29 = v17;
  v17(v14, 1, 1, v15);
  v18 = sub_10004F8A8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_10004F678();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v1 + 104);
  v24[1] = v1 + 104;
  v25 = v21;
  v21(v3);
  v22 = v24[0];
  v28 = sub_10004F6C8();
  sub_100002814(&qword_100071670, &qword_100058960);
  sub_10004F978();
  v29(v22, 1, 1, v30);
  v32 = 3;
  v20(v8, 1, 1, v19);
  v20(v31, 1, 1, v19);
  v25(v3, v26, v0);
  sub_100024E78();
  sub_10004F6B8();
  return v28;
}

unint64_t sub_1000256A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A228;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000256F4()
{
  result = qword_100071678;
  if (!qword_100071678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071678);
  }

  return result;
}

uint64_t sub_100025750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_10002577C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_1000257B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026704(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + 24);
}

uint64_t sub_100025888(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_100050658();
  v2[23] = sub_100050648();
  v4 = sub_100050628();
  v2[24] = v4;
  v2[25] = v3;

  return _swift_task_switch(sub_100025920, v4, v3);
}

uint64_t sub_100025920()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  swift_getKeyPath();
  v0[17] = v2;
  sub_100026704(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v0[26] = *(v2 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context);
  v0[27] = v3;
  v4 = *(v1 + 40);
  v0[28] = v4;

  v5 = v3;
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_100025A70;

  return sub_10002CD74(v5, v4);
}

uint64_t sub_100025A70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v5 = *(v3 + 200);
  v6 = *(v3 + 192);
  if (v1)
  {
    v7 = sub_100026088;
  }

  else
  {
    v7 = sub_100025BCC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100025BCC()
{
  v1 = v0[30];

  if (!v1)
  {
    sub_1000266A0();
    swift_allocError();
    *v11 = 0u;
    v11[1] = 0u;
    swift_willThrow();
    swift_getErrorValue();
    v12 = sub_10001F260(v0[11], v0[12]);
    v13 = [v12 userInfo];
    v14 = sub_100050418();

    v15 = sub_100050518();
    if (*(v14 + 16))
    {
      v17 = sub_10004A138(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_100015440(*(v14 + 56) + 32 * v17, (v0 + 2));

        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_16:
          swift_allocError();
          *v32 = 0u;
          v32[1] = 0u;
          goto LABEL_17;
        }

        v21 = v0[13];
        v20 = v0[14];
        v22 = [v12 userInfo];
        v23 = sub_100050418();

        v24 = sub_100050518();
        if (*(v23 + 16))
        {
          v34 = v21;
          v26 = sub_10004A138(v24, v25);
          v28 = v27;

          if (v28)
          {
            sub_100015440(*(v23 + 56) + 32 * v26, (v0 + 6));

            if (swift_dynamicCast())
            {
              v29 = v0[15];
              v30 = v0[16];
              swift_allocError();
              *v31 = v34;
              v31[1] = v20;
              v31[2] = v29;
              v31[3] = v30;
LABEL_17:
              swift_willThrow();

              v10 = v0[1];
              goto LABEL_18;
            }

            goto LABEL_15;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

LABEL_15:

    goto LABEL_16;
  }

  v2 = v0[30];
  v3 = v0[26];
  swift_getKeyPath();
  v0[19] = v3;
  sub_100026704(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);

  sub_10004FB58();

  v4 = *(v3 + 136);

  if (v4)
  {
    v5 = objc_allocWithZone(NSAttributedString);
    v6 = sub_1000504E8();
    v7 = [v5 initWithString:v6];

    [v2 appendAttributedString:v7];
  }

  v8 = v0[26];
  swift_getKeyPath();
  v0[20] = v8;
  sub_100026704(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  if (*(v8 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
  {

    sub_100050698();
  }

  v9 = v0[28];
  sub_1000290EC(0);
  [v9 setCompletedUnitCount:100];
  sub_10004F8B8();

  v10 = v0[1];
LABEL_18:

  return v10();
}

uint64_t sub_100026088()
{

  swift_getErrorValue();
  v1 = sub_10001F260(v0[11], v0[12]);
  v2 = [v1 userInfo];
  v3 = sub_100050418();

  v4 = sub_100050518();
  if (!*(v3 + 16))
  {

    goto LABEL_9;
  }

  v6 = sub_10004A138(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_100015440(*(v3 + 56) + 32 * v6, (v0 + 2));

  if (swift_dynamicCast())
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = [v1 userInfo];
    v12 = sub_100050418();

    v13 = sub_100050518();
    if (*(v12 + 16))
    {
      v15 = sub_10004A138(v13, v14);
      v17 = v16;

      if (v17)
      {
        sub_100015440(*(v12 + 56) + 32 * v15, (v0 + 6));

        if (swift_dynamicCast())
        {
          v18 = v0[15];
          v19 = v0[16];
          sub_1000266A0();
          swift_allocError();
          *v20 = v10;
          v20[1] = v9;
          v20[2] = v18;
          v20[3] = v19;
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_1000266A0();
  swift_allocError();
  *v21 = 0u;
  v21[1] = 0u;
LABEL_11:
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100026320()
{

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text;
  v2 = sub_10004F8A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsIntentManager(uint64_t a1)
{
  result = qword_1000716D8;
  if (!qword_1000716D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026438(uint64_t a1)
{
  result = sub_10004F8A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002652C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000504B8();
  __chkstk_darwin(v8 - 8);
  if (a2 >= 2)
  {
    v10 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1000504A8();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      sub_100050498(v13);
      v14._countAndFlagsBits = a1;
      v14._object = a2;
      sub_100050488(v14);
      v15._countAndFlagsBits = 10;
      v15._object = 0xE100000000000000;
      sub_100050498(v15);
      v11._countAndFlagsBits = a3;
      v11._object = a4;
    }

    else
    {
      sub_1000504A8();
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      sub_100050498(v16);
      v11._countAndFlagsBits = a1;
      v11._object = a2;
    }

    sub_100050488(v11);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_100050498(v17);
    return sub_10004F998();
  }

  else
  {

    return sub_10004F978();
  }
}

unint64_t sub_1000266A0()
{
  result = qword_1000717A8;
  if (!qword_1000717A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000717A8);
  }

  return result;
}

uint64_t sub_100026704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002674C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100026764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000267B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100026818(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005070(a3, v25 - v10, &qword_10006F5F8, &qword_1000579B0);
  v12 = sub_100050678();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CBA0(v11, &qword_10006F5F8, &qword_1000579B0);
  }

  else
  {
    sub_100050668();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100050628();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100050558() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);

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

  sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100026B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005070(a3, v25 - v10, &qword_10006F5F8, &qword_1000579B0);
  v12 = sub_100050678();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000CBA0(v11, &qword_10006F5F8, &qword_1000579B0);
  }

  else
  {
    sub_100050668();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100050628();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100050558() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100002814(&qword_1000722A8, &qword_1000591E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);

      return v22;
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

  sub_10000CBA0(a3, &qword_10006F5F8, &qword_1000579B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100002814(&qword_1000722A8, &qword_1000591E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100026E60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004FCE8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1000377F4(&qword_100072270, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v7 = sub_100050428(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1000377F4(&qword_100072278, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v15 = sub_100050448();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100027078(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004FD18();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1000377F4(&qword_100072260, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v7 = sub_100050428(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1000377F4(&qword_100072268, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v15 = sub_100050448();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_100027290(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100050A78();
  sub_100050A88(a1);
  v4 = sub_100050AA8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10002735C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004F958();
  v4 = sub_1000276B4(v3, v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10006EA08 != -1)
  {
    swift_once();
  }

  v5 = sub_100050188();
  sub_1000071F4(v5, qword_10007B510);
  v6 = v3;
  v7 = sub_100050168();
  v8 = sub_100050758();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error occurred: %@, but handoff to Montara", v9, 0xCu);
    sub_10000CBA0(v10, &qword_100072230, &qword_100058ED0);
  }

  type metadata accessor for RewritingModel(0);
  if (sub_10002AFD4())
  {
    v12 = v6;
    v3 = sub_100050168();
    v13 = sub_100050738();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v3, v13, "%@ occurred while in handoff, this is not expected", v14, 0xCu);
      sub_10000CBA0(v15, &qword_100072230, &qword_100058ED0);

      return v4 & 1;
    }

LABEL_12:
    return v4 & 1;
  }

  v17 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState;
  if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) == 1)
  {

    *(v2 + v17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return v4 & 1;
}

uint64_t sub_1000276B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100050028();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10000BAFC() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100050018();
  v7 = sub_100050008();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v13[0] = a2;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  if (!*(a2 + 96))
  {
    v9 = *(a2 + 72);
    if (v9 != 9)
    {
      if (v9 == 5)
      {
        v8 = sub_1000278F4();
        return v8 & 1;
      }

LABEL_11:
      v8 = sub_100027AF8();
      return v8 & 1;
    }

    if (sub_100027AF8())
    {
      v13[3] = &type metadata for WritingTools;
      v13[4] = sub_100038A58();
      LOBYTE(v13[0]) = 15;
      v10 = sub_10004FBA8();
      sub_10000CC70(v13);
      v8 = v10;
      return v8 & 1;
    }

LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  swift_getKeyPath();
  v13[0] = a2;
  sub_10004FB58();

  if (*(a2 + 96) != 2)
  {
    goto LABEL_14;
  }

  v8 = 0;
  if (*(a2 + 72) == 1 && *(a2 + 80) == 0)
  {
    goto LABEL_11;
  }

  return v8 & 1;
}

uint64_t sub_1000278F4()
{
  sub_10000E5D8(0, &qword_100070180, NSError_ptr);
  sub_100038AAC();
  v1 = v0;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = sub_10004F958();

  v4 = [v3 domain];

  v5 = sub_100050518();
  v7 = v6;

  if (v5 == sub_100050518() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1000509B8();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v1;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v13 = v12;
  }

  v14 = sub_10004F958();

  v15 = [v14 code];

  v16 = vdupq_n_s64(v15);
  return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_10006A108, v16), vceqq_s64(unk_10006A118, v16)), vuzp1q_s32(vceqq_s64(xmmword_10006A128, v16), vceqq_s64(unk_10006A138, v16))))) & 1;
}

uint64_t sub_100027AF8()
{
  sub_10000E5D8(0, &qword_100070180, NSError_ptr);
  sub_100038AAC();
  v1 = v0;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = sub_10004F958();

  v4 = [v3 domain];

  v5 = sub_100050518();
  v7 = v6;

  if (v5 == sub_100050518() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1000509B8();

    if ((v10 & 1) == 0)
    {
      type metadata accessor for SummarizationClientError(0);
      v11 = v1;
      if (swift_dynamicCast())
      {
        v12 = sub_1000503F8();
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    }
  }

  v13 = v1;
  if (sub_1000509A8())
  {
  }

  else
  {
    swift_allocError();
    *v14 = v13;
  }

  v15 = sub_10004F958();

  v16 = [v15 code];

  v12 = v16 == 35;
  return v12 & 1;
}

id sub_100027D10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100027DC8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100011960(v1);
}

uint64_t sub_100027DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_100027EC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 96);
  *(a2 + 24) = v7;
  return sub_100013C24(v4, v5, v6, v7);
}

uint64_t sub_100027F84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_100013C24(*a1, v2, v3, v4);
  return sub_100011C9C(v1, v2, v3, v4);
}

unint64_t sub_100027FE8()
{
  result = sub_100004A54(&_swiftEmptyArrayStorage);
  qword_10007B488 = result;
  return result;
}

uint64_t sub_100028088(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_10002818C()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v1 = *(v0 + 96);
  if (v1 == 255)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  swift_getKeyPath();
  sub_10000A594(v2, v3, v4, v1);
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__isForEditableContent);
  swift_getKeyPath();
  sub_10004FB58();

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__wantsInlineEditing);
  swift_getKeyPath();
  sub_10004FB58();

  if (v5 != 1)
  {
    sub_100013054(v2, v3, v4, v1);
    return 0;
  }

  if (v1)
  {
LABEL_18:
    result = sub_1000508D8("Fatal error", 11, 2, 0xD000000000000069, 0x80000001000531D0, "WritingToolsAppIntentsExtension/RewritingModel.swift", 52, 2, 565, 0);
    __break(1u);
    return result;
  }

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  sub_100013054(v2, v3, v4, 0);
  if (v2 > 5u)
  {
    if (v2 - 6 >= 2)
    {
      if (v2 == 8)
      {
        if (v8)
        {
          return (v6 >> 2) & 1;
        }
      }

      else if (v8)
      {
        return (v6 >> 3) & 1;
      }
    }

    return 0;
  }

  if (v2 - 2 < 4)
  {
    return v8;
  }

  result = v8;
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100028450()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
}

uint64_t sub_1000284F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  return result;
}

uint64_t sub_1000285A8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_1000286B8()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_100028764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);
}

uint64_t sub_100028818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions;
  if (sub_10000E218(*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

void sub_100028960(void *a1)
{
  v2 = v1;
  v4 = sub_10004FAD8();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31 = v1;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  v8 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    v31 = v2;
    sub_10004FB58();

    if (!*(v2 + v7))
    {
      if (!a1)
      {
        return;
      }

      if (qword_10006E9F0 != -1)
      {
        swift_once();
      }

      v13 = [a1 uuid];
      sub_10004FAB8();

      swift_beginAccess();
      sub_100047EC0(0, v6);
      goto LABEL_29;
    }

    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v27 = &v27;
      __chkstk_darwin(KeyPath);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB48();
    }

    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString))
    {
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      sub_10004FB48();
    }

    v15 = v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16))
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
    }

    else
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      *(&v27 - 3) = 0;
      *(&v27 - 2) = 0;
      *(&v27 - 4) = v2;
      *(&v27 - 8) = 1;
      v31 = v2;
      sub_10004FB48();
    }

    sub_100012198(0);
    v17 = *(v2 + 136);
    v28 = v4;
    if (v17)
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v27 - 2) = v2;
      *(&v27 - 1) = 0;
      v31 = v2;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB48();

      if (*(v2 + 144))
      {
LABEL_20:
        v19 = swift_getKeyPath();
        __chkstk_darwin(v19);
        *(&v27 - 2) = v2;
        *(&v27 - 8) = 0;
        v31 = v2;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        sub_10004FB48();

LABEL_25:
        v20 = v28;
        v21 = sub_100003BDC(&_swiftEmptyArrayStorage);
        sub_10002A730(v21);
        v22 = sub_100003DC4(&_swiftEmptyArrayStorage);
        sub_10002A780(v22);
        v23 = sub_100003FC8(&_swiftEmptyArrayStorage);
        sub_10002A954(v23);
        if (qword_10006E9F0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        v31 = v2;
        sub_10004FB58();

        v24 = *(v2 + v7);
        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = [v24 uuid];
        sub_10004FAB8();

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = qword_10007B488;
        qword_10007B488 = 0x8000000000000000;
        sub_10004C4F8(v2, v6, isUniquelyReferenced_nonNull_native);
        (*(v29 + 8))(v6, v20);
        qword_10007B488 = v30;
LABEL_29:
        swift_endAccess();
        return;
      }
    }

    else
    {
      if (sub_10002818C())
      {
        sub_100012E5C();
      }

      *(v2 + 136) = 0;
      if (*(v2 + 144))
      {
        goto LABEL_20;
      }
    }

    *(v2 + 144) = 0;
    sub_100012A64(0);
    goto LABEL_25;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v9 = v8;
  v10 = a1;
  v11 = sub_1000507A8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1000290EC(void *a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_100028960(v10);
}

uint64_t sub_1000292B8()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();
}

uint64_t sub_100029364@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);
}

uint64_t sub_100029444(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_100050688();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void sub_1000295E8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100029780()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
}

__n128 sub_100029830@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16);
  result = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000298EC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
  if ((*(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v4 == result && *(v4 + 8) == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_100029A90(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_100029B44@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_100029C28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_1000509B8() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

uint64_t sub_100029D90()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);

  return v1;
}

uint64_t sub_100029E4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_100029F04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1000509B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_10002A0BC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_100070188, NSNumber_ptr);
  v9 = v8;
  v10 = a1;
  v11 = sub_1000507A8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

void *sub_10002A264(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10002A30C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_10002A3F8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_100005070(v5 + v3, a1, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A4D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  return sub_100005070(v3 + v4, a2, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A5A8(uint64_t a1, uint64_t *a2)
{
  sub_100005070(a1, v3, &unk_1000711A0, &qword_100058BF0);
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB48();

  return sub_10000CBA0(v3, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10002A6B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100038980(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10002A7D0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  swift_beginAccess();
}

uint64_t sub_10002A888@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_10002A990(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

uint64_t sub_10002AAE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void *sub_10002AB4C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v6 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      sub_10004FB58();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002ACA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v2 + *a2);
}

void *sub_10002AD48(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_10002AB4C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }
}

void *sub_10002AE84(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v6 = *(a1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      sub_10004FB58();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002AFD4()
{
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState);
}

uint64_t sub_10002B07C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_10002B130(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_10002B248()
{
  v1 = v0;
  v2 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_100050678();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100050658();

  v6 = sub_100050648();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_10002684C(0, 0, v4, &unk_100058D50, v7);
}

uint64_t sub_10002B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004FAD8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_100050658();
  v4[12] = sub_100050648();
  v7 = sub_100050628();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10002B460, v7, v6);
}

uint64_t sub_10002B460()
{
  v1 = v0[8];
  swift_getKeyPath();
  v0[5] = v1;
  v0[15] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v0[16] = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v2 = *(v1 + 104);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_29;
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v3;
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_28:
  v38 = sub_1000508E8();
  v0[18] = v38;
  if (!v38)
  {
    goto LABEL_29;
  }

LABEL_4:
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID;
  v0[19] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v0[20] = v4;

  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    v9 = v0[17];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_100050878();
    }

    else
    {
      if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v9 + 8 * v5 + 32);
    }

    v11 = v10;
    v0[21] = v10;
    v0[22] = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = v0[8];
    swift_getKeyPath();
    v0[6] = v12;

    sub_10004FB58();

    v13 = *(v12 + 104);
    v14 = v0[17];
    if (!v13)
    {
      break;
    }

    v15 = sub_10000D9F0(v14, v13);

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

    v16 = v0[20];
    v17 = v0[8];
    v18 = [v11 uuid];
    sub_10004FAB8();

    swift_getKeyPath();
    v0[7] = v17;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    sub_10004FB58();

    v19 = *(v17 + v16);
    if (*(v19 + 16))
    {
      v20 = v0[11];

      v21 = sub_10004A0A0(v20);
      if (v22)
      {
        v28 = v0[10];
        v27 = v0[11];
        v29 = v0[9];
        v30 = *(*(v19 + 56) + 8 * v21);
        v0[23] = v30;
        v31 = *(v28 + 8);
        v32 = v30;
        v31(v27, v29);

        v33 = [v11 range];
        v35 = v34;
        v36 = swift_task_alloc();
        v0[24] = v36;
        *v36 = v0;
        v36[1] = sub_10002B978;

        return sub_100035E9C(v32, v33, v35, v11, 1);
      }
    }

    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];

    (*(v7 + 8))(v6, v8);
    v5 = v0[22];
    if (v5 == v0[18])
    {

      goto LABEL_30;
    }
  }

LABEL_17:

  if (qword_10006EA28 != -1)
  {
    swift_once();
  }

  v23 = sub_100050188();
  sub_1000071F4(v23, qword_10007B570);
  v24 = sub_100050168();
  v25 = sub_100050758();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "contexts changed while sending to results to client - stopping", v26, 2u);
  }

LABEL_30:

  v39 = v0[1];

  return v39();
}

uint64_t sub_10002B978()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10002BA98, v3, v2);
}

uint64_t sub_10002BA98()
{
  v2 = *(v1 + 184);

  v3 = *(v1 + 176);
  if (v3 == *(v1 + 144))
  {
LABEL_2:
  }

  else
  {
    while (1)
    {
      v7 = *(v1 + 136);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = sub_100050878();
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v7 + 8 * v3 + 32);
      }

      v0 = v8;
      *(v1 + 168) = v8;
      *(v1 + 176) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v9 = *(v1 + 64);
      swift_getKeyPath();
      *(v1 + 48) = v9;

      sub_10004FB58();

      v10 = *(v9 + 104);
      v11 = *(v1 + 136);
      if (!v10)
      {
        break;
      }

      v12 = sub_10000D9F0(v11, v10);

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v13 = *(v1 + 160);
      v14 = *(v1 + 64);
      v15 = [v0 uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v1 + 56) = v14;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v16 = *(v14 + v13);
      if (*(v16 + 16))
      {
        v17 = *(v1 + 88);

        v18 = sub_10004A0A0(v17);
        if (v19)
        {
          v27 = *(v1 + 80);
          v26 = *(v1 + 88);
          v28 = *(v1 + 72);
          v29 = *(*(v16 + 56) + 8 * v18);
          *(v1 + 184) = v29;
          v30 = *(v27 + 8);
          v31 = v29;
          v30(v26, v28);

          v32 = [v0 range];
          v34 = v33;
          v35 = swift_task_alloc();
          *(v1 + 192) = v35;
          *v35 = v1;
          v35[1] = sub_10002B978;

          return sub_100035E9C(v31, v32, v34, v0, 1);
        }
      }

      v5 = *(v1 + 80);
      v4 = *(v1 + 88);
      v6 = *(v1 + 72);

      (*(v5 + 8))(v4, v6);
      v3 = *(v1 + 176);
      if (v3 == *(v1 + 144))
      {
        goto LABEL_2;
      }
    }

LABEL_16:

    if (qword_10006EA28 == -1)
    {
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
LABEL_17:
    v20 = sub_100050188();
    sub_1000071F4(v20, qword_10007B570);
    v21 = sub_100050168();
    v22 = sub_100050758();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "contexts changed while sending to results to client - stopping", v23, 2u);
    }
  }

  v24 = *(v1 + 8);

  return v24();
}

uint64_t sub_10002BED8(void *a1)
{
  v2 = v1;
  v4 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_100002814(&qword_100072288, &qword_100059130);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v29 = v2;
  v11 = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  v28 = v10;
  v27 = v11;
  sub_10004FB58();

  if (*(v2 + 96))
  {
    goto LABEL_11;
  }

  v12 = *(v2 + 72);
  v25 = v6;
  if (v12 == 6)
  {
    sub_10004FC78();
  }

  else
  {
    sub_10000ABB4(v12);
  }

  v13 = sub_10004FC88();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  sub_10004FBE8();
  swift_allocObject();
  sub_10004FBD8();
  v14 = [a1 attributedText];
  v26 = a1;
  [a1 range];
  sub_100004808(&_swiftEmptyArrayStorage);

  sub_100002814(&qword_100072238, &unk_100059018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100057A10;
  *(inited + 32) = sub_100050518();
  *(inited + 40) = v16;
  swift_getKeyPath();
  v29 = v2;
  sub_10004FB58();

  v17 = *(v2 + 24);
  if (!v17)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_11:
    result = sub_1000508D8("Fatal error", 11, 2, 0, 0xE000000000000000, "WritingToolsAppIntentsExtension/RewritingModel.swift", 52, 2, 176, 0);
    __break(1u);
    return result;
  }

  v18 = [v17 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v18;
  sub_100004808(inited);
  swift_setDeallocating();
  sub_10000CBA0(inited + 32, &qword_10006ED38, &unk_100055980);
  v19 = sub_10004FBC8();
  v21 = v20;

  if (sub_10002818C())
  {
    [v26 setRange:{v19, v21}];
  }

  else
  {
    v22 = v26;
    v30.location = [v26 range];
    v31.location = v19;
    v31.length = v21;
    v23 = NSUnionRange(v30, v31);
    [v22 setRange:{v23.location, v23.length}];
  }

  sub_10000CBA0(v9, &qword_100072288, &qword_100059130);
  return 1;
}

uint64_t sub_10002C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000508A8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_100050658();
  v5[7] = sub_100050648();
  v8 = sub_100050628();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_10002C960, v8, v7);
}

uint64_t sub_10002C960()
{
  sub_1000509F8();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10002CA2C;

  return sub_10003787C(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10002CA2C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_100039194;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_10002CBC0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10002CBC0()
{

  if (qword_10006EA28 != -1)
  {
    swift_once();
  }

  v1 = sub_100050188();
  sub_1000071F4(v1, qword_10007B570);
  swift_errorRetain();
  v2 = sub_100050168();
  v3 = sub_100050738();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Assigning error after 0.5s delay: %@", v4, 0xCu);
    sub_10000CBA0(v5, &qword_100072230, &qword_100058ED0);
  }

  v7 = *(v0 + 16);

  swift_errorRetain();
  sub_100012198(v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002CD74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100050658();
  v3[10] = sub_100050648();
  v5 = sub_100050628();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_10002CE10, v5, v4);
}

uint64_t sub_10002CE10()
{
  v1 = v0[9];
  swift_getKeyPath();
  v0[2] = v1;
  v0[13] = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v0[14] = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v2 = *(v1 + 96);
  if (v2 == 255)
  {

    goto LABEL_5;
  }

  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = v0[9];
  swift_getKeyPath();
  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v0[3] = v6;
  v0[15] = v7;
  sub_10000A594(v3, v4, v5, v2);
  v0[16] = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session;
  if (*(v6 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session))
  {

    sub_100013054(v3, v4, v5, v2);
LABEL_5:
    v9 = v0[1];

    return v9(0);
  }

  v21 = v2;
  v11 = v0[9];
  sub_1000290EC([objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0]);
  swift_getKeyPath();
  v0[4] = v11;
  sub_10004FB58();

  v12 = *(v6 + v8);
  if (v12)
  {
    v13 = sub_10000AF9C(v3, v4, v5, v21);
    v14 = v12;
    sub_100013054(v3, v4, v5, v21);
    [v14 setCompositionSessionType:v13];
  }

  else
  {
    sub_100013054(v3, v4, v5, v21);
  }

  v15 = v0[8];
  v16 = v0[7];
  sub_100002814(&qword_100072280, &qword_100059100);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100058BE0;
  *(v17 + 32) = v16;
  v18 = v16;
  sub_100011E90(v17);
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_10002D19C;
  v20 = v0[7];

  return sub_10002D404(v20, 1, 0, v15);
}

uint64_t sub_10002D19C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10002D2BC, v3, v2);
}

uint64_t sub_10002D2BC()
{
  v1 = v0[9];

  swift_getKeyPath();
  v0[5] = v1;
  sub_10004FB58();

  if (*(v1 + 120))
  {
    swift_willThrow();
    swift_errorRetain();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[9];
    swift_getKeyPath();
    v0[6] = v4;
    sub_10004FB58();

    v5 = [*(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) mutableCopy];
    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_10002D404(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 1912) = v4;
  *(v5 + 1904) = a4;
  *(v5 + 2737) = a3;
  *(v5 + 2736) = a2;
  *(v5 + 1896) = a1;
  sub_100002814(&qword_1000721D8, &qword_100058E10);
  *(v5 + 1920) = swift_task_alloc();
  sub_100002814(&qword_1000721E0, &qword_100058E18);
  *(v5 + 1928) = swift_task_alloc();
  sub_100002814(&unk_100070190, &qword_100058E20);
  *(v5 + 1936) = swift_task_alloc();
  *(v5 + 1944) = swift_task_alloc();
  *(v5 + 1952) = swift_task_alloc();
  *(v5 + 1960) = swift_task_alloc();
  sub_100002814(&qword_1000721E8, &qword_100058E28);
  *(v5 + 1968) = swift_task_alloc();
  v6 = sub_100002814(&qword_1000721F0, &qword_100058E30);
  *(v5 + 1976) = v6;
  *(v5 + 1984) = *(v6 - 8);
  *(v5 + 1992) = swift_task_alloc();
  sub_100002814(&qword_1000721F8, &qword_100058E38);
  *(v5 + 2000) = swift_task_alloc();
  sub_100002814(&qword_100072200, &qword_100058E40);
  *(v5 + 2008) = swift_task_alloc();
  v7 = sub_1000501B8();
  *(v5 + 2016) = v7;
  *(v5 + 2024) = *(v7 - 8);
  *(v5 + 2032) = swift_task_alloc();
  v8 = sub_1000501D8();
  *(v5 + 2040) = v8;
  *(v5 + 2048) = *(v8 - 8);
  *(v5 + 2056) = swift_task_alloc();
  v9 = sub_100002814(&qword_100072208, &qword_100058E48);
  *(v5 + 2064) = v9;
  *(v5 + 2072) = *(v9 - 8);
  *(v5 + 2080) = swift_task_alloc();
  v10 = sub_100002814(&qword_100072210, &unk_100058E50);
  *(v5 + 2088) = v10;
  *(v5 + 2096) = *(v10 - 8);
  *(v5 + 2104) = swift_task_alloc();
  sub_100002814(&qword_100070160, &qword_100057D20);
  *(v5 + 2112) = swift_task_alloc();
  *(v5 + 2120) = swift_task_alloc();
  *(v5 + 2128) = swift_task_alloc();
  v11 = sub_100002814(&qword_100072218, &unk_100058E60);
  *(v5 + 2136) = v11;
  *(v5 + 2144) = *(v11 - 8);
  *(v5 + 2152) = swift_task_alloc();
  v12 = sub_10004FC88();
  *(v5 + 2160) = v12;
  *(v5 + 2168) = *(v12 - 8);
  *(v5 + 2176) = swift_task_alloc();
  v13 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  *(v5 + 2184) = v13;
  *(v5 + 2192) = *(v13 - 8);
  *(v5 + 2200) = swift_task_alloc();
  v14 = sub_100002814(&qword_100072220, &qword_100058E70);
  *(v5 + 2208) = v14;
  *(v5 + 2216) = *(v14 - 8);
  *(v5 + 2224) = swift_task_alloc();
  v15 = sub_100002814(&qword_100072228, &qword_100058E78);
  *(v5 + 2232) = v15;
  *(v5 + 2240) = *(v15 - 8);
  *(v5 + 2248) = swift_task_alloc();
  *(v5 + 2256) = swift_task_alloc();
  v16 = sub_10004FAD8();
  *(v5 + 2264) = v16;
  *(v5 + 2272) = *(v16 - 8);
  *(v5 + 2280) = swift_task_alloc();
  *(v5 + 2288) = swift_task_alloc();
  *(v5 + 2296) = sub_100050658();
  *(v5 + 2304) = sub_100050648();
  v18 = sub_100050628();
  *(v5 + 2312) = v18;
  *(v5 + 2320) = v17;

  return _swift_task_switch(sub_10002DAD8, v18, v17);
}

uint64_t sub_10002DAD8()
{
  v1 = v0;
  sub_100013450();
  v19 = *(v0 + 1912);
  swift_getKeyPath();
  *(v1 + 2328) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  *(v1 + 1464) = v19;
  *(v1 + 2336) = sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v20 = *(v19 + 72);
  *(v1 + 2344) = v20;
  v21 = *(v19 + 80);
  *(v1 + 2352) = v21;
  v22 = *(v19 + 88);
  *(v1 + 2360) = v22;
  if (*(v19 + 96) > 1u || *(v19 + 96))
  {
    return sub_1000508D8("Fatal error", 11, 2, 0xD000000000000048, 0x8000000100053150, "WritingToolsAppIntentsExtension/RewritingModel.swift", 52, 2, 328, 0);
  }

  if (((1 << v20) & 0x33F) == 0)
  {
    if (v20 == 6)
    {
      v67 = *(v1 + 1912);
      v68 = *(v1 + 1896);
      sub_10000A594(v20, v21, v22, 0);
      v69 = [v68 attributedText];
      v70 = [v68 range];
      v72 = [v69 attributedSubstringFromRange:{v70, v71}];

      v73 = [v72 string];
      v74 = sub_100050518();
      v76 = v75;

      *(v1 + 2632) = v76;

      sub_100029C00(v74, v76);
      *(v1 + 1320) = 0;
      *(v1 + 1328) = 0xE000000000000000;
      swift_getKeyPath();
      *(v1 + 2640) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
      *(v1 + 1400) = v67;
      *(v1 + 2648) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v77 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      *(v1 + 2656) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v67 + v77, v1 + 600, &unk_1000711A0, &qword_100058BF0);
      if (*(v1 + 624))
      {
        v78 = *(v1 + 1912);
        sub_10000D6CC(v1 + 600, v1 + 720);
        sub_10000CBA0(v1 + 600, &unk_1000711A0, &qword_100058BF0);
        sub_10000D634((v1 + 720), *(v1 + 744));
        swift_getKeyPath();
        *(v1 + 1888) = v78;
        sub_10004FB58();

        v79 = *(v19 + 96);
        if (v79 == 255)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v80 = v1;
        v82 = *(v19 + 80);
        v81 = *(v19 + 88);
        v83 = *(v19 + 72);
        sub_10000A594(v83, v82, v81, *(v19 + 96));
        sub_1000163C8(v83, v82, v81, v79, 0, 0, 0, 0, 2);
        sub_100013054(v83, v82, v81, v79);
        sub_10000CC70((v80 + 720));
        v1 = v80;
      }

      else
      {
        sub_10000CBA0(v1 + 600, &unk_1000711A0, &qword_100058BF0);
      }

      v150 = *(v1 + 2032);
      v151 = *(v1 + 2024);
      v152 = *(v1 + 2016);
      v153 = *(v1 + 1912);
      sub_100050238();
      swift_allocObject();
      sub_100050228();
      (*(v151 + 104))(v150, enum case for SummarizationClient.TextAssistantSummarizationOptions.Source.textAssistant(_:), v152);
      swift_getKeyPath();
      *(v1 + 1360) = v153;
      sub_10004FB58();

      v9 = *(v153 + 24);
      if (!v9)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      [v9 pid];
      sub_100050198();
      v161 = *(v1 + 2280);
      v162 = *(v1 + 2272);
      v163 = *(v1 + 2080);
      v164 = *(v1 + 2072);
      v185 = *(v1 + 2064);
      v165 = *(v1 + 2056);
      v166 = *(v1 + 2048);
      v180 = *(v1 + 2264);
      v182 = *(v1 + 2040);
      v167 = *(v1 + 2008);
      v168 = sub_1000501A8();
      (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
      sub_1000501C8();
      sub_10004FAC8();
      sub_10004FAA8();
      v169 = *(v162 + 8);
      *(v1 + 2664) = v169;
      *(v1 + 2672) = (v162 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v169(v161, v180);
      sub_1000501E8();

      (*(v166 + 8))(v165, v182);
      sub_1000506D8();
      (*(v164 + 8))(v163, v185);
      *(v1 + 2680) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString;
      *(v1 + 2688) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
      *(v1 + 2704) = 0;
      *(v1 + 2696) = 0xE000000000000000;
      v125 = sub_100050648();
      *(v1 + 2712) = v125;
      v170 = swift_task_alloc();
      *(v1 + 2720) = v170;
      *v170 = v1;
      v170[1] = sub_100032E10;
      v12 = *(v1 + 2088);
      v9 = *(v1 + 2000);
      v11 = &protocol witness table for MainActor;
      v13 = v1 + 1376;
    }

    else
    {
      v137 = *(v1 + 1912);
      sub_10000A594(v20, v21, v22, 0);
      sub_100004808(&_swiftEmptyArrayStorage);

      sub_100002814(&qword_100072238, &unk_100059018);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_100057A10;
      *(v138 + 32) = sub_100050518();
      *(v138 + 40) = v139;
      swift_getKeyPath();
      *(v1 + 1352) = v137;
      sub_10004FB58();

      v9 = *(v137 + 24);
      if (!v9)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v140 = *(v1 + 1912);
      v141 = *(v1 + 1896);
      v142 = [v9 pid];
      *(v138 + 72) = &type metadata for Int32;
      *(v138 + 48) = v142;
      *(v1 + 2528) = sub_100004808(v138);
      swift_setDeallocating();
      sub_10000CBA0(v138 + 32, &qword_10006ED38, &unk_100055980);
      swift_deallocClassInstance();
      swift_getKeyPath();
      *(v1 + 2536) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
      *(v1 + 1368) = v140;
      *(v1 + 2544) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      v143 = v141;
      sub_10004FB58();

      v144 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      *(v1 + 2552) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v140 + v144, v1 + 680, &unk_1000711A0, &qword_100058BF0);
      if (*(v1 + 704))
      {
        v145 = *(v1 + 1912);
        sub_10000D6CC(v1 + 680, v1 + 480);
        sub_10000CBA0(v1 + 680, &unk_1000711A0, &qword_100058BF0);
        sub_10000D634((v1 + 480), *(v1 + 504));
        swift_getKeyPath();
        *(v1 + 1576) = v145;
        sub_10004FB58();

        v146 = *(v19 + 96);
        if (v146 == 255)
        {
LABEL_98:
          __break(1u);
          return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
        }

        v148 = *(v19 + 80);
        v147 = *(v19 + 88);
        v149 = *(v19 + 72);
        sub_10000A594(v149, v148, v147, *(v19 + 96));
        sub_1000163C8(v149, v148, v147, v146, 0, 0, 0, 0, 2);
        sub_100013054(v149, v148, v147, v146);
        sub_10000CC70((v1 + 480));
      }

      else
      {
        sub_10000CBA0(v1 + 680, &unk_1000711A0, &qword_100058BF0);
      }

      v179 = *(v1 + 2224);
      v189 = *(v1 + 2216);
      v154 = *(v1 + 2200);
      v181 = *(v1 + 2192);
      v184 = *(v1 + 2184);
      v187 = *(v1 + 2208);
      v155 = *(v1 + 2176);
      v156 = *(v1 + 2168);
      v174 = *(v1 + 2152);
      v172 = *(v1 + 2160);
      v173 = *(v1 + 2144);
      v176 = *(v1 + 2136);
      v157 = *(v1 + 1896);
      sub_10004FBE8();
      swift_allocObject();
      sub_10004FBD8();
      v158 = [v157 attributedText];
      [v157 range];
      sub_10000ABB4(7u);

      sub_10004FBB8();

      (*(v156 + 8))(v155, v172);
      v159 = swift_task_alloc();
      *(v159 + 16) = v157;
      *(v159 + 24) = v154;
      sub_100002814(&qword_100072240, &qword_100059028);
      (*(v173 + 104))(v174, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v176);
      sub_1000506F8();

      (*(v181 + 8))(v154, v184);
      sub_1000506D8();
      (*(v189 + 8))(v179, v187);
      *(v1 + 2560) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
      *(v1 + 2568) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString;
      *(v1 + 2576) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback;
      *(v1 + 2584) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
      *(v1 + 2592) = TCTextCompositionAssistantOptionKeyModelPromptLocale;
      *(v1 + 2600) = TCTextCompositionAssistantOptionKeyModelPromptTokenCount;
      v125 = sub_100050648();
      *(v1 + 2608) = v125;
      v160 = swift_task_alloc();
      *(v1 + 2616) = v160;
      *v160 = v1;
      v160[1] = sub_100031630;
      v12 = *(v1 + 2232);
      v11 = &protocol witness table for MainActor;
      v9 = v1 + 88;
      v13 = v1 + 1392;
    }

LABEL_65:
    v10 = v125;

    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v9, v10, v11, v12, v13);
  }

  v23 = *(v1 + 1912);
  v186 = v20;
  sub_10000A594(v20, v21, v22, 0);
  sub_100004808(&_swiftEmptyArrayStorage);

  sub_100002814(&qword_100072238, &unk_100059018);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100057A10;
  *(v24 + 32) = sub_100050518();
  *(v24 + 40) = v25;
  swift_getKeyPath();
  *(v1 + 1584) = v23;
  sub_10004FB58();

  v9 = *(v23 + 24);
  if (!v9)
  {
    goto LABEL_93;
  }

  v26 = *(v1 + 1912);
  v27 = [v9 pid];
  *(v24 + 72) = &type metadata for Int32;
  *(v24 + 48) = v27;
  v28 = sub_100004808(v24);
  swift_setDeallocating();
  sub_10000CBA0(v24 + 32, &qword_10006ED38, &unk_100055980);
  swift_deallocClassInstance();
  v29 = sub_100050518();
  v31 = v30;
  swift_getKeyPath();
  *(v1 + 2368) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  *(v1 + 1600) = v26;
  *(v1 + 2376) = sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v177 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions;
  v32 = *(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions);
  v33 = 3;
  if ((v32 & 0xC) != 0)
  {
    v34 = 3;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34 | v32;
  if (v32)
  {
    v33 = v35;
  }

  *(v1 + 1048) = &type metadata for UInt;
  *(v1 + 1024) = v33;
  sub_100005060((v1 + 1024), (v1 + 992));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004C22C((v1 + 992), v29, v31, isUniquelyReferenced_nonNull_native);

  if (v22)
  {
    v37 = sub_100050518();
    v39 = v38;
    *(v1 + 856) = &type metadata for String;
    *(v1 + 832) = v21;
    *(v1 + 840) = v22;
    sub_100005060((v1 + 832), (v1 + 800));
    v40 = v186;
    sub_10000A594(v186, v21, v22, 0);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v28;
    v42 = v1;
    sub_10004C22C((v1 + 800), v37, v39, v41);

    v43 = v191;
  }

  else
  {
    v43 = v28;
    v42 = v1;
    v40 = v186;
  }

  if (v40 - 2 >= 4 && v40)
  {
    v61 = v42;
    v62 = v43;
  }

  else
  {
    v61 = v42;
    v62 = v43;
    if ((*(v42 + 2736) & 1) == 0)
    {
      v63 = sub_100050518();
      v65 = v64;
      *(v42 + 920) = &type metadata for Int;
      *(v42 + 896) = sub_1000380E8(0x7FFFFFFFFFFFFFFFuLL);
      sub_100005060((v42 + 896), (v42 + 864));
      v66 = swift_isUniquelyReferenced_nonNull_native();
      sub_10004C22C((v42 + 864), v63, v65, v66);
    }
  }

  if (sub_10002818C())
  {
    v84 = *(v61 + 1912);
    swift_getKeyPath();
    *(v61 + 1832) = v84;
    sub_10004FB58();

    if ((*(v26 + v177) & 0x10) != 0)
    {
      v86 = 1;
    }

    else
    {
      v85 = *(v61 + 1912);
      swift_getKeyPath();
      *(v61 + 1840) = v85;
      sub_10004FB58();

      v86 = *(v85 + 64) ^ 1;
    }

    v87 = sub_100050518();
    v89 = v88;
    *(v61 + 984) = &type metadata for Bool;
    *(v61 + 960) = v86 & 1;
    sub_100005060((v61 + 960), (v61 + 928));
    v90 = swift_isUniquelyReferenced_nonNull_native();
    sub_10004C22C((v61 + 928), v87, v89, v90);
  }

  *(v61 + 2384) = v62;
  v91 = *(v61 + 1912);
  swift_getKeyPath();
  *(v61 + 1624) = v91;
  sub_10004FB58();

  v92 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  *(v61 + 2392) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v91 + v92, v61 + 400, &unk_1000711A0, &qword_100058BF0);
  if (*(v61 + 424))
  {
    v93 = *(v61 + 1912);
    sub_10000D6CC(v61 + 400, v61 + 200);
    sub_10000CBA0(v61 + 400, &unk_1000711A0, &qword_100058BF0);
    sub_10000D634((v61 + 200), *(v61 + 224));
    swift_getKeyPath();
    *(v61 + 1824) = v93;
    sub_10004FB58();

    v94 = *(v19 + 96);
    if (v94 == 255)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v95 = v61;
    v97 = *(v19 + 80);
    v96 = *(v19 + 88);
    v98 = *(v19 + 72);
    sub_10000A594(v98, v97, v96, *(v19 + 96));
    sub_1000163C8(v98, v97, v96, v94, v21, v22, 0, 0, 2);
    sub_100013054(v98, v97, v96, v94);
    sub_10000CC70((v95 + 200));
    v61 = v95;
  }

  else
  {
    sub_10000CBA0(v61 + 400, &unk_1000711A0, &qword_100058BF0);
  }

  if (*(v61 + 2737) != 1)
  {
    v115 = *(v61 + 1896);
    v114 = [v115 attributedText];
    [v115 range];
    v116 = v115;
    v113 = *(v61 + 1896);
    goto LABEL_64;
  }

  v99 = *(v61 + 1912);
  v100 = [*(v61 + 1896) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v61 + 1800) = v99;
  sub_10004FB58();

  v101 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v102 = *(v99 + v101);
  if (!*(v102 + 16))
  {
    goto LABEL_69;
  }

  v103 = *(v61 + 2288);

  v104 = sub_10004A0A0(v103);
  if ((v105 & 1) == 0)
  {

LABEL_69:
    (*(*(v61 + 2272) + 8))(*(v61 + 2288), *(v61 + 2264));
    goto LABEL_70;
  }

  v106 = *(v61 + 2288);
  v107 = *(v61 + 2264);
  v108 = *(*(v102 + 56) + 8 * v104);
  v109 = *(*(v61 + 2272) + 8);

  v109(v106, v107);

  if (!(v108 >> 62))
  {
    v110 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v110)
    {
      goto LABEL_56;
    }

    goto LABEL_86;
  }

  v110 = sub_1000508E8();
  if (!v110)
  {
LABEL_86:

LABEL_70:
    sub_100013054(v186, v21, v22, 0);

    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v127 = sub_100050188();
    sub_1000071F4(v127, qword_10007B570);
    v128 = sub_100050168();
    v129 = sub_100050738();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&_mh_execute_header, v128, v129, "Error in follow-up rewriting: Asked to refine text, but current rewritten context is not specified", v130, 2u);
    }

    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_100057A10;
    *(v131 + 32) = sub_100050518();
    *(v131 + 72) = &type metadata for String;
    *(v131 + 40) = v132;
    *(v131 + 48) = 0xD00000000000002BLL;
    *(v131 + 56) = 0x80000001000531A0;
    sub_100004808(v131);
    swift_setDeallocating();
    sub_10000CBA0(v131 + 32, &qword_10006ED38, &unk_100055980);
    swift_deallocClassInstance();
    v133 = objc_allocWithZone(NSError);
    v134 = sub_1000504E8();
    isa = sub_100050408().super.isa;

    v136 = [v133 initWithDomain:v134 code:1 userInfo:isa];

    swift_willThrow();
    v2 = sub_10002735C(v136);
    v3 = *(v61 + 1912);
    if (v2)
    {
      swift_getKeyPath();
      *(v61 + 1640) = v3;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v3 + v4, v61 + 360, &unk_1000711A0, &qword_100058BF0);
      if (*(v61 + 384))
      {
        v5 = *(v61 + 1912);
        sub_10000D6CC(v61 + 360, v61 + 440);
        sub_10000CBA0(v61 + 360, &unk_1000711A0, &qword_100058BF0);
        sub_10000D634((v61 + 440), *(v61 + 464));
        v6 = sub_10001D0E0();
        v8 = v7;
        swift_getKeyPath();
        *(v61 + 1568) = v5;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        sub_10004FB58();

        v14 = *(v5 + 96);
        if (v14 != 255)
        {
          v15 = *(v61 + 1912);
          v17 = v15[10];
          v16 = v15[11];
          v18 = v15[9];
          sub_10000A594(v18, v17, v16, v14);

          sub_100016F2C(v6, v8, v18, v17, v16, v14);

          sub_100013054(v18, v17, v16, v14);

          sub_10000CC70((v61 + 440));
          goto LABEL_28;
        }

        goto LABEL_91;
      }

      v59 = v61 + 360;
    }

    else
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100012198(v136);
      if (qword_10006EA28 != -1)
      {
        swift_once();
      }

      v44 = sub_100050188();
      sub_1000071F4(v44, qword_10007B570);
      swift_errorRetain();
      v45 = sub_100050168();
      v46 = sub_100050738();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v49;
        *v48 = v49;
        _os_log_impl(&_mh_execute_header, v45, v46, "Error occurred in rewriting: %@", v47, 0xCu);
        sub_10000CBA0(v48, &qword_100072230, &qword_100058ED0);
      }

      v50 = *(v61 + 1912);

      swift_getKeyPath();
      *(v61 + 1816) = v50;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v51 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_100005070(v50 + v51, v61 + 520, &unk_1000711A0, &qword_100058BF0);
      if (*(v61 + 544))
      {
        v52 = *(v61 + 1912);
        sub_10000D6CC(v61 + 520, v61 + 280);
        sub_10000CBA0(v61 + 520, &unk_1000711A0, &qword_100058BF0);
        sub_10000D634((v61 + 280), *(v61 + 304));
        swift_getKeyPath();
        *(v61 + 1672) = v52;
        sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
        sub_10004FB58();

        v53 = *(v52 + 96);
        if (v53 != 255)
        {
          v54 = *(v61 + 1912);
          v56 = v54[10];
          v55 = v54[11];
          v57 = v54[9];
          sub_10000A594(v57, v56, v55, v53);

          sub_100016A2C(v136, v57, v56, v55, v53);

          sub_100013054(v57, v56, v55, v53);

          sub_10000CC70((v61 + 280));
          goto LABEL_28;
        }

        goto LABEL_92;
      }

      v59 = v61 + 520;
    }

    sub_10000CBA0(v59, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_28;
  }

LABEL_56:
  v111 = __OFSUB__(v110, 1);
  v9 = v110 - 1;
  if (v111)
  {
    __break(1u);
    goto LABEL_88;
  }

  if ((v108 & 0xC000000000000001) != 0)
  {
LABEL_88:
    v112 = sub_100050878();
    goto LABEL_61;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v9 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v112 = *(v108 + 8 * v9 + 32);
LABEL_61:
  v113 = v112;

  if (sub_10002BED8(v113))
  {
    v114 = [v113 attributedText];
    [v113 range];
LABEL_64:
    *(v61 + 2408) = v113;
    *(v61 + 2400) = v114;
    v117 = *(v61 + 2224);
    v190 = *(v61 + 2216);
    v188 = *(v61 + 2208);
    v118 = *(v61 + 2200);
    v119 = *(v61 + 2192);
    v183 = *(v61 + 2184);
    v120 = *(v61 + 2176);
    v121 = *(v61 + 2168);
    v171 = *(v61 + 2160);
    v122 = *(v61 + 2144);
    v175 = *(v61 + 2152);
    v178 = *(v61 + 2136);
    sub_10004FBE8();
    swift_allocObject();
    v123 = v113;
    sub_10004FBD8();
    sub_10000ABB4(v186);
    sub_10004FBB8();

    (*(v121 + 8))(v120, v171);
    v124 = swift_task_alloc();
    *(v124 + 16) = v123;
    *(v124 + 24) = v118;
    sub_100002814(&qword_100072240, &qword_100059028);
    (*(v122 + 104))(v175, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v178);
    sub_1000506F8();

    (*(v119 + 8))(v118, v183);
    sub_1000506D8();
    (*(v190 + 8))(v117, v188);
    *(v61 + 2416) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions;
    *(v61 + 2424) = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
    v125 = sub_100050648();
    *(v61 + 2432) = v125;
    v126 = swift_task_alloc();
    *(v61 + 2440) = v126;
    *v126 = v61;
    v126[1] = sub_10002FA78;
    v12 = *(v61 + 2232);
    v11 = &protocol witness table for MainActor;
    v9 = v61 + 16;
    v13 = v61 + 1648;
    goto LABEL_65;
  }

  sub_100013054(v186, v21, v22, 0);

LABEL_28:

  v60 = *(v61 + 8);

  return v60();
}

uint64_t sub_10002FA78()
{
  v2 = *v1;
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_100013054(v5, v4, v3, 0);
    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_100035730;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_10002FBD8;
  }

  return _swift_task_switch(v8, v7, v6);
}

void *sub_10002FBD8()
{
  v144 = v0;
  v1 = *(v0 + 16);
  *(v0 + 2456) = v1;
  v3 = *(v0 + 24);
  length = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 2464) = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 2472) = *(v0 + 56);
  *(v0 + 2480) = v5;
  v6 = *(v0 + 80);
  *(v0 + 2488) = *(v0 + 72);
  *(v0 + 2496) = v6;
  if (!v1)
  {
    v13 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1656) = v13;
    sub_10004FB58();

    v14 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString;
    v15 = *(v13 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
    v16 = v15;
    if (!v15)
    {
      v17 = *(v0 + 1896);
      v18 = [v17 attributedText];
      v19 = [v17 range];
      v16 = [v18 attributedSubstringFromRange:{v19, v20}];
    }

    v21 = *(v0 + 1912);
    v22 = v15;
    sub_1000295E8(v16);
    swift_getKeyPath();
    *(v0 + 1664) = v21;
    sub_10004FB58();

    v140 = v14;
    v141 = v13;
    result = *(v13 + v14);
    if (!result)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v23 = *(v0 + 2392);
    v24 = *(v0 + 1912);
    v25 = [result string];
    sub_100050518();

    v26 = sub_1000507C8();
    v28 = v27;
    v30 = v29;

    sub_1000298EC(v26, v28, v30 & 1);
    swift_getKeyPath();
    *(v0 + 1680) = v24;
    sub_10004FB58();

    sub_100005070(v24 + v23, v0 + 320, &unk_1000711A0, &qword_100058BF0);
    if (!*(v0 + 344))
    {
      sub_10000CBA0(v0 + 320, &unk_1000711A0, &qword_100058BF0);
      v70 = v140;
      goto LABEL_54;
    }

    v31 = *(v0 + 1912);
    sub_10000D6CC(v0 + 320, v0 + 240);
    sub_10000CBA0(v0 + 320, &unk_1000711A0, &qword_100058BF0);
    v132 = sub_10000D634((v0 + 240), *(v0 + 264));
    swift_getKeyPath();
    *(v0 + 1704) = v31;
    sub_10004FB58();

    v32 = *(v31 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);
    v131 = *(v31 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1712) = v31;
    v138 = v32;

    sub_10004FB58();

    v33 = *(v31 + 96);
    if (v33 == 255)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v34 = *(v31 + 72);
    v35 = *(v31 + 80);
    v36 = *(v31 + 88);
    v37 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1720) = v37;
    v137 = v34;
    v136 = v36;
    sub_10000A594(v34, v35, v36, v33);
    sub_10004FB58();

    v38 = *(v37 + 136);
    swift_getKeyPath();
    *(v0 + 1728) = v37;
    sub_10004FB58();

    result = *(v141 + v140);
    if (!result)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v39 = v33;
    v126 = v38;
    v40 = *(v0 + 1912);
    v41 = [result string];
    sub_100050518();

    swift_getKeyPath();
    *(v0 + 1736) = v40;
    sub_10004FB58();

    v42 = *(v40 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
    swift_getKeyPath();
    *(v0 + 1744) = v40;
    v135 = v42;

    sub_10004FB58();

    v43 = *(v40 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1752) = v40;
    v128 = v43;
    v134 = v43;
    sub_10004FB58();

    v44 = *v132;
    v45 = qword_10006EA10;
    v129 = *(v40 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
    v133 = v129;
    if (v45 != -1)
    {
      swift_once();
    }

    v46 = sub_100050188();
    sub_1000071F4(v46, qword_10007B528);

    sub_100013C24(v34, v35, v136, v39);
    v47 = sub_100050168();
    v48 = sub_100050718();

    sub_100013054(v137, v35, v136, v39);
    v125 = v48;
    v130 = v44;
    v127 = v39;
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v49 = 136643075;
      *(v49 + 4) = sub_100046C30(v131, v138, &v143);
      *(v49 + 12) = 2081;
      sub_10000ACE8(v137, v35, v136, v39);
      v50 = sub_1000504E8();

      v51 = [v50 key];

      v52 = sub_100050518();
      v54 = v53;

      v55 = sub_100046C30(v52, v54, &v143);

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v47, v125, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    if (v126)
    {
      if (qword_10006E908 != -1)
      {
        swift_once();
      }

      v71 = qword_10007B358;
      v56 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
      v73 = v56[2];
      v72 = v56[3];
      if (v73 >= v72 >> 1)
      {
        v56 = sub_100037F0C((v72 > 1), v73 + 1, 1, v56);
      }

      v56[2] = v73 + 1;
      v56[v73 + 4] = v71;
      if ((v126 & 2) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v56 = &_swiftEmptyArrayStorage;
      if ((v126 & 2) == 0)
      {
LABEL_36:
        sub_100002814(&qword_100070168, &qword_100057A70);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_100056D20;
        if (qword_10006E8A0 != -1)
        {
          swift_once();
        }

        v78 = qword_10007B2F0;
        *(v77 + 32) = qword_10007B2F0;
        v79 = v78;
        v80 = sub_1000504E8();

        v81 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v77 + 40) = v80;
        *(v77 + 48) = v81;
        v82 = v81;
        v83 = sub_10001761C(v137, v35, v136, v127);
        sub_100013054(v137, v35, v136, v127);
        *(v77 + 56) = v83;
        if (qword_10006E8A8 != -1)
        {
          swift_once();
        }

        v84 = qword_10007B2F8;
        *(v77 + 64) = qword_10007B2F8;
        type metadata accessor for IAPayloadValue(0);
        v85 = v84;
        isa = sub_1000505D8().super.isa;

        *(v77 + 72) = isa;
        v87 = sub_100004938(v77);
        swift_setDeallocating();
        sub_100002814(&qword_100070170, &qword_100057A78);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v88 = IAPayloadKeyWritingToolsResultText;
        v89 = sub_1000504E8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v87;
        sub_10004C390(v89, v88, isUniquelyReferenced_nonNull_native);

        v91 = v143;
        if (v135)
        {
          v92 = IAPayloadKeyWritingToolsInputLanguage;
          v93 = sub_1000504E8();
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_10004C390(v93, v92, v94);

          v91 = v143;
        }

        if (v128)
        {
          v95 = qword_10006E8F0;
          v96 = v134;
          if (v95 != -1)
          {
            swift_once();
          }

          v97 = qword_10007B340;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_10004C390(v96, v97, v98);

          v91 = v143;
        }

        if (v129)
        {
          v99 = qword_10006E8F8;
          v100 = v133;
          if (v99 != -1)
          {
            swift_once();
          }

          v101 = qword_10007B348;
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v143 = v91;
          sub_10004C390(v100, v101, v102);
        }

        v103 = *(v0 + 2272);
        v104 = *(v0 + 2264);
        v105 = *(v0 + 2128);
        v106 = IASignalWritingToolsResultsGenerated;
        v107 = IAChannelWritingTools;
        sub_100005070(v130 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v105, &qword_100070160, &qword_100057D20);
        if ((*(v103 + 48))(v105, 1, v104) == 1)
        {
          sub_10000CBA0(*(v0 + 2128), &qword_100070160, &qword_100057D20);
          v108 = 0;
        }

        else
        {
          v109 = *(v0 + 2272);
          v110 = *(v0 + 2264);
          v111 = *(v0 + 2128);
          sub_10004FAA8();
          (*(v109 + 8))(v111, v110);
          v108 = sub_1000504E8();
        }

        v70 = v140;
        v112 = objc_opt_self();
        type metadata accessor for IAPayloadKey(0);
        sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
        sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey, &unk_100056138);
        v113 = sub_100050408().super.isa;

        [v112 sendSignal:v106 toChannel:v107 withNullableUniqueStringID:v108 withPayload:v113];

        sub_10000CC70((v0 + 240));
LABEL_54:
        v114 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1688) = v114;
        sub_10004FB58();

        v115 = *(v141 + v70);
        *(v0 + 2512) = v115;
        if (v115)
        {
          v116 = *(v0 + 2360);
          v117 = *(v0 + 2352);
          v118 = *(v0 + 2344);
          v119 = *(v0 + 1896);
          v120 = v115;
          sub_100013054(v118, v117, v116, 0);

          v121 = [v119 range];
          v123 = v122;
          v124 = swift_task_alloc();
          *(v0 + 2520) = v124;
          *v124 = v0;
          v124[1] = sub_1000311A4;
          v65 = *(v0 + 1896);
          v66 = v120;
          v67 = v121;
          v68 = v123;
          v69 = 1;
          goto LABEL_56;
        }

        goto LABEL_60;
      }
    }

    if (qword_10006E910 != -1)
    {
      swift_once();
    }

    v74 = qword_10007B360;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_100037F0C(0, v56[2] + 1, 1, v56);
    }

    v76 = v56[2];
    v75 = v56[3];
    if (v76 >= v75 >> 1)
    {
      v56 = sub_100037F0C((v75 > 1), v76 + 1, 1, v56);
    }

    v56[2] = v76 + 1;
    v56[v76 + 4] = v74;
    goto LABEL_36;
  }

  if (sub_1000506A8())
  {
    v7 = *(v0 + 2400);
    v139 = *(v0 + 2408);
    v8 = *(v0 + 2360);
    v9 = *(v0 + 2352);
    v10 = *(v0 + 2344);
    (*(*(v0 + 2240) + 8))(*(v0 + 2256), *(v0 + 2232));

    sub_100013054(v10, v9, v8, 0);

    v11 = *(v0 + 8);

    return v11();
  }

  location = v3;
  if (*(v0 + 2737) == 1)
  {
    v57 = *(v0 + 2416);
    v58 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1792) = v58;
    sub_10004FB58();

    if (!sub_100027290(4uLL, *(v58 + v57)))
    {
      v147.location = [*(v0 + 1896) range];
      v147.length = v59;
      v146.location = location;
      v146.length = length;
      v60 = NSIntersectionRange(v146, v147);
      location = v60.location;
      length = v60.length;
    }
  }

  v61 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1760) = v61;
  sub_10004FB58();

  *(v0 + 1768) = v61;
  swift_getKeyPath();
  sub_10004FB78();

  v62 = *(v61 + 136);
  v63 = v62 | v4;
  sub_1000126C0(v62 | v4);
  *(v61 + 136) = v63;
  *(v0 + 1776) = v61;
  swift_getKeyPath();
  sub_10004FB68();

  v64 = swift_task_alloc();
  *(v0 + 2504) = v64;
  *v64 = v0;
  v64[1] = sub_100030E0C;
  v65 = *(v0 + 1896);
  v66 = v1;
  v67 = location;
  v68 = length;
  v69 = 0;
LABEL_56:

  return sub_100035E9C(v66, v67, v68, v65, v69);
}

uint64_t sub_100030E0C()
{
  v1 = *v0;

  v2 = *(v1 + 2320);
  v3 = *(v1 + 2312);

  return _swift_task_switch(sub_100030F2C, v3, v2);
}

uint64_t sub_100030F2C()
{
  v1 = *(v0 + 1912);
  v2 = *(v1 + *(v0 + 2424));
  v3 = *(v0 + 2456);
  if (v2)
  {
    sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
    v4 = v3;
    v5 = v2;
    v6 = sub_1000507A8();

    v3 = *(v0 + 2456);
    v1 = *(v0 + 1912);
    if (v6)
    {
      v7 = *(v0 + 2424);
      v8 = *(v1 + v7);
      *(v1 + v7) = v3;

      goto LABEL_7;
    }

    v9 = *(v0 + 2456);
  }

  else
  {
    v9 = v3;
  }

  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v3;
  *(v0 + 1784) = v1;
  sub_10004FB48();

LABEL_7:
  v11 = *(v0 + 2488);
  v12 = *(v0 + 2480);
  v13 = *(v0 + 1904);
  sub_100029A54(*(v0 + 2464), *(v0 + 2472));
  sub_100029C00(v12, v11);
  if (v13)
  {
    v14 = [*(v0 + 1904) completedUnitCount];
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v15, v18, v16, v17);
    }

    [*(v0 + 1904) setCompletedUnitCount:v18];
  }

  v19 = *(v0 + 2496);
  v20 = *(v0 + 2456);
  v21 = sub_100017EA8(v19);
  sub_100029F04(v21, v22);
  v23 = sub_100017F64(v19);
  sub_10002A094(v23);
  v24 = sub_100017FBC(v19);

  sub_10002A3D0(v24);

  v25 = sub_100050648();
  *(v0 + 2432) = v25;
  v26 = swift_task_alloc();
  *(v0 + 2440) = v26;
  *v26 = v0;
  v26[1] = sub_10002FA78;
  v16 = *(v0 + 2232);
  v18 = &protocol witness table for MainActor;
  v14 = (v0 + 16);
  v17 = v0 + 1648;
  v15 = v25;

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v14, v15, v18, v16, v17);
}

uint64_t sub_1000311A4()
{
  v1 = *v0;
  v2 = *(*v0 + 2512);

  v3 = *(v1 + 2320);
  v4 = *(v1 + 2312);

  return _swift_task_switch(sub_1000312E4, v4, v3);
}

uint64_t sub_1000312E4()
{
  v1 = *(v0 + 2400);

  v2 = *(v0 + 2280);
  v3 = *(v0 + 1912);
  v4 = [*(v0 + 1896) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 1336) = v3;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  sub_10004FB58();

  v5 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  swift_getKeyPath();
  *(v0 + 1880) = v3;
  v6 = v5;
  sub_10004FB58();

  *(v0 + 1872) = v3;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  sub_100047ED4(v5, v2);
  swift_endAccess();
  *(v0 + 1864) = v3;
  swift_getKeyPath();
  sub_10004FB68();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100031630()
{
  v2 = *v1;
  *(*v1 + 2624) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_100013054(v5, v4, v3, 0);

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_100034890;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_1000317A4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000317A4()
{
  v171 = v0;
  if (!*(v0 + 88))
  {
    v11 = *(v0 + 2552);
    v12 = *(v0 + 1912);
    (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));
    swift_getKeyPath();
    *(v0 + 1408) = v12;
    sub_10004FB58();

    sub_100005070(v12 + v11, v0 + 640, &unk_1000711A0, &qword_100058BF0);
    if (!*(v0 + 664))
    {
      v44 = *(v0 + 2360);
      v45 = *(v0 + 2352);
      v46 = *(v0 + 2344);

      sub_100013054(v46, v45, v44, 0);

      sub_10000CBA0(v0 + 640, &unk_1000711A0, &qword_100058BF0);
LABEL_63:
      v115 = *(v0 + 2280);
      v116 = *(v0 + 1912);
      v117 = [*(v0 + 1896) uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v0 + 1336) = v116;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v118 = *(v116 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
      swift_getKeyPath();
      *(v0 + 1880) = v116;
      v119 = v118;
      sub_10004FB58();

      *(v0 + 1872) = v116;
      swift_getKeyPath();
      sub_10004FB78();

      swift_beginAccess();
      sub_100047ED4(v118, v115);
      swift_endAccess();
      *(v0 + 1864) = v116;
      swift_getKeyPath();
      sub_10004FB68();

      goto LABEL_64;
    }

    v13 = *(v0 + 1912);
    v14 = (v13 + *(v0 + 2568));
    sub_10000D6CC(v0 + 640, v0 + 560);
    sub_10000CBA0(v0 + 640, &unk_1000711A0, &qword_100058BF0);
    v156 = sub_10000D634((v0 + 560), *(v0 + 584));
    swift_getKeyPath();
    *(v0 + 1424) = v13;
    sub_10004FB58();

    v15 = v14[1];
    v153 = *v14;
    swift_getKeyPath();
    *(v0 + 1432) = v13;
    v154 = v15;

    sub_10004FB58();

    v20 = *(v13 + 96);
    if (v20 == 255)
    {
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v17, v18, v20, v19);
    }

    v21 = *(v13 + 72);
    v22 = *(v13 + 80);
    v23 = *(v13 + 88);
    v166 = *(v0 + 2584);
    v24 = *(v0 + 2360);
    v25 = *(v0 + 2352);
    v26 = *(v0 + 2344);
    v27 = *(v0 + 1912);
    v169 = v21;
    v159 = v23;
    v161 = v22;
    v164 = v20;
    sub_10000A594(v21, v22, v23, v20);

    sub_100013054(v26, v25, v24, 0);

    swift_getKeyPath();
    *(v0 + 1440) = v27;
    sub_10004FB58();

    v149 = *(v27 + 136);
    swift_getKeyPath();
    *(v0 + 1448) = v27;
    sub_10004FB58();

    v28 = *(v27 + v166);
    if (v28)
    {
      v29 = [v28 string];
      sub_100050518();
      v167 = v30;
    }

    else
    {
      v167 = 0;
    }

    v58 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1456) = v58;
    sub_10004FB58();

    v59 = *(v58 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
    swift_getKeyPath();
    *(v0 + 1344) = v58;

    sub_10004FB58();

    v60 = *(v58 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
    swift_getKeyPath();
    *(v0 + 1472) = v58;
    v150 = v60;
    v158 = v60;
    sub_10004FB58();

    v151 = *v156;
    v152 = *(v58 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
    v61 = qword_10006EA10;
    v157 = v152;
    if (v61 != -1)
    {
      swift_once();
    }

    v62 = sub_100050188();
    sub_1000071F4(v62, qword_10007B528);

    v63 = v169;
    sub_100013C24(v169, v161, v159, v164);
    v64 = sub_100050168();
    v65 = sub_100050718();

    sub_100013054(v169, v161, v159, v164);
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v170[0] = swift_slowAlloc();
      *v66 = 136643075;
      *(v66 + 4) = sub_100046C30(v153, v154, v170);
      *(v66 + 12) = 2081;
      sub_10000ACE8(v169, v161, v159, v164);
      v67 = sub_1000504E8();

      v68 = [v67 key];

      v69 = sub_100050518();
      v71 = v70;

      v72 = sub_100046C30(v69, v71, v170);

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v66, 0x16u);
      swift_arrayDestroy();

      v63 = v169;
    }

    if (v149)
    {
      if (qword_10006E908 != -1)
      {
        swift_once();
      }

      v74 = qword_10007B358;
      v73 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
      v76 = v73[2];
      v75 = v73[3];
      if (v76 >= v75 >> 1)
      {
        v73 = sub_100037F0C((v75 > 1), v76 + 1, 1, v73);
      }

      v73[2] = v76 + 1;
      v73[v76 + 4] = v74;
      v63 = v169;
      if ((v149 & 2) == 0)
      {
LABEL_44:
        sub_100002814(&qword_100070168, &qword_100057A70);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_100056D20;
        if (qword_10006E8A0 != -1)
        {
          swift_once();
        }

        v81 = qword_10007B2F0;
        *(v80 + 32) = qword_10007B2F0;
        v82 = v81;
        v83 = sub_1000504E8();

        v84 = IAPayloadKeyWritingToolsFeatureDetails;
        *(v80 + 40) = v83;
        *(v80 + 48) = v84;
        v85 = v84;
        v86 = sub_10001761C(v63, v161, v159, v164);
        sub_100013054(v63, v161, v159, v164);
        *(v80 + 56) = v86;
        if (qword_10006E8A8 != -1)
        {
          swift_once();
        }

        v87 = qword_10007B2F8;
        *(v80 + 64) = qword_10007B2F8;
        type metadata accessor for IAPayloadValue(0);
        v88 = v87;
        isa = sub_1000505D8().super.isa;

        *(v80 + 72) = isa;
        v43 = sub_100004938(v80);
        swift_setDeallocating();
        sub_100002814(&qword_100070170, &qword_100057A78);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v167)
        {
          v90 = IAPayloadKeyWritingToolsResultText;
          v91 = sub_1000504E8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_10004C390(v91, v90, isUniquelyReferenced_nonNull_native);

          v43 = v170[0];
        }

        if (v59)
        {
          v93 = IAPayloadKeyWritingToolsInputLanguage;
          v94 = sub_1000504E8();
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_10004C390(v94, v93, v95);

          v43 = v170[0];
        }

        if (!v150)
        {
          goto LABEL_55;
        }

        v96 = qword_10006E8F0;
        v53 = v158;
        if (v96 == -1)
        {
LABEL_54:
          v97 = qword_10007B340;
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v170[0] = v43;
          sub_10004C390(v53, v97, v98);

          v43 = v170[0];
LABEL_55:
          if (v152)
          {
            v99 = qword_10006E8F8;
            v100 = v157;
            if (v99 != -1)
            {
              swift_once();
            }

            v101 = qword_10007B348;
            v102 = swift_isUniquelyReferenced_nonNull_native();
            v170[0] = v43;
            sub_10004C390(v100, v101, v102);
          }

          v103 = *(v0 + 2272);
          v104 = *(v0 + 2264);
          v105 = *(v0 + 2120);
          v106 = IASignalWritingToolsResultsGenerated;
          v107 = IAChannelWritingTools;
          sub_100005070(v151 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v105, &qword_100070160, &qword_100057D20);
          if ((*(v103 + 48))(v105, 1, v104) == 1)
          {
            sub_10000CBA0(*(v0 + 2120), &qword_100070160, &qword_100057D20);
            v108 = 0;
          }

          else
          {
            v109 = *(v0 + 2272);
            v110 = *(v0 + 2264);
            v111 = *(v0 + 2120);
            sub_10004FAA8();
            (*(v109 + 8))(v111, v110);
            v108 = sub_1000504E8();
          }

          v112 = *(v0 + 1896);
          v113 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
          sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey, &unk_100056138);
          v114 = sub_100050408().super.isa;

          [v113 sendSignal:v106 toChannel:v107 withNullableUniqueStringID:v108 withPayload:v114];

          sub_10000CC70((v0 + 560));
          goto LABEL_63;
        }

LABEL_98:
        swift_once();
        goto LABEL_54;
      }
    }

    else
    {
      v73 = &_swiftEmptyArrayStorage;
      if ((v149 & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    if (qword_10006E910 != -1)
    {
      swift_once();
    }

    v77 = qword_10007B360;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_100037F0C(0, v73[2] + 1, 1, v73);
    }

    v79 = v73[2];
    v78 = v73[3];
    if (v79 >= v78 >> 1)
    {
      v73 = sub_100037F0C((v78 > 1), v79 + 1, 1, v73);
    }

    v73[2] = v79 + 1;
    v73[v79 + 4] = v77;
    v63 = v169;
    goto LABEL_44;
  }

  v168 = *(v0 + 88);
  v165 = *(v0 + 96);
  v163 = *(v0 + 104);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  if ((sub_1000506A8() & 1) == 0)
  {
    v155 = v1;
    v157 = v4;
    v158 = v6;
    v160 = v3;
    v162 = v5;
    v31 = *(v0 + 2584);
    v32 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1480) = v32;
    sub_10004FB58();

    *(v0 + 1488) = v32;
    swift_getKeyPath();
    sub_10004FB78();

    v33 = *(v32 + 136);
    v34 = v33 | v2;
    sub_1000126C0(v33 | v2);
    *(v32 + 136) = v34;
    *(v0 + 1496) = v32;
    swift_getKeyPath();
    sub_10004FB68();

    v35 = *(v32 + v31);
    if (v35)
    {
      sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
      v36 = v168;
      v37 = v35;
      v38 = sub_1000507A8();

      v39 = v6;
      if (v38)
      {
        v40 = *(v0 + 2584);
        v41 = *(v0 + 1912);
        v42 = *(v41 + v40);
        *(v41 + v40) = v168;

        v43 = *(v0 + 2624);
LABEL_14:
        v50 = *(v0 + 1912);
        v51 = v50 + *(v0 + 2560);
        if ((*(v51 + 16) & 1) == 0 && *v51 == v165 && *(v51 + 8) == v163)
        {
          *v51 = v165;
          *(v51 + 8) = v163;
          *(v51 + 16) = 0;
        }

        else
        {
          swift_getKeyPath();
          v52 = swift_task_alloc();
          *(v52 + 16) = v50;
          *(v52 + 24) = v165;
          *(v52 + 32) = v163;
          *(v52 + 40) = 0;
          *(v0 + 1512) = v50;
          sub_10004FB48();
        }

        v53 = v160;
        v54 = v162;
        v55 = *(v0 + 2568);
        v56 = *(v0 + 1912);
        if (*(v56 + v55) != v155 || *(v56 + v55 + 8) != v157)
        {
          if ((sub_1000509B8() & 1) == 0)
          {
            v122 = *(v0 + 1912);
            swift_getKeyPath();
            v123 = swift_task_alloc();
            v123[2] = v122;
            v123[3] = v155;
            v123[4] = v157;
            *(v0 + 1520) = v122;
            v53 = v160;
            sub_10004FB48();

            v54 = v162;

            goto LABEL_68;
          }

          v55 = *(v0 + 2568);
          v56 = *(v0 + 1912);
        }

        v57 = (v56 + v55);
        *v57 = v155;
        v57[1] = v157;

LABEL_68:
        v124 = *(v0 + 2576);
        v125 = *(v0 + 1912);
        if (*(v125 + v124) != v53 || *(v125 + v124 + 8) != v39)
        {
          if ((sub_1000509B8() & 1) == 0)
          {
            v128 = v53;
            v53 = *(v0 + 1912);
            swift_getKeyPath();
            v129 = swift_task_alloc();
            v129[2] = v53;
            v129[3] = v128;
            v129[4] = v39;
            *(v0 + 1528) = v53;
            sub_10004FB48();

            v127 = *(v0 + 1904);
            if (!v127)
            {
              goto LABEL_77;
            }

LABEL_75:
            v130 = [v127 completedUnitCount];
            if (!__OFADD__(v130, 1))
            {
              [*(v0 + 1904) setCompletedUnitCount:v130 + 1];
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_98;
          }

          v124 = *(v0 + 2576);
          v125 = *(v0 + 1912);
        }

        v126 = (v125 + v124);
        *v126 = v53;
        v126[1] = v39;

        v127 = *(v0 + 1904);
        if (!v127)
        {
LABEL_77:
          v131 = sub_100050518();
          if (*(v54 + 16))
          {
            v133 = sub_10004A138(v131, v132);
            v135 = v134;

            if (v135)
            {
              sub_100015440(*(v54 + 56) + 32 * v133, v0 + 1088);
              v136 = swift_dynamicCast();
              v137 = v136 == 0;
              if (v136)
              {
                v138 = *(v0 + 1304);
              }

              else
              {
                v138 = 0;
              }

              if (v137)
              {
                v139 = 0;
              }

              else
              {
                v139 = *(v0 + 1312);
              }

LABEL_87:
              sub_100029F04(v138, v139);
              v140 = sub_100050518();
              if (*(v54 + 16))
              {
                v142 = sub_10004A138(v140, v141);
                v144 = v143;

                if (v144)
                {
                  sub_100015440(*(v54 + 56) + 32 * v142, v0 + 1056);
                  sub_10000E5D8(0, &qword_100070188, NSNumber_ptr);
                  if (swift_dynamicCast())
                  {
                    v145 = *(v0 + 1552);
                  }

                  else
                  {
                    v145 = 0;
                  }

LABEL_94:
                  sub_10002A094(v145);
                  v146 = sub_100017FBC(v54);

                  sub_10002A3D0(v146);

                  v147 = sub_100050648();
                  *(v0 + 2608) = v147;
                  v148 = swift_task_alloc();
                  *(v0 + 2616) = v148;
                  *v148 = v0;
                  v148[1] = sub_100031630;
                  v20 = *(v0 + 2232);
                  v18 = &protocol witness table for MainActor;
                  v19 = v0 + 1392;
                  v16 = v0 + 88;
                  v17 = v147;

                  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, v17, v18, v20, v19);
                }
              }

              else
              {
              }

              v145 = 0;
              goto LABEL_94;
            }
          }

          else
          {
          }

          v138 = 0;
          v139 = 0;
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v47 = v168;
      v39 = v6;
    }

    v43 = *(v0 + 2624);
    v48 = *(v0 + 1912);
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v48;
    *(v49 + 24) = v168;
    *(v0 + 1504) = v48;
    sub_10004FB48();

    goto LABEL_14;
  }

  v7 = *(v0 + 2360);
  v8 = *(v0 + 2352);
  v9 = *(v0 + 2344);
  v10 = *(v0 + 1896);
  (*(*(v0 + 2240) + 8))(*(v0 + 2248), *(v0 + 2232));

  sub_100013054(v9, v8, v7, 0);

LABEL_64:

  v120 = *(v0 + 8);

  return v120();
}

uint64_t sub_100032E10()
{
  v2 = *v1;
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v3 = v2[295];
    v4 = v2[294];
    v5 = v2[293];

    sub_100013054(v5, v4, v3, 0);

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_100034FE8;
  }

  else
  {

    v6 = v2[290];
    v7 = v2[289];
    v8 = sub_100032F84;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100032F84()
{
  v201 = v0;
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1976);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 2704);
    v6 = *(v0 + 2696);
    (*(*(v0 + 2096) + 8))(*(v0 + 2104), *(v0 + 2088));
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = objc_allocWithZone(NSAttributedString);
      v9 = sub_1000504E8();
      v10 = [v8 initWithString:v9];

      sub_1000295E8(v10);
      v11 = sub_1000507C8();
      sub_1000298EC(v11, v13, v12 & 1);
    }

    v14 = *(v0 + 2656);
    v15 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1856) = v15;
    sub_10004FB58();

    sub_100005070(v15 + v14, v0 + 760, &unk_1000711A0, &qword_100058BF0);
    v16 = &off_100071000;
    if (!*(v0 + 784))
    {
      v47 = *(v0 + 2360);
      v48 = *(v0 + 2352);
      v49 = *(v0 + 2344);

      sub_100013054(v49, v48, v47, 0);

      sub_10000CBA0(v0 + 760, &unk_1000711A0, &qword_100058BF0);
LABEL_60:
      v120 = *(v0 + 2280);
      v121 = *(v0 + 1912);
      v122 = [*(v0 + 1896) uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v0 + 1336) = v121;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
      sub_10004FB58();

      v123 = *(v16[250] + v121);
      swift_getKeyPath();
      *(v0 + 1880) = v121;
      v124 = v123;
      sub_10004FB58();

      *(v0 + 1872) = v121;
      swift_getKeyPath();
      sub_10004FB78();

      swift_beginAccess();
      sub_100047ED4(v123, v120);
      swift_endAccess();
      *(v0 + 1864) = v121;
      swift_getKeyPath();
      sub_10004FB68();

      goto LABEL_61;
    }

    v17 = *(v0 + 1912);
    sub_10000D6CC(v0 + 760, v0 + 160);
    sub_10000CBA0(v0 + 760, &unk_1000711A0, &qword_100058BF0);
    v192 = sub_10000D634((v0 + 160), *(v0 + 184));
    swift_getKeyPath();
    *(v0 + 1848) = v17;
    sub_10004FB58();

    v18 = *(v17 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);
    v189 = *(v17 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1808) = v17;
    v190 = v18;

    sub_10004FB58();

    v23 = *(v17 + 96);
    if (v23 != 255)
    {
      v24 = *(v17 + 72);
      v25 = *(v17 + 80);
      v26 = *(v17 + 88);
      v27 = *(v0 + 2360);
      v28 = *(v0 + 2352);
      v29 = *(v0 + 2344);
      v30 = *(v0 + 1912);
      v199 = v24;
      v194 = v26;
      v195 = v25;
      v196 = v23;
      sub_10000A594(v24, v25, v26, v23);

      sub_100013054(v29, v28, v27, 0);

      swift_getKeyPath();
      *(v0 + 1696) = v30;
      sub_10004FB58();

      v186 = *(v30 + 136);
      swift_getKeyPath();
      *(v0 + 1632) = v30;
      sub_10004FB58();

      v31 = *(v30 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
      if (v31)
      {
        v32 = [v31 string];
        sub_100050518();
        v197 = v33;
      }

      else
      {
        v197 = 0;
      }

      v60 = *(v0 + 1912);
      swift_getKeyPath();
      *(v0 + 1616) = v60;
      sub_10004FB58();

      KeyPath = *(v60 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
      swift_getKeyPath();
      *(v0 + 1608) = v60;

      sub_10004FB58();

      v61 = *(v60 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
      swift_getKeyPath();
      *(v0 + 1592) = v60;
      v187 = v61;
      v193 = v61;
      sub_10004FB58();

      v62 = *(v60 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
      v188 = *v192;
      v63 = qword_10006EA10;
      v191 = v62;
      if (v63 != -1)
      {
        swift_once();
      }

      v64 = sub_100050188();
      sub_1000071F4(v64, qword_10007B528);

      v65 = v199;
      sub_100013C24(v199, v195, v194, v196);
      v66 = sub_100050168();
      v67 = sub_100050718();

      sub_100013054(v199, v195, v194, v196);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v200[0] = swift_slowAlloc();
        *v68 = 136643075;
        *(v68 + 4) = sub_100046C30(v189, v190, v200);
        *(v68 + 12) = 2081;
        sub_10000ACE8(v199, v195, v194, v196);
        v185 = v62;
        v69 = sub_1000504E8();

        v70 = [v69 key];

        v71 = sub_100050518();
        v72 = KeyPath;
        v74 = v73;

        v75 = sub_100046C30(v71, v74, v200);
        KeyPath = v72;

        *(v68 + 14) = v75;
        v62 = v185;
        _os_log_impl(&_mh_execute_header, v66, v67, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v68, 0x16u);
        swift_arrayDestroy();

        v65 = v199;
      }

      LOBYTE(v76) = v186;
      if ((v186 & 1) == 0)
      {
        v77 = &_swiftEmptyArrayStorage;
        if ((v186 & 2) == 0)
        {
LABEL_40:
          sub_100002814(&qword_100070168, &qword_100057A70);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_100056D20;
          if (qword_10006E8A0 != -1)
          {
            swift_once();
          }

          v85 = qword_10007B2F0;
          *(v84 + 32) = qword_10007B2F0;
          v86 = v85;
          v87 = sub_1000504E8();

          v88 = IAPayloadKeyWritingToolsFeatureDetails;
          *(v84 + 40) = v87;
          *(v84 + 48) = v88;
          v89 = v88;
          v90 = sub_10001761C(v65, v195, v194, v196);
          sub_100013054(v65, v195, v194, v196);
          *(v84 + 56) = v90;
          if (qword_10006E8A8 != -1)
          {
            swift_once();
          }

          v91 = qword_10007B2F8;
          *(v84 + 64) = qword_10007B2F8;
          type metadata accessor for IAPayloadValue(0);
          v92 = v91;
          isa = sub_1000505D8().super.isa;

          *(v84 + 72) = isa;
          v94 = sub_100004938(v84);
          swift_setDeallocating();
          sub_100002814(&qword_100070170, &qword_100057A78);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v197)
          {
            v95 = IAPayloadKeyWritingToolsResultText;
            v96 = sub_1000504E8();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_10004C390(v96, v95, isUniquelyReferenced_nonNull_native);

            v94 = v200[0];
          }

          if (KeyPath)
          {
            v98 = IAPayloadKeyWritingToolsInputLanguage;
            v99 = sub_1000504E8();
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_10004C390(v99, v98, v100);

            v94 = v200[0];
          }

          if (v187)
          {
            v101 = qword_10006E8F0;
            v102 = v193;
            if (v101 != -1)
            {
              swift_once();
            }

            v103 = qword_10007B340;
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_10004C390(v102, v103, v104);

            v94 = v200[0];
          }

          if (v62)
          {
            v105 = qword_10006E8F8;
            v106 = v191;
            if (v105 != -1)
            {
              swift_once();
            }

            v107 = qword_10007B348;
            v108 = swift_isUniquelyReferenced_nonNull_native();
            v200[0] = v94;
            sub_10004C390(v106, v107, v108);
          }

          v109 = *(v0 + 2272);
          v110 = *(v0 + 2264);
          v111 = *(v0 + 2112);
          v112 = IASignalWritingToolsResultsGenerated;
          v113 = IAChannelWritingTools;
          sub_100005070(v188 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v111, &qword_100070160, &qword_100057D20);
          if ((*(v109 + 48))(v111, 1, v110) == 1)
          {
            sub_10000CBA0(*(v0 + 2112), &qword_100070160, &qword_100057D20);
            v114 = 0;
          }

          else
          {
            v115 = *(v0 + 2664);
            v116 = *(v0 + 2264);
            v117 = *(v0 + 2112);
            sub_10004FAA8();
            v115(v117, v116);
            v114 = sub_1000504E8();
          }

          v118 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
          sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey, &unk_100056138);
          v119 = sub_100050408().super.isa;

          [v118 sendSignal:v112 toChannel:v113 withNullableUniqueStringID:v114 withPayload:v119];

          sub_10000CC70((v0 + 160));
          v16 = &off_100071000;
          goto LABEL_60;
        }

LABEL_33:
        if (qword_10006E910 != -1)
        {
          swift_once();
        }

        v81 = qword_10007B360;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_100037F0C(0, v77[2] + 1, 1, v77);
        }

        v83 = v77[2];
        v82 = v77[3];
        if (v83 >= v82 >> 1)
        {
          v77 = sub_100037F0C((v82 > 1), v83 + 1, 1, v77);
        }

        v77[2] = v83 + 1;
        v77[v83 + 4] = v81;
        v65 = v199;
        goto LABEL_40;
      }

      if (qword_10006E908 == -1)
      {
LABEL_30:
        v78 = qword_10007B358;
        v77 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v77 = sub_100037F0C((v79 > 1), v80 + 1, 1, v77);
        }

        v77[2] = v80 + 1;
        v77[v80 + 4] = v78;
        v65 = v199;
        if ((v76 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

LABEL_100:
      swift_once();
      goto LABEL_30;
    }

    __break(1u);
    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v23, v22);
  }

  (*(v3 + 32))(*(v0 + 1992), v2, v4);
  if ((sub_1000506A8() & 1) == 0)
  {
    v42 = *(v0 + 1968);
    sub_1000501F8();
    v43 = sub_100050318();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 1968);
    if (v45 == 1)
    {
      sub_10000CBA0(*(v0 + 1968), &qword_1000721E8, &qword_100058E28);
    }

    else
    {
      v50 = sub_100050308();
      (*(v44 + 8))(v46, v43);
      if ((v50 & 1) == 0)
      {
        v51 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1536) = v51;
        sub_10004FB58();

        *(v0 + 1416) = v51;
        swift_getKeyPath();
        sub_10004FB78();

        v52 = *(v51 + 136);
        v53 = v52 | 1;
        sub_1000126C0(v52 | 1);
        *(v51 + 136) = v53;
        *(v0 + 1384) = v51;
        swift_getKeyPath();
        sub_10004FB68();
      }
    }

    v54 = *(v0 + 1960);
    v55 = (*(v0 + 1912) + *(v0 + 2680));
    sub_100050218();
    sub_100050578(*(v0 + 1288));

    sub_100050208();
    v56 = sub_100018078(v54);
    v58 = v57;
    sub_10000CBA0(v54, &unk_100070190, &qword_100058E20);
    if (*v55 == v56 && v55[1] == v58 || (sub_1000509B8() & 1) != 0)
    {
      v59 = (*(v0 + 1912) + *(v0 + 2680));
      *v59 = v56;
      v59[1] = v58;
    }

    else
    {
      KeyPath = *(v0 + 1912);
      swift_getKeyPath();
      v127 = swift_task_alloc();
      v127[2] = KeyPath;
      v127[3] = v56;
      v127[4] = v58;
      *(v0 + 1560) = KeyPath;
      sub_10004FB48();
    }

    v128 = *(v0 + 1912) + *(v0 + 2688);
    v129 = *(v0 + 1320);
    v130 = *(v0 + 1328);
    v131 = objc_allocWithZone(NSAttributedString);
    v132 = sub_1000504E8();
    v133 = [v131 initWithString:v132];

    sub_1000295E8(v133);
    v134 = sub_1000507C8();
    v76 = v134;
    v62 = v135;
    v137 = v136;
    v197 = v130;
    v199 = v129;
    if (*(v128 + 16))
    {
      if (v136)
      {
        v138 = *(v0 + 2688);
        v139 = *(v0 + 1912);
        goto LABEL_71;
      }

      v139 = *(v0 + 1912);
    }

    else
    {
      v139 = *(v0 + 1912);
      if ((v136 & 1) == 0)
      {
        v138 = *(v0 + 2688);
        if (*(v139 + v138) == v134 && *(v139 + v138 + 8) == v135)
        {
LABEL_71:
          v140 = v139 + v138;
          *v140 = v134;
          *(v140 + 8) = v135;
          *(v140 + 16) = v136 & 1;
          v141 = *(v0 + 1904);
          if (!v141)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }
      }
    }

    KeyPath = swift_getKeyPath();
    v142 = swift_task_alloc();
    *(v142 + 16) = v139;
    *(v142 + 24) = v76;
    *(v142 + 32) = v62;
    *(v142 + 40) = v137 & 1;
    *(v0 + 1544) = v139;
    sub_10004FB48();

    v141 = *(v0 + 1904);
    if (!v141)
    {
      goto LABEL_77;
    }

LABEL_75:
    v143 = [v141 completedUnitCount];
    if (__OFADD__(v143, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    [*(v0 + 1904) setCompletedUnitCount:v143 + 1];
LABEL_77:
    v144 = *(v0 + 1952);
    sub_100050208();
    v145 = sub_1000502F8();
    v146 = *(v145 - 8);
    v147 = *(v146 + 48);
    v148 = v147(v144, 1, v145);
    v149 = *(v0 + 1952);
    if (v148 == 1)
    {
      v150 = &unk_100070190;
      v151 = &qword_100058E20;
    }

    else
    {
      v153 = *(v0 + 1920);
      sub_100050278();
      (*(v146 + 8))(v149, v145);
      v154 = sub_10004FB28();
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v153, 1, v154) == 1)
      {
        v152 = *(v0 + 1920);
        v150 = &qword_1000721D8;
        v151 = &qword_100058E10;
        goto LABEL_82;
      }

      v164 = *(v0 + 1928);
      v165 = *(v0 + 1920);
      sub_10004FB18();
      (*(v155 + 8))(v165, v154);
      v166 = sub_10004FAF8();
      v167 = *(v166 - 8);
      v168 = (*(v167 + 48))(v164, 1, v166);
      v149 = *(v0 + 1928);
      if (v168 != 1)
      {
        v182 = sub_10004FAE8();
        v184 = v183;
        (*(v167 + 8))(v149, v166);
        v157 = v184;
        v156 = v182;
LABEL_83:
        v158 = *(v0 + 1944);
        sub_100029F04(v156, v157);
        sub_100050208();
        v159 = v147(v158, 1, v145);
        v160 = *(v0 + 1944);
        if (v159 == 1)
        {
          sub_10000CBA0(*(v0 + 1944), &unk_100070190, &qword_100058E20);
          v161 = 0;
        }

        else
        {
          sub_1000502D8();
          v163 = v162;
          (*(v146 + 8))(v160, v145);
          if (v163)
          {
            v161 = 0;
          }

          else
          {
            v161 = sub_100050708().super.super.isa;
          }
        }

        v169 = *(v0 + 1936);
        sub_10002A094(v161);
        sub_100050208();
        v170 = v147(v169, 1, v145);
        v171 = *(v0 + 1936);
        if (v170 == 1)
        {
          sub_10000CBA0(*(v0 + 1936), &unk_100070190, &qword_100058E20);
          v172 = 0;
          v174 = v197;
          v173 = v199;
        }

        else
        {
          sub_1000502E8();
          v176 = v175;
          (*(v146 + 8))(v171, v145);
          v174 = v197;
          v173 = v199;
          if (v176)
          {
            v172 = 0;
          }

          else
          {
            v172 = sub_100050708().super.super.isa;
          }
        }

        v177 = *(v0 + 1992);
        v178 = *(v0 + 1984);
        v179 = *(v0 + 1976);
        sub_10002A3D0(v172);
        (*(v178 + 8))(v177, v179);
        *(v0 + 2704) = v173;
        *(v0 + 2696) = v174;
        v180 = sub_100050648();
        *(v0 + 2712) = v180;
        v181 = swift_task_alloc();
        *(v0 + 2720) = v181;
        *v181 = v0;
        v181[1] = sub_100032E10;
        v23 = *(v0 + 2088);
        v19 = *(v0 + 2000);
        v21 = &protocol witness table for MainActor;
        v22 = v0 + 1376;
        v20 = v180;

        return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v23, v22);
      }

      v150 = &qword_1000721E0;
      v151 = &qword_100058E18;
    }

    v152 = v149;
LABEL_82:
    sub_10000CBA0(v152, v150, v151);
    v156 = 0;
    v157 = 0;
    goto LABEL_83;
  }

  v34 = *(v0 + 2360);
  v35 = *(v0 + 2352);
  v36 = *(v0 + 2344);
  v198 = *(v0 + 2104);
  v37 = *(v0 + 2096);
  v38 = *(v0 + 2088);
  v39 = *(v0 + 1992);
  v40 = *(v0 + 1984);
  v41 = *(v0 + 1976);

  sub_100013054(v36, v35, v34, 0);

  (*(v40 + 8))(v39, v41);
  (*(v37 + 8))(v198, v38);

LABEL_61:

  v125 = *(v0 + 8);

  return v125();
}