uint64_t sub_10081E76C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_10081E9CC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10081EA10()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10081EA80()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10081EAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10081EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObservationRegistrar.init()();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = _swiftEmptyArrayStorage;
  v8 = [objc_opt_self() orderedKeys];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 40);
    v25 = *(v9 + 16);
    v26 = v9;
    v24 = a3;
    while (v11 < *(v9 + 16))
    {
      if (*(a3 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;

        v15 = sub_10000BE7C(v14, v13);
        if (v16)
        {
          v17 = (*(a3 + 56) + 16 * v15);
          v18 = v17[1];
          v27 = *v17;
          swift_getKeyPath();
          sub_10081EAB0(&qword_101A03920, type metadata accessor for DrawingRecognition, "y[;");

          v28 = v18;

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          v19 = v4[4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4[4] = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_100B37CEC(0, *(v19 + 2) + 1, 1, v19);
            v4[4] = v19;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          a3 = v24;
          if (v22 >= v21 >> 1)
          {
            v19 = sub_100B37CEC((v21 > 1), v22 + 1, 1, v19);
          }

          *(v19 + 2) = v22 + 1;
          v23 = &v19[32 * v22];
          *(v23 + 4) = v14;
          *(v23 + 5) = v13;
          *(v23 + 6) = v27;
          *(v23 + 7) = v28;
          v4[4] = v19;
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          v10 = v25;
          v9 = v26;
        }

        else
        {
        }
      }

      ++v11;
      v12 += 2;
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_10081EDE4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_10081EE68()
{
  result = qword_101A03970;
  if (!qword_101A03970)
  {
    result = swift_getWitnessTable(byte_101480440, &type metadata for CRLHandwritingRecognitionStatusView, v0, v1);
    atomic_store(result, &qword_101A03970);
  }

  return result;
}

unint64_t sub_10081EEBC()
{
  result = qword_101A03978;
  if (!qword_101A03978)
  {
    result = swift_getWitnessTable(byte_1014800F4, &type metadata for DrawingRecognition.RecognitionStatus, v0, v1);
    atomic_store(result, &qword_101A03978);
  }

  return result;
}

uint64_t sub_10081EF10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10081EF30()
{
  result = qword_101A03988;
  if (!qword_101A03988)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A03948, &qword_1014803C0);
    v4[0] = sub_10001A2F8(&qword_101A03990, &qword_101A03998, &qword_101480438, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A03988);
  }

  return result;
}

unint64_t sub_10081F004()
{
  result = qword_101A039B0;
  if (!qword_101A039B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A039B8, &qword_1014804A0);
    v4[0] = sub_10001A2F8(&qword_101A039C0, &qword_101A039C8, &qword_1014804A8, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A039B0);
  }

  return result;
}

void sub_10081F0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v5 - 8);
  v27 = &v23 - v6;
  v7 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v7 - 8);
  v28 = &v23 - v8;
  v9 = sub_1005B981C(qword_101A0CF60, "87&");
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  if (a3 >= 1)
  {
    v24 = (v10 + 56);
    v25 = (v10 + 16);
    v26 = (v10 + 8);
    do
    {
      v30 = 0;
      v31 = 0;
      sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
      v13 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v13);
      *(&v23 - 4) = &type metadata for CRLWPHyperlinkAttribute;
      v14 = sub_1008247F4();
      v15 = v29;
      *(&v23 - 3) = v14;
      *(&v23 - 2) = v15;
      swift_getKeyPath();
      v16 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
      (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
      sub_100824848();

      CRAttributedString.Attributes.subscript.setter();
      v17 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v18 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v17 >= v18)
      {
        v19 = a2 + a3;
      }

      else
      {
        v19 = v30 + v31;
      }

      if (v30 < a2 || v30 >= v18)
      {
        if (a2 < v30 || a2 >= v17)
        {
          (*v26)(v12, v9);
          return;
        }

        v20 = v19 - a2;
        if (__OFSUB__(v19, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = v19 - v30;
        if (__OFSUB__(v19, v30))
        {
          goto LABEL_25;
        }
      }

      v21 = v27;
      (*v25)(v27, v12, v9);
      (*v24)(v21, 0, 1, v9);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v21, &unk_101A0DAE0, &qword_101483A10);
      (*v26)(v12, v9);
      v22 = __OFADD__(a2, v20);
      a2 += v20;
      if (v22)
      {
        goto LABEL_23;
      }

      v22 = __OFSUB__(a3, v20);
      a3 -= v20;
      if (v22)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081F4CC(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v5 - 8);
  v23 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v20 = (v8 + 56);
    v21 = (v8 + 16);
    v22 = (v8 + 8);
    do
    {
      v25 = 0;
      v26 = 0;
      sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPUnderlineAttribute;
      v12 = sub_100824704();
      v13 = v24;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v27 = 0;
      v28 = -1;
      sub_100824758();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v25 + v26;
      }

      if (v25 < a2 || v25 >= v15)
      {
        if (a2 < v25 || a2 >= v14)
        {
          (*v22)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v25;
        if (__OFSUB__(v16, v25))
        {
          goto LABEL_25;
        }
      }

      v18 = v23;
      (*v21)(v23, v10, v7);
      (*v20)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0, &qword_101483A10);
      (*v22)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081F82C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(void))
{
  v30 = a5;
  v31 = a6;
  v28 = a1;
  v29 = a4;
  v8 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - v9;
  v10 = sub_1005B981C(qword_101A0CF60, "87&");
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  if (a3 >= 1)
  {
    v24 = (v11 + 56);
    v25 = (v11 + 16);
    v26 = (v11 + 8);
    v14 = v28;
    do
    {
      v32 = 0;
      v33 = 0;
      sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
      v15 = CRAttributedString.attributes(at:effectiveRange:)();
      v16 = __chkstk_darwin(v15);
      v17 = v30;
      *(&v24 - 4) = v29;
      *(&v24 - 3) = v17(v16);
      *(&v24 - 2) = v14;
      swift_getKeyPath();
      v34 = 2;
      v31();

      CRAttributedString.Attributes.subscript.setter();
      v18 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v19 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v18 >= v19)
      {
        v20 = a2 + a3;
      }

      else
      {
        v20 = v32 + v33;
      }

      if (v32 < a2 || v32 >= v19)
      {
        if (a2 < v32 || a2 >= v18)
        {
          (*v26)(v13, v10);
          return;
        }

        v21 = v20 - a2;
        if (__OFSUB__(v20, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = v20 - v32;
        if (__OFSUB__(v20, v32))
        {
          goto LABEL_25;
        }
      }

      v22 = v27;
      (*v25)(v27, v13, v10);
      (*v24)(v22, 0, 1, v10);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v22, &unk_101A0DAE0, &qword_101483A10);
      (*v26)(v13, v10);
      v23 = __OFADD__(a2, v21);
      a2 += v21;
      if (v23)
      {
        goto LABEL_23;
      }

      v23 = __OFSUB__(a3, v21);
      a3 -= v21;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081FB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v5 - 8);
  v24 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v21 = (v8 + 56);
    v22 = (v8 + 16);
    v23 = (v8 + 8);
    do
    {
      v26 = 0;
      v27 = 0;
      sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPFontSizeAttribute;
      v12 = sub_10082465C();
      v13 = v25;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v28 = 0;
      v29 = 1;
      sub_1008246B0();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v26 + v27;
      }

      if (v26 < a2 || v26 >= v15)
      {
        if (a2 < v26 || a2 >= v14)
        {
          (*v23)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_25;
        }
      }

      v18 = v24;
      (*v22)(v24, v10, v7);
      (*v21)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0, &qword_101483A10);
      (*v23)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

void sub_10081FEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v5 - 8);
  v24 = &v20 - v6;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (a3 >= 1)
  {
    v22 = (v8 + 16);
    v21 = (v8 + 56);
    v23 = (v8 + 8);
    do
    {
      v26 = 0;
      v27 = 0;
      sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
      v11 = CRAttributedString.attributes(at:effectiveRange:)();
      __chkstk_darwin(v11);
      *(&v20 - 4) = &type metadata for CRLWPCharacterFillAttribute;
      v12 = sub_10082489C();
      v13 = v25;
      *(&v20 - 3) = v12;
      *(&v20 - 2) = v13;
      swift_getKeyPath();
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      sub_1008248F0();

      CRAttributedString.Attributes.subscript.setter();
      v14 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v15 = a2 + a3;
      if (__OFADD__(a2, a3))
      {
        goto LABEL_22;
      }

      if (v14 >= v15)
      {
        v16 = a2 + a3;
      }

      else
      {
        v16 = v26 + v27;
      }

      if (v26 < a2 || v26 >= v15)
      {
        if (a2 < v26 || a2 >= v14)
        {
          (*v23)(v10, v7);
          return;
        }

        v17 = v16 - a2;
        if (__OFSUB__(v16, a2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = v16 - v26;
        if (__OFSUB__(v16, v26))
        {
          goto LABEL_25;
        }
      }

      v18 = v24;
      (*v22)(v24, v10, v7);
      (*v21)(v18, 0, 1, v7);
      CRAttributedString.setAttributes(_:range:)();
      sub_10000CAAC(v18, &unk_101A0DAE0, &qword_101483A10);
      (*v23)(v10, v7);
      v19 = __OFADD__(a2, v17);
      a2 += v17;
      if (v19)
      {
        goto LABEL_23;
      }

      v19 = __OFSUB__(a3, v17);
      a3 -= v17;
      if (v19)
      {
        goto LABEL_24;
      }
    }

    while (a3 > 0);
  }
}

double sub_100820324(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  sub_100A46EFC(a1, v4);

  return result;
}

void sub_10082037C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_10082211C(v40, v27, v29, &type metadata for CRLWPFontBoldAttribute, sub_1008244A8, sub_1008244FC);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontBoldAttribute;
  v32 = sub_1008244A8();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34 & 1;
  sub_1008244FC();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100820818(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_10082211C(v40, v27, v29, &type metadata for CRLWPFontItalicAttribute, sub_1008245B4, sub_100824608);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontItalicAttribute;
  v32 = sub_1008245B4();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34 & 1;
  sub_100824608();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100820CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v38 = a2;
  v40 = a1;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v41 & ~(v41 >> 63)))
  {
    v27 = v41 & ~(v41 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v42 & ~(v42 >> 63);
  if (v26 >= v28)
  {
    v29 = v42 & ~(v42 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v39;
  if (v39 == 0xFF)
  {
    sub_1008223D0(v40, v27, v29, sub_10081FB94);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPFontSizeAttribute;
  v32 = sub_10082465C();
  v33 = v40;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v38;
    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v38 + 32);
LABEL_18:
  v43 = v34;
  v44 = 0;
  sub_1008246B0();

  v35 = v37;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v36 + 8))(v9, v35);
}

void sub_100821134(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v39 = a2;
  v41 = a1;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v42 & ~(v42 >> 63)))
  {
    v27 = v42 & ~(v42 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v43 & ~(v43 >> 63);
  if (v26 >= v28)
  {
    v29 = v43 & ~(v43 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v40;
  if (v40 == 0xFF)
  {
    sub_1008223D0(v41, v27, v29, sub_10081F4CC);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v36 - 4) = &type metadata for CRLWPUnderlineAttribute;
  v32 = sub_100824704();
  v33 = v41;
  *(&v36 - 3) = v32;
  *(&v36 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {
    v34 = v39;
    goto LABEL_18;
  }

  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v34 = *(v39 + 32);
LABEL_18:
  v44 = v34;
  v45 = 0;
  sub_100824758();

  v35 = v38;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v37 + 8))(v9, v35);
}

void sub_1008215B4(char *a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v40 = a2;
  v42 = a1;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    ObjectType = swift_getObjectType();
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v24 = sub_1012778D4(ObjectType, v23);

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  v25 = *(a4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  (*(*v25 + 896))();
  sub_1008243E0(&v16[*(v14 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v11 + 16))(v13, v19, v10);
  sub_100824448(v19, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.count.getter();
  (*(v11 + 8))(v13, v10);
  if (v26 >= (v43 & ~(v43 >> 63)))
  {
    v27 = v43 & ~(v43 >> 63);
  }

  else
  {
    v27 = v26;
  }

  v28 = v44 & ~(v44 >> 63);
  if (v26 >= v28)
  {
    v29 = v44 & ~(v44 >> 63);
  }

  else
  {
    v29 = v26;
  }

  if (v28 < v27)
  {
    __break(1u);
    goto LABEL_22;
  }

  v30 = v41;
  if (v41 == 0xFF)
  {
    sub_1008223D0(v42, v27, v29, sub_10081FEF4);
    return;
  }

  sub_10068D144();
  v31 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v31);
  *(&v38 - 4) = &type metadata for CRLWPCharacterFillAttribute;
  v32 = sub_10082489C();
  v33 = v42;
  *(&v38 - 3) = v32;
  *(&v38 - 2) = v33;
  swift_getKeyPath();
  if ((v30 & 1) == 0)
  {

    v36 = v40;
    sub_100824944(v40, v30);
    v35 = v36;
    goto LABEL_19;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = *(v40 + 32);

  v35 = v34;
LABEL_19:
  v37 = v39;
  sub_101247234(v35, v45);
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v9, v27, v29);
  (*(v38 + 8))(v9, v37);
}

void sub_100821A74(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v62 = a3;
  v59 = a2;
  v63 = a1;
  v7 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v7 - 8);
  v60 = &v56 - v8;
  v9 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_1005B981C(qword_101A0CF60, "87&");
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v61 = &v56 - v13;
  v14 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    ObjectType = swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = sub_1012778D4(ObjectType, v28);

    if ((v29 & 1) == 0)
    {
      return;
    }
  }

  v30 = *(v24 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v30)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(*v30 + 896))();
  sub_1008243E0(&v20[*(v18 + 20)], v23, type metadata accessor for CRLWPStorageCRDTData);
  sub_100824448(v20, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v15 + 16))(v17, v23, v14);
  sub_100824448(v23, type metadata accessor for CRLWPStorageCRDTData);
  v31 = CRAttributedString.count.getter();
  (*(v15 + 8))(v17, v14);
  if (v31 >= (v64 & ~(v64 >> 63)))
  {
    v32 = v64 & ~(v64 >> 63);
  }

  else
  {
    v32 = v31;
  }

  v33 = v65 & ~(v65 >> 63);
  if (v31 >= v33)
  {
    v34 = v65 & ~(v65 >> 63);
  }

  else
  {
    v34 = v31;
  }

  if (v33 < v32)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = v62;
  if (v62 == 0xFF)
  {
    sub_1008223D0(v63, v32, v34, sub_10081F0E4);
    return;
  }

  v65 = v34;
  sub_10068D144();
  v36 = v61;
  v37 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v37);
  *(&v56 - 4) = &type metadata for CRLWPHyperlinkAttribute;
  v38 = sub_1008247F4();
  v39 = v63;
  *(&v56 - 3) = v38;
  *(&v56 - 2) = v39;
  swift_getKeyPath();
  if ((v35 & 1) == 0)
  {
    v41 = v59;
    v40 = v60;
    if (!v59)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v40 = v60;
  if (!v59[2])
  {
    goto LABEL_27;
  }

  v41 = v59[4];
  if (v41)
  {
LABEL_19:
    v43 = v41;

    v44 = [v43 url];
    if (v44)
    {
      v45 = v44;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = type metadata accessor for URL();
    (*(*(v47 - 8) + 56))(v40, v46, 1, v47);
    v48 = [v43 textAttributeUUIDString];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      *v11 = 0;
      v11[8] = 0;
      v53 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
      sub_100044B68(v40, &v11[v53[5]]);
      v54 = &v11[v53[6]];
      *v54 = v50;
      v54[1] = v52;
      *&v11[v53[7]] = _swiftEmptyDictionarySingleton;
      (*(*(v53 - 1) + 56))(v11, 0, 1, v53);

      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_16:
  v42 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v42 - 8) + 56))(v11, 1, 1, v42);

LABEL_24:
  sub_100824848();
  v55 = v58;
  CRAttributedString.Attributes.subscript.setter();
  sub_100A33634(v36, v32, v65);
  (*(v57 + 8))(v36, v55);
}

void sub_10082211C(void (**a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2, uint64_t a3, void (**a4)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), void (*a6)(void))
{
  v28 = a5;
  v29 = a6;
  v8 = v6;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v22 = sub_1012778D4(ObjectType, v21);

    if ((v22 & 1) == 0)
    {
      return;
    }
  }

  v23 = *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = __OFSUB__(a3, a2);
  v25 = a3 - a2;
  if (v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(*v23 + 896))();
  sub_1008243E0(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

  sub_100824448(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10081F82C(a1, a2, v25, a4, v28, v29);
  v26 = (*(*v23 + 912))(v30);
  sub_100824550(v17, v27 + *(v12 + 20));
  v26(v30, 0);

  sub_100824448(v17, type metadata accessor for CRLWPStorageCRDTData);
  *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

void sub_1008223D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    ObjectType = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (!v19)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v20 = sub_1012778D4(ObjectType, v19);

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  v21 = *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = __OFSUB__(a3, a2);
  v23 = a3 - a2;
  if (v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(*v21 + 896))();
  sub_1008243E0(&v12[*(v10 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);

  sub_100824448(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  a4(a1, a2, v23);
  v24 = (*(*v21 + 912))(v26);
  sub_100824550(v15, v25 + *(v10 + 20));
  v24(v26, 0);

  sub_100824448(v15, type metadata accessor for CRLWPStorageCRDTData);
  *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

uint64_t sub_100822664(void *a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1008247AC(&qword_101A22920, type metadata accessor for CRLBoard, byte_1014B7534);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = _swiftEmptyDictionarySingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = _swiftEmptyDictionarySingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v5 + 32))(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v7, v4);
  v10 = (v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v10 = a1;
  v10[1] = v8;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v9 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = a2;
  v11 = a1;
  return v9;
}

uint64_t sub_10082294C(uint64_t a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t), const char *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1008247AC(a3, a4, a5);
  UUID.init()();
  type metadata accessor for CRLTransactionContext(0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications) = _swiftEmptyDictionarySingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications) = _swiftEmptyDictionarySingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans) = _swiftEmptyArrayStorage;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) = 0;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 1;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = 0;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_affectedItemUUIDSetForUndoableItems) = _swiftEmptySetSingleton;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 0;
  (*(v11 + 32))(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id, v13, v10);
  v16 = (v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  *v16 = a1;
  v16[1] = v14;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) = 0;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges) = 1;
  *(v15 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) = a2;

  return v15;
}

void sub_100822BB8(char *a1)
{
  v2 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v3 = *(v2 - 8);
  v201 = v2;
  v202 = v3;
  __chkstk_darwin(v2);
  v200 = &v179 - v4;
  v198 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v198);
  v199 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for CRLWPStorageCRDTData(0);
  v216 = *(v209 - 1);
  __chkstk_darwin(v209);
  v197 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v210 = *(v7 - 8);
  __chkstk_darwin(v7);
  v185 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v187 = &v179 - v10;
  __chkstk_darwin(v11);
  v194 = &v179 - v12;
  v13 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v13 - 8);
  v207 = &v179 - v14;
  v15 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v15 - 8);
  v184 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v188 = &v179 - v18;
  __chkstk_darwin(v19);
  v186 = &v179 - v20;
  __chkstk_darwin(v21);
  v203 = &v179 - v22;
  __chkstk_darwin(v23);
  v206 = &v179 - v24;
  __chkstk_darwin(v25);
  v27 = &v179 - v26;
  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  __chkstk_darwin(inserted - 8);
  v30 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_100822664(a1, 1);
  v31 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data] + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v32 = type metadata accessor for CRLBoardCRDTData(0);
  sub_1008243E0(v31 + *(v32 + 28), v30, type metadata accessor for CRLBoardInsertStyleData);
  v33 = type metadata accessor for CRLBoardItemFactory(0);
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] = a1;
  sub_1008243E0(v30, &v34[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_insertStyleSettings], type metadata accessor for CRLBoardInsertStyleData);
  v211.receiver = v34;
  v211.super_class = v33;
  v35 = a1;
  v36 = v27;
  v37 = objc_msgSendSuper2(&v211, "init");
  sub_100824448(v30, type metadata accessor for CRLBoardInsertStyleData);
  v38 = *(v210 + 56);
  v205 = v7;
  v195 = v38;
  v196 = v210 + 56;
  v38(v27, 1, 1, v7);
  sub_1006950BC(v214);
  v212[12] = v214[12];
  v212[13] = v214[13];
  v212[14] = v214[14];
  v213 = v215;
  v212[8] = v214[8];
  v212[9] = v214[9];
  v212[10] = v214[10];
  v212[11] = v214[11];
  v212[4] = v214[4];
  v212[5] = v214[5];
  v212[6] = v214[6];
  v212[7] = v214[7];
  v212[0] = v214[0];
  v212[1] = v214[1];
  v212[2] = v214[2];
  v212[3] = v214[3];
  v39 = 0;
  if (!sub_100824318(4))
  {
    v40 = v35;
    v41 = v206;
    sub_100824324(v27, v206);
    v42 = v210;
    v43 = *(v210 + 48);
    v44 = v41;
    v45 = v205;
    if (v43(v44, 1, v205) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v43(v206, 1, v45) != 1)
      {
        sub_10000CAAC(v206, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v42 + 32))(v194, v206, v45);
    }

    sub_100824394();
    v39 = NSAttributedString.init(_:)();
    v35 = v40;
    v36 = v27;
  }

  v193 = v35;
  v46 = *(v216 + 56);
  v47 = v36;
  v48 = v207;
  v216 += 56;
  v194 = v46;
  (v46)(v207, 1, 1, v209);
  v49 = sub_1011133FC(4, 0, 0, 0, 0x4082C00000000000, 0x406F400000000000, 0, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v39, v48, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v48, &unk_101A0B1C0, &qword_101470EC0);
  sub_10000CAAC(v47, &qword_1019FC880, &qword_1014779C0);
  v192 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  v50 = *&v35[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v51 = swift_allocObject();
  v190 = xmmword_101465920;
  *(v51 + 16) = xmmword_101465920;
  *(v51 + 32) = v49;
  v52 = v50;
  v206 = v49;
  v53 = NSNotFound.getter();
  v54 = sub_1005B981C(&unk_101A09DB0, &unk_1014B9050);
  inited = swift_initStackObject();
  v189 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = v53;
  v56 = inited + 32;
  *(inited + 40) = v51;
  v57 = sub_100BD4E94(inited);
  swift_setDeallocating();
  sub_10000CAAC(v56, &qword_101A039D0, &unk_101489780);
  v58 = v204;
  sub_100971EFC(v57, v208);
  if (v58)
  {

    return;
  }

  v182 = v54;
  v183 = 0;
  v204 = v37;

  v206 = objc_opt_self();
  v59 = [v206 blackColor];
  v181 = objc_opt_self();
  v60 = [v181 strokeWithColor:v59 width:3.0];

  v61 = objc_opt_self();
  v62 = [v61 simpleArrow];
  v63 = [v61 simpleArrow];
  v64 = v203;
  v65 = v205;
  v195(v203, 1, 1, v205);
  if (sub_100824318(1))
  {
    v66 = 0;
    v67 = v204;
    v68 = v209;
  }

  else
  {
    v180 = v60;
    v69 = v186;
    sub_100824324(v64, v186);
    v70 = v210;
    v71 = *(v210 + 48);
    v72 = v71(v69, 1, v65);
    v68 = v209;
    if (v72 == 1)
    {
      AttributedString.init(stringLiteral:)();
      v73 = v71(v69, 1, v65);
      v67 = v204;
      if (v73 != 1)
      {
        sub_10000CAAC(v69, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v70 + 32))(v187, v69, v65);
      v67 = v204;
    }

    sub_100824394();
    v66 = NSAttributedString.init(_:)();
    v60 = v180;
  }

  v74 = v207;
  (v194)(v207, 1, 1, v68);
  v75 = sub_1011133FC(1, 0, 0, 0, 0x4069000000000000, 0x407F400000000000, 0, 0, 0, 0x4073B00000000000, 0, 2, 2, v60, 1, v62, v63, v66, v74, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v74, &unk_101A0B1C0, &qword_101470EC0);
  sub_10000CAAC(v203, &qword_1019FC880, &qword_1014779C0);
  v76 = *&v193[v192];
  v77 = swift_allocObject();
  *(v77 + 16) = v190;
  *(v77 + 32) = v75;
  v78 = v76;
  v79 = v75;
  v80 = NSNotFound.getter();
  v81 = swift_initStackObject();
  *(v81 + 16) = v189;
  v82 = v67;
  *(v81 + 32) = v80;
  v83 = v81 + 32;
  *(v81 + 40) = v77;
  v84 = sub_100BD4E94(v81);
  swift_setDeallocating();
  sub_10000CAAC(v83, &qword_101A039D0, &unk_101489780);
  v85 = v183;
  sub_100971EFC(v84, v208);
  if (v85)
  {

    return;
  }

  v183 = 0;

  v86 = [v206 orangeColor];
  v87 = [v181 strokeWithColor:v86 width:3.0];

  v88 = [objc_opt_self() yellowColor];
  v89 = v188;
  v90 = v205;
  v195(v188, 1, 1, v205);
  LOBYTE(v86) = sub_100824318(11);
  v203 = v87;
  v206 = v88;
  if (v86)
  {
    v91 = 0;
  }

  else
  {
    v92 = v184;
    sub_100824324(v89, v184);
    v93 = v210;
    v94 = *(v210 + 48);
    if (v94(v92, 1, v90) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v94(v92, 1, v90) != 1)
      {
        sub_10000CAAC(v92, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v93 + 32))(v185, v92, v90);
    }

    sub_100824394();
    v91 = NSAttributedString.init(_:)();
  }

  (v194)(v74, 1, 1, v209);
  v95 = sub_1011133FC(11, 0, 0, 0, 0x4082C00000000000, 0x407C200000000000, 0, 0, 0, 0, 1, 2, 2, v87, v88, 1, 1, v91, v74, v212, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v74, &unk_101A0B1C0, &qword_101470EC0);
  sub_10000CAAC(v188, &qword_1019FC880, &qword_1014779C0);
  type metadata accessor for CRLWPShapeItem(0);
  v96 = swift_dynamicCastClassUnconditional();
  v97 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v98 = *(v96 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v98)
  {
    __break(1u);
    goto LABEL_66;
  }

  v99 = v96;
  v100 = v98;
  sub_100A2E1E0(0xD00000000000002FLL, 0x800000010156C410);

  v101 = *(v99 + v97);
  if (!v101)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v216 = v99;
  v207 = v95;
  KeyPath = swift_getKeyPath();
  v103 = *&v101[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v103)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v104 = KeyPath;
  v105 = v199;
  (*(*v103 + 896))();
  v106 = v197;
  sub_1008243E0(v105 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v107 = v101;
  sub_100824448(v105, type metadata accessor for CRLWPShapeItemCRDTData);
  v108 = v201;
  v109 = v202;
  v110 = v200;
  v210 = *(v202 + 16);
  (v210)(v200, v106, v201);
  sub_100824448(v106, type metadata accessor for CRLWPStorageCRDTData);
  v111 = CRAttributedString.count.getter();
  v112 = *(v109 + 8);
  v202 = v109 + 8;
  v209 = v112;
  (v112)(v110, v108);
  if (v111 >= 4)
  {
    v113 = 4;
  }

  else
  {
    v113 = v111;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_34;
  }

  v115 = Strong;
  ObjectType = swift_getObjectType();
  v117 = swift_conformsToProtocol2();
  if (!v117)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v118 = sub_1012778D4(ObjectType, v117);

  if (v118)
  {
LABEL_34:
    sub_100821134(v104, 1, 0, v107, v111 & (v111 >> 63), v113);
  }

  v119 = *(v216 + v97);
  if (!v119)
  {
    goto LABEL_68;
  }

  v120 = swift_getKeyPath();
  v121 = *&v119[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v121)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v122 = v120;
  v123 = v199;
  (*(*v121 + 896))();
  v124 = v197;
  sub_1008243E0(v123 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v125 = v119;
  sub_100824448(v123, type metadata accessor for CRLWPShapeItemCRDTData);
  v126 = v200;
  v127 = v201;
  (v210)(v200, v124, v201);
  sub_100824448(v124, type metadata accessor for CRLWPStorageCRDTData);
  v128 = CRAttributedString.count.getter();
  (v209)(v126, v127);
  if (v128 >= 4)
  {
    v129 = 4;
  }

  else
  {
    v129 = v128;
  }

  v130 = swift_unknownObjectWeakLoadStrong();
  if (!v130)
  {
    goto LABEL_43;
  }

  v131 = v130;
  v132 = swift_getObjectType();
  v133 = swift_conformsToProtocol2();
  if (!v133)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v134 = sub_1012778D4(v132, v133);

  if (v134)
  {
LABEL_43:
    sub_100820CB4(v122, 1103626240, 0, v125, v128 & (v128 >> 63), v129);
  }

  v135 = *(v216 + v97);
  if (!v135)
  {
    goto LABEL_70;
  }

  v136 = swift_getKeyPath();
  v137 = *&v135[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v137)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v138 = v136;
  v139 = v199;
  (*(*v137 + 896))();
  v140 = v197;
  sub_1008243E0(v139 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v141 = v135;
  sub_100824448(v139, type metadata accessor for CRLWPShapeItemCRDTData);
  v142 = v200;
  v143 = v201;
  (v210)(v200, v140, v201);
  sub_100824448(v140, type metadata accessor for CRLWPStorageCRDTData);
  v144 = CRAttributedString.count.getter();
  (v209)(v142, v143);
  if (v144 >= 4)
  {
    v145 = 4;
  }

  else
  {
    v145 = v144;
  }

  v146 = swift_unknownObjectWeakLoadStrong();
  if (!v146)
  {
    goto LABEL_52;
  }

  v147 = v146;
  v148 = swift_getObjectType();
  v149 = swift_conformsToProtocol2();
  if (!v149)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v150 = sub_1012778D4(v148, v149);

  if (v150)
  {
LABEL_52:
    sub_100820818(v138, 1, 0, v141, v144 & (v144 >> 63), v145);
  }

  v151 = *(v216 + v97);
  if (!v151)
  {
    goto LABEL_72;
  }

  v152 = swift_getKeyPath();
  v153 = *&v151[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v153)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v154 = v152;
  v155 = v199;
  (*(*v153 + 896))();
  v156 = v197;
  sub_1008243E0(v155 + *(v198 + 20), v197, type metadata accessor for CRLWPStorageCRDTData);
  v157 = v151;
  sub_100824448(v155, type metadata accessor for CRLWPShapeItemCRDTData);
  v158 = v200;
  v159 = v201;
  (v210)(v200, v156, v201);
  sub_100824448(v156, type metadata accessor for CRLWPStorageCRDTData);
  v160 = CRAttributedString.count.getter();
  (v209)(v158, v159);
  if (v160 >= 4)
  {
    v161 = 4;
  }

  else
  {
    v161 = v160;
  }

  v162 = swift_unknownObjectWeakLoadStrong();
  v163 = v193;
  if (v162)
  {
    v164 = v162;
    v165 = swift_getObjectType();
    v166 = swift_conformsToProtocol2();
    if (v166)
    {
      v167 = sub_1012778D4(v165, v166);

      if ((v167 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

LABEL_77:
    __break(1u);
    return;
  }

LABEL_61:
  sub_10082037C(v154, 1, 0, v157, v160 & (v160 >> 63), v161);
LABEL_62:

  v168 = *&v163[v192];
  v169 = swift_allocObject();
  *(v169 + 16) = v190;
  *(v169 + 32) = v216;
  v170 = v168;
  v171 = v207;
  v172 = NSNotFound.getter();
  v173 = swift_initStackObject();
  *(v173 + 16) = v189;
  *(v173 + 32) = v172;
  v174 = v173 + 32;
  *(v173 + 40) = v169;
  v175 = sub_100BD4E94(v173);
  swift_setDeallocating();
  sub_10000CAAC(v174, &qword_101A039D0, &unk_101489780);
  v176 = v208;
  v177 = v183;
  sub_100971EFC(v175, v208);
  if (v177)
  {
  }

  else
  {

    (*(*v176 + 720))(v178);
  }
}

uint64_t sub_100824324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100824394()
{
  result = qword_1019F76F0;
  if (!qword_1019F76F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F76F0);
  }

  return result;
}

uint64_t sub_1008243E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100824448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008244A8()
{
  result = qword_101A09650;
  if (!qword_101A09650)
  {
    result = swift_getWitnessTable(byte_10148FB34, &type metadata for CRLWPFontBoldAttribute, v0, v1);
    atomic_store(result, &qword_101A09650);
  }

  return result;
}

unint64_t sub_1008244FC()
{
  result = qword_101A039D8;
  if (!qword_101A039D8)
  {
    result = swift_getWitnessTable(byte_10148FAEC, &type metadata for CRLWPFontBoldAttribute, v0, v1);
    atomic_store(result, &qword_101A039D8);
  }

  return result;
}

uint64_t sub_100824550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008245B4()
{
  result = qword_101A039E0;
  if (!qword_101A039E0)
  {
    result = swift_getWitnessTable(a4, &type metadata for CRLWPFontItalicAttribute, v0, v1);
    atomic_store(result, &qword_101A039E0);
  }

  return result;
}

unint64_t sub_100824608()
{
  result = qword_101A09640;
  if (!qword_101A09640)
  {
    result = swift_getWitnessTable("Ir:", &type metadata for CRLWPFontItalicAttribute, v0, v1);
    atomic_store(result, &qword_101A09640);
  }

  return result;
}

unint64_t sub_10082465C()
{
  result = qword_101A09660;
  if (!qword_101A09660)
  {
    result = swift_getWitnessTable(byte_10148F568, &type metadata for CRLWPFontSizeAttribute, v0, v1);
    atomic_store(result, &qword_101A09660);
  }

  return result;
}

unint64_t sub_1008246B0()
{
  result = qword_101A0D1F0;
  if (!qword_101A0D1F0)
  {
    result = swift_getWitnessTable(byte_10148F520, &type metadata for CRLWPFontSizeAttribute, v0, v1);
    atomic_store(result, &qword_101A0D1F0);
  }

  return result;
}

unint64_t sub_100824704()
{
  result = qword_101A0D8C0;
  if (!qword_101A0D8C0)
  {
    result = swift_getWitnessTable(byte_10148FC58, &type metadata for CRLWPUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_101A0D8C0);
  }

  return result;
}

unint64_t sub_100824758()
{
  result = qword_101A039E8;
  if (!qword_101A039E8)
  {
    result = swift_getWitnessTable(byte_10148FC10, &type metadata for CRLWPUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_101A039E8);
  }

  return result;
}

uint64_t sub_1008247AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008247F4()
{
  result = qword_101A0DA80;
  if (!qword_101A0DA80)
  {
    result = swift_getWitnessTable(asc_101490078, &type metadata for CRLWPHyperlinkAttribute, v0, v1);
    atomic_store(result, &qword_101A0DA80);
  }

  return result;
}

unint64_t sub_100824848()
{
  result = qword_101A096D0;
  if (!qword_101A096D0)
  {
    result = swift_getWitnessTable(byte_101490024, &type metadata for CRLWPHyperlinkAttribute, v0, v1);
    atomic_store(result, &qword_101A096D0);
  }

  return result;
}

unint64_t sub_10082489C()
{
  result = qword_101A0D8B0;
  if (!qword_101A0D8B0)
  {
    result = swift_getWitnessTable(byte_10148FE34, &type metadata for CRLWPCharacterFillAttribute, v0, v1);
    atomic_store(result, &qword_101A0D8B0);
  }

  return result;
}

unint64_t sub_1008248F0()
{
  result = qword_101A039F8;
  if (!qword_101A039F8)
  {
    result = swift_getWitnessTable(byte_10148FDEC, &type metadata for CRLWPCharacterFillAttribute, v0, v1);
    atomic_store(result, &qword_101A039F8);
  }

  return result;
}

id sub_100824944(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_10082495C(result, a2 & 1);
  }

  return result;
}

id sub_10082495C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void *sub_100824978(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_101A03A00, &unk_101480610);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(_s4NodeVMa(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000CAAC(v9, &qword_101A03A00, &unk_101480610);
    }

    else
    {
      v20 = v28;
      sub_10003DF00(v9, v28, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003DF00(v20, v30, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B36D24(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100B36D24((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10003DF00(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_100824C94(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1005B981C(&unk_101A00170, &qword_101480650);
  __chkstk_darwin(v5 - 8);
  v35 = v31 - v6;
  v38 = type metadata accessor for CRLDisjointPosition.Element(0);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (v31 - v10);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v31[1] = v2;
  v40 = _swiftEmptyArrayStorage;
  sub_1007769A4(0, v12, 0);
  v14 = 0;
  v13 = v40;
  v32 = (v7 + 48);
  v33 = (v7 + 56);
  v36 = xmmword_10146C6B0;
  v37 = v12;
  while (1)
  {
    v15 = *a2;
    if (!*a2)
    {
      sub_1005B981C(&qword_1019F49A0, &unk_101480600);
      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v36;
      v39 = 0;
      swift_stdlib_random();
      v20 = v39;
      if (199 * v39 <= 0x7D)
      {
        do
        {
          v39 = 0;
          swift_stdlib_random();
          v20 = v39;
        }

        while (199 * v39 < 0x7E);
      }

      v21 = (v19 + v18);
      v22 = ((v20 * 0xC7uLL) >> 64) - 99;
      UUID.init()();
      *v21 = v22;
      goto LABEL_15;
    }

    if (*(v15 + 16))
    {
      v16 = v35;
      sub_10003CA5C(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v35, type metadata accessor for CRLDisjointPosition.Element);
      (*(v7 + 56))(v16, 0, 1, v38);
      result = sub_10003DF00(v16, v11, type metadata accessor for CRLDisjointPosition.Element);
    }

    else
    {
      (*v33)(v35, 1, 1, v38);
      v39 = 0;
      swift_stdlib_random();
      v23 = v39;
      if (199 * v39 <= 0x7D)
      {
        do
        {
          v39 = 0;
          swift_stdlib_random();
          v23 = v39;
        }

        while (199 * v39 < 0x7E);
      }

      v24 = ((v23 * 0xC7uLL) >> 64) - 99;
      v25 = v38;
      UUID.init()();
      *v11 = v24;
      result = (*v32)(v35, 1, v25);
      if (result != 1)
      {
        result = sub_10000CAAC(v35, &unk_101A00170, &qword_101480650);
      }
    }

    v26 = *v11 + 100;
    if (__OFADD__(*v11, 100))
    {
      break;
    }

    v27 = v34;
    UUID.init()();
    *v27 = v26;
    sub_1005B981C(&qword_1019F49A0, &unk_101480600);
    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v36;
    sub_10003DF00(v27, v19 + v28, type metadata accessor for CRLDisjointPosition.Element);
    sub_10003E060(v11, type metadata accessor for CRLDisjointPosition.Element);
LABEL_15:

    *a2 = v19;

    v40 = v13;
    v30 = v13[2];
    v29 = v13[3];
    if (v30 >= v29 >> 1)
    {
      sub_1007769A4((v29 > 1), v30 + 1, 1);
      v13 = v40;
    }

    ++v14;
    v13[2] = v30 + 1;
    v13[v30 + 4] = v19;
    if (v14 == v37)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100825120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s4NodeVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  if (*(v9 + 16) && (v10 = sub_10003E994(a1), (v11 & 1) != 0))
  {
    sub_10003CA5C(*(v9 + 56) + *(v6 + 72) * v10, v8, _s4NodeVMa);
    sub_10003CA5C(v8, a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003E060(v8, _s4NodeVMa);
    v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

void (*sub_100825300(void (*result)(void, uint64_t)))(void, uint64_t)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v5 = *(v3 + 32);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v4)
      {
LABEL_6:
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (result)
      {
        v2(0, 1);
        return v5;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1008253E8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_10067CA1C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1008254C0()
{
  v1 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v1);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  sub_10003CA5C(v0, &v57 - v5, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
      return 0x1000000000000017;
    }

    v58 = v6;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v10 = inited;
    sub_10003CA5C(v0, v3, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v6 = &type metadata for String;
    v10[7] = &type metadata for String;
    v14 = sub_1000053B0();
    v10[4] = v11;
    v59 = v14;
    v60 = v10 + 4;
    v10[8] = v14;
    v10[5] = v13;
    v57 = objc_opt_self();
    LODWORD(v15) = [v57 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(v10, &v61, "Encountered an error case with an unexpected view model item type: %s", 69, 2u);
    StaticString.description.getter("errorDescription", 16, 2);
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CacheSnapshot.swift", 99, 2);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_40;
    }

LABEL_7:
    v22 = static OS_os_log.crlAssert;
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_1005CF000();
    *(v23 + 96) = v24;
    v25 = sub_10083356C(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v23 + 72) = v16;
    v26 = v59;
    *(v23 + 136) = v6;
    *(v23 + 144) = v26;
    *(v23 + 104) = v25;
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 152) = 593;
    v27 = v61;
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    v59 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "Encountered an error case with an unexpected view model item type: %s", 69, 2, v10);

    type metadata accessor for __VaListBuilder();
    v16 = swift_allocObject();
    v16[2] = 8;
    v16[3] = 0;
    v32 = v16 + 3;
    v16[4] = 0;
    v16[5] = 0;
    v19 = v10[2];
    if (!v19)
    {
LABEL_35:
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter("errorDescription", 16, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/ViewModel/CacheSnapshot.swift", 99, 2);
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Encountered an error case with an unexpected view model item type: %s", v57);
      v51 = String._bridgeToObjectiveC()();

      [v57 handleFailureInFunction:v49 file:v50 lineNumber:593 isFatal:0 format:v51 args:v48];

      swift_setDeallocating();
      swift_arrayDestroy();
      v52 = [objc_opt_self() mainBundle];
      v53 = String._bridgeToObjectiveC()();
      v54 = String._bridgeToObjectiveC()();
      v55 = [v52 localizedStringForKey:v53 value:v54 table:0];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10003E060(v58, _s13CacheSnapshotV20TitleValidationErrorOMa);
      return v56;
    }

    v33 = 0;
    v6 = 40;
    while (1)
    {
      v21 = sub_100020E58(&v60[5 * v33], v60[5 * v33 + 3]);
      v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v15 = *v32;
      v35 = *(v34 + 16);
      v36 = __OFADD__(*v32, v35);
      v37 = *v32 + v35;
      if (v36)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_7;
      }

      v21 = v16[4];
      if (v21 >= v37)
      {
        goto LABEL_24;
      }

      if (v21 + 0x4000000000000000 < 0)
      {
        goto LABEL_38;
      }

      v38 = v16[5];
      if (2 * v21 > v37)
      {
        v37 = 2 * v21;
      }

      v16[4] = v37;
      if ((v37 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_39;
      }

      v39 = v10;
      v40 = v34;
      v41 = swift_slowAlloc();
      v42 = v41;
      v16[5] = v41;
      if (v38)
      {
        break;
      }

      v34 = v40;
      v10 = v39;
      v6 = 40;
      if (!v42)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_25:
      v44 = *(v34 + 16);
      if (v44)
      {
        v45 = (v34 + 32);
        v46 = *v32;
        while (1)
        {
          v47 = *v45++;
          *&v42[8 * v46] = v47;
          v46 = *v32 + 1;
          if (__OFADD__(*v32, 1))
          {
            break;
          }

          *v32 = v46;
          if (!--v44)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_9:

      if (++v33 == v19)
      {
        goto LABEL_35;
      }
    }

    if (v41 != v38 || v41 >= &v38[8 * v15])
    {
      memmove(v41, v38, 8 * v15);
    }

    v21 = v16;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v34 = v40;
    v10 = v39;
    v6 = 40;
LABEL_24:
    v42 = v16[5];
    if (!v42)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_32:
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0x1000000000000018;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0xD000000000000014;
  }

  else
  {
    sub_10003E060(v6, _s13CacheSnapshotV20TitleValidationErrorOMa);
    return 0xD000000000000015;
  }
}

uint64_t sub_100825CC8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003CA5C(v1, v7, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v25 = *v7;
        v24 = v7[1];
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10146C6B0;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_1000053B0();
        *(v26 + 32) = v25;
        *(v26 + 40) = v24;
        v23 = static String.localizedStringWithFormat(_:_:)();
LABEL_11:

        return v23;
      }

      v9 = *v7;
      v10 = v7[1];
      v11 = [objc_opt_self() mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

LABEL_10:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10146C6B0;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_1000053B0();
      *(v30 + 32) = v9;
      *(v30 + 40) = v10;
      v23 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_11;
    }

LABEL_9:
    v9 = *v7;
    v10 = v7[1];
    v27 = [objc_opt_self() mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v14 = [v27 localizedStringForKey:v28 value:v29 table:0];

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  sub_10003DF00(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146C6B0;
  v20 = sub_100F88220();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000053B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = static String.localizedStringWithFormat(_:_:)();

  sub_10003E060(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return v23;
}

Swift::Int sub_1008261E8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_10113DF50(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_10082C8F4(v10, a2, a3);
  *a1 = v7;
  return result;
}

void sub_1008262A8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100068B28(v5);
  }

  sub_10082CA30(a1, a2);
  *v2 = v5;
}

uint64_t sub_100826368@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F87E04(v6);
  if (!*(*(v1 + 40) + 16) || (sub_10003E994(v6), (v7 & 1) == 0))
  {
    (*(v4 + 8))(v6, v3);
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v4 + 8))(v6, v3);
  if (!Strong)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  sub_10003CA5C(Strong + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, a1, _s4NodeVMa);

  v9 = 0;
LABEL_7:
  v10 = _s4NodeVMa(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_10082650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v62 = a2;
  v69 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v69);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A03A00, &unk_101480610);
  __chkstk_darwin(v4 - 8);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v58 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v58 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = _s4NodeVMa(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v61 = &v58 - v24;
  sub_100F87E04(v15);
  v25 = *(v66 + 24);
  if (*(v25 + 16) && (v26 = sub_10003E994(v15), (v27 & 1) != 0))
  {
    sub_10003CA5C(*(v25 + 56) + *(v20 + 72) * v26, v18, _s4NodeVMa);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v13 + 8))(v15, v12);
  (*(v20 + 56))(v18, v28, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v35 = v18;
    v36 = v61;
    sub_10003DF00(v35, v61, _s4NodeVMa);
    v37 = *(v36 + *(v19 + 20));
    v38 = *(v37 + 16);
    if (!v38)
    {
      v41 = _swiftEmptyArrayStorage;
LABEL_25:
      v72 = v41;

      sub_1008261E8(&v72, sub_10082D060, sub_10082CDFC);

      v51 = v72;
      v52 = v72[2];
      v53 = v60;
      v54 = v59;
      if (!v52)
      {
LABEL_30:
        sub_10003E060(v61, _s4NodeVMa);

        return (*(v70 + 56))(v62, 1, 1, v71);
      }

      v55 = 0;
      while (v55 < *(v51 + 16))
      {
        sub_10003CA5C(v51 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55, v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (sub_1009D1B18(v53, *(v54 + *(v71 + 28))))
        {
          sub_10003E060(v61, _s4NodeVMa);

          v57 = v62;
          sub_10003DF00(v54, v62, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          return (*(v70 + 56))(v57, 0, 1, v71);
        }

        ++v55;
        sub_10003E060(v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v52 == v55)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v39 = v37 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v64 = (v70 + 56);
    v40 = (v70 + 48);
    v41 = _swiftEmptyArrayStorage;
    v42 = *(v20 + 72);
    v65 = v3;
    v66 = v42;
    v43 = v63;
    v44 = v71;
    while (1)
    {
      sub_10003CA5C(v39, v22, _s4NodeVMa);
      sub_10003CA5C(v22, v3, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003E060(v22, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        if (!(*(*(v45 - 8) + 48))(v3, 5, v45))
        {
          sub_10003DF00(v3, v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v47 = 0;
          goto LABEL_17;
        }

        v46 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v46 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v3, v46);
      v47 = 1;
LABEL_17:
      (*v64)(v43, v47, 1, v44);
      v48 = v67;
      sub_10003DFF8(v43, v67, &qword_101A03A00, &unk_101480610);
      if ((*v40)(v48, 1, v44) == 1)
      {
        sub_10000CAAC(v48, &qword_101A03A00, &unk_101480610);
      }

      else
      {
        sub_10003DF00(v48, v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100B36D24(0, v41[2] + 1, 1, v41);
        }

        v50 = v41[2];
        v49 = v41[3];
        if (v50 >= v49 >> 1)
        {
          v41 = sub_100B36D24((v49 > 1), v50 + 1, 1, v41);
        }

        v41[2] = v50 + 1;
        sub_10003DF00(v68, v41 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v43 = v63;
      }

      v3 = v65;
      v39 += v66;
      if (!--v38)
      {
        goto LABEL_25;
      }
    }
  }

  sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
  if (qword_1019F2130 != -1)
  {
LABEL_34:
    swift_once();
  }

  v29 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v31 = sub_100F8903C();
  v33 = v32;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v31;
  *(inited + 40) = v33;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v34, "Could not find node for parent item %@. Returning nil.", 54, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  return (*(v70 + 56))(v62, 1, 1, v71);
}

uint64_t sub_100826E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v8 = 0;
  v24 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v9 = *(v24 - 8);
  while (1)
  {
    if (v6 == v8)
    {
      v13 = *(v9 + 56);
      v14 = a1;
      v15 = 1;
      goto LABEL_10;
    }

    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    v12 = v10 + v11 * v8;
    sub_100017CD8();
    if (StringProtocol.localizedCaseInsensitiveCompare<A>(_:)() == 1)
    {
      break;
    }

    if (v7 == ++v8)
    {
      sub_10003CA5C(v12, a1, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v13 = *(v9 + 56);
      v14 = a1;
      v15 = 0;
LABEL_10:
      v13(v14, v15, 1, v24);
      v16 = a2;
      v17 = 1;
      v18 = v24;
      return (v13)(v16, v17, 1, v18);
    }
  }

  if (v8)
  {
    v19 = a1;
    sub_10003CA5C(v10 + v11 * (v8 - 1), a1, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v19 = a1;
  }

  v13 = *(v9 + 56);
  v13(v19, v20, 1, v24);
  sub_10003CA5C(v12, a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v16 = a2;
  v17 = 0;
  v18 = v24;
  return (v13)(v16, v17, 1, v18);
}

uint64_t sub_100827084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v66 = a2;
  v74 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v72);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v65);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v14 - 8);
  v69 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  v19 = _s4NodeVMa(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v68 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v64 - v24;
  v26 = *(v11 + 16);
  v75 = a1;
  v26(v13, a1, v10, v23);
  v70 = v4;
  v27 = *(v4 + 24);
  if (*(v27 + 16) && (v28 = sub_10003E994(v13), (v29 & 1) != 0))
  {
    sub_10003CA5C(*(v27 + 56) + *(v20 + 72) * v28, v18, _s4NodeVMa);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v11 + 8))(v13, v10);
  (*(v20 + 56))(v18, v30, 1, v19);
  v31 = *(v20 + 48);
  if (v31(v18, 1, v19) == 1)
  {
    sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
LABEL_12:
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v72 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    sub_10003CA5C(v75, v73, type metadata accessor for CRLFolderIdentifier);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v39, "Could not find folder node with identifier %@ or its parent with identifier %@. Returning a generic disjoint position.", 118, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_1005B981C(&qword_1019F49A0, &unk_101480600);
    v40 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v72;
    v43 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v42 + v41) = v43;
    return v42;
  }

  sub_10003DF00(v18, v25, _s4NodeVMa);
  sub_10003CA5C(v25, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003E060(v25, _s4NodeVMa);
    v33 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_11;
  }

  v32 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  if ((*(*(v32 - 8) + 48))(v8, 5, v32))
  {
    sub_10003E060(v25, _s4NodeVMa);
    v33 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_11:
    sub_10003E060(v8, v33);
    goto LABEL_12;
  }

  v45 = v71;
  sub_10003DF00(v8, v71, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v46 = v69;
  sub_100826368(v69);
  if (v31(v46, 1, v19) == 1)
  {
    sub_10000CAAC(v46, &unk_1019FB770, &unk_10146FA30);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v48 = swift_initStackObject();
    v72 = xmmword_10146C6B0;
    *(v48 + 16) = xmmword_10146C6B0;
    sub_10003CA5C(v75, v73, type metadata accessor for CRLFolderIdentifier);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v52, "Could not find parent node of folder with identifier %@. Returning a generic disjoint position.", 95, 2, v48);
    swift_setDeallocating();
    sub_100005070((v48 + 32));
    sub_1005B981C(&qword_1019F49A0, &unk_101480600);
    v53 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v72;
    v55 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v42 + v54) = v55;
    sub_10003E060(v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v56 = _s4NodeVMa;
    v57 = v25;
  }

  else
  {
    v58 = v68;
    v59 = sub_10003DF00(v46, v68, _s4NodeVMa);
    __chkstk_darwin(v59);
    *(&v64 - 2) = v75;
    v61 = sub_100824978(sub_100831A38, (&v64 - 4), v60);
    v76[0] = v61;

    sub_1008261E8(v76, sub_10082D060, sub_10082CDFC);
    v62 = v76[0];
    v76[0] = v61;

    sub_1008261E8(v76, sub_10082D9BC, sub_10082CB6C);
    v63 = sub_100673E18(v62, v76[0]);

    if (v63)
    {
      v42 = sub_10083073C(v66, v67, v61);

      sub_10003E060(v58, _s4NodeVMa);
      sub_10003E060(v45, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v57 = v25;
      v56 = _s4NodeVMa;
    }

    else
    {

      sub_10003E060(v58, _s4NodeVMa);
      sub_10003E060(v25, _s4NodeVMa);
      v42 = *(v45 + *(v65 + 28));

      v56 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
      v57 = v45;
    }
  }

  sub_10003E060(v57, v56);
  return v42;
}

uint64_t sub_100827BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CA5C(a1, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_5;
  }

  v13 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  if ((*(*(v13 - 8) + 48))(v8, 5, v13))
  {
    v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_5:
    v15 = v14;
    v16 = v8;
    goto LABEL_6;
  }

  sub_10003DF00(v8, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v19 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v20 = *&v12[v19], v21 = *&v12[v19 + 8], v22 = (a2 + v19), v20 == *v22) ? (v23 = v21 == v22[1]) : (v23 = 0), !v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_10003DF00(v12, a3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v17 = 0;
    return (*(v10 + 56))(a3, v17, 1, v9);
  }

  v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
  v16 = v12;
LABEL_6:
  sub_10003E060(v16, v15);
  v17 = 1;
  return (*(v10 + 56))(a3, v17, 1, v9);
}

void sub_100827E48(unint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v507 = a4;
  v508 = a3;
  v570 = a2;
  v565 = a1;
  v494 = type metadata accessor for URL();
  v505 = *(v494 - 8);
  __chkstk_darwin(v494);
  v485 = &v475 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v5 - 8);
  v489 = &v475 - v6;
  v493 = sub_1005B981C(&unk_101A0B780, &unk_101480630);
  __chkstk_darwin(v493);
  v492 = &v475 - v7;
  v514 = _s5BoardV13ShareMetadataVMa(0);
  v504 = *(v514 - 1);
  __chkstk_darwin(v514);
  v477 = &v475 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v498 = &v475 - v10;
  v11 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v11 - 8);
  v478 = &v475 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v500 = &v475 - v14;
  v499 = sub_1005B981C(&qword_1019F33D8, &unk_101480640);
  __chkstk_darwin(v499);
  v479 = &v475 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v515 = &v475 - v17;
  v556 = type metadata accessor for CRLDisjointPosition.Element(0);
  v516 = *(v556 - 8);
  __chkstk_darwin(v556);
  v495 = (&v475 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v496 = (&v475 - v20);
  __chkstk_darwin(v21);
  v559 = &v475 - v22;
  __chkstk_darwin(v23);
  v558 = &v475 - v24;
  v564 = sub_1005B981C(&qword_1019F33E8, &unk_101491270);
  __chkstk_darwin(v564);
  v491 = &v475 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v552 = &v475 - v27;
  v28 = sub_1005B981C(&qword_101A03A00, &unk_101480610);
  __chkstk_darwin(v28 - 8);
  v482 = &v475 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v476 = &v475 - v31;
  __chkstk_darwin(v32);
  v486 = &v475 - v33;
  __chkstk_darwin(v34);
  v488 = &v475 - v35;
  __chkstk_darwin(v36);
  v483 = &v475 - v37;
  __chkstk_darwin(v38);
  v549 = &v475 - v39;
  __chkstk_darwin(v40);
  v540 = (&v475 - v41);
  __chkstk_darwin(v42);
  v548 = &v475 - v43;
  __chkstk_darwin(v44);
  v537 = &v475 - v45;
  __chkstk_darwin(v46);
  v551 = (&v475 - v47);
  __chkstk_darwin(v48);
  v533 = (&v475 - v49);
  v569 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v555 = *(v569 - 1);
  __chkstk_darwin(v569);
  v503 = &v475 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v484 = &v475 - v52;
  __chkstk_darwin(v53);
  v480 = &v475 - v54;
  __chkstk_darwin(v55);
  v502 = &v475 - v56;
  __chkstk_darwin(v57);
  v501 = &v475 - v58;
  __chkstk_darwin(v59);
  v481 = &v475 - v60;
  __chkstk_darwin(v61);
  v487 = &v475 - v62;
  __chkstk_darwin(v63);
  v65 = &v475 - v64;
  __chkstk_darwin(v66);
  v571 = &v475 - v67;
  __chkstk_darwin(v68);
  v539 = (&v475 - v69);
  __chkstk_darwin(v70);
  v536 = (&v475 - v71);
  __chkstk_darwin(v72);
  v532 = &v475 - v73;
  v74 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v74 - 8);
  v568 = &v475 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v513 = &v475 - v77;
  v78 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v78 - 8);
  v545 = (&v475 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v80);
  v530 = (&v475 - v81);
  __chkstk_darwin(v82);
  v527 = &v475 - v83;
  __chkstk_darwin(v84);
  v544 = &v475 - v85;
  __chkstk_darwin(v86);
  v526 = &v475 - v87;
  v506 = _s4NodeVMa(0);
  v509 = *(v506 - 8);
  __chkstk_darwin(v506);
  v517 = &v475 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v541 = &v475 - v90;
  __chkstk_darwin(v91);
  v563 = (&v475 - v92);
  __chkstk_darwin(v93);
  v510 = &v475 - v94;
  v95 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v547 = *(v95 - 8);
  __chkstk_darwin(v95);
  v543 = &v475 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  *&v535 = &v475 - v98;
  __chkstk_darwin(v99);
  v538 = (&v475 - v100);
  __chkstk_darwin(v101);
  v542 = &v475 - v102;
  __chkstk_darwin(v103);
  v534 = &v475 - v104;
  __chkstk_darwin(v105);
  v531 = &v475 - v106;
  __chkstk_darwin(v107);
  v529 = &v475 - v108;
  __chkstk_darwin(v109);
  v528 = &v475 - v110;
  __chkstk_darwin(v111);
  v518 = &v475 - v112;
  __chkstk_darwin(v113);
  v525 = &v475 - v114;
  __chkstk_darwin(v115);
  v524 = &v475 - v116;
  __chkstk_darwin(v117);
  v119 = &v475 - v118;
  v120 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v120 - 8);
  v497 = &v475 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v122);
  v557 = &v475 - v123;
  __chkstk_darwin(v124);
  v126 = &v475 - v125;
  v127 = type metadata accessor for CRLFolderIdentifier(0);
  v128 = *(v127 - 8);
  __chkstk_darwin(v127);
  v490 = &v475 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  v550 = &v475 - v131;
  __chkstk_darwin(v132);
  v566 = &v475 - v133;
  __chkstk_darwin(v134);
  v136 = &v475 - v135;
  v137 = type metadata accessor for UUID();
  v138 = *(v137 - 8);
  __chkstk_darwin(v137);
  v523 = &v475 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v140);
  v142 = &v475 - v141;
  __chkstk_darwin(v143);
  v512 = &v475 - v144;
  sub_10000BE14(v570, v126, &qword_1019F33E0, &unk_101468A80);
  v553 = v128;
  v145 = v128[6];
  v560 = v127;
  v567 = v128 + 6;
  v561 = v145;
  v146 = (v145)(v126, 1, v127);
  v570 = v95;
  if (v146 == 1)
  {
    sub_10000CAAC(v126, &qword_1019F33E0, &unk_101468A80);
    *v119 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100F87E04(v142);
    v147 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v148 = v119;
  }

  else
  {
    sub_10003DF00(v126, v136, type metadata accessor for CRLFolderIdentifier);
    (*(v138 + 16))(v142, v136, v137);
    v147 = type metadata accessor for CRLFolderIdentifier;
    v148 = v136;
  }

  sub_10003E060(v148, v147);
  v149 = v138;
  v150 = *(v138 + 32);
  v151 = v512;
  v546 = v137;
  v150(v512, v142, v137);
  v152 = *(v511 + 24);
  if (!*(v152 + 16) || (v153 = sub_10003E994(v151), (v154 & 1) == 0))
  {
    if (qword_1019F2130 == -1)
    {
LABEL_30:
      v193 = static OS_os_log.crlBoardLibrary;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      sub_10083356C(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v195 = v546;
      v196 = dispatch thunk of CustomStringConvertible.description.getter();
      v198 = v197;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v196;
      *(inited + 40) = v198;
      v199 = static os_log_type_t.error.getter();
      sub_100005404(v193, &_mh_execute_header, v199, "Could not find node for parent item %@. Returning a generic disjoint position for the first element.", 100, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      v572 = 0;
      sub_100824C94(v565, &v572);
      v149[1](v151, v195);

      return;
    }

LABEL_297:
    swift_once();
    goto LABEL_30;
  }

  v475 = v149;
  v155 = *(v152 + 56);
  v554 = *(v509 + 72);
  v156 = v563;
  sub_10003CA5C(v155 + v554 * v153, v563, _s4NodeVMa);
  sub_10003DF00(v156, v510, _s4NodeVMa);
  v157 = *(v565 + 16);
  if (v157)
  {
    v158 = v565 + ((*(v553 + 80) + 32) & ~*(v553 + 80));
    v522 = v553[9];
    v521 = (v475 + 2);
    v520 = v475 + 1;
    v565 = v547 + 56;
    v563 = (v547 + 48);
    v553 = _swiftEmptyArrayStorage;
    v159 = v571;
    v519 = v152;
    while (1)
    {
      v162 = v566;
      sub_10003CA5C(v158, v566, type metadata accessor for CRLFolderIdentifier);
      v163 = v523;
      v164 = v162;
      v165 = v546;
      (*v521)(v523, v164, v546);
      if (*(v152 + 16) && (v166 = sub_10003E994(v163), (v167 & 1) != 0))
      {
        v168 = v517;
        sub_10003CA5C(*(v152 + 56) + v166 * v554, v517, _s4NodeVMa);
        (*v520)(v163, v165);
        sub_10003E060(v566, type metadata accessor for CRLFolderIdentifier);
        v169 = v527;
        sub_10003CA5C(v168, v527, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v168, _s4NodeVMa);
        v170 = 0;
      }

      else
      {
        (*v520)(v163, v165);
        sub_10003E060(v566, type metadata accessor for CRLFolderIdentifier);
        v170 = 1;
        v169 = v527;
      }

      v171 = *v565;
      v172 = v570;
      (*v565)(v169, v170, 1, v570);
      v173 = *v563;
      if ((*v563)(v169, 1, v172) == 1)
      {
        v174 = v157;
        sub_10000CAAC(v169, &unk_101A15B20, &qword_10146F1E0);
        v175 = 1;
      }

      else
      {
        v176 = v169;
        v177 = v525;
        sub_10003DF00(v176, v525, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v178 = v177;
        v179 = v518;
        sub_10003CA5C(v178, v518, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v180 = v513;
          sub_10003DF00(v179, v513, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v181 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
          v174 = v157;
          if (!(*(*(v181 - 8) + 48))(v180, 5, v181))
          {
            sub_10003E060(v180, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10003DF00(v525, v544, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v175 = 0;
            goto LABEL_21;
          }

          v182 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          v183 = v180;
        }

        else
        {
          v174 = v157;
          v182 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v183 = v179;
        }

        sub_10003E060(v183, v182);
        sub_10003E060(v525, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v175 = 1;
      }

LABEL_21:
      v184 = v544;
      v185 = v570;
      v171(v544, v175, 1, v570);
      v186 = v184;
      v187 = v526;
      sub_10003DFF8(v186, v526, &unk_101A15B20, &qword_10146F1E0);
      if (v173(v187, 1, v185) == 1)
      {
        sub_10000CAAC(v187, &unk_101A15B20, &qword_10146F1E0);
        v151 = v567;
        v160 = v568;
        v161 = v174;
        v152 = v519;
      }

      else
      {
        sub_10003DF00(v187, v524, type metadata accessor for CRLBoardLibraryViewModel.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v567;
        v161 = v174;
        v152 = v519;
        if (isUniquelyReferenced_nonNull_native)
        {
          v189 = v553;
        }

        else
        {
          v189 = sub_100B3648C(0, v553[2] + 1, 1, v553);
        }

        v191 = v189[2];
        v190 = v189[3];
        if (v191 >= v190 >> 1)
        {
          v189 = sub_100B3648C((v190 > 1), v191 + 1, 1, v189);
        }

        v189[2] = v191 + 1;
        v192 = (*(v547 + 80) + 32) & ~*(v547 + 80);
        v553 = v189;
        sub_10003DF00(v524, v189 + v192 + *(v547 + 72) * v191, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v159 = v571;
        v160 = v568;
      }

      v158 += v522;
      v157 = v161 - 1;
      if (!v157)
      {
        goto LABEL_32;
      }
    }
  }

  v553 = _swiftEmptyArrayStorage;
  v159 = v571;
  v151 = v567;
  v160 = v568;
LABEL_32:
  v200 = *(v510 + *(v506 + 20));
  v201 = *(v200 + 16);
  v544 = v200;
  if (v201)
  {
    v202 = v200 + ((*(v509 + 80) + 32) & ~*(v509 + 80));
    v565 = v547 + 56;
    v563 = (v547 + 48);
    v566 = _swiftEmptyArrayStorage;
    v203 = &unk_101A15B20;
    v204 = v541;
    while (1)
    {
      v205 = v203;
      sub_10003CA5C(v202, v204, _s4NodeVMa);
      v206 = v529;
      sub_10003CA5C(v204, v529, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003DF00(v206, v160, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v207 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        if (!(*(*(v207 - 8) + 48))(v160, 5, v207))
        {
          sub_10003E060(v160, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v203 = v205;
          if (sub_1012CD6CC(v204, v553))
          {
            v210 = 1;
          }

          else
          {
            sub_10003CA5C(v204, v545, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v210 = 0;
          }

          goto LABEL_41;
        }

        v208 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v209 = v160;
      }

      else
      {
        v208 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v209 = v206;
      }

      sub_10003E060(v209, v208);
      v210 = 1;
      v203 = v205;
LABEL_41:
      sub_10003E060(v204, _s4NodeVMa);
      v211 = v545;
      v212 = v210;
      v213 = v570;
      (*v565)(v545, v212, 1, v570);
      v214 = v211;
      v215 = v530;
      sub_10003DFF8(v214, v530, v203, &qword_10146F1E0);
      if ((*v563)(v215, 1, v213) == 1)
      {
        sub_10000CAAC(v215, v203, &qword_10146F1E0);
        v160 = v568;
        v204 = v541;
      }

      else
      {
        sub_10003DF00(v215, v528, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v204 = v541;
          v216 = v566;
        }

        else
        {
          v216 = sub_100B3648C(0, *(v566 + 16) + 1, 1, v566);
          v204 = v541;
        }

        v218 = v216[2];
        v217 = v216[3];
        if (v218 >= v217 >> 1)
        {
          v216 = sub_100B3648C((v217 > 1), v218 + 1, 1, v216);
        }

        v216[2] = v218 + 1;
        v219 = (*(v547 + 80) + 32) & ~*(v547 + 80);
        v566 = v216;
        sub_10003DF00(v528, v216 + v219 + *(v547 + 72) * v218, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v159 = v571;
        v160 = v568;
      }

      v202 += v554;
      if (!--v201)
      {
        goto LABEL_52;
      }
    }
  }

  v566 = _swiftEmptyArrayStorage;
LABEL_52:
  v220 = v508;
  if ((v507 & 1) != 0 || (v508 & 0x8000000000000000) != 0 || *(v566 + 16) < v508)
  {
    sub_100A11AD0(v544);
    v222 = v552;
    v149 = v561;
    if (!v221)
    {
      goto LABEL_62;
    }

    if (v221 == 1)
    {
      v572 = v566;

      sub_10079ADBC(v223);
      v544 = 0;
      goto LABEL_64;
    }

    v228 = v553;
    v572 = v553;

    sub_1008262A8(sub_100F8B608, 0);
    v229 = sub_100674024(v228, v572);

    if ((v229 & 1) == 0)
    {
      v544 = 0;
      v572 = v566;

      sub_10079ADBC(v231);
    }

    else
    {
LABEL_62:
      v572 = v566;

      sub_10079ADBC(v230);

      sub_1008262A8(sub_100F8B608, 0);
      v544 = 0;
    }

LABEL_64:
    v225 = v572;
    v226 = v572[2];
    if (v226)
    {
      goto LABEL_65;
    }

LABEL_60:

    v227 = _swiftEmptyArrayStorage;
    goto LABEL_82;
  }

  v572 = v566;

  v224 = v553;

  sub_10067CAF4(v220, v220, v224);

  v544 = 0;
  v225 = v572;
  v222 = v552;
  v149 = v561;
  v226 = v572[2];
  if (!v226)
  {
    goto LABEL_60;
  }

LABEL_65:
  v232 = (*(v547 + 80) + 32) & ~*(v547 + 80);
  v545 = v225;
  v233 = v225 + v232;
  v568 = v555 + 56;
  v563 = (v555 + 48);
  v554 = _swiftEmptyArrayStorage;
  v565 = *(v547 + 72);
  v234 = v542;
  do
  {
    v235 = v531;
    sub_10003CA5C(v233, v531, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003DF00(v235, v234, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v237 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      goto LABEL_72;
    }

    v236 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v236 - 8) + 48))(v234, 5, v236))
    {
      v237 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_72:
      sub_10003E060(v234, v237);
      v238 = 1;
      goto LABEL_73;
    }

    sub_10003DF00(v234, v551, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v238 = 0;
LABEL_73:
    v239 = v569;
    v240 = v551;
    (*v568)(v551, v238, 1, v569);
    v241 = v240;
    v242 = v533;
    sub_10003DFF8(v241, v533, &qword_101A03A00, &unk_101480610);
    if ((*v563)(v242, 1, v239) == 1)
    {
      sub_10000CAAC(v242, &qword_101A03A00, &unk_101480610);
      v234 = v542;
    }

    else
    {
      sub_10003DF00(v242, v532, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v243 = v554;
      }

      else
      {
        v243 = sub_100B36D24(0, v554[2] + 1, 1, v554);
      }

      v234 = v542;
      v245 = v243[2];
      v244 = v243[3];
      if (v245 >= v244 >> 1)
      {
        v243 = sub_100B36D24((v244 > 1), v245 + 1, 1, v243);
      }

      v243[2] = v245 + 1;
      v246 = (*(v555 + 80) + 32) & ~*(v555 + 80);
      v554 = v243;
      sub_10003DF00(v532, v243 + v246 + *(v555 + 72) * v245, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v159 = v571;
    }

    v233 += v565;
    --v226;
  }

  while (v226);

  v222 = v552;
  v149 = v561;
  v227 = v554;
  v151 = v567;
LABEL_82:
  v554 = v227;
  v247 = *(v566 + 16);
  if (v247)
  {
    v248 = (v566 + ((*(v547 + 80) + 32) & ~*(v547 + 80)));
    v565 = v555 + 56;
    v249 = (v555 + 48);
    v551 = _swiftEmptyArrayStorage;
    v568 = *(v547 + 72);
    while (1)
    {
      v250 = v534;
      sub_10003CA5C(v248, v534, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v251 = v250;
      v252 = v535;
      sub_10003DF00(v251, v535, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v253 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        if (!(*(*(v253 - 8) + 48))(v252, 5, v253))
        {
          sub_10003DF00(v252, v548, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v255 = 0;
          goto LABEL_91;
        }

        v254 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v254 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v252, v254);
      v255 = 1;
LABEL_91:
      v256 = v548;
      v257 = v569;
      (*v565)(v548, v255, 1, v569);
      v258 = v256;
      v259 = v537;
      sub_10003DFF8(v258, v537, &qword_101A03A00, &unk_101480610);
      if ((*v249)(v259, 1, v257) == 1)
      {
        sub_10000CAAC(v259, &qword_101A03A00, &unk_101480610);
      }

      else
      {
        sub_10003DF00(v259, v536, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v551 = sub_100B36D24(0, v551[2] + 1, 1, v551);
        }

        v261 = v551[2];
        v260 = v551[3];
        if (v261 >= v260 >> 1)
        {
          v551 = sub_100B36D24((v260 > 1), v261 + 1, 1, v551);
        }

        v262 = v551;
        v551[2] = v261 + 1;
        sub_10003DF00(v536, v262 + ((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v261, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v159 = v571;
      v248 += v568;
      if (!--v247)
      {

        v222 = v552;
        v149 = v561;
        goto LABEL_100;
      }
    }
  }

  v551 = _swiftEmptyArrayStorage;
LABEL_100:
  v263 = v553[2];
  if (v263)
  {
    v264 = v553 + ((*(v547 + 80) + 32) & ~*(v547 + 80));
    v568 = v555 + 56;
    v565 = v555 + 48;
    v563 = _swiftEmptyArrayStorage;
    v566 = *(v547 + 72);
    v265 = v543;
    while (1)
    {
      v266 = v538;
      sub_10003CA5C(v264, v538, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003DF00(v266, v265, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v267 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        if (!(*(*(v267 - 8) + 48))(v265, 5, v267))
        {
          sub_10003DF00(v265, v549, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v269 = 0;
          goto LABEL_109;
        }

        v268 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v268 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v265, v268);
      v269 = 1;
LABEL_109:
      v270 = v569;
      v271 = v549;
      (*v568)(v549, v269, 1, v569);
      v272 = v271;
      v273 = v540;
      sub_10003DFF8(v272, v540, &qword_101A03A00, &unk_101480610);
      if ((*v565)(v273, 1, v270) == 1)
      {
        sub_10000CAAC(v273, &qword_101A03A00, &unk_101480610);
        v265 = v543;
      }

      else
      {
        sub_10003DF00(v273, v539, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v563 = sub_100B36D24(0, v563[2] + 1, 1, v563);
        }

        v265 = v543;
        v275 = v563[2];
        v274 = v563[3];
        if (v275 >= v274 >> 1)
        {
          v563 = sub_100B36D24((v274 > 1), v275 + 1, 1, v563);
        }

        v276 = v563;
        v563[2] = v275 + 1;
        sub_10003DF00(v539, v276 + ((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v275, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v159 = v571;
      }

      v264 += v566;
      if (!--v263)
      {

        v222 = v552;
        v149 = v561;
        v151 = v567;
        goto LABEL_118;
      }
    }
  }

  v563 = _swiftEmptyArrayStorage;
LABEL_118:
  v277 = v554;
  v278 = v554[2];
  v279 = v560;
  if (!v278)
  {

    v465 = _swiftEmptyArrayStorage;
    goto LABEL_289;
  }

  v280 = 0;
  v281 = 0;
  v282 = (*(v555 + 80) + 32) & ~*(v555 + 80);
  v283 = v563[2];
  v548 = v554 + v282;
  v570 = v563 + v282;
  v541 = (v505 + 48);
  v538 = (v505 + 32);
  v540 = (v505 + 8);
  v539 = (v555 + 48);
  v536 = (v555 + 56);
  v537 = v282;
  v542 = v551 + v282;
  v545 = _swiftEmptyArrayStorage;
  v535 = xmmword_10146C6B0;
  v547 = v278;
  v565 = v283;
  v543 = (v504 + 48);
  v562 = v65;
  while (2)
  {
    if (v281 >= v277[2])
    {
      goto LABEL_296;
    }

    v553 = v280;
    v549 = v281 + 1;
    v284 = *(v555 + 72);
    sub_10003CA5C(v548 + v284 * v281, v159, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (!v283)
    {
LABEL_211:

      v280 = *(v159 + v569[7]);

      v373 = v159;
      v374 = v547;
      goto LABEL_212;
    }

    v285 = 0;
    v286 = v563;
    v566 = v284;
    while (2)
    {
      if (v285 >= v286[2])
      {
        __break(1u);
        __break(1u);
LABEL_296:
        __break(1u);
        goto LABEL_297;
      }

      sub_10003CA5C(v570 + v285 * v284, v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_126;
      }

      v568 = type metadata accessor for CRLFolderIdentifierStorage(0);
      v287 = *(v568 + 20);
      v288 = *&v65[v287];
      v289 = *&v65[v287 + 8];
      v290 = (v159 + v287);
      v291 = v288 == *v290 && v289 == v290[1];
      if (!v291 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_126;
      }

      v292 = v569[5];
      v293 = *(v564 + 48);
      sub_10000BE14(&v65[v292], v222, &qword_1019F33E0, &unk_101468A80);
      v294 = &v571[v292];
      v159 = v571;
      sub_10000BE14(v294, v222 + v293, &qword_1019F33E0, &unk_101468A80);
      if ((v149)(v222, 1, v279) == 1)
      {
        v295 = (v149)(v222 + v293, 1, v279);
        v65 = v562;
        v284 = v566;
        if (v295 == 1)
        {
          goto LABEL_143;
        }

        goto LABEL_124;
      }

      v296 = v557;
      sub_10000BE14(v222, v557, &qword_1019F33E0, &unk_101468A80);
      if ((v149)(v222 + v293, 1, v279) == 1)
      {
        sub_10003E060(v296, type metadata accessor for CRLFolderIdentifier);
        v279 = v560;
        v284 = v566;
        v151 = v567;
        v149 = v561;
        v65 = v562;
        v286 = v563;
LABEL_124:
        sub_10000CAAC(v222, &qword_1019F33E8, &unk_101491270);
LABEL_125:
        v283 = v565;
LABEL_126:
        ++v285;
        sub_10003E060(v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v285 == v283)
        {
          goto LABEL_211;
        }

        continue;
      }

      break;
    }

    v297 = v550;
    sub_10003DF00(v222 + v293, v550, type metadata accessor for CRLFolderIdentifier);
    v298 = static UUID.== infix(_:_:)();
    v65 = v562;
    v284 = v566;
    if ((v298 & 1) == 0 || ((v299 = *(v568 + 20), v300 = *(v296 + v299), v301 = *(v296 + v299 + 8), v302 = (v297 + v299), v300 != *v302) || v301 != v302[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_10003E060(v297, type metadata accessor for CRLFolderIdentifier);
      sub_10003E060(v296, type metadata accessor for CRLFolderIdentifier);
      sub_10000CAAC(v222, &qword_1019F33E0, &unk_101468A80);
      v279 = v560;
      v151 = v567;
      v149 = v561;
      v286 = v563;
      goto LABEL_125;
    }

    sub_10003E060(v297, type metadata accessor for CRLFolderIdentifier);
    sub_10003E060(v557, type metadata accessor for CRLFolderIdentifier);
    v279 = v560;
    v151 = v567;
    v149 = v561;
    v286 = v563;
LABEL_143:
    sub_10000CAAC(v222, &qword_1019F33E0, &unk_101468A80);
    v303 = v569[6];
    v304 = *&v65[v303];
    v305 = *&v65[v303 + 8];
    v306 = (v159 + v303);
    v283 = v565;
    if ((v304 != *v306 || v305 != v306[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_126;
    }

    v307 = v569[7];
    v308 = *&v65[v307];
    v309 = *(v159 + v307);
    v310 = *(v308 + 16);
    if (v310 != *(v309 + 16))
    {
      v222 = v552;
      goto LABEL_126;
    }

    if (v310)
    {
      v311 = v558;
      v312 = v559;
      if (v308 != v309)
      {
        v313 = (*(v516 + 80) + 32) & ~*(v516 + 80);
        v314 = v308 + v313;
        v315 = v309 + v313;
        v316 = *(v516 + 72);
        while (1)
        {
          sub_10003CA5C(v314, v311, type metadata accessor for CRLDisjointPosition.Element);
          sub_10003CA5C(v315, v312, type metadata accessor for CRLDisjointPosition.Element);
          if (*v311 != *v312)
          {
            sub_10003E060(v312, type metadata accessor for CRLDisjointPosition.Element);
            sub_10003E060(v311, type metadata accessor for CRLDisjointPosition.Element);
            v222 = v552;
            v159 = v571;
            goto LABEL_164;
          }

          v317 = static UUID.== infix(_:_:)();
          sub_10003E060(v312, type metadata accessor for CRLDisjointPosition.Element);
          sub_10003E060(v311, type metadata accessor for CRLDisjointPosition.Element);
          if ((v317 & 1) == 0)
          {
            break;
          }

          v315 += v316;
          v314 += v316;
          --v310;
          v312 = v559;
          v311 = v558;
          v151 = v567;
          if (!v310)
          {
            goto LABEL_153;
          }
        }

        v222 = v552;
        v159 = v571;
        v279 = v560;
LABEL_166:
        v151 = v567;
LABEL_167:
        v149 = v561;
        v286 = v563;
        v283 = v565;
        v284 = v566;
        goto LABEL_126;
      }
    }

LABEL_153:
    v318 = v569;
    v159 = v571;
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      v222 = v552;
LABEL_164:
      v279 = v560;
      goto LABEL_167;
    }

    v319 = static Date.== infix(_:_:)();
    v320 = v318;
    v321 = v514;
    v322 = v515;
    v279 = v560;
    v149 = v561;
    v286 = v563;
    v283 = v565;
    v284 = v566;
    if ((v319 & 1) == 0 || v65[v320[10]] != *(v159 + v320[10]) || v65[v320[11]] != *(v159 + v320[11]) || v65[v320[12]] != *(v159 + v320[12]) || v65[v320[13]] != *(v159 + v320[13]))
    {
      v222 = v552;
      v151 = v567;
      goto LABEL_126;
    }

    v323 = v320[14];
    v324 = *(v499 + 48);
    sub_10000BE14(&v65[v323], v515, &qword_1019F33D0, &unk_101468A70);
    v325 = &v571[v323];
    v159 = v571;
    v534 = v324;
    sub_10000BE14(v325, v322 + v324, &qword_1019F33D0, &unk_101468A70);
    v326 = *v543;
    if ((*v543)(v322, 1, v321) == 1)
    {
      v327 = v326(v322 + v534, 1, v321);
      v328 = v326;
      v222 = v552;
      v284 = v566;
      if (v327 == 1)
      {
        goto LABEL_215;
      }

      goto LABEL_173;
    }

    sub_10000BE14(v322, v500, &qword_1019F33D0, &unk_101468A70);
    v329 = v534;
    if (v326(v322 + v534, 1, v321) == 1)
    {
      sub_10003E060(v500, _s5BoardV13ShareMetadataVMa);
      v222 = v552;
      v159 = v571;
      v284 = v566;
LABEL_173:
      sub_10000CAAC(v322, &qword_1019F33D8, &unk_101480640);
      v151 = v567;
      goto LABEL_125;
    }

    v533 = v326;
    v330 = v498;
    sub_10003DF00(v322 + v329, v498, _s5BoardV13ShareMetadataVMa);
    v331 = v330;
    v332 = v500;
    v222 = v552;
    if (*v500 != *v330)
    {
      goto LABEL_210;
    }

    v333 = v514[5];
    v334 = *(v493 + 48);
    v335 = v492;
    v336 = v331;
    sub_10000BE14(&v500[v333], v492, &unk_1019F33C0, &unk_101468A60);
    sub_10000BE14(v336 + v333, v335 + v334, &unk_1019F33C0, &unk_101468A60);
    v337 = *v541;
    v338 = v494;
    if ((*v541)(v335, 1, v494) != 1)
    {
      v339 = v489;
      sub_10000BE14(v335, v489, &unk_1019F33C0, &unk_101468A60);
      if (v337(v335 + v334, 1, v338) == 1)
      {
        (*v540)(v339, v338);
LABEL_180:
        sub_10000CAAC(v335, &unk_101A0B780, &unk_101480630);
        v331 = v498;
        v332 = v500;
        v222 = v552;
      }

      else
      {
        v340 = v485;
        (*v538)(v485, v335 + v334, v338);
        sub_10083356C(&qword_101A00190, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v341 = dispatch thunk of static Equatable.== infix(_:_:)();
        v342 = *v540;
        (*v540)(v340, v338);
        v342(v339, v338);
        sub_10000CAAC(v335, &unk_1019F33C0, &unk_101468A60);
        v331 = v498;
        v332 = v500;
        v222 = v552;
        if (v341)
        {
          goto LABEL_182;
        }
      }

LABEL_210:
      v372 = v332;
      sub_10003E060(v331, _s5BoardV13ShareMetadataVMa);
      sub_10003E060(v372, _s5BoardV13ShareMetadataVMa);
      sub_10000CAAC(v515, &qword_1019F33D0, &unk_101468A70);
      v159 = v571;
      goto LABEL_166;
    }

    if (v337(v335 + v334, 1, v338) != 1)
    {
      goto LABEL_180;
    }

    sub_10000CAAC(v335, &unk_1019F33C0, &unk_101468A60);
    v331 = v498;
    v332 = v500;
    v222 = v552;
LABEL_182:
    v343 = v514[6];
    v344 = *&v332[v343];
    v345 = *&v332[v343 + 8];
    v346 = (v331 + v343);
    if (v344 != *v346 || v345 != v346[1])
    {
      v347 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v332 = v500;
      v331 = v498;
      if ((v347 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

    if (*&v332[v514[7]] != *(v331 + v514[7]))
    {
      goto LABEL_210;
    }

    v348 = v514[8];
    v349 = &v332[v348];
    v350 = *&v332[v348 + 8];
    v351 = *&v332[v348 + 16];
    v353 = *&v332[v348 + 24];
    v352 = *&v332[v348 + 32];
    v354 = *&v332[v348 + 40];
    v355 = v332[v348 + 48];
    v356 = v331 + v348;
    v357 = *(v356 + 8);
    v358 = *(v356 + 16);
    v360 = *(v356 + 24);
    v359 = *(v356 + 32);
    v361 = *(v356 + 40);
    v362 = *(v356 + 48);
    if (!v350)
    {
      if (!v357)
      {
        goto LABEL_193;
      }

      goto LABEL_210;
    }

    if (!v357)
    {
      goto LABEL_210;
    }

    if (*v349 != *v356 || v350 != v357)
    {
      v534 = v354;
      LODWORD(v532) = v362;
      LODWORD(v531) = v355;
      v363 = v352;
      v364 = v361;
      v365 = v359;
      v530 = v358;
      v366 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v358 = v530;
      v359 = v365;
      v361 = v364;
      v352 = v363;
      v355 = v531;
      v362 = v532;
      v354 = v534;
      v332 = v500;
      v331 = v498;
      if ((v366 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

LABEL_193:
    if (!v353)
    {
      if (!v360)
      {
        goto LABEL_200;
      }

      goto LABEL_210;
    }

    if (!v360)
    {
      goto LABEL_210;
    }

    if (v351 != v358 || v353 != v360)
    {
      v367 = v352;
      v368 = v361;
      v369 = v359;
      v370 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v359 = v369;
      v361 = v368;
      v352 = v367;
      v332 = v500;
      v331 = v498;
      if ((v370 & 1) == 0)
      {
        goto LABEL_210;
      }
    }

LABEL_200:
    if (!v354)
    {
      if (!v361)
      {
        goto LABEL_209;
      }

      goto LABEL_210;
    }

    if (!v361)
    {
      goto LABEL_210;
    }

    if (v352 == v359 && v354 == v361)
    {
      v331 = v498;
      v332 = v500;
      if (v355 == v362)
      {
        goto LABEL_214;
      }

      goto LABEL_210;
    }

    v371 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v331 = v498;
    v332 = v500;
    if ((v371 & 1) == 0)
    {
      goto LABEL_210;
    }

LABEL_209:
    if ((v355 ^ v362))
    {
      goto LABEL_210;
    }

LABEL_214:
    v375 = v332;
    sub_10003E060(v331, _s5BoardV13ShareMetadataVMa);
    sub_10003E060(v375, _s5BoardV13ShareMetadataVMa);
    v322 = v515;
    v159 = v571;
    v149 = v561;
    v284 = v566;
    v328 = v533;
LABEL_215:
    v533 = v328;
    sub_10000CAAC(v322, &qword_1019F33D0, &unk_101468A70);
    sub_10003E060(v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10003CA5C(v159, v487, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v376 = v491;
    v377 = v553;
    if (v553)
    {
      v378 = v483;
      sub_10082650C(v553, v483);
      v379 = v569;
      v380 = (*v539)(v378, 1, v569);
      v151 = v567;
      if (v380 == 1)
      {
        sub_10000CAAC(v378, &qword_101A03A00, &unk_101480610);
        v553 = sub_1009D1F04(v377);
      }

      else
      {
        v445 = v481;
        sub_10003DF00(v378, v481, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v446 = *(v445 + v379[7]);

        sub_1009D2244(v377, v446);
        v553 = v447;
        sub_10003E060(v445, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v448 = v379;
      v222 = v552;
      goto LABEL_283;
    }

    v530 = *v536;
    (v530)(v488, 1, 1, v569);
    v381 = v547;
    v382 = v549;
    v383 = v549 == v547;
    v151 = v567;
LABEL_219:
    if (v383)
    {
      goto LABEL_279;
    }

    v532 = v382;
    if (v382 >= v381)
    {
      goto LABEL_299;
    }

    v384 = v486;
    sub_10000BE14(v488, v486, &qword_101A03A00, &unk_101480610);
    v385 = (*v539)(v384, 1, v569);
    sub_10000CAAC(v384, &qword_101A03A00, &unk_101480610);
    if (v385 != 1)
    {
LABEL_279:
      v449 = v488;
      v450 = v539;
      v451 = v482;
      sub_10000BE14(v488, v482, &qword_101A03A00, &unk_101480610);
      v448 = v569;
      if ((*v450)(v451, 1, v569) == 1)
      {
        sub_10000CAAC(v451, &qword_101A03A00, &unk_101480610);
        sub_1005B981C(&qword_1019F49A0, &unk_101480600);
        v452 = (*(v516 + 80) + 32) & ~*(v516 + 80);
        v453 = swift_allocObject();
        *(v453 + 16) = v535;
        v553 = v453;
        v454 = (v453 + v452);
        v455 = sub_10000C3A0(0xC7uLL) - 99;
        UUID.init()();
        *v454 = v455;
      }

      else
      {
        v456 = v451;
        v457 = v480;
        sub_10003DF00(v456, v480, type metadata accessor for CRLBoardLibraryViewModel.Folder);

        v553 = sub_1009D2B3C(v458);
        sub_10003E060(v457, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      sub_10000CAAC(v449, &qword_101A03A00, &unk_101480610);
      v222 = v552;
      v284 = v566;
LABEL_283:
      v459 = v448[7];
      v460 = v487;
      v568 = *(v487 + v459);
      v461 = v553;

      *(v460 + v459) = v461;
      sub_10003CA5C(v460, v484, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v545 = sub_100B36D24(0, v545[2] + 1, 1, v545);
      }

      v463 = v545[2];
      v462 = v545[3];
      v374 = v547;
      if (v463 >= v462 >> 1)
      {
        v545 = sub_100B36D24((v462 > 1), v463 + 1, 1, v545);
      }

      sub_10003E060(v159, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v464 = v545;
      v545[2] = v463 + 1;
      sub_10003DF00(v484, v464 + v537 + v463 * v284, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v373 = v487;
      v283 = v565;
      v280 = v553;
LABEL_212:
      sub_10003E060(v373, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v281 = v549;
      v277 = v554;
      if (v549 == v374)
      {

        v465 = v545;
LABEL_289:
        v466 = v465[2];
        v467 = v569;
        if (v466)
        {
          v572 = _swiftEmptyArrayStorage;
          sub_1007769A4(0, v466, 0);
          v468 = v572;
          v469 = v465 + ((*(v555 + 80) + 32) & ~*(v555 + 80));
          v470 = *(v555 + 72);
          v471 = v503;
          do
          {
            sub_10003CA5C(v469, v471, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v472 = *(v471 + v467[7]);

            sub_10003E060(v471, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v572 = v468;
            v474 = v468[2];
            v473 = v468[3];
            if (v474 >= v473 >> 1)
            {
              sub_1007769A4((v473 > 1), v474 + 1, 1);
              v471 = v503;
              v468 = v572;
            }

            v468[2] = v474 + 1;
            v468[v474 + 4] = v472;
            v469 += v470;
            --v466;
            v467 = v569;
          }

          while (v466);
        }

        v475[1](v512, v546);

        sub_10003E060(v510, _s4NodeVMa);
        return;
      }

      continue;
    }

    break;
  }

  v386 = v566;
  if (v532 >= v554[2])
  {
    goto LABEL_300;
  }

  v387 = v548 + v532 * v566;
  sub_10003CA5C(v387, v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v388 = v551[2];
  if (!v388)
  {
LABEL_274:
    sub_10003E060(v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_275:
    v382 = v532 + 1;
    v381 = v547;
    v383 = v532 + 1 == v547;
    goto LABEL_219;
  }

  v531 = v387;
  v389 = 0;
  v553 = v388;
  while (2)
  {
    if (v389 < v551[2])
    {
      v390 = v502;
      sub_10003CA5C(&v542[v389 * v386], v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v391 = v501;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_225;
      }

      v392 = *(v568 + 20);
      v393 = *(v390 + v392);
      v394 = *(v390 + v392 + 8);
      v395 = (v391 + v392);
      v396 = v393 == *v395 && v394 == v395[1];
      v397 = v390;
      if (!v396)
      {
        v398 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v397 = v502;
        if ((v398 & 1) == 0)
        {
          goto LABEL_225;
        }
      }

      v399 = v569[5];
      v400 = *(v564 + 48);
      sub_10000BE14(v397 + v399, v376, &qword_1019F33E0, &unk_101468A80);
      sub_10000BE14(v501 + v399, v376 + v400, &qword_1019F33E0, &unk_101468A80);
      if ((v149)(v376, 1, v279) == 1)
      {
        v401 = (v149)(v376 + v400, 1, v279);
        v159 = v571;
        v65 = v562;
        v386 = v566;
        v388 = v553;
        if (v401 == 1)
        {
LABEL_245:
          sub_10000CAAC(v376, &qword_1019F33E0, &unk_101468A80);
          v413 = v569[6];
          v414 = v502;
          v415 = *(v502 + v413);
          v416 = *(v502 + v413 + 8);
          v417 = v501;
          v418 = (v501 + v413);
          if (v415 != *v418 || v416 != v418[1])
          {
            v419 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v417 = v501;
            v414 = v502;
            if ((v419 & 1) == 0)
            {
              goto LABEL_226;
            }
          }

          v420 = v569[7];
          v421 = *(v414 + v420);
          v422 = *(v417 + v420);
          v423 = *(v421 + 16);
          if (v423 != *(v422 + 16))
          {
            v376 = v491;
            goto LABEL_226;
          }

          if (v423 && v421 != v422)
          {
            v424 = (*(v516 + 80) + 32) & ~*(v516 + 80);
            v425 = v421 + v424;
            v426 = v422 + v424;
            v427 = *(v516 + 72);
            while (1)
            {
              v428 = v496;
              sub_10003CA5C(v425, v496, type metadata accessor for CRLDisjointPosition.Element);
              v429 = v495;
              sub_10003CA5C(v426, v495, type metadata accessor for CRLDisjointPosition.Element);
              if (*v428 != *v429)
              {
                break;
              }

              LODWORD(v534) = static UUID.== infix(_:_:)();
              sub_10003E060(v429, type metadata accessor for CRLDisjointPosition.Element);
              sub_10003E060(v428, type metadata accessor for CRLDisjointPosition.Element);
              if ((v534 & 1) == 0)
              {
                goto LABEL_267;
              }

              v426 += v427;
              v425 += v427;
              if (!--v423)
              {
                goto LABEL_255;
              }
            }

            sub_10003E060(v429, type metadata accessor for CRLDisjointPosition.Element);
            sub_10003E060(v428, type metadata accessor for CRLDisjointPosition.Element);
LABEL_267:
            v376 = v491;
            v159 = v571;
            v151 = v567;
            v149 = v561;
LABEL_268:
            v386 = v566;
            v388 = v553;
LABEL_226:
            ++v389;
            sub_10003E060(v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            if (v389 == v388)
            {
              goto LABEL_274;
            }

            continue;
          }

LABEL_255:
          v430 = v569;
          v431 = v502;
          v432 = v501;
          if ((static Date.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_267;
          }

          v433 = static Date.== infix(_:_:)();
          v434 = v430;
          v376 = v491;
          v386 = v566;
          v151 = v567;
          v149 = v561;
          v388 = v553;
          if ((v433 & 1) != 0 && *(v431 + v434[10]) == *(v432 + v434[10]) && *(v431 + v434[11]) == *(v432 + v434[11]) && *(v431 + v569[12]) == *(v432 + v569[12]))
          {
            if (*(v502 + v569[13]) == *(v501 + v569[13]))
            {
              v435 = v569[14];
              v436 = *(v499 + 48);
              v437 = v479;
              sub_10000BE14(v502 + v435, v479, &qword_1019F33D0, &unk_101468A70);
              sub_10000BE14(v501 + v435, v437 + v436, &qword_1019F33D0, &unk_101468A70);
              if (v533(v437, 1, v514) == 1)
              {
                if (v533(v479 + v436, 1, v514) == 1)
                {
                  sub_10000CAAC(v479, &qword_1019F33D0, &unk_101468A70);
LABEL_276:
                  sub_10003E060(v502, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  sub_10003E060(v501, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  v443 = v476;
                  sub_10003CA5C(v531, v476, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  v444 = v488;
                  sub_10000CAAC(v488, &qword_101A03A00, &unk_101480610);
                  (v530)(v443, 0, 1, v569);
                  sub_10003DFF8(v443, v444, &qword_101A03A00, &unk_101480610);
                  v376 = v491;
                  v159 = v571;
                  v279 = v560;
                  v151 = v567;
                  v149 = v561;
                  v65 = v562;
                  goto LABEL_275;
                }

LABEL_271:
                sub_10000CAAC(v479, &qword_1019F33D8, &unk_101480640);
              }

              else
              {
                v438 = v479;
                sub_10000BE14(v479, v478, &qword_1019F33D0, &unk_101468A70);
                if (v533(v438 + v436, 1, v514) == 1)
                {
                  sub_10003E060(v478, _s5BoardV13ShareMetadataVMa);
                  goto LABEL_271;
                }

                v439 = v479;
                v440 = v477;
                sub_10003DF00(v479 + v436, v477, _s5BoardV13ShareMetadataVMa);
                v441 = v478;
                v442 = sub_1013038D4(v478, v440);
                sub_10003E060(v440, _s5BoardV13ShareMetadataVMa);
                sub_10003E060(v441, _s5BoardV13ShareMetadataVMa);
                sub_10000CAAC(v439, &qword_1019F33D0, &unk_101468A70);
                if (v442)
                {
                  goto LABEL_276;
                }
              }
            }

            v376 = v491;
            v159 = v571;
            v279 = v560;
            v151 = v567;
            v149 = v561;
            v65 = v562;
            goto LABEL_268;
          }

LABEL_225:
          v159 = v571;
          goto LABEL_226;
        }
      }

      else
      {
        v402 = v497;
        sub_10000BE14(v376, v497, &qword_1019F33E0, &unk_101468A80);
        if ((v149)(v376 + v400, 1, v279) != 1)
        {
          v403 = v376 + v400;
          v404 = v490;
          sub_10003DF00(v403, v490, type metadata accessor for CRLFolderIdentifier);
          v405 = static UUID.== infix(_:_:)();
          v406 = v404;
          v407 = v402;
          v159 = v571;
          v65 = v562;
          v386 = v566;
          v388 = v553;
          if (v405)
          {
            if (v408 = *(v568 + 20), v409 = *(v407 + v408), v410 = *(v407 + v408 + 8), v411 = (v406 + v408), v409 == *v411) && v410 == v411[1] || (v412 = _stringCompareWithSmolCheck(_:_:expecting:)(), v406 = v490, (v412))
            {
              sub_10003E060(v406, type metadata accessor for CRLFolderIdentifier);
              v151 = v567;
              sub_10003E060(v407, type metadata accessor for CRLFolderIdentifier);
              goto LABEL_245;
            }
          }

          sub_10003E060(v406, type metadata accessor for CRLFolderIdentifier);
          sub_10003E060(v497, type metadata accessor for CRLFolderIdentifier);
          sub_10000CAAC(v376, &qword_1019F33E0, &unk_101468A80);
          goto LABEL_226;
        }

        sub_10003E060(v402, type metadata accessor for CRLFolderIdentifier);
        v159 = v571;
        v65 = v562;
        v386 = v566;
        v388 = v553;
      }

      sub_10000CAAC(v376, &qword_1019F33E8, &unk_101491270);
      goto LABEL_226;
    }

    break;
  }

  __break(1u);
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);

  __break(1u);
}

uint64_t sub_10082C500()
{
  v1 = v0;
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003CA5C(v1, v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2 && (EnumCaseMultiPayload - 3) >= 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    return sub_10003E060(v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  }

  else
  {
    sub_10003E060(v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  }
}

Swift::Int sub_10082C8F4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_10082CA30(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_10082E398(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_100F66E34(0, v5, 1, a1);
  }
}

void sub_10082CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v42);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = *a4;
    v31 = v17;
    v21 = v37 + v17 * a3;
LABEL_5:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    v22 = v42;
    while (1)
    {
      sub_10003CA5C(v21, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003CA5C(v18, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v23 = *(v22 + 24);
      v24 = *&v16[v23 + 8];
      v40 = *&v16[v23];
      v41 = v24;
      v25 = &v12[v23];
      v27 = *v25;
      v26 = *(v25 + 1);
      v38 = v27;
      v39 = v26;
      sub_100017CD8();
      v28 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
      sub_10003E060(v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v22 = v42;
      sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_10003DF00(v21, v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003DF00(v9, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10082CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_10003CA5C(v22, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003CA5C(v19, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v23 = sub_1009D1B18(*&v16[*(v8 + 28)], *&v12[*(v8 + 28)]);
      sub_10003E060(v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_10003DF00(v22, v34, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      swift_arrayInitWithTakeFrontToBack();
      sub_10003DF00(v24, v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10082D060(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v111 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v99 - v12;
  __chkstk_darwin(v13);
  v115 = &v99 - v14;
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v113 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
LABEL_99:
      v117 = v94;
      a4 = *(v94 + 2);
      if (a4 >= 2)
      {
        while (*v113)
        {
          v95 = *&v94[16 * a4];
          v96 = v94;
          v97 = *&v94[16 * a4 + 24];
          sub_10082F420(*v113 + *(v111 + 72) * v95, *v113 + *(v111 + 72) * *&v94[16 * a4 + 16], *v113 + *(v111 + 72) * v97, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v97 < v95)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_10113DE48(v96);
          }

          if (a4 - 2 >= *(v96 + 2))
          {
            goto LABEL_123;
          }

          v98 = &v96[16 * a4];
          *v98 = v95;
          *(v98 + 1) = v97;
          v117 = v96;
          sub_10113DDBC(a4 - 1);
          v94 = v117;
          a4 = *(v117 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v94 = sub_10113DE48(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v101 = a4;
  v116 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *v113;
      v24 = *(v111 + 72);
      v5 = *v113 + v24 * v22;
      sub_10003CA5C(v5, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v25 = v23 + v24 * v21;
      v103 = v21;
      v26 = v115;
      sub_10003CA5C(v25, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      LODWORD(v110) = sub_1009D1B18(*&v17[*(v9 + 28)], *(v26 + *(v9 + 28)));
      sub_10003E060(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10003E060(v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v27 = v103 + 2;
      v112 = v24;
      v28 = v23 + v24 * (v103 + 2);
      while (v18 != v27)
      {
        sub_10003CA5C(v28, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v29 = v115;
        sub_10003CA5C(v5, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v30 = sub_1009D1B18(*&v17[*(v116 + 28)], *(v29 + *(v116 + 28))) & 1;
        sub_10003E060(v29, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        ++v27;
        v28 += v112;
        v5 += v112;
        if ((v110 & 1) != v30)
        {
          v18 = v27 - 1;
          break;
        }
      }

      a4 = v101;
      v9 = v116;
      v21 = v103;
      if (v110)
      {
        if (v18 < v103)
        {
          goto LABEL_126;
        }

        if (v103 < v18)
        {
          v100 = v6;
          v31 = v112 * (v18 - 1);
          v32 = v18;
          v33 = v18 * v112;
          v110 = v18;
          v34 = v103;
          v35 = v103;
          v36 = v103 * v112;
          do
          {
            if (v34 != --v32)
            {
              v37 = *v113;
              if (!*v113)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_10003DF00(v37 + v36, v106, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              if (v36 < v31 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10003DF00(v106, v37 + v31, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            }

            ++v34;
            v31 -= v112;
            v33 -= v112;
            v36 += v112;
          }

          while (v34 < v32);
          v6 = v100;
          a4 = v101;
          v9 = v116;
          v21 = v35;
          v18 = v110;
        }
      }
    }

    v38 = v113[1];
    if (v18 >= v38)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_125;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v19 = v18;
      if (v18 < v21)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_127;
    }

    if ((v21 + a4) >= v38)
    {
      v39 = v113[1];
    }

    else
    {
      v39 = v21 + a4;
    }

    if (v39 < v21)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v18 == v39)
    {
      goto LABEL_32;
    }

    v100 = v6;
    v84 = v18;
    v85 = v21;
    v86 = *v113;
    v87 = *(v111 + 72);
    v88 = *v113 + v87 * (v18 - 1);
    v89 = -v87;
    v103 = v85;
    v104 = v87;
    v90 = v85 - v18;
    v110 = v84;
    v5 = v86 + v84 * v87;
    v105 = v39;
LABEL_86:
    v108 = v5;
    v109 = v90;
    v112 = v88;
LABEL_87:
    sub_10003CA5C(v5, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v91 = v115;
    sub_10003CA5C(v88, v115, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    a4 = sub_1009D1B18(*&v17[*(v9 + 28)], *(v91 + *(v9 + 28)));
    sub_10003E060(v91, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10003E060(v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (a4)
    {
      break;
    }

    v9 = v116;
LABEL_85:
    v19 = v105;
    v88 = v112 + v104;
    v90 = v109 - 1;
    v5 = v108 + v104;
    if (++v110 != v105)
    {
      goto LABEL_86;
    }

    v6 = v100;
    v21 = v103;
    if (v105 < v103)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_100B355CC(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v40 >> 1)
    {
      v20 = sub_100B355CC((v40 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v41 = &v20[16 * a4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v43 = v5 - 1;
        if (v5 >= 4)
        {
          v48 = &v20[16 * v5 + 32];
          v49 = *(v48 - 64);
          v50 = *(v48 - 56);
          v54 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          if (v54)
          {
            goto LABEL_111;
          }

          v53 = *(v48 - 48);
          v52 = *(v48 - 40);
          v54 = __OFSUB__(v52, v53);
          v46 = v52 - v53;
          v47 = v54;
          if (v54)
          {
            goto LABEL_112;
          }

          v55 = &v20[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v54 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v54)
          {
            goto LABEL_114;
          }

          v54 = __OFADD__(v46, v58);
          v59 = v46 + v58;
          if (v54)
          {
            goto LABEL_117;
          }

          if (v59 >= v51)
          {
            v77 = &v20[16 * v43 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v54 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v54)
            {
              goto LABEL_121;
            }

            if (v46 < v80)
            {
              v43 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v47)
            {
              goto LABEL_113;
            }

            v60 = &v20[16 * v5];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_116;
            }

            v66 = &v20[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_120;
            }

            if (v64 + v69 < v46)
            {
              goto LABEL_66;
            }

            if (v46 < v69)
            {
              v43 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v44 = *(v20 + 4);
            v45 = *(v20 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
            goto LABEL_52;
          }

          v70 = &v20[16 * v5];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_66:
          if (v65)
          {
            goto LABEL_115;
          }

          v73 = &v20[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_118;
          }

          if (v76 < v64)
          {
            break;
          }
        }

        a4 = v43 - 1;
        if (v43 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_128;
        }

        if (!*v113)
        {
          goto LABEL_131;
        }

        v81 = v20;
        v82 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v43 + 40];
        sub_10082F420(*v113 + *(v111 + 72) * v82, *v113 + *(v111 + 72) * *&v20[16 * v43 + 32], *v113 + *(v111 + 72) * v5, v42);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v82)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_10113DE48(v81);
        }

        if (a4 >= *(v81 + 2))
        {
          goto LABEL_110;
        }

        v83 = &v81[16 * a4];
        *(v83 + 4) = v82;
        *(v83 + 5) = v5;
        v117 = v81;
        sub_10113DDBC(v43);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = v113[1];
    a4 = v101;
    v9 = v116;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v86)
  {
    a4 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
    v92 = v114;
    sub_10003DF00(v5, v114, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v9 = v116;
    swift_arrayInitWithTakeFrontToBack();
    sub_10003DF00(v92, v88, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v88 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}

void sub_10082D9BC(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v123 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v114 - v11;
  __chkstk_darwin(v12);
  v129 = &v114 - v13;
  __chkstk_darwin(v14);
  v16 = &v114 - v15;
  v126 = a3;
  v17 = *(a3 + 8);
  if (v17 >= 1)
  {
    v114 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v130 = v8;
    while (1)
    {
      v20 = v18;
      v21 = v18 + 1;
      v124 = v19;
      if (v18 + 1 >= v17)
      {
        ++v18;
      }

      else
      {
        v127 = v17;
        v116 = v5;
        v22 = v8;
        v23 = *(v123 + 72);
        a3 = *v126 + v23 * v21;
        v121 = *v126;
        v24 = v121;
        sub_10003CA5C(v121 + v23 * v21, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v25 = v24 + v23 * v18;
        v26 = v129;
        sub_10003CA5C(v25, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v27 = *(v22 + 24);
        v28 = *&v16[v27 + 8];
        v133 = *&v16[v27];
        v134 = v28;
        v29 = (v26 + v27);
        v31 = *v29;
        v30 = v29[1];
        v131 = v31;
        v132 = v30;
        sub_100017CD8();
        v122 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003E060(v26, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v115 = v18;
        v32 = v18 + 2;
        v125 = v23;
        v33 = v121 + v23 * (v18 + 2);
        while (1)
        {
          v18 = v127;
          if (v127 == v32)
          {
            break;
          }

          v34 = v122 == -1;
          sub_10003CA5C(v33, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v35 = v129;
          sub_10003CA5C(a3, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v36 = *(v130 + 24);
          v37 = *&v16[v36 + 8];
          v133 = *&v16[v36];
          v134 = v37;
          v38 = (v35 + v36);
          v40 = *v38;
          v39 = v38[1];
          v131 = v40;
          v132 = v39;
          v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
          sub_10003E060(v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v42 = v34 ^ (v41 != -1);
          v19 = v124;
          ++v32;
          v33 += v125;
          a3 += v125;
          if ((v42 & 1) == 0)
          {
            v18 = v32 - 1;
            break;
          }
        }

        v20 = v115;
        v5 = v116;
        v8 = v130;
        if (v122 == -1)
        {
          if (v18 < v115)
          {
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
            return;
          }

          if (v115 < v18)
          {
            v43 = v125 * (v18 - 1);
            v44 = v18 * v125;
            v45 = v18;
            v46 = v115;
            v47 = v115 * v125;
            do
            {
              if (v46 != --v45)
              {
                v48 = *v126;
                if (!*v126)
                {
                  goto LABEL_129;
                }

                a3 = v48 + v47;
                sub_10003DF00(v48 + v47, v118, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                if (v47 < v43 || a3 >= v48 + v44)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_10003DF00(v118, v48 + v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v19 = v124;
              }

              ++v46;
              v43 -= v125;
              v44 -= v125;
              v47 += v125;
            }

            while (v46 < v45);
            v20 = v115;
            v5 = v116;
            v8 = v130;
          }
        }
      }

      v49 = v126[1];
      if (v18 < v49)
      {
        if (__OFSUB__(v18, v20))
        {
          goto LABEL_121;
        }

        if (v18 - v20 < v114)
        {
          if (__OFADD__(v20, v114))
          {
            goto LABEL_122;
          }

          if (v20 + v114 < v49)
          {
            v49 = v20 + v114;
          }

          if (v49 < v20)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v120 = v49;
          if (v18 != v49)
          {
            v115 = v20;
            v116 = v5;
            v50 = *v126;
            v51 = *(v123 + 72);
            v52 = *v126 + v51 * (v18 - 1);
            v53 = -v51;
            v54 = v20 - v18;
            v119 = v51;
            a3 = v50 + v18 * v51;
            do
            {
              v127 = v18;
              v121 = a3;
              v122 = v54;
              v125 = v52;
              v55 = v52;
              while (1)
              {
                sub_10003CA5C(a3, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v56 = v129;
                sub_10003CA5C(v55, v129, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v57 = *(v8 + 24);
                v58 = *&v16[v57 + 8];
                v133 = *&v16[v57];
                v134 = v58;
                v59 = (v56 + v57);
                v61 = *v59;
                v60 = v59[1];
                v131 = v61;
                v132 = v60;
                sub_100017CD8();
                v62 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
                sub_10003E060(v56, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_10003E060(v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                if (v62 != -1)
                {
                  break;
                }

                if (!v50)
                {
                  goto LABEL_126;
                }

                v63 = v128;
                sub_10003DF00(a3, v128, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v8 = v130;
                swift_arrayInitWithTakeFrontToBack();
                sub_10003DF00(v63, v55, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v55 += v53;
                a3 += v53;
                if (__CFADD__(v54++, 1))
                {
                  goto LABEL_33;
                }
              }

              v8 = v130;
LABEL_33:
              v18 = v127 + 1;
              v52 = v125 + v119;
              v54 = v122 - 1;
              a3 = v121 + v119;
            }

            while (v127 + 1 != v120);
            v20 = v115;
            v5 = v116;
            v19 = v124;
            v18 = v120;
          }
        }
      }

      if (v18 < v20)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B355CC(0, *(v19 + 2) + 1, 1, v19);
      }

      a3 = *(v19 + 2);
      v65 = *(v19 + 3);
      v66 = a3 + 1;
      if (a3 >= v65 >> 1)
      {
        v19 = sub_100B355CC((v65 > 1), a3 + 1, 1, v19);
      }

      *(v19 + 2) = v66;
      v67 = &v19[16 * a3];
      *(v67 + 4) = v20;
      *(v67 + 5) = v18;
      v68 = *v117;
      if (!*v117)
      {
        goto LABEL_130;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v19 + 4);
            v70 = *(v19 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_61:
            if (v72)
            {
              goto LABEL_109;
            }

            v85 = &v19[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_112;
            }

            v91 = &v19[16 * a3 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_116;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                a3 = v66 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v95 = &v19[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_75:
          if (v90)
          {
            goto LABEL_111;
          }

          v98 = &v19[16 * a3];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_114;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_82:
          v106 = a3 - 1;
          if (a3 - 1 >= v66)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            goto LABEL_123;
          }

          if (!*v126)
          {
            goto LABEL_127;
          }

          v107 = *&v19[16 * v106 + 32];
          v108 = *&v19[16 * a3 + 40];
          sub_10082EE90(*v126 + *(v123 + 72) * v107, *v126 + *(v123 + 72) * *&v19[16 * a3 + 32], *v126 + *(v123 + 72) * v108, v68);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v108 < v107)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10113DE48(v19);
          }

          if (v106 >= *(v19 + 2))
          {
            goto LABEL_106;
          }

          v109 = &v19[16 * v106];
          *(v109 + 4) = v107;
          *(v109 + 5) = v108;
          v135 = v19;
          sub_10113DDBC(a3);
          v19 = v135;
          v66 = *(v135 + 2);
          v8 = v130;
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v19[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_107;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_108;
        }

        v80 = &v19[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_110;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v84 >= v76)
        {
          v102 = &v19[16 * a3 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_117;
          }

          if (v71 < v105)
          {
            a3 = v66 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v17 = v126[1];
      if (v18 >= v17)
      {
        goto LABEL_93;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_93:
  a3 = *v117;
  if (!*v117)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v19 = sub_10113DE48(v19);
  }

  v135 = v19;
  v110 = *(v19 + 2);
  if (v110 >= 2)
  {
    while (*v126)
    {
      v111 = *&v19[16 * v110];
      v112 = *&v19[16 * v110 + 24];
      sub_10082EE90(*v126 + *(v123 + 72) * v111, *v126 + *(v123 + 72) * *&v19[16 * v110 + 16], *v126 + *(v123 + 72) * v112, a3);
      if (v5)
      {
        goto LABEL_103;
      }

      if (v112 < v111)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113DE48(v19);
      }

      if (v110 - 2 >= *(v19 + 2))
      {
        goto LABEL_119;
      }

      v113 = &v19[16 * v110];
      *v113 = v111;
      *(v113 + 1) = v112;
      v135 = v19;
      sub_10113DDBC(v110 - 1);
      v19 = v135;
      v110 = *(v135 + 2);
      if (v110 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
}

void sub_10082E398(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a4;
  v142 = a5;
  v129 = a1;
  v134 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v139 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v133 = &v118 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v118 - v15;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = &v118 - v19;
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v140 = a3;
  if (a3[1] < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_99:
    v20 = *v129;
    if (*v129)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v27 = a3[1];
  v124 = &v118 - v23;
  v125 = v26;
  v135 = v25;
  v132 = v24;
  v123 = a6;
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v122 = v16;
  while (1)
  {
    if (v28 + 1 >= v27)
    {
      v42 = v28 + 1;
    }

    else
    {
      v127 = v27;
      v30 = *v140;
      v31 = *(v139 + 72);
      v32 = v28;
      v33 = *v140 + v31 * (v28 + 1);
      v34 = v124;
      sub_10003CA5C(v33, v124, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v138 = v30;
      v35 = v30 + v31 * v32;
      v36 = v125;
      sub_10003CA5C(v35, v125, type metadata accessor for CRLBoardLibraryViewModel.Item);
      LODWORD(v137) = v141(v34, v36);
      if (v7)
      {
        sub_10003E060(v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v117 = v34;
        goto LABEL_112;
      }

      sub_10003E060(v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003E060(v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v121 = v127 - 1;
      v136 = v127 - 2;
      v37 = v138 + v31 * (v32 + 2);
      v126 = v32;
      v38 = v31;
      v138 = v31;
      while (v136 != v32)
      {
        sub_10003CA5C(v37, v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v39 = v20;
        v40 = v135;
        sub_10003CA5C(v33, v135, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v41 = v141(v39, v40);
        sub_10003E060(v40, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v39, type metadata accessor for CRLBoardLibraryViewModel.Item);
        ++v32;
        v38 = v138;
        v37 += v138;
        v33 += v138;
        v20 = v39;
        if ((v137 ^ v41))
        {
          v42 = v32 + 1;
          goto LABEL_12;
        }
      }

      v32 = v121;
      v42 = v127;
LABEL_12:
      v28 = v126;
      if ((v137 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v42 < v126)
      {
        goto LABEL_136;
      }

      if (v126 <= v32)
      {
        v43 = v42;
        v44 = v38 * (v42 - 1);
        v45 = v43 * v38;
        v127 = v43;
        v128 = v20;
        v46 = v43;
        v47 = v126;
        v48 = v126 * v38;
        do
        {
          if (v47 != --v46)
          {
            v49 = *v140;
            if (!*v140)
            {
              goto LABEL_140;
            }

            sub_10003DF00(v49 + v48, v131, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v48 < v44 || v49 + v48 >= (v49 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_10003DF00(v131, v49 + v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v20 = v128;
            v38 = v138;
          }

          ++v47;
          v44 -= v38;
          v45 -= v38;
          v48 += v38;
        }

        while (v47 < v46);
        v16 = v122;
        v28 = v126;
        v42 = v127;
      }

      else
      {
LABEL_15:
        v16 = v122;
      }
    }

    v50 = v140[1];
    if (v42 >= v50)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v42, v28))
    {
      goto LABEL_132;
    }

    if (v42 - v28 >= v123)
    {
LABEL_36:
      v52 = v42;
      if (v42 < v28)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v28, v123))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v28 + v123 >= v50)
    {
      v51 = v140[1];
    }

    else
    {
      v51 = v28 + v123;
    }

    if (v51 < v28)
    {
      goto LABEL_135;
    }

    if (v42 == v51)
    {
      goto LABEL_36;
    }

    v128 = v20;
    v100 = *v140;
    v101 = *(v139 + 72);
    v102 = *v140 + v101 * (v42 - 1);
    v137 = -v101;
    v138 = v100;
    v126 = v28;
    v103 = v28 - v42;
    v119 = v101;
    v104 = v100 + v42 * v101;
    v136 = v51;
    v130 = v29;
    do
    {
      v120 = v104;
      v121 = v103;
      v127 = v102;
      while (1)
      {
        sub_10003CA5C(v104, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v105 = v16;
        v106 = v132;
        sub_10003CA5C(v102, v132, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v107 = v141(v105, v106);
        if (v7)
        {
          sub_10003E060(v106, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v117 = v105;
LABEL_112:
          sub_10003E060(v117, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_113;
        }

        v108 = v107;
        v109 = v42;
        sub_10003E060(v106, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v105, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v16 = v105;
        if ((v108 & 1) == 0)
        {
          break;
        }

        if (!v138)
        {
          goto LABEL_138;
        }

        v110 = v133;
        sub_10003DF00(v104, v133, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        sub_10003DF00(v110, v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v102 += v137;
        v104 += v137;
        v111 = __CFADD__(v103++, 1);
        v42 = v109;
        v7 = 0;
        v29 = v130;
        if (v111)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v29 = v130;
LABEL_95:
      ++v42;
      v102 = v127 + v119;
      v103 = v121 - 1;
      v104 = v120 + v119;
      v52 = v136;
    }

    while (v42 != v136);
    v20 = v128;
    v28 = v126;
    if (v136 < v126)
    {
      goto LABEL_131;
    }

LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_100B355CC(0, *(v29 + 2) + 1, 1, v29);
    }

    v54 = *(v29 + 2);
    v53 = *(v29 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v29 = sub_100B355CC((v53 > 1), v54 + 1, 1, v29);
    }

    *(v29 + 2) = v55;
    v56 = &v29[16 * v54];
    *(v56 + 4) = v28;
    *(v56 + 5) = v52;
    v136 = v52;
    v57 = *v129;
    if (!*v129)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      break;
    }

LABEL_3:
    v27 = v140[1];
    v28 = v136;
    if (v136 >= v27)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v58 = v55 - 1;
    if (v55 >= 4)
    {
      v63 = &v29[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_118;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_119;
      }

      v70 = &v29[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_121;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_124;
      }

      if (v74 >= v66)
      {
        v92 = &v29[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_130;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v62)
        {
          goto LABEL_120;
        }

        v75 = &v29[16 * v55];
        v77 = *v75;
        v76 = *(v75 + 1);
        v78 = __OFSUB__(v76, v77);
        v79 = v76 - v77;
        v80 = v78;
        if (v78)
        {
          goto LABEL_123;
        }

        v81 = &v29[16 * v58 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v79, v84))
        {
          goto LABEL_127;
        }

        if (v79 + v84 < v61)
        {
          goto LABEL_70;
        }

        if (v61 < v84)
        {
          v58 = v55 - 2;
        }
      }
    }

    else
    {
      if (v55 == 3)
      {
        v59 = *(v29 + 4);
        v60 = *(v29 + 5);
        v69 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        v62 = v69;
        goto LABEL_56;
      }

      v85 = &v29[16 * v55];
      v87 = *v85;
      v86 = *(v85 + 1);
      v69 = __OFSUB__(v86, v87);
      v79 = v86 - v87;
      v80 = v69;
LABEL_70:
      if (v80)
      {
        goto LABEL_122;
      }

      v88 = &v29[16 * v58];
      v90 = *(v88 + 4);
      v89 = *(v88 + 5);
      v69 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v69)
      {
        goto LABEL_125;
      }

      if (v91 < v79)
      {
        goto LABEL_3;
      }
    }

    v96 = v58 - 1;
    if (v58 - 1 < v55)
    {
      if (!*v140)
      {
        goto LABEL_137;
      }

      v97 = *&v29[16 * v96 + 32];
      v98 = *&v29[16 * v58 + 40];
      sub_10082F950(*v140 + *(v139 + 72) * v97, *v140 + *(v139 + 72) * *&v29[16 * v58 + 32], *v140 + *(v139 + 72) * v98, v57, v141, v142);
      if (v7)
      {
        goto LABEL_113;
      }

      if (v98 < v97)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10113DE48(v29);
      }

      if (v96 >= *(v29 + 2))
      {
        goto LABEL_117;
      }

      v99 = &v29[16 * v96];
      *(v99 + 4) = v97;
      *(v99 + 5) = v98;
      v143 = v29;
      sub_10113DDBC(v58);
      v29 = v143;
      v55 = *(v143 + 2);
      if (v55 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  v29 = sub_10113DE48(v29);
LABEL_101:
  v143 = v29;
  v112 = *(v29 + 2);
  if (v112 < 2)
  {
LABEL_113:

    return;
  }

  v113 = v141;
  while (*v140)
  {
    v114 = *&v29[16 * v112];
    v115 = *&v29[16 * v112 + 24];
    sub_10082F950(*v140 + *(v139 + 72) * v114, *v140 + *(v139 + 72) * *&v29[16 * v112 + 16], *v140 + *(v139 + 72) * v115, v20, v113, v142);
    if (v7)
    {
      goto LABEL_113;
    }

    if (v115 < v114)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10113DE48(v29);
    }

    if (v112 - 2 >= *(v29 + 2))
    {
      goto LABEL_129;
    }

    v116 = &v29[16 * v112];
    *v116 = v114;
    *(v116 + 1) = v115;
    v143 = v29;
    sub_10113DDBC(v112 - 1);
    v29 = v143;
    v112 = *(v143 + 2);
    if (v112 <= 1)
    {
      goto LABEL_113;
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_10082EE90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v58 = a1;
  v57 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a2;
    v26 = a4 + v16;
    if (v16 >= 1)
    {
      v27 = -v12;
      v28 = a4 + v16;
      v45 = -v12;
      v46 = a1;
      while (2)
      {
        while (1)
        {
          v43 = v26;
          v29 = v48;
          v47 = v48;
          v48 += v27;
          while (1)
          {
            if (v29 <= a1)
            {
              v58 = v29;
              v56 = v43;
              goto LABEL_60;
            }

            v31 = a3;
            v44 = v26;
            v32 = a4;
            v33 = a3 + v27;
            v34 = v28 + v27;
            v35 = v49;
            sub_10003CA5C(v34, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v36 = v50;
            sub_10003CA5C(v48, v50, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v37 = *(v51 + 24);
            v38 = *(v35 + v37 + 8);
            v54 = *(v35 + v37);
            v55 = v38;
            v39 = (v36 + v37);
            v41 = *v39;
            v40 = v39[1];
            v52 = v41;
            v53 = v40;
            sub_100017CD8();
            v42 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
            sub_10003E060(v36, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_10003E060(v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            if (v42 == -1)
            {
              break;
            }

            v26 = v34;
            a3 = v33;
            a4 = v32;
            if (v31 < v28 || v33 >= v28)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v46;
            }

            else
            {
              a1 = v46;
              if (v31 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v28 = v34;
            v30 = v34 > a4;
            v27 = v45;
            v29 = v47;
            if (!v30)
            {
              v48 = v47;
              goto LABEL_59;
            }
          }

          a3 = v33;
          a4 = v32;
          if (v31 < v47 || v33 >= v47)
          {
            break;
          }

          v27 = v45;
          a1 = v46;
          v26 = v44;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v28 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v27 = v45;
        a1 = v46;
        v26 = v44;
        if (v28 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v58 = v48;
    v56 = v26;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v15;
    v56 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v18 = v50;
      do
      {
        v19 = v49;
        sub_10003CA5C(a2, v49, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003CA5C(a4, v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v20 = *(v51 + 24);
        v21 = *(v19 + v20 + 8);
        v54 = *(v19 + v20);
        v55 = v21;
        v22 = (v18 + v20);
        v24 = *v22;
        v23 = v22[1];
        v52 = v24;
        v53 = v23;
        sub_100017CD8();
        v25 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
          }

          else
          {
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v58 = a1;
      }

      while (a4 < v48 && a2 < a3);
    }
  }

LABEL_60:
  sub_10063F794(&v58, &v57, &v56);
}

void sub_10082F420(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v45);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v35 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v48 = a1;
  v47 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v39 = a1;
      v40 = a4;
      v38 = -v12;
      do
      {
        v36 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v41 = v25;
        v42 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v48 = v25;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v22;
          v28 = v45;
          v29 = a3 + v23;
          v30 = v24 + v23;
          v31 = v43;
          sub_10003CA5C(v30, v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v32 = v44;
          sub_10003CA5C(v26, v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v33 = sub_1009D1B18(*(v31 + *(v28 + 28)), *(v32 + *(v28 + 28)));
          sub_10003E060(v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003E060(v31, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          if (v33)
          {
            break;
          }

          v22 = v30;
          if (a3 < v24 || v29 >= v24)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v24;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v25 = v41;
          v27 = v30 > v40;
          v26 = v42;
          v23 = v38;
          if (!v27)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v38;
          a1 = v39;
          v22 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v23 = v38;
          a1 = v39;
          v22 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v15;
    v46 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v43;
        sub_10003CA5C(a2, v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v20 = v44;
        sub_10003CA5C(a4, v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v21 = sub_1009D1B18(*(v19 + *(v45 + 28)), *(v20 + *(v45 + 28)));
        sub_10003E060(v20, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_10063F794(&v48, &v47, &v46);
}

void sub_10082F950(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v53);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v52 = *(v22 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < v23 || v23 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = v23;
          sub_10003CA5C(a2, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10003CA5C(a4, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v30 = v55(v21, v18);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10003E060(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          v23 = v34 + v33;
          v59 = v23;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_10003E060(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

LABEL_64:
      sub_10063F7DC(&v59, &v58, &v57);
      return;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v15;
          v48 = v12;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= v23)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_10003CA5C(v38 + v37, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10003CA5C(v50, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v42 = v55(v15, v12);
              if (v7)
              {
                sub_10003E060(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
                sub_10003E060(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_10003E060(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10003E060(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              v23 = v51;
              v15 = v47;
              v12 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v23 = v51;
            v38 = v52;
            v15 = v47;
            v12 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_10082FF98(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  __chkstk_darwin(v11);
  v13 = (&v32 - v12);
  __chkstk_darwin(v14);
  v16 = (&v32 - v15);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v20 = sub_1005B981C(&qword_101A03B70, &unk_1014807D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v32 - v21;
  v24 = (&v32 + *(v23 + 56) - v21);
  sub_10003CA5C(v32, &v32 - v21, _s13CacheSnapshotV20TitleValidationErrorOMa);
  sub_10003CA5C(v33, v24, _s13CacheSnapshotV20TitleValidationErrorOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10003CA5C(v22, v19, _s13CacheSnapshotV20TitleValidationErrorOMa);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_10003DF00(v24, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v30 = sub_100F888B0(v19, v4);
        sub_10003E060(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
        return v30 & 1;
      }

      sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_20;
    }

    sub_10003CA5C(v22, v16, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v16;
    v26 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_10;
    }

LABEL_19:

LABEL_20:
    sub_10000CAAC(v22, &qword_101A03B70, &unk_1014807D0);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10003CA5C(v22, v13, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v13;
    v26 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_10003CA5C(v22, v7, _s13CacheSnapshotV20TitleValidationErrorOMa);
    v27 = *v7;
    v26 = v7[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  sub_10003CA5C(v22, v10, _s13CacheSnapshotV20TitleValidationErrorOMa);
  v27 = *v10;
  v26 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v27 == *v24 && v26 == v24[1])
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
LABEL_21:
      v30 = 0;
      return v30 & 1;
    }
  }

  sub_10003E060(v22, _s13CacheSnapshotV20TitleValidationErrorOMa);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_10083040C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = _s13CacheSnapshotV11LookupErrorOMa(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = sub_1005B981C(&qword_101A03B68, &qword_1014807C8);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_10003CA5C(a1, &v24 - v17, _s13CacheSnapshotV11LookupErrorOMa);
  sub_10003CA5C(a2, &v18[v20], _s13CacheSnapshotV11LookupErrorOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003CA5C(v18, v15, _s13CacheSnapshotV11LookupErrorOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10003DF00(&v18[v20], v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v21 = sub_100F91CB8(v15, v9);
      sub_10003E060(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = v15;
      goto LABEL_6;
    }

LABEL_8:
    sub_10003E060(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000CAAC(v18, &qword_101A03B68, &qword_1014807C8);
    v21 = 0;
    return v21 & 1;
  }

  sub_10003CA5C(v18, v12, _s13CacheSnapshotV11LookupErrorOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v12;
    goto LABEL_8;
  }

  sub_10003DF00(&v18[v20], v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v21 = sub_100F91CB8(v12, v6);
  sub_10003E060(v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v22 = v12;
LABEL_6:
  sub_10003E060(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003E060(v18, _s13CacheSnapshotV11LookupErrorOMa);
  return v21 & 1;
}

uint64_t sub_10083073C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  *&v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v71 - v8;
  v10 = sub_1005B981C(&qword_101A03A00, &unk_101480610);
  __chkstk_darwin(v10 - 8);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v71 - v13;
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v78 = &v71 - v21;
  __chkstk_darwin(v22);
  v24 = &v71 - v23;
  v82[0] = a3;

  sub_1008261E8(v82, sub_10082D060, sub_10082CDFC);
  v25 = v82[0];
  v82[0] = a3;

  sub_1008261E8(v82, sub_10082D9BC, sub_10082CB6C);
  v26 = v82[0];
  if ((sub_100673E18(v25, v82[0]) & 1) != 0 && *(v26 + 16))
  {
    v72 = v16;
    v73 = v4;
    v75 = v24;

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v71 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 64) = v29;
    v31 = v79;
    v30 = v80;
    *(inited + 32) = v79;
    *(inited + 40) = v30;

    v32 = static os_log_type_t.default.getter();
    v74 = v27;
    sub_100005404(v27, &_mh_execute_header, v32, "Sort order is already alphabetical, trying to maintain that by calculating a new position for folder %@.", 106, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v33 = v75;
    sub_100826E70(v75, v78, v26, v31, v30);

    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_10146C4D0;
    *(v34 + 32) = v31;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v29;
    v35 = v29;
    *(v34 + 40) = v30;
    sub_10000BE14(v33, v19, &qword_101A03A00, &unk_101480610);
    v36 = *(v81 + 48);
    v37 = v73;
    *&v81 = v81 + 48;
    if (v36(v19, 1, v73) == 1)
    {

      sub_10000CAAC(v19, &qword_101A03A00, &unk_101480610);
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v54 = &v19[*(v37 + 24)];
      v39 = *v54;
      v38 = v54[1];

      sub_10003E060(v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v55 = v72;
    *(v34 + 96) = &type metadata for String;
    *(v34 + 104) = v35;
    *(v34 + 72) = v39;
    *(v34 + 80) = v38;
    v56 = v78;
    sub_10000BE14(v78, v55, &qword_101A03A00, &unk_101480610);
    if (v36(v55, 1, v37) == 1)
    {
      sub_10000CAAC(v55, &qword_101A03A00, &unk_101480610);
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v59 = (v55 + *(v37 + 24));
      v58 = *v59;
      v57 = v59[1];

      sub_10003E060(v55, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    *(v34 + 136) = &type metadata for String;
    *(v34 + 144) = v35;
    *(v34 + 112) = v58;
    *(v34 + 120) = v57;
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v74, &_mh_execute_header, v60, "Inserting folder %@ after %@ and before %@", 44, 2, v34);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v61 = v76;
    sub_10000BE14(v75, v76, &qword_101A03A00, &unk_101480610);
    if (v36(v61, 1, v37) == 1)
    {
      sub_10000CAAC(v61, &qword_101A03A00, &unk_101480610);
      v62 = 0;
    }

    else
    {
      v62 = *(v61 + *(v37 + 28));

      sub_10003E060(v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v63 = v77;
    sub_10000BE14(v56, v77, &qword_101A03A00, &unk_101480610);
    if (v36(v63, 1, v37) == 1)
    {
      sub_10000CAAC(v63, &qword_101A03A00, &unk_101480610);
      v64 = v75;
      if (!v62)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v65 = *(v63 + *(v37 + 28));

    sub_10003E060(v63, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (v62)
    {
      v64 = v75;
      if (!v65)
      {
LABEL_27:
        v66 = sub_1009D1F04(v62);
        goto LABEL_30;
      }

      sub_1009D2244(v62, v65);
    }

    else
    {
      v64 = v75;
      if (!v65)
      {
LABEL_31:
        sub_1005B981C(&qword_1019F49A0, &unk_101480600);
        v67 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
        v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v71;
        v69 = sub_10000C3A0(0xC7uLL) - 99;
        UUID.init()();
        *(v46 + v68) = v69;
        goto LABEL_32;
      }

      v66 = sub_1009D2B3C(v65);
    }

LABEL_30:
    v46 = v66;
LABEL_32:
    sub_10000CAAC(v56, &qword_101A03A00, &unk_101480610);
    sub_10000CAAC(v64, &qword_101A03A00, &unk_101480610);
    return v46;
  }

  v40 = *(v25 + 16);
  if (v40)
  {
    sub_10003CA5C(v25 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * (v40 - 1), v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);

    sub_10003DF00(v6, v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_1000053B0();
    v43 = v80;
    *(v42 + 32) = v79;
    *(v42 + 40) = v43;

    v44 = static os_log_type_t.default.getter();
    sub_100005404(v41, &_mh_execute_header, v44, "Sort order is not alphabetical, just append the new folder %@ to the end.", 75, 2, v42);
    swift_setDeallocating();
    sub_100005070((v42 + 32));

    v46 = sub_1009D1F04(v45);
    sub_10003E060(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  else
  {

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v48 = swift_initStackObject();
    v81 = xmmword_10146C6B0;
    *(v48 + 16) = xmmword_10146C6B0;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_1000053B0();
    v49 = v80;
    *(v48 + 32) = v79;
    *(v48 + 40) = v49;

    v50 = static os_log_type_t.default.getter();
    sub_100005404(v47, &_mh_execute_header, v50, "No existing sibling folders found, just insert the folder with a random position.", 81, 2, v48);
    swift_setDeallocating();
    sub_100005070((v48 + 32));
    sub_1005B981C(&qword_1019F49A0, &unk_101480600);
    v51 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v81;
    v53 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v46 + v52) = v53;
  }

  return v46;
}

uint64_t sub_10083122C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v58 = a4;
  v56 = a1;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = v55 - v11;
  __chkstk_darwin(v12);
  *&v64 = v55 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v18 - 8);
  v20 = v55 - v19;
  v21 = _s4NodeVMa(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v59 = v55 - v26;
  v55[1] = a3;
  sub_100F87E04(v17);
  v27 = v58;
  if (*(v58 + 16) && (v28 = sub_10003E994(v17), (v29 & 1) != 0))
  {
    sub_10003CA5C(*(v27 + 56) + *(v22 + 72) * v28, v20, _s4NodeVMa);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v15 + 8))(v17, v14);
  (*(v22 + 56))(v20, v30, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000CAAC(v20, &unk_1019FB770, &unk_10146FA30);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v64 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    v33 = sub_100F8903C();
    v35 = v34;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v36, "Could not find node for parent item %@. Returning a generic disjoint position.", 78, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_1005B981C(&qword_1019F49A0, &unk_101480600);
    v37 = *(type metadata accessor for CRLDisjointPosition.Element(0) - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v64;
    v40 = sub_10000C3A0(0xC7uLL) - 99;
    UUID.init()();
    *(v39 + v38) = v40;
    return v39;
  }

  v41 = v59;
  sub_10003DF00(v20, v59, _s4NodeVMa);
  v42 = *(v41 + *(v21 + 20));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v42 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v45 = *(v22 + 72);
    v46 = _swiftEmptyArrayStorage;
    v60 = v5;
    while (1)
    {
      sub_10003CA5C(v44, v24, _s4NodeVMa);
      sub_10003CA5C(v24, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003E060(v24, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        if (!(*(*(v48 - 8) + 48))(v7, 5, v48))
        {
          v49 = v62;
          sub_10003DF00(v7, v62, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v50 = v49;
          v51 = v61;
          sub_10003DF00(v50, v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003DF00(v51, v64, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_100B36D24(0, v46[2] + 1, 1, v46);
          }

          v53 = v46[2];
          v52 = v46[3];
          if (v53 >= v52 >> 1)
          {
            v46 = sub_100B36D24((v52 > 1), v53 + 1, 1, v46);
          }

          v46[2] = v53 + 1;
          sub_10003DF00(v64, v46 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v53, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          goto LABEL_13;
        }

        v47 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v47 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      }

      sub_10003E060(v7, v47);
LABEL_13:
      v44 += v45;
      if (!--v43)
      {
        goto LABEL_23;
      }
    }
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_23:
  v39 = sub_10083073C(v56, v57, v46);

  sub_10003E060(v59, _s4NodeVMa);
  return v39;
}

uint64_t sub_1008319D4(uint64_t a1, uint64_t a2)
{
  v4 = _s4NodeVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100831A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v10;

  swift_bridgeObjectRetain_n();
  v25 = a1;
  v26 = a2;
  v24 = &v25;
  LOBYTE(v9) = sub_100C08644(sub_1008335B4, v23, a3);

  if (v9)
  {
    v11 = a1;
    v12 = 2;
    v21 = xmmword_10146BDE0;
    while (1)
    {

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v13 = swift_allocObject();
      *(v13 + 16) = v21;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_1000053B0();
      *(v13 + 32) = v11;
      *(v13 + 40) = a2;
      *(v13 + 96) = &type metadata for Int;
      *(v13 + 104) = &protocol witness table for Int;
      *(v13 + 64) = v14;
      *(v13 + 72) = v12;

      a1 = static String.localizedStringWithFormat(_:_:)();
      v16 = v15;

      if (__OFADD__(v12, 1))
      {
        break;
      }

      v25 = a1;
      v26 = v16;
      __chkstk_darwin(v18);
      v20[2] = &v25;
      v19 = sub_100C08644(sub_1008335B4, v20, a3);

      ++v12;
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return a1;
  }

  return result;
}

uint64_t sub_100831CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = _s4NodeVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  sub_100F87E04(v10);
  if (*(a4 + 16) && (v18 = sub_10003E994(v10), (v19 & 1) != 0))
  {
    sub_10003CA5C(*(a4 + 56) + *(v15 + 72) * v18, v13, _s4NodeVMa);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v8 + 8))(v10, v7);
  (*(v15 + 56))(v13, v20, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000CAAC(v13, &unk_1019FB770, &unk_10146FA30);
    v21 = v31;
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    *(inited + 32) = v21;
    *(inited + 40) = a2;

    v25 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v25;
    *(inited + 80) = v26;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v27, "Attempted to generate unique title from %@ but could not find parent view model item %@ in snapshot", 101, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  else
  {
    sub_10003DF00(v13, v17, _s4NodeVMa);
    sub_100A0F8BC(_swiftEmptySetSingleton);
    v21 = sub_100831A74(v31, a2, v28);

    sub_10003E060(v17, _s4NodeVMa);
  }

  return v21;
}

unint64_t sub_1008320CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v57 = a1;
  v58 = a2;
  v62 = type metadata accessor for CharacterSet();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v12 - 8);
  v14 = &v54[-v13];
  v15 = _s4NodeVMa(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v59 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = a3;
  sub_100F87E04(v11);
  if (*(a4 + 16) && (v18 = sub_10003E994(v11), (v19 & 1) != 0))
  {
    sub_10003CA5C(*(a4 + 56) + *(v16 + 72) * v18, v14, _s4NodeVMa);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v9 + 8))(v11, v8);
  (*(v16 + 56))(v14, v20, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019FB770, &unk_10146FA30);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 64) = v23;
    v24 = v58;
    *(inited + 32) = v57;
    *(inited + 40) = v24;

    v25 = v55;
    v26 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v23;
    *(inited + 72) = v26;
    *(inited + 80) = v27;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v28, "Attempted to validate title %@ but could not find parent view model item %@ in snapshot", 89, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    _s13CacheSnapshotV11LookupErrorOMa(0);
    sub_10083356C(&qword_101A03A08, _s13CacheSnapshotV11LookupErrorOMa, byte_101480788);
    swift_allocError();
    sub_10003CA5C(v25, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    sub_10003DF00(v14, v59, _s4NodeVMa);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v30 crl_stringByFixingBrokenSurrogatePairs];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v60 = v32;
    v61 = v34;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100017CD8();
    a4 = StringProtocol.trimmingCharacters(in:)();
    v36 = v35;
    v37 = *(v56 + 8);
    v37(v7, v62);

    while (1)
    {

      v60 = a4;
      v61 = v36;
      static CharacterSet.newlines.getter();
      v38 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v40 = v39;
      v42 = v41;
      v37(v7, v62);

      if (v42)
      {
        break;
      }

      a4 = sub_1007B0BC0(v38, v40, 32, 0xE100000000000000, a4, v36);
      v44 = v43;

      v36 = v44;
    }

    v45 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v45 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      sub_100A0F8BC(_swiftEmptySetSingleton);
      v47 = (v46 + 40);
      v48 = *(v46 + 16) + 1;
      while (--v48)
      {
        if (*(v47 - 1) != a4 || *v47 != v36)
        {
          v47 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        _s13CacheSnapshotV20TitleValidationErrorOMa(0);
        sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa, byte_101480748);
        swift_allocError();
        *v50 = a4;
        v50[1] = v36;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_24;
      }

      sub_10003E060(v59, _s4NodeVMa);
    }

    else
    {

      _s13CacheSnapshotV20TitleValidationErrorOMa(0);
      sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa, byte_101480748);
      swift_allocError();
      v51 = v58;
      *v52 = v57;
      v52[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_24:
      sub_10003E060(v59, _s4NodeVMa);
    }
  }

  return a4;
}

uint64_t sub_100832858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a1;
  v91 = a2;
  v83 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v83);
  v80 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v79 - v9;
  __chkstk_darwin(v10);
  v84 = v79 - v11;
  v12 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  __chkstk_darwin(v12);
  v81 = (v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for CharacterSet();
  v85 = *(v94 - 8);
  __chkstk_darwin(v94);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v19 - 8);
  v21 = v79 - v20;
  v22 = _s4NodeVMa(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v87 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a3;
  sub_100F87E04(v18);
  if (*(a4 + 16) && (sub_10003E994(v18), (v25 & 1) != 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = *(v88 + 8);
    v27(v18, v89);
    if (Strong)
    {
      sub_10003CA5C(Strong + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v21, _s4NodeVMa);

      v28 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v27 = *(v88 + 8);
    v27(v18, v89);
  }

  v28 = 1;
LABEL_7:
  (*(v23 + 56))(v21, v28, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000CAAC(v21, &unk_1019FB770, &unk_10146FA30);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 64) = v31;
    v32 = v91;
    *(inited + 32) = v90;
    *(inited + 40) = v32;

    v33 = v86;
    v34 = sub_100F8903C();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    *(inited + 72) = v34;
    *(inited + 80) = v35;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v36, "Attempted to validate title %@ but could not find parent of view model item %@ in snapshot", 92, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    _s13CacheSnapshotV11LookupErrorOMa(0);
    sub_10083356C(&qword_101A03A08, _s13CacheSnapshotV11LookupErrorOMa, byte_101480788);
    swift_allocError();
    sub_10003CA5C(v33, v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v33;
  }

  v79[0] = v27;
  v79[2] = v12;
  v79[1] = v4;
  sub_10003DF00(v21, v87, _s4NodeVMa);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v38 crl_stringByFixingBrokenSurrogatePairs];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v92 = v40;
  v93 = v42;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v33 = StringProtocol.trimmingCharacters(in:)();
  v44 = v43;
  v45 = *(v85 + 8);
  v45(v15, v94);

  while (1)
  {

    v92 = v33;
    v93 = v44;
    static CharacterSet.newlines.getter();
    v46 = StringProtocol.rangeOfCharacter(from:options:range:)();
    v48 = v47;
    v50 = v49;
    v45(v15, v94);

    if (v50)
    {
      break;
    }

    v33 = sub_1007B0BC0(v46, v48, 32, 0xE100000000000000, v33, v44);
    v52 = v51;

    v44 = v52;
  }

  v53 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v53 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa, byte_101480748);
    swift_allocError();
    v59 = v91;
    *v60 = v90;
    v60[1] = v59;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_34:
    v62 = _s4NodeVMa;
    v63 = v87;
    goto LABEL_35;
  }

  v54 = v86;
  v55 = v84;
  sub_10003CA5C(v86, v84, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v57 = v80;
    sub_10003CA5C(v55, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v58 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v58 - 8) + 48))(v57, 5, v58))
    {

      sub_10003E060(v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_23:
      sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa, byte_101480748);
      swift_allocError();
      sub_10003CA5C(v54, v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003E060(v87, _s4NodeVMa);
      v62 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v63 = v55;
LABEL_35:
      sub_10003E060(v63, v62);
      return v33;
    }

    sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
    v70 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_10146C6B0;
    sub_100F87E04(v71 + v70);
    v72 = sub_1005BF678(v71);
    swift_setDeallocating();
    (v79[0])(v71 + v70, v89);
    swift_deallocClassInstance();
    sub_100A0F8BC(v72);
    v68 = v73;

    v69 = v81;
    *v81 = v33;
    *(v69 + 8) = v44;
    swift_storeEnumTagMultiPayload();

    sub_10003E060(v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  }

  else
  {
    sub_10003CA5C(v55, v82, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
    v64 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_10146C6B0;
    sub_100F87E04(v65 + v64);
    v66 = sub_1005BF678(v65);
    swift_setDeallocating();
    (v79[0])(v65 + v64, v89);
    swift_deallocClassInstance();
    sub_100A0EC6C(v66);
    v68 = v67;

    v69 = v81;
    *v81 = v33;
    *(v69 + 8) = v44;
    swift_storeEnumTagMultiPayload();

    sub_10003E060(v82, _s5BoardVMa);
  }

  sub_10003E060(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v74 = (v68 + 40);
  v75 = *(v68 + 16) + 1;
  while (--v75)
  {
    if (*(v74 - 1) != v33 || *v74 != v44)
    {
      v74 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    sub_10083356C(&qword_101A03A10, _s13CacheSnapshotV20TitleValidationErrorOMa, byte_101480748);
    swift_allocError();
    sub_10003CA5C(v69, v77, _s13CacheSnapshotV20TitleValidationErrorOMa);
    swift_willThrow();
    sub_10003E060(v69, _s13CacheSnapshotV20TitleValidationErrorOMa);
    goto LABEL_34;
  }

  sub_10003E060(v69, _s13CacheSnapshotV20TitleValidationErrorOMa);
  sub_10003E060(v87, _s4NodeVMa);
  return v33;
}