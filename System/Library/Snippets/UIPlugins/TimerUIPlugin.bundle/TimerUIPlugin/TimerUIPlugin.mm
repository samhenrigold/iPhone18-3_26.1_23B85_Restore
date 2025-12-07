uint64_t variable initialization expression of TimerConfirmation._context()
{
  sub_12E7C();
  sub_25E4(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);

  return sub_128AC();
}

uint64_t TimerConfirmation.init(snippetModel:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_12E7C();
  sub_25E4(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *a2 = sub_128AC();
  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for TimerConfirmation(0) + 20);
  v6 = sub_1275C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a2[v5], a1, v6);
}

uint64_t type metadata accessor for TimerConfirmation(uint64_t a1)
{
  result = qword_1C220;
  if (!qword_1C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B44(&qword_1C290, &qword_13690);
    v2 = sub_1303C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2DE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2E40(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2E40(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2E40(v31, v32);
    result = sub_12FDC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2E40(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1B90(void **a1)
{
  v2 = sub_1273C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*a1)
  {
    (*(v3 + 104))(v5, enum case for DirectInvocationUtils.Timer.URI.buttonPress(_:), v2);
    v7 = v6;
    sub_1272C();
    (*(v3 + 8))(v5, v2);
    type metadata accessor for TimerConfirmation(0);
    sub_1274C();
    v8 = sub_1271C();

    sub_18C8(v8);

    sub_12E6C();
  }

  else
  {
    sub_12E7C();
    sub_25E4(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_1289C();
    __break(1u);
  }
}

uint64_t sub_1D68@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for TimerConfirmation(0);
  a1();
  sub_2D90();
  result = sub_12AFC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t TimerConfirmation.body.getter()
{
  v1 = type metadata accessor for TimerConfirmation(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_2514(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_257C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_12DBC();
  sub_25E4(&qword_1C1C0, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_12D8C();
}

uint64_t sub_1F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_12D7C();
  v3 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimerConfirmation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v42 = v8;
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B44(&qword_1C270, &qword_13680);
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v43 = sub_2B44(&qword_1C278, &qword_13688);
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = v33 - v13;
  v36 = a1;
  v39 = v9;
  sub_2514(a1, v9);
  v15 = *(v7 + 80);
  v41 = (v15 + 16) & ~v15;
  v16 = swift_allocObject();
  sub_257C(v9, v16 + ((v15 + 16) & ~v15));
  v49 = a1;
  sub_12CFC();
  v17 = v3;
  v40 = *(v3 + 104);
  v34 = v5;
  v18 = v45;
  v40(v5, enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:), v45);
  v19 = sub_2BC4(&qword_1C280, &qword_1C270, &qword_13680, &protocol conformance descriptor for Button<A>);
  v20 = v10;
  sub_12B1C();
  v21 = *(v17 + 8);
  v37 = v17 + 8;
  v38 = v21;
  v21(v5, v18);
  v35 = *(v46 + 8);
  v46 += 8;
  v35(v12, v10);
  v53 = v10;
  v54 = v19;
  v33[1] = swift_getOpaqueTypeConformance2();
  v22 = v43;
  v23 = sub_12B0C();
  v24 = *(v47 + 8);
  v47 += 8;
  v33[0] = v24;
  v24(v14, v22);
  v55 = &type metadata for AnyView;
  v56 = &protocol witness table for AnyView;
  v53 = v23;
  v25 = v36;
  v26 = v39;
  sub_2514(v36, v39);
  v27 = v41;
  v28 = swift_allocObject();
  sub_257C(v26, v28 + v27);
  v48 = v25;
  sub_12CFC();
  v29 = v34;
  v30 = v45;
  v40(v34, enum case for ButtonItemButtonStyle.Role.standard(_:), v45);
  sub_12B1C();
  v38(v29, v30);
  v35(v12, v20);
  v31 = sub_12B0C();
  (v33[0])(v14, v22);
  v52 = &protocol witness table for AnyView;
  v51 = &type metadata for AnyView;
  v50 = v31;
  return sub_12DAC();
}

uint64_t sub_2514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_2514(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_257C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_12DBC();
  sub_25E4(&qword_1C1C0, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_12D8C();
}

uint64_t sub_27C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1275C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_288C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1275C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2930(uint64_t a1)
{
  sub_29B4(319);
  if (v1 <= 0x3F)
  {
    sub_1275C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29B4(uint64_t a1)
{
  if (!qword_1C230)
  {
    sub_12E7C();
    sub_25E4(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_128BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C230);
    }
  }
}

uint64_t sub_2A8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimerConfirmation(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1F2C(v4, a1);
}

uint64_t sub_2B44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2A8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2C0C()
{
  v1 = (type metadata accessor for TimerConfirmation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1275C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_2D90()
{
  result = qword_1C288;
  if (!qword_1C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C288);
  }

  return result;
}

uint64_t sub_2DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2E40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_2E50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_2EA8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2F04()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C2A8);
  sub_32B4(v0, qword_1C2A8);
  return sub_1278C();
}

void sub_2F7C(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1270C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12E7C();
  sub_5B30(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *a2 = sub_128AC();
  *(a2 + 1) = v8;
  v27 = type metadata accessor for TimerSelector(0);
  v9 = *(v27 + 28);
  v10 = [objc_allocWithZone(MTTimerManager) init];
  *&a2[v9] = v10;
  v11 = qword_1C178;
  v26 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1279C();
  sub_32B4(v12, qword_1C2A8);
  v13 = *(v5 + 16);
  v28 = a1;
  v13(v7, a1, v4);
  v14 = sub_1277C();
  v15 = sub_12F6C();
  v16 = os_log_type_enabled(v14, v15);
  v25 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = *(sub_126FC() + 16);

    v19 = *(v5 + 8);
    v19(v7, v4);
    *(v17 + 4) = v18;
    _os_log_impl(&dword_0, v14, v15, "[TimerSelector.init] Initializing for %ld timers.", v17, 0xCu);
  }

  else
  {
    v19 = *(v5 + 8);
    v19(v7, v4);
  }

  v21 = v27;
  v20 = v28;
  v13(&a2[*(v27 + 20)], v28, v4);
  v22 = v26;
  v23 = [v26 timersSync];

  if (v23)
  {
    sub_5FBC(0, &qword_1C2C0, MTTimer_ptr);
    v24 = sub_12F0C();

    v19(v20, v4);
    *&a2[*(v21 + 24)] = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_32B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_32EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_12E4C();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B44(&qword_1C370, &qword_137D8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v31 - v6);
  v8 = type metadata accessor for TimerSelector(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_2B44(&qword_1C378, &qword_137E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v32 = sub_2B44(&qword_1C380, &qword_137E8);
  __chkstk_darwin(v32);
  v16 = &v31 - v15;
  sub_6A50(v2, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_6064(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TimerSelector);
  sub_2B44(&qword_1C388, &qword_137F0);
  sub_2BC4(&qword_1C390, &qword_1C388, &qword_137F0, &protocol conformance descriptor for DisambiguationView<A>);
  sub_12D8C();
  *v7 = sub_12BEC();
  v19 = enum case for HostBackground.color(_:);
  v20 = sub_12D9C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v7, v19, v20);
  (*(v21 + 56))(v7, 0, 1, v20);
  sub_2BC4(&qword_1C398, &qword_1C378, &qword_137E0, &protocol conformance descriptor for ComponentStack<A>);
  sub_12B4C();
  sub_6004(v7, &qword_1C370, &qword_137D8);
  (*(v12 + 8))(v14, v11);
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v32 + 36)];
  v24 = *(sub_2B44(&qword_1C3A0, &qword_13828) + 28);
  v25 = enum case for ColorScheme.dark(_:);
  v26 = sub_127FC();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  v28 = v33;
  v27 = v34;
  v29 = v35;
  (*(v34 + 104))(v33, enum case for ComponentStackBottomSpacing.none(_:), v35);
  sub_56C0();
  sub_12B5C();
  (*(v27 + 8))(v28, v29);
  return sub_57E8(v16);
}

uint64_t sub_37F4(uint64_t a1)
{
  v2 = type metadata accessor for TimerSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_12E1C();
  __chkstk_darwin(v5 - 8);
  v14 = &type metadata for String;
  v15 = &protocol witness table for String;
  v12 = sub_126EC();
  v13 = v6;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_12E0C();
  sub_6A50(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_6064(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TimerSelector);
  sub_2B44(&qword_1C3B8, &qword_13830);
  sub_59F4();
  return sub_12DFC();
}

uint64_t sub_39D0(uint64_t a1)
{
  v2 = type metadata accessor for TimerSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_126FC();
  v6 = sub_5B78(v5);

  v13[3] = v6;
  swift_getKeyPath();
  sub_6A50(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSelector);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_6064(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TimerSelector);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_5E74;
  *(v9 + 24) = v8;
  sub_2B44(&qword_1C3D0, &qword_13858);
  sub_2B44(&qword_1C3D8, &qword_13860);
  sub_2BC4(&qword_1C3E0, &qword_1C3D0, &qword_13858, &protocol conformance descriptor for [A]);
  v10 = type metadata accessor for TimerItemView(255);
  v11 = sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView, "qS");
  v13[1] = v10;
  v13[2] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_12D3C();
}

uint64_t sub_3C48@<X0>(char *a1@<X1>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v93 = a3;
  v5 = type metadata accessor for TimerSelector(0);
  v6 = v5 - 8;
  v95 = *(v5 - 8);
  __chkstk_darwin(v5);
  v96 = v7;
  v97 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B44(&qword_1C3F0, &unk_14000);
  __chkstk_darwin(v8 - 8);
  v88 = &v82 - v9;
  v10 = sub_126AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v91 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v82 - v15;
  __chkstk_darwin(v14);
  v18 = &v82 - v17;
  v100 = type metadata accessor for TimerItemView(0);
  v19 = __chkstk_darwin(v100);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v82 - v22;
  v98 = v11;
  v99 = v18;
  v24 = *(v11 + 16);
  v102 = v11 + 16;
  v103 = v10;
  v101 = v24;
  v24(v18, a1, v10);
  v25 = *(a2 + *(v6 + 32));
  v94 = a1;
  v105 = a1;
  v26 = sub_46D4(sub_5F9C, v104, v25);
  v27 = *(a2 + *(v6 + 36));
  v89 = a2;
  v28 = *a2;
  if (*a2)
  {
    v29 = v26;
    v106 = 0;
    v86 = v27;
    v85 = v28;
    sub_2B44(&qword_1C3F8, &qword_13870);
    sub_12CAC();
    v83 = v108;
    v84 = v109;
    sub_F130(0.0);
    v106 = v30;
    v107 = v31;
    sub_2B44(&qword_1C400, &qword_13AC0);
    sub_12CAC();
    v87 = v109;
    if (qword_1C178 != -1)
    {
      swift_once();
    }

    v32 = sub_1279C();
    sub_32B4(v32, qword_1C2A8);
    v33 = v103;
    v101(v16, v99, v103);
    v34 = sub_1277C();
    v35 = sub_12F6C();
    v36 = os_log_type_enabled(v34, v35);
    v92 = v23;
    v90 = v12;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v108 = v38;
      *v37 = 136315138;
      v39 = sub_1264C();
      v41 = v40;
      v82 = v29;
      v42 = *(v98 + 8);
      v42(v16, v103);
      v43 = sub_114DC(v39, v41, &v108);
      v33 = v103;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_0, v34, v35, "[TimerItemView.init] Initializing for timer with ID %s.", v37, 0xCu);
      sub_64C0(v38);
      v44 = v42;
      v29 = v82;
    }

    else
    {

      v44 = *(v98 + 8);
      v44(v16, v33);
    }

    v46 = v99;
    v45 = v100;
    v101(&v21[*(v100 + 28)], v99, v33);
    v47 = &v21[v45[8]];
    *v47 = 0;
    *(v47 + 1) = 0xE000000000000000;
    *&v21[v45[10]] = v86;
    *&v21[v45[9]] = v85;
    *v21 = v29;
    *(v21 + 1) = 0;
    v48 = v29;

    if (v29)
    {
      [v48 remainingTime];
      v50 = v49;
      [v48 duration];
      *(v21 + 5) = v50 / v51;
      *(v21 + 6) = 0;
      sub_6378(v29);
      v53 = v52;
      v55 = v54;
    }

    else
    {
      v56 = COERCE_DOUBLE(sub_1262C());
      if (v57)
      {
        v58 = 0.0;
      }

      else
      {
        v58 = v56;
      }

      v59 = COERCE_DOUBLE(sub_1269C());
      if (v60)
      {
        v59 = 1.0;
      }

      *(v21 + 5) = v58 / v59;
      *(v21 + 6) = 0;
      v61 = sub_1262C();
      if (v62)
      {

        v53 = 0;
        v55 = 0;
LABEL_18:

        *(v21 + 2) = v53;
        *(v21 + 3) = v55;
        *(v21 + 4) = 0;
        v65 = [objc_opt_self() mainRunLoop];
        sub_5FBC(0, &qword_1C408, NSTimer_ptr);
        v66 = sub_12F9C();
        v67 = v88;
        (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
        v68 = sub_12F8C();
        sub_6004(v67, &qword_1C3F0, &unk_14000);
        v108 = v68;
        sub_12F7C();
        sub_5B30(&qword_1C410, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
        v69 = sub_127BC();

        v108 = v69;
        sub_2B44(&qword_1C418, &qword_13878);
        sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878, &protocol conformance descriptor for Publishers.Autoconnect<A>);
        v70 = sub_127CC();

        v71 = v98;
        v72 = v103;
        v44(v46, v103);

        *&v21[*(v100 + 44)] = v70;
        v73 = v21;
        v74 = v92;
        sub_6064(v73, v92, type metadata accessor for TimerItemView);
        v75 = v91;
        v101(v91, v94, v72);
        v76 = v97;
        sub_6A50(v89, v97, type metadata accessor for TimerSelector);
        v77 = (*(v71 + 80) + 16) & ~*(v71 + 80);
        v78 = (v90 + *(v95 + 80) + v77) & ~*(v95 + 80);
        v79 = swift_allocObject();
        (*(v71 + 32))(v79 + v77, v75, v72);
        sub_6064(v76, v79 + v78, type metadata accessor for TimerSelector);
        sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView, "qS");
        sub_12B3C();

        return sub_631C(v74);
      }

      sub_F130(*&v61);
      v53 = v63;
      v55 = v64;
    }

    goto LABEL_18;
  }

  sub_12E7C();
  sub_5B30(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v81 = v27;
  result = sub_1289C();
  __break(1u);
  return result;
}

uint64_t sub_4624(id *a1)
{
  v1 = [*a1 timerIDString];
  v2 = sub_12ECC();
  v4 = v3;

  if (v2 == sub_1264C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1307C();
  }

  return v7 & 1;
}

void *sub_46D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1302C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1300C();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_47E8(uint64_t a1, id *a2)
{
  result = sub_1265C();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_1266C();
    if (v7)
    {
      v8 = v7;
      if (qword_1C178 != -1)
      {
        swift_once();
      }

      v9 = sub_1279C();
      sub_32B4(v9, qword_1C2A8);

      v10 = sub_1277C();
      v11 = sub_12F6C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_114DC(v5, v6, &v17);
        *(v12 + 12) = 2080;
        v13 = sub_12E8C();
        v15 = sub_114DC(v13, v14, &v17);

        *(v12 + 14) = v15;
        _os_log_impl(&dword_0, v10, v11, "[TimerItemView.componentTapped]: Performing direct invocation with ID = %s, payload = %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      if (!*a2)
      {
        sub_12E7C();
        sub_5B30(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
        result = sub_1289C();
        __break(1u);
        return result;
      }

      v16 = *a2;
      sub_18C8(v8);

      sub_12E6C();
    }
  }

  return result;
}

uint64_t sub_4AC0(uint64_t a1)
{
  v2 = sub_127FC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_128DC();
}

uint64_t sub_4B8C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = type metadata accessor for TimerItemView(0);
  v51 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = v2;
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_12E3C();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 32);
  v74 = *(v1 + 16);
  v75 = v4;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CBC();
  v5 = *(&v71 + 1);
  if (*(&v71 + 1))
  {
    v6 = v71;
  }

  else
  {
    sub_F130(0.0);
  }

  *&v74 = v6;
  *(&v74 + 1) = v5;
  v49 = sub_2D90();
  v7 = sub_12AFC();
  v9 = v8;
  v11 = v10;
  sub_12C1C();
  v12 = sub_12ACC();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_69FC(v7, v9, v11 & 1);

  v76 = &type metadata for Text;
  v77 = &protocol witness table for Text;
  v19 = swift_allocObject();
  *&v74 = v19;
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  *(v19 + 32) = v16 & 1;
  *(v19 + 40) = v18;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v68 = *v58;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  v20 = v65;
  if (v65)
  {
    v21 = [v65 displayTitle];

    v22 = sub_12ECC();
    v24 = v23;
  }

  else
  {
    v25 = sub_1267C();
    if (v26)
    {
      v22 = v25;
      v24 = v26;
    }

    else
    {
      v24 = 0xE500000000000000;
      v22 = 0x72656D6954;
    }
  }

  *&v68 = v22;
  *(&v68 + 1) = v24;
  v27 = sub_12AFC();
  v29 = v28;
  v31 = v30;
  sub_12C1C();
  v32 = sub_12ACC();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_69FC(v27, v29, v31 & 1);

  v69 = &type metadata for Text;
  v70 = &protocol witness table for Text;
  v39 = swift_allocObject();
  *&v68 = v39;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36 & 1;
  *(v39 + 40) = v38;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v40 = v50;
  sub_12E2C();
  v41 = *(v58 + *(v57 + 44));
  v42 = v54;
  sub_6A50(v58, v54, type metadata accessor for TimerItemView);
  v43 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v44 = swift_allocObject();
  sub_6064(v42, v44 + v43, type metadata accessor for TimerItemView);
  v45 = v56;
  (*(v52 + 32))(v56, v40, v55);
  v46 = sub_2B44(&qword_1C508, &qword_138F8);
  *(v45 + *(v46 + 52)) = v41;
  v47 = (v45 + *(v46 + 56));
  *v47 = sub_6BFC;
  v47[1] = v44;
}

uint64_t sub_503C()
{
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v6)
  {

    sub_12CBC();
    sub_6378(v6);
    v1 = v0;
  }

  else
  {
    type metadata accessor for TimerItemView(0);
    v2 = sub_1262C();
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      sub_F130(*&v2);
      v1 = v4;
    }
  }

  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CCC();
  if (sub_5270() != &dword_0 + 1)
  {
    sub_12CBC();
    if (v1)
    {
      [v1 remainingTime];
    }

    else
    {
      type metadata accessor for TimerItemView(0);
      sub_1262C();
    }

    sub_12CBC();
    if (v1)
    {
      [v1 duration];
    }

    else
    {
      type metadata accessor for TimerItemView(0);
      sub_1269C();
    }
  }

  sub_2B44(&qword_1C510, &qword_13900);
  return sub_12CCC();
}

id sub_5270()
{
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v6)
  {
    v0 = [v6 state];
  }

  else
  {
    type metadata accessor for TimerItemView(0);
    sub_1268C();
    v0 = 0;
    if ((v1 & 1) == 0)
    {
      v2 = sub_1276C();
      v4 = 2 * (v2 == 2);
      if (v2 == 1)
      {
        v4 = 3;
      }

      if (v3)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return v0;
}

uint64_t *sub_532C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_53A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1270C();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_5478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1270C();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_5534(uint64_t a1)
{
  sub_29B4(319);
  if (v1 <= 0x3F)
  {
    sub_1270C();
    if (v2 <= 0x3F)
    {
      sub_55F8(319);
      if (v3 <= 0x3F)
      {
        sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_55F8(uint64_t a1)
{
  if (!qword_1C330)
  {
    sub_5FBC(255, &qword_1C2C0, MTTimer_ptr);
    v1 = sub_12F1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C330);
    }
  }
}

unint64_t sub_56C0()
{
  result = qword_1C3A8;
  if (!qword_1C3A8)
  {
    sub_2A8C(&qword_1C380, &qword_137E8);
    sub_2A8C(&qword_1C378, &qword_137E0);
    sub_2BC4(&qword_1C398, &qword_1C378, &qword_137E0, &protocol conformance descriptor for ComponentStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C3B0, &qword_1C3A0, &qword_13828, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3A8);
  }

  return result;
}

uint64_t sub_57E8(uint64_t a1)
{
  v2 = sub_2B44(&qword_1C380, &qword_137E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5850()
{
  v1 = (type metadata accessor for TimerSelector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1270C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5970(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TimerSelector(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_59F4()
{
  result = qword_1C3C0;
  if (!qword_1C3C0)
  {
    sub_2A8C(&qword_1C3B8, &qword_13830);
    type metadata accessor for TimerItemView(255);
    sub_5B30(&qword_1C3C8, type metadata accessor for TimerItemView, "qS");
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C0);
  }

  return result;
}

uint64_t sub_5AF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5B78(uint64_t a1)
{
  v48 = sub_2B44(&qword_1C3E8, &qword_13868);
  v2 = *(v48 - 8);
  v3 = __chkstk_darwin(v48);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v39 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = *(v2 + 80);
    v42 = v11;
    v43 = (v11 + 32) & ~v11;
    v12 = &_swiftEmptyArrayStorage + v43;
    v13 = 0;
    v14 = 0;
    v47 = sub_126AC();
    v15 = *(v47 - 8);
    v16 = *(v15 + 16);
    v45 = v15 + 16;
    v46 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v18 = &_swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v2;
    while (1)
    {
      v20 = v47;
      v21 = *(v48 + 48);
      *v5 = v13;
      v46(&v5[v21], v17, v20);
      result = sub_650C(v5, v8);
      if (v14)
      {
        v10 = v18;
        v19 = __OFSUB__(v14--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v8;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_2B44(&qword_1C428, &qword_13880);
        v26 = *(v2 + 72);
        v27 = v43;
        v10 = swift_allocObject();
        result = j__malloc_size(v10);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if (result - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v10[2] = v25;
        v10[3] = 2 * (v28 / v26);
        v31 = v10 + v27;
        v32 = v18[3] >> 1;
        v33 = v32 * v26;
        if (v18[2])
        {
          if (v10 < v18 || v31 >= v18 + v43 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v8 = v23;
        v9 = v40;
        v2 = v41;
        v19 = __OFSUB__(v35, 1);
        v14 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_650C(v8, v12);
      v12 += *(v2 + 72);
      v17 += v44;
      v18 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v36 = v10[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v14);
    v38 = v37 - v14;
    if (v19)
    {
      goto LABEL_36;
    }

    v10[2] = v38;
  }

  return v10;
}

uint64_t sub_5E74@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimerSelector(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_3C48(a1, v6, a2);
}

uint64_t sub_5EFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F34(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_2B44(&qword_1C3E8, &qword_13868);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_5FBC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_6004(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B44(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_60CC()
{
  v1 = sub_126AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for TimerSelector(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_1270C();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_6250()
{
  v1 = *(sub_126AC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for TimerSelector(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_47E8(v0 + v2, v5);
}

uint64_t sub_631C(uint64_t a1)
{
  v2 = type metadata accessor for TimerItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_6378(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 state];
    v3 = 0.0;
    if (v2 != &dword_0 + 1)
    {
      [v1 remainingTime];
    }

    sub_F130(v3);
  }

  else
  {
    if (qword_1C178 != -1)
    {
      swift_once();
    }

    v4 = sub_1279C();
    sub_32B4(v4, qword_1C2A8);
    v5 = sub_1277C();
    v6 = sub_12F5C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "TimerItemView: MTTimer missing in call for durationString(for:)", v7, 2u);
    }

    sub_F130(0.0);
  }
}

uint64_t sub_64C0(void *a1)
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

uint64_t sub_650C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C3E8, &qword_13868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_666C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_672C(uint64_t a1)
{
  sub_6870(319, &qword_1C498, &qword_1C3F8, &qword_13870);
  if (v1 <= 0x3F)
  {
    sub_6870(319, &qword_1C4A0, &qword_1C400, &qword_13AC0);
    if (v2 <= 0x3F)
    {
      sub_68C4();
      if (v3 <= 0x3F)
      {
        sub_126AC();
        if (v4 <= 0x3F)
        {
          sub_12E7C();
          if (v5 <= 0x3F)
          {
            sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
            if (v6 <= 0x3F)
            {
              sub_6914(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_6870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2A8C(a3, a4);
    v5 = sub_12CEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_68C4()
{
  if (!qword_1C4A8)
  {
    v0 = sub_12CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4A8);
    }
  }
}

void sub_6914(uint64_t a1)
{
  if (!qword_1C4B0)
  {
    sub_1250C();
    v1 = sub_127AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C4B0);
    }
  }
}

uint64_t sub_697C()
{
  sub_2A8C(&qword_1C380, &qword_137E8);
  sub_56C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_69FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_6A0C()
{
  sub_69FC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_6AB8()
{
  v1 = (type metadata accessor for TimerItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_126AC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6CB0()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C520);
  sub_32B4(v0, qword_1C520);
  return sub_1278C();
}

uint64_t sub_6D28()
{
  result = sub_12C1C();
  qword_1C538 = result;
  return result;
}

uint64_t sub_6D48()
{
  v0 = [objc_opt_self() systemGray2Color];
  result = sub_12BCC();
  qword_1C540 = result;
  return result;
}

__n128 sub_6D88(uint64_t a1, uint64_t a2)
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

uint64_t sub_6D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_6DE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v77 = sub_1286C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2B44(&qword_1C550, &qword_139E0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - v4;
  v5 = sub_2B44(&qword_1C558, &qword_139E8);
  v81 = *(v5 - 8);
  __chkstk_darwin(v5);
  v75 = &v70 - v6;
  v7 = sub_2B44(&qword_1C560, &qword_139F0);
  v8 = __chkstk_darwin(v7 - 8);
  v88 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v70 - v10;
  v12 = sub_2B44(&qword_1C568, &qword_139F8);
  v13 = __chkstk_darwin(v12);
  v86 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  if (qword_1C190 != -1)
  {
    swift_once();
  }

  v82 = v5;
  v87 = v11;
  v92 = qword_1C540;

  sub_1280C();
  v17 = v110;
  v83 = v111;
  v91 = v112;
  v18 = v113;
  v90 = v114;
  v19 = v115;
  v85 = sub_12D4C();
  v84 = v20;
  v21 = *(a1 + 40);
  if (qword_1C188 != -1)
  {
    swift_once();
  }

  v22 = qword_1C538;
  v79 = *(a1 + 48);
  swift_retain_n();
  *&v93 = sub_12C1C();
  sub_12CAC();
  v78 = v98;
  v23 = v99;
  sub_12E7C();
  sub_9118(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v24 = sub_128AC();
  v26 = v25;
  KeyPath = swift_getKeyPath();
  v28 = a1;
  v29 = &v16[*(v12 + 36)];
  v30 = *(sub_2B44(&qword_1C570, &qword_13A30) + 28);
  v31 = enum case for LayoutDirection.leftToRight(_:);
  v32 = sub_1284C();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = KeyPath;
  *v16 = v21;
  *(v16 + 1) = 0x4008000000000000;
  *(v16 + 2) = v22;
  v80 = v22;
  v16[24] = v79;
  *(v16 + 4) = v78;
  *(v16 + 5) = v23;
  *(v16 + 6) = v24;
  *(v16 + 7) = v26;
  if (sub_7A64())
  {
    v33 = 1;
    v34 = v87;
    v35 = v82;
  }

  else
  {
    v36 = swift_allocObject();
    v37 = v28[1];
    v36[1] = *v28;
    v36[2] = v37;
    v38 = v28[3];
    v36[3] = v28[2];
    v36[4] = v38;
    __chkstk_darwin(v36);
    *(&v70 - 2) = v28;
    sub_89C4(v28, &v98);
    sub_2B44(&qword_1C578, &qword_13A38);
    *&v39 = COERCE_DOUBLE(sub_2A8C(&qword_1C580, &qword_13A40));
    *&v40 = COERCE_DOUBLE(sub_2A8C(&qword_1C588, &qword_13A48));
    v41 = sub_89FC();
    v42 = sub_2BC4(&qword_1C5B8, &qword_1C588, &qword_13A48, &protocol conformance descriptor for PartialRangeThrough<A>);
    v98 = *&v39;
    v99 = *&v40;
    v100 = v41;
    v101 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v71;
    sub_12CFC();
    v44 = v74;
    sub_1285C();
    sub_2BC4(&qword_1C5C0, &qword_1C550, &qword_139E0, &protocol conformance descriptor for Button<A>);
    sub_9118(&qword_1C5C8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v45 = v75;
    v46 = v73;
    v47 = v77;
    sub_12B8C();
    (*(v76 + 8))(v44, v47);
    (*(v72 + 8))(v43, v46);
    *(v45 + *(sub_2B44(&qword_1C5D0, &qword_13A60) + 36)) = 0;
    v35 = v82;
    v48 = (v45 + *(v82 + 36));
    v49 = *(sub_1287C() + 20);
    v50 = enum case for RoundedCornerStyle.continuous(_:);
    v51 = sub_1297C();
    (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
    __asm { FMOV            V0.2D, #25.0 }

    *v48 = _Q0;
    *&v48[*(sub_2B44(&qword_1C5D8, &qword_13A68) + 36)] = 256;
    v34 = v87;
    sub_8B40(v45, v87);
    v33 = 0;
  }

  (*(v81 + 56))(v34, v33, 1, v35);
  v57 = v86;
  sub_8BB0(v16, v86, &qword_1C568, &qword_139F8);
  v58 = v88;
  sub_8BB0(v34, v88, &qword_1C560, &qword_139F0);
  *&v93 = v17 * 0.5;
  *(&v93 + 1) = v17;
  v59 = v83;
  *&v94 = __PAIR64__(v91, v83);
  v87 = v16;
  *(&v94 + 1) = v18;
  *&v95 = v90;
  *(&v95 + 1) = v19;
  *&v96 = v92;
  WORD4(v96) = 256;
  HIWORD(v96) = v117;
  *(&v96 + 10) = v116;
  v60 = v85;
  *&v97 = v85;
  v61 = v84;
  *(&v97 + 1) = v84;
  v62 = v93;
  v63 = v94;
  v64 = v97;
  v65 = v89;
  v66 = v95;
  *(v89 + 48) = v96;
  *(v65 + 64) = v64;
  *(v65 + 16) = v63;
  *(v65 + 32) = v66;
  *v65 = v62;
  *(v65 + 80) = v21;
  v67 = v80;
  *(v65 + 88) = 0x4008000000000000;
  *(v65 + 96) = v67;
  *(v65 + 104) = 256;
  v68 = sub_2B44(&qword_1C5E0, &qword_13A70);
  sub_8BB0(v57, v65 + *(v68 + 64), &qword_1C568, &qword_139F8);
  sub_8BB0(v58, v65 + *(v68 + 80), &qword_1C560, &qword_139F0);
  sub_8BB0(&v93, &v98, &qword_1C5E8, &qword_13A78);

  sub_6004(v34, &qword_1C560, &qword_139F0);
  sub_6004(v87, &qword_1C568, &qword_139F8);
  sub_6004(v58, &qword_1C560, &qword_139F0);
  sub_6004(v57, &qword_1C568, &qword_139F8);

  v98 = v17 * 0.5;
  v99 = v17;
  v100 = __PAIR64__(v91, v59);
  v101 = v18;
  v102 = v90;
  v103 = v19;
  v104 = v92;
  v105 = 256;
  v106 = v116;
  v107 = v117;
  v108 = v60;
  v109 = v61;
  return sub_6004(&v98, &qword_1C5E8, &qword_13A78);
}

uint64_t sub_799C(uint64_t a1)
{
  v2 = sub_1284C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1291C();
}

BOOL sub_7A64()
{
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  if (v4)
  {
    [v4 remainingTime];
    v1 = v0;

    if (v1 == 0.0)
    {
      return 1;
    }
  }

  sub_12D1C();
  if (!v4)
  {
    return 0;
  }

  v3 = [v4 state];

  return v3 == &dword_0 + 1;
}

void sub_7B50()
{
  v1 = v0;
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v2 = sub_1279C();
  sub_32B4(v2, qword_1C520);
  sub_89C4(v0, &aBlock);
  v3 = sub_1277C();
  v4 = sub_12F6C();
  sub_9160(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43[0] = v6;
    *v5 = 136315138;
    aBlock = *v0;
    v45 = *(v0 + 16);
    sub_2B44(&qword_1C5F0, &qword_13A80);
    sub_12D1C();
    v7 = v50[0];
    if (v50[0])
    {
      v8 = [v50[0] timerIDString];

      v7 = sub_12ECC();
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *&aBlock = v7;
    *(&aBlock + 1) = v10;
    sub_2B44(&qword_1C400, &qword_13AC0);
    v11 = sub_12EEC();
    v13 = sub_114DC(v11, v12, v43);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "[TimerProgressView.onButtonTap] Button tap detected for timer %s", v5, 0xCu);
    sub_64C0(v6);
  }

  v15 = *v1;
  v14 = *(v1 + 8);
  v16 = *(v1 + 16);
  v49 = v16;
  v50[0] = v15;
  v43[0] = v15;
  v43[1] = v14;
  v43[2] = v16;

  sub_9190(v50, &v42);
  sub_8BB0(&v49, &v42, &qword_1C3F8, &qword_13870);
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  v17 = v42;
  if (v42 && ([v42 mutableCopy], v17, sub_12FCC(), swift_unknownObjectRelease(), sub_91EC(), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v43[0];
    v19 = [v43[0] state];
    if (v19 == &dword_0 + 2)
    {
      [v18 setState:3];
    }

    else if (v19 == &dword_0 + 3)
    {
      [v18 setState:2];
    }

    else
    {
      v23 = sub_1277C();
      v24 = sub_12F6C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "[TimerProgressView.onButtonTap] Timer is in Stopped or Unknown state, so it must be firing! Taking no action.", v25, 2u);
      }
    }

    v26 = v18;
    v27 = sub_1277C();
    v28 = sub_12F5C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v29 = 136315138;
      v43[0] = [v26 state];
      type metadata accessor for MTTimerState(0);
      v30 = sub_12EEC();
      v32 = sub_114DC(v30, v31, &aBlock);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_0, v27, v28, "[TimerProgressView.onButtonTap] Updating timer to new state: %s", v29, 0xCu);
      sub_64C0(v41);
    }

    v33 = [*(v1 + 32) updateTimer:v26];
    if (v33)
    {
      v34 = v33;
      v47 = sub_85FC;
      v48 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v45 = sub_86E4;
      v46 = &unk_19470;
      v35 = _Block_copy(&aBlock);
      v36 = [v34 addSuccessBlock:v35];
      _Block_release(v35);

      v47 = sub_86EC;
      v48 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v45 = sub_8840;
      v46 = &unk_19498;
      v37 = _Block_copy(&aBlock);
      v38 = [v34 addFailureBlock:v37];
      _Block_release(v37);
    }

    else
    {
      v38 = sub_1277C();
      v39 = sub_12F5C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "[TimerProgressView.onButtonTap] No timerUpdateFuture created. Unclear if timer got updated!", v40, 2u);
      }
    }

    *&aBlock = v15;
    *(&aBlock + 1) = v14;
    v45 = v16;
    v43[0] = v26;
    sub_12D2C();
    sub_9238(v50);

    sub_6004(&v49, &qword_1C3F8, &qword_13870);
  }

  else
  {
    sub_9238(v50);

    sub_6004(&v49, &qword_1C3F8, &qword_13870);
    v20 = sub_1277C();
    v21 = sub_12F5C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "[TimerProgressView.onButtonTap] Failed to get mutable timer from MT - Cannot update timer!", v22, 2u);
    }
  }
}

uint64_t sub_8290(__int128 *a1)
{
  v2 = sub_2B44(&qword_1C588, &qword_13A48);
  __chkstk_darwin(v2);
  v4 = &v12 - v3;
  v22 = *a1;
  *&v23 = *(a1 + 2);
  sub_2B44(&qword_1C5F0, &qword_13A80);
  sub_12D1C();
  v5 = v13;
  if (v13)
  {
    [v13 state];
  }

  v6 = sub_12C3C();
  if (qword_1C188 != -1)
  {
    swift_once();
  }

  v7 = qword_1C538;
  KeyPath = swift_getKeyPath();

  sub_12D4C();
  sub_1288C();
  *&v13 = v6;
  *(&v13 + 1) = KeyPath;
  *&v14 = v7;
  v9 = enum case for DynamicTypeSize.accessibility3(_:);
  v10 = sub_1283C();
  (*(*(v10 - 8) + 104))(v4, v9, v10);
  sub_9118(&qword_1C5F8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_12EAC();
  if (result)
  {
    sub_2B44(&qword_1C580, &qword_13A40);
    sub_89FC();
    sub_2BC4(&qword_1C5B8, &qword_1C588, &qword_13A48, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_12BBC();
    sub_6004(v4, &qword_1C588, &qword_13A48);
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v22 = v13;
    v23 = v14;
    return sub_6004(&v22, &qword_1C580, &qword_13A40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_85FC()
{
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v0 = sub_1279C();
  sub_32B4(v0, qword_1C520);
  oslog = sub_1277C();
  v1 = sub_12F6C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "[TimerProgressView.onButtonTap] timerUpdateFuture success block called.", v2, 2u);
  }
}

void sub_86EC(uint64_t a1)
{
  if (qword_1C180 != -1)
  {
    swift_once();
  }

  v1 = sub_1279C();
  sub_32B4(v1, qword_1C520);
  swift_errorRetain();
  oslog = sub_1277C();
  v2 = sub_12F5C();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_124CC();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, oslog, v2, "[TimerProgressView.onButtonTap] timerUpdateFuture failure block called with error: %@", v3, 0xCu);
    sub_6004(v4, &qword_1C608, &qword_13AC8);
  }
}

void sub_8848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_88B4@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v9[0] = *v2;
  v9[1] = v4;
  v5 = v2[3];
  v9[2] = v2[2];
  v9[3] = v5;
  *a2 = sub_12D4C();
  a2[1] = v6;
  v7 = sub_2B44(&qword_1C548, &qword_139D8);
  return sub_6E60(v9, a2 + *(v7 + 44));
}

uint64_t sub_8940()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_89FC()
{
  result = qword_1C590;
  if (!qword_1C590)
  {
    sub_2A8C(&qword_1C580, &qword_13A40);
    sub_8A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C590);
  }

  return result;
}

unint64_t sub_8A88()
{
  result = qword_1C598;
  if (!qword_1C598)
  {
    sub_2A8C(&qword_1C5A0, &qword_13A50);
    sub_2BC4(&qword_1C5A8, &qword_1C5B0, &qword_13A58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C598);
  }

  return result;
}

uint64_t sub_8B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C558, &qword_139E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B44(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_8C18(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1282C();
  v6 = v5 * 0.5;
  v7 = v4 * 0.5;
  if (v4 * 0.5 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4 * 0.5;
  }

  v9 = v1[1];
  v10 = v7 - v8;
  v11 = sub_12C1C();
  v12 = *v2 * 3.14159265 + *v2 * 3.14159265;
  sub_12D6C();
  *a1 = v9;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 - v9 * 0.5;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 256;
  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = v6;
  *(a1 + 72) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
}

uint64_t sub_8CD0@<X0>(void (**a1)(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_959C;
  a1[1] = v5;
  return sub_95C0(v10, &v9);
}

double sub_8D4C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_12AAC();
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMidX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMidY(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0x3FF0000000000000;
  v27 = 0;
  v28 = 0;
  sub_12A9C();
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  sub_1280C();
  sub_12A8C();
  sub_95F8(v17);
  sub_964C(v21);
  result = *&v18;
  v13 = v19;
  *a1 = v18;
  *(a1 + 16) = v13;
  *(a1 + 32) = v20;
  return result;
}

double sub_8EEC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_8D4C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

__n128 sub_8F54@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_8F60(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_8F6C(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_8F98;
}

__n128 sub_8F98(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

uint64_t sub_8FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_96A0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_9010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_96A0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_9074(uint64_t a1)
{
  v2 = sub_96A0();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_90C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_128EC();
  *a1 = result;
  return result;
}

uint64_t sub_9118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_91EC()
{
  result = qword_1C600;
  if (!qword_1C600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C600);
  }

  return result;
}

double sub_928C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_92A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_92EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for RingArc(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RingArc(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RingArc(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_9484()
{
  result = qword_1C640;
  if (!qword_1C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C640);
  }

  return result;
}

unint64_t sub_94DC()
{
  result = qword_1C648;
  if (!qword_1C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C648);
  }

  return result;
}

uint64_t sub_954C()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_96A0()
{
  result = qword_1C650;
  if (!qword_1C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C650);
  }

  return result;
}

Swift::Int sub_9754()
{
  v1 = *v0;
  sub_130CC();
  sub_130DC(v1);
  return sub_130EC();
}

Swift::Int sub_97C8(uint64_t a1)
{
  v2 = *v1;
  sub_130CC();
  sub_130DC(v2);
  return sub_130EC();
}

uint64_t sub_981C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_98C0(uint64_t a1, void *a2)
{
  v10._object = a2;
  v10._countAndFlagsBits = a1;
  v3 = *v2;
  v4._rawValue = &off_19178;
  if (sub_1304C(v4, v10))
  {
    sub_99E0();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  else
  {
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);

    sub_11CA0(v8, v7, v9);
    sub_9A34();
    return sub_12D0C();
  }
}

uint64_t sub_996C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000015;
  *(result + 24) = 0x8000000000014230;
  *a1 = result;
  return result;
}

unint64_t sub_99E0()
{
  result = qword_1C710;
  if (!qword_1C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C710);
  }

  return result;
}

unint64_t sub_9A34()
{
  result = qword_1C718;
  if (!qword_1C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C718);
  }

  return result;
}

uint64_t sub_9A88(uint64_t a1)
{
  v48 = a1;
  v45 = type metadata accessor for TimerConfirmation(0);
  __chkstk_darwin(v45);
  v43 = (&v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_1275C();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TimerSelector(0);
  __chkstk_darwin(v40);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1270C();
  v37 = *(v39 - 8);
  v4 = __chkstk_darwin(v39);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v35 - v7;
  v46 = type metadata accessor for TimerSnippet(0);
  __chkstk_darwin(v46);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_126DC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_126BC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v48, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for SiriTimePluginModel.timerMulti(_:))
  {
    (*(v18 + 96))(v20, v17);
    (*(v11 + 32))(v16, v20, v10);
    (*(v11 + 16))(v14, v16, v10);
    v23 = *(v47 + 16);
    v22 = *(v47 + 24);

    sub_A408(v14, v23, v22, v9);
    sub_A194(&qword_1C730, type metadata accessor for TimerSnippet, &unk_13DEC);
    v24 = sub_12B0C();
    sub_A1DC(v9, type metadata accessor for TimerSnippet);
    (*(v11 + 8))(v16, v10);
    return v24;
  }

  if (v21 == enum case for SiriTimePluginModel.timerSelector(_:))
  {
    (*(v18 + 96))(v20, v17);
    v26 = v36;
    v25 = v37;
    v27 = v39;
    (*(v37 + 32))(v36, v20, v39);
    (*(v25 + 16))(v6, v26, v27);
    v28 = v38;
    sub_2F7C(v6, v38);
    sub_A194(&qword_1C728, type metadata accessor for TimerSelector, &unk_13784);
    v24 = sub_12B0C();
    sub_A1DC(v28, type metadata accessor for TimerSelector);
    (*(v25 + 8))(v26, v27);
    return v24;
  }

  if (v21 == enum case for SiriTimePluginModel.timerConfirmation(_:))
  {
    (*(v18 + 96))(v20, v17);
    v30 = v41;
    v29 = v42;
    v31 = v44;
    (*(v42 + 32))(v41, v20, v44);
    v32 = v43;
    (*(v29 + 16))(v43 + *(v45 + 20), v30, v31);
    sub_12E7C();
    sub_A194(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v32 = sub_128AC();
    v32[1] = v33;
    sub_A194(&qword_1C720, type metadata accessor for TimerConfirmation, &protocol conformance descriptor for TimerConfirmation);
    v24 = sub_12B0C();
    sub_A1DC(v32, type metadata accessor for TimerConfirmation);
    (*(v29 + 8))(v30, v31);
    return v24;
  }

  result = sub_1306C();
  __break(1u);
  return result;
}

uint64_t sub_A194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A1DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimerUIPlugin.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerUIPlugin.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_A3B0()
{
  result = qword_1C738;
  if (!qword_1C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C738);
  }

  return result;
}

uint64_t sub_A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_12E7C();
  sub_E34C(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *a4 = sub_128AC();
  *(a4 + 1) = v8;
  v9 = type metadata accessor for TimerSnippet(0);
  v10 = v9[8];
  v11 = [objc_allocWithZone(MTTimerManager) init];
  *&a4[v10] = v11;
  v12 = v11;
  v13 = *(sub_126CC() + 16);

  if (qword_1C198 != -1)
  {
    swift_once();
  }

  v14 = sub_1279C();
  sub_32B4(v14, qword_1C740);
  v15 = sub_1277C();
  v16 = sub_12F6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_0, v15, v16, "[TimerSnippet.init] Initializing for %ld timers.", v17, 0xCu);
  }

  v18 = v9[5];
  v19 = sub_126DC();
  v25 = *(v19 - 8);
  (*(v25 + 16))(&a4[v18], a1, v19);
  v20 = &a4[v9[6]];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = [v12 timersSync];

  if (v21)
  {
    sub_5FBC(0, &qword_1C2C0, MTTimer_ptr);
    v22 = sub_12F0C();
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
  }

  *&a4[v9[7]] = v22;
  sub_A744(v13);
  v23 = *(v25 + 8);

  return v23(a1, v19);
}

uint64_t sub_A6CC()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C740);
  sub_32B4(v0, qword_1C740);
  return sub_1278C();
}

void sub_A744(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for TimerSnippet(0) + 28));
  if (v3 >> 62)
  {
    v4 = sub_1302C();
    if (v4 == a1)
    {
      return;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4 == a1)
    {
      return;
    }
  }

  if (qword_1C198 != -1)
  {
    swift_once();
  }

  v5 = sub_1279C();
  sub_32B4(v5, qword_1C740);
  oslog = sub_1277C();
  v6 = sub_12F5C();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v4;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&dword_0, oslog, v6, "[TimerSnippet.init] timerManager %ld timers != %ld", v7, 0x16u);
  }
}

uint64_t sub_A8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v75 = sub_2B44(&qword_1C7F8, &qword_13E40);
  __chkstk_darwin(v75);
  v69 = &v58 - v3;
  v65 = sub_12DDC();
  v67 = *(v65 - 8);
  v4 = __chkstk_darwin(v65);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v58 - v6;
  v73 = sub_2B44(&qword_1C800, &qword_13E48);
  __chkstk_darwin(v73);
  v74 = &v58 - v7;
  v8 = sub_12E4C();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B44(&qword_1C370, &qword_137D8);
  __chkstk_darwin(v10 - 8);
  v12 = (&v58 - v11);
  v13 = type metadata accessor for TimerSnippet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v70 = sub_2B44(&qword_1C808, &qword_13E50);
  v68 = *(v70 - 8);
  v16 = __chkstk_darwin(v70);
  v59 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v71 = sub_2B44(&qword_1C810, &qword_13E58);
  __chkstk_darwin(v71);
  v21 = &v58 - v20;
  v72 = sub_2B44(&qword_1C818, &qword_13E60);
  v61 = *(v72 - 8);
  __chkstk_darwin(v72);
  v23 = &v58 - v22;
  if (sub_125DC())
  {
    sub_ECE0(v2, &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
    v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v25 = swift_allocObject();
    sub_E770(&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for TimerSnippet);
    sub_2B44(&qword_1C820, &qword_13E68);
    sub_E248();
    sub_12D8C();
    *v12 = sub_12BEC();
    v26 = enum case for HostBackground.color(_:);
    v27 = sub_12D9C();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v12, v26, v27);
    (*(v28 + 56))(v12, 0, 1, v27);
    sub_2BC4(&qword_1C848, &qword_1C808, &qword_13E50, &protocol conformance descriptor for ComponentStack<A>);
    v29 = v70;
    sub_12B4C();
    sub_6004(v12, &qword_1C370, &qword_137D8);
    (*(v68 + 8))(v19, v29);
    KeyPath = swift_getKeyPath();
    v31 = v71;
    v32 = &v21[*(v71 + 36)];
    v33 = *(sub_2B44(&qword_1C3A0, &qword_13828) + 28);
    v34 = enum case for ColorScheme.dark(_:);
    v35 = sub_127FC();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = KeyPath;
    v37 = v62;
    v36 = v63;
    v38 = v64;
    (*(v63 + 104))(v62, enum case for ComponentStackBottomSpacing.none(_:), v64);
    v39 = sub_E404();
    sub_12B5C();
    (*(v36 + 8))(v37, v38);
    sub_6004(v21, &qword_1C810, &qword_13E58);
    v40 = v61;
    v41 = v72;
    (*(v61 + 16))(v74, v23, v72);
    swift_storeEnumTagMultiPayload();
    v77 = v31;
    v78 = v39;
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40, &protocol conformance descriptor for TupleView<A>);
    sub_129AC();
    return (*(v40 + 8))(v23, v41);
  }

  else
  {

    v43 = v66;
    sub_12DEC();
    sub_ECE0(v2, &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
    v44 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v45 = swift_allocObject();
    sub_E770(&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for TimerSnippet);
    sub_2B44(&qword_1C820, &qword_13E68);
    sub_E248();
    v46 = v19;
    v58 = v19;
    sub_12D8C();
    v47 = *(v67 + 16);
    v48 = v60;
    v49 = v65;
    v47(v60, v43, v65);
    v50 = v68;
    v51 = *(v68 + 16);
    v52 = v59;
    v53 = v70;
    v51(v59, v46, v70);
    v47(v69, v48, v49);
    v54 = sub_2B44(&qword_1C838, &qword_13E70);
    v55 = v69;
    v51(&v69[*(v54 + 48)], v52, v53);
    v68 = *(v50 + 8);
    (v68)(v52, v53);
    v56 = *(v67 + 8);
    v56(v48, v49);
    sub_E394(v55, v74);
    swift_storeEnumTagMultiPayload();
    v57 = sub_E404();
    v77 = v71;
    v78 = v57;
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40, &protocol conformance descriptor for TupleView<A>);
    sub_129AC();
    sub_6004(v55, &qword_1C7F8, &qword_13E40);
    (v68)(v58, v53);
    return (v56)(v66, v49);
  }
}

uint64_t sub_B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a5;
  v7 = type metadata accessor for TimerSnippet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_126CC();
  v11 = sub_5B78(v10);

  v18[3] = v11;
  swift_getKeyPath();
  sub_ECE0(a1, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerSnippet);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_E770(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TimerSnippet);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = v13;
  sub_2B44(&qword_1C3D0, &qword_13858);
  sub_2B44(&qword_1C858, &qword_13EC8);
  sub_2BC4(&qword_1C3E0, &qword_1C3D0, &qword_13858, &protocol conformance descriptor for [A]);
  v15 = type metadata accessor for TimerView(255);
  v16 = sub_E34C(&qword_1C830, type metadata accessor for TimerView, "!M");
  v18[1] = v15;
  v18[2] = v16;
  swift_getOpaqueTypeConformance2();
  return sub_12D3C();
}

uint64_t sub_B570@<X0>(char *a1@<X1>, void **a2@<X2>, uint64_t (*a3)(id *)@<X3>, uint64_t a4@<X8>)
{
  v89 = a4;
  v7 = sub_125EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B44(&qword_1C3F0, &unk_14000);
  __chkstk_darwin(v10 - 8);
  v88 = &v78 - v11;
  v12 = sub_126AC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v78 - v17;
  v91 = type metadata accessor for TimerView(0);
  v19 = __chkstk_darwin(v91);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v90 = &v78 - v22;
  v95 = v13;
  v96 = v18;
  v23 = *(v13 + 16);
  v97 = v12;
  v94 = v23;
  v23(v18, a1, v12);
  v24 = type metadata accessor for TimerSnippet(0);
  v25 = *(a2 + v24[7]);
  v99 = a1;
  v86 = sub_46D4(a3, v98, v25);
  v26 = *(a2 + v24[8]);
  v27 = (a2 + v24[6]);
  v28 = v27[1];
  v29 = *a2;
  if (*a2)
  {
    v93 = v8;
    v83 = *v27;
    v100 = 0;
    v82 = v26;

    v81 = v29;
    sub_2B44(&qword_1C3F8, &qword_13870);
    sub_12CAC();
    v79 = v102;
    v80 = v103;
    sub_F130(0.0);
    v100 = v30;
    v101 = v31;
    sub_2B44(&qword_1C400, &qword_13AC0);
    sub_12CAC();
    v85 = v103;
    v87 = v104;
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v84 = v28;
    v32 = sub_1279C();
    sub_32B4(v32, qword_1C740);
    v34 = v96;
    v33 = v97;
    v94(v16, v96, v97);
    v35 = sub_1277C();
    v36 = sub_12F6C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v7;
      v39 = v38;
      v102 = v38;
      *v37 = 136315138;
      v40 = sub_1264C();
      v42 = v41;
      v43 = *(v95 + 8);
      v43(v16, v97);
      v44 = sub_114DC(v40, v42, &v102);
      v45 = v43;
      v34 = v96;

      *(v37 + 4) = v44;
      _os_log_impl(&dword_0, v35, v36, "[TimerSnippet.init] Initializing for timer with ID %s.", v37, 0xCu);
      sub_64C0(v39);
      v7 = v78;

      v33 = v97;
    }

    else
    {

      v45 = *(v95 + 8);
      v45(v16, v33);
    }

    v46 = v86;
    v47 = v91;
    v94(&v21[*(v91 + 28)], v34, v33);
    v48 = &v21[v47[8]];
    v49 = v84;
    *v48 = v83;
    *(v48 + 1) = v49;
    *&v21[v47[10]] = v82;
    *&v21[v47[9]] = v81;
    *v21 = v46;
    *(v21 + 1) = 0;
    v50 = v46;

    v51 = v93;
    if (v46)
    {
      [v50 remainingTime];
      v53 = v52;
      [v50 duration];
      *(v21 + 5) = v53 / v54;
      *(v21 + 6) = 0;
      sub_E834(v46);
      v56 = v55;
      v58 = v57;
    }

    else
    {
      v59 = COERCE_DOUBLE(sub_1262C());
      if (v60)
      {
        v61 = 0.0;
      }

      else
      {
        v61 = v59;
      }

      v62 = COERCE_DOUBLE(sub_1269C());
      if (v63)
      {
        v62 = 1.0;
      }

      *(v21 + 5) = v61 / v62;
      *(v21 + 6) = 0;
      v64 = sub_1262C();
      if (v65)
      {

        v56 = 0;
        v58 = 0;
LABEL_18:

        *(v21 + 2) = v56;
        *(v21 + 3) = v58;
        *(v21 + 4) = 0;
        v68 = [objc_opt_self() mainRunLoop];
        sub_5FBC(0, &qword_1C408, NSTimer_ptr);
        v69 = sub_12F9C();
        v70 = v88;
        (*(*(v69 - 8) + 56))(v88, 1, 1, v69);
        v71 = sub_12F8C();
        sub_6004(v70, &qword_1C3F0, &unk_14000);
        v102 = v71;
        sub_12F7C();
        sub_E34C(&qword_1C410, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
        v72 = sub_127BC();

        v102 = v72;
        sub_2B44(&qword_1C418, &qword_13878);
        sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878, &protocol conformance descriptor for Publishers.Autoconnect<A>);
        v73 = sub_127CC();

        v45(v96, v97);

        *&v21[v47[11]] = v73;
        v74 = v90;
        sub_E770(v21, v90, type metadata accessor for TimerView);
        v75 = v92;
        (*(v51 + 104))(v92, enum case for SeparatorStyle.edgeToEdge(_:), v7);
        sub_E34C(&qword_1C830, type metadata accessor for TimerView, "!M");
        sub_12B2C();
        (*(v51 + 8))(v75, v7);
        return sub_E7D8(v74);
      }

      sub_F130(*&v64);
      v56 = v66;
      v58 = v67;
    }

    goto LABEL_18;
  }

  sub_12E7C();
  sub_E34C(&qword_1C1B8, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  v77 = v26;

  result = sub_1289C();
  __break(1u);
  return result;
}

uint64_t sub_BEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v3 = type metadata accessor for TimerView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2B44(&qword_1C918, &qword_13F38);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  *v9 = sub_1296C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_2B44(&qword_1C920, &qword_13F40);
  sub_C128(v2, &v9[*(v10 + 44)]);
  v11 = *(v2 + *(v4 + 52));
  sub_ECE0(v2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_E770(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TimerView);
  v14 = sub_2B44(&qword_1C928, &qword_13F48);
  *&v9[*(v14 + 52)] = v11;
  v15 = &v9[*(v14 + 56)];
  *v15 = sub_ED4C;
  v15[1] = v13;
  v9[*(v7 + 36)] = 0;
  sub_ECE0(v2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimerView);
  v16 = swift_allocObject();
  sub_E770(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12, type metadata accessor for TimerView);
  sub_EF48();

  sub_12B9C();

  return sub_6004(v9, &qword_1C918, &qword_13F38);
}

uint64_t sub_C128@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_12E3C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B44(&qword_1C968, &qword_13F68);
  __chkstk_darwin(v7);
  v9 = &v106 - v8;
  v10 = sub_2B44(&qword_1C970, &qword_13F70);
  v11 = __chkstk_darwin(v10 - 8);
  v116 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v106 - v13;
  v15 = sub_125DC();
  v117 = v14;
  if (v15)
  {
    v16 = sub_1299C();
    LOBYTE(v136) = 1;
    sub_CDC0(a1, &v122);
    *&v121[7] = v122;
    *&v121[23] = v123;
    *&v121[39] = v124;
    *&v121[55] = v125;
    v17 = v136;
    v18 = sub_129EC();
    *v126 = v16;
    v126[16] = v17;
    *&v126[17] = *v121;
    *&v126[80] = *&v121[63];
    *&v126[65] = *&v121[48];
    *&v126[33] = *&v121[16];
    *&v126[49] = *&v121[32];
    v126[88] = v18;
    memset(&v126[96], 0, 32);
    v142 = 0u;
    v143 = 0u;
    v138 = *&v126[32];
    v139 = *&v126[48];
    v140 = *&v126[64];
    v141 = *&v126[80];
    v136 = v16;
    v137 = *&v126[16];
    v133 = 0u;
    v134 = 0u;
    v129 = *&v126[32];
    v130 = *&v126[48];
    v131 = *&v126[64];
    v132 = *&v126[80];
    v127 = v16;
    v128 = *&v126[16];
    v151 = 0u;
    v152 = 0u;
    v147 = *&v126[32];
    v148 = *&v126[48];
    v149 = *&v126[64];
    v150 = *&v126[80];
    v126[128] = 1;
    LOBYTE(v144[0]) = 1;
    v135 = 1;
    LOBYTE(v153) = 1;
    v145 = v16;
    v146 = *&v126[16];
    v120 = 1;
    sub_8BB0(v126, v118, &qword_1C9A0, &qword_13F90);
    sub_8BB0(&v127, v118, &qword_1C9A0, &qword_13F90);
    sub_6004(&v136, &qword_1C9A0, &qword_13F90);
    v19 = v152;
    *(v9 + 6) = v151;
    *(v9 + 7) = v19;
    v20 = v153;
    v21 = v148;
    *(v9 + 2) = v147;
    *(v9 + 3) = v21;
    v22 = v150;
    *(v9 + 4) = v149;
    *(v9 + 5) = v22;
    v23 = v146;
    *v9 = v145;
    *(v9 + 1) = v23;
    *(v9 + 16) = v20;
    *(v9 + 17) = 0;
    v9[144] = 1;
    swift_storeEnumTagMultiPayload();
    sub_2B44(&qword_1C978, &qword_13F78);
    sub_2BC4(&qword_1C980, &qword_1C978, &qword_13F78, &protocol conformance descriptor for TupleView<A>);
    sub_E34C(&qword_1C988, &type metadata accessor for FactItemHeroNumberView, &protocol conformance descriptor for FactItemHeroNumberView);
    sub_129AC();
    sub_6004(v126, &qword_1C9A0, &qword_13F90);
  }

  else
  {
    v111 = v4;
    v24 = *(a1 + 4);
    v145 = a1[1];
    *&v146 = v24;
    sub_2B44(&qword_1C4F8, &qword_138E8);
    sub_12CBC();
    v25 = *(&v136 + 1);
    v114 = v3;
    v112 = v7;
    if (*(&v136 + 1))
    {
      v26 = v136;
    }

    else
    {
      sub_F130(0.0);
    }

    *&v145 = v26;
    *(&v145 + 1) = v25;
    v109 = sub_2D90();
    v27 = sub_12AFC();
    v29 = v28;
    v31 = v30;
    v32 = sub_D240();
    v115 = a1;
    v110 = v6;
    if (v32 == &dword_0 + 2)
    {
      v33 = sub_129DC();
    }

    else
    {
      v33 = sub_129BC();
    }

    LODWORD(v145) = v33;
    v34 = sub_12ADC();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_69FC(v27, v29, v31 & 1);

    *(&v146 + 1) = &type metadata for Text;
    *&v147 = &protocol witness table for Text;
    v41 = swift_allocObject();
    *&v145 = v41;
    *(v41 + 16) = v34;
    *(v41 + 24) = v36;
    *(v41 + 32) = v38 & 1;
    *(v41 + 40) = v40;
    *&v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v127 = *v115;
    sub_2B44(&qword_1C500, &qword_138F0);
    sub_12CBC();
    v42 = *v126;
    if (*v126)
    {
      v43 = [*v126 displayTitle];

      v44 = sub_12ECC();
      v46 = v45;
    }

    else
    {
      type metadata accessor for TimerView(0);
      v47 = sub_1267C();
      if (v48)
      {
        v44 = v47;
        v46 = v48;
      }

      else
      {
        v46 = 0xE500000000000000;
        v44 = 0x72656D6954;
      }
    }

    *&v127 = v44;
    *(&v127 + 1) = v46;
    v49 = sub_12AFC();
    v51 = v50;
    v53 = v52;
    if (sub_D240() == &dword_0 + 2)
    {
      v54 = sub_129CC();
    }

    else
    {
      v54 = sub_129BC();
    }

    LODWORD(v127) = v54;
    v55 = sub_12ADC();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_69FC(v49, v51, v53 & 1);

    *(&v128 + 1) = &type metadata for Text;
    *&v129 = &protocol witness table for Text;
    v62 = swift_allocObject();
    *&v127 = v62;
    *(v62 + 16) = v55;
    *(v62 + 24) = v57;
    *(v62 + 32) = v59 & 1;
    *(v62 + 40) = v61;
    memset(v126, 0, 40);
    v119 = 0;
    memset(v118, 0, sizeof(v118));
    *&v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v63 = v110;
    sub_12E2C();
    v64 = v111;
    v65 = v114;
    (*(v111 + 16))(v9, v63, v114);
    swift_storeEnumTagMultiPayload();
    sub_2B44(&qword_1C978, &qword_13F78);
    sub_2BC4(&qword_1C980, &qword_1C978, &qword_13F78, &protocol conformance descriptor for TupleView<A>);
    sub_E34C(&qword_1C988, &type metadata accessor for FactItemHeroNumberView, &protocol conformance descriptor for FactItemHeroNumberView);
    sub_129AC();
    (*(v64 + 8))(v63, v65);
    a1 = v115;
  }

  v67 = *(a1 + 1);
  *&v136 = *a1;
  v66 = v136;
  *(&v136 + 1) = v67;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CDC();
  v115 = v145;
  v111 = v146;
  v112 = *(&v145 + 1);
  v110 = sub_D240();
  v68 = *(a1 + 6);
  *&v145 = *(a1 + 5);
  *(&v145 + 1) = v68;
  sub_2B44(&qword_1C510, &qword_13900);
  sub_12CBC();
  v69 = v136;
  v70 = type metadata accessor for TimerView(0);
  v71 = *(a1 + *(v70 + 40));
  *&v145 = v66;
  *(&v145 + 1) = v67;
  v109 = v71;
  sub_12CBC();
  v72 = v136;
  if (v136)
  {
    v73 = [v136 sound];

    v108 = [v73 isSilent];
  }

  else
  {
    v108 = 0;
  }

  v74 = qword_1C190;
  v114 = *(a1 + *(v70 + 36));
  if (v74 != -1)
  {
    swift_once();
  }

  v75 = [objc_opt_self() orangeColor];
  sub_12BCC();
  v76 = sub_12C2C();

  qword_1C540 = v76;

  if (qword_1C188 != -1)
  {
    swift_once();
  }

  qword_1C538 = sub_12C1C();

  v107 = sub_12D5C();
  *&v145 = v66;
  *(&v145 + 1) = v67;
  sub_12CBC();
  v77 = v136;
  if (v136)
  {
    [v136 remainingTime];
    v79 = v78;
  }

  else
  {
    *&v80 = COERCE_DOUBLE(sub_1262C());
    v79 = 0.0;
    if ((v81 & 1) == 0)
    {
      v79 = *&v80;
    }
  }

  *&v145 = v66;
  *(&v145 + 1) = v67;
  sub_12CBC();
  v82 = v136;
  if (v136)
  {
    [v136 duration];
    v84 = v83;
  }

  else
  {
    *&v85 = COERCE_DOUBLE(sub_1269C());
    v84 = 1.0;
    if ((v86 & 1) == 0)
    {
      v84 = *&v85;
    }
  }

  v87 = v79 / v84;
  sub_12D4C();
  sub_1281C();
  v88 = sub_129EC();
  v126[0] = 1;
  v89 = v116;
  sub_8BB0(v117, v116, &qword_1C970, &qword_13F70);
  v90 = v113;
  sub_8BB0(v89, v113, &qword_1C970, &qword_13F70);
  v91 = (v90 + *(sub_2B44(&qword_1C990, &qword_13F80) + 48));
  *&v136 = v115;
  v93 = v111;
  v92 = v112;
  *(&v136 + 1) = v112;
  *&v137 = v111;
  v95 = v109;
  v94 = v110;
  *(&v137 + 1) = v110;
  *&v138 = v109;
  *(&v138 + 1) = v69;
  v96 = v108;
  LOBYTE(v139) = v108;
  *(&v139 + 1) = *v157;
  DWORD1(v139) = *&v157[3];
  *(&v139 + 1) = v114;
  v97 = v107;
  *&v140 = v107;
  *(&v140 + 1) = v87;
  v142 = v128;
  v143 = v129;
  v141 = v127;
  LOBYTE(v144[0]) = v88;
  DWORD1(v144[0]) = *(v158 + 3);
  *(v144 + 1) = v158[0];
  *(&v144[1] + 8) = 0u;
  *(v144 + 8) = 0u;
  BYTE8(v144[2]) = 1;
  v98 = v137;
  *v91 = v136;
  v91[1] = v98;
  v99 = v138;
  v100 = v139;
  v101 = v141;
  v91[4] = v140;
  v91[5] = v101;
  v91[2] = v99;
  v91[3] = v100;
  v102 = v142;
  v103 = v143;
  *(v91 + 153) = *(&v144[1] + 9);
  v104 = v144[1];
  v91[8] = v144[0];
  v91[9] = v104;
  v91[6] = v102;
  v91[7] = v103;
  sub_8BB0(&v136, &v145, &qword_1C998, &qword_13F88);
  sub_6004(v117, &qword_1C970, &qword_13F70);
  *&v145 = v115;
  *(&v145 + 1) = v92;
  *&v146 = v93;
  *(&v146 + 1) = v94;
  *&v147 = v95;
  *(&v147 + 1) = v69;
  LOBYTE(v148) = v96;
  *(&v148 + 1) = *v157;
  DWORD1(v148) = *&v157[3];
  *(&v148 + 1) = v114;
  *&v149 = v97;
  *(&v149 + 1) = v87;
  v151 = v128;
  v152 = v129;
  v150 = v127;
  LOBYTE(v153) = v88;
  *(&v153 + 1) = v158[0];
  HIDWORD(v153) = *(v158 + 3);
  v154 = 0u;
  v155 = 0u;
  v156 = 1;
  sub_6004(&v145, &qword_1C998, &qword_13F88);
  return sub_6004(v116, &qword_1C970, &qword_13F70);
}

uint64_t sub_CDC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v3 = sub_2B44(&qword_1C9A8, &qword_13F98);
  __chkstk_darwin(v3 - 8);
  v5 = &v60 - v4;
  v6 = *(a1 + 32);
  v69 = *(a1 + 16);
  v70 = v6;
  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CBC();
  v7 = v68;
  if (v68)
  {
    v8 = v67;
  }

  else
  {
    sub_F130(0.0);
  }

  *&v69 = v8;
  *(&v69 + 1) = v7;
  v63 = sub_2D90();
  v9 = sub_12AFC();
  v11 = v10;
  v13 = v12;
  v14 = sub_12A2C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_12A5C();
  sub_6004(v5, &qword_1C9A8, &qword_13F98);
  v15 = sub_12AEC();
  v17 = v16;
  v19 = v18;

  sub_69FC(v9, v11, v13 & 1);

  sub_12A3C();
  v20 = sub_12ABC();
  v22 = v21;
  v24 = v23;
  sub_69FC(v15, v17, v19 & 1);

  v25 = v65;
  if (sub_D240() == &dword_0 + 2)
  {
    sub_12BDC();
  }

  else
  {
    sub_12C0C();
  }

  v61 = sub_12ACC();
  v62 = v26;
  v28 = v27;
  HIDWORD(v60) = v29;

  sub_69FC(v20, v22, v24 & 1);

  v69 = *v25;
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  v30 = v67;
  if (v67)
  {
    v31 = [v67 displayTitle];

    v32 = sub_12ECC();
    v34 = v33;
  }

  else
  {
    type metadata accessor for TimerView(0);
    v35 = sub_1267C();
    if (v36)
    {
      v32 = v35;
      v34 = v36;
    }

    else
    {
      v34 = 0xE500000000000000;
      v32 = 0x72656D6954;
    }
  }

  *&v69 = v32;
  *(&v69 + 1) = v34;
  v37 = sub_12AFC();
  v39 = v38;
  v41 = v40;
  sub_12A7C();
  v42 = sub_12AEC();
  v44 = v43;
  v46 = v45;

  sub_69FC(v37, v39, v41 & 1);

  if (sub_D240() == &dword_0 + 2)
  {
    sub_12BDC();
  }

  else
  {
    sub_12C0C();
  }

  v47 = sub_12ACC();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  sub_69FC(v42, v44, v46 & 1);

  v54 = BYTE4(v60) & 1;
  v66 = BYTE4(v60) & 1;
  LOBYTE(v69) = BYTE4(v60) & 1;
  v55 = v51 & 1;
  LOBYTE(v67) = v51 & 1;
  v56 = v64;
  v58 = v61;
  v57 = v62;
  *v64 = v61;
  v56[1] = v28;
  *(v56 + 16) = v54;
  v56[3] = v57;
  v56[4] = v47;
  v56[5] = v49;
  *(v56 + 48) = v55;
  v56[7] = v53;
  sub_F088(v58, v28, v54);

  sub_F088(v47, v49, v55);

  sub_69FC(v47, v49, v55);

  sub_69FC(v58, v28, v66);
}

id sub_D240()
{
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v6)
  {
    v0 = [v6 state];
  }

  else
  {
    type metadata accessor for TimerView(0);
    sub_1268C();
    v0 = 0;
    if ((v1 & 1) == 0)
    {
      v2 = sub_1276C();
      v4 = 2 * (v2 == 2);
      if (v2 == 1)
      {
        v4 = 3;
      }

      if (v3)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return v0;
}

uint64_t sub_D2F8()
{
  sub_2B44(&qword_1C500, &qword_138F0);
  sub_12CBC();
  if (v6)
  {

    sub_12CBC();
    sub_E834(v6);
    v1 = v0;
  }

  else
  {
    type metadata accessor for TimerView(0);
    v2 = sub_1262C();
    v1 = 0;
    if ((v3 & 1) == 0)
    {
      sub_F130(*&v2);
      v1 = v4;
    }
  }

  sub_2B44(&qword_1C4F8, &qword_138E8);
  sub_12CCC();
  if (sub_D240() != &dword_0 + 1)
  {
    sub_12CBC();
    if (v1)
    {
      [v1 remainingTime];
    }

    else
    {
      type metadata accessor for TimerView(0);
      sub_1262C();
    }

    sub_12CBC();
    if (v1)
    {
      [v1 duration];
    }

    else
    {
      type metadata accessor for TimerView(0);
      sub_1269C();
    }
  }

  sub_2B44(&qword_1C510, &qword_13900);
  return sub_12CCC();
}

void sub_D52C()
{
  v1 = sub_1259C();
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin(v1);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2B44(&qword_1C950, &qword_13F58);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_124EC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v52 = type metadata accessor for TimerView(0);
  v13 = sub_1265C();
  v53 = v0;
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_1266C();
    if (v17)
    {
      v18 = v17;
      if (qword_1C198 != -1)
      {
        swift_once();
      }

      v19 = sub_1279C();
      sub_32B4(v19, qword_1C740);

      v20 = sub_1277C();
      v21 = sub_12F6C();

      v22 = v15;
      if (os_log_type_enabled(v20, v21))
      {
        v23 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_114DC(v22, v16, aBlock);
        *(v23 + 12) = 2080;
        v24 = sub_12E8C();
        v26 = sub_114DC(v24, v25, aBlock);

        *(v23 + 14) = v26;
        _os_log_impl(&dword_0, v20, v21, "[TimerView.onSnippetTapped]: Performing direct invocation with ID = %s, payload = %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      sub_18C8(v18);

      sub_12E6C();

      return;
    }
  }

  sub_1263C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_6004(v5, &qword_1C950, &qword_13F58);
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v27 = sub_1279C();
    sub_32B4(v27, qword_1C740);
    v28 = sub_1277C();
    v29 = sub_12F6C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "[TimerView.onSnippetTapped]: Nil direct invocation parameters detected; punching out instead.", v30, 2u);
    }

    v31 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v31)
    {
      v32 = v31;
      v33 = sub_12EBC();
      aBlock[4] = sub_DD20;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_DEE4;
      aBlock[3] = &unk_197C8;
      v34 = _Block_copy(aBlock);
      [v32 openApplication:v33 withOptions:0 completion:v34];

      _Block_release(v34);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v35 = sub_1279C();
    sub_32B4(v35, qword_1C740);
    (*(v7 + 16))(v10, v12, v6);
    v36 = sub_1277C();
    v37 = sub_12F6C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = v38;
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v38 = 136315138;
      sub_E34C(&qword_1C958, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v39 = sub_1305C();
      v41 = v40;
      v42 = *(v7 + 8);
      v42(v10, v6);
      v43 = sub_114DC(v39, v41, aBlock);

      v44 = v47;
      *(v47 + 1) = v43;
      _os_log_impl(&dword_0, v36, v37, "[TimerView.onSnippetTapped]: Performing punchout URL = %s", v44, 0xCu);
      sub_64C0(v48);
    }

    else
    {

      v42 = *(v7 + 8);
      v42(v10, v6);
    }

    sub_124DC();
    v45 = v49;
    sub_1258C();
    sub_12E5C();
    (*(v50 + 8))(v45, v51);
    v42(v12, v6);
  }
}

void sub_DD20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v2 = sub_1279C();
    sub_32B4(v2, qword_1C740);
    swift_errorRetain();
    v3 = sub_1277C();
    v4 = sub_12F5C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_2B44(&qword_1C960, &qword_13F60);
      v7 = sub_12EEC();
      v9 = sub_114DC(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_0, v3, v4, "[TimerView.onSnippetTapped]: Failed to launch clock app! %s", v5, 0xCu);
      sub_64C0(v6);
    }

    else
    {
    }
  }
}

void sub_DEE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126DC();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_E060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126DC();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_E120(uint64_t a1)
{
  sub_29B4(319);
  if (v1 <= 0x3F)
  {
    sub_126DC();
    if (v2 <= 0x3F)
    {
      sub_55F8(319);
      if (v3 <= 0x3F)
      {
        sub_5FBC(319, &unk_1C338, MTTimerManager_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_E248()
{
  result = qword_1C828;
  if (!qword_1C828)
  {
    sub_2A8C(&qword_1C820, &qword_13E68);
    type metadata accessor for TimerView(255);
    sub_E34C(&qword_1C830, type metadata accessor for TimerView, "!M");
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C828);
  }

  return result;
}

uint64_t sub_E34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E394(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B44(&qword_1C7F8, &qword_13E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E404()
{
  result = qword_1C840;
  if (!qword_1C840)
  {
    sub_2A8C(&qword_1C810, &qword_13E58);
    sub_2A8C(&qword_1C808, &qword_13E50);
    sub_2BC4(&qword_1C848, &qword_1C808, &qword_13E50, &protocol conformance descriptor for ComponentStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C3B0, &qword_1C3A0, &qword_13828, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C840);
  }

  return result;
}

uint64_t sub_E52C()
{
  v1 = (type metadata accessor for TimerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_126DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E734()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E7D8(uint64_t a1)
{
  v2 = type metadata accessor for TimerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_E834(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 state];
    v3 = 0.0;
    if (v2 != &dword_0 + 1)
    {
      [v1 remainingTime];
    }

    sub_F130(v3);
  }

  else
  {
    if (qword_1C198 != -1)
    {
      swift_once();
    }

    v4 = sub_1279C();
    sub_32B4(v4, qword_1C740);
    v5 = sub_1277C();
    v6 = sub_12F5C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "TimerView: MTTimer missing in call for durationString(for:)", v7, 2u);
    }

    sub_F130(0.0);
  }
}

uint64_t sub_EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_126AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_EB0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_126AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_EBD0()
{
  result = qword_1C908;
  if (!qword_1C908)
  {
    sub_2A8C(&qword_1C910, "h\r");
    sub_2A8C(&qword_1C810, &qword_13E58);
    sub_E404();
    swift_getOpaqueTypeConformance2();
    sub_2BC4(&qword_1C850, &qword_1C7F8, &qword_13E40, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C908);
  }

  return result;
}

uint64_t sub_ECE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_EDA8()
{
  v1 = (type metadata accessor for TimerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_126AC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_EF48()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    sub_2A8C(&qword_1C918, &qword_13F38);
    sub_2BC4(&qword_1C938, &qword_1C928, &qword_13F48, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_2BC4(&qword_1C940, &qword_1C948, &qword_13F50, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

double sub_F02C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_F044()
{
  sub_69FC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

void sub_F088(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F098()
{
  sub_2A8C(&qword_1C918, &qword_13F38);
  sub_EF48();
  return swift_getOpaqueTypeConformance2();
}

void sub_F130(double a1)
{
  v1 = sub_1253C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FB70(&v88);
  sub_1252C();
  v5.super.isa = sub_1251C().super.isa;
  (*(v2 + 8))(v4, v1);
  if (qword_1C1A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1279C();
  v7 = sub_32B4(v6, qword_1C9B0);
  v8 = v5.super.isa;
  v80 = v7;
  v9 = sub_1277C();
  v10 = sub_12F4C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v86 = v12;
    *v11 = 136315138;
    v84 = v8;
    type metadata accessor for CFLocale(0);
    v13 = v8;
    v14 = sub_12EEC();
    v16 = sub_114DC(v14, v15, &v86);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "TimeInterval.intervalTextString formatting time components using locale %s", v11, 0xCu);
    sub_64C0(v12);
  }

  v17 = v88;
  v81 = v89;
  if (v89)
  {
    v78 = v88;
    v18 = sub_12EBC();
    v79 = v8;
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v18, 0, v8);

    if (DateFormatFromTemplate)
    {
      v20 = sub_12ECC();
      v22 = v21;

      v86 = v20;
      v87 = v22;
      v84 = 18504;
      v85 = 0xE200000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      sub_2D90();
      v23 = sub_12FBC();
      v25 = v24;

      v86 = v23;
      v87 = v25;
      v84 = 72;
      v85 = 0xE100000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v26 = sub_12FBC();
      v28 = v27;

      v86 = v26;
      v87 = v28;
      v84 = 26728;
      v85 = 0xE200000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v29 = sub_12FBC();
      v31 = v30;

      v86 = v29;
      v87 = v31;
      v84 = 104;
      v85 = 0xE100000000000000;
      v82 = 1076113701;
      v83 = 0xE400000000000000;
      v32 = sub_12FBC();
      v34 = v33;

      v86 = v32;
      v87 = v34;
      v84 = 28013;
      v85 = 0xE200000000000000;
      v82 = 1076113957;
      v83 = 0xE400000000000000;
      v35 = sub_12FBC();
      v37 = v36;

      v86 = v35;
      v87 = v37;
      v84 = 109;
      v85 = 0xE100000000000000;
      v82 = 1076113957;
      v83 = 0xE400000000000000;
      v38 = sub_12FBC();
      v40 = v39;

      v86 = v38;
      v87 = v40;
      v84 = 29555;
      v85 = 0xE200000000000000;
      v82 = 1076114213;
      v83 = 0xE400000000000000;
      v41 = sub_12FBC();
      v43 = v42;

      v86 = v41;
      v87 = v43;
      v84 = 21331;
      v85 = 0xE200000000000000;
      v82 = 1076114469;
      v83 = 0xE400000000000000;
      v44 = sub_12FBC();
      v46 = v45;

      v86 = v44;
      v87 = v46;
      if (qword_1C1A8 != -1)
      {
        swift_once();
      }

      v47 = sub_1247C();
      sub_32B4(v47, qword_1C9C8);
      v48 = sub_12FAC();
      v50 = v49;

      v17 = v78;
      v8 = v79;
      goto LABEL_12;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v51 = sub_12EBC();
  v52 = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v51, 0, v8);

  if (!v52)
  {
    goto LABEL_20;
  }

  v53 = sub_12ECC();
  v55 = v54;

  v86 = v53;
  v87 = v55;
  v84 = 28013;
  v85 = 0xE200000000000000;
  v82 = 1076113701;
  v83 = 0xE400000000000000;
  sub_2D90();
  v56 = sub_12FBC();
  v58 = v57;

  v86 = v56;
  v87 = v58;
  v84 = 109;
  v85 = 0xE100000000000000;
  v82 = 1076113701;
  v83 = 0xE400000000000000;
  v59 = sub_12FBC();
  v61 = v60;

  v86 = v59;
  v87 = v61;
  v84 = 29555;
  v85 = 0xE200000000000000;
  v82 = 1076113957;
  v83 = 0xE400000000000000;
  v62 = sub_12FBC();
  v64 = v63;

  v86 = v62;
  v87 = v64;
  v84 = 21331;
  v85 = 0xE200000000000000;
  v82 = 1076114213;
  v83 = 0xE400000000000000;
  v48 = sub_12FBC();
  v50 = v65;

LABEL_12:
  swift_bridgeObjectRetain_n();
  v66 = sub_1277C();
  v67 = sub_12F4C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v86 = v69;
    *v68 = 136315138;
    v70 = sub_114DC(v48, v50, &v86);

    *(v68 + 4) = v70;
    _os_log_impl(&dword_0, v66, v67, "TimeInterval.intervalTextString formatString: %s", v68, 0xCu);
    sub_64C0(v69);
  }

  else
  {
  }

  sub_2B44(&qword_1C9E0, &qword_13FD0);
  v71 = v81;
  if (v81)
  {
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_13FB0;
    *(v72 + 56) = &type metadata for String;
    v73 = sub_103B4();
    *(v72 + 64) = v73;
    *(v72 + 32) = v17;
    *(v72 + 40) = v71;
    *(v72 + 96) = &type metadata for String;
    *(v72 + 104) = v73;
    v74 = v91;
    *(v72 + 72) = v90;
    *(v72 + 136) = &type metadata for String;
    *(v72 + 144) = v73;
    *(v72 + 112) = v74;
  }

  else
  {
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_13FC0;
    *(v75 + 56) = &type metadata for String;
    v76 = sub_103B4();
    *(v75 + 64) = v76;
    v77 = v91;
    *(v75 + 32) = v90;
    *(v75 + 96) = &type metadata for String;
    *(v75 + 104) = v76;
    *(v75 + 72) = v77;
  }

  sub_12EDC();
}

uint64_t sub_FAAC()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1C9B0);
  sub_32B4(v0, qword_1C9B0);
  return sub_1278C();
}

uint64_t sub_FB24()
{
  v0 = sub_1247C();
  sub_532C(v0, qword_1C9C8);
  sub_32B4(v0, qword_1C9C8);
  return sub_1246C();
}

uint64_t sub_FB70@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v2 = sub_1257C();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_124BC();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1250C();
  v66 = *(v68 - 8);
  v6 = __chkstk_darwin(v68);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v73 = [objc_allocWithZone(NSNumberFormatter) init];
  [v73 setNumberStyle:0];
  sub_1261C();
  sub_124FC();
  sub_1255C();
  sub_2B44(&qword_1C9F0, &qword_13FD8);
  v11 = sub_1256C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_13FB0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for Calendar.Component.hour(_:), v11);
  v17(v16 + v13, enum case for Calendar.Component.minute(_:), v11);
  v17(v16 + 2 * v13, enum case for Calendar.Component.second(_:), v11);
  sub_10408(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = v8;
  v65 = v10;
  sub_1254C();

  (*(v71 + 8))(v4, v72);
  v18 = sub_1248C();
  v19 = 0;
  v20 = 0;
  if (v21)
  {
    v22 = v73;
  }

  else
  {
    v22 = v73;
    if (v18 >= 1)
    {
      v23 = sub_12EBC();
      [v22 setPositiveFormat:v23];

      isa = sub_12F3C().super.super.isa;
      v25 = [v22 stringFromNumber:isa];

      if (v25)
      {
        v19 = sub_12ECC();
        v20 = v26;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }
    }
  }

  v72 = v19;
  v27 = 12336;
  v28 = 0xE200000000000000;
  v29 = sub_12EBC();
  [v22 setPositiveFormat:v29];

  v30 = sub_1249C();
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  v33 = [objc_allocWithZone(NSNumber) initWithInteger:v32];
  v34 = [v22 stringFromNumber:v33];

  if (v34)
  {
    v27 = sub_12ECC();
    v28 = v35;
  }

  v71 = v27;
  v36 = sub_124AC();
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  v39 = [objc_allocWithZone(NSNumber) initWithInteger:v38];
  v40 = [v22 stringFromNumber:v39];

  if (v40)
  {
    v41 = sub_12ECC();
    v43 = v42;
  }

  else
  {
    v43 = 0xE200000000000000;
    v41 = 12336;
  }

  if (qword_1C1A0 != -1)
  {
    swift_once();
  }

  v44 = sub_1279C();
  sub_32B4(v44, qword_1C9B0);
  swift_bridgeObjectRetain_n();

  v45 = sub_1277C();
  v46 = sub_12F4C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v76 = v20;
    v77 = v48;
    *v47 = 136315650;
    v75 = v72;

    sub_2B44(&qword_1C400, &qword_13AC0);
    v49 = sub_12EEC();
    v51 = sub_114DC(v49, v50, &v77);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;

    v52 = sub_114DC(v71, v28, &v77);

    *(v47 + 14) = v52;
    *(v47 + 22) = 2080;

    v53 = sub_114DC(v41, v43, &v77);

    *(v47 + 24) = v53;
    _os_log_impl(&dword_0, v45, v46, "TimeInterval.getTimeComponents: hours %s, minutes %s, seconds %s", v47, 0x20u);
    swift_arrayDestroy();
  }

  v54 = v73;
  if (v20)
  {
    v55 = v72;
    if (v72 == 48 && v20 == 0xE100000000000000)
    {
      v56 = 1;
    }

    else
    {
      v56 = sub_1307C();
    }

    (*(v67 + 8))(v74, v69);
    v60 = *(v66 + 8);
    v61 = v68;
    v60(v64, v68);
    result = (v60)(v65, v61);
    if (v56)
    {

      v55 = 0;
      v20 = 0;
    }
  }

  else
  {

    (*(v67 + 8))(v74, v69);
    v57 = *(v66 + 8);
    v58 = v68;
    v57(v64, v68);
    result = (v57)(v65, v58);
    v55 = v72;
  }

  v62 = v70;
  v63 = v71;
  *v70 = v55;
  v62[1] = v20;
  v62[2] = v63;
  v62[3] = v28;
  v62[4] = v41;
  v62[5] = v43;
  return result;
}

unint64_t sub_103B4()
{
  result = qword_1C9E8;
  if (!qword_1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E8);
  }

  return result;
}

void *sub_10408(uint64_t a1)
{
  v2 = sub_1256C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2B44(&qword_1C9F8, &unk_13FE0);
    v9 = sub_12FEC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10700(&qword_1CA00, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_12E9C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10700(&qword_1CA08, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_12EAC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10700(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1256C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10744()
{
  v0 = sub_1279C();
  sub_532C(v0, qword_1CA10);
  sub_32B4(v0, qword_1CA10);
  return sub_1278C();
}

uint64_t sub_107BC@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v2 = sub_2B44(&qword_1CA30, &qword_140C8);
  __chkstk_darwin(v2 - 8);
  v4 = v26 - v3;
  v5 = sub_2B44(&qword_1CA38, &qword_140D0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v9 = sub_2B44(&qword_1CA40, &qword_140D8);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  *v4 = sub_1298C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v12 = sub_2B44(&qword_1CA48, &qword_140E0);
  sub_10B08(v1, &v4[*(v12 + 44)]);
  sub_12D4C();
  sub_1288C();
  sub_1222C(v4, v8, &qword_1CA30, &qword_140C8);
  v13 = &v8[*(v6 + 44)];
  v14 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v14;
  *(v13 + 6) = v34;
  v15 = v29;
  *v13 = v28;
  *(v13 + 1) = v15;
  v16 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v16;
  v35 = *(v1 + 48);
  v17 = v35;
  v18 = swift_allocObject();
  v19 = *(v1 + 16);
  *(v18 + 1) = *v1;
  *(v18 + 2) = v19;
  v20 = *(v1 + 48);
  *(v18 + 3) = *(v1 + 32);
  *(v18 + 4) = v20;
  sub_1222C(v8, v11, &qword_1CA38, &qword_140D0);
  *&v11[*(v9 + 52)] = v17;
  v21 = &v11[*(v9 + 56)];
  *v21 = sub_12224;
  v21[1] = v18;
  v22 = swift_allocObject();
  v23 = *(v1 + 16);
  v22[1] = *v1;
  v22[2] = v23;
  v24 = *(v1 + 48);
  v22[3] = *(v1 + 32);
  v22[4] = v24;
  sub_1218C(v1, v27);
  sub_1218C(v1, v27);
  sub_8BB0(&v35, v27, &qword_1CA50, &qword_140E8);
  sub_2BC4(&qword_1CA58, &qword_1CA40, &qword_140D8, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_12B9C();

  return sub_6004(v11, &qword_1CA40, &qword_140D8);
}

uint64_t sub_10B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v69 = a2;
  v3 = sub_2B44(&qword_1C9A8, &qword_13F98);
  __chkstk_darwin(v3 - 8);
  v72 = &v62 - v4;
  v5 = sub_2B44(&qword_1CA68, &qword_14100);
  v6 = __chkstk_darwin(v5 - 8);
  KeyPath = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  v10 = sub_2B44(&qword_1CA70, &qword_14108);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v66 = &v62 - v11;
  v13 = sub_125AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_125CC();
  __chkstk_darwin(v17 - 8);
  v18 = sub_12DDC();
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = __chkstk_darwin(v18);
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v70 = a1;
  v23 = *(a1 + 32);
  *v16 = *(a1 + 24);
  v16[1] = v23;
  (*(v14 + 104))(v16, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v13);
  v24 = sub_125FC();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  v25 = sub_1260C();
  v26 = *(*(v25 - 8) + 56);
  v26(v9, 1, 1, v25);
  v26(KeyPath, 1, 1, v25);
  v84 = 0;
  v82 = 0u;
  v83 = 0u;

  sub_125BC();
  v27 = v22;
  sub_12DCC();
  v82 = *v70;
  *&v83 = *(v70 + 16);
  sub_2B44(&qword_1CA60, &unk_140F0);
  sub_12CBC();
  v28 = sub_12A2C();
  v29 = v72;
  (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
  sub_12A5C();
  sub_6004(v29, &qword_1C9A8, &qword_13F98);
  sub_12A4C();
  sub_12A6C();

  sub_12A1C();

  v70 = sub_12AEC();
  v72 = v30;
  LOBYTE(v29) = v31;
  v66 = v32;

  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v33 = v29 & 1;
  LOBYTE(v82) = v29 & 1;
  LOBYTE(v74) = 0;
  LOBYTE(v23) = sub_129FC();
  v34 = sub_12A0C();
  sub_12A0C();
  if (sub_12A0C() != v23)
  {
    v34 = sub_12A0C();
  }

  sub_127EC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v102 = 0;
  v43 = sub_12BFC();
  v62 = sub_129EC();
  v44 = v67;
  v45 = v68;
  v46 = *(v67 + 16);
  v47 = v73;
  v64 = v27;
  v46(v73, v27, v68);
  v48 = v69;
  v49 = v47;
  v50 = v45;
  v46(v69, v49, v45);
  v51 = (v48 + *(sub_2B44(&qword_1CA78, &qword_14170) + 48));
  *&v74 = v70;
  *(&v74 + 1) = v72;
  LOBYTE(v75) = v33;
  *(&v75 + 1) = *v101;
  DWORD1(v75) = *&v101[3];
  v52 = v66;
  *(&v75 + 1) = v66;
  *&v76 = KeyPath;
  *(&v76 + 1) = 1;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = *v100;
  DWORD1(v77) = *&v100[3];
  v63 = v33;
  v53 = v65;
  *(&v77 + 1) = v65;
  v69 = xmmword_13FF0;
  v78 = xmmword_13FF0;
  LOBYTE(v79) = v34;
  DWORD1(v79) = *&v103[3];
  *(&v79 + 1) = *v103;
  *(&v79 + 1) = v36;
  *&v80 = v38;
  *(&v80 + 1) = v40;
  *&v81[0] = v42;
  BYTE8(v81[0]) = 0;
  *(v81 + 9) = v104[0];
  HIDWORD(v81[0]) = *(v104 + 3);
  *&v81[1] = v43;
  LOBYTE(v46) = v62;
  BYTE8(v81[1]) = v62;
  v54 = v74;
  v55 = v75;
  v56 = v77;
  v51[2] = v76;
  v51[3] = v56;
  *v51 = v54;
  v51[1] = v55;
  v57 = v78;
  v58 = v79;
  *(v51 + 121) = *(v81 + 9);
  v59 = v81[0];
  v51[6] = v80;
  v51[7] = v59;
  v51[4] = v57;
  v51[5] = v58;
  sub_8BB0(&v74, &v82, &unk_1CA80, &qword_14178);
  v60 = *(v44 + 8);
  v60(v64, v50);
  *&v82 = v70;
  *(&v82 + 1) = v72;
  LOBYTE(v83) = v63;
  *(&v83 + 1) = *v101;
  DWORD1(v83) = *&v101[3];
  *(&v83 + 1) = v52;
  v84 = KeyPath;
  v85 = 1;
  v86 = 0;
  *v87 = *v100;
  *&v87[3] = *&v100[3];
  v88 = v53;
  v89 = v69;
  v90 = v34;
  *&v91[3] = *&v103[3];
  *v91 = *v103;
  v92 = v36;
  v93 = v38;
  v94 = v40;
  v95 = v42;
  v96 = 0;
  *v97 = v104[0];
  *&v97[3] = *(v104 + 3);
  v98 = v43;
  v99 = v46;
  sub_6004(&v82, &unk_1CA80, &qword_14178);
  return (v60)(v73, v50);
}

uint64_t sub_112C0(uint64_t a1, void **a2)
{
  sub_11A84(a2[7]);
  sub_2B44(&qword_1CA60, &unk_140F0);
  return sub_12CCC();
}

void sub_11328()
{
  v0 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v0)
  {
    v1 = v0;
    v2 = sub_12EBC();
    oslog = [objc_allocWithZone(FBSOpenApplicationOptions) init];
    [v1 openApplication:v2 withOptions:? completion:?];
  }

  else
  {
    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1279C();
    sub_32B4(v3, qword_1CA10);
    oslog = sub_1277C();
    v4 = sub_12F5C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, oslog, v4, "TimerDurationViewLegacy: Failed to launch clock app!", v5, 2u);
    }
  }
}

unint64_t sub_114DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_115A8(v11, 0, 0, 1, a1, a2);
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
    sub_2DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_64C0(v11);
  return v7;
}

unint64_t sub_115A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_116B4(a5, a6);
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
    result = sub_1301C();
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

char *sub_116B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_11700(a1, a2);
  sub_11830(&off_19150);
  return v3;
}

char *sub_11700(uint64_t a1, unint64_t a2)
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

  v6 = sub_1191C(v5, 0);
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

  result = sub_1301C();
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
        v10 = sub_12EFC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1191C(v10, 0);
        result = sub_12FFC();
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

uint64_t sub_11830(uint64_t result)
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

  result = sub_11990(result, v11, 1, v3);
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

void *sub_1191C(uint64_t a1, uint64_t a2)
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

  sub_2B44(&qword_1CA28, &qword_14010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11990(char *result, int64_t a2, char a3, char *a4)
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
    sub_2B44(&qword_1CA28, &qword_14010);
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

void sub_11A84(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 0.0;
    if ([v1 state] != &dword_0 + 1)
    {
      [v1 remainingTime];
      v2 = v3;
    }

    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1279C();
    sub_32B4(v4, qword_1CA10);
    v5 = sub_1277C();
    v6 = sub_12F6C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_0, v5, v6, "TimerDurationViewLegacy: timeRemaining %f", v7, 0xCu);
    }

    sub_F130(v2);
  }

  else
  {
    if (qword_1C1B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1279C();
    sub_32B4(v8, qword_1CA10);
    v9 = sub_1277C();
    v10 = sub_12F5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "TimerUIPlugin (Legacy): MTTimer missing in call for durationString(for:)", v11, 2u);
    }

    sub_F130(0.0);
  }
}

double sub_11CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v39 = a2;
  v38 = a1;
  v4 = sub_2B44(&qword_1C3F0, &unk_14000);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  sub_F130(0.0);
  *&v41 = v7;
  *(&v41 + 1) = v8;
  sub_12CAC();
  v37 = [objc_allocWithZone(MTTimerManager) init];
  v9 = [v37 getCurrentTimerSync];
  v10 = v9;
  if (v9)
  {
    [v9 remainingTime];
  }

  if (qword_1C1B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1279C();
  sub_32B4(v11, qword_1CA10);
  v12 = sub_1277C();
  v13 = sub_12F6C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = a3;
    v16 = v15;
    v45 = v15;
    *v14 = 136315138;
    v17 = sub_12F2C();
    v19 = sub_114DC(v17, v18, &v45);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "TimerDurationViewLegacy: Timer initial remaining time: %s", v14, 0xCu);
    sub_64C0(v16);
    a3 = v36;
  }

  sub_11A84(v10);
  v21 = v20;
  v23 = v22;

  *&v41 = v21;
  *(&v41 + 1) = v23;
  sub_12CAC();

  v24 = v45;
  v25 = v46;
  v26 = v47;
  v27 = [objc_opt_self() mainRunLoop];
  sub_120E8();
  v28 = sub_12F9C();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = sub_12F8C();
  sub_6004(v6, &qword_1C3F0, &unk_14000);
  v45 = v29;
  sub_12F7C();
  sub_12134();
  v30 = sub_127BC();

  v45 = v30;
  sub_2B44(&qword_1C418, &qword_13878);
  sub_2BC4(&qword_1C420, &qword_1C418, &qword_13878, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v31 = sub_127CC();

  *&v41 = v24;
  *(&v41 + 1) = v25;
  *&v42 = v26;
  *(&v42 + 1) = v38;
  *&v43 = v39;
  *(&v43 + 1) = v37;
  *&v44 = v31;
  *(&v44 + 1) = v10;
  v45 = v24;
  v46 = v25;
  v47 = v26;
  v48 = v38;
  v49 = v39;
  v50 = v37;
  v51 = v31;
  v52 = v10;
  sub_1218C(&v41, v40);
  sub_121C4(&v45);
  v32 = v42;
  *a3 = v41;
  a3[1] = v32;
  result = *&v43;
  v34 = v44;
  a3[2] = v43;
  a3[3] = v34;
  return result;
}

unint64_t sub_120E8()
{
  result = qword_1C408;
  if (!qword_1C408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C408);
  }

  return result;
}

unint64_t sub_12134()
{
  result = qword_1C410;
  if (!qword_1C410)
  {
    sub_12F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C410);
  }

  return result;
}

uint64_t sub_1222C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B44(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_12294()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_12318@<X0>(uint64_t a1@<X8>)
{
  result = sub_1294C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_123D0()
{
  sub_2A8C(&qword_1CA40, &qword_140D8);
  sub_2BC4(&qword_1CA58, &qword_1CA40, &qword_140D8, &protocol conformance descriptor for SubscriptionView<A, B>);
  return swift_getOpaqueTypeConformance2();
}