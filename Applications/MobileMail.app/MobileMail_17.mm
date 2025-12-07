char *sub_1003E4014()
{
  v8 = 0;
  v3 = 0;
  v4 = (*(*(type metadata accessor for PhotoContentConfiguration(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v6 = &v3 - v4;
  v8 = v0;
  type metadata accessor for PhotoContentView(v1);
  sub_1003E35EC(v5, v6);
  v7 = sub_1003E4144(v6);
  sub_1003E4180();
  return v7;
}

uint64_t type metadata accessor for PhotoContentView(uint64_t a1)
{
  v2 = qword_1006DB6E8;
  if (!qword_1006DB6E8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1003E4180()
{
  v2 = qword_1006DB588;
  if (!qword_1006DB588)
  {
    type metadata accessor for PhotoContentView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB588);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1003E4200(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v48 = a2;
  v67 = 0;
  v66 = 0;
  v38 = type metadata accessor for CornerConfiguration();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v42 = &v10 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v41);
  v44 = &v10 - v43;
  v45 = sub_10025C9B0(&qword_1006DB750, &qword_100509F78);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v47 = &v10 - v46;
  v50 = (*(*(sub_10025C9B0(&qword_1006DB578, &qword_100509DF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v49);
  v51 = &v10 - v50;
  v52 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v53 = &v10 - v52;
  v54 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v55 = &v10 - v54;
  v67 = v7;
  v66 = v8;
  if (*v7 != *v8)
  {
    return 0;
  }

  v36 = *(v49 + 8);
  _objc_retain(v36);
  _objc_retain(v36);
  v37 = *(v48 + 8);
  _objc_retain(v37);
  _objc_retain(v37);
  v64 = v36;
  v65 = v37;
  if (v36)
  {
    sub_1002935A0(&v64, &v58);
    if (v65)
    {
      v57 = v58;
      v56 = v65;
      sub_1002A75C8();
      v34 = static NSObject.== infix(_:_:)();
      _objc_release(v56);
      _objc_release(v57);
      sub_10026A58C(&v64);
      v35 = v34;
      goto LABEL_8;
    }

    _objc_release(v58);
    goto LABEL_10;
  }

  if (v65)
  {
LABEL_10:
    sub_1002E4C54(&v64);
    v35 = 0;
    goto LABEL_8;
  }

  sub_10026A58C(&v64);
  v35 = 1;
LABEL_8:
  v33 = v35;
  _objc_release(v37);
  _objc_release(v36);
  if (v33)
  {
    v31 = *(v49 + 16);

    v32 = *(v48 + 16);

    v62 = v31;
    v63 = v32;
    if (v31)
    {
      sub_1002A730C(&v62, &v61);
      if (v63)
      {
        v28 = &v60;
        v60 = v61;
        v27 = &v59;
        v59 = v63;
        v26 = v61;
        v24 = v63;
        v25 = sub_1002913A4();
        sub_1003E7CC4();
        v29 = static Array<A>.== infix(_:_:)();
        sub_100264880(v27);
        sub_100264880(v28);
        sub_100264880(&v62);
        v30 = v29;
        goto LABEL_18;
      }

      sub_100264880(&v61);
    }

    else if (!v63)
    {
      sub_100264880(&v62);
      v30 = 1;
LABEL_18:
      v23 = v30;

      if ((v23 & 1) == 0)
      {
        return 0;
      }

      v19 = type metadata accessor for PhotoContentConfiguration(0);
      sub_1003E3D94((v49 + *(v19 + 28)), v55);
      sub_1003E3D94((v48 + *(v19 + 28)), v53);
      v20 = &v47[*(v45 + 48)];
      sub_1003E3D94(v55, v47);
      sub_1003E3D94(v53, v20);
      v21 = *(v39 + 48);
      v22 = v39 + 48;
      if (v21(v47, 1, v38) == 1)
      {
        if (v21(v20, 1, v38) != 1)
        {
          goto LABEL_29;
        }

        sub_1003E3F6C(v47);
        v18 = 1;
      }

      else
      {
        sub_1003E3D94(v47, v51);
        if (v21(v20, 1, v38) == 1)
        {
          (*(v39 + 8))(v51, v38);
LABEL_29:
          sub_1003E7B18(v47);
          v18 = 0;
          goto LABEL_28;
        }

        v14 = *(v39 + 32);
        v13 = v39 + 32;
        v14(v44, v51, v38);
        v14(v42, v20, v38);
        sub_1003E7C44();
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *(v39 + 8);
        v15 = v39 + 8;
        v16(v42, v38);
        v16(v44, v38);
        sub_1003E3F6C(v47);
        v18 = v17;
      }

LABEL_28:
      v12 = v18;
      sub_1003E3F6C(v53);
      sub_1003E3F6C(v55);
      return (v12 & 1) != 0;
    }

    sub_1002A7344(&v62);
    v30 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1003E4AC4(uint64_t a1)
{
  v16 = a1;
  v2 = v1;
  v18 = v2;
  v25 = 0;
  v24 = 0;
  v19 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
  v9 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v20 = &v8 - v9;
  v25 = a1;
  v24 = v4;
  v5 = *v4;
  v10 = &v23;
  v23 = v5;
  sub_1003E76C0();
  Hasher.combine<A>(_:)();
  v11 = *(v18 + 8);
  _objc_retain(v11);
  v13 = &v22;
  v22 = v11;
  v12 = sub_10025C9B0(&qword_1006DB708, &qword_100509F68);
  sub_1003E7738();
  Hasher.combine<A>(_:)();
  sub_10026A58C(v13);
  v14 = *(v18 + 16);

  v17 = &v21;
  v21 = v14;
  v15 = sub_10025C9B0(&qword_1006DB720, &qword_100509F70);
  sub_1003E7850();
  Hasher.combine<A>(_:)();
  sub_100264880(v17);
  v6 = type metadata accessor for PhotoContentConfiguration(0);
  sub_1003E3D94((v18 + *(v6 + 28)), v20);
  sub_1003E7A00();
  Hasher.combine<A>(_:)();
  return sub_1003E3F6C(v20);
}

uint64_t sub_1003E4C94()
{
  type metadata accessor for PhotoContentConfiguration(0);
  sub_1003E5C70();
  return _hashValue<A>(for:)();
}

uint64_t sub_1003E4D58@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  swift_beginAccess();
  sub_1003E35EC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003E4DBC(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for PhotoContentConfiguration(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E35EC(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E5CF0(v4, v5);
  swift_endAccess();
  return sub_1003E3258(v7);
}

void *sub_1003E4E94()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1003E4F40@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration);
  swift_beginAccess();
  sub_1003E3D94(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003E4FA4(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006DB578, &qword_100509DF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E3D94(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E3344(v4, v5);
  swift_endAccess();
  sub_1003E4F00();
  return sub_1003E3F6C(v7);
}

id sub_1003E508C()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_1003E5194(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1003E522C@<X0>(uint64_t *a1@<X8>)
{
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  swift_beginAccess();
  a1[3] = type metadata accessor for PhotoContentConfiguration(0);
  a1[4] = sub_1003E356C();
  v2 = sub_10026AC9C(a1);
  sub_1003E35EC(v5, v2);
  return swift_endAccess();
}

uint64_t sub_1003E52B4(void *a1)
{
  v7 = a1;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v2 = sub_10025C9B0(&qword_1006DB5C0, &unk_100509E00);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v14 = &v5 - v6;
  v13 = type metadata accessor for PhotoContentConfiguration(0);
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v7);
  v11 = &v5 - v10;
  v18 = &v5 - v10;
  v17 = v3;
  v16 = v1;
  v12 = v15;
  sub_1002F171C(v3, v15);
  sub_10025C9B0(&qword_1006D6CE8, &unk_1004FE4B0);
  if (swift_dynamicCast())
  {
    (*(v8 + 56))(v14, 0, 1, v13);
  }

  else
  {
    (*(v8 + 56))(v14, 1, 1, v13);
  }

  if ((*(v8 + 48))(v14, 1, v13) == 1)
  {
    sub_1003E5FD0(v14);
  }

  else
  {
    sub_1003E60F8(v14, v11);
    sub_1003E54F8(v11);
    sub_1003E3258(v11);
  }

  return sub_1000160F4(v7);
}

uint64_t sub_1003E54F8(char *a1)
{
  v30 = a1;
  v41 = 0;
  v40 = 0;
  v33 = 0;
  v2 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
  v24 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v25 = &isa - v24;
  v26 = type metadata accessor for PhotoContentConfiguration(0);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v30);
  v31 = &isa - v27;
  v41 = v3;
  v40 = v1;
  v28 = (v1 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v29 = &v39;
  swift_beginAccess();
  sub_1003E35EC(v28, v31);
  swift_endAccess();
  v32 = sub_1003E4200(v31, v30);
  sub_1003E3258(v31);
  result = v32;
  if (!v32)
  {
    v5 = v23;
    sub_1003E35EC(v30, v31);
    v19 = (v5 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
    v20 = &v38;
    swift_beginAccess();
    sub_1003E5CF0(v31, v19);
    swift_endAccess();
    sub_1003E3D94(&v30[*(v26 + 28)], v25);
    sub_1003E4FA4(v25);
    v21 = *(v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
    _objc_retain(v21);
    v22 = *(v30 + 1);
    _objc_retain(v22);
    v37 = v22;
    v18 = v22 == 0;
    v10 = v18;
    sub_10026A58C(&v37);
    [v21 setHidden:v10];
    _objc_release(v21);
    v13 = &qword_1006DB000;
    v12 = *(v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView);
    _objc_retain(v12);
    v11 = *(v30 + 1);
    _objc_retain(v11);
    [v12 setImage:v11];
    _objc_release(v11);
    _objc_release(v12);
    v14 = *(v23 + v13[180]);
    _objc_retain(v14);
    [v14 setAlpha:*v30];
    _objc_release(v14);
    v15 = v23 + OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration;
    v16 = &v35;
    swift_beginAccess();
    v17 = *(v15 + 16);

    swift_endAccess();
    v34 = v17;
    if (v17)
    {
      v36 = v34;
    }

    else
    {
      v9 = 0;
      sub_1002913A4();
      v36 = _allocateUninitializedArray<A>(_:)();
      if (v34)
      {
        sub_100264880(&v34);
      }
    }

    v8 = v36;
    v33 = v36;
    v7 = sub_1003E508C();

    sub_1002913A4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 updateContacts:isa];
    _objc_release(isa);
    _objc_release(v7);
  }

  return result;
}

uint64_t (*sub_1003E59CC(uint64_t **a1))()
{
  v4 = sub_100294700(0x58uLL, 17349);
  *a1 = v4;
  v4[10] = v1;
  sub_1003E522C(v4);
  return sub_1003E5A4C;
}

void sub_1003E5A4C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1002F171C(v2, (v2 + 5));
    sub_1003E52B4(v2 + 5);
    sub_1000160F4(v2);
  }

  else
  {
    sub_1003E52B4(v2);
  }

  free(v2);
}

char *sub_1003E5AC4(char *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  sub_1003E311C(&v1[OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration]);
  v4 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView;
  sub_1002649B4();
  *&v1[v4] = sub_10025C704();
  *&v11[OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth] = 0x4041000000000000;
  v5 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v2 = type metadata accessor for CornerConfiguration();
  (*(*(v2 - 8) + 56))(&v11[v5], 1);
  *&v11[OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController] = 0;
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  _objc_retain(v8);
  v11 = v8;
  sub_1003E6280();
  sub_1003E54F8(a1);
  sub_1003E3258(a1);
  _objc_release(v11);
  return v8;
}

unint64_t sub_1003E5C70()
{
  v2 = qword_1006DB590;
  if (!qword_1006DB590)
  {
    type metadata accessor for PhotoContentConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB590);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003E5CF0(char *a1, char *a2)
{
  *a2 = *a1;
  v3 = *(a2 + 1);
  *(a2 + 1) = *(a1 + 1);
  _objc_release(v3);
  *(a2 + 2) = *(a1 + 2);

  v8 = *(type metadata accessor for PhotoContentConfiguration(0) + 28);
  v10 = type metadata accessor for CornerConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if ((v12)(&a2[v8], 1))
  {
    if (v12(&a1[v8], 1, v10))
    {
      v5 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
      memcpy(&a2[v8], &a1[v8], *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))();
      (*(v11 + 56))(&a2[v8], 0, 1, v10);
    }
  }

  else if (v12(&a1[v8], 1, v10))
  {
    (*(v11 + 8))();
    v4 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
    memcpy(&a2[v8], &a1[v8], *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v11 + 40))(&a2[v8], &a1[v8], v10);
  }

  return a2;
}

uint64_t sub_1003E5FD0(uint64_t a1)
{
  v6 = type metadata accessor for PhotoContentConfiguration(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    _objc_release(*(a1 + 8));

    v2 = a1 + *(v6 + 28);
    v3 = type metadata accessor for CornerConfiguration();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  return a1;
}

char *sub_1003E60F8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = *(type metadata accessor for PhotoContentConfiguration(0) + 28);
  v7 = type metadata accessor for CornerConfiguration();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a1[v5], 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
    memcpy(&a2[v5], &a1[v5], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(&a2[v5], 0, 1, v7);
  }

  return a2;
}

void sub_1003E6280()
{
  v1 = sub_1003E508C();
  v27 = [v1 view];
  _objc_release(v1);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v2);
  [v25 addSubview:v2];
  _objc_release(v2);
  v3 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v3);
  [v25 insertSubview:v27 aboveSubview:v3];
  _objc_release(v3);
  _objc_retain(v25);
  v4 = [objc_opt_self() secondarySystemBackgroundColor];
  [v25 setBackgroundColor:?];
  _objc_release(v4);
  _objc_release(v25);
  v5 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  v6 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v6);
  [v6 setContentMode:2];
  _objc_release(v6);
  v7 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v7);
  [v7 setClipsToBounds:1];
  _objc_release(v7);
  v8 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v8);
  [v8 setHidden:1];
  _objc_release(v8);
  v23 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v22 = v0;
  v9 = [v27 widthAnchor];
  v10 = [v9 constraintEqualToConstant:*&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth]];
  _objc_release(v9);
  *v22 = v10;
  v12 = [v27 heightAnchor];
  v11 = [v27 widthAnchor];
  v13 = [v12 constraintEqualToAnchor:?];
  _objc_release(v11);
  _objc_release(v12);
  v22[1] = v13;
  v16 = [v27 topAnchor];
  _objc_retain(v25);
  v14 = [v25 layoutMarginsGuide];
  _objc_release(v25);
  v15 = [v14 topAnchor];
  _objc_release(v14);
  v17 = [v16 constraintEqualToAnchor:v15];
  _objc_release(v15);
  _objc_release(v16);
  v22[2] = v17;
  v20 = [v27 trailingAnchor];
  _objc_retain(v25);
  v18 = [v25 layoutMarginsGuide];
  _objc_release(v25);
  v19 = [v18 trailingAnchor];
  _objc_release(v18);
  v21 = [v20 constraintEqualToAnchor:v19];
  _objc_release(v19);
  _objc_release(v20);
  v22[3] = v21;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
  _objc_release(isa);
  v26 = *&v25[OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView];
  _objc_retain(v26);
  [v26 mf_pinToView:v25 usingLayoutMargins:0];
  _objc_release(v26);
  _objc_release(v27);
}

void sub_1003E68A8()
{
  sub_1003E311C(OBJC_IVAR____TtC10MobileMail16PhotoContentView_appliedConfiguration);
  v1 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_imageView;
  sub_1002649B4();
  *v1 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail16PhotoContentView_senderImageViewWidth = 0x4041000000000000;
  v2 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v0 = type metadata accessor for CornerConfiguration();
  (*(*(v0 - 8) + 56))(v2, 1);
  *OBJC_IVAR____TtC10MobileMail16PhotoContentView____lazy_storage___avatarViewController = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003E6A60()
{
  ObjectType = swift_getObjectType();
  v14 = 0;
  v11 = type metadata accessor for CornerConfiguration();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v5 = &v1 - v4;
  v14 = v0;
  _objc_retain(v0);
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  _objc_release(v0);
  v7 = OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration;
  v10 = &v0[OBJC_IVAR____TtC10MobileMail16PhotoContentView_contentCornerConfiguration];
  swift_beginAccess();
  if ((*(v8 + 48))(v10, 1, v11) == 0)
  {
    (*(v8 + 16))(v5, &v3[v7], v11);
    swift_endAccess();
    _objc_retain(v3);
    v2.super.isa = [v3 layer];
    _objc_release(v3);
    CornerConfiguration.apply(to:)(v2);
    _objc_release(v2.super.isa);
    (*(v8 + 8))(v5, v11);
  }

  else
  {
    swift_endAccess();
  }

  _objc_retain(v3);
  [v3 setClipsToBounds:1];
  _objc_release(v3);
}

void (*sub_1003E6EA4(uint64_t ***a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_100294700(0x28uLL, 52091);
  *a1 = v2;
  v2[4] = sub_1003E59CC(v2);
  return sub_10034C098;
}

uint64_t type metadata accessor for PhotoConfigurationCell(uint64_t a1)
{
  v2 = qword_1006DB5F0;
  if (!qword_1006DB5F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1003E6FE4(uint64_t a1)
{
  updated = sub_1003E70D0(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1003E70D0(uint64_t a1)
{
  v5 = qword_1006DB600;
  if (!qword_1006DB600)
  {
    type metadata accessor for SearchItem.Photo();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006DB600);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1003E71BC(uint64_t a1)
{
  v5 = sub_1003E72D0(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1003E736C(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1003E7410(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1003E72D0(uint64_t a1)
{
  v5 = qword_1006DB670;
  if (!qword_1006DB670)
  {
    sub_1002A75C8();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006DB670);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1003E736C(uint64_t a1)
{
  v5 = qword_1006DB678;
  if (!qword_1006DB678)
  {
    sub_10025CAA4(&qword_1006DB680, &unk_100509E50);
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006DB678);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1003E7410(uint64_t a1)
{
  v5 = qword_1006DB688;
  if (!qword_1006DB688)
  {
    type metadata accessor for CornerConfiguration();
    v4 = type metadata accessor for Optional();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006DB688);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1003E74C8(uint64_t a1)
{
  updated = type metadata accessor for PhotoContentConfiguration(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1003E7410(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1003E7640()
{
  v2 = qword_1006DB6F8;
  if (!qword_1006DB6F8)
  {
    type metadata accessor for PhotoContentConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E76C0()
{
  v2 = qword_1006DB700;
  if (!qword_1006DB700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7738()
{
  v2 = qword_1006DB710;
  if (!qword_1006DB710)
  {
    sub_10025CAA4(&qword_1006DB708, &qword_100509F68);
    sub_1003E77D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E77D0()
{
  v2 = qword_1006DB718;
  if (!qword_1006DB718)
  {
    sub_1002A75C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7850()
{
  v2 = qword_1006DB728;
  if (!qword_1006DB728)
  {
    sub_10025CAA4(&qword_1006DB720, &qword_100509F70);
    sub_1003E78E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E78E8()
{
  v2 = qword_1006DB730;
  if (!qword_1006DB730)
  {
    sub_10025CAA4(&qword_1006DB680, &unk_100509E50);
    sub_1003E7980();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7980()
{
  v2 = qword_1006DB738;
  if (!qword_1006DB738)
  {
    sub_1002913A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7A00()
{
  v2 = qword_1006DB740;
  if (!qword_1006DB740)
  {
    sub_10025CAA4(&qword_1006DB578, &qword_100509DF8);
    sub_1003E7A98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7A98()
{
  v2 = qword_1006DB748;
  if (!qword_1006DB748)
  {
    type metadata accessor for CornerConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E7B18(uint64_t a1)
{
  v4 = type metadata accessor for CornerConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_10025C9B0(&qword_1006DB750, &qword_100509F78) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1003E7C44()
{
  v2 = qword_1006DB758;
  if (!qword_1006DB758)
  {
    type metadata accessor for CornerConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E7CC4()
{
  v2 = qword_1006DB760;
  if (!qword_1006DB760)
  {
    sub_1002913A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB760);
    return WitnessTable;
  }

  return v2;
}

uint64_t QuickReplyView.ResetReason.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did change reference message", 0x1CuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did complete quick-reply send animation", 0x27uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did disable quick reply", 0x17uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Did transition to full compose", 0x1EuLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Missing animation context", 0x19uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The user scrolled before the animation completed", 0x30uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The animation timed out waiting for a message to be added to the conversation view", 0x52uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t QuickReplyView.ResetReason.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 0;
}

uint64_t sub_1003E8184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = QuickReplyView.ResetReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

double static QuickReplyView.defaultHeight.getter()
{
  sub_1003E82C0();
  v3 = *sub_1003E83AC();
  _objc_retain(v3);
  String.height(width:font:)();
  v4 = v0;
  static QuickReply.additionalWebViewPadding.getter();
  v5 = v4 + v1 + 24.0 + 24.0;
  _objc_release(v3);

  return v5;
}

uint64_t sub_1003E82C0()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a quick reply to a single recipient", 0x2BuLL, 1);
  bundle = sub_10028FEB4();
  v2._countAndFlagsBits = sub_100015E30();
  v2._object = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, bundle, v2, v1)._countAndFlagsBits;

  _objc_release(bundle);

  return countAndFlagsBits;
}

uint64_t *sub_1003E83AC()
{
  if (qword_1006D6088 != -1)
  {
    swift_once();
  }

  return &qword_1006DB770;
}

uint64_t QuickReplyView.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t QuickReplyView.delegate.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*QuickReplyView.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 51616);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail14QuickReplyView_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

double sub_1003E881C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1003E8880(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_1003E88EC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E895C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E89F4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8A64(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8AFC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8B6C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8C04()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8C74(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8D0C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8D7C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8E14()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8E84(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003E8F1C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1003E8F8C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

double QuickReplyView.horizontalInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.horizontalInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E91A8();
}

void sub_1003E91A8()
{
  v9 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint;
  v10 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint);
  swift_beginAccess();
  if (*v10)
  {
    v7 = *(v8 + v9);
    _objc_retain(v7);
    swift_endAccess();
    v5 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
    swift_beginAccess();
    v6 = *v5;
    swift_endAccess();
    [v7 setConstant:v6];
    _objc_release(v7);
  }

  else
  {
    swift_endAccess();
  }

  v4 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint);
  swift_beginAccess();
  if (*v4)
  {
    v3 = *v4;
    _objc_retain(*v4);
    swift_endAccess();
    v1 = (v8 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:-v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.horizontalInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E93E4;
}

void sub_1003E93E4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E91A8();
  }
}

double QuickReplyView.topInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.topInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E95B8();
}

void sub_1003E95B8()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    v1 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.topInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E9724;
}

void sub_1003E9724(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E95B8();
  }
}

double QuickReplyView.bottomInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void QuickReplyView.bottomInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_1003E98F8();
}

void sub_1003E98F8()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    v1 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant:-v2];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*QuickReplyView.bottomInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003E9A68;
}

void sub_1003E9A68(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1003E98F8();
  }
}

id QuickReplyView.contentView.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA078();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

BOOL QuickReplyView.isComposing.getter()
{
  v4[4] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  v4[0] = v3;
  sub_10026A58C(v4);
  return v3 != 0;
}

id sub_1003E9D74()
{
  v1 = objc_opt_self();
  _objc_retain(UIFontTextStyleBody);
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  _objc_release(UIFontTextStyleBody);
  result = v2;
  qword_1006DB770 = v2;
  return result;
}

void *sub_1003E9DFC()
{
  v1 = *sub_1003E83AC();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003E9E3C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1003E9EA0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void QuickReplyView.contentView.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EA078()
{
  v1 = sub_1003EA0D8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v1;
}

id sub_1003EA0D8()
{
  sub_1002AA63C();
  v4 = sub_10025C704();
  v1 = [objc_opt_self() mailConversationViewExpandedCellBackgroundColor];
  [v4 setBackgroundColor:?];
  _objc_release(v1);
  v2 = [v4 layer];
  _objc_retain(kCACornerCurveContinuous);
  [v2 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v2);
  v3 = [v4 layer];
  [v3 setCornerRadius:12.0];
  _objc_release(v3);
  [v4 setPreservesSuperviewLayoutMargins:1];
  [v4 setInsetsLayoutMarginsFromSafeArea:0];
  return v4;
}

void (*QuickReplyView.contentView.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = QuickReplyView.contentView.getter();
  return sub_1003EA2A4;
}

void sub_1003EA2A4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    QuickReplyView.contentView.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    QuickReplyView.contentView.setter(*a1);
  }
}

id sub_1003EA324()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA42C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EA42C()
{
  sub_100264928();
  v5 = sub_10025C704();
  _objc_retain(v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  type metadata accessor for QuickReplyView();
  sub_1003E82C0();
  v2 = String._bridgeToObjectiveC()();

  [v5 setText:v2];
  _objc_release(v2);
  v3 = *sub_1003E83AC();
  _objc_retain(v3);
  [v5 setFont:v3];
  _objc_release(v3);
  v4 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor:?];
  _objc_release(v4);
  [v5 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v0) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v0];
  return v5;
}

void sub_1003EA5B8(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_1003EA650()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EA75C(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

Class sub_1003EA75C(void *a1)
{
  v11 = a1;
  v13 = sub_1003F7EF8;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v17 = UIButtonTypeCustom;
  v23 = type metadata accessor for UIButton.Configuration();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v8 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v7 - v8;
  v28 = &v7 - v8;
  v27 = __chkstk_darwin(v11);
  static UIButton.Configuration.plain()();
  v1 = [objc_opt_self() mailInteractiveColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  sub_1002A75C8();
  v9 = MFImageGlyphQuickReplyDisabledSend;
  _objc_retain(MFImageGlyphQuickReplyDisabledSend);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_1002A7840(v2, v3);
  _objc_release(v9);
  UIButton.Configuration.image.setter();
  sub_100015D3C();
  v16 = swift_allocObject();
  _objc_retain(v11);
  swift_unknownObjectWeakInit();
  _objc_release(v11);

  v15 = sub_100015E30();
  v14 = v4;
  v12 = sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v26 = v19;
  sub_1003F7F00();
  _objc_retain(v19);
  v29.value.super.super.isa = v19;
  isa = UIButton.init(type:primaryAction:)(v17, v29).super.super.super.super.isa;
  v25 = isa;
  _objc_retain(isa);
  v18 = 0;
  [(objc_class *)isa setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(isa);
  LODWORD(v5) = 1148846080;
  [(objc_class *)isa setContentHuggingPriority:v17 forAxis:v5];
  _objc_retain(isa);
  [(objc_class *)isa setEnabled:v18 & 1];
  _objc_release(isa);
  _objc_release(v19);
  (*(v20 + 8))(v22, v23);
  return isa;
}

void sub_1003EAA98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v2 = swift_allocObject();
    _objc_retain(Strong);
    swift_unknownObjectWeakInit();
    _objc_release(Strong);

    QuickReplyView.animationContext(_:)(sub_1003F7F64, v2);

    _objc_release(Strong);
  }
}

void sub_1003EABD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v5 = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v3 = sub_1003EA650();
      [v5 quickReplyView:Strong didTapSendButton:? animationContext:?];
      _objc_release(v3);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

uint64_t QuickReplyView.animationContext(_:)(void (*a1)(void), uint64_t a2)
{
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v56 = 0u;
  v57 = 0u;
  v51 = 0;
  v41 = 0u;
  v42 = 0u;
  v70 = a1;
  v71 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v68 = Strong;
    v28 = (v32 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
    swift_beginAccess();
    v29 = *v28;
    _objc_retain(*v28);
    swift_endAccess();
    if (v29)
    {
      v67 = v29;
      v26 = sub_1003EB7B0();
      v27 = [v26 snapshotViewAfterScreenUpdates:0];
      _objc_release(v26);
      if (v27)
      {
        v66 = v27;
        v15 = sub_1003EB7B0();
        [v15 frame];
        v62 = v2;
        v63 = v3;
        v64 = v4;
        v65 = v5;
        v58 = v2;
        v59 = v3;
        v60 = v4;
        v61 = v5;
        [v27 setFrame:{v2, v3, v4, v5}];
        _objc_release(v15);
        v16 = QuickReplyView.contentView.getter();
        [v16 frame];
        v52 = v6;
        v53 = v7;
        v54 = v8;
        v55 = v9;
        v17 = v8;
        v18 = v9;
        *&v57 = v8;
        *(&v57 + 1) = v9;
        _objc_release(v16);
        v56 = 0uLL;
        v25 = sub_1003EA0D8();
        v51 = v25;
        v47 = 0;
        v48 = 0;
        v49 = v17;
        v50 = v18;
        [v25 setFrame:{0.0, 0.0, v17, v18}];
        sub_1003EDFB0(v25);
        [v29 frame];
        v43 = v10;
        v44 = v11;
        v45 = v12;
        v46 = v13;
        v19 = v10;
        v20 = v11;
        v21 = v12;
        v22 = v13;
        *&v41 = v10;
        *(&v41 + 1) = v11;
        *&v42 = v12;
        *(&v42 + 1) = v13;
        swift_getObjectType();

        _objc_retain(v27);
        _objc_retain(v25);
        v23 = swift_allocObject();
        v23[2] = a1;
        v23[3] = a2;
        v23[4] = v19;
        v23[5] = v20;
        v23[6] = v21;
        v23[7] = v22;
        v23[8] = v27;
        v23[9] = v25;
        v39 = sub_1003F1D74;
        v40 = v23;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = 0;
        v37 = sub_1002919E0;
        v38 = &unk_10065DDE8;
        v24 = _Block_copy(&aBlock);

        [Strong mailComposeViewSnapshotForQuickReplyView:v32 :v24];
        _Block_release(v24);
        _objc_release(v25);
        _objc_release(v27);
        _objc_release(v29);
        return swift_unknownObjectRelease();
      }

      _objc_release(v29);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  a1(0);
}

void sub_1003EB254(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_1003EB2EC()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EB3F8(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

Class sub_1003EB3F8(void *a1)
{
  sub_100015D3C();
  v5 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  v4 = sub_100015E5C();
  v2 = variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  sub_1003F7E30();
  _objc_retain(v6);
  v8.value.super.super.isa = v6;
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v8).super.super.super.super.isa;
  _objc_retain(isa);
  [(objc_class *)isa setTranslatesAutoresizingMaskIntoConstraints:0, 0, v4, v2, sub_1003F7E28, v5];
  _objc_release(isa);
  _objc_release(v6);
  return isa;
}

void sub_1003EB5AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v5 = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v3 = sub_1003EB2EC();
      [v5 quickReplyView:Strong didTapExpandButton:?];
      _objc_release(v3);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void sub_1003EB718(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EB7B0()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EB8BC();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EB8BC()
{
  sub_100264A18();
  sub_1002AA63C();
  _allocateUninitializedArray<A>(_:)();
  v4 = v0;
  *v0 = sub_1003EB2EC();
  v4[1] = sub_1003EA650();
  sub_1002612B0();
  v6 = sub_1003C7248(v1);
  _objc_retain(v6);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v6);
  [v6 setAxis:0];
  [v6 setAlignment:3];
  [v6 setDistribution:0];
  LODWORD(v2) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v2];
  v5 = sub_1003EB2EC();
  [(objc_class *)v5 setHidden:1];
  _objc_release(v5);
  return v6;
}

void sub_1003EBA3C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1003EBAD4()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1003EBBE0(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_1003EBBE0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4[4] = a1;
  sub_1003C7288();
  _objc_retain(a1);
  v4[3] = ObjectType;
  v4[0] = a1;
  return sub_1003C72EC(v4, "didTapContentView:");
}

void sub_1003EBC5C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1003EBCF4()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB778);
  sub_1000208F4(v1, qword_1006DB778);
  return sub_1003EBD40();
}

uint64_t sub_1003EBD78()
{
  if (qword_1006D6090 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB778);
}

uint64_t sub_1003EBDE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003EBD78();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1003EBE70(uint64_t a1)
{
  v10 = a1;
  v14 = 0;
  v13 = 0;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v4;
  v14 = __chkstk_darwin(v10);
  v13 = v1;
  v5 = sub_1003EBD78();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1003EBFD0()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply to %@", 0xBuLL, 1);
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose a quick reply to a list of recipients", 0x2DuLL, 1);
  bundle = sub_10028FEB4();
  v2._countAndFlagsBits = sub_100015E30();
  v2._object = v3;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, bundle, v2, v1)._countAndFlagsBits;

  _objc_release(bundle);

  return countAndFlagsBits;
}

uint64_t sub_1003EC0BC()
{
  v9 = 0;
  v2 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v8 = &v1 - v2;
  v3 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v7 = &v1 - v3;
  v4 = (*(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v6 = &v1 - v4;
  sub_100272A48();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail.quickreply.placeholder.update", 0x32uLL, 1);
  static DispatchQoS.userInitiated.getter();
  sub_1003EC258();
  sub_1003EC2F8(v8);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1006DB790 = result;
  return result;
}

uint64_t sub_1003EC258()
{
  sub_1003F7620(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1003F7D20();
  sub_10025C9B0(&qword_1006DB968, &qword_10050A088);
  sub_1003F7DA0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1003EC2F8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_1003EC364()
{
  if (qword_1006D6098 != -1)
  {
    swift_once();
  }

  return &qword_1006DB790;
}

void *sub_1003EC3C4()
{
  v1 = *sub_1003EC364();
  _objc_retain(v1);
  return v1;
}

char *QuickReplyView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth] = 0x4046000000000000;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin] = 24.0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin] = 7.0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset] = 2.0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", v7, v8);
  _objc_retain(v9);
  v13 = v9;
  sub_1003EC690();
  _objc_release(v13);
  return v9;
}

void sub_1003EC690()
{
  swift_getObjectType();
  v152 = 0;
  v151 = 0;
  v150 = 0.0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v153 = v0;
  v1 = v0;
  [v0 setPreservesSuperviewLayoutMargins:1];

  v2 = v0;
  [v0 setInsetsLayoutMarginsFromSafeArea:0];

  v3 = v0;
  v104 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:?];

  v105 = QuickReplyView.contentView.getter();
  [v136 addSubview:?];

  v107 = QuickReplyView.contentView.getter();
  v106 = sub_1003EA324();
  [v107 addSubview:?];

  v109 = QuickReplyView.contentView.getter();
  v108 = sub_1003EB7B0();
  [v109 addSubview:?];

  v110 = sub_1003EA324();
  v115 = [v110 leadingAnchor];

  v111 = QuickReplyView.contentView.getter();
  v112 = [v111 layoutMarginsGuide];

  v113 = [v112 leadingAnchor];
  v114 = [v115 constraintEqualToAnchor:v113 constant:-*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin]];

  v152 = v114;
  LODWORD(v4) = 1144750080;
  [v114 setPriority:v4];
  v116 = sub_1003EA324();
  v120 = [v116 leadingAnchor];

  v117 = QuickReplyView.contentView.getter();
  v118 = [v117 leadingAnchor];

  v119 = [v120 constraintGreaterThanOrEqualToAnchor:v118 constant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin]];
  v151 = v119;
  LODWORD(v5) = 1148846080;
  [v119 setPriority:v5];
  v150 = sub_1003F2D88();
  v121 = sub_1003EB7B0();
  v126 = [v121 trailingAnchor];

  v122 = QuickReplyView.contentView.getter();
  v123 = [v122 layoutMarginsGuide];

  v124 = [v123 trailingAnchor];
  v125 = [v126 constraintEqualToAnchor:v124 constant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin] + v150 - *&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset]];

  v149 = v125;
  LODWORD(v6) = 1144750080;
  [v125 setPriority:v6];
  v127 = sub_1003EB7B0();
  v131 = [v127 trailingAnchor];

  v128 = QuickReplyView.contentView.getter();
  v129 = [v128 trailingAnchor];

  v130 = [v131 constraintLessThanOrEqualToAnchor:v129 constant:v150 - *&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin] - *&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset]];
  v148 = v130;
  LODWORD(v7) = 1148846080;
  [v130 setPriority:v7];
  v132 = (static QuickReplyView.defaultHeight.getter() - *&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]) * 0.5;
  v8 = v136;
  v134 = UIRoundToViewScale(v132);

  v133 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  *v133 = v134;
  swift_endAccess();
  v135 = sub_1003EB7B0();
  v141 = [v135 topAnchor];

  v137 = QuickReplyView.contentView.getter();
  v140 = [v137 topAnchor];

  v138 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  v139 = *v138;
  swift_endAccess();
  v143 = [v141 constraintEqualToAnchor:v140 constant:v139];

  v142 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  v9 = *v142;
  *v142 = v143;

  swift_endAccess();
  v144 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v144)
  {
    v103 = *v144;
    v10 = *v144;
    swift_endAccess();
    LODWORD(v11) = 1144750080;
    [v103 setPriority:v11];
  }

  else
  {
    swift_endAccess();
  }

  v37 = sub_1003EB7B0();
  v43 = [v37 bottomAnchor];

  v38 = QuickReplyView.contentView.getter();
  v41 = [v38 bottomAnchor];

  v39 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  v40 = *v39;
  swift_endAccess();
  v42 = [v43 constraintLessThanOrEqualToAnchor:v41 constant:-v40];

  v147 = v42;
  LODWORD(v12) = 1148846080;
  [v42 setPriority:v12];
  v44 = QuickReplyView.contentView.getter();
  v49 = [v44 leadingAnchor];

  v13 = v136;
  v45 = [v136 safeAreaLayoutGuide];

  v48 = [v45 leadingAnchor];
  v46 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset];
  swift_beginAccess();
  v47 = *v46;
  swift_endAccess();
  v51 = [v49 constraintEqualToAnchor:v48 constant:v47];

  v50 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint];
  swift_beginAccess();
  v14 = *v50;
  *v50 = v51;

  swift_endAccess();
  v52 = QuickReplyView.contentView.getter();
  v57 = [v52 trailingAnchor];

  v15 = v136;
  v53 = [v136 safeAreaLayoutGuide];

  v56 = [v53 trailingAnchor];
  v54 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset];
  swift_beginAccess();
  v55 = *v54;
  swift_endAccess();
  v59 = [v57 constraintEqualToAnchor:v56 constant:-v55];

  v58 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint];
  swift_beginAccess();
  v16 = *v58;
  *v58 = v59;

  swift_endAccess();
  v60 = QuickReplyView.contentView.getter();
  v64 = [v60 topAnchor];

  v17 = v136;
  v63 = [v136 topAnchor];

  v61 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset];
  swift_beginAccess();
  v62 = *v61;
  swift_endAccess();
  v66 = [v64 constraintEqualToAnchor:v63 constant:v62];

  v65 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint];
  swift_beginAccess();
  v18 = *v65;
  *v65 = v66;

  swift_endAccess();
  v67 = QuickReplyView.contentView.getter();
  v71 = [v67 bottomAnchor];

  v19 = v136;
  v70 = [v136 bottomAnchor];

  v68 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset];
  swift_beginAccess();
  v69 = *v68;
  swift_endAccess();
  v73 = [v71 constraintEqualToAnchor:v70 constant:-v69];

  v72 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint];
  swift_beginAccess();
  v20 = *v72;
  *v72 = v73;

  swift_endAccess();
  v74 = objc_opt_self();
  sub_10025C9B0(&unk_1006DB860, &qword_1004FE4A0);
  _allocateUninitializedArray<A>(_:)();
  v101 = v21;
  v22 = v114;
  *v101 = v114;
  v23 = v119;
  v101[1] = v119;
  v75 = sub_1003EA324();
  v78 = [v75 trailingAnchor];

  v76 = sub_1003EB7B0();
  v77 = [v76 leadingAnchor];

  v79 = [v78 constraintEqualToAnchor:v77 constant:-22.0];
  v101[2] = v79;
  v80 = sub_1003EA324();
  v83 = [v80 centerYAnchor];

  v81 = sub_1003EB7B0();
  v82 = [v81 centerYAnchor];

  v84 = [v83 constraintEqualToAnchor:v82];
  v101[3] = v84;
  v85 = sub_1003EB2EC();
  v86 = [(objc_class *)v85 widthAnchor];

  v87 = [v86 constraintEqualToConstant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[4] = v87;
  v88 = sub_1003EB2EC();
  v89 = [(objc_class *)v88 heightAnchor];

  v90 = [v89 constraintEqualToConstant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[5] = v90;
  v91 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  sub_1002935A0(v91, v101 + 6);
  swift_endAccess();
  v24 = v42;
  v101[7] = v42;
  v92 = sub_1003EA650();
  v93 = [(objc_class *)v92 widthAnchor];

  v94 = [v93 constraintEqualToConstant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[8] = v94;
  v95 = sub_1003EA650();
  v96 = [(objc_class *)v95 heightAnchor];

  v97 = [v96 constraintEqualToConstant:*&v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]];
  v101[9] = v97;
  v25 = v130;
  v101[10] = v130;
  v26 = v125;
  v101[11] = v125;
  v98 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint];
  swift_beginAccess();
  sub_1002935A0(v98, v101 + 12);
  swift_endAccess();
  v99 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint];
  swift_beginAccess();
  sub_1002935A0(v99, v101 + 13);
  swift_endAccess();
  v100 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint];
  swift_beginAccess();
  sub_1002935A0(v100, v101 + 14);
  swift_endAccess();
  v102 = &v136[OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint];
  swift_beginAccess();
  sub_1002935A0(v102, v101 + 15);
  swift_endAccess();
  sub_1002612B0();
  v146[0] = v27;
  sub_10025C9B0(&qword_1006D75A8, &unk_100500720);
  sub_100293824();
  sub_100293888();
  Sequence.compactMap<A>(_:)();
  sub_100264880(v146);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:isa];

  v35 = QuickReplyView.contentView.getter();
  v34 = sub_1003EBAD4();
  [v35 addGestureRecognizer:?];

  v36 = [objc_opt_self() defaultCenter];
  v28 = v136;
  v29 = UIContentSizeCategoryDidChangeNotification;
  [v36 addObserver:v136 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1003F3A18();
  v30 = v136;
  v145 = sub_1003F3A7C(v136);
  v32 = QuickReplyView.contentView.getter();
  v31 = v145;
  [v32 addInteraction:v145];
  swift_unknownObjectRelease();
}

void sub_1003EDCA0()
{
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth = 0x4046000000000000;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_defaultHorizontalMargin = 24.0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInsetFromLayoutMargin = 7.0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_additionalHorizontalInset = 2.0;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewLeadingConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTrailingConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewTopConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_contentViewBottomConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_horizontalInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_topInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_bottomInset = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___contentView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___placeholderLabel = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___sendButton = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___expandButton = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___buttonStackView = 0;
  *OBJC_IVAR____TtC10MobileMail14QuickReplyView____lazy_storage___tapGesture = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall QuickReplyView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  _objc_retain(v0);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, "layoutSubviews");
  _objc_release(v0);
  v2 = QuickReplyView.contentView.getter();
  sub_1003EDFB0(v2);
  _objc_release(v2);
}

Swift::Void __swiftcall QuickReplyView.prepareForReuse()()
{
  _objc_retain(v0);
  [v0 setHidden:0];
  _objc_release(v0);
}

uint64_t QuickReplyView.resetWithReason(_:)(uint64_t a1)
{
  v112 = a1;
  v111 = 0;
  v94 = sub_1003EF3DC;
  v95 = sub_1003F77F0;
  v96 = sub_10026EE84;
  v97 = sub_10025E604;
  v98 = sub_100264354;
  v99 = sub_1003F3ABC;
  v100 = sub_10026EE84;
  v101 = sub_10026434C;
  v102 = sub_10026434C;
  v103 = sub_10026EF2C;
  v104 = sub_10026434C;
  v105 = sub_10026434C;
  v106 = sub_1002644E4;
  v107 = sub_10026434C;
  v108 = sub_10026434C;
  v109 = sub_10026EF2C;
  v129 = 0;
  v128 = 0;
  v110 = 0;
  v113 = type metadata accessor for Logger();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v117 = v39 - v116;
  v129 = __chkstk_darwin(v112);
  v128 = v1;
  v118 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView;
  v119 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  if (*v119)
  {
    v92 = *&v93[v118];
    _objc_retain(v92);
    swift_endAccess();
    [v92 removeFromSuperview];
    _objc_release(v92);
  }

  else
  {
    swift_endAccess();
  }

  v80 = &v93[OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView];
  v81 = &v127;
  v90 = 0;
  swift_beginAccess();
  v2 = *v80;
  *v80 = 0;
  _objc_release(v2);
  swift_endAccess();
  v82 = sub_1003EB2EC();
  v88 = &selRef_setDisplayMessageOnReload_;
  v84 = 1;
  [(objc_class *)v82 setHidden:1];
  _objc_release(v82);
  v83 = sub_1003EA324();
  v3 = v88[147];
  v89 = 0;
  [v83 v3];
  _objc_release(v83);
  v85 = sub_1003EBAD4();
  v86 = &selRef_setDisplayMessageOnReload_;
  [v85 setEnabled:v84 & 1];
  _objc_release(v85);
  v87 = sub_1003EA650();
  [v87 v86[45]];
  _objc_release(v87);
  _objc_retain(v93);
  [v93 v88[147]];
  _objc_release(v93);
  v91 = &v93[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v91)
  {
    v79 = *v91;
    _objc_retain(v79);
    swift_endAccess();
    v76 = &v93[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
    v77 = &v120;
    swift_beginAccess();
    v78 = *v76;
    swift_endAccess();
    [v79 setConstant:v78];
    _objc_release(v79);
  }

  else
  {
    swift_endAccess();
  }

  QuickReplyView.removeSnapshotIfNeeded()();
  v4 = v117;
  v48 = sub_1003EBD78();
  v49 = &v126;
  v58 = 32;
  swift_beginAccess();
  (*(v114 + 16))(v4, v48, v113);
  swift_endAccess();
  _objc_retain(v93);
  v50 = 24;
  v59 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v93;
  v60 = swift_allocObject();
  *(v60 + 16) = v112;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v56 = 17;
  v62 = swift_allocObject();
  v55 = 32;
  *(v62 + 16) = 32;
  v63 = swift_allocObject();
  v57 = 8;
  *(v63 + 16) = 8;
  v5 = swift_allocObject();
  v51 = v5;
  *(v5 + 16) = v94;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  v7 = v51;
  v52 = v6;
  *(v6 + 16) = v95;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v52;
  v64 = v8;
  *(v8 + 16) = v96;
  *(v8 + 24) = v9;
  v65 = swift_allocObject();
  *(v65 + 16) = 64;
  v66 = swift_allocObject();
  *(v66 + 16) = v57;
  v10 = swift_allocObject();
  v11 = v53;
  v54 = v10;
  *(v10 + 16) = v97;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v54;
  v67 = v12;
  *(v12 + 16) = v98;
  *(v12 + 24) = v13;
  v68 = swift_allocObject();
  *(v68 + 16) = v55;
  v69 = swift_allocObject();
  *(v69 + 16) = v57;
  v14 = swift_allocObject();
  v15 = v60;
  v61 = v14;
  *(v14 + 16) = v99;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v61;
  v71 = v16;
  *(v16 + 16) = v100;
  *(v16 + 24) = v17;
  v73 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v70 = _allocateUninitializedArray<A>(_:)();
  v72 = v18;

  v19 = v62;
  v20 = v72;
  *v72 = v101;
  v20[1] = v19;

  v21 = v63;
  v22 = v72;
  v72[2] = v102;
  v22[3] = v21;

  v23 = v64;
  v24 = v72;
  v72[4] = v103;
  v24[5] = v23;

  v25 = v65;
  v26 = v72;
  v72[6] = v104;
  v26[7] = v25;

  v27 = v66;
  v28 = v72;
  v72[8] = v105;
  v28[9] = v27;

  v29 = v67;
  v30 = v72;
  v72[10] = v106;
  v30[11] = v29;

  v31 = v68;
  v32 = v72;
  v72[12] = v107;
  v32[13] = v31;

  v33 = v69;
  v34 = v72;
  v72[14] = v108;
  v34[15] = v33;

  v35 = v71;
  v36 = v72;
  v72[16] = v109;
  v36[17] = v35;
  sub_1002612B0();

  if (os_log_type_enabled(v74, v75))
  {
    v37 = v110;
    v41 = static UnsafeMutablePointer.allocate(capacity:)();
    v40 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v42 = sub_1002641E8(1, v40, v40);
    v43 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v44 = &v125;
    v125 = v41;
    v45 = &v124;
    v124 = v42;
    v46 = &v123;
    v123 = v43;
    sub_10026423C(2, &v125);
    sub_10026423C(3, v44);
    v121 = v101;
    v122 = v62;
    sub_100264250(&v121, v44, v45, v46);
    v47 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v121 = v102;
      v122 = v63;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[6] = 0;
      v121 = v103;
      v122 = v64;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[5] = 0;
      v121 = v104;
      v122 = v65;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[4] = 0;
      v121 = v105;
      v122 = v66;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[3] = 0;
      v121 = v106;
      v122 = v67;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[2] = 0;
      v121 = v107;
      v122 = v68;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[1] = 0;
      v121 = v108;
      v122 = v69;
      sub_100264250(&v121, &v125, &v124, &v123);
      v39[0] = 0;
      v121 = v109;
      v122 = v71;
      sub_100264250(&v121, &v125, &v124, &v123);
      _os_log_impl(&_mh_execute_header, v74, v75, "<%s %@> [Quick Reply] Did reset quick reply with reason: %s", v41, 0x20u);
      sub_10026429C(v42, 1);
      sub_10026429C(v43, 2);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v74);
  return (*(v114 + 8))(v117, v113);
}

Swift::Void __swiftcall QuickReplyView.removeSnapshotIfNeeded()()
{
  v5 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    _objc_retain(v3);
    swift_endAccess();
    [v3 removeFromSuperview];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }

  v2 = (v4 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot);
  swift_beginAccess();
  v1 = *v2;
  *v2 = 0;
  _objc_release(v1);
  swift_endAccess();
}

uint64_t QuickReplyView.updatePlaceholder(message:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter;
  v13 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter);
  result = swift_beginAccess();
  if (__OFADD__(*v13, 1))
  {
    __break(1u);
  }

  else
  {
    *&v9[v12] = *v13 + 1;
    swift_endAccess();
    v4 = &v9[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter];
    swift_beginAccess();
    v6 = *v4;
    swift_endAccess();
    v5 = sub_1003EA324();
    [v5 setText:0];
    _objc_release(v5);
    v8 = swift_allocObject();
    _objc_retain(v9);
    swift_unknownObjectWeakInit();
    _objc_release(v9);

    v7 = swift_allocObject();
    v7[2] = v8;
    v7[3] = v6;
    v7[4] = ObjectType;
    sub_1003F031C(a1, sub_1003F77FC, v7);
  }

  return result;
}

void sub_1003EF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a1;
  v86 = a2;
  v83 = a3;
  v84 = a4;
  v85 = 0;
  v71 = sub_1003EF3DC;
  v72 = sub_1003F77F0;
  v73 = sub_10026EE84;
  v74 = sub_10025E604;
  v75 = sub_100264354;
  v76 = sub_10026434C;
  v77 = sub_10026434C;
  v78 = sub_10026EF2C;
  v79 = sub_10026434C;
  v80 = sub_10026434C;
  v81 = sub_1002644E4;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v82 = 0;
  v88 = type metadata accessor for Logger();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v32 - v91;
  v107 = __chkstk_darwin(v87);
  v108 = v4;
  v93 = v5 + 16;
  v106 = v5 + 16;
  v105 = v6;
  v94 = &v104;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v70 = Strong;
    v66 = Strong;
    v103 = Strong;
    v67 = &Strong[OBJC_IVAR____TtC10MobileMail14QuickReplyView_currentlyLoadingCounter];
    v68 = &v102;
    swift_beginAccess();
    v69 = *v67;
    swift_endAccess();
    if (v69 == v84)
    {
      v7 = sub_1003EA324();
      v8 = v92;
      v44 = v7;

      v43 = String._bridgeToObjectiveC()();

      [v44 setText:v43];
      _objc_release(v43);
      _objc_release(v44);
      v45 = sub_1003EBD78();
      v46 = &v101;
      v51 = 32;
      swift_beginAccess();
      (*(v89 + 16))(v8, v45, v88);
      swift_endAccess();
      _objc_retain(v66);
      v52 = 7;
      v53 = swift_allocObject();
      *(v53 + 16) = v66;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      v49 = 17;
      v55 = swift_allocObject();
      *(v55 + 16) = 32;
      v56 = swift_allocObject();
      v50 = 8;
      *(v56 + 16) = 8;
      v9 = swift_allocObject();
      v47 = v9;
      *(v9 + 16) = v71;
      *(v9 + 24) = 0;
      v10 = swift_allocObject();
      v11 = v47;
      v48 = v10;
      *(v10 + 16) = v72;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v48;
      v57 = v12;
      *(v12 + 16) = v73;
      *(v12 + 24) = v13;
      v58 = swift_allocObject();
      *(v58 + 16) = 64;
      v59 = swift_allocObject();
      *(v59 + 16) = v50;
      v14 = swift_allocObject();
      v15 = v53;
      v54 = v14;
      *(v14 + 16) = v74;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v54;
      v61 = v16;
      *(v16 + 16) = v75;
      *(v16 + 24) = v17;
      v63 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v60 = _allocateUninitializedArray<A>(_:)();
      v62 = v18;

      v19 = v55;
      v20 = v62;
      *v62 = v76;
      v20[1] = v19;

      v21 = v56;
      v22 = v62;
      v62[2] = v77;
      v22[3] = v21;

      v23 = v57;
      v24 = v62;
      v62[4] = v78;
      v24[5] = v23;

      v25 = v58;
      v26 = v62;
      v62[6] = v79;
      v26[7] = v25;

      v27 = v59;
      v28 = v62;
      v62[8] = v80;
      v28[9] = v27;

      v29 = v61;
      v30 = v62;
      v62[10] = v81;
      v30[11] = v29;
      sub_1002612B0();

      if (os_log_type_enabled(v64, v65))
      {
        v31 = v82;
        v35 = static UnsafeMutablePointer.allocate(capacity:)();
        v33 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v34 = 1;
        v36 = sub_1002641E8(1, v33, v33);
        v37 = sub_1002641E8(v34, &type metadata for Any + 8, &type metadata for Any + 8);
        v39 = &v100;
        v100 = v35;
        v40 = &v99;
        v99 = v36;
        v41 = &v98;
        v98 = v37;
        v38 = 2;
        sub_10026423C(2, &v100);
        sub_10026423C(v38, v39);
        v96 = v76;
        v97 = v55;
        sub_100264250(&v96, v39, v40, v41);
        v42 = v31;
        if (v31)
        {

          __break(1u);
        }

        else
        {
          v96 = v77;
          v97 = v56;
          sub_100264250(&v96, &v100, &v99, &v98);
          v32[4] = 0;
          v96 = v78;
          v97 = v57;
          sub_100264250(&v96, &v100, &v99, &v98);
          v32[3] = 0;
          v96 = v79;
          v97 = v58;
          sub_100264250(&v96, &v100, &v99, &v98);
          v32[2] = 0;
          v96 = v80;
          v97 = v59;
          sub_100264250(&v96, &v100, &v99, &v98);
          v32[1] = 0;
          v96 = v81;
          v97 = v61;
          sub_100264250(&v96, &v100, &v99, &v98);
          _os_log_impl(&_mh_execute_header, v64, v65, "<%s %@> [Quick Reply] Did update placeholder label", v35, 0x16u);
          v32[0] = 1;
          sub_10026429C(v36, 1);
          sub_10026429C(v37, v32[0]);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v64);
      (*(v89 + 8))(v92, v88);
      _objc_release(v66);
    }

    else
    {
      _objc_release(v66);
    }
  }
}

void sub_1003F031C(void *a1, void (*a2)(void), uint64_t a3)
{
  v114 = a1;
  v108 = a2;
  v107 = a3;
  v93 = 0;
  v81 = sub_1003F780C;
  v82 = sub_1003EF3DC;
  v83 = sub_1003F77F0;
  v84 = sub_10026EE84;
  v85 = sub_10025E604;
  v86 = sub_100264354;
  v87 = sub_10026434C;
  v88 = sub_10026434C;
  v89 = sub_10026EF2C;
  v90 = sub_10026434C;
  v91 = sub_10026434C;
  v92 = sub_1002644E4;
  ObjectType = swift_getObjectType();
  v132 = 0;
  v130 = 0;
  v131 = 0;
  v129 = 0;
  v95 = 0;
  v122 = 0;
  v101 = 0;
  v96 = type metadata accessor for Logger();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v100 = &v39 - v99;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v101);
  v106 = &v39 - v105;
  v109 = type metadata accessor for DispatchQoS();
  v110 = *(v109 - 8);
  v111 = v109 - 8;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v114);
  v113 = &v39 - v112;
  v132 = v4;
  v130 = v5;
  v131 = v6;
  v129 = v3;
  _objc_retain(v4);
  if (v114)
  {
    v79 = v114;
    v78 = v114;
    v122 = v114;
    v77 = *sub_1003EC364();
    _objc_retain(v77);
    _objc_retain(v78);
    _objc_retain(v80);

    v7 = swift_allocObject();
    v8 = v80;
    v9 = v108;
    v10 = v107;
    v11 = ObjectType;
    v12 = v81;
    v7[2] = v78;
    v7[3] = v8;
    v7[4] = v9;
    v7[5] = v10;
    v7[6] = v11;
    v120 = v12;
    v121 = v7;
    aBlock = _NSConcreteStackBlock;
    v116 = 1107296256;
    v117 = 0;
    v118 = sub_1002AEFF8;
    v119 = &unk_10065E270;
    v76 = _Block_copy(&aBlock);
    sub_100274F94();
    sub_100274FAC();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    (*(v103 + 8))(v106, v102);
    (*(v110 + 8))(v113, v109);
    _Block_release(v76);

    _objc_release(v77);
    _objc_release(v78);
  }

  else
  {
    v13 = v100;
    v55 = sub_1003EBD78();
    v56 = &v128;
    v61 = 32;
    swift_beginAccess();
    (*(v97 + 16))(v13, v55, v96);
    swift_endAccess();
    _objc_retain(v80);
    v62 = 7;
    v63 = swift_allocObject();
    *(v63 + 16) = v80;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    v59 = 17;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v66 = swift_allocObject();
    v60 = 8;
    *(v66 + 16) = 8;
    v14 = swift_allocObject();
    v57 = v14;
    *(v14 + 16) = v82;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v16 = v57;
    v58 = v15;
    *(v15 + 16) = v83;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v58;
    v67 = v17;
    *(v17 + 16) = v84;
    *(v17 + 24) = v18;
    v68 = swift_allocObject();
    *(v68 + 16) = 64;
    v69 = swift_allocObject();
    *(v69 + 16) = v60;
    v19 = swift_allocObject();
    v20 = v63;
    v64 = v19;
    *(v19 + 16) = v85;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v64;
    v71 = v21;
    *(v21 + 16) = v86;
    *(v21 + 24) = v22;
    v73 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v70 = _allocateUninitializedArray<A>(_:)();
    v72 = v23;

    v24 = v65;
    v25 = v72;
    *v72 = v87;
    v25[1] = v24;

    v26 = v66;
    v27 = v72;
    v72[2] = v88;
    v27[3] = v26;

    v28 = v67;
    v29 = v72;
    v72[4] = v89;
    v29[5] = v28;

    v30 = v68;
    v31 = v72;
    v72[6] = v90;
    v31[7] = v30;

    v32 = v69;
    v33 = v72;
    v72[8] = v91;
    v33[9] = v32;

    v34 = v71;
    v35 = v72;
    v72[10] = v92;
    v35[11] = v34;
    sub_1002612B0();

    if (os_log_type_enabled(v74, v75))
    {
      v36 = v95;
      v47 = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v46 = 1;
      v48 = sub_1002641E8(1, v45, v45);
      v49 = sub_1002641E8(v46, &type metadata for Any + 8, &type metadata for Any + 8);
      v51 = &v127;
      v127 = v47;
      v52 = &v126;
      v126 = v48;
      v53 = &v125;
      v125 = v49;
      v50 = 2;
      sub_10026423C(2, &v127);
      sub_10026423C(v50, v51);
      v123 = v87;
      v124 = v65;
      sub_100264250(&v123, v51, v52, v53);
      v54 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v123 = v88;
        v124 = v66;
        sub_100264250(&v123, &v127, &v126, &v125);
        v44 = 0;
        v123 = v89;
        v124 = v67;
        sub_100264250(&v123, &v127, &v126, &v125);
        v43 = 0;
        v123 = v90;
        v124 = v68;
        sub_100264250(&v123, &v127, &v126, &v125);
        v42 = 0;
        v123 = v91;
        v124 = v69;
        sub_100264250(&v123, &v127, &v126, &v125);
        v41 = 0;
        v123 = v92;
        v124 = v71;
        sub_100264250(&v123, &v127, &v126, &v125);
        _os_log_impl(&_mh_execute_header, v74, v75, "<%s %@> [Quick Reply] Message is nil, will use default placeholder label", v47, 0x16u);
        v40 = 1;
        sub_10026429C(v48, 1);
        sub_10026429C(v49, v40);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v74);
    (*(v97 + 8))(v100, v96);

    v37 = sub_1003E82C0();
    v39 = v38;
    v108(v37);
  }
}

Swift::Void __swiftcall QuickReplyView.addComposeView(_:)(UIView a1)
{
  _objc_retain(a1.super.super.isa);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_composeView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1.super.super.isa;
  _objc_release(v2);
  swift_endAccess();
  [(objc_class *)a1.super.super.isa setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = QuickReplyView.contentView.getter();
  [v5 addSubview:a1.super.super.isa];
  _objc_release(v5);
  v7 = QuickReplyView.contentView.getter();
  v6 = sub_1003EA324();
  [v7 bringSubviewToFront:?];
  _objc_release(v6);
  _objc_release(v7);
  v26 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v25 = v3;
  v10 = [(objc_class *)a1.super.super.isa leadingAnchor];
  v8 = sub_1003EA324();
  v9 = [v8 leadingAnchor];
  _objc_release(v8);
  v11 = [v10 constraintEqualToAnchor:v9];
  _objc_release(v9);
  _objc_release(v10);
  *v25 = v11;
  v14 = [(objc_class *)a1.super.super.isa trailingAnchor];
  v12 = sub_1003EB7B0();
  v13 = [v12 leadingAnchor];
  _objc_release(v12);
  v15 = [v14 constraintEqualToSystemSpacingAfterAnchor:v13 multiplier:-1.0];
  _objc_release(v13);
  _objc_release(v14);
  v25[1] = v15;
  v18 = [(objc_class *)a1.super.super.isa topAnchor];
  v16 = QuickReplyView.contentView.getter();
  v17 = [v16 topAnchor];
  _objc_release(v16);
  v19 = [v18 constraintEqualToAnchor:v17 constant:24.0];
  _objc_release(v17);
  _objc_release(v18);
  v25[2] = v19;
  v23 = [(objc_class *)a1.super.super.isa bottomAnchor];
  v21 = QuickReplyView.contentView.getter();
  v22 = [v21 bottomAnchor];
  _objc_release(v21);
  v24 = [v23 constraintEqualToAnchor:v22 constant:-24.0];
  _objc_release(v22);
  _objc_release(v23);
  v25[3] = v24;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];
  _objc_release(isa);
  v28 = sub_1003EBAD4();
  [v28 setEnabled:0];
  _objc_release(v28);
}

void sub_1003F1738(unsigned __int8 a1)
{
  v2 = sub_1003EA324();
  [v2 setHidden:(a1 ^ 1) & 1];
  _objc_release(v2);
}

void QuickReplyView.updateQuickReplySendButtonTopOffset(_:)(double a1)
{
  v8 = (v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
  swift_beginAccess();
  v9 = *v8;
  _objc_retain(*v8);
  swift_endAccess();
  if (v9)
  {
    [v9 constant];
    if (v2 - a1 >= 0.0)
    {
      v5 = v2 - a1;
    }

    else
    {
      v5 = -(v2 - a1);
    }

    if (v5 >= 2.22044605e-16)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1002B18F8();
      max<A>(_:_:)();
      v4 = (v7 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint);
      swift_beginAccess();
      if (*v4)
      {
        v3 = *v4;
        _objc_retain(*v4);
        swift_endAccess();
        [v3 setConstant:v10];
        _objc_release(v3);
      }

      else
      {
        swift_endAccess();
      }
    }

    _objc_release(v9);
  }
}

void sub_1003F1AEC(void *a1, void (*a2)(void *), uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  _objc_retain(a1);
  if (a1)
  {
    sub_1002649B4();
    _objc_retain(a1);
    v21 = sub_10042A1CC(a1);
    _objc_retain(v21);
    [v21 setFrame:{a6, a7, a8, a9}];
    _objc_release(v21);
    sub_1003F7E94();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    _objc_retain(v21);
    _objc_retain(a4);
    _objc_retain(a5);
    v20 = sub_1003F1D98(v21, a4, a5, UIEdgeInsetsZero.top, left, bottom, right, 12.0);

    _objc_retain(v20);
    a2(v20);
    _objc_release(v20);

    _objc_release(v20);
    _objc_release(v21);
    _objc_release(a1);
  }

  else
  {

    a2(0);
  }
}

uint64_t sub_1003F1E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

UIView_optional __swiftcall QuickReplyView.contentViewSnapshot()()
{
  v9 = QuickReplyView.contentView.getter();
  v10 = [v9 snapshotViewAfterScreenUpdates:0];
  if (v10)
  {
    [v9 frame];
    [v10 setFrame:{v0, v1, v2, v3}];
    v6 = [v10 layer];
    [v6 setCornerRadius:12.0];
    _objc_release(v6);
    v7 = [v10 layer];
    _objc_retain(kCACornerCurveContinuous);
    [v7 setCornerCurve:kCACornerCurveContinuous];
    _objc_release(kCACornerCurveContinuous);
    _objc_release(v7);
    [v10 setClipsToBounds:1];
    sub_1003EDFB0(v10);
    _objc_release(v9);
    v8 = v10;
  }

  else
  {
    _objc_release(v9);
    v8 = 0;
  }

  v5 = v8;
  result.value.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall QuickReplyView.showSnapshot()()
{
  v68 = sub_1003EF3DC;
  v69 = sub_1003F77F0;
  v70 = sub_10026EE84;
  v71 = sub_10025E604;
  v72 = sub_100264354;
  v73 = sub_10026434C;
  v74 = sub_10026434C;
  v75 = sub_10026EF2C;
  v76 = sub_10026434C;
  v77 = sub_10026434C;
  v78 = sub_1002644E4;
  v94 = 0;
  v79 = 0;
  v87 = 0;
  v80 = type metadata accessor for Logger();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v80);
  v84 = &v26 - v83;
  v94 = v0;
  v85 = QuickReplyView.contentViewSnapshot()();
  if (v85)
  {
    v66 = v85;
    v65 = v85;
    v87 = v85;
    _objc_retain(v85);
    v63 = &v67[OBJC_IVAR____TtC10MobileMail14QuickReplyView_snapshot];
    v64 = &v86;
    swift_beginAccess();
    v1 = *v63;
    *v63 = v65;
    _objc_release(v1);
    swift_endAccess();
    [v67 addSubview:v65];
    _objc_release(v65);
  }

  else
  {
    v2 = v84;
    v42 = sub_1003EBD78();
    v43 = &v93;
    v48 = 32;
    swift_beginAccess();
    (*(v81 + 16))(v2, v42, v80);
    swift_endAccess();
    _objc_retain(v67);
    v49 = 7;
    v50 = swift_allocObject();
    *(v50 + 16) = v67;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v46 = 17;
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    v47 = 8;
    *(v53 + 16) = 8;
    v3 = swift_allocObject();
    v44 = v3;
    *(v3 + 16) = v68;
    *(v3 + 24) = 0;
    v4 = swift_allocObject();
    v5 = v44;
    v45 = v4;
    *(v4 + 16) = v69;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v45;
    v54 = v6;
    *(v6 + 16) = v70;
    *(v6 + 24) = v7;
    v55 = swift_allocObject();
    *(v55 + 16) = 64;
    v56 = swift_allocObject();
    *(v56 + 16) = v47;
    v8 = swift_allocObject();
    v9 = v50;
    v51 = v8;
    *(v8 + 16) = v71;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v51;
    v58 = v10;
    *(v10 + 16) = v72;
    *(v10 + 24) = v11;
    v60 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v57 = _allocateUninitializedArray<A>(_:)();
    v59 = v12;

    v13 = v52;
    v14 = v59;
    *v59 = v73;
    v14[1] = v13;

    v15 = v53;
    v16 = v59;
    v59[2] = v74;
    v16[3] = v15;

    v17 = v54;
    v18 = v59;
    v59[4] = v75;
    v18[5] = v17;

    v19 = v55;
    v20 = v59;
    v59[6] = v76;
    v20[7] = v19;

    v21 = v56;
    v22 = v59;
    v59[8] = v77;
    v22[9] = v21;

    v23 = v58;
    v24 = v59;
    v59[10] = v78;
    v24[11] = v23;
    sub_1002612B0();

    if (os_log_type_enabled(v61, v62))
    {
      v25 = v79;
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v32 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v33 = 1;
      v35 = sub_1002641E8(1, v32, v32);
      v36 = sub_1002641E8(v33, &type metadata for Any + 8, &type metadata for Any + 8);
      v38 = &v92;
      v92 = v34;
      v39 = &v91;
      v91 = v35;
      v40 = &v90;
      v90 = v36;
      v37 = 2;
      sub_10026423C(2, &v92);
      sub_10026423C(v37, v38);
      v88 = v73;
      v89 = v52;
      sub_100264250(&v88, v38, v39, v40);
      v41 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v88 = v74;
        v89 = v53;
        sub_100264250(&v88, &v92, &v91, &v90);
        v31 = 0;
        v88 = v75;
        v89 = v54;
        sub_100264250(&v88, &v92, &v91, &v90);
        v30 = 0;
        v88 = v76;
        v89 = v55;
        sub_100264250(&v88, &v92, &v91, &v90);
        v29 = 0;
        v88 = v77;
        v89 = v56;
        sub_100264250(&v88, &v92, &v91, &v90);
        v28 = 0;
        v88 = v78;
        v89 = v58;
        sub_100264250(&v88, &v92, &v91, &v90);
        _os_log_impl(&_mh_execute_header, v61, v62, "<%s %@> [Quick Reply] unable to show snapshot", v34, 0x16u);
        v27 = 1;
        sub_10026429C(v35, 1);
        sub_10026429C(v36, v27);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v61);
    (*(v81 + 8))(v84, v80);
  }
}

double sub_1003F2D88()
{
  v76 = sub_1003EF3DC;
  v77 = sub_1003F77F0;
  v78 = sub_10026EE84;
  v79 = sub_10025E604;
  v80 = sub_100264354;
  v81 = sub_10026434C;
  v82 = sub_10026434C;
  v83 = sub_10026EF2C;
  v84 = sub_10026434C;
  v85 = sub_10026434C;
  v86 = sub_1002644E4;
  v108 = 0;
  v107 = 0.0;
  v87 = 0;
  v100 = 0.0;
  v99 = 0.0;
  v88 = type metadata accessor for Logger();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v88);
  v92 = v30 - v91;
  v108 = v0;
  v93 = sub_1003EA650();
  v94 = [(objc_class *)v93 imageView];
  _objc_release(v93);
  if (v94)
  {
    v74 = v94;
    v70 = v94;
    [v94 frame];
    v95 = v1;
    v96 = v2;
    v97 = v3;
    v98 = v4;
    v71 = v3;
    _objc_release(v70);
    v72 = v71;
    v73 = 0;
  }

  else
  {
    v72 = 0.0;
    v73 = 1;
  }

  v69 = v72;
  if (v73)
  {
    v5 = v92;
    v41 = sub_1003EBD78();
    v42 = &v106;
    v47 = 32;
    swift_beginAccess();
    (*(v89 + 16))(v5, v41, v88);
    swift_endAccess();
    _objc_retain(v75);
    v48 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = v75;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v45 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    v46 = 8;
    *(v52 + 16) = 8;
    v6 = swift_allocObject();
    v43 = v6;
    *(v6 + 16) = v76;
    *(v6 + 24) = 0;
    v7 = swift_allocObject();
    v8 = v43;
    v44 = v7;
    *(v7 + 16) = v77;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v44;
    v53 = v9;
    *(v9 + 16) = v78;
    *(v9 + 24) = v10;
    v54 = swift_allocObject();
    *(v54 + 16) = 64;
    v55 = swift_allocObject();
    *(v55 + 16) = v46;
    v11 = swift_allocObject();
    v12 = v49;
    v50 = v11;
    *(v11 + 16) = v79;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v50;
    v57 = v13;
    *(v13 + 16) = v80;
    *(v13 + 24) = v14;
    v59 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v56 = _allocateUninitializedArray<A>(_:)();
    v58 = v15;

    v16 = v51;
    v17 = v58;
    *v58 = v81;
    v17[1] = v16;

    v18 = v52;
    v19 = v58;
    v58[2] = v82;
    v19[3] = v18;

    v20 = v53;
    v21 = v58;
    v58[4] = v83;
    v21[5] = v20;

    v22 = v54;
    v23 = v58;
    v58[6] = v84;
    v23[7] = v22;

    v24 = v55;
    v25 = v58;
    v58[8] = v85;
    v25[9] = v24;

    v26 = v57;
    v27 = v58;
    v58[10] = v86;
    v27[11] = v26;
    sub_1002612B0();

    if (os_log_type_enabled(v60, v61))
    {
      v28 = v87;
      v33 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v32 = 1;
      v34 = sub_1002641E8(1, v31, v31);
      v35 = sub_1002641E8(v32, &type metadata for Any + 8, &type metadata for Any + 8);
      v37 = &v105;
      v105 = v33;
      v38 = &v104;
      v104 = v34;
      v39 = &v103;
      v103 = v35;
      v36 = 2;
      sub_10026423C(2, &v105);
      sub_10026423C(v36, v37);
      v101 = v81;
      v102 = v51;
      sub_100264250(&v101, v37, v38, v39);
      v40 = v28;
      if (v28)
      {

        __break(1u);
      }

      else
      {
        v101 = v82;
        v102 = v52;
        sub_100264250(&v101, &v105, &v104, &v103);
        v30[4] = 0;
        v101 = v83;
        v102 = v53;
        sub_100264250(&v101, &v105, &v104, &v103);
        v30[3] = 0;
        v101 = v84;
        v102 = v54;
        sub_100264250(&v101, &v105, &v104, &v103);
        v30[2] = 0;
        v101 = v85;
        v102 = v55;
        sub_100264250(&v101, &v105, &v104, &v103);
        v30[1] = 0;
        v101 = v86;
        v102 = v57;
        sub_100264250(&v101, &v105, &v104, &v103);
        _os_log_impl(&_mh_execute_header, v60, v61, "<%s %@> [Quick Reply] Incorrect send button horizontal placement", v33, 0x16u);
        v30[0] = 1;
        sub_10026429C(v34, 1);
        sub_10026429C(v35, v30[0]);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v60);
    (*(v89 + 8))(v92, v88);
    return 0.0;
  }

  else
  {
    v68 = v69;
    v67 = v69;
    v107 = v69;
    if (v69 <= 0.0)
    {
      v66 = 22.0;
    }

    else
    {
      v66 = v67;
    }

    v107 = v66;
    v62 = (*&v75[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth] - v66) / 2.0;
    v100 = v62;
    _objc_retain(v75);
    v63 = v75;
    v64 = UIRoundToViewScale(v62);
    _objc_release(v63);
    v99 = v64;
    return v64;
  }
}

unint64_t sub_1003F3A18()
{
  v2 = qword_1006DB880;
  if (!qword_1006DB880)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB880);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1003F3AC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v267 = a1;
  v266 = a2;
  v264 = a3;
  v265 = a4;
  v234 = a5;
  v235 = sub_1003F7BC0;
  v236 = sub_1003F5BD8;
  v237 = sub_1003F5BD8;
  v238 = sub_1003F5C50;
  v239 = sub_1003F7B3C;
  v240 = sub_1003EF3DC;
  v241 = sub_1003F77F0;
  v242 = sub_10026EE84;
  v243 = sub_10025E604;
  v244 = sub_100264354;
  v245 = sub_10026434C;
  v246 = sub_10026434C;
  v247 = sub_10026EF2C;
  v248 = sub_10026434C;
  v249 = sub_10026434C;
  v250 = sub_1002644E4;
  v251 = sub_1003F7A40;
  v343 = 0;
  v342 = 0;
  v340 = 0;
  v341 = 0;
  v252 = 0;
  v326 = 0;
  v325 = 0;
  v323 = 0;
  v322 = 0;
  v320 = 0;
  v317 = 0;
  v314 = 0;
  v310 = 0;
  v305 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v282 = 0;
  v258 = 0;
  v253 = type metadata accessor for Logger();
  v254 = *(v253 - 8);
  v255 = v253 - 8;
  v256 = (*(v254 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v257 = v66 - v256;
  v259 = type metadata accessor for DispatchWorkItemFlags();
  v260 = *(v259 - 8);
  v261 = v259 - 8;
  v262 = (*(v260 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v258);
  v263 = v66 - v262;
  v268 = type metadata accessor for DispatchQoS();
  v269 = *(v268 - 8);
  v270 = v268 - 8;
  v271 = (*(v269 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v267);
  v272 = v66 - v271;
  v343 = v5;
  v342 = v6;
  v340 = v7;
  v341 = v8;
  v273 = [v5 headers];
  if (v273)
  {
    v233 = v273;
    v230 = v273;
    v231 = [v273 copyAddressListForReplyTo];
    _objc_release(v230);
    if (v231)
    {
      v229 = v231;
      v226 = v231;
      v227 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v226);
      v228 = v227;
    }

    else
    {
      v228 = 0;
    }

    v232 = v228;
  }

  else
  {
    v232 = 0;
  }

  v225 = v232;
  if (v232)
  {
    v224 = v225;
    v222 = v225;
    v282 = v225;
    v281 = v225;
    v223 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    sub_1002B76F0();
    v9 = Collection.isEmpty.getter();
    if ((v9 & 1) == 0)
    {
      v219 = 0;
      sub_100272A48();
      v221 = static OS_dispatch_queue.main.getter();
      v217 = 7;
      v218 = swift_allocObject();
      v216 = v218 + 16;
      _objc_retain(v266);
      swift_unknownObjectWeakInit();
      _objc_release(v266);

      v10 = swift_allocObject();
      v11 = v264;
      v12 = v265;
      v13 = v234;
      v14 = v235;
      v15 = v10;
      v16 = v218;
      v15[2] = v222;
      v15[3] = v16;
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v13;
      v279 = v14;
      v280 = v15;
      v274 = _NSConcreteStackBlock;
      v275 = 1107296256;
      v276 = 0;
      v277 = sub_1002AEFF8;
      v278 = &unk_10065E9E8;
      v220 = _Block_copy(&v274);

      sub_100274F94();
      sub_100274FAC();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      (*(v260 + 8))(v263, v259);
      (*(v269 + 8))(v272, v268);
      _Block_release(v220);
      _objc_release(v221);

      return;
    }
  }

  sub_1002644F0();
  v214 = [v267 preferredEmailAddressToReplyWith];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v215 = sub_1003F5B90(v17, v18);
  _objc_release(v214);
  if (v215)
  {
    v213 = v215;
    v19 = v252;
    v204 = v215;
    v326 = v215;
    v205 = [v267 to];
    v206 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v325 = v206;
    _objc_release(v205);
    v324 = v206;
    v207 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    v208 = sub_10025C9B0(&qword_1006DB930, &qword_10050A078);
    v210 = sub_1002B76F0();
    v20 = sub_10025E9D8(v236, 0, v207, v208, &type metadata for Never, v210, &protocol witness table for Never, v209);
    v211 = v19;
    v212 = v20;
    if (v19)
    {
      __break(1u);
      __break(1u);
    }

    else
    {
      v199 = v212;
      v323 = v212;
      v200 = [v267 from];
      v201 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v322 = v201;
      _objc_release(v200);
      v321 = v201;
      v21 = sub_10025E9D8(v237, 0, v207, v208, &type metadata for Never, v210, &protocol witness table for Never, v209);
      v202 = 0;
      v203 = v21;
      v197 = v21;
      v320 = v21;
      v198 = [v267 bcc];
      if (v198)
      {
        v196 = v198;
        v193 = v198;
        v194 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v193);
        v195 = v194;
      }

      else
      {
        v195 = 0;
      }

      v318 = v195;
      if (v195)
      {
        v319 = v318;
      }

      else
      {
        v319 = _allocateUninitializedArray<A>(_:)();
        if (v318)
        {
          sub_100264880(&v318);
        }
      }

      v191 = v319;
      v317 = v319;
      v192 = [v267 cc];
      if (v192)
      {
        v190 = v192;
        v187 = v192;
        v188 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v187);
        v189 = v188;
      }

      else
      {
        v189 = 0;
      }

      v315 = v189;
      if (v189)
      {
        v316 = v315;
      }

      else
      {
        v316 = _allocateUninitializedArray<A>(_:)();
        if (v315)
        {
          sub_100264880(&v315);
        }
      }

      v22 = v202;
      v186 = v316;
      v314 = v316;
      v312[4] = v206;
      Collection.first.getter();
      v312[0] = v312[2];
      v312[1] = v312[3];
      v23 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
      sub_10026A250(v238, 0, v23, &type metadata for Never, &type metadata for Bool, v209, &v313);
      if (!v22)
      {
        sub_100268744(v312);
        v311 = v313;
        if (v313 == 2)
        {
          v185 = 0;
        }

        else
        {
          v185 = v311;
        }

        v181 = v185;
        v310 = v185 & 1;
        v309 = v197;
        v182 = sub_10025C9B0(&qword_1006DB938, &qword_10050A080);
        v183 = sub_1003F7AB4();
        Collection.first.getter();
        v184 = v308;
        if (v308 == 1 || (v180 = v184, (v179 = v180) == 0))
        {
          v168 = 0;
          v169 = 0;
        }

        else
        {
          v178 = v179;
          v176 = v179;
          v24 = [v179 simpleAddress];
          v177 = v24;
          if (v24)
          {
            v175 = v177;
            v170 = v177;
            v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v172 = v25;
            _objc_release(v170);
            v173 = v171;
            v174 = v172;
          }

          else
          {
            v173 = 0;
            v174 = 0;
          }

          v167 = v174;
          v166 = v173;
          _objc_release(v176);
          v168 = v166;
          v169 = v167;
        }

        v163 = v169;
        v164 = v168;

        v165 = [v204 simpleAddress];
        if (v165)
        {
          v162 = v165;
          v159 = v165;
          *&v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v160 + 1) = v26;
          _objc_release(v159);
          v161 = v160;
        }

        else
        {
          v161 = 0uLL;
        }

        v158 = v161;

        v306[0] = v164;
        v306[1] = v163;
        v307 = v158;
        if (v163)
        {
          sub_100268860(v306, &v285);
          if (*(&v307 + 1))
          {
            v155 = &v284;
            v284 = v285;
            v154 = &v283;
            v283 = v307;
            v156 = static String.== infix(_:_:)();
            sub_100268744(v154);
            sub_100268744(v155);
            sub_100268744(v306);
            v157 = v156;
LABEL_56:
            v152 = v157;

            v305 = v152 & 1;
            v304 = v199;
            Collection.first.getter();
            v153 = v303;
            if (v303 == 1 || (v151 = v153, (v150 = v151) == 0))
            {
              v139 = 0;
              v140 = 0;
            }

            else
            {
              v149 = v150;
              v147 = v150;
              v27 = [v150 simpleAddress];
              v148 = v27;
              if (v27)
              {
                v146 = v148;
                v141 = v148;
                v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v28;
                _objc_release(v141);
                v144 = v142;
                v145 = v143;
              }

              else
              {
                v144 = 0;
                v145 = 0;
              }

              v138 = v145;
              v137 = v144;
              _objc_release(v147);
              v139 = v137;
              v140 = v138;
            }

            v134 = v140;
            v135 = v139;

            v136 = [v204 simpleAddress];
            if (v136)
            {
              v133 = v136;
              v130 = v136;
              *&v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(&v131 + 1) = v29;
              _objc_release(v130);
              v132 = v131;
            }

            else
            {
              v132 = 0uLL;
            }

            v129 = v132;

            v301[0] = v135;
            v301[1] = v134;
            v302 = v129;
            if (v134)
            {
              sub_100268860(v301, &v288);
              if (*(&v302 + 1))
              {
                v126 = &v287;
                v287 = v288;
                v125 = &v286;
                v286 = v302;
                v127 = static String.== infix(_:_:)();
                sub_100268744(v125);
                sub_100268744(v126);
                sub_100268744(v301);
                v128 = v127;
LABEL_77:
                v123 = v128;

                v300 = v123 & 1;
                v124 = Array.count.getter();

                v122 = v124 == 1 && Array.count.getter() == 1;
                v121 = v122;

                if (v121)
                {
                  if (v152)
                  {
                    v120 = 1;
                  }

                  else
                  {
                    v120 = v123;
                  }

                  if (v120)
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = v181;
                  }

                  v118 = v119;
                }

                else
                {
                  v118 = 0;
                }

                v117 = v118;

                if (v117)
                {
                  v289 = v186;
                  v116 = Collection.isEmpty.getter();
                }

                else
                {
                  v116 = 0;
                }

                v115 = v116;

                if (v115)
                {
                  v290 = v191;
                  v114 = Collection.isEmpty.getter();
                }

                else
                {
                  v114 = 0;
                }

                v113 = v114;

                v299 = v113 & 1;
                if (v152)
                {

                  v112 = v206;
                }

                else
                {

                  v112 = v201;
                }

                v111 = v112;
                v298 = v112;
                v108 = 0;
                sub_100272A48();
                v110 = static OS_dispatch_queue.main.getter();
                v106 = 7;
                v107 = swift_allocObject();
                v105 = v107 + 16;
                _objc_retain(v266);
                swift_unknownObjectWeakInit();
                _objc_release(v266);

                v30 = swift_allocObject();
                v31 = v264;
                v32 = v265;
                v33 = v234;
                v34 = v239;
                v35 = v111;
                v36 = v30;
                v37 = v107;
                *(v36 + 16) = v113 & 1;
                *(v36 + 24) = v37;
                *(v36 + 32) = v35;
                *(v36 + 40) = v31;
                *(v36 + 48) = v32;
                *(v36 + 56) = v33;
                v296 = v34;
                v297 = v36;
                v291 = _NSConcreteStackBlock;
                v292 = 1107296256;
                v293 = 0;
                v294 = sub_1002AEFF8;
                v295 = &unk_10065E998;
                v109 = _Block_copy(&v291);

                sub_100274F94();
                sub_100274FAC();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                (*(v260 + 8))(v263, v259);
                (*(v269 + 8))(v272, v268);
                _Block_release(v109);
                _objc_release(v110);

                _objc_release(v204);
                return;
              }

              sub_100268744(&v288);
            }

            else if (!*(&v302 + 1))
            {
              sub_100268744(v301);
              v128 = 1;
              goto LABEL_77;
            }

            sub_100268828(v301);
            v128 = 0;
            goto LABEL_77;
          }

          sub_100268744(&v285);
        }

        else if (!*(&v307 + 1))
        {
          sub_100268744(v306);
          v157 = 1;
          goto LABEL_56;
        }

        sub_100268828(v306);
        v157 = 0;
        goto LABEL_56;
      }
    }

    __break(1u);
    return;
  }

  v38 = v257;
  v84 = sub_1003EBD78();
  v85 = &v339;
  v90 = 32;
  swift_beginAccess();
  (*(v254 + 16))(v38, v84, v253);
  swift_endAccess();
  _objc_retain(v266);
  v91 = 7;
  v92 = swift_allocObject();
  *(v92 + 16) = v266;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v88 = 17;
  v94 = swift_allocObject();
  *(v94 + 16) = 32;
  v95 = swift_allocObject();
  v89 = 8;
  *(v95 + 16) = 8;
  v39 = swift_allocObject();
  v86 = v39;
  *(v39 + 16) = v240;
  *(v39 + 24) = 0;
  v40 = swift_allocObject();
  v41 = v86;
  v87 = v40;
  *(v40 + 16) = v241;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v87;
  v96 = v42;
  *(v42 + 16) = v242;
  *(v42 + 24) = v43;
  v97 = swift_allocObject();
  *(v97 + 16) = 64;
  v98 = swift_allocObject();
  *(v98 + 16) = v89;
  v44 = swift_allocObject();
  v45 = v92;
  v93 = v44;
  *(v44 + 16) = v243;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v93;
  v100 = v46;
  *(v46 + 16) = v244;
  *(v46 + 24) = v47;
  v102 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v99 = _allocateUninitializedArray<A>(_:)();
  v101 = v48;

  v49 = v94;
  v50 = v101;
  *v101 = v245;
  v50[1] = v49;

  v51 = v95;
  v52 = v101;
  v101[2] = v246;
  v52[3] = v51;

  v53 = v96;
  v54 = v101;
  v101[4] = v247;
  v54[5] = v53;

  v55 = v97;
  v56 = v101;
  v101[6] = v248;
  v56[7] = v55;

  v57 = v98;
  v58 = v101;
  v101[8] = v249;
  v58[9] = v57;

  v59 = v100;
  v60 = v101;
  v101[10] = v250;
  v60[11] = v59;
  sub_1002612B0();

  if (os_log_type_enabled(v103, v104))
  {
    v61 = v252;
    v76 = static UnsafeMutablePointer.allocate(capacity:)();
    v74 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v75 = 1;
    v77 = sub_1002641E8(1, v74, v74);
    v78 = sub_1002641E8(v75, &type metadata for Any + 8, &type metadata for Any + 8);
    v80 = &v331;
    v331 = v76;
    v81 = &v330;
    v330 = v77;
    v82 = &v329;
    v329 = v78;
    v79 = 2;
    sub_10026423C(2, &v331);
    sub_10026423C(v79, v80);
    v327 = v245;
    v328 = v94;
    sub_100264250(&v327, v80, v81, v82);
    v83 = v61;
    if (v61)
    {

      __break(1u);
    }

    else
    {
      v327 = v246;
      v328 = v95;
      sub_100264250(&v327, &v331, &v330, &v329);
      v73 = 0;
      v327 = v247;
      v328 = v96;
      sub_100264250(&v327, &v331, &v330, &v329);
      v72 = 0;
      v327 = v248;
      v328 = v97;
      sub_100264250(&v327, &v331, &v330, &v329);
      v71 = 0;
      v327 = v249;
      v328 = v98;
      sub_100264250(&v327, &v331, &v330, &v329);
      v70 = 0;
      v327 = v250;
      v328 = v100;
      sub_100264250(&v327, &v331, &v330, &v329);
      _os_log_impl(&_mh_execute_header, v103, v104, "<%s %@> [Quick Reply] Preferred email address is nil, will use default placeholder label", v76, 0x16u);
      v69 = 1;
      sub_10026429C(v77, 1);
      sub_10026429C(v78, v69);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v103);
  (*(v254 + 8))(v257, v253);
  v66[1] = 0;
  sub_100272A48();
  v68 = static OS_dispatch_queue.main.getter();

  v62 = swift_allocObject();
  v63 = v265;
  v64 = v234;
  v65 = v251;
  v62[2] = v264;
  v62[3] = v63;
  v62[4] = v64;
  v337 = v65;
  v338 = v62;
  aBlock = _NSConcreteStackBlock;
  v333 = 1107296256;
  v334 = 0;
  v335 = sub_1002AEFF8;
  v336 = &unk_10065E948;
  v67 = _Block_copy(&aBlock);

  sub_100274F94();
  sub_100274FAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v260 + 8))(v263, v259);
  (*(v269 + 8))(v272, v268);
  _Block_release(v67);
  _objc_release(v68);
}

void sub_1003F578C(void *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v16[7] = a1;
  v16[6] = (a2 + 16);
  v16[4] = a3;
  v16[5] = a4;
  if (Array.count.getter() != 1)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v16[0] = swift_unknownObjectWeakLoadStrong();
  if (v16[0])
  {
    v13 = v16[0];
    _objc_retain(v16[0]);
    sub_10026A58C(v16);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v13);
      swift_getObjectType();

      sub_1003F7C3C();
      _arrayForceCast<A, B>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v11 = [Strong displayNameForAddresses:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      v12 = v11;
      goto LABEL_7;
    }

    sub_100294754();
    swift_endAccess();
    _objc_release(v13);
  }

  else
  {
    sub_10026A58C(v16);
    swift_endAccess();
  }

  v12 = 0;
LABEL_7:
  if (v12)
  {

    sub_1003EBFD0();
    sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    _allocateUninitializedArray<A>(_:)();
    v7 = v4;
    _objc_retain(v12);
    v7[3] = sub_1003F7C3C();
    v7[4] = sub_1003F7CA0();
    *v7 = v12;
    sub_1002612B0();
    v8 = String.init(format:_:)();
    v9 = v5;

    (a3)(v8, v9);

    _objc_release(v12);
    return;
  }

LABEL_11:

  v6 = sub_1003E82C0();
  a3(v6);
}

uint64_t sub_1003F5B18(void (*a1)(uint64_t), uint64_t a2)
{

  v2 = sub_1003E82C0();
  a1(v2);
}

id sub_1003F5BD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1002644F0();

  result = sub_1003F5B90(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1003F5C50@<X0>(_BYTE *a2@<X8>)
{
  v3 = objc_opt_self();

  v4 = String._bridgeToObjectiveC()();

  v6 = [v3 addressIsEmptyGroup:v4];
  _objc_release(v4);
  result = v6;
  *a2 = v6;
  return result;
}

void sub_1003F5D08(char a1, uint64_t a2, void *a3, void (*a4)(void), void *a5)
{
  v18 = a1 & 1;
  v17[7] = (a2 + 16);
  v17[6] = a3;
  v17[4] = a4;
  v17[5] = a5;
  if ((a1 & 1) == 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v17[0] = swift_unknownObjectWeakLoadStrong();
  if (v17[0])
  {
    v14 = v17[0];
    _objc_retain(v17[0]);
    sub_10026A58C(v17);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v14);
      swift_getObjectType();

      sub_1003F7C3C();
      _arrayForceCast<A, B>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [Strong displayNameForAddresses:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      v13 = v12;
      goto LABEL_7;
    }

    sub_100294754();
    swift_endAccess();
    _objc_release(v14);
  }

  else
  {
    sub_10026A58C(v17);
    swift_endAccess();
  }

  v13 = 0;
LABEL_7:
  if (v13)
  {

    sub_1003EBFD0();
    sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    _allocateUninitializedArray<A>(_:)();
    v8 = v5;
    _objc_retain(v13);
    v8[3] = sub_1003F7C3C();
    v8[4] = sub_1003F7CA0();
    *v8 = v13;
    sub_1002612B0();
    v9 = String.init(format:_:)();
    v10 = v6;

    (a4)(v9, v10);

    _objc_release(v13);
    return;
  }

LABEL_11:

  v7 = sub_1003E82C0();
  a4(v7);
}

void sub_1003F6090(uint64_t a1)
{
  v79 = a1;
  v78 = 0;
  v66 = sub_1003EF3DC;
  v67 = sub_1003F77F0;
  v68 = sub_10026EE84;
  v69 = sub_10025E604;
  v70 = sub_100264354;
  v71 = sub_10026434C;
  v72 = sub_10026434C;
  v73 = sub_10026EF2C;
  v74 = sub_10026434C;
  v75 = sub_10026434C;
  v76 = sub_1002644E4;
  v95 = 0;
  v94 = 0;
  v77 = 0;
  v86 = 0;
  v80 = type metadata accessor for Logger();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = v26 - v83;
  v95 = __chkstk_darwin(v79);
  v94 = v1;
  v85 = v1 + OBJC_IVAR____TtC10MobileMail14QuickReplyView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v62 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v63 = [v62 mailComposeViewForQuickReplyView:v65];
    swift_unknownObjectRelease();
    v64 = v63;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v64 = 0;
  }

  v60.super.super.isa = v64;
  if (v64)
  {
    isa = v60.super.super.isa;
    v58 = v60.super.super.isa;
    v86 = v60.super.super.isa;
    QuickReplyView.addComposeView(_:)(v60);
    _objc_release(v58);
  }

  else
  {
    v2 = v84;
    v37 = sub_1003EBD78();
    v38 = &v92;
    v43 = 32;
    swift_beginAccess();
    (*(v81 + 16))(v2, v37, v80);
    swift_endAccess();
    _objc_retain(v65);
    v44 = 7;
    v45 = swift_allocObject();
    *(v45 + 16) = v65;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v48 = swift_allocObject();
    v42 = 8;
    *(v48 + 16) = 8;
    v3 = swift_allocObject();
    v39 = v3;
    *(v3 + 16) = v66;
    *(v3 + 24) = 0;
    v4 = swift_allocObject();
    v5 = v39;
    v40 = v4;
    *(v4 + 16) = v67;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v40;
    v49 = v6;
    *(v6 + 16) = v68;
    *(v6 + 24) = v7;
    v50 = swift_allocObject();
    *(v50 + 16) = 64;
    v51 = swift_allocObject();
    *(v51 + 16) = v42;
    v8 = swift_allocObject();
    v9 = v45;
    v46 = v8;
    *(v8 + 16) = v69;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v46;
    v53 = v10;
    *(v10 + 16) = v70;
    *(v10 + 24) = v11;
    v55 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v52 = _allocateUninitializedArray<A>(_:)();
    v54 = v12;

    v13 = v47;
    v14 = v54;
    *v54 = v71;
    v14[1] = v13;

    v15 = v48;
    v16 = v54;
    v54[2] = v72;
    v16[3] = v15;

    v17 = v49;
    v18 = v54;
    v54[4] = v73;
    v18[5] = v17;

    v19 = v50;
    v20 = v54;
    v54[6] = v74;
    v20[7] = v19;

    v21 = v51;
    v22 = v54;
    v54[8] = v75;
    v22[9] = v21;

    v23 = v53;
    v24 = v54;
    v54[10] = v76;
    v24[11] = v23;
    sub_1002612B0();

    if (os_log_type_enabled(v56, v57))
    {
      v25 = v77;
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v27 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v28 = 1;
      v30 = sub_1002641E8(1, v27, v27);
      v31 = sub_1002641E8(v28, &type metadata for Any + 8, &type metadata for Any + 8);
      v33 = &v91;
      v91 = v29;
      v34 = &v90;
      v90 = v30;
      v35 = &v89;
      v89 = v31;
      v32 = 2;
      sub_10026423C(2, &v91);
      sub_10026423C(v32, v33);
      v87 = v71;
      v88 = v47;
      sub_100264250(&v87, v33, v34, v35);
      v36 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v87 = v72;
        v88 = v48;
        sub_100264250(&v87, &v91, &v90, &v89);
        v26[4] = 0;
        v87 = v73;
        v88 = v49;
        sub_100264250(&v87, &v91, &v90, &v89);
        v26[3] = 0;
        v87 = v74;
        v88 = v50;
        sub_100264250(&v87, &v91, &v90, &v89);
        v26[2] = 0;
        v87 = v75;
        v88 = v51;
        sub_100264250(&v87, &v91, &v90, &v89);
        v26[1] = 0;
        v87 = v76;
        v88 = v53;
        sub_100264250(&v87, &v91, &v90, &v89);
        _os_log_impl(&_mh_execute_header, v56, v57, "<%s %@> [Quick Reply] Failed to create a compose view", v29, 0x16u);
        v26[0] = 1;
        sub_10026429C(v30, 1);
        sub_10026429C(v31, v26[0]);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v56);
    (*(v81 + 8))(v84, v80);
  }
}

void sub_1003F6CE8(uint64_t a1)
{
  swift_getObjectType();
  v5 = (static QuickReplyView.defaultHeight.getter() - *&v1[OBJC_IVAR____TtC10MobileMail14QuickReplyView_buttonHeightWidth]) / 2.0;
  _objc_retain(v1);
  v7 = UIRoundToViewScale(v5);
  _objc_release(v1);
  v6 = &v1[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
  swift_beginAccess();
  *v6 = v7;
  swift_endAccess();
  v8 = OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint;
  v9 = &v1[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonTopConstraint];
  swift_beginAccess();
  if (*v9)
  {
    v4 = *&v1[v8];
    _objc_retain(v4);
    swift_endAccess();
    v2 = &v1[OBJC_IVAR____TtC10MobileMail14QuickReplyView_sendButtonDefaultTopOffset];
    swift_beginAccess();
    v3 = *v2;
    swift_endAccess();
    [v4 setConstant:v3];
    _objc_release(v4);
  }

  else
  {
    swift_endAccess();
  }
}

UIPointerStyle_optional __swiftcall QuickReplyView.pointerInteraction(_:styleFor:)(UIPointerInteraction _, UIPointerRegion styleFor)
{
  isa = _.super.isa;
  v12[1] = styleFor.super.isa;
  v12[0] = v2;
  swift_getObjectType();
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0.0;
  v16 = 0;
  v21 = type metadata accessor for UIPointerShape();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (v12 - v14);
  v32 = __chkstk_darwin(isa);
  v31 = v3;
  v30 = v4;
  v15 = sub_1003E82C0();
  v24 = v5;
  v28 = v15;
  v29 = v5;
  v23 = *sub_1003E83AC();
  _objc_retain(v23);
  v27 = v23;
  String.height(width:font:)();
  v17 = v6;
  static QuickReply.additionalWebViewPadding.getter();
  v18 = v17 + v7;
  v26 = v17 + v7;
  sub_1003F7890();
  v8 = v19;
  v9 = v22;
  *v22 = v18;
  (*(v8 + 104))(v9, enum case for UIPointerShape.verticalBeam(_:));
  sub_1003F73E8();
  v25 = UIPointerStyle.init(shape:constrainedAxes:)();
  _objc_release(v23);

  v11 = v25;
  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t sub_1003F73E8()
{
  sub_1003F7710(0);

  return 0;
}

id sub_1003F74D4(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v12 = [v7 initWithInsets:a1 cornerRadius:a4 compositionSnapshot:a5 buttonsSnapshot:a6 backgroundSnapshot:a7];
  _objc_release(a3);
  _objc_release(a2);
  _objc_release(a1);
  return v12;
}

id sub_1003F7574()
{
  v2 = [v0 initWithDelegate:?];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1003F75BC(uint64_t a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:?];
  _objc_release(v4);

  return v5;
}

uint64_t sub_1003F7620(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

unint64_t sub_1003F7710(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for UIAxis(0);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1003F7824(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7890()
{
  v2 = qword_1006DB890;
  if (!qword_1006DB890)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB890);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F790C()
{
  v2 = qword_1006DB898;
  if (!qword_1006DB898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F79C4()
{
  v2 = qword_1006DB928;
  if (!qword_1006DB928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB928);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003F7A50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7AB4()
{
  v2 = qword_1006DB940;
  if (!qword_1006DB940)
  {
    sub_10025CAA4(&qword_1006DB938, &qword_10050A080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB940);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003F7B5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1003F7BD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003F7C3C()
{
  v2 = qword_1006DB950;
  if (!qword_1006DB950)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB950);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7CA0()
{
  v2 = qword_1006DB958;
  if (!qword_1006DB958)
  {
    sub_1003F7C3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7D20()
{
  v2 = qword_1006DB960;
  if (!qword_1006DB960)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7DA0()
{
  v2 = qword_1006DB970;
  if (!qword_1006DB970)
  {
    sub_10025CAA4(&qword_1006DB968, &qword_10050A088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F7E30()
{
  v2 = qword_1006DB990;
  if (!qword_1006DB990)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB990);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7E94()
{
  v2 = qword_1006DB9A0;
  if (!qword_1006DB9A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003F7F00()
{
  v2 = qword_1006DB9B0;
  if (!qword_1006DB9B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003F7F6C()
{
  v17 = "Email messages to remove follow up suggestion";
  v42 = &v52;
  v52 = 0;
  v53 = 0;
  v28 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v38 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v36 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v23 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v22 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v20 = &v5 - v11;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v12;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v13 = v51;
  memset(v51, 0, sizeof(v51));
  sub_10000B074();
  sub_1003DC7F0();
  v44 = AppDependency.__allocating_init(key:manager:)();

  v52 = v44;
  sub_10025C9B0(&unk_1006D70A0, &qword_1004FEC80);
  v29 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v48 = v17;
  v18 = 45;
  v49 = 45;
  v19 = 2;
  v50 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMOVE_FOLLOW_UP_ENTITY_DESCRIPTION", 0x23uLL, v29 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45[1] = v17;
  v45[2] = v18;
  v46 = v19;
  v47 = v26 & 1 & v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v29, v27);
  v37 = v45;
  v45[0] = 0;
  v30 = type metadata accessor for IntentDialog();
  v3 = *(v30 - 8);
  v32 = *(v3 + 56);
  v31 = v3 + 56;
  v32(v38, v29);
  (v32)(v39, v29, v29, v30);
  v34 = sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  v33 = sub_10027D124();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10027EB24(v42);
  return v44;
}

uint64_t sub_1003F8680@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Remove the follow up suggestion on one or more email messages";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMOVE_FOLLOW_UP_DESCRIPTION", 0x1CuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 61;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003F89C0@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Remove the follow up suggestion on one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove Follow Up", 0x10uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 61;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003F8BA4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DB9B8, &qword_10050A098);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DB9C0, &qword_10050A0A0);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_100335360();
  v12 = 21;
  v24 = &unk_10065EC30;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove follow up for ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DB9D0, &qword_10050A0D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003F8EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a3;
  v3[40] = a2;
  v3[39] = a1;
  v3[34] = v3;
  v3[22] = 0;
  v3[23] = 0;
  v3[35] = 0;
  v3[36] = 0;
  v3[22] = a2;
  v3[23] = a3;
  type metadata accessor for MainActor();
  v3[42] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[43] = v6;
  v3[44] = v4;

  return _swift_task_switch(sub_1003F8FA0, v6);
}

uint64_t sub_1003F8FA0()
{
  v1 = v0[41];
  v2 = v0[40];
  v0[34] = v0;
  v10 = sub_10027A534(v2, v1);
  sub_10035277C();
  v5 = v9[41];
  v6 = v9[40];
  _objc_release(v10);
  v9[24] = v6;
  v9[25] = v5;
  v8 = sub_10027A6E8(v6, v5);
  v9[45] = v8;
  v7 = sub_10027A534(v6, v5);
  v9[46] = v7;
  v3 = swift_task_alloc();
  v9[47] = v3;
  v9[48] = sub_1003F9D20();
  *v3 = v9[34];
  v3[1] = sub_1003F9194;

  return sub_10045F520(v8, v7);
}

uint64_t sub_1003F9194(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[34] = *v2;
  v7[49] = a1;
  v7[50] = v1;

  if (v1)
  {
    v3 = *(v6 + 328);
    v4 = sub_1003F9C68;
  }

  else
  {

    v3 = *(v6 + 328);
    v4 = sub_1003F9338;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003F9338()
{
  v1 = v0[50];
  v16 = v0[49];
  v2 = v0[41];
  v3 = v0[40];
  v0[34] = v0;
  v0[35] = v16;
  v17 = sub_10027A534(v3, v2);
  sub_100352C0C(v16);
  v0[51] = v1;
  if (v1)
  {
    _objc_release(v17);

    v5 = *(*(v15 + 272) + 8);

    return v5();
  }

  else
  {
    v12 = *(v15 + 392);
    v9 = *(v15 + 328);
    v8 = *(v15 + 320);
    _objc_release(v17);
    sub_1003F9D9C();

    v7 = sub_10027A534(v8, v9);
    v10 = sub_100353058();
    _objc_release(v7);
    *(v15 + 208) = v8;
    *(v15 + 216) = v9;
    v11 = sub_10028E57C();
    *(v15 + 224) = v8;
    *(v15 + 232) = v9;
    v4 = sub_10028E5B4();
    v14 = sub_10027D364(v12, v10, v11, v4);
    *(v15 + 416) = v14;
    *(v15 + 288) = v14;
    *(v15 + 16) = *(v15 + 272);
    *(v15 + 56) = v15 + 256;
    *(v15 + 24) = sub_1003F9670;
    v13 = swift_continuation_init();
    *(v15 + 136) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
    *(v15 + 112) = v13;
    *(v15 + 80) = _NSConcreteStackBlock;
    *(v15 + 88) = 1107296256;
    *(v15 + 92) = 0;
    *(v15 + 96) = sub_10027D41C;
    *(v15 + 104) = &unk_10065EBA0;
    [v14 performInteractionWithCompletion:?];

    return _swift_continuation_await(v15 + 16);
  }
}

uint64_t sub_1003F9670()
{
  v3 = *v0;
  *(*v0 + 272) = *v0;
  v1 = *(v3 + 344);

  return _swift_task_switch(sub_1003F9788, v1);
}

uint64_t sub_1003F9788()
{
  *(v0 + 272) = v0;
  _objc_release(*(v0 + 256));
  v20 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidRemoveFollowUp");
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  if (*(v0 + 168))
  {
    object = v19[10]._object;
    v13 = sub_10027EC3C(&v19[9]._countAndFlagsBits, object);
    v14 = *(object - 8);
    v16 = swift_task_alloc();
    (*(v14 + 16))(v16, v13, object);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v16, object);

    sub_1000160F4(&v19[9]._countAndFlagsBits);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v1 = v19[25]._object;
  v11 = v19[20]._object;
  countAndFlagsBits = v19[20]._countAndFlagsBits;
  sub_10025C9B0(&unk_1006DB9F0, &qword_1005001E8);
  _allocateUninitializedArray<A>(_:)();
  v9 = v2;
  v19[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailMessageIDs", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v19[18]._object = sub_10027A6E8(countAndFlagsBits, v11);
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  result = Sequence.compactMap<A>(_:)();
  v12 = result;
  if (!v1)
  {
    v8 = v19[26]._countAndFlagsBits;
    v7 = v19[20]._object;
    v6 = v19[20]._countAndFlagsBits;
    sub_100264880(&v19[18]._object);
    *(v9 + 64) = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    *(v9 + 40) = v12;
    sub_1002612B0();
    sub_100268744(&v19[15]);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 postNotificationName:@"AppIntentDidRemoveFollowUp" object:v18 userInfo:isa];
    _objc_release(isa);
    swift_unknownObjectRelease();
    _objc_release(@"AppIntentDidRemoveFollowUp");
    _objc_release(v20);
    v19[19]._countAndFlagsBits = sub_10027A6E8(v6, v7);
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880(&v19[19]._countAndFlagsBits);
    _objc_release(v8);

    v4 = *(v19[17]._countAndFlagsBits + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1003F9C68()
{
  v1 = *(v0 + 368);
  *(v0 + 272) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 272) + 8);

  return v2();
}

unint64_t sub_1003F9D20()
{
  v2 = qword_1006DB9D8;
  if (!qword_1006DB9D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003F9D9C()
{
  v2 = qword_1006DB9E0;
  if (!qword_1006DB9E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB9E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003F9E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v21 = 0;
  v2 = sub_10025C9B0(&qword_1006D7DF0, &qword_100500800);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v17 = &v9 - v14;
  v15 = *v3;
  v16 = v3[1];
  v21 = v3;

  MailMessageEntityID.init(with:)();
  v18 = type metadata accessor for MailMessageEntityID();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    result = sub_1002C1698(v17);
    v5 = v12;
    *v12 = 0;
    v5[1] = 0;
  }

  else
  {
    v10 = MailMessageEntityID.mailMessageID.getter();
    v11 = v6;
    (*(v19 + 8))(v17, v18);
    result = v10;
    v7 = v12;
    v8 = v11;
    *v12 = v10;
    v7[1] = v8;
  }

  return result;
}

uint64_t sub_1003FA018(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003F8EC8(a1, v6, v7);
}

uint64_t sub_1003FA0E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003F7F6C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1003FA158()
{
  v2 = qword_1006DBA10;
  if (!qword_1006DBA10)
  {
    sub_10025CAA4(&qword_1006DBA18, qword_10050A170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FA1E0(uint64_t a1)
{
  result = sub_100335360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003FA224()
{
  v2 = qword_1006DBA30;
  if (!qword_1006DBA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FA2B8()
{
  v2 = qword_1006DBA38;
  if (!qword_1006DBA38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA38);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003FA3A0@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v69 = v83;
  v71 = 80;
  memset(v83, 0, sizeof(v83));
  v1 = sub_10025C9B0(&unk_1006DB310, &unk_10050D1D0);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v53 = &v14 - v15;
  v40 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v16 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v41 = &v14 - v16;
  v2 = sub_10025C9B0(&unk_1006D8270, &unk_1004FF4D0);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v39 = &v14 - v17;
  v51 = 0;
  v3 = type metadata accessor for InputConnectionBehavior();
  v18 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v67 = &v14 - v18;
  v19 = (*(*(sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v51);
  v66 = &v14 - v19;
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v65 = &v14 - v20;
  v30 = type metadata accessor for IntentPerson.ParameterMode();
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v36 = &v14 - v21;
  v6 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v22 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v63 = &v14 - v22;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v23 = v82;
  memset(v82, 0, sizeof(v82));
  sub_10000B074();
  sub_1003DC7F0();
  v83[0] = AppDependency.__allocating_init(key:manager:)();
  v28 = sub_10025C9B0(&unk_1006D7410, &unk_1004FF4E0);
  v54 = type metadata accessor for LocalizedStringResource();
  v7 = *(v54 - 8);
  v56 = *(v7 + 56);
  v55 = v7 + 56;
  v58 = 1;
  v56(v63, 1);
  v26 = &v81;
  v81 = 0;
  v29 = &enum case for IntentPerson.ParameterMode.email(_:);
  v32 = *(v24 + 104);
  v31 = v24 + 104;
  v32(v36, enum case for IntentPerson.ParameterMode.email(_:), v30);
  v59 = type metadata accessor for IntentDialog();
  v8 = *(v59 - 8);
  v61 = *(v8 + 56);
  v60 = v8 + 56;
  v61(v65, v58);
  v33 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
  v34 = sub_10028035C();
  sub_1003BD8F8(v67);
  v83[1] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v56)(v63, v58, v58, v54);
  v27 = &v80;
  v80 = 0;
  v32(v36, *v29, v30);
  (v61)(v65, v58, v58, v59);
  sub_1003BD8F8(v67);
  v83[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v56)(v63, v58, v58, v54);
  v35 = &v79;
  v79 = 0;
  v32(v36, *v29, v30);
  (v61)(v65, v58, v58, v59);
  sub_1003BD8F8(v67);
  v83[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430, &unk_1004FF4F0);
  (v56)(v63, v58, v58, v54);
  v38 = v78;
  v78[0] = 0;
  v78[1] = 0;
  v9 = type metadata accessor for String.IntentInputOptions();
  (*(*(v9 - 8) + 56))(v39, v58);
  (v61)(v65, v58, v58, v59);
  v37 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  sub_10028DF54();
  sub_1003BD8F8(v67);
  v83[4] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450, &unk_1004FF500);
  (v56)(v63, v58, v58, v54);
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 56))(v41, v58);
  (v61)(v65, v58, v58, v59);
  sub_10028E064();
  sub_1003BD8F8(v67);
  v83[5] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0, &unk_10050CF50);
  (v56)(v63, v58, v58, v54);
  v44 = v77;
  memset(v77, 0, sizeof(v77));
  (v61)(v65, v58, v58, v59);
  (v61)(v66, v58, v58, v59);
  v43 = sub_10025C9B0(&unk_1006D7470, &qword_1004FF510);
  v42 = sub_10028E17C();
  v45 = sub_100264788();
  sub_1003BD8F8(v67);
  v83[6] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490, &qword_1004FF518);
  (v56)(v63, v58, v58, v54);
  v49 = &v76;
  v76 = 0;
  v47 = type metadata accessor for UTType();
  v46 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  sub_1002612B0();
  v50 = v11;
  (v61)(v65, v58, v58, v59);
  v48 = sub_10025C9B0(&unk_1006D7270, &unk_1004FF0E0);
  sub_10028E214();
  sub_1003BD8F8(v67);
  v83[7] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DB330, &qword_1005095D8);
  (v56)(v63, v58, v58, v54);
  v52 = &v75;
  v75 = 0;
  v12 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v12 - 8) + 56))(v53, v58);
  (v61)(v65, v58, v58, v59);
  sub_1003424B8();
  sub_1003BD8F8(v67);
  v83[8] = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DBAE0, &unk_100509DE0);
  (v56)(v63, v58, v58, v54);
  v57 = v84;
  sub_1002E41D4(v84);
  v64 = v74;
  memcpy(v74, v57, 0x80uLL);
  (v61)(v65, v58, v58, v59);
  (v61)(v66, v58, v58, v59);
  v62 = sub_10027D1BC();
  v68 = sub_10027EAAC();
  sub_1003BD8F8(v67);
  v83[9] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v70 = __dst;
  memcpy(__dst, v69, v71);
  sub_100342838(v70, v73);
  sub_100342970(v69);
  return memcpy(v72, v70, v71);
}

void *sub_1003FAF74@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x80uLL);
}

void *sub_1003FAFF8(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_1002E0080(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10027D9CC(a1);
  return result;
}

uint64_t sub_1003FB080(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_1003FB158()
{

  IntentParameter.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_1003FB1B8()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003FB224@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v31 = 0;
  v30 = sub_1003FB7EC;
  v1 = sub_10025C9B0(&qword_1006DBA58, &qword_10050A2D0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v9 - v10;
  v25 = sub_10025C9B0(&unk_1006DBA60, &qword_10050A2D8);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = &v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v22 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v26 = &v9 - v13;
  v33 = sub_100324770();
  v32 = &unk_10065EE28;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18 = 6;
  v28 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply ", 6uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBA70, &qword_10050A308);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v28 & 1);
  v16 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v17 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBA78, &qword_10050A338);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" with ", v18, v28 & 1);
  v19 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  v20 = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DBA80, &qword_10050A368);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v28 & 1);
  v21 = v7._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);

  (*(v23 + 16))(v22, v26, v25);
  (*(v23 + 32))(v27, v22, v25);
  (*(v23 + 8))(v26, v25);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_1003FB65C()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_1003FB6B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1003FB65C();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FB71C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288E04();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FB784@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288D44();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

uint64_t sub_1003FB7EC()
{
  swift_getKeyPath();
  sub_100324770();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&qword_1006DBAD8, &unk_10050A6F0);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1002612B0();
  v7 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v7;
}

void *sub_1003FBA00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289148();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FBA68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289208();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FBAD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002892C8();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FBB38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289388();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

void *sub_1003FBBA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342838(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002DF99C();
  result = __dst;
  *a2 = v2;
  sub_100342970(__dst);
  return result;
}

uint64_t sub_1003FBC14(uint64_t a1)
{
  v2[120] = v1;
  v2[119] = a1;
  v2[103] = v2;
  v2[104] = 0;
  v2[105] = 0;
  v2[110] = 0;
  v2[115] = 0;
  v2[116] = 0;
  v2[117] = 0;
  v3 = type metadata accessor for Logger();
  v2[121] = v3;
  v2[122] = *(v3 - 8);
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7DF0, &qword_100500800);
  v2[125] = swift_task_alloc();
  v4 = type metadata accessor for MailMessageEntityID();
  v2[126] = v4;
  v2[127] = *(v4 - 8);
  v2[128] = swift_task_alloc();
  v2[104] = v1;
  type metadata accessor for MainActor();
  v2[129] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[130] = v7;
  v2[131] = v5;

  return _swift_task_switch(sub_1003FBE20, v7);
}

uint64_t sub_1003FBE20()
{
  *(v0 + 824) = v0;
  v72 = sub_100289454();
  sub_10035277C();
  v68 = *(v71 + 960);
  _objc_release(v72);
  v69 = swift_allocObject();
  *(v71 + 1056) = v69;
  *(v71 + 840) = v69 + 2;
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = 0;
  v69[5] = 0;
  memcpy((v71 + 144), v68, 0x50uLL);
  *(v71 + 1064) = sub_100288818();
  v70 = sub_100286A40(&unk_10065EE28);
  if (v70)
  {
    *(v71 + 944) = &OBJC_PROTOCOL___ComposeCapable;
    v67 = swift_dynamicCastObjCProtocolConditional();
    if (v67)
    {
      v66 = v67;
    }

    else
    {
      _objc_release(v70);
      v66 = 0;
    }

    v65 = v66;
  }

  else
  {
    v65 = 0;
  }

  *(v71 + 1072) = v65;
  if (v65)
  {
    v64 = *(v71 + 1008);
    v63 = *(v71 + 1000);
    v62 = *(v71 + 1016);
    *(v71 + 880) = v65;
    sub_1003FAF74((v71 + 16));

    sub_10027D9CC((v71 + 16));
    MailMessageEntityID.init(with:)();
    if ((*(v62 + 48))(v63, 1, v64) != 1)
    {
      (*(*(v71 + 1016) + 32))(*(v71 + 1024), *(v71 + 1000), *(v71 + 1008));
      v60 = sub_100289454();
      v61 = [v60 daemonInterface];
      _objc_release(v60);
      if (!v61)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v58 = [v61 messageRepository];
      _objc_release(v61);
      v59 = EMMessageRepository.message(forMailMessageEntityID:)();
      *(v71 + 1080) = v59;
      _objc_release(v58);
      *(v71 + 920) = v59;
      v2 = sub_1003FB158();
      if (v2)
      {
        *(v71 + 1088) = sub_10028D4AC();
        _objc_retain(v59);
        v55 = sub_100289CFC();
        v56 = v3;
        v57 = v4;
        *(v71 + 1096) = v55;
        *(v71 + 1104) = v3;
        *(v71 + 1112) = v4;
        v5 = swift_task_alloc();
        v6 = v55;
        v7 = v56;
        v8 = v57;
        v9 = v5;
        v10 = v59;
        *(v71 + 1120) = v9;
        *v9 = *(v71 + 824);
        v9[1] = sub_1003FCD10;
      }

      else
      {
        *(v71 + 1136) = sub_10028D4AC();
        _objc_retain(v59);
        v52 = sub_100289CFC();
        v53 = v11;
        v54 = v12;
        *(v71 + 1144) = v52;
        *(v71 + 1152) = v11;
        *(v71 + 1160) = v12;
        v13 = swift_task_alloc();
        v6 = v52;
        v7 = v53;
        v8 = v54;
        v14 = v13;
        v10 = v59;
        *(v71 + 1168) = v14;
        *v14 = *(v71 + 824);
        v14[1] = sub_1003FD550;
      }

      return sub_100286504(v10, v6, v7, v8);
    }

    v15 = *(v71 + 992);
    v48 = *(v71 + 968);
    v47 = *(v71 + 976);
    sub_1002C1698(*(v71 + 1000));
    v16 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v47 + 16))(v15, v16, v48);
    oslog = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v51 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v49))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v44 = sub_1002641E8(0, v42, v42);
      v45 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v71 + 888) = buf;
      *(v71 + 896) = v44;
      *(v71 + 904) = v45;
      sub_10026423C(0, (v71 + 888));
      sub_10026423C(0, (v71 + 888));
      *(v71 + 912) = v51;
      v46 = swift_task_alloc();
      v46[2] = v71 + 888;
      v46[3] = v71 + 896;
      v46[4] = v71 + 904;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v49, "#SiriMail ReplyMessageIntent perform: failed to get uniqueIdentifier, throwing error", buf, 2u);
      sub_10026429C(v44, 0);
      sub_10026429C(v45, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v39 = *(v71 + 992);
    v40 = *(v71 + 968);
    v38 = *(v71 + 976);
    _objc_release(oslog);
    (*(v38 + 8))(v39, v40);
    v41 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v41 - 8) + 104))(v17, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = *(v71 + 984);
    v34 = *(v71 + 968);
    v33 = *(v71 + 976);
    v19 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v33 + 16))(v18, v19, v34);
    log = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v37 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v35))
    {
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v30 = sub_1002641E8(0, v28, v28);
      v31 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v71 + 848) = v29;
      *(v71 + 856) = v30;
      *(v71 + 864) = v31;
      sub_10026423C(0, (v71 + 848));
      sub_10026423C(0, (v71 + 848));
      *(v71 + 872) = v37;
      v32 = swift_task_alloc();
      v32[2] = v71 + 848;
      v32[3] = v71 + 856;
      v32[4] = v71 + 864;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v35, "Failed to find a scene capable of composing", v29, 2u);
      sub_10026429C(v30, 0);
      sub_10026429C(v31, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v24 = *(v71 + 984);
    v25 = *(v71 + 968);
    __src = *(v71 + 960);
    v23 = *(v71 + 976);
    _objc_release(log);
    (*(v23 + 8))(v24, v25);
    sub_10028B33C();
    swift_allocError();
    v27 = v20;
    sub_100342838(__src, (v71 + 224));
    *(v27 + 24) = &unk_10065EE28;
    *(v27 + 32) = sub_100324770();
    v21 = swift_allocObject();
    *v27 = v21;
    memcpy((v21 + 16), __src, 0x50uLL);
    *(v27 + 40) = 0;
    swift_willThrow();
  }

  v22 = *(*(v71 + 824) + 8);

  return v22();
}

uint64_t sub_1003FCD10(uint64_t a1)
{
  v8 = *v1;
  v7 = *v1;
  v6 = *(*v1 + 1112);
  v5 = *(*v1 + 1104);
  v4 = *(*v1 + 1096);
  *(v7 + 824) = *v1;
  *(v7 + 1128) = a1;

  sub_100289E1C(v4, v5, v6);
  v2 = *(v8 + 1040);

  return _swift_task_switch(sub_1003FCEAC, v2);
}

uint64_t sub_1003FCEAC()
{
  v1 = v0[141];
  v2 = v0[135];
  v0[103] = v0;
  v24 = sub_1003FDD90(v2, v1);
  _objc_retain(v24);
  v0[116] = v24;
  v23 = v0[134];
  v22 = v0[120];
  memcpy(v0 + 38, v22, 0x50uLL);
  sub_100282548(v24);
  memcpy(v0 + 48, v22, 0x50uLL);
  sub_100286C38(v23, v24);
  v25 = [v24 attachments];
  _objc_release(v24);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[117] = v26;
  _objc_release(v25);
  v27 = [objc_opt_self() defaultCenter];
  v28 = MFMailComposeControllerDidLaunchNotification;
  _objc_retain(MFMailComposeControllerDidLaunchNotification);
  v0[96] = 0;
  v0[97] = 0;
  v0[98] = 0;
  v0[99] = 0;
  if (v0[99])
  {
    v17 = *(v21 + 792);
    v15 = sub_10027EC3C((v21 + 768), v17);
    v16 = *(v17 - 8);
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v17);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v17);

    sub_1000160F4((v21 + 768));
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v10 = *(v21 + 1080);
  v13 = *(v21 + 1056);
  v14 = *(v21 + 1024);
  v12 = *(v21 + 1008);
  __src = *(v21 + 960);
  v11 = *(v21 + 1016);
  v8 = [objc_opt_self() mainQueue];
  sub_100342838(__src, (v21 + 464));

  v6 = swift_allocObject();
  memcpy(v6 + 2, __src, 0x50uLL);
  v6[12] = v26;
  v6[13] = v13;
  *(v21 + 720) = sub_1003FF288;
  *(v21 + 728) = v6;
  *(v21 + 688) = _NSConcreteStackBlock;
  *(v21 + 696) = 1107296256;
  *(v21 + 700) = 0;
  *(v21 + 704) = sub_10028C0DC;
  *(v21 + 712) = &unk_10065ED00;
  aBlock = _Block_copy((v21 + 688));

  v9 = [v27 addObserverForName:v28 object:v20 queue:v8 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  swift_unknownObjectRelease();
  _objc_release(v28);
  _objc_release(v27);
  *(v21 + 760) = swift_getObjectType();
  *(v21 + 736) = v9;
  swift_beginAccess();
  sub_10028D584((v21 + 736), v13 + 16);
  swift_endAccess();
  _objc_retain(v10);
  sub_1002CD3D8(v10, (v21 + 544));
  memcpy((v21 + 616), (v21 + 544), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0((v21 + 544));

  _objc_release(*(v21 + 928));
  _objc_release(v10);
  (*(v11 + 8))(v14, v12);
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 824) + 8);

  return v3();
}

uint64_t sub_1003FD550(uint64_t a1)
{
  v8 = *v1;
  v7 = *v1;
  v6 = *(*v1 + 1160);
  v5 = *(*v1 + 1152);
  v4 = *(*v1 + 1144);
  *(v7 + 824) = *v1;
  *(v7 + 1176) = a1;

  sub_100289E1C(v4, v5, v6);
  v2 = *(v8 + 1040);

  return _swift_task_switch(sub_1003FD6EC, v2);
}

uint64_t sub_1003FD6EC()
{
  v1 = v0[147];
  v2 = v0[135];
  v0[103] = v0;
  v24 = sub_1003FDDD8(v2, v1);
  _objc_retain(v24);
  v0[116] = v24;
  v23 = v0[134];
  v22 = v0[120];
  memcpy(v0 + 38, v22, 0x50uLL);
  sub_100282548(v24);
  memcpy(v0 + 48, v22, 0x50uLL);
  sub_100286C38(v23, v24);
  v25 = [v24 attachments];
  _objc_release(v24);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[117] = v26;
  _objc_release(v25);
  v27 = [objc_opt_self() defaultCenter];
  v28 = MFMailComposeControllerDidLaunchNotification;
  _objc_retain(MFMailComposeControllerDidLaunchNotification);
  v0[96] = 0;
  v0[97] = 0;
  v0[98] = 0;
  v0[99] = 0;
  if (v0[99])
  {
    v17 = *(v21 + 792);
    v15 = sub_10027EC3C((v21 + 768), v17);
    v16 = *(v17 - 8);
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v17);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v17);

    sub_1000160F4((v21 + 768));
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v10 = *(v21 + 1080);
  v13 = *(v21 + 1056);
  v14 = *(v21 + 1024);
  v12 = *(v21 + 1008);
  __src = *(v21 + 960);
  v11 = *(v21 + 1016);
  v8 = [objc_opt_self() mainQueue];
  sub_100342838(__src, (v21 + 464));

  v6 = swift_allocObject();
  memcpy(v6 + 2, __src, 0x50uLL);
  v6[12] = v26;
  v6[13] = v13;
  *(v21 + 720) = sub_1003FF288;
  *(v21 + 728) = v6;
  *(v21 + 688) = _NSConcreteStackBlock;
  *(v21 + 696) = 1107296256;
  *(v21 + 700) = 0;
  *(v21 + 704) = sub_10028C0DC;
  *(v21 + 712) = &unk_10065ED00;
  aBlock = _Block_copy((v21 + 688));

  v9 = [v27 addObserverForName:v28 object:v20 queue:v8 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  swift_unknownObjectRelease();
  _objc_release(v28);
  _objc_release(v27);
  *(v21 + 760) = swift_getObjectType();
  *(v21 + 736) = v9;
  swift_beginAccess();
  sub_10028D584((v21 + 736), v13 + 16);
  swift_endAccess();
  _objc_retain(v10);
  sub_1002CD3D8(v10, (v21 + 544));
  memcpy((v21 + 616), (v21 + 544), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0((v21 + 544));

  _objc_release(*(v21 + 928));
  _objc_release(v10);
  (*(v11 + 8))(v14, v12);
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 824) + 8);

  return v3();
}

void sub_1003FDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v94 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129[1] = 0;
  v129[0] = 0;
  v120 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = v96;
  __chkstk_darwin(v95 - 8);
  v98 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*(sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v101);
  v103 = &v17 - v102;
  v134 = v6;
  v133 = a2;
  v132 = v7;
  v104 = v8 + 16;
  v131 = v8 + 16;
  v105 = sub_100289454();
  v107 = sub_10035333C();
  v106 = v107;

  if (v107)
  {
    v93 = v106;
    v90 = v106;
    v91 = [v106 composeWebView];

    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v89 = v92;
  if (v92)
  {
    v88 = v89;
    v86 = v89;
    v130 = v89;

    v128 = v99;
    v87 = sub_10025C9B0(&unk_1006D74B0, &unk_10050AFC0);
    sub_10028E3AC();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_10025C9B0(&unk_1006D74C0, &qword_1004FF520);
      IndexingIterator.next()();
      if (!v127)
      {
        break;
      }

      sub_10028E434();
      if (swift_dynamicCast())
      {
        v84 = v121;
      }

      else
      {
        v84 = 0;
      }

      v83 = v84;
      if (v84)
      {
        v82 = v83;
        v80 = v83;
        v120 = v83;
        v9 = [v83 fetchLocalData];
        v81 = v9;
        if (v9)
        {
          v79 = v81;
          v74 = v81;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v10;

          v77 = v75;
          v78 = v76;
        }

        else
        {
          v77 = 0;
          v78 = 0xF000000000000000;
        }

        v116 = v77;
        v117 = v78;
        v11 = v80;
        if (v117 >> 60 == 15)
        {
          v73 = [v80 fetchDataSynchronously:0 stripPrivateMetadata:0];
          if (v73)
          {
            v72 = v73;
            v67 = v73;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v12;

            v70 = v68;
            v71 = v69;
          }

          else
          {
            v70 = 0;
            v71 = 0xF000000000000000;
          }

          v65 = v71;
          v66 = v70;
          if (v71 >> 60 == 15)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v63 = v66;
            v64 = v65;
            v118 = v66;
            v119 = v65;
            if (v117 >> 60 != 15)
            {
              sub_10028E498(&v116);
            }
          }
        }

        else
        {
          v118 = v116;
          v119 = v117;
        }

        v60 = v118;
        v61 = v119;
        v114 = v118;
        v115 = v119;
        v62 = [v80 url];
        if (v62)
        {
          v59 = v62;
          v58 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v97 + 32))(v103, v98, v95);
          (*(v97 + 56))(v103, 0, 1, v95);
        }

        else
        {
          (*(v97 + 56))(v103, 1, 1, v95);
        }

        if ((*(v97 + 48))(v103, 1, v95) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v55 = URL.absoluteString.getter();
        v56 = v13;
        v112 = v55;
        v113 = v13;
        (*(v97 + 8))(v103, v95);
        v57 = [v80 mimeType];
        if (v57)
        {
          v54 = v57;
          v49 = v57;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v14;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = v52;
        if (v53)
        {
          v45 = v48;
          v46 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v42 = v46;
        v43 = v45;
        v110 = v45;
        v111 = v46;
        v44 = [v80 contentID];
        if (v44)
        {
          v41 = v44;
          v36 = v44;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v15;

          v39 = v37;
          v40 = v38;
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v34 = v40;
        v35 = v39;
        if (v40)
        {
          v32 = v35;
          v33 = v34;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = v33;
        v26 = v32;
        v108 = v32;
        v109 = v33;
        sub_10028E4E8(v60, v61);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v60, v61);

        v29 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v27 = String._bridgeToObjectiveC()();

        [v86 replaceFilenamePlaceholderWithAttachment:isa fileName:v29 mimeType:v28 contentID:v27];

        sub_100288010(v60, v61);
      }
    }

    sub_100264880(v129);
    v85 = &v125;
    swift_beginAccess();
    sub_100015DA0(v104, v124);
    swift_endAccess();
    if (v124[3])
    {
      v25 = v126;
      sub_100014898(v124, v126);
      v24 = [objc_opt_self() defaultCenter];
      v22 = v122;
      sub_10026F5D4(v25, v122);
      v19 = v123;
      sub_10027EC3C(v22, v123);
      v17 = *(v19 - 8);
      v18 = v17;
      v21 = &v17;
      __chkstk_darwin(&v17);
      v20 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v19);
      sub_1000160F4(v22);
      [v24 removeObserver:{v23, v17}];
      swift_unknownObjectRelease();

      sub_1000160F4(v25);
    }

    else
    {
      sub_10000B0D8(v124);
    }
  }
}

uint64_t sub_1003FEA40(uint64_t a1)
{
  *(v2 + 96) = v2;
  memcpy((v2 + 16), v1, 0x50uLL);
  v3 = swift_task_alloc();
  *(v5 + 104) = v3;
  *v3 = *(v5 + 96);
  v3[1] = sub_1003FEB08;

  return sub_1003FBC14(a1);
}

uint64_t sub_1003FEB08()
{
  v2 = *v1;
  *(v2 + 96) = *v1;
  v5 = v2 + 96;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1003FEED0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0208;
  sub_10002094C(v7, qword_1006F0208);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1003FF010();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1003FF010()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReplyMailIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1003FF0E8()
{
  if (qword_1006D60A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0208);
}

uint64_t sub_1003FF154@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003FF0E8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_1003FF1B8(void *a1, void *a2)
{
  v6 = [v2 initReplyAllToMessage:? legacyMessage:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

id sub_1003FF220(void *a1, void *a2)
{
  v6 = [v2 initReplyToMessage:? legacyMessage:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

uint64_t sub_1003FF298(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1003FF2FC()
{
  v2 = qword_1006DBA98;
  if (!qword_1006DBA98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF390()
{
  v2 = qword_1006DBAA0;
  if (!qword_1006DBAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF424()
{
  v2 = qword_1006DBAA8;
  if (!qword_1006DBAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF50C(uint64_t a1)
{
  result = sub_1003FF538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003FF538()
{
  v2 = qword_1006DBAB0;
  if (!qword_1006DBAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003FF5B4(uint64_t a1)
{
  result = sub_100324770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003FF5F8()
{
  v2 = qword_1006DBAB8;
  if (!qword_1006DBAB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003FF68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003FF7A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1003FF9A0()
{
  v2 = qword_1006DBAC0;
  if (!qword_1006DBAC0)
  {
    sub_10025CAA4(&unk_1006DBAC8, qword_10050A5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBAC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003FFA28()
{
  v25 = &v30;
  v30 = 0;
  v31 = 0;
  v13 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v23 = &v7 - v8;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v22 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v21 = &v7 - v10;
  v3 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v19 = &v7 - v11;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v12 = v29;
  memset(v29, 0, sizeof(v29));
  sub_10000B074();
  sub_1003DC7F0();
  v27 = AppDependency.__allocating_init(key:manager:)();

  v30 = v27;
  sub_10025C9B0(&unk_1006DCC10, &unk_1005098B0);
  v4 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 56);
  v14 = 1;
  v4(v19, 1);
  memset(__src, 0, sizeof(__src));
  v20 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v15 = type metadata accessor for IntentDialog();
  v5 = *(v15 - 8);
  v17 = *(v5 + 56);
  v16 = v5 + 56;
  v17(v21, v14);
  (v17)(v22, v14, v14, v15);
  v18 = sub_10028D658();
  v24 = sub_1002B9D60();
  sub_1003BD8F8(v23);
  v26 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v31 = v26;
  sub_10027EB24(v25);
  return v27;
}

void *sub_1003FFE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1;
  v7 = a2;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v5, sizeof(__dst));

  return memcpy(a3, __dst, 0x48uLL);
}

void *sub_1003FFE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6[11] = a1;
  v6[9] = a2;
  v6[10] = a3;

  sub_1002CD078(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0(a1);
  return result;
}

uint64_t sub_1003FFF1C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Save an email draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 19;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100400100@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DBAF0, &qword_10050A700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006DBAF8, &qword_10050A708);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_10032A2AC();
  v12 = 5;
  v24 = &unk_10065EEC8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Save ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DBB00, &qword_10050A738);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100400430()
{
  v1 = sub_100400424();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_100400488(char a1)
{
  v2 = sub_100400424();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1004004DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a3;
  v3[33] = a2;
  v3[32] = a1;
  v3[22] = v3;
  v3[20] = 0;
  v3[21] = 0;
  v3[27] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[35] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[36] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[37] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v3[38] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[20] = a2;
  v3[21] = a3;
  type metadata accessor for MainActor();
  v3[46] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040077C, v6);
}

uint64_t sub_10040077C()
{
  v1 = v0[34];
  v2 = v0[33];
  v0[22] = v0;
  v48 = sub_10027A534(v2, v1);
  sub_10035277C();
  v44 = *(v47 + 272);
  v43 = *(v47 + 264);
  _objc_release(v48);
  v45 = sub_10027A534(v43, v44);
  v46 = sub_10035333C();
  if (v46)
  {
    v3 = *(v47 + 360);
    v39 = *(v47 + 336);
    v38 = *(v47 + 344);
    *(v47 + 216) = v46;
    _objc_release(v45);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v38 + 16))(v3, v4, v39);
    v41 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v42 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v35 = sub_1002641E8(0, v33, v33);
      v36 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v47 + 224) = v34;
      *(v47 + 232) = v35;
      *(v47 + 240) = v36;
      sub_10026423C(0, (v47 + 224));
      sub_10026423C(0, (v47 + 224));
      *(v47 + 248) = v42;
      v37 = swift_task_alloc();
      v37[2] = v47 + 224;
      v37[3] = v47 + 232;
      v37[4] = v47 + 240;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v41, v40, "#SiriMail saving draft of active email composition.", v34, 2u);
      sub_10026429C(v35, 0);
      sub_10026429C(v36, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v30 = *(v47 + 360);
    v25 = *(v47 + 336);
    v31 = *(v47 + 328);
    v29 = *(v47 + 312);
    v32 = *(v47 + 280);
    v27 = *(v47 + 272);
    v26 = *(v47 + 264);
    v24 = *(v47 + 344);
    v28 = *(v47 + 320);
    _objc_release(v41);
    (*(v24 + 8))(v30, v25);
    [v46 setResolution:2];
    [v46 setUpForSaveAsDraft];
    [v46 finishPopoverAlertClosingComposition:1];
    sub_1003FFE00(v26, v27, (v47 + 16));
    memcpy((v47 + 88), (v47 + 16), 0x48uLL);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("It’s saved.", 0xDuLL, 0);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v32);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    sub_10028D658();
    static IntentResult.result<A>(value:dialog:)();
    (*(v28 + 8))(v31, v29);
    sub_10028D6D0((v47 + 88));
    _objc_release(v46);

    v5 = *(*(v47 + 176) + 8);
  }

  else
  {
    v6 = *(v47 + 352);
    v20 = *(v47 + 336);
    v19 = *(v47 + 344);
    _objc_release(v45);
    v7 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v19 + 16))(v6, v7, v20);
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v23 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v21))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v16 = sub_1002641E8(0, v14, v14);
      v17 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v47 + 184) = buf;
      *(v47 + 192) = v16;
      *(v47 + 200) = v17;
      sub_10026423C(0, (v47 + 184));
      sub_10026423C(0, (v47 + 184));
      *(v47 + 208) = v23;
      v18 = swift_task_alloc();
      v18[2] = v47 + 184;
      v18[3] = v47 + 192;
      v18[4] = v47 + 200;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v21, "#SiriMail SaveDraftIntent - Failed to find an active email composition, throwing activeDraftNotFound", buf, 2u);
      sub_10026429C(v16, 0);
      sub_10026429C(v17, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v11 = *(v47 + 352);
    v12 = *(v47 + 336);
    v10 = *(v47 + 344);
    _objc_release(oslog);
    (*(v10 + 8))(v11, v12);
    v13 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v8, enum case for ToolboxErrors.activeDraftNotFound(_:));
    swift_willThrow();

    v5 = *(*(v47 + 176) + 8);
  }

  return v5();
}

uint64_t sub_100401288()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0220;
  sub_10002094C(v7, qword_1006F0220);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1004013C8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1004013C8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SaveDraftIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1004014A0()
{
  if (qword_1006D60A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0220);
}

uint64_t sub_10040150C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004014A0();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004015BC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1004004DC(a1, v6, v7);
}

uint64_t sub_100401688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003FFA28();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1004016FC()
{
  v2 = qword_1006DBB08;
  if (!qword_1006DBB08)
  {
    sub_10025CAA4(&qword_1006DBB10, qword_10050A7D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401784()
{
  v2 = qword_1006DBB18;
  if (!qword_1006DBB18)
  {
    sub_10025CAA4(&qword_1006DBB20, &qword_10050A810);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10040180C()
{
  v2 = qword_1006DBB28;
  if (!qword_1006DBB28)
  {
    sub_10025CAA4(&qword_1006DBB20, &qword_10050A810);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004018C4()
{
  v2 = qword_1006DBB30;
  if (!qword_1006DBB30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401940(uint64_t a1)
{
  result = sub_10032A2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10040196C(uint64_t a1)
{
  result = sub_100401998();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100401998()
{
  v2 = qword_1006DBB38;
  if (!qword_1006DBB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401A2C()
{
  v2 = qword_1006DBB40;
  if (!qword_1006DBB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100401AC0()
{
  v2 = qword_1006DBB48;
  if (!qword_1006DBB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBB48);
    return WitnessTable;
  }

  return v2;
}

void *sub_100401BBC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v2);
  return v2;
}

void sub_100401C04()
{
  sub_10025C9B0(&qword_1006DBBB8, &unk_10050AA90);
  _allocateUninitializedArray<A>(_:)();
  *v0 = [objc_opt_self() descriptorForRequiredKeys];
  sub_1002612B0();
}

uint64_t sub_100401C88()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  return v2;
}

uint64_t sub_100401CC8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  return v2;
}

void *sub_100401D08()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor);
  _objc_retain(v2);
  return v2;
}

void *sub_100401D50()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100401D98()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_richLinkMetadataGenerator);

  return v2;
}

char *sub_100401E1C(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v18 = a1;
  v17 = a2;
  v19 = v2;
  v5 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys;
  sub_100401C04();
  *&v2[v5] = v3;
  v9 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler;
  v6 = objc_opt_self();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail.fetch-contact", 0x22uLL, 1);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 serialDispatchQueueSchedulerWithName:v7 qualityOfService:25];
  _objc_release(v7);
  *&v19[v9] = v8;
  v10 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor;
  *&v19[v10] = [objc_opt_self() labelColor];
  v11 = OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor;
  *&v19[v11] = [objc_opt_self() secondaryLabelColor];
  _objc_retain(a1);
  *&v19[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore] = a1;
  type metadata accessor for RichLinkMetadataGenerator();
  _objc_retain(a2);
  *&v19[OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_richLinkMetadataGenerator] = RichLinkMetadataGenerator.__allocating_init(messageRepository:)();
  v16.receiver = v19;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, "init");
  _objc_retain(v15);
  v19 = v15;
  _objc_release(a2);
  _objc_release(a1);
  _objc_release(v19);
  return v15;
}

void sub_10040209C(uint64_t a1, id a2)
{
  v13[2] = 0;
  v13[4] = a1;
  v13[3] = a2;
  _objc_retain(a2);
  v13[0] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v13[1] = v2;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  v8 = MSAccessibilityIdentifierMailSearchSuggestionsCell;
  _objc_retain(MSAccessibilityIdentifierMailSearchSuggestionsCell);
  v12[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12[1] = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v12);
  _objc_release(v8);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v5);

  v11[0] = SearchItem.accessibilityDescription.getter();
  v11[1] = v6;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744(v11);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v7);

  sub_100268744(v13);
  String.init(stringInterpolation:)();
  v9 = String._bridgeToObjectiveC()();

  [a2 setAccessibilityIdentifier:v9];
  _objc_release(v9);
  _objc_release(a2);
}

uint64_t sub_1004022D4()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for ContactConfigurationCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100402380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a1;
  v104 = a2;
  v95 = a3;
  v94 = a4;
  v73 = sub_1004033E4;
  v74 = sub_100408C38;
  v75 = sub_10026EE84;
  v76 = sub_10026434C;
  v77 = sub_10026434C;
  v78 = sub_10026EF2C;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v79 = 0;
  v117 = 0;
  v110 = 0;
  v4 = sub_10025C9B0(&qword_1006DBCA0, &unk_10050AAD0);
  v80 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v81 = v29 - v80;
  v92 = 0;
  v82 = type metadata accessor for UIBackgroundConfiguration();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v86 = v29 - v85;
  v125 = v29 - v85;
  v87 = type metadata accessor for Logger();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v91 = v29 - v90;
  v108 = type metadata accessor for SearchItem();
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v93 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v109 = v29 - v93;
  v96 = type metadata accessor for SearchItem.Contact();
  v98 = *(v96 - 8);
  v97 = v96 - 8;
  v99 = v98;
  v101 = *(v98 + 64);
  v100 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v109);
  v102 = v29 - v100;
  v6 = __chkstk_darwin(v5);
  v105 = v29 - v7;
  v124 = v29 - v7;
  v123 = v103;
  v122 = v104;
  v121 = v8;
  v120 = v9;
  (*(v106 + 16))(v6);
  if ((*(v106 + 88))(v109, v108) != enum case for SearchItem.contact(_:))
  {
    return (*(v106 + 8))(v109, v108);
  }

  v11 = v79;
  v12 = v105;
  (*(v106 + 96))(v109, v108);
  v64 = *(v98 + 32);
  v65 = v98 + 32;
  v64(v12, v109, v96);
  v67 = SearchItem.Contact.emailAddresses.getter();
  v118[4] = v67;
  v66 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  sub_1002B76F0();
  Collection.first.getter();
  v68 = v118[2];
  v69 = v118[3];

  v118[0] = v68;
  v118[1] = v69;
  v70 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  v13 = sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
  result = sub_10026A250(v73, 0, v70, &type metadata for Never, v13, v71, &v119);
  v72 = v11;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_100268744(v118);
    v63 = v119;
    v117 = v119;
    v14 = SearchItem.Contact.name.getter();
    sub_1002910B8(v14, v15);
    swift_unknownObjectRetain();
    if (v63)
    {
      v62 = v63;
      v44 = v63;
      v110 = v63;
      v38 = *(v94 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
      _objc_retain(v38);
      v42 = [v38 cnStore];
      _objc_release(v38);
      v41 = *(v94 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
      swift_unknownObjectRetain();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v39 = *(v94 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

      sub_10025C9B0(&qword_1006DBBB8, &unk_10050AA90);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v43 = [v42 em_onScheduler:v41 contactFutureForEmailAddress:v44 keysToFetch:isa];
      _objc_release(isa);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _objc_release(v42);
      sub_100291CDC(v43);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = v91;
      v45 = sub_1004139EC();
      v46 = &v116;
      v50 = 32;
      swift_beginAccess();
      (*(v88 + 16))(v16, v45, v87);
      swift_endAccess();
      v47 = v99;
      (*(v98 + 16))(v102, v105, v96);
      v48 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v51 = 7;
      v52 = swift_allocObject();
      v64((v52 + v48), v102, v96);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v49 = 17;
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v17 = swift_allocObject();
      v18 = v52;
      v53 = v17;
      *(v17 + 16) = v74;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v53;
      v57 = v19;
      *(v19 + 16) = v75;
      *(v19 + 24) = v20;
      v59 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v56 = _allocateUninitializedArray<A>(_:)();
      v58 = v21;

      v22 = v54;
      v23 = v58;
      *v58 = v76;
      v23[1] = v22;

      v24 = v55;
      v25 = v58;
      v58[2] = v77;
      v25[3] = v24;

      v26 = v57;
      v27 = v58;
      v58[4] = v78;
      v27[5] = v26;
      sub_1002612B0();

      if (os_log_type_enabled(v60, v61))
      {
        v28 = v72;
        v31 = static UnsafeMutablePointer.allocate(capacity:)();
        v30 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v32 = sub_1002641E8(0, v30, v30);
        v33 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v34 = &v115;
        v115 = v31;
        v35 = &v114;
        v114 = v32;
        v36 = &v113;
        v113 = v33;
        sub_10026423C(2, &v115);
        sub_10026423C(1, v34);
        v111 = v76;
        v112 = v54;
        sub_100264250(&v111, v34, v35, v36);
        v37 = v28;
        if (v28)
        {

          __break(1u);
        }

        else
        {
          v111 = v77;
          v112 = v55;
          sub_100264250(&v111, &v115, &v114, &v113);
          v29[1] = 0;
          v111 = v78;
          v112 = v57;
          sub_100264250(&v111, &v115, &v114, &v113);
          _os_log_impl(&_mh_execute_header, v60, v61, "No email address for contact %s", v31, 0xCu);
          sub_10026429C(v32, 0);
          sub_10026429C(v33, 1);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v60);
      (*(v88 + 8))(v91, v87);
    }

    static UIBackgroundConfiguration.listPlainCell()();
    UIBackgroundConfiguration.cornerRadius.setter();
    _objc_retain(v103);
    (*(v83 + 16))(v81, v86, v82);
    (*(v83 + 56))(v81, 0, 1, v82);
    UICollectionViewCell.backgroundConfiguration.setter();
    _objc_release(v103);
    sub_10040209C(v95, v103);
    (*(v83 + 8))(v86, v82);
    swift_unknownObjectRelease();
    return (*(v98 + 8))(v105, v96);
  }

  return result;
}

id sub_1004033E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1003F7C3C();

  result = sub_10040345C(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1004034C8()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for DocumentConfigurationCell(0);
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100403574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a2;
  v36 = a3;
  v35 = a4;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v4 = sub_10025C9B0(&qword_1006D7ED0, &qword_100500700);
  v31 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v32 = &v11 - v31;
  v33 = 0;
  v48 = type metadata accessor for SearchItem();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v34 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v49 = &v11 - v34;
  v37 = type metadata accessor for SearchItem.Document();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v41 = *(v38 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v49);
  v42 = &v11 - v40;
  v6 = __chkstk_darwin(v5);
  v45 = &v11 - v7;
  v54 = &v11 - v7;
  v53 = v43;
  v52 = v44;
  v51 = v8;
  v50 = v9;
  (*(v46 + 16))(v6);
  if ((*(v46 + 88))(v49, v48) != enum case for SearchItem.document(_:))
  {
    return (*(v46 + 8))(v49, v48);
  }

  (*(v46 + 96))(v49, v48);
  v26 = *(v38 + 32);
  v25 = v38 + 32;
  v26(v45, v49, v37);
  (*(v38 + 16))(v42, v45, v37);
  v26(v32, v42, v37);
  (*(v38 + 56))(v32, 0, 1, v37);
  sub_1002C5234(v32);
  _objc_retain(v43);
  v27 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v27);
  v28 = [v27 cnStore];
  _objc_release(v27);
  v29 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v30 = SearchItem.Document.senders.getter();
  if (v30)
  {
    v24 = v30;
    v21 = v30;
    v20 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    v22 = _arrayForceCast<A, B>(_:)();

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v19 = v23;
  if (v23)
  {
    v18 = v19;
    v15 = v19;
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = isa;
  }

  else
  {
    v17 = 0;
  }

  v13 = v17;
  v11 = *(v35 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8, &unk_10050AA90);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v28 em_contactsFutureOnScheduler:v29 forEmailAddresses:v13 keysToFetch:v12];
  _objc_release(v12);
  _objc_release(v13);
  swift_unknownObjectRelease();
  _objc_release(v28);
  sub_100412A80(v14);
  _objc_release(v43);
  sub_10040209C(v36, v43);
  return (*(v38 + 8))(v45, v37);
}

uint64_t sub_100403C0C()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AdjustableSeparatorInsetListCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100403CB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v135 = a1;
  v136 = a2;
  v129 = a3;
  v128 = a4;
  v101 = sub_100408B34;
  v102 = sub_100408B40;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v178 = 0;
  v172 = 0;
  v173 = 0;
  v171 = 0;
  v162 = 0;
  v151 = 0;
  v186 = 0;
  v118 = 0;
  v103 = type metadata accessor for UICellAccessory.LabelOptions();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v107 = &v26 - v106;
  v108 = type metadata accessor for UICellAccessory.DisplayedState();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v112 = &v26 - v111;
  v113 = type metadata accessor for UIListContentConfiguration();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v117 = &v26 - v116;
  v189 = &v26 - v116;
  v119 = type metadata accessor for SearchItem.Generic();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v118);
  v123 = &v26 - v122;
  v188 = &v26 - v122;
  v124 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v125 = &v26 - v124;
  v187 = &v26 - v124;
  v126 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v127 = &v26 - v126;
  v186 = &v26 - v126;
  v141 = type metadata accessor for SearchItem();
  v139 = *(v141 - 8);
  v140 = v141 - 8;
  v133 = *(v139 + 64);
  v130 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v141);
  v131 = &v26 - v130;
  v132 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v26 - v130);
  v134 = &v26 - v132;
  __chkstk_darwin(&v26 - v132);
  v142 = &v26 - v8;
  v185 = v135;
  v184 = v136;
  v183 = v9;
  v182 = v10;
  v179 = 0;
  v137 = *(v139 + 16);
  v138 = v139 + 16;
  v137();
  v143 = *(v139 + 88);
  v144 = v139 + 88;
  v145 = v143(v142, v141);
  if (v145 == enum case for SearchItem.suggestion(_:))
  {
    v11 = v127;
    (*(v139 + 96))(v142, v141);
    (*(v120 + 32))(v11, v142, v119);
    v186 = v11;
    v93 = v149;
    v149[3] = v119;
    v149[4] = &protocol witness table for SearchItem.Generic;
    v12 = sub_10026AC9C(v149);
    (*(v120 + 16))(v12, v11, v119);
    v94 = __dst;
    sub_10035805C(v93, __dst);
    v13 = SearchItem.Generic.imageTintColor.getter();
    v14 = v179;
    v179 = v13;
    _objc_release(v14);
    v98 = v146;
    sub_1002F171C(v94, v146);
    v96 = v147;
    v95 = v148;
    sub_10027EC3C(v98, v147);
    v97 = dispatch thunk of ListSearchItem.count.getter();
    v99 = v97 != NSNotFound.getter();
    sub_1000160F4(v98);
    v181 = v99;
    (*(v120 + 8))(v127, v119);
    v100 = v99;
  }

  else
  {
    if (v145 != enum case for SearchItem.recent(_:))
    {
      (*(v139 + 8))(v142, v141);
      sub_10026A58C(&v179);
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
LABEL_26:
      v28 = v91;
      v27 = v90;
      sub_1003009E8(v88, v89);
      return sub_1003009E8(v27, v28);
    }

    (*(v139 + 96))(v142, v141);
    v178 = v127;
    (*(v120 + 32))(v127, v142, v119);
    v178 = v127;
    v181 = 0;
    v92 = v177;
    v177[3] = v119;
    v177[4] = &protocol witness table for SearchItem.Generic;
    v15 = sub_10026AC9C(v177);
    (*(v120 + 16))(v15, v127, v119);
    sub_10035805C(v92, __dst);
    (*(v120 + 8))(v127, v119);
    v100 = 0;
  }

  v71 = v100;
  v74 = objc_opt_self();
  v80 = __dst;
  v75 = v174;
  sub_1002F171C(__dst, v174);
  v73 = v175;
  v72 = v176;
  sub_10027EC3C(v75, v175);
  v76 = [v74 ef_formatInteger:dispatch thunk of ListSearchItem.count.getter() withGrouping:1];
  sub_1000160F4(v75);
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v16;
  v172 = v77;
  v173 = v16;
  _objc_release(v76);
  sub_1002AED18();
  v79 = UIFontTextStyleHeadline;
  _objc_retain(UIFontTextStyleHeadline);
  v83 = sub_10042A20C(v79, 2);
  v171 = v83;
  static UIListContentConfiguration.subtitleCell()();
  v85 = v168;
  sub_1002F171C(v80, v168);
  v82 = v169;
  v81 = v170;
  sub_10027EC3C(v85, v169);
  v84 = dispatch thunk of ListSearchItem.image.getter();
  v86 = [v84 imageByApplyingSymbolConfiguration:v83];
  _objc_release(v84);
  sub_1000160F4(v85);
  UIListContentConfiguration.image.setter();
  v87 = v179;
  _objc_retain(v179);
  if (v87)
  {
    v70 = v87;
    v69 = v87;
    v151 = v87;
    _objc_retain(v87);
    v67 = &v150;
    v68 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v68();
    _objc_release(v69);
  }

  (v137)(v134, v129, v141);
  if (v143(v134, v141) != enum case for SearchItem.suggestion(_:))
  {
    (*(v139 + 8))(v134, v141);
LABEL_18:
    (v137)(v131, v129, v141);
    if (v143(v131, v141) == enum case for SearchItem.recent(_:))
    {
      (*(v139 + 96))(v131, v141);
      (*(v120 + 32))(v123, v131, v119);
      UIListContentConfiguration.imageToTextPadding.setter();
      SearchItem.Generic.attributedTitle.getter();
      UIListContentConfiguration.attributedText.setter();
      (*(v120 + 8))(v123, v119);
    }

    else
    {
      (*(v139 + 8))(v131, v141);
      v43 = v165;
      sub_1002F171C(__dst, v165);
      v42 = v166;
      v41 = v167;
      sub_10027EC3C(v43, v166);
      dispatch thunk of ListSearchItem.title.getter();
      UIListContentConfiguration.text.setter();
      sub_1000160F4(v43);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_22;
  }

  v17 = v125;
  (*(v139 + 96))(v134, v141);
  (*(v120 + 32))(v17, v134, v119);
  v65 = SearchItem.Generic.attributedTitle.getter();
  v66 = [v65 mutableCopy];
  _objc_release(v65);
  if (v66)
  {
    v64 = v66;
    v63 = v66;
  }

  else
  {
    v63 = 0;
  }

  v62 = v63;
  if (!v63)
  {
    (*(v120 + 8))(v125, v119);
    goto LABEL_18;
  }

  v61 = v62;
  v56 = v62;
  v162 = v62;
  _objc_retain(v62);
  v55 = [v56 length];
  _objc_release(v56);
  v48 = 0;
  type metadata accessor for EnumerationOptions(0);
  v49 = _allocateUninitializedArray<A>(_:)();
  sub_1002691BC();
  SetAlgebra<>.init(arrayLiteral:)();
  v57 = v161;
  _objc_retain(v128);
  _objc_retain(v56);
  v50 = 32;
  v51 = 7;
  v18 = swift_allocObject();
  v19 = v56;
  v54 = v18;
  *(v18 + 16) = v128;
  *(v18 + 24) = v19;

  v52 = v54;
  v20 = swift_allocObject();
  v21 = v54;
  v53 = v20;
  *(v20 + 16) = v101;
  *(v20 + 24) = v21;

  v159 = v102;
  v160 = v53;
  v154 = _NSConcreteStackBlock;
  v155 = 1107296256;
  v156 = 0;
  v157 = sub_100405220;
  v158 = &unk_10065F2E8;
  v59 = v53;
  v58 = _Block_copy(&v154);

  v152 = 0;
  v153 = v55;
  [v56 enumerateAttributesInRange:0 options:v55 usingBlock:{v57, v58}];
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    _objc_retain(v56);
    UIListContentConfiguration.attributedText.setter();
    _objc_release(v56);
    (*(v120 + 8))(v125, v119);
    v44 = v101;
    v45 = v52;
    v46 = 0;
    v47 = 0;
LABEL_22:
    v34 = v47;
    v35 = v46;
    v36 = v45;
    v37 = v44;
    v38 = sub_100269AA8();
    v39 = &v164;
    v40 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v40();
    if (v71)
    {
      _objc_retain(v135);
      v33 = type metadata accessor for UICellAccessory();
      v32 = _allocateUninitializedArray<A>(_:)();
      v31 = v23;
      sub_1004052E4(v112);
      sub_100405350(v107);
      static UICellAccessory.label(text:displayed:options:)();
      (*(v104 + 8))(v107, v103);
      (*(v109 + 8))(v112, v108);
      sub_1002612B0();
    }

    else
    {
      _objc_retain(v135);
      v30 = 0;
      type metadata accessor for UICellAccessory();
      _allocateUninitializedArray<A>(_:)();
    }

    UICollectionViewListCell.accessories.setter();
    _objc_release(v135);
    _objc_retain(v135);
    v29 = v163;
    v163[3] = v113;
    v163[4] = &protocol witness table for UIListContentConfiguration;
    v24 = sub_10026AC9C(v163);
    (*(v114 + 16))(v24, v117, v113);
    UICollectionViewCell.contentConfiguration.setter();
    _objc_release(v135);
    static SearchCollectionViewLayoutFactory_iOS.horizontalPadding.getter();
    sub_100269900(v25, 0);
    sub_10040209C(v129, v135);
    (*(v114 + 8))(v117, v113);
    _objc_release(v83);

    sub_10026A58C(&v179);
    sub_1000160F4(__dst);
    v88 = v37;
    v89 = v36;
    v90 = v35;
    v91 = v34;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_100404EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10025C9B0(&qword_1006DBC68, &qword_10050AAB0);
  sub_100408BB0();
  if (Sequence.contains(where:)())
  {
    v10 = *(a5 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionHighlightedTextColor);
    _objc_retain(v10);
    v11 = v10;
  }

  else
  {
    v9 = *(a5 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_suggestionTextColor);
    _objc_retain(v9);
    v11 = v9;
  }

  sub_10025C9B0(&qword_1006DBC78, &qword_10050AAB8);
  _allocateUninitializedArray<A>(_:)();
  v7 = v6;
  sub_1002935A0(&NSForegroundColorAttributeName, v6);
  _objc_retain(v11);
  v7[4] = sub_1002A9C44();
  v7[1] = v11;
  sub_1002612B0();
  type metadata accessor for Key(0);
  sub_10026974C();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a6 addAttributes:isa range:{a2, a3}];
  _objc_release(isa);
  _objc_release(v11);
}

uint64_t sub_100405148(id *a1)
{
  v3[2] = a1;
  v3[1] = *a1;
  _objc_retain(CSSuggestionHighlightAttributeName);
  v3[0] = CSSuggestionHighlightAttributeName;
  type metadata accessor for Key(0);
  sub_100269254();
  v2 = == infix<A>(_:_:)();
  sub_10026A58C(v3);
  return v2 & 1;
}

void sub_100405220(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  _objc_retain(a2);
  type metadata accessor for Key(0);
  sub_10026974C();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);

  _objc_release(a2);
}

uint64_t sub_1004052E4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for UICellAccessory.DisplayedState.always(_:);
  v1 = type metadata accessor for UICellAccessory.DisplayedState();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_100405350@<X0>(uint64_t a1@<X8>)
{
  v4[1] = a1;
  v1 = sub_10025C9B0(&unk_1006DBC90, &unk_10050AAC0);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = v4 - v4[0];
  v6 = 0;
  v2 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v2 - 8) + 56))(v5, 1);
  return UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
}

uint64_t sub_100405430()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for LocationConfigurationCell(0);
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004054DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v33 = a3;
  v32 = a4;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v4 = sub_10025C9B0(&qword_1006D9878, &unk_1005039D0);
  v28 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = v10 - v28;
  v30 = 0;
  v42 = type metadata accessor for SearchItem();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v31 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v43 = v10 - v31;
  v34 = type metadata accessor for SearchItem.Location();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v5 = __chkstk_darwin(v43);
  v39 = v10 - v6;
  v48 = v10 - v6;
  v47 = v37;
  v46 = v38;
  v45 = v7;
  v44 = v8;
  (*(v40 + 16))(v5);
  if ((*(v40 + 88))(v43, v42) != enum case for SearchItem.location(_:))
  {
    return (*(v40 + 8))(v43, v42);
  }

  (*(v40 + 96))(v43, v42);
  (*(v35 + 32))(v39, v43, v34);
  (*(v35 + 16))(v29, v39, v34);
  (*(v35 + 56))(v29, 0, 1, v34);
  sub_100347BAC(v29);
  _objc_retain(v37);
  v24 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v24);
  v25 = [v24 cnStore];
  _objc_release(v24);
  v26 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v27 = SearchItem.Location.senders.getter();
  if (v27)
  {
    v23 = v27;
    v20 = v27;
    v19 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    v21 = _arrayForceCast<A, B>(_:)();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v17 = v18;
    v14 = v18;
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = isa;
  }

  else
  {
    v16 = 0;
  }

  v12 = v16;
  v10[1] = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8, &unk_10050AA90);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v25 em_contactsFutureOnScheduler:v26 forEmailAddresses:v12 keysToFetch:v11];
  _objc_release(v11);
  _objc_release(v12);
  swift_unknownObjectRelease();
  _objc_release(v25);
  sub_100412A80(v13);
  _objc_release(v37);
  sub_10040209C(v33, v37);
  return (*(v35 + 8))(v39, v34);
}

uint64_t sub_100405AE0()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for PhotoConfigurationCell(0);
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100405B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v33 = a3;
  v32 = a4;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v4 = sub_10025C9B0(&unk_1006DBC50, &qword_100509DF0);
  v28 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = v10 - v28;
  v30 = 0;
  v42 = type metadata accessor for SearchItem();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v31 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v43 = v10 - v31;
  v34 = type metadata accessor for SearchItem.Photo();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v5 = __chkstk_darwin(v43);
  v39 = v10 - v6;
  v48 = v10 - v6;
  v47 = v37;
  v46 = v38;
  v45 = v7;
  v44 = v8;
  (*(v40 + 16))(v5);
  if ((*(v40 + 88))(v43, v42) != enum case for SearchItem.photo(_:))
  {
    return (*(v40 + 8))(v43, v42);
  }

  (*(v40 + 96))(v43, v42);
  (*(v35 + 32))(v39, v43, v34);
  (*(v35 + 16))(v29, v39, v34);
  (*(v35 + 56))(v29, 0, 1, v34);
  sub_1003E2748(v29);
  _objc_retain(v37);
  v24 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactStore);
  _objc_retain(v24);
  v25 = [v24 cnStore];
  _objc_release(v24);
  v26 = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_scheduler);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v27 = SearchItem.Photo.senders.getter();
  if (v27)
  {
    v23 = v27;
    v20 = v27;
    v19 = sub_1002644F0();
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    v21 = _arrayForceCast<A, B>(_:)();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v18 = v22;
  if (v22)
  {
    v17 = v18;
    v14 = v18;
    sub_10025C9B0(&unk_1006DBC20, &qword_10050AAA0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = isa;
  }

  else
  {
    v16 = 0;
  }

  v12 = v16;
  v10[1] = *(v32 + OBJC_IVAR____TtC10MobileMail43SearchCollectionViewCellRegistrationFactory_contactKeys);

  sub_10025C9B0(&qword_1006DBBB8, &unk_10050AA90);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v25 em_contactsFutureOnScheduler:v26 forEmailAddresses:v12 keysToFetch:v11];
  _objc_release(v11);
  _objc_release(v12);
  swift_unknownObjectRelease();
  _objc_release(v25);
  sub_100412A80(v13);
  _objc_release(v37);
  sub_10040209C(v33, v37);
  return (*(v35 + 8))(v39, v34);
}

uint64_t sub_100406190(uint64_t a1, uint64_t a2)
{

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1003C1558();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_10040625C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a1;
  v42 = a2;
  v37 = a3;
  v35 = a4;
  v36 = a5;
  v31 = sub_1004089D8;
  v32 = sub_100406C4C;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  v33 = 0;
  v46 = type metadata accessor for SearchItem();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v34 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = v17 - v34;
  v38 = type metadata accessor for SearchItem.TopHit();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v5 = __chkstk_darwin(v47);
  v43 = v17 - v6;
  v72 = v17 - v6;
  v71 = v41;
  v70 = v42;
  v69 = v7;
  v67 = v8;
  v68 = v9;
  (*(v44 + 16))(v5);
  if ((*(v44 + 88))(v47, v46) != enum case for SearchItem.topHit(_:))
  {
    return (*(v44 + 8))(v47, v46);
  }

  v11 = v43;
  (*(v44 + 96))(v47, v46);
  (*(v39 + 32))(v11, v47, v38);
  v30 = SearchItem.TopHit.matchingHintsByGlobalMessageID.getter();
  v66 = v30;

  v20 = v35(v12);
  v19 = 1;
  v65 = v20 & 1;

  v17[0] = sub_100413A58();
  v17[1] = &v64;
  v21 = 32;
  swift_beginAccess();
  v29 = *v17[0];
  _objc_retain(v29);
  swift_endAccess();
  v63 = v29;
  v28 = [v41 cellHelper];
  v62 = v28;
  v18 = [v28 cellView];
  swift_getObjectType();
  _objc_retain(v29);
  [v18 setLayoutValuesHelper:v29];
  _objc_release(v29);
  _objc_release(v18);
  [v28 setShowsAccessory:v19 & 1 showingDetail:v20 & 1];
  v24 = SearchItem.TopHit.message.getter();
  v23 = [objc_opt_self() mainThreadScheduler];

  _objc_retain(v28);
  v13 = swift_allocObject();
  v14 = v31;
  v15 = v13;
  v16 = v28;
  *(v15 + 16) = v30;
  *(v15 + 24) = v16;
  v60 = v14;
  v61 = v15;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v56 = 1107296256;
  v57 = 0;
  v58 = sub_1002919E0;
  v59 = &unk_10065F180;
  v22 = _Block_copy(&aBlock);

  [v24 onScheduler:v23 addSuccessBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
  _objc_release(v24);
  v27 = SearchItem.TopHit.message.getter();
  v53 = v32;
  v54 = 0;
  v48 = _NSConcreteStackBlock;
  v49 = v25;
  v50 = 0;
  v51 = sub_100291B2C;
  v52 = &unk_10065F1A8;
  v26 = _Block_copy(&v48);
  [v27 addFailureBlock:?];
  _Block_release(v26);
  _objc_release(v27);
  _objc_release(v28);
  _objc_release(v29);

  return (*(v39 + 8))(v43, v38);
}

uint64_t sub_100406974(void *a1, uint64_t a2, void *a3)
{

  if (a2)
  {
    sub_100278E2C();
    v7 = [a1 objectID];
    v8 = [v7 globalMessageID];
    _objc_release(v7);
    v13 = sub_100406C0C(v8);
    sub_10025C9B0(&qword_1006DBC40, &qword_10050AAA8);
    sub_100408AB4();
    Dictionary.subscript.getter();
    _objc_release(v13);

    v9 = v14;
  }

  else
  {
    v9 = 0;
  }

  _objc_retain(a1);
  v6 = [a1 category];
  [a3 setCategory:?];
  _objc_release(a1);
  _objc_release(v6);
  _objc_retain(a1);

  if (v9)
  {
    type metadata accessor for EMMessageSnippetHintZone(0);
    sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    sub_1002682D4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  [a3 setMessageListItem:a1 style:3 hintsBySnippetZone:?];
  _objc_release(v5);
  swift_unknownObjectRelease();
}

uint64_t sub_100406C4C(uint64_t a1)
{
  v33 = a1;
  v27 = 0;
  v35 = sub_100408AAC;
  v39 = sub_10026EE84;
  v41 = sub_10026434C;
  v43 = sub_10026434C;
  v46 = sub_10026EF2C;
  v58 = 0;
  v24 = 0;
  v31 = type metadata accessor for Logger();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v25 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v15 - v25;
  v26 = v15 - v25;
  v58 = __chkstk_darwin(v33);
  v30 = sub_1004139EC();
  v32 = &v57;
  v36 = 32;
  swift_beginAccess();
  (*(v28 + 16))(v1, v30, v31);
  swift_endAccess();
  swift_errorRetain();
  v37 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v34 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 34;
  v44 = swift_allocObject();
  *(v44 + 16) = 8;
  v2 = swift_allocObject();
  v3 = v38;
  v40 = v2;
  *(v2 + 16) = v35;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v40;
  v47 = v4;
  *(v4 + 16) = v39;
  *(v4 + 24) = v5;
  v49 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v45 = _allocateUninitializedArray<A>(_:)();
  v48 = v6;

  v7 = v42;
  v8 = v48;
  *v48 = v41;
  v8[1] = v7;

  v9 = v44;
  v10 = v48;
  v48[2] = v43;
  v10[3] = v9;

  v11 = v47;
  v12 = v48;
  v48[4] = v46;
  v12[5] = v11;
  sub_1002612B0();

  if (os_log_type_enabled(v50, v51))
  {
    v13 = v24;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v18 = sub_1002641E8(0, v16, v16);
    v19 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v20 = &v56;
    v56 = v17;
    v21 = &v55;
    v55 = v18;
    v22 = &v54;
    v54 = v19;
    sub_10026423C(2, &v56);
    sub_10026423C(1, v20);
    v52 = v41;
    v53 = v42;
    sub_100264250(&v52, v20, v21, v22);
    v23 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v52 = v43;
      v53 = v44;
      sub_100264250(&v52, &v56, &v55, &v54);
      v15[1] = 0;
      v52 = v46;
      v53 = v47;
      sub_100264250(&v52, &v56, &v55, &v54);
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to load message: %{public}s", v17, 0xCu);
      sub_10026429C(v18, 0);
      sub_10026429C(v19, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v50);
  return (*(v28 + 8))(v26, v31);
}

uint64_t sub_10040726C(uint64_t a1)
{
  swift_errorRetain();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 ef_publicDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  _objc_release(v3);

  return v4;
}

uint64_t sub_1004072F4()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for InstantAnswerFlightCell(0);
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004073A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v17 = a3;
  v16 = a4;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v4 = sub_10025C9B0(&unk_1006DBC30, &unk_100501C40);
  v12 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v11 - v12;
  v14 = 0;
  v26 = type metadata accessor for SearchItem();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v27 = &v11 - v15;
  v18 = type metadata accessor for SearchItem.InstantAnswer();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v5 = __chkstk_darwin(v27);
  v23 = &v11 - v6;
  v32 = &v11 - v6;
  v31 = v21;
  v30 = v22;
  v29 = v7;
  v28 = v8;
  (*(v24 + 16))(v5);
  if ((*(v24 + 88))(v27, v26) != enum case for SearchItem.instantAnswer(_:))
  {
    return (*(v24 + 8))(v27, v26);
  }

  v10 = v21;
  (*(v24 + 96))(v27, v26);
  (*(v19 + 32))(v23, v27, v18);
  _objc_retain(v10);
  (*(v19 + 16))(v13, v23, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  sub_1002F1A44(v13);
  _objc_release(v21);
  sub_10040209C(v17, v21);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_10040772C()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for InstantAnswerHotelCell(0);
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_1004077D8()
{
  _objc_retain(v0);
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for AdjustableSeparatorInsetListCell();
  type metadata accessor for SearchItem();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t sub_100407884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v25 = a3;
  v24 = a4;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v22 = 0;
  v17 = type metadata accessor for UIListContentConfiguration();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v21 = v13 - v20;
  v43 = v13 - v20;
  v34 = type metadata accessor for SearchItem();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v23 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v35 = v13 - v23;
  v26 = type metadata accessor for SearchItem.LegacySuggested();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v4 = __chkstk_darwin(v35);
  v31 = v13 - v5;
  v42 = v13 - v5;
  v41 = v29;
  v40 = v30;
  v39 = v6;
  v38 = v7;
  (*(v32 + 16))(v4);
  if ((*(v32 + 88))(v35, v34) != enum case for SearchItem.legacy(_:))
  {
    return (*(v32 + 8))(v35, v34);
  }

  v9 = v31;
  (*(v32 + 96))(v35, v34);
  (*(v27 + 32))(v9, v35, v26);
  static UIListContentConfiguration.subtitleCell()();
  SearchItem.LegacySuggested.image.getter();
  UIListContentConfiguration.image.setter();
  SearchItem.LegacySuggested.text.getter();
  UIListContentConfiguration.text.setter();
  SearchItem.LegacySuggested.secondaryText.getter();
  UIListContentConfiguration.secondaryText.setter();
  v13[1] = SearchItem.LegacySuggested.tintColor.getter();
  v13[2] = &v37;
  v14 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v10 = v29;
  v16 = 0;
  v14();
  _objc_retain(v10);
  v15 = v36;
  v36[3] = v17;
  v36[4] = &protocol witness table for UIListContentConfiguration;
  v11 = sub_10026AC9C(v36);
  (*(v18 + 16))(v11, v21, v17);
  UICollectionViewCell.contentConfiguration.setter();
  _objc_release(v29);
  static SearchCollectionViewLayoutFactory_iOS.horizontalPadding.getter();
  sub_100269900(v12, v16);
  sub_10040209C(v25, v29);
  (*(v18 + 8))(v21, v17);
  return (*(v27 + 8))(v31, v26);
}