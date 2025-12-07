uint64_t sub_10007BB5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Date.FormatStyle();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10007BC1C(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date.FormatStyle();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for SongMetadataRowViewModel(uint64_t a1)
{
  result = qword_100145628;
  if (!qword_100145628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007BD0C(uint64_t a1)
{
  sub_10007BDB8();
  if (v1 <= 0x3F)
  {
    sub_100008580();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date.FormatStyle();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10007BDB8()
{
  result = qword_100145638;
  if (!qword_100145638)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100145638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SongMetadataRowViewModel.SupportedMetadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SongMetadataRowViewModel.SupportedMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145678;
  if (!qword_100145678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145678);
  }

  return result;
}

unint64_t sub_10007BFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145680;
  if (!qword_100145680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145680);
  }

  return result;
}

uint64_t sub_10007C01C()
{
  v1 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2];
  v4 = *v0;
  v6 = v0[4];
  v5 = v0[5];
  sub_10000DC80(v0 + 1, v6);
  if (v4 <= 2)
  {
    if (!v4)
    {
      v8 = v5[1](v6, v5);
      v9 = __chkstk_darwin(v8);
      *&v13[-16] = v0;
      v10 = sub_10007C334;
LABEL_13:
      v12 = sub_10007AC4C(v10, v9);
      sub_10007C2CC(v3);
      return v12;
    }

    if (v4 == 1)
    {
      return v5[2](v6, v5);
    }

    else
    {
      return v5[5](v6, v5);
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        return v5[6](v6, v5);
      }

      v11 = v5[3](v6, v5);
      v9 = __chkstk_darwin(v11);
      *&v13[-16] = v0;
      v10 = sub_10007C278;
      goto LABEL_13;
    }

    if (v4 == 5)
    {
      return v5[8](v6, v5);
    }

    else
    {
      return v5[7](v6, v5);
    }
  }
}

uint64_t sub_10007C278@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SongMetadataRowViewModel(0);
  result = Date.FormatStyle.format(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10007C2CC(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007C334@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SongMetadataRowViewModel(0);
  result = Date.FormatStyle.format(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10007C388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10007C3F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007C40C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10007C454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007C58C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtistProfileView(uint64_t a1)
{
  result = qword_100145710;
  if (!qword_100145710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C688(uint64_t a1)
{
  sub_100008ADC(319);
  if (v1 <= 0x3F)
  {
    sub_10006F07C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10007C738(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 10.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_100145698 = *&v2;
  return result;
}

uint64_t sub_10007C768(uint64_t a1)
{
  result = static Font.subheadline.getter();
  qword_1001456A0 = result;
  return result;
}

uint64_t sub_10007C788(uint64_t a1, uint64_t a2)
{
  result = static HierarchicalShapeStyle.secondary.getter();
  dword_1001456A8 = result;
  return result;
}

uint64_t sub_10007C7A8()
{
  v0 = [objc_opt_self() secondarySystemFillColor];
  result = Color.init(uiColor:)();
  qword_1001456B0 = result;
  return result;
}

uint64_t sub_10007C7E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v44 = sub_100002D44(&qword_100145770, &qword_1000F9E98);
  __chkstk_darwin(v44);
  v4 = &v42 - v3;
  v46 = sub_100002D44(&qword_100145778, &qword_1000F9EA0);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v42 - v5;
  v6 = sub_100002D44(&qword_100145780, &qword_1000F9EA8);
  __chkstk_darwin(v6 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ArtistProfileView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002D44(&qword_100145788, &unk_1000F9EB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  sub_10007D558(a1, v49);
  sub_10007D5B4(a1, v14);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_10007D748(v14, v22 + v21);
  *(&v50 + 1) = sub_10007D7AC;
  v51 = v22;
  static Alignment.leading.getter();
  v23 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v52[0] = v49[0];
  v52[1] = v49[1];
  v52[2] = v50;
  v53 = v51;
  sub_100002D44(&qword_100145790, &qword_1000F9EC0);
  sub_10007D80C();
  View.accessibilityIdentifier(_:)();
  sub_100007E14(v52, &qword_100145790, &qword_1000F9EC0);
  v24 = a1[3];
  v25 = a1[4];
  sub_10000DC80(a1, v24);
  (*(v25 + 40))(v24, v25);
  if (v26)
  {
    if (qword_100141BB0 != -1)
    {
      swift_once();
    }

    v27 = objc_opt_self();

    v28 = [v27 mainBundle];
    v54._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0xD000000000000016;
    v29._object = 0x8000000100101630;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v54);

    String.lowercased()();

    ExpandableTextView.init(text:font:numberOfLines:expandTextToken:_:)();
    if (qword_100141BB8 != -1)
    {
      swift_once();
    }

    v31 = dword_1001456A8;
    *&v4[*(sub_100002D44(&qword_1001457B0, &qword_1000F9ED0) + 36)] = v31;
    LOBYTE(v31) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v32 = &v4[*(v44 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_10007D8EC();
    v37 = v43;
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v4, &qword_100145770, &qword_1000F9E98);
    sub_10007DA60(v37, v10);
    v23 = 0;
  }

  (*(v45 + 56))(v10, v23, 1, v46);
  sub_100007FDC(v20, v17, &qword_100145788, &unk_1000F9EB0);
  v38 = v47;
  sub_100007FDC(v10, v47, &qword_100145780, &qword_1000F9EA8);
  v39 = v48;
  sub_100007FDC(v17, v48, &qword_100145788, &unk_1000F9EB0);
  v40 = sub_100002D44(&qword_1001457A8, &qword_1000F9EC8);
  sub_100007FDC(v38, v39 + *(v40 + 48), &qword_100145780, &qword_1000F9EA8);
  sub_100007E14(v10, &qword_100145780, &qword_1000F9EA8);
  sub_100007E14(v20, &qword_100145788, &unk_1000F9EB0);
  sub_100007E14(v38, &qword_100145780, &qword_1000F9EA8);
  return sub_100007E14(v17, &qword_100145788, &unk_1000F9EB0);
}

uint64_t sub_10007CEE8(void *a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_10000DC80(a1, v14);
  (*(v15 + 32))(v14, v15);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100007E14(v6, &unk_100144630, &qword_1000F5180);
  }

  (*(v8 + 32))(v13, v6, v7);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000BEC4(v17, qword_10014FEA0);
  (*(v8 + 16))(v10, v13, v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v2;
    v21 = v20;
    v30 = v20;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v21 = 136315138;
    sub_10007DAD0(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v8 + 8);
    v25(v10, v7);
    v26 = sub_1000BA1EC(v22, v24, &v35);

    v27 = v30;
    *(v30 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Opening %s", v27, 0xCu);
    sub_100007E74(v31);

    v2 = v32;

    v28 = a1[5];
    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v25 = *(v8 + 8);
  v25(v10, v7);
  v28 = a1[5];
  if (v28)
  {
LABEL_9:
    v28();
  }

LABEL_10:
  type metadata accessor for ArtistProfileView(0);
  v29 = v33;
  sub_100041144(v33);
  OpenURLAction.callAsFunction(_:)();
  (*(v34 + 8))(v29, v2);
  return (v25)(v13, v7);
}

uint64_t sub_10007D368@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100002D44(&qword_100145750, &qword_1000F9E70);
  sub_10007C7E8(v2, a2 + *(v4 + 44));
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(sub_100002D44(&qword_100145758, &qword_1000F9E78) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  if (qword_100141BC0 != -1)
  {
    swift_once();
  }

  v15 = qword_1001456B0;
  v16 = static Edge.Set.all.getter();
  v17 = a2 + *(sub_100002D44(&qword_100145760, &qword_1000F9E80) + 36);
  *v17 = v15;
  *(v17 + 8) = v16;
  v18 = qword_100141BA8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_100145698;
  v20 = (a2 + *(sub_100002D44(&qword_100145768, &unk_1000F9E88) + 36));
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  result = sub_100002D44(&qword_100143758, &qword_1000F97A0);
  *(v20 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10007D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistProfileView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007D618()
{
  v1 = type metadata accessor for ArtistProfileView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100007E74((v0 + v3));
  if (*(v0 + v3 + 40))
  {
  }

  v5 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007D748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistProfileView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007D7AC()
{
  v1 = *(type metadata accessor for ArtistProfileView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_10007CEE8(v2);
}

unint64_t sub_10007D80C()
{
  result = qword_100145798;
  if (!qword_100145798)
  {
    v1 = sub_100004370(&qword_100145790, &qword_1000F9EC0);
    sub_10007D898(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145798);
  }

  return result;
}

unint64_t sub_10007D898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001457A0;
  if (!qword_1001457A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457A0);
  }

  return result;
}

unint64_t sub_10007D8EC()
{
  result = qword_1001457B8;
  if (!qword_1001457B8)
  {
    sub_100004370(&qword_100145770, &qword_1000F9E98);
    sub_10007D978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457B8);
  }

  return result;
}

unint64_t sub_10007D978()
{
  result = qword_1001457C0;
  if (!qword_1001457C0)
  {
    sub_100004370(&qword_1001457B0, &qword_1000F9ED0);
    sub_10007DAD0(&qword_1001457C8, &type metadata accessor for ExpandableTextView, &protocol conformance descriptor for ExpandableTextView);
    sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457C0);
  }

  return result;
}

uint64_t sub_10007DA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145778, &qword_1000F9EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007DAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10007DB1C()
{
  result = qword_1001457D0;
  if (!qword_1001457D0)
  {
    sub_100004370(&qword_100145768, &unk_1000F9E88);
    sub_10007DBD4();
    sub_100004610(&qword_100145808, &qword_100143758, &qword_1000F97A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457D0);
  }

  return result;
}

unint64_t sub_10007DBD4()
{
  result = qword_1001457D8;
  if (!qword_1001457D8)
  {
    sub_100004370(&qword_100145760, &qword_1000F9E80);
    sub_10007DC8C();
    sub_100004610(&qword_1001457F8, &qword_100145800, &unk_1000F9EE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457D8);
  }

  return result;
}

unint64_t sub_10007DC8C()
{
  result = qword_1001457E0;
  if (!qword_1001457E0)
  {
    sub_100004370(&qword_100145758, &qword_1000F9E78);
    sub_100004610(&qword_1001457E8, &qword_1001457F0, &qword_1000F9ED8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001457E0);
  }

  return result;
}

uint64_t sub_10007DD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for MusicalFeaturesBadgeView(0);
  v5 = a2 + v4[5];
  State.init(wrappedValue:)();
  *v5 = v26;
  *(v5 + 1) = v27;
  v6 = a2 + v4[6];
  *v6 = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  *(v6 + 3) = v9;
  v10 = a2 + v4[7];
  *v10 = LocalizedStringKey.init(stringLiteral:)();
  *(v10 + 1) = v11;
  v10[16] = v12 & 1;
  *(v10 + 3) = v13;
  v14 = a2 + v4[8];
  *v14 = LocalizedStringKey.init(stringLiteral:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  v18 = a2 + v4[9];
  *v18 = LocalizedStringKey.init(stringLiteral:)();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  v22 = (a2 + v4[10]);
  *v22 = 0xD000000000000016;
  v22[1] = 0x80000001001016F0;
  v23 = v4[11];
  v24 = [objc_opt_self() quaternarySystemFillColor];
  result = Color.init(uiColor:)();
  *(a2 + v23) = result;
  *(a2 + v4[12]) = a1;
  return result;
}

uint64_t sub_10007DF08()
{
  v0 = type metadata accessor for Gradient.ColorSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_10004116C((&v15 - v9));
  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    static Color.black.getter();
  }

  else
  {
    static Color.white.getter();
  }

  type metadata accessor for MusicalFeaturesBadgeView(0);
  static Gradient.ColorSpace.perceptual.getter();
  v13 = Color.mix(with:by:in:)();

  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_10007E134@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v31 = type metadata accessor for BorderedProminentButtonStyle();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicalFeaturesBadgeView(0);
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_100002D44(&qword_1001458C8, &qword_1000F9F90);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v30 = sub_100002D44(&qword_1001458D0, &qword_1000F9F98);
  __chkstk_darwin(v30);
  v14 = v28 - v13;
  sub_10007ED88(v2, v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_10007EDF0(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v35 = v2;
  sub_100002D44(&qword_1001458D8, &qword_1000F9FA0);
  sub_10007EE64();
  Button.init(action:label:)();
  v17 = *(v2 + v7[13]);
  KeyPath = swift_getKeyPath();
  v36 = v17;

  v19 = AnyShapeStyle.init<A>(_:)();
  v20 = &v12[*(v10 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  BorderedProminentButtonStyle.init()();
  sub_10007F04C();
  sub_10007F130();
  v21 = v31;
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v21);
  sub_100007E14(v12, &qword_1001458C8, &qword_1000F9F90);
  v22 = &v14[*(v30 + 36)];
  sub_100002D44(&qword_100145918, &qword_1000F9FF8);
  static ButtonBorderShape.capsule.getter();
  *v22 = swift_getKeyPath();
  v23 = v2 + v7[9];
  v24 = *(v23 + 8);
  v31 = *v23;
  v29 = v24;
  v28[3] = *(v23 + 16);
  v25 = v2 + v7[7];
  LOBYTE(v24) = *v25;
  v26 = *(v25 + 8);
  v37 = v24;
  v38 = v26;
  sub_100002D44(&qword_100145920, &unk_1000FA030);
  State.projectedValue.getter();
  v34 = v2;
  v33 = v2;
  sub_100002D44(&qword_100145510, &qword_1000F9A90);
  sub_10007F1A0();
  sub_100004610(&qword_100145508, &qword_100145510, &qword_1000F9A90, &protocol conformance descriptor for Button<A>);
  View.alert<A, B>(_:isPresented:actions:message:)();

  return sub_100007E14(v14, &qword_1001458D0, &qword_1000F9F98);
}

uint64_t sub_10007E5FC@<X0>(uint64_t a2@<X8>)
{
  v13 = a2;
  v2 = sub_100002D44(&qword_100141F68, &unk_1000F4E80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  type metadata accessor for MusicalFeaturesBadgeView(0);

  Label<>.init(_:systemImage:)();
  static Font.Weight.semibold.getter();
  sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
  v6 = v13;
  View.fontWeight(_:)();
  (*(v3 + 8))(v5, v2);
  v7 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v9 = (v6 + *(sub_100002D44(&qword_1001458F0, &qword_1000F9FA8) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_10007DF08();
  result = sub_100002D44(&qword_1001458D8, &qword_1000F9FA0);
  *(v6 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_10007E7F8(uint64_t a1)
{
  v2 = type metadata accessor for MusicalFeaturesBadgeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10007ED88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10007EDF0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  return Button<>.init(_:action:)();
}

uint64_t sub_10007E940(uint64_t a1, char a2)
{
  type metadata accessor for MusicalFeaturesBadgeView(0);
  sub_100002D44(&qword_100145920, &unk_1000FA030);
  return State.wrappedValue.setter();
}

uint64_t sub_10007E9B4@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MusicalFeaturesBadgeView(0);

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t type metadata accessor for MusicalFeaturesBadgeView(uint64_t a1)
{
  result = qword_100145868;
  if (!qword_100145868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007EAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10007EBA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10007EC6C(uint64_t a1)
{
  sub_100025234(319);
  if (v1 <= 0x3F)
  {
    sub_10007ED18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007ED18()
{
  if (!qword_100145878)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100145878);
    }
  }
}

uint64_t sub_10007ED88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicalFeaturesBadgeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007EDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicalFeaturesBadgeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007EE64()
{
  result = qword_1001458E0;
  if (!qword_1001458E0)
  {
    sub_100004370(&qword_1001458D8, &qword_1000F9FA0);
    sub_10007EF1C();
    sub_100004610(&qword_100142A88, &unk_100142A90, &qword_1000F9FB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001458E0);
  }

  return result;
}

unint64_t sub_10007EF1C()
{
  result = qword_1001458E8;
  if (!qword_1001458E8)
  {
    sub_100004370(&qword_1001458F0, &qword_1000F9FA8);
    sub_100004370(&qword_100141F68, &unk_1000F4E80);
    sub_100004610(&qword_100141F60, &qword_100141F68, &unk_1000F4E80, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001458E8);
  }

  return result;
}

unint64_t sub_10007F04C()
{
  result = qword_1001458F8;
  if (!qword_1001458F8)
  {
    sub_100004370(&qword_1001458C8, &qword_1000F9F90);
    sub_100004610(&qword_100145900, &qword_100145908, &unk_1000F9FE8, &protocol conformance descriptor for Button<A>);
    sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001458F8);
  }

  return result;
}

unint64_t sub_10007F130()
{
  result = qword_100145910;
  if (!qword_100145910)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145910);
  }

  return result;
}

unint64_t sub_10007F1A0()
{
  result = qword_100145928;
  if (!qword_100145928)
  {
    sub_100004370(&qword_1001458D0, &qword_1000F9F98);
    sub_100004370(&qword_1001458C8, &qword_1000F9F90);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10007F04C();
    sub_10007F130();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100145930, &qword_100145918, &qword_1000F9FF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145928);
  }

  return result;
}

uint64_t sub_10007F2B4()
{
  v1 = *(type metadata accessor for MusicalFeaturesBadgeView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007F4DC()
{
  sub_100004370(&qword_1001458D0, &qword_1000F9F98);
  sub_100004370(&qword_100145510, &qword_1000F9A90);
  sub_10007F1A0();
  sub_100004610(&qword_100145508, &qword_100145510, &qword_1000F9A90, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10007F5B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10007F600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007F66C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v39 = a4;
  v38 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v38);
  v6 = &v36 - v5;
  v41 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(&qword_100145938, &qword_1000FA130);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_100002D44(&qword_100145940, &qword_1000FA138);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v37 = sub_100002D44(&qword_100145948, &qword_1000FA140);
  __chkstk_darwin(v37);
  v18 = &v36 - v17;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v19 = &v12[*(sub_100002D44(&qword_100145950, &qword_1000FA148) + 44)];
  v40 = a1;
  sub_10007FB50(a1, v19);
  LOBYTE(a1) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = &v12[*(v10 + 36)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v25 = sub_10007FF3C();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v41);
  sub_100007E14(v12, &qword_100145938, &qword_1000FA130);
  v44 = v10;
  v45 = v25;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  (*(v14 + 8))(v16, v13);
  v26 = enum case for DynamicTypeSize.xxxLarge(_:);
  v27 = type metadata accessor for DynamicTypeSize();
  (*(*(v27 - 8) + 104))(v6, v26, v27);
  sub_1000800EC(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10007FFF4();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    v29 = v39;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v6, &qword_100142950, &qword_1000F7340);
    sub_100080134(v18);
    v30 = swift_allocObject();
    v31 = v40;
    v33 = v42;
    v32 = v43;
    *(v30 + 2) = v40;
    *(v30 + 3) = v33;
    *(v30 + 4) = v32;
    v34 = (v29 + *(sub_100002D44(&qword_100145978, &unk_1000FA158) + 36));
    *v34 = sub_1000801E4;
    v34[1] = v30;
    v34[2] = 0;
    v34[3] = 0;
    v35 = v31;
    return sub_10002F7D4(v33, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007FB50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v4 - 8);
  v6 = v39 - v5;
  v7 = type metadata accessor for LibraryItemArtwork(0);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = v39 - v15;
  v17 = [a1 artworkURL];
  if (v17)
  {
    v18 = v9;
    v19 = a1;
    v20 = a2;
    v21 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    a2 = v20;
    a1 = v19;
    v9 = v18;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  v24 = sub_100007F6C(v6, v12);
  v40 = 0x4058000000000000;
  sub_100080214(v24, v25, v26);
  ScaledMetric.init(wrappedValue:)();
  v27 = *(v7 + 24);
  *&v12[v27] = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  sub_100080270(v12, v16, v28);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v49[55] = v50[3];
  *&v49[71] = v50[4];
  *&v49[87] = v50[5];
  *&v49[103] = v50[6];
  *&v49[7] = v50[0];
  *&v49[23] = v50[1];
  *&v49[39] = v50[2];
  sub_1000802D4(v16, v9, *v50);
  sub_1000802D4(v9, a2, v29);
  v30 = (a2 + *(sub_100002D44(&qword_100145988, &qword_1000FA1A0) + 48));
  *&v39[0] = a1;
  BYTE8(v39[0]) = 1;
  *(v39 + 9) = *v49;
  *(&v39[1] + 9) = *&v49[16];
  *(&v39[4] + 9) = *&v49[64];
  *(&v39[5] + 9) = *&v49[80];
  *(&v39[6] + 9) = *&v49[96];
  *(&v39[7] + 1) = *&v49[111];
  *(&v39[2] + 9) = *&v49[32];
  *(&v39[3] + 9) = *&v49[48];
  v31 = v39[5];
  v30[4] = v39[4];
  v30[5] = v31;
  v32 = v39[7];
  v30[6] = v39[6];
  v30[7] = v32;
  v33 = v39[1];
  *v30 = v39[0];
  v30[1] = v33;
  v34 = v39[3];
  v30[2] = v39[2];
  v30[3] = v34;
  v35 = a1;
  sub_100080338(v39, &v40);
  sub_1000803A8(v16, v36);
  v46 = *&v49[64];
  v47 = *&v49[80];
  *v48 = *&v49[96];
  v42 = *v49;
  v43 = *&v49[16];
  v44 = *&v49[32];
  v40 = v35;
  v41 = 1;
  *&v48[15] = *&v49[111];
  v45 = *&v49[48];
  sub_100007E14(&v40, &qword_100145990, &qword_1000FA1A8);
  return sub_1000803A8(v9, v37);
}

unint64_t sub_10007FF3C()
{
  result = qword_100145958;
  if (!qword_100145958)
  {
    sub_100004370(&qword_100145938, &qword_1000FA130);
    sub_100004610(&qword_100145960, &qword_100145968, &qword_1000FA150, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145958);
  }

  return result;
}

unint64_t sub_10007FFF4()
{
  result = qword_100145970;
  if (!qword_100145970)
  {
    sub_100004370(&qword_100145948, &qword_1000FA140);
    sub_100004370(&qword_100145938, &qword_1000FA130);
    sub_10007FF3C();
    swift_getOpaqueTypeConformance2();
    sub_1000800EC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145970);
  }

  return result;
}

uint64_t sub_1000800EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100080134(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100145948, &qword_1000FA140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008019C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000801E4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100080214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145980;
  if (!qword_100145980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145980);
  }

  return result;
}

uint64_t sub_100080270(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for LibraryItemArtwork(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000802D4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for LibraryItemArtwork(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100080338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145990, &qword_1000FA1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000803A8(uint64_t a1, double a2)
{
  v3 = type metadata accessor for LibraryItemArtwork(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100080408()
{
  result = qword_100145998;
  if (!qword_100145998)
  {
    sub_100004370(&qword_100145978, &unk_1000FA158);
    sub_100004370(&qword_100145948, &qword_1000FA140);
    sub_100004370(&qword_100142950, &qword_1000F7340);
    sub_10007FFF4();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145998);
  }

  return result;
}

__n128 sub_100080530(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008054C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008060C(uint64_t a1)
{
  result = static Font.subheadline.getter();
  qword_1001459A0 = result;
  return result;
}

uint64_t sub_10008062C()
{
  result = static Color.secondary.getter();
  qword_1001459A8 = result;
  return result;
}

uint64_t sub_10008064C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v39 = type metadata accessor for AccessibilityTraits();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_1001459B0, &qword_1000FA248);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_100002D44(&qword_1001459B8, &qword_1000FA250);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v34 = sub_100002D44(&qword_1001459C0, &qword_1000FA258);
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v33 - v14;
  v33 = sub_100002D44(&qword_1001459C8, &qword_1000FA260);
  __chkstk_darwin(v33);
  v17 = &v33 - v16;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = sub_100002D44(&qword_1001459D0, &unk_1000FA268);
  sub_100080B30(v2, &v9[*(v18 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v9, v12, &qword_1001459B0, &qword_1000FA248);
  v19 = &v12[*(v10 + 36)];
  v20 = v49;
  *(v19 + 4) = v48;
  *(v19 + 5) = v20;
  *(v19 + 6) = v50;
  v21 = v45;
  *v19 = v44;
  *(v19 + 1) = v21;
  v22 = v47;
  *(v19 + 2) = v46;
  *(v19 + 3) = v22;
  static AccessibilityChildBehavior.combine.getter();
  v23 = sub_100081B24();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v35);
  sub_100007E14(v12, &qword_1001459B8, &qword_1000FA250);
  v24 = v2[3];
  v25 = v2[4];
  sub_10000DC80(v2, v24);
  v42 = (*(v25 + 16))(v24, v25);
  v43 = v26;
  v40 = v10;
  v41 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10000B730(OpaqueTypeConformance2, v28, v29);
  v30 = v34;
  View.accessibilityLabel<A>(_:)();

  (*(v13 + 8))(v15, v30);
  v31 = v36;
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v37 + 8))(v31, v39);
  return sub_100081BDC(v17);
}

uint64_t sub_100080B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v31 = sub_100002D44(&qword_1001459E8, &qword_1000FA278);
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v29 - v6;
  v7 = sub_100002D44(&qword_1001459F0, &qword_1000FA280);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  sub_10007D558(a1, v34);
  KeyPath = swift_getKeyPath();
  v39 = 0;
  sub_10007D558(v34, v37);
  sub_10007D558(v37, v36);
  State.init(wrappedValue:)();
  sub_100069CC0(v37);
  sub_100069CC0(v34);
  sub_100081C4C(a1, v34);
  v17 = swift_allocObject();
  v18 = v34[1];
  *(v17 + 16) = v34[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v34[2];
  *(v17 + 64) = v35;
  v33 = a1;
  sub_100002D44(&qword_1001459F8, &qword_1000FA2B8);
  sub_100004610(&qword_100145A00, &qword_1001459F8, &qword_1000FA2B8, &protocol conformance descriptor for VStack<A>);
  v19 = v29;
  Button.init(action:label:)();
  v20 = a1[3];
  v21 = a1[4];
  sub_10000DC80(a1, v20);
  (*(v21 + 32))(v20, v21);
  v22 = type metadata accessor for URL();
  LOBYTE(v21) = (*(*(v22 - 8) + 48))(v5, 1, v22) == 1;
  sub_100007E14(v5, &unk_100144630, &qword_1000F5180);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  (*(v30 + 32))(v13, v19, v31);
  v25 = &v13[*(v8 + 44)];
  *v25 = v23;
  v25[1] = sub_100081D5C;
  v25[2] = v24;
  sub_10002F250(v13, v16, &qword_1001459F0, &qword_1000FA280);
  sub_100081D74(&KeyPath, v34);
  sub_100007FDC(v16, v10, &qword_1001459F0, &qword_1000FA280);
  v26 = v32;
  sub_100081D74(v34, v32);
  v27 = sub_100002D44(&qword_100145A08, &qword_1000FA2F0);
  sub_100007FDC(v10, v26 + *(v27 + 48), &qword_1001459F0, &qword_1000FA280);
  sub_100007E14(v16, &qword_1001459F0, &qword_1000FA280);
  sub_100081DD0(&KeyPath);
  sub_100007E14(v10, &qword_1001459F0, &qword_1000FA280);
  return sub_100081DD0(v34);
}

double sub_100080FEC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v23 = 1;
  sub_1000811F0(a1, &v13);
  v30 = v19;
  v31 = v20;
  v32[0] = v21[0];
  *(v32 + 9) = *(v21 + 9);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v24 = v13;
  v25 = v14;
  v33[6] = v19;
  v33[7] = v20;
  v34[0] = v21[0];
  *(v34 + 9) = *(v21 + 9);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v33[5] = v18;
  v33[0] = v13;
  v33[1] = v14;
  sub_100007FDC(&v24, &v12, &qword_100145A10, &qword_1000FA2F8);
  sub_100007E14(v33, &qword_100145A10, &qword_1000FA2F8);
  *(&v22[3] + 7) = v27;
  *(&v22[2] + 7) = v26;
  *(&v22[6] + 7) = v30;
  *(&v22[7] + 7) = v31;
  *(&v22[8] + 7) = v32[0];
  v22[9] = *(v32 + 9);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  v5 = v22[7];
  *(a2 + 113) = v22[6];
  *(a2 + 129) = v5;
  v6 = v22[9];
  *(a2 + 145) = v22[8];
  *(a2 + 161) = v6;
  v7 = v22[3];
  *(a2 + 49) = v22[2];
  *(a2 + 65) = v7;
  v8 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v8;
  result = *v22;
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  v11 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 33) = v10;
  return result;
}

uint64_t sub_1000811F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = static VerticalAlignment.center.getter();
  LOBYTE(v41) = 0;
  sub_100081618(a1, &v50);
  v55 = *&v51[16];
  v56 = *&v51[32];
  v57 = *&v51[48];
  v58 = *&v51[64];
  v53 = v50;
  v54 = *v51;
  v60 = *&v51[64];
  v59[2] = *&v51[16];
  v59[3] = *&v51[32];
  v59[4] = *&v51[48];
  v59[0] = v50;
  v59[1] = *v51;
  sub_100007FDC(&v53, &v43, &qword_100145A18, &qword_1000FA300);
  sub_100007E14(v59, &qword_100145A18, &qword_1000FA300);
  *(&v52[2] + 7) = v55;
  *(&v52[3] + 7) = v56;
  *(&v52[4] + 7) = v57;
  *(v52 + 7) = v53;
  *(&v52[5] + 7) = v58;
  *(&v52[1] + 7) = v54;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000DC80(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if (v8)
  {
    *&v50 = v7;
    *(&v50 + 1) = v8;
    sub_10000B730(v7, v8, v9);
    v10 = StringProtocol.localizedUppercase.getter();
    v12 = v11;

    *&v43 = v10;
    *(&v43 + 1) = v12;
    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    static Font.caption.getter();
    v18 = Text.font(_:)();
    v37 = v19;
    v21 = v20;

    sub_10000BFBC(v13, v15, v17 & 1);

    *&v50 = static Color.secondary.getter();
    v22 = Text.foregroundStyle<A>(_:)();
    v38 = v23;
    v39 = v22;
    LOBYTE(v12) = v24;
    sub_10000BFBC(v18, v37, v21 & 1);

    static Font.Weight.bold.getter();
    v25 = Text.fontWeight(_:)();
    v27 = v26;
    LOBYTE(v37) = v28;
    v30 = v29;
    sub_10000BFBC(v39, v38, v12 & 1);

    KeyPath = swift_getKeyPath();
    v32 = v37 & 1;
    sub_100003B04(v25, v27, v37 & 1);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v32 = 0;
    v30 = 0;
    KeyPath = 0;
  }

  *&v41 = v40;
  *(&v41 + 1) = 0x4028000000000000;
  v42[0] = 0;
  *&v42[1] = v52[0];
  *&v42[17] = v52[1];
  *&v42[65] = v52[4];
  *&v42[49] = v52[3];
  *&v42[33] = v52[2];
  *&v42[80] = *(&v52[4] + 15);
  v43 = v41;
  v44 = *v42;
  v48 = *&v42[64];
  v49 = *(&v52[4] + 15);
  v46 = *&v42[32];
  v47 = *&v42[48];
  v45 = *&v42[16];
  sub_100007FDC(&v41, &v50, &qword_100145A20, &qword_1000FA308);
  sub_100081E24(v25, v27, v32, v30, KeyPath);
  sub_100081E74(v25, v27, v32, v30, KeyPath);
  v33 = v48;
  *(a2 + 64) = v47;
  *(a2 + 80) = v33;
  *(a2 + 96) = v49;
  v34 = v44;
  *a2 = v43;
  *(a2 + 16) = v34;
  v35 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v35;
  *(a2 + 112) = v25;
  *(a2 + 120) = v27;
  *(a2 + 128) = v32;
  *(a2 + 136) = v30;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = 0;
  sub_100081E74(v25, v27, v32, v30, KeyPath);
  *&v51[33] = v52[2];
  *&v51[49] = v52[3];
  *&v51[65] = v52[4];
  *&v51[80] = *(&v52[4] + 15);
  *&v51[1] = v52[0];
  *&v50 = v40;
  *(&v50 + 1) = 0x4028000000000000;
  v51[0] = 0;
  *&v51[17] = v52[1];
  return sub_100007E14(&v50, &qword_100145A20, &qword_1000FA308);
}

uint64_t sub_100081618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v43 = &v43 - v4;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000DC80(a1, v5);
  *&v53 = (*(v6 + 16))(v5, v6);
  *(&v53 + 1) = v7;
  sub_10000B730(v53, v7, v8);
  v9 = Text.init<A>(_:)();
  v11 = v10;
  LOBYTE(v6) = v12;
  static Font.title3.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10000BFBC(v9, v11, v6 & 1);

  static Font.Weight.semibold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  LOBYTE(v11) = v21;
  sub_10000BFBC(v13, v15, v17 & 1);

  *&v53 = static Color.primary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v46 = v27;
  sub_10000BFBC(v18, v20, v11 & 1);

  KeyPath = swift_getKeyPath();
  v44 = swift_getKeyPath();
  LOBYTE(v53) = v26 & 1;
  LOBYTE(v58[0]) = 0;
  v28 = a1[3];
  v29 = a1[4];
  sub_10000DC80(a1, v28);
  v30 = v43;
  (*(v29 + 32))(v28, v29);
  v31 = type metadata accessor for URL();
  LODWORD(v28) = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_100007E14(v30, &unk_100144630, &qword_1000F5180);
  v32 = 0;
  v33 = 0;
  if (v28 != 1)
  {
    if (qword_100141BC8 != -1)
    {
      swift_once();
    }

    v32 = qword_1001459A0;
    v34 = qword_100141BD0;

    if (v34 != -1)
    {
      swift_once();
    }

    v33 = qword_1001459A8;
    swift_retain_n();
  }

  *&v48 = v22;
  *(&v48 + 1) = v24;
  LOBYTE(v49) = v26 & 1;
  *(&v49 + 1) = *v69;
  DWORD1(v49) = *&v69[3];
  v35 = v46;
  *(&v49 + 1) = v46;
  v36 = KeyPath;
  *&v50 = KeyPath;
  *(&v50 + 1) = 1;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = *v68;
  DWORD1(v51) = *&v68[3];
  v37 = v44;
  *(&v51 + 1) = v44;
  v52 = 0;
  LOBYTE(v57) = 0;
  v55 = v50;
  v56 = v51;
  v53 = v48;
  v54 = v49;
  sub_100007FDC(&v48, v58, &qword_100145A28, &unk_1000FA370);
  sub_100081ED4(v32, v33);
  sub_100081F14(v32, v33);
  v38 = v56;
  v39 = v47;
  *(v47 + 32) = v55;
  *(v39 + 48) = v38;
  v40 = v57;
  v41 = v54;
  *v39 = v53;
  *(v39 + 16) = v41;
  *(v39 + 64) = v40;
  *(v39 + 72) = v32;
  *(v39 + 80) = v33;
  sub_100081F14(v32, v33);
  v58[0] = v22;
  v58[1] = v24;
  v59 = v26 & 1;
  *v60 = *v69;
  *&v60[3] = *&v69[3];
  v61 = v35;
  v62 = v36;
  v63 = 1;
  v64 = 0;
  *v65 = *v68;
  *&v65[3] = *&v68[3];
  v66 = v37;
  v67 = 0;
  return sub_100007E14(v58, &qword_100145A28, &unk_1000FA370);
}

unint64_t sub_100081B24()
{
  result = qword_1001459D8;
  if (!qword_1001459D8)
  {
    sub_100004370(&qword_1001459B8, &qword_1000FA250);
    sub_100004610(&qword_1001459E0, &qword_1001459B0, &qword_1000FA248, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001459D8);
  }

  return result;
}

uint64_t sub_100081BDC(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001459C8, &qword_1000FA260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100081C84()
{
  sub_100007E74((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100081CF4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100081E24(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_100003B04(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100081E74(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_10000BFBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100081ED4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_100081F14(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_100081F58()
{
  result = qword_100145A30[0];
  if (!qword_100145A30[0])
  {
    sub_100004370(&qword_1001459C8, &qword_1000FA260);
    sub_100004370(&qword_1001459B8, &qword_1000FA250);
    sub_100081B24();
    swift_getOpaqueTypeConformance2();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100145A30);
  }

  return result;
}

unint64_t sub_100082020(uint64_t a1)
{
  swift_getMetatypeMetadata();
  result = type metadata accessor for CoordinateSpace();
  if (v2 <= 0x3F)
  {
    result = sub_10006A3FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000820C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CoordinateSpace();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100082188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CoordinateSpace();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100082288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  swift_getWitnessTable();
  v26[1] = type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  v6 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = v6;
  type metadata accessor for _PreferenceWritingModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = sub_100082A0C();
  WitnessTable = swift_getWitnessTable();
  v37 = v8;
  v38 = WitnessTable;
  v29 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v26[3] = v7;
  v26[2] = swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v26[4] = swift_getWitnessTable();
  v26[5] = type metadata accessor for _BackgroundModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = v26 - v16;
  (*(v4 + 16))(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a2, v15);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v28;
  *(v19 + 24) = v20;
  (*(v4 + 32))(v19 + v18, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v35 = GeometryReader.init(content:)();
  v36 = v21;
  static Alignment.center.getter();
  v22 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v23 = swift_getWitnessTable();
  v33 = v22;
  v34 = v23;
  swift_getWitnessTable();
  sub_1000B03E4();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_1000B03E4();
  return (v24)(v17, v10);
}

uint64_t sub_100082668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[4] = a1;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v26 - v8;
  v10 = sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  v26[2] = a4;
  v26[3] = v10;
  v26[0] = a3;
  v11 = a4;
  v26[5] = type metadata accessor for _PreferenceWritingModifier();
  v12 = type metadata accessor for ModifiedContent();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v26 - v16;
  v18 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v34 = v18;
  v26[1] = *a2;
  v20 = *(a2 + *(type metadata accessor for SizeModifier(0, a3, v11, v19) + 40));
  v21 = GeometryProxy.frame(in:)();
  v20(v21);
  v22 = sub_100082A0C();
  View.preference<A>(key:value:)();
  (*(v27 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v31 = v22;
  v32 = WitnessTable;
  swift_getWitnessTable();
  sub_1000B03E4();
  v24 = *(v28 + 8);
  v24(v14, v12);
  sub_1000B03E4();
  return (v24)(v17, v12);
}

uint64_t sub_100082968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v11 = type metadata accessor for SizeModifier(0, a5, a6, a4);
  v12 = *(v11 + 36);
  v13 = type metadata accessor for CoordinateSpace();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a2, v13);
  v15 = &a7[*(v11 + 40)];
  *v15 = a3;
  *(v15 + 1) = a4;
  return result;
}

unint64_t sub_100082A0C()
{
  result = qword_100145AC0;
  if (!qword_100145AC0)
  {
    v1 = sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
    sub_100082A98(v1, v2, v3);
    sub_100082AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145AC0);
  }

  return result;
}

unint64_t sub_100082A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145AC8;
  if (!qword_100145AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145AC8);
  }

  return result;
}

unint64_t sub_100082AEC()
{
  result = qword_1001429D0;
  if (!qword_1001429D0)
  {
    sub_100004370(&qword_1001429D8, &qword_1000F5AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001429D0);
  }

  return result;
}

uint64_t sub_100082B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SizeModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = *(v5 + 36);
  v10 = type metadata accessor for CoordinateSpace();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_100082C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SizeModifier(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_100082668(a1, v9, v6, v7, a3);
}

uint64_t sub_100082CF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SizeModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8, &unk_1000FA3F0);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_100082A0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double sub_100082EA8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

void sub_100082F28(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100073358();
}

id sub_100082FA8()
{
  result = [objc_allocWithZone(type metadata accessor for SongPreviewPlaybackController(0)) init];
  qword_10014FF50 = result;
  return result;
}

uint64_t sub_100082FDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_100083050()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100002D44(qword_100145B30, &qword_1000FD820);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  *&v0[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer] = 0;
  *&v0[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_playerContext] = 0;
  v6 = OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController__statusController;
  type metadata accessor for SongPreviewStatusController(0);
  v7 = swift_allocObject();
  v11 = 0;
  Published.init(initialValue:)();
  LOBYTE(v11) = 0;
  Published.init(initialValue:)();
  v11 = v7;
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v6], v5, v2);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_1000831FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000836BC();
  v10 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12 options:0];

  v43 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v14];
  v15 = objc_allocWithZone(AVPlayer);
  v16 = [v15 initWithPlayerItem:v43];
  v17 = *&v2[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer];
  *&v2[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
    [v18 addObserver:v2 forKeyPath:v19 options:1 context:&v2[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_playerContext]];

    v20 = [objc_opt_self() defaultCenter];
    v41 = v18;
    v21 = String._bridgeToObjectiveC()();
    v42 = v6;
    v22 = v21;
    v23 = [v18 currentItem];
    v24 = v7;
    v25 = v23;
    [v20 addObserver:v2 selector:"playerDidFinishPlaying" name:v22 object:v23];

    v51 = CMTime.init(value:timescale:)(1, 5);
    value = v51.value;
    LODWORD(v25) = v51.timescale;
    v39 = HIDWORD(*&v51.timescale);
    epoch = v51.epoch;
    sub_100084C58();
    v27 = static OS_dispatch_queue.main.getter();
    (*(v8 + 16))(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v24);
    v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v2;
    (*(v8 + 32))(v29 + v28, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v48 = sub_100084D68;
    v49 = v29;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100083DB0;
    v47 = &unk_100138100;
    v30 = _Block_copy(&aBlock);
    v31 = v2;

    aBlock = value;
    v45 = __PAIR64__(v39, v25);
    v46 = epoch;
    v32 = v41;
    v33 = [v41 addPeriodicTimeObserverForInterval:&aBlock queue:v27 usingBlock:v30];
    _Block_release(v30);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100007E74(&aBlock);
    v34 = type metadata accessor for TaskPriority();
    v35 = v42;
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_1000C8AF8(0, 0, v35, &unk_1000FA5A0, v36);
  }

  else
  {
    v37 = v43;
  }
}

uint64_t sub_1000836BC()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer);
  if (v2)
  {
    [v2 pause];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100073358();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void sub_1000837D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 + OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer);
  if (v12 && (v13 = [v12 currentItem]) != 0)
  {
    v14 = v13;
    [v13 duration];

    CMTime.seconds.getter();
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    CMTime.seconds.getter();
    sub_100073658(v17, v16);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v28 == 1.0)
    {
      sub_100083C68();
    }
  }

  else
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000BEC4(v18, qword_10014FEA0);
    (*(v8 + 16))(v11, a5, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = COERCE_DOUBLE(swift_slowAlloc());
      v28 = v22;
      *v21 = 136315138;
      sub_100084EF0(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v8 + 8))(v11, v7);
      v26 = sub_1000BA1EC(v23, v25, &v28);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Invalid or missing duration for current item %s", v21, 0xCu);
      sub_100007E74(*&v22);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v28 = 0.0;

    static Published.subscript.setter();
    sub_100073358();
  }
}

id sub_100083C68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  value = 0;

  static Published.subscript.setter();
  sub_100073358();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  result = *(v0 + OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer);
  if (result)
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    value = kCMTimeZero.value;
    v13 = timescale;
    v14 = flags;
    v15 = epoch;
    v7 = epoch;
    v8 = kCMTimeZero.value;
    v9 = timescale;
    v10 = flags;
    v4 = kCMTimeZero.value;
    v5 = timescale;
    v6 = flags;
    return [result seekToTime:&value toleranceBefore:&v8 toleranceAfter:&v4];
  }

  return result;
}

double sub_100083DB0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

uint64_t sub_100083E1C()
{

  return _swift_task_switch(sub_100083EA8, 0, 0);
}

uint64_t sub_100083EA8()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 16) = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:v0 + 16];

  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000BEC4(v6, qword_10014FEA0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received error setting playback category %@", v9, 0xCu);
      sub_100007E14(v10, &unk_100142880, &unk_1000F5950);
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1000840F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_previewPlayer);
  if (v1)
  {
    v6 = v1;
    v2 = [v6 error];
    if (v2)
    {
      v3 = v2;

      v4 = v3;
    }

    else
    {
      [v6 rate];
      if (v5 == 0.0)
      {
        [v6 play];
      }

      else
      {
        [v6 pause];
      }

      v4 = v6;
    }
  }
}

void sub_1000841FC(uint64_t a1, NSString a2, uint64_t a3, Class isa, char *a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  if (!a5 || &v6[OBJC_IVAR____TtC16MusicRecognition29SongPreviewPlaybackController_playerContext] != a5)
  {
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    sub_100084BE8(a3, v26);
    v17 = v27;
    if (v27)
    {
      v18 = sub_10000DC80(v26, v27);
      v19 = *(v17 - 8);
      v20 = __chkstk_darwin(v18);
      v22 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22, v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v19 + 8))(v22, v17);
      sub_100007E74(v26);
      if (!isa)
      {
LABEL_19:
        v25.receiver = v6;
        v25.super_class = ObjectType;
        objc_msgSendSuper2(&v25, "observeValueForKeyPath:ofObject:change:context:", a2, v23, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v23 = 0;
      if (!isa)
      {
        goto LABEL_19;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100084EF0(&qword_100141F00, type metadata accessor for NSKeyValueChangeKey, &unk_1000F4C00);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_19;
  }

  if (a2 && (a1 == 1702125938 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (isa)
    {
      if (*(isa + 2))
      {
        v13 = sub_1000B974C(NSKeyValueChangeNewKey);
        if (v14)
        {
          sub_100012C48(*(isa + 7) + 32 * v13, v26);
          if (swift_dynamicCast())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            if (v24[1] != 0.0)
            {
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v16 = 1;
              goto LABEL_24;
            }

            static Published.subscript.getter();

            v15 = sub_100073500();

            if (v15)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              swift_getKeyPath();
              swift_getKeyPath();
              v16 = 2;
LABEL_24:
              LOBYTE(v26[0]) = v16;
              static Published.subscript.setter();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for SongPreviewPlaybackController(uint64_t a1)
{
  result = qword_100145B10;
  if (!qword_100145B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100084820(uint64_t a1)
{
  sub_1000848C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000848C8(uint64_t a1)
{
  if (!qword_100145B20)
  {
    type metadata accessor for SongPreviewStatusController(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100145B20);
    }
  }
}

uint64_t sub_100084920()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000849E0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100084A60(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100084AD4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100084B58(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100084BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145B28, &qword_1000FA590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084C58()
{
  result = qword_100144540;
  if (!qword_100144540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100144540);
  }

  return result;
}

uint64_t sub_100084CA4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100084D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1000837D8(a1, a2, a3, v8, v9);
}

uint64_t sub_100084DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100084E0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084E44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000789C;

  return sub_100083E1C();
}

uint64_t sub_100084EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100084F84(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_100085228(a1);
  (*(*(*(v2 + qword_10014FF58) - 8) + 8))(a1);
  return v5;
}

void *sub_100085048(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10014FF58);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_100085180(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_100085228(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_100085310()
{
  if (SHLibrary.isUpdating.getter())
  {
    v0 = SHLibrary.items.getter();
    if (v0 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

  if (SHLibrary.isUpdating.getter())
  {
    return 2;
  }

  v2 = SHLibrary.items.getter();
  if (v2 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      return 2;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v3)
    {
      return 2;
    }
  }

LABEL_11:
  if ((SHLibrary.isUpdating.getter() & 1) == 0)
  {
    return 0;
  }

  v7 = SHLibrary.items.getter();
  if (v7 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();

    if (v9)
    {
      return 0;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100085434(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100085454, 0, 0);
}

uint64_t sub_100085454()
{
  v1 = v0[2];
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1000F8490;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100085538;

  return SHLibrary.removeItems(_:)(v2);
}

uint64_t sub_100085538()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100085674, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100085674()
{

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove item %@", v4, 0xCu);
    sub_1000157BC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100085830()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000858C8;

  return SHLibrary.reload()();
}

uint64_t sub_1000858C8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000859FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000859FC()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to reload library %@", v4, 0xCu);
    sub_1000157BC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100085B90()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition19HistoryListProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HistoryListProvider(uint64_t a1)
{
  result = qword_100145BE8;
  if (!qword_100145BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100085C88(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100085DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000789C;

  return sub_100085434(a1);
}

uint64_t sub_100085E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100012EC8;

  return sub_100085810();
}

uint64_t sub_100085F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145C78, &unk_1000FA670);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100085F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100145C78, &unk_1000FA670);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PrivacySplashPresenter(uint64_t a1)
{
  result = qword_100145CD8;
  if (!qword_100145CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008605C(uint64_t a1)
{
  sub_1000860C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000860C8(uint64_t a1)
{
  if (!qword_100145CE8)
  {
    type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &qword_100145CE8);
    }
  }
}

void sub_10008613C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100086A00();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double sub_1000861DC(uint64_t a1)
{
  v2 = type metadata accessor for PrivacySplashPresenter(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100086648(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000866B0(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.bottom.getter();
  v10[0] = sub_1000869A0;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v8;
  sub_100002D44(&qword_100145D30, &unk_1000FA720);
  sub_1000867E8();
  View.interactiveDismissDisabled(_:)();

  return result;
}

double sub_100086328()
{
  sub_100002D44(&qword_100145C78, &unk_1000FA670);
  Bindable.wrappedValue.getter();
  sub_1000B99D0();

  return result;
}

double sub_10008637C(uint64_t a1, uint64_t a2)
{
  v14[0] = a1;
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_100002D44(&qword_100145C78, &unk_1000FA670);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v6 + 8))(v8, v5);
  sub_100086648(v2, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000866B0(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_100002D44(&qword_100145D18, &qword_1000FA710);
  sub_100002D44(&qword_100145D20, &qword_1000FA718);
  sub_100086784();
  v11 = sub_100004370(&qword_100145D30, &unk_1000FA720);
  v12 = sub_1000867E8();
  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  return result;
}

uint64_t sub_100086648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacySplashPresenter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000866B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivacySplashPresenter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100086714()
{
  v1 = *(type metadata accessor for PrivacySplashPresenter(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000861DC(v2);
}

unint64_t sub_100086784()
{
  result = qword_100145D28;
  if (!qword_100145D28)
  {
    sub_100004370(&qword_100145D18, &qword_1000FA710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145D28);
  }

  return result;
}

unint64_t sub_1000867E8()
{
  result = qword_100145D38;
  if (!qword_100145D38)
  {
    v1 = sub_100004370(&qword_100145D30, &unk_1000FA720);
    sub_100086874(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145D38);
  }

  return result;
}

unint64_t sub_100086874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145D40;
  if (!qword_100145D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145D40);
  }

  return result;
}

uint64_t sub_1000868C8()
{
  v1 = *(type metadata accessor for PrivacySplashPresenter(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100002D44(&qword_100145C78, &unk_1000FA670);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000869A0()
{
  type metadata accessor for PrivacySplashPresenter(0);

  return sub_100086328();
}

unint64_t sub_100086A00()
{
  result = qword_100142070;
  if (!qword_100142070)
  {
    type metadata accessor for MusicRecognitionOnboardingWelcomeViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142070);
  }

  return result;
}

uint64_t sub_100086A58()
{
  sub_100004370(&qword_100145D18, &qword_1000FA710);
  sub_100004370(&qword_100145D20, &qword_1000FA718);
  sub_100086784();
  sub_100004370(&qword_100145D30, &unk_1000FA720);
  sub_1000867E8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100086B38(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "APP_INTENT_GENERIC_ERROR_REASON";
    }

    else
    {
      v3 = "istProvider";
    }

    if (a1 == 1)
    {
      v4 = 0xD000000000000035;
    }

    else
    {
      v4 = 0xD00000000000002FLL;
    }
  }

  else
  {
    v4 = 0xD000000000000030;
    v3 = "_FAILURE_ERROR_REASON";
  }

  v9._object = 0xE000000000000000;
  v5 = v3 | 0x8000000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v2, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100086C14(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "IC_ERROR_DESCRIPTION";
    }

    else
    {
      v3 = "TCH_ERROR_REASON";
    }

    if (a1 == 1)
    {
      v4 = 0xD00000000000003ALL;
    }

    else
    {
      v4 = 0xD000000000000034;
    }
  }

  else
  {
    v4 = 0xD000000000000035;
    v3 = "_FAILURE_ERROR_DESCRIPTION";
  }

  v9._object = 0xE000000000000000;
  v5 = v3 | 0x8000000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v2, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100086D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145D48;
  if (!qword_100145D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145D48);
  }

  return result;
}

uint64_t sub_100086D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100086E14(a1, a2, a3);

  return Error<>._domain.getter(a1, v4);
}

uint64_t sub_100086DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100086E14(a1, a2, a3);

  return Error<>._code.getter(a1, v4);
}

unint64_t sub_100086E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100145D50;
  if (!qword_100145D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145D50);
  }

  return result;
}

uint64_t sub_100086E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100086EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086F04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100086F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100086FD4()
{
  v0 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_10000D0C8(v3, qword_100145D58);
  v4 = sub_10000BEC4(v3, qword_100145D58);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100087104@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = sub_100002D44(&qword_100145D88, &qword_1000FA9A8);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141BE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for URL();
  v14 = sub_10000BEC4(v13, qword_100145D58);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007E14(v8, &qword_100145D88, &qword_1000FA9A8);
    return (*(*(v13 - 8) + 16))(a1, v14, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (v1[3])
    {
      v16 = v1[5];
      if (v16)
      {
        v19[0] = v1[2];
        v19[1] = v16;
        v19[2] = v1[4];
        sub_100002D44(&qword_100145D70, &qword_1000FA980);
        type metadata accessor for URLQueryItem();
        v20 = a1;
        *(swift_allocObject() + 16) = xmmword_1000F7970;
        URLQueryItem.init(name:value:)();
        a1 = v20;
        URLQueryItem.init(name:value:)();
      }
    }

    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v17 = *(v13 - 8);
    v18 = *(v17 + 48);
    if (v18(v5, 1, v13) == 1)
    {
      (*(v17 + 16))(a1, v14, v13);
      (*(v10 + 8))(v12, v9);
      result = v18(v5, 1, v13);
      if (result != 1)
      {
        return sub_100007E14(v5, &unk_100144630, &qword_1000F5180);
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      return (*(v17 + 32))(a1, v5, v13);
    }
  }

  return result;
}

double sub_100087544@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v54 = a5;
  v51 = type metadata accessor for URLComponents();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v60 = a3;
    v61 = a4;

    v16._countAndFlagsBits = 0x65766974616E5FLL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17 = v60;
    v18 = v61;
  }

  else
  {

    v17 = 0;
    v18 = 0;
  }

  v53 = v17;
  URLComponents.init()();
  if (v18 && a6)
  {
    sub_100002D44(&qword_100145D70, &qword_1000FA980);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1000F7970;

    v19 = v53;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
  }

  else
  {

    v19 = v53;
  }

  URLComponents.queryItems.setter();
  v49 = v15;
  v48 = URLComponents.percentEncodedQuery.getter();
  v47 = v20;
  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v21._object = 0x80000001001019E0;
  String.append(_:)(v21);
  v52 = a1;
  if (a2)
  {
    v22 = a1;
  }

  else
  {
    v22 = 7104878;
  }

  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._object = 0x8000000100101A00;
  v25._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v25);
  if (v18)
  {
    v26 = v19;
  }

  else
  {
    v26 = 7104878;
  }

  if (v18)
  {
    v27 = v18;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  v28 = v27;
  String.append(_:)(*&v26);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x8000000100101A20;
  String.append(_:)(v29);
  if (a6)
  {
    v30 = v54;
  }

  else
  {
    v30 = 7104878;
  }

  if (a6)
  {
    v31 = a6;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  v32 = v31;
  String.append(_:)(*&v30);

  v33 = v60;
  v34 = v61;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000BEC4(v35, qword_10014FEA0);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = a2;
    v40 = a7;
    v41 = v39;
    v60 = v39;
    *v38 = 136315138;
    v42 = sub_1000BA1EC(v33, v34, &v60);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s", v38, 0xCu);
    sub_100007E74(v41);
    a7 = v40;
    a2 = v46;
  }

  else
  {
  }

  (*(v50 + 8))(v49, v51);
  *&v56 = v52;
  *(&v56 + 1) = a2;
  *&v57 = v53;
  *(&v57 + 1) = v18;
  *&v58 = v54;
  *(&v58 + 1) = a6;
  *&v59 = v48;
  *(&v59 + 1) = v47;
  v60 = v52;
  v61 = a2;
  v62 = v53;
  v63 = v18;
  v64 = v54;
  v65 = a6;
  v66 = v48;
  v67 = v47;
  sub_100087A70(&v56, v55);
  sub_100051A78(&v60);
  v43 = v57;
  *a7 = v56;
  a7[1] = v43;
  result = *&v58;
  v45 = v59;
  a7[2] = v58;
  a7[3] = v45;
  return result;
}

uint64_t sub_100087AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  return _swift_task_switch(sub_100087ACC, 0, 0);
}

uint64_t sub_100087ACC()
{
  v1 = v0[46];
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_100087BEC;
  v2 = swift_continuation_init();
  v3 = sub_100002D44(&qword_100145D78, &unk_1000FA990);
  v0[47] = v3;
  v0[41] = v3;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_10005B2B8;
  v0[37] = &unk_100138428;
  v0[38] = v2;
  [v1 defaultValuesWithCompletion:v0 + 34];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100087BEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {

    v2 = sub_1000882F8;
  }

  else
  {
    v2 = sub_100087D04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100087D04()
{
  v1 = v0[46];
  v0[49] = v0[42];
  v0[10] = v0;
  v0[15] = v0 + 42;
  v0[11] = sub_100087E28;
  v2 = swift_continuation_init();
  v0[41] = sub_100002D44(&qword_100145D80, &qword_1000FA9A0);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_10005B2B8;
  v0[37] = &unk_100138450;
  v0[38] = v2;
  [v1 campaignTokenWithCompletion:v0 + 34];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100087E28()
{
  v1 = *(*v0 + 112);
  *(*v0 + 400) = v1;
  if (v1)
  {

    v2 = sub_1000884C4;
  }

  else
  {
    v2 = sub_100087F40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100087F40()
{
  v1 = v0[46];
  v2 = v0[47];
  v0[51] = v0[42];
  v0[18] = v0;
  v0[23] = v0 + 42;
  v0[19] = sub_100088048;
  v3 = swift_continuation_init();
  v0[41] = v2;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_10005B2B8;
  v0[37] = &unk_100138478;
  v0[38] = v3;
  [v1 defaultValuesWithCompletion:v0 + 34];

  return _swift_continuation_await(v0 + 18);
}

uint64_t sub_100088048()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 416) = v2;
  if (v2)
  {

    v3 = sub_100088694;
  }

  else
  {
    v1[19] = 0u;
    v1[20] = 0u;
    v1[17] = 0u;
    v1[18] = 0u;
    sub_100051A78((v1 + 17));
    v3 = sub_100088174;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100088174()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v23 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = [v3 providerToken];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 campaignGroup];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();

  v13 = [v1 tokenForClientIdentifier:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100087544(v9, v11, v14, v16, v5, v7, (v0 + 208));
  v17 = *(v0 + 344);
  v18 = *(v0 + 224);
  v19 = *(v0 + 240);
  v20 = *(v0 + 256);
  *v17 = *(v0 + 208);
  v17[1] = v18;
  v17[2] = v19;
  v17[3] = v20;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000882F8(__n128 a1)
{
  swift_willThrow();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[46];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching campaign token & group with error %@", v7, 0xCu);
    sub_100007E14(v8, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v10 = v1[43];
  v10[2] = 0u;
  v10[3] = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v1[1];

  return v11();
}

uint64_t sub_1000884C4(__n128 a1)
{
  v2 = v1[49];
  swift_willThrow();

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BEC4(v3, qword_10014FEA0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[46];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching campaign token & group with error %@", v8, 0xCu);
    sub_100007E14(v9, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v11 = v1[43];
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  v12 = v1[1];

  return v12();
}

uint64_t sub_100088694(__n128 a1)
{
  v2 = v1[51];
  v3 = v1[49];
  swift_willThrow();

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000BEC4(v4, qword_10014FEA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[46];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error fetching campaign token & group with error %@", v9, 0xCu);
    sub_100007E14(v10, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v12 = v1[43];
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v13 = v1[1];

  return v13();
}

void sub_100088908()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "viewDidLoad", v3);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [objc_opt_self() blackColor];
  [v7 setBackgroundColor:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = *&v0[OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_matchingFlowView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v47 = v5;
  [v12 addSubview:v11];

  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000F57E0;
  v15 = [v11 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v14 + 32) = v20;
  v21 = [v11 bottomAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 layoutMarginsGuide];

  v25 = [v24 bottomAnchor];
  v26 = [v21 constraintEqualToAnchor:v25];

  *(v14 + 40) = v26;
  v27 = [v11 leadingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v28 layoutMarginsGuide];

  v31 = [v30 leadingAnchor];
  v32 = [v27 constraintEqualToAnchor:v31];

  *(v14 + 48) = v32;
  v33 = [v11 trailingAnchor];
  v34 = [v0 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 layoutMarginsGuide];

    v38 = [v37 trailingAnchor];
    v39 = [v33 constraintEqualToAnchor:v38];

    *(v14 + 56) = v39;
    sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 activateConstraints:isa];

    v41 = type metadata accessor for TaskPriority();
    v42 = v47;
    (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v44 = static MainActor.shared.getter();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = &protocol witness table for MainActor;
    v45[4] = v43;

    sub_1000C8DF8(0, 0, v42, &unk_1000FA9E8, v45);

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100088EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  sub_100002D44(&qword_100144528, &qword_1000F8580);
  v4[14] = swift_task_alloc();
  v5 = sub_100002D44(&qword_100142838, &qword_1000F58E0);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_100145DC8, &qword_1000FA9F0);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100089060, v8, v7);
}

uint64_t sub_100089060()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100141B48 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    swift_beginAccess();
    sub_100002D44(&qword_100142848, &qword_1000F58F0);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_1000123E4(0, &qword_100144540, OS_dispatch_queue_ptr);
    v7 = static OS_dispatch_queue.main.getter();
    *(v0 + 88) = v7;
    v8 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_100004610(&qword_100142858, &qword_100142838, &qword_1000F58E0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000577A8();
    Publisher.receive<A>(on:options:)();
    sub_100007E14(v6, &qword_100144528, &qword_1000F8580);

    (*(v4 + 8))(v3, v5);
    swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100004610(&qword_100145DD0, &qword_100145DC8, &qword_1000FA9F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v10 = Publisher<>.sink(receiveValue:)();

    (*(v14 + 8))(v2, v13);
    *&Strong[OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_musicRecognitionCancellable] = v10;
  }

  **(v0 + 96) = Strong == 0;

  v11 = *(v0 + 8);

  return v11();
}

void sub_1000893B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000C0B10(v2, v3, v4);
  }
}

id sub_10008943C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_musicRecognitionCancellable] = 0;
  v7 = OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_matchingFlowView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for AmbientCompactMatchingFlowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100089578(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_musicRecognitionCancellable] = 0;
  v4 = OBJC_IVAR____TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController_matchingFlowView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for AmbientCompactMatchingFlowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_100089674()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000896AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000896EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_100088EC0(a1, v4, v5, v6);
}

uint64_t sub_1000897C8()
{
  v1 = v0[18];
  v2 = [objc_opt_self() sharedGuard];
  v0[19] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100089918;
  v3 = swift_continuation_init();
  v0[17] = sub_100002D44(&qword_100142F70, &unk_1000F6350);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001C584;
  v0[13] = &unk_1001384F0;
  v0[14] = v3;
  [v2 authenticateForSubject:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100089918()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100089A94;
  }

  else
  {
    v2 = sub_100089A28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100089A28()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100089A94(__n128 a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_100089B20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x3534333939343832;
  a2[1] = 0xE900000000000039;
  a2[2] = 0xD000000000000024;
  a2[3] = 0x8000000100101B30;
  v4 = type metadata accessor for ShazamUpsellViewModel(0);
  URL.init(string:)();
  v5 = (a2 + v4[7]);
  v6 = [objc_opt_self() mainBundle];
  v24._object = 0xE000000000000000;
  v7._object = 0x8000000100101B90;
  v7._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

  sub_10000B730(v9, v10, v11);
  v12 = StringProtocol.localizedUppercase.getter();
  v14 = v13;

  *v5 = v12;
  v5[1] = v14;
  v15 = a2 + v4[8];
  *v15 = LocalizedStringKey.init(stringLiteral:)();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  v19 = a2 + v4[9];
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  return sub_100007F6C(a1, a2 + v4[10]);
}

uint64_t type metadata accessor for ShazamUpsellViewModel(uint64_t a1)
{
  result = qword_100145E30;
  if (!qword_100145E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100089D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100089E10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100089EC0(uint64_t a1)
{
  sub_1000085D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100089F7C(uint64_t a1)
{
  type metadata accessor for ContextMenuItemSection(0);

  sub_100002D44(&qword_100145EA8, &qword_1000FAAB8);
  sub_100002D44(&qword_100145EB8, &qword_1000FAAC0);
  sub_10008C92C();
  sub_10008C9A8();
  return Section<>.init(header:content:)();
}

uint64_t sub_10008A060(uint64_t a1)
{
  type metadata accessor for ContextMenuItemSection(0);

  sub_100002D44(&qword_100145F78, &qword_1000FAB08);
  type metadata accessor for UUID();
  sub_100002D44(&qword_100145EC8, &qword_1000FAAC8);
  sub_10008D044(&qword_100145F80, &qword_100145F78, &qword_1000FAB08);
  sub_10008CA2C();
  sub_10008D098(&qword_100145F88, type metadata accessor for ContextMenuItem, &unk_1000FAC70);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10008A188@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a1;
  v183 = a2;
  v142 = type metadata accessor for StreamingService(0);
  __chkstk_darwin(v142);
  v144 = &v141 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_100002D44(&qword_100145F90, &qword_1000FAB10);
  __chkstk_darwin(v153);
  v155 = &v141 - v3;
  v166 = sub_100002D44(&qword_100145F68, &qword_1000FAB00);
  __chkstk_darwin(v166);
  v156 = &v141 - v4;
  *&v161 = type metadata accessor for SyncAction(0);
  __chkstk_darwin(v161);
  v157 = (&v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_100002D44(&qword_100145F98, &qword_1000FAB18);
  __chkstk_darwin(v163);
  v165 = &v141 - v6;
  v150 = sub_100002D44(&qword_100145FA0, &qword_1000FAB20);
  __chkstk_darwin(v150);
  v152 = &v141 - v7;
  v164 = sub_100002D44(&qword_100145F48, &qword_1000FAAF8);
  __chkstk_darwin(v164);
  v154 = &v141 - v8;
  v175 = sub_100002D44(&qword_100145F38, &qword_1000FAAF0);
  __chkstk_darwin(v175);
  v167 = &v141 - v9;
  v151 = type metadata accessor for AsyncThrowingAction(0);
  __chkstk_darwin(v151);
  v143 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = type metadata accessor for _OpenAction(0);
  __chkstk_darwin(v182);
  v158 = (&v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_100002D44(&qword_100145FA8, &qword_1000FAB28);
  __chkstk_darwin(v145);
  v146 = &v141 - v12;
  v162 = sub_100002D44(&qword_100145F18, &qword_1000FAAE8);
  __chkstk_darwin(v162);
  v149 = &v141 - v13;
  v147 = type metadata accessor for AsyncAction(0);
  __chkstk_darwin(v147);
  v141 = (&v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for ShareAction(0);
  __chkstk_darwin(v148);
  *&v159 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_100002D44(&qword_100145FB0, &qword_1000FAB30);
  __chkstk_darwin(v179);
  v181 = &v141 - v16;
  v172 = sub_100002D44(&qword_100145FB8, &qword_1000FAB38);
  __chkstk_darwin(v172);
  v174 = &v141 - v17;
  v160 = sub_100002D44(&qword_100145FC0, &qword_1000FAB40);
  __chkstk_darwin(v160);
  v19 = &v141 - v18;
  v20 = sub_100002D44(&qword_100145FC8, &qword_1000FAB48);
  __chkstk_darwin(v20);
  v22 = &v141 - v21;
  v23 = sub_100002D44(&qword_100145EF8, &qword_1000FAAE0);
  __chkstk_darwin(v23);
  v25 = &v141 - v24;
  v173 = sub_100002D44(&qword_100145EE8, &qword_1000FAAD8);
  __chkstk_darwin(v173);
  v27 = &v141 - v26;
  v180 = sub_100002D44(&qword_100145ED8, &qword_1000FAAD0);
  __chkstk_darwin(v180);
  v176 = &v141 - v28;
  v29 = type metadata accessor for Locale();
  __chkstk_darwin(v29 - 8);
  v171 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v169 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OpenAction(0);
  __chkstk_darwin(v33);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v178 = type metadata accessor for URL();
  v168 = *(v178 - 8);
  __chkstk_darwin(v178);
  v170 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s14descr1001347F1V6ActionOMa(0);
  __chkstk_darwin(v37);
  v39 = (&v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for ContextMenuItem(0);
  sub_10008D0E8(&v177[*(v40 + 20)], v39, _s14descr1001347F1V6ActionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v178 = *v39;
      if (EnumCaseMultiPayload == 4)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v82 = String.init(localized:table:bundle:locale:comment:)();
        v84 = v83;
        v85 = v151;
        v86 = v143;
        static ButtonRole.cancel.getter();
        *v86 = v82;
        v86[1] = v84;
        v86[2] = 1937075312;
        v86[3] = 0xE400000000000000;
        *(v86 + *(v85 + 28)) = v178;
        sub_10008D0E8(v86, v152, type metadata accessor for AsyncThrowingAction);
        swift_storeEnumTagMultiPayload();
        sub_10008D098(&qword_100145F50, type metadata accessor for AsyncThrowingAction, &unk_1000FE6C0);
        sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
        v87 = v154;
        _ConditionalContent<>.init(storage:)();
        sub_100007FDC(v87, v165, &qword_100145F48, &qword_1000FAAF8);
        swift_storeEnumTagMultiPayload();
        sub_10008CE64();
        sub_10008CF50();
        v88 = v167;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v87, &qword_100145F48, &qword_1000FAAF8);
        sub_100007FDC(v88, v174, &qword_100145F38, &qword_1000FAAF0);
        swift_storeEnumTagMultiPayload();
        sub_10008CB74();
        sub_10008CDD8();
        v89 = v176;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v88, &qword_100145F38, &qword_1000FAAF0);
        sub_100007FDC(v89, v181, &qword_100145ED8, &qword_1000FAAD0);
        swift_storeEnumTagMultiPayload();
        sub_10008CAE8();
        sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v89, &qword_100145ED8, &qword_1000FAAD0);
        v90 = type metadata accessor for AsyncThrowingAction;
      }

      else
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v134 = String.init(localized:table:bundle:locale:comment:)();
        v136 = v135;
        v137 = v161;
        v86 = v157;
        static ButtonRole.destructive.getter();
        *v86 = v134;
        v86[1] = v136;
        v86[2] = 0x69662E6873617274;
        v86[3] = 0xEA00000000006C6CLL;
        *(v86 + *(v137 + 28)) = v178;
        sub_10008D0E8(v86, v152, type metadata accessor for SyncAction);
        swift_storeEnumTagMultiPayload();
        sub_10008D098(&qword_100145F50, type metadata accessor for AsyncThrowingAction, &unk_1000FE6C0);
        sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
        v138 = v154;
        _ConditionalContent<>.init(storage:)();
        sub_100007FDC(v138, v165, &qword_100145F48, &qword_1000FAAF8);
        swift_storeEnumTagMultiPayload();
        sub_10008CE64();
        sub_10008CF50();
        v139 = v167;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v138, &qword_100145F48, &qword_1000FAAF8);
        sub_100007FDC(v139, v174, &qword_100145F38, &qword_1000FAAF0);
        swift_storeEnumTagMultiPayload();
        sub_10008CB74();
        sub_10008CDD8();
        v140 = v176;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v139, &qword_100145F38, &qword_1000FAAF0);
        sub_100007FDC(v140, v181, &qword_100145ED8, &qword_1000FAAD0);
        swift_storeEnumTagMultiPayload();
        sub_10008CAE8();
        sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v140, &qword_100145ED8, &qword_1000FAAD0);
        v90 = type metadata accessor for SyncAction;
      }

      v98 = v90;
      v99 = v86;
      return sub_10008D150(v99, v98);
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v42 = v168;
        v43 = v170;
        v44 = v178;
        (*(v168 + 32))(v170, v39, v178);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v45 = String.init(localized:table:bundle:locale:comment:)();
        v47 = v46;
        v48 = v182;
        v49 = v158;
        (*(v42 + 16))(v158 + *(v182 + 28), v43, v44);
        *v49 = swift_getKeyPath();
        sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
        swift_storeEnumTagMultiPayload();
        v50 = (v49 + *(v48 + 20));
        *v50 = v45;
        v50[1] = v47;
        v51 = (v49 + *(v48 + 24));
        *v51 = 0x6C632E656C707061;
        v51[1] = 0xEF6C616369737361;
        sub_10008D0E8(v49, v155, type metadata accessor for _OpenAction);
        swift_storeEnumTagMultiPayload();
        sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
        sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
        v52 = v156;
        _ConditionalContent<>.init(storage:)();
        sub_100007FDC(v52, v165, &qword_100145F68, &qword_1000FAB00);
        swift_storeEnumTagMultiPayload();
        sub_10008CE64();
        sub_10008CF50();
        v53 = v167;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v52, &qword_100145F68, &qword_1000FAB00);
        sub_100007FDC(v53, v174, &qword_100145F38, &qword_1000FAAF0);
        swift_storeEnumTagMultiPayload();
        sub_10008CB74();
        sub_10008CDD8();
        v54 = v176;
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v53, &qword_100145F38, &qword_1000FAAF0);
        sub_100007FDC(v54, v181, &qword_100145ED8, &qword_1000FAAD0);
        swift_storeEnumTagMultiPayload();
        sub_10008CAE8();
        _ConditionalContent<>.init(storage:)();
        sub_100007E14(v54, &qword_100145ED8, &qword_1000FAAD0);
        v55 = v49;
LABEL_17:
        sub_10008D150(v55, type metadata accessor for _OpenAction);
        return (*(v42 + 8))(v170, v178);
      }

      v123 = v144;
      sub_10005DBF0(v39, v144);
      v124 = (v123 + v142[6]);
      v126 = *v124;
      v125 = v124[1];
      v127 = (v123 + v142[7]);
      v129 = *v127;
      v128 = v127[1];
      v130 = v182;
      v131 = v158;
      (*(v168 + 16))(v158 + *(v182 + 28), v123 + v142[5], v178);
      *v131 = swift_getKeyPath();
      sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
      swift_storeEnumTagMultiPayload();
      v132 = (v131 + *(v130 + 20));
      *v132 = v126;
      v132[1] = v125;
      v133 = (v131 + *(v130 + 24));
      *v133 = v129;
      v133[1] = v128;
      sub_10008D0E8(v131, v181, type metadata accessor for _OpenAction);
      swift_storeEnumTagMultiPayload();
      sub_10008CAE8();
      sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);

      _ConditionalContent<>.init(storage:)();
      sub_10008D150(v131, type metadata accessor for _OpenAction);
      v98 = type metadata accessor for StreamingService;
      v99 = v123;
      return sub_10008D150(v99, v98);
    }

    v178 = *v39;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v91 = String.init(localized:table:bundle:locale:comment:)();
    v93 = v92;
    v94 = v161;
    v77 = v157;
    static ButtonRole.cancel.getter();
    *v77 = v91;
    v77[1] = v93;
    v77[2] = 0x6461622E74786574;
    v77[3] = 0xEF73756C702E6567;
    *(v77 + *(v94 + 28)) = v178;
    sub_10008D0E8(v77, v155, type metadata accessor for SyncAction);
    swift_storeEnumTagMultiPayload();
    sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    v95 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v95, v165, &qword_100145F68, &qword_1000FAB00);
    swift_storeEnumTagMultiPayload();
    sub_10008CE64();
    sub_10008CF50();
    v96 = v167;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v95, &qword_100145F68, &qword_1000FAB00);
    sub_100007FDC(v96, v174, &qword_100145F38, &qword_1000FAAF0);
    swift_storeEnumTagMultiPayload();
    sub_10008CB74();
    sub_10008CDD8();
    v97 = v176;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v96, &qword_100145F38, &qword_1000FAAF0);
    sub_100007FDC(v97, v181, &qword_100145ED8, &qword_1000FAAD0);
    swift_storeEnumTagMultiPayload();
    sub_10008CAE8();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v97, &qword_100145ED8, &qword_1000FAAD0);
    v81 = type metadata accessor for SyncAction;
LABEL_14:
    v98 = v81;
    v99 = v77;
    return sub_10008D150(v99, v98);
  }

  v163 = v33;
  *&v161 = v35;
  v164 = v22;
  v165 = v25;
  v56 = v159;
  v166 = v23;
  v167 = v19;
  v177 = v27;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v42 = v168;
      v110 = v170;
      v111 = v39;
      v112 = v178;
      (*(v168 + 32))(v170, v111, v178);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v113 = String.init(localized:table:bundle:locale:comment:)();
      v115 = v114;
      v116 = v182;
      v117 = v158;
      (*(v42 + 16))(v158 + *(v182 + 28), v110, v112);
      *v117 = swift_getKeyPath();
      sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
      swift_storeEnumTagMultiPayload();
      v118 = (v117 + *(v116 + 20));
      *v118 = v113;
      v118[1] = v115;
      v119 = (v117 + *(v116 + 24));
      *v119 = 0xD000000000000011;
      v119[1] = 0x8000000100101C10;
      sub_10008D0E8(v117, v146, type metadata accessor for _OpenAction);
      swift_storeEnumTagMultiPayload();
      sub_10008D098(&qword_100145F20, type metadata accessor for AsyncAction, &unk_1000FE760);
      sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
      v120 = v149;
      _ConditionalContent<>.init(storage:)();
      sub_100007FDC(v120, v167, &qword_100145F18, &qword_1000FAAE8);
      swift_storeEnumTagMultiPayload();
      sub_10008CC00();
      sub_10008CCEC();
      v121 = v177;
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v120, &qword_100145F18, &qword_1000FAAE8);
      sub_100007FDC(v121, v174, &qword_100145EE8, &qword_1000FAAD8);
      swift_storeEnumTagMultiPayload();
      sub_10008CB74();
      sub_10008CDD8();
      v122 = v176;
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v121, &qword_100145EE8, &qword_1000FAAD8);
      sub_100007FDC(v122, v181, &qword_100145ED8, &qword_1000FAAD0);
      swift_storeEnumTagMultiPayload();
      sub_10008CAE8();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v122, &qword_100145ED8, &qword_1000FAAD0);
      v55 = v117;
      goto LABEL_17;
    }

    v178 = *v39;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v73 = String.init(localized:table:bundle:locale:comment:)();
    v75 = v74;
    v76 = v147;
    v77 = v141;
    static ButtonRole.destructive.getter();
    *v77 = v73;
    v77[1] = v75;
    v77[2] = 0x69662E6873617274;
    v77[3] = 0xEA00000000006C6CLL;
    *(v77 + *(v76 + 28)) = v178;
    sub_10008D0E8(v77, v146, type metadata accessor for AsyncAction);
    swift_storeEnumTagMultiPayload();
    sub_10008D098(&qword_100145F20, type metadata accessor for AsyncAction, &unk_1000FE760);
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    v78 = v149;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v78, v167, &qword_100145F18, &qword_1000FAAE8);
    swift_storeEnumTagMultiPayload();
    sub_10008CC00();
    sub_10008CCEC();
    v79 = v177;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v78, &qword_100145F18, &qword_1000FAAE8);
    sub_100007FDC(v79, v174, &qword_100145EE8, &qword_1000FAAD8);
    swift_storeEnumTagMultiPayload();
    sub_10008CB74();
    sub_10008CDD8();
    v80 = v176;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v79, &qword_100145EE8, &qword_1000FAAD8);
    sub_100007FDC(v80, v181, &qword_100145ED8, &qword_1000FAAD0);
    swift_storeEnumTagMultiPayload();
    sub_10008CAE8();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v80, &qword_100145ED8, &qword_1000FAAD0);
    v81 = type metadata accessor for AsyncAction;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    v100 = sub_100002D44(&qword_100145FD0, &unk_1000FEA80);
    v101 = v168;
    v102 = *(v168 + 32);
    v161 = *(v39 + *(v100 + 48));
    v103 = v170;
    v104 = v178;
    v102(v170, v39, v178);
    v105 = v148;
    (*(v101 + 16))(v56 + *(v148 + 24), v103, v104);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v56 = String.init(localized:table:bundle:locale:comment:)();
    v56[1] = v106;
    v56[2] = 0xD000000000000013;
    v56[3] = 0x80000001000FF600;
    *(v56 + *(v105 + 28)) = v161;
    sub_10008D0E8(v56, v164, type metadata accessor for ShareAction);
    swift_storeEnumTagMultiPayload();
    sub_10008D098(&qword_100145F00, type metadata accessor for OpenAction, &unk_1000FE800);
    sub_10008D098(&qword_100145F08, type metadata accessor for ShareAction, &unk_1000FE7B0);
    v107 = v165;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v107, v167, &qword_100145EF8, &qword_1000FAAE0);
    swift_storeEnumTagMultiPayload();
    sub_10008CC00();
    sub_10008CCEC();
    v108 = v177;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v107, &qword_100145EF8, &qword_1000FAAE0);
    sub_100007FDC(v108, v174, &qword_100145EE8, &qword_1000FAAD8);
    swift_storeEnumTagMultiPayload();
    sub_10008CB74();
    sub_10008CDD8();
    v109 = v176;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v108, &qword_100145EE8, &qword_1000FAAD8);
    sub_100007FDC(v109, v181, &qword_100145ED8, &qword_1000FAAD0);
    swift_storeEnumTagMultiPayload();
    sub_10008CAE8();
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v109, &qword_100145ED8, &qword_1000FAAD0);
    sub_10008D150(v56, type metadata accessor for ShareAction);
    return (*(v101 + 8))(v170, v178);
  }

  else
  {
    v57 = sub_100002D44(&qword_100145FD0, &unk_1000FEA80);
    v58 = v168;
    v59 = *(v168 + 32);
    v159 = *(v39 + *(v57 + 48));
    v60 = v170;
    v61 = v178;
    v59(v170, v39, v178);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v62 = String.init(localized:table:bundle:locale:comment:)();
    v64 = v63;
    v65 = v163;
    v66 = v161;
    (*(v58 + 16))(v161 + *(v163 + 28), v60, v61);
    *v66 = swift_getKeyPath();
    sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
    swift_storeEnumTagMultiPayload();
    v67 = (v66 + v65[5]);
    *v67 = v62;
    v67[1] = v64;
    v68 = (v66 + v65[6]);
    *v68 = 0xD000000000000010;
    v68[1] = 0x80000001000FF1E0;
    *(v66 + v65[8]) = v159;
    sub_10008D0E8(v66, v164, type metadata accessor for OpenAction);
    swift_storeEnumTagMultiPayload();
    sub_10008D098(&qword_100145F00, type metadata accessor for OpenAction, &unk_1000FE800);
    sub_10008D098(&qword_100145F08, type metadata accessor for ShareAction, &unk_1000FE7B0);
    v69 = v165;
    _ConditionalContent<>.init(storage:)();
    sub_100007FDC(v69, v167, &qword_100145EF8, &qword_1000FAAE0);
    swift_storeEnumTagMultiPayload();
    sub_10008CC00();
    sub_10008CCEC();
    v70 = v177;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v69, &qword_100145EF8, &qword_1000FAAE0);
    sub_100007FDC(v70, v174, &qword_100145EE8, &qword_1000FAAD8);
    swift_storeEnumTagMultiPayload();
    sub_10008CB74();
    sub_10008CDD8();
    v71 = v176;
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v70, &qword_100145EE8, &qword_1000FAAD8);
    sub_100007FDC(v71, v181, &qword_100145ED8, &qword_1000FAAD0);
    swift_storeEnumTagMultiPayload();
    sub_10008CAE8();
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v71, &qword_100145ED8, &qword_1000FAAD0);
    sub_10008D150(v66, type metadata accessor for OpenAction);
    return (*(v58 + 8))(v170, v178);
  }
}

uint64_t sub_10008C77C()
{

  sub_100002D44(&qword_100145E80, &qword_1000FAAA8);
  type metadata accessor for UUID();
  sub_100002D44(&qword_100145E88, &qword_1000FAAB0);
  sub_10008D044(&qword_100145E90, &qword_100145E80, &qword_1000FAAA8);
  sub_10008C894();
  sub_10008D098(&qword_100145F70, type metadata accessor for ContextMenuItemSection, &unk_1000FAC38);
  return ForEach<>.init(_:content:)();
}

unint64_t sub_10008C894()
{
  result = qword_100145E98;
  if (!qword_100145E98)
  {
    sub_100004370(&qword_100145E88, &qword_1000FAAB0);
    sub_10008C92C();
    sub_10008C9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145E98);
  }

  return result;
}

unint64_t sub_10008C92C()
{
  result = qword_100145EA0;
  if (!qword_100145EA0)
  {
    sub_100004370(&qword_100145EA8, &qword_1000FAAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145EA0);
  }

  return result;
}

unint64_t sub_10008C9A8()
{
  result = qword_100145EB0;
  if (!qword_100145EB0)
  {
    sub_100004370(&qword_100145EB8, &qword_1000FAAC0);
    sub_10008CA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145EB0);
  }

  return result;
}

unint64_t sub_10008CA2C()
{
  result = qword_100145EC0;
  if (!qword_100145EC0)
  {
    sub_100004370(&qword_100145EC8, &qword_1000FAAC8);
    sub_10008CAE8();
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145EC0);
  }

  return result;
}

unint64_t sub_10008CAE8()
{
  result = qword_100145ED0;
  if (!qword_100145ED0)
  {
    sub_100004370(&qword_100145ED8, &qword_1000FAAD0);
    sub_10008CB74();
    sub_10008CDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145ED0);
  }

  return result;
}

unint64_t sub_10008CB74()
{
  result = qword_100145EE0;
  if (!qword_100145EE0)
  {
    sub_100004370(&qword_100145EE8, &qword_1000FAAD8);
    sub_10008CC00();
    sub_10008CCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145EE0);
  }

  return result;
}

unint64_t sub_10008CC00()
{
  result = qword_100145EF0;
  if (!qword_100145EF0)
  {
    sub_100004370(&qword_100145EF8, &qword_1000FAAE0);
    sub_10008D098(&qword_100145F00, type metadata accessor for OpenAction, &unk_1000FE800);
    sub_10008D098(&qword_100145F08, type metadata accessor for ShareAction, &unk_1000FE7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145EF0);
  }

  return result;
}

unint64_t sub_10008CCEC()
{
  result = qword_100145F10;
  if (!qword_100145F10)
  {
    sub_100004370(&qword_100145F18, &qword_1000FAAE8);
    sub_10008D098(&qword_100145F20, type metadata accessor for AsyncAction, &unk_1000FE760);
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145F10);
  }

  return result;
}

unint64_t sub_10008CDD8()
{
  result = qword_100145F30;
  if (!qword_100145F30)
  {
    sub_100004370(&qword_100145F38, &qword_1000FAAF0);
    sub_10008CE64();
    sub_10008CF50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145F30);
  }

  return result;
}

unint64_t sub_10008CE64()
{
  result = qword_100145F40;
  if (!qword_100145F40)
  {
    sub_100004370(&qword_100145F48, &qword_1000FAAF8);
    sub_10008D098(&qword_100145F50, type metadata accessor for AsyncThrowingAction, &unk_1000FE6C0);
    sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145F40);
  }

  return result;
}

unint64_t sub_10008CF50()
{
  result = qword_100145F60;
  if (!qword_100145F60)
  {
    sub_100004370(&qword_100145F68, &qword_1000FAB00);
    sub_10008D098(&qword_100145F58, type metadata accessor for SyncAction, &unk_1000FE670);
    sub_10008D098(&qword_100145F28, type metadata accessor for _OpenAction, &unk_1000FE710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145F60);
  }

  return result;
}

uint64_t sub_10008D044(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008D098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008D0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008D150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10008D1C4()
{
  result = qword_100145FD8;
  if (!qword_100145FD8)
  {
    sub_100004370(&qword_100145FE0, &qword_1000FABB8);
    sub_10008D248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145FD8);
  }

  return result;
}

unint64_t sub_10008D248()
{
  result = qword_100145FE8;
  if (!qword_100145FE8)
  {
    sub_100004370(&qword_100145FF0, &unk_1000FABC0);
    sub_10008C894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100145FE8);
  }

  return result;
}

uint64_t sub_10008D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s14descr1001347F1V6ActionOMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10008D3E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s14descr1001347F1V6ActionOMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10008D500(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = _s14descr1001347F1V6ActionOMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008D598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008D668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008D740(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008D778(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100008580();
    if (v2 <= 0x3F)
    {
      sub_10008D814(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10008D814(uint64_t a1)
{
  if (!qword_1001460F0)
  {
    type metadata accessor for ContextMenuItem(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1001460F0);
    }
  }
}

unint64_t sub_10008D86C()
{
  result = qword_1001439E0;
  if (!qword_1001439E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439E0);
  }

  return result;
}

uint64_t sub_10008D8CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_10008D93C()
{
  [*(v0 + OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView) setHidden:1];
  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition13ListeningView_extendedListeningTextChangeTask))
  {

    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    Task.cancel()();
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel);
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v3._object = 0x80000001000FFF60;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  v5 = String._bridgeToObjectiveC()();

  [v1 setText:v5];
}

double sub_10008DA90()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = *&v0[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel];
  v6 = [objc_opt_self() mainBundle];
  v17._object = 0xE000000000000000;
  v7._object = 0x80000001000FFF60;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  v9 = String._bridgeToObjectiveC()();

  [v5 setText:v9];

  [*&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView] setHidden:0];
  v10 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_extendedListeningTextChangeTask;
  if (*&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_extendedListeningTextChangeTask])
  {

    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    Task.cancel()();
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  *&v1[v10] = sub_1000C1D74(0, 0, v4, &unk_1000FACF8, v14);

  return result;
}

id sub_10008DCE4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.262745098 green:0.533333333 blue:0.996078431 alpha:1.0];
  qword_100146128 = result;
  return result;
}

id sub_10008DD38()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0588235294 green:0.129411765 blue:0.250980392 alpha:1.0];
  qword_100146130 = result;
  return result;
}

void sub_10008DDA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = [objc_opt_self() mainBundle];
  v12 = objc_allocWithZone(BSUICAPackageView);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithPackageName:v13 inBundle:v11];

  if (v14)
  {
    *&v5[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningView] = v14;
    v15 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel;
    *&v5[v15] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v16 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_cancelButton;
    *&v5[v16] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v17 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView;
    v18 = type metadata accessor for SpectralOutputWaveformView();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
    *&v19[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
    v19[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 1;
    v23.receiver = v19;
    v23.super_class = v18;
    v20 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100023F14();

    *&v5[v17] = v20;
    *&v5[OBJC_IVAR____TtC16MusicRecognition13ListeningView_extendedListeningTextChangeTask] = 0;
    *&v5[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabelVerticalAnchor] = 0;
    v22.receiver = v5;
    v22.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
    sub_10008DFC8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008DFC8()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100146198, &unk_1000FF020);
  __chkstk_darwin(v2 - 8);
  v4 = &v83 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v84 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v8}];
  v11 = *&v0[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v11];
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v12];

  v13 = [v11 layer];
  [v13 setCompositingFilter:kCAFilterScreenBlendMode];

  v14 = *&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v14];
  v15 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  [v14 setFont:v15];

  v16 = [objc_opt_self() whiteColor];
  [v14 setTextColor:v16];

  v83 = objc_opt_self();
  v17 = [v83 mainBundle];
  v91._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x80000001000FFF60;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v91);

  v20 = String._bridgeToObjectiveC()();

  [v14 setText:v20];

  [v14 setNumberOfLines:2];
  v21 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v21];

  v85 = v14;
  [v14 setIsAccessibilityElement:0];
  v22 = *&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_cancelButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v22];
  v23 = [objc_opt_self() configurationWithPointSize:5 weight:19.0];
  static UIButton.Configuration.filled()();
  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  v88 = v24;
  UIButton.Configuration.image.setter();
  if (qword_100141BF0 != -1)
  {
    swift_once();
  }

  v27 = qword_100146130;
  UIButton.Configuration.baseBackgroundColor.setter();
  if (qword_100141BE8 != -1)
  {
    swift_once();
  }

  v28 = qword_100146128;
  UIButton.Configuration.baseForegroundColor.setter();
  (v86)[13](v84, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v87);
  UIButton.Configuration.cornerStyle.setter();
  v29 = v89;
  v30 = v90;
  (*(v89 + 16))(v4, v10, v90);
  (*(v29 + 56))(v4, 0, 1, v30);
  UIButton.configuration.setter();
  [v22 setContentVerticalAlignment:3];
  [v22 setContentHorizontalAlignment:3];
  v31 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityIdentifier:v31];

  v32 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityLabel:v32];

  v33 = [v83 mainBundle];
  v92._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000033;
  v34._object = 0x8000000100101D10;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v92._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v92);

  v36 = String._bridgeToObjectiveC()();

  [v22 setAccessibilityHint:v36];

  v87 = v10;
  v37 = *&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView];
  v83 = v37;
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v37];
  v38 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v38];

  v86 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000FACC0;
  v40 = [v11 heightAnchor];
  v41 = [v1 heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-12.0];

  *(v39 + 32) = v42;
  v43 = [v11 widthAnchor];
  v44 = [v1 heightAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-12.0];

  *(v39 + 40) = v45;
  v46 = [v11 leadingAnchor];
  v47 = [v1 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:7.0];

  *(v39 + 48) = v48;
  v49 = [v11 centerYAnchor];
  v50 = [v1 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-2.0];

  *(v39 + 56) = v51;
  v52 = v85;
  v53 = [v85 leadingAnchor];
  v84 = v1;
  v54 = [v11 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:2.0];

  *(v39 + 64) = v55;
  v56 = [v52 trailingAnchor];
  v57 = v83;
  v58 = [v83 leadingAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:-7.0];

  *(v39 + 72) = v59;
  v60 = [v22 trailingAnchor];
  v61 = v84;
  v62 = [v84 trailingAnchor];
  if (qword_100141BF8 != -1)
  {
    swift_once();
  }

  v63 = [v60 constraintEqualToAnchor:v62 constant:*&qword_100146138];

  *(v39 + 80) = v63;
  v64 = [v22 centerYAnchor];
  v65 = [v61 centerYAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v39 + 88) = v66;
  v67 = [v22 widthAnchor];
  v68 = [v67 constraintEqualToConstant:51.0];

  *(v39 + 96) = v68;
  v69 = [v22 heightAnchor];
  v70 = [v69 constraintEqualToConstant:51.0];

  *(v39 + 104) = v70;
  v71 = [v57 centerYAnchor];
  v72 = [v61 centerYAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v39 + 112) = v73;
  v74 = [v57 widthAnchor];
  v75 = [v74 constraintEqualToConstant:36.0];

  *(v39 + 120) = v75;
  v76 = [v57 heightAnchor];
  v77 = [v76 constraintEqualToConstant:30.0];

  *(v39 + 128) = v77;
  v78 = [v57 trailingAnchor];
  v79 = [v22 leadingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-18.0];

  *(v39 + 136) = v80;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v86 activateConstraints:isa];

  return (*(v89 + 8))(v87, v90);
}

void sub_10008ED14(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [objc_opt_self() mainBundle];
  v6 = objc_allocWithZone(BSUICAPackageView);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithPackageName:v7 inBundle:v5];

  if (v8)
  {
    *&v2[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningView] = v8;
    v9 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel;
    *&v2[v9] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v10 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_cancelButton;
    *&v2[v10] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v11 = OBJC_IVAR____TtC16MusicRecognition13ListeningView_waveformView;
    v12 = type metadata accessor for SpectralOutputWaveformView();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
    *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
    v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 1;
    v18.receiver = v13;
    v18.super_class = v12;
    v14 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100023F14();

    *&v2[v11] = v14;
    *&v2[OBJC_IVAR____TtC16MusicRecognition13ListeningView_extendedListeningTextChangeTask] = 0;
    *&v2[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabelVerticalAnchor] = 0;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v17, "initWithCoder:", a1);
    if (v15)
    {
      v16 = v15;
      sub_10008DFC8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10008EF44()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabelVerticalAnchor])
  {
    v1 = sub_1000B9750();
    v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel];
    if (v1)
    {
      v3 = [v2 _tightBoundingBoxLayoutGuide];
      v4 = [v3 topAnchor];

      v5 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
      v6 = [v5 bottomAnchor];
    }

    else
    {
      v4 = [v2 centerYAnchor];
      v6 = [*&v0[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningView] centerYAnchor];
    }

    v7 = [v4 constraintEqualToAnchor:v6];

    v8 = objc_opt_self();
    sub_100002D44(&qword_100142810, &qword_1000F65A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F8490;
    *(v9 + 32) = v7;
    sub_100025014();
    v10 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];
  }
}

uint64_t sub_10008F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_10008F258, v7, v6);
}

uint64_t sub_10008F258()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10008F324;

  return sub_100057934(9000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10008F324()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[12] = v0;

  v6 = *(v4 + 8);
  v2[13] = v6;
  v2[14] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {
    v9 = sub_10008F640;
  }

  else
  {
    v9 = sub_10008F4D0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10008F4D0()
{
  countAndFlagsBits = v0[6]._countAndFlagsBits;
  static Task<>.checkCancellation()();
  if (countAndFlagsBits)
  {

    object = v0->_object;

    return object();
  }

  else
  {
    v4 = objc_opt_self();
    v0[7]._object = v4;
    v5 = [v4 mainBundle];
    v12._object = 0xE000000000000000;
    v6._object = 0x8000000100101D50;
    v6._countAndFlagsBits = 0xD000000000000029;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v12);

    v0[8] = v8;
    v0[9]._countAndFlagsBits = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[9]._object = v10;
    v0[10]._countAndFlagsBits = v9;

    return _swift_task_switch(sub_10008F6B4, v10, v9);
  }
}

uint64_t sub_10008F640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F6B4(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[2];
  v1[21] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v1[22] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v1;
  v6[1] = sub_10008F7CC;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10008F7CC()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10008F950, v3, v2);
}

uint64_t sub_10008F950()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_10008F9B4, v1, v2);
}

uint64_t sub_10008F9B4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_10008FA80;

  return sub_100057934(8000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10008FA80()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(*v1 + 200) = v0;

  v3(v4, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_10008FD8C;
  }

  else
  {
    v8 = sub_10008FC28;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10008FC28()
{
  object = v0[12]._object;
  static Task<>.checkCancellation()();
  if (object)
  {

    v2 = v0->_object;

    return v2();
  }

  else
  {
    v4 = [v0[7]._object mainBundle];
    v11._object = 0xE000000000000000;
    v5._object = 0x8000000100101DB0;
    v5._countAndFlagsBits = 0xD000000000000029;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

    v0[13] = v7;
    v0[14]._countAndFlagsBits = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[14]._object = v9;
    v0[15]._countAndFlagsBits = v8;

    return _swift_task_switch(sub_10008FE00, v9, v8);
  }
}

uint64_t sub_10008FD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008FE00(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[2];
  v1[31] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v1[32] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v1[33] = v6;
  *v6 = v1;
  v6[1] = sub_10008FF18;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10008FF18()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10009009C, v3, v2);
}

uint64_t sub_10009009C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100090100, v1, v2);
}

uint64_t sub_100090100()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100090178(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100002D44(&qword_1001461A0, &unk_1000FAD00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = objc_opt_self();
  v19 = *&a2[OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel];
  v20 = v12;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v25 = sub_1000905F4;
  v26 = v13;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000C1C84;
  v24 = &unk_1001385B8;
  v14 = _Block_copy(&aBlock);
  v15 = a2;

  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v11, v8);
  v25 = sub_100090708;
  v26 = v17;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000A956C;
  v24 = &unk_100138608;
  v18 = _Block_copy(&aBlock);

  [v20 transitionWithView:v19 duration:5242880 options:v14 animations:v18 completion:0.35];
  _Block_release(v18);
  _Block_release(v14);
}

uint64_t sub_1000904B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000904F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_10008F154(a1, v4, v5, v6);
}

uint64_t sub_1000905B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000905F4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16MusicRecognition13ListeningView_listeningLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

uint64_t sub_10009065C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100090674()
{
  v1 = sub_100002D44(&qword_1001461A0, &unk_1000FAD00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100090794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000908E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PlayInAppleMusicView(uint64_t a1)
{
  result = qword_100146250;
  if (!qword_100146250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090A6C(uint64_t a1)
{
  sub_100008ADC(319);
  if (v1 <= 0x3F)
  {
    sub_100090BB0(319, &unk_100146260, type metadata accessor for PlayInAppleMusicViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100090BB0(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100090BB0(319, &qword_1001432F0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100090BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100090C30(uint64_t a1)
{
  result = static Color.secondary.getter();
  qword_1001461A8 = result;
  return result;
}

uint64_t sub_100090C50()
{
  v0 = sub_100002D44(&qword_1001462C0, &qword_1000FADB8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_100002D44(&qword_1001462A8, &qword_1000FADB0);
  sub_10000D0C8(v13, qword_1001461B0);
  v24 = sub_10000BEC4(v13, qword_1001461B0);
  v14 = v7[13];
  v14(v12, enum case for DynamicTypeSize.xSmall(_:), v6);
  v14(v9, enum case for DynamicTypeSize.xxLarge(_:), v6);
  sub_100095E9C(&qword_1001462C8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v16 = v7[2];
    v16(v5, v12, v6);
    v16(&v5[*(v0 + 48)], v9, v6);
    sub_100007FDC(v5, v2, &qword_1001462C0, &qword_1000FADB8);
    v17 = *(v0 + 48);
    v22 = v9;
    v23 = v12;
    v21 = v0;
    v18 = v7[4];
    v19 = v24;
    v18(v24, v2, v6);
    v20 = v7[1];
    v20(&v2[v17], v6);
    sub_100094AA0(v5, v2);
    v18(v19 + *(v13 + 36), &v2[*(v21 + 48)], v6);
    v20(v22, v6);
    v20(v23, v6);
    return (v20)(v2, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100090F84(double a1)
{
  result = static Font.body.getter();
  qword_1001461C8 = result;
  return result;
}

uint64_t sub_100090FA4(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 12.0;
  if (result)
  {
    v2 = 0.0;
  }

  qword_1001461D0 = *&v2;
  return result;
}

uint64_t sub_100090FD4(uint64_t a1)
{
  result = static Font.subheadline.getter();
  qword_1001461D8 = result;
  return result;
}

uint64_t sub_100091014()
{
  result = static Font.title3.getter();
  qword_1001461E8 = result;
  return result;
}

uint64_t sub_100091034()
{
  v0 = [objc_opt_self() systemFillColor];
  result = Color.init(uiColor:)();
  qword_1001461F0 = result;
  return result;
}

uint64_t sub_100091074@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v130 = a2;
  v3 = sub_100002D44(&qword_1001462D0, &qword_1000FADC0);
  __chkstk_darwin(v3 - 8);
  v131 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v107 - v6;
  v125 = type metadata accessor for MusicSubscriptionOffer.Options();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ButtonBorderShape();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for BorderedProminentButtonStyle();
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlayInAppleMusicView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_100002D44(&qword_1001462D8, &qword_1000FADC8);
  __chkstk_darwin(v14);
  v16 = &v107 - v15;
  v108 = sub_100002D44(&qword_1001462E0, &qword_1000FADD0);
  __chkstk_darwin(v108);
  v18 = &v107 - v17;
  v112 = sub_100002D44(&qword_1001462E8, &qword_1000FADD8);
  __chkstk_darwin(v112);
  v20 = &v107 - v19;
  v120 = sub_100002D44(&qword_1001462F0, &qword_1000FADE0);
  __chkstk_darwin(v120);
  v116 = &v107 - v21;
  v122 = sub_100002D44(&qword_1001462F8, &qword_1000FADE8);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v133 = &v107 - v22;
  v128 = sub_100002D44(&qword_100146300, &qword_1000FADF0);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = &v107 - v25;
  sub_100094B10(a1, &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v117 = v13;
  v27 = swift_allocObject();
  v111 = v26;
  v118 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094B78(v118, v27 + v26);
  v137 = a1;
  sub_100002D44(&qword_100146308, &qword_1000FADF8);
  sub_100094BFC();
  Button.init(action:label:)();
  v119 = a1;
  v28 = *(a1 + 24);
  v136 = *(a1 + 16);
  v138 = v136;
  v139 = v28;
  v132 = v28;
  v135 = sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  v29 = *(v144 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonBackgroundColor);

  KeyPath = swift_getKeyPath();
  v138 = v29;
  v31 = AnyShapeStyle.init<A>(_:)();
  v32 = &v16[*(v14 + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  BorderedProminentButtonStyle.init()();
  sub_100094F78();
  sub_100095E9C(&qword_100145910, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v33 = v109;
  View.buttonStyle<A>(_:)();
  (*(v110 + 8))(v10, v33);
  sub_100007E14(v16, &qword_1001462D8, &qword_1000FADC8);
  if (qword_100141C18 != -1)
  {
    swift_once();
  }

  v34 = qword_1001461D0;
  v35 = &v18[*(v108 + 36)];
  v36 = *(type metadata accessor for RoundedRectangle() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = v34;
  v35[1] = v34;
  *(v35 + *(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)) = 256;
  if (static Solarium.isEnabled.getter())
  {
    v39 = v113;
    static ButtonBorderShape.capsule.getter();
  }

  else
  {
    v39 = v113;
    static ButtonBorderShape.automatic.getter();
  }

  v40 = swift_getKeyPath();
  v41 = &v20[*(v112 + 36)];
  v42 = sub_100002D44(&qword_100145918, &qword_1000F9FF8);
  (*(v114 + 32))(v41 + *(v42 + 28), v39, v115);
  *v41 = v40;
  sub_100095170(v18, v20);
  sub_1000951E0();
  v43 = v116;
  View.accessibilityIdentifier(_:)();
  sub_100007E14(v20, &qword_1001462E8, &qword_1000FADD8);
  v144 = v136;
  v145 = v132;
  State.projectedValue.getter();
  v44 = v138;
  v45 = v139;
  v46 = v140;
  swift_getKeyPath();
  v138 = v44;
  v139 = v45;
  v140 = v46;
  v115 = sub_100002D44(&qword_100146388, &qword_1000FAEC8);
  Binding.subscript.getter();

  v47 = v118;
  sub_100094B10(v119, v118);
  v48 = v111;
  v49 = swift_allocObject();
  sub_100094B78(v47, v49 + v48);
  v117 = sub_100002D44(&qword_100146390, &qword_1000FAED0);
  v118 = sub_100095478(&qword_100146398, &qword_1001462F0, &qword_1000FADE0, sub_1000951E0);
  v119 = sub_10009552C();
  v50 = v120;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_100007E14(v43, &qword_1001462F0, &qword_1000FADE0);
  v51 = v136;
  v52 = v132;
  v144 = v136;
  v145 = v132;
  State.projectedValue.getter();
  v53 = v138;
  v54 = v139;
  v55 = v140;
  swift_getKeyPath();
  v144 = v53;
  v145 = v54;
  v146 = v55;
  Binding.subscript.getter();

  LODWORD(v116) = v143;

  v138 = v51;
  v139 = v52;
  State.wrappedValue.getter();
  v56 = v142;
  swift_getKeyPath();
  v138 = v56;
  sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  swift_beginAccess();
  v58 = v124;
  v59 = v123;
  v60 = v125;
  (*(v124 + 16))(v123, v56 + v57, v125);

  v138 = v50;
  v139 = v117;
  v140 = v118;
  v141 = v119;
  v61 = 1;
  swift_getOpaqueTypeConformance2();
  v62 = v122;
  v63 = v133;
  View.musicSubscriptionOffer(isPresented:options:onLoadCompletion:)();

  (*(v58 + 8))(v59, v60);
  v64 = v62;
  v65 = v136;
  (*(v121 + 8))(v63, v64);
  v138 = v65;
  v139 = v52;
  State.wrappedValue.getter();
  v66 = *(v144 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers);

  if (v66)
  {
    v138 = v65;
    v139 = v52;
    State.wrappedValue.getter();
    v67 = sub_1000966D4();
    v69 = v68;

    v138 = v67;
    v139 = v69;
    sub_10000B730(v70, v71, v72);
    v73 = Text.init<A>(_:)();
    v75 = v74;
    v77 = v76;
    if (qword_100141C20 != -1)
    {
      swift_once();
    }

    v78 = Text.font(_:)();
    v80 = v79;
    v82 = v81;
    sub_10000BFBC(v73, v75, v77 & 1);

    if (qword_100141C28 != -1)
    {
      swift_once();
    }

    v83 = Text.fontWeight(_:)();
    v85 = v84;
    v87 = v86;
    sub_10000BFBC(v78, v80, v82 & 1);

    if (qword_100141C00 != -1)
    {
      swift_once();
    }

    v138 = qword_1001461A8;

    v88 = Text.foregroundStyle<A>(_:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    sub_10000BFBC(v83, v85, v87 & 1);

    v138 = v88;
    v139 = v90;
    LOBYTE(v140) = v92 & 1;
    v141 = v94;
    v95 = v129;
    View.accessibilityIdentifier(_:)();
    sub_10000BFBC(v88, v90, v92 & 1);

    v61 = 0;
  }

  else
  {
    v95 = v129;
  }

  v96 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  (*(*(v96 - 8) + 56))(v95, v61, 1, v96);
  v97 = v127;
  v98 = *(v127 + 16);
  v99 = v126;
  v100 = v134;
  v101 = v128;
  v98(v126, v134, v128);
  v102 = v131;
  sub_100007FDC(v95, v131, &qword_1001462D0, &qword_1000FADC0);
  v103 = v130;
  v98(v130, v99, v101);
  v104 = sub_100002D44(&qword_1001463B8, &qword_1000FAF38);
  sub_100007FDC(v102, &v103[*(v104 + 48)], &qword_1001462D0, &qword_1000FADC0);
  sub_100007E14(v95, &qword_1001462D0, &qword_1000FADC0);
  v105 = *(v97 + 8);
  v105(v100, v101);
  sub_100007E14(v102, &qword_1001462D0, &qword_1000FADC0);
  return (v105)(v99, v101);
}

double sub_1000921B8(uint64_t a1)
{
  v2 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  if (*a1)
  {
    (*a1)(v3);
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v17 = v7;
  v18 = v6;
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  v8 = *(v16 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers);

  if (!v8)
  {
    sub_100092530();
    return result;
  }

  v17 = v7;
  v18 = v6;
  State.wrappedValue.getter();
  sub_1000961A4(v5);

  v9 = type metadata accessor for URL();
  v10 = (*(*(v9 - 8) + 48))(v5, 1, v9);
  sub_100007E14(v5, &unk_100144630, &qword_1000F5180);
  if (v10 == 1)
  {
    v17 = v7;
    v18 = v6;
    State.wrappedValue.getter();
    v11 = v16;
    swift_getKeyPath();
    v17 = v11;
    sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = v11;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    *(v11 + 16) = (*(v11 + 16) & 1) == 0;
    v17 = v11;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_9:

    return result;
  }

  v17 = v7;
  v18 = v6;
  State.wrappedValue.getter();
  v13 = v16;
  if (*(v16 + 17) == 1)
  {
    *(v16 + 17) = 1;
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v15 - 2) = v13;
  *(&v15 - 8) = 1;
  v17 = v13;
  sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100092530()
{
  v1 = v0;
  v2 = type metadata accessor for OpenURLAction();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v4 - 8);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v40 = type metadata accessor for PlayInAppleMusicView(0);
  __chkstk_darwin(v40);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000BEC4(v17, qword_10014FEA0);
  sub_100094B10(v0, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v19;
    v38 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315138;
    v22 = *(v16 + 2);
    v23 = *(v16 + 3);
    v45 = v21;
    v46 = v22;
    v47 = v23;
    sub_100002D44(&qword_100146358, &qword_1000FAE28);
    State.wrappedValue.getter();
    v24 = v44;
    if (!*(v44 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers))
    {
      sub_100007FDC(v44 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicClassicalURL, v8, &unk_100144630, &qword_1000F5180);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {

        (*(v10 + 32))(v14, v8, v9);
        goto LABEL_8;
      }

      sub_100007E14(v8, &unk_100144630, &qword_1000F5180);
    }

    (*(v10 + 16))(v14, v24 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL, v9);

LABEL_8:
    sub_100095E9C(&qword_100142378, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v10 + 8))(v14, v9);
    sub_100095E3C(v16, type metadata accessor for PlayInAppleMusicView);
    v28 = sub_1000BA1EC(v25, v27, &v45);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v37, "Opening %s", v20, 0xCu);
    sub_100007E74(v36);

    v2 = v38;
    goto LABEL_10;
  }

  sub_100095E3C(v16, type metadata accessor for PlayInAppleMusicView);
LABEL_10:
  v29 = v42;
  sub_100041144(v42);
  v30 = *(v1 + 24);
  v46 = *(v1 + 16);
  v47 = v30;
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  v31 = v45;
  if (*(v45 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers))
  {
    v32 = v41;
    (*(v10 + 16))(v41, v45 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL, v9);
  }

  else
  {
    v33 = v39;
    sub_100007FDC(v45 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicClassicalURL, v39, &unk_100144630, &qword_1000F5180);
    v34 = (*(v10 + 48))(v33, 1, v9);
    v32 = v41;
    if (v34 != 1)
    {

      (*(v10 + 32))(v32, v33, v9);
      goto LABEL_15;
    }

    sub_100007E14(v33, &unk_100144630, &qword_1000F5180);
    (*(v10 + 16))(v32, v31 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL, v9);
  }

LABEL_15:
  OpenURLAction.callAsFunction(_:)();
  (*(v10 + 8))(v32, v9);
  return (*(v43 + 8))(v29, v2);
}

uint64_t sub_100092B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Axis.Set.horizontal.getter();
  sub_100092FB0(&v42);
  v37 = v52;
  v38 = v53;
  v39 = v54;
  v40 = v55;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v27 = v42;
  v28 = v43;
  v41[10] = v52;
  v41[11] = v53;
  v41[12] = v54;
  v41[13] = v55;
  v41[6] = v48;
  v41[7] = v49;
  v41[8] = v50;
  v41[9] = v51;
  v41[2] = v44;
  v41[3] = v45;
  v41[4] = v46;
  v41[5] = v47;
  v41[0] = v42;
  v41[1] = v43;
  sub_100007FDC(&v27, v24, &qword_100146448, &qword_1000FAFD0);
  sub_100007E14(v41, &qword_100146448, &qword_1000FAFD0);
  *&v26[167] = v37;
  *&v26[183] = v38;
  *&v26[199] = v39;
  *&v26[215] = v40;
  *&v26[103] = v33;
  *&v26[119] = v34;
  *&v26[135] = v35;
  *&v26[151] = v36;
  *&v26[39] = v29;
  *&v26[55] = v30;
  *&v26[71] = v31;
  *&v26[87] = v32;
  *&v26[7] = v27;
  *&v26[23] = v28;
  if (qword_100141C10 != -1)
  {
    swift_once();
  }

  v5 = qword_1001461C8;
  KeyPath = swift_getKeyPath();
  *&v24[177] = *&v26[176];
  *&v24[193] = *&v26[192];
  *&v24[209] = *&v26[208];
  *&v24[113] = *&v26[112];
  *&v24[129] = *&v26[128];
  *&v24[145] = *&v26[144];
  *&v24[161] = *&v26[160];
  *&v24[49] = *&v26[48];
  *&v24[65] = *&v26[64];
  *&v24[81] = *&v26[80];
  *&v24[97] = *&v26[96];
  *&v24[1] = *v26;
  *&v24[17] = *&v26[16];
  v24[0] = v4;
  *&v24[33] = *&v26[32];
  *&v24[224] = *&v26[223];
  *&v24[232] = KeyPath;
  v25 = v5;

  static Font.Weight.semibold.getter();
  sub_100002D44(&qword_100146338, &qword_1000FAE10);
  sub_100094E34();
  View.fontWeight(_:)();
  v54 = *&v24[192];
  v55 = *&v24[208];
  v56 = *&v24[224];
  v57 = v25;
  v50 = *&v24[128];
  v51 = *&v24[144];
  v52 = *&v24[160];
  v53 = *&v24[176];
  v46 = *&v24[64];
  v47 = *&v24[80];
  v48 = *&v24[96];
  v49 = *&v24[112];
  v42 = *v24;
  v43 = *&v24[16];
  v44 = *&v24[32];
  v45 = *&v24[48];
  sub_100007E14(&v42, &qword_100146338, &qword_1000FAE10);
  v7 = *(a1 + 24);
  *v24 = *(a1 + 16);
  *&v24[8] = v7;
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  v8 = *(v23 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_buttonTextColor);

  v9 = swift_getKeyPath();
  v10 = (a2 + *(sub_100002D44(&qword_100146330, &qword_1000FAE08) + 36));
  *v10 = v9;
  v10[1] = v8;
  v11 = swift_getKeyPath();
  v12 = a2 + *(sub_100002D44(&qword_100146320, &qword_1000FAE00) + 36);
  *v12 = v11;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  LOBYTE(v11) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_100002D44(&qword_100146308, &qword_1000FADF8);
  v22 = a2 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_100092FB0@<X0>(_OWORD *a2@<X8>)
{
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v8 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6 & 1;
  v100 = v6 & 1;
  v97 = 0;
  State.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();

  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v71 = v2;
  *(&v71 + 1) = v4;
  LOBYTE(v72) = v17;
  *(&v72 + 1) = *v99;
  DWORD1(v72) = *&v99[3];
  *(&v72 + 1) = v38;
  LOBYTE(v73) = v8;
  *(&v73 + 1) = *v98;
  DWORD1(v73) = *&v98[3];
  *(&v73 + 1) = v10;
  *v74 = v12;
  *&v74[8] = v14;
  *&v74[16] = v16;
  v74[24] = 0;
  *&v54[9] = *&v74[9];
  v53 = v73;
  *v54 = *v74;
  v25 = v70;
  v51 = v71;
  v52 = v72;
  *&v75 = v18;
  *(&v75 + 1) = v20;
  LOBYTE(v76) = v22 & 1;
  DWORD1(v76) = *&v95[3];
  *(&v76 + 1) = *v95;
  *(&v76 + 1) = v24;
  v77 = v64;
  v78 = v65;
  v26 = v69;
  v27 = v67;
  v82 = v69;
  v83 = v70;
  v81 = v68;
  v28 = v68;
  v29 = v66;
  v79 = v66;
  v80 = v67;
  v57 = v64;
  v58 = v65;
  v55 = v75;
  v56 = v76;
  v62 = v69;
  v63 = v70;
  v30 = v68;
  v60 = v67;
  v61 = v68;
  v59 = v66;
  a2[10] = v67;
  a2[11] = v30;
  v31 = v63;
  a2[12] = v62;
  a2[13] = v31;
  v32 = v57;
  a2[6] = v56;
  a2[7] = v32;
  v33 = v59;
  a2[8] = v58;
  a2[9] = v33;
  v34 = *v54;
  a2[2] = v53;
  a2[3] = v34;
  v35 = v55;
  a2[4] = *&v54[16];
  a2[5] = v35;
  v36 = v52;
  *a2 = v51;
  a2[1] = v36;
  v96 = v22 & 1;
  v84[0] = v18;
  v84[1] = v20;
  v85 = v22 & 1;
  *v86 = *v95;
  *&v86[3] = *&v95[3];
  v87 = v24;
  v92 = v28;
  v93 = v26;
  v94 = v25;
  v88 = v64;
  v89 = v65;
  v90 = v29;
  v91 = v27;
  sub_100007FDC(&v71, v40, &qword_1001435C8, &qword_1000F6D70);
  sub_100007FDC(&v75, v40, &qword_100146450, &unk_1000FB040);
  sub_100007E14(v84, &qword_100146450, &unk_1000FB040);
  v40[0] = v2;
  v40[1] = v4;
  v41 = v17;
  *v42 = *v99;
  *&v42[3] = *&v99[3];
  v43 = v38;
  v44 = v8;
  *v45 = *v98;
  *&v45[3] = *&v98[3];
  v46 = v10;
  v47 = v12;
  v48 = v14;
  v49 = v16;
  v50 = 0;
  return sub_100007E14(v40, &qword_1001435C8, &qword_1000F6D70);
}

void sub_100093448(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
}

uint64_t sub_100093518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002D44(&qword_1001463B0, &qword_1000FAED8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v18[2] = *(a1 + 16);
  v18[3] = v15;
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  sub_1000961A4(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100007E14(v10, &unk_100144630, &qword_1000F5180);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    v17 = (*(v12 + 32))(v14, v10, v11);
    __chkstk_darwin(v17);
    v18[-2] = v14;
    v18[-1] = a1;
    sub_100002D44(&qword_1001463C0, &qword_1000FAF40);
    sub_100095618();
    NavigationView.init(content:)();
    (*(v5 + 32))(a2, v7, v4);
    (*(v5 + 56))(a2, 0, 1, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100093830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v31 = a3;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShazamCampaignWebView(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_1001463D0, &qword_1000FAF48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = sub_100002D44(&qword_1001463F0, &qword_1000FAF60);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  (*(v5 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v4);
  v20 = sub_100095E9C(&qword_100142428, type metadata accessor for ShazamCampaignWebView, &unk_1000F56A8);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v5 + 8))(v7, v4);
  sub_100095E3C(v10, type metadata accessor for ShazamCampaignWebView);
  v32 = v28;
  v21 = sub_100002D44(&qword_1001463D8, &qword_1000FAF50);
  v33 = v8;
  v34 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_100004370(&qword_1001463E0, &qword_1000FAF58);
  v24 = sub_100004610(&qword_1001463E8, &qword_1001463E0, &qword_1000FAF58, &protocol conformance descriptor for ToolbarItem<A, B>);
  v33 = v23;
  v34 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  (*(v12 + 8))(v14, v11);
  v33 = v11;
  v34 = v21;
  v35 = OpaqueTypeConformance2;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  View.accessibilityIdentifier(_:)();
  return (*(v30 + 8))(v18, v26);
}

uint64_t sub_100093CA4(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002D44(&qword_1001463E0, &qword_1000FAF58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v9 = a1;
  sub_100002D44(&qword_1001463F8, &qword_1000FAF68);
  sub_100095478(&qword_100146400, &qword_1001463F8, &qword_1000FAF68, sub_100095824);
  ToolbarItem<>.init(placement:content:)();
  sub_100004610(&qword_1001463E8, &qword_1001463E0, &qword_1000FAF58, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100093E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayInAppleMusicView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100002D44(&qword_100146418, &unk_1000FAF78);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = sub_100002D44(&qword_100146410, &qword_1000FAF70);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_100094B10(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100094B78(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_100002D44(&qword_100146428, &qword_1000FAF88);
  sub_100095BD8();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100004610(&qword_100146420, &qword_100146418, &unk_1000FAF78, &protocol conformance descriptor for Button<A>);
  sub_100095E9C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v19 = v22;
  View.buttonStyle<A>(_:)();
  (*(v23 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  *&v16[*(v14 + 36)] = 256;
  sub_100095824();
  View.accessibilityIdentifier(_:)();
  return sub_100007E14(v16, &qword_100146410, &qword_1000FAF70);
}

double sub_100094244(uint64_t a1)
{
  sub_100002D44(&qword_100146358, &qword_1000FAE28);
  State.wrappedValue.getter();
  if (*(v3 + 17))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + 17) = 0;
  }

  return result;
}

uint64_t sub_100094388@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SymbolVariants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_100002D44(&qword_100146438, &unk_1000FAF90);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v21[1] = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  View.fontWeight(_:)();

  if (qword_100141C30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001461E8;
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(v9 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;

  static SymbolVariants.circle.getter();
  SymbolVariants.fill.getter();
  v15 = *(v3 + 8);
  v15(v8, v2);
  sub_100095CCC();
  View.symbolVariant(_:)();
  v15(v5, v2);
  sub_100007E14(v11, &qword_100146438, &unk_1000FAF90);
  v16 = [objc_opt_self() whiteColor];
  v17 = Color.init(uiColor:)();
  if (qword_100141C38 != -1)
  {
    swift_once();
  }

  v18 = qword_1001461F0;
  v19 = (a1 + *(sub_100002D44(&qword_100146428, &qword_1000FAF88) + 36));
  *v19 = v17;
  v19[1] = v18;
}

void sub_10009465C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100095E9C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void sub_10009472C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000BEC4(v1, qword_10014FEA0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Error presenting music subscription offer: %@", v3, 0xCu);
      sub_100007E14(v4, &unk_100142880, &unk_1000F5950);
    }

    else
    {
    }
  }
}

uint64_t sub_1000948DC()
{
  v1 = sub_100002D44(&qword_100146298, &qword_1000FADA0);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0x4018000000000000;
  v3[16] = 0;
  v4 = sub_100002D44(&qword_1001462A0, &qword_1000FADA8);
  sub_100091074(v0, &v3[*(v4 + 44)]);
  if (qword_100141C08 != -1)
  {
    swift_once();
  }

  v5 = sub_100002D44(&qword_1001462A8, &qword_1000FADB0);
  sub_10000BEC4(v5, qword_1001461B0);
  sub_100004610(&qword_1001462B0, &qword_100146298, &qword_1000FADA0, &protocol conformance descriptor for VStack<A>);
  sub_100004610(&qword_1001462B8, &qword_1001462A8, &qword_1000FADB0, &protocol conformance descriptor for ClosedRange<A>);
  View.dynamicTypeSize<A>(_:)();
  return sub_100007E14(v3, &qword_100146298, &qword_1000FADA0);
}

uint64_t sub_100094AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001462C0, &qword_1000FADB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayInAppleMusicView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayInAppleMusicView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100094BFC()
{
  result = qword_100146310;
  if (!qword_100146310)
  {
    sub_100004370(&qword_100146308, &qword_1000FADF8);
    sub_100094C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146310);
  }

  return result;
}

unint64_t sub_100094C88()
{
  result = qword_100146318;
  if (!qword_100146318)
  {
    sub_100004370(&qword_100146320, &qword_1000FAE00);
    sub_100094D40();
    sub_100004610(&qword_100142998, &qword_1001429A0, &qword_1000F5AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146318);
  }

  return result;
}

unint64_t sub_100094D40()
{
  result = qword_100146328;
  if (!qword_100146328)
  {
    sub_100004370(&qword_100146330, &qword_1000FAE08);
    sub_100004370(&qword_100146338, &qword_1000FAE10);
    sub_100094E34();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001429D0, &qword_1001429D8, &qword_1000F5AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146328);
  }

  return result;
}

unint64_t sub_100094E34()
{
  result = qword_100146340;
  if (!qword_100146340)
  {
    sub_100004370(&qword_100146338, &qword_1000FAE10);
    sub_100004610(&qword_100146348, &qword_100146350, &unk_1000FAE18, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146340);
  }

  return result;
}

uint64_t sub_100094F18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100094F78()
{
  result = qword_100146360;
  if (!qword_100146360)
  {
    sub_100004370(&qword_1001462D8, &qword_1000FADC8);
    sub_100004610(&qword_100146368, &qword_100146370, &qword_1000FAE60, &protocol conformance descriptor for Button<A>);
    sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146360);
  }

  return result;
}

uint64_t sub_1000950A4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ButtonBorderShape();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t sub_100095170(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001462E0, &qword_1000FADD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000951E0()
{
  result = qword_100146378;
  if (!qword_100146378)
  {
    sub_100004370(&qword_1001462E8, &qword_1000FADD8);
    sub_100095298();
    sub_100004610(&qword_100145930, &qword_100145918, &qword_1000F9FF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146378);
  }

  return result;
}

unint64_t sub_100095298()
{
  result = qword_100146380;
  if (!qword_100146380)
  {
    sub_100004370(&qword_1001462E0, &qword_1000FADD0);
    sub_100004370(&qword_1001462D8, &qword_1000FADC8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100094F78();
    sub_100095E9C(&qword_100145910, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100145808, &qword_100143758, &qword_1000F97A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146380);
  }

  return result;
}

uint64_t sub_100095408@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayInAppleMusicView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100093518(v4, a1);
}

uint64_t sub_100095478(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    a4();
    sub_100095E9C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009552C()
{
  result = qword_1001463A0;
  if (!qword_1001463A0)
  {
    sub_100004370(&qword_100146390, &qword_1000FAED0);
    sub_100004610(&qword_1001463A8, &qword_1001463B0, &qword_1000FAED8, &protocol conformance descriptor for NavigationView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001463A0);
  }

  return result;
}

unint64_t sub_100095618()
{
  result = qword_1001463C8;
  if (!qword_1001463C8)
  {
    sub_100004370(&qword_1001463C0, &qword_1000FAF40);
    sub_100004370(&qword_1001463D0, &qword_1000FAF48);
    sub_100004370(&qword_1001463D8, &qword_1000FAF50);
    type metadata accessor for ShazamCampaignWebView(255);
    sub_100095E9C(&qword_100142428, type metadata accessor for ShazamCampaignWebView, &unk_1000F56A8);
    swift_getOpaqueTypeConformance2();
    sub_100004370(&qword_1001463E0, &qword_1000FAF58);
    sub_100004610(&qword_1001463E8, &qword_1001463E0, &qword_1000FAF58, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100095E9C(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001463C8);
  }

  return result;
}

unint64_t sub_100095824()
{
  result = qword_100146408;
  if (!qword_100146408)
  {
    sub_100004370(&qword_100146410, &qword_1000FAF70);
    sub_100004370(&qword_100146418, &unk_1000FAF78);
    type metadata accessor for PlainButtonStyle();
    sub_100004610(&qword_100146420, &qword_100146418, &unk_1000FAF78, &protocol conformance descriptor for Button<A>);
    sub_100095E9C(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100144368, &qword_100144370, &unk_1000F9170, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146408);
  }

  return result;
}

uint64_t sub_10009599C()
{
  v1 = type metadata accessor for PlayInAppleMusicView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3))
  {
  }

  v6 = *(v1 + 24);
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OpenURLAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100095B64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlayInAppleMusicView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100095BD8()
{
  result = qword_100146430;
  if (!qword_100146430)
  {
    sub_100004370(&qword_100146428, &qword_1000FAF88);
    sub_100004370(&qword_100146438, &unk_1000FAF90);
    sub_100095CCC();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143370, &qword_100143378, &qword_1000F6B68, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146430);
  }

  return result;
}

unint64_t sub_100095CCC()
{
  result = qword_100146440;
  if (!qword_100146440)
  {
    sub_100004370(&qword_100146438, &unk_1000FAF90);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146440);
  }

  return result;
}

uint64_t sub_100095DB4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100095E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100095E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100095EE4()
{
  sub_100004370(&qword_100146298, &qword_1000FADA0);
  sub_100004370(&qword_1001462A8, &qword_1000FADB0);
  sub_100004610(&qword_1001462B0, &qword_100146298, &qword_1000FADA0, &protocol conformance descriptor for VStack<A>);
  sub_100004610(&qword_1001462B8, &qword_1001462A8, &qword_1000FADB0, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_100095FF4(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100096104()
{
  swift_getKeyPath();
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_1000961A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers);
  if (!v7)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  v17[1] = v2;
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  v8 = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v2 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token + 8) || !*(v2 + 32) || !*(v2 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_sourceBundleIdentifier + 8))
  {

LABEL_8:
    v14 = type metadata accessor for URL();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v8 campaignURLForTrackID:v9 bundleID:v10 token:v11];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v6, v13, 1, v16);
  return sub_100007F6C(v6, a1);
}

uint64_t sub_10009642C()
{
  swift_getKeyPath();
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1000964CC(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000965DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  swift_beginAccess();
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000966D4()
{
  v1 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_offers);
  if (v4)
  {
    v5 = v4;
    sub_1000961A4(v3);
    v6 = type metadata accessor for URL();
    v7 = (*(*(v6 - 8) + 48))(v3, 1, v6);
    sub_100007E14(v3, &unk_100144630, &qword_1000F5180);
    if (v7 == 1 || (v8 = [v5 campaignSubtitle]) == 0)
    {
      v9 = [v5 defaultSubtitle];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        v14 = [objc_opt_self() mainBundle];
        v25._object = 0xE000000000000000;
        v20._object = 0x8000000100101FE0;
        v20._countAndFlagsBits = 0xD000000000000028;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        v25._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v14, v21, v25)._countAndFlagsBits;
        goto LABEL_11;
      }

      v8 = [v5 defaultSubtitle];
    }

    v14 = v8;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_11:
    v19 = countAndFlagsBits;

    return v19;
  }

  v16 = [objc_opt_self() mainBundle];
  v24._object = 0xE000000000000000;
  v17._object = 0x8000000100101FE0;
  v17._countAndFlagsBits = 0xD000000000000028;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v24)._countAndFlagsBits;

  return v19;
}

uint64_t sub_10009694C(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for MusicSubscriptionOffer.Options();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  sub_100097E4C(&qword_1001465B0, &type metadata accessor for MusicSubscriptionOffer.Options, &protocol conformance descriptor for MusicSubscriptionOffer.Options);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    (*(v6 + 24))(v3 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v3;
    v14[-1] = a1;
    v14[1] = v3;
    sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(a1, v5);
}

uint64_t sub_100096BCC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  swift_beginAccess();
  v5 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100096C68()
{
  swift_getKeyPath();
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);

  return v1;
}

uint64_t sub_100096D24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);
  a2[1] = v4;
}

uint64_t sub_100096DDC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100097E4C(&qword_1001442C0, type metadata accessor for PlayInAppleMusicViewModel, &unk_1000FB0D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100096F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100097000;

  return sub_100097630();
}

uint64_t sub_100097000(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100097144, v5, v4);
}

uint64_t sub_100097144()
{
  v1 = v0[6];
  v2 = v0[7];

  sub_100096DDC(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000971C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000DC80((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000972A8()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicSongURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel_appleMusicClassicalURL, &unk_100144630, &qword_1000F5180);

  v3 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__subscriptionOfferOptions;
  v4 = type metadata accessor for MusicSubscriptionOffer.Options();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_100097408()
{
  sub_1000972A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PlayInAppleMusicViewModel(uint64_t a1)
{
  result = qword_1001464C0;
  if (!qword_1001464C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000974B4(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000085D0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MusicSubscriptionOffer.Options();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100097630()
{
  v1 = type metadata accessor for CharacterSet();
  v0[22] = v1;
  v0[23] = *(v1 - 8);
  v0[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[25] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[26] = v3;
  v0[27] = v2;

  return _swift_task_switch(sub_100097720, v3, v2);
}

uint64_t sub_100097720()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 isSupported];

  if (v3)
  {
    v4 = [v1 currentDevice];
    v0[28] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10009799C;
    v5 = swift_continuation_init();
    v0[17] = sub_100002D44(&qword_1001465A8, &qword_1000FB138);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000971C0;
    v0[13] = &unk_1001386A8;
    v0[14] = v5;
    [v4 generateTokenWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000BEC4(v6, qword_10014FEA0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "DeviceCheck API is not supported on this device", v9, 2u);
    }

    v10 = v0[1];

    return v10(0, 0);
  }
}

uint64_t sub_10009799C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_100097BDC;
  }

  else
  {
    v5 = sub_100097ACC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100097ACC()
{
  countAndFlagsBits = v0[14]._countAndFlagsBits;
  v2 = v0[12]._countAndFlagsBits;
  v3 = v0[11]._countAndFlagsBits;
  object = v0[11]._object;

  v5 = v0[9]._countAndFlagsBits;
  v6 = v0[9]._object;
  v7 = Data.base64EncodedString(options:)(0);
  sub_10005B7AC(v5, v6);

  v0[10] = v7;
  v8 = static CharacterSet.urlQueryAllowed.getter();
  sub_10000B730(v8, v9, v10);
  v11 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v13 = v12;
  object[1](v2, v3);

  v14 = v0->_object;

  return v14(v11, v13);
}

uint64_t sub_100097BDC()
{
  v1 = *(v0 + 224);

  swift_willThrow();

  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BEC4(v2, qword_10014FEA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error generating token with DeviceCheck API: %@", v5, 0xCu);
    sub_100007E14(v6, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0);
}

uint64_t sub_100097DA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100096DDC(v1, v2);
}

uint64_t sub_100097DE8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC16MusicRecognition25PlayInAppleMusicViewModel__token);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100097E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100097EE8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_retryHandler];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_cancellationHandler];
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_appleMusicURLHandler];
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_displayMatchedMediaItemHandler];
  *v13 = nullsub_1;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem] = 0;
  v14 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for ListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for MatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for NoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_100098098();

  return v17;
}

void sub_100098098()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v3];
  [*&v1[OBJC_IVAR____TtC16MusicRecognition13ListeningView_cancelButton] addTarget:v0 action:"cancelAction" forControlEvents:64];
  v4 = objc_allocWithZone(UITapGestureRecognizer);
  v5 = v0;
  v6 = [v4 initWithTarget:v5 action:"displayMatchedMediaItemAction"];
  [v2 addGestureRecognizer:v6];

  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v5 action:"retryAction"];
  [v3 addGestureRecognizer:v7];

  v45 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000F88A0;
  v9 = [v1 topAnchor];
  v10 = [v5 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v1 bottomAnchor];
  v13 = [v5 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v8 + 40) = v14;
  v15 = [v1 leadingAnchor];
  v16 = [v5 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v8 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v5 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v8 + 56) = v20;
  v21 = [v3 topAnchor];
  v22 = [v5 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v8 + 64) = v23;
  v24 = [v3 bottomAnchor];
  v25 = [v5 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v8 + 72) = v26;
  v27 = [v3 leadingAnchor];
  v28 = [v5 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v8 + 80) = v29;
  v30 = [v3 trailingAnchor];
  v31 = [v5 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v8 + 88) = v32;
  v33 = [v2 topAnchor];
  v34 = [v5 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v8 + 96) = v35;
  v36 = [v2 bottomAnchor];
  v37 = [v5 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v8 + 104) = v38;
  v39 = [v2 leadingAnchor];
  v40 = [v5 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v8 + 112) = v41;
  v42 = [v2 trailingAnchor];
  v43 = [v5 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v8 + 120) = v44;
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];
}

id sub_10009873C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_retryHandler];
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_cancellationHandler];
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_appleMusicURLHandler];
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_displayMatchedMediaItemHandler];
  *v7 = nullsub_1;
  v7[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem] = 0;
  v8 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for ListeningView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for MatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for NoMatchView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_100098098();
  }

  return v12;
}

id sub_1000989E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView);
  [v1 setHidden:0];
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView);
  if (([v2 isHidden] & 1) == 0)
  {
    v3 = [v2 layer];
    v4 = [v1 layer];
    sub_100099F98(v3, v4);
  }

  [v2 setHidden:1];
  v5 = *(v0 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView);

  return [v5 setHidden:1];
}

void sub_100098AC8(void *a1)
{
  v3 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = *&v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem];
  *&v1[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem] = a1;

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = v1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = v11;
  sub_1000C8AF8(0, 0, v8, &unk_1000FB238, v14);

  v15 = *&v12[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView];
  v16 = *&v15[OBJC_IVAR____TtC16MusicRecognition9MatchView_titleLabel];
  v17 = [v11 title];
  [v16 setText:v17];

  v18 = *&v15[OBJC_IVAR____TtC16MusicRecognition9MatchView_artistLabel];
  v19 = [v11 artist];
  [v18 setText:v19];

  [*&v15[OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton] addTarget:v12 action:"appleMusicButtonAction" forControlEvents:64];
  [*&v12[OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView] setHidden:1];
  [v15 setHidden:0];
  v20 = [v11 appleMusicURL];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    sub_10001719C(v5);
    v23 = [objc_allocWithZone(LSApplicationWorkspace) init];
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 applicationWithBundleIdentifier:v25];

    v27 = String._bridgeToObjectiveC()();
    v28 = [v23 applicationIsInstalled:v27];
  }

  else
  {
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_10001719C(v5);
    v28 = 0;
  }

  sub_1000AACA8(v28);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v15[OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView]);
}

uint64_t sub_100098F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100098FA0, v7, v6);
}

uint64_t sub_100098FA0()
{
  v1 = v0[2];
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView) layer];
  v3 = [*(v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView) layer];
  sub_100099F98(v2, v3);

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000990A0;
  v5 = v0[3];

  return sub_1000AA994(v5);
}

uint64_t sub_1000990A0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000991C0, v3, v2);
}

uint64_t sub_1000991C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100099220(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_noMatchView);
  [v3 setHidden:0];
  [*(v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchView) setHidden:1];
  v4 = [*(v1 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_listeningView) layer];
  v5 = [v3 layer];
  sub_100099F98(v4, v5);

  sub_1000B5EE0(a1);
  v6 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v6, v3);
}

uint64_t sub_1000992FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100002D44(&unk_100144630, &qword_1000F5180);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_100099434, v7, v6);
}

uint64_t sub_100099434()
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching Live Activity specific Apple Music URL", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem);
  v0[12] = v6;
  if (v6)
  {
    v6;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1000996A8;
    v8 = v0[3];

    return sub_100059C24(v8);
  }

  else
  {
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    (*(v11 + 56))(v12, 1, 1, v10);
    sub_10001719C(v0[3]);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No Live Activity specific Apple Music URL available", v15, 2u);
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000996A8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_1000997E8, v4, v3);
}

uint64_t sub_1000997E8()
{
  v30 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001719C(v0[3]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No Live Activity specific Apple Music URL available", v6, 2u);
    }
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    (*(v10 + 32))(v7, v0[3], v9);
    (*(v10 + 16))(v8, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315138;
      sub_100099E38();
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v15 + 8);
      v20(v14, v16);
      v21 = sub_1000BA1EC(v27, v19, &v29);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Opening Live Activity specific Apple Music URL %s", v17, 0xCu);
      sub_100007E74(v28);
    }

    else
    {

      v20 = *(v15 + 8);
      v20(v14, v16);
    }

    v22 = v0[7];
    v23 = v0[4];
    v24 = *(v0[2] + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_appleMusicURLHandler);

    v24(v22);

    v20(v22, v23);
  }

  v25 = v0[1];

  return v25();
}

void sub_100099C24(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v5 = a1;

  v3(v4);
}

uint64_t sub_100099D2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100099D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000789C;

  return sub_1000992FC(a1, v4, v5, v6);
}

unint64_t sub_100099E38()
{
  result = qword_100142378;
  if (!qword_100142378)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142378);
  }

  return result;
}

uint64_t sub_100099E90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100099ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100012EC8;

  return sub_100098F08(a1, v4, v5, v7, v6);
}

void sub_100099F98(void *a1, void *a2)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 animationWithKeyPath:v2];

  v5 = v4;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setFromValue:isa];

  v7 = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:v7];

  [v5 setMass:0.513];
  [v5 setStiffness:76.956];
  [v5 setDamping:72.0];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setRemovedOnCompletion:0];
  if (qword_100141C40 != -1)
  {
    swift_once();
  }

  v8 = qword_1001465B8;
  [v5 setFillMode:qword_1001465B8];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 animationWithKeyPath:v9];

  v50 = v10;
  v11 = Double._bridgeToObjectiveC()().super.super.isa;
  [v50 setFromValue:v11];

  v12 = Double._bridgeToObjectiveC()().super.super.isa;
  [v50 setToValue:v12];

  [v50 setMass:0.513];
  [v50 setStiffness:76.956];
  [v50 setDamping:72.0];
  [v50 setBeginTime:CACurrentMediaTime()];
  [v50 setRemovedOnCompletion:0];
  [v50 setFillMode:v8];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v3 animationWithKeyPath:v13];

  v15 = v14;
  v16 = Double._bridgeToObjectiveC()().super.super.isa;
  [v15 setFromValue:v16];

  v17 = Double._bridgeToObjectiveC()().super.super.isa;
  [v15 setToValue:v17];

  [v15 setMass:0.513];
  [v15 setStiffness:76.956];
  [v15 setDamping:72.0];
  [v15 setBeginTime:CACurrentMediaTime()];
  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:v8];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v3 animationWithKeyPath:v18];

  v20 = v19;
  v21 = Double._bridgeToObjectiveC()().super.super.isa;
  [v20 setFromValue:v21];

  v22 = Double._bridgeToObjectiveC()().super.super.isa;
  [v20 setToValue:v22];

  [v20 setMass:0.513];
  [v20 setStiffness:76.956];
  [v20 setDamping:72.0];
  [v20 setBeginTime:CACurrentMediaTime()];
  [v20 setRemovedOnCompletion:0];
  [v20 setFillMode:v8];
  v23 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v24 = String._bridgeToObjectiveC()();
  [v23 setName:v24];

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  [v23 setValue:v25 forKey:v26];

  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  [v23 setValue:v27 forKey:v28];

  v29 = Double._bridgeToObjectiveC()().super.super.isa;
  v30 = String._bridgeToObjectiveC()();
  [v23 setValue:v29 forKey:v30];

  v31 = Bool._bridgeToObjectiveC()().super.super.isa;
  v32 = String._bridgeToObjectiveC()();
  [v23 setValue:v31 forKey:v32];

  v33 = Bool._bridgeToObjectiveC()().super.super.isa;
  v34 = String._bridgeToObjectiveC()();
  [v23 setValue:v33 forKey:v34];

  v35 = objc_opt_self();
  [v35 begin];
  [v35 setAnimationDuration:0.8];
  sub_100002D44(&qword_100146628, &unk_1000FB240);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000F57C0;
  v37 = sub_1000123E4(0, &qword_100146630, CAFilter_ptr);
  *(v36 + 56) = v37;
  *(v36 + 32) = v23;
  v38 = v23;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setFilters:v39];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000F57C0;
  *(v40 + 56) = v37;
  *(v40 + 32) = v38;
  v41 = v38;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [a2 setFilters:v42];

  v43 = swift_allocObject();
  *(v43 + 16) = a1;
  aBlock[4] = sub_10009A9A4;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1C84;
  aBlock[3] = &unk_100138778;
  v44 = _Block_copy(aBlock);
  v45 = a1;

  [v35 setCompletionBlock:v44];
  _Block_release(v44);
  v46 = String._bridgeToObjectiveC()();
  [v45 addAnimation:v5 forKey:v46];

  v47 = String._bridgeToObjectiveC()();
  [v45 addAnimation:v15 forKey:v47];

  v48 = String._bridgeToObjectiveC()();
  [a2 addAnimation:v50 forKey:v48];

  v49 = String._bridgeToObjectiveC()();
  [a2 addAnimation:v20 forKey:v49];

  [v35 commit];
}

uint64_t sub_10009A96C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A9B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007FDC(a1, v8, &unk_100144630, &qword_1000F5180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007E14(v8, &unk_100144630, &qword_1000F5180);
    v13 = 1;
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    if (*(a2 + 16))
    {
      URL.appending(queryItems:)();
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v14(a3, v12, v9);
    }

    v13 = 0;
  }

  return (*(v10 + 56))(a3, v13, 1, v9);
}

uint64_t sub_10009ABD4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100050AB8(v1 + 32, a1);
}

uint64_t sub_10009AC94()
{
  v1[307] = v0;
  sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  v1[308] = swift_task_alloc();
  v2 = type metadata accessor for AnyArtist(0);
  v1[309] = v2;
  v1[310] = *(v2 - 8);
  v1[311] = swift_task_alloc();
  v3 = type metadata accessor for AnyAlbum(0);
  v1[312] = v3;
  v1[313] = *(v3 - 8);
  v1[314] = swift_task_alloc();
  sub_100002D44(&unk_100144630, &qword_1000F5180);
  v1[315] = swift_task_alloc();
  v1[316] = swift_task_alloc();
  v1[317] = swift_task_alloc();
  v4 = type metadata accessor for AnySong(0);
  v1[318] = v4;
  v1[319] = *(v4 - 8);
  v1[320] = swift_task_alloc();
  v5 = type metadata accessor for Album();
  v1[321] = v5;
  v1[322] = *(v5 - 8);
  v1[323] = swift_task_alloc();
  v6 = type metadata accessor for Artist();
  v1[324] = v6;
  v1[325] = *(v6 - 8);
  v1[326] = swift_task_alloc();
  v7 = type metadata accessor for Song();
  v1[327] = v7;
  v1[328] = *(v7 - 8);
  v1[329] = swift_task_alloc();
  v1[330] = swift_task_alloc();
  sub_100002D44(&qword_1001467E0, &qword_1000FB628);
  v1[331] = swift_task_alloc();
  v1[332] = swift_task_alloc();
  sub_100002D44(&qword_1001467E8, &qword_1000FB630);
  v1[333] = swift_task_alloc();
  v1[334] = swift_task_alloc();
  sub_100002D44(&qword_1001467F0, &qword_1000FB638);
  v1[335] = swift_task_alloc();
  v1[336] = swift_task_alloc();
  v1[337] = sub_100002D44(&qword_1001467F8, &unk_1000FB640);
  v1[338] = swift_task_alloc();
  v1[339] = swift_task_alloc();
  v1[340] = type metadata accessor for TrackPageMetadata(0);
  v1[341] = swift_task_alloc();
  v1[342] = swift_task_alloc();
  v8 = type metadata accessor for MusicSubscription();
  v1[343] = v8;
  v1[344] = *(v8 - 8);
  v1[345] = swift_task_alloc();
  sub_100002D44(&qword_100142FA0, &qword_1000F9620);
  v1[346] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[347] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[348] = v10;
  v1[349] = v9;

  return _swift_task_switch(sub_10009B1D0, v10, v9);
}

uint64_t sub_10009B1D0()
{
  v53 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading Native Track Page", v4, 2u);
  }

  v5 = *(v0 + 2456);

  swift_getKeyPath();
  *(v0 + 2800) = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  *(v0 + 2432) = v5;
  *(v0 + 2808) = sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 560);
  *(v0 + 2816) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(SHMediaItem.properties.getter() + 16);

    if (v8)
    {
      v50 = v7;
      v9 = *(v0 + 2768);
      v10 = *(v0 + 2752);
      v11 = *(v0 + 2744);
      v12 = *sub_10000DC80((*(v0 + 2456) + 592), *(*(v0 + 2456) + 616));
      swift_getKeyPath();
      *(v0 + 2408) = v12;
      sub_1000A857C(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController, &unk_1000FD054);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
      swift_beginAccess();
      sub_100007FDC(v12 + v13, v9, &qword_100142FA0, &qword_1000F9620);
      v14 = (*(v10 + 48))(v9, 1, v11);
      v15 = *(v0 + 2768);
      if (v14)
      {
        v16 = *(v0 + 2456);
        sub_100007E14(*(v0 + 2768), &qword_100142FA0, &qword_1000F9620);
        v17 = 0;
        v18 = (v16 + 24);
        if (*(v16 + 24))
        {
LABEL_9:
          v19 = *(v0 + 2456);
          swift_getKeyPath();
          v20 = swift_task_alloc();
          *(v20 + 16) = v19;
          *(v20 + 24) = v17 & 1;
          *(v0 + 2400) = v19;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_19:
          *(v0 + 2832) = v18;
          *(v0 + 2824) = 0;
          v31 = *(v0 + 2736);
          v32 = *(v0 + 2720);
          v33 = *(v0 + 2552);
          v34 = *(v0 + 2544);
          v35 = *(v0 + 2504);
          v36 = *(v0 + 2496);
          v37 = *(v0 + 2480);
          v38 = *(v0 + 2472);
          v39 = v32[6];
          *(v0 + 1444) = v39;
          v40 = *(v33 + 56);
          *(v0 + 2840) = v40;
          *(v0 + 2848) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v40(v31 + v39, 1, 1, v34);
          v41 = v32[8];
          v42 = *(v35 + 56);
          *(v0 + 2856) = v42;
          *(v0 + 2864) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v42(v31 + v41, 1, 1, v36);
          v43 = v32[7];
          v44 = *(v37 + 56);
          *(v0 + 2872) = v44;
          *(v0 + 2880) = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v44(v31 + v43, 1, 1, v38);
          v45 = v50;
          UUID.init()();
          *(v31 + v32[5]) = v45;
          *(v0 + 1360) = v32;
          *(v0 + 1368) = &off_1001392B0;
          *(v0 + 1376) = &off_1001391F8;
          v46 = sub_1000A857C(&qword_100146800, type metadata accessor for TrackPageMetadata, &unk_1000FC594);
          *(v0 + 2888) = v46;
          *(v0 + 1384) = v46;
          *(v0 + 1392) = &off_100139218;
          *(v0 + 1400) = &off_100139260;
          *(v0 + 1408) = &off_1001392C0;
          *(v0 + 1416) = &off_1001392D8;
          *(v0 + 1424) = &off_100139270;
          v47 = sub_1000A857C(&qword_100146808, type metadata accessor for TrackPageMetadata, &unk_1000FC54C);
          *(v0 + 2896) = v47;
          *(v0 + 1432) = v47;
          v48 = sub_100023284((v0 + 1336));
          sub_1000A896C(v31, v48, type metadata accessor for TrackPageMetadata);
          *(v0 + 1440) = 0;
          sub_1000A20B8(v0 + 1336);
          v49 = swift_task_alloc();
          *(v0 + 2904) = v49;
          *v49 = v0;
          v49[1] = sub_10009BA08;

          return sub_1000A409C();
        }
      }

      else
      {
        v26 = *(v0 + 2760);
        v27 = *(v0 + 2752);
        v28 = *(v0 + 2744);
        v29 = *(v0 + 2456);
        (*(v27 + 16))(v26, *(v0 + 2768), v28);
        sub_100007E14(v15, &qword_100142FA0, &qword_1000F9620);
        v17 = MusicSubscription.canPlayCatalogContent.getter();
        (*(v27 + 8))(v26, v28);
        v30 = v29;
        v18 = (v29 + 24);
        if ((v17 & 1) != *(v30 + 24))
        {
          goto LABEL_9;
        }
      }

      *v18 = v17 & 1;
      goto LABEL_19;
    }

    v51[0] = 3;
    v52 = 1;
    sub_1000A20B8(v51);
  }

  else
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Missing media item", v23, 2u);
    }

    v51[0] = 1;
    v52 = 1;
    sub_1000A20B8(v51);
  }

  v24 = *(v0 + 8);

  return v24();
}