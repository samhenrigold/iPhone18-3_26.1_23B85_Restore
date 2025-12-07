UIFontTextStyle sub_1001D3C7C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094CE90);
  v1 = sub_10000A61C(v0, qword_10094CE90);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_1001D3D44(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_10093F9E8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_10094CE90);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

id sub_1001D3F20(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&qword_10094CF28, &qword_1007938E8);
  __chkstk_darwin(v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  v13 = sub_10000A5D4(&qword_10094CF18, "B=\b");
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons] = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton(0);
  sub_10076D4CC();
  sub_1001D52C4();
  sub_10076E18C();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v14;
}

void sub_1001D42E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_10077158C();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = &v6[qword_1009A0758];
      v9 = *&v6[qword_1009A0758];
      v10 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      [v7 setTitle:0 forState:{0, sub_1000167E0(v9, v10)}];
      swift_beginAccess();
      sub_10000A5D4(&qword_10094CF58, qword_1007938F8);
      sub_10076E17C();
      swift_endAccess();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1001D447C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076F9AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = ObjectType;
  swift_beginAccess();
  sub_10000A5D4(&qword_10094CF58, qword_1007938F8);
  sub_10076E15C();
  swift_endAccess();
  v11 = *&v23[0];
  [v11 _setWantsAccessibilityUnderline:0];
  v12 = [v11 titleLabel];

  if (v12)
  {
    [v12 setNumberOfLines:2];
  }

  sub_100760ABC();
  v13 = sub_10076FF6C();

  [v11 setTitle:v13 forState:0];

  sub_100760AAC();
  sub_1007713CC();
  sub_100016C74(v24);
  memset(v24, 0, 32);
  memset(v23, 0, sizeof(v23));
  sub_10076F95C();

  sub_10000CFBC(v23, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v24, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = &v11[qword_1009A0758];
  v16 = *&v11[qword_1009A0758];
  v17 = *&v11[qword_1009A0758 + 8];
  *v15 = sub_1001D5938;
  v15[1] = v14;

  sub_1000167E0(v16, v17);
  v18 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v19 = v11;
  sub_10077019C();
  if (*((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  v20 = [v3 contentView];
  [v20 addSubview:v19];
}

char *sub_1001D47F4@<X0>(char **a1@<X8>)
{
  v2 = sub_10076D9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RoundedTitledButton(0);
  if (qword_100940F50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v6, qword_1009A1BE8);
  (*(v7 + 16))(v9, v10, v6);
  if (qword_10093F9F0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v2, qword_10094CEA8);
  (*(v3 + 16))(v5, v11, v2);
  result = sub_1005267B4(v9, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1001D49F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  result = sub_100760ACC();
  if (result)
  {
    v7 = result;
    v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v7, 1, a2, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t sub_1001D4B64()
{
  v1 = v0;
  v23 = sub_10076D1FC();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094CF38, &qword_1007938F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1007674DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007674FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10093F9D0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v8, qword_10099D828);
  (*(v9 + 16))(v11, v17, v8);
  swift_beginAccess();

  sub_10016E2BC(v18);

  v19 = OBJC_IVAR____TtC20ProductPageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  swift_beginAccess();
  sub_1001D5940(v1 + v19, v7);
  sub_1007674EC();
  v20 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_1007674AC();
  (*(v2 + 8))(v4, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_1001D4F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledButtonStackCollectionViewCell(uint64_t a1)
{
  result = qword_10094CEF8;
  if (!qword_10094CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D50E0(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_1001D51F0(319);
    if (v2 <= 0x3F)
    {
      sub_1001D5254(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001D51F0(uint64_t a1)
{
  if (!qword_10094CF10)
  {
    sub_10000CE78(&qword_10094CF18, "B=\b");
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10094CF10);
    }
  }
}

void sub_1001D5254(uint64_t a1)
{
  if (!qword_10094CF20)
  {
    sub_10000CE78(&qword_10094CF28, &qword_1007938E8);
    sub_1001D52C4();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_10094CF20);
    }
  }
}

unint64_t sub_1001D52C4()
{
  result = qword_10094CF30;
  if (!qword_10094CF30)
  {
    sub_10000CE78(&qword_10094CF28, &qword_1007938E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF30);
  }

  return result;
}

void *sub_1001D5328(uint64_t a1, uint64_t a2)
{
  result = sub_10076DDDC();
  v7[3] = result;
  v7[4] = &protocol witness table for LayoutViewPlaceholder;
  v7[0] = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10000A5D4(&qword_10094CF50, &unk_100791F20);
      v5 = sub_10077023C();
      v5[2] = a2;
      v6 = (v5 + 4);
      do
      {
        sub_10000A570(v7, v6);
        v6 += 40;
        --a2;
      }

      while (a2);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_10000CD74(v7);
    return v5;
  }

  return result;
}

double sub_1001D53DC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v38 = a2;
  v34 = a1;
  v37 = sub_10075DFDC();
  __chkstk_darwin(v37);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v32 - v6;
  v7 = sub_10000A5D4(&unk_10094CF38, &qword_1007938F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007674DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1007674FC();
  v18 = *(v33 - 8);
  __chkstk_darwin(v33);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F9D0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v14, qword_10099D828);
  (*(v15 + 16))(v17, v21, v14);
  sub_1007674CC();
  v22 = v40;
  sub_10000CF78(v39, v40);
  sub_1000FF02C(v22);
  sub_10076D40C();
  (*(v11 + 8))(v13, v10);
  sub_10000CD74(v39);
  sub_10076DDDC();
  swift_allocObject();
  v23 = sub_10076DDBC();
  v24 = sub_100763C2C();
  if (v24 >> 62)
  {
    v25 = sub_10077158C();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1001D5328(v23, v25);
  sub_100763C1C();
  sub_100763C0C();
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  v26 = sub_10000A5D4(&qword_10094CF18, "B=\b");
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  sub_1007674EC();
  sub_1001D5898(v27);
  v28 = v33;
  sub_10076D2AC();
  v30 = v29;
  (*(v18 + 8))(v20, v28);
  return v30;
}

unint64_t sub_1001D5898(__n128 a1)
{
  result = qword_10094CF48;
  if (!qword_10094CF48)
  {
    sub_1007674FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF48);
  }

  return result;
}

uint64_t sub_1001D58F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D5940(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094CF38, &qword_1007938F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D59C4()
{
  result = qword_10094CF60;
  if (!qword_10094CF60)
  {
    sub_10075F94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CF60);
  }

  return result;
}

uint64_t sub_1001D5A24(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v85 = a1;
  v58 = sub_10076F4FC();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10075F93C();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v55 - v5;
  v6 = sub_10076608C();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10075EBAC();
  v63 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v84 = sub_10076B96C();
  v13 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10076810C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v59 = sub_10076FCEC();
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v76 = v17;
  sub_1007680FC();
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076F64C();
  sub_10076FC1C();
  swift_getObjectType();
  sub_10075F8FC();
  v18 = sub_10075EE2C();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v84);
  swift_getObjectType();
  v74 = v12;
  v55[1] = v18;
  sub_10075ED1C();
  v19 = sub_10076417C();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = *(v81 + 16);
    v21 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v55[0] = v19;
    v22 = v19 + v21;
    v83 = *(v81 + 72);
    v68 = enum case for RateAction.Parameter.rating(_:);
    v77 = v82 + 1;
    v78 = (v82 + 13);
    v82 = (v81 + 8);
    v72 = (v63 + 16);
    v71 = (v63 + 88);
    v70 = enum case for LegacyAppState.openable(_:);
    v66 = (v63 + 8);
    v65 = (v63 + 96);
    v64 = enum case for RateAction.Parameter.version(_:);
    v79 = v6;
    v81 += 16;
    v84(v8, v19 + v21, v6);
    while (1)
    {
      v23 = sub_10075F90C();
      if ((v24 & 1) == 0)
      {
        v38 = v23;
        v39 = sub_10076604C();
        v41 = v40;
        v42 = v69;
        v43 = v80;
        (*v78)(v69, v68, v80);
        v44 = sub_10075F92C();
        v46 = v45;
        (*v77)(v42, v43);
        if (v39 == v44 && v41 == v46)
        {

          v6 = v79;
LABEL_15:
          v86 = v38;
          sub_10077163C();
          sub_1007680EC();

          (*v82)(v8, v6);
          goto LABEL_4;
        }

        v47 = sub_10077167C();

        v6 = v79;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v25 = v73;
      v26 = v75;
      (*v72)(v73, v74, v75);
      v27 = (*v71)(v25, v26);
      if (v27 != v70)
      {
        (*v82)(v8, v6);
        (*v66)(v25, v26);
        goto LABEL_4;
      }

      (*v65)(v25, v26);
      v28 = *&v25[*(sub_10000A5D4(&unk_100942CF0, &qword_100784A60) + 48)];
      v29 = sub_100764E5C();
      (*(*(v29 - 8) + 8))(v25, v29);
      v30 = sub_10076604C();
      v32 = v31;
      v33 = v67;
      v34 = v80;
      (*v78)(v67, v64, v80);
      v35 = sub_10075F92C();
      v37 = v36;
      (*v77)(v33, v34);
      if (v30 == v35 && v32 == v37)
      {
        break;
      }

      v48 = sub_10077167C();

      v6 = v79;
      if (v48)
      {
        goto LABEL_17;
      }

      (*v82)(v8, v79);

LABEL_4:
      v22 += v83;
      if (!--v20)
      {
        goto LABEL_19;
      }

      v84(v8, v22, v6);
    }

    v6 = v79;
LABEL_17:
    v49 = [v28 stringValue];
    sub_10076FF9C();

    sub_1007680EC();

    (*v82)(v8, v6);
    goto LABEL_4;
  }

LABEL_19:

  v50 = v56;
  sub_10076F4DC();
  sub_10076415C();
  v51 = v63;
  v52 = v59;
  (*(v57 + 8))(v50, v58);

  sub_100564040(v53, 1, v62);

  sub_10076FC4C();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v74, v75);
  (*(v60 + 8))(v76, v61);
  return v52;
}

uint64_t sub_1001D662C()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10076C2DC();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v16 = *(sub_10076C20C() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C27C();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  v44 = v6;
  sub_10076C29C();
  v41 = v15;
  v43 = v12;
  sub_10076C1CC();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4008000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007704BC();
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v34 = v9;
  sub_10076C1CC();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4018000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10094CF68 = v39;
  return result;
}

char *sub_1001D7048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0 &unk_100787860))];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10000A5D4(&qword_1009453E8, &unk_100788D00) + 48);
  *v9 = 1;
  v12 = sub_10075F37C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_100527CDC(v15);
  v17 = v16;
  sub_100036758(v9);
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton(0));

  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100347468(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = sub_10076C03C();
  v41[3] = v24;
  v41[4] = sub_1001D7794();
  v25 = sub_10000DB7C(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = sub_10076C90C();
  sub_10000CD74(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_10095D510] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_10095D518] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_10095D520] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v34 = swift_allocObject();
  v39 = xmmword_100783DD0;
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = sub_10076E59C();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = sub_1007706CC();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

unint64_t sub_1001D7794()
{
  result = qword_100947230;
  if (!qword_100947230)
  {
    sub_10076C03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947230);
  }

  return result;
}

__n128 sub_1001D77EC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1001D7838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D7880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D7908(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D7928(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

void sub_1001D7974(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = CGRectGetWidth(*&a2) * *(v5 + 56);
  v12 = v11 * *(v5 + 16);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  v13 = *(v5 + 64) + v11 + (CGRectGetWidth(v16) - v11) * 0.5 - v12;
  v14 = *(v5 + 32);
  v17.origin.x = v13;
  v17.origin.y = v14;
  v17.size.width = v12;
  v17.size.height = v12;
  CGRectGetMidX(v17);
  v18.origin.x = v13;
  v18.origin.y = v14;
  v18.size.width = v12;
  v18.size.height = v12;
  CGRectGetMidY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  sub_10000CF78((v5 + 72), *(v5 + 96));
  sub_10076E0EC();
  sub_10000CF78(v6 + 24, v6[27]);
  sub_10076E0EC();
  sub_10000CF78(v6 + 14, v6[17]);
  sub_10076E0EC();
  sub_10000CF78(v6 + 19, v6[22]);
  sub_10076E0EC();
}

__n128 sub_1001D7B78@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

void sub_1001D7B94(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001DAA10(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1001D7E28()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView(uint64_t a1)
{
  result = qword_10094D000;
  if (!qword_10094D000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1001D7FC8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D802C;
}

void sub_1001D802C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1001D8154()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_10076422C();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView];
    sub_10076422C();
    v3 = v2;
    v5 = v4;
    sub_1004B67D8(v15);
    sub_1004B8E04(v0, v15, v3, v5);
    sub_10005AE58(v15);
    sub_10076422C();
    CGRectGetMinX(v18);
    sub_10076422C();
    CGRectGetMinY(v19);
    sub_10076422C();
    sub_100770A4C();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v9 = v0;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_10076422C();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_10076422C();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_10076422C();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_1001D84FC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer];
  if ((sub_100770EEC() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_100770EEC();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = sub_100770EEC();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_1001DAD84;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10009AEDC;
    v67 = &unk_10088C000;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_1001DAD9C;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_10088C050;
LABEL_30:
    v66 = sub_1000513F0;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = sub_100770EEC();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_1001DAD84;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10009AEDC;
    v67 = &unk_10088C0A0;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_1001DAD9C;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_10088C0F0;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100016E2C(v18 + v20, v9, &qword_100952650, &unk_10079B720);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100952650;
    v22 = &unk_10079B720;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100761FEC();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_10076B88C();

    sub_100761FDC();
    v50 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_100761FEC();
      v52 = sub_100761FDC();
      sub_100263BF0(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100943200;
    v22 = &unk_100785840;
    v23 = v6;
  }

  sub_10000CFBC(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_100770EEC();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_1001DAA90;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10009AEDC;
      v67 = &unk_10088BF60;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_1001DAAB4;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_10088BFB0;
      goto LABEL_30;
    }
  }
}

id sub_1001D8EF4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_1001D8F54(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_100016E2C(&v3[v21], v7, &qword_100952650, &unk_10079B720);
    v22 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10000CFBC(v7, &qword_100952650, &unk_10079B720);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_1001D9234(uint64_t a1)
{
  sub_1001D92E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D92E0(uint64_t a1)
{
  if (!qword_10094D010)
  {
    sub_10000CE78(&qword_100955BD0, &unk_10079B700);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10094D010);
    }
  }
}

uint64_t (*sub_1001D9368(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001D7FC8(v2);
  return sub_100019A4C;
}

double sub_1001D93EC(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v3);
  sub_10076422C();
  CGRectGetHeight(v4);
  sub_10076422C();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_1001D9464(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v4);
  sub_10076422C();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_1001D9510()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView, &unk_100793BA8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001D9584(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView, &unk_100793BA8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1001D9610(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1001DAA10(&unk_10094D030, type metadata accessor for AppPromotionView, &unk_100793BA8);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1001D96CC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

double sub_1001D984C(void *a1, void *a2, double a3, double a4)
{
  v111 = sub_10077164C();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076D93C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10076D95C();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10076DE7C();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v98 - v11;
  v105 = sub_10076443C();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = (&v98 - v14);
  __chkstk_darwin(v15);
  v101 = &v98 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  v20 = sub_100763ADC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v98 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100016E2C(a2 + v27[18], &v123, &unk_10094DA00, &qword_100783FA0);
  v112 = v124;
  sub_10000CFBC(&v123, &unk_10094DA00, &qword_100783FA0);
  v120 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  LOBYTE(a1) = sub_10077087C();

  if (a1)
  {
    v30 = v27[13];
    v31 = v27[14];
    v32 = v27[16];
    v98 = v27[15];
    v106 = v32;
    LODWORD(v102) = *(a2 + v27[19]);
    if (qword_10093F630 != -1)
    {
      swift_once();
    }

    v99 = (a2 + v30);
    v33 = (a2 + v31);
    v34 = sub_10000A61C(v20, qword_10099CCB8);
    v103 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v36 = v35;
    v37 = [v120 traitCollection];
    (*(v21 + 16))(v26, v34, v20);
    v38 = sub_100763A4C();
    v40 = v108;
    v100 = v33;
    if ((v41 & 1) == 0 && ((v38 | v39) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v42 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v42 = qword_100944CA0;
      }

      v52 = v105;
      v53 = sub_10000A61C(v105, v42);
      v54 = v104;
      v55 = v101;
      (*(v104 + 16))(v101, v53, v52);
      (*(v54 + 32))(v19, v55, v52);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v54 + 8))(v19, v52);
    }

    sub_10076398C();
    v57 = v56;

    (*(v21 + 8))(v26, v20);
    *&v121 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v124 = &type metadata for CGFloat;
    v125 = &protocol witness table for CGFloat;
    *&v123 = v36;
    v59 = v113;
    *(inited + 56) = v113;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v60 = v120;
    v61 = v111;
    if (v112)
    {
      v124 = &type metadata for CGFloat;
      v125 = &protocol witness table for CGFloat;
      *&v123 = ceil(v57 + 16.0 + 16.0);
      v62 = v107;
      sub_10076DE8C();
      v63 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_10049CD5C(0, v63[2] + 1, 1, v63);
      }

      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        v63 = sub_10049CD5C((v64 > 1), v65 + 1, 1, v63);
      }

      v124 = v59;
      v125 = &protocol witness table for VerticalSpaceMeasurable;
      v66 = sub_10000DB7C(&v123);
      v67 = v110;
      (*(v110 + 16))(v66, v62, v59);
      v63[2] = v65 + 1;
      sub_100012498(&v123, &v63[5 * v65 + 4]);
      (*(v67 + 8))(v62, v59);
      *&v121 = v63;
    }

    (*(v115 + 104))(v114, enum case for StackMeasurable.Axis.vertical(_:), v116);
    v68 = v117;
    sub_10076D94C();
    sub_10076D92C();
    v70 = v69;
    (*(v118 + 8))(v68, v119);
    v71 = a2[3];
    sub_10000CF78(a2, v71);
    sub_1000FF02C(v71);
    sub_10076D40C();
    v119 = *(v109 + 8);
    v119(v40, v61);
    sub_100770ACC();
    sub_10000CF78(v99, v99[3]);
    sub_10076D2AC();
    v73 = v72;
    v74 = v103;
    sub_10000CF78((a2 + v103[6]), *(a2 + v103[6] + 24));
    sub_10076D42C();
    *&v123 = v73;
    sub_10076D3FC();
    sub_10000CF78(v100, v100[3]);
    sub_10076D2AC();
    v76 = v75;
    sub_10000CF78((a2 + v74[7]), *(a2 + v74[7] + 24));
    sub_10076D42C();
    *&v123 = v76;
    sub_10076D3FC();
    if (v102)
    {
      sub_10000CF78((a2 + v98), *(a2 + v98 + 24));
      v77 = [v60 traitCollection];
      sub_10076E0FC();

      sub_10000CF78((a2 + v74[8]), *(a2 + v74[8] + 24));
      v78 = [v60 traitCollection];
      sub_10076D41C();

      v79 = (a2 + v74[9]);
      v80 = v79[3];
      sub_10000CF78(v79, v80);
      sub_1000FF02C(v80);
      sub_10076D40C();
      v119(v40, v111);
    }

    sub_100016E2C(&v106[a2], &v121, &unk_10094DA00, &qword_100783FA0);
    if (v122)
    {
      sub_100012498(&v121, &v123);
      sub_10000CF78(&v123, v124);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v123, v124);
        sub_10076D2AC();
      }

      sub_10000CD74(&v123);
    }

    else
    {
      sub_10000CFBC(&v121, &unk_10094DA00, &qword_100783FA0);
    }
  }

  else
  {
    if (qword_10093F628 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A61C(v20, qword_10099CCA0);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v45 = v44;
    v46 = [v120 traitCollection];
    (*(v21 + 16))(v23, v43, v20);
    v47 = sub_100763A4C();
    v49 = v113;
    if ((v50 & 1) == 0 && ((v47 | v48) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v51 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v51 = qword_100944CA0;
      }

      v81 = v105;
      v82 = sub_10000A61C(v105, v51);
      v83 = v104;
      v84 = v102;
      (*(v104 + 16))(v102, v82, v81);
      v85 = v103;
      (*(v83 + 32))(v103, v84, v81);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v83 + 8))(v85, v81);
    }

    sub_10076398C();
    v87 = v86;

    (*(v21 + 8))(v23, v20);
    *&v121 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_100783DD0;
    v124 = &type metadata for CGFloat;
    v125 = &protocol witness table for CGFloat;
    *&v123 = v45;
    *(v88 + 56) = v49;
    *(v88 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((v88 + 32));
    sub_10076DE8C();
    sub_1000F9168(v88);
    if (v112)
    {
      v124 = &type metadata for CGFloat;
      v125 = &protocol witness table for CGFloat;
      *&v123 = ceil(v87 + 4.0 + 4.0);
      v89 = v106;
      sub_10076DE8C();
      v90 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_10049CD5C(0, v90[2] + 1, 1, v90);
      }

      v92 = v90[2];
      v91 = v90[3];
      if (v92 >= v91 >> 1)
      {
        v90 = sub_10049CD5C((v91 > 1), v92 + 1, 1, v90);
      }

      v124 = v49;
      v125 = &protocol witness table for VerticalSpaceMeasurable;
      v93 = sub_10000DB7C(&v123);
      v94 = v110;
      (*(v110 + 16))(v93, v89, v49);
      v90[2] = v92 + 1;
      sub_100012498(&v123, &v90[5 * v92 + 4]);
      (*(v94 + 8))(v89, v49);
      *&v121 = v90;
    }

    (*(v115 + 104))(v114, enum case for StackMeasurable.Axis.vertical(_:), v116);
    v95 = v117;
    sub_10076D94C();
    sub_10076D92C();
    v70 = v96;
    (*(v118 + 8))(v95, v119);
  }

  return v70;
}

uint64_t sub_1001DAA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DAA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001DAA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001DAAB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001DAAF0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_1001DAB1C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  v3 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

void sub_1001DADA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_1007666AC());
  *&v4[v14] = sub_10076669C();
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView] = v17;
  v19 = qword_10093FA00;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v22 = qword_10094D060;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016F40(0, &qword_10094F610, UIImage_ptr), v25 = v22, v26 = sub_100770EEC(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10093FA08;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_10094D068);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1005A806C(v12);

  v34 = qword_10093FA10;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1001E083C(&qword_10094D080, v69);
  v36 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E0898(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1001E08F4(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView] = v37;
  v39 = qword_10093FA18;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_10094D0A8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_100662DD4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for LockupCollectionSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v47 setClipsToBounds:0];
  v48 = sub_1001DC7CC();
  v49 = [objc_allocWithZone(UICollectionView) initWithFrame:v48 collectionViewLayout:{a1, a2, a3, a4}];

  v50 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v51 = *&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  *&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView] = v49;
  v52 = v49;

  if (!v52)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v53 = *&v47[v50];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v53 setClipsToBounds:0];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView]];
  v54 = *&v47[v50];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v54 setDelegate:v47];
  v55 = *&v47[v50];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 clearColor];
  [v57 setBackgroundColor:v58];

  v59 = *&v47[v50];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v59;
  sub_1007708FC();
  v62 = sub_10076FF6C();

  [v61 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v62];

  v63 = *&v47[v50];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v64 = swift_getObjCClassFromMetadata();
  v65 = v63;
  sub_1007708FC();
  v66 = sub_10076FF6C();

  sub_1007708FC();
  v67 = sub_10076FF6C();

  [v65 registerClass:v64 forSupplementaryViewOfKind:v66 withReuseIdentifier:v67];

  if (*&v47[v50])
  {
    [v47 addSubview:?];

    return;
  }

LABEL_26:
  __break(1u);
}

double sub_1001DB574(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    sub_10076813C();
    swift_allocObject();

    v3 = sub_10076814C();

    *(v2 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v3;
  }

  return result;
}

uint64_t (*sub_1001DB630(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1001DB6C8;
}

void sub_1001DB6C8(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v4 = v3[4];
      sub_10076813C();
      swift_allocObject();
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = sub_10076814C();
    }
  }

  free(v3);
}

uint64_t sub_1001DB79C()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10094D060 = v5;
  return result;
}

void sub_1001DB8A8()
{
  qword_10094D098 = &type metadata for CGFloat;
  unk_10094D0A0 = &protocol witness table for CGFloat;
  qword_10094D080 = 0x4008000000000000;
}

id sub_1001DB8E4(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_10076D3DC();
  sub_10000DB18(v5, a2);
  v6 = sub_10000A61C(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_1001DB9A0()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094D0C0);
  v1 = sub_10000A61C(v0, qword_10094D0C0);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001DBA68()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10093FA20 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_10094D0C0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_10076D9AC();
  v12 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000DB7C(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  sub_10003F19C(&v13, &unk_10094D0D8);
  return sub_10003F19C(&v10, &unk_10094D100);
}

id sub_1001DBC90(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_1001DBD6C()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10076D1AC();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766BEC();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = sub_10076443C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_100763ADC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v15, qword_10099DDA0);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = sub_100763A4C();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v26 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v26 = qword_100944CA0;
    }

    v27 = sub_10000A61C(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v10 + 8))(v14, v9);
  }

  sub_10076398C();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView);
  v79[3] = type metadata accessor for SearchHeadingView();
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v32)
  {
    __break(1u);
    return;
  }

  v58 = v1;
  v77[0] = v32;
  sub_100016F40(0, &unk_10094D220, UICollectionView_ptr);
  v33 = v30;
  v34 = v31;
  sub_10076D28C();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_10093FA08 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v35 = sub_10076D3DC();
  v36 = sub_10000A61C(v35, qword_10094D068);
  v37 = *(v35 - 8);
  v70 = *(v37 + 16);
  v57 = v37 + 16;
  v70(v29, v36, v35);
  v38 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v38;
  v38(v29);
  v39 = sub_10076D9AC();
  v77[3] = v39;
  v77[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(v74);
  v41 = v1[2];
  v41(v40, v29, v18);
  sub_10076D9BC();
  v42 = v1[1];
  v42(v29, v18);
  if (qword_10093FA18 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v35, qword_10094D0A8);
  v70(v29, v43, v35);
  v55(v29, v56, v18);
  v75 = v39;
  v76 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v44 = sub_10000DB7C(v71);
  v41(v44, v29, v18);
  sub_10076D9BC();
  v42(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v45 = v64;
  sub_100766BDC();
  v47 = v65;
  v46 = v66;
  (*(v65 + 16))(v63, v45, v66);
  sub_10000A570(v80, v77);
  sub_10000A570(v79, v74);
  sub_10000A570(v78, v71);
  sub_100766C0C();
  swift_allocObject();
  v77[0] = sub_100766BFC();
  (*(v47 + 8))(v45, v46);
  sub_10000CD74(v78);
  sub_10000CD74(v79);
  sub_10000CD74(v80);
  sub_1001E07F4(&qword_100950880, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  v48 = v67;
  v49 = v58;
  sub_10076DFCC();
  (*(v68 + 8))(v48, v69);
  v50 = &v49[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v51 = *v50;
  if (*v50)
  {
    v52 = *(v50 + 1);

    v51(v53);
    sub_1000167E0(v51, v52);
  }
}

id sub_1001DC7CC()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1001DFF9C;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002BAFEC;
  v7[3] = &unk_10088C388;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_1001DC8F8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration];
  v7 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v10 = sub_1001DFFBC(v6, v7, a2, v8, v9);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001E0468;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    aBlock[3] = &unk_10088C3B0;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    [v13 setVisibleItemsInvalidationHandler:v12];

    _Block_release(v12);
    v5 = v13;
  }

  return v10;
}

void sub_1001DCA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v5 = Strong;

    if (v4)
    {
      sub_10076813C();
      sub_10076194C();
    }
  }
}

uint64_t sub_1001DCD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_10094D1E8, &qword_100793E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v65 - v7;
  v9 = sub_10076947C();
  sub_1001E07F4(&qword_10095A460, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  v11 = v69;
  if (!v69)
  {
    return result;
  }

  v65[1] = v9;
  v66 = v8;
  v67 = v6;
  v68 = v5;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_iconHeadingView];
  sub_10076946C();
  v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v14 = sub_10076FF6C();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_titleHeadingView];
  sub_10076945C();
  v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v17 = sub_10076FF6C();

  [v16 setText:v17];

  v18 = sub_10076942C();
  if (v18)
  {
    v19 = v18;
    sub_10076B8EC();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
      v22 = sub_10076FF6C();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v27 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler + 8);
      *v25 = sub_1001DFF5C;
      v25[1] = v24;

      sub_1000167E0(v26, v27);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v28 = (v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v29 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v30 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler + 8);
  *v28 = 0;
  v28[1] = 0;
  sub_1000167E0(v29, v30);
LABEL_7:
  swift_getKeyPath();
  sub_10076338C();

  v31 = v69;
  v32 = sub_10077071C();
  v33 = sub_1007706EC();

  v34 = 4;
  if (v33)
  {
    v34 = 2;
  }

  if (v32)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  result = sub_1001DBC90(((v33 & 1) == 0), v35);
  v36 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v36)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v37 = objc_allocWithZone(sub_10000A5D4(&unk_10094D1F0, &unk_100793E40));
  v38 = v36;
  v39 = sub_10076E72C();
  v40 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource] = v39;
  v42 = v39;

  v43 = swift_allocObject();
  *(v43 + 16) = (v33 & 1) == 0;
  *(v43 + 24) = v35;
  sub_10076E73C();

  if ((v33 & 1) == 0)
  {
    v46 = v11;
    v47 = sub_10076944C();
    v48 = v47;
    v49 = v47 & 0xFFFFFFFFFFFFFF8;
    v50 = v47 >> 62;
    if (!(v47 >> 62))
    {
      v51 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51 >= v35)
      {
        v52 = v35;
      }

      else
      {
        v52 = *(v49 + 16);
      }

      if (v51 >= v52)
      {
LABEL_20:
        if ((v48 & 0xC000000000000001) != 0 && v52)
        {
          sub_10076BC0C();

          v53 = 0;
          do
          {
            v54 = v53 + 1;
            sub_10077147C(v53);
            v53 = v54;
          }

          while (v52 != v54);
        }

        else
        {
        }

        if (v50)
        {
          v46 = sub_10077159C();
          v33 = v55;
          v35 = v56;
          v52 = v57;

          if (v52)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v35 = 0;
          v46 = v48 & 0xFFFFFFFFFFFFFF8;
          v33 = (v48 & 0xFFFFFFFFFFFFFF8) + 32;
          v52 = (2 * v52) | 1;
          if (v52)
          {
LABEL_31:
            sub_10077169C();
            swift_unknownObjectRetain_n();
            v58 = swift_dynamicCastClass();
            if (!v58)
            {
              swift_unknownObjectRelease();
              v58 = _swiftEmptyArrayStorage;
            }

            v59 = v58[2];

            if (!__OFSUB__(v52 >> 1, v35))
            {
              if (v59 == (v52 >> 1) - v35)
              {
                v60 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v45 = v66;
                if (v60)
                {
LABEL_37:

                  v44 = sub_10076943C();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_1002348D4(v46, v33, v35, v52);
        v45 = v66;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v47 < 0)
    {
      v46 = v47;
    }

    else
    {
      v46 = v47 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = sub_10077158C();
    result = sub_10077158C();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v33 >= v35)
      {
        v64 = v35;
      }

      else
      {
        v64 = v33;
      }

      if (v33 >= 0)
      {
        v52 = v64;
      }

      else
      {
        v52 = v35;
      }

      if (sub_10077158C() >= v52)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v44 = v11;
  v45 = v66;
LABEL_38:
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007841E0;
  *(v61 + 32) = v44;
  swift_getKeyPath();
  sub_1001E07F4(&qword_10094D200, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1001E07F4(&qword_10094D208, 255, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  sub_10076D47C();

  v62 = *&v3[v40];
  if (v62)
  {
    v63 = v62;
    sub_10076E76C();
  }

  [v3 setNeedsLayout];

  return (*(v67 + 8))(v45, v68);
}

void sub_1001DD4E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263BF0(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_1001DD680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v11 - 8);
  v13 = v44 - v12;
  v14 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v14 - 8);
  v16 = v44 - v15;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v19 = v44 - v18;
  v20 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v20 - 8);
  v46 = v44 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v44[3] = v7;
  v45 = v13;
  v23 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007708FC();
  v24 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v26 = [a1 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:isa];

  v27 = swift_dynamicCastClass();
  if (v27)
  {
    sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
    sub_10076F44C();
    v28 = v47;
    sub_100760C4C();
    sub_10076F64C();
    v29 = v23;
    sub_10076FC1C();
    v44[2] = v47;
    v30 = sub_10075F78C();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    v32 = *&v27[OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView];
    v33 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    v34 = sub_1007628DC();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    v35 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v36 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    v37 = sub_10076C54C();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    sub_1004D0A60(v28, v32, v19, v29, 0, 0, v31, v16, v10, v36);
    sub_10000CFBC(v10, &unk_100949290, &unk_10078BBF0);
    v32[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v32 setNeedsLayout];
    sub_10000CFBC(v36, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v16, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v19, &unk_100946760, &unk_100787A20);
    v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v39 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    sub_10075FCAC();
    v40 = sub_10075FD2C();
    sub_1001E07F4(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v44[1] = v40;
    sub_100760BFC();
    v45 = v28;
    if (sub_10076BB5C())
    {
      v44[0] = v38;
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v41 = sub_100763ADC();
      sub_10000A61C(v41, qword_10099DDA0);
      sub_1007639AC();
      [v39 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v39 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v42 = *&v32[v44[0]];
      sub_100760B8C();
    }

    [v27 setNeedsLayout];

    sub_10000CFBC(v46, &unk_10094D210, &qword_10078DE20);
  }

  else
  {
  }

  return v27;
}

void *sub_1001DDDF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10076FF6C();
  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v9 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  v12 = swift_dynamicCastClass();
  v13 = v12;
  if (!v12)
  {

    return v13;
  }

  v14 = v12 + OBJC_IVAR____TtC20ProductPageExtension27SeparatorSpacerReusableView_separatorInsets;
  *v14 = xmmword_100793C00;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  result = sub_10075E09C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL || a6 != -1)
  {
    [v13 setHidden:(result + 1) % a6 == 0];
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1001DDF44(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_10076F7FC();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094D1C0, &qword_10079A360);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_10075E11C();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = sub_1007701BC();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10000CFBC(v10, &qword_10094D1C0, &qword_10079A360);
      goto LABEL_7;
    }

    v26 = v25;
    sub_10076E74C();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = sub_10075E02C().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      sub_10076F43C();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10000CFBC(v4, &qword_1009492E0, &qword_1007893A0);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
        sub_1007709BC();
        if ((v58 & 1) == 0)
        {
          sub_1007660EC();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1001DE640(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockupCollectionSearchResultContentView.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void (*sub_1001DE83C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001DB630(v2);
  return sub_100019FCC;
}

uint64_t sub_1001DE8AC()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1001DE908(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_1001DE9C8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1001DEB68;
}

uint64_t sub_1001DEAA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1001E07F4(&qword_10094D1A8, a2, type metadata accessor for LockupCollectionSearchResultContentView, &unk_100793CE8);
  result = sub_1001E07F4(&unk_10094D1B0, v3, type metadata accessor for LockupCollectionSearchResultContentView, &unk_100793D18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DEB2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001DEB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v94 = a8;
  v93 = a7;
  v90 = a5;
  v91 = a6;
  v87 = a3;
  v88 = a4;
  v104 = a2;
  v86 = a1;
  v96 = sub_10076D1AC();
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100766BEC();
  v99 = *(v17 - 8);
  v100 = v17;
  __chkstk_darwin(v17);
  v97 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v77 - v20;
  v103 = sub_10076997C();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ImageHeadingView();
  if (qword_10093FA00 != -1)
  {
    swift_once();
  }

  v23 = qword_10094D060;
  if (qword_10093FA08 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_10094D068);
  if (qword_10093FA10 != -1)
  {
    swift_once();
  }

  v26 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v27 = [a15 traitCollection];
  v102 = v26;
  v28 = sub_100770B3C();

  v29 = objc_opt_self();
  v84 = v28;
  v81 = [v29 configurationWithFont:v28];
  v30 = [v23 imageByApplyingSymbolConfiguration:?];
  v31 = v30;
  v101 = v24;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_10076DDDC();
  swift_allocObject();
  v33 = sub_10076DDBC();

  v34 = [a15 traitCollection];
  v89 = v25;
  sub_100770B3C();

  v35 = sub_10076C04C();
  *(&v115 + 1) = v35;
  v83 = sub_1001E07F4(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v116 = v83;
  v36 = sub_10000DB7C(&v114);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79 = v37 + 104;
  v80 = v38;
  v38(v36);
  sub_10076C90C();
  sub_10000CD74(&v114);
  sub_10076996C();
  v39 = sub_10076995C();
  v41 = v40;
  v42 = *(v105 + 8);
  v105 += 8;
  v78 = v42;
  v42(v22, v103);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_1005A8BB8(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_10094D080, &v114);

  swift_unknownObjectRelease();
  sub_10016C4BC(&v114, &v119);
  v44 = swift_allocObject();
  sub_1001A8FB8(&v119, (v44 + 16));
  swift_allocObject();
  v104 = sub_10076DD9C();

  swift_unknownObjectRelease();

  sub_10000CD74(&v114);
  if (qword_10093FA18 != -1)
  {
    swift_once();
  }

  v45 = v101;
  v46 = sub_10000A61C(v101, qword_10094D0A8);
  if (qword_10093FA20 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v45, qword_10094D0C0);
  if (qword_10093FA28 != -1)
  {
    swift_once();
  }

  v47 = [a15 traitCollection];
  v86 = v46;
  sub_100770B3C();

  *(&v115 + 1) = v35;
  *&v116 = v83;
  v48 = sub_10000DB7C(&v114);
  v80(v48, v82, v35);
  sub_10076C90C();
  sub_10000CD74(&v114);
  sub_10076996C();
  v49 = sub_10076995C();
  v51 = v50;
  v78(v22, v103);
  v52 = swift_allocObject();
  v53 = v91;
  *(v52 + 16) = v90;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_10076DD9C();
  sub_1001DFBC4(&unk_10094D0D8, &v114);
  v55 = swift_allocObject();
  v56 = v117;
  *(v55 + 48) = v116;
  *(v55 + 64) = v56;
  *(v55 + 80) = v118;
  v57 = v115;
  *(v55 + 16) = v114;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_10076DD9C();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v93 & 1;
  *(v59 + 32) = v94;
  swift_allocObject();
  v105 = sub_10076DD9C();
  *(&v115 + 1) = v32;
  *&v116 = &protocol witness table for LayoutViewPlaceholder;
  v113[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v104;
  v120 = v32;
  v121 = &protocol witness table for LayoutViewPlaceholder;
  *&v119 = v58;
  v103 = v58;
  v113[3] = v32;
  v113[0] = v105;
  v60 = *(v45 - 8);
  v94 = *(v60 + 16);
  v102 = v60 + 16;
  v61 = v45;
  v62 = v95;
  v94(v95, v89, v61);
  v93 = enum case for FontSource.useCase(_:);
  v63 = v92;
  v91 = *(v92 + 104);
  v64 = v96;
  v91(v62);
  v65 = sub_10076D9AC();
  v112[3] = v65;
  v112[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v112);
  v110 = v64;
  v111 = &protocol witness table for FontSource;
  v66 = sub_10000DB7C(v109);
  v67 = *(v63 + 16);
  v67(v66, v62, v64);

  sub_10076D9BC();
  v68 = *(v63 + 8);
  v68(v62, v64);
  v94(v62, v86, v101);
  (v91)(v62, v93, v64);
  v110 = v65;
  v111 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v109);
  v107 = v64;
  v108 = &protocol witness table for FontSource;
  v69 = sub_10000DB7C(v106);
  v67(v69, v62, v64);
  sub_10076D9BC();
  v68(v62, v64);
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106[0] = 0x4030000000000000;
  v70 = v98;
  sub_100766BDC();
  v72 = v99;
  v71 = v100;
  (*(v99 + 16))(v97, v70, v100);
  sub_10000A570(&v114, v112);
  sub_10000A570(&v119, v109);
  sub_10000A570(v113, v106);
  sub_100766C0C();
  swift_allocObject();
  v73 = sub_100766BFC();
  (*(v72 + 8))(v70, v71);
  sub_10000CD74(v113);
  sub_10000CD74(&v119);
  sub_10000CD74(&v114);
  *&v114 = v73;
  sub_1001E07F4(&qword_10094D1E0, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_10076D2AC();
  v75 = v74;

  return v75;
}

double sub_1001DF800()
{
  v1 = sub_10076469C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076947C();
  sub_1001E07F4(&qword_10095A460, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v32)
  {
    return 0.0;
  }

  v30 = v3;
  v31 = v2;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v29 = v0;

  sub_10076C32C();
  swift_getKeyPath();
  sub_10076338C();

  v6 = v32;
  v7 = sub_10077071C();
  v8 = sub_1007706EC();

  v9 = 4;
  if (v8)
  {
    v9 = 2;
  }

  if (v7)
  {
    v9 = 1;
  }

  v28 = v9;
  HIDWORD(v27) = v8 ^ 1;
  v10 = sub_10076946C();
  v12 = v11;
  v13 = sub_10076945C();
  v15 = v14;
  if (sub_10076942C())
  {
    v16 = sub_10076B8EC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_10076C2FC();
  v21 = v20;
  v23 = v22;
  v24 = sub_100630CB4();
  swift_getObjectType();
  sub_1001DEB94(v10, v12, v13, v15, v16, v18, BYTE4(v27) & 1, v28, v21, v23, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v24, v29);
  v19 = v25;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v5, v31);
  return v19;
}

uint64_t sub_1001DFB4C()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001DFB84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFC20()
{
  sub_10000CD74((v0 + 16));
  sub_10000CD74((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1001DFC90(void *a1, double a2, double a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  sub_1001DFDDC(v8, a1, a2, a3, v7, ObjectType);
}

void sub_1001DFCF8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v0 + v2) = sub_10076669C();
  sub_10077156C();
  __break(1u);
}

void sub_1001DFDDC(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v10 = sub_100763ADC();
  v11 = sub_10000A61C(v10, qword_10099DDA0);
  sub_100262AD0(v11, a2, a3, a4);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_1001DFEBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001DFF1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DFF64()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001DFFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1001DFFBC(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v15 = v8;
  v16 = sub_10076FF6C();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v17;
  sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_1007701AC().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1001E0470(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000A5D4(&qword_10094D1C0, &qword_10079A360);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_10076E74C();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_10076F44C();
        v19 = sub_10076B9FC();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_10076F5AC();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_100263BF0(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_100943200;
        v17 = &unk_100785840;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &qword_10094D1C0;
    v17 = &qword_10079A360;
    v18 = v7;
LABEL_7:
    sub_10000CFBC(v18, v16, v17);
  }
}

uint64_t sub_1001E07F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1001E095C()
{
  result = qword_10094D230;
  if (!qword_10094D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D230);
  }

  return result;
}

uint64_t sub_1001E09BC()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100786040;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x80000001007D8A20;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_1001E1228;
  *(v6 + 112) = v5;
  v7 = v0;

  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  sub_10077140C();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x80000001007D8A50;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1001E1280;
  *(v14 + 112) = v13;
  v15 = v7;

  sub_10075DDAC();
  v16 = sub_10075DD8C();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  sub_10077140C();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x80000001007D8A80;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_1001E12D8;
  *(v20 + 112) = v19;
  v21 = v15;

  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  sub_10077140C();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x80000001007D8AB0;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_1001E12F8;
  *(v26 + 112) = v25;
  v27 = v21;

  sub_10075DDAC();
  v28 = sub_10075DD8C();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  sub_10077140C();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  sub_10075DDAC();
  v34 = sub_10075DD8C();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_1001E0EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(void))
{
  v8 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000527AC(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_1001E1030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000527AC(v6);
  }

  sub_10076AD4C();
  swift_allocObject();
  v10 = sub_10076AD2C();
  sub_10026419C(v10, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_1001E1198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E11F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001E1328(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_1001E2870();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_1001E28BC(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
        v12 = sub_10076FE4C();

        v21 = v12;
        if (v9)
        {
          sub_10000CD64(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_10024A2F4(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = sub_10076FE3C().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_1000258C0(&v22);
          sub_1001E165C(v20);
          sub_1000258C0(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_1001E28BC(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
  v17 = sub_10076FE4C();

  v21 = v17;
  sub_1000258C0(&v22);
  sub_1001E165C(v20);
  sub_1000258C0(v20);
  if (v21)
  {
    v18.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

double sub_1001E165C@<D0>(_OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1006113DC();
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10024BFEC();
      v9 = v11;
    }

    sub_10000CD64((*(v9 + 56) + 32 * v7), a2);
    sub_1001E1838(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1001E16FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100561E0C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10024C878();
      v10 = v12;
    }

    sub_10000CD64((*(v10 + 56) + 32 * v8), a3);
    sub_1001E1BB4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1001E17A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100561E0C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10024CDEC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1001E1F10(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_1001E1838(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_10076FF9C();
      sub_10077175C();
      v11 = v10;
      sub_10077008C();
      v12 = sub_1007717AC();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1001E1A04(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v9 = sub_1007717AC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_1001E1BB4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v10 = sub_1007717AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_1001E1D64(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_10077174C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_10076F7FC() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001E1F10(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      sub_10077175C();

      sub_10077008C();
      v9 = sub_1007717AC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

uint64_t sub_1001E20C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1007712EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_10077174C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001E2230(int64_t a1, uint64_t a2)
{
  v38 = sub_10076C45C();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1007712EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1001E28BC(&qword_10094D268, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
      v22 = sub_10076FEAC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1001E2550(int64_t a1, uint64_t a2)
{
  v38 = sub_100761D3C();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1007712EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1001E28BC(&qword_10094D270, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
      v22 = sub_10076FEAC();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_1001E2870()
{
  result = qword_1009492D0;
  if (!qword_1009492D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009492D0);
  }

  return result;
}

uint64_t sub_1001E28BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001E2908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076BF6C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10076BEDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    sub_10076BEEC();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    sub_10076BFCC();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    sub_10076BF7C();
    sub_10075FCCC();
    [v15 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }
}

void sub_1001E2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  sub_10075FB6C();

  v8 = v6(a3, a4);
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760BFC();
}

char *sub_1001E2CBC(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory] = 7;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory] = 7;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 0;
  v6 = &v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInDelay] = 0;
  sub_1007626BC();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] = v8;
  [v8 setContentMode:3];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory] = a1;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_defaultFont] = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TodayTransitioningLabelView();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v13 = v10;
  v14 = [v12 layer];
  v15 = [v13 traitCollection];
  sub_10077070C();

  [v14 setAnchorPoint:{0.0, 0.0}];
  [v13 addSubview:*&v10[v11]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E3EC();
  *(v16 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C4C();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E3FC();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v13;
}

void sub_1001E3000(uint64_t a1)
{
  v31.receiver = v1;
  v31.super_class = type metadata accessor for TodayTransitioningLabelView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory] != 4 || (v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange] & 1) != 0)
  {
    v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    [v1 bounds];
    [v2 setFrame:?];
    v3 = sub_1001E34D8();
    v4 = "setLineBreakMode:";
    if (v3)
    {
      v5 = v2;
      v6 = 4;
    }

    else
    {
      [v2 setLineBreakMode:0];
      v4 = "setLineBreakStrategy:";
      v5 = v2;
      v6 = 1;
    }

    [v5 v4];
    return;
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    v10 = sub_1001E4EE4;
    *(v9 + 16) = sub_1001E4EE4;
    *(v9 + 24) = v8;
    v29 = sub_1000B9014;
    v30 = v9;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1001C5148;
    v28 = &unk_10088C7C0;
    v11 = _Block_copy(&v25);
    v12 = v1;

    [v7 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] == 1)
  {
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      v15 = swift_allocObject();
      v16 = sub_1001E4ECC;
      *(v15 + 16) = sub_1001E4ECC;
      *(v15 + 24) = v14;
      v29 = sub_1000349FC;
      v30 = v15;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_1001C5148;
      v28 = &unk_10088C748;
      v17 = _Block_copy(&v25);
      v18 = v1;

      [v13 performWithoutAnimation:v17];
      _Block_release(v17);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v8 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    [v1 bounds];
    [v19 setFrame:?];
  }

  v10 = 0;
  v8 = 0;
LABEL_16:
  v16 = 0;
  v14 = 0;
LABEL_17:
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v21 = sub_1001E34D8();
  v22 = "setLineBreakMode:";
  if (v21)
  {
    v23 = v20;
    v24 = 4;
  }

  else
  {
    [v20 setLineBreakMode:0];
    v22 = "setLineBreakStrategy:";
    v23 = v20;
    v24 = 1;
  }

  [v23 v22];
  sub_1000167E0(v10, v8);
  sub_1000167E0(v16, v14);
}

void sub_1001E3418(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v3 = v1;
    [a1 bounds];
    [v3 setFrame:?];
  }
}

id sub_1001E34D8()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      sub_10000A5D4(&unk_10094E7E0, qword_100785360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783DD0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_10005312C();
      *(inited + 40) = v4;
      v6 = NSFontAttributeName;
      v7 = sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_1001E4F90(inited + 32);
      [v0 bounds];
      v9 = v8;
      if (v7)
      {
        type metadata accessor for Key(0);
        sub_1001E4F38();
        v10.super.isa = sub_10076FE3C().super.isa;

LABEL_7:
        [v2 boundingRectWithSize:1 options:v10.super.isa attributes:0 context:{v9, 1.79769313e308}];
        v13 = v12;

        [v0 bounds];
        return (v14 < v13);
      }
    }

    else
    {
      [v0 bounds];
      v9 = v11;
    }

    v10.super.isa = 0;
    goto LABEL_7;
  }

  return result;
}

void sub_1001E367C(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  if (v4 == 7)
  {
    return;
  }

  if (a1 == 7)
  {
    goto LABEL_4;
  }

  switch(v4)
  {
    case 6:
      if (a1 != 6)
      {
        goto LABEL_4;
      }

      break;
    case 5:
      if (a1 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        break;
      }

LABEL_4:
      v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory);
      if (*(v6 + 16) && (v7 = sub_10060FF84(v4), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 8 * v7);
      }

      else
      {
        v9 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_defaultFont);
      }

      v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
      v26 = *v9;
      v11 = [v10 font];
      v12 = v11;
      if (v11)
      {
      }

      v13 = [v10 font];
      if (v13)
      {
        v14 = v13;
        sub_10005312C();
        v15 = v26;
        v16 = sub_100770EEC();
      }

      else
      {
        v16 = 0;
      }

      [objc_opt_self() inheritedAnimationDuration];
      if (a1 == 6 || a2 == 6 || (v12 == 0) | v16 & 1 || v17 <= 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) ^ 1;
      }

      sub_1001E3958(v26, v18 & 1);
      v19 = v26;
      goto LABEL_25;
    default:
      if ((a1 - 7) > 0xFCu || v4 != a1)
      {
        goto LABEL_4;
      }

      break;
  }

  v20 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v19 = [v21 font];
  if (v19)
  {
LABEL_25:

    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fontForSizeCategory);
  if (*(v22 + 16))
  {
    v23 = sub_10060FF84(v20);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      [v21 setFont:v25];
    }
  }
}

double sub_1001E3958(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], (v5 = [v4 text]) != 0))
  {

    v7 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
    if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel] && (v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v9 = sub_1001E4C30(v4);
      [v9 setAlpha:0.0];
      [v9 setFont:a1];
      [v9 setNumberOfLines:*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines]];
      v10 = objc_opt_self();
      [v10 setAnimationsEnabled:0];
      v11 = [v9 layer];
      v12 = [v2 traitCollection];
      v13 = v2;
      sub_10077070C();

      [v11 setAnchorPoint:{0.0, 0.0}];
      [v10 setAnimationsEnabled:1];
      v14 = *&v2[v7];
      *&v13[v7] = v9;
      v26 = v9;

      [v13 addSubview:v26];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;
      v17 = &v13[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      v18 = *&v13[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange];
      v19 = *&v13[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange + 8];
      *v17 = sub_1001E4E34;
      v17[1] = v16;

      v20 = a1;
      sub_1000167E0(v18, v19);

      if (v13[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning])
      {
      }

      else
      {
        v21 = *v17;
        if (*v17)
        {
          v22 = v17[1];

          v21(v23);

          sub_1000167E0(v21, v22);
        }

        else
        {
        }

        v24 = *v17;
        v25 = v17[1];
        *v17 = 0;
        v17[1] = 0;

        return sub_1000167E0(v24, v25);
      }
    }
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];

    [v8 setFont:a1];
  }

  return result;
}

void sub_1001E3C74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 1;
    v4 = Strong;
    v5 = objc_opt_self();
    [v5 inheritedAnimationDuration];
    v7 = v6 * 0.8;
    v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v25 = sub_1001E4E3C;
    v26 = v9;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10009AEDC;
    v24 = &unk_10088C630;
    v10 = _Block_copy(&aBlock);
    v11 = v4;

    [v5 animateWithDuration:131684 delay:v10 options:0 animations:v7 completion:v8];
    _Block_release(v10);
    [v5 inheritedAnimationDuration];
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v25 = sub_1001E4E5C;
    v26 = v14;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10009AEDC;
    v24 = &unk_10088C680;
    v15 = _Block_copy(&aBlock);
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    v25 = sub_1001E4EC4;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000513F0;
    v24 = &unk_10088C6D0;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = a2;

    [v5 animateWithDuration:66148 delay:v15 options:v18 animations:v13 completion:0.0];
    _Block_release(v18);
    _Block_release(v15);
    sub_1001E3F54();
  }
}

void sub_1001E3F54()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v38 = v3;
    [v38 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    if (CGRectIsEmpty(v42) || (v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, CGRectIsEmpty(v43)))
    {
    }

    else
    {
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      v21 = Height / CGRectGetHeight(v45);
      [v38 transform];
      CGAffineTransformScale(&aBlock, &v40, 1.0 / v21, 1.0 / v21);
      tx = aBlock.tx;
      ty = aBlock.ty;
      v36 = *&aBlock.c;
      v37 = *&aBlock.a;
      v24 = objc_opt_self();
      [v24 setAnimationsEnabled:0];
      *&v40.a = v37;
      *&v40.c = v36;
      v40.tx = tx;
      v40.ty = ty;
      [v38 setTransform:&v40];

      [v24 setAnimationsEnabled:1];
      [v2 transform];
      aBlock = v40;
      CGAffineTransformScale(&v40, &aBlock, v21, v21);
      [v24 inheritedAnimationDuration];
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *&v40.c;
      *(v27 + 24) = *&v40.a;
      *(v27 + 16) = v0;
      *(v27 + 40) = v28;
      *(v27 + 56) = *&v40.tx;
      *&aBlock.tx = sub_1001E4B40;
      *&aBlock.ty = v27;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10009AEDC;
      *&aBlock.d = &unk_10088C540;
      v29 = _Block_copy(&aBlock);
      v30 = v0;

      [v24 animateWithDuration:197220 delay:v29 options:0 animations:v26 completion:0.0];
      _Block_release(v29);
      [v24 inheritedAnimationDuration];
      v32 = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *&aBlock.tx = sub_1001E4BE0;
      *&aBlock.ty = v33;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10009AEDC;
      *&aBlock.d = &unk_10088C590;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      [v24 animateWithDuration:197220 delay:v34 options:0 animations:v32 completion:0.0];

      _Block_release(v34);
    }
  }
}

void sub_1001E4348(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition + 8))
    {
      v3 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

      v4 = sub_10076FF6C();

      [v3 setText:v4];
    }

    v5 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    [v5 setFont:?];
    [v5 setAlpha:1.0];
    [v5 setNumberOfLines:*(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines)];
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v5 setTransform:v9];
    v6 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
    v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *(a2 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(a2 + v6) = 0;

    *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  }
}

uint64_t sub_1001E44B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(a2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  }

  return result;
}

id sub_1001E44C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (a2)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v6)
  {
    v7 = v6;
    if (v3)
    {
      v3 = sub_10076FF6C();
    }

    [v7 setText:v3];
  }

  v8 = &v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition];
  *v8 = 0;
  *(v8 + 1) = 0;

  return [v2 setNeedsLayout];
}

double sub_1001E45BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a4)
  {
    v8 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v8)
    {
      v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
      if (a2)
      {

        v10 = v8;
        v5 = sub_10076FF6C();
      }

      else
      {

        v15 = v8;
      }

      [v9 setText:v5];

      v16 = sub_10076FF6C();
      [v8 setText:v16];

      v17 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
      *v17 = a3;
      v17[1] = a4;
      goto LABEL_17;
    }

    v13 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

    v14 = sub_10076FF6C();

    [v13 setText:v14];
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    if (a2)
    {
      v12 = sub_10076FF6C();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    v18 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
    if (v18)
    {
      v19 = v18;
      if (v5)
      {
        v20 = sub_10076FF6C();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText:v20];
    }
  }

  v21 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v21 = 0;
  v21[1] = 0;
LABEL_17:

  return result;
}

double sub_1001E47AC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  sub_1001E367C(v4, 7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange + 8);
  *v5 = 0;
  v5[1] = 0;

  return sub_1000167E0(v6, v7);
}

id sub_1001E4868()
{
  v1 = objc_opt_self();
  [v1 setAnimationsEnabled:0];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = sub_10077070C();

    v6 = 0.0;
    if (v5)
    {
      v6 = 1.0;
    }

    [v3 setAnchorPoint:{v6, 0.0}];
  }

  return [v1 setAnimationsEnabled:1];
}

id sub_1001E49B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayTransitioningLabelView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1001E4A9C()
{
  v1 = *v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);

    return sub_1000167E0(v2, v3);
  }

  return result;
}

uint64_t sub_1001E4B08()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_1001E4B40()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

double sub_1001E4B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001E4BA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001E4BE0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1001E4C30(void *a1)
{
  v2 = sub_10076771C();
  __chkstk_darwin(v2 - 8);
  sub_1007626BC();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
  [v3 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
  [v3 setLineBreakStrategy:{objc_msgSend(a1, "lineBreakStrategy")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];

  sub_10076261C();
  sub_10076262C();
  sub_10076263C();
  sub_10076264C();
  v4 = [a1 text];
  [v3 setText:v4];

  return v3;
}

uint64_t sub_1001E4DBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001E4DF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001E4E5C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1001E4E84()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1001E4EE4()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  [v1 bounds];

  return [v2 setFrame:?];
}

unint64_t sub_1001E4F38()
{
  result = qword_100943320;
  if (!qword_100943320)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943320);
  }

  return result;
}

uint64_t sub_1001E4F90(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001E4FF8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_textAfterFontTransition);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeOutDelay) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInDelay) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1001E5134()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_1001E555C();
  v8 = sub_1007701BC();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_10077149C();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_1001E555C();
      v8 = sub_1007701BC();

      if (v8 >> 62)
      {
        v0 = sub_10077158C();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = sub_10077149C();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = sub_10077158C();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1001E5384()
{

  return swift_deallocClassInstance();
}

void sub_1001E53E4()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_1001E555C();
        v9 = sub_1007701BC();

        if (v9 >> 62)
        {
          v10 = sub_10077158C();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = sub_10077149C();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001E555C()
{
  result = qword_100958FF0;
  if (!qword_100958FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100958FF0);
  }

  return result;
}

unint64_t sub_1001E55BC()
{
  result = qword_10094D3C8;
  if (!qword_10094D3C8)
  {
    sub_1007697BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3C8);
  }

  return result;
}

uint64_t sub_1001E561C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075FAEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v7 = sub_10076FCEC();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v8 = v24[1];
  sub_100767E6C();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = sub_10076979C();
    v11 = sub_100765B6C();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = sub_10076977C();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = sub_1007697AC();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_1001E5994();
      swift_allocError();
      sub_10076FCAC();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_10000A5D4(&qword_10094D3D8, &qword_100794138) + 48);
    v15 = sub_10076978C();
    v16 = sub_1007676BC();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_100563DC4(v21, 1, a2);

  sub_10076FC4C();

  return v7;
}

unint64_t sub_1001E5994()
{
  result = qword_10094D3D0;
  if (!qword_10094D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3D0);
  }

  return result;
}

unint64_t sub_1001E59FC()
{
  result = qword_10094D3E0;
  if (!qword_10094D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D3E0);
  }

  return result;
}

uint64_t sub_1001E5A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B77C();
  *a1 = result;
  return result;
}

uint64_t sub_1001E5A7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = sub_1007603BC(), , (v10 & 1) != 0))
  {
    v11 = sub_100763FDC();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    v13 = v19[0];
    sub_10077071C();

    sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
    sub_10076333C();
    if (v18)
    {
      sub_100012498(&v17, v19);
      sub_10000CF78(v19, v19[3]);
      if (sub_10076968C())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        sub_100763FAC();
        v14 = 0;
      }

      v16 = sub_100763FDC();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_10000CD74(v19);
    }

    else
    {
      sub_1001E5E88(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      sub_100763FAC();
      v15 = sub_100763FDC();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t sub_1001E5E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B77C();
  *a1 = result;
  return result;
}

uint64_t sub_1001E5E88(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094D3E8, &qword_100796560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001E5EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v10 - 8);
  v53 = v44 - v11;
  v51 = sub_100768FEC();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v44 - v13;
  v14 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v14 - 8);
  v46 = v44 - v15;
  v16 = sub_10076A3AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = v44 - v22;
  v24 = [v6 contentView];
  [a6 pageMarginInsets];
  [v24 setLayoutMargins:?];

  v25 = sub_1007615BC();
  v45 = a3;
  if (!v25)
  {
    goto LABEL_7;
  }

  if (v25 >> 62)
  {
    v29 = v25;
    v30 = sub_10077158C();
    v25 = v29;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:

LABEL_7:
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_8;
  }

LABEL_4:
  v26 = v25;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v27 = v54[0];
  v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:0];
  *(v28 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks) = v26;

  *(v28 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader) = v27;

  sub_1003BF4A0(v26, v27);

LABEL_8:
  v44[1] = *&v7[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  v31 = sub_1007615FC();
  v32 = sub_1007615DC();
  v33 = sub_1007615CC();
  (*(v17 + 104))(v19, enum case for OfferButtonPresenterViewAlignment.center(_:), v16);
  (*(v17 + 56))(v46, 1, 1, v16);
  sub_1001E6890(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_10076759C();
  v34 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  v35 = v47;
  v36 = v51;
  (*(v47 + 104))(v48, enum case for OfferButtonSubtitlePosition.above(_:), v51);
  (*(v35 + 56))(v53, 1, 1, v36);
  sub_1001E6890(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v37 = v49;
  sub_10076759C();
  sub_1001F12C8(v31, v32, v33, v23, v37, v45, 0, 0);

  (*(v50 + 8))(v37, v52);
  sub_100026190(v23);
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v38 = v54[0];
  sub_1007615EC();
  sub_10076160C();
  v39 = sub_100767DCC();
  swift_allocObject();
  v40 = v38;
  v41 = sub_100767DAC();
  sub_1001E6890(&unk_100946770, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007942D8);
  swift_unknownObjectRetain();
  sub_100767DBC();
  v54[3] = v39;
  v54[0] = v41;
  v42 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();

  sub_100127EF0(v54, &v7[v42]);
  swift_endAccess();
  [v7 setNeedsLayout];

  return result;
}

double sub_1001E668C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_10076FF9C();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_10077167C();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_10076FF6C();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_10077002C() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_1001E6890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001E68D8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10075FAEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v14 = v22[1];
  sub_100767E6C();
  if (sub_10075FABC())
  {
    v15 = sub_1007615EC();
  }

  else
  {
    v15 = sub_10076160C();
  }

  v17 = v15;
  v18 = v16;
  swift_getObjectType();
  v19.n128_f64[0] = a1;
  v20 = sub_10026C9FC(v17, v18, a7, v19, a2);

  (*(v11 + 8))(v13, v10);
  return v20;
}

uint64_t sub_1001E6A68()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099D890);
  sub_10000A61C(v0, qword_10099D890);
  return sub_10076F54C();
}

uint64_t sub_1001E6AE0()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099D8A8);
  sub_10000A61C(v0, qword_10099D8A8);
  return sub_10076F54C();
}

uint64_t sub_1001E6B58()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099D8C0);
  sub_10000A61C(v0, qword_10099D8C0);
  return sub_10076F54C();
}

uint64_t sub_1001E6BD0()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_10099D8D8);
  sub_10000A61C(v0, qword_10099D8D8);
  return sub_10076F54C();
}

uint64_t sub_1001E6C48()
{
  v0 = sub_10075DDBC();
  v1 = *(v0 - 8);
  v66 = v0;
  v67 = v1;
  __chkstk_darwin(v0);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v65 = 0x80000001007D8E30;
  if (qword_10093FA30 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10099D890);
  v63 = sub_10076F73C();
  v9 = sub_10076F70C();
  v11 = v5 + 16;
  v10 = *(v5 + 16);
  v10(v7, v8, v4);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Feed Previews");
  *(v12 + 70) = -4864;
  v13 = v65;
  *(v12 + 72) = 0xD000000000000041;
  *(v12 + 80) = v13;
  *(v12 + 88) = 0;
  v64 = v10;
  v10((v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key), v7, v4);
  v14 = (v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v14 = v9;
  v14[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v15 = sub_10075DD8C();
  v17 = v16;
  v18 = *(v67 + 8);
  v67 += 8;
  v65 = v18;
  v18(v3, v66);
  v68 = v15;
  v69 = v17;
  v60 = v12;
  sub_10077140C();
  v19 = *(v5 + 8);
  v61 = v5 + 8;
  v62 = v19;
  v19(v7, v4);

  v59 = 0x80000001007D8EA0;
  v20 = v3;
  if (qword_10093FA38 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v4, qword_10099D8A8);
  v22 = sub_10076F70C();
  v23 = v21;
  v24 = v64;
  v64(v7, v23, v4);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD000000000000017;
  *(v25 + 64) = 0x80000001007D8E80;
  v26 = v59;
  *(v25 + 72) = 0xD000000000000030;
  *(v25 + 80) = v26;
  *(v25 + 88) = 0;
  v24(v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v27 = (v25 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v27 = v22;
  v27[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v28 = sub_10075DD8C();
  v30 = v29;
  v65(v20, v66);
  v68 = v28;
  v69 = v30;
  v59 = v25;
  sub_10077140C();
  v62(v7, v4);

  if (qword_10093FA40 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v4, qword_10099D8C0);
  v32 = sub_10076F70C();
  v33 = v64;
  v64(v7, v31, v4);
  v34 = swift_allocObject();
  *(v34 + 56) = 0xD000000000000011;
  *(v34 + 64) = 0x80000001007D8EE0;
  *(v34 + 72) = 0xD000000000000067;
  *(v34 + 80) = 0x80000001007D8F00;
  *(v34 + 88) = 0;
  v33(v34 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v35 = (v34 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v35 = v32;
  v35[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v36 = sub_10075DD8C();
  v38 = v37;
  v58 = v11;
  v65(v20, v66);
  v68 = v36;
  v69 = v38;
  sub_10077140C();
  v62(v7, v4);

  v57 = v20;
  if (qword_10093FA48 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v4, qword_10099D8D8);
  v40 = sub_10076F70C();
  v41 = v64;
  v64(v7, v39, v4);
  v42 = swift_allocObject();
  *(v42 + 56) = 0xD00000000000001DLL;
  *(v42 + 64) = 0x80000001007D8F70;
  *(v42 + 72) = 0xD00000000000003DLL;
  *(v42 + 80) = 0x80000001007D8F90;
  *(v42 + 88) = 0;
  v41(v42 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key, v7, v4);
  v43 = (v42 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v43 = v40;
  v43[1] = &protocol witness table for LocalPreferences;

  v44 = v57;
  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v65(v44, v66);
  v68 = v45;
  v69 = v47;
  sub_10077140C();
  v62(v7, v4);

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1007841E0;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100786040;
  v50 = v59;
  *(v49 + 32) = v60;
  *(v49 + 40) = v50;
  *(v49 + 48) = v34;
  *(v49 + 56) = v42;
  type metadata accessor for DebugSection();
  v51 = swift_allocObject();
  sub_10075DDAC();
  v52 = sub_10075DD8C();
  v54 = v53;

  v65(v44, v66);
  v51[2] = v52;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0xE000000000000000;
  v51[6] = v49;
  *(v48 + 32) = v51;

  return v48;
}

id sub_1001E74BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodaySettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001E75A8(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = ASKBuildTypeGetCurrent();
  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = sub_10077167C();

  if ((v12 & 1) == 0)
  {
    v13 = sub_10076FF9C();
    v15 = v14;
    if (v13 != sub_10076FF9C() || v15 != v16)
    {
      v18 = sub_10077167C();

      if (v18)
      {
        goto LABEL_6;
      }

      v19 = sub_10076FF9C();
      v21 = v20;
      if (v19 == sub_10076FF9C() && v21 == v22)
      {
      }

      else
      {
        v26 = sub_10077167C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_10076F73C();
      sub_10076F72C();
      if (qword_1009414D0 != -1)
      {
        swift_once();
      }

      v27 = sub_10000A5D4(&unk_100955860, &qword_100788520);
      sub_10000A61C(v27, qword_1009A3248);
      sub_10076F41C();

      if (v29 != 2 && (v29 & 1) != 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      v24 = 0;
      return v24 & 1;
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:

LABEL_16:
  sub_10076F73C();
  sub_10076F70C();
  if (*a1 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000A61C(v23, a2);
  sub_10076F41C();

  v24 = v28;
  return v24 & 1;
}

double sub_1001E787C()
{
  v1 = [v0 animationKeys];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1007701BC();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {

        v7 = sub_10076FF6C();
        v8 = [v0 animationForKey:v7];

        if (v8)
        {
          if (([v8 isRemovedOnCompletion] & 1) == 0)
          {
            v9 = sub_10076FF6C();

            [v0 removeAnimationForKey:v9];

            goto LABEL_6;
          }
        }

LABEL_6:
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void sub_1001E7B28(__n128 a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v3 bounds];
      [v1 convertRect:v3 fromCoordinateSpace:?];
      [v5 setFrame:?];

      v3 = v5;
    }
  }
}

id sub_1001E7C28(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001E7CD0(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_1000325F0();
        v6 = v2;
        v7 = sub_100770EEC();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_1001E7E00(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_1001E7E68;
}

void sub_1001E7E68(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1001E7CD0(v2);
  }

  else
  {
    sub_1001E7CD0(*a1);
  }
}

void sub_1001E7ED0(char a1)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_1001EB04C;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10009AEDC;
      v8[3] = &unk_10088C928;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_1001E8144(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "frame");
  v12 = v11 != a4 || v10 != a3;
  v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(v4 + v13, v17);
  sub_10000CF78(v17, v18);
  if (sub_1007679FC())
  {
    sub_10000CD74(v17);
    goto LABEL_6;
  }

  if (!v12)
  {
    return sub_10000CD74(v17);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = CGRectEqualToRect(v20, v21);
  result = sub_10000CD74(v17);
  if (!v15)
  {
LABEL_6:
    sub_10000A570(v5 + v13, v17);
    sub_10000CF78(v17, v18);
    sub_1001EB08C(&qword_10094D5D0, v14, type metadata accessor for OfferButton, &unk_1007943B8);
    sub_100767A7C();
    sub_10000CD74(v17);
    sub_10000A570(v5 + v13, v17);
    sub_10000CF78(v17, v18);
    sub_100767A3C();
    return sub_10000CD74(v17);
  }

  return result;
}

void sub_1001E8324()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = sub_10076C04C();
  v65[3] = v7;
  v65[4] = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v8 = sub_10000DB7C(v65);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = sub_10076C90C();
  sub_10000CD74(v65);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v72.origin.x = v29;
    v72.origin.y = v31;
    v72.size.width = v33;
    v72.size.height = v35;
    MidX = CGRectGetMidX(v72);
    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v73)}];
    v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    v42 = CGRectGetMidX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v75)}];
    [v37 bounds];
    v43 = v76.origin.x;
    v44 = v76.origin.y;
    v45 = v76.size.width;
    v46 = v76.size.height;
    v47 = CGRectGetMidX(v76);
    v77.origin.x = v43;
    v77.origin.y = v44;
    v77.size.width = v45;
    v77.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v77)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v78.origin.x = v52;
    v78.origin.y = v54;
    v78.size.width = v56;
    v78.size.height = v58;
    v59 = CGRectGetMidX(v78);
    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v79)}];
    v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v66.origin.x;
    v13 = v66.origin.y;
    v14 = v66.size.width;
    v15 = v66.size.height;
    v16 = CGRectGetMidX(v66);
    v67.origin.x = v12;
    v67.origin.y = v13;
    v67.size.width = v14;
    v67.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v67)}];
    [v1 bounds];
    v17 = v68.origin.x;
    v18 = v68.origin.y;
    v19 = v68.size.width;
    v20 = v68.size.height;
    v21 = CGRectGetMidX(v68);
    v69.origin.x = v17;
    v69.origin.y = v18;
    v69.size.width = v19;
    v69.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v69)}];
    [v1 bounds];
    v22 = v70.origin.x;
    v23 = v70.origin.y;
    v24 = v70.size.width;
    v25 = v70.size.height;
    v26 = CGRectGetMidX(v70);
    v71.origin.x = v22;
    v71.origin.y = v23;
    v71.size.width = v24;
    v71.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v71)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  sub_1001E787C();
}

id sub_1001E88F4(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_1001E89B8(int a1)
{
  v2 = v1;
  v101 = a1;
  ObjectType = swift_getObjectType();
  v96 = sub_10076F9AC();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076443C();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v93 - v6;
  v103 = v7;
  __chkstk_darwin(v8);
  v105 = &v93 - v9;
  v10 = sub_10076E3DC();
  __chkstk_darwin(v10 - 8);
  v93 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076771C();
  v12 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  *&v1[v17] = [objc_allocWithZone(CAShapeLayer) init];
  v18 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  *&v1[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
  *&v1[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  *&v1[v20] = [objc_allocWithZone(UIImageView) init];
  v100 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1888);
  v23 = *(v21 - 8);
  v99 = *(v23 + 16);
  v99(v16, v22, v21);
  v98 = *(v23 + 56);
  v98(v16, 0, 1, v21);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v97 = *(v12 + 104);
  v97(v109, enum case for DirectionalTextAlignment.none(_:), v110);
  v25 = sub_1007626BC();
  v26 = objc_allocWithZone(v25);
  *&v1[v100] = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v21, qword_1009A18D0);
  v99(v16, v28, v21);
  v98(v16, 0, 1, v21);
  sub_10076444C();
  v97(v109, v24, v110);
  v29 = objc_allocWithZone(v25);
  *&v1[v27] = sub_1007626AC();
  v30 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v1[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect] = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView] = 0;
  v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v34 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isEnabledObserver];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding] = 2;
  v35 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration];
  v35[3] = sub_10076404C();
  v35[4] = &protocol witness table for EmptyConfiguration;
  sub_10000DB7C(v35);
  sub_10076403C();
  v36 = &v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration] = 0;
  if (v101)
  {
    v37 = sub_10076C04C();
    *(&v113 + 1) = v37;
    v114 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v38 = sub_10000DB7C(&aBlock);
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.glass_offer_button_2025A(_:), v37);
    LOBYTE(v37) = sub_10076C90C();
    sub_10000CD74(&aBlock);
    if (v37)
    {
      v40 = [objc_allocWithZone(UIGlassEffect) init];
      v41 = *&v2[v31];
      *&v2[v31] = v40;

      v42 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v39 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v43 = *&v2[v31];
  *&v2[v31] = 0;

  v42 = 0;
LABEL_10:
  v44 = *&v2[v32];
  *&v2[v32] = v42;

  v116.receiver = v2;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v45 setScalesLargeContentImage:1];
  v46 = [objc_opt_self() mainScreen];
  [v46 scale];
  v48 = v47;

  v49 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape] setContentsScale:v48];
  [*&v45[v49] setFillColor:0];
  v50 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape] setContentsScale:v48];
  [*&v45[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  v52 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label];
  sub_10076266C();

  v53 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  [*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView] setContentMode:4];
  v54 = sub_10076C04C();
  *(&v113 + 1) = v54;
  v114 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v55 = sub_10000DB7C(&aBlock);
  (*(*(v54 - 8) + 104))(v55, v39, v54);
  v56 = sub_10076C90C();
  sub_10000CD74(&aBlock);
  if (v56)
  {
    v57 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView];
    if (v57 && (v58 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect]) != 0)
    {
      v59 = v57;
      v60 = v58;
      sub_10076E3CC();
      sub_100770C2C();
      [v59 setUserInteractionEnabled:0];
      [v59 setEffect:v60];
      v61 = [v59 contentView];
      [v61 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView]];

      [v45 addSubview:v59];
    }

    else
    {
      [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView]];
    }

    v65 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v66 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v67 = [*&v45[v66] layer];
    [v67 addSublayer:*&v45[v49]];

    v68 = [*&v45[v66] layer];
    [v68 addSublayer:*&v45[v50]];

    [*&v45[v65] addSubview:*&v45[v66]];
    [*&v45[v65] addSubview:*&v45[v51]];
    [*&v45[v65] addSubview:*&v45[v53]];
  }

  else
  {
    v62 = v45;
    v63 = [v62 layer];
    [v63 addSublayer:*&v45[v49]];

    v64 = [v62 layer];
    [v64 addSublayer:*&v45[v50]];

    [v62 addSubview:*&v45[v51]];
    [v62 addSubview:*&v45[v53]];
  }

  v69 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  v70 = *&v45[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel];
  sub_10076266C();

  [v45 addSubview:*&v45[v69]];
  [*&v45[v69] setShowsLargeContentViewer:1];
  v71 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v45 addInteraction:v71];

  isEscapingClosureAtFileLocation = [v45 traitCollection];
  v73 = sub_10077071C();
  v74 = v107;
  v75 = v106;
  v76 = v105;
  if ((v73 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v77 = qword_100944CA0;
    goto LABEL_23;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v77 = qword_100944C88;
LABEL_23:
    v78 = sub_10000A61C(v74, v77);
    v79 = *(v75 + 16);
    v80 = v102;
    v79(v102, v78, v74);

    v81 = *(v75 + 32);
    v81(v76, v80, v74);
    v82 = objc_opt_self();
    v83 = v104;
    v79(v104, v76, v74);
    v84 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v45;
    v81((v85 + v84), v83, v74);
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1001EB7F8;
    *(v86 + 24) = v85;
    v114 = sub_1000349FC;
    v115 = v86;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v113 = sub_1001C5148;
    *(&v113 + 1) = &unk_10088C9A0;
    v87 = _Block_copy(&aBlock);
    v45 = v45;

    [v82 performWithoutAnimation:v87];
    _Block_release(v87);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v88 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v45[v88], &aBlock);
  sub_10000CF78(&aBlock, *(&v113 + 1));
  sub_1001EB08C(&qword_10094D5D0, v89, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A3C();
  sub_10000CD74(&aBlock);
  aBlock = 0u;
  v113 = 0u;
  memset(v111, 0, sizeof(v111));
  v90 = v94;
  sub_10076F90C();
  sub_10000CFBC(v111, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  (*(v95 + 8))(v90, v96);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_100783DD0;
  *(v91 + 32) = sub_10076E88C();
  *(v91 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  (*(v75 + 8))(v76, v74);

  return v45;
}

id sub_1001E9A08(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label);
  sub_1007643EC();
  [v2 frame];
  [v2 setFrame:?];
  v3 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape);
  sub_1007643EC();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape);
  sub_1007643EC();
  [v4 frame];

  return [v4 setFrame:?];
}

id ArcadeSubscribeViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001E9D8C()
{
  swift_getObjectType();
  v1 = [v0 superview];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    sub_10000A5D4(&unk_100945BF0, &qword_100786810);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100788B20;
    *(v3 + 32) = sub_10076E88C();
    *(v3 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v3 + 48) = sub_10076E3EC();
    *(v3 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v3 + 64) = sub_10076E3BC();
    *(v3 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v3 + 80) = sub_10076E3FC();
    *(v3 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v4 = sub_100770C6C();

    *&v0[v2] = v4;
  }

  else
  {
    if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration])
    {
      return;
    }

    swift_unknownObjectRetain();
    sub_100770C7C();
  }

  swift_unknownObjectRelease();
}

void sub_1001E9F40()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v0[v2], v11);
  sub_10000CF78(v11, v12);
  [v0 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_1001EB08C(&qword_10094D5D0, v3, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A4C();
  sub_10000CD74(v11);
  v4 = sub_10076C04C();
  v12 = v4;
  v13 = sub_1001EB08C(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v5 = sub_10000DB7C(v11);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.glass_offer_button_2025A(_:), v4);
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v11);
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v8 bounds];
        [v6 convertRect:v8 fromCoordinateSpace:?];
        [v10 setFrame:?];

        v8 = v10;
      }
    }
  }
}

uint64_t sub_1001EA5C8(char a1)
{
  swift_getObjectType();
  LODWORD(v3) = 1057971241;
  if (a1)
  {
    *&v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.25;
  }

  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.56;
  }

  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape) setOpacity:v3];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setAlpha:v4];
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label) setAlpha:v5];
  v6 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(v1 + v6, v9);
  sub_10000CF78(v9, v9[3]);
  sub_1001EB08C(&qword_10094D5D0, v7, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A6C();
  return sub_10000CD74(v9);
}

id sub_1001EA724()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "invalidateIntrinsicContentSize");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled;
  v0[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000A570(&v0[v5], v8);
  sub_10000CF78(v8, v9);
  sub_1001EB08C(&qword_10094D5D0, v6, type metadata accessor for OfferButton, &unk_1007943B8);
  sub_100767A7C();
  sub_10000CD74(v8);
  sub_10000A570(&v0[v5], v8);
  sub_10000CF78(v8, v9);
  sub_100767A3C();
  sub_10000CD74(v8);
  [v2 setAnimationsEnabled:v3];
  v0[v4] = 1;
  [v0 setNeedsLayout];
  return [v0 setNeedsDisplay];
}

id sub_1001EA9B8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1001EA9CC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1001EA9E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1001EA9F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_1001EAA2C()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_1001EAA64()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1001EAAD4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_1001EAB28;
}

id sub_1001EAB3C()
{
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_1001EAB78(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001E7E00(v2);
  return sub_100019A4C;
}

void *sub_1001EAC00()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_1001EAC50()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_1001EAC88(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1001EACD0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_1001EAD2C;
}

void sub_1001EAD2C(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_1001EAD74()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076FF9C();

  return v3;
}

void sub_1001EADDC(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setLargeContentTitle:v4];
}

uint64_t (*sub_1001EAE48(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001EAEB8(v2);
  return sub_10001D41C;
}

void (*sub_1001EAEB8(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1001EAF40;
}

void sub_1001EAF40(uint64_t *a1, char a2, double a3)
{
  v4 = a1[1];
  if (a2)
  {
    if (v4)
    {

      v5 = sub_10076FF6C();
    }

    else
    {
      v5 = 0;
    }

    [a1[2] setLargeContentTitle:v5];
  }

  else if (v4)
  {
    v5 = sub_10076FF6C();

    [a1[2] setLargeContentTitle:v5];
  }

  else
  {
    v5 = 0;
    [a1[2] setLargeContentTitle:0];
  }
}

uint64_t sub_1001EB014()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001EB074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001EB08C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1001EB0D4(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_10000A570(v1, v2);
    sub_10000CF78(v2, v2[3]);
    sub_10076586C();
    sub_10000CD74(v2);
  }
}

uint64_t sub_1001EB184()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v0 + v2, v8);
    sub_10000CF78(v8, v8[3]);
    sub_100767A2C();
    v4 = v3;
    v6 = v5;
    result = sub_10000CD74(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_1001EB244()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_label;
  if (qword_100940E30 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1888);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = sub_1007626BC();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel;
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_1009A18D0);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  sub_10076444C();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration);
  v25[3] = sub_10076404C();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_10000DB7C(v25);
  sub_10076403C();
  v26 = v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_traitChangeRegistration) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001EB734()
{
  v1 = sub_10076443C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1001EB7F8()
{
  sub_10076443C();
  v1 = *(v0 + 16);

  return sub_1001E9A08(v1);
}

char *sub_1001EB874(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_1001EBB2C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001EBBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a12@<D4>, double a13@<D5>, double a16, double a17)
{
  v58 = a6;
  v53 = a5;
  v63 = a4;
  v55 = a13;
  v54 = a12;
  v64 = a1;
  v62 = a7;
  v49 = sub_10076EA6C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076B5BC();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076C36C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  v28 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v28);
  v51 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v47 - v31;
  sub_100016E2C(a2, &v47 - v31, &qword_1009499A0, &qword_1007848B0);
  v50 = v28;
  sub_100016E2C(a3, &v32[*(v28 + 48)], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v60 = v23;
  v33 = *(v23 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v65[0]))
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v27;
  v61 = v22;
  v33(v27, v35, v22);
  sub_10076963C();
  v36 = v65[3];
  sub_10000CFBC(v65, &qword_100943310, &unk_100784150);
  swift_getKeyPath();
  v37 = v57;
  v38 = v56;
  sub_10076F49C();

  if ((*(v38 + 88))(v21, v37) == enum case for Shelf.ContentType.productReview(_:))
  {
    v39 = v32;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    if (v36)
    {
      (*(v60 + 16))(v52, v59, v61);
      sub_1005AC334(0.0);
      sub_10076C33C();
    }

    else
    {
      v46 = v47;
      sub_10076202C();
      (*(v41 + 16))(v52, v40, v42);
      sub_10052D554(v46);
      sub_10076C33C();
      (*(v48 + 8))(v46, v49);
    }

    (*(v41 + 8))(v40, v42);
    return sub_10000CFBC(v39, &qword_100942C40, &unk_100786C80);
  }

  else
  {
    v65[0] = v53;
    v43 = v51;
    sub_100016E2C(v32, v51, &qword_100942C40, &unk_100786C80);
    v44 = *(v50 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v60 + 8))(v59, v61);
    sub_10000CFBC(v32, &qword_100942C40, &unk_100786C80);
    sub_10000CFBC(v43 + v44, &qword_1009499A0, &qword_1007848B0);
    sub_10000CFBC(v43, &qword_1009499A0, &qword_1007848B0);
    return (*(v38 + 8))(v21, v37);
  }
}

uint64_t sub_1001EC290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001EC6B8();

  return sub_1007620BC();
}

uint64_t sub_1001EC374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1001EC6B8();

  return sub_1007620AC();
}

uint64_t sub_1001EC458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001EC714();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001EC4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_100016E2C(a2, v28 - v23, &qword_1009499A0, &qword_1007848B0);
  sub_100016E2C(a3, &v24[*(v19 + 56)], &qword_1009499A0, &qword_1007848B0);
  v28[5] = v25;
  sub_100016E2C(v24, v21, &qword_100942C40, &unk_100786C80);
  v26 = *(v19 + 56);
  sub_100061E6C();

  sub_1007620AC();
  sub_10000CFBC(v24, &qword_100942C40, &unk_100786C80);

  sub_10000CFBC(&v21[v26], &qword_1009499A0, &qword_1007848B0);
  return sub_10000CFBC(v21, &qword_1009499A0, &qword_1007848B0);
}

unint64_t sub_1001EC6B8()
{
  result = qword_10094D610;
  if (!qword_10094D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D610);
  }

  return result;
}

unint64_t sub_1001EC714()
{
  result = qword_10094D618;
  if (!qword_10094D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094D618);
  }

  return result;
}

uint64_t type metadata accessor for TodayCardLabelsView(uint64_t a1)
{
  result = qword_10094D6F8;
  if (!qword_10094D6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001ECBA4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  v3 = *(v0 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v6);
    result = sub_1000167E0(v4, v5);
    v2 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v8 = *(v1 + qword_10094D6C0) + v2;
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    result = sub_1000167E0(v9, v10);
    v2 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v12 = *(v1 + qword_10094D6D0) + v2;
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);

    v13(v15);

    return sub_1000167E0(v13, v14);
  }

  return result;
}

void sub_1001ECCB8()
{
  if (qword_10093FA50 != -1)
  {
    swift_once();
  }

  v0 = qword_10094D648;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_10094D650 = v6;
}

id sub_1001ECE0C()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_10094D668 = result;
  return result;
}

void sub_1001ECE78()
{
  if (qword_10093FA78 != -1)
  {
    swift_once();
  }

  v0 = qword_10094D670;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_10094D678 = v4;
}

void sub_1001ECF8C(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  v6 = *a3;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredFontDescriptorWithTextStyle:v8];
  v10 = [v9 fontDescriptorWithSymbolicTraits:32770];
  v11 = objc_opt_self();
  if (v10)
  {
    v12 = [v11 fontWithDescriptor:v10 size:0.0];

    v9 = v10;
  }

  else
  {
    v12 = [v11 fontWithDescriptor:v9 size:0.0];
  }

  *a4 = v12;
}

char *sub_1001ED0D8(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = sub_10076F9AC();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_10094D6A8] = 7;
  v3[qword_10094D6B0] = 7;
  v7 = qword_10094D6C8;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_10094D6D8] = 0;
  v3[qword_10094D6E8] = 0;
  v3[qword_10094D6F0] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_10094D6E0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_10094D6A0];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_10000A5D4(&qword_10094D750, &qword_1007947E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 5;
  v21 = qword_10093FA68;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10094D660;
  *(inited + 40) = qword_10094D660;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_10093FAA0;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10094D698;
  *(inited + 120) = qword_10094D698;
  *(inited + 128) = 4;
  v26 = qword_10093FA90;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10094D688;
  *(inited + 136) = qword_10094D688;
  v29 = sub_1000FC220(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_10000A5D4(&qword_10094D758, &qword_1007947E8);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_10094D6C0] = sub_1001E2CBC(v29, v24);
  v33 = sub_1000FC220(_swiftEmptyArrayStorage);
  if (qword_10093FA80 != -1)
  {
    swift_once();
  }

  v34 = qword_10094D678;
  objc_allocWithZone(v31);
  *&v3[qword_10094D6D0] = sub_1001E2CBC(v33, v34);
  v35 = sub_1000FC220(_swiftEmptyArrayStorage);
  if (qword_10093FA58 != -1)
  {
    swift_once();
  }

  v36 = qword_10094D650;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_10094D6B8] = sub_1001E2CBC(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_10094D6C0;
  *(*&v38[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_10094D6B8];
  v42 = qword_10094D6B8;
  v73 = qword_10094D6B8;
  *(v41 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_10094D6D0];
  v44 = qword_10094D6D0;
  v72 = qword_10094D6D0;
  *(v43 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v46 = v45;
  v47 = sub_100770D1C();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v50 = sub_100770CFC();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v52 = sub_100770D1C();
  [v51 setTextColor:v52];

  v53 = qword_10094D6C8;
  [*&v38[qword_10094D6C8] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v86, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v86, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v86, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  sub_10076F95C();
  sub_10000CFBC(&v84, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v86, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v67 = swift_allocObject();
  v76 = xmmword_100783DD0;
  *(v67 + 16) = xmmword_100783DD0;
  *(v67 + 32) = sub_10076E88C();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = sub_10076E3FC();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v38;
}

id sub_1001EDB98()
{
  v1 = v0;
  v2 = *&v0[qword_10094D6B8];
  v3 = qword_10094D6A8;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_10094D6A8];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_1001E367C(v4, v5);
  v6 = *&v1[qword_10094D6C0];
  v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_1001E367C(v7, v8);
  v9 = *&v1[qword_10094D6D0];
  v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_1001E367C(v10, v11);

  return [v1 setNeedsLayout];
}

double sub_1001EDC4C()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_10094D6A8];
  v2 = *&v0[qword_10094D6B8];
  if ([*&v2[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_10094D6C0], (objc_msgSend(*&v3[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_10094D6C0];
    v5 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_10094D6D8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_10094D6D8] != 1)
      {
        v10 = *&v0[qword_10094D6C8];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

id sub_1001EDE3C()
{
  v1 = v0;
  v2 = *&v0[qword_10094D6B8];
  v3 = &v0[qword_10094D6E0];
  v4 = *&v0[qword_10094D6E0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_10094D6C0];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_10094D6D0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_1001EE26C()
{
  v1 = *(v0 + qword_10094D6B8);
  v2 = *(v0 + qword_10094D6F0);
  v3 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_10094D6D0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_10094D6C0);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_10094D6D0);
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_1001EE314(void *a1)
{
  v1 = a1;
  sub_1001EDE3C();
}

void sub_1001EE35C(uint64_t a1, char a2)
{
  v4 = sub_10076C7EC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_1001F0244(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    sub_10077018C();
    sub_10077018C();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (sub_10077167C())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_1001EE568();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_1001EE568();
  }
}

void sub_1001EE568()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    sub_10076FF9C();
    v1 = sub_10076FF6C();

    v2 = [*&v0[qword_10094D6B8] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_10094D6D0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_10094D6B8] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_10094D6D0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_1001EE6D4@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_10094D6A0 + 16);
  v21 = *(v1 + qword_10094D6A0);
  v3 = *(v1 + qword_10094D6A0 + 32);
  v4 = *(v1 + qword_10094D6B8);
  v5 = *(v1 + qword_10094D6C0);
  v6 = *(v1 + qword_10094D6A0 + 40);
  v7 = *&v5[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_10094D6C8);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_10094D6D0);
  v16 = *(v1 + qword_10094D6D8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_1001F0350();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_10003F19C(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_1001EE880(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

void sub_1001EE99C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

void sub_1001EEAB8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_10000CF78(a1, a1[3]);
  v4 = sub_10076E36C();
  v6 = v3();

  if (v6)
  {
    sub_10000CF78(a1, a1[3]);
    v5 = sub_10076E36C();
    if (sub_10077086C())
    {
      v6;
    }

    sub_10008B8A4(a1, a1[3]);
    sub_10076E37C();
  }
}

id sub_1001EEBD4(void *a1)
{
  v1 = a1;
  sub_1001EEC4C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1001EEC4C()
{
  v0 = sub_1001EEEC8();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_10076FF9C();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_10049D954(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_10049D954((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_10003BCA8();
  v16 = sub_10076FEFC();

  return v16;
}

void sub_1001EEE34(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_10076FF9C();
    v6 = a1;
    a3 = sub_10076FF6C();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

void *sub_1001EEEC8()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784DC0;
  v2 = *(v0 + qword_10094D6B8);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_10094D6C0);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_10094D6D0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = sub_10077149C())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v5)
      {
LABEL_18:
        v11 = sub_10077149C();
        goto LABEL_9;
      }
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = sub_10077149C();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = sub_10077158C();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 16);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = sub_1007714EC();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = sub_10077149C();
      }

      else
      {
        v18 = *(v21 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}