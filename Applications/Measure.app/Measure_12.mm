void sub_1000FAAC8()
{
  v1 = *(**(v0 + 128) + 144);

  v1(v95, v2);

  v3 = v95[1];
  if (v3)
  {
    if (!*(v0 + 312))
    {
LABEL_89:

      return;
    }

    v90 = v0;
    v4 = *(**(v0 + 88) + 144);
    v5 = *(v0 + 312);

    v92 = v5;
    v91 = v5;
    v4(v95);

    if ((v95[0] >> 62) <= 1)
    {
      sub_10001B360(v95[0]);
      goto LABEL_5;
    }

    if (v95[0] == 0x8000000000000018)
    {
      v16 = (*((swift_isaMask & *v91) + 0x238))();
      v17 = v16;
      v79 = v16;
      if (v16 >> 62)
      {
        goto LABEL_100;
      }

      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_18:
        v19 = 0;
        v80 = v17 & 0xC000000000000001;
        v76 = v17 + 32;
        v77 = v17 & 0xFFFFFFFFFFFFFF8;
        v78 = v18;
        v85 = v3;
        while (1)
        {
          if (v80)
          {
            v20 = v19;
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v77 + 16))
            {
              __break(1u);
              return;
            }

            v20 = v19;
            v21 = *(v76 + 8 * v19);
          }

          v82 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_99;
          }

          v81 = v21;
          v22 = (*((swift_isaMask & *v21) + 0x280))();
          v23 = v22;
          if (v22 >> 62)
          {
            break;
          }

          v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v24)
          {
            goto LABEL_27;
          }

LABEL_19:

          v19 = v82;
          if (v82 == v78)
          {
            goto LABEL_101;
          }
        }

        v24 = _CocoaArrayWrapper.endIndex.getter();
        if (!v24)
        {
          goto LABEL_19;
        }

LABEL_27:
        v25 = 0;
        v87 = *((swift_isaMask & *v3) + 0xB8);
        v88 = v23 & 0xC000000000000001;
        v83 = v23 + 32;
        v84 = v23 & 0xFFFFFFFFFFFFFF8;
        v86 = v24;
        while (1)
        {
          if (v88)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v84 + 16))
            {
              goto LABEL_98;
            }

            v26 = *(v83 + 8 * v25);
          }

          v27 = __OFADD__(v25, 1);
          v28 = v25 + 1;
          if (v27)
          {
            goto LABEL_96;
          }

          v89 = v28;
          v29 = *((swift_isaMask & *v26) + 0xB8);
          v30 = v26;
          v94 = v29;
          v31 = v29();
          v33 = v32;
          v34 = v3;
          v35 = v87();
          v37 = v36;

          if (v31 == v35 && v33 == v37)
          {
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          v41 = (*((swift_isaMask & *v30) + 0x238))(v40);
          v3 = v41;
          if (v41 >> 62)
          {
            v42 = _CocoaArrayWrapper.endIndex.getter();
            if (v42)
            {
LABEL_44:
              if (v42 < 1)
              {
                goto LABEL_97;
              }

              v43 = 0;
              v93 = v42;
              while (2)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v44 = *(v3 + 8 * v43 + 32);
                }

                v45 = v44;
                v46 = *((swift_isaMask & *v44) + 0x250);
                v47 = v46();
                if ((v47 & 0xC000000000000001) != 0)
                {
                  v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_52:
                  v49 = v48;

                  v51 = (*((swift_isaMask & *v49) + 0xB8))(v50);
                  v53 = v52;

                  if (v51 == v94() && v53 == v54)
                  {
                  }

                  else
                  {
                    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v56 & 1) == 0)
                    {
                      v58 = (v46)(v57);
                      if ((v58 & 0xC000000000000001) != 0)
                      {
                        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                        {
                          goto LABEL_94;
                        }

                        v59 = *(v58 + 40);
                      }

                      v60 = v59;

                      v62 = (*((swift_isaMask & *v60) + 0xB8))(v61);
                      v64 = v63;

                      if (v62 == v94() && v64 == v65)
                      {

                        goto LABEL_75;
                      }

                      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v67)
                      {
LABEL_75:
                        v74 = (v46)(v68);
                        if ((v74 & 0xC000000000000001) != 0)
                        {
                          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_95;
                          }

                          v75 = *(v74 + 32);
                        }

                        v72 = v75;

                        v73 = v91;
                        sub_100104F90(v45, v72, v92, 1);
                        goto LABEL_71;
                      }

                      goto LABEL_72;
                    }
                  }

                  v69 = v91;
                  v70 = v46();
                  if ((v70 & 0xC000000000000001) != 0)
                  {
                    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      goto LABEL_93;
                    }

                    v71 = *(v70 + 40);
                  }

                  v72 = v71;

                  sub_100104F90(v45, v92, v72, 1);
                  v73 = v45;
                  v45 = v69;
LABEL_71:

LABEL_72:
                  ++v43;

                  if (v93 == v43)
                  {
                    goto LABEL_28;
                  }

                  continue;
                }

                break;
              }

              if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v48 = *(v47 + 32);
                goto LABEL_52;
              }

              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              v18 = _CocoaArrayWrapper.endIndex.getter();
              v17 = v79;
              if (!v18)
              {
                break;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42)
            {
              goto LABEL_44;
            }
          }

LABEL_28:

          v3 = v85;
LABEL_29:

          v25 = v89;
          if (v89 == v86)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_101:
    }

LABEL_5:
    type metadata accessor for WorldAnchor();
    (*((swift_isaMask & *v3) + 0x2C0))();
    v6 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
    (*((swift_isaMask & *v91) + 0x2C8))(v6);
    v7 = *(**(v90 + 88) + 144);

    v7(v95, v8);

    if ((v95[0] & 0x8000000000000000) != 0)
    {
      if (v95[0] == 0x8000000000000018)
      {
        v9 = v91;
        v10 = swift_isaMask & *v91;
        v11 = 7;
        goto LABEL_14;
      }
    }

    else
    {
      sub_10001B360(v95[0]);
    }

    v9 = v91;
    v12 = *((swift_isaMask & *v91) + 0xD0);
    if ((v12() - 3) >= 2)
    {
      v10 = swift_isaMask & *v91;
      v11 = 3;
    }

    else
    {
      v13 = *((swift_isaMask & *v3) + 0xD0);
      if ((v13() - 3) > 1)
      {
        v15 = v3;
        v3 = v91;
        goto LABEL_88;
      }

      v14 = v12();
      if (v14 == v13())
      {
        v15 = v3;
        v3 = v91;
LABEL_88:

        goto LABEL_89;
      }

      v11 = v13();
      v10 = swift_isaMask & *v91;
      v9 = v91;
    }

LABEL_14:
    (*(v10 + 216))(v11);
    v15 = v9;
    goto LABEL_88;
  }
}

void sub_1000FB540(void *a1)
{
  v2 = v1;
  v3 = *(**(v1 + 88) + 144);

  v3(&v41, v4);

  countAndFlagsBits = v41._countAndFlagsBits;
  if ((v41._countAndFlagsBits | 8) == 0x8000000000000018)
  {
    return;
  }

  v6 = *(**(v1 + 128) + 144);

  v6(&v41, v7);

  object = v41._object;
  v10 = v42;
  v9 = v43;

  if (!v9)
  {
    sub_10001B360(countAndFlagsBits);
    return;
  }

  if ((*((swift_isaMask & *v9) + 0x2F0))() != 1 || ((*((swift_isaMask & *v9) + 0xD0))(), !MeasureObjectState.isMovable()()))
  {
    sub_10001B360(countAndFlagsBits);

    return;
  }

  v11 = *(v2 + 104);
  LOBYTE(v41._countAndFlagsBits) = 4;
  v12 = *(*v11 + 392);

  v12(&v41);

  v13 = *(v2 + 312);
  *(v2 + 312) = v9;
  v40 = v9;

  if (qword_1004A0288 != -1)
  {
    swift_once();
  }

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v41._countAndFlagsBits = 0xD000000000000016;
  v41._object = 0x8000000100407330;
  v14 = *(v2 + 312);
  if (!v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v15 = *((swift_isaMask & *v14) + 0xB8);
  v16 = v14;
  v17 = v15();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x6D61726620746120;
  v21._object = 0xEB00000000203A65;
  String.append(_:)(v21);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  Log.default(_:isPrivate:)(v41, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v23 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v23 + 16) = *(v23 + 16) + 1.0;
  v24 = *(v2 + 312);
  if (!v24 || (v25 = *((swift_isaMask & *v24) + 0xD8), v26 = v24, v25(7), v26, (v27 = *(v2 + 312)) == 0))
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = *((swift_isaMask & *v27) + 0x268);
  v29 = v27;
  v30 = v28();
  if (v30)
  {
    v31 = v30;
    (*((swift_isaMask & *v30) + 0x338))(v29);
  }

  sub_100104098(v40);
  sub_100104508(v40);
  v32 = *(**(v2 + 128) + 400);

  v33 = v32(&v41);
  v35 = *(v34 + 16);
  v36 = *(v34 + 24);
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;

  v33(&v41, 0);

  v37 = *(v2 + 536);
  *(v2 + 536) = countAndFlagsBits;
  sub_100071684(countAndFlagsBits);
  sub_10001B360(v37);
  v38 = *(v2 + 88);
  v41._countAndFlagsBits = 0x8000000000000018;
  v39 = *(*v38 + 392);

  v39(&v41);
  sub_10001B360(countAndFlagsBits);
}

double sub_1000FBAE0()
{
  v1 = v0;
  v2 = *(**(v0 + 128) + 144);

  v2(v15, v3);

  v4 = v15[1];
  v6 = v15[2];
  v5 = v15[3];

  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = *((swift_isaMask & *v5) + 0x2C0);
  v8 = v5;
  v9 = v7();

  v10 = (*(*v9 + 216))();

  if (!v10)
  {

LABEL_7:
    *(v1 + 216) = 0;
    goto LABEL_10;
  }

  v11 = *(v1 + 216);
  if (v11)
  {
    v12 = *(*v11 + 280);

    LOBYTE(v12) = v12(v13);

    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  *(v1 + 216) = v10;
LABEL_10:

  return result;
}

double sub_1000FBC78()
{
  if (*(v0 + 544) == 3)
  {

    StateValue.ifUpdated(_:)();

    __chkstk_darwin(v1);

    StateValue.ifUpdated(_:)();
  }

  return result;
}

void sub_1000FBD5C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = *a1 - 1 < 3;
  v5 = *(**(a2 + 144) + 144);

  v5(v14, v6);

  memcpy(__dst, v14, sizeof(__dst));
  sub_1000FBF30(v4, __dst);
  sub_100013C4C(__dst);
  if (v3 == 1 && (*(a2 + 208) & 1) == 0)
  {
    v7 = *(a2 + 72);
    swift_beginAccess();
    v8 = *(v7 + 64);
    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v12 = *(v11 + 24);
            ObjectType = swift_getObjectType();
            (*(v12 + 120))(1, ObjectType, v12);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }

    *(a2 + 208) = 1;
  }
}

void sub_1000FBF30(char a1, __n128 *a2)
{
  if (a1)
  {
    v4 = *(**(v2 + 88) + 144);

    v4(&v11, v5);

    if ((v11 >> 62) > 1)
    {
      if (v11 == 0x8000000000000018)
      {
        sub_1000FCCD8(1, a2);
        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
        {
          __break(1u);
        }

        else
        {
          SIMD2<>.init(_:)();
          *(v2 + 464) = v6;
          *(v2 + 472) = 1106247680;
          v7 = *(**(v2 + 120) + 200);

          v9 = v7(v8);

          v10 = *(*v9 + 280);

          v10(sub_100103904, v2);
        }
      }
    }

    else
    {
      sub_10001B360(v11);
    }
  }
}

void sub_1000FC0F8(uint64_t a1)
{
  v28 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v9 = v7;
LABEL_8:
    v10 = (*(v28 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v10;
    v11 = v10[1];
    v1 = *(v27 + 72);
    v13 = swift_beginAccess();
    v29 = &v26;
    v14 = *(v1 + 88);
    v30[0] = v12;
    v30[1] = v11;
    __chkstk_darwin(v13);
    v25[2] = v30;

    v15 = sub_1000F4C70(sub_1000A4E88, v25, v14);

    if (v15)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v9;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  sub_100104964(v12, v11);

  v16 = *(v27 + 312);
  if (!v16)
  {
    goto LABEL_23;
  }

  v5 = &swift_isaMask;
  v17 = *((swift_isaMask & *v16) + 0x238);
  v8 = v16;
  v18 = v17();
  v1 = v18;
  if (v18 >> 62)
  {
LABEL_25:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v19 = *(v1 + 32);
  }

  v20 = v19;

  v22 = (*((*v5 & *v20) + 0x250))(v21);

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_29:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_19:
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_22:
    v24 = v23;

    sub_100104098(v24);

LABEL_23:

    return;
  }

  __break(1u);
}

double sub_1000FC430()
{

  v1 = *(v0 + 432);
  v6[6] = *(v0 + 416);
  v6[7] = v1;
  v6[8] = *(v0 + 448);
  v2 = *(v0 + 368);
  v6[2] = *(v0 + 352);
  v6[3] = v2;
  v3 = *(v0 + 400);
  v6[4] = *(v0 + 384);
  v6[5] = v3;
  v4 = *(v0 + 336);
  v6[0] = *(v0 + 320);
  v6[1] = v4;
  sub_1001036D0(v6);
  sub_10001B360(*(v0 + 536));

  return result;
}

uint64_t sub_1000FC53C()
{
  v0 = StateObserver.deinit();

  v1 = *(v0 + 432);
  v6[6] = *(v0 + 416);
  v6[7] = v1;
  v6[8] = *(v0 + 448);
  v2 = *(v0 + 368);
  v6[2] = *(v0 + 352);
  v6[3] = v2;
  v3 = *(v0 + 400);
  v6[4] = *(v0 + 384);
  v6[5] = v3;
  v4 = *(v0 + 336);
  v6[0] = *(v0 + 320);
  v6[1] = v4;
  sub_1001036D0(v6);
  sub_10001B360(*(v0 + 536));

  return v0;
}

uint64_t sub_1000FC65C()
{
  sub_1000FC53C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinesInstrument(uint64_t a1)
{
  result = qword_1004A9588;
  if (!qword_1004A9588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC7AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A02E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4EA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000FC85C()
{
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0, &qword_1003D7F38, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1000FC8E8(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1000FC9A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000FC9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000FCA10()
{
  v1 = *(**(v0 + 128) + 200);

  v3 = v1(v2);

  (*(*v3 + 280))(sub_1000FCC90, 0);

  v4 = *(**(v0 + 88) + 144);

  v4(__dst, v5);

  if ((__dst[0].n128_u64[0] & 0x8000000000000000) != 0)
  {
    if (__dst[0].n128_u64[0] == 0x8000000000000018)
    {
      v6 = *(**(v0 + 144) + 144);

      v6(v15, v7);

      memcpy(__dst, v15, sizeof(__dst));
      sub_1000FCCD8(0, __dst);
      sub_100013C4C(__dst);
      return;
    }
  }

  else
  {
    sub_10001B360(__dst[0].n128_u64[0]);
  }

  v8 = *(**(v0 + 88) + 144);

  v8(__dst, v9);

  if ((__dst[0].n128_u64[0] & 0x8000000000000000) != 0)
  {
    if (__dst[0].n128_u64[0] == 0x8000000000000010)
    {
      v10 = *(v0 + 312);
      if (!v10)
      {
        return;
      }

      v11 = *((swift_isaMask & *v10) + 0xD8);
      v12 = v10;
      v13 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    sub_10001B360(__dst[0].n128_u64[0]);
  }

  v14 = *(v0 + 312);
  if (!v14)
  {
    return;
  }

  v11 = *((swift_isaMask & *v14) + 0xD8);
  v12 = v14;
  v13 = 1;
LABEL_12:
  v11(v13);
}

void sub_1000FCC90(id *a1)
{
  a1[2] = 0;
  a1[3] = 0;

  *a1 = 0;
  a1[1] = 0;
}

void sub_1000FCCD8(char a1, __n128 *a2)
{
  v3 = v2;
  v6 = *(**(v2 + 88) + 144);

  v6(&v137, v7);

  if ((v137._countAndFlagsBits >> 62) <= 1)
  {
    sub_10001B360(v137._countAndFlagsBits);
    return;
  }

  v8 = 0x8000000000000010;
  if (v137._countAndFlagsBits == 0x8000000000000018)
  {
    if (a1)
    {
      v9 = SnapType.all.unsafeMutableAddressor();
      sub_1000F7A14(*v9, a2);
    }

    sub_1000FAAC8();
    v10 = *(v2 + 304);
    if (v10)
    {
      v11 = *(v2 + 312);
      if (v11)
      {
        v12 = &swift_isaMask;
        v13 = *((swift_isaMask & *v10) + 0x2C0);
        v14 = v11;
        v15 = v10;
        v16 = *v13();
        (*(v16 + 376))();
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          v20 = (v13)(v19);
          v21 = (*(*v20 + 216))(v20);

          if (v21)
          {

            type metadata accessor for WorldAnchor();
            v13();
            v22 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
            (*((swift_isaMask & *v14) + 0x2E0))(v22);
          }
        }

        v23 = *((swift_isaMask & *v15) + 0x2F0);
        v129 = v15;
        v24 = v14;
        v25 = v23();
        v26 = v25 > 8 || ((1 << v25) & 0x1E9) == 0;
        v125 = v24;
        v126 = v24;
        v130 = v2;
        if (!v26)
        {
LABEL_16:
          (*((*v12 & *v24) + 0xD8))(0);
          v27 = v3[28];
          if (!v27)
          {
            goto LABEL_68;
          }

          v28 = *((*v12 & *v24) + 0x238);
          v10 = v27;
          v29 = v28();
          v30 = v29;
          if (v29 >> 62)
          {
LABEL_64:
            v31 = _CocoaArrayWrapper.endIndex.getter();
            if (v31)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
LABEL_19:
              v32 = 0;
              v33 = 0;
              v132 = *((*v12 & *v10) + 0xB8);
              v133 = v30 & 0xC000000000000001;
              v127 = v30 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                v123 = v32;
                v8 = v33;
                while (1)
                {
                  if (v133)
                  {
                    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v8 >= *(v127 + 16))
                    {
                      goto LABEL_62;
                    }

                    v34 = *(v30 + 8 * v8 + 32);
                  }

                  v3 = v34;
                  if (__OFADD__(v8, 1))
                  {
                    __break(1u);
LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
                    goto LABEL_64;
                  }

                  v134 = v8 + 1;
                  v12 = v30;
                  v35 = v10;
                  v36 = v132();
                  v38 = v37;

                  v39 = *((swift_isaMask & *v3) + 0xB8);
                  v40 = v3;
                  v41 = v39();
                  v3 = v42;

                  if (v36 == v41 && v38 == v3)
                  {
                    break;
                  }

                  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v30 = v12;
                  v33 = v8 + 1;
                  if (v44)
                  {
                    goto LABEL_34;
                  }

                  ++v8;
                  if (v134 == v31)
                  {

                    v3 = v130;
                    v12 = &swift_isaMask;
                    v8 = 0x8000000000000010;
                    v45 = v126;
                    if (v123)
                    {
LABEL_67:

LABEL_68:
                      if (qword_1004A0288 != -1)
                      {
                        swift_once();
                      }

                      v12 = qword_1004D4DB0;
                      v137._countAndFlagsBits = 0;
                      v137._object = 0xE000000000000000;
                      _StringGuts.grow(_:)(35);

                      v137._countAndFlagsBits = 0xD000000000000014;
                      v137._object = 0x8000000100407350;
                      v73 = v3[39];
                      if (!v73)
                      {
                        goto LABEL_111;
                      }

                      v74 = *((swift_isaMask & *v73) + 0xB8);
                      v75 = v73;
                      v76 = v74();
                      v78 = v77;

                      v79._countAndFlagsBits = v76;
                      v79._object = v78;
                      String.append(_:)(v79);

                      v80._countAndFlagsBits = 0x6D61726620746120;
                      v80._object = 0xEB00000000203A65;
                      String.append(_:)(v80);
                      v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                      String.append(_:)(v81);

                      Log.default(_:isPrivate:)(v137, 0);

                      v24 = v125;
                      sub_100104508(v125);
                      sub_1001057DC(v125);
                      v82 = v3[39];
                      v3[39] = 0;

                      v83 = v3[11];
                      v137._countAndFlagsBits = v3[67];
                      countAndFlagsBits = v137._countAndFlagsBits;
                      v84 = *(*v83 + 392);
                      sub_100071684(v137._countAndFlagsBits);
                      sub_100071684(countAndFlagsBits);

                      v84(&v137);
                      sub_10001B360(countAndFlagsBits);

                      v10 = v126;
                      if (v3[67] == v8)
                      {
                        v85 = sub_1001059B0();
                        if (v85)
                        {
                          v86 = v85;
                          v87 = (*((swift_isaMask & *v85) + 0x250))();
                          if ((v87 & 0xC000000000000001) == 0)
                          {
                            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
                            {
                              v88 = *(v87 + 40);
                              goto LABEL_76;
                            }

                            __break(1u);
LABEL_82:
                            v49 = _CocoaArrayWrapper.endIndex.getter();
                            v46 = v129;
                            goto LABEL_40;
                          }

                          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:
                          v89 = v88;

                          v90 = v3[39];
                          v3[39] = v89;

                          v91 = v3[39];
                          if (v91)
                          {
                            v92 = *((swift_isaMask & *v91) + 0xD8);
                            v93 = v91;
                            v92(3);
                          }
                        }
                      }

                      v94 = v3[13];
                      LOBYTE(v137._countAndFlagsBits) = 5;
                      v95 = *(*v94 + 392);

                      v95(&v137);

                      return;
                    }

LABEL_66:
                    (*((*v12 & *v10) + 0x330))(v45);
                    goto LABEL_67;
                  }
                }

                v30 = v12;
                v33 = v8 + 1;
LABEL_34:
                v32 = 1;
                if (v33 == v31)
                {

                  v3 = v130;
                  v8 = 0x8000000000000010;
                  goto LABEL_67;
                }
              }
            }
          }

          v45 = v126;
          goto LABEL_66;
        }

        v46 = v129;
        countAndFlagsBits = *((swift_isaMask & *v129) + 0x238);
        v48 = countAndFlagsBits();
        if (v48 >> 62)
        {
          goto LABEL_82;
        }

        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

        v125 = v24;
        if (!v49)
        {
          v51 = (*((*v12 & *v24) + 0x238))(v50);
          v52 = v51;
          v124 = countAndFlagsBits;
          if (v51 >> 62)
          {
            v96 = v51;
            v97 = _CocoaArrayWrapper.endIndex.getter();
            v52 = v96;
            v53 = v97;
            if (v97)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v53)
            {
LABEL_43:
              if (v53 < 1)
              {
                goto LABEL_110;
              }

              v12 = 0;
              v135 = *((swift_isaMask & *v24) + 0xB8);
              v131 = v52 & 0xC000000000000001;
              v128 = v52;
              do
              {
                if (v131)
                {
                  v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v58 = *(v52 + 8 * v12 + 32);
                }

                v8 = v58;
                v59 = v24;
                v60 = v135();
                v62 = v61;

                v30 = v8;
                v63 = (*((swift_isaMask & *v8) + 0x250))();
                v3 = v63;
                if ((v63 & 0xC000000000000001) != 0)
                {
                  v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_63;
                  }

                  v64 = *(v63 + 32);
                }

                v65 = v64;

                v67 = (*((swift_isaMask & *v65) + 0xB8))(v66);
                v69 = v68;

                if (v60 == v67 && v62 == v69)
                {
                }

                else
                {
                  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v71 & 1) == 0)
                  {
                    v72 = v46;
                    v55 = v8;
                    v56 = 0;
                    v57 = v10;
                    goto LABEL_47;
                  }
                }

                v54 = v46;
                v55 = v8;
                v56 = v10;
                v57 = 0;
LABEL_47:
                sub_100104F90(v55, v56, v57, 1);
                v24 = v126;
                ++v12;

                v52 = v128;
              }

              while (v53 != v12);
            }
          }

          v50 = v46;
          v125 = v50;
          v12 = &swift_isaMask;
          countAndFlagsBits = v124;
        }

        v98 = (countAndFlagsBits)(v50);
        v99 = v98;
        if (v98 >> 62)
        {
          goto LABEL_107;
        }

        v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v100)
        {
LABEL_108:

          v3 = v130;
          v8 = 0x8000000000000010;
          v24 = v126;
          goto LABEL_16;
        }

LABEL_87:
        if (v100 < 1)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return;
        }

        v101 = 0;
        v136 = *((*v12 & *v129) + 0xB8);
        while (1)
        {
          v107 = (v99 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v99 + 8 * v101 + 32);
          v108 = v107;
          v109 = v129;
          v110 = v136();
          v112 = v111;

          v113 = (*((*v12 & *v108) + 0x250))();
          if ((v113 & 0xC000000000000001) != 0)
          {
            v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_107:
              v100 = _CocoaArrayWrapper.endIndex.getter();
              if (!v100)
              {
                goto LABEL_108;
              }

              goto LABEL_87;
            }

            v114 = *(v113 + 32);
          }

          v115 = v114;

          v117 = (*((*v12 & *v115) + 0xB8))(v116);
          v119 = v118;

          if (v110 == v117 && v112 == v119)
          {
            break;
          }

          v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v121)
          {
            goto LABEL_104;
          }

          v102 = v130[39];
          v103 = v102;
          v104 = v108;
          v105 = 0;
          v106 = v102;
LABEL_90:
          sub_100104F90(v104, v105, v106, 1);
          v12 = &swift_isaMask;
          ++v101;

          if (v100 == v101)
          {
            goto LABEL_108;
          }
        }

LABEL_104:
        v122 = v130[39];
        v103 = v122;
        v104 = v108;
        v105 = v122;
        v106 = 0;
        goto LABEL_90;
      }
    }
  }
}

id sub_1000FDB20(uint64_t a1, void **a2, void *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a1 + 224);
  *(a1 + 224) = *a2;
  v13 = v11;

  if (a3)
  {
    v14 = *(a1 + 304);
    *(a1 + 304) = a3;
    v15 = a3;

    v16 = a4[22];
    *(a1 + 240) = a4[21];
    *(a1 + 256) = v16;
    v17 = a4[24];
    *(a1 + 272) = a4[23];
    *(a1 + 288) = v17;
  }

  if (a5)
  {
    v18 = *(**(a1 + 128) + 144);

    v18(&v94, v19);

    v20 = v94;
    v21 = v95;

    v22 = *(**(a1 + 128) + 400);

    v23 = v22(&v94);
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = v21;

    v23(&v94, 0);
  }

  else
  {
    sub_1000FF0D4(a4, &v94, *(a1 + 464));
    v27 = *&v94;
    v28 = BYTE8(v94);
    v29 = v95;
    v30 = v96;
    v31 = *(**(a1 + 128) + 144);

    v31(&v94, v32);

    v33 = v94;

    v34 = *(**(a1 + 128) + 144);

    v34(&v94, v35);

    v36 = *(&v94 + 1);
    if (v28 & 1) != 0 || !v29 || (v30)
    {

      v37 = 0;
      v33 = 0;
    }

    else
    {
      if (v33)
      {
        v61 = *((swift_isaMask & *v33) + 0x208);

        v62 = v33;
        v61(v27);
      }

      else
      {
        v63 = objc_allocWithZone(type metadata accessor for ScreenPoint());

        v33 = ScreenPoint.init(_:)();
        v64 = v33;
        v62 = 0;
      }

      type metadata accessor for WorldAnchor();

      v65 = v62;
      WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
      v66 = objc_allocWithZone(type metadata accessor for WorldPoint());
      v37 = WorldPoint.init(anchor:type:state:)();

      v67 = v37;
    }

    v38 = *(**(a1 + 128) + 400);

    v39 = v38(&v94);
    v41 = *v40;
    v42 = *(v40 + 8);
    *v40 = v33;
    *(v40 + 8) = v37;

    v39(&v94, 0);
  }

  result = [objc_opt_self() jasperAvailable];
  if (result)
  {
    v44 = *(a6 + 112);
    v45 = *(a6 + 80);
    v90 = *(a6 + 96);
    v91 = v44;
    v46 = *(a6 + 112);
    v92 = *(a6 + 128);
    v47 = *(a6 + 48);
    v48 = *(a6 + 16);
    v86 = *(a6 + 32);
    v87 = v47;
    v49 = *(a6 + 48);
    v50 = *(a6 + 80);
    v88 = *(a6 + 64);
    v89 = v50;
    v51 = *(a6 + 16);
    v85[0] = *a6;
    v85[1] = v51;
    v100 = v90;
    v101 = v46;
    v102 = *(a6 + 128);
    v96 = v86;
    v97 = v49;
    v98 = v88;
    v99 = v45;
    v93 = *(a6 + 144);
    v103 = *(a6 + 144);
    v94 = v85[0];
    v95 = v48;
    result = sub_1001034A4(&v94);
    if (result != 1)
    {
      v52 = *(**(a1 + 200) + 144);
      sub_10006C92C(v85, &v75, &qword_1004A97B0, &qword_1003DD428);
      sub_10006C92C(&v94, &v75, &qword_1004A1208, &qword_1003D6DF0);

      v52(&v75, v53);

      v71[6] = v81;
      v71[7] = v82;
      v71[8] = v83;
      v72 = v84;
      v71[2] = v77;
      v71[3] = v78;
      v71[4] = v79;
      v71[5] = v80;
      v71[0] = v75;
      v71[1] = v76;
      v54 = *(&v83 + 1);
      v55 = *(&v83 + 1);
      sub_100013BF8(v71);
      v56 = *(**(a1 + 200) + 144);

      v56(&v75, v57);

      v73[6] = v81;
      v73[7] = v82;
      v73[8] = v83;
      v74 = v84;
      v73[2] = v77;
      v73[3] = v78;
      v73[4] = v79;
      v73[5] = v80;
      v73[0] = v75;
      v73[1] = v76;
      v58 = v84;

      sub_100013BF8(v73);
      v81 = v100;
      v82 = v101;
      LOBYTE(v83) = v102;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      *(&v83 + 1) = v54;
      v84 = v58;
      v59 = *(a1 + 200);
      v69[0] = v94;
      v69[1] = v95;
      v69[4] = v98;
      v69[5] = v99;
      v69[2] = v96;
      v69[3] = v97;
      v70 = v58;
      v69[7] = v101;
      v69[8] = v83;
      v69[6] = v100;
      v60 = *(*v59 + 392);

      sub_100103798(&v75, &v68);
      v60(v69);
      sub_100013BF8(&v75);

      return sub_100018F04(v85, &qword_1004A97B0, &qword_1003DD428);
    }
  }

  return result;
}

void sub_1000FE180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(**(a1 + 88) + 144);

  v8(&v26, v9);

  if ((v26 >> 62) <= 1)
  {
    sub_10001B360(v26);
    v10 = 0uLL;
LABEL_3:
    v11 = 1;
    v12 = 0uLL;
LABEL_4:
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    return;
  }

  v10 = 0uLL;
  if (v26 != 0x8000000000000010)
  {
    goto LABEL_3;
  }

  v13 = *(a1 + 312);
  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = *((swift_isaMask & *v13) + 0x238);
  v15 = v13;
  v16 = v14();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v20 = (*((swift_isaMask & *v18) + 0x250))(v19);

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 32);
LABEL_13:
    v22 = v21;

    (*((swift_isaMask & *v22) + 0x2B0))(v23);

    simd_float4x4.position.getter();
    v25 = v24;
    simd_float4x4.position.getter();
    v10 = v25;
    v11 = 0;
    goto LABEL_4;
  }

LABEL_17:
  __break(1u);
}

void sub_1000FE3C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v8 = *(**(v4 + 128) + 144);

  v8(&v45, v9);

  v10 = v46;
  v12 = v47;
  v11 = v48;

  v13 = *(**(v5 + 128) + 144);

  v13(&v45, v14);

  v15 = v45;
  v16 = v46;
  v18 = v47;
  v17 = v48;
  v19 = v48;

  v20 = *(**(v5 + 128) + 144);

  v20(&v45, v21);

  v22 = v46;
  v23 = v47;
  v24 = v48;

  if (!v23)
  {
    v34 = objc_allocWithZone(type metadata accessor for ScreenPoint());
    v35 = ScreenPoint.init(_:)();

    v12 = v35;
    v36 = v35;
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    v25 = *((swift_isaMask & *v12) + 0x208);
    v26 = v12;
    v25(a4);

    v27 = v26;
    if (v17)
    {
LABEL_4:
      v28 = *((swift_isaMask & *v19) + 0x2C8);

      v28(v29);

      v30 = *((swift_isaMask & *v19) + 0x2F8);
      v31 = v19;
      v30(a2);

      v32 = *((swift_isaMask & *v31) + 0xD8);
      v33 = v31;
      v32(a3);

LABEL_7:
      v38 = *(**(v5 + 128) + 400);
      v39 = v19;

      v40 = v38(&v45);
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);
      *(v41 + 16) = v12;
      *(v41 + 24) = v17;

      v40(&v45, 0);

      return;
    }

LABEL_6:
    v37 = objc_allocWithZone(type metadata accessor for WorldPoint());

    v17 = WorldPoint.init(anchor:type:state:)();
    v33 = v17;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1000FE730(void *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_10008D4F0();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 camera];

    [v7 transform];
    simd_float4x4.forward.getter();
    v54 = 0.0 - *v8.i32;
    v53 = vsub_f32(0, vext_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL), 4uLL));
    v9 = simd_float4x4.position.getter();
    v13 = vmuls_lane_f32(v12 + vmuls_lane_f32(0.1, v53, 1), v53, 1) + ((v54 * (v10 + (v54 * 0.1))) + ((v11 + (0.1 * v53.f32[0])) * v53.f32[0]));
    *&v14 = (*((swift_isaMask & *a1) + 0x2A0))(v9);
    v61 = v15;
    v62 = v14;
    v60 = v16;
    v56 = v17;
    *&v18 = (*((swift_isaMask & *a1) + 0x2A8))();
    v58 = v19;
    v59 = v18;
    v57 = v20;
    v55 = v21;
    type metadata accessor for MeasureCamera();
    simd_float4x4.position.getter();
    v51 = v22;
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v52 = v23;
    simd_float4x4.position.getter();
    v50 = v24;
    static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    v26 = v25;
    v27 = vsub_f32(*v50.i8, *v51.i8);
    v28 = *&v50.i32[2] - *&v51.i32[2];
    __asm { FMOV            V5.2S, #1.0 }

    v34 = vcgt_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v52, v52, 8uLL)), _D5);
    if (v34.i8[4])
    {
      if (v34.i8[0])
      {
        sub_100103650(&v73);
LABEL_10:
        v46 = v80;
        *(a3 + 96) = v79;
        *(a3 + 112) = v46;
        *(a3 + 128) = v81;
        *(a3 + 144) = v82;
        v47 = v76;
        *(a3 + 32) = v75;
        *(a3 + 48) = v47;
        v48 = v78;
        *(a3 + 64) = v77;
        *(a3 + 80) = v48;
        v49 = v74;
        *a3 = v73;
        *(a3 + 16) = v49;
        return;
      }

      v40 = vmul_f32(v53, *&vextq_s8(v50, v50, 4uLL));
      v41 = vdup_lane_s32(v53, 0);
      v41.f32[0] = v54;
      v42 = (v13 - (v40.f32[1] + ((v54 * *v50.i32) + v40.f32[0]))) / ((v53.f32[1] * (0.0 - v28)) + vaddv_f32(vmul_f32(v41, vsub_f32(0, v27))));
      v43 = v28 * v42;
      *&v44 = vsub_f32(*v50.i8, vmul_n_f32(v27, v42));
      *(&v44 + 1) = __PAIR64__(1.0, *&v50.i32[2] - v43);
      v56 = v44;
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    else if (v34.i8[0])
    {
      v35 = vmul_f32(v53, *&vextq_s8(v51, v51, 4uLL));
      v36 = v13 - (v35.f32[1] + ((v54 * *v51.i32) + v35.f32[0]));
      v37 = vdup_lane_s32(v53, 0);
      v37.f32[0] = v54;
      v38 = v36 / ((v53.f32[1] * v28) + vaddv_f32(vmul_f32(v37, v27)));
      *&v39 = vadd_f32(*v51.i8, vmul_n_f32(v27, v38));
      *(&v39 + 1) = __PAIR64__(1.0, *&v51.i32[2] + (v28 * v38));
      v55 = v39;
      simd_float4x4.position.getter();
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
    }

    closestPointOnLine(lineP1:lineP2:point:)();
    v63 = v45;
    v64 = v62;
    v65 = v61;
    v66 = v60;
    v67 = v56;
    v68 = v59;
    v69 = v58;
    v70 = v57;
    v71 = v55;
    sub_100103648(&v63);
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v82 = v72;
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    v73 = v63;
    v74 = v64;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1000FEB6C(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [objc_opt_self() jasperAvailable];
  v6 = 0uLL;
  if (!v5)
  {
    v12 = 0;
    v19 = 0.0;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_41:
    *a2 = v12;
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    *(a2 + 64) = v22;
    *(a2 + 80) = v19;
    return;
  }

  v7 = *(**(v2 + 176) + 144);

  v7(&v69, v8);

  v9 = *(&v69 + 1);

  v44 = a2;
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = matrix_identity_float4x4.columns[1];
  v54 = matrix_identity_float4x4.columns[2];
  v51 = matrix_identity_float4x4.columns[3];
  v52 = matrix_identity_float4x4.columns[0];
  if (v10)
  {
    if (v10 < 1)
    {
      __break(1u);
LABEL_37:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36)
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }

    v50 = 1;
    swift_beginAccess();
    v11 = 0;
    v49 = 0.0;
    v12 = 0;
    v13 = 900.0;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v48 = v51;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = v15;
      sub_1000FE730(v15, a1, v55);
      v75 = v55[6];
      v76 = v55[7];
      v77 = v55[8];
      v78 = v56;
      v71 = v55[2];
      v72 = v55[3];
      v73 = v55[4];
      v74 = v55[5];
      v69 = v55[0];
      v70 = v55[1];
      if (sub_100103514(&v69) == 1 || (v17 = vsub_f32(*(v2 + 464), *&v69), v14 = vaddv_f32(vmul_f32(v17, v17)), v14 >= v13))
      {
        v14 = v13;
      }

      else
      {
        v53 = v75;
        v54 = v76;
        v51 = v77;
        v52 = v74;
        v47 = v72;
        v48 = v73;
        v49 = *&v69;
        v50 = 0;
        v18 = v16;
        v16 = v12;
        v12 = v18;
        v45 = v70;
        v46 = v71;
      }

      ++v11;

      v13 = v14;
    }

    while (v10 != v11);

    if (v12)
    {
LABEL_33:
      if (v50)
      {
LABEL_34:

        v12 = 0;
        v19 = 0.0;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        a2 = v44;
        v6 = 0uLL;
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  else
  {

    v49 = 0.0;
    v50 = 1;
    v45 = v52;
    v46 = v53;
    v47 = v54;
    v48 = v51;
  }

  v30 = *(**(v2 + 176) + 144);

  v30(&v59, v31);

  v32 = v59;

  v33 = *(**(v2 + 176) + 144);

  v33(&v59, v34);

  v35 = v60;

  *&v59 = v32;
  sub_100103A50(v35);
  v9 = v59;
  if (v59 >> 62)
  {
    goto LABEL_37;
  }

  v36 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
LABEL_21:
    if (v36 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    swift_beginAccess();
    v37 = 0;
    v12 = 0;
    v38 = 900.0;
    do
    {
      while (1)
      {
        v39 = (v9 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + 32 + 8 * v37);
        v40 = v39;
        sub_1000FE730(v39, a1, v57);
        v65 = v57[6];
        v66 = v57[7];
        v67 = v57[8];
        v68 = v58;
        v61 = v57[2];
        v62 = v57[3];
        v63 = v57[4];
        v64 = v57[5];
        v59 = v57[0];
        v60 = v57[1];
        if (sub_100103514(&v59) == 1)
        {
          break;
        }

        v41 = vsub_f32(*(v2 + 464), *&v59);
        v42 = vaddv_f32(vmul_f32(v41, v41));
        if (v42 >= v38)
        {
          break;
        }

        v53 = v65;
        v54 = v66;
        v51 = v67;
        v52 = v64;
        v47 = v62;
        v48 = v63;
        v45 = v60;
        v46 = v61;
        v49 = *&v59;

        v50 = 0;
        v38 = v42;
        v12 = v40;
        if (v36 - 1 == v37++)
        {

          v12 = v40;
          goto LABEL_39;
        }
      }

      ++v37;
    }

    while (v36 != v37);

    goto LABEL_33;
  }

LABEL_38:

  v12 = 0;
  if (v50)
  {
    goto LABEL_34;
  }

LABEL_39:
  v6 = sub_100103530(a1, v49, v45, v46, v47, v48, v52, v53, v54, v23, v24, v25, v26, v27, v28, v29, v51);
  a2 = v44;
  if (v12)
  {
    v19 = v49;
    goto LABEL_41;
  }

LABEL_43:
  __break(1u);
}

void sub_1000FF0D4(_OWORD *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v73 = sub_10008D4F0();
  if (!v73)
  {
    v37 = 0.0;
    v38 = 0;
    goto LABEL_32;
  }

  *&v71 = v13;
  v72 = a1;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = [v16 kPEShowStats];

  if (v17)
  {
    MeasureCore.shared.unsafeMutableAddressor();

    MeasureCore.planeSelectionStats.getter();

    if ((v122 & 1) == 0)
    {
      sub_10004D9B4();
      *&v70 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      v19 = v119;
      v18[1] = v118;
      v18[2] = v19;
      v20 = v121;
      v18[3] = v120;
      v18[4] = v20;
      *&v130 = sub_100103790;
      *(&v130 + 1) = v18;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v129 = sub_100041180;
      *(&v129 + 1) = &unk_10046E2C8;
      *&v69 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      v68[1] = sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
      sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v69;
      v22 = v70;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v9 + 8))(v11, v8);
      (*(v71 + 8))(v15, v12);
    }
  }

  v23 = *(v4 + 312);
  if (!v23)
  {
    v36 = 0;
    v27 = v73;
    goto LABEL_24;
  }

  v24 = *((swift_isaMask & *v23) + 0x238);
  v25 = v23;
  v26 = v24();

  if (v26 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v27 = v73;
    if (!v39)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v27 = v73;
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v28 = *(v26 + 32);
  }

  v29 = v28;

  v31 = (*((swift_isaMask & *v29) + 0x250))(v30);

  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_23:

    v36 = 0;
    goto LABEL_24;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v31 + 32);
LABEL_16:
    v33 = v32;

    v35 = (*((swift_isaMask & *v33) + 0x2C0))(v34);

    v36 = (*(*v35 + 216))();

LABEL_24:
    *(v4 + 321) = *(v4 + 312) == 0;
    v40 = *(**(v4 + 88) + 144);

    v40(&aBlock, v41);

    if ((aBlock >> 62) > 1)
    {
      v42 = aBlock == 0x8000000000000018;
    }

    else
    {
      sub_10001B360(aBlock);
      v42 = 0;
    }

    *(v4 + 322) = v42;
    *(v4 + 456) = v36;

    MeasureCore.shared.unsafeMutableAddressor();
    v43 = *(v4 + 320);
    v44 = *(v4 + 336);
    v45 = *(v4 + 368);
    v95[2] = *(v4 + 352);
    v95[3] = v45;
    v46 = *(v4 + 336);
    v47 = *(v4 + 352);
    v48 = *(v4 + 320);
    v95[0] = v43;
    v95[1] = v46;
    v49 = *(v4 + 432);
    v100 = *(v4 + 448);
    v50 = *(v4 + 400);
    v51 = *(v4 + 432);
    v98 = *(v4 + 416);
    v99 = v51;
    v52 = *(v4 + 368);
    v53 = *(v4 + 400);
    v96 = *(v4 + 384);
    v97 = v53;
    v107 = v98;
    v108 = v49;
    v109 = *(v4 + 448);
    v103 = v47;
    v104 = v52;
    v105 = v96;
    v106 = v50;
    v101 = v48;
    v102 = v44;
    nullsub_1();
    v134 = v107;
    v135 = v108;
    v136 = v109;
    v130 = v103;
    v131 = v104;
    v132 = v105;
    v133 = v106;
    aBlock = v101;
    v129 = v102;

    sub_100103674(v95, &v87);
    MeasureCore.hitTest(screenPoint:frame:orientation:context:planeTypes:)();
    v114 = v91;
    v115 = v92;
    v116 = v93;
    v117 = v94;
    v110 = v87;
    v111 = v88;
    v112 = v89;
    v113 = v90;
    sub_1001036D0(v95);

    v38 = *(&v93 + 1);
    if (*(&v93 + 1))
    {
      v73 = v88;
      v70 = v90;
      v71 = v89;
      v69 = v91;
      v54 = v94;
      if (*(*(&v93 + 1) + 48) != 4)
      {
        v55 = *(v4 + 416);
        v77[4] = *(v4 + 400);
        v77[5] = v55;
        v77[6] = *(v4 + 432);
        v78 = *(v4 + 448);
        v56 = *(v4 + 352);
        v77[0] = *(v4 + 336);
        v77[1] = v56;
        v57 = *(v4 + 384);
        v77[2] = *(v4 + 368);
        v77[3] = v57;
        v58 = v73;
        *(v4 + 336) = v87;
        *(v4 + 352) = v58;
        v59 = v70;
        *(v4 + 368) = v71;
        *(v4 + 384) = v59;
        v60 = v92;
        v61 = v93;
        *(v4 + 400) = v69;
        *(v4 + 416) = v60;
        *(v4 + 432) = v61;
        *(v4 + 440) = v38;
        *(v4 + 448) = v54;
        v81 = v112;
        v82 = v113;
        v79 = v110;
        v80 = v111;
        v86 = v117;
        v84 = v115;
        v85 = v116;
        v83 = v114;
        sub_100103724(&v79, v76);
        sub_100018F04(v77, &qword_1004A3E20, &unk_1003D7890);
      }

      v62 = v72[21];
      v63 = v72[22];
      v64 = v72[23];
      v65 = v72[24];
      v74 = 0;
      v123 = v62;
      v124 = v63;
      v125 = v64;
      v126 = v65;
      v127 = 0;
      v75 = 1;
      memset(v76, 0, 64);
      v76[64] = 1;
      type metadata accessor for WorldAnchor();
      swift_allocObject();
      v83 = v114;
      v84 = v115;
      v85 = v116;
      v86 = v117;
      v79 = v110;
      v80 = v111;
      v81 = v112;
      v82 = v113;
      sub_100103724(&v79, v77);
      v38 = WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)();
      v37 = a3;
      v66 = static MeasureObjectState.default;
      sub_100018F04(&v87, &qword_1004A3E20, &unk_1003D7890);

      v67 = 0;
      goto LABEL_33;
    }

    v37 = 0.0;
LABEL_32:
    v66 = 0;
    v67 = 1;
LABEL_33:
    *a2 = v37;
    *(a2 + 8) = v67;
    *(a2 + 16) = v38;
    *(a2 + 24) = v66;
    *(a2 + 32) = v67;
    return;
  }

  __break(1u);
}

double sub_1000FF9D0(_OWORD *a1)
{
  sub_1000FF0D4(a1, &v8, *(v1 + 464));
  if (v9 & 1) != 0 || !v10 || (v12)
  {
    v3 = *(**(v1 + 128) + 400);

    v4 = v3(&v8);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;

    v4(&v8, 0);
  }

  else
  {
    sub_1000FE3C4(v10, 0, v11, v8);
  }

  return result;
}

void sub_1000FFAE0(uint64_t *a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v2 = *(qword_1004D4AC8 + 104);
    if (v2)
    {
      v3 = v2;
      sub_1001C441C(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FFB8C(float32x4_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v104 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchQoS();
  v7 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000F974(&qword_1004A9798, &qword_1003DD420);
  v107 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v10;
  __chkstk_darwin(v12);
  v112 = &v95 - v13;
  v14 = SnapType.all.unsafeMutableAddressor();
  sub_1000F7A14(*v14, a1);
  sub_1000FAAC8();
  v15 = *(v1 + 304);
  if (!v15)
  {
    return;
  }

  v16 = *(v1 + 312);
  if (!v16)
  {
    return;
  }

  v98 = v4;
  v99 = v11;
  v97 = v5;
  v17 = *((swift_isaMask & *v16) + 0x238);
  v18 = ((swift_isaMask & *v16) + 568);
  v19 = v15;
  v109 = v16;
  v20 = v17();
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_66;
    }

    v21 = *(v20 + 32);
  }

  v18 = v21;

  v17 = &swift_isaMask;
  v23 = *((swift_isaMask & *v18) + 0x250);
  v110 = (swift_isaMask & *v18) + 592;
  v111 = v23;
  v24 = (v23)(v22);
  v106 = v19;
  v96 = v7;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v25 = *(v24 + 32);
  }

  v19 = v25;

  (*((swift_isaMask & *v19) + 0xD8))(0);

  v26 = v111();
  if ((v26 & 0xC000000000000001) == 0)
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v27 = *(v26 + 40);
      goto LABEL_12;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_66:
  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v28 = v27;

  v29 = v28;
  (*((*v17 & *v28) + 0xD8))(0);

  v19 = v106;
  if ((*(v2 + 576) & 1) == 0)
  {
    v31 = *(v2 + 560);
    v32 = a1->i64[0] >= v31;
    v33 = a1->i64[0] - v31;
    if (!v32)
    {
      __break(1u);
      goto LABEL_78;
    }

    v30 = (*((*v17 & *v18) + 0x2E8))(v33 / (*&a1->i64[1] - *(v2 + 568)));
  }

  v34 = *((*v17 & *v19) + 0x2F0);
  v101 = (*v17 & *v19) + 752;
  v102 = v34;
  v35 = (v34)(v30);
  if (v35 > 8 || ((1 << v35) & 0x1E9) == 0)
  {
    v50 = v19;
    sub_100104F90(v18, 0, v15, 1);

    goto LABEL_43;
  }

  type metadata accessor for WorldAnchor();
  v36 = (*v17 & *v19);
  v100 = v18;
  v37 = v17;
  v36 += 88;
  v38 = *v36;
  (*v36)();
  v39 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v7 = v109;
  v40 = (*((*v37 & *v109) + 0x2C8))(v39);
  (v38)(v40);
  v41 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v42 = *v37;
  v18 = v100;
  (*((v42 & *v7) + 0x2E0))(v41);
  if ([objc_opt_self() jasperAvailable])
  {
    v43 = v102;
    v44 = v102() == 6;
    v45 = (*((swift_isaMask & *v18) + 0x2A0))(v44);
    v46 = (v43)(v45);
    if (v46 <= 8 && ((1 << v46) & 0x160) != 0)
    {
      v47 = *(**(v2 + 200) + 144);

      v47(v113, v48);

      v121 = v113[6];
      v122 = v113[7];
      v123 = v113[8];
      v124 = v114;
      v117 = v113[2];
      v118 = v113[3];
      v119 = v113[4];
      v120 = v113[5];
      v115 = v113[0];
      v116 = v113[1];
      sub_10006C92C(&v115, v113, &qword_1004A1208, &qword_1003D6DF0);
      sub_100013BF8(&v115);
      v125[6] = v121;
      v125[7] = v122;
      v126 = v123;
      v125[2] = v117;
      v125[3] = v118;
      v125[4] = v119;
      v125[5] = v120;
      v125[0] = v115;
      v125[1] = v116;
      if (sub_10001376C(v125) != 1)
      {
        v29 = *&v125[0];
        v49 = (*((swift_isaMask & **&v125[0]) + 0x258))();
        if (v49 > 1)
        {
          if (v49 != 2)
          {
            if (qword_1004A0350 != -1)
            {
              swift_once();
            }

            sub_1001250F4(v29, v109);
          }

          goto LABEL_34;
        }

        if (v49)
        {
          if (qword_1004A0350 != -1)
          {
            swift_once();
          }

          sub_1001258C8(v29, v109);
          goto LABEL_34;
        }

        if (qword_1004A0350 == -1)
        {
LABEL_25:
          sub_100125524(v29, v109);
LABEL_34:
          sub_100018F04(&v115, &qword_1004A1208, &qword_1003D6DF0);
          goto LABEL_35;
        }

LABEL_78:
        swift_once();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v51 = *(v2 + 224);
  if (v51)
  {
    v52 = *((swift_isaMask & *v51) + 0xB8);
    v53 = v51;
    v54 = v52();
    v56 = v55;
    v57 = *((swift_isaMask & *v18) + 0xB8);
    v58 = v18;
    v7 = v57();
    v60 = v59;

    if (v54 == v7 && v56 == v60)
    {
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v61 & 1) == 0)
      {
        (*((swift_isaMask & *v53) + 0x330))(v109);
      }
    }

    v19 = v106;
  }

LABEL_43:
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1003D56B0;
  *(v62 + 32) = v18;
  v16 = type metadata accessor for WorldLine();
  a1 = sub_1001030D4(&qword_1004A97A0, &type metadata accessor for WorldLine, &protocol conformance descriptor for WorldLine);
  v18 = v18;
  MeasurementEvent.init(name:results:)();
  if (qword_1004A0180 != -1)
  {
LABEL_69:
    swift_once();
  }

  if (!qword_1004D4AD0)
  {
    __break(1u);
    return;
  }

  v63 = *(qword_1004D4AD0 + qword_1004D4F68);
  if (!v63)
  {
    goto LABEL_50;
  }

  v64 = v99;
  sub_10006C92C(v112, v99, &qword_1004A9798, &qword_1003DD420);
  v65 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v66 = swift_allocObject();
  sub_1001032A4(v64, v66 + v65);
  v16 = (v63 + OBJC_IVAR____TtC7Measure15ResultsReporter_report);
  swift_beginAccess();
  v7 = *(type metadata accessor for Report(0) + 20);
  a1 = *(v16 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + v7) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_77;
  }

  while (1)
  {
    v69 = a1[1].u64[0];
    v68 = a1[1].u64[1];
    if (v69 >= v68 >> 1)
    {
      a1 = sub_100068090((v68 > 1), v69 + 1, 1, a1->i64);
    }

    a1[1].i64[0] = v69 + 1;
    v70 = &a1[v69];
    v70[2].n128_u64[0] = sub_100103314;
    v70[2].n128_u64[1] = v66;
    *(v16 + v7) = a1;
    swift_endAccess();
    sub_1000CC5E0();

    v19 = v106;
LABEL_50:
    v66 = *(v2 + 72);
    v71 = v111();
    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_73:
        swift_once();
        goto LABEL_57;
      }

      v72 = *(v71 + 40);
    }

    v16 = v72;

    sub_100104508(v16);

    v73 = v111();
    if ((v73 & 0xC000000000000001) != 0)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_76;
      }

      v74 = *(v73 + 40);
    }

    v75 = v74;

    sub_1001057DC(v75);

    v76 = *(v2 + 312);
    *(v2 + 312) = 0;

    v77 = *(v2 + 88);
    *&v115 = 0x8000000000000008;
    v78 = *(*v77 + 392);

    v78(&v115);

    v79 = *(v2 + 168);
    v80 = *(*v79 + 200);
    v16 = (*v79 + 200);

    v82 = v80(v81);

    (*(*v82 + 280))(sub_1000337C8, 0);

    if (qword_1004A0350 != -1)
    {
      goto LABEL_73;
    }

LABEL_57:
    v66 = qword_1004D4F08;
    sub_100125C6C(v18, v109);
    v83 = v111();
    if ((v83 & 0xC000000000000001) != 0)
    {
      break;
    }

    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v84 >= 2)
    {
      goto LABEL_59;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    a1 = sub_100068090(0, a1[1].i64[0] + 1, 1, a1->i64);
    *(v16 + v7) = a1;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();

  swift_unknownObjectRelease();
LABEL_59:
  v102();
  v85 = v66 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v85 + 64) = *(v85 + 64) + 1.0;
  v86 = [objc_opt_self() standardUserDefaults];
  v87 = [v86 kPEShowAccuracy];

  if (v87)
  {
    sub_10004D9B4();
    v88 = static OS_dispatch_queue.main.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = v18;
    *&v117 = sub_100103154;
    *(&v117 + 1) = v89;
    *&v115 = _NSConcreteStackBlock;
    *(&v115 + 1) = 1107296256;
    *&v116 = sub_100041180;
    *(&v116 + 1) = &unk_10046E250;
    v90 = _Block_copy(&v115);
    v111 = v18;

    v91 = v103;
    static DispatchQoS.unspecified.getter();
    *&v115 = _swiftEmptyArrayStorage;
    sub_1001030D4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v92 = v19;
    v93 = v104;
    v94 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v90);
    (*(v97 + 8))(v93, v94);
    (*(v96 + 8))(v91, v105);
    sub_100018F04(v112, &qword_1004A9798, &qword_1003DD420);
  }

  else
  {
    sub_100018F04(v112, &qword_1004A9798, &qword_1003DD420);
  }
}

void sub_100100CBC(float32x4_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 304);
  v5 = v4;
  v6 = SnapType.all.unsafeMutableAddressor();
  sub_1000F7A14(*v6, a1);
  sub_1000FAAC8();
  v7 = *(**(v1 + 128) + 144);

  v7(&v109, v8);

  object = v109._object;
  v10 = v110;

  if (!*(&v10 + 1))
  {

    return;
  }

  v105 = a1;
  v106 = v5;
  type metadata accessor for WorldAnchor();
  v104 = v4;
  v11 = *((swift_isaMask & **(&v10 + 1)) + 0x2C0);
  v11();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v12 = type metadata accessor for WorldPoint();
  v13 = objc_allocWithZone(v12);
  v14 = WorldPoint.init(anchor:type:state:)();
  v11();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  v15 = objc_allocWithZone(v12);
  v16 = WorldPoint.init(anchor:type:state:)();
  v17 = objc_allocWithZone(type metadata accessor for WorldLine());
  v18 = v14;
  v102 = v16;
  v103 = v18;
  v19 = WorldLine.init(end1:end2:initialState:)();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = *((swift_isaMask & *v19) + 0x150);
  v23 = v19;

  v22(sub_100103018, v21);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = *((swift_isaMask & *v23) + 0x168);
  v27 = v23;

  v28 = v25;
  v29 = &swift_isaMask;
  v26(sub_100103064, v28);

  (*((swift_isaMask & *v27) + 0xD8))(3);
  (*((swift_isaMask & *v27) + 0x138))(nullsub_1, 0);
  (*((swift_isaMask & *v27) + 0x108))(variable initialization expression of SCNPatchDebugger.SKDebugRenderer.renderEmboss, 0);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v32 = *((swift_isaMask & *v27) + 0x120);
  v33 = v27;

  v32(sub_100103070, v31);

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v36 = *((swift_isaMask & *v33) + 0x180);
  v37 = v33;

  v36(sub_100103078, v35);
  v38 = *(&v10 + 1);

  if (v104)
  {
    v40 = *((swift_isaMask & *v106) + 0x2F0);
    v41 = v106;
    if (v40() == 1 || v40() == 2)
    {
      v42 = (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))();
      if (v42 <= 8 && ((1 << v42) & 0x1E9) != 0)
      {
        if (qword_1004A0288 != -1)
        {
          goto LABEL_57;
        }

        while (1)
        {
          v43._countAndFlagsBits = 0xD000000000000020;
          v43._object = 0x8000000100407300;
          Log.default(_:isPrivate:)(v43, 0);
          (*((swift_isaMask & *v38) + 0xD8))(0);
          (*((swift_isaMask & *v37) + 0x2D0))(1);
          (*((swift_isaMask & *v37) + 0x318))(v41);
          v44 = sub_100104B30(v37, 1);
          v45 = *(**(v2 + 128) + 400);

          v46 = v45(&v109);
          v48 = *(v47 + 16);
          v49 = *(v47 + 24);
          *(v47 + 16) = 0;
          *(v47 + 24) = 0;

          v38 = *(&v10 + 1);
          v46(&v109, 0);

LABEL_9:

          v50 = v105;
          if ((v44 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_30:
          v41 = &swift_isaMask;
          if ([objc_opt_self() jasperAvailable])
          {
            v67 = (*((swift_isaMask & *v38) + 0x2F0))();
            if (v67 <= 8 && ((1 << v67) & 0x160) != 0)
            {
              v68 = *(**(v2 + 200) + 144);

              v68(v107, v69);

              v115 = v107[6];
              v116 = v107[7];
              v117 = v107[8];
              v118 = v108;
              v111 = v107[2];
              v112 = v107[3];
              v113 = v107[4];
              v114 = v107[5];
              v109 = v107[0];
              v110 = v107[1];
              sub_10006C92C(&v109, v107, &qword_1004A1208, &qword_1003D6DF0);
              sub_100013BF8(&v109);
              v119[6] = v115;
              v119[7] = v116;
              v120 = v117;
              v119[2] = v111;
              v119[3] = v112;
              v119[4] = v113;
              v119[5] = v114;
              v119[0] = v109;
              v119[1] = v110;
              if (sub_10001376C(v119) != 1)
              {
                v70 = *&v119[0];
                if (!(*((swift_isaMask & **&v119[0]) + 0x258))())
                {
                  v71 = *(&v10 + 1);
                  if (qword_1004A0350 != -1)
                  {
                    swift_once();
                    v71 = *(&v10 + 1);
                  }

                  sub_100124CA0(v70, v71);
                }

                sub_100018F04(&v109, &qword_1004A1208, &qword_1003D6DF0);
              }
            }
          }

          v72 = *(v2 + 168);
          v73 = *(*v72 + 200);
          v38 = (*v72 + 200);

          v75 = v73(v74);

          (*(*v75 + 280))(sub_1000337C8, 0);

          v77 = (*((swift_isaMask & *v37) + 0x250))(v76);
          if ((v77 & 0xC000000000000001) != 0)
          {
            goto LABEL_55;
          }

          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v78 = *(v77 + 40);
            goto LABEL_42;
          }

          __break(1u);
LABEL_57:
          swift_once();
        }
      }
    }

    v29 = &swift_isaMask;
  }

  v51 = (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))(v39);
  if (v51 > 8 || ((1 << v51) & 0x1E9) == 0)
  {
    if (qword_1004A0288 != -1)
    {
      swift_once();
    }

    v95._countAndFlagsBits = 0xD00000000000001FLL;
    v95._object = 0x80000001004072A0;
    Log.default(_:isPrivate:)(v95, 0);
    (*((swift_isaMask & **(&v10 + 1)) + 0xD8))(0);
    (*((swift_isaMask & *v37) + 0x2D0))(1);
    (*((swift_isaMask & *v37) + 0x318))(*(&v10 + 1));
    v44 = sub_100104B30(v37, 1);
    v96 = *(**(v2 + 128) + 400);

    v97 = v96(&v109);
    v99 = *(v98 + 16);
    v100 = *(v98 + 24);
    *(v98 + 16) = 0;
    *(v98 + 24) = 0;

    v38 = *(&v10 + 1);
    v97(&v109, 0);
    goto LABEL_9;
  }

  v50 = v105;
  if (*(*(v2 + 72) + 152))
  {
    goto LABEL_18;
  }

  if (qword_1004A0288 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v52._countAndFlagsBits = 0xD00000000000001ALL;
    v52._object = 0x80000001004072E0;
    Log.default(_:isPrivate:)(v52, 0);
LABEL_18:
    (*((*v29 & *v37) + 0x2D0))(1);
    v53 = sub_100104B30(v37, 1);
    v54 = *(v2 + 224);
    if (!v54)
    {
      break;
    }

    v55 = *((*v29 & *v37) + 0x250);
    v38 = ((*v29 & *v37) + 592);
    v29 = v54;
    v56 = v55();
    v101 = v53;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = v105;
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_22;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = v105;
      v58 = *(v56 + 32);
LABEL_22:
      v59 = v58;
      v38 = *(&v10 + 1);

      (*((swift_isaMask & *v29) + 0x330))(v59);

      v29 = &swift_isaMask;
      v50 = v57;
      v53 = v101;
      break;
    }

    __break(1u);
LABEL_60:
    swift_once();
  }

  v60 = *((*v29 & *v37) + 0x250);
  v61 = v60();
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v62 = *(v61 + 32);
LABEL_26:
    v63 = v62;

    (*((swift_isaMask & *v63) + 0xD8))(6);

    v64 = v60();
    if ((v64 & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:
      v66 = v65;

      (*((swift_isaMask & *v66) + 0xD8))(3);

      if (v53)
      {
        goto LABEL_30;
      }

LABEL_10:

      return;
    }

    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v65 = *(v64 + 40);
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_42:
  v79 = v78;

  v80 = *(v2 + 312);
  *(v2 + 312) = v79;
  v81 = v79;

  sub_100104098(v81);
  if (qword_1004A0288 != -1)
  {
    swift_once();
  }

  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v109._countAndFlagsBits = 0xD000000000000010;
  v109._object = 0x80000001004072C0;
  v83 = (*((swift_isaMask & *v37) + 0xB8))(v82);
  v85 = v84;

  v86._countAndFlagsBits = v83;
  v86._object = v85;
  String.append(_:)(v86);

  v87._countAndFlagsBits = 0x6D61726620746120;
  v87._object = 0xEB00000000203A65;
  String.append(_:)(v87);
  v88 = *v50;
  *&v107[0] = *v50;
  v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v89);

  Log.default(_:isPrivate:)(v109, 0);

  v90 = *(v2 + 88);
  v109._countAndFlagsBits = 0x8000000000000010;
  v91 = *(*v90 + 392);

  v91(&v109);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  if (*(v2 + 312))
  {
    v92 = qword_1004D4F08;
    (*((swift_isaMask & **(&v10 + 1)) + 0x2F0))();

    v93 = v92 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    swift_beginAccess();
    *(v93 + 64) = *(v93 + 64) + 1.0;
    v94 = v50[1];
    *(v2 + 560) = v88;
    *(v2 + 568) = v94;
    *(v2 + 576) = 0;
  }

  else
  {
    __break(1u);
  }
}

double sub_100101FF8(void *a1, uint64_t a2)
{
  v2 = *((swift_isaMask & *a1) + 0xD0);
  if (!v2() || v2() == 2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1001046D4();
    }
  }

  return result;
}

double sub_1001020BC(void *a1, uint64_t a2)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() == 9)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1001046DC();
    }
  }

  return result;
}

BOOL sub_100102168(uint64_t a1, void *a2, double a3, double a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_1001021F0(a2, a3, a4);
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL sub_1001021F0(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = *((swift_isaMask & *a1) + 0xD0);
  if (v6() != 5 && v6())
  {
    return 0;
  }

  v8 = *(v4 + 472);
  v9 = CGPoint.floats.getter();
  v11 = v10;
  v18[65] = (*((swift_isaMask & *a1) + 0x250))(v9);
  sub_10000F974(&qword_1004A9788, &qword_1003DD418);
  sub_10001D47C(&qword_1004A9790, &qword_1004A9788, &qword_1003DD418, &protocol conformance descriptor for [A]);
  v12 = RangeReplaceableCollection<>.idToObjectMap.getter();

  v13 = *(**(v4 + 144) + 144);

  v13(v18, v14);

  memcpy(__dst, v18, sizeof(__dst));
  sub_10008FA10(v12, __dst, v11, v8);
  v16 = v15;
  sub_100013C4C(__dst);

  v7 = v16 != 0;

  return v7;
}

double sub_1001023DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v5 = (*((swift_isaMask & *a2) + 0xB8))(v4);
    sub_100104964(v5, v6);
  }

  return result;
}

void sub_100102498(void *a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AC8)
  {
    v2 = *(qword_1004D4AC8 + 112);
    if (v2)
    {
      v3 = v2;
      sub_10004F794(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100102544(__n128 a1)
{
  v2 = v1;
  v3 = sub_1001059B0();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *((swift_isaMask & *v3) + 0x250);
  v6 = v5();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  sub_100102734(v4, v8);

  v9 = v5();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v10 = *(v9 + 40);
LABEL_8:
  v11 = v10;

  sub_100102734(v4, v11);

  v12 = *((swift_isaMask & *v4) + 0xB8);
  v17 = v4;
  v13 = v12();
  v15 = v14;

  sub_100104964(v13, v15);

  v16 = *(v2 + 312);
  *(v2 + 312) = 0;

  sub_100105B08();
}

void sub_100102734(void *a1, void *a2)
{
  v3 = v2;
  v5 = &swift_isaMask;
  v6 = *((swift_isaMask & *a2) + 0x238);
  v7 = (v6)();
  if (v7 >> 62)
  {
LABEL_59:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= 1)
  {
    v9 = (*((*v5 & *a2) + 0x250))();
    if (!v9)
    {
LABEL_63:
      v56 = *(v3 + 312);
      *(v3 + 312) = a2;

      v57 = a2;
      return;
    }
  }

  type metadata accessor for WorldAnchor();
  (*((*v5 & *a2) + 0x2C0))();
  WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
  (*((*v5 & *a2) + 0x2F0))();
  (*((*v5 & *a2) + 0xD0))();
  v10 = objc_allocWithZone(type metadata accessor for WorldPoint());
  v65 = WorldPoint.init(anchor:type:state:)();
  if (sub_100105CC0(v65, 1))
  {
    v11 = (*((*v5 & *a2) + 0x250))();
    if (!v11)
    {
LABEL_20:
      v22 = (v6)();
      v6 = v22;
      v58 = v3;
      if (v22 >> 62)
      {
        goto LABEL_61;
      }

      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v65; v23; i = v65)
      {
        if (v23 < 1)
        {
          __break(1u);
          return;
        }

        v3 = 0;
        v25 = *((*v5 & *a1) + 0xB8);
        v63 = v6 & 0xC000000000000001;
        v61 = v6;
        v62 = a1;
        v59 = v25;
        v60 = v23;
        while (1)
        {
          if (v63)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v6 + 8 * v3 + 32);
          }

          v27 = v26;
          v28 = (*((*v5 & *v26) + 0xB8))();
          v30 = v29;
          if (v28 == v25() && v30 == v31)
          {

            goto LABEL_25;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {

            goto LABEL_25;
          }

          v6 = *((*v5 & *v27) + 0x250);
          v35 = (v6)(v34);
          if ((v35 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_59;
            }

            v36 = *(v35 + 32);
          }

          v37 = v36;

          v39 = (*((*v5 & *v37) + 0xB8))(v38);
          v41 = v40;

          v5 = *((*v5 & *a2) + 0xB8);
          if (v39 == v5() && v41 == v42)
          {

            a1 = v62;
LABEL_53:
            v5 = &swift_isaMask;
            (*((swift_isaMask & *v27) + 0x318))(v65);

            v23 = v60;
            v6 = v61;
            v25 = v59;
            goto LABEL_25;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a1 = v62;
          if (v44)
          {
            goto LABEL_53;
          }

          v46 = (v6)(v45);
          if ((v46 & 0xC000000000000001) != 0)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_46;
          }

          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            break;
          }

          v47 = *(v46 + 40);
LABEL_46:
          v48 = v47;

          v50 = (*((swift_isaMask & *v48) + 0xB8))(v49);
          v52 = v51;

          if (v50 == v5() && v52 == v53)
          {

            v6 = v61;
            a1 = v62;
            v25 = v59;
            v23 = v60;
LABEL_55:
            v5 = &swift_isaMask;
            (*((swift_isaMask & *v27) + 0x320))(v65);

            goto LABEL_25;
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v61;
          a1 = v62;
          v25 = v59;
          v23 = v60;
          if (v55)
          {
            goto LABEL_55;
          }

          v5 = &swift_isaMask;
LABEL_25:
          ++v3;
          i = v65;
          if (v23 == v3)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_61:
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_62:

      v3 = v58;
      goto LABEL_63;
    }

    v12 = v11;
    v13 = v3;
    v14 = (*((*v5 & *v11) + 0x268))();
    v15 = (*((*v5 & *v14) + 0xB8))();
    v16 = v5;
    v18 = v17;

    if (v15 == (*((*v16 & *a2) + 0xB8))() && v18 == v19)
    {

      v5 = &swift_isaMask;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = &swift_isaMask;
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    (*((swift_isaMask & *v12) + 0x328))(v65);
LABEL_19:

    v3 = v13;
    goto LABEL_20;
  }
}

double sub_100102FCC(uint64_t a1)
{
  result = *(v1 + 464);
  v3 = *(v1 + 472);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100102FE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100103024()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001030D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010311C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010315C()
{
  v1 = (sub_10000F974(&qword_1004A9798, &qword_1003DD420) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001032A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A9798, &qword_1003DD420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001033BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100103424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100103484(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001034A4(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100103514(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_100103530(__n128 *a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  type metadata accessor for MeasureCamera();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  static MeasureCamera.unprojectPoint(_:viewProjectionInv:viewportSize:)();
  simd_float4x4.position.getter();
  simd_float4x4.position.getter();
  lineIntersection(line1P1:line1P2:line2P1:line2P2:)();
  return a3;
}

double sub_100103650(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_100103844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010388C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10010391C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = (*((swift_isaMask & *v4) + 0x250))();
      sub_100103E9C(v7, sub_10010BD34);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_100103A68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10006731C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(v3 + v8 + 32, (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100103B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100067764(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000F974(&qword_1004A3EA8, &qword_1003D8010);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100103CA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10006875C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100103D98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000689B8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 4], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100103E9C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10010B5E4(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100103F94(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_10010C08C(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

void sub_100104098(void *a1)
{
  v1 = sub_100107744(0, a1);
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) != 1 || (v9 = *((swift_isaMask & *v6) + 0xD0), v9() == 1) || v9() == 6)
    {
    }

    else
    {
      (*((swift_isaMask & *v6) + 0xD8))(9);
    }
  }

LABEL_17:
}

void sub_100104278()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 96);

    v5 = (v2 + 40);
    while (*(v4 + 16))
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = sub_100198230(v6, v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      v10 = *(*(v4 + 56) + 8 * v8);
      v11 = *((swift_isaMask & *v10) + 0x308);
      v12 = v10;
      v11();

      v5 += 2;
      if (!--v3)
      {

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_7:
  swift_beginAccess();
  sub_10000F974(&qword_1004A9968, &qword_1003DD768);
  OrderedDictionary.removeAll()();
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 80) = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_19:
    sub_10010959C();
    return;
  }

LABEL_9:
  if (v13 >= 1)
  {

    for (i = 0; i != v13; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 112))(ObjectType, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_19;
  }

  __break(1u);
}

void sub_100104508(void *a1)
{
  v1 = sub_100107744(1, a1);
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) == 1 && (*((swift_isaMask & *v6) + 0xD0))() != 6)
    {
      (*((swift_isaMask & *v6) + 0xD8))(0);
    }

    else
    {
    }
  }

LABEL_16:
}

void sub_1001046E4(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for WorldLine();

  v2 = OrderedDictionary.values.getter();

  sub_10010391C(v2);

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *&_swiftEmptyArrayStorage[i + 4];
      }

      v6 = v5;
      v7 = (*((swift_isaMask & *v5) + 0x280))();
      if (v8)
      {
      }

      else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) != 1 || (v9 = *((swift_isaMask & *v6) + 0xD0), v9() == 1) || v9() == 6)
      {
      }

      else
      {
        (*((swift_isaMask & *v6) + 0xD8))(a1);
      }
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_100104964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 96);
  if (*(v6 + 16) && (v7 = sub_100198230(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    sub_100106920(v10, 0, 1);
    if (![objc_opt_self() jasperAvailable])
    {
      goto LABEL_10;
    }

    if (qword_1004A03F8 != -1)
    {
      swift_once();
    }

    if (byte_1004D4FC8 == 1 && ((*((swift_isaMask & *v10) + 0x2C8))() & 1) != 0)
    {
      v11 = *(**(v3 + 136) + 400);

      v12 = v11(v13);
      sub_1000C67A8(a1, a2);
      v12(v13, 0);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100104B30(void *a1, char a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *a1) + 0xB8);
  v7 = v6();
  v9 = v8;
  swift_beginAccess();
  if (*(*(v2 + 96) + 16))
  {
    sub_100198230(v7, v9);
    v11 = v10;

    if (v11)
    {
      swift_endAccess();
      return 0;
    }
  }

  else
  {
  }

  swift_endAccess();
  v13 = [objc_opt_self() jasperAvailable];
  if (!v13)
  {
    goto LABEL_10;
  }

  if (qword_1004A03F8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    if (byte_1004D4FC8 == 1)
    {
      v13 = (*((swift_isaMask & *a1) + 0x2C8))(v13, v14, v15);
      if (v13)
      {
        sub_1001090C4(a1);
      }
    }

LABEL_10:
    (v6)(v13, v14, v15);
    swift_beginAccess();
    v16 = a1;
    sub_10000F974(&qword_1004A9968, &qword_1003DD768);
    OrderedDictionary.subscript.setter();
    swift_endAccess();
    v17.n128_f64[0] = sub_1001093D8(v16);
    v6 = ((swift_isaMask & *v16) + 592);
    v18 = *((swift_isaMask & *v16) + 0x250);
    v19 = v18(v17);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v20 = *(v19 + 32);
    }

    v21 = v20;

    sub_100105CC0(v21, a2 & 1);

    v25 = (v18)(v22, v23, v24);
    if ((v25 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v26 = *(v25 + 40);
      goto LABEL_16;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v13 = swift_once();
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v27 = v26;

  sub_100105CC0(v27, a2 & 1);

  v31 = (*((swift_isaMask & *v16) + 0x268))(v28, v29, v30);
  sub_100105CC0(v31, a2 & 1);

  if ((a2 & 1) == 0)
  {
    goto LABEL_29;
  }

  result = swift_beginAccess();
  v32 = *(v3 + 64);
  if (v32 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v33 = result;
    if (!result)
    {
      goto LABEL_29;
    }

LABEL_19:
    if (v33 >= 1)
    {

      for (i = 0; i != v33; ++i)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v32 + 8 * i + 32);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v37 + 24);
          ObjectType = swift_getObjectType();
          (*(v35 + 32))(v16, ObjectType, v35);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_19;
    }

LABEL_29:
    sub_10010959C();
    return 1;
  }

  return result;
}

void sub_100104F90(void *a1, void *a2, void *a3, char a4)
{
  v7 = v4;
  if (!a2)
  {
    v17 = 0;
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_6:
    v19 = 0;
    goto LABEL_16;
  }

  v11 = (*((swift_isaMask & *a2) + 0xB8))();
  v13 = v12;
  swift_beginAccess();
  v14 = *(v4 + 80);
  if (*(v14 + 16))
  {
    v15 = sub_100198230(v11, v13);
    v5 = v16;

    if (v5)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      v18 = v17;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_9:
  swift_endAccess();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v20 = (*((swift_isaMask & *a3) + 0xB8))();
  v22 = v21;
  swift_beginAccess();
  v23 = *(v7 + 80);
  if (!*(v23 + 16))
  {

    goto LABEL_14;
  }

  v24 = sub_100198230(v20, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v19 = *(*(v23 + 56) + 8 * v24);
  v27 = v19;
LABEL_15:
  swift_endAccess();
LABEL_16:
  v28 = *((swift_isaMask & *a1) + 0x250);
  v29 = v28();
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_66;
    }

    v30 = *(v29 + 32);
  }

  v90 = v30;

  v32 = (v28)(v31);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_70;
    }

    v33 = *(v32 + 40);
  }

  v6 = v33;

  v88 = v7;
  v89 = v19;
  if (v17)
  {
    v35 = a4;
    v36 = *((swift_isaMask & *v17) + 0xB8);
    v37 = v17;
    v38 = v36();
    v40 = v39;

    v41 = *((swift_isaMask & *v6) + 0xB8);
    v42 = v6;
    v43 = v41();
    v45 = v44;

    if (v38 == v43 && v40 == v45)
    {
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v47 & 1) == 0)
      {
        v48 = *((swift_isaMask & *a1) + 0x318);
        v49 = v37;
        v48();

        v7 = v88;
        v19 = v89;
        a4 = v35;
        goto LABEL_31;
      }
    }

    a4 = v35;
    v7 = v88;
    v34 = sub_100106920(a1, v17, v35 & 1);
    v19 = v89;
  }

LABEL_31:
  v87 = v17;
  v50 = v90;
  if (!v19)
  {
    v17 = &swift_isaMask;
    goto LABEL_42;
  }

  v86 = a4;
  v51 = *((swift_isaMask & *v19) + 0xB8);
  v52 = v19;
  v53 = v51();
  v55 = v54;

  v56 = *((swift_isaMask & *v90) + 0xB8);
  v57 = v90;
  v58 = v56();
  v60 = v59;

  if (v53 == v58 && v55 == v60)
  {

    goto LABEL_40;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
LABEL_40:
    a4 = v86;
    v7 = v88;
    v19 = v89;
    v34 = sub_100106920(a1, v89, v86 & 1);
    v17 = &swift_isaMask;
    goto LABEL_41;
  }

  v63 = *((swift_isaMask & *a1) + 0x320);
  v64 = v52;
  v63();
  v17 = &swift_isaMask;

  v7 = v88;
  v19 = v89;
  a4 = v86;
LABEL_41:
  v50 = v90;
LABEL_42:
  v65 = (*((swift_isaMask & *v50) + 0x238))(v34);
  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v66)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_66:
  v85 = _CocoaArrayWrapper.endIndex.getter();

  if (!v85)
  {
LABEL_44:
    v68 = *((*v17 & *v90) + 0xB8);
    v69 = v90;
    v17 = &swift_isaMask;
    v70 = v68();
    v72 = v71;

    sub_100106548(v70, v72, a4 & 1);
  }

LABEL_45:
  v73 = (*((*v17 & *v6) + 0x238))(v67);
  if (v73 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v87;

  if (v74)
  {
    if (a4)
    {
      goto LABEL_49;
    }

LABEL_61:

LABEL_73:
    return;
  }

  v80 = *((*v17 & *v6) + 0xB8);
  v81 = v6;
  v82 = v80();
  v84 = v83;

  sub_100106548(v82, v84, a4 & 1);

  if ((a4 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_49:
  swift_beginAccess();
  v17 = *(v7 + 64);
  if (!(v17 >> 62))
  {
    v75 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_51;
    }

LABEL_71:

LABEL_72:
    v19 = v89;
    goto LABEL_73;
  }

LABEL_70:
  v75 = _CocoaArrayWrapper.endIndex.getter();
  if (!v75)
  {
    goto LABEL_71;
  }

LABEL_51:
  if (v75 >= 1)
  {

    for (i = 0; i != v75; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v79 = *(v17 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v77 = *(v79 + 24);
        ObjectType = swift_getObjectType();
        (*(v77 + 48))(a1, ObjectType, v77);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_72;
  }

  __break(1u);
}

void sub_1001057DC(void *a1)
{
  v1 = sub_100107744(0, a1);
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = (*((swift_isaMask & *v5) + 0x280))();
    if (v8)
    {
    }

    else if ((*((swift_isaMask & *v6) + 0x2F0))(v7) == 1)
    {
      v9 = *((swift_isaMask & *v6) + 0xB8);
      v10 = v6;
      v11 = v9();
      v13 = v12;

      sub_100106548(v11, v13, 1);
    }

    else
    {
    }
  }

LABEL_15:
}

unint64_t sub_1001059B0()
{
  v1 = *(**(v0 + 72) + 144);

  v1(&v9, v2);

  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10000F974(&qword_1004A1650, &unk_1003D5980);
  swift_dynamicCast();
  v3 = v9;
  if (!(v9 >> 62))
  {
    v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 8 * result + 32);
LABEL_8:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_100105B08()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 80) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v18 = *(v0 + 80);

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = *(*(v18 + 56) + 8 * (__clz(__rbit64(v7)) | (v9 << 6)));
    v12 = *((swift_isaMask & *v11) + 0x2F0);
    v13 = v11;

    v15 = v12(v14);

    if (v15 == 1)
    {
      v16 = *((swift_isaMask & *v13) + 0xD8);
      v17 = v13;
      v16(0);
    }

    v7 &= v7 - 1;
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

      return;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100105CC0(void *a1, char a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *a1) + 0xB8);
  v7 = v6();
  v9 = v8;
  swift_beginAccess();
  if (*(*(v2 + 80) + 16))
  {
    sub_100198230(v7, v9);
    v11 = v10;

    if (v11)
    {
      swift_endAccess();
      return 0;
    }
  }

  else
  {
  }

  v13 = swift_endAccess();
  v14 = (v6)(v13);
  v16 = v15;
  swift_beginAccess();
  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 80);
  *(v3 + 80) = 0x8000000000000000;
  sub_1000BBD90(v17, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v3 + 80) = v27;
  swift_endAccess();
  v19 = *((swift_isaMask & *v17) + 0x2A0);
  v20 = swift_unknownObjectRetain();
  v19(v20, &off_10046E368);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v21 = *(v3 + 64);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

    return 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = result;
  if (!result)
  {
    return 1;
  }

LABEL_8:
  if (v22 >= 1)
  {

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v21 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v26 + 24);
        ObjectType = swift_getObjectType();
        (*(v24 + 8))(v17, ObjectType, v24);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_100105F7C(void *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xB8))();
  v4 = v3;
  v5 = a1;

  Synchronized.wrappedValue.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000BC104(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  Synchronized.wrappedValue.setter();

  v8 = (*((swift_isaMask & *v5) + 0x238))(v7);
  v9 = v8;
  if (v8 >> 62)
  {
    v19 = v8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v19;
    v10 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_22:

    return;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *((swift_isaMask & *v5) + 0xD0);
    v21 = v9 & 0xC000000000000001;
    v22 = v9;
    while (1)
    {
      v14 = v21 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v9 + 8 * v11 + 32);
      v15 = v14;
      v13 = v12();
      v16 = *((swift_isaMask & *v15) + 0xD0);
      v17 = v15;
      if ((v16() - 3) > 1 || v12() != 2)
      {
        break;
      }

      v18 = v16();
      if (v18 == 3)
      {
        if ((v13 - 3) < 2)
        {
          break;
        }
      }

      else if (v13 == 3)
      {
        if (v18 == 4)
        {
          break;
        }
      }

      else if ((v13 != 4) != (v18 == 4))
      {
        break;
      }

LABEL_5:
      v13 = v16();
LABEL_6:
      ++v11;

      sub_100106288(v17, v13);
      v9 = v22;
      if (v10 == v11)
      {
        goto LABEL_22;
      }
    }

    if (v12() != 6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __break(1u);
}

void sub_100106288(void *a1, uint64_t a2)
{
  v4 = (*((swift_isaMask & *a1) + 0xD8))(a2);
  v5 = (*((swift_isaMask & *a1) + 0x268))(v4);
  (*((swift_isaMask & *v5) + 0xD8))(a2);

  v6 = (*((swift_isaMask & *a1) + 0x310))();
  v7 = (*((swift_isaMask & *a1) + 0x280))(v6);
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:

    v14 = (*((swift_isaMask & *a1) + 0xB8))(v13);
    v16 = v15;
    v17 = a1;

    Synchronized.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BC104(v17, v14, v16, isUniquelyReferenced_nonNull_native);

    Synchronized.wrappedValue.setter();

    sub_10010959C();
    return;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      sub_100105F7C(v11);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100106548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 80);
  if (!*(v8 + 16) || (v9 = sub_100198230(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = (swift_isaMask & *v11) + 568;
  v13 = *((swift_isaMask & *v11) + 0x238);
  v14 = v11;
  v15 = v13();
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < 1)
  {
    (*((swift_isaMask & *v14) + 0x2A0))(0, 0);
    swift_beginAccess();
    v24 = sub_1000C6790(a1, a2);
    swift_endAccess();

    if (a3)
    {
      swift_beginAccess();
      v12 = *(v4 + 64);
      if (v12 >> 62)
      {
        goto LABEL_32;
      }

      v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_18;
      }
    }

LABEL_33:

    return;
  }

  v18 = (v13)(v17);
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_30:

    return;
  }

  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      sub_100106920(v22, 0, a3 & 1);
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_32:
  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_33;
  }

LABEL_18:
  if (v25 >= 1)
  {
    v36 = v12 & 0xC000000000000001;

    v26 = 0;
    v35 = v12;
    do
    {
      if (v36)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v12 + 8 * v26 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v34 + 24);
        ObjectType = swift_getObjectType();
        v29 = *((swift_isaMask & *v14) + 0xB8);
        v30 = v14;
        v31 = v29();
        v33 = v32;

        (*(v27 + 16))(v31, v33, ObjectType, v27);
        v12 = v35;

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_100106920(void *a1, void *a2, char a3)
{
  v7 = (*((swift_isaMask & *a1) + 0x308))();
  v105 = *((swift_isaMask & *a1) + 0xB8);
  v105(v7);
  swift_beginAccess();
  sub_10000F974(&qword_1004A9968, &qword_1003DD768);
  OrderedDictionary.removeValue(forKey:)();
  swift_endAccess();

  v106 = v3;
  v107 = a1;
  v9.n128_f64[0] = sub_100109870(a1);
  v103 = a3;
  if (a3)
  {
    v8 = swift_beginAccess();
    v4 = *(v3 + 64);
    if (v4 >> 62)
    {
      goto LABEL_93;
    }

    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  while (1)
  {
    do
    {
      v105 = *((swift_isaMask & *v107) + 0x268);
      v15 = (v105)(v8, v9);
      v16 = (*((swift_isaMask & *v15) + 0x238))();

      if (v16 >> 62)
      {
        goto LABEL_60;
      }

      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v17)
      {
        goto LABEL_16;
      }

LABEL_61:
      v74 = (v105)(v18);
      (*((swift_isaMask & *v74) + 0x2A0))(0, 0);

      v75 = (v105)();
      v76 = (*((swift_isaMask & *v75) + 0xB8))();
      v78 = v77;

      swift_beginAccess();
      v79 = sub_1000C6790(v76, v78);
      swift_endAccess();

      if (v103)
      {
        v72 = swift_beginAccess();
        v4 = *(v106 + 64);
        if (v4 >> 62)
        {
          goto LABEL_99;
        }

        v80 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_64;
        }
      }

LABEL_77:
      v89 = (*((swift_isaMask & *v107) + 0x250))(v72);
      v90 = v89;
      if (v89 >> 62)
      {
        v91 = _CocoaArrayWrapper.endIndex.getter();
        if (!v91)
        {
LABEL_91:

          sub_10010959C();
          return;
        }
      }

      else
      {
        v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v91)
        {
          goto LABEL_91;
        }
      }

      if (v91 >= 1)
      {
        v92 = 0;
        while (1)
        {
          v93 = (v90 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v90 + 8 * v92 + 32);
          v94 = v93;
          v95 = (*((swift_isaMask & *v93) + 0x238))();
          if (v95 >> 62)
          {
            break;
          }

          v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v96)
          {
            goto LABEL_87;
          }

LABEL_81:
          ++v92;

          if (v91 == v92)
          {
            goto LABEL_91;
          }
        }

        v102 = _CocoaArrayWrapper.endIndex.getter();

        if (v102)
        {
          goto LABEL_81;
        }

LABEL_87:
        (*((swift_isaMask & *v94) + 0x2A0))(0, 0);
        v97 = *((swift_isaMask & *v94) + 0xB8);
        v98 = v94;
        v99 = v97();
        v101 = v100;

        sub_100106548(v99, v101, v103 & 1);

        goto LABEL_81;
      }

      __break(1u);
LABEL_93:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v8;
    }

    while (!v8);
LABEL_4:
    if (v10 < 1)
    {
      break;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v14 + 24);
        swift_getObjectType();
        v13 = (v105)();
        (*(v12 + 40))(v13);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  while (2)
  {
    __break(1u);
LABEL_97:
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
    v4 = v46;

    v48 = (*((swift_isaMask & *v4) + 0xB8))(v47);
    v50 = v49;

    swift_beginAccess();
    if (*(*(v106 + 80) + 16))
    {
      sub_100198230(v48, v50);
      v52 = v51;

      if (v52)
      {
        v53 = swift_endAccess();
        v54 = (v10)(v53);
        if ((v54 & 0xC000000000000001) != 0)
        {
          goto LABEL_104;
        }

        v19 = a2;
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v4 = *(v54 + 32);
          goto LABEL_46;
        }

        __break(1u);
LABEL_106:
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_56:
        v4 = v67;

LABEL_18:
        v21 = (v105)(v20);
        v22 = (*((swift_isaMask & *v21) + 0x238))();

        if (v22 >> 62)
        {
          v10 = _CocoaArrayWrapper.endIndex.getter();
          if (!v10)
          {
LABEL_75:

LABEL_76:

            goto LABEL_77;
          }
        }

        else
        {
          v10 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v10)
          {
            goto LABEL_75;
          }
        }

        if (v10 < 1)
        {
          __break(1u);
          continue;
        }

        v23 = 0;
        a2 = (v22 & 0xC000000000000001);
        v24 = v22;
        while (1)
        {
          if (a2)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v22 + 8 * v23 + 32);
          }

          v30 = v29;
          v31 = (v105)();
          v32 = (*((swift_isaMask & *v31) + 0xB8))();
          v34 = v33;

          v35 = (*((swift_isaMask & *v30) + 0x250))();
          if ((v35 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_60:
              v73 = _CocoaArrayWrapper.endIndex.getter();

              if (!v73)
              {
                goto LABEL_61;
              }

LABEL_16:
              v19 = a2;
              v4 = a2;
              if (a2)
              {
LABEL_17:
                v20 = v19;
                goto LABEL_18;
              }

              v10 = *((swift_isaMask & *v107) + 0x250);
              v45 = (v10)(v18);
              if ((v45 & 0xC000000000000001) == 0)
              {
                if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v46 = *(v45 + 32);
                  goto LABEL_41;
                }

                __break(1u);
LABEL_99:
                v72 = _CocoaArrayWrapper.endIndex.getter();
                v80 = v72;
                if (!v72)
                {
                  goto LABEL_77;
                }

LABEL_64:
                if (v80 >= 1)
                {
                  a2 = (v4 & 0xC000000000000001);

                  for (j = 0; j != v80; ++j)
                  {
                    if (a2)
                    {
                      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v88 = *(v4 + 8 * j + 32);
                    }

                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      v82 = *(v88 + 24);
                      ObjectType = swift_getObjectType();
                      v84 = (v105)();
                      v85 = (*((swift_isaMask & *v84) + 0xB8))();
                      v87 = v86;

                      (*(v82 + 16))(v85, v87, ObjectType, v82);

                      swift_unknownObjectRelease();
                    }

                    else
                    {
                    }
                  }

                  goto LABEL_76;
                }

LABEL_103:
                __break(1u);
LABEL_104:
                v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v19 = a2;
LABEL_46:

                goto LABEL_17;
              }

              goto LABEL_97;
            }

            v36 = *(v35 + 32);
          }

          v37 = v36;

          v39 = (*((swift_isaMask & *v37) + 0xB8))(v38);
          v41 = v40;

          if (v32 == v39 && v34 == v41)
          {

            v22 = v24;
          }

          else
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v22 = v24;
            if ((v43 & 1) == 0)
            {
              v44 = v4;
              v26 = v30;
              v27 = 0;
              v28 = v4;
              goto LABEL_24;
            }
          }

          v25 = v4;
          v26 = v30;
          v27 = v4;
          v28 = 0;
LABEL_24:
          sub_100104F90(v26, v27, v28, 1);
          ++v23;

          if (v10 == v23)
          {
            goto LABEL_75;
          }
        }
      }
    }

    else
    {
    }

    break;
  }

  v55 = swift_endAccess();
  v56 = (v10)(v55);
  if ((v56 & 0xC000000000000001) != 0)
  {
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_103;
    }

    v57 = *(v56 + 40);
  }

  v58 = v57;

  v60 = (*((swift_isaMask & *v58) + 0xB8))(v59);
  v62 = v61;

  swift_beginAccess();
  if (!*(*(v106 + 80) + 16))
  {

LABEL_58:
    v68 = swift_endAccess();
    v69 = (v105)(v68);
    (*((swift_isaMask & *v69) + 0x2F8))(1);

    v70 = (v105)();
    (*((swift_isaMask & *v70) + 0xD8))(0);

    v71 = (v105)();
    (*((swift_isaMask & *v71) + 0x330))();

    goto LABEL_77;
  }

  sub_100198230(v60, v62);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
    goto LABEL_58;
  }

  v65 = swift_endAccess();
  v66 = (v10)(v65);
  if ((v66 & 0xC000000000000001) != 0)
  {
    goto LABEL_106;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v67 = *(v66 + 40);
    goto LABEL_56;
  }

  __break(1u);
}

double *sub_100107744(char a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 80);
  v7 = *((swift_isaMask & *a2) + 0xB8);

  v9 = (v7)(v8);
  if (!*(v6 + 16))
  {

    return _swiftEmptyArrayStorage;
  }

  sub_100198230(v9, v10);
  v12 = v11;

  result = _swiftEmptyArrayStorage;
  if (v12)
  {
    v165 = a1;
    v164 = v3;
    v182 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyDictionarySingleton;
    v15 = a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_136;
    }

    while (1)
    {
      v16 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v163 = v7;
      v17 = (v7)(v16);
      v19 = v18;
      v20 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000BBD90(v20, v17, v19, isUniquelyReferenced_nonNull_native);

      v22 = v182;
      v23 = v14;
      v181 = v14;
      if (!(v182 >> 62))
      {
        if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_6;
        }

LABEL_138:

        if (v165)
        {
          v132 = v163(v131);
          v134 = sub_1000C6790(v132, v133);

          v135 = 1 << *(v181 + 32);
          v136 = -1;
          if (v135 < 64)
          {
            v136 = ~(-1 << v135);
          }

          v137 = v136 & v181[8];
          v138 = (v135 + 63) >> 6;

          v139 = 0;
          if (v137)
          {
            goto LABEL_146;
          }

          while (1)
          {
            v140 = v139 + 1;
            if (__OFADD__(v139, 1))
            {
              break;
            }

            if (v140 >= v138)
            {

              return _swiftEmptyArrayStorage;
            }

            v137 = v181[v140 + 8];
            ++v139;
            if (v137)
            {
              v139 = v140;
              do
              {
LABEL_146:
                v141 = *(v181[7] + 8 * (__clz(__rbit64(v137)) | (v139 << 6)));

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v137 &= v137 - 1;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

              while (v137);
            }
          }

          __break(1u);
        }

        else
        {
          v142 = *(v164 + 80);
          v145 = *(v142 + 64);
          v144 = v142 + 64;
          v143 = v145;
          v146 = 1 << *(*(v164 + 80) + 32);
          v147 = -1;
          if (v146 < 64)
          {
            v147 = ~(-1 << v146);
          }

          v148 = v147 & v143;
          v149 = (v146 + 63) >> 6;
          v180 = *(v164 + 80);

          v150 = 0;
LABEL_153:
          v151 = v150;
          if (!v148)
          {
            goto LABEL_155;
          }

          do
          {
            v150 = v151;
LABEL_158:
            v152 = __clz(__rbit64(v148));
            v148 &= v148 - 1;
            v153 = *(*(v180 + 56) + 8 * (v152 | (v150 << 6)));
            v154 = *((swift_isaMask & *v153) + 0xB8);
            v155 = v153;

            v157 = v154(v156);
            v159 = v158;

            if (!v23[2])
            {

LABEL_163:
              v162 = v155;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              goto LABEL_153;
            }

            sub_100198230(v157, v159);
            v161 = v160;

            if ((v161 & 1) == 0)
            {
              goto LABEL_163;
            }

            v151 = v150;
          }

          while (v148);
LABEL_155:
          while (1)
          {
            v150 = v151 + 1;
            if (__OFADD__(v151, 1))
            {
              break;
            }

            if (v150 >= v149)
            {

              return _swiftEmptyArrayStorage;
            }

            v148 = *(v144 + 8 * v150);
            ++v151;
            if (v148)
            {
              goto LABEL_158;
            }
          }
        }

        __break(1u);
LABEL_172:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v130 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v182;
      if (v130 < 1)
      {
        goto LABEL_138;
      }

      while (1)
      {
LABEL_6:
        v15 = (v22 >> 62);
        if (v22 >> 62)
        {
          v127 = v22;
          v128 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v127;
          if (!v128)
          {
            goto LABEL_134;
          }
        }

        else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_134;
        }

        v24 = v22;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v15 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v26 = sub_10006CB88(v24);
        }

        else
        {
          v26 = v24;
        }

        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          break;
        }

        v28 = v27 - 1;
        v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
        *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;
        v178 = v26;
        v182 = v26;
        v15 = &swift_isaMask;
        v30 = (*((swift_isaMask & *v29) + 0x238))();
        v172 = v29;
        v31 = (*((swift_isaMask & *v29) + 0x250))();
        if (v31)
        {
          v15 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v32 = (*((swift_isaMask & *v29) + 0x268))();
        if (v32)
        {
          v15 = v32;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        if (v30 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
          if (!v33)
          {
LABEL_115:
            v126 = v29;
            goto LABEL_116;
          }
        }

        else
        {
          v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v33)
          {
            goto LABEL_115;
          }
        }

        v34 = 0;
        v170 = *((swift_isaMask & *v29) + 0xB8);
        v171 = v30 & 0xC000000000000001;
        v166 = v30 + 32;
        v167 = v30 & 0xFFFFFFFFFFFFFF8;
        v169 = v33;
        do
        {
          if (v171)
          {
            v35 = v34;
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *(v167 + 16))
            {
              goto LABEL_131;
            }

            v35 = v34;
            v36 = *(v166 + 8 * v34);
          }

          v7 = v36;
          v37 = __OFADD__(v35, 1);
          v15 = (v35 + 1);
          if (v37)
          {
            goto LABEL_126;
          }

          v173 = v15;
          v38 = *((swift_isaMask & *v36) + 0x250);
          v39 = v38();
          v15 = v39;
          if ((v39 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_127;
            }

            v40 = *(v39 + 32);
          }

          v41 = v40;

          v43 = (*((swift_isaMask & *v41) + 0xB8))(v42);
          v45 = v44;

          v46 = v172;
          v14 = v170();
          v48 = v47;
          v168 = v46;

          if (v43 == v14 && v45 == v48)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              v51 = (v38)(v50);
              v15 = v51;
              if ((v51 & 0xC000000000000001) == 0)
              {
                if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_133;
                }

                v52 = *(v51 + 32);
                goto LABEL_45;
              }

              goto LABEL_110;
            }
          }

          v53 = (v38)(v50);
          v15 = v53;
          if ((v53 & 0xC000000000000001) == 0)
          {
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_128;
            }

            v52 = *(v53 + 40);
LABEL_45:
            v54 = v52;
            goto LABEL_46;
          }

LABEL_110:
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_46:
          v55 = v54;

          v14 = *((swift_isaMask & *v55) + 0xB8);
          v56 = v55;
          v57 = (v14)();
          v59 = v58;
          v174 = v56;

          v175 = v7;
          if (!v23[2])
          {

LABEL_50:
            v15 = v56;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v63 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v64 = (v14)(v63);
            v7 = v65;

            v66 = swift_isUniquelyReferenced_nonNull_native();
            v62 = sub_100198230(v64, v7);
            v68 = v181[2];
            v69 = (v67 & 1) == 0;
            v37 = __OFADD__(v68, v69);
            v70 = v68 + v69;
            if (v37)
            {
              goto LABEL_129;
            }

            v14 = v67;
            if (v181[3] >= v70)
            {
              if (v66)
              {
                goto LABEL_57;
              }

              v74 = v62;
              sub_1000BE7B8();
              v62 = v74;
              v23 = v181;
              if ((v14 & 1) == 0)
              {
                goto LABEL_62;
              }

LABEL_58:
              v72 = v23[7];
              v73 = *(v72 + 8 * v62);
              *(v72 + 8 * v62) = v15;
            }

            else
            {
              sub_1000B7DCC(v70, v66);
              v62 = sub_100198230(v64, v7);
              if ((v14 & 1) != (v71 & 1))
              {
                goto LABEL_172;
              }

LABEL_57:
              v23 = v181;
              if (v14)
              {
                goto LABEL_58;
              }

LABEL_62:
              v23[(v62 >> 6) + 8] |= 1 << v62;
              v75 = (v23[6] + 16 * v62);
              *v75 = v64;
              v75[1] = v7;
              *(v23[7] + 8 * v62) = v15;
              v76 = v23[2];
              v37 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v37)
              {
                goto LABEL_132;
              }

              v23[2] = v77;
            }

            v181 = v23;
            v7 = v175;
            goto LABEL_65;
          }

          sub_100198230(v57, v59);
          v61 = v60;

          if ((v61 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_65:
          v78 = *((swift_isaMask & *v7) + 0x268);
          v14 = (v78)(v62);
          v79 = (*((swift_isaMask & *v14) + 0xB8))();
          v15 = v80;

          if (!v23[2])
          {

LABEL_69:
            (v78)(v83);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v84 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v85 = (v78)(v84);
            v7 = (*((swift_isaMask & *v85) + 0xB8))();
            v15 = v86;

            v14 = v78();
            v87 = swift_isUniquelyReferenced_nonNull_native();
            v88 = sub_100198230(v7, v15);
            v90 = v181[2];
            v91 = (v89 & 1) == 0;
            v37 = __OFADD__(v90, v91);
            v92 = v90 + v91;
            if (v37)
            {
              goto LABEL_130;
            }

            v93 = v89;
            if (v181[3] >= v92)
            {
              if (v87)
              {
                goto LABEL_76;
              }

              v97 = v88;
              sub_1000BE7B8();
              v88 = v97;
              v23 = v181;
              if ((v93 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_77:
              v95 = v23[7];
              v96 = *(v95 + 8 * v88);
              *(v95 + 8 * v88) = v14;
            }

            else
            {
              sub_1000B7DCC(v92, v87);
              v88 = sub_100198230(v7, v15);
              if ((v93 & 1) != (v94 & 1))
              {
                goto LABEL_172;
              }

LABEL_76:
              v23 = v181;
              if (v93)
              {
                goto LABEL_77;
              }

LABEL_79:
              v83 = sub_1000BD5D8(v88, v7, v15, v14, v23);
            }

            v181 = v23;
            v7 = v175;
            goto LABEL_81;
          }

          sub_100198230(v79, v15);
          v82 = v81;

          if ((v82 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_81:
          v98 = (*((swift_isaMask & *v7) + 0x280))(v83);
          v99 = v98;
          if (v98 >> 62)
          {
            v100 = _CocoaArrayWrapper.endIndex.getter();
            if (!v100)
            {
              goto LABEL_24;
            }

LABEL_83:
            v7 = 0;
            v179 = v99 & 0xC000000000000001;
            v176 = v99 & 0xFFFFFFFFFFFFFF8;
            v177 = v99;
            while (2)
            {
              if (v179)
              {
                v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v104 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v7 >= *(v176 + 16))
                {
                  goto LABEL_124;
                }

                v103 = *(v99 + 8 * v7 + 32);
                v104 = v7 + 1;
                if (__OFADD__(v7, 1))
                {
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
                  __break(1u);
LABEL_134:
                  __break(1u);
                  goto LABEL_135;
                }
              }

              v105 = *((swift_isaMask & *v103) + 0xB8);
              v15 = v103;
              v106 = v105();
              if (v23[2])
              {
                v14 = v107;
                sub_100198230(v106, v107);
                v109 = v108;

                if (v109)
                {

LABEL_86:
                  ++v7;
                  if (v104 == v100)
                  {
                    goto LABEL_24;
                  }

                  continue;
                }
              }

              else
              {
              }

              break;
            }

            v110 = v100;
            v15 = v15;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v111 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v178 = v182;
            v112 = (v105)(v111);
            v14 = v113;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v116 = sub_100198230(v112, v14);
            v117 = v181[2];
            v118 = (v115 & 1) == 0;
            v119 = v117 + v118;
            if (__OFADD__(v117, v118))
            {
              goto LABEL_123;
            }

            v120 = v115;
            if (v181[3] >= v119)
            {
              if ((v114 & 1) == 0)
              {
                sub_1000BE7B8();
              }
            }

            else
            {
              sub_1000B7DCC(v119, v114);
              v121 = sub_100198230(v112, v14);
              if ((v120 & 1) != (v122 & 1))
              {
                goto LABEL_172;
              }

              v116 = v121;
            }

            v100 = v110;
            v99 = v177;
            if (v120)
            {

              v23 = v181;
              v101 = v181[7];
              v102 = *(v101 + 8 * v116);
              *(v101 + 8 * v116) = v15;
            }

            else
            {
              v23 = v181;
              v181[(v116 >> 6) + 8] |= 1 << v116;
              v123 = (v181[6] + 16 * v116);
              *v123 = v112;
              v123[1] = v14;
              *(v181[7] + 8 * v116) = v15;

              v124 = v181[2];
              v37 = __OFADD__(v124, 1);
              v125 = v124 + 1;
              if (v37)
              {
                goto LABEL_125;
              }

              v181[2] = v125;
            }

            v181 = v23;
            goto LABEL_86;
          }

          v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v100)
          {
            goto LABEL_83;
          }

LABEL_24:

          v34 = v173;
        }

        while (v173 != v169);
        v126 = v168;
LABEL_116:

        v22 = v178;
        if (v178 >> 62)
        {
          v129 = _CocoaArrayWrapper.endIndex.getter();
          v22 = v178;
          if (v129 <= 0)
          {
            goto LABEL_138;
          }
        }

        else if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
          goto LABEL_138;
        }
      }

LABEL_135:
      __break(1u);
LABEL_136:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  return result;
}

double sub_1001088EC()
{
  v1 = v0;
  if ([objc_opt_self() jasperAvailable])
  {
    v3 = *(**(v0 + 120) + 144);

    v3(v70, v4);

    v5 = v70[1];

    v6 = *(**(v0 + 120) + 144);

    v6(v70, v7);

    v8 = v70[0];

    v70[0] = v5;
    sub_100103E9C(v8, sub_10010B684);
    v9 = v70[0];
    v10 = *(**(v0 + 120) + 144);

    v10(v70, v11);

    v12 = v70[2];

    v70[0] = v9;
    sub_100103E9C(v12, sub_10010B684);
    v13 = v70[0];
    swift_beginAccess();
    v14 = *(v0 + 128);
    if (v14 >> 62)
    {
      goto LABEL_74;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v13;
    v62 = v1;
    while (v15)
    {
      v63 = v14 & 0xC000000000000001;

      swift_beginAccess();
      v16 = 0;
      v65 = 0;
      v60 = v14 & 0xFFFFFFFFFFFFFF8;
      v59 = v14 + 32;
      v58 = v14;
      v57 = v15;
      while (1)
      {
        if (v63)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v60 + 16))
          {
            goto LABEL_69;
          }

          v17 = *(v59 + 8 * v16);
        }

        v18 = v17;
        v19 = __OFADD__(v16, 1);
        v20 = v16 + 1;
        if (v19)
        {
          break;
        }

        v64 = v20;
        v69[0] = v17;
        __chkstk_darwin(v17);
        v56 = v69;
        v21 = v65;
        v22 = sub_1001038E8(sub_10010C40C, v55, v13);
        v65 = v21;
        if (v22)
        {
        }

        else
        {
          v66 = v18;
          v23 = *(v1 + 64);
          if (v23 >> 62)
          {
            v24 = _CocoaArrayWrapper.endIndex.getter();
            if (v24)
            {
LABEL_15:
              if (v24 < 1)
              {
                goto LABEL_71;
              }

              v67 = v23 & 0xC000000000000001;

              for (i = 0; i != v24; ++i)
              {
                if (v67)
                {
                  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v34 = *(v23 + 8 * i + 32);
                }

                if (swift_unknownObjectWeakLoadStrong())
                {
                  v26 = *(v34 + 24);
                  ObjectType = swift_getObjectType();
                  v28 = v23;
                  v29 = *((swift_isaMask & *v66) + 0xB8);
                  v30 = v66;
                  v31 = v29();
                  v33 = v32;

                  (*(v26 + 96))(v31, v33, ObjectType, v26);
                  v23 = v28;

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }

              v13 = v61;
              v1 = v62;
              v14 = v58;
              v15 = v57;
              goto LABEL_6;
            }
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v24)
            {
              goto LABEL_15;
            }
          }
        }

LABEL_6:
        v16 = v64;
        if (v64 == v15)
        {

          if (!(v13 >> 62))
          {
            goto LABEL_28;
          }

LABEL_76:
          v35 = _CocoaArrayWrapper.endIndex.getter();
          if (!v35)
          {
            goto LABEL_77;
          }

LABEL_29:
          v67 = v13 & 0xC000000000000001;
          swift_beginAccess();
          v36 = 0;
          v66 = (v13 & 0xFFFFFFFFFFFFFF8);
          v64 = v13 + 32;
          while (1)
          {
            if (v67)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v36 >= v66[2])
              {
                goto LABEL_70;
              }

              v37 = *(v64 + 8 * v36);
            }

            v38 = v37;
            v19 = __OFADD__(v36++, 1);
            if (v19)
            {
              goto LABEL_68;
            }

            v39 = *(v1 + 128);
            v68 = v37;
            __chkstk_darwin(v37);
            v56 = &v68;

            v40 = v65;
            v14 = sub_1001038E8(sub_10010C448, v55, v39);
            v65 = v40;

            v41 = *(v1 + 64);
            v42 = v41 >> 62;
            if (v14)
            {
              if (v42)
              {
                v43 = _CocoaArrayWrapper.endIndex.getter();
                if (!v43)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v43)
                {
                  goto LABEL_30;
                }
              }

              if (v43 < 1)
              {
                goto LABEL_73;
              }

              for (j = 0; j != v43; ++j)
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v45 = *(v41 + 8 * j + 32);
                }

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v14 = Strong;
                  v47 = *(v45 + 24);
                  v48 = swift_getObjectType();
                  (*(v47 + 104))(v38, v48, v47);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }
            }

            else
            {
              if (v42)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
                if (!v49)
                {
LABEL_30:

                  if (v36 == v35)
                  {
                    goto LABEL_77;
                  }

                  continue;
                }
              }

              else
              {
                v49 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v49)
                {
                  goto LABEL_30;
                }
              }

              if (v49 < 1)
              {
                goto LABEL_72;
              }

              for (k = 0; k != v49; ++k)
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v51 = *(v41 + 8 * k + 32);
                }

                v52 = swift_unknownObjectWeakLoadStrong();
                if (v52)
                {
                  v14 = v52;
                  v53 = *(v51 + 24);
                  v54 = swift_getObjectType();
                  (*(v53 + 88))(v38, v54, v53);

                  swift_unknownObjectRelease();
                }

                else
                {
                }
              }
            }

            v13 = v61;
            v1 = v62;
            if (v36 == v35)
            {
              goto LABEL_77;
            }
          }
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v61 = v13;
      v62 = v1;
    }

    v65 = 0;
    if (v13 >> 62)
    {
      goto LABEL_76;
    }

LABEL_28:
    v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_29;
    }

LABEL_77:
    swift_beginAccess();
    *(v1 + 128) = _swiftEmptyArrayStorage;

    sub_100103E9C(v13, sub_10010B684);
    swift_endAccess();
  }

  return result;
}

void sub_1001090C4(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *a1) + 0x250);
  v5 = v4();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v9.n128_f64[0] = (*((swift_isaMask & *v7) + 0x2B0))(v8);
  v39 = v10;
  v40 = v9;
  v37 = v12;
  v38 = v11;

  v13 = v4();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = *(v13 + 40);
LABEL_7:
  v15 = v14;

  v17.n128_f64[0] = (*((swift_isaMask & *v15) + 0x2B0))(v16);
  v35 = v18;
  v36 = v17;
  v33 = v20;
  v34 = v19;

  v21 = *(**(v2 + 144) + 144);

  v21(__src, v22);

  memcpy(__dst, __src, sizeof(__dst));
  v23 = sub_10008F8B8(__dst, v40, v39, v38, v37, v36, v35, v34, v33);
  v24 = sub_100013C4C(__dst);
  v25 = (*((swift_isaMask & *a1) + 0xB8))(v24);
  v27 = v26;
  if (v23 > 1.0)
  {
    v23 = 1.0;
  }

  v28 = *(**(v2 + 136) + 400);

  v29 = v28(__src);
  v31 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v31 + 32);
  *(v31 + 32) = 0x8000000000000000;
  sub_1000BBFA8(v25, v27, isUniquelyReferenced_nonNull_native, v23);

  *(v31 + 32) = v41;

  v29(__src, 0);
}

double sub_1001093D8(void *a1)
{
  if ((*((swift_isaMask & *a1) + 0x2C8))())
  {
    v4 = *(**(v1 + 72) + 400);

    v5 = v4(v8);

    sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
    sub_10000F974(&qword_1004A1650, &unk_1003D5980);
    swift_dynamicCast();
    v6 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_dynamicCast();
    v5(v8, 0);
  }

  return result;
}

void sub_10010959C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v7 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v8 = Contexts.PrivateQueue.init(_:)();
    aBlock[4] = sub_10010C314;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046E378;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    static DispatchQoS.unspecified.getter();
    v14 = _swiftEmptyArrayStorage;
    sub_10003180C();
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v9);

    (*(v13 + 8))(v3, v1);
    (*(v4 + 8))(v6, v12);
  }

  else
  {
    __break(1u);
  }
}

double sub_100109870(void *a1)
{
  if ((*((swift_isaMask & *a1) + 0x2C8))())
  {
    v4 = *(**(v1 + 72) + 400);

    v5 = v4(v8);

    sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
    sub_10000F974(&qword_1004A1650, &unk_1003D5980);
    swift_dynamicCast();
    sub_1000550E0(a1, v7);
    if ((v6 & 1) == 0)
    {
    }

    swift_dynamicCast();
    v5(v8, 0);
  }

  return result;
}

void sub_100109A00(uint64_t a1)
{
  v2 = *(**(a1 + 72) + 144);

  v2(v13, v3);

  v4 = sub_1001C98F0(v13[0], v13[1], v13[2]);

  v5 = *(a1 + 152);
  *(a1 + 152) = v4;
  if (v4 != v5)
  {
    swift_beginAccess();
    v6 = *(a1 + 64);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v11 = *(v9 + 24);

        if (Strong)
        {
          ObjectType = swift_getObjectType();
          (*(v11 + 128))(*(a1 + 152), ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_100109BB8()
{
  sub_10010959C();

  Synchronized.wrappedValue.getter();

  v1 = v30;

  Synchronized.wrappedValue.getter();

  Synchronized.wrappedValue.setter();

  v2 = 1 << *(v30 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v30 + 64);
  swift_beginAccess();
  v5 = 0;
  v27 = (v2 + 63) >> 6;
  v28 = v0;
  while (v4)
  {
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = *(*(v1 + 56) + 8 * (v7 | (v5 << 6)));
    type metadata accessor for WorldPoint();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 64);
      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_13:
          if (v12 < 1)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

          v29 = v8;
          v13 = v8;

          for (i = 0; i != v12; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v11 + 8 * i + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v15 = *(v17 + 24);
              ObjectType = swift_getObjectType();
              (*(v15 + 24))(v10, ObjectType, v15);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

LABEL_4:
          v1 = v30;
          v0 = v28;
        }
      }
    }

    else
    {
      type metadata accessor for WorldLine();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v20 = *(v0 + 64);
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (v21)
          {
LABEL_25:
            if (v21 < 1)
            {
              goto LABEL_43;
            }

            v29 = v8;
            v22 = v8;

            for (j = 0; j != v21; ++j)
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v26 = *(v20 + 8 * j + 32);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v24 = *(v26 + 24);
                v25 = swift_getObjectType();
                (*(v24 + 48))(v19, v25, v24);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            goto LABEL_4;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v6 >= v27)
    {
      break;
    }

    v4 = *(v30 + 64 + 8 * v6);
    ++v5;
    if (v4)
    {
      v5 = v6;
      goto LABEL_10;
    }
  }

  if ([objc_opt_self() jasperAvailable])
  {
    sub_1001088EC();
  }
}

void sub_100109F6C(__n128 *a1)
{
  v4 = v1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
    goto LABEL_74;
  }

  SIMD2<>.init(_:)();
  if (*(v10 + 80))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v12 = v11;
  v13.n128_f64[0] = CGRectGetWidth(*(v10 + 48));
  v181 = v13;
  if (*(v10 + 80))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  Height = CGRectGetHeight(*(v10 + 48));
  if ((*(v10 + 80) & 1) == 0)
  {
    *&v15.f64[0] = v181.n128_u64[0];
    v15.f64[1] = Height;
    v16 = vcvt_f32_f64(v15);
    *&v2 = sqrtf(vaddv_f32(vmul_f32(v16, v16))) * 0.5;
    SIMD2<>.init(_:)();
    v18 = v17;
    swift_beginAccess();
    v19 = *(v4 + 88);
    v20 = *(v4 + 96);

    sub_10008FD20(v19, v20, v239, v12, *&v2);
    v21 = v239[0];

    if (!v21)
    {
      v55 = *(**(v4 + 136) + 400);

      v56 = v55(v237);
      *(v57 + 8) = 0;
      *(v57 + 16) = 0;

      v56(v237, 0);

      v58 = *(**(v4 + 136) + 400);

      v59 = v58(v237);
      *(v60 + 24) = 0;
      *(v60 + 28) = 1;
      v59(v237, 0);

      v61 = *(**(v4 + 136) + 400);

      v62 = v61(v237);
      *(v63 + 1) = 0;
      v62(v237, 0);
LABEL_67:

      return;
    }

    *&v177 = a1;
    v23 = &swift_isaMask;
    v24 = v21;
    v25 = *((swift_isaMask & *v21) + 0x250);
    v179 = v24;
    v26 = (v25)(v22);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_71;
      }

      v27 = *(v26 + 32);
    }

    v28 = v27;

    v30.n128_f64[0] = (*((swift_isaMask & *v28) + 0x2B0))(v29);
    v180 = v31;
    v181 = v30;
    *v178 = v32;
    v176 = v33;

    v34 = v25();
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = v177;
LABEL_14:

      v37.n128_f64[0] = (*((swift_isaMask & *v35) + 0x2B0))(v36);
      v174 = v38;
      v175 = v37;
      v172 = v40;
      v173 = v39;

      Date.init()();
      Date.timeIntervalSince1970.getter();
      v2 = v41;
      (*(v7 + 8))(v9, v6);
      v12.i32[0] = sub_10008F8B8(v25, v181, v180, *v178, v176, v175, v174, v173, v172);
      v42 = *(**(v4 + 136) + 144);

      v42(&v225, v43);

      v235[6] = v231;
      v235[7] = v232;
      v235[8] = v233;
      v236 = v234;
      v235[2] = v227;
      v235[3] = v228;
      v235[4] = v229;
      v235[5] = v230;
      v235[0] = v225;
      v235[1] = v226;
      sub_1000D1340(v235);
      v176.n128_u32[0] = BYTE1(v235[0]);
      v44 = *(**(v4 + 136) + 144);

      v44(&v225, v45);

      v237[6] = v231;
      v237[7] = v232;
      v237[8] = v233;
      v238 = v234;
      v237[2] = v227;
      v237[3] = v228;
      v237[4] = v229;
      v237[5] = v230;
      v237[0] = v225;
      v237[1] = v226;
      v46 = *(&v225 + 1);
      v47 = v226;

      sub_1000D1340(v237);
      v48 = *((swift_isaMask & *v179) + 0xB8);
      v49 = (swift_isaMask & *v179) + 184;
      v50 = v179;
      v181.n128_u64[0] = v49;
      v51 = v48();
      v178[0] = v48;
      v180.n128_u64[0] = v50;
      if (v47)
      {
        if (v46 == v51 && v47 == v52)
        {

          v54 = 0;
          goto LABEL_24;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v54 = 0;
        if (v64)
        {
LABEL_24:
          v73 = (v48)(v53);
          v75 = v74;
          v76 = *(**(v4 + 136) + 144);

          v76(&v215, v77);

          v232 = v222;
          v233 = v223;
          v234 = v224;
          v227 = v217;
          v228 = v218;
          v229 = v219;
          v230 = v220;
          v231 = v221;
          v225 = v215;
          v226 = v216;
          v78 = *(&v215 + 1);
          v79 = v216;

          sub_1000D1340(&v225);
          if (v79)
          {
            if (v73 == v78 && v79 == v75)
            {

              v23 = v178[0];
              v81 = v176.n128_u32[0];
              if ((v176.n128_u8[0] & 1) == 0)
              {
LABEL_41:
                if ((v54 | v81))
                {
                  goto LABEL_44;
                }

                v104 = *(**(v4 + 136) + 144);

                v104(&v205, v105);

                v221 = v211;
                v222 = v212;
                v223 = v213;
                v224 = v214;
                v217 = v207;
                v218 = v208;
                v219 = v209;
                v220 = v210;
                v215 = v205;
                v216 = v206;
                v80 = sub_1000D1340(&v215);
                v3 = *(&v217 + 1);
                if (qword_1004A04C8 == -1)
                {
LABEL_43:
                  LOBYTE(v54) = v2 < v3 + *&dword_1004D5048;
LABEL_44:
                  v106 = (v23)(v80);
                  v108 = v107;
                  v109 = *(**(v4 + 136) + 144);

                  v109(&v205, v110);

                  v221 = v211;
                  v222 = v212;
                  v223 = v213;
                  v224 = v214;
                  v217 = v207;
                  v218 = v208;
                  v219 = v209;
                  v220 = v210;
                  v215 = v205;
                  v216 = v206;
                  v111 = v207;
                  if (!*(v207 + 16))
                  {
                    sub_10010C334(v239);
                    sub_10010C334(v239);
                    sub_1000D1340(&v215);

                    return;
                  }

                  v112 = sub_100198230(v106, v108);
                  v114 = v113;

                  if ((v114 & 1) == 0)
                  {
                    sub_10010C334(v239);
                    sub_10010C334(v239);
                    sub_1000D1340(&v215);
                    return;
                  }

                  v115 = *(*(v111 + 56) + 4 * v112);
                  sub_1000D1340(&v215);
                  v116 = *(**(v4 + 136) + 144);

                  v116(&v195, v117);

                  v211 = v201;
                  v212 = v202;
                  v213 = v203;
                  v214 = v204;
                  v207 = v197;
                  v208 = v198;
                  v209 = v199;
                  v210 = v200;
                  v205 = v195;
                  v206 = v196;
                  v118 = sub_1000D1340(&v205);
                  if (BYTE1(v205) == 1)
                  {
                    v119 = 0.0;
                    if (v115 >= 0.0)
                    {
                      goto LABEL_56;
                    }

LABEL_55:
                    v120 = v115 * 0.5;
LABEL_57:
                    v121 = (v23)(v118);
                    v123 = v122;
                    v124 = *(**(v4 + 136) + 400);

                    v125 = v124(&v195);
                    *(v126 + 8) = v121;
                    *(v126 + 16) = v123;

                    v125(&v195, 0);

                    v127 = *(**(v4 + 136) + 400);

                    v128 = v127(&v195);
                    *(v129 + 24) = v12.i32[0];
                    *(v129 + 28) = 0;
                    v128(&v195, 0);

                    LOBYTE(v121) = (v12.f32[0] <= v120) & ~v54;
                    v130 = *(**(v4 + 136) + 400);

                    v131 = v130(&v185);
                    *(v132 + 1) = v121;
                    v131(&v185, 0);

                    v133 = *(**(v4 + 136) + 144);

                    v133(&v185, v134);

                    v201 = v191;
                    v202 = v192;
                    v203 = v193;
                    v204 = v194;
                    v197 = v187;
                    v198 = v188;
                    v199 = v189;
                    v200 = v190;
                    v195 = v185;
                    v196 = v186;
                    sub_1000D1340(&v195);
                    if (BYTE1(v195) == 1)
                    {
                      v135 = *(**(v4 + 136) + 400);

                      v136 = v135(&v185);
                      *(v137 + 40) = v2;
                      v136(&v185, 0);
                    }

                    sub_10009055C(v180.n128_u64[0], v25, &v185, v18, 30.0);
                    if (BYTE8(v190))
                    {
                      v138 = *(**(v4 + 136) + 400);

                      v139 = v138(v182);
                      v141 = *(v140 + 48);
                      *(v140 + 48) = 0;

                      v139(v182, 0);

                      v184 = 1;
                      v142 = *(**(v4 + 136) + 400);

                      v143 = v142(v182);
                      *(v144 + 64) = 0u;
                      *(v144 + 80) = 0u;
                      *(v144 + 96) = 0u;
                      *(v144 + 112) = 0u;
                      *(v144 + 128) = v184;
                      v143(v182, 0);

                      v145 = *(**(v4 + 136) + 400);

                      v146 = v145(v182);
                      *(v147 + 136) = 0;
                      *(v147 + 144) = 1;
                      v146(v182, 0);

                      v149 = (v178[0])(v148);
                      v151 = v150;
                      sub_10010C334(v239);
                      v152 = 2.0;
                      if (v12.f32[0] <= 2.0)
                      {
                        v152 = v12.f32[0];
                      }

                      if (v152 > v115)
                      {
                        v153 = v152;
                      }

                      else
                      {
                        v153 = v115;
                      }

                      v154 = *(**(v4 + 136) + 400);

                      v155 = v154(v182);
                      v157 = v156;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v183 = *(v157 + 32);
                      *(v157 + 32) = 0x8000000000000000;
                      sub_1000BBFA8(v149, v151, isUniquelyReferenced_nonNull_native, v153);

                      *(v157 + 32) = v183;

                      v155(v182, 0);
                      sub_10010C334(v239);
                    }

                    else
                    {
                      v159 = v190;
                      v180 = v188;
                      v181 = v189;
                      v177 = v186;
                      *v178 = v187;
                      sub_10010C334(v239);
                      v160 = *(**(v4 + 136) + 400);
                      sub_10010C39C(v239, v182);

                      v161 = v160(v182);
                      v163 = *(v162 + 48);
                      *(v162 + 48) = v179;

                      v161(v182, 0);

                      LOBYTE(v183) = 0;
                      v164 = *(**(v4 + 136) + 400);

                      v165 = v164(v182);
                      v166 = *v178;
                      *(v167 + 64) = v177;
                      *(v167 + 80) = v166;
                      v168 = v181;
                      *(v167 + 96) = v180;
                      *(v167 + 112) = v168;
                      *(v167 + 128) = v183;
                      v165(v182, 0);

                      v169 = *(**(v4 + 136) + 400);

                      v170 = v169(v182);
                      *(v171 + 136) = v159;
                      *(v171 + 144) = 0;
                      v170(v182, 0);
                      sub_10010C334(v239);
                    }

                    goto LABEL_67;
                  }

                  if (v12.f32[0] >= 1.0)
                  {
                    v119 = ((v12.f32[0] + -1.0) * 0.5) + 0.15;
                    if (v115 < (v119 + v119))
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    if (v115 < 0.3)
                    {
                      goto LABEL_55;
                    }

                    v119 = 0.15;
                  }

LABEL_56:
                  v120 = v115 - v119;
                  goto LABEL_57;
                }

LABEL_72:
                v80 = swift_once();
                goto LABEL_43;
              }
            }

            else
            {
              v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v81 = v176.n128_u32[0];
              v23 = v178[0];
              if ((v82 & v176.n128_u32[0] & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v83 = (v23)(v80);
            v85 = v84;
            v86 = *(**(v4 + 136) + 144);

            v86(&v205, v87);

            v221 = v211;
            v222 = v212;
            v223 = v213;
            v224 = v214;
            v217 = v207;
            v218 = v208;
            v219 = v209;
            v220 = v210;
            v215 = v205;
            v216 = v206;
            v88 = v207;
            if (*(v207 + 16))
            {
              v89 = sub_100198230(v83, v85);
              v91 = v90;

              if (v91)
              {
                v92 = *(*(v88 + 56) + 4 * v89);
                v93 = sub_1000D1340(&v215);
                v94 = (v23)(v93);
                v96 = v95;
                v97 = ((v12.f32[0] + -1.0) * 0.5) + 0.15;
                if (v12.f32[0] < 1.0)
                {
                  v97 = 0.15;
                }

                v98 = v12.f32[0] + v97;
                if (v92 >= v98)
                {
                  v92 = v98;
                }

                v99 = *(**(v4 + 136) + 400);

                v100 = v99(&v205);
                v102 = v101;
                v103 = swift_isUniquelyReferenced_nonNull_native();
                *&v195 = *(v102 + 32);
                *(v102 + 32) = 0x8000000000000000;
                sub_1000BBFA8(v94, v96, v103, v92);

                *(v102 + 32) = v195;
                v25 = v177;

                v100(&v205, 0);
                v23 = v178[0];
              }

              else
              {
                v80 = sub_1000D1340(&v215);
              }
            }

            else
            {
              sub_1000D1340(&v215);
            }
          }

          else
          {

            v23 = v178[0];
          }

          v81 = v176.n128_u32[0];
          goto LABEL_41;
        }
      }

      else
      {
      }

      v54 = 1;
      if (v12.f32[0] > 1.0 && v12.f32[0] < 2.0)
      {
        v65 = (v48)(v53);
        v67 = v66;
        v68 = *(**(v4 + 136) + 400);

        v69 = v68(&v225);
        v71 = v70;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        *&v215 = *(v71 + 32);
        *(v71 + 32) = 0x8000000000000000;
        sub_1000BBFA8(v65, v67, v72, v12.f32[0]);
        v48 = v178[0];

        *(v71 + 32) = v215;

        v69(&v225, 0);
        v25 = v177;

        v54 = 1;
      }

      goto LABEL_24;
    }

    v25 = v177;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v35 = *(v34 + 40);
      goto LABEL_14;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_76:
  __break(1u);
}

double sub_10010B3C4()
{

  return result;
}

void *sub_10010B450()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_10010B4DC()
{
  sub_10010B450();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinesRenderer(uint64_t a1)
{
  result = qword_1004A9820;
  if (!qword_1004A9820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10010B5D0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 200);

  return result;
}

uint64_t sub_10010B5E4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10010B684(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A9980, &qword_1004A9978, &qword_1003DD770, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9978, &qword_1003DD770);
            v9 = sub_10013BA68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorldLineGuide();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010B828(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A9998, &qword_1004A9990, &qword_1003DD778, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9990, &qword_1003DD778);
            v9 = sub_10013BA68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100018630(0, &qword_1004A1838, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010B9DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A9988, &qword_1004A1648, &unk_1003D7F10, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
            v9 = sub_10013BAE8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MeasureObject();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010BB80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A99C0, &qword_1004A99B8, &unk_1003DD830, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A99B8, &unk_1003DD830);
            v9 = sub_10013BA68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100018630(0, &qword_1004A8960, ARHitTestResult_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010BD34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A9970, &qword_1004A9788, &qword_1003DD418, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A9788, &qword_1003DD418);
            v9 = sub_10013BA68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WorldPoint();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010BED8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001D47C(&qword_1004A99A8, &qword_1004A99A0, &qword_1003DD780, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000F974(&qword_1004A99A0, &qword_1003DD780);
            v9 = sub_10013BA68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010C08C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  v7 = sub_1000315D4(v19);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  a2[8] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93D0, &qword_1003DCFD0);
  swift_getKeyPath();
  a2[9] = MutableStateValue.__allocating_init(_:_:)();
  a2[10] = _swiftEmptyDictionarySingleton;
  type metadata accessor for WorldLine();
  a2[11] = OrderedDictionary.init()();
  a2[12] = v8;
  a2[13] = v9;
  v18 = _swiftEmptyDictionarySingleton;
  sub_10000F974(&qword_1004A93D8, &qword_1003DCFD8);
  swift_allocObject();
  a2[14] = Synchronized.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  v11 = sub_10000F974(&qword_1004A8950, &qword_1003DC580);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v11 + 272);
  swift_retain_n();
  a2[15] = v13(KeyPath, v12);
  a2[16] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004A93E0, &qword_1003DD010);
  swift_getKeyPath();
  a2[17] = MutableStateValue.__allocating_init(_:_:)();
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&qword_1004A1200, &unk_1003D5600);
  a2[18] = (*(v15 + 272))(v14, v12);
  *(a2 + 152) = 1;
  sub_1000336B4(v19, &v18);
  v16 = StateObserver.init(configuration:)();
  sub_10000FF00(v19);
  return v16;
}

double sub_10010C31C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10010C334(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A99B0, &qword_1003DD788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010C39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A99B0, &qword_1003DD788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10010C430@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 200);

  return result;
}

void sub_10010C488()
{
  v1 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setClipsToBounds:1];
  [*&v0[v1] _setContinuousCornerRadius:10.0];
  v2 = *&v0[v1];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = [v0 contentView];
  [v4 addSubview:*&v0[v1]];
}

void sub_10010C580()
{
  v1 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor];
  if (v2)
  {
    [v2 setActive:0];
    v3 = [*&v0[v1] bottomAnchor];
    v4 = [v0 contentView];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5 constant:-16.0];
    LODWORD(v7) = 1148813312;
    [v6 setPriority:v7];
    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1003D6240;
    v9 = [*&v0[v1] leadingAnchor];
    v10 = [v0 contentView];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:88.0];
    *(v8 + 32) = v12;
    v13 = [*&v0[v1] trailingAnchor];
    v14 = [v0 contentView];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15 constant:-88.0];
    *(v8 + 40) = v16;
    v17 = [*&v0[v1] heightAnchor];
    v18 = [*&v0[v1] widthAnchor];
    v19 = [v17 constraintLessThanOrEqualToAnchor:v18 multiplier:0.75];

    *(v8 + 48) = v19;
    *(v8 + 56) = v6;
    v29 = v8;
    v20 = objc_opt_self();
    v28 = v6;
    v21 = [v20 currentTraitCollection];
    v22 = [v21 preferredContentSizeCategory];

    LOBYTE(v17) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v23 = [*&v0[v1] topAnchor];
    if (v17)
    {
      v24 = [*&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel] bottomAnchor];
    }

    else
    {
      v24 = [*&v0[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels] bottomAnchor];
    }

    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = objc_opt_self();
    sub_100022180();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_10010C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_10010C488();
  sub_10010C580();

  return v10;
}

id sub_10010CB08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10010C488();
    sub_10010C580();
  }

  return v6;
}

uint64_t sub_10010CC74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MeasurementHistoryItem(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v7);
  memcpy(v163, &v7[*(v5 + 36)], 0x346uLL);
  if (sub_1000218D8(v163) == 1)
  {
    v160 = a1;
    v8 = sub_1000218E4(v163);
    v9 = v8;
    v10 = *v8;
    v161 = *(v8 + 8);
    v11 = *(v8 + 36);
    v12 = *(v8 + 32);
    v13 = *(v8 + 128);
    v158 = *(v8 + 120);
    if (v11)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v12;
    }

    if (*(v8 + 156))
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v8 + 152);
    }

    v16 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView);
    sub_100048AE8(v14, v15);

    v17 = [objc_opt_self() currentTraitCollection];
    v18 = [v17 preferredContentSizeCategory];

    v19 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v159 = v7;
    v162 = v2;
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle);
      v21 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
      v22 = *&v20[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
      v23 = v20;
      v24 = String._bridgeToObjectiveC()();
      [v22 setText:v24];

      v25 = *&v20[v21];
      v26 = String._bridgeToObjectiveC()();
      [v25 setAccessibilityLabel:v26];

      v27 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel);
      v28 = objc_opt_self();
      v29 = v27;
      v30 = [v28 mainBundle];
      v164._object = 0xE000000000000000;
      v31._object = 0x80000001003FFC10;
      v31._countAndFlagsBits = 0xD000000000000010;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v164._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v164);

      v161 = v28;
      v33 = [v28 mainBundle];
      v165._object = 0xE000000000000000;
      v34._object = 0x80000001003FFC10;
      v34._countAndFlagsBits = 0xD000000000000010;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v165._countAndFlagsBits = 0;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v165)._object;

      v37 = v9[5];
      v153 = v9[6];
      v154 = v37;
      v38 = v9[7];
      v39 = v9[8];
      v40 = v9[10];
      v155 = v9[11];
      v156 = v40;
      v42 = v9[12];
      v41 = v9[13];
      v151 = v38;
      v152 = v42;
      v157 = v41;
      v43 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v44 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v45 = String._bridgeToObjectiveC()();

      [v44 setText:v45];

      v46 = *&v29[v43];
      v158 = object;
      v47 = String._bridgeToObjectiveC()();
      [v46 setAccessibilityLabel:v47];

      v48 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v49 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v50 = String._bridgeToObjectiveC()();
      [v49 setText:v50];

      v51 = *&v29[v48];
      if (v39)
      {
        v39 = String._bridgeToObjectiveC()();
      }

      [v51 setAccessibilityLabel:v39];

      v52 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v53 = *&v29[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v54 = String._bridgeToObjectiveC()();
      [v53 setText:v54];

      v55 = *&v29[v52];
      if (v157)
      {
        v56 = String._bridgeToObjectiveC()();
      }

      else
      {
        v56 = 0;
      }

      v83 = v162;
      [v55 setAccessibilityLabel:v56];

      v84 = *(v83 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel);
      v85 = v161;
      v86 = [v161 mainBundle];
      v167._object = 0xE000000000000000;
      v87._countAndFlagsBits = 0x4C474E4154434552;
      v87._object = 0xEF48544449575F45;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v167._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v167);

      v89 = [v85 mainBundle];
      v168._object = 0xE000000000000000;
      v90._countAndFlagsBits = 0x4C474E4154434552;
      v90._object = 0xEF48544449575F45;
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      v168._countAndFlagsBits = 0;
      v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, v89, v91, v168)._object;

      v93 = v9[22];
      v94 = v9[23];
      v96 = v9[25];
      v95 = v9[26];
      v155 = v9[20];
      v156 = v95;
      v98 = v9[27];
      v97 = v9[28];
      v153 = v93;
      v154 = v98;
      v157 = v96;
      v158 = v97;
      v99 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v100 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v101 = String._bridgeToObjectiveC()();

      [v100 setText:v101];

      v102 = *&v84[v99];
      v161 = v92;
      v103 = String._bridgeToObjectiveC()();
      [v102 setAccessibilityLabel:v103];

      v104 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v105 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v106 = String._bridgeToObjectiveC()();
      [v105 setText:v106];

      v107 = *&v84[v104];
      if (v94)
      {
        v108 = String._bridgeToObjectiveC()();
      }

      else
      {
        v108 = 0;
      }

      v109 = v160;
      [v107 setAccessibilityLabel:v108];

      v110 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v111 = *&v84[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v112 = String._bridgeToObjectiveC()();
      [v111 setText:v112];

      v113 = *&v84[v110];
      if (v158)
      {
        v114 = String._bridgeToObjectiveC()();
      }

      else
      {
        v114 = 0;
      }

      v115 = v162;
      [v113 setAccessibilityLabel:v114];
    }

    else
    {
      v157 = v13;
      v57 = *(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle);
      v58 = String._bridgeToObjectiveC()();
      [v57 setText:v58];

      v59 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
      v60 = *(*(v2 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v61 = objc_opt_self();
      v62 = v60;
      v156 = v61;
      v63 = [v61 mainBundle];
      v166._object = 0xE000000000000000;
      v64._object = 0x80000001003FFC10;
      v64._countAndFlagsBits = 0xD000000000000010;
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      v166._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v166);

      v66 = String._bridgeToObjectiveC()();

      [v62 setText:v66];

      v67 = *(*(v2 + v59) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v68 = String._bridgeToObjectiveC()();
      [v67 setText:v68];

      v69 = *(*(v2 + v59) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v70 = v9[5];
      v71 = v9[6];
      v72 = v9[8];
      v152 = v9[7];
      v153 = v72;
      if (v10 == v70 && v161 == v71)
      {
        v73 = 1;
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v74 = v9[11];
      v161 = v9[10];
      v75 = v9[13];
      v154 = v9[12];
      v155 = v74;
      v76 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v77 = *&v69[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v78 = v69;
      [v77 setHidden:v73 & 1];
      if ((v73 & 1) == 0)
      {
        v79 = *(*&v69[v76] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v80 = String._bridgeToObjectiveC()();
        [v79 setText:v80];

        v81 = *&v69[v76];
        if (v153)
        {
          v82 = String._bridgeToObjectiveC()();
        }

        else
        {
          v82 = 0;
        }

        [v81 setAccessibilityLabel:v82];
      }

      v116 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v117 = *(*&v78[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v118 = String._bridgeToObjectiveC()();
      [v117 setText:v118];

      v119 = *&v78[v116];
      v120 = v162;
      if (v75)
      {
        v75 = String._bridgeToObjectiveC()();
      }

      [v119 setAccessibilityLabel:v75];

      v121 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
      v122 = *(*(v120 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v123 = [v156 mainBundle];
      v169._object = 0xE000000000000000;
      v124._countAndFlagsBits = 0x4C474E4154434552;
      v124._object = 0xEF48544449575F45;
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      v169._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v124, 0, v123, v125, v169);

      v126 = String._bridgeToObjectiveC()();

      [v122 setText:v126];

      v127 = *(*(v120 + v121) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v129 = v157;
      v128 = v158;
      v130 = String._bridgeToObjectiveC()();
      [v127 setText:v130];

      v131 = v129;
      v132 = *(*(v120 + v121) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v133 = v9[20];
      v134 = v9[21];
      v135 = v9[23];
      v155 = v9[22];
      v156 = v135;
      if (v128 == v133 && v131 == v134)
      {
        v136 = 1;
      }

      else
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v161 = v9[25];
      v137 = v9[27];
      v138 = v9[28];
      v158 = v137;
      v139 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v140 = *&v132[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v141 = v132;
      [v140 setHidden:v136 & 1];
      if ((v136 & 1) == 0)
      {
        v142 = *(*&v132[v139] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v143 = String._bridgeToObjectiveC()();
        [v142 setText:v143];

        v144 = *&v132[v139];
        if (v156)
        {
          v145 = String._bridgeToObjectiveC()();
        }

        else
        {
          v145 = 0;
        }

        [v144 setAccessibilityLabel:v145];
      }

      v146 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v147 = *(*&v141[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v148 = String._bridgeToObjectiveC()();
      [v147 setText:v148];

      v149 = *&v141[v146];
      if (v138)
      {
        v114 = String._bridgeToObjectiveC()();
      }

      else
      {
        v114 = 0;
      }

      v109 = v160;
      v115 = v162;
      [v149 setAccessibilityLabel:v114];
    }

    [*(v115 + OBJC_IVAR____TtC7Measure34RectangleHistoryCellWithScreenshot_screenshot) setImage:*(v109 + *(type metadata accessor for SpatialPlattersHistoryItem(0) + 20))];
    return sub_10002339C(v159);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}