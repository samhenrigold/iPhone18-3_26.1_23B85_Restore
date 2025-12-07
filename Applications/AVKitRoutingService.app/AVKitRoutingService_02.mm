void *sub_1000388F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 availableInputDevices];
  sub_1000392C8();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 deviceID];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (String.init<A>(_:)() == a2 && v14 == a3)
        {

          return v10;
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {

          return v10;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t sub_100038AD0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000387B4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000387B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000387B4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100038F3C(void *a1)
{
  v2 = sub_100037744(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (sub_1000261B4(v2))
    {
      v4 = [objc_opt_self() productInfoWithProductID:v3];
      v5 = [v4 sfSymbolNameMain];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }
    }
  }

  v9 = [a1 deviceType];
  if (!v9)
  {
    return 0x73647562726165;
  }

  v10 = 0x6F68706F7263696DLL;
  if (v9 == 1)
  {
    v10 = 0x6E692E656E696CLL;
  }

  if (v9 == 3)
  {
    return 0x6F632E656C626163;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_100039078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 deviceID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v20 = v6;
    v21 = v8;
    v9 = String.init<A>(_:)();
  }

  else
  {
    v20 = a1;
    v9 = String.init<A>(describing:)();
  }

  v11 = v9;
  v12 = v10;
  v13 = [a1 deviceName];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = String.init<A>(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_100038F3C(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = result;
  a2[5] = v19;
  return result;
}

unint64_t sub_1000391A8()
{
  result = qword_100083BF8;
  if (!qword_100083BF8)
  {
    sub_100008218(&qword_100083BE8, &qword_100062250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BF8);
  }

  return result;
}

uint64_t sub_10003920C(uint64_t a1)
{
  v2 = sub_100003B30(&qword_100083BD8, &qword_100062240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039274()
{
  result = qword_100083C00;
  if (!qword_100083C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C00);
  }

  return result;
}

unint64_t sub_1000392C8()
{
  result = qword_1000838B8;
  if (!qword_1000838B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000838B8);
  }

  return result;
}

id sub_100039314()
{
  v0 = type metadata accessor for Logger();
  sub_100039378(v0, qword_100086758);
  sub_1000080BC(v0, qword_100086758);
  result = sub_10005AA5C();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100039378(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000393DC(uint64_t *a1, int a2)
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

uint64_t sub_100039424(uint64_t result, int a2, int a3)
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

unint64_t sub_10003948C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_100003B78(v4);
}

unint64_t sub_100039508(unint64_t *a1)
{
  v1 = *a1;
  sub_100003B78(*a1);
  return sub_1000021B8(v1);
}

uint64_t sub_10003953C()
{
  result = static Color.clear.getter();
  qword_100083C08 = result;
  return result;
}

uint64_t sub_10003955C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v16 = v15;
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v15 + 40);

  v7 = *(v6 + 16);

  v8 = sub_100003B30(&qword_100083C18, &qword_100062348);
  v9 = v8;
  v10 = *(v8 - 8);
  if (!v7)
  {
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }

  __chkstk_darwin(v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039714(a1, a2);
  (*(v10 + 32))(a3, v12, v9);
  return (*(v10 + 56))(a3, 0, 1, v9);
}

uint64_t sub_100039714(void *a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083C20, &qword_100062350);
  __chkstk_darwin(v4);
  v6 = (v16 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = v6 + *(sub_100003B30(&qword_100083C28, &qword_100062358) + 44);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100003B30(&qword_100083C30, &qword_100062360);
  sub_1000399B4(a1, a2, &v8[*(v9 + 44)]);

  v10 = static Edge.Set.all.getter();
  v11 = v6 + *(v4 + 36);
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  v17 = a1;
  v18 = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  v12 = v16[1];
  swift_getKeyPath();
  v17 = v12;
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v12[4];
  sub_100003B78(v13);

  v17 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_10003B534();
  sub_100027918();

  View.onChange<A>(of:initial:_:)();

  sub_100003C9C(v13);
  return sub_100008B68(v6, &qword_100083C20, &qword_100062350);
}

uint64_t sub_1000399B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v55 = a1;
  v56 = a3;
  type metadata accessor for MainActor();
  v57 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_10005D95C(v4);

  HIDWORD(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)() >> 32;
  v8 = v7;

  HIDWORD(v64) = HIDWORD(v4);
  v65 = v8;
  sub_10003B5D4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  LOBYTE(v6) = v12;
  LODWORD(v64) = static HierarchicalShapeStyle.secondary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  sub_10003B628(v9, v11, v6 & 1);

  static Font.footnote.getter();
  v52 = Text.font(_:)();
  v51 = v18;
  LOBYTE(v11) = v19;
  v53 = v20;

  sub_10003B628(v13, v15, v17 & 1);

  v50 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v49 = v11 & 1;
  LOBYTE(v64) = v11 & 1;
  LOBYTE(v60) = 0;
  v29 = sub_100003B30(&qword_100083C58, &qword_100062398);
  v54 = v48;
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = __chkstk_darwin(v29);
  v33 = v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[1] = v48;
  v34 = __chkstk_darwin(v32);
  v48[-2] = v55;
  v48[-1] = a2;
  __chkstk_darwin(v34);
  v48[-2] = v35;
  v48[-1] = a2;
  sub_100003B30(&qword_100083C60, &qword_1000623A0);
  sub_100003B30(&qword_100083C68, &qword_1000623A8);
  sub_10003B648();
  v36 = sub_100008218(&qword_100083CB0, &qword_1000623C8);
  v37 = sub_10003B7DC();
  v64 = v36;
  v65 = v37;
  swift_getOpaqueTypeConformance2();
  Menu.init(content:label:)();
  v38 = sub_100003B30(&qword_100083D10, &qword_1000623F8);
  v55 = v48;
  v33[*(v38 + 36)] = 0;
  v33[*(v30 + 44)] = 0;
  __chkstk_darwin(v38);
  sub_10003B9BC(v33, v33);
  v39 = v52;
  *&v60 = v52;
  v40 = v51;
  *(&v60 + 1) = v51;
  LOBYTE(v31) = v49;
  LOBYTE(v61) = v49;
  *(&v61 + 1) = *v59;
  DWORD1(v61) = *&v59[3];
  v41 = v53;
  *(&v61 + 1) = v53;
  LOBYTE(v30) = v50;
  LOBYTE(v62) = v50;
  *(&v62 + 1) = *v58;
  DWORD1(v62) = *&v58[3];
  *(&v62 + 1) = v22;
  *v63 = v24;
  *&v63[8] = v26;
  *&v63[16] = v28;
  v63[24] = 0;
  v42 = v60;
  v43 = v61;
  v44 = v56;
  *(v56 + 57) = *&v63[9];
  v45 = *v63;
  v44[2] = v62;
  v44[3] = v45;
  *v44 = v42;
  v44[1] = v43;
  v46 = sub_100003B30(&qword_100083D18, &qword_100062400);
  sub_10003B9BC(v33, v44 + *(v46 + 48));
  sub_100008AF8(&v60, &v64, &qword_100083D20, &qword_100062408);
  sub_100008B68(v33, &qword_100083C58, &qword_100062398);
  sub_100008B68(v33, &qword_100083C58, &qword_100062398);
  v64 = v39;
  v65 = v40;
  v66 = v31;
  *v67 = *v59;
  *&v67[3] = *&v59[3];
  v68 = v41;
  v69 = v30;
  *v70 = *v58;
  *&v70[3] = *&v58[3];
  v71 = v22;
  v72 = v24;
  v73 = v26;
  v74 = v28;
  v75 = 0;
  sub_100008B68(&v64, &qword_100083D20, &qword_100062408);
}

uint64_t sub_100039F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_100003B30(&qword_100083CB0, &qword_1000623C8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_10005D95C(v8);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v46 = v11;
  v47 = v13;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.projectedValue.getter();
  v14 = v43;
  v15 = v44;
  v16 = v45;
  swift_getKeyPath();
  v43 = v14;
  v44 = v15;
  v45 = v16;
  sub_100003B30(&qword_100083D28, &qword_100062440);
  Binding.subscript.getter();

  v36 = v41;
  v17 = v42;

  v39 = v36;
  v40 = v17;
  __chkstk_darwin(v18);
  sub_100003B30(&qword_100083D30, &qword_100062448);
  sub_10003BA3C();
  sub_10003BA90();
  sub_10003B5D4();
  Picker<>.init<A>(_:selection:content:)();
  LOBYTE(v17) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v7[*(sub_100003B30(&qword_100083CD8, &qword_1000623D8) + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = static Alignment.center.getter();
  v30 = v29;
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = v28;
  v44 = v30;
  sub_100003B30(&qword_100083D50, &unk_100062458);
  sub_100009034(&qword_100083D58, &qword_100083D50, &unk_100062458, &protocol conformance descriptor for ZStack<A>);
  v31 = AnyView.init<A>(_:)();
  *&v7[*(sub_100003B30(&qword_100083CC8, &qword_1000623D0) + 36)] = v31;
  if (qword_1000831F8 != -1)
  {
    swift_once();
  }

  v32 = qword_100083C08;
  v33 = static Edge.Set.all.getter();
  v34 = &v7[*(v5 + 36)];
  *v34 = v32;
  v34[8] = v33;
  sub_10003B7DC();

  View.labels(_:)();
  sub_100008B68(v7, &qword_100083CB0, &qword_1000623C8);
}

uint64_t sub_10003A418(uint64_t a1, ValueMetadata *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_100003B30(&qword_100083D60, &qword_100062480);
  sub_100003B30(&qword_100083D68, &qword_100062488);
  sub_10003BBC8();
  sub_10003BA3C();
  sub_100008218(&qword_100083208, &qword_100062450);
  sub_100009034(&qword_100083D48, &qword_100083208, &qword_100062450, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
}

uint64_t sub_10003A66C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_100003B30(&qword_100083208, &qword_100062450);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - v11;
  __chkstk_darwin(v10);
  *(&v15 - 4) = v7;
  *(&v15 - 3) = a2;
  *(&v15 - 2) = a3;
  sub_100003B30(&qword_100083D88, &qword_100062498);
  sub_10003BCBC();
  Button.init(action:label:)();
  (*(v9 + 32))(a4, v12, v8);
  v13 = a4 + *(sub_100003B30(&qword_100083210, "J=") + 36);
  *v13 = v7;
  *(v13 + 8) = 1;
  sub_100003B78(v7);
}

uint64_t sub_10003A874()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10003A904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_100003B30(&qword_100083D88, &qword_100062498);
  __chkstk_darwin(v9 - 8);
  v56 = &v46 - v10;
  v57 = v8;
  v58 = a4;
  if (a1 >= 3)
  {
    v16 = *(a1 + 16);
    v17 = sub_100003B30(&qword_100083DB0, &unk_1000624A8);
    v53 = &v46;
    v49 = v17;
    v52 = *(v17 - 8);
    __chkstk_darwin(v17);
    v51 = v18;
    v19 = (&v46 - v18);
    sub_100003B78(v16);
    v60 = sub_100027530();
    v61 = v20;
    v54 = v16;
    sub_10003B5D4();
    v55 = v19;
    Label<>.init<A>(_:systemImage:)();
    v60 = a2;
    v61 = a3;
    sub_100003B30(&qword_100083C10, &qword_100062318);
    State.wrappedValue.getter();
    v21 = v59;
    swift_getKeyPath();
    v60 = v21;
    sub_10003B498();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v16) = *(v21 + 24);

    if (v16 == 1)
    {
      v60 = sub_100027530();
      v61 = v22;
      v23 = Text.init<A>(_:)();
      v25 = v24;
      v28 = v27;
      v29 = v26 & 1;
      sub_10003BE38(v23, v27, v26 & 1);
      v30 = v25;
    }

    else
    {
      v23 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
    }

    v47 = sub_100003B30(&qword_100083DA0, &qword_1000624A0);
    v50 = &v46;
    v31 = __chkstk_darwin(v47);
    v33 = &v46 - v32;
    v48 = &v46;
    __chkstk_darwin(v31);
    v34 = v52;
    v35 = (&v46 - v51);
    v36 = *(v52 + 16);
    v37 = v49;
    v36(&v46 - v51, v55, v49);
    v36(v33, v35, v37);
    v38 = &v33[*(sub_100003B30(&qword_100083DC0, &qword_1000624E8) + 48)];
    v46 = v33;
    *v38 = v23;
    v38[1] = v28;
    v38[2] = v29;
    v38[3] = v30;
    sub_10003BDF4(v23, v28, v29, v30);
    sub_10003BE48(v23, v28, v29, v30);
    v52 = *(v34 + 8);
    (v52)(v35, v37);
    v39 = sub_100003B30(&qword_100083DB8, &qword_1000624B8);
    v51 = &v46;
    __chkstk_darwin(v39);
    sub_100008AF8(v33, &v46 - v40, &qword_100083DA0, &qword_1000624A0);
    swift_storeEnumTagMultiPayload();
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0, &protocol conformance descriptor for TupleView<A>);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8, &protocol conformance descriptor for Label<A, B>);
    v41 = v56;
    _ConditionalContent<>.init(storage:)();
    sub_10003BE48(v23, v28, v29, v30);
    sub_100003C9C(v54);
    sub_100008B68(v46, &qword_100083DA0, &qword_1000624A0);
    v44 = v41;
    (v52)(v55, v37);
  }

  else
  {
    v11 = sub_100003B30(&qword_100083DB0, &unk_1000624A8);
    v12 = *(v11 - 8);
    __chkstk_darwin(v11);
    v14 = &v46 - v13;
    v60 = sub_100027530();
    v61 = v15;
    sub_10003B5D4();
    Label<>.init<A>(_:systemImage:)();
    v42 = sub_100003B30(&qword_100083DB8, &qword_1000624B8);
    __chkstk_darwin(v42);
    (*(v12 + 16))(&v46 - v43, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_100083DA0, &qword_1000624A0);
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0, &protocol conformance descriptor for TupleView<A>);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8, &protocol conformance descriptor for Label<A, B>);
    v44 = v56;
    _ConditionalContent<>.init(storage:)();
    (*(v12 + 8))(v14, v11);
  }

  sub_10003BD7C(v44, v58);
}

uint64_t sub_10003B108@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v15 + 32);
  sub_100003B78(v4);

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0x8000000100068C30;
      v6 = 0xD000000000000012;
    }

    else if (v4 == 2)
    {
      v5 = 0x8000000100068C50;
      v6 = 0xD000000000000019;
    }

    else
    {
      sub_100003C9C(v4);
      v5 = 0xE800000000000000;
      v6 = 0x6D726F6665766177;
    }
  }

  else
  {
    v5 = 0xEA0000000000656ELL;
    v6 = 0x6F68706F7263696DLL;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v15 + 32);
  sub_100003B78(v7);

  v8 = sub_100027530();
  v10 = v9;
  sub_100003C9C(v7);
  v11 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v13 = static HierarchicalShapeStyle.secondary.getter();

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0xD000000000000017;
  *(a3 + 24) = 0x8000000100068C10;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = v11;
  *(a3 + 80) = v13;
  return result;
}

uint64_t sub_10003B3AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  sub_100002E80(v4);
}

unint64_t sub_10003B498()
{
  result = qword_100083370;
  if (!qword_100083370)
  {
    type metadata accessor for InputPickerMicrophoneModesManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083370);
  }

  return result;
}

unint64_t sub_10003B4F4(unint64_t *a1)
{
  v1 = *a1;
  sub_100003B78(*a1);
  return sub_1000021B8(v1);
}

unint64_t sub_10003B534()
{
  result = qword_100083C38;
  if (!qword_100083C38)
  {
    sub_100008218(&qword_100083C20, &qword_100062350);
    sub_100009034(&qword_100083C40, &qword_100083C48, &qword_100062390, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C38);
  }

  return result;
}

unint64_t sub_10003B5D4()
{
  result = qword_100083C50;
  if (!qword_100083C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C50);
  }

  return result;
}

uint64_t sub_10003B628(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10003B648()
{
  result = qword_100083C70;
  if (!qword_100083C70)
  {
    sub_100008218(&qword_100083C60, &qword_1000623A0);
    sub_10003B6E8();
    sub_100009034(&qword_100083CA0, &qword_100083CA8, &qword_1000623C0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C70);
  }

  return result;
}

unint64_t sub_10003B6E8()
{
  result = qword_100083C78;
  if (!qword_100083C78)
  {
    sub_100008218(&qword_100083C80, &unk_1000623B0);
    sub_10003B788();
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C78);
  }

  return result;
}

unint64_t sub_10003B788()
{
  result = qword_100083C88;
  if (!qword_100083C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C88);
  }

  return result;
}

unint64_t sub_10003B7DC()
{
  result = qword_100083CB8;
  if (!qword_100083CB8)
  {
    sub_100008218(&qword_100083CB0, &qword_1000623C8);
    sub_10003B87C();
    sub_100009034(&qword_100083D00, &qword_100083D08, &qword_1000623F0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CB8);
  }

  return result;
}

unint64_t sub_10003B87C()
{
  result = qword_100083CC0;
  if (!qword_100083CC0)
  {
    sub_100008218(&qword_100083CC8, &qword_1000623D0);
    sub_10003B91C();
    sub_100009034(&qword_100083CF0, &qword_100083CF8, &qword_1000623E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CC0);
  }

  return result;
}

unint64_t sub_10003B91C()
{
  result = qword_100083CD0;
  if (!qword_100083CD0)
  {
    sub_100008218(&qword_100083CD8, &qword_1000623D8);
    sub_100009034(&qword_100083CE0, &qword_100083CE8, &qword_1000623E0, &protocol conformance descriptor for Picker<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CD0);
  }

  return result;
}

uint64_t sub_10003B9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083C58, &qword_100062398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003BA3C()
{
  result = qword_100083D38;
  if (!qword_100083D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D38);
  }

  return result;
}

unint64_t sub_10003BA90()
{
  result = qword_100083D40;
  if (!qword_100083D40)
  {
    sub_100008218(&qword_100083D30, &qword_100062448);
    sub_100008218(&qword_100083208, &qword_100062450);
    sub_100009034(&qword_100083D48, &qword_100083208, &qword_100062450, &protocol conformance descriptor for Button<A>);
    sub_10003BA3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D40);
  }

  return result;
}

uint64_t sub_10003BB80()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003BBC8()
{
  result = qword_100083D70;
  if (!qword_100083D70)
  {
    sub_100008218(&qword_100083D60, &qword_100062480);
    sub_10003BC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D70);
  }

  return result;
}

unint64_t sub_10003BC4C()
{
  result = qword_100083D78;
  if (!qword_100083D78)
  {
    sub_100008218(&qword_100083D80, &qword_100062490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D78);
  }

  return result;
}

unint64_t sub_10003BCBC()
{
  result = qword_100083D90;
  if (!qword_100083D90)
  {
    sub_100008218(&qword_100083D88, &qword_100062498);
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0, &protocol conformance descriptor for TupleView<A>);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D90);
  }

  return result;
}

uint64_t sub_10003BD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083D88, &qword_100062498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BDF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10003BE38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003BE38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10003BE48(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10003B628(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10003BE90()
{
  result = qword_100083DC8;
  if (!qword_100083DC8)
  {
    sub_100008218(&qword_100083DD0, &unk_1000624F0);
    sub_100008218(&qword_100083C20, &qword_100062350);
    sub_10003B534();
    sub_100027918();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083DC8);
  }

  return result;
}

void sub_10003BF94(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1;
  v5 = static HorizontalAlignment.leading.getter();
  sub_10003CDD0(&v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v15 = v5;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  BYTE8(v17) = v8;
  *&v18 = v9;
  *(&v18 + 1) = KeyPath;
  *(a2 + 24) = v16;
  v12 = v18;
  *(a2 + 40) = v17;
  *(a2 + 56) = v12;
  v19 = v10;
  v20 = v5;
  v14[72] = 1;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v21 = 0;
  v22 = 1;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = KeyPath;
  v28 = v10;
  v13 = v4;
  sub_100008AF8(&v15, v14, &qword_100083E50, &qword_100062790);
  sub_100008B68(&v20, &qword_100083E50, &qword_100062790);
}

double sub_10003C124@<D0>(uint64_t a7@<X8>)
{
  v9 = *v7;
  v10 = static VerticalAlignment.center.getter();
  v23 = 1;
  sub_10003BF94(v9, &v17);
  v26 = v19;
  v27 = v20;
  v28[0] = v21[0];
  *(v28 + 9) = *(v21 + 9);
  v24 = v17;
  v25 = v18;
  *(v30 + 9) = *(v21 + 9);
  v29[2] = v19;
  v29[3] = v20;
  v30[0] = v21[0];
  v29[0] = v17;
  v29[1] = v18;
  sub_100008AF8(&v24, &v16, &qword_100083E58, &qword_100062798);
  sub_100008B68(v29, &qword_100083E58, &qword_100062798);
  *&v22[39] = v26;
  *&v22[55] = v27;
  *&v22[71] = v28[0];
  *&v22[80] = *(v28 + 9);
  *&v22[7] = v24;
  *&v22[23] = v25;
  v11 = *&v22[48];
  *(a7 + 49) = *&v22[32];
  *(a7 + 65) = v11;
  v12 = *&v22[80];
  *(a7 + 81) = *&v22[64];
  *(a7 + 97) = v12;
  result = *&v22[16];
  v14 = *v22;
  *(a7 + 33) = *&v22[16];
  v15 = v23;
  *a7 = v10;
  *(a7 + 8) = 0;
  *(a7 + 16) = v15;
  *(a7 + 17) = v14;
  return result;
}

uint64_t sub_10003C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  type metadata accessor for MainActor();
  v65 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_100003B30(&qword_100083DE0, &qword_100062648);
  v59 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v57 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100003B30(&qword_100083DE8, &qword_100062650);
  sub_10003CA00(&v5[*(v6 + 44)]);
  v64 = *(a1 + 152);
  v62 = static Color.primary.getter();
  v61 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v72) = 0;
  v15 = sub_100003B30(&qword_100083DF0, &qword_100062658);
  v63 = &v57;
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v66 = &v57 - v17;
  v18 = *(a1 + 64);
  swift_getKeyPath();
  v72 = v18;
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v18[81];

  v20 = sub_100003B30(&qword_100083DF8, &qword_100062688);
  v21 = v20;
  v22 = *(v20 - 8);
  if (v19 == 1)
  {
    v58 = &v57;
    __chkstk_darwin(v20);
    v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = a1;

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = a1;
    Binding.init(get:set:)();
    *v68 = v72;
    *&v68[8] = v73;
    v67 = xmmword_100062500;
    sub_10003D250();
    Slider<>.init<A>(value:in:onEditingChanged:)();
    v29 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v31 = &v24[*(sub_100003B30(&qword_100083E18, &qword_1000626D0) + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    LOBYTE(v29) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v32 = &v24[*(v21 + 36)];
    *v32 = v29;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    v37 = v66;
    sub_10003D2FC(v24, v66);
    v38 = (*(v22 + 56))(v37, 0, 1, v21);
  }

  else
  {
    v38 = (*(*(v20 - 8) + 56))(v66, 1, 1, v20);
  }

  v58 = &v57;
  __chkstk_darwin(v38);
  v40 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100008AF8(v5, v40, &qword_100083DE0, &qword_100062648);
  v59 = &v57;
  __chkstk_darwin(v41);
  v42 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v66;
  sub_100008AF8(v66, v42, &qword_100083DF0, &qword_100062658);
  v44 = v60;
  sub_100008AF8(v40, v60, &qword_100083DE0, &qword_100062648);
  v45 = sub_100003B30(&qword_100083E00, &qword_100062690);
  v46 = (v44 + *(v45 + 48));
  v47 = v64;
  *v68 = v64;
  v57 = xmmword_100062510;
  *&v68[8] = xmmword_100062510;
  v48 = v44;
  *&v68[24] = 0x4016000000000000;
  v49 = v62;
  *&v69 = v62;
  *(&v69 + 1) = 19;
  v50 = v5;
  v51 = v61;
  LOBYTE(v70) = v61;
  *(&v70 + 1) = v84[0];
  DWORD1(v70) = *(v84 + 3);
  *(&v70 + 1) = v8;
  *v71 = v10;
  *&v71[8] = v12;
  *&v71[16] = v14;
  v71[24] = 0;
  v52 = *&v68[16];
  *v46 = *v68;
  v46[1] = v52;
  v53 = v69;
  v54 = v70;
  v55 = *v71;
  *(v46 + 73) = *&v71[9];
  v46[3] = v54;
  v46[4] = v55;
  v46[2] = v53;
  sub_100008AF8(v42, v48 + *(v45 + 64), &qword_100083DF0, &qword_100062658);
  sub_100008AF8(v68, &v72, &qword_100083E08, &qword_100062698);
  sub_100008B68(v43, &qword_100083DF0, &qword_100062658);
  sub_100008B68(v50, &qword_100083DE0, &qword_100062648);
  sub_100008B68(v42, &qword_100083DF0, &qword_100062658);
  v72 = v47;
  v73 = v57;
  v74 = 0x4016000000000000;
  v75 = v49;
  v76 = 19;
  v77 = v51;
  *v78 = v84[0];
  *&v78[3] = *(v84 + 3);
  v79 = v8;
  v80 = v10;
  v81 = v12;
  v82 = v14;
  v83 = 0;
  sub_100008B68(&v72, &qword_100083E08, &qword_100062698);
  sub_100008B68(v40, &qword_100083DE0, &qword_100062648);
}

uint64_t sub_10003CA00@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  type metadata accessor for MainActor();
  v31 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = sub_100003B30(&qword_100083E20, &qword_100062700);
  v29 = &v25;
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Image.init(systemName:)();
  v6 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v37 = v5;
  v38 = KeyPath;
  v39 = v6;
  static Font.Weight.medium.getter();
  sub_100003B30(&qword_100083E28, &unk_100062738);
  sub_10003D37C();
  View.fontWeight(_:)();

  v8 = static Edge.Set.all.getter();
  v9 = &v4[*(sub_100003B30(&qword_100083E38, &qword_100062748) + 36)];
  *v9 = v8;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  v10 = &v4[*(v2 + 44)];
  static Material.selected.getter();
  *&v10[*(sub_100003B30(&qword_100083E40, &qword_100062750) + 56)] = 256;
  v27 = static HorizontalAlignment.leading.getter();
  sub_10003CDD0(&v37);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = static Color.primary.getter();
  v26 = swift_getKeyPath();
  v28 = &v25;
  LOBYTE(v37) = 1;
  LOBYTE(v32) = v13;
  __chkstk_darwin(v26);
  sub_100008AF8(v4, v4, &qword_100083E20, &qword_100062700);
  v16 = v30;
  sub_100008AF8(v4, v30, &qword_100083E20, &qword_100062700);
  v17 = sub_100003B30(&qword_100083E48, &qword_100062788);
  v18 = v16 + *(v17 + 48);
  v19 = v27;
  v32 = v27;
  LOBYTE(v33) = 1;
  *(&v33 + 1) = v11;
  *&v34 = v12;
  BYTE8(v34) = v13;
  v20 = v26;
  *&v35 = v14;
  *(&v35 + 1) = v26;
  v36 = v15;
  *(v18 + 64) = v15;
  v21 = v33;
  *v18 = v32;
  *(v18 + 16) = v21;
  v22 = v35;
  *(v18 + 32) = v34;
  *(v18 + 48) = v22;
  v23 = v16 + *(v17 + 64);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_100008AF8(&v32, &v37, &qword_100083E50, &qword_100062790);
  sub_100008B68(v4, &qword_100083E20, &qword_100062700);
  v37 = v19;
  v38 = 0;
  LOBYTE(v39) = 1;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v20;
  v45 = v15;
  sub_100008B68(&v37, &qword_100083E50, &qword_100062790);
  sub_100008B68(v4, &qword_100083E20, &qword_100062700);
}

uint64_t sub_10003CDD0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_10005D95C(v3);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10003B5D4();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(v5) = v9;
  static Font.body.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10003B628(v6, v8, v5 & 1);

  static Font.Weight.medium.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  v20 = v19;
  sub_10003B628(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_10003CFC8@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 64);
  swift_getKeyPath();
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 88);

  *a2 = v5;
  return result;
}

uint64_t sub_10003D0CC(double *a1)
{
  v1 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002F164(v1);
}

uint64_t sub_10003D17C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100003B30(&qword_100083DD8, &qword_100062640);
  return sub_10003C288(v3, a1 + *(v4 + 44));
}

unint64_t sub_10003D1DC()
{
  result = qword_100083B20;
  if (!qword_100083B20)
  {
    type metadata accessor for RoutingControllerInputPickerViewModel.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B20);
  }

  return result;
}

unint64_t sub_10003D250()
{
  result = qword_100083E10;
  if (!qword_100083E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E10);
  }

  return result;
}

uint64_t sub_10003D2A4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003D2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083DF8, &qword_100062688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003D37C()
{
  result = qword_100083E30;
  if (!qword_100083E30)
  {
    sub_100008218(&qword_100083E28, &unk_100062738);
    sub_100009034(&qword_100083548, &qword_100083550, &qword_100061480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E30);
  }

  return result;
}

__n128 sub_10003D4A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003D4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003D508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003D578(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[6])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10003D5CC()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D668(uint64_t a1)
{
  Hasher._combine(_:)(*(v1 + 48));
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10003D6F4(uint64_t a1)
{
  v2 = *(v1 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003D78C(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v5 = v3;
  v6 = v4;
  String.append(_:)(*v1);
  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_10003D814()
{
  result = qword_100083E80;
  if (!qword_100083E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E80);
  }

  return result;
}

uint64_t sub_10003D868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 48))
  {
    v12 = *v0;
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v12 = *v0;
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v10 = v3;
  v11 = v4;
  v9 = *v0;
  sub_100025FCC(&v12, &v8);
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  String.append(_:)(v6);
  String.append(_:)(v9);

  return v10;
}

__n128 sub_10003D944(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003D958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10003D9A0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10003DA1C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a2 + *(sub_100003B30(&qword_100083E88, &qword_1000629C8) + 44));
  *v5 = static Alignment.center.getter();
  v5[1] = v6;
  v7 = sub_100003B30(&qword_100083E90, &unk_1000629D0);
  sub_10003DBD8(v2, v5 + *(v7 + 44));

  static Alignment.center.getter();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083D50, &unk_100062458);
  sub_100009034(&qword_100083D58, &qword_100083D50, &unk_100062458, &protocol conformance descriptor for ZStack<A>);
  v8 = AnyView.init<A>(_:)();
  result = sub_100003B30(&qword_100083E98, &qword_1000629E0);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_10003DBD8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  type metadata accessor for MainActor();
  v47 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_100003B30(&qword_100083EA0, &qword_1000629E8);
  v46 = v43;
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v43 - v4;
  v6 = sub_100003B30(&qword_100083EA8, &qword_1000629F0);
  v45 = v43;
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v43 - v8;
  v10 = sub_100003B30(&qword_100083EB0, &qword_1000629F8);
  v43[1] = v43;
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v43 - v12;
  v14 = sub_100003B30(&qword_100083EB8, &qword_100062A00);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_100003B30(&qword_100083EC0, &qword_100062A08);
  sub_10003DFB4(v44, &v16[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008A90(v16, v13, &qword_100083EB8, &qword_100062A00);
  v18 = &v13[*(v11 + 44)];
  v19 = v54;
  *(v18 + 4) = v53;
  *(v18 + 5) = v19;
  *(v18 + 6) = v55;
  v20 = v50;
  *v18 = v49;
  *(v18 + 1) = v20;
  v21 = v52;
  *(v18 + 2) = v51;
  *(v18 + 3) = v21;
  v22 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100008A90(v13, v9, &qword_100083EB0, &qword_1000629F8);
  v31 = &v9[*(v7 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100008A90(v9, v5, &qword_100083EA8, &qword_1000629F0);
  v41 = &v5[*(v3 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_100008A90(v5, v48, &qword_100083EA0, &qword_1000629E8);
}

uint64_t sub_10003DFB4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v76 = v63;
  v71 = sub_100003B30(&qword_100083EC8, &qword_100062A10);
  v3 = __chkstk_darwin(v71);
  v78 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v63;
  v72 = v4;
  __chkstk_darwin(v3);
  v70 = v63 - v5;
  v6 = sub_100003B30(&qword_100083ED0, &qword_100062A18);
  v73 = v63;
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = v63 - v7;
  v67 = a1;

  v65 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = v92;
  v9 = v93;
  v10 = v94;
  v11 = v95;
  v13 = v96;
  v12 = v97;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v91 = v9;
  v90 = v11;
  v14 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v16 = static Font.title3.getter();
  v17 = swift_getKeyPath();
  *&v82 = v65;
  *(&v82 + 1) = v8;
  LOBYTE(v83[0]) = v9;
  *(&v83[0] + 1) = v10;
  LOBYTE(v83[1]) = v11;
  *(&v83[1] + 1) = v13;
  *&v83[2] = v12;
  *(&v84 + 1) = KeyPath;
  *&v85 = v14;
  *(&v85 + 1) = v17;
  v86 = v16;
  static Font.Weight.medium.getter();
  sub_100003B30(&qword_100083ED8, &qword_100062A80);
  sub_10003F028(&qword_100083EE0, &qword_100083ED8, &qword_100062A80, sub_10003EE20);
  v18 = v66;
  View.fontWeight(_:)();
  v87[10] = v84;
  v87[11] = v85;
  v88 = v86;
  v87[6] = v83[5];
  v87[7] = v83[6];
  v87[8] = v83[7];
  v87[9] = v83[8];
  v87[2] = v83[1];
  v87[3] = v83[2];
  v87[4] = v83[3];
  v87[5] = v83[4];
  v87[0] = v82;
  v87[1] = v83[0];
  sub_100008B68(v87, &qword_100083ED8, &qword_100062A80);
  LOBYTE(v12) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v70;
  (*(v68 + 32))(v70, v18, v69);
  v28 = v27 + *(v71 + 9);
  *v28 = v12;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  sub_100008A90(v27, v78, &qword_100083EC8, &qword_100062A10);
  v70 = static HorizontalAlignment.leading.getter();
  LOBYTE(v82) = 1;
  v29 = v67;
  sub_10003E900(v67, v89);
  *&v81[7] = v89[0];
  *&v81[23] = v89[1];
  *&v81[39] = v89[2];
  *&v81[55] = v89[3];
  LODWORD(v68) = v82;
  LODWORD(v69) = static HierarchicalShapeStyle.primary.getter();
  v30 = sub_100003B30(&qword_100083F18, &qword_100062AB0);
  v71 = v63;
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = (v63 - v32);
  if (v29[3])
  {
    v65 = sub_100003B30(&qword_100083F20, &qword_100062AB8);
    v66 = v63;
    v34 = *(v65 - 8);
    __chkstk_darwin(v65);
    v64 = v63 - v35;

    v36 = Image.init(systemName:)();
    v63[2] = v36;
    v37 = static Color.primary.getter();
    v63[1] = v37;
    v38 = swift_getKeyPath();
    v39 = static Font.body.getter();
    v67 = v33;
    v40 = v39;
    v41 = swift_getKeyPath();
    *&v82 = v36;
    *(&v82 + 1) = v38;
    *&v83[0] = v37;
    *(&v83[0] + 1) = v41;
    *&v83[1] = v40;
    static Font.Weight.medium.getter();
    sub_100003B30(&qword_100083F38, &qword_100062AD0);
    sub_10003F028(&qword_100083F40, &qword_100083F38, &qword_100062AD0, sub_10003F0C0);
    v42 = v64;
    View.fontWeight(_:)();
    v33 = v67;

    v43 = v65;
    (*(v34 + 32))(v33, v42, v65);
    v44 = (*(v34 + 56))(v33, 0, 1, v43);
  }

  else
  {
    v45 = sub_100003B30(&qword_100083F20, &qword_100062AB8);
    v44 = (*(*(v45 - 8) + 56))(v33, 1, 1, v45);
  }

  v67 = v63;
  __chkstk_darwin(v44);
  v47 = v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100008AF8(v78, v47, &qword_100083EC8, &qword_100062A10);
  v72 = v63;
  __chkstk_darwin(v48);
  v49 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008AF8(v33, v49, &qword_100083F18, &qword_100062AB0);
  v50 = v74;
  sub_100008AF8(v47, v74, &qword_100083EC8, &qword_100062A10);
  v51 = sub_100003B30(&qword_100083F28, &qword_100062AC0);
  v52 = (v50 + v51[12]);
  v53 = v33;
  v54 = v70;
  v79[0] = v70;
  v79[1] = 0;
  v55 = v68;
  LOBYTE(v80[0]) = v68;
  *(v80 + 1) = *v81;
  *(&v80[1] + 1) = *&v81[16];
  *(&v80[2] + 1) = *&v81[32];
  *(&v80[3] + 1) = *&v81[48];
  *&v80[4] = *&v81[63];
  v56 = v69;
  DWORD2(v80[4]) = v69;
  v57 = v80[0];
  *v52 = v70;
  v52[1] = v57;
  v58 = v80[1];
  v59 = v80[2];
  v60 = v80[3];
  *(v52 + 76) = *(&v80[3] + 12);
  v52[3] = v59;
  v52[4] = v60;
  v52[2] = v58;
  v61 = v50 + v51[16];
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_100008AF8(v49, v50 + v51[20], &qword_100083F18, &qword_100062AB0);
  sub_10003EFB8(v79, &v82);
  sub_100008B68(v53, &qword_100083F18, &qword_100062AB0);
  sub_100008B68(v78, &qword_100083EC8, &qword_100062A10);
  sub_100008B68(v49, &qword_100083F18, &qword_100062AB0);
  v82 = v54;
  LOBYTE(v83[0]) = v55;
  *(&v83[1] + 1) = *&v81[16];
  *(&v83[2] + 1) = *&v81[32];
  *(&v83[3] + 1) = *&v81[48];
  *&v83[4] = *&v81[63];
  *(v83 + 1) = *v81;
  DWORD2(v83[4]) = v56;
  sub_100008B68(&v82, &qword_100083F30, &qword_100062AC8);
  sub_100008B68(v47, &qword_100083EC8, &qword_100062A10);
}

uint64_t sub_10003E900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10003B5D4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.body.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10003B628(v3, v5, v7 & 1);

  static Font.Weight.regular.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10003B628(v8, v10, v12 & 1);

  if (a1[7])
  {

    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Font.caption2.getter();
    v25 = Text.font(_:)();
    v46 = v17;
    v27 = v26;
    v48 = v19;
    v29 = v28;

    sub_10003B628(v20, v22, v24 & 1);

    static Font.Weight.regular.getter();
    v30 = Text.fontWeight(_:)();
    v32 = v31;
    v47 = v15;
    v34 = v33;
    v35 = v27;
    v17 = v46;
    sub_10003B628(v25, v35, v29 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v34 & 1;
    v15 = v47;
    sub_10003B628(v30, v32, v43);

    v44 = v40 & 1;
    v19 = v48;
    sub_10003BE38(v36, v38, v44);
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v44 = 0;
    v42 = 0;
  }

  sub_10003BE38(v13, v15, v17 & 1);

  sub_10003BDF4(v36, v38, v44, v42);
  sub_10003BE48(v36, v38, v44, v42);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = v44;
  *(a2 + 56) = v42;
  sub_10003BE48(v36, v38, v44, v42);
  sub_10003B628(v13, v15, v17 & 1);
}

uint64_t sub_10003ECC0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003ED18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003ED44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003EDC8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10003EE20()
{
  result = qword_100083EE8;
  if (!qword_100083EE8)
  {
    sub_100008218(&qword_100083EF0, &qword_100062A88);
    sub_10003EEC0();
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083EE8);
  }

  return result;
}

unint64_t sub_10003EEC0()
{
  result = qword_100083EF8;
  if (!qword_100083EF8)
  {
    sub_100008218(&qword_100083F00, &qword_100062A90);
    sub_10003EF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083EF8);
  }

  return result;
}

unint64_t sub_10003EF40()
{
  result = qword_100083F08;
  if (!qword_100083F08)
  {
    sub_100008218(&qword_100083F10, &qword_100062A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F08);
  }

  return result;
}

uint64_t sub_10003EFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083F30, &qword_100062AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    sub_100009034(&qword_100083548, &qword_100083550, &qword_100061480, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F0C0()
{
  result = qword_100083F48;
  if (!qword_100083F48)
  {
    sub_100008218(&qword_100083F50, &qword_100062AD8);
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F48);
  }

  return result;
}

unint64_t sub_10003F164()
{
  result = qword_100083F58;
  if (!qword_100083F58)
  {
    sub_100008218(&qword_100083E98, &qword_1000629E0);
    sub_100009034(&qword_100083F60, &qword_100083F68, &unk_100062AE0, &protocol conformance descriptor for ZStack<A>);
    sub_100009034(&qword_100083CF0, &qword_100083CF8, &qword_1000623E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F58);
  }

  return result;
}

uint64_t sub_10003F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008AF8(a3, v25 - v10, &qword_1000838E0, &qword_100061C70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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
      sub_100008398(0, &qword_100083600, AVInputContext_ptr);

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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_100008398(0, &qword_100083600, AVInputContext_ptr);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10003F514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008AF8(a3, v25 - v10, &qword_1000838E0, &qword_100061C70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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
      sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);

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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10003F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008AF8(a3, v25 - v10, &qword_1000838E0, &qword_100061C70);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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

uint64_t sub_10003FAC4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v102) = a3;
  v124 = sub_100003B30(&qword_100084118, &qword_100062D30);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = (&v87 - v6);
  v125 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v120 = &v87 - v7;
  v118 = sub_100003B30(&qword_100084120, &qword_100062D38);
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = (&v87 - v8);
  v119 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v114 = &v87 - v9;
  v111 = sub_100003B30(&qword_100084128, &qword_100062D40);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = (&v87 - v10);
  v113 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v109 = &v87 - v11;
  v106 = sub_100003B30(&qword_100084130, &qword_100062D48);
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = (&v87 - v12);
  v107 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v100 = &v87 - v13;
  v14 = sub_100003B30(&qword_100084138, &qword_100062D50);
  v15 = __chkstk_darwin(v14 - 8);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v128 = &v87 - v17;
  v18 = sub_100003B30(&qword_100084140, &qword_100062D58);
  v19 = __chkstk_darwin(v18 - 8);
  v97 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v87 - v21;
  v126 = &v87 - v21;
  v23 = sub_100003B30(&qword_100084148, &qword_100062D60);
  v24 = __chkstk_darwin(v23 - 8);
  v98 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v127 = &v87 - v26;
  v27 = sub_100003B30(&qword_100084150, &qword_100062D68);
  v28 = __chkstk_darwin(v27 - 8);
  v105 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v87 - v30;
  v32 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v32 - 8);
  v34 = &v87 - v33;
  *(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering) = 0;
  sub_100003B30(&qword_100084158, &qword_100062D70);
  v35 = swift_allocObject();

  static TaskPriority.userInitiated.getter();
  v36 = type metadata accessor for TaskPriority();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v89 = v36;
  v88 = v38;
  v87 = v37 + 56;
  (v38)(v34, 0, 1);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = sub_100047860;
  v39[5] = 0;
  v40 = sub_10003F224(0, 0, v34, &unk_100062D80, v39);
  v90 = v34;
  sub_100008B68(v34, &qword_1000838E0, &qword_100061C70);
  *(v35 + 16) = v40;
  v133[3] = &type metadata for MXAVInputContextFactory;
  v133[4] = &off_100079F00;
  v133[0] = v35;
  type metadata accessor for AVRoutingInputController();
  v41 = swift_allocObject();
  v42 = sub_100026B24(v133, &type metadata for MXAVInputContextFactory);
  __chkstk_darwin(v42);
  v44 = (&v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v91 = a2;
  v47 = sub_100047DA8(v102, a1, a2, v46, v41);
  sub_100004B28(v133);
  *(v3 + 16) = v47;
  v48 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v99 = v31;
  v50(v31, 1, 1, v48);
  v51 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v127;
  v102 = v51;
  v53(v127, 1, 1);
  v55 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v94 = *(v55 - 8);
  v56 = *(v94 + 56);
  v95 = v55;
  v56(v22, 1, 1);
  v57 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v96 = *(v57 - 8);
  v58 = *(v96 + 56);
  v59 = v128;
  v92 = v57;
  v58(v128, 1, 1);
  v60 = v101;
  *v101 = 1;
  v61 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v103 + 104))(v60, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v106);
  v132 = v31;
  v62 = v100;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v104 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream, v62, v107);
  v63 = v108;
  *v108 = 1;
  (*(v110 + 104))(v63, v61, v111);
  v131 = v54;
  sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  v64 = v109;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v112 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream, v64, v113);
  v65 = v115;
  *v115 = 1;
  (*(v116 + 104))(v65, v61, v118);
  v130 = v126;
  v66 = v114;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v117 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream, v66, v119);
  v67 = v121;
  *v121 = 1;
  (*(v122 + 104))(v67, v61, v124);
  v129 = v59;
  v68 = v120;
  v69 = v3;
  v70 = v105;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v71 = v68;
  v72 = v99;
  (*(v123 + 32))(v69 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream, v71, v125);
  sub_100008AF8(v72, v70, &qword_100084150, &qword_100062D68);
  result = (*(v49 + 48))(v70, 1, v48);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v49 + 32))(v69 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v70, v48);
  v74 = v127;
  v75 = v98;
  sub_100008AF8(v127, v98, &qword_100084148, &qword_100062D60);
  v76 = v102;
  result = (*(v52 + 48))(v75, 1, v102);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v52 + 32))(v69 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v75, v76);
  v77 = v126;
  v78 = v97;
  sub_100008AF8(v126, v97, &qword_100084140, &qword_100062D58);
  v79 = v94;
  v80 = v95;
  result = (*(v94 + 48))(v78, 1, v95);
  v81 = v96;
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v79 + 32))(v69 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation, v78, v80);
  v82 = v93;
  sub_100008AF8(v128, v93, &qword_100084138, &qword_100062D50);
  v83 = v92;
  result = (*(v81 + 48))(v82, 1, v92);
  if (result != 1)
  {

    (*(v81 + 32))(v69 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation, v82, v83);
    *(*(v69 + 16) + 40) = &off_10007ADE8;
    swift_unknownObjectWeakAssign();
    v84 = v90;
    v88(v90, 1, 1, v89);
    v85 = swift_allocObject();
    swift_weakInit();
    v86 = swift_allocObject();
    v86[2] = 0;
    v86[3] = 0;
    v86[4] = v85;
    sub_100053D74(0, 0, v84, &unk_100062D88, v86);

    sub_100008B68(v128, &qword_100084138, &qword_100062D50);
    sub_100008B68(v77, &qword_100084140, &qword_100062D58);
    sub_100008B68(v74, &qword_100084148, &qword_100062D60);
    sub_100008B68(v72, &qword_100084150, &qword_100062D68);
    return v69;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100040B9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084150, &qword_100062D68);
  v4 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040CD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084148, &qword_100062D60);
  v4 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040E0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084140, &qword_100062D58);
  v4 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040F44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084138, &qword_100062D50);
  v4 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_10004107C()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100041170, v4, v3);
}

uint64_t sub_100041198()
{
  v1 = swift_allocObject();
  v0[10] = v1;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1000412C0;
  v3 = v0[5];

  return sub_100045698(0x7475706E49746567, 0xEE0029286E696147, v3, &unk_100062C10, v1);
}

uint64_t sub_1000412C0(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);

  return _swift_task_switch(sub_100041460, v7, v6);
}

uint64_t sub_100041460()
{

  v1 = *(v0 + 8);
  v2.n128_u32[0] = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1000414CC(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100041568, v4, v3);
}

uint64_t sub_100041590()
{
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1000416D0;

  return sub_100055C14(0xD000000000000010, 0x8000000100068EC0, 10000000000000000, 0, &unk_100062DF8, v3);
}

uint64_t sub_1000416D0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100041830, v3, v2);
}

uint64_t sub_100041830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041890()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100041984, v4, v3);
}

uint64_t sub_1000419AC()
{
  v1 = swift_allocObject();
  v0[10] = v1;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_100041ACC;
  v3 = v0[5];

  return sub_100045E90(0xD000000000000014, 0x8000000100068A90, v3, &unk_100062C80, v1);
}

uint64_t sub_100041ACC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);

  return _swift_task_switch(sub_100041C74, v7, v6);
}

uint64_t sub_100041C74()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_100041CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100041D78, v6, v5);
}

uint64_t sub_100041D78()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100041E0C;

  return sub_100009AE8();
}

uint64_t sub_100041E0C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100049BF0, v3, v2);
}

uint64_t sub_100041F2C()
{
  v1 = v0;
  v2 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v2 - 8);
  v43 = &v36 - v3;
  v4 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000080BC(v12, qword_100086758);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[deinit] MicrophoneManager start deinit", v15, 2u);
  }

  v41 = v8;
  v42 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation;
  (*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v8);
  AsyncStream.Continuation.finish()();
  v40 = *(v9 + 8);
  v40(v11, v8);
  v39 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation;
  (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v4);
  AsyncStream.Continuation.finish()();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v16 = *(v1 + 16);
  *(v16 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(*(v17 - 8) + 56);
  v37 = v4;
  v19 = v43;
  v18(v43, 1, 1, v17);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;

  sub_100053D74(0, 0, v19, &unk_100062BA0, v21);

  v18(v19, 1, 1, v17);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v16;

  sub_10003F804(0, 0, v19, &unk_100062BB0, v22);

  sub_100008B68(v19, &qword_1000838E0, &qword_100061C70);

  v40((v1 + v42), v41);
  v38((v1 + v39), v37);
  v23 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation;
  v24 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v25 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation;
  v26 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  (*(*(v26 - 8) + 8))(v1 + v25, v26);
  v27 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream;
  v28 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  v29 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream;
  v30 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  (*(*(v30 - 8) + 8))(v1 + v29, v30);
  v31 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream;
  v32 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  (*(*(v32 - 8) + 8))(v1 + v31, v32);
  v33 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream;
  v34 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  (*(*(v34 - 8) + 8))(v1 + v33, v34);
  return v1;
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for TaskPriority();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100042654, 0, 0);
}

uint64_t sub_100042654()
{
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000080BC(v1, qword_100086758);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[deinit] MicrophoneManager doing the cancelling of observations", v4, 2u);
  }

  v5 = v0[2];

  v0[6] = *(v5 + 16);
  v0[7] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100042830;

  return (sub_100043604)();
}

uint64_t sub_100042830()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000429A4, 0, 0);
}

uint64_t sub_1000429A4()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100042A34;

  return sub_100056ABC();
}

uint64_t sub_100042A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042B44()
{
  sub_100041F2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MicrophoneManager(uint64_t a1)
{
  result = qword_100083FC0;
  if (!qword_100083FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042BF0(uint64_t a1)
{
  sub_100042FB4(319, &qword_100083FD0, &type metadata for InputPickerMicrophone, &type metadata accessor for AsyncStream.Continuation);
  if (v1 <= 0x3F)
  {
    sub_100042F48(319, &qword_100083FD8, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_100042FB4(319, &qword_100083FE8, &type metadata for Float, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        sub_100042FB4(319, &qword_100083FF0, &type metadata for Bool, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          sub_100042FB4(319, &qword_100083FF8, &type metadata for InputPickerMicrophone, &type metadata accessor for AsyncStream);
          if (v5 <= 0x3F)
          {
            sub_100042F48(319, &qword_100084000, &type metadata accessor for AsyncStream);
            if (v6 <= 0x3F)
            {
              sub_100042FB4(319, &qword_100084008, &type metadata for Float, &type metadata accessor for AsyncStream);
              if (v7 <= 0x3F)
              {
                sub_100042FB4(319, &unk_100084010, &type metadata for Bool, &type metadata accessor for AsyncStream);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100042F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100008218(&qword_100083FE0, &qword_1000637B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100042FB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100043004(uint64_t a1, char a2)
{
  v4 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-v6];
  v8 = sub_100003B30(&qword_1000840E0, &unk_100062B80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13[-v10];
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation, v4);
  v13[15] = a2;
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000431B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000431EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009340(a1, v4, v5, v6);
}

uint64_t sub_1000432A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014310;

  return sub_100042594(a1, v4, v5, v6);
}

uint64_t sub_100043354(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_100043410;

  return Task.result.getter(v2 + 16, a2, &type metadata for InputPickerMicrophone, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100043410()
{

  return _swift_task_switch(sub_10004350C, 0, 0);
}

uint64_t sub_10004350C()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v2[3] = &type metadata for InputPickerMicrophone;
    v9 = swift_allocObject();
    *v2 = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v3;
    v9[7] = v4;

    sub_100049338(v8, v7, v6, v5, v3, v4, 0);
  }

  *(*(v0 + 72) + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100043604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000436AC, v6, 0);
}

uint64_t sub_1000436AC()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        *v8 = v0;
        v8[1] = sub_100043C5C;
        v9 = v0[22];
        v10 = &type metadata for () + 8;
        v11 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_100054078(0, 0, v12, &unk_100061870, v20);
  v0[30] = v21;
  *(&v28 + 1) = sub_100003B30(&qword_100083908, &unk_100061880);
  v29 = &off_10007BC78;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_100054078(0, 0, v12, &unk_100062BF0, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  *v24 = v0;
  v24[1] = sub_100043AE0;
  v9 = v0[22];
  v10 = &type metadata for () + 8;
  v11 = v21;
LABEL_8:

  return Task<>.value.getter(v9, v11, v10);
}

uint64_t sub_100043AE0()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100043BF0, v1, 0);
}

uint64_t sub_100043BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043C5C()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100043D88, v1, 0);
}

uint64_t sub_100043D88()
{

  sub_100004B28((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_100043EA0, v6, 0);
}

uint64_t sub_100043EA0()
{
  v30 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_100026C30((v0 + 8), (v0 + 13));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840F8, &qword_100062CA0);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        v9 = sub_100003B30(&qword_100083928, &qword_100061950);
        *v8 = v0;
        v8[1] = sub_10004448C;
        v10 = v0 + 2;
        v11 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 8);
    }

    else
    {
    }
  }

  v12 = v0[35];
  v13 = v0[33];
  v26 = v0[32];
  v14 = v0[30];
  v15 = v0[31];
  v16 = v0[29];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_100054368(0, 0, v12, &unk_100062C98, v20);
  v0[36] = v21;
  *(&v28 + 1) = sub_100003B30(&qword_1000840F8, &qword_100062CA0);
  v29 = &off_10007BC78;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_100054078(0, 0, v12, &unk_100062CB0, v23);

  v24 = swift_task_alloc();
  v0[37] = v24;
  v9 = sub_100003B30(&qword_100083928, &qword_100061950);
  *v24 = v0;
  v24[1] = sub_1000442EC;
  v10 = v0 + 2;
  v11 = v21;
LABEL_8:

  return Task<>.value.getter(v10, v11, v9);
}

uint64_t sub_1000442EC()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_1000443FC, v1, 0);
}

uint64_t sub_1000443FC()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004448C()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_1000445B8, v1, 0);
}

uint64_t sub_1000445B8()
{

  sub_100004B28((v0 + 64));
  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004464C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000446F4, v6, 0);
}

uint64_t sub_1000446F4()
{
  v29 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_100026C30((v0 + 8), (v0 + 13));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100084108, &qword_100062CE0);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        *v8 = v0;
        v8[1] = sub_100044CC0;
        v9 = v0 + 2;
        v10 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 8);
    }

    else
    {
    }
  }

  v11 = v0[35];
  v12 = v0[33];
  v25 = v0[32];
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[29];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v14, v16);
  v18 = *(v17 + 56);
  v18(v11, 0, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v12;

  v20 = sub_10005466C(0, 0, v11, &unk_100062CD8, v19);
  v0[36] = v20;
  *(&v27 + 1) = sub_100003B30(&qword_100084108, &qword_100062CE0);
  v28 = &off_10007BC78;
  *&v26 = v20;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v18(v11, 1, 1, v16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v22[6] = v15;
  v22[7] = v13;

  sub_100054078(0, 0, v11, &unk_100062CF0, v22);

  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_100044B20;
  v9 = v0 + 2;
  v10 = v20;
LABEL_8:

  return Task<>.value.getter(v9, v10, &type metadata for InputPickerMicrophone);
}

uint64_t sub_100044B20()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_100044C30, v1, 0);
}

uint64_t sub_100044C30()
{

  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100044CC0()
{
  v1 = *(*v0 + 272);

  return _swift_task_switch(sub_100044DEC, v1, 0);
}

uint64_t sub_100044DEC()
{

  sub_100004B28((v0 + 64));
  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100044E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_100044F24, v5, 0);
}

uint64_t sub_100044F24()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100084110, &qword_100062D18);
      if (swift_dynamicCast())
      {
        v7 = v0[22];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        v9 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
        *v8 = v0;
        v8[1] = sub_1000454F4;
        v10 = v0 + 21;
        v11 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_100054954(0, 0, v12, &unk_100062D10, v20);
  v0[30] = v21;
  *(&v28 + 1) = sub_100003B30(&qword_100084110, &qword_100062D18);
  v29 = &off_10007BC78;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;

  sub_100054078(0, 0, v12, &unk_100062D28, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  v9 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  *v24 = v0;
  v24[1] = sub_100045370;
  v10 = v0 + 21;
  v11 = v21;
LABEL_8:

  return Task<>.value.getter(v10, v11, v9);
}

uint64_t sub_100045370()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100045480, v1, 0);
}

uint64_t sub_100045480()
{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000454F4()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100045620, v1, 0);
}

uint64_t sub_100045620()
{

  sub_100004B28(v0 + 2);
  v1 = v0[21];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100045698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10004573C, v5, 0);
}

uint64_t sub_10004573C()
{
  v29 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840E8, &qword_100062C30);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[31] = v7;

        v8 = swift_task_alloc();
        v0[32] = v8;
        *v8 = v0;
        v8[1] = sub_100045CEC;
        v9 = v0 + 33;
        v10 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[28];
  v12 = v0[26];
  v25 = v0[25];
  v13 = v0[23];
  v14 = v0[24];
  v15 = v0[22];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v14, v16);
  v18 = *(v17 + 56);
  v18(v11, 0, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v12;

  v20 = sub_100054C58(0, 0, v11, &unk_100062C28, v19);
  v0[29] = v20;
  *(&v27 + 1) = sub_100003B30(&qword_1000840E8, &qword_100062C30);
  v28 = &off_10007BC78;
  *&v26 = v20;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v18(v11, 1, 1, v16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v22[6] = v15;
  v22[7] = v13;

  sub_100054078(0, 0, v11, &unk_100062C40, v22);

  v23 = swift_task_alloc();
  v0[30] = v23;
  *v23 = v0;
  v23[1] = sub_100045B68;
  v9 = v0 + 33;
  v10 = v20;
LABEL_8:

  return Task<>.value.getter(v9, v10, &type metadata for Float);
}

uint64_t sub_100045B68()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100045C78, v1, 0);
}

uint64_t sub_100045C78()
{

  v1 = *(v0 + 264);

  v2 = *(v0 + 8);
  v3.n128_u32[0] = v1;

  return v2(v3);
}

uint64_t sub_100045CEC()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100045E18, v1, 0);
}

uint64_t sub_100045E18()
{

  sub_100004B28((v0 + 16));
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);
  v3.n128_u32[0] = v1;

  return v2(v3);
}

uint64_t sub_100045E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_100045F34, v5, 0);
}

uint64_t sub_100045F34()
{
  v29 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840F0, &qword_100062C60);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[31] = v7;

        v8 = swift_task_alloc();
        v0[32] = v8;
        *v8 = v0;
        v8[1] = sub_1000464E4;
        v9 = v0 + 33;
        v10 = v7;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[28];
  v12 = v0[26];
  v25 = v0[25];
  v13 = v0[23];
  v14 = v0[24];
  v15 = v0[22];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v14, v16);
  v18 = *(v17 + 56);
  v18(v11, 0, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v12;

  v20 = sub_100054F40(0, 0, v11, &unk_100062C58, v19);
  v0[29] = v20;
  *(&v27 + 1) = sub_100003B30(&qword_1000840F0, &qword_100062C60);
  v28 = &off_10007BC78;
  *&v26 = v20;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v26, v15, v13);
  swift_endAccess();
  v18(v11, 1, 1, v16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v22[6] = v15;
  v22[7] = v13;

  sub_100054078(0, 0, v11, &unk_100062C70, v22);

  v23 = swift_task_alloc();
  v0[30] = v23;
  *v23 = v0;
  v23[1] = sub_100046360;
  v9 = v0 + 33;
  v10 = v20;
LABEL_8:

  return Task<>.value.getter(v9, v10, &type metadata for Bool);
}

uint64_t sub_100046360()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100046470, v1, 0);
}

uint64_t sub_100046470()
{

  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000464E4()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100046610, v1, 0);
}

uint64_t sub_100046610()
{

  sub_100004B28((v0 + 16));
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100046688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100014310;

  return v8(a1);
}

uint64_t sub_100046780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_100046844;

  return Task.result.getter(v7 + 18, a4, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100046844()
{

  return _swift_task_switch(sub_100046940, 0, 0);
}

uint64_t sub_100046940()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100049BEC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000469F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[25] = a5;
  v9 = swift_task_alloc();
  v7[28] = v9;
  v10 = sub_100003B30(&qword_100083928, &qword_100061950);
  v7[29] = v10;
  *v9 = v7;
  v9[1] = sub_100046ACC;

  return Task.result.getter(v7 + 2, a4, v10, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100046ACC()
{

  return _swift_task_switch(sub_100046BC8, 0, 0);
}

uint64_t sub_100046BC8()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 136) = *(v0 + 232);
    v4 = swift_allocObject();
    *(v0 + 112) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v5;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  *(v0 + 144) = v1;
  sub_100008B68(v0 + 112, &qword_100084100, &qword_100062CC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100046CE0, Strong, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100046CE0()
{
  v2 = v0[26];
  v1 = v0[27];
  swift_beginAccess();
  sub_100057B90(v2, v1, (v0 + 9));
  sub_100008B68((v0 + 9), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100046D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v9 = swift_task_alloc();
  v7[21] = v9;
  *v9 = v7;
  v9[1] = sub_100046E3C;

  return sub_100043354((v7 + 7), a4);
}

uint64_t sub_100046E3C()
{
  v1 = *v0;

  sub_100008B68(v1 + 56, &qword_100084100, &qword_100062CC0);

  return _swift_task_switch(sub_100046F50, 0, 0);
}

uint64_t sub_100046F50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100047008, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100047008()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  sub_100057B90(v2, v1, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000470C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a5;
  v9 = swift_task_alloc();
  v7[23] = v9;
  v10 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  v7[24] = v10;
  *v9 = v7;
  v9[1] = sub_100047194;

  return Task.result.getter(v7 + 18, a4, v10, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100047194()
{

  return _swift_task_switch(sub_100047290, 0, 0);
}

uint64_t sub_100047290()
{
  v1 = *(v0 + 152);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 56) = v2;
  }

  *(v0 + 88) = v1;
  sub_100008B68(v0 + 56, &qword_100084100, &qword_100062CC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10004737C, Strong, 0);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10004737C()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  sub_100057B90(v2, v1, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100047434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_100046844;

  return Task.result.getter(v7 + 18, a4, &type metadata for Float, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000474F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = swift_task_alloc();
  v7[16] = v9;
  *v9 = v7;
  v9[1] = sub_1000475B4;

  return Task.result.getter(v7 + 18, a4, &type metadata for Bool, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000475B4()
{

  return _swift_task_switch(sub_1000476B0, 0, 0);
}

uint64_t sub_1000476B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100047768, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100047768()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_100057B90(v2, v1, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

id sub_100047820@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(AVInputDeviceDiscoverySession) initWithDeviceFeatures:1];
  *a1 = result;
  return result;
}

id sub_100047860@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(AVInputContext) init];
  *a1 = result;
  return result;
}

uint64_t sub_10004789C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10000FCFC(a1, v1);
}

uint64_t sub_100047938(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100019C04(a1, v1);
}

uint64_t sub_1000479D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return _swift_task_switch(sub_1000479F8, 0, 0);
}

uint64_t sub_1000479F8()
{
  v1 = *(v0 + 24);
  (*(v0 + 32))();
  *v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100047A6C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100047B60;

  return v5(v2 + 16);
}

uint64_t sub_100047B60()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100047C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return _swift_task_switch(sub_100049BE4, 0, 0);
}

uint64_t sub_100047CB4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100049BE8;

  return v5(v2 + 16);
}

uint64_t sub_100047DA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  HIDWORD(v24) = a1;
  v7 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v27[3] = &type metadata for MXAVInputContextFactory;
  v27[4] = &off_100079F00;
  v27[0] = a4;
  type metadata accessor for AVInputPickerTaskRegistry();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = sub_100053868(_swiftEmptyArrayStorage);
  *(a5 + 16) = v10;
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AVRoutingInputController.ViewModelState();
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 304) = 0;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 104) = v11;
  sub_100003B30(&qword_100084160, &qword_100062D90);
  v12 = swift_allocObject();
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);
  v14(v9, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_100049B9C;
  v15[5] = 0;
  v16 = sub_10003F514(0, 0, v9, &unk_100062DA0, v15);
  sub_100008B68(v9, &qword_1000838E0, &qword_100061C70);
  *(v12 + 16) = v16;
  *(a5 + 128) = v12;
  v17 = swift_allocObject();
  static TaskPriority.userInitiated.getter();
  v14(v9, 0, 1, v13);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_100049B9C;
  v18[5] = 0;
  v19 = sub_10003F514(0, 0, v9, &unk_100062DA8, v18);
  sub_100008B68(v9, &qword_1000838E0, &qword_100061C70);
  *(v17 + 16) = v19;
  *(a5 + 136) = v17;
  *(a5 + 24) = BYTE4(v24);
  v20 = v26;
  *(a5 + 112) = v25;
  *(a5 + 120) = v20;

  sub_100026C30(v27, a5 + 144);
  v14(v9, 1, 1, v13);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  sub_100054078(0, 0, v9, &unk_100062DB0, v22);

  sub_100004B28(v27);
  return a5;
}

uint64_t sub_100048140(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_100048234;

  return v7(v4 + 16);
}

uint64_t sub_100048234()
{

  return _swift_task_switch(sub_100048330, 0, 0);
}

uint64_t sub_100048330()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_100048358(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = sub_10004844C;

  return v7(v4 + 16);
}

uint64_t sub_10004844C()
{

  return _swift_task_switch(sub_100048548, 0, 0);
}

uint64_t sub_100048548()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100048570(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_100048664;

  return v7(v4 + 16);
}

uint64_t sub_100048664()
{

  return _swift_task_switch(sub_1000092D8, 0, 0);
}

uint64_t sub_100048760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100048854;

  return v7(v4 + 32);
}

uint64_t sub_100048854()
{

  return _swift_task_switch(sub_100048950, 0, 0);
}

uint64_t sub_100048970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100048760(a1, v4, v5, v6);
}

uint64_t sub_100048A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100047434(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100048B10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100048C04;

  return v7(v4 + 32);
}

uint64_t sub_100048C04()
{

  return _swift_task_switch(sub_100048D00, 0, 0);
}

uint64_t sub_100048D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100048B10(a1, v4, v5, v6);
}

uint64_t sub_100048DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000474F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100048EC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001A664(a1, v1);
}

uint64_t sub_100048F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100048140(a1, v4, v5, v6);
}

uint64_t sub_100049030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000469F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100049104()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100049150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100048358(a1, v4, v5, v6);
}

uint64_t sub_10004921C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100046D98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000492F0()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100049338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t sub_100049388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100048570(a1, v4, v5, v6);
}

uint64_t sub_100049454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000470C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100049528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_1000479D4(a1, v4, v5, v7, v6);
}

uint64_t sub_100049618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009340(a1, v4, v5, v6);
}

uint64_t sub_1000496CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100047C90(a1, v4, v5, v7, v6);
}

uint64_t sub_100049798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009E9C(a1, v4, v5, v6);
}

uint64_t sub_10004984C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100047CB4(a1, v4);
}

uint64_t sub_10004993C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100047A6C(a1, v4);
}

uint64_t sub_1000499F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014310;

  return sub_100047A6C(a1, v4);
}

uint64_t sub_100049AAC()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100049AE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100019F74(v2, v3);
}

__n128 sub_100049BF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v73 = sub_100003B30(&qword_100084170, &qword_100062F58);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v59 - v3;
  v71 = sub_100003B30(&qword_100084178, &qword_100062F60);
  __chkstk_darwin(v71);
  v68 = &v59 - v4;
  v67 = sub_100003B30(&qword_100084180, &qword_100062F68);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v59 - v5;
  v64 = sub_100003B30(&qword_100084188, &qword_100062F70);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v7 = &v59 - v6;
  v62 = sub_100003B30(&qword_100084190, &qword_100062F78);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v59 - v8;
  v9 = sub_100003B30(&qword_100084198, &qword_100062F80);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v75 = v2;
  sub_100003B30(&qword_1000841A0, &qword_100062F88);
  sub_10004C004();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v13 = &v11[*(v9 + 36)];
  *v13 = KeyPath;
  *(v13 + 1) = 0xC036000000000000;
  v13[16] = 0;
  v14 = sub_10004C324();
  View.scrollContentBackground(_:)();
  sub_100008B68(v11, &qword_100084198, &qword_100062F80);
  v15 = sub_100003B30(&qword_100084220, &qword_100062FF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v60 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v59 - v60;
  static ScrollEdgeEffectStyle.hard.getter();
  v18 = type metadata accessor for ScrollEdgeEffectStyle();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  static Edge.Set.top.getter();
  *&v76[0] = v9;
  *(&v76[0] + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v7;
  v22 = v62;
  v23 = v61;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_100008B68(v17, &qword_100084220, &qword_100062FF0);
  v24 = v22;
  v25 = (*(v63 + 8))(v23, v22);
  __chkstk_darwin(v25);
  v26 = &v59 - v60;
  static ScrollEdgeEffectStyle.soft.getter();
  v19(v26, 0, 1, v18);
  static Edge.Set.bottom.getter();
  *&v76[0] = v24;
  *(&v76[0] + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v65;
  v29 = v64;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_100008B68(v26, &qword_100084220, &qword_100062FF0);
  v30 = v29;
  (*(v66 + 8))(v21, v29);
  v31 = type metadata accessor for InsetListStyle();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  InsetListStyle.init()();
  *&v76[0] = v30;
  *(&v76[0] + 1) = v27;
  v35 = v70;
  swift_getOpaqueTypeConformance2();
  v36 = v68;
  v37 = v67;
  View.listStyle<A>(_:)();
  (*(v32 + 8))(v34, v31);
  (*(v69 + 8))(v28, v37);
  v38 = swift_allocObject();
  v39 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = *(v2 + 80);
  v40 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v40;
  v41 = (v36 + *(sub_100003B30(&qword_100084228, &qword_100062FF8) + 36));
  *v41 = sub_10004C3F4;
  v41[1] = v38;
  v42 = swift_allocObject();
  v43 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = *(v2 + 80);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  v45 = (v36 + *(sub_100003B30(&qword_100084230, &qword_100063000) + 36));
  *v45 = sub_10004C3FC;
  v45[1] = v42;
  *(v36 + *(v71 + 36)) = 0;
  v46 = swift_allocObject();
  v47 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(v2 + 64);
  v48 = *(v2 + 72);
  *(v46 + 96) = *(v2 + 80);
  v49 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v49;
  v50 = *(v2 + 64);
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v48;
  v52 = *(v2 + 48);
  *(v51 + 64) = *(v2 + 32);
  *(v51 + 80) = v52;
  *(v51 + 96) = *(v2 + 64);
  *(v51 + 112) = *(v2 + 80);
  v53 = *(v2 + 16);
  *(v51 + 32) = *v2;
  *(v51 + 48) = v53;
  sub_10004C494(v2, v76);
  sub_10004C494(v2, v76);
  sub_10004C494(v2, v76);
  sub_10004C494(v2, v76);
  sub_100034860(v50, v48);
  sub_10004C4CC();
  sub_10004C7AC();
  View.onScrollGeometryChange<A>(for:of:action:)();

  sub_100008B68(v36, &qword_100084178, &qword_100062F60);
  v76[0] = *(v2 + 16);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v74;
  (*(v72 + 32))(v74, v35, v73);
  v55 = v54 + *(sub_100003B30(&qword_100084278, &qword_100063018) + 36);
  v56 = v76[5];
  *(v55 + 64) = v76[4];
  *(v55 + 80) = v56;
  *(v55 + 96) = v76[6];
  v57 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v57;
  result = v76[3];
  *(v55 + 32) = v76[2];
  *(v55 + 48) = result;
  return result;
}

uint64_t sub_10004A650(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(*(a1 + 80) + 64);
  swift_getKeyPath();
  v8[0] = v2;
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  v8[11] = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_10004C494(a1, v8);
  sub_100003B30(&qword_1000842F8, &qword_1000630A0);
  sub_100003B30(&qword_1000841B8, &qword_100062F90);
  sub_100009034(&qword_100084300, &qword_1000842F8, &qword_1000630A0, &protocol conformance descriptor for [A]);
  sub_10004CB38();
  sub_10004C07C();
  ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004A860@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_100003B30(&qword_100084310, &qword_1000630A8);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v43 - v6;
  v7 = a1[1];
  v73 = *a1;
  v74 = v7;
  v75 = a1[2];
  v76 = *(a1 + 48);
  v8 = *(a1 + 2);
  v44 = *(a1 + 3);
  type metadata accessor for MainActor();
  v62 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v60 = sub_100003B30(&qword_1000841B8, &qword_100062F90);
  v61 = &v43;
  __chkstk_darwin(v60);
  v59 = &v43 - v9;
  v57 = sub_100003B30(&qword_100084318, &qword_1000630B0);
  v58 = &v43;
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v43 - v10;
  v11 = sub_100003B30(&qword_1000841C0, &qword_100062F98);
  v55 = &v43;
  v49 = v11;
  __chkstk_darwin(v11);
  v48 = &v43 - v12;
  v13 = sub_100003B30(&qword_1000841D8, &qword_100062FA0);
  v50 = &v43;
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = *(&v75 + 1);
  v45 = v75;

  v46 = *(a2 + 80);
  v17 = sub_100031368(&v73);
  if (v76)
  {
    v18 = v8;
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = sub_10005D95C(v19);

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v44;
  }

  else
  {
    v18 = 0;
    v25 = 0;
    v24 = *(&v74 + 1);
    v22 = v74;
  }

  v26 = 0xE90000000000006BLL;
  if ((v17 & 1) == 0)
  {
    v26 = 0;
  }

  *&v66 = v45;
  *(&v66 + 1) = v16;
  v27 = 0x72616D6B63656863;
  if ((v17 & 1) == 0)
  {
    v27 = 0;
  }

  *&v67 = v27;
  *(&v67 + 1) = v26;
  *&v68 = v22;
  *(&v68 + 1) = v24;
  *&v69 = v18;
  *(&v69 + 1) = v25;
  static VerticalEdge.Set.all.getter();
  sub_10003B788();
  v28 = v51;
  View.listRowSeparator(_:edges:)();
  v65[0] = v66;
  v65[1] = v67;
  v65[2] = v68;
  v65[3] = v69;
  sub_10004CB8C(v65);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v53 + 32))(v15, v28, v54);
  v29 = &v15[*(v47 + 36)];
  v30 = v71;
  *(v29 + 4) = v70;
  *(v29 + 5) = v30;
  *(v29 + 6) = v72;
  v31 = v67;
  *v29 = v66;
  *(v29 + 1) = v31;
  v32 = v69;
  *(v29 + 2) = v68;
  *(v29 + 3) = v32;
  v33 = sub_100031368(&v73);
  v34 = v48;
  sub_100008A90(v15, v48, &qword_1000841D8, &qword_100062FA0);
  *(v34 + *(v49 + 36)) = v33 & 1;
  v35 = swift_allocObject();
  v36 = *(a2 + 48);
  *(v35 + 48) = *(a2 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a2 + 64);
  v37 = *(a2 + 16);
  *(v35 + 16) = *a2;
  *(v35 + 32) = v37;
  v38 = v74;
  *(v35 + 136) = v75;
  v39 = v73;
  *(v35 + 120) = v38;
  *(v35 + 96) = *(a2 + 80);
  *(v35 + 152) = v76;
  *(v35 + 104) = v39;
  sub_10004C494(a2, v64);
  sub_1000355E0(&v73, v64);
  sub_10004C14C();
  v40 = v52;
  View.onTapGesture(count:perform:)();

  sub_100008B68(v34, &qword_1000841C0, &qword_100062F98);
  v41 = v59;
  (*(v56 + 32))(v59, v40, v57);
  *(v41 + *(v60 + 36)) = 256;
  sub_100008A90(v41, v63, &qword_1000841B8, &qword_100062F90);
}

uint64_t sub_10004AEA8(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = a2[1];
  v2 = *(a2 + 4);
  v3 = *(a2 + 5);
  v4 = *(a2 + 48);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[0] = v6;
  v8[1] = v7;
  v9 = v2;
  v10 = v3;
  v11 = v4 & 1;
  sub_100030234(v8);
}

double sub_10004AF8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004B0E0(a1, v18);
  v4 = static Alignment.center.getter();
  v6 = v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  sub_10004C494(a1, &v17);

  v10 = v18[7];
  v11 = v18[8];
  v12 = v18[5];
  *(a2 + 96) = v18[6];
  *(a2 + 112) = v10;
  *(a2 + 128) = v11;
  v13 = v18[3];
  v14 = v18[4];
  *(a2 + 32) = v18[2];
  *(a2 + 48) = v13;
  *(a2 + 144) = v19;
  *(a2 + 64) = v14;
  *(a2 + 80) = v12;
  result = *v18;
  v16 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v16;
  *(a2 + 152) = sub_10004C874;
  *(a2 + 160) = v7;
  *(a2 + 168) = v4;
  *(a2 + 176) = v6;
  return result;
}

double sub_10004B0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() shared];
  v5 = [v4 inputPickerGainControlEnabled];

  if (v5)
  {
    v6 = *(a1 + 80);
    v7 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v59) = 0;

    v25 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v79) = 0;
    *&v69 = v6;
    BYTE8(v69) = v7;
    *&v70 = v9;
    *(&v70 + 1) = v11;
    *&v71 = v13;
    *(&v71 + 1) = v15;
    LOBYTE(v72) = 0;
    BYTE8(v72) = v16;
    *&v73 = v18;
    *(&v73 + 1) = v20;
    *&v74 = v22;
    *(&v74 + 1) = v24;
    LOBYTE(v75) = 0;
    BYTE8(v75) = v25;
    *&v76 = v26;
    *(&v76 + 1) = v27;
    *&v77 = v28;
    *(&v77 + 1) = v29;
    LOBYTE(v78) = 0;
    sub_10004CAB4(&v69);
  }

  else
  {
    v30 = *(*(a1 + 80) + 152);
    v31 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v59) = 0;
    v49 = v30;
    v50 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v79) = 0;
    *&v69 = v49;
    BYTE8(v69) = v31;
    *&v70 = v33;
    *(&v70 + 1) = v35;
    *&v71 = v37;
    *(&v71 + 1) = v39;
    LOBYTE(v72) = 0;
    BYTE8(v72) = v40;
    *&v73 = v42;
    *(&v73 + 1) = v44;
    *&v74 = v46;
    *(&v74 + 1) = v48;
    LOBYTE(v75) = 0;
    BYTE8(v75) = v50;
    *&v76 = v51;
    *(&v76 + 1) = v52;
    *&v77 = v53;
    *(&v77 + 1) = v54;
    LOBYTE(v78) = 0;
    sub_10004C8C8(&v69);
  }

  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v78;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  v84 = v74;
  v79 = v69;
  v80 = v70;
  sub_100003B30(&qword_100084288, &qword_100063028);
  sub_100003B30(&qword_100084290, &qword_100063030);
  sub_10004C904(&qword_100084298, &qword_100084288, &qword_100063028, sub_10004C8D4);
  sub_10004C904(&qword_1000842C8, &qword_100084290, &qword_100063030, sub_10004CA00);
  _ConditionalContent<>.init(storage:)();

  v87 = v67;
  v81 = v61;
  v82 = v62;
  v83 = v63;
  v84 = v64;
  v79 = v59;
  v80 = v60;
  *(a2 + 96) = v65;
  *(a2 + 112) = v66;
  *(a2 + 128) = v87;
  *(a2 + 144) = v68;
  v55 = v82;
  *(a2 + 32) = v81;
  *(a2 + 48) = v55;
  v56 = v84;
  *(a2 + 64) = v83;
  *(a2 + 80) = v56;
  result = *&v79;
  v58 = v80;
  *a2 = v79;
  *(a2 + 16) = v58;
  return result;
}

uint64_t sub_10004B47C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  type metadata accessor for InputPickerMicrophoneModesManager(0);
  swift_allocObject();

  v16[11] = sub_100001F10(v5, v6);
  State.init(wrappedValue:)();
  v7 = v16[0];
  v8 = v16[1];
  v9 = static Alignment.center.getter();
  v11 = v10;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = swift_allocObject();
  v13 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a1 + 64);
  *(v12 + 96) = *(a1 + 80);
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  sub_10004C494(a1, v16);

  *a2 = v7;
  a2[1] = v8;
  a2[2] = sub_10004C820;
  a2[3] = v12;
  a2[4] = v9;
  a2[5] = v11;
  return result;
}

uint64_t sub_10004B5E8@<X0>(uint64_t *a1@<X1>, double *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ScrollGeometry.contentSize.getter();
  v5 = v4;
  v19 = *(a1 + 2);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.getter();
  v6 = v18;
  v19 = *(a1 + 3);
  State.wrappedValue.getter();
  v7 = v18;
  v8 = *a1;
  *&v19 = *a1;
  BYTE8(v19) = *(a1 + 8);
  if (BYTE8(v19) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v11 = type metadata accessor for EnvironmentValues();
    v12 = *(v11 - 8);
    __chkstk_darwin(v11);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008B68(&v19, &qword_100084280, &qword_100063020);
    (*(v12 + 8))(v14, v11);

    LOBYTE(v8) = LOBYTE(v18);
  }

  v15 = v5 + v6 + v7;
  if (v15 <= 310.0)
  {
    v15 = 310.0;
  }

  v16 = 520.0;
  if (v8)
  {
    v16 = 650.0;
  }

  if (v16 < v15)
  {
    v15 = v16;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_10004B87C(uint64_t a1, double *a2, uint64_t (*a3)(uint64_t, double, double), uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    isCurrentExecutor = a3(isCurrentExecutor, 320.0, v6);
  }

  __chkstk_darwin(isCurrentExecutor);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10004B9AC(uint64_t a1, double a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.setter();
}

void *sub_10004BAE0(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  if (v5 != 0.0 || v6 != 0.0)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_10004BB68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = static Color.clear.getter();
  GeometryProxy.size.getter();
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = sub_10004CDA8;
  a3[4] = v11;
  return result;
}

uint64_t sub_10004BC70(double *a1, void (*a2)(uint64_t, double, double))
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor, v3, v4);
}

uint64_t sub_10004BD34@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_10004CDA0;
  a1[1] = v5;
}

uint64_t sub_10004BDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003B30(&qword_100084168, &qword_100062E30);
  result = State.wrappedValue.setter();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = v11;
  *(a4 + 56) = v12;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  *(a4 + 80) = a1;
  return result;
}

uint64_t sub_10004BED4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_10004BF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10004BF34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004BF7C(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

unint64_t sub_10004C004()
{
  result = qword_1000841A8;
  if (!qword_1000841A8)
  {
    sub_100008218(&qword_1000841A0, &qword_100062F88);
    sub_10004C07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841A8);
  }

  return result;
}

unint64_t sub_10004C07C()
{
  result = qword_1000841B0;
  if (!qword_1000841B0)
  {
    sub_100008218(&qword_1000841B8, &qword_100062F90);
    sub_100008218(&qword_1000841C0, &qword_100062F98);
    sub_10004C14C();
    swift_getOpaqueTypeConformance2();
    sub_100009034(&qword_1000841E8, &qword_1000841F0, &qword_100062FA8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841B0);
  }

  return result;
}

unint64_t sub_10004C14C()
{
  result = qword_1000841C8;
  if (!qword_1000841C8)
  {
    sub_100008218(&qword_1000841C0, &qword_100062F98);
    sub_10004C1CC();
    sub_10004C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841C8);
  }

  return result;
}

unint64_t sub_10004C1CC()
{
  result = qword_1000841D0;
  if (!qword_1000841D0)
  {
    sub_100008218(&qword_1000841D8, &qword_100062FA0);
    sub_10003B788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841D0);
  }

  return result;
}

unint64_t sub_10004C26C()
{
  result = qword_1000841E0;
  if (!qword_1000841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841E0);
  }

  return result;
}

uint64_t sub_10004C2C0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10004C324()
{
  result = qword_1000841F8;
  if (!qword_1000841F8)
  {
    sub_100008218(&qword_100084198, &qword_100062F80);
    sub_100009034(&qword_100084200, &qword_100084208, &qword_100062FE0, &protocol conformance descriptor for List<A, B>);
    sub_100009034(&qword_100084210, &qword_100084218, &qword_100062FE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841F8);
  }

  return result;
}

uint64_t sub_10004C3E8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10004C40C()
{
  if (*(v0 + 16))
  {
  }

  sub_10004C3E8(*(v0 + 32), *(v0 + 40));

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_10004C4CC()
{
  result = qword_100084238;
  if (!qword_100084238)
  {
    sub_100008218(&qword_100084178, &qword_100062F60);
    sub_10004C56C();
    sub_100009034(&qword_1000841E8, &qword_1000841F0, &qword_100062FA8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084238);
  }

  return result;
}

unint64_t sub_10004C56C()
{
  result = qword_100084240;
  if (!qword_100084240)
  {
    sub_100008218(&qword_100084230, &qword_100063000);
    sub_10004C618();
    sub_100009034(&qword_100084260, &qword_100084268, &qword_100063010, &unk_100063348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084240);
  }

  return result;
}

unint64_t sub_10004C618()
{
  result = qword_100084248;
  if (!qword_100084248)
  {
    sub_100008218(&qword_100084228, &qword_100062FF8);
    sub_100008218(&qword_100084180, &qword_100062F68);
    type metadata accessor for InsetListStyle();
    sub_100008218(&qword_100084188, &qword_100062F70);
    sub_100008218(&qword_100084190, &qword_100062F78);
    sub_100008218(&qword_100084198, &qword_100062F80);
    sub_10004C324();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009034(&qword_100084250, &qword_100084258, &qword_100063008, &unk_100063398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084248);
  }

  return result;
}

unint64_t sub_10004C7AC()
{
  result = qword_100084270;
  if (!qword_100084270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084270);
  }

  return result;
}

uint64_t sub_10004C904(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004C9AC()
{
  result = qword_1000842C0;
  if (!qword_1000842C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000842C0);
  }

  return result;
}

unint64_t sub_10004CA60()
{
  result = qword_1000842F0;
  if (!qword_1000842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000842F0);
  }

  return result;
}

uint64_t sub_10004CAC4()
{
  sub_10004C3E8(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10004CB38()
{
  result = qword_100084308;
  if (!qword_100084308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084308);
  }

  return result;
}

uint64_t sub_10004CBE0()
{
  sub_10004C3E8(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 80))
  {
  }

  sub_100034234(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return _swift_deallocObject(v0, 153, 7);
}

unint64_t sub_10004CC80()
{
  result = qword_100084320;
  if (!qword_100084320)
  {
    sub_100008218(&qword_100084278, &qword_100063018);
    sub_100008218(&qword_100084178, &qword_100062F60);
    sub_10004C4CC();
    sub_10004C7AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084320);
  }

  return result;
}

uint64_t sub_10004CD68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CE3C()
{
  static Color.gray.getter();
  v0 = Color.opacity(_:)();

  qword_100084338 = v0;
  return result;
}

uint64_t sub_10004CE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for Material._GlassVariant();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  static Material._GlassVariant.regular.getter();
  Material._GlassVariant.excludingShadow()();
  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = a2 + *(sub_100003B30(&qword_100084348, &qword_100063230) + 36);
  static Material._glass(_:)();
  v11(v8, v4);
  v13 = sub_100003B30(qword_100084368, &qword_100063238);
  v14 = (v12 + *(v13 + 52));
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14->i8[v15], v16, v17);
  *v14 = vdupq_n_s64(0x4046800000000000uLL);
  *(v12 + *(v13 + 56)) = 256;
  v18 = sub_100003B30(&qword_100084340, &qword_100063228);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
}

uint64_t sub_10004D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(sub_100003B30(&qword_100084348, &qword_100063230) + 36);
  static Material.ultraThin.getter();
  v5 = sub_100003B30(qword_100084368, &qword_100063238);
  v6 = (v4 + *(v5 + 52));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  *v6 = vdupq_n_s64(0x4046800000000000uLL);
  *(v4 + *(v5 + 56)) = 256;
  v10 = sub_100003B30(&qword_100084340, &qword_100063228);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
}

uint64_t sub_10004D2FC()
{
  Solarium.init()();
  sub_100003B30(&qword_100084340, &qword_100063228);
  sub_100003B30(&qword_100084348, &qword_100063230);
  sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004D3F4();
  return View.staticIf<A, B, C>(_:then:else:)();
}

unint64_t sub_10004D3F4()
{
  result = qword_100084358;
  if (!qword_100084358)
  {
    sub_100008218(&qword_100084348, &qword_100063230);
    sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100009034(&qword_100084360, qword_100084368, &qword_100063238, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084358);
  }

  return result;
}

uint64_t sub_10004D4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004D514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _InputPickerBackgroundItemViewModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _InputPickerBackgroundItemViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004D6D0()
{
  sub_100008218(&qword_100084340, &qword_100063228);
  sub_100008218(&qword_100084348, &qword_100063230);
  sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004D3F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004D7D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a3;
  type metadata accessor for MainActor();
  v40[2] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_100003B30(&qword_100084478, &qword_100063440);
  __chkstk_darwin(v5 - 8);
  v7 = v40 - v6;
  if (a2)
  {
    v8 = sub_100003B30(&qword_100084480, &qword_100063448);
    v9 = __chkstk_darwin(v8);
    v11 = v40 - v10;
    v12 = v40 + *(v9 + 36) - v10;
    static Material.selected.getter();
    v13 = sub_100003B30(qword_100084368, &qword_100063238);
    v14 = &v12[*(v13 + 52)];
    v15 = *(type metadata accessor for RoundedRectangle() + 20);
    v16 = enum case for RoundedCornerStyle.continuous(_:);
    v17 = type metadata accessor for RoundedCornerStyle();
    (*(*(v17 - 8) + 104))(&v14->i8[v15], v16, v17);
    *v14 = vdupq_n_s64(0x4046800000000000uLL);
    *&v12[*(v13 + 56)] = 256;
    v18 = sub_100003B30(&qword_100084470, &qword_100063438);
    (*(*(v18 - 8) + 16))(v11, a1, v18);
    v19 = sub_100003B30(&qword_1000844E0, &qword_100063480);
    __chkstk_darwin(v19);
    sub_100008AF8(v11, v40 - v20, &qword_100084480, &qword_100063448);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_1000844A8, &qword_100063450);
    sub_10004F72C();
    sub_10004F7EC();
    _ConditionalContent<>.init(storage:)();
    sub_100008B68(v11, &qword_100084480, &qword_100063448);
  }

  else
  {
    v21 = sub_100003B30(&qword_1000844A8, &qword_100063450);
    v40[1] = v40;
    __chkstk_darwin(v21);
    v23 = v40 - v22;
    if (qword_100083200 != -1)
    {
      swift_once();
    }

    v24 = qword_100084338;
    v25 = &v23[*(v21 + 36)];
    v26 = v25 + *(sub_100003B30(&qword_1000844C0, &qword_100063460) + 36);
    static Material.ultraThin.getter();
    v27 = static Edge.Set.all.getter();
    v26[*(sub_100003B30(&qword_1000844C8, &qword_100063468) + 36)] = v27;
    *v25 = v24;
    v28 = (v25 + *(sub_100003B30(&qword_1000844D0, &qword_100063470) + 36));
    v29 = *(type metadata accessor for RoundedRectangle() + 20);
    v30 = enum case for RoundedCornerStyle.continuous(_:);
    v31 = type metadata accessor for RoundedCornerStyle();
    (*(*(v31 - 8) + 104))(&v28->i8[v29], v30, v31);
    *v28 = vdupq_n_s64(0x4046800000000000uLL);
    *(v28->i16 + *(sub_100003B30(&qword_1000844D8, &qword_100063478) + 36)) = 256;

    v32 = static Alignment.center.getter();
    v34 = v33;
    v35 = (v25 + *(sub_100003B30(&qword_1000844B8, &qword_100063458) + 36));
    *v35 = v32;
    v35[1] = v34;
    v36 = sub_100003B30(&qword_100084470, &qword_100063438);
    (*(*(v36 - 8) + 16))(v23, a1, v36);
    v37 = sub_100003B30(&qword_1000844E0, &qword_100063480);
    __chkstk_darwin(v37);
    sub_100008AF8(v23, v40 - v38, &qword_1000844A8, &qword_100063450);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_100084480, &qword_100063448);
    sub_10004F72C();
    sub_10004F7EC();
    _ConditionalContent<>.init(storage:)();
    sub_100008B68(v23, &qword_1000844A8, &qword_100063450);
  }

  sub_10004F8AC(v7, v41);
}

uint64_t sub_10004DDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(sub_100003B30(&qword_100084480, &qword_100063448) + 36);
  static Material.ultraThin.getter();
  v5 = sub_100003B30(qword_100084368, &qword_100063238);
  v6 = (v4 + *(v5 + 52));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  *v6 = vdupq_n_s64(0x4046800000000000uLL);
  *(v4 + *(v5 + 56)) = 256;
  v10 = sub_100003B30(&qword_100084470, &qword_100063438);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
}

uint64_t sub_10004DF94()
{
  Solarium.init()();
  sub_100003B30(&qword_100084470, &qword_100063438);
  sub_100003B30(&qword_100084478, &qword_100063440);
  sub_100003B30(&qword_100084480, &qword_100063448);
  sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004F6AC();
  sub_10004F72C();
  return View.staticIf<A, B, C>(_:then:else:)();
}

uint64_t sub_10004E0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v31 = a6;
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopPocketModifier(255, a4, a5, v8);
  swift_getWitnessTable();
  v9 = type metadata accessor for _ViewModifier_Content();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v9;
  v34 = OpaqueTypeMetadata2;
  v35 = WitnessTable;
  v36 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v25;
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  v25 = &v25;
  __chkstk_darwin(v17);
  *(&v25 - 4) = a4;
  *(&v25 - 3) = a5;
  static HorizontalAlignment.center.getter();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v24 = OpaqueTypeConformance2;
  v23 = WitnessTable;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v20 = *(v13 + 16);
  v20(v16, v19, v12);
  v21 = *(v13 + 8);
  v21(v19, v12);
  v20(v31, v16, v12);
  v21(v16, v12);
}

uint64_t sub_10004E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v23[2] = a2;
  v23[3] = a1;
  v24 = a5;
  type metadata accessor for MainActor();
  v25 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopPocketModifier(255, a3, a4, v7);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v23[0] = type metadata accessor for _InsetViewModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v23;
  v13 = __chkstk_darwin(v10);
  v15 = v23 - v14;
  __chkstk_darwin(v13);
  v23[-4] = a3;
  v23[-3] = a4;
  static HorizontalAlignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  v22 = a4;
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v12, v15, v8);
  v19 = *(v9 + 8);
  v19(v15, v8);
  v18(v24, v12, v8);
  v19(v12, v8);
}

uint64_t sub_10004E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, void *)@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v28 = a3;
  v27 = a2;
  v30 = a1;
  v32 = a9;
  v29 = a10;
  a6(255, a4, a5);
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for _InsetViewModifier();
  v14 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = WitnessTable;
  v50 = swift_getWitnessTable();
  v41 = v12;
  v42 = &type metadata for Solarium;
  v43 = OpaqueTypeMetadata2;
  v44 = v14;
  v45 = WitnessTable;
  v46 = &protocol witness table for Solarium;
  v47 = OpaqueTypeConformance2;
  v48 = swift_getWitnessTable();
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &OpaqueTypeMetadata2 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &OpaqueTypeMetadata2 - v20;
  Solarium.init()();
  v37 = a4;
  v38 = a5;
  v39 = v27;
  v40 = v28;
  v33 = a4;
  v34 = a5;
  v35 = v27;
  v36 = v28;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  View.staticIf<A, B, C>(_:then:else:)();
  v22 = *(v16 + 16);
  v22(v19, v21, v15);
  v23 = *(v16 + 8);
  v23(v21, v15);
  v22(v32, v19, v15);
  return (v23)(v19, v15);
}

uint64_t sub_10004EADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v31 = a6;
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BottomPocketModifier(255, a4, a5, v8);
  swift_getWitnessTable();
  v9 = type metadata accessor for _ViewModifier_Content();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v9;
  v34 = OpaqueTypeMetadata2;
  v35 = WitnessTable;
  v36 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v25;
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  v25 = &v25;
  __chkstk_darwin(v17);
  *(&v25 - 4) = a4;
  *(&v25 - 3) = a5;
  static HorizontalAlignment.center.getter();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v24 = OpaqueTypeConformance2;
  v23 = WitnessTable;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v20 = *(v13 + 16);
  v20(v16, v19, v12);
  v21 = *(v13 + 8);
  v21(v19, v12);
  v20(v31, v16, v12);
  v21(v16, v12);
}

uint64_t sub_10004EE00@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X4>, char *a4@<X8>)
{
  v26 = a3;
  v30 = a4;
  v29 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v7;
  v31 = v7;
  v32 = v9;
  v28 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  v12 = __chkstk_darwin(OpaqueTypeMetadata2);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (a1)(isCurrentExecutor);
  v18 = type metadata accessor for BarMagicPocketStyle();
  v26 = &v25;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static BarMagicPocketStyle.automatic.getter();
  View.scrollPocketTag_v1(style:)();
  (*(v19 + 8))(v21, v18);
  (*(v29 + 8))(v6, v8);
  v22 = *(v11 + 16);
  v22(v16, v14, OpaqueTypeMetadata2);
  v23 = *(v11 + 8);
  v23(v14, OpaqueTypeMetadata2);
  v22(v30, v16, OpaqueTypeMetadata2);
  v23(v16, OpaqueTypeMetadata2);
}

uint64_t sub_10004F128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v23[2] = a2;
  v23[3] = a1;
  v24 = a5;
  type metadata accessor for MainActor();
  v25 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BottomPocketModifier(255, a3, a4, v7);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v23[0] = type metadata accessor for _InsetViewModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v23;
  v13 = __chkstk_darwin(v10);
  v15 = v23 - v14;
  __chkstk_darwin(v13);
  v23[-4] = a3;
  v23[-3] = a4;
  static HorizontalAlignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  v22 = a4;
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v12, v15, v8);
  v19 = *(v9 + 8);
  v19(v15, v8);
  v18(v24, v12, v8);
  v19(v12, v8);
}

uint64_t sub_10004F40C@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v17[1] = a3;
  v7 = *(a2 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (a1)(isCurrentExecutor);
  v14 = *(v7 + 16);
  v14(v12, v10, a2);
  v15 = *(v7 + 8);
  v15(v10, a2);
  v14(a4, v12, a2);
  v15(v12, a2);
}

unint64_t sub_10004F6AC()
{
  result = qword_100084490;
  if (!qword_100084490)
  {
    sub_100008218(&qword_100084478, &qword_100063440);
    sub_10004F72C();
    sub_10004F7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084490);
  }

  return result;
}

unint64_t sub_10004F72C()
{
  result = qword_100084498;
  if (!qword_100084498)
  {
    sub_100008218(&qword_100084480, &qword_100063448);
    sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100009034(&qword_100084360, qword_100084368, &qword_100063238, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084498);
  }

  return result;
}

unint64_t sub_10004F7EC()
{
  result = qword_1000844A0;
  if (!qword_1000844A0)
  {
    sub_100008218(&qword_1000844A8, &qword_100063450);
    sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100009034(&qword_1000844B0, &qword_1000844B8, &qword_100063458, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000844A0);
  }

  return result;
}

uint64_t sub_10004F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100084478, &qword_100063440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FA0C()
{
  sub_100008218(&qword_100084470, &qword_100063438);
  sub_100008218(&qword_100084478, &qword_100063440);
  sub_100008218(&qword_100084480, &qword_100063448);
  sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004F6AC();
  sub_10004F72C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004FB48(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, void *), uint64_t a3)
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _InsetViewModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004FCF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10004FD48(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100052B14();
  }

  return result;
}

void *sub_10004FEF4()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() auxiliarySession];
  p_ivars = &RSHostingActionClientToHost__metaData.ivars;
  *(v0 + 24) = [objc_allocWithZone(AVAudioEngine) init];
  *(v0 + 32) = [objc_allocWithZone(AVAudioSession) initSessionForIndependentInputRoute];
  *(v0 + 40) = [objc_allocWithZone(AVAudioEngine) init];
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x8000000100069230;
  sub_100053604();
  [*(v0 + 64) setMaxConcurrentOperationCount:1];
  v3 = *(v0 + 64);

  v4 = String._bridgeToObjectiveC()();

  [v3 setName:v4];

  sub_100003B30(&qword_1000846B0, &unk_100063530);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100060AF0;
  v6 = AVSystemController_RecordingStateDidChangeNotification;
  *(v5 + 32) = AVSystemController_RecordingStateDidChangeNotification;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 sharedInstance];
  v10 = &unk_100083000;
  if (v9)
  {
    type metadata accessor for Name(0);
    v11 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock = 0;
    v13 = [v11 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:&aBlock];

    if ((v13 & 1) == 0)
    {
      v49 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_14;
    }

    v69 = v9;
    v14 = aBlock;
  }

  else
  {
    v69 = 0;
  }

  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  v17 = v1[8];
  v18 = swift_allocObject();
  swift_weakInit();
  v74 = sub_100053B9C;
  v75 = v18;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10005094C;
  v73 = &unk_10007B7E8;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  v21 = [v16 addObserverForName:v8 object:0 queue:v20 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  v22 = [v15 defaultCenter];
  v23 = v1[3];
  v24 = v1[8];
  v25 = swift_allocObject();
  swift_weakInit();
  v74 = sub_100053BA4;
  v75 = v25;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10005094C;
  v73 = &unk_10007B810;
  v26 = _Block_copy(&aBlock);
  v27 = v23;
  v28 = v24;

  v29 = [v22 addObserverForName:AVAudioEngineConfigurationChangeNotification object:v27 queue:v28 usingBlock:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();

  v30 = [v15 defaultCenter];
  v31 = v1[5];
  v32 = v1[8];
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = v31;
  v35 = v32;

  v74 = sub_100053BE4;
  v75 = v33;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10005094C;
  v73 = &unk_10007B838;
  v36 = _Block_copy(&aBlock);

  v37 = [v30 addObserverForName:AVAudioEngineConfigurationChangeNotification object:v34 queue:v35 usingBlock:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  v38 = v1[2];
  aBlock = 0;
  v39 = [v38 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeDefault options:45 error:&aBlock];
  v40 = aBlock;
  if (v39)
  {
    v41 = v1[2];
    aBlock = 0;
    v42 = v40;
    v43 = [v41 preferDecoupledIO:1 error:&aBlock];
    v44 = aBlock;
    v10 = &unk_100083000;
    if (v43)
    {
      v45 = v1[4];
      aBlock = 0;
      v46 = v44;
      p_ivars = &RSHostingActionClientToHost__metaData.ivars;
      if ([v45 setCategory:AVAudioSessionCategoryRecord mode:AVAudioSessionModeDefault options:5 error:&aBlock])
      {
        v47 = aBlock;

        goto LABEL_19;
      }

      v51 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v50 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      p_ivars = (&RSHostingActionClientToHost__metaData + 48);
    }
  }

  else
  {
    v48 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    p_ivars = (&RSHostingActionClientToHost__metaData + 48);
    v10 = &unk_100083000;
  }

  v11 = v69;
LABEL_14:

  if (v10[62] != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_1000080BC(v52, qword_100086758);
  swift_errorRetain();
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    swift_errorRetain();
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&_mh_execute_header, v53, v54, "Metering: Could not subscribe to AVSystemController notifications: %@", v55, 0xCu);
    sub_100008B68(v56, &qword_1000838D8, &unk_1000617C0);
  }

  else
  {
  }

LABEL_19:
  v58 = [objc_allocWithZone(AVAudioSessionRouteControl) p_ivars[44]];
  [v58 setRouteControlOptions:1];
  v59 = v1[4];
  aBlock = 0;
  if ([v59 setPreferredRouteControlConfig:v58 error:&aBlock])
  {
    v60 = aBlock;
  }

  else
  {
    v61 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v10[62] != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000080BC(v62, qword_100086758);
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      swift_errorRetain();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v67;
      *v66 = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "Metering: Failed to set independent route on shadowing audio session. Error = %@", v65, 0xCu);
      sub_100008B68(v66, &qword_1000838D8, &unk_1000617C0);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1000508EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100050DC0(a1);
  }

  return result;
}

uint64_t sub_10005094C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100050A40(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000080BC(v7, qword_100086758);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
    }

    a4();
  }

  return result;
}

id *sub_100050C6C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:AVSystemController_RecordingStateDidChangeNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:AVAudioEngineConfigurationChangeNotification object:v0[3]];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:AVAudioEngineConfigurationChangeNotification object:v0[5]];

  return v0;
}

uint64_t sub_100050D8C()
{
  sub_100050C6C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_100050DC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000080BC(v8, qword_100086758);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    sub_100053B44();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = a1;
    v14 = v2;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_10005305C(v13, v16, aBlock);
    v2 = v14;

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Metering: Recording state changed: %s", v11, 0xCu);
    sub_100004B28(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v18 = Notification.userInfo.getter();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v20;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v21 = sub_1000577BC(aBlock), (v22 & 1) == 0))
  {

    sub_100007F98(aBlock);
    return;
  }

  sub_100004AC4(*(v19 + 56) + 32 * v21, v47);
  sub_100007F98(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    return;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v23;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v24 = sub_1000577BC(aBlock), (v25 & 1) == 0))
  {

    sub_100007F98(aBlock);
    goto LABEL_29;
  }

  sub_100004AC4(*(v19 + 56) + 32 * v24, v47);
  sub_100007F98(aBlock);

  sub_100003B30(&qword_1000846A0, &qword_100063528);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v39 = *(v2 + 64);
    v40 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100008350;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004FCF4;
    aBlock[3] = &unk_10007B7C0;
    v41 = _Block_copy(aBlock);

    [v39 addOperationWithBlock:v41];
    _Block_release(v41);
    return;
  }

  v43 = v2;
  v26 = v45;
  v27 = *(v45 + 16);
  if (!v27)
  {
LABEL_30:

    v2 = v43;
    goto LABEL_29;
  }

  v28 = 0;
  while (v28 < *(v26 + 16))
  {
    v29 = *(v26 + 8 * v28 + 32);
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (*(v29 + 16) && (v33 = v30, , v34 = sub_100057800(v33, v32), v36 = v35, , (v36 & 1) != 0))
    {
      sub_100004AC4(*(v29 + 56) + 32 * v34, aBlock);

      if (swift_dynamicCast())
      {
        v37 = v47[0];
        v38 = v43;
        if (v37 == [*(v43 + 16) opaqueSessionID] || v37 == objc_msgSend(*(v38 + 32), "opaqueSessionID"))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    if (v27 == ++v28)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_10005144C()
{
  v2 = v0;
  v3 = sub_100052C24();
  v4 = v3;
  if ((*(v0 + 52) & 1) != 0 || v3 != *(v0 + 48))
  {
    if (v3 == [*(v0 + 16) opaqueSessionID])
    {
      _StringGuts.grow(_:)(24);

      v15[0] = 0xD000000000000016;
      v15[1] = 0x8000000100069210;
      v16 = v4;
      v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v5);

      v7 = 0xD000000000000016;
      v6 = 0x8000000100069210;
    }

    else
    {
      LODWORD(v15[0]) = v4;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v8;
    }

    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000080BC(v9, qword_100086758);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = [*(v2 + 32) opaqueSessionID];

      *(v12 + 8) = 2080;
      v14 = sub_10005305C(v7, v6, v15);

      *(v12 + 10) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Metering: Audio session is %u, Active Recording Session: %s", v12, 0x12u);
      sub_100004B28(v13);
    }

    else
    {
    }

    sub_1000516D8();
    if (!v1)
    {
      sub_100051B44();
    }
  }
}

uint64_t sub_1000516D8()
{
  v1 = *(v0 + 24);
  result = [v1 isRunning];
  if ((result & 1) == 0)
  {
    v3 = sub_100052C24();
    v4 = *(v0 + 16);
    result = [v4 opaqueSessionID];
    if (v3 == result)
    {
      if (qword_1000831F0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000080BC(v5, qword_100086758);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Metering: Starting placeholder audio session", v8, 2u);
      }

      v14 = 0;
      v9 = [v4 setActive:1 withOptions:0 error:&v14];
      v10 = v14;
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = v14;
      [v1 setAudioSession:v4];

      result = [v4 opaqueSessionID];
      if (v3 != result)
      {
        return result;
      }

      v14 = 0;
      v12 = [v1 startAndReturnError:&v14];
      v10 = v14;
      if (v12)
      {
        return v14;
      }

      else
      {
LABEL_11:
        v13 = v10;
        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1000518F0()
{
  v1 = *(v0 + 24);
  if ([v1 isRunning])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000080BC(v2, qword_100086758);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Metering: Stopping placeholder audio session", v5, 2u);
    }

    [v1 stop];
    [v1 reset];
    v6 = *(v0 + 16);
    v14 = 0;
    v7 = [v6 setActive:0 withOptions:0 error:&v14];
    v8 = v14;
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v10 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Metering: Failed to deactivate placeholder session", v13, 2u);
      }
    }
  }
}

void sub_100051B44()
{
  v1 = sub_100052C24();
  v2 = *(v0 + 40);
  if ([v2 isRunning] && (*(v0 + 52) & 1) == 0 && v1 == *(v0 + 48))
  {
    return;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Metering: Starting shadowing audio session", v6, 2u);
  }

  if ((*(v0 + 52) & 1) != 0 || v1 != *(v0 + 48))
  {
    v7 = *(v0 + 32);
    aBlock[0] = 0;
    if (![v7 setActive:0 withOptions:0 error:aBlock])
    {
      v37 = aBlock[0];
      _convertNSErrorToError(_:)();
      goto LABEL_28;
    }

    v8 = aBlock[0];
    [v7 opaqueSessionID];
    sub_100003B30(&qword_100084670, &qword_100063500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100061540;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 48) = UInt32._bridgeToObjectiveC()();
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v11;
    *(inited + 72) = UInt._bridgeToObjectiveC()();
    sub_10005399C(inited);
    swift_setDeallocating();
    sub_100003B30(&qword_100084678, &unk_100063508);
    swift_arrayDestroy();
    sub_100008398(0, &qword_100083360, NSNumber_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    aBlock[0] = 0;
    v13 = [v7 setConformsToSessionBehavior:isa error:aBlock];

    v14 = aBlock[0];
    if (!v13)
    {
      v43 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 67109378;
        *(v45 + 4) = v1;
        *(v45 + 8) = 2112;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 10) = v47;
        *v46 = v47;
        _os_log_impl(&_mh_execute_header, v37, v44, "Metering: Failed to set shadow session (id = %u) : %@", v45, 0x12u);
        sub_100008B68(v46, &qword_1000838D8, &unk_1000617C0);

        goto LABEL_27;
      }

LABEL_28:

      swift_willThrow();
      return;
    }

    *(v0 + 48) = v1;
    *(v0 + 52) = 0;
    v15 = v14;
  }

  v16 = *(v0 + 32);
  aBlock[0] = 0;
  if (![v16 setActive:1 withOptions:0 error:aBlock])
  {
    v38 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v37, v39, "Metering: Failed to activate shadowing session: %@", v40, 0xCu);
      sub_100008B68(v41, &qword_1000838D8, &unk_1000617C0);

LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v17 = aBlock[0];
  [v2 setAudioSession:v16];
  v18 = [v2 inputNode];
  v19 = [v18 inputFormatForBus:0];
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v78 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = [v78 inputFormatForBus:0];
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "Metering: input format: %@", v24, 0xCu);
    sub_100008B68(v25, &qword_1000838D8, &unk_1000617C0);

    v19 = v23;
  }

  if ([v19 channelCount])
  {
    [v19 sampleRate];
    if (v27 > 0.0)
    {
      [v78 removeTapOnBus:0];
      v28 = [v78 inputFormatForBus:0];
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005280C;
      aBlock[3] = &unk_10007B770;
      v29 = _Block_copy(aBlock);
      aBlock[0] = 0;
      [v78 safePerformInstallTapOnBus:0 bufferSize:1024 format:v28 error:aBlock block:v29];
      _Block_release(v29);

      v30 = aBlock[0];
      if (aBlock[0])
      {
        v31 = aBlock[0];
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v31;
          *v35 = v30;
          v36 = v31;
          _os_log_impl(&_mh_execute_header, v32, v33, "Metering: Failed to installTap on shadowing audio engine: %@", v34, 0xCu);
          sub_100008B68(v35, &qword_1000838D8, &unk_1000617C0);
        }

        swift_willThrow();
      }

      else
      {
        aBlock[0] = 0;
        if ([v2 startAndReturnError:aBlock])
        {
          v68 = aBlock[0];
LABEL_50:

          return;
        }

        v69 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      swift_errorRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        swift_errorRetain();
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v74;
        *v73 = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "Metering: Failed to start shadowing audio engine: %@", v72, 0xCu);
        sub_100008B68(v73, &qword_1000838D8, &unk_1000617C0);
      }

LABEL_49:
      swift_willThrow();
      goto LABEL_50;
    }
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Metering: Incorrect input format. Not starting audio metering", v50, 2u);
  }

  v51 = [v16 currentRoute];
  v52 = [v51 inputs];

  sub_100008398(0, &qword_100084680, AVAudioSessionPortDescription_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }

LABEL_48:

    sub_100053AA0();
    swift_allocError();
    *v75 = 0xD000000000000024;
    v75[1] = 0x80000001000691B0;
    goto LABEL_49;
  }

  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v54 = *(v53 + 32);
  }

  v55 = v54;

  swift_retain_n();
  v56 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v77 = v19;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315650;
    v76 = v56;
    v61 = [v56 portName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = sub_10005305C(v62, v64, aBlock);

    *(v59 + 4) = v65;
    *(v59 + 12) = 1024;
    LODWORD(v65) = [v16 isInputAvailable];

    *(v59 + 14) = v65;

    *(v59 + 18) = 2048;
    v66 = [v16 preferredInputNumberOfChannels];

    *(v59 + 20) = v66;
    v56 = v76;

    _os_log_impl(&_mh_execute_header, v57, v58, "Metering: Input device exists (%s), but format is invalid. isInputAvailable: %{BOOL}d, preferredInputNumberOfChannels: %ld", v59, 0x1Cu);
    sub_100004B28(v60);
    v19 = v77;
  }

  else
  {
  }

  sub_100053AA0();
  swift_allocError();
  *v67 = 0xD00000000000002CLL;
  v67[1] = 0x8000000100069180;
  swift_willThrow();
}

void sub_10005280C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_100052890()
{
  v1 = *(v0 + 40);
  if ([v1 isRunning])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000080BC(v2, qword_100086758);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Metering: Stopping shadowing audio session", v5, 2u);
    }

    [v1 stop];
    [v1 reset];
    v6 = [v1 inputNode];
    [v6 removeTapOnBus:0];

    v7 = *(v0 + 32);
    v15 = 0;
    v8 = [v7 setActive:0 withOptions:0 error:&v15];
    v9 = v15;
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Metering: Failed to deactivate shadowing session", v14, 2u);
      }
    }
  }
}

void sub_100052B14()
{
  sub_10005144C();
  if (v0)
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000080BC(v1, qword_100086758);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Metering: setup audio fails with recording session 0", v4, 2u);
    }

    sub_100052890();
    sub_1000518F0();
  }
}

unint64_t sub_100052C24()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedInstance];
  v6 = v5;
  if (v5)
  {
    if ([v5 attributeForKey:AVSystemController_RecordingSessionsDescriptionAttribute])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  sub_100008AF8(&v29, &v27, &qword_100084658, &qword_1000634F8);
  if (!*(&v28 + 1))
  {
    sub_100008B68(&v27, &qword_100084658, &qword_1000634F8);
    goto LABEL_30;
  }

  sub_100008398(0, &qword_100084660, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v13 = [*(v0 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  v18 = v6;
  v20 = v2;
  v21 = v1;
  v22 = v0;
  v19 = v25;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!*(&v28 + 1))
  {
LABEL_31:
    (*(v20 + 8))(v4, v21);
    v13 = [*(v22 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  while (1)
  {
    sub_10005304C(&v27, &v25);
    sub_100008398(0, &qword_100084668, NSDictionary_ptr);
    v7 = swift_dynamicCast();
    v8 = v23;
    if (v7)
    {
      v9 = v23 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v25 = 0u;
      v26 = 0u;
LABEL_28:
      sub_100008B68(&v25, &qword_100084658, &qword_1000634F8);
      goto LABEL_12;
    }

    *&v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v23 + 1) = v10;
    v11 = v8;
    v12 = [v11 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (!*(&v24 + 1))
    {

      goto LABEL_28;
    }

    if (swift_dynamicCast())
    {
      v13 = v23;
      v14 = v22;
      if (v13 != [*(v22 + 32) opaqueSessionID])
      {
        break;
      }
    }

LABEL_12:
    NSFastEnumerationIterator.next()();
    if (!*(&v28 + 1))
    {
      goto LABEL_31;
    }
  }

  v15 = [*(v14 + 16) opaqueSessionID];

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  (*(v20 + 8))(v4, v21);
LABEL_32:
  sub_100008B68(&v29, &qword_100084658, &qword_1000634F8);
  return v13;
}

_OWORD *sub_10005304C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10005305C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100053128(v11, 0, 0, 1, a1, a2);
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
    sub_100004AC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004B28(v11);
  return v7;
}

unint64_t sub_100053128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100053234(a5, a6);
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

void *sub_100053234(uint64_t a1, unint64_t a2)
{
  v3 = sub_100053280(a1, a2);
  sub_1000533B0(&off_100079A68);
  return v3;
}

void *sub_100053280(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10005349C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005349C(v10, 0);
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

uint64_t sub_1000533B0(uint64_t result)
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

  result = sub_100053510(result, v11, 1, v3);
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

void *sub_10005349C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003B30(&qword_100084690, &qword_100063518);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100053510(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_100084690, &qword_100063518);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void sub_100053604()
{
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000080BC(v0, qword_100086758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Metering: Set process attribution identifier for AVKitRoutingService", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 setCurrentAttributionKey:0 andApp:v5];
}

unint64_t sub_100053740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(qword_1000846C8, &qword_100063548);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008AF8(v4, &v11, &qword_1000838D0, &qword_100063550);
      v5 = v11;
      result = sub_100057878(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005304C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100053868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(&qword_1000846B8, &qword_1000636D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008AF8(v4, &v13, &qword_1000846C0, &qword_100063540);
      v5 = v13;
      v6 = v14;
      result = sub_100057800(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100026B0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10005399C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(&qword_100084698, &qword_100063520);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100057800(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100053AA0()
{
  result = qword_100084688;
  if (!qword_100084688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084688);
  }

  return result;
}

uint64_t sub_100053AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100053B0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100053B44()
{
  result = qword_1000846A8;
  if (!qword_1000846A8)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000846A8);
  }

  return result;
}

uint64_t sub_100053C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100053C6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100053D24()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100053D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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

      sub_100003B30(qword_100084850, &qword_100063728);
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

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

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

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003B30(qword_100084850, &qword_100063728);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100054078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

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

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
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

uint64_t sub_100054368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026A64(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
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

      sub_100003B30(&qword_100083928, &qword_100061950);
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

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

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

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003B30(&qword_100083928, &qword_100061950);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}