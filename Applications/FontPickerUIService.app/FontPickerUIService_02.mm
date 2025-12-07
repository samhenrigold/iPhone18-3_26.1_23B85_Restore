void sub_1000258E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100025930(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100013694(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100025990@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100025A58()
{
  v3 = sub_10000A0B0(1uLL, &off_100096780);
  if ((v2 & 1) == 0)
  {
    goto LABEL_2;
  }

  v6 = v2;
  v7 = v1;
  v8 = v0;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(v9 + 2);

  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 != (v6 >> 1) - v7)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
    v2 = v6;
    v1 = v7;
    v0 = v8;
LABEL_2:
    sub_10000DD74(v3, v0, v1, v2);
    v5 = v4;
LABEL_9:
    result = swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v5 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v5)
  {
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

LABEL_10:
  qword_1000A50D8 = v5;
  return result;
}

Swift::Int sub_100025B68()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100025C1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100025CBC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100025D6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000298A8(*a1);
  *a2 = result;
  return result;
}

void sub_100025D9C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1668508004;
  v4 = 0xE700000000000000;
  v5 = 0x6C616D69636564;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6568707968;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_100025E6C()
{
  sub_1000130DC(&qword_1000A01D0, &qword_100078CB8);
  v0 = swift_allocObject();
  v1 = j__malloc_size(v0);
  v2 = 0;
  v3 = v1 - 32;
  if (v1 < 32)
  {
    v3 = v1 - 25;
  }

  *(v0 + 16) = 5;
  *(v0 + 24) = 2 * (v3 >> 3);
  *(v0 + 32) = xmmword_1000784D0;
  *(v0 + 48) = xmmword_1000784E0;
  *(v0 + 64) = 4;
  while (v2 < *(v0 + 16))
  {
    v4 = *(v0 + 8 * v2 + 32);
    sub_10000DE34(0, 6, 0);
    v5 = exp2(v4);
    if (v5 == INFINITY)
    {
      goto LABEL_29;
    }

    if (v5 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v5 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v6 = v5;
    v7 = 8 * v5;
    v8 = 7 * v5;
    if ((v5 * 7) >> 64 != v8 >> 63)
    {
      goto LABEL_32;
    }

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    *&v11 = *&v10 + 1;
    if (*&v10 >= *&v9 >> 1)
    {
      sub_10000DE34((*&v9 > 1uLL), *&v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11;
    _swiftEmptyArrayStorage[*&v10 + 4] = v8;
    if ((v6 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_33;
    }

    v12 = _swiftEmptyArrayStorage[3];
    v13 = *&v10 + 2;
    if (*&v11 >= *&v12 >> 1)
    {
      sub_10000DE34((*&v12 > 1uLL), v13, 1);
    }

    *&_swiftEmptyArrayStorage[2] = v13;
    _swiftEmptyArrayStorage[*&v11 + 4] = v7;
    if ((v6 * 9) >> 64 != (9 * v6) >> 63)
    {
      goto LABEL_34;
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    *&v16 = *&v15 + 1;
    if (*&v15 >= *&v14 >> 1)
    {
      sub_10000DE34((*&v14 > 1uLL), *&v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16;
    _swiftEmptyArrayStorage[*&v15 + 4] = (9 * v6);
    if ((v6 * 10) >> 64 != (10 * v6) >> 63)
    {
      goto LABEL_35;
    }

    v17 = _swiftEmptyArrayStorage[3];
    v18 = *&v15 + 2;
    if (*&v16 >= *&v17 >> 1)
    {
      sub_10000DE34((*&v17 > 1uLL), v18, 1);
    }

    *&_swiftEmptyArrayStorage[2] = v18;
    _swiftEmptyArrayStorage[*&v16 + 4] = (10 * v6);
    if ((v6 * 11) >> 64 != (11 * v6) >> 63)
    {
      goto LABEL_36;
    }

    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    *&v21 = *&v20 + 1;
    if (*&v20 >= *&v19 >> 1)
    {
      sub_10000DE34((*&v19 > 1uLL), *&v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v21;
    _swiftEmptyArrayStorage[*&v20 + 4] = (11 * v6);
    if ((v6 * 12) >> 64 != (12 * v6) >> 63)
    {
      goto LABEL_37;
    }

    v22 = _swiftEmptyArrayStorage[3];
    v23 = *&v20 + 2;
    if (*&v21 >= *&v22 >> 1)
    {
      sub_10000DE34((*&v22 > 1uLL), v23, 1);
    }

    ++v2;
    *&_swiftEmptyArrayStorage[2] = v23;
    _swiftEmptyArrayStorage[*&v21 + 4] = (12 * v6);
    sub_100027940(_swiftEmptyArrayStorage);
    if (v2 == 5)
    {

      qword_1000A50E0 = _swiftEmptyArrayStorage;
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1000261FC(double a1)
{
  if (qword_10009F2F0 != -1)
  {
    swift_once();
  }

  qword_1000A50E8 = qword_1000A50E0;
}

id sub_100026260()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:1];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  result = [v4 setMaximumFractionDigits:0];
  qword_10009FDF0 = v4;
  return result;
}

void sub_100026390(double a1)
{
  if (qword_10009F288 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 secondaryLabelColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A50F0 = v6;
}

void sub_1000264A8(double a1)
{
  if (qword_10009F288 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPurpleColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A50F8 = v6;
}

void sub_1000265C0(double a1)
{
  if (qword_10009F288 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPurpleColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A5100 = v6;
}

void sub_1000266D8(double a1)
{
  if (qword_10009F290 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemPinkColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A5108 = v6;
}

void sub_1000267F0(double a1)
{
  if (qword_10009F298 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemOrangeColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A5110 = v6;
}

void sub_100026908(double a1)
{
  if (qword_10009F2A0 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemMintColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A5118 = v6;
}

void sub_100026A20(double a1)
{
  if (qword_10009F2A8 != -1)
  {
    swift_once();
  }

  v1 = objc_opt_self();

  v2 = [v1 systemBlueColor];
  v3 = objc_allocWithZone(_UITextFormattingViewControllerEmphasisStyle);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithStyleKey:v4 title:v5 color:v2];

  qword_1000A5120 = v6;
}

id sub_100026B38()
{
  sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000784F0;
  if (qword_10009F318 != -1)
  {
    swift_once();
  }

  v1 = qword_1000A5100;
  *(v0 + 32) = qword_1000A5100;
  v2 = qword_10009F320;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1000A5108;
  *(v0 + 40) = qword_1000A5108;
  v5 = qword_10009F328;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1000A5110;
  *(v0 + 48) = qword_1000A5110;
  v8 = qword_10009F330;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1000A5118;
  *(v0 + 56) = qword_1000A5118;
  v11 = qword_10009F338;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1000A5120;
  *(v0 + 64) = qword_1000A5120;
  qword_1000A5128 = v0;

  return v13;
}

uint64_t sub_100026D28(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100026DA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100026E98;

  return v6(a1);
}

uint64_t sub_100026E98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100026F90@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

Swift::Int sub_100026FE8(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011BE4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *(v2 + v9 + 32);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 = (v13 - 1);
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 = (v10 + 1);
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100027120(v16, v17, v18, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100027120(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10000F75C(v9);
      v9 = result;
    }

    v77 = v9 + 2;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[2 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_10002765C((*a3 + *v79), (*a3 + *v81), (*a3 + v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000BCB8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_10000BCB8((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[2 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[2 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[2 * v35 + 4];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[2 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[2 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = v9[2 * v73 + 4];
        v75 = v9[2 * v35 + 5];
        sub_10002765C((*a3 + *&v74), (*a3 + *&v9[2 * v35 + 4]), (*a3 + *&v75), v34);
        if (v4)
        {
        }

        if (*&v75 < *&v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000F75C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[2 * v73];
        v76[4] = v74;
        v76[5] = v75;
        result = sub_10000F6D0(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[2 * v32 + 4];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[2 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[2 * v35 + 4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10002765C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100027848(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
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
    result = v6 + v5;
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
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100027A2C(result, 1);
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
    return result;
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
  return result;
}

char *sub_100027940(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10000BEC8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
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
  return result;
}

uint64_t sub_100027A2C(uint64_t a1, char a2)
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

uint64_t sub_100027ACC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100027B24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C53C(a2, a3);
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
      sub_10000D54C(v16, a4 & 1);
      v11 = sub_10000C53C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000CD24();
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

_OWORD *sub_100027C9C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000C62C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10000CE90();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10000D7F0(v13, a3 & 1);
    v8 = sub_10000C62C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_1000143E4(v19);

    return sub_100015AB0(a1, v19);
  }

  else
  {
    sub_100027DDC(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_100027DDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100015AB0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100027E44(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100015A00(&qword_1000A0168, &qword_10009FEE8, &unk_100078520, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000130DC(&qword_10009FEE8, &unk_100078520);
            v9 = sub_1000281AC(v13, i, a3);
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
        sub_1000132E4(0, &qword_10009F640, _UIFontPickerFontInfo_ptr);
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

uint64_t sub_100027FF8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100015A00(&qword_1000A0178, &qword_10009FF10, &qword_100078538, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000130DC(&qword_10009FF10, &qword_100078538);
            v9 = sub_100028234(v13, i, a3);
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
        sub_1000132E4(0, &qword_10009F648, _UITextFormattingViewControllerEmphasisStyle_ptr);
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

void (*sub_1000281AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10002822C;
  }

  __break(1u);
  return result;
}

void (*sub_100028234(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100029BE4;
  }

  __break(1u);
  return result;
}

double *sub_1000282B4(unint64_t a1, uint64_t a2, SEL *a3)
{
  v16 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 *a3];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      LOBYTE(v12) = sub_10000F868(&v15, v10, v12);

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      if (v8 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100028444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000130DC(&qword_10009F628, &qword_100077900);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000C53C(v5, v6);
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

uint64_t sub_100028598()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000285D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002868C;

  return sub_100023C74(a1, v4, v5, v6);
}

uint64_t sub_10002868C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100028780()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000287B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100029BE8;

  return sub_100026DA0(a1, v4);
}

uint64_t sub_100028870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002868C;

  return sub_100026DA0(a1, v4);
}

uint64_t sub_100028928@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100028980@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000289D8@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

unint64_t sub_100028A24()
{
  result = qword_1000A00F8;
  if (!qword_1000A00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A00F8);
  }

  return result;
}

unint64_t sub_100028AD0()
{
  result = qword_1000A0170;
  if (!qword_1000A0170)
  {
    sub_1000132E4(255, &qword_10009F640, _UIFontPickerFontInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0170);
  }

  return result;
}

uint64_t sub_100028B60()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028B98()
{
  swift_unownedRetainStrong();
  sub_10001FA84();
}

uint64_t sub_100028BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TFListStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TFListStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100028D70()
{
  result = qword_1000A0188;
  if (!qword_1000A0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A0188);
  }

  return result;
}

unint64_t sub_100028E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000130DC(&qword_10009FA30, &qword_100078018);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100015AC0(v4, &v11, &qword_1000A17A0, &unk_100078CA0);
      v5 = v11;
      result = sub_10000C62C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100015AB0(&v12, (v3[7] + 32 * result));
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

uint64_t sub_100028F34(uint64_t a1)
{
  v2 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000132E4(0, &unk_1000A1790, UIColor_ptr);

  v7 = UIColor.init(_:)();
  v8 = *(v1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
  *v5 = v7;
  (*(v3 + 104))(v5, enum case for UITextFormattingViewController.ChangeValue.textColor(_:), v2);
  sub_1000130DC(&qword_1000A01A0, &qword_100078C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000784C0;
  *(inited + 32) = NSForegroundColorAttributeName;
  *(inited + 64) = v6;
  *(inited + 40) = v7;
  v10 = v7;

  v11 = NSForegroundColorAttributeName;
  v12 = sub_100028E0C(inited);
  swift_setDeallocating();
  sub_1000156F8(inited + 32, &qword_1000A17A0, &unk_100078CA0);
  v8(v5, v12);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10002912C(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {

      return 1;
    }

    else
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        return 2;
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {

          return 2;
        }

        else
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
          if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
          {

            return 3;
          }

          else
          {
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {
              return 3;
            }

            else
            {
              return 4;
            }
          }
        }
      }
    }
  }
}

double *sub_100029378()
{
  if (sub_100015B54())
  {
    if (qword_10009F310 != -1)
    {
      swift_once();
    }

    v0 = qword_1000A50F8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_100015B54())
  {
    if (qword_10009F318 != -1)
    {
      swift_once();
    }

    v1 = qword_1000A5100;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_100015B54())
  {
    if (qword_10009F320 != -1)
    {
      swift_once();
    }

    v2 = qword_1000A5108;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_100015B54())
  {
    if (qword_10009F328 != -1)
    {
      swift_once();
    }

    v3 = qword_1000A5110;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_100015B54())
  {
    if (qword_10009F330 != -1)
    {
      swift_once();
    }

    v4 = qword_1000A5118;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (sub_100015B54())
  {
    if (qword_10009F338 != -1)
    {
      swift_once();
    }

    v5 = qword_1000A5120;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000297C0(void *a1)
{
  if (a1)
  {
    v1 = [a1 styleKey];
    if (!v1)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = String._bridgeToObjectiveC()();
    }

    v2 = [objc_opt_self() standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    [v2 setObject:v1 forKey:v3];
  }
}

unint64_t sub_1000298A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000967D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000298F4(char a1, Swift::Double a2)
{
  if (qword_10009F300 != -1)
  {
    swift_once();
  }

  v4 = qword_10009FDF0;
  sub_1000132E4(0, &qword_1000A01B0, NSNumber_ptr);
  isa = NSNumber.init(floatLiteral:)(a2).super.super.isa;
  v6 = [v4 stringFromNumber:isa];

  if (!v6)
  {
    sub_1000130DC(&qword_1000A01B8, &qword_100078CB0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000784C0;
    *(v12 + 56) = &type metadata for CGFloat;
    *(v12 + 64) = sub_100029AF8();
    *(v12 + 32) = a2;
    v7 = String.init(format:_:)();
    v9 = v13;
    if (a1)
    {
      goto LABEL_5;
    }

    return v7;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if ((a1 & 1) == 0)
  {
    return v7;
  }

LABEL_5:
  if (qword_10009F208 != -1)
  {
    swift_once();
  }

  sub_1000130DC(&qword_1000A01B8, &qword_100078CB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000784C0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100029B4C();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  return String.init(format:_:)();
}

unint64_t sub_100029AF8()
{
  result = qword_1000A01C0;
  if (!qword_1000A01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A01C0);
  }

  return result;
}

unint64_t sub_100029B4C()
{
  result = qword_1000A01C8;
  if (!qword_1000A01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A01C8);
  }

  return result;
}

uint64_t sub_100029BA0()
{
  if (*(v0 + 40))
  {
    sub_1000143E4((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100029BFC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100029D24@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v138 = a1;
  v133 = sub_1000130DC(&qword_1000A0570, &qword_10007A228);
  __chkstk_darwin(v133);
  v4 = &v114 - v3;
  v132 = sub_1000130DC(&qword_1000A0578, &qword_10007A230);
  __chkstk_darwin(v132);
  v6 = &v114 - v5;
  v124 = type metadata accessor for ContentMarginPlacement();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000130DC(&qword_1000A0580, &qword_10007A238);
  __chkstk_darwin(v125);
  v126 = &v114 - v8;
  v127 = sub_1000130DC(&qword_1000A0588, &qword_10007A240);
  __chkstk_darwin(v127);
  v10 = &v114 - v9;
  v128 = sub_1000130DC(&qword_1000A0590, &qword_10007A248);
  v117 = *(v128 - 8);
  __chkstk_darwin(v128);
  v116 = &v114 - v11;
  v129 = sub_1000130DC(&qword_1000A0598, &qword_10007A250);
  v119 = *(v129 - 8);
  __chkstk_darwin(v129);
  v118 = &v114 - v12;
  v130 = sub_1000130DC(&qword_1000A05A0, &qword_10007A258);
  v121 = *(v130 - 8);
  __chkstk_darwin(v130);
  v120 = &v114 - v13;
  v137 = sub_1000130DC(&qword_1000A05A8, &qword_10007A260);
  __chkstk_darwin(v137);
  v131 = &v114 - v14;
  v135 = sub_1000130DC(&qword_1000A05B0, &qword_10007A268);
  __chkstk_darwin(v135);
  v136 = &v114 - v15;
  v16 = sub_1000130DC(&qword_1000A05B8, &qword_10007A270);
  __chkstk_darwin(v16);
  v18 = &v114 - v17;
  v19 = sub_1000130DC(&qword_1000A05C0, &qword_10007A278);
  __chkstk_darwin(v19);
  v21 = &v114 - v20;
  v134 = sub_1000130DC(&qword_1000A05C8, &qword_10007A280);
  v22 = __chkstk_darwin(v134);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v114 - v25;
  v27 = sub_10000A634(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8));
  if ((v28 & 1) != 0 || v27 > 2)
  {
    v33 = sub_10000A814(*(v2 + 32), *(v2 + 40));
    v115 = v6;
    if (v33)
    {
      v34 = sub_10000A468(*(v2 + 48), *(v2 + 56));
      v36 = *v2;
      if (!*v2)
      {
        goto LABEL_17;
      }

      if (*(v36 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
      {
        v37 = 0;
      }

      else
      {
        v37 = *(v36 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
      }

      sub_10006864C(v37 & 1, *(v36 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics), v34, v35);
      v91 = static Axis.Set.horizontal.getter();
      __chkstk_darwin(v91);
      *(&v114 - 2) = v2;
      sub_1000130DC(&qword_1000A05D0, &qword_10007A288);
      v92 = sub_100013694(&qword_1000A05D8, &qword_10007A290);
      v93 = sub_100015A00(&qword_1000A05E0, &qword_1000A05D8, &qword_10007A290, &protocol conformance descriptor for HStack<A>);
      v139 = v92;
      v140 = v93;
      swift_getOpaqueTypeConformance2();
      v94 = v126;
      ScrollView.init(_:showsIndicators:content:)();
      v141 = *(v2 + 80);
      v142 = *(v2 + 96);
      sub_1000130DC(&qword_1000A05E8, &qword_10007A298);
      State.projectedValue.getter();
      sub_10004F46C();
      View.scrollPosition<A>(id:anchor:)();

      sub_1000156F8(v94, &qword_1000A0580, &qword_10007A238);
      v95 = swift_allocObject();
      v96 = *(v2 + 80);
      *(v95 + 80) = *(v2 + 64);
      *(v95 + 96) = v96;
      *(v95 + 112) = *(v2 + 96);
      v97 = *(v2 + 16);
      *(v95 + 16) = *v2;
      *(v95 + 32) = v97;
      v98 = *(v2 + 48);
      *(v95 + 48) = *(v2 + 32);
      *(v95 + 64) = v98;
      v99 = v127;
      v100 = &v10[*(v127 + 36)];
      *v100 = sub_1000535F0;
      *(v100 + 1) = v95;
      *(v100 + 2) = 0;
      *(v100 + 3) = 0;
      sub_100015808(v2, &v139);
      v101 = sub_10004F534();
      v102 = v116;
      View.scrollClipDisabled(_:)();
      sub_1000156F8(v10, &qword_1000A0588, &qword_10007A240);
      static Edge.Set.leading.getter();
      v103 = v122;
      static ContentMarginPlacement.automatic.getter();
      v139 = v99;
      v140 = v101;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v105 = v118;
      v106 = v128;
      View.contentMargins(_:_:for:)();
      v127 = *(v123 + 8);
      v107 = v124;
      (v127)(v103, v124);
      (*(v117 + 8))(v102, v106);
      static Edge.Set.trailing.getter();
      static ContentMarginPlacement.automatic.getter();
      v139 = v106;
      v140 = OpaqueTypeConformance2;
      v108 = swift_getOpaqueTypeConformance2();
      v109 = v120;
      v110 = v129;
      View.contentMargins(_:_:for:)();
      (v127)(v103, v107);
      (*(v119 + 8))(v105, v110);
      v111 = v121;
      v112 = v130;
      (*(v121 + 16))(v115, v109, v130);
      swift_storeEnumTagMultiPayload();
      v139 = v110;
      v140 = v108;
      swift_getOpaqueTypeConformance2();
      sub_100015A00(&qword_1000A0610, &qword_1000A0570, &qword_10007A228, &unk_10007B410);
      v60 = v131;
      _ConditionalContent<>.init(storage:)();
      (*(v111 + 8))(v109, v112);
    }

    else
    {
      v38 = v133;
      v39 = *(v133 + 48);
      v40 = type metadata accessor for HoverEffect();
      (*(*(v40 - 8) + 56))(&v4[v39], 1, 1, v40);
      *v4 = 0;
      v4[8] = 1;
      *(v4 + 9) = 257;
      v4[11] = 0;
      v124 = &v4[v38[13]];
      v41 = static Axis.Set.horizontal.getter();
      __chkstk_darwin(v41);
      *(&v114 - 2) = v2;
      sub_1000130DC(&qword_1000A05D0, &qword_10007A288);
      v42 = sub_100013694(&qword_1000A05D8, &qword_10007A290);
      v43 = sub_100015A00(&qword_1000A05E0, &qword_1000A05D8, &qword_10007A290, &protocol conformance descriptor for HStack<A>);
      v139 = v42;
      v140 = v43;
      swift_getOpaqueTypeConformance2();
      v44 = v126;
      ScrollView.init(_:showsIndicators:content:)();
      v141 = *(v2 + 80);
      v142 = *(v2 + 96);
      sub_1000130DC(&qword_1000A05E8, &qword_10007A298);
      State.projectedValue.getter();
      sub_10004F46C();
      v45 = v124;
      View.scrollPosition<A>(id:anchor:)();

      sub_1000156F8(v44, &qword_1000A0580, &qword_10007A238);
      v46 = swift_allocObject();
      v47 = *(v2 + 80);
      *(v46 + 80) = *(v2 + 64);
      *(v46 + 96) = v47;
      *(v46 + 112) = *(v2 + 96);
      v48 = *(v2 + 16);
      *(v46 + 16) = *v2;
      *(v46 + 32) = v48;
      v49 = *(v2 + 48);
      *(v46 + 48) = *(v2 + 32);
      *(v46 + 64) = v49;
      v50 = v127;
      v51 = (v45 + *(v127 + 36));
      *v51 = sub_10004F52C;
      v51[1] = v46;
      v51[2] = 0;
      v51[3] = 0;
      v52 = &v4[v38[14]];
      *v52 = swift_getKeyPath();
      v52[8] = 0;
      v53 = &v4[v38[15]];
      *v53 = swift_getKeyPath();
      v53[8] = 0;
      v54 = &v4[v38[16]];
      *v54 = swift_getKeyPath();
      v54[8] = 0;
      v55 = &v4[v38[17]];
      LOBYTE(v141) = 0;
      sub_100015808(v2, &v139);
      State.init(wrappedValue:)();
      v56 = v140;
      *v55 = v139;
      *(v55 + 1) = v56;
      sub_100015AC0(v4, v115, &qword_1000A0570, &qword_10007A228);
      swift_storeEnumTagMultiPayload();
      v57 = sub_10004F534();
      v139 = v50;
      v140 = v57;
      v58 = swift_getOpaqueTypeConformance2();
      v139 = v128;
      v140 = v58;
      v59 = swift_getOpaqueTypeConformance2();
      v139 = v129;
      v140 = v59;
      swift_getOpaqueTypeConformance2();
      sub_100015A00(&qword_1000A0610, &qword_1000A0570, &qword_10007A228, &unk_10007B410);
      v60 = v131;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v4, &qword_1000A0570, &qword_10007A228);
    }

    sub_100015AC0(v60, v136, &qword_1000A05A8, &qword_10007A260);
    swift_storeEnumTagMultiPayload();
    sub_10004F610();
    sub_10004F754();
    _ConditionalContent<>.init(storage:)();
    v88 = v60;
    v89 = &qword_1000A05A8;
    v90 = &qword_10007A260;
    return sub_1000156F8(v88, v89, v90);
  }

  v29 = sub_10000A468(*(v2 + 48), *(v2 + 56));
  v31 = *v2;
  if (*v2)
  {
    if (*(v31 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v31 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
    }

    sub_10006864C(v32 & 1, *(v31 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics), v29, v30);
    v61 = v16[12];
    v62 = type metadata accessor for HoverEffect();
    (*(*(v62 - 8) + 56))(&v18[v61], 1, 1, v62);
    *v18 = 0;
    v18[8] = 1;
    *(v18 + 9) = 257;
    v18[11] = 0;
    sub_10002B0C8(v2, &v18[v16[13]]);
    v63 = &v18[v16[14]];
    *v63 = swift_getKeyPath();
    v63[8] = 0;
    v64 = &v18[v16[15]];
    *v64 = swift_getKeyPath();
    v64[8] = 0;
    v65 = &v18[v16[16]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    v66 = &v18[v16[17]];
    LOBYTE(v141) = 0;
    State.init(wrappedValue:)();
    v67 = v140;
    *v66 = v139;
    *(v66 + 1) = v67;
    LOBYTE(v66) = static Edge.Set.leading.getter();
    v68 = *(v2 + 32);
    v69 = *(v2 + 40);
    sub_10000A814(v68, v69);
    EdgeInsets.init(_all:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_10001471C(v18, v21, &qword_1000A05B8, &qword_10007A270);
    v78 = &v21[*(v19 + 36)];
    *v78 = v66;
    *(v78 + 1) = v71;
    *(v78 + 2) = v73;
    *(v78 + 3) = v75;
    *(v78 + 4) = v77;
    v78[40] = 0;
    LOBYTE(v66) = static Edge.Set.trailing.getter();
    sub_10000A814(v68, v69);
    EdgeInsets.init(_all:)();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    sub_10001471C(v21, v24, &qword_1000A05C0, &qword_10007A278);
    v87 = &v24[*(v134 + 36)];
    *v87 = v66;
    *(v87 + 1) = v80;
    *(v87 + 2) = v82;
    *(v87 + 3) = v84;
    *(v87 + 4) = v86;
    v87[40] = 0;
    sub_10001471C(v24, v26, &qword_1000A05C8, &qword_10007A280);
    sub_100015AC0(v26, v136, &qword_1000A05C8, &qword_10007A280);
    swift_storeEnumTagMultiPayload();
    sub_10004F610();
    sub_10004F754();
    _ConditionalContent<>.init(storage:)();
    v88 = v26;
    v89 = &qword_1000A05C8;
    v90 = &qword_10007A280;
    return sub_1000156F8(v88, v89, v90);
  }

LABEL_17:
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002B0C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v19 = sub_1000130DC(&qword_1000A0638, &qword_10007A2A8);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v19 - v4;
  v6 = sub_1000130DC(&qword_1000A0640, &qword_10007A2B0);
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v23 = a1;
  sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  sub_1000130DC(&qword_1000A0650, &qword_10007A2C0);
  sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
  sub_10004F8C4(&qword_1000A0660, &qword_1000A0650, &qword_10007A2C0);
  Menu.init(content:label:)();
  v27 = 0;
  State.init(wrappedValue:)();
  v9 = v24;
  v10 = v25;
  LOBYTE(v24) = 0;
  LOBYTE(v25) = v9;
  v26 = v10;
  sub_100015A00(&qword_1000A0678, &qword_1000A0638, &qword_10007A2A8, &protocol conformance descriptor for Menu<A, B>);
  sub_10004E3D8();
  v11 = v19;
  View.menuStyle<A>(_:)();

  (*(v3 + 8))(v5, v11);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v12 = *(v24 + 16);

    if (v12)
    {
      v13 = sub_10000A814(a1[8], *(a1 + 72)) ^ 1;
    }

    else
    {
      v13 = 1;
    }

    KeyPath = swift_getKeyPath();
    v15 = swift_allocObject();
    *(v15 + 16) = v13 & 1;
    v16 = v22;
    (*(v20 + 32))(v22, v8, v21);
    result = sub_1000130DC(&qword_1000A0680, &qword_10007A318);
    v18 = (v16 + *(result + 36));
    *v18 = KeyPath;
    v18[1] = sub_100053720;
    v18[2] = v15;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002B4E4(uint64_t a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7[13] = v7[0];
    swift_getKeyPath();
    v2 = swift_allocObject();
    v3 = *(a1 + 80);
    *(v2 + 80) = *(a1 + 64);
    *(v2 + 96) = v3;
    *(v2 + 112) = *(a1 + 96);
    v4 = *(a1 + 16);
    *(v2 + 16) = *a1;
    *(v2 + 32) = v4;
    v5 = *(a1 + 48);
    *(v2 + 48) = *(a1 + 32);
    *(v2 + 64) = v5;
    sub_100015808(a1, v7);
    sub_1000130DC(&qword_10009FF00, &qword_100078530);
    sub_1000130DC(&qword_1000A0670, &qword_10007A2C8);
    sub_100015A00(&qword_1000A0688, &qword_10009FF00, &qword_100078530, &protocol conformance descriptor for [A]);
    sub_100015A00(&qword_1000A0668, &qword_1000A0670, &qword_10007A2C8, &protocol conformance descriptor for Toggle<A>);
    return ForEach<>.init(_:id:content:)();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002B714@<X0>(uint64_t *a1@<X8>)
{
  result = UITextFormattingViewController.FormattingStyle.styleKey.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v22 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v21[1] = v6;
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + 16);
  v23(v7, a1);
  type metadata accessor for MainActor();
  sub_100015808(a2, &v27);
  v8 = static MainActor.shared.getter();
  v9 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = *(a2 + 80);
  *(v10 + 96) = *(a2 + 64);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a2 + 96);
  v12 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v12;
  v13 = *(a2 + 48);
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = v13;
  v21[0] = *(v5 + 32);
  v14 = v22;
  (v21[0])(v10 + v9, v7, v22);
  (v23)(v7, v25, v14);
  sub_100015808(a2, &v27);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  v17 = *(a2 + 80);
  *(v16 + 96) = *(a2 + 64);
  *(v16 + 112) = v17;
  *(v16 + 128) = *(a2 + 96);
  v18 = *(a2 + 16);
  *(v16 + 32) = *a2;
  *(v16 + 48) = v18;
  v19 = *(a2 + 48);
  *(v16 + 64) = *(a2 + 32);
  *(v16 + 80) = v19;
  (v21[0])(v16 + v9, v7, v14);
  Binding.init(get:set:)();
  v26 = v25;
  return Toggle.init(isOn:label:)();
}

uint64_t sub_10002B9EC@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      result = sub_1000156F8(v6, &qword_10009FAB0, &qword_1000781B8);
      v9 = 0;
    }

    else
    {
      v10 = UITextFormattingViewController.FormattingDescriptor.formattingStyleKey.getter();
      v12 = v11;
      result = sub_1000156F8(v6, &qword_10009FAB0, &qword_1000781B8);
      if (v12)
      {
        if (v10 == UITextFormattingViewController.FormattingStyle.styleKey.getter() && v12 == v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v9 = v15 & 1;
      }

      else
      {
        v9 = 0;
      }
    }

    *a2 = v9;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BC0C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    if (*a4)
    {
      v12 = *(*a4 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);

      *v11 = UITextFormattingViewController.FormattingStyle.styleKey.getter();
      v11[1] = v13;
      (*(v8 + 104))(v11, enum case for UITextFormattingViewController.ChangeValue.formattingStyle(_:), v7);
      UITextFormattingViewController.FormattingStyle.attributes.getter();
      v14 = Dictionary<>.init(_:)();
      v12(v11, v14);

      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002BE18@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  UITextFormattingViewController.FormattingStyle.title.getter();
  result = Text.init(_:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10002BEB8(uint64_t a1)
{
  v2 = sub_1000130DC(&qword_1000A05D8, &qword_10007A290);
  __chkstk_darwin(v2);
  v4 = (&v14 - v3);
  v5 = static VerticalAlignment.center.getter();
  v6 = sub_10000A814(*(a1 + 32), *(a1 + 40));
  v7 = 0.0;
  if (v6)
  {
    goto LABEL_21;
  }

  v8 = sub_10000A468(*(a1 + 48), *(a1 + 56));
  if (v8 > 1)
  {
    if (v8 == 2 || v8 != 3)
    {
      v7 = 10.0;
      goto LABEL_21;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v10 = byte_1000A51D8 == 0;
    v7 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v7 = 8.0;
  if (!v8)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v7 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      v7 = 14.0;
      if (byte_1000A51D9 == 1)
      {
        v10 = _UISolariumEnabled() == 0;
        v7 = 8.0;
        v11 = 10.0;
LABEL_19:
        if (!v10)
        {
          v7 = v11;
        }
      }
    }
  }

LABEL_21:
  *v4 = v5;
  v4[1] = v7;
  *(v4 + 16) = 0;
  v12 = sub_1000130DC(&qword_1000A0690, &qword_10007A358);
  sub_10002C104(a1, v4 + *(v12 + 44));
  sub_100015A00(&qword_1000A05E0, &qword_1000A05D8, &qword_10007A290, &protocol conformance descriptor for HStack<A>);
  View.scrollTargetLayout(isEnabled:)();
  return sub_1000156F8(v4, &qword_1000A05D8, &qword_10007A290);
}

uint64_t sub_10002C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v10 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      sub_1000156F8(v9, &qword_10009FAB0, &qword_1000781B8);
      v11 = -1;
LABEL_18:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v33[13] = v33[0];
      swift_getKeyPath();
      v21 = swift_allocObject();
      v22 = *(a1 + 80);
      *(v21 + 80) = *(a1 + 64);
      *(v21 + 96) = v22;
      v23 = *(a1 + 96);
      v24 = *(a1 + 16);
      *(v21 + 16) = *a1;
      *(v21 + 32) = v24;
      v25 = *(a1 + 48);
      *(v21 + 48) = *(a1 + 32);
      *(v21 + 64) = v25;
      *(v21 + 112) = v23;
      *(v21 + 120) = v11;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_10004FC34;
      *(v26 + 24) = v21;
      sub_100015808(a1, v33);
      sub_1000130DC(&qword_1000A0698, &qword_10007A398);
      sub_1000130DC(&qword_1000A06A0, &qword_10007A3A0);
      sub_10004FCE0();
      sub_10004FD90();
      return ForEach<>.init(_:id:content:)();
    }

    v29 = a1;
    v12 = UITextFormattingViewController.FormattingDescriptor.formattingStyleKey.getter();
    v14 = v13;
    sub_1000156F8(v9, &qword_10009FAB0, &qword_1000781B8);
    if (v14)
    {
      v28 = a2;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v15 = v33[0];
      v30 = *(v33[0] + 16);
      if (v30)
      {
        v11 = 0;
        v31 = v4 + 16;
        v16 = (v4 + 8);
        while (v11 < *(v15 + 16))
        {
          (*(v4 + 16))(v6, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v32);
          if (UITextFormattingViewController.FormattingStyle.styleKey.getter() == v12 && v14 == v17)
          {

            (*v16)(v6, v32);

LABEL_16:
            swift_bridgeObjectRelease_n();
            goto LABEL_17;
          }

          v18 = v12;
          v19 = v14;
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v16)(v6, v32);
          if (v20)
          {

            goto LABEL_16;
          }

          ++v11;
          v14 = v19;
          v12 = v18;
          if (v30 == v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_12:

      swift_bridgeObjectRelease_n();
      v11 = -1;
    }

    else
    {

      v11 = -1;
    }

LABEL_17:
    a1 = v29;
    goto LABEL_18;
  }

LABEL_20:
  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002C65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v47 = a1;
  v46 = a5;
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v38 = sub_1000130DC(&qword_1000A06C8, &qword_10007A3B0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v38 - v12;
  v43 = sub_1000130DC(&qword_1000A06E8, &qword_10007A3C0);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v15 = &v38 - v14;
  v41 = sub_1000130DC(&qword_1000A06C0, &qword_10007A3A8);
  __chkstk_darwin(v41);
  v17 = &v38 - v16;
  (*(v10 + 16))(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v18 = (*(v10 + 80) + 120) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = *(a3 + 80);
  *(v19 + 80) = *(a3 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a3 + 96);
  v21 = *(a3 + 16);
  *(v19 + 16) = *a3;
  *(v19 + 32) = v21;
  v22 = *(a3 + 48);
  *(v19 + 48) = *(a3 + 32);
  *(v19 + 64) = v22;
  (*(v10 + 32))(v19 + v18, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v45 = a2;
  v48 = a2;
  v49 = a3;
  sub_100015808(a3, v54);
  sub_1000130DC(&qword_1000A06F0, &qword_10007A3C8);
  sub_100050124();
  Button.init(action:label:)();
  LOBYTE(v11) = sub_10000A814(*(a3 + 32), *(a3 + 40));
  *&v50 = -1;
  State.init(wrappedValue:)();
  v23 = v54[0];
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v58 = 0;
  v56 = 0;
  *&v50 = v47;
  v26 = v40;
  *(&v50 + 1) = v40;
  v51[0] = (v11 & 1) == 0;
  *&v51[1] = *v59;
  *&v51[4] = *&v59[3];
  *&v51[8] = v23;
  *&v51[24] = KeyPath;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v57;
  DWORD1(v52) = *&v57[3];
  *(&v52 + 1) = v25;
  v53 = 0;
  sub_100015A00(&qword_1000A06D0, &qword_1000A06C8, &qword_10007A3B0, &protocol conformance descriptor for Button<A>);
  sub_10004FF5C();
  v27 = v38;
  View.buttonStyle<A>(_:)();
  v54[2] = *&v51[16];
  v54[3] = v52;
  v55 = v53;
  v54[0] = v50;
  v54[1] = *v51;
  sub_100050234(v54);
  (*(v39 + 8))(v13, v27);
  v28 = sub_10000A468(*(a3 + 48), *(a3 + 56));
  v29 = *a3;
  if (*a3)
  {
    v30 = v28;

    v31 = String._bridgeToObjectiveC()();
    sub_1000691F0(v31, v29, v30);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v42 + 32))(v17, v15, v43);
    v32 = &v17[*(v41 + 36)];
    v33 = *v51;
    *v32 = v50;
    *(v32 + 1) = v33;
    *(v32 + 2) = *&v51[16];
    v34 = v47 == v26;
    UITextFormattingViewController.FormattingStyle.title.getter();
    v35 = String.init(localized:)();
    sub_10002D3D8(v34, 0, v35, v36, v46);

    return sub_1000156F8(v17, &qword_1000A06C0, &qword_10007A3A8);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002CD34(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v9 = *(*a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);

    *v8 = UITextFormattingViewController.FormattingStyle.styleKey.getter();
    v8[1] = v10;
    (*(v6 + 104))(v8, enum case for UITextFormattingViewController.ChangeValue.formattingStyle(_:), v5);
    UITextFormattingViewController.FormattingStyle.attributes.getter();
    v11 = Dictionary<>.init(_:)();
    v9(v8, v11);

    (*(v6 + 8))(v8, v5);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    Animation.speed(_:)();

    __chkstk_darwin(v12);
    *&v14[-16] = a1;
    *&v14[-8] = a2;
    withAnimation<A>(_:_:)();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002CFC8(uint64_t a1)
{
  UITextFormattingViewController.FormattingStyle.styleKey.getter();
  sub_1000130DC(&qword_1000A05E8, &qword_10007A298);
  return State.wrappedValue.setter();
}

uint64_t sub_10002D040@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = sub_1000130DC(&qword_1000A00E8, &qword_10007A3D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v11 - 8);
  UITextFormattingViewController.FormattingStyle.title.getter();
  v12 = String.init(localized:)();
  v24 = v13;
  v25 = v12;
  KeyPath = swift_getKeyPath();
  UITextFormattingViewController.FormattingStyle.attributes.getter();
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_10004E2A4(&qword_1000A00F0, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
  AttributeContainer.subscript.getter();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  sub_100028A24();
  ScopedAttributeContainer.subscript.getter();

  (*(v4 + 8))(v6, v3);
  if (*v26)
  {
    v15 = v27;
    v16 = *v26 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_largestFontSizeInFormattingStyles;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = static Font.title3.getter();
    v20 = a2 + *(sub_1000130DC(&qword_1000A06F0, &qword_10007A3C8) + 36);
    *v20 = v15;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0x4044000000000000;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18;
    v21 = *(type metadata accessor for TFFontModifier(0) + 32);
    *(v20 + v21) = swift_getKeyPath();
    sub_1000130DC(&qword_1000A0708, &qword_10007A468);
    result = swift_storeEnumTagMultiPayload();
    v23 = v24;
    *a2 = v25;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = KeyPath;
    *(a2 + 32) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002D3D8@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v40 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v38 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_1000130DC(&qword_1000A06A0, &qword_10007A3A0);
  v19 = __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v37 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v37 - v26;
  __chkstk_darwin(v25);
  v43 = &v37 - v28;
  v44 = a3;
  v45 = a4;
  sub_1000130DC(&qword_1000A06C0, &qword_10007A3A8);
  sub_10004FE4C();
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v29 = v17;
  v30 = *(v41 + 8);
  v30(v29, v8);
  sub_1000156F8(v21, &qword_1000A06A0, &qword_10007A3A0);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v15, v8);
  sub_1000156F8(v24, &qword_1000A06A0, &qword_10007A3A0);
  if (v42)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v31;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v32 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v32, v8);
  sub_1000156F8(v27, &qword_1000A06A0, &qword_10007A3A0);
  if (v42)
  {
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v33;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v34 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v43;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v30(v34, v8);
  return sub_1000156F8(v35, &qword_1000A06A0, &qword_10007A3A0);
}

uint64_t sub_10002D970@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v40 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v38 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_1000130DC(&qword_1000A0758, &qword_10007A518);
  v19 = __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v37 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v37 - v26;
  __chkstk_darwin(v25);
  v43 = &v37 - v28;
  v44 = a3;
  v45 = a4;
  sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  sub_10004ED34();
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v29 = v17;
  v30 = *(v41 + 8);
  v30(v29, v8);
  sub_1000156F8(v21, &qword_1000A0758, &qword_10007A518);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v15, v8);
  sub_1000156F8(v24, &qword_1000A0758, &qword_10007A518);
  if (v42)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v31;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v32 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v32, v8);
  sub_1000156F8(v27, &qword_1000A0758, &qword_10007A518);
  if (v42)
  {
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v33;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v34 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v43;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v30(v34, v8);
  return sub_1000156F8(v35, &qword_1000A0758, &qword_10007A518);
}

uint64_t sub_10002DF08@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v38 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v39 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v36 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v35 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v35 - v26;
  __chkstk_darwin(v25);
  v41 = &v35 - v28;
  v43 = a3;
  v44 = a4;
  type metadata accessor for TFToggle(0);
  sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42 = *(v39 + 8);
  v42(v17, v8);
  sub_1000156F8(v21, &qword_1000A02F8, &qword_100079E20);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v15, v8);
  sub_1000156F8(v24, &qword_1000A02F8, &qword_100079E20);
  if (v40)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v29;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v30, v8);
  sub_1000156F8(v27, &qword_1000A02F8, &qword_100079E20);
  if (v40)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v31;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v32 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v41;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42(v32, v8);
  return sub_1000156F8(v33, &qword_1000A02F8, &qword_100079E20);
}

uint64_t sub_10002E4C4@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v38 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v35 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = sub_1000130DC(&qword_1000A0D58, &qword_10007AC68);
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v35 - v23;
  v25 = __chkstk_darwin(v22);
  v39 = &v35 - v26;
  __chkstk_darwin(v25);
  v36 = &v35 - v27;
  v43 = a3;
  v44 = a4;
  sub_1000130DC(&qword_1000A0D50, &qword_10007AC60);
  sub_100015A00(&qword_1000A0D60, &qword_1000A0D50, &qword_10007AC60, &unk_10007B410);
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42 = *(v40 + 8);
  v42(v17, v8);
  sub_1000156F8(v21, &qword_1000A0D58, &qword_10007AC68);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v15, v8);
  sub_1000156F8(v24, &qword_1000A0D58, &qword_10007AC68);
  if (v41)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v28;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v29 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v36;
  v31 = v39;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v29, v8);
  sub_1000156F8(v31, &qword_1000A0D58, &qword_10007AC68);
  if (v41)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v32;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v33 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42(v33, v8);
  return sub_1000156F8(v30, &qword_1000A0D58, &qword_10007AC68);
}

uint64_t sub_10002EA90@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v40 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v38 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_1000130DC(&qword_1000A0460, &qword_10007A050);
  v19 = __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v37 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v37 - v26;
  __chkstk_darwin(v25);
  v43 = &v37 - v28;
  v44 = a3;
  v45 = a4;
  sub_1000130DC(&qword_1000A0488, &qword_10007A060);
  sub_10004ECA8();
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v29 = v17;
  v30 = *(v41 + 8);
  v30(v29, v8);
  sub_1000156F8(v21, &qword_1000A0460, &qword_10007A050);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v15, v8);
  sub_1000156F8(v24, &qword_1000A0460, &qword_10007A050);
  if (v42)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v31;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v32 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v30(v32, v8);
  sub_1000156F8(v27, &qword_1000A0460, &qword_10007A050);
  if (v42)
  {
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v44 = v33;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v34 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v43;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v30(v34, v8);
  return sub_1000156F8(v35, &qword_1000A0460, &qword_10007A050);
}

uint64_t sub_10002F028@<X0>(int a1@<W0>, char a2@<W1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v38 = a5;
  v8 = type metadata accessor for AccessibilityTraits();
  v40 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v35 = &v35 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = sub_1000130DC(&qword_1000A02F0, &unk_100079E10);
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v35 - v23;
  v25 = __chkstk_darwin(v22);
  v39 = &v35 - v26;
  __chkstk_darwin(v25);
  v36 = &v35 - v27;
  v43 = a3;
  v44 = a4;
  sub_1000130DC(&qword_1000A02E8, &qword_100079E08);
  sub_100015A00(&qword_1000A0330, &qword_1000A02E8, &qword_100079E08, &unk_10007B3C0);
  sub_10004E904();
  View.accessibilityLabel<A>(_:)();
  if (a2)
  {
    static AccessibilityTraits.isToggle.getter();
  }

  else
  {
    static AccessibilityTraits.isButton.getter();
  }

  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42 = *(v40 + 8);
  v42(v17, v8);
  sub_1000156F8(v21, &qword_1000A02F0, &unk_100079E10);
  if (a2)
  {
    static AccessibilityTraits.isButton.getter();
  }

  else
  {
    static AccessibilityTraits.isToggle.getter();
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v15, v8);
  sub_1000156F8(v24, &qword_1000A02F0, &unk_100079E10);
  if (v41)
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v28;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v29 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v36;
  v31 = v39;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v42(v29, v8);
  sub_1000156F8(v31, &qword_1000A02F0, &unk_100079E10);
  if (v41)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000784C0;
    static AccessibilityTraits.isSelected.getter();
    v43 = v32;
  }

  sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  v33 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v42(v33, v8);
  return sub_1000156F8(v30, &qword_1000A02F0, &unk_100079E10);
}

uint64_t sub_10002F5F4(uint64_t *a1)
{
  v2 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v5 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    v6 = 0;
    v7 = 0;
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {
      v6 = UITextFormattingViewController.FormattingDescriptor.formattingStyleKey.getter();
      v7 = v8;
    }

    sub_1000156F8(v4, &qword_10009FAB0, &qword_1000781B8);
    v11 = *(a1 + 5);
    v12 = a1[12];
    v10[0] = v6;
    v10[1] = v7;
    sub_1000130DC(&qword_1000A05E8, &qword_10007A298);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002F7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_1000130DC(&qword_1000A14B0, &unk_10007B460);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_1000130DC(&qword_1000A0E10, &qword_10007ADB0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v33 = sub_1000130DC(&qword_1000A0E18, &qword_10007ADB8);
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v33 - v12;
  v14 = sub_1000130DC(&qword_1000A0E20, &qword_10007ADC0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = sub_10000A814(*(v3 + 40), *(v3 + 48));
  if (*(v3 + 16))
  {
    v18 = type metadata accessor for HoverEffect();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  else
  {
    if (*v3 == *(v3 + 8))
    {
      static HoverEffect.lift.getter();
    }

    else
    {
      static HoverEffect.highlight.getter();
    }

    v19 = type metadata accessor for HoverEffect();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  }

  *v10 = 0;
  *(v10 + 4) = 257;
  v10[10] = (v17 & 1) == 0;
  v10[11] = 0;
  sub_10001471C(v7, &v10[v8[12]], &qword_1000A14B0, &unk_10007B460);
  sub_10002FC80(a1, v3, &v10[v8[13]]);
  v20 = &v10[v8[14]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v10[v8[15]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v10[v8[16]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v10[v8[17]];
  LOBYTE(v37) = 0;
  State.init(wrappedValue:)();
  v24 = v36;
  *v23 = v35[0];
  *(v23 + 1) = v24;
  v37 = *(v3 + 8);
  v25 = swift_allocObject();
  v26 = *(v3 + 48);
  *(v25 + 48) = *(v3 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(v3 + 64);
  v27 = *(v3 + 16);
  *(v25 + 16) = *v3;
  *(v25 + 32) = v27;
  sub_100053440(v3, v35);
  sub_100015A00(&qword_1000A0E28, &qword_1000A0E10, &qword_10007ADB0, &unk_10007B410);
  View.onChange<A>(of:initial:_:)();

  sub_1000156F8(v10, &qword_1000A0E10, &qword_10007ADB0);
  v28 = swift_allocObject();
  v29 = *(v3 + 48);
  *(v28 + 48) = *(v3 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(v3 + 64);
  v30 = *(v3 + 16);
  *(v28 + 16) = *v3;
  *(v28 + 32) = v30;
  (*(v11 + 32))(v16, v13, v33);
  v31 = &v16[*(v14 + 36)];
  *v31 = sub_1000534C8;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  sub_10001471C(v16, v34, &qword_1000A0E20, &qword_10007ADC0);
  return sub_100053440(v3, v35);
}

uint64_t sub_10002FC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v87 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v87);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ButtonStyleConfiguration.Label();
  v6 = *(v76 - 8);
  __chkstk_darwin(v76);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000130DC(&qword_1000A0E38, &qword_10007ADD0);
  __chkstk_darwin(v9);
  v11 = &v73 - v10;
  v74 = sub_1000130DC(&qword_1000A0E40, &qword_10007ADD8);
  __chkstk_darwin(v74);
  v73 = &v73 - v12;
  v75 = sub_1000130DC(&qword_1000A0E48, &qword_10007ADE0);
  __chkstk_darwin(v75);
  v78 = &v73 - v13;
  v77 = sub_1000130DC(&qword_1000A0E50, &qword_10007ADE8);
  __chkstk_darwin(v77);
  v81 = &v73 - v14;
  v80 = sub_1000130DC(&qword_1000A0E58, &qword_10007ADF0);
  __chkstk_darwin(v80);
  v79 = &v73 - v15;
  v16 = sub_1000130DC(&qword_1000A0E60, &qword_10007ADF8);
  __chkstk_darwin(v16 - 8);
  v83 = &v73 - v17;
  v82 = sub_1000130DC(&qword_1000A0E68, &qword_10007AE00);
  __chkstk_darwin(v82);
  v84 = &v73 - v18;
  v85 = a1;
  ButtonStyleConfiguration.label.getter();
  v19 = *a2;
  v89 = a2[1];
  v20 = v19;
  if (v19 == v89)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D8 == 1)
    {
      v21 = static Color.black.getter();
    }

    else
    {
      v21 = static Color.white.getter();
    }
  }

  else
  {
    v21 = static Color.primary.getter();
  }

  v22 = v21;
  KeyPath = swift_getKeyPath();
  (*(v6 + 32))(v11, v8, v76);
  v24 = &v11[*(v9 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = static Edge.Set.horizontal.getter();
  v26 = a2[7];
  LODWORD(v76) = *(a2 + 64);
  v27 = sub_10000A468(v26, v76);
  if (qword_10009F368 != -1)
  {
    swift_once();
  }

  v29 = v78;
  v30 = v89;
  if (byte_1000A51D8)
  {
    goto LABEL_11;
  }

  if (qword_10009F370 != -1)
  {
    swift_once();
  }

  if ((byte_1000A51D9 & 1) == 0)
  {
    v31 = _UISolariumEnabled();
    v28 = 12.0;
    if (v31)
    {
LABEL_11:
      sub_1000693D0(0, v27, v28);
    }
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v11;
  v41 = v73;
  sub_10001471C(v40, v73, &qword_1000A0E38, &qword_10007ADD0);
  v42 = v41 + *(v74 + 36);
  *v42 = v25;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001471C(v41, v29, &qword_1000A0E40, &qword_10007ADD8);
  v43 = (v29 + *(v75 + 36));
  v44 = v97;
  v43[4] = v96;
  v43[5] = v44;
  v43[6] = v98;
  v45 = v93;
  *v43 = v92;
  v43[1] = v45;
  v46 = v95;
  v43[2] = v94;
  v43[3] = v46;
  v47 = (v20 != v30) & (*(a2 + 16) ^ 1);
  v48 = sub_10000A814(a2[5], *(a2 + 48));
  v91 = *(a2 + 3);
  sub_1000130DC(&qword_1000A0E30, &qword_10007ADC8);
  State.wrappedValue.getter();
  if (v90 == -1)
  {
    static AnyTransition.scale.getter();
    static AnyTransition.opacity.getter();
    AnyTransition.combined(with:)();

    v30 = v89;
  }

  else
  {
    v91 = *(a2 + 3);
    State.wrappedValue.getter();
    static AnyTransition.push(from:)();
  }

  static AnyTransition.scale.getter();
  static AnyTransition.opacity.getter();
  AnyTransition.combined(with:)();

  v49 = static AnyTransition.asymmetric(insertion:removal:)();

  v50 = v81;
  sub_10001471C(v29, v81, &qword_1000A0E48, &qword_10007ADE0);
  v51 = v50 + *(v77 + 36);
  *v51 = v47;
  *(v51 + 1) = v20 == v30;
  *(v51 + 2) = 0;
  *(v51 + 3) = v48 & 1;
  *(v51 + 8) = v49;
  v52 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v53 = v50;
  v54 = v79;
  sub_10001471C(v53, v79, &qword_1000A0E50, &qword_10007ADE8);
  v55 = v54 + *(v80 + 36);
  *v55 = v52;
  *(v55 + 8) = v20 == v30;
  v56 = v83;
  sub_10001471C(v54, v83, &qword_1000A0E58, &qword_10007ADF0);
  v57 = ButtonStyleConfiguration.isPressed.getter();
  v58 = 1.0;
  v59 = v76;
  if (v57)
  {
    if ((sub_10000A468(v26, v76) - 2) >= 3u)
    {
      v58 = 0.7;
    }

    else
    {
      v58 = 0.5;
    }
  }

  v60 = v84;
  sub_10001471C(v56, v84, &qword_1000A0E60, &qword_10007ADF8);
  *(v60 + *(v82 + 36)) = v58;
  v61 = sub_10000A468(v26, v59);
  sub_1000693D0(0, v61, v62);
  v64 = v63;
  v65 = *(v87 + 20);
  v66 = enum case for RoundedCornerStyle.continuous(_:);
  v67 = type metadata accessor for RoundedCornerStyle();
  v68 = v86;
  (*(*(v67 - 8) + 104))(&v86[v65], v66, v67);
  *v68 = v64;
  v68[1] = v64;
  sub_10004E2A4(&qword_1000A0E70, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v69 = AnyShape.init<A>(_:)();
  v70 = v88;
  sub_10001471C(v60, v88, &qword_1000A0E68, &qword_10007AE00);
  result = sub_1000130DC(&qword_1000A0E78, &unk_10007AE38);
  v72 = v70 + *(result + 36);
  *v72 = v69;
  *(v72 + 8) = 0;
  return result;
}

uint64_t sub_100030734()
{
  v2 = v1;
  v3 = sub_1000130DC(&qword_1000A0710, &qword_10007A470);
  __chkstk_darwin(v3);
  v5 = &v23[-v4];
  v6 = sub_1000130DC(&qword_1000A0718, &qword_10007A478);
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v9 = sub_1000130DC(&qword_1000A0720, &qword_10007A480);
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  if (*v2)
  {
    if (*(*v2 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isTextAnimationsUI))
    {
      sub_10000A468(*(v2 + 32), *(v2 + 40));
      *v11 = static VerticalAlignment.center.getter();
      *(v11 + 1) = 0x4008000000000000;
      v11[16] = 0;
      v12 = &v11[*(sub_1000130DC(&qword_1000A0738, &qword_10007A488) + 44)];
      sub_100030BDC(v2, v12);
      KeyPath = swift_getKeyPath();
      v14 = v12 + *(sub_1000130DC(&qword_1000A0740, &qword_10007A490) + 36);
      *v14 = KeyPath;
      *(v14 + 8) = 1;
      sub_100015AC0(v11, v8, &qword_1000A0720, &qword_10007A480);
      swift_storeEnumTagMultiPayload();
      sub_100015A00(&qword_1000A0728, &qword_1000A0720, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
      sub_100015A00(&qword_1000A0730, &qword_1000A0710, &qword_10007A470, &unk_10007B410);
      _ConditionalContent<>.init(storage:)();
      return sub_1000156F8(v11, &qword_1000A0720, &qword_10007A480);
    }

    else
    {
      v16 = v3[12];
      v17 = type metadata accessor for HoverEffect();
      (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 9) = 257;
      v5[11] = 0;
      sub_1000334DC(v2, &v5[v3[13]]);
      v18 = &v5[v3[14]];
      *v18 = swift_getKeyPath();
      v18[8] = 0;
      v19 = &v5[v3[15]];
      *v19 = swift_getKeyPath();
      v19[8] = 0;
      v20 = &v5[v3[16]];
      *v20 = swift_getKeyPath();
      v20[8] = 0;
      v21 = &v5[v3[17]];
      v23[15] = 0;
      State.init(wrappedValue:)();
      v22 = v24;
      *v21 = v23[16];
      *(v21 + 1) = v22;
      sub_100015AC0(v5, v8, &qword_1000A0710, &qword_10007A470);
      swift_storeEnumTagMultiPayload();
      sub_100015A00(&qword_1000A0728, &qword_1000A0720, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
      sub_100015A00(&qword_1000A0730, &qword_1000A0710, &qword_10007A470, &unk_10007B410);
      _ConditionalContent<>.init(storage:)();
      return sub_1000156F8(v5, &qword_1000A0710, &qword_10007A470);
    }
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100030BDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  v4 = __chkstk_darwin(v3 - 8);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v98 - v6;
  v7 = sub_1000130DC(&qword_1000A14B0, &unk_10007B460);
  v8 = __chkstk_darwin(v7 - 8);
  v103 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v101 = &v98 - v11;
  v12 = __chkstk_darwin(v10);
  v99 = &v98 - v13;
  __chkstk_darwin(v12);
  v15 = &v98 - v14;
  v16 = sub_1000130DC(&qword_1000A0748, &qword_10007A498);
  v17 = __chkstk_darwin(v16);
  v107 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v106 = &v98 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v98 - v22;
  v23 = __chkstk_darwin(v21);
  v111 = &v98 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v98 - v26;
  v28 = __chkstk_darwin(v25);
  v104 = &v98 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v98 - v31;
  v33 = __chkstk_darwin(v30);
  v110 = &v98 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v98 - v36;
  v38 = __chkstk_darwin(v35);
  v109 = &v98 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v98 - v41;
  __chkstk_darwin(v40);
  v114 = &v98 - v43;
  v44 = sub_10000A468(a1[4], *(a1 + 40));
  v115 = a1;
  v45 = *a1;
  if (*a1)
  {
    v46 = v44;
    v47 = UITextFormattingViewControllerFontAttributesComponentKey;
    swift_retain_n();
    sub_1000691F0(v47, v45, v46);
    v49 = v48;
    v50 = sub_10001CCAC();
    v51 = [v50 fontDescriptor];
    v52 = [v51 symbolicTraits];

    if ((v52 & 2) != 0)
    {
      static HoverEffect.lift.getter();
    }

    else
    {
      static HoverEffect.highlight.getter();
    }

    v53 = type metadata accessor for HoverEffect();
    v54 = *(v53 - 8);
    v55 = *(v54 + 56);
    v112 = v54 + 56;
    v113 = v55;
    v55(v15, 0, 1, v53);
    *v42 = v49;
    v42[8] = 0;
    *(v42 + 9) = 257;
    v42[11] = 0;
    sub_10001471C(v15, &v42[v16[12]], &qword_1000A14B0, &unk_10007B460);
    sub_100031890(0, &v42[v16[13]]);
    v56 = &v42[v16[14]];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    v57 = &v42[v16[15]];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    v58 = &v42[v16[16]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = &v42[v16[17]];
    v116 = 0;
    State.init(wrappedValue:)();
    v60 = v118;
    *v59 = v117;
    *(v59 + 1) = v60;
    sub_10001471C(v42, v114, &qword_1000A0748, &qword_10007A498);
    v61 = sub_10001CCAC();
    v62 = [v61 fontDescriptor];
    v63 = [v62 symbolicTraits];

    v64 = v99;
    if (v63)
    {
      static HoverEffect.lift.getter();
    }

    else
    {
      static HoverEffect.highlight.getter();
    }

    v113(v64, 0, 1, v53);
    *v37 = v49;
    v37[8] = 0;
    *(v37 + 9) = 257;
    v37[11] = 0;
    sub_10001471C(v64, &v37[v16[12]], &qword_1000A14B0, &unk_10007B460);
    sub_100031EDC(0, &v37[v16[13]]);
    v65 = &v37[v16[14]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    v66 = &v37[v16[15]];
    *v66 = swift_getKeyPath();
    v66[8] = 0;
    v67 = &v37[v16[16]];
    *v67 = swift_getKeyPath();
    v67[8] = 0;
    v68 = &v37[v16[17]];
    v116 = 0;
    State.init(wrappedValue:)();
    v69 = v118;
    *v68 = v117;
    *(v68 + 1) = v69;
    sub_10001471C(v37, v109, &qword_1000A0748, &qword_10007A498);
    swift_getKeyPath();
    swift_getKeyPath();
    v70 = v100;
    static Published.subscript.getter();

    v71 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    v72 = *(*(v71 - 8) + 48);
    if (v72(v70, 1, v71))
    {

      sub_1000156F8(v70, &qword_10009FAB0, &qword_1000781B8);
    }

    else
    {
      v73 = UITextFormattingViewController.FormattingDescriptor.underlinePresent.getter();

      sub_1000156F8(v70, &qword_10009FAB0, &qword_1000781B8);
      if (v73)
      {
        v74 = v101;
        static HoverEffect.lift.getter();
        goto LABEL_13;
      }
    }

    v74 = v101;
    static HoverEffect.highlight.getter();
LABEL_13:
    v113(v74, 0, 1, v53);
    *v32 = v49;
    v32[8] = 0;
    *(v32 + 9) = 257;
    v32[11] = 0;
    sub_10001471C(v74, &v32[v16[12]], &qword_1000A14B0, &unk_10007B460);
    sub_1000324D4(0, &v32[v16[13]]);
    v75 = &v32[v16[14]];
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    v76 = &v32[v16[15]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v32[v16[16]];
    *v77 = swift_getKeyPath();
    v77[8] = 0;
    v78 = &v32[v16[17]];
    v116 = 0;
    State.init(wrappedValue:)();
    v79 = v118;
    *v78 = v117;
    *(v78 + 1) = v79;
    sub_10001471C(v32, v110, &qword_1000A0748, &qword_10007A498);
    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v102;
    static Published.subscript.getter();

    if (v72(v80, 1, v71))
    {

      sub_1000156F8(v80, &qword_10009FAB0, &qword_1000781B8);
    }

    else
    {
      v81 = UITextFormattingViewController.FormattingDescriptor.strikethroughPresent.getter();

      sub_1000156F8(v80, &qword_10009FAB0, &qword_1000781B8);
      if (v81)
      {
        v82 = v103;
        static HoverEffect.lift.getter();
LABEL_18:
        v113(v82, 0, 1, v53);
        *v27 = v49;
        v27[8] = 0;
        *(v27 + 9) = 257;
        v27[11] = 0;
        sub_10001471C(v82, &v27[v16[12]], &qword_1000A14B0, &unk_10007B460);
        sub_100032D38(0, &v27[v16[13]]);
        v83 = &v27[v16[14]];
        *v83 = swift_getKeyPath();
        v83[8] = 0;
        v84 = &v27[v16[15]];
        *v84 = swift_getKeyPath();
        v84[8] = 0;
        v85 = &v27[v16[16]];
        *v85 = swift_getKeyPath();
        v85[8] = 0;
        v86 = &v27[v16[17]];
        v116 = 0;
        State.init(wrappedValue:)();
        v87 = v118;
        *v86 = v117;
        *(v86 + 1) = v87;
        v88 = v104;
        sub_10001471C(v27, v104, &qword_1000A0748, &qword_10007A498);
        v89 = v111;
        sub_100015AC0(v114, v111, &qword_1000A0748, &qword_10007A498);
        v90 = v109;
        v91 = v105;
        sub_100015AC0(v109, v105, &qword_1000A0748, &qword_10007A498);
        v92 = v110;
        v93 = v106;
        sub_100015AC0(v110, v106, &qword_1000A0748, &qword_10007A498);
        v94 = v107;
        sub_100015AC0(v88, v107, &qword_1000A0748, &qword_10007A498);
        v95 = v108;
        sub_100015AC0(v89, v108, &qword_1000A0748, &qword_10007A498);
        v96 = sub_1000130DC(&qword_1000A0750, &qword_10007A4A0);
        sub_100015AC0(v91, v95 + v96[12], &qword_1000A0748, &qword_10007A498);
        sub_100015AC0(v93, v95 + v96[16], &qword_1000A0748, &qword_10007A498);
        sub_100015AC0(v94, v95 + v96[20], &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v88, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v92, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v90, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v114, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v94, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v93, &qword_1000A0748, &qword_10007A498);
        sub_1000156F8(v91, &qword_1000A0748, &qword_10007A498);
        return sub_1000156F8(v111, &qword_1000A0748, &qword_10007A498);
      }
    }

    v82 = v103;
    static HoverEffect.highlight.getter();
    goto LABEL_18;
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_100031824(BOOL *a1@<X8>)
{
  v2 = sub_10001CCAC();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = (v4 & 2) != 0;
}

uint64_t sub_100031890@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v61 = a2;
  v4 = type metadata accessor for SymbolRenderingMode();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v55);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v59);
  v60 = &v49 - v9;
  v54 = v6;
  static SymbolRenderingMode.monochrome.getter();
  v10 = v3[2];
  v11 = *(v3 + 24);
  v12 = *(v3 + 25);
  v13 = sub_10000A634(v10, v11 | (v12 << 8));
  v14 = 0;
  v52 = v8;
  v15 = 0;
  if ((v16 & 1) == 0 && v13 == 1)
  {
    if (qword_10009F210 != -1)
    {
      swift_once();
    }

    v14 = qword_1000A4F38;
    v15 = qword_1000A4F40;
  }

  v51 = v15;
  v53 = v14;
  KeyPath = swift_getKeyPath();
  v18 = *v3;
  v49 = v3[1];
  v50 = v18;
  v64 = v3[4];
  v65 = *(v3 + 40);
  v19 = v3[6];
  v20 = *(v3 + 56);
  type metadata accessor for MainActor();

  sub_10004E184(v10, v11, v12);
  sub_100015AC0(&v64, v62, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v19, v20);
  v21 = v11;
  v22 = v10;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  v25 = v20;
  v26 = *(v3 + 1);
  *(v24 + 32) = *v3;
  *(v24 + 48) = v26;
  *(v24 + 64) = *(v3 + 2);
  *(v24 + 73) = *(v3 + 41);
  *(v24 + 96) = KeyPath;

  v27 = v50;

  sub_10004E184(v22, v21, v12);
  sub_100015AC0(&v64, v62, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v19, v25);
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  v30 = *(v3 + 1);
  *(v29 + 32) = *v3;
  *(v29 + 48) = v30;
  *(v29 + 64) = *(v3 + 2);
  *(v29 + 73) = *(v3 + 41);
  *(v29 + 96) = KeyPath;
  Binding.init(get:set:)();

  v31 = v62[0];
  v32 = v62[1];
  LOBYTE(v22) = v63;
  v33 = v52;
  *v52 = xmmword_100078CE0;
  v34 = v55;
  (*(v56 + 32))(&v33[*(v55 + 20)], v54, v57);
  v35 = &v33[v34[6]];
  v36 = v51;
  *v35 = v53;
  v35[1] = v36;
  v33[v34[7]] = v58 & 1;
  v37 = &v33[v34[8]];
  *v37 = v31;
  *(v37 + 1) = v32;
  v37[16] = v22;
  v38 = &v33[v34[9]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  if (v27)
  {

    if (sub_100020474())
    {
      v39 = sub_10000A814(v19, v25) ^ 1;
    }

    else
    {
      v39 = 1;
    }

    v40 = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = v39 & 1;
    v42 = v33;
    v43 = v60;
    sub_10005170C(v42, v60, type metadata accessor for TFToggle);
    v44 = (v43 + *(v59 + 36));
    *v44 = v40;
    v44[1] = sub_100053720;
    v44[2] = v41;
    v45 = sub_10001CCAC();
    v46 = [v45 fontDescriptor];
    v47 = [v46 symbolicTraits];

    if (qword_10009F210 != -1)
    {
      swift_once();
    }

    sub_10002D970((v47 >> 1) & 1, 0, qword_1000A4F38, qword_1000A4F40, v61);
    return sub_1000156F8(v43, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100031E70(_BYTE *a1@<X8>)
{
  v2 = sub_10001CCAC();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = v4 & 1;
}

uint64_t sub_100031EDC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v61 = a2;
  v4 = type metadata accessor for SymbolRenderingMode();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v55);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v59);
  v60 = &v49 - v9;
  v54 = v6;
  static SymbolRenderingMode.monochrome.getter();
  v10 = v3[2];
  v11 = *(v3 + 24);
  v12 = *(v3 + 25);
  v13 = sub_10000A634(v10, v11 | (v12 << 8));
  v14 = 0;
  v52 = v8;
  v15 = 0;
  if ((v16 & 1) == 0 && v13 == 1)
  {
    if (qword_10009F218 != -1)
    {
      swift_once();
    }

    v14 = qword_1000A4F48;
    v15 = qword_1000A4F50;
  }

  v51 = v15;
  v53 = v14;
  KeyPath = swift_getKeyPath();
  v18 = *v3;
  v49 = v3[1];
  v50 = v18;
  v64 = v3[4];
  v65 = *(v3 + 40);
  v19 = v3[6];
  v20 = *(v3 + 56);
  type metadata accessor for MainActor();

  sub_10004E184(v10, v11, v12);
  sub_100015AC0(&v64, v62, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v19, v20);
  v21 = v11;
  v22 = v10;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  v25 = v20;
  v26 = *(v3 + 1);
  *(v24 + 32) = *v3;
  *(v24 + 48) = v26;
  *(v24 + 64) = *(v3 + 2);
  *(v24 + 73) = *(v3 + 41);
  *(v24 + 96) = KeyPath;

  v27 = v50;

  sub_10004E184(v22, v21, v12);
  sub_100015AC0(&v64, v62, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v19, v25);
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  v30 = *(v3 + 1);
  *(v29 + 32) = *v3;
  *(v29 + 48) = v30;
  *(v29 + 64) = *(v3 + 2);
  *(v29 + 73) = *(v3 + 41);
  *(v29 + 96) = KeyPath;
  Binding.init(get:set:)();

  v31 = v62[0];
  v32 = v62[1];
  LOBYTE(v22) = v63;
  v33 = v52;
  *v52 = xmmword_100078CF0;
  v34 = v55;
  (*(v56 + 32))(&v33[*(v55 + 20)], v54, v57);
  v35 = &v33[v34[6]];
  v36 = v51;
  *v35 = v53;
  v35[1] = v36;
  v33[v34[7]] = v58 & 1;
  v37 = &v33[v34[8]];
  *v37 = v31;
  *(v37 + 1) = v32;
  v37[16] = v22;
  v38 = &v33[v34[9]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  if (v27)
  {

    if (sub_100020740())
    {
      v39 = sub_10000A814(v19, v25) ^ 1;
    }

    else
    {
      v39 = 1;
    }

    v40 = swift_getKeyPath();
    v41 = swift_allocObject();
    *(v41 + 16) = v39 & 1;
    v42 = v33;
    v43 = v60;
    sub_10005170C(v42, v60, type metadata accessor for TFToggle);
    v44 = (v43 + *(v59 + 36));
    *v44 = v40;
    v44[1] = sub_100053720;
    v44[2] = v41;
    v45 = sub_10001CCAC();
    v46 = [v45 fontDescriptor];
    v47 = [v46 symbolicTraits];

    if (qword_10009F218 != -1)
    {
      swift_once();
    }

    sub_10002D970(v47 & 1, 0, qword_1000A4F48, qword_1000A4F50, v61);
    return sub_1000156F8(v43, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000324D4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v66 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = type metadata accessor for SymbolRenderingMode();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v57);
  v63 = (v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v62);
  v64 = v52 - v11;
  v58 = v9;
  static SymbolRenderingMode.monochrome.getter();
  v12 = v3[2];
  v13 = *(v3 + 25);
  v55 = *(v3 + 24);
  v14 = v13;
  v15 = v12;
  v16 = sub_10000A634(v12, v55 | (v13 << 8));
  v17 = 0;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_10009F220 != -1)
    {
      swift_once();
    }

    v17 = qword_1000A4F58;
    v18 = qword_1000A4F60;
  }

  v54 = v18;
  v56 = v17;
  v65 = v6;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v52[1] = v3[1];
  v69 = v3[4];
  v70 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  v53 = v23;
  type metadata accessor for MainActor();

  v24 = v55;
  sub_10004E184(v15, v55, v14);
  sub_100015AC0(&v69, v67, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v22, v23);
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  v27 = v22;
  v28 = *(v3 + 1);
  *(v26 + 32) = *v3;
  *(v26 + 48) = v28;
  *(v26 + 64) = *(v3 + 2);
  *(v26 + 73) = *(v3 + 41);
  *(v26 + 96) = KeyPath;

  v29 = v14;
  v30 = v53;
  sub_10004E184(v15, v24, v29);
  sub_100015AC0(&v69, v67, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v22, v30);
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = &protocol witness table for MainActor;
  v33 = *(v3 + 1);
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(v3 + 2);
  *(v32 + 73) = *(v3 + 41);
  *(v32 + 96) = KeyPath;
  Binding.init(get:set:)();

  v34 = v67[0];
  v35 = v67[1];
  LOBYTE(v24) = v68;
  v36 = v63;
  *v63 = xmmword_100078D00;
  v37 = v57;
  (*(v59 + 32))(v36 + *(v57 + 20), v58, v60);
  v38 = (v36 + v37[6]);
  v39 = v54;
  *v38 = v56;
  v38[1] = v39;
  *(v36 + v37[7]) = v61 & 1;
  v40 = v36 + v37[8];
  *v40 = v34;
  *(v40 + 8) = v35;
  *(v40 + 16) = v24;
  v41 = v36 + v37[9];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v42 = sub_100015B54();

    v43 = v64;
    if (v42)
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_10000A814(v27, v30) ^ 1;
    }

    v45 = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v44 & 1;
    sub_10005170C(v36, v43, type metadata accessor for TFToggle);
    v47 = (v43 + *(v62 + 36));
    *v47 = v45;
    v47[1] = sub_100053720;
    v47[2] = v46;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v65;
    static Published.subscript.getter();

    v49 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v49 - 8) + 48))(v48, 1, v49))
    {
      v50 = 0;
    }

    else
    {
      v50 = UITextFormattingViewController.FormattingDescriptor.underlinePresent.getter();
    }

    sub_1000156F8(v48, &qword_10009FAB0, &qword_1000781B8);
    if (qword_10009F220 != -1)
    {
      swift_once();
    }

    sub_10002D970(v50 & 1, 0, qword_1000A4F58, qword_1000A4F60, v66);
    return sub_1000156F8(v43, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100032BF4@<X0>(uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  v5 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = a2();
  }

  result = sub_1000156F8(v7, &qword_10009FAB0, &qword_1000781B8);
  *a3 = v9 & 1;
  return result;
}

uint64_t sub_100032D38@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v66 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = type metadata accessor for SymbolRenderingMode();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v57);
  v63 = (v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v62);
  v64 = v52 - v11;
  v58 = v9;
  static SymbolRenderingMode.monochrome.getter();
  v12 = v3[2];
  v13 = *(v3 + 25);
  v55 = *(v3 + 24);
  v14 = v13;
  v15 = v12;
  v16 = sub_10000A634(v12, v55 | (v13 << 8));
  v17 = 0;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_10009F228 != -1)
    {
      swift_once();
    }

    v17 = qword_1000A4F68;
    v18 = qword_1000A4F70;
  }

  v54 = v18;
  v56 = v17;
  v65 = v6;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v52[1] = v3[1];
  v69 = v3[4];
  v70 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  v53 = v23;
  type metadata accessor for MainActor();

  v24 = v55;
  sub_10004E184(v15, v55, v14);
  sub_100015AC0(&v69, v67, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v22, v23);
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  v27 = v22;
  v28 = *(v3 + 1);
  *(v26 + 32) = *v3;
  *(v26 + 48) = v28;
  *(v26 + 64) = *(v3 + 2);
  *(v26 + 73) = *(v3 + 41);
  *(v26 + 96) = KeyPath;

  v29 = v14;
  v30 = v53;
  sub_10004E184(v15, v24, v29);
  sub_100015AC0(&v69, v67, &qword_1000A0320, &qword_100079E48);
  sub_100051F08(v22, v30);
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = &protocol witness table for MainActor;
  v33 = *(v3 + 1);
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(v3 + 2);
  *(v32 + 73) = *(v3 + 41);
  *(v32 + 96) = KeyPath;
  Binding.init(get:set:)();

  v34 = v67[0];
  v35 = v67[1];
  LOBYTE(v24) = v68;
  v36 = v63;
  *v63 = xmmword_100078D10;
  v37 = v57;
  (*(v59 + 32))(v36 + *(v57 + 20), v58, v60);
  v38 = (v36 + v37[6]);
  v39 = v54;
  *v38 = v56;
  v38[1] = v39;
  *(v36 + v37[7]) = v61 & 1;
  v40 = v36 + v37[8];
  *v40 = v34;
  *(v40 + 8) = v35;
  *(v40 + 16) = v24;
  v41 = v36 + v37[9];
  *v41 = swift_getKeyPath();
  *(v41 + 8) = 0;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v42 = sub_100015B54();

    v43 = v64;
    if (v42)
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_10000A814(v27, v30) ^ 1;
    }

    v45 = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v44 & 1;
    sub_10005170C(v36, v43, type metadata accessor for TFToggle);
    v47 = (v43 + *(v62 + 36));
    *v47 = v45;
    v47[1] = sub_100053720;
    v47[2] = v46;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v65;
    static Published.subscript.getter();

    v49 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v49 - 8) + 48))(v48, 1, v49))
    {
      v50 = 0;
    }

    else
    {
      v50 = UITextFormattingViewController.FormattingDescriptor.strikethroughPresent.getter();
    }

    sub_1000156F8(v48, &qword_10009FAB0, &qword_1000781B8);
    if (qword_10009F228 != -1)
    {
      swift_once();
    }

    sub_10002D970(v50 & 1, 0, qword_1000A4F68, qword_1000A4F70, v66);
    return sub_1000156F8(v43, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_100033440@<X0>(_BYTE *a1@<X8>)
{
  sub_10004E130();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000334DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v101 = a2;
  v97 = sub_1000130DC(&qword_1000A0760, &qword_10007A598);
  __chkstk_darwin(v97);
  v4 = &v77 - v3;
  v93 = sub_1000130DC(&qword_1000A0768, &qword_10007A5A0);
  __chkstk_darwin(v93);
  v95 = &v77 - v5;
  v100 = sub_1000130DC(&qword_1000A0770, &qword_10007A5A8);
  __chkstk_darwin(v100);
  v96 = &v77 - v6;
  v94 = sub_1000130DC(&qword_1000A0778, &qword_10007A5B0);
  __chkstk_darwin(v94);
  v83 = &v77 - v7;
  v89 = sub_1000130DC(&qword_1000A0780, &qword_10007A5B8);
  __chkstk_darwin(v89);
  v82 = &v77 - v8;
  v9 = sub_1000130DC(&qword_1000A0758, &qword_10007A518);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v77 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v77 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v77 - v20;
  v22 = __chkstk_darwin(v19);
  v103 = &v77 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v77 - v28;
  __chkstk_darwin(v27);
  v31 = &v77 - v30;
  v98 = sub_1000130DC(&qword_1000A0788, &qword_10007A5C0);
  __chkstk_darwin(v98);
  v102 = &v77 - v32;
  v86 = sub_1000130DC(&qword_1000A0790, &qword_10007A5C8);
  __chkstk_darwin(v86);
  v88 = &v77 - v33;
  v99 = sub_1000130DC(&qword_1000A0798, &qword_10007A5D0);
  __chkstk_darwin(v99);
  v35 = &v77 - v34;
  v85 = sub_1000130DC(&qword_1000A07A0, &qword_10007A5D8);
  v79 = *(v85 - 8);
  __chkstk_darwin(v85);
  v78 = &v77 - v36;
  v87 = sub_1000130DC(&qword_1000A07A8, &qword_10007A5E0);
  v81 = *(v87 - 8);
  __chkstk_darwin(v87);
  v80 = &v77 - v37;
  v38 = sub_10000A634(*(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v39 & 1) == 0)
  {
    v77 = v35;
    v46 = v4;
    v47 = v26;
    v48 = v31;
    v50 = v102;
    v49 = v103;
    if (v38 == 3)
    {
      v71 = v48;
      v91 = v48;
      sub_100031890(0, v48);
      v92 = v29;
      sub_100031EDC(0, v29);
      v72 = v47;
      v90 = v47;
      sub_1000324D4(0, v47);
      v73 = v49;
      sub_100015AC0(v71, v49, &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v29, v21, &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v72, v18, &qword_1000A0758, &qword_10007A518);
      v74 = v83;
      sub_100015AC0(v49, v83, &qword_1000A0758, &qword_10007A518);
      v75 = sub_1000130DC(&qword_1000A07E8, &qword_10007A5F0);
      sub_100015AC0(v21, v74 + *(v75 + 48), &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v18, v74 + *(v75 + 64), &qword_1000A0758, &qword_10007A518);
      sub_1000156F8(v18, &qword_1000A0758, &qword_10007A518);
      sub_1000156F8(v21, &qword_1000A0758, &qword_10007A518);
      sub_1000156F8(v73, &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v74, v95, &qword_1000A0778, &qword_10007A5B0);
      swift_storeEnumTagMultiPayload();
      sub_100015A00(&qword_1000A07B8, &qword_1000A0778, &qword_10007A5B0, &protocol conformance descriptor for TupleView<A>);
      sub_100015A00(&qword_1000A07C0, &qword_1000A0760, &qword_10007A598, &protocol conformance descriptor for TupleView<A>);
      v76 = v96;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v76, v50, &qword_1000A0770, &qword_10007A5A8);
      swift_storeEnumTagMultiPayload();
      sub_100050428();
      sub_100050564();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v76, &qword_1000A0770, &qword_10007A5A8);
      sub_1000156F8(v74, &qword_1000A0778, &qword_10007A5B0);
      v68 = v90;
      v69 = &qword_1000A0758;
      v70 = &qword_10007A518;
    }

    else
    {
      if (v38 != 2)
      {
        v31 = v48;
        v4 = v46;
        v51 = v77;
        if (v38 == 1)
        {
          __chkstk_darwin(1);
          *(&v77 - 2) = a1;
          sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
          sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
          sub_100015A00(&qword_1000A07C0, &qword_1000A0760, &qword_10007A598, &protocol conformance descriptor for TupleView<A>);
          v52 = v78;
          Menu.init(content:label:)();
          v104 = 0;
          State.init(wrappedValue:)();
          v53 = v105;
          v54 = v106;
          LOBYTE(v105) = 0;
          LOBYTE(v106) = v53;
          v107 = v54;
          v55 = sub_100015A00(&qword_1000A07D0, &qword_1000A07A0, &qword_10007A5D8, &protocol conformance descriptor for Menu<A, B>);
          v56 = sub_10004E3D8();
          v57 = v80;
          v58 = v85;
          View.menuStyle<A>(_:)();
          (*(v79 + 8))(v52, v58);

          v59 = v81;
          v60 = v87;
          (*(v81 + 16))(v88, v57, v87);
          swift_storeEnumTagMultiPayload();
          v105 = v58;
          v106 = &type metadata for TFMenuStyle;
          v107 = v55;
          v108 = v56;
          swift_getOpaqueTypeConformance2();
          sub_100015A00(&qword_1000A07D8, &qword_1000A0780, &qword_10007A5B8, &protocol conformance descriptor for TupleView<A>);
          _ConditionalContent<>.init(storage:)();
          sub_100015AC0(v51, v102, &qword_1000A0798, &qword_10007A5D0);
          swift_storeEnumTagMultiPayload();
          sub_100050428();
          sub_100050564();
          _ConditionalContent<>.init(storage:)();
          sub_1000156F8(v51, &qword_1000A0798, &qword_10007A5D0);
          return (*(v59 + 8))(v57, v60);
        }

        goto LABEL_2;
      }

      v62 = v48;
      v91 = v48;
      sub_100031890(0, v48);
      v92 = v29;
      sub_100031EDC(0, v29);
      sub_100015AC0(v62, v26, &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v29, v49, &qword_1000A0758, &qword_10007A518);
      v63 = v82;
      sub_100015AC0(v26, v82, &qword_1000A0758, &qword_10007A518);
      v64 = sub_1000130DC(&qword_1000A07F0, &qword_10007A5F8);
      sub_100015AC0(v49, v63 + *(v64 + 48), &qword_1000A0758, &qword_10007A518);
      sub_1000156F8(v49, &qword_1000A0758, &qword_10007A518);
      sub_1000156F8(v26, &qword_1000A0758, &qword_10007A518);
      sub_100015AC0(v63, v88, &qword_1000A0780, &qword_10007A5B8);
      swift_storeEnumTagMultiPayload();
      v65 = sub_100015A00(&qword_1000A07D0, &qword_1000A07A0, &qword_10007A5D8, &protocol conformance descriptor for Menu<A, B>);
      v66 = sub_10004E3D8();
      v105 = v85;
      v106 = &type metadata for TFMenuStyle;
      v107 = v65;
      v108 = v66;
      swift_getOpaqueTypeConformance2();
      sub_100015A00(&qword_1000A07D8, &qword_1000A0780, &qword_10007A5B8, &protocol conformance descriptor for TupleView<A>);
      v67 = v77;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v67, v50, &qword_1000A0798, &qword_10007A5D0);
      swift_storeEnumTagMultiPayload();
      sub_100050428();
      sub_100050564();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v67, &qword_1000A0798, &qword_10007A5D0);
      v68 = v63;
      v69 = &qword_1000A0780;
      v70 = &qword_10007A5B8;
    }

    sub_1000156F8(v68, v69, v70);
    sub_1000156F8(v92, &qword_1000A0758, &qword_10007A518);
    v45 = v91;
    return sub_1000156F8(v45, &qword_1000A0758, &qword_10007A518);
  }

LABEL_2:
  v84 = v4;
  sub_100031890(0, v31);
  v92 = v29;
  sub_100031EDC(0, v29);
  v90 = v26;
  sub_1000324D4(0, v26);
  v91 = v31;
  v40 = v15;
  v41 = v103;
  sub_100032D38(0, v103);
  sub_100015AC0(v31, v21, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v29, v18, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v26, v40, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v41, v12, &qword_1000A0758, &qword_10007A518);
  v42 = v84;
  sub_100015AC0(v21, v84, &qword_1000A0758, &qword_10007A518);
  v43 = sub_1000130DC(&qword_1000A07B0, &qword_10007A5E8);
  sub_100015AC0(v18, v42 + v43[12], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v40, v42 + v43[16], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v12, v42 + v43[20], &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v12, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v40, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v18, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v21, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v42, v95, &qword_1000A0760, &qword_10007A598);
  swift_storeEnumTagMultiPayload();
  sub_100015A00(&qword_1000A07B8, &qword_1000A0778, &qword_10007A5B0, &protocol conformance descriptor for TupleView<A>);
  sub_100015A00(&qword_1000A07C0, &qword_1000A0760, &qword_10007A598, &protocol conformance descriptor for TupleView<A>);
  v44 = v96;
  _ConditionalContent<>.init(storage:)();
  sub_100015AC0(v44, v102, &qword_1000A0770, &qword_10007A5A8);
  swift_storeEnumTagMultiPayload();
  sub_100050428();
  sub_100050564();
  _ConditionalContent<>.init(storage:)();
  sub_1000156F8(v44, &qword_1000A0770, &qword_10007A5A8);
  sub_1000156F8(v42, &qword_1000A0760, &qword_10007A598);
  sub_1000156F8(v103, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v90, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v92, &qword_1000A0758, &qword_10007A518);
  v45 = v91;
  return sub_1000156F8(v45, &qword_1000A0758, &qword_10007A518);
}

uint64_t sub_100034528@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000130DC(&qword_1000A0758, &qword_10007A518);
  v3 = __chkstk_darwin(v2 - 8);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v32 = &v31 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v31 - v20;
  __chkstk_darwin(v19);
  v23 = &v31 - v22;
  sub_100031890(1, &v31 - v22);
  v31 = v21;
  sub_100031EDC(1, v21);
  sub_1000324D4(1, v18);
  sub_100032D38(1, v15);
  v24 = v12;
  v33 = v12;
  sub_100015AC0(v23, v12, &qword_1000A0758, &qword_10007A518);
  v25 = v21;
  v26 = v9;
  sub_100015AC0(v25, v9, &qword_1000A0758, &qword_10007A518);
  v27 = v32;
  sub_100015AC0(v18, v32, &qword_1000A0758, &qword_10007A518);
  v28 = v34;
  sub_100015AC0(v15, v34, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v24, a1, &qword_1000A0758, &qword_10007A518);
  v29 = sub_1000130DC(&qword_1000A07B0, &qword_10007A5E8);
  sub_100015AC0(v26, a1 + v29[12], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v27, a1 + v29[16], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v28, a1 + v29[20], &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v15, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v18, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v31, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v23, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v28, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v27, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v26, &qword_1000A0758, &qword_10007A518);
  return sub_1000156F8(v33, &qword_1000A0758, &qword_10007A518);
}

uint64_t sub_100034844@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.monochrome.getter();
  v3 = static Font.title3.getter();
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x800000010007D560;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = 1;
  v4 = a1 + v2[11];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[12];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  v7 = a1 + v6[9];
  State.init(wrappedValue:)();
  *v7 = v12;
  *(v7 + 8) = v13;
  v8 = a1 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v6[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[12];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_10003499C@<X0>(uint64_t *a1@<X2>, _BYTE *a3@<X8>)
{
  if (*a1)
  {
    v8 = *a1;

    v4 = swift_readAtKeyPath();
    *a3 = *v5;
    v4(v7, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100034A7C(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*a4)
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100034B78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A0830, &qword_10007A618);
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  v46 = sub_1000130DC(&qword_1000A0838, &qword_10007A620);
  __chkstk_darwin(v46);
  v8 = &v39 - v7;
  v47 = sub_1000130DC(&qword_1000A0818, &qword_10007A610);
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v11 = &v39 - v10;
  v12 = sub_1000130DC(&qword_1000A0840, &qword_10007A628);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  if (qword_10009F370 != -1)
  {
    v14 = swift_once();
  }

  if (byte_1000A51D9 == 1)
  {
    v39 = &v39;
    v17 = __chkstk_darwin(v14);
    *(&v39 - 2) = a1;
    __chkstk_darwin(v17);
    v42 = v12;
    v43 = v13;
    *(&v39 - 2) = a1;
    sub_1000130DC(&qword_1000A0848, &qword_10007A630);
    v44 = a2;
    v45 = v4;
    v41 = v8;
    sub_1000130DC(&qword_1000A0850, &qword_10007A638);
    v40 = v16;
    v18 = v9;
    sub_100015A00(&qword_1000A0858, &qword_1000A0848, &qword_10007A630, &unk_10007B2E8);
    sub_100015A00(&qword_1000A0860, &qword_1000A0850, &qword_10007A638, &protocol conformance descriptor for TupleView<A>);
    Menu.init(content:label:)();
    v52 = 0;
    State.init(wrappedValue:)();
    v19 = v48;
    v20 = v49;
    LOBYTE(v48) = 0;
    LOBYTE(v49) = v19;
    v50 = v20;
    v21 = sub_100015A00(&qword_1000A0820, &qword_1000A0818, &qword_10007A610, &protocol conformance descriptor for Menu<A, B>);
    v22 = sub_10004E3D8();
    v23 = v40;
    v24 = v47;
    View.menuStyle<A>(_:)();

    (*(v18 + 8))(v11, v24);
    v25 = v43;
    v26 = v23;
    v27 = v23;
    v28 = v42;
    (*(v43 + 16))(v41, v26, v42);
    swift_storeEnumTagMultiPayload();
    v48 = v24;
    v49 = &type metadata for TFMenuStyle;
    v50 = v21;
    v51 = v22;
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0828, &qword_1000A0830, &qword_10007A618, &unk_10007B410);
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 8))(v27, v28);
  }

  else
  {
    v30 = v4[12];
    v31 = type metadata accessor for HoverEffect();
    (*(*(v31 - 8) + 56))(&v6[v30], 1, 1, v31);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 9) = 257;
    v6[11] = 0;
    sub_100035268(a1, &v6[v4[13]]);
    v32 = &v6[v4[14]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v6[v4[15]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = &v6[v4[16]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v6[v4[17]];
    v52 = 0;
    State.init(wrappedValue:)();
    v36 = v49;
    *v35 = v48;
    *(v35 + 1) = v36;
    sub_100015AC0(v6, v8, &qword_1000A0830, &qword_10007A618);
    swift_storeEnumTagMultiPayload();
    v37 = sub_100015A00(&qword_1000A0820, &qword_1000A0818, &qword_10007A610, &protocol conformance descriptor for Menu<A, B>);
    v38 = sub_10004E3D8();
    v48 = v47;
    v49 = &type metadata for TFMenuStyle;
    v50 = v37;
    v51 = v38;
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0828, &qword_1000A0830, &qword_10007A618, &unk_10007B410);
    _ConditionalContent<>.init(storage:)();
    return sub_1000156F8(v6, &qword_1000A0830, &qword_10007A618);
  }
}

uint64_t sub_100035268@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000130DC(&qword_1000A0818, &qword_10007A610);
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v41 = &v37 - v4;
  v5 = sub_1000130DC(&qword_1000A0840, &qword_10007A628);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v37 - v6;
  v7 = sub_1000130DC(&qword_1000A0908, &qword_10007A7E0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_1000130DC(&qword_1000A0910, &qword_10007A7E8);
  __chkstk_darwin(v10);
  v12 = (&v37 - v11);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v49 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v7;
    if (v13)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v49 & 1) == 0)
      {
        v54 = a1[2];
        v55 = *(a1 + 12);
        v52 = a1[4];
        v53 = *(a1 + 40);
        v25 = swift_allocObject();
        v26 = *(a1 + 1);
        v25[1] = *a1;
        v25[2] = v26;
        *(v25 + 41) = *(a1 + 25);
        *v12 = 16842752;
        v27 = v10;
        v28 = *(v10 + 48);

        sub_100015AC0(&v54, &v49, &qword_1000A0360, &qword_100079E98);
        sub_100015AC0(&v52, &v49, &qword_1000A08D8, &unk_10007A770);
        sub_100035AC8(v12 + v28);
        v29 = (v12 + v27[13]);
        *v29 = sub_100050D9C;
        v29[1] = v25;
        v30 = v12 + v27[14];
        v47 = 0;
        v48 = 1;
        sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
        State.init(wrappedValue:)();
        v31 = BYTE8(v49);
        v32 = v50;
        *v30 = v49;
        v30[8] = v31;
        *(v30 + 2) = v32;
        v33 = v27[15];
        v47 = 0;
        sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
        State.init(wrappedValue:)();
        *(v12 + v33) = v49;
        v34 = v12 + v27[16];
        *v34 = swift_getKeyPath();
        v34[8] = 0;
        sub_100015AC0(v12, v9, &qword_1000A0910, &qword_10007A7E8);
        swift_storeEnumTagMultiPayload();
        sub_100015A00(&qword_1000A0918, &qword_1000A0910, &qword_10007A7E8, &unk_10007B3C0);
        v35 = sub_100015A00(&qword_1000A0820, &qword_1000A0818, &qword_10007A610, &protocol conformance descriptor for Menu<A, B>);
        v36 = sub_10004E3D8();
        *&v49 = v3;
        *(&v49 + 1) = &type metadata for TFMenuStyle;
        v50 = v35;
        v51 = v36;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        return sub_1000156F8(v12, &qword_1000A0910, &qword_10007A7E8);
      }
    }

    v40 = v10;
    v15 = __chkstk_darwin(v14);
    *(&v37 - 2) = a1;
    __chkstk_darwin(v15);
    *(&v37 - 2) = a1;
    sub_1000130DC(&qword_1000A0848, &qword_10007A630);
    v39 = v5;
    sub_1000130DC(&qword_1000A0850, &qword_10007A638);
    v38 = v9;
    sub_100015A00(&qword_1000A0858, &qword_1000A0848, &qword_10007A630, &unk_10007B2E8);
    sub_100015A00(&qword_1000A0860, &qword_1000A0850, &qword_10007A638, &protocol conformance descriptor for TupleView<A>);
    v16 = v41;
    Menu.init(content:label:)();
    LOBYTE(v54) = 0;
    State.init(wrappedValue:)();
    v17 = v49;
    v18 = *(&v49 + 1);
    LOBYTE(v49) = 0;
    BYTE8(v49) = v17;
    v50 = v18;
    v19 = sub_100015A00(&qword_1000A0820, &qword_1000A0818, &qword_10007A610, &protocol conformance descriptor for Menu<A, B>);
    v20 = sub_10004E3D8();
    v21 = v43;
    View.menuStyle<A>(_:)();

    (*(v42 + 8))(v16, v3);
    v22 = v44;
    v23 = v39;
    (*(v44 + 16))(v38, v21, v39);
    swift_storeEnumTagMultiPayload();
    sub_100015A00(&qword_1000A0918, &qword_1000A0910, &qword_10007A7E8, &unk_10007B3C0);
    *&v49 = v3;
    *(&v49 + 1) = &type metadata for TFMenuStyle;
    v50 = v19;
    v51 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v22 + 8))(v21, v23);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100035AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A0868, &qword_10007A640);
  __chkstk_darwin(v4 - 8);
  v6 = (v24 - v5);
  v7 = sub_1000130DC(&qword_1000A0870, &qword_10007A648);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = sub_1000130DC(&qword_1000A0878, &qword_10007A650);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  sub_100036F6C(v2, v6);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001471C(v6, v10, &qword_1000A0868, &qword_10007A640);
  v15 = &v10[*(v8 + 44)];
  v16 = v24[5];
  *(v15 + 4) = v24[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v24[6];
  v17 = v24[1];
  *v15 = v24[0];
  *(v15 + 1) = v17;
  v18 = v24[3];
  *(v15 + 2) = v24[2];
  *(v15 + 3) = v18;
  KeyPath = swift_getKeyPath();
  sub_10001471C(v10, v14, &qword_1000A0870, &qword_10007A648);
  v20 = &v14[*(v12 + 44)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  sub_10001471C(v14, a1, &qword_1000A0878, &qword_10007A650);
  result = sub_1000130DC(&qword_1000A0880, &qword_10007A6B8);
  v23 = (a1 + *(result + 36));
  *v23 = v21;
  v23[1] = 0x3FE6666666666666;
  return result;
}

uint64_t sub_100035D2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for Divider();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = __chkstk_darwin(v3);
  v85 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v59 - v7;
  v8 = sub_1000130DC(&qword_1000A08D0, &qword_10007A6E8);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = __chkstk_darwin(v8);
  v82 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v59 - v11;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v107 = v123;
    swift_getKeyPath();
    v139 = a1[2];
    v140 = *(a1 + 12);
    v137 = a1[4];
    v138 = *(a1 + 40);
    v12 = swift_allocObject();
    v13 = *(a1 + 1);
    v12[1] = *a1;
    v12[2] = v13;
    *(v12 + 41) = *(a1 + 25);

    sub_100015AC0(&v139, &v123, &qword_1000A0360, &qword_100079E98);
    sub_100015AC0(&v137, &v123, &qword_1000A08D8, &unk_10007A770);
    sub_1000130DC(&qword_10009FEE8, &unk_100078520);
    type metadata accessor for TFToggle(0);
    sub_100015A00(&qword_1000A08E0, &qword_10009FEE8, &unk_100078520, &protocol conformance descriptor for [A]);
    sub_100050C2C();
    sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
    ForEach<>.init(_:id:content:)();
    Divider.init()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    KeyPath = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v123)
    {
      v18 = swift_allocObject();
      v24 = *(a1 + 1);
      v18[1] = *a1;
      v18[2] = v24;
      *(v18 + 41) = *(a1 + 25);

      sub_100015AC0(&v139, &v123, &qword_1000A0360, &qword_100079E98);
      sub_100015AC0(&v137, &v123, &qword_1000A08D8, &unk_10007A770);
      if (qword_10009F258 != -1)
      {
        swift_once();
      }

      v123 = qword_1000A4FC8;
      v124 = unk_1000A4FD0;
      sub_10004E904();

      v14 = Text.init<A>(_:)();
      v15 = v25;
      v16 = v26;
      LOBYTE(v101) = v27 & 1;
      v107 = 0;
      LOBYTE(v108) = 1;
      sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
      State.init(wrappedValue:)();
      v19 = v123;
      v88 = v125;
      LOBYTE(v95) = v124;
      v107 = 0;
      sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
      State.init(wrappedValue:)();
      v86 = v124;
      v87 = v123;
      KeyPath = swift_getKeyPath();
      LOBYTE(v123) = 0;
      v22 = v101;
      v21 = v95;
      v17 = sub_100050C9C;
      v23 = 0x10000;
    }

    v72 = v23;
    v73 = v22;
    v74 = v17;
    v75 = v21;
    v76 = KeyPath;
    v77 = v19;
    v78 = v16;
    v79 = v15;
    v80 = v14;
    v81 = v18;
    v28 = swift_allocObject();
    v29 = *(a1 + 1);
    v28[1] = *a1;
    v28[2] = v29;
    v30 = *(a1 + 25);
    v62 = v28;
    *(v28 + 41) = v30;

    sub_100015AC0(&v139, &v123, &qword_1000A0360, &qword_100079E98);
    sub_100015AC0(&v137, &v123, &qword_1000A08D8, &unk_10007A770);
    if (qword_10009F250 != -1)
    {
      swift_once();
    }

    v123 = qword_1000A4FB8;
    v124 = unk_1000A4FC0;
    sub_10004E904();

    v70 = Text.init<A>(_:)();
    v61 = v31;
    v64 = v32;
    LOBYTE(v101) = v33 & 1;
    v107 = 0;
    LOBYTE(v108) = 1;
    sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
    State.init(wrappedValue:)();
    v71 = v123;
    v60 = v125;
    LOBYTE(v95) = v124;
    v107 = 0;
    sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
    State.init(wrappedValue:)();
    v68 = v124;
    v69 = v123;
    v67 = swift_getKeyPath();
    LOBYTE(v123) = 0;
    v65 = v101;
    v66 = v95;
    v34 = v82;
    v35 = *(v83 + 16);
    v36 = v84;
    v35(v82, v89, v84);
    v37 = *(v92 + 16);
    v38 = v85;
    v37(v85, v90, v91);
    v39 = v63;
    v35(v63, v34, v36);
    v40 = sub_1000130DC(&qword_1000A08F0, &qword_10007A7C8);
    v41 = v38;
    v42 = v91;
    v37(&v39[v40[12]], v41, v91);
    v43 = &v39[v40[16]];
    *&v95 = v72;
    *(&v95 + 1) = v80;
    *&v96 = v79;
    *(&v96 + 1) = v73;
    *&v97 = v78;
    *(&v97 + 1) = v74;
    *&v98 = v81;
    *(&v98 + 1) = v77;
    *&v99 = v75;
    *(&v99 + 1) = v88;
    *&v100[0] = v87;
    *(&v100[0] + 1) = v86;
    *&v100[1] = v76;
    BYTE8(v100[1]) = 0;
    v44 = v96;
    *v43 = v95;
    *(v43 + 1) = v44;
    v45 = v98;
    *(v43 + 2) = v97;
    *(v43 + 3) = v45;
    v46 = v100[0];
    *(v43 + 4) = v99;
    *(v43 + 5) = v46;
    *(v43 + 89) = *(v100 + 9);
    v47 = &v39[v40[20]];
    LODWORD(v101) = 0x10000;
    v48 = v61;
    v49 = v62;
    *(&v101 + 1) = v70;
    *&v102 = v61;
    BYTE8(v102) = v65;
    HIDWORD(v102) = *&v94[3];
    *(&v102 + 9) = *v94;
    *&v103 = v64;
    *(&v103 + 1) = sub_1000535F4;
    *&v104 = v62;
    *(&v104 + 1) = v71;
    LOBYTE(v105) = v66;
    DWORD1(v105) = *&v93[3];
    *(&v105 + 1) = *v93;
    v50 = v60;
    *(&v105 + 1) = v60;
    *&v106[0] = v69;
    *(&v106[0] + 1) = v68;
    *&v106[1] = v67;
    BYTE8(v106[1]) = 0;
    sub_100015AC0(&v95, &v123, &qword_1000A08F8, &qword_10007A7D0);
    sub_100015AC0(&v101, &v123, &qword_1000A0900, &qword_10007A7D8);
    v51 = *(v92 + 8);
    v92 += 8;
    v63 = v51;
    (v51)(v90, v42);
    v52 = v84;
    v53 = *(v83 + 8);
    v53(v89, v84);
    v54 = v104;
    v55 = v106[0];
    *(v47 + 4) = v105;
    *(v47 + 5) = v55;
    *(v47 + 89) = *(v106 + 9);
    v56 = v102;
    v57 = v103;
    *v47 = v101;
    *(v47 + 1) = v56;
    *(v47 + 2) = v57;
    *(v47 + 3) = v54;
    LODWORD(v107) = 0x10000;
    v108 = v70;
    v109 = v48;
    v110 = v65;
    *&v111[3] = *&v94[3];
    *v111 = *v94;
    v112 = v64;
    v113 = sub_1000535F4;
    v114 = v49;
    v115 = v71;
    v116 = v66;
    *v117 = *v93;
    *&v117[3] = *&v93[3];
    v118 = v50;
    v119 = v69;
    v120 = v68;
    v121 = v67;
    v122 = 0;
    sub_1000156F8(&v107, &qword_1000A0900, &qword_10007A7D8);
    v123 = v72;
    v124 = v80;
    v125 = v79;
    v126 = v73;
    v127 = v78;
    v128 = v74;
    v129 = v81;
    v130 = v77;
    v131 = v75;
    v132 = v88;
    v133 = v87;
    v134 = v86;
    v135 = v76;
    v136 = 0;
    sub_1000156F8(&v123, &qword_1000A08F8, &qword_10007A7D0);
    (v63)(v85, v91);
    return (v53)(v82, v52);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100036808@<X0>(void **a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v32 = *a2;
  v30 = *(a2 + 2);
  v31 = *(a2 + 12);
  v28 = *(a2 + 4);
  v29 = *(a2 + 40);
  type metadata accessor for MainActor();
  sub_100015AC0(&v32, v26, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v30, v26, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v28, v26, &qword_1000A08D8, &unk_10007A770);
  v6 = v5;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 57) = *(a2 + 25);
  *(v8 + 80) = v6;
  sub_100015AC0(&v32, v26, &qword_1000A03B0, &qword_100079F30);
  sub_100015AC0(&v30, v26, &qword_1000A0360, &qword_100079E98);
  sub_100015AC0(&v28, v26, &qword_1000A08D8, &unk_10007A770);
  v10 = v6;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 57) = *(a2 + 25);
  *(v12 + 80) = v10;
  Binding.init(get:set:)();
  v14 = v26[0];
  v15 = v26[1];
  v16 = v27;
  v17 = [v10 localizedFullName];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = type metadata accessor for TFToggle(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a3 = 0;
  a3[1] = 0;
  v22 = (a3 + v21[6]);
  *v22 = v18;
  v22[1] = v20;
  *(a3 + v21[7]) = 1;
  v23 = a3 + v21[8];
  *v23 = v14;
  *(v23 + 1) = v15;
  v23[16] = v16;
  v24 = a3 + v21[9];
  result = swift_getKeyPath();
  *v24 = result;
  v24[8] = 0;
  return result;
}

uint64_t sub_100036A8C@<X0>(void *a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*a1)
  {

    v4 = sub_10001C93C();

    v19 = a3;
    if (v4 >> 62)
    {
LABEL_18:
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v7 = v5;
      if (v22 == v5)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v8 = *&v4[v5 + 4];
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v10 = [v8 familyName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [a2 familyName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

        break;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v5 = v7 + 1;
    }

    while ((v6 & 1) == 0);

    *v19 = v22 != v7;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100036CC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*a4)
  {

    v6 = [a5 fontDescriptor];
    v7 = sub_10001CCAC();
    [v7 pointSize];
    v9 = v8;

    v10 = [objc_opt_self() fontWithDescriptor:v6 size:v9];
    sub_10001FF80(v10);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100036DE8(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + *a2);

    v2(v3);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100036E98@<X0>(uint64_t a1@<X8>)
{
  sub_100035AC8(a1);
  v2 = sub_1000130DC(&qword_1000A0848, &qword_10007A630);
  v3 = a1 + v2[9];
  State.init(wrappedValue:)();
  *v3 = v8;
  *(v3 + 8) = v9;
  v4 = a1 + v2[10];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[12];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_100036F6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000130DC(&qword_1000A0888, &qword_10007A6C0);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for TFSymbol(0);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A634(a1[2], *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v11 & 1) != 0 || v10 != 1)
  {
    if (*a1)
    {

      v45 = *(sub_10001FDE0() + 2);

      v16 = sub_10001CCAC();

      v17 = sub_1000696B4();
      v19 = v18;

      v49 = v17;
      v50 = v19;
      sub_10004E904();
      v20 = Text.init<A>(_:)();
      v22 = v21;
      v24 = v23;
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      v47 = v7;
      v48 = a2;
      v46 = v4;
      if (byte_1000A51D8 == 1)
      {
        LODWORD(v49) = static HierarchicalShapeStyle.primary.getter();
      }

      else
      {
        v49 = static Color.primary.getter();
      }

      v49 = AnyShapeStyle.init<A>(_:)();
      v25 = Text.foregroundStyle<A>(_:)();
      v41 = v26;
      v42 = v25;
      v27 = v26;
      v29 = v28;
      v43 = v28;
      v44 = v30;
      sub_10004F02C(v20, v22, v24 & 1);

      sub_1000374E0(v45, v25, v27, v29 & 1, &v49);
      v32 = v49;
      v31 = v50;
      v34 = v51;
      v33 = v52;
      v35 = v53;
      v36 = v54;
      v37 = v55;
      v38 = sub_10000A814(a1[4], *(a1 + 40));
      v39 = 0.5;
      LOBYTE(v49) = v37;
      if (v38)
      {
        v39 = 1.0;
      }

      *v6 = v32;
      *(v6 + 1) = v31;
      *(v6 + 2) = v34;
      *(v6 + 3) = v33;
      *(v6 + 4) = v35;
      *(v6 + 5) = v36;
      v6[48] = v37;
      *(v6 + 7) = v39;
      swift_storeEnumTagMultiPayload();
      sub_1000508D4(v32, v31, v34, v33, v35, v36, v37);
      sub_1000508D4(v32, v31, v34, v33, v35, v36, v37);
      sub_1000130DC(&qword_1000A0890, &qword_10007A6C8);
      sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
      sub_100050958();
      _ConditionalContent<>.init(storage:)();
      sub_10004F02C(v42, v41, v43 & 1);

      sub_100050B78(v32, v31, v34, v33, v35, v36, v37);
      return sub_100050B78(v32, v31, v34, v33, v35, v36, v37);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v12 = static Font.title3.getter();
    static SymbolRenderingMode.hierarchical.getter();
    *v9 = xmmword_100078D20;
    v9[16] = 0;
    *(v9 + 3) = v12;
    *(v9 + 4) = 0;
    v9[v7[9]] = 1;
    v9[v7[10]] = 1;
    v13 = &v9[v7[11]];
    *v13 = swift_getKeyPath();
    v13[8] = 0;
    v14 = &v9[v7[12]];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    sub_1000516A0(v9, v6, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_1000A0890, &qword_10007A6C8);
    sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    sub_100050958();
    _ConditionalContent<>.init(storage:)();
    return sub_10004F14C(v9, type metadata accessor for TFSymbol);
  }

  return result;
}

double sub_1000374E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  if (a1 < 2)
  {
    sub_100050948(a2, a3, a4 & 1);
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x800000010007D580;
    v12._countAndFlagsBits = 0xD000000000000021;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    LocalizedStringKey.init(stringInterpolation:)();
    if (qword_10009F1B0 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A4E80;
    v16 = Text.init(_:tableName:bundle:comment:)();
    v18 = v17;
    v20 = v19;
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    if (byte_1000A51D8 == 1)
    {
      static HierarchicalShapeStyle.secondary.getter();
    }

    else
    {
      static Color.secondary.getter();
    }

    *&v22 = AnyShapeStyle.init<A>(_:)();
    Text.foregroundStyle<A>(_:)();
    sub_10004F02C(v16, v18, v20 & 1);
  }

  sub_1000130DC(&qword_1000A08C8, &qword_10007A6E0);
  sub_100050AF4();
  _ConditionalContent<>.init(storage:)();
  result = *&v22;
  *a6 = v22;
  *(a6 + 16) = v23;
  *(a6 + 32) = v24;
  *(a6 + 48) = v25;
  return result;
}

uint64_t sub_10003785C()
{
  v1 = sub_1000130DC(&qword_1000A07F8, &qword_10007A600);
  __chkstk_darwin(v1);
  v3 = v11 - v2;
  v4 = v0[1];
  v12 = *v0;
  v13[0] = v4;
  *(v13 + 9) = *(v0 + 25);
  sub_100034B78(&v12, (v11 - v2));
  if (qword_10009F1C8 != -1)
  {
    swift_once();
  }

  v11[2] = qword_1000A4EA8;
  v11[3] = unk_1000A4EB0;
  sub_10004E904();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  sub_10005064C();
  View.accessibilityLabel(_:)();
  sub_10004F02C(v5, v7, v9 & 1);

  return sub_1000156F8(v3, &qword_1000A07F8, &qword_10007A600);
}

uint64_t sub_1000379D8@<X0>(void *a1@<X8>)
{
  v3 = sub_1000130DC(&qword_1000A0920, &qword_10007A7F0);
  v4 = __chkstk_darwin(v3);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v53 - v7;
  v57 = sub_1000130DC(&qword_1000A0928, &qword_10007A7F8);
  __chkstk_darwin(v57);
  v58 = v53 - v9;
  v10 = sub_1000130DC(&qword_1000A0930, &qword_10007A800);
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v53 - v11;
  v13 = sub_1000130DC(&qword_1000A0938, &qword_10007A808);
  __chkstk_darwin(v13);
  v15 = v53 - v14;
  v16 = sub_10000A634(*(v1 + 24), *(v1 + 32) | (*(v1 + 33) << 8));
  if ((v17 & 1) != 0 || ((*v1 & 1) == 0 ? (v18 = 1) : (v18 = 2), v18 < v16))
  {
    if (qword_10009F370 != -1)
    {
      swift_once();
    }

    v19 = 1;
    if ((byte_1000A51D9 & 1) == 0)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D8 == 1 && (*v1 & 1) != 0 && (v20 = *(v1 + 56), v21 = *(v1 + 64), v22 = sub_10000A9D4(v20, v21), v23 = sub_10000A468(*(v1 + 72), *(v1 + 80)), sub_100068F00(v23, v24), v25 < v22))
      {
        v26 = sub_10000A9D4(*(v1 + 40), *(v1 + 48));
        v27 = sub_10000A9D4(v20, v21);
        v19 = sub_10000A9D4(v20, v21) < v26 - (v27 + v27) + -2.0;
      }

      else
      {
        v19 = 0;
      }
    }

    v28 = v3[12];
    v29 = type metadata accessor for HoverEffect();
    (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 9) = 257;
    v6[11] = v19;
    sub_100039458(v1, &v6[v3[13]]);
    v30 = &v6[v3[14]];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = &v6[v3[15]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = &v6[v3[16]];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = &v6[v3[17]];
    v62 = 0;
    State.init(wrappedValue:)();
    v34 = v60;
    *v33 = v59;
    *(v33 + 1) = v34;
    v35 = &qword_1000A0920;
    v36 = &qword_10007A7F0;
    sub_10001471C(v6, v8, &qword_1000A0920, &qword_10007A7F0);
    sub_100015AC0(v8, v58, &qword_1000A0920, &qword_10007A7F0);
    swift_storeEnumTagMultiPayload();
    sub_100015A00(&qword_1000A0940, &qword_1000A0938, &qword_10007A808, &unk_10007B410);
    sub_100015A00(&qword_1000A0948, &qword_1000A0920, &qword_10007A7F0, &unk_10007B410);
    _ConditionalContent<>.init(storage:)();
    v37 = v8;
  }

  else
  {
    v38 = v13;
    v39 = *(v13 + 48);
    v40 = v38;
    v54 = v38;
    v41 = type metadata accessor for HoverEffect();
    v42 = (*(*(v41 - 8) + 56))(&v15[v39], 1, 1, v41);
    v53[1] = v53;
    *v15 = 0;
    v15[8] = 1;
    *(v15 + 9) = 257;
    v15[11] = 0;
    v53[2] = *(v40 + 52);
    v43 = __chkstk_darwin(v42);
    v53[-2] = v1;
    __chkstk_darwin(v43);
    v53[-2] = v1;
    v53[0] = sub_1000130DC(&qword_1000A0950, &qword_10007A810);
    v55 = a1;
    sub_1000130DC(&qword_1000A0958, &qword_10007A818);
    sub_100050DD0();
    sub_100015A00(&qword_1000A09B0, &qword_1000A0958, &qword_10007A818, &protocol conformance descriptor for TupleView<A>);
    Menu.init(content:label:)();
    v62 = 0;
    State.init(wrappedValue:)();
    v44 = v59;
    v45 = v60;
    LOBYTE(v59) = 0;
    LOBYTE(v60) = v44;
    v61 = v45;
    sub_100015A00(&qword_1000A09B8, &qword_1000A0930, &qword_10007A800, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E3D8();
    View.menuStyle<A>(_:)();

    (*(v56 + 8))(v12, v10);
    v46 = v54;
    v47 = &v15[v54[14]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v15[v46[15]];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = &v15[v46[16]];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = &v15[v46[17]];
    v62 = 0;
    State.init(wrappedValue:)();
    v51 = v60;
    *v50 = v59;
    *(v50 + 1) = v51;
    v35 = &qword_1000A0938;
    v36 = &qword_10007A808;
    sub_100015AC0(v15, v58, &qword_1000A0938, &qword_10007A808);
    swift_storeEnumTagMultiPayload();
    sub_100015A00(&qword_1000A0940, &qword_1000A0938, &qword_10007A808, &unk_10007B410);
    sub_100015A00(&qword_1000A0948, &qword_1000A0920, &qword_10007A7F0, &unk_10007B410);
    _ConditionalContent<>.init(storage:)();
    v37 = v15;
  }

  return sub_1000156F8(v37, v35, v36);
}

uint64_t sub_100038214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v94 = sub_1000130DC(&qword_1000A09C8, &qword_10007A8C8);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v76 - v3;
  v81 = sub_1000130DC(&qword_1000A09D0, &qword_10007A8D0);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v76 - v4;
  v78 = sub_1000130DC(&qword_1000A09D8, &qword_10007A8D8);
  v84 = *(v78 - 8);
  v5 = __chkstk_darwin(v78);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = &v76 - v7;
  v82 = type metadata accessor for Divider();
  v80 = *(v82 - 8);
  v8 = __chkstk_darwin(v82);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v76 - v10;
  v11 = sub_1000130DC(&qword_1000A09E0, &qword_10007A8E0);
  v12 = __chkstk_darwin(v11 - 8);
  v91 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v76 - v14;
  v15 = sub_1000130DC(&qword_1000A09E8, &qword_10007A8E8);
  v16 = (v15 - 8);
  v17 = __chkstk_darwin(v15);
  v90 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v88 = &v76 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v76 - v22);
  __chkstk_darwin(v21);
  v25 = (&v76 - v24);
  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = *(a1 + 80);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  *v25 = 0x10000;
  v99 = a1;
  sub_100015758(a1, &v102);
  Label.init(title:icon:)();
  v29 = (v25 + v16[15]);
  *v29 = sub_1000511D0;
  v29[1] = v26;
  v30 = v25 + v16[16];
  v100 = 0;
  v31 = 1;
  v101 = 1;
  sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
  State.init(wrappedValue:)();
  v32 = BYTE8(v102);
  v33 = v103;
  *v30 = v102;
  v30[8] = v32;
  *(v30 + 2) = v33;
  v34 = v16[17];
  v100 = 0;
  sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
  State.init(wrappedValue:)();
  *(v25 + v34) = v102;
  v35 = v16[18];
  v87 = v25;
  v36 = v25 + v35;
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = swift_allocObject();
  v38 = *(a1 + 48);
  *(v37 + 48) = *(a1 + 32);
  *(v37 + 64) = v38;
  *(v37 + 80) = *(a1 + 64);
  *(v37 + 96) = *(a1 + 80);
  v39 = *(a1 + 16);
  *(v37 + 16) = *a1;
  *(v37 + 32) = v39;
  *v23 = 0x10000;
  v98 = a1;
  sub_100015758(a1, &v102);
  Label.init(title:icon:)();
  v40 = (v23 + v16[15]);
  *v40 = sub_10005122C;
  v40[1] = v37;
  v41 = v23 + v16[16];
  v100 = 0;
  v101 = 1;
  State.init(wrappedValue:)();
  v42 = BYTE8(v102);
  v43 = v103;
  *v41 = v102;
  v41[8] = v42;
  *(v41 + 2) = v43;
  v44 = v16[17];
  v100 = 0;
  State.init(wrappedValue:)();
  *(v23 + v44) = v102;
  v45 = v16[18];
  v89 = v23;
  v46 = v23 + v45;
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  if (*a1)
  {
    v47 = Divider.init()();
    v48 = __chkstk_darwin(v47);
    *(&v76 - 2) = a1;
    __chkstk_darwin(v48);
    *(&v76 - 2) = a1;
    *(&v76 - 4) = 1;
    sub_1000130DC(&qword_1000A09F8, &qword_10007A8F8);
    sub_1000130DC(&qword_1000A0A00, &unk_10007A900);
    sub_10005129C();
    sub_10004F8C4(&qword_1000A0A18, &qword_1000A0A00, &unk_10007A900);
    v49 = v77;
    Menu.init(content:label:)();
    LOBYTE(v100) = 0;
    State.init(wrappedValue:)();
    v50 = v102;
    v51 = *(&v102 + 1);
    LOBYTE(v102) = 1;
    BYTE8(v102) = v50;
    v103 = v51;
    sub_100015A00(&qword_1000A0A20, &qword_1000A09D0, &qword_10007A8D0, &protocol conformance descriptor for Menu<A, B>);
    sub_10004E3D8();
    v52 = v86;
    v53 = v81;
    View.menuStyle<A>(_:)();

    (*(v79 + 8))(v49, v53);
    v54 = v80;
    v55 = *(v80 + 16);
    v56 = v85;
    v57 = v82;
    v55(v85, v96, v82);
    v58 = v84;
    v59 = *(v84 + 16);
    v60 = v83;
    v61 = v52;
    v62 = v78;
    v59(v83, v61, v78);
    v55(v92, v56, v57);
    v63 = sub_1000130DC(&qword_1000A0A28, &unk_10007A910);
    v64 = v92;
    v59(&v92[*(v63 + 48)], v60, v62);
    v65 = *(v58 + 8);
    v65(v86, v62);
    v66 = *(v54 + 8);
    v66(v96, v57);
    v65(v60, v62);
    v66(v85, v57);
    sub_10001471C(v64, v97, &qword_1000A09C8, &qword_10007A8C8);
    v31 = 0;
  }

  v67 = v97;
  (*(v93 + 56))(v97, v31, 1, v94);
  v68 = v87;
  v69 = v88;
  sub_100015AC0(v87, v88, &qword_1000A09E8, &qword_10007A8E8);
  v70 = v89;
  v71 = v90;
  sub_100015AC0(v89, v90, &qword_1000A09E8, &qword_10007A8E8);
  v72 = v91;
  sub_100015AC0(v67, v91, &qword_1000A09E0, &qword_10007A8E0);
  v73 = v95;
  sub_100015AC0(v69, v95, &qword_1000A09E8, &qword_10007A8E8);
  v74 = sub_1000130DC(&qword_1000A09F0, &qword_10007A8F0);
  sub_100015AC0(v71, v73 + *(v74 + 48), &qword_1000A09E8, &qword_10007A8E8);
  sub_100015AC0(v72, v73 + *(v74 + 64), &qword_1000A09E0, &qword_10007A8E0);
  sub_1000156F8(v67, &qword_1000A09E0, &qword_10007A8E0);
  sub_1000156F8(v70, &qword_1000A09E8, &qword_10007A8E8);
  sub_1000156F8(v68, &qword_1000A09E8, &qword_10007A8E8);
  sub_1000156F8(v72, &qword_1000A09E0, &qword_10007A8E0);
  sub_1000156F8(v71, &qword_1000A09E8, &qword_10007A8E8);
  return sub_1000156F8(v69, &qword_1000A09E8, &qword_10007A8E8);
}

uint64_t sub_100038DE0@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_10004E904();

  result = Text.init<A>(_:)();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

void *sub_100038E78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TFSymbol(0);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000130DC(&qword_1000A09C0, &unk_10007A858);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  if (*a1)
  {
    if (*(a1 + 8))
    {

      v10 = sub_10001CCAC();

      [v10 pointSize];
      v12 = v11;

      if (qword_10009F300 != -1)
      {
        swift_once();
      }

      v34 = a2;
      v13 = qword_10009FDF0;
      sub_1000132E4(0, &qword_1000A01B0, NSNumber_ptr);
      isa = NSNumber.init(floatLiteral:)(v12).super.super.isa;
      v15 = [v13 stringFromNumber:isa];

      if (v15)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        sub_1000130DC(&qword_1000A01B8, &qword_100078CB0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1000784C0;
        *(v22 + 56) = &type metadata for CGFloat;
        *(v22 + 64) = sub_100029AF8();
        *(v22 + 32) = v12;
        v33 = String.init(format:_:)();
        v17 = v23;
      }

      KeyPath = swift_getKeyPath();
      static Font.body.getter();
      v25 = Font.monospacedDigit()();

      v26 = swift_getKeyPath();
      v27 = swift_getKeyPath();
      v35 = 0;
      v28 = swift_getKeyPath();
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v36[55] = v40;
      *&v36[71] = v41;
      *&v36[87] = v42;
      *&v36[103] = v43;
      *&v36[7] = v37;
      *&v36[23] = v38;
      *&v36[39] = v39;
      v29 = *&v36[80];
      *(v9 + 145) = *&v36[64];
      *(v9 + 161) = v29;
      *(v9 + 177) = *&v36[96];
      v30 = *&v36[16];
      *(v9 + 81) = *v36;
      *(v9 + 97) = v30;
      v31 = *&v36[48];
      *(v9 + 113) = *&v36[32];
      *v9 = v33;
      *(v9 + 1) = v17;
      v9[16] = 0;
      *(v9 + 3) = KeyPath;
      v9[32] = 0;
      *(v9 + 5) = v26;
      *(v9 + 6) = v25;
      *(v9 + 7) = v27;
      *(v9 + 8) = 0x3FE999999999999ALL;
      *(v9 + 9) = v28;
      v9[80] = 1;
      *(v9 + 24) = *&v36[111];
      *(v9 + 129) = v31;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_1000A0970, &qword_10007A820);
      sub_100050E8C();
      sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v18 = static Font.title3.getter();
    static SymbolRenderingMode.hierarchical.getter();
    *v6 = xmmword_100078D30;
    v6[16] = 0;
    *(v6 + 3) = v18;
    *(v6 + 4) = 0;
    v6[v4[9]] = 1;
    v6[v4[10]] = 1;
    v19 = &v6[v4[11]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v6[v4[12]];
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    sub_1000516A0(v6, v9, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_1000A0970, &qword_10007A820);
    sub_100050E8C();
    sub_10004E2A4(&qword_1000A1590, type metadata accessor for TFSymbol, &unk_10007B1C0);
    _ConditionalContent<>.init(storage:)();
    return sub_10004F14C(v6, type metadata accessor for TFSymbol);
  }

  return result;
}

uint64_t sub_100039458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v103 = sub_1000130DC(&qword_1000A09D0, &qword_10007A8D0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v99 - v3;
  v106 = sub_1000130DC(&qword_1000A09D8, &qword_10007A8D8);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v99 - v4;
  v5 = sub_1000130DC(&qword_1000A0A40, &qword_10007A940);
  v6 = __chkstk_darwin(v5 - 8);
  v115 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = &v99 - v8;
  v9 = sub_1000130DC(&qword_1000A0A48, &qword_10007A948);
  __chkstk_darwin(v9);
  v11 = (&v99 - v10);
  v12 = sub_1000130DC(&qword_1000A0A50, &qword_10007A950);
  v13 = __chkstk_darwin(v12 - 8);
  v113 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v114 = &v99 - v16;
  v17 = __chkstk_darwin(v15);
  v112 = &v99 - v18;
  __chkstk_darwin(v17);
  v119 = &v99 - v19;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  *v11 = 0x10000;
  v23 = v11 + v9[12];
  sub_100015758(a1, &v122);
  v24 = static Font.title3.getter();
  v25 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *v23 = xmmword_100078D40;
  v23[16] = 0;
  *(v23 + 3) = v24;
  *(v23 + 4) = 0;
  v23[v25[9]] = 0;
  v23[v25[10]] = 1;
  v26 = &v23[v25[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v110 = v25;
  v27 = &v23[v25[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = (v11 + v9[13]);
  *v28 = sub_1000535F8;
  v28[1] = v20;
  v29 = v11 + v9[14];
  v120 = 0;
  v121 = 1;
  v109 = sub_1000130DC(&qword_1000A11A0, &qword_100079EA0);
  State.init(wrappedValue:)();
  v30 = BYTE8(v122);
  v31 = v123;
  *v29 = v122;
  v29[8] = v30;
  *(v29 + 2) = v31;
  v32 = v9[15];
  v120 = 0;
  v108 = sub_1000130DC(qword_1000A11B0, &qword_100079EA8);
  State.init(wrappedValue:)();
  *(v11 + v32) = v122;
  v33 = v11 + v9[16];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_10009F200 != -1)
  {
    swift_once();
  }

  v122 = xmmword_1000A4F18;
  v34 = sub_10004E904();

  v117 = v34;
  v35 = Text.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  v40 = sub_100015A00(&qword_1000A0A58, &qword_1000A0A48, &qword_10007A948, &unk_10007B3C0);
  v111 = v9;
  v107 = v40;
  View.accessibilityLabel(_:)();
  sub_10004F02C(v35, v37, v39 & 1);

  sub_1000156F8(v11, &qword_1000A0A48, &qword_10007A948);
  v41 = 1;
  v42 = v118;
  v43 = v11;
  if (*a1)
  {
    v44 = *(a1 + 56);
    v45 = *(a1 + 64);
    v46 = sub_10000A9D4(v44, v45);
    v47 = sub_10000A468(*(a1 + 72), *(a1 + 80));
    sub_100068F00(v47, v48);
    if (v49 >= v46)
    {
      v41 = 1;
    }

    else
    {
      v50 = sub_10000A9D4(*(a1 + 40), *(a1 + 48));
      v51 = sub_10000A9D4(v44, v45);
      v52 = v50 - (v51 + v51) + -2.0;
      v54 = sub_10000A9D4(v44, v45);
      v41 = 1;
      if (v54 < v52)
      {
        v100 = v11;
        v55 = __chkstk_darwin(v53);
        *(&v99 - 2) = a1;
        __chkstk_darwin(v55);
        *(&v99 - 2) = a1;
        *(&v99 - 4) = 256;
        sub_1000130DC(&qword_1000A09F8, &qword_10007A8F8);
        sub_1000130DC(&qword_1000A0A00, &unk_10007A900);
        sub_10005129C();
        sub_10004F8C4(&qword_1000A0A18, &qword_1000A0A00, &unk_10007A900);
        v56 = v101;
        Menu.init(content:label:)();
        LOBYTE(v120) = 0;
        State.init(wrappedValue:)();
        v57 = v122;
        v58 = *(&v122 + 1);
        LOBYTE(v122) = 1;
        BYTE8(v122) = v57;
        v123 = v58;
        v59 = sub_100015A00(&qword_1000A0A20, &qword_1000A09D0, &qword_10007A8D0, &protocol conformance descriptor for Menu<A, B>);
        v60 = sub_10004E3D8();
        v61 = v104;
        v62 = v103;
        View.menuStyle<A>(_:)();

        (*(v102 + 8))(v56, v62);
        if (qword_10009F1D0 != -1)
        {
          swift_once();
        }

        v122 = xmmword_1000A4EB8;

        v63 = Text.init<A>(_:)();
        v65 = v64;
        v67 = v66;
        *&v122 = v62;
        *(&v122 + 1) = &type metadata for TFMenuStyle;
        v123 = v59;
        v124 = v60;
        swift_getOpaqueTypeConformance2();
        v42 = v118;
        v68 = v106;
        View.accessibilityLabel(_:)();
        sub_10004F02C(v63, v65, v67 & 1);

        (*(v105 + 8))(v61, v68);
        v41 = 0;
        v43 = v100;
      }
    }
  }

  v69 = sub_1000130DC(&qword_1000A0A60, &qword_10007A958);
  (*(*(v69 - 8) + 56))(v42, v41, 1, v69);
  v70 = swift_allocObject();
  v71 = *(a1 + 48);
  *(v70 + 48) = *(a1 + 32);
  *(v70 + 64) = v71;
  *(v70 + 80) = *(a1 + 64);
  *(v70 + 96) = *(a1 + 80);
  v72 = *(a1 + 16);
  *(v70 + 16) = *a1;
  *(v70 + 32) = v72;
  *v43 = 0x10000;
  v73 = v111;
  v74 = v43 + v111[12];
  sub_100015758(a1, &v122);
  v75 = static Font.title3.getter();
  v76 = v110;
  static SymbolRenderingMode.hierarchical.getter();
  *v74 = xmmword_100078D50;
  v74[16] = 0;
  *(v74 + 3) = v75;
  *(v74 + 4) = 0;
  v74[v76[9]] = 0;
  v74[v76[10]] = 1;
  v77 = &v74[v76[11]];
  *v77 = swift_getKeyPath();
  v77[8] = 0;
  v78 = &v74[v76[12]];
  *v78 = swift_getKeyPath();
  v78[8] = 0;
  v79 = (v43 + v73[13]);
  *v79 = sub_1000535FC;
  v79[1] = v70;
  v80 = v43 + v73[14];
  v120 = 0;
  v121 = 1;
  State.init(wrappedValue:)();
  v81 = BYTE8(v122);
  v82 = v123;
  *v80 = v122;
  v80[8] = v81;
  *(v80 + 2) = v82;
  v83 = v73[15];
  v120 = 0;
  State.init(wrappedValue:)();
  *(v43 + v83) = v122;
  v84 = v43 + v73[16];
  *v84 = swift_getKeyPath();
  v84[8] = 0;
  if (qword_10009F1F8 != -1)
  {
    swift_once();
  }

  v122 = xmmword_1000A4F08;

  v85 = Text.init<A>(_:)();
  v87 = v86;
  v89 = v88;
  v90 = v112;
  View.accessibilityLabel(_:)();
  sub_10004F02C(v85, v87, v89 & 1);

  sub_1000156F8(v43, &qword_1000A0A48, &qword_10007A948);
  v91 = v119;
  v92 = v114;
  sub_100015AC0(v119, v114, &qword_1000A0A50, &qword_10007A950);
  v93 = v115;
  sub_100015AC0(v42, v115, &qword_1000A0A40, &qword_10007A940);
  v94 = v42;
  v95 = v113;
  sub_100015AC0(v90, v113, &qword_1000A0A50, &qword_10007A950);
  v96 = v116;
  sub_100015AC0(v92, v116, &qword_1000A0A50, &qword_10007A950);
  v97 = sub_1000130DC(&qword_1000A0A68, &qword_10007A960);
  sub_100015AC0(v93, v96 + *(v97 + 48), &qword_1000A0A40, &qword_10007A940);
  sub_100015AC0(v95, v96 + *(v97 + 64), &qword_1000A0A50, &qword_10007A950);
  sub_1000156F8(v90, &qword_1000A0A50, &qword_10007A950);
  sub_1000156F8(v94, &qword_1000A0A40, &qword_10007A940);
  sub_1000156F8(v91, &qword_1000A0A50, &qword_10007A950);
  sub_1000156F8(v95, &qword_1000A0A50, &qword_10007A950);
  sub_1000156F8(v93, &qword_1000A0A40, &qword_10007A940);
  return sub_1000156F8(v92, &qword_1000A0A50, &qword_10007A950);
}

uint64_t sub_10003A150(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
    (*(v5 + 104))(v7, *a2, v4);

    v9(v7, 0);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003A2D4(uint64_t a1, double a2)
{
  if (qword_10009F2F0 != -1)
  {
    swift_once();
  }

  v8 = qword_1000A50E0;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;

  sub_100015758(a1, v7);
  sub_1000130DC(&qword_1000A0A30, &qword_10007A938);
  sub_1000130DC(&qword_1000A0670, &qword_10007A2C8);
  sub_100015A00(&qword_1000A0A38, &qword_1000A0A30, &qword_10007A938, &protocol conformance descriptor for [A]);
  sub_100013290();
  sub_100015A00(&qword_1000A0668, &qword_1000A0670, &qword_10007A2C8, &protocol conformance descriptor for Toggle<A>);
  return ForEach<>.init(_:id:content:)();
}

void *sub_10003A490@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {

    v8 = sub_10001CCAC();

    [v8 pointSize];
    v10 = v9;

    v11 = sub_1000298F4(a2 & 1, v10);
    v19 = v12;
    KeyPath = swift_getKeyPath();
    static Font.body.getter();
    v18 = Font.monospacedDigit()();

    v14 = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v16 = swift_getKeyPath();
    if (a3)
    {
      sub_10000A9D4(*(a1 + 40), *(a1 + 48));
      sub_10000A9D4(*(a1 + 56), *(a1 + 64));
    }

    static Alignment.center.getter();
    result = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v20[55] = v24;
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27;
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *(a4 + 145) = *&v20[64];
    *(a4 + 161) = *&v20[80];
    *(a4 + 177) = *&v20[96];
    *(a4 + 81) = *v20;
    *(a4 + 97) = *&v20[16];
    *(a4 + 113) = *&v20[32];
    *a4 = v11;
    *(a4 + 8) = v19;
    *(a4 + 16) = 0;
    *(a4 + 24) = KeyPath;
    *(a4 + 32) = 0;
    *(a4 + 40) = v14;
    *(a4 + 48) = v18;
    *(a4 + 56) = v15;
    *(a4 + 64) = 0x3FE999999999999ALL;
    *(a4 + 72) = v16;
    *(a4 + 80) = 1;
    *(a4 + 192) = *(&v27 + 1);
    *(a4 + 129) = *&v20[48];
    *(a4 + 200) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003A7AC(double *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for MainActor();
  sub_100015758(a2, v14);
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  v6 = *(a2 + 48);
  *(v5 + 64) = *(a2 + 32);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 64);
  *(v5 + 112) = *(a2 + 80);
  v7 = *(a2 + 16);
  *(v5 + 32) = *a2;
  *(v5 + 48) = v7;
  *(v5 + 120) = v3;
  sub_100015758(a2, v14);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = *(a2 + 48);
  *(v9 + 64) = *(a2 + 32);
  *(v9 + 80) = v10;
  *(v9 + 96) = *(a2 + 64);
  *(v9 + 112) = *(a2 + 80);
  v11 = *(a2 + 16);
  *(v9 + 32) = *a2;
  *(v9 + 48) = v11;
  *(v9 + 120) = v3;
  Binding.init(get:set:)();
  v14[0] = sub_1000298F4(1, v3);
  v14[1] = v12;
  sub_10004E904();
  return Toggle<>.init<A>(_:isOn:)();
}

uint64_t sub_10003A92C@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 8))
  {

    v5 = sub_10001C93C();

    if (v5 >> 62)
    {
LABEL_16:
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    do
    {
      v8 = v7;
      if (v6 == v7)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *&v5[v7 + 4];
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      [v9 pointSize];
      v12 = v11;

      v7 = v8 + 1;
    }

    while (v12 != a3);

    *a2 = v6 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AAA4(_BYTE *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v13 = *(a5 + 8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_didChangeValue);
      *v12 = a2;
      (*(v9 + 104))(v12, enum case for UITextFormattingViewController.ChangeValue.fontSize(_:), v8);

      v14(v12, 0);

      return (*(v9 + 8))(v12, v8);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

void *sub_10003AC94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A0A70, &qword_10007A968);
  v5 = v4[12];
  v6 = type metadata accessor for HoverEffect();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_10003ADD8(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = State.init(wrappedValue:)();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_10003ADD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v94 = a2;
  v93 = sub_1000130DC(&qword_1000A0A78, &qword_10007A970);
  __chkstk_darwin(v93);
  v88 = &v76 - v3;
  v4 = sub_1000130DC(&qword_1000A0A80, &qword_10007A978);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v76 - v8;
  v98 = sub_1000130DC(&qword_1000A0A88, &qword_10007A980);
  __chkstk_darwin(v98);
  v97 = &v76 - v10;
  v100 = sub_1000130DC(&qword_1000A0758, &qword_10007A518);
  v85 = *(v100 - 8);
  v11 = __chkstk_darwin(v100);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v76 - v14;
  v15 = type metadata accessor for LayoutDirection();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v96 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v76 - v19;
  v21 = sub_1000130DC(&qword_1000A0A90, &qword_10007A988);
  v22 = __chkstk_darwin(v21 - 8);
  v86 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v87 = &v76 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v76 - v27;
  __chkstk_darwin(v26);
  v101 = &v76 - v29;
  v90 = sub_1000130DC(&qword_1000A0A98, &qword_10007A990);
  __chkstk_darwin(v90);
  v92 = &v76 - v30;
  v79 = sub_1000130DC(&qword_1000A0AA0, &qword_10007A998);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v32 = &v76 - v31;
  v89 = sub_1000130DC(&qword_1000A0AA8, &qword_10007A9A0);
  __chkstk_darwin(v89);
  v80 = &v76 - v33;
  v91 = sub_1000130DC(&qword_1000A0AB0, &qword_10007A9A8);
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v82 = &v76 - v34;
  v35 = a1;
  v36 = sub_10000A634(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if (v37)
  {
    goto LABEL_5;
  }

  v38 = 2;
  if (*a1)
  {
    v38 = 3;
  }

  if (v38 < v36)
  {
LABEL_5:
    v82 = v28;
    v83 = v7;
    v95 = v9;
    v79 = *(type metadata accessor for TFTextAlignmentControl(0) + 28);
    sub_10000ABA0(v20);
    v39 = v16;
    v40 = *(v16 + 104);
    v41 = v96;
    LODWORD(v78) = enum case for LayoutDirection.leftToRight(_:);
    v77 = v40;
    v40(v96);
    v42 = static LayoutDirection.== infix(_:_:)();
    v43 = *(v39 + 8);
    v43(v41, v15);
    v80 = (v39 + 8);
    v43(v20, v15);
    v99 = v13;
    v81 = v15;
    v44 = v84;
    if (v42)
    {
      sub_10003C06C(0, v84);
    }

    else
    {
      sub_10003CA7C(0, v84);
    }

    sub_100015AC0(v44, v97, &qword_1000A0758, &qword_10007A518);
    swift_storeEnumTagMultiPayload();
    sub_1000514CC();
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v44, &qword_1000A0758, &qword_10007A518);
    sub_10003C568(0, v99);
    sub_10000ABA0(v20);
    v45 = v96;
    v46 = v81;
    v77(v96, v78, v81);
    v47 = static LayoutDirection.== infix(_:_:)();
    v43(v45, v46);
    v43(v20, v46);
    if (v47)
    {
      sub_10003CA7C(0, v44);
    }

    else
    {
      sub_10003C06C(0, v44);
    }

    v48 = v95;
    v49 = v82;
    sub_100015AC0(v44, v97, &qword_1000A0758, &qword_10007A518);
    swift_storeEnumTagMultiPayload();
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v44, &qword_1000A0758, &qword_10007A518);
    if (*v35 == 1)
    {
      sub_10003CF78(0, v44);
      sub_10001471C(v44, v48, &qword_1000A0758, &qword_10007A518);
      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    (*(v85 + 56))(v48, v50, 1, v100);
    v51 = v87;
    sub_100015AC0(v101, v87, &qword_1000A0A90, &qword_10007A988);
    sub_100015AC0(v99, v44, &qword_1000A0758, &qword_10007A518);
    v52 = v86;
    sub_100015AC0(v49, v86, &qword_1000A0A90, &qword_10007A988);
    v53 = v48;
    v54 = v83;
    sub_100015AC0(v53, v83, &qword_1000A0A80, &qword_10007A978);
    v55 = v88;
    sub_100015AC0(v51, v88, &qword_1000A0A90, &qword_10007A988);
    v56 = sub_1000130DC(&qword_1000A0AC0, &qword_10007A9B0);
    sub_100015AC0(v44, v55 + v56[12], &qword_1000A0758, &qword_10007A518);
    sub_100015AC0(v52, v55 + v56[16], &qword_1000A0A90, &qword_10007A988);
    sub_100015AC0(v54, v55 + v56[20], &qword_1000A0A80, &qword_10007A978);
    sub_1000156F8(v54, &qword_1000A0A80, &qword_10007A978);
    sub_1000156F8(v52, &qword_1000A0A90, &qword_10007A988);
    sub_1000156F8(v44, &qword_1000A0758, &qword_10007A518);
    sub_1000156F8(v51, &qword_1000A0A90, &qword_10007A988);
    sub_100015AC0(v55, v92, &qword_1000A0A78, &qword_10007A970);
    swift_storeEnumTagMultiPayload();
    v57 = sub_100051588();
    v58 = sub_10004E3D8();
    v103 = v89;
    v104 = &type metadata for TFMenuStyle;
    v105 = v57;
    v106 = v58;
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0AD8, &qword_1000A0A78, &qword_10007A970, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000156F8(v55, &qword_1000A0A78, &qword_10007A970);
    sub_1000156F8(v95, &qword_1000A0A80, &qword_10007A978);
    sub_1000156F8(v49, &qword_1000A0A90, &qword_10007A988);
    sub_1000156F8(v99, &qword_1000A0758, &qword_10007A518);
    return sub_1000156F8(v101, &qword_1000A0A90, &qword_10007A988);
  }

  else
  {
    v60 = __chkstk_darwin(v36);
    *(&v76 - 2) = a1;
    __chkstk_darwin(v60);
    *(&v76 - 2) = a1;
    sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
    sub_1000130DC(&qword_1000A0AE0, &qword_10007A9B8);
    sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
    sub_100015A00(&qword_1000A0AE8, &qword_1000A0AE0, &qword_10007A9B8, &protocol conformance descriptor for TupleView<A>);
    Menu.init(content:label:)();
    if (qword_10009F2B0 != -1)
    {
      swift_once();
    }

    v103 = qword_1000A5078;
    v104 = unk_1000A5080;
    sub_10004E904();

    v61 = Text.init<A>(_:)();
    v63 = v62;
    v65 = v64;
    sub_100015A00(&qword_1000A0AD0, &qword_1000A0AA0, &qword_10007A998, &protocol conformance descriptor for Menu<A, B>);
    v66 = v80;
    v67 = v79;
    View.accessibilityLabel(_:)();
    sub_10004F02C(v61, v63, v65 & 1);

    (*(v78 + 8))(v32, v67);
    v102[0] = 0;
    State.init(wrappedValue:)();
    v68 = v103;
    v69 = v104;
    LOBYTE(v103) = 0;
    LOBYTE(v104) = v68;
    v105 = v69;
    v70 = sub_100051588();
    v71 = sub_10004E3D8();
    v72 = v82;
    v73 = v89;
    View.menuStyle<A>(_:)();

    sub_1000156F8(v66, &qword_1000A0AA8, &qword_10007A9A0);
    v74 = v83;
    v75 = v91;
    v83[2](v92, v72, v91);
    swift_storeEnumTagMultiPayload();
    v103 = v73;
    v104 = &type metadata for TFMenuStyle;
    v105 = v70;
    v106 = v71;
    swift_getOpaqueTypeConformance2();
    sub_100015A00(&qword_1000A0AD8, &qword_1000A0A78, &qword_10007A970, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v74 + 8))(v72, v75);
  }
}

uint64_t sub_10003BC68@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1000130DC(&qword_1000A0A80, &qword_10007A978);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v38 - v7;
  v8 = sub_1000130DC(&qword_1000A0758, &qword_10007A518);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v40 = &v38 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v38 - v21;
  __chkstk_darwin(v20);
  v23 = 1;
  v25 = &v38 - v24;
  sub_10003C06C(1, &v38 - v24);
  v26 = v22;
  sub_10003C568(1, v22);
  v27 = v19;
  sub_10003CA7C(1, v19);
  if (*a1 == 1)
  {
    sub_10003CF78(1, v16);
    sub_10001471C(v16, v43, &qword_1000A0758, &qword_10007A518);
    v23 = 0;
  }

  v28 = v16;
  v29 = v43;
  (*(v9 + 56))(v43, v23, 1, v8);
  v38 = v28;
  v39 = v25;
  v30 = v28;
  sub_100015AC0(v25, v28, &qword_1000A0758, &qword_10007A518);
  v31 = v40;
  sub_100015AC0(v26, v40, &qword_1000A0758, &qword_10007A518);
  v32 = v27;
  v33 = v41;
  sub_100015AC0(v27, v41, &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v29, v6, &qword_1000A0A80, &qword_10007A978);
  v34 = v42;
  sub_100015AC0(v30, v42, &qword_1000A0758, &qword_10007A518);
  v35 = v6;
  v36 = sub_1000130DC(&qword_1000A0AF0, &qword_10007A9C0);
  sub_100015AC0(v31, v34 + v36[12], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v33, v34 + v36[16], &qword_1000A0758, &qword_10007A518);
  sub_100015AC0(v35, v34 + v36[20], &qword_1000A0A80, &qword_10007A978);
  sub_1000156F8(v29, &qword_1000A0A80, &qword_10007A978);
  sub_1000156F8(v32, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v26, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v39, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v35, &qword_1000A0A80, &qword_10007A978);
  sub_1000156F8(v33, &qword_1000A0758, &qword_10007A518);
  sub_1000156F8(v31, &qword_1000A0758, &qword_10007A518);
  return sub_1000156F8(v38, &qword_1000A0758, &qword_10007A518);
}

uint64_t sub_10003C06C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v34);
  v36 = &v33 - v10;
  v11 = 0;
  v12 = 0;
  if (a1)
  {
    if (qword_10009F1D8 != -1)
    {
      swift_once();
    }

    v11 = qword_1000A4EC8;
    v12 = qword_1000A4ED0;
  }

  v35 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_10003DB74(KeyPath);
  v16 = v15;
  v18 = v17;

  static SymbolRenderingMode.hierarchical.getter();
  *v9 = xmmword_100078D60;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = a1 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v22 = sub_100015B54();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_10000A814(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v36;
    sub_10005170C(v9, v36, type metadata accessor for TFToggle);
    v28 = (v27 + *(v34 + 36));
    *v28 = v25;
    v28[1] = sub_100053720;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v35;
    static Published.subscript.getter();

    v30 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = sub_100015B54();
    }

    if (qword_10009F1D8 != -1)
    {
      swift_once();
    }

    sub_10002D970(v31 & 1, 0, qword_1000A4EC8, qword_1000A4ED0, v37);
    return sub_1000156F8(v27, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003C568@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v33[-v5];
  v7 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v35);
  v37 = &v33[-v10];
  v11 = 0;
  v12 = 0;
  v34 = a1;
  if (a1)
  {
    if (qword_10009F1E0 != -1)
    {
      swift_once();
    }

    v11 = qword_1000A4ED8;
    v12 = qword_1000A4EE0;
  }

  v36 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_10003DB74(KeyPath);
  v16 = v15;
  v18 = v17;

  static SymbolRenderingMode.hierarchical.getter();
  *v9 = 0xD000000000000010;
  v9[1] = 0x800000010007D5D0;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = v34 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v22 = sub_100015B54();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_10000A814(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v37;
    sub_10005170C(v9, v37, type metadata accessor for TFToggle);
    v28 = &v27[*(v35 + 36)];
    *v28 = v25;
    v28[1] = sub_100053720;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v36;
    static Published.subscript.getter();

    v30 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = sub_100015B54();
    }

    if (qword_10009F1E0 != -1)
    {
      swift_once();
    }

    sub_10002D970(v31 & 1, 0, qword_1000A4ED8, qword_1000A4EE0, v38);
    return sub_1000156F8(v27, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CA7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v34);
  v36 = &v33 - v10;
  v11 = 0;
  v12 = 0;
  if (a1)
  {
    if (qword_10009F1E8 != -1)
    {
      swift_once();
    }

    v11 = qword_1000A4EE8;
    v12 = qword_1000A4EF0;
  }

  v35 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_10003DB74(KeyPath);
  v16 = v15;
  v18 = v17;

  static SymbolRenderingMode.hierarchical.getter();
  *v9 = xmmword_100078D70;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = a1 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v22 = sub_100015B54();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_10000A814(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v36;
    sub_10005170C(v9, v36, type metadata accessor for TFToggle);
    v28 = (v27 + *(v34 + 36));
    *v28 = v25;
    v28[1] = sub_100053720;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v35;
    static Published.subscript.getter();

    v30 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = sub_100015B54();
    }

    if (qword_10009F1E8 != -1)
    {
      swift_once();
    }

    sub_10002D970(v31 & 1, 0, qword_1000A4EE8, qword_1000A4EF0, v37);
    return sub_1000156F8(v27, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CF78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v33[-v5];
  v7 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1000130DC(&qword_1000A0498, &qword_10007A068);
  __chkstk_darwin(v35);
  v37 = &v33[-v10];
  v11 = 0;
  v12 = 0;
  v34 = a1;
  if (a1)
  {
    if (qword_10009F1F0 != -1)
    {
      swift_once();
    }

    v11 = qword_1000A4EF8;
    v12 = qword_1000A4F00;
  }

  v36 = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_10003DB74(KeyPath);
  v16 = v15;
  v18 = v17;

  static SymbolRenderingMode.hierarchical.getter();
  *v9 = 0xD000000000000014;
  v9[1] = 0x800000010007D5B0;
  v19 = (v9 + v7[6]);
  *v19 = v11;
  v19[1] = v12;
  *(v9 + v7[7]) = v34 & 1;
  v20 = v9 + v7[8];
  *v20 = v14;
  *(v20 + 1) = v16;
  v20[16] = v18 & 1;
  v21 = v9 + v7[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v22 = sub_100015B54();

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v24 = type metadata accessor for TFTextAlignmentControl(0);
      v23 = sub_10000A814(*(v2 + *(v24 + 32)), *(v2 + *(v24 + 32) + 8)) ^ 1;
    }

    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v23 & 1;
    v27 = v37;
    sub_10005170C(v9, v37, type metadata accessor for TFToggle);
    v28 = &v27[*(v35 + 36)];
    *v28 = v25;
    v28[1] = sub_100053720;
    v28[2] = v26;
    swift_getKeyPath();
    swift_getKeyPath();

    v29 = v36;
    static Published.subscript.getter();

    v30 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    if ((*(*(v30 - 8) + 48))(v29, 1, v30))
    {

      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = 0;
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v29, &qword_10009FAB0, &qword_1000781B8);
      v31 = sub_100015B54();
    }

    if (qword_10009F1F0 != -1)
    {
      swift_once();
    }

    sub_10002D970(v31 & 1, 0, qword_1000A4EF8, qword_1000A4F00, v38);
    return sub_1000156F8(v27, &qword_1000A0498, &qword_10007A068);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003D48C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10003D5E8();
  v4 = v3;
  v5 = static Font.title3.getter();
  v6 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + v6[9]) = 1;
  *(a1 + v6[10]) = 1;
  v7 = a1 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v6[12];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  v10 = a1 + v9[9];
  State.init(wrappedValue:)();
  *v10 = v15;
  *(v10 + 8) = v16;
  v11 = a1 + v9[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v9[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a1 + v9[12];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_10003D5E8()
{
  v1 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - v9;
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v21 = v0;
  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v13 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
    v14 = *(*(v13 - 8) + 48);
    if (v14(v12, 1, v13))
    {

      sub_1000156F8(v12, &qword_10009FAB0, &qword_1000781B8);
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v12, &qword_10009FAB0, &qword_1000781B8);
      v15 = sub_100015B54();

      if (v15)
      {
        return 0x696C612E74786574;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v14(v10, 1, v13))
    {

      sub_1000156F8(v10, &qword_10009FAB0, &qword_1000781B8);
    }

    else
    {
      UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
      sub_1000156F8(v10, &qword_10009FAB0, &qword_1000781B8);
      v16 = sub_100015B54();

      if (v16)
      {
        return 0xD000000000000010;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v14(v7, 1, v13))
    {

      sub_1000156F8(v7, &qword_10009FAB0, &qword_1000781B8);
      goto LABEL_12;
    }

    UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
    sub_1000156F8(v7, &qword_10009FAB0, &qword_1000781B8);
    v18 = sub_100015B54();

    if ((v18 & 1) == 0)
    {
LABEL_12:
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v14(v4, 1, v13))
      {

        sub_1000156F8(v4, &qword_10009FAB0, &qword_1000781B8);
      }

      else
      {
        UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
        sub_1000156F8(v4, &qword_10009FAB0, &qword_1000781B8);
        v19 = sub_100015B54();

        if ((v19 & 1) != 0 && *v21 == 1)
        {
          return 0xD000000000000014;
        }
      }
    }

    return 0x696C612E74786574;
  }

  type metadata accessor for TextFormattingState(0);
  sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003DB74(uint64_t a1)
{
  v3 = type metadata accessor for TFTextAlignmentControl(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000516A0(v1, v6, type metadata accessor for TFTextAlignmentControl);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_10005170C(v6, v10 + v8, type metadata accessor for TFTextAlignmentControl);
  *(v10 + v9) = a1;
  sub_1000516A0(v15[0], v6, type metadata accessor for TFTextAlignmentControl);
  v11 = a1;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10005170C(v6, v13 + v8, type metadata accessor for TFTextAlignmentControl);
  *(v13 + v9) = v11;
  Binding.init(get:set:)();
  return v15[1];
}

uint64_t sub_10003DD80@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1000130DC(&qword_10009FAB0, &qword_1000781B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    result = sub_1000156F8(v5, &qword_10009FAB0, &qword_1000781B8);
    v8 = 0;
  }

  else
  {
    UITextFormattingViewController.FormattingDescriptor.textAlignments.getter();
    sub_1000156F8(v5, &qword_10009FAB0, &qword_1000781B8);
    v8 = sub_100015B54();
  }

  *a2 = v8 & 1;
  return result;
}

uint64_t sub_10003DF08(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    v11 = *a5;
  }

  else
  {
    v11 = UITextFormattingViewControllerTextAlignmentNatural;
  }

  *v10 = v11;
  (*(v8 + 104))(v10, enum case for UITextFormattingViewController.ChangeValue.textAlignment(_:), v7);
  sub_100020CF0(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10003E02C@<X0>(uint64_t a1@<X2>, _BYTE *a3@<X8>)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 8);

    v4 = swift_readAtKeyPath();
    *a3 = *v5;
    v4(v7, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E10C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 8))
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E1C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = type metadata accessor for AccessibilityTraits();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v9 = __chkstk_darwin(v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v43 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v43 - v14;
  __chkstk_darwin(v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_10009F268 != -1)
    {
      swift_once();
    }

    v18 = qword_1000A4FE8;
    v19 = unk_1000A4FF0;
  }

  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = v45;

  v23 = v47;
  sub_10004E184(v47, a5, BYTE1(a5) & 1);
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  v26 = v46;
  *(v25 + 32) = v22;
  *(v25 + 40) = v26;
  *(v25 + 48) = v23;
  *(v25 + 56) = a5;
  *(v25 + 57) = BYTE1(a5) & 1;
  Binding.init(get:set:)();
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v57;
  static SymbolRenderingMode.hierarchical.getter();
  *v30 = xmmword_100078D80;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v27;
  *(v32 + 1) = v28;
  v32[16] = v29;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_10009F268 != -1)
  {
    swift_once();
  }

  v58 = qword_1000A4FE8;
  v59 = unk_1000A4FF0;
  sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
  sub_10004E904();
  v34 = v49;
  View.accessibilityLabel<A>(_:)();
  v35 = v44;
  static AccessibilityTraits.isToggle.getter();
  v36 = v50;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_1000156F8(v34, &qword_1000A02F8, &qword_100079E20);
  static AccessibilityTraits.isButton.getter();
  v39 = v52;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v36, &qword_1000A02F8, &qword_100079E20);
  v58 = _swiftEmptyArrayStorage;
  v55 = sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v54;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v39, &qword_1000A02F8, &qword_100079E20);
  sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000784C0;
  static AccessibilityTraits.isSelected.getter();
  v58 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v40, &qword_1000A02F8, &qword_100079E20);
  return sub_10004F14C(v57, type metadata accessor for TFToggle);
}

uint64_t sub_10003E850@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v56 = a6;
  v53 = type metadata accessor for AccessibilityTraits();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
  v9 = __chkstk_darwin(v51);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v43 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v43 - v14;
  __chkstk_darwin(v13);
  v54 = &v43 - v15;
  v16 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v16);
  v57 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = 0;
  v19 = 0;
  v48 = a1;
  if (a1)
  {
    if (qword_10009F260 != -1)
    {
      swift_once();
    }

    v18 = qword_1000A4FD8;
    v19 = unk_1000A4FE0;
  }

  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = v45;

  v23 = v47;
  sub_10004E184(v47, a5, BYTE1(a5) & 1);
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  v26 = v46;
  *(v25 + 32) = v22;
  *(v25 + 40) = v26;
  *(v25 + 48) = v23;
  *(v25 + 56) = a5;
  *(v25 + 57) = BYTE1(a5) & 1;
  Binding.init(get:set:)();
  v27 = v58;
  v28 = v59;
  v29 = v60;
  v30 = v57;
  static SymbolRenderingMode.hierarchical.getter();
  *v30 = xmmword_100078D90;
  v31 = (v30 + v16[6]);
  *v31 = v18;
  v31[1] = v19;
  *(v30 + v16[7]) = v48 & 1;
  v32 = v30 + v16[8];
  *v32 = v27;
  *(v32 + 1) = v28;
  v32[16] = v29;
  v33 = v30 + v16[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_10009F260 != -1)
  {
    swift_once();
  }

  v58 = qword_1000A4FD8;
  v59 = unk_1000A4FE0;
  sub_10004E2A4(&qword_1000A0340, type metadata accessor for TFToggle, &unk_10007B370);
  sub_10004E904();
  v34 = v49;
  View.accessibilityLabel<A>(_:)();
  v35 = v44;
  static AccessibilityTraits.isToggle.getter();
  v36 = v50;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37 = *(v55 + 8);
  v38 = v53;
  v37(v35, v53);
  sub_1000156F8(v34, &qword_1000A02F8, &qword_100079E20);
  static AccessibilityTraits.isButton.getter();
  v39 = v52;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v36, &qword_1000A02F8, &qword_100079E20);
  v58 = _swiftEmptyArrayStorage;
  v55 = sub_10004E2A4(&unk_1000A1650, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000130DC(&qword_1000A03F0, &qword_10007B5C0);
  sub_100015A00(&qword_1000A1660, &qword_1000A03F0, &qword_10007B5C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v54;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v39, &qword_1000A02F8, &qword_100079E20);
  sub_1000130DC(&qword_1000A03F8, &qword_100079F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000784C0;
  static AccessibilityTraits.isSelected.getter();
  v58 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v37(v35, v38);
  sub_1000156F8(v40, &qword_1000A02F8, &qword_100079E20);
  return sub_10004F14C(v57, type metadata accessor for TFToggle);
}

uint64_t sub_10003EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {

    sub_1000236EC(a8 & 1);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003EFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v33 = sub_1000130DC(&qword_1000A0B38, &qword_10007AAA0);
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = v32 - v10;
  v12 = sub_1000130DC(&qword_1000A0B40, &qword_10007AAA8);
  v13 = __chkstk_darwin(v12);
  v15 = v32 - v14;
  v16 = *(v13 + 48);
  v17 = type metadata accessor for HoverEffect();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *v15 = 0;
  v15[8] = 1;
  *(v15 + 9) = 257;
  v15[11] = 0;
  v32[1] = v12[13];
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4 & 0x1FF;
  sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  sub_1000130DC(&qword_1000A0A00, &unk_10007A900);
  sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
  sub_10004F8C4(&qword_1000A0A18, &qword_1000A0A00, &unk_10007A900);
  Menu.init(content:label:)();
  v42 = 0;
  State.init(wrappedValue:)();
  v18 = v39;
  v19 = v40;
  LOBYTE(v39) = 0;
  LOBYTE(v40) = v18;
  v41 = v19;
  sub_100015A00(&qword_1000A0B48, &qword_1000A0B38, &qword_10007AAA0, &protocol conformance descriptor for Menu<A, B>);
  sub_10004E3D8();
  v20 = v33;
  View.menuStyle<A>(_:)();

  (*(v9 + 8))(v11, v20);
  v21 = &v15[v12[14]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v15[v12[15]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v15[v12[16]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v15[v12[17]];
  v42 = 0;
  State.init(wrappedValue:)();
  v25 = v40;
  *v24 = v39;
  *(v24 + 1) = v25;
  if (qword_10009F2B8 != -1)
  {
    swift_once();
  }

  v39 = qword_1000A5088;
  v40 = unk_1000A5090;
  sub_10004E904();

  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  sub_100015A00(&qword_1000A0B50, &qword_1000A0B40, &qword_10007AAA8, &unk_10007B410);
  View.accessibilityLabel(_:)();
  sub_10004F02C(v26, v28, v30 & 1);

  return sub_1000156F8(v15, &qword_1000A0B40, &qword_10007AAA8);
}

uint64_t sub_10003F470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_10009F2F8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 41) = BYTE1(a4) & 1;

  sub_10004E184(a3, a4, BYTE1(a4) & 1);
  sub_1000130DC(&qword_1000A0A30, &qword_10007A938);
  sub_1000130DC(&qword_1000A0670, &qword_10007A2C8);
  sub_100015A00(&qword_1000A0A38, &qword_1000A0A30, &qword_10007A938, &protocol conformance descriptor for [A]);
  sub_100013290();
  sub_100015A00(&qword_1000A0668, &qword_1000A0670, &qword_10007A2C8, &protocol conformance descriptor for Toggle<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10003F638@<X0>(uint64_t a2@<X8>)
{
  v3 = static Font.title3.getter();
  v4 = type metadata accessor for TFSymbol(0);
  static SymbolRenderingMode.hierarchical.getter();
  *a2 = 0xD000000000000021;
  *(a2 + 8) = 0x800000010007D5F0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + v4[9]) = 1;
  *(a2 + v4[10]) = 1;
  v5 = a2 + v4[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  v8 = a2 + v7[9];
  State.init(wrappedValue:)();
  *v8 = v13;
  *(v8 + 8) = v14;
  v9 = a2 + v7[10];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a2 + v7[11];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v7[12];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_10003F794(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a5 >> 8) & 1;
  v10 = *a1;
  type metadata accessor for MainActor();

  sub_10004E184(a4, a5, v9);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 57) = v9;
  *(v12 + 64) = v10;

  sub_10004E184(a4, a5, v9);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 57) = v9;
  *(v14 + 64) = v10;
  Binding.init(get:set:)();
  sub_1000298F4(1, v10);
  sub_10004E904();
  return Toggle<>.init<A>(_:isOn:)();
}

uint64_t sub_10003F92C@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>, double a4@<D0>)
{
  if (a1)
  {

    v6 = COERCE_DOUBLE(sub_100021E64());
    v8 = v7;

    v10 = v6 == a4;
    if (v8)
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

_BYTE *sub_10003F9FC(_BYTE *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*result == 1)
  {
    if (a5)
    {

      sub_1000220E8(*&a2, 0);
    }

    else
    {
      type metadata accessor for TextFormattingState(0);
      sub_10004E2A4(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

void *sub_10003FAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000130DC(&qword_1000A0B58, &qword_10007AAB0);
  v5 = v4[12];
  v6 = type metadata accessor for HoverEffect();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_10003FC1C(v2, (a1 + v4[13]));
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = State.init(wrappedValue:)();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_10003FC1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v32 = sub_1000130DC(&qword_1000A0B60, &qword_10007AAB8);
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v29 - v4;
  v6 = sub_1000130DC(&qword_1000A0B68, &qword_10007AAC0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v30 = sub_1000130DC(&qword_1000A0B70, &qword_10007AAC8);
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v29 - v10;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 33);
  v15 = sub_10000A634(v12, v13 | (v14 << 8));
  if ((v16 & 1) == 0 && (v15 == 1 || v15 == 2 && (*a1 & 1) == 0))
  {
    sub_10004013C(v11);
    v25 = v30;
    (*(v9 + 16))(v8, v11, v30);
    swift_storeEnumTagMultiPayload();
    v26 = sub_100013694(&qword_1000A0B88, &qword_10007AAD8);
    v27 = sub_100051C74();
    v28 = sub_10004E3D8();
    v33 = v26;
    v34 = &type metadata for TFMenuStyle;
    v35 = v27;
    v36 = v28;
    swift_getOpaqueTypeConformance2();
    sub_100051D5C(&qword_1000A0BA8, &qword_1000A0B60, &qword_10007AAB8, sub_10004E2EC);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v25);
  }

  else
  {
    if (*a1)
    {
      v17 = &off_1000967A8;
    }

    else
    {
      if (qword_10009F2E8 != -1)
      {
        swift_once();
      }
    }

    v37 = v17;
    v38 = *(a1 + 8);
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    sub_100015AC0(&v38, &v33, &qword_1000A03B0, &qword_100079F30);
    sub_10004E184(v12, v13, v14);
    sub_1000130DC(&qword_1000A0198, &qword_10007AAD0);
    sub_1000130DC(&qword_1000A02F8, &qword_100079E20);
    sub_100015A00(&qword_1000A0B78, &qword_1000A0198, &qword_10007AAD0, &protocol conformance descriptor for [A]);
    sub_10004E2EC();
    sub_100051C20();
    ForEach<>.init(_:content:)();
    v20 = v32;
    (*(v3 + 16))(v8, v5, v32);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100013694(&qword_1000A0B88, &qword_10007AAD8);
    v22 = sub_100051C74();
    v23 = sub_10004E3D8();
    v33 = v21;
    v34 = &type metadata for TFMenuStyle;
    v35 = v22;
    v36 = v23;
    swift_getOpaqueTypeConformance2();
    sub_100051D5C(&qword_1000A0BA8, &qword_1000A0B60, &qword_10007AAB8, sub_10004E2EC);
    _ConditionalContent<>.init(storage:)();
    return (*(v3 + 8))(v5, v20);
  }
}

uint64_t sub_10004013C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1000130DC(&qword_1000A0BA0, &qword_10007AAE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v16[0] = sub_1000130DC(&qword_1000A0B88, &qword_10007AAD8);
  __chkstk_darwin(v16[0]);
  v7 = v16 - v6;
  v18 = v1;
  v17 = v1;
  sub_1000130DC(&qword_1000A0648, &qword_10007A2B8);
  sub_1000130DC(&qword_1000A0BB0, &qword_10007AAE8);
  sub_100015A00(&qword_1000A0658, &qword_1000A0648, &qword_10007A2B8, &unk_10007B2E8);
  sub_100015A00(&qword_1000A0BB8, &qword_1000A0BB0, &qword_10007AAE8, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  if (qword_10009F2C0 != -1)
  {
    swift_once();
  }

  v19 = qword_1000A5098;
  v20 = unk_1000A50A0;
  sub_10004E904();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  sub_100015A00(&qword_1000A0B98, &qword_1000A0BA0, &qword_10007AAE0, &protocol conformance descriptor for Menu<A, B>);
  View.accessibilityLabel(_:)();
  sub_10004F02C(v8, v10, v12 & 1);

  (*(v3 + 8))(v5, v2);
  v22[0] = 0;
  State.init(wrappedValue:)();
  v13 = v19;
  v14 = v20;
  LOBYTE(v19) = 0;
  LOBYTE(v20) = v13;
  v21 = v14;
  sub_100051C74();
  sub_10004E3D8();
  View.menuStyle<A>(_:)();

  return sub_1000156F8(v7, &qword_1000A0B88, &qword_10007AAD8);
}

uint64_t sub_1000404AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v40 = type metadata accessor for TFToggle(0);
  __chkstk_darwin(v40);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v41 = *a1;
  v47 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  type metadata accessor for MainActor();
  sub_100015AC0(&v47, &v44, &qword_1000A03B0, &qword_100079F30);
  sub_10004E184(v8, v9, v10);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a2 + 32);
  *(v12 + 66) = v7;
  sub_100015AC0(&v47, &v44, &qword_1000A03B0, &qword_100079F30);
  sub_10004E184(v8, v9, v10);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 32);
  *(v15 + 66) = v7;
  Binding.init(get:set:)();
  v18 = v44;
  v17 = v45;
  v19 = *&aListBullistDas[8 * v7];
  v20 = v46;
  v21 = v9 | (v10 << 8);
  v22 = *&aListBullistDas[8 * v7 + 32];
  v23 = sub_10000A634(v8, v21);
  if (v24)
  {
    v25 = v19;
    v26 = 0;
    v27 = 0;
    v28 = v41;
  }

  else
  {
    v28 = v41;
    if (v23 == 1 || v23 == 2 && (*a2 & 1) == 0)
    {
      if (v41 > 1)
      {
        if (v41 == 2)
        {
          v25 = v19;
          if (qword_10009F248 != -1)
          {
            swift_once();
          }

          v29 = &qword_1000A4FA8;
        }

        else
        {
          v25 = v19;
          if (qword_10009F230 != -1)
          {
            swift_once();
          }

          v29 = &qword_1000A4F78;
        }
      }

      else if (v41)
      {
        v25 = v19;
        if (qword_10009F240 != -1)
        {
          swift_once();
        }

        v29 = &qword_1000A4F98;
      }

      else
      {
        v25 = v19;
        if (qword_10009F238 != -1)
        {
          swift_once();
        }

        v29 = &qword_1000A4F88;
      }

      v26 = *v29;
      v27 = v29[1];
    }

    else
    {
      v25 = v19;
      v26 = 0;
      v27 = 0;
    }
  }

  v30 = v40;
  static SymbolRenderingMode.hierarchical.getter();
  *v6 = v25;
  v6[1] = v22;
  v31 = (v6 + v30[6]);
  *v31 = v26;
  v31[1] = v27;
  *(v6 + v30[7]) = 0;
  v32 = v6 + v30[8];
  *v32 = v18;
  *(v32 + 1) = v17;
  v32[16] = v20;
  v33 = v6 + v30[9];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v44 = v18;
  v45 = v17;
  v46 = v20;

  sub_1000130DC(&unk_1000A1640, &qword_10007AB00);
  Binding.wrappedValue.getter();
  v34 = v43;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (qword_10009F248 != -1)
      {
        swift_once();
      }

      v35 = &qword_1000A4FA8;
    }

    else
    {
      if (qword_10009F230 != -1)
      {
        swift_once();
      }

      v35 = &qword_1000A4F78;
    }
  }

  else if (v28)
  {
    if (qword_10009F240 != -1)
    {
      swift_once();
    }

    v35 = &qword_1000A4F98;
  }

  else
  {
    if (qword_10009F238 != -1)
    {
      swift_once();
    }

    v35 = &qword_1000A4F88;
  }

  v36 = *v35;
  v37 = v35[1];

  sub_10002DF08(v34, 0, v36, v37, v42);

  return sub_10004F14C(v6, type metadata accessor for TFToggle);
}