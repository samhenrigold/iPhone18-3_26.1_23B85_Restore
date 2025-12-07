double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_1003DF60C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1003B28AC(*(a1 + 232), *(a1 + 240), *(a1 + 248));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

void SymbolButton.Configuration.adding(_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1003DF60C(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5[25];
  v13 = a5[26];
  v14 = a5[27];
  v15 = a5[28];
  sub_1003DD3C0(a1, a2, a3, a4);
  sub_1002E009C(v12, v13, v14, v15);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_1003DF60C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1002E009C(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  result = 0.0;
  *(a1 + 200) = xmmword_100512770;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1003DF60C(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v13 = *(v12 + 8);
  v14 = a2;
  v15 = a3;

  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

double SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v50 = a7;
  v51 = a3;
  v48 = a6;
  v49 = a2;
  v52 = a4;
  v53 = a5;
  LODWORD(v56) = a1;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v55 = &v47 - v11;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v47 - v15;
  v17 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v18 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v19 = qword_100673C38;
  v20 = unk_100673C40;
  v21 = byte_100673C48;
  sub_1003DF60C(v9, v16, type metadata accessor for SymbolButton.Configuration);
  v22 = *(v12 + 64);
  v54 = v12;
  v23 = &v16[v22];
  v24 = *&v16[v22 + 8];
  v25 = v19;
  v26 = v20;

  *v23 = v18;
  *(v23 + 1) = v19;
  *(v23 + 2) = v20;
  v23[24] = v21;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_1003C9F4C(1, v27);

  if (v28)
  {
    v29 = [objc_opt_self() labelColor];

    v30 = v54;
    v31 = *(v54 + 72);

    *&v16[v31] = v29;
    sub_1002E009C(*(v16 + 25), *(v16 + 26), *(v16 + 27), *(v16 + 28));
    *(v16 + 200) = xmmword_100512770;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {

    v30 = v54;
  }

  sub_1003DF674(v16, a8, type metadata accessor for SymbolButton.Configuration);
  v32 = v55;
  sub_1004DE52C();
  v33 = sub_1004DE53C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_1000107AC(v32, a8 + *(v30 + 36), &qword_100644A50, &qword_100528DC0);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v56)
  {
    v56 = [objc_opt_self() effectWithStyle:16];
    sub_1003DF60C(a8, v14, type metadata accessor for SymbolButton.Configuration);
    v34 = *(v14 + 29);
    v35 = *(v14 + 30);
    v36 = *(v14 + 31);
    v37 = v50;

    sub_1003B28AC(v34, v35, v36);
    *(v14 + 29) = v56;
    *(v14 + 30) = 0;
    *(v14 + 31) = 0;
    *(v14 + 32) = 2;
    *(v14 + 33) = v48;
    *(v14 + 34) = v37;
    sub_1003DD438(a8, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v14, a8, type metadata accessor for SymbolButton.Configuration);
    sub_1002E009C(*(a8 + 200), *(a8 + 208), *(a8 + 216), *(a8 + 224));
    *(a8 + 200) = xmmword_100512770;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_1003DF60C(a8, v14, type metadata accessor for SymbolButton.Configuration);
    sub_1003B28AC(*(v14 + 29), *(v14 + 30), *(v14 + 31));
    *(v14 + 29) = 1;
    *(v14 + 15) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 34) = 0;
    sub_1003DD438(a8, type metadata accessor for SymbolButton.Configuration);
    sub_1003DF60C(v14, a8, type metadata accessor for SymbolButton.Configuration);
    v38 = *(a8 + 200);
    v39 = *(a8 + 208);
    v40 = *(a8 + 216);
    v41 = *(a8 + 224);
    v42 = v49;
    v44 = v51;
    v43 = v52;
    v45 = v53;
    sub_1003DD3C0(v49, v51, v52, v53);
    sub_1002E009C(v38, v39, v40, v41);
    *(a8 + 200) = v42;
    *(a8 + 208) = v44;
    *(a8 + 216) = v43;
    *(a8 + 224) = v45;
  }

  sub_1003DD438(v14, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v58 = a1;
  v59 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a4;
  v52 = a2;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v57 = &v49 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v49 - v16;
  v18 = [objc_opt_self() currentTraitCollection];
  if (qword_10063DAF0 != -1)
  {
    swift_once();
  }

  v19 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_100673C38;
  v20 = unk_100673C40;
  v22 = byte_100673C48;
  sub_1003DF60C(v10, v17, type metadata accessor for SymbolButton.Configuration);
  v23 = &v17[*(v13 + 64)];
  v56 = v13;
  v24 = *(v23 + 1);
  v25 = v21;
  v26 = v20;

  *v23 = v19;
  *(v23 + 1) = v21;
  *(v23 + 2) = v20;
  v23[24] = v22;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_1003C9F4C(1, v27);

  v29 = &unk_100512000;
  if (v28)
  {
    v30 = [objc_opt_self() labelColor];

    v31 = v56;
    v32 = *(v56 + 72);

    *&v17[v32] = v30;
    sub_1002E009C(*(v17 + 25), *(v17 + 26), *(v17 + 27), *(v17 + 28));
    *(v17 + 200) = xmmword_100512770;
    *(v17 + 27) = 0;
    *(v17 + 28) = 0;
  }

  else
  {

    v31 = v56;
  }

  sub_1003DF674(v17, a9, type metadata accessor for SymbolButton.Configuration);
  v33 = v57;
  sub_1004DE52C();
  v34 = sub_1004DE53C();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_1000107AC(v33, a9 + *(v31 + 36), &qword_100644A50, &qword_100528DC0);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v58)
  {
    v35 = [objc_opt_self() effectWithStyle:16];
    sub_1003DF60C(a9, v15, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v15 + 29);
    v37 = *(v15 + 30);
    v38 = *(v15 + 31);
    v39 = v51;

    sub_1003B28AC(v36, v37, v38);
    *(v15 + 29) = v35;
    *(v15 + 30) = 0;
    *(v15 + 31) = 0;
    *(v15 + 32) = 2;
    *(v15 + 33) = v50;
    *(v15 + 34) = v39;
    v29 = &unk_100512000;
  }

  else
  {
    sub_1003DF60C(a9, v15, type metadata accessor for SymbolButton.Configuration);
    sub_1003B28AC(*(v15 + 29), *(v15 + 30), *(v15 + 31));
    *(v15 + 29) = 1;
    *(v15 + 15) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 34) = 0;
  }

  sub_1003DC954(v15, a9);
  sub_1003DF60C(a9, v15, type metadata accessor for SymbolButton.Configuration);
  v40 = *(v15 + 27);
  v41 = *(v15 + 25);
  v42 = *(v15 + 26);
  v43 = *(v15 + 28);
  if (v59)
  {
    sub_1002E009C(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = v29[119];
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  else
  {
    v44 = v55;

    v45 = v52;
    v46 = v52;
    sub_1002E009C(v41, v42, v40, v43);
    v47 = v54;
    *(v15 + 25) = v53;
    *(v15 + 26) = v45;
    *(v15 + 27) = v47;
    *(v15 + 28) = v44;
  }

  return sub_1003DC954(v15, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1, uint64_t a2, uint64_t a3)
{

  v4 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = a2.n128_u64[0];
  sub_1003DF60C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = v3;
  return result;
}

id sub_1003D962C()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_100673CA8 = result;
  qword_100673CB0 = 0;
  qword_100673CB8 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CA8;
  v1 = qword_100673CA8;

  return v0;
}

id sub_1003D9750()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_100673CC8 = result;
  qword_100673CD0 = 0;
  qword_100673CD8 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CC8;
  v1 = qword_100673CC8;

  return v0;
}

id sub_1003D9824()
{
  if (qword_10063DB20 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_100673CE8 = *&qword_100673CC8;
  qword_100673CF8 = qword_100673CD8;
  v1 = qword_100673CC8;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_10063DB28 != -1)
  {
    swift_once();
  }

  v0 = qword_100673CE8;
  v1 = qword_100673CE8;

  return v0;
}

id sub_1003D9944()
{
  if (qword_10063DB18 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_100673D08 = *&qword_100673CA8;
  qword_100673D18 = qword_100673CB8;
  v1 = qword_100673CA8;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_10063DB30 != -1)
  {
    swift_once();
  }

  v0 = qword_100673D08;
  v1 = qword_100673D08;

  return v0;
}

id sub_1003D9A64()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_100673D28 = 0;
  qword_100673D30 = 0;
  static SymbolButton.Material.xr = result;
  byte_100673D38 = 2;
  qword_100673D40 = 0;
  unk_100673D48 = 0;
  return result;
}

double static SymbolButton.Material.xr.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063DB38 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_100673D28;
  v3 = qword_100673D30;
  v4 = byte_100673D38;
  v5 = qword_100673D40;
  v6 = unk_100673D48;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;

  return result;
}

uint64_t sub_1003D9B5C()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.capsule);
  sub_100035430(v0, static UIView.Corner.capsule);
  return sub_1004DE52C();
}

uint64_t sub_1003D9BCC()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.roundedRect);
  sub_100035430(v0, static UIView.Corner.roundedRect);
  return sub_1004DE4CC();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100644070, &unk_100531450);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  sub_10000DE74(v7, v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
  sub_10001074C(v5, &qword_100644070, &unk_100531450);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DF60C(a1, v3, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_1003DD438(v3, type metadata accessor for SymbolButton.Configuration);
  v4 = v6[1];

  return v4;
}

id sub_1003D9EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100006F10(0, &qword_100644F70, UIMenuElement_ptr);
  v3 = sub_1004DD87C();

  v4 = v2(v3);

  return v4;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644FA8, NSBundle_ptr);
    v9 = v8;
    v10 = v7;
    v11 = sub_1004DE5FC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = sub_1004DD43C();
  v14 = v13;
  if (v12 == sub_1004DD43C() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1004DF08C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 6) != *(a2 + 48) || *(a1 + 7) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 4);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    type metadata accessor for UIOffset(0);
    v22 = v21;
    sub_1003DF6DC(&qword_100644FA0, type metadata accessor for UIOffset, &protocol conformance descriptor for UIOffset);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 12);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 11) != *(a2 + 88) || v23 != v24) && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (a1[13] == *(a2 + 104))
  {
    v25 = *(a1 + 14);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_100006F10(0, &qword_100641C80, UIColor_ptr);
      v27 = v26;
      v28 = v25;
      v29 = sub_1004DE5FC();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_100006F10(0, &qword_100641C80, UIColor_ptr);
    v14 = a4;
    v15 = a1;
    v16 = sub_1004DE5FC();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_1004DF08C() & 1) != 0);
  }

  return !a6;
}

uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if ((sub_1004DE5FC() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_100006F10(0, &qword_100641C80, UIColor_ptr);
          v8 = v7;
          v9 = v6;
          v10 = sub_1004DE5FC();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = sub_1004DD43C();
    v16 = v15;
    if (v14 == sub_1004DD43C() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = sub_1004DF08C();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = sub_1004DD43C();
      v24 = v23;
      if (v22 == sub_1004DD43C() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = sub_1004DF08C();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = sub_1004DD43C();
  v9 = v8;
  if (v7 == sub_1004DD43C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1004DF08C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 5);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 4) != *(a2 + 32) || v13 != v14) && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 7);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_100006F10(0, &qword_100641C80, UIColor_ptr);
  v17 = v16;
  v18 = v15;
  v19 = sub_1004DE5FC();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 9) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004DE5FC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
    v11 = v10;
    v12 = v9;
    v13 = sub_1004DE5FC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100644F98, UIVisualEffect_ptr);
    v16 = v15;
    v17 = v14;
    v18 = sub_1004DE5FC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (sub_1004DF08C() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_100006F10(0, &qword_100641C80, UIColor_ptr);
      v10 = a2;
      v11 = a1;
      v12 = sub_1004DE5FC();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_1003DAA08(void **a1, void **a2)
{
  v4 = sub_1004DE53C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = sub_100004CB8(&qword_10063E4C8, &qword_100529170);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v47 = a1;
  v13 = *a1;
  v14 = a2;
  v15 = *a2;
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    sub_100006F10(0, &unk_100644E00, UITraitCollection_ptr);
    v16 = v15;
    v17 = v13;
    v18 = sub_1004DE5FC();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v46 = type metadata accessor for SymbolButton.Metrics(0);
  v19 = *(v46 + 20);
  v20 = *(v10 + 48);
  sub_1000108DC(v47 + v19, v12, &qword_100644A50, &qword_100528DC0);
  v21 = v14 + v19;
  v22 = v14;
  sub_1000108DC(v21, &v12[v20], &qword_100644A50, &qword_100528DC0);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    if (v23(&v12[v20], 1, v4) == 1)
    {
      sub_10001074C(v12, &qword_100644A50, &qword_100528DC0);
      goto LABEL_13;
    }

LABEL_11:
    sub_10001074C(v12, &qword_10063E4C8, &qword_100529170);
    goto LABEL_24;
  }

  sub_1000108DC(v12, v9, &qword_100644A50, &qword_100528DC0);
  if (v23(&v12[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v12[v20], v4);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v24 = sub_1004DD35C();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v9, v4);
  v22 = v14;
  sub_10001074C(v12, &qword_100644A50, &qword_100528DC0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  v27 = v46;
  v26 = v47;
  if ((sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v28 = v27[8];
  v29 = *(v26 + v28);
  v30 = *(v22 + v28);
  v31 = 0;
  if (v29 == v30)
  {
    v32 = v27[9];
    v33 = (v26 + v32);
    v34 = *(v26 + v32);
    v35 = (v22 + v32);
    if (v34 == *v35 && v33[1] == v35[1])
    {
      v31 = 0;
      v36 = v27[10];
      v37 = (v26 + v36);
      v38 = *(v26 + v36);
      v39 = (v22 + v36);
      if (v38 == *v39 && v37[1] == v39[1])
      {
        v40 = v27[11];
        v41 = (v26 + v40);
        v42 = *(v26 + v40 + 16);
        v43 = (v22 + v40);
        v44 = *(v22 + v40 + 16);
        if (v42)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v31 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v26 + v27[12]), *(v22 + v27[12])), vceqq_f64(*(v26 + v27[12] + 16), *(v22 + v27[12] + 16)))));
          return v31 & 1;
        }

        if (v44)
        {
LABEL_24:
          v31 = 0;
          return v31 & 1;
        }

        v31 = 0;
        if (*v41 == *v43 && v41[1] == v43[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v31 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = sub_1004DE53C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v9 = &v141 - v8;
  v10 = sub_100004CB8(&qword_10063E4C8, &qword_100529170);
  __chkstk_darwin();
  v12 = (&v141 - v11);
  v13 = *(a1 + 80);
  v165[4] = *(a1 + 64);
  v165[5] = v13;
  v165[6] = *(a1 + 96);
  v166 = *(a1 + 112);
  v14 = *(a1 + 16);
  v165[0] = *a1;
  v165[1] = v14;
  v15 = *(a1 + 48);
  v165[2] = *(a1 + 32);
  v165[3] = v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v167[2] = a2[2];
  v167[3] = v18;
  v167[0] = v16;
  v167[1] = v17;
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v168 = *(a2 + 14);
  v167[5] = v20;
  v167[6] = v21;
  v167[4] = v19;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v165, v167))
  {
    return 0;
  }

  v22 = *(a1 + 136);
  v23 = *(a1 + 168);
  v163[2] = *(a1 + 152);
  v163[3] = v23;
  v24 = *(a1 + 184);
  v163[0] = *(a1 + 120);
  v163[1] = v22;
  v25 = *(a2 + 136);
  v26 = *(a2 + 168);
  v164[2] = *(a2 + 152);
  v164[3] = v26;
  v164[4] = *(a2 + 184);
  v27 = *(a2 + 120);
  v164[1] = v25;
  v163[4] = v24;
  v164[0] = v27;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v163, v164))
  {
    return 0;
  }

  v148 = v9;
  v149 = v10;
  v151 = v5;
  v152 = v12;
  v147 = v7;
  v150 = v4;
  v28 = *(a1 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 224);
  v31 = *(a2 + 25);
  v32 = *(a2 + 26);
  v34 = *(a2 + 27);
  v33 = *(a2 + 28);
  if (v29 == 1)
  {
    if (v32 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v35 = *(a2 + 25);
    v36 = *(a2 + 26);
    v37 = *(a1 + 216);
    sub_1003DD3C0(v35, v36, v34, v33);
    sub_1003DD3C0(v28, v29, v37, v30);
    sub_1002E009C(v28, v29, v37, v30);
    sub_1002E009C(v31, v32, v34, v33);
    return 0;
  }

  if (v32 == 1)
  {
    goto LABEL_7;
  }

  v38 = *(a2 + 25);
  v39 = *(a1 + 216);
  sub_1003DD3C0(v38, *(a2 + 26), *(a2 + 27), *(a2 + 28));
  sub_1003DD3C0(v28, v29, v39, v30);
  v40 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v29, v39, v30, v32, v34, v33, *&v28, *&v38);

  sub_1002E009C(v28, v29, v39, v30);
  if (!v40)
  {
    return 0;
  }

LABEL_9:
  v42 = *(a1 + 232);
  v41 = *(a1 + 240);
  v43 = *(a1 + 248);
  v44 = *(a1 + 256);
  v46 = *(a1 + 264);
  v45 = *(a1 + 272);
  v48 = *(a2 + 29);
  v47 = *(a2 + 30);
  v50 = *(a2 + 31);
  v49 = *(a2 + 32);
  v51 = *(a2 + 33);
  v52 = *(a2 + 34);
  if (v42 == 1)
  {
    if (v48 == 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v53 = *(a2 + 29);
    v54 = *(a1 + 240);
    v55 = *(a2 + 30);
    v145 = *(a2 + 32);
    v146 = v47;
    v56 = v43;
    v57 = v50;
    v144 = v51;
    sub_1003DFC6C(v53, v55, v50, v49, v51, v52);
    sub_1003DFC6C(v42, v54, v56, v44, v46, v45);
    sub_1003B28AC(v42, v54, v56);
    sub_1003B28AC(v48, v146, v57);
    return 0;
  }

  if (v48 == 1)
  {
    goto LABEL_13;
  }

  v159[0] = *(a2 + 29);
  v159[1] = v47;
  v159[2] = v50;
  v160 = v49;
  v161 = v51;
  v162 = v52;
  v155[0] = v42;
  v155[1] = v41;
  v155[2] = v43;
  v156 = v44;
  v157 = v46;
  v158 = v45;
  v142 = v50;
  v143 = v41;
  v146 = v47;
  v59 = v43;
  sub_1003DFC6C(v48, v47, v50, v49, v51, v52);
  sub_1003DFC6C(v42, v143, v59, v44, v46, v45);
  LODWORD(v145) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v155, v159);

  sub_1003B28AC(v42, v143, v59);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v60 = *(a1 + 296);
  v61 = *(a2 + 37);
  if (v60)
  {
    v62 = v152;
    if (!v61)
    {
      return 0;
    }

    v63 = *(a1 + 280);
    v64 = *(a1 + 288);
    v65 = *(a2 + 35);
    v66 = *(a2 + 36);
    v67 = v61;
    LOBYTE(v154[0]) = v66 & 1;
    v68 = static UIView.Border.__derived_struct_equals(_:_:)(v63, v64 & 1, v60, v65, v66 & 1, v67);

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v62 = v152;
    if (v61)
    {
      return 0;
    }
  }

  v69 = type metadata accessor for SymbolButton.Configuration(0);
  v70 = *(v69 + 36);
  v71 = *(v149 + 48);
  sub_1000108DC(a1 + v70, v62, &qword_100644A50, &qword_100528DC0);
  sub_1000108DC(a2 + v70, v62 + v71, &qword_100644A50, &qword_100528DC0);
  v72 = v150;
  v73 = *(v151 + 48);
  if (v73(v62, 1, v150) == 1)
  {
    if (v73(v62 + v71, 1, v72) == 1)
    {
      sub_10001074C(v62, &qword_100644A50, &qword_100528DC0);
      goto LABEL_29;
    }

LABEL_27:
    sub_10001074C(v62, &qword_10063E4C8, &qword_100529170);
    return 0;
  }

  v74 = v148;
  sub_1000108DC(v62, v148, &qword_100644A50, &qword_100528DC0);
  if (v73(v62 + v71, 1, v72) == 1)
  {
    (*(v151 + 8))(v74, v72);
    goto LABEL_27;
  }

  v152 = v69;
  v75 = v151;
  v76 = v62 + v71;
  v77 = v147;
  (*(v151 + 32))(v147, v76, v72);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v78 = sub_1004DD35C();
  v79 = *(v75 + 8);
  v79(v77, v72);
  v79(v74, v72);
  v69 = v152;
  sub_10001074C(v62, &qword_100644A50, &qword_100528DC0);
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v152 = v69;
  v80 = *(v69 + 40);
  v82 = *(a1 + v80);
  v81 = *(a1 + v80 + 8);
  v84 = *(a1 + v80 + 16);
  v83 = *(a1 + v80 + 24);
  v86 = *(a1 + v80 + 32);
  v85 = *(a1 + v80 + 40);
  v87 = *(a1 + v80 + 48);
  v88 = a2 + v80;
  v90 = *v88;
  v89 = *(v88 + 1);
  v92 = *(v88 + 2);
  v91 = *(v88 + 3);
  v94 = *(v88 + 4);
  v93 = *(v88 + 5);
  v95 = *(v88 + 6);
  if (!v82)
  {
    if (!v90)
    {
      v144 = *(v88 + 2);
      v145 = v89;
      v146 = v91;
      v141 = v94;
      v142 = v93;
      v110 = v85;
      v111 = v87;
      sub_1002EA664(0, v81, v84, v83, v86, v85, v87);
      sub_1002EA664(0, v145, v144, v146, v141, v142, v95);
      sub_1002E005C(0, v81, v84, v83, v86, v110, v111);
      goto LABEL_36;
    }

LABEL_34:
    v102 = v81;
    v148 = v81;
    v149 = v84;
    v103 = v89;
    v104 = v84;
    v105 = v92;
    v106 = v91;
    v150 = v86;
    v151 = v85;
    v107 = v94;
    v108 = v86;
    v109 = v93;
    v147 = v87;
    sub_1002EA664(v82, v102, v104, v83, v108, v85, v87);
    sub_1002EA664(v90, v103, v105, v106, v107, v109, v95);
    sub_1002E005C(v82, v148, v149, v83, v150, v151, v147);
    sub_1002E005C(v90, v103, v105, v106, v107, v109, v95);
    return 0;
  }

  if (!v90)
  {
    goto LABEL_34;
  }

  v154[0] = *v88;
  v154[1] = v89;
  v154[2] = v92;
  v154[3] = v91;
  v154[4] = v94;
  v154[5] = v93;
  v154[6] = v95;
  v153[0] = v82;
  v153[1] = v81;
  v153[2] = v84;
  v153[3] = v83;
  v153[4] = v86;
  v153[5] = v85;
  v153[6] = v87;
  v148 = v81;
  v149 = v84;
  v144 = v92;
  v145 = v89;
  v96 = v81;
  v97 = v84;
  v143 = v83;
  v146 = v91;
  v147 = v87;
  v150 = v86;
  v151 = v85;
  v98 = v94;
  v99 = v93;
  sub_1002EA664(v82, v96, v97, v83, v86, v85, v87);
  v101 = v144;
  v100 = v145;
  sub_1002EA664(v90, v145, v144, v146, v98, v99, v95);
  LODWORD(v142) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v154);
  sub_1002E005C(v90, v100, v101, v146, v98, v99, v95);
  sub_1002E005C(v82, v148, v149, v143, v150, v151, v147);
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v112 = v152;
  v113 = v152[11];
  v114 = (a1 + v113);
  v115 = *(a1 + v113 + 16);
  v116 = a2 + v113;
  v117 = *(v116 + 2);
  if (v115 == 1)
  {
    if (v117 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v117 == 1)
    {
      return 0;
    }

    result = 0;
    v126 = *v114;
    v127 = *v116;
    if (*v114 != *v116)
    {
      return result;
    }

    v128 = v114[1];
    v129 = *(v116 + 1);
    if (*&v128 != *&v129)
    {
      return result;
    }

    if (v115)
    {
      if (!v117)
      {
        return 0;
      }

      sub_100006F10(0, &qword_100641C80, UIColor_ptr);
      sub_1003DD408(v127, v129, v117);
      sub_1003DD408(v126, v128, v115);
      v130 = sub_1004DE5FC();
      sub_1002EA654(v126, v128, v115);
      sub_1002EA654(v127, v129, v117);
      v112 = v152;
      if ((v130 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v112 = v152;
      if (v117)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v112[12]) != *(a2 + v112[12]))
  {
    return 0;
  }

  result = 0;
  v118 = v112[13];
  v119 = a1 + v118;
  v120 = *(a1 + v118);
  v121 = (a2 + v118);
  if (v120 == *v121 && *(v119 + 8) == v121[1])
  {
    v122 = v152[14];
    v123 = (a1 + v122);
    v124 = *(a1 + v122 + 16);
    v125 = (a2 + v122);
    if (v124)
    {
      if ((v125[2] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (v125[2])
    {
      return 0;
    }

    result = 0;
    if (*v123 == *v125 && v123[1] == v125[1])
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v152[15]), *(a2 + v152[15])), vceqq_f64(*(a1 + v152[15] + 16), *(a2 + v152[15] + 16))))))
      {
        v131 = v152[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v131), *(a1 + v131 + 8), *(a1 + v131 + 16), *(a1 + v131 + 24), *(a2 + v131), *(a2 + v131 + 8), *(a2 + v131 + 16), *(a2 + v131 + 24)) & 1) != 0 && *(a1 + v152[17]) == *(a2 + v152[17]))
        {
          v132 = v152[18];
          v133 = *(a1 + v132);
          v134 = *(a2 + v132);
          if (v133)
          {
            if (v134)
            {
              sub_100006F10(0, &qword_100641C80, UIColor_ptr);
              v135 = v134;
              v136 = v133;
              v137 = sub_1004DE5FC();

              if (v137)
              {
LABEL_64:
                v138 = v152[19];
                v139 = *(a1 + v138);
                v140 = *(a2 + v138);
                if (v139 == 2)
                {
                  if (v140 == 2)
                  {
                    return 1;
                  }
                }

                else if (v140 != 2 && ((v140 ^ v139) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v134)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_1003DBA90@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_1005272E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_1003DBAE0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v58 = &v57 - v5;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v59 - 8);
  __chkstk_darwin();
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v10 = 0;
  v10[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v14 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v14);
  v67.super_class = v14;
  v15 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_1003D691C(&v68);

  *&v4[v13] = v15;
  v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = *&static SymbolButton.Background.clear;
  v19 = qword_100673C58;
  v18 = qword_100673C60;
  v20 = qword_100673C68;
  v21 = type metadata accessor for SymbolButton.BackgroundView();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v23 = 0;
  *(v23 + 1) = 0x3FF0000000000000;
  v66.receiver = v22;
  v66.super_class = v21;
  v24 = v19;

  v25 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v19, v18, v20, v17);
  sub_1003D6F58();

  *&v4[v16] = v25;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v6 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v26 = v62;
  sub_1003DF60C(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v27 = *v10;
  v28 = v10[1];
  v29 = v60;
  v30 = v61;
  *v10 = v60;
  v10[1] = v30;
  sub_10000DE64(v29, v30);
  sub_10000DE74(v27, v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *(v32 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *(v32 + v33);
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*(v32 + v33)];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*(v32 + v33) addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView)];
  v38 = [*(v35 + v37) contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView)];

  v40 = *(v35 + v39);
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_1000108DC(v46, v58, &qword_100644A50, &qword_100528DC0);
      v48 = sub_1004DE53C();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_10001074C(v47, &qword_100644A50, &qword_100528DC0);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_1003D4C48(v26);
  v49 = v63;
  sub_1003D4740(v63);
  sub_1003D5A50();
  sub_1003DD438(v49, type metadata accessor for SymbolButton.Metrics);
  sub_100006F10(0, &qword_10063E980, UIAction_ptr);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = sub_1004DE62C();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_1003DD438(v26, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = sub_1004DF08C();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = sub_1004DD43C();
  v17 = v16;
  if (v15 == sub_1004DD43C() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = sub_1004DF08C();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_1003DC41C(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = sub_1004DF08C();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = sub_1004DD43C();
  v16 = v15;
  if (v14 == sub_1004DD43C() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1004DF08C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_100006F10(0, &qword_100641C80, UIColor_ptr);
        v24 = sub_1004DE5FC();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_1003D691C(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_100673C58;
  v12 = qword_100673C60;
  v14 = qword_100673C68;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v13, v12, v14, v11);
  sub_1003D6F58();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_1003DC954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DC9B8()
{

  return swift_deallocObject();
}

uint64_t sub_1003DC9F0()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v27 = v0;
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v26 = v4;
  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_1004DE53C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v27 + v15;

  v19 = *(v27 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_1003DCD70()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1003CD428((v0 + v4), (v0 + v5), v7, v8);
}

double sub_1003DCE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003DCE40()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 24) & ~v25;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;

  v5 = *(v0 + v2 + 208);
  if (v5 != 1)
  {
  }

  v6 = *(v4 + 232);
  if (v6 != 1)
  {
  }

  v7 = v3 + v25;

  v8 = v1[9];
  v9 = sub_1004DE53C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v7 + v2;
  v13 = (v4 + v1[10]);
  if (*v13)
  {
  }

  v14 = v12 & ~v25;
  v15 = *(v4 + v1[11] + 16);
  if (v15 != 1)
  {
  }

  v16 = v4 + v1[16];

  v17 = v0 + v14;

  v18 = *(v0 + v14 + 208);
  if (v18 != 1)
  {
  }

  v19 = *(v17 + 232);
  if (v19 != 1)
  {
  }

  v20 = v1[9];
  if (!v11(v17 + v20, 1, v9))
  {
    (*(v10 + 8))(v17 + v20, v9);
  }

  v21 = (v17 + v1[10]);
  if (*v21)
  {
  }

  v22 = *(v17 + v1[11] + 16);
  if (v22 != 1)
  {
  }

  v23 = v17 + v1[16];

  return swift_deallocObject();
}

void sub_1003DD1D4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  sub_1003CE180(v9, v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1003DD280()
{

  return swift_deallocObject();
}

void sub_1003DD3C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    v5 = a2;
  }
}

id sub_1003DD408(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_1003DD438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DD498()
{

  return swift_deallocObject();
}

BOOL sub_1003DD4E4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = sub_1004DF08C();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = sub_1004DD43C();
  v14 = v13;
  if (v12 == sub_1004DD43C() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = sub_1004DF08C();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_1003DF554;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D9EC4;
  aBlock[3] = &unk_1005F37F0;
  v6 = _Block_copy(aBlock);
  sub_10000DE64(v2, v3);
  sub_10000DE64(v2, v3);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_10000DE74(v2, v3);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  sub_100004CB8(&unk_100644F60, &qword_100529C10);
  __chkstk_darwin();
  v4 = &v86[-v3];
  v5 = sub_1004DE4EC();
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin();
  v93 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004DE53C();
  v8 = *(v7 - 8);
  v101 = v7;
  v102 = v8;
  __chkstk_darwin();
  v92 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100004CB8(&qword_10063E4C8, &qword_100529170);
  __chkstk_darwin();
  v12 = &v86[-v11];
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v14 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v16 = &v86[-v15];
  __chkstk_darwin();
  v18 = &v86[-v17];
  v103 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v96 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v21 = &v86[-v20];
  __chkstk_darwin();
  v23 = &v86[-v22];
  v24 = sub_1004D978C();
  v99 = *(v24 - 8);
  v100 = v24;
  __chkstk_darwin();
  v97 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v26 = __chkstk_darwin().n128_u64[0];
  v98 = &v86[-v27];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v29 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v91 = v29;
  v89 = v4;
  v90 = v1;
  v30 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003DF60C(v30, v23, type metadata accessor for SymbolButton.Configuration);
  v31 = *(v23 + 29);
  if (v31 == 1)
  {
    sub_1003DD438(v23, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v32 = v31;
    sub_1003DD438(v23, type metadata accessor for SymbolButton.Configuration);
    if (v31)
    {

      goto LABEL_10;
    }
  }

  if (*(v30 + 208) == 1 && !*(v30 + *(v103 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v33 = [v90 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v88 = v30;
  if (v34 != 6)
  {
LABEL_19:
    v52 = objc_allocWithZone(UITargetedPreview);
    v53 = [v52 initWithView:v91];
    v54 = [v53 parameters];
    v47 = &selRef_setShadowPathIsBounds_;
    v44 = v90;
    [v90 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_1003DF60C(v30, v21, type metadata accessor for SymbolButton.Configuration);
    if ((*(v102 + 48))(&v21[*(v103 + 36)], 1, v101))
    {
      sub_1003DD438(v21, type metadata accessor for SymbolButton.Configuration);
      sub_1004D974C();
      v64 = v63;
    }

    else
    {
      v65 = v93;
      sub_1004DE50C();
      sub_1003DD438(v21, type metadata accessor for SymbolButton.Configuration);
      [v44 bounds];
      sub_1004DE4DC();
      v64 = v66;
      (*(v94 + 8))(v65, v95);
    }

    v42 = v98;
    v41 = v99;
    v46 = v97;
    v67 = [objc_opt_self() bezierPathWithRoundedRect:v56 cornerRadius:{v58, v60, v62, v64}];
    [v54 setShadowPath:v67];

    *v42 = v53;
    v43 = &enum case for UIPointerEffect.lift(_:);
    v45 = v96;
    v30 = v88;
    goto LABEL_23;
  }

  sub_1000108DC(v30 + *(v103 + 36), v18, &qword_100644A50, &qword_100528DC0);
  sub_1004DE52C();
  v35 = v101;
  v36 = v102;
  (*(v102 + 56))(v16, 0, 1, v101);
  v37 = *(v10 + 48);
  sub_1000108DC(v18, v12, &qword_100644A50, &qword_100528DC0);
  sub_1000108DC(v16, &v12[v37], &qword_100644A50, &qword_100528DC0);
  v38 = *(v36 + 48);
  if (v38(v12, 1, v35) == 1)
  {
    sub_10001074C(v16, &qword_100644A50, &qword_100528DC0);
    sub_10001074C(v18, &qword_100644A50, &qword_100528DC0);
    if (v38(&v12[v37], 1, v35) == 1)
    {
      sub_10001074C(v12, &qword_100644A50, &qword_100528DC0);
      v30 = v88;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1000108DC(v12, v14, &qword_100644A50, &qword_100528DC0);
  if (v38(&v12[v37], 1, v35) == 1)
  {
    sub_10001074C(v16, &qword_100644A50, &qword_100528DC0);
    sub_10001074C(v18, &qword_100644A50, &qword_100528DC0);
    (*(v102 + 8))(v14, v35);
LABEL_16:
    sub_10001074C(v12, &qword_10063E4C8, &qword_100529170);
    v30 = v88;
    goto LABEL_17;
  }

  v48 = v102;
  v49 = &v12[v37];
  v50 = v92;
  (*(v102 + 32))(v92, v49, v35);
  sub_1003DF6DC(&qword_10063E4D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v87 = sub_1004DD35C();
  v51 = *(v48 + 8);
  v51(v50, v35);
  sub_10001074C(v16, &qword_100644A50, &qword_100528DC0);
  sub_10001074C(v18, &qword_100644A50, &qword_100528DC0);
  v51(v14, v35);
  sub_10001074C(v12, &qword_100644A50, &qword_100528DC0);
  v30 = v88;
  if (v87)
  {
    goto LABEL_19;
  }

LABEL_17:
  v39 = objc_allocWithZone(UITargetedPreview);
  v40 = [v39 initWithView:v91];
  v42 = v98;
  v41 = v99;
  *v98 = v40;
  v43 = &enum case for UIPointerEffect.highlight(_:);
  v44 = v90;
  v45 = v96;
  v46 = v97;
  v47 = &selRef_setShadowPathIsBounds_;
LABEL_23:
  v68 = v100;
  (*(v41 + 104))(v42, *v43, v100);
  (*(v41 + 16))(v46, v42, v68);
  [v44 v47[150]];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  sub_1003DF60C(v30, v45, type metadata accessor for SymbolButton.Configuration);
  if ((*(v102 + 48))(v45 + *(v103 + 36), 1, v101))
  {
    sub_1003DD438(v45, type metadata accessor for SymbolButton.Configuration);
    sub_1004D974C();
    v78 = v77;
  }

  else
  {
    v79 = v93;
    sub_1004DE50C();
    sub_1003DD438(v45, type metadata accessor for SymbolButton.Configuration);
    [v44 v47[150]];
    sub_1004DE4DC();
    v78 = v80;
    (*(v94 + 8))(v79, v95);
  }

  sub_100006F10(0, &qword_10063E968, UIPointerStyle_ptr);
  v81 = v89;
  *v89 = v70;
  v81[1] = v72;
  v81[2] = v74;
  v81[3] = v76;
  v81[4] = v78;
  v82 = enum case for UIPointerShape.roundedRect(_:);
  v83 = sub_1004D975C();
  v84 = *(v83 - 8);
  (*(v84 + 104))(v81, v82, v83);
  (*(v84 + 56))(v81, 0, 1, v83);
  v85 = sub_1004DDFCC();

  (*(v41 + 8))(v42, v68);
  return v85;
}

unint64_t sub_1003DE3DC(uint64_t a1)
{
  result = sub_1003DE404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE404()
{
  result = qword_100644AB8;
  if (!qword_100644AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AB8);
  }

  return result;
}

unint64_t sub_1003DE458(uint64_t a1)
{
  result = sub_1003DE480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE480()
{
  result = qword_100644AC0;
  if (!qword_100644AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AC0);
  }

  return result;
}

unint64_t sub_1003DE4D4(uint64_t a1)
{
  result = sub_1003DE4FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE4FC()
{
  result = qword_100644AC8;
  if (!qword_100644AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AC8);
  }

  return result;
}

unint64_t sub_1003DE554()
{
  result = qword_100644AD0;
  if (!qword_100644AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AD0);
  }

  return result;
}

unint64_t sub_1003DE5A8(uint64_t a1)
{
  result = sub_1003DE5D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE5D0()
{
  result = qword_100644AD8;
  if (!qword_100644AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AD8);
  }

  return result;
}

unint64_t sub_1003DE624(uint64_t a1)
{
  result = sub_1003DE64C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE64C()
{
  result = qword_100644AE0;
  if (!qword_100644AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644AE0);
  }

  return result;
}

void sub_1003DE6A8(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1003DEC44(319, &qword_100644B30, type metadata accessor for SymbolButton.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for SymbolButton.Animation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymbolButton.Animation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1003DE888(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003DE958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003DEA08(uint64_t a1)
{
  sub_10004BEAC(319, &qword_100644BA0, &type metadata for SymbolButton.Background);
  if (v1 <= 0x3F)
  {
    sub_10004BEAC(319, &qword_100644BA8, &type metadata for SymbolButton.Material);
    if (v2 <= 0x3F)
    {
      sub_10004BEAC(319, &unk_100644BB0, &type metadata for UIView.Border);
      if (v3 <= 0x3F)
      {
        sub_1003DEC44(319, &qword_10063E448, &type metadata accessor for UIView.Corner);
        if (v4 <= 0x3F)
        {
          sub_10004BEAC(319, &qword_100644BC0, &type metadata for SymbolButton.CustomView);
          if (v5 <= 0x3F)
          {
            sub_10004BEAC(319, &qword_100644BC8, &type metadata for SymbolButton.Badge);
            if (v6 <= 0x3F)
            {
              _s3__C6CGSizeVMa_1(319);
              if (v7 <= 0x3F)
              {
                sub_1003DEC44(319, &qword_100644BD0, _s3__C6CGSizeVMa_1);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for NSDirectionalEdgeInsets(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1001DFFB0(319, &unk_100644BD8, &qword_100641C80, UIColor_ptr);
                    if (v10 <= 0x3F)
                    {
                      sub_10004BEAC(319, &unk_100644BE8, &type metadata for Bool);
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_1003DEC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003DEC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1003DECF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1003DED5C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1003DED88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1003DEDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DEE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1003DEE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003DEEF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003DEF54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003DF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
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

uint64_t sub_1003DF19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
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

void sub_1003DF264(uint64_t a1)
{
  sub_1001DFFB0(319, &qword_100644DF8, &unk_100644E00, UITraitCollection_ptr);
  if (v1 <= 0x3F)
  {
    sub_1003DEC44(319, &qword_10063E448, &type metadata accessor for UIView.Corner);
    if (v2 <= 0x3F)
    {
      sub_100006F10(319, &qword_100643860, UIFont_ptr);
      if (v3 <= 0x3F)
      {
        sub_100006F10(319, &unk_100644E10, UIImageSymbolConfiguration_ptr);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v5 <= 0x3F)
          {
            _s3__C6CGSizeVMa_1(319);
            if (v6 <= 0x3F)
            {
              sub_1003DEC44(319, &qword_100644BD0, _s3__C6CGSizeVMa_1);
              if (v7 <= 0x3F)
              {
                type metadata accessor for NSDirectionalEdgeInsets(319);
                if (v8 <= 0x3F)
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
}

unint64_t sub_1003DF3F4()
{
  result = qword_100644E60;
  if (!qword_100644E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644E60);
  }

  return result;
}

unint64_t sub_1003DF44C()
{
  result = qword_100644E98;
  if (!qword_100644E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644E98);
  }

  return result;
}

unint64_t sub_1003DF4A4()
{
  result = qword_100644ED0;
  if (!qword_100644ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644ED0);
  }

  return result;
}

unint64_t sub_1003DF4FC()
{
  result = qword_100644F08;
  if (!qword_100644F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644F08);
  }

  return result;
}

uint64_t sub_1003DF584()
{

  return swift_deallocObject();
}

uint64_t sub_1003DF60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF6DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1003DF724(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;

    return sub_10000DE64(a4, a5);
  }

  return result;
}

void *sub_1003DF76C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_10000DE74(a4, a5);
  }

  return result;
}

uint64_t sub_1003DF7B4()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_1004DE53C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

void sub_1003DFB30()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1003CE980(v6, (v0 + v4), (v0 + v5), v7);
}

uint64_t sub_1003DFBF4(uint64_t a1)
{
  if (*(v1 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_1003DFC48()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_1003DFC6C(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    v8 = result;

    v9 = v8;
    v10 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_1003DFCCC()
{

  return swift_deallocObject();
}

__n128 sub_1003DFD38(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003DFD5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003DFDB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003DFE48()
{
  result = qword_100644FB8;
  if (!qword_100644FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100644FB8);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

void TextArray.body.getter(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_1003E1190(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v51 = v5;
    v53 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_100051E00(v10, v11, v12);
      v63 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_1003E1190((v15 > 1), v14 + 1, 1);
        v7 = v63;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v53;
    v4 = a3;
    v5 = v51;
  }

  v63 = a2;
  v64 = v4;
  sub_1002E6780();

  v17 = sub_1004DB34C();
  v19 = v18;
  v60[0] = v17;
  v60[1] = v18;
  v21 = v20 & 1;
  v61 = v20 & 1;
  v62 = v22;
  Array<A>.joined(separator:)(v60, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v63);

  sub_100051E10(v17, v19, v21);

  v23 = 0;
  v24 = v63;
  v54 = v64;
  v52 = v65;
  v25 = v66;
  v26 = v5 + 72;
  v27 = _swiftEmptyArrayStorage;
LABEL_8:
  v28 = (v26 + 48 * v23);
  while (1)
  {
    if (v6 == v23)
    {
      v63 = v27;
      sub_100004CB8(&qword_10063EA98, &qword_10052A338);
      sub_1002FEB24();
      v37 = sub_1004DD30C();
      v39 = v38;

      v63 = v37;
      v64 = v39;
      v40 = sub_1004DB34C();
      v42 = v41;
      v44 = v43;
      v45 = sub_1004DB25C();
      v47 = v46;
      v56 = v48;
      v59 = v49;
      sub_100051E10(v24, v54, v52);

      sub_100051E10(v40, v42, v44 & 1);

      *a4 = v45;
      *(a4 + 8) = v47;
      *(a4 + 16) = v56 & 1;
      *(a4 + 24) = v59;
      return;
    }

    if (v23 >= v6)
    {
      break;
    }

    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_20;
    }

    v31 = *v28;
    v28 += 6;
    v30 = v31;
    ++v23;
    if (v31)
    {
      v50 = v25;
      v32 = *(v28 - 7);

      v33 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1003E05CC(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_1003E05CC((v34 > 1), v35 + 1, 1, v27);
      }

      *(v27 + 2) = v35 + 1;
      v36 = &v27[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v30;
      v23 = v29;
      v6 = v33;
      v25 = v50;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1002E6780();

  result = sub_1004DB34C();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1003E0360@<X0>(uint64_t a3@<X8>)
{
  result = sub_1004DB27C();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

double sub_1003E03BC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100527310;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void *sub_1003E03DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_10063DF68, &qword_100528BE8);
  v10 = *(sub_100004CB8(&qword_10063DF60, &qword_100528BE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_10063DF60, &qword_100528BE0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003E05CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006432D0, &qword_100530620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0700(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F1F8, &unk_10052B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1003E082C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1003E0A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FF0, &qword_100533610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0B28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FE8, &qword_100533608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100644FC0, &qword_1005335E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003E0D58(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100644FE0, &qword_100533600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100643390, &qword_1005307B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003E0E8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100644FD0, &qword_1005335F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100644FD8, &qword_1005335F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003E0FC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063F4F0, &unk_100532080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003E10D0(void *a1, int64_t a2, char a3)
{
  result = sub_10038E87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E10F0(char *a1, int64_t a2, char a3)
{
  result = sub_10038EA6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1110(char *a1, int64_t a2, char a3)
{
  result = sub_10038EB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1130(char *a1, int64_t a2, char a3)
{
  result = sub_10038EC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1150(char *a1, int64_t a2, char a3)
{
  result = sub_10038ED84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003E1170(void *a1, int64_t a2, char a3)
{
  result = sub_10038EE90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E1190(char *a1, int64_t a2, char a3)
{
  result = sub_10038F15C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1003E1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t sub_1003E12FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1003E3BE8(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  sub_1003E23F4(v9, v6, a3, a5, v21);
  sub_100051E10(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_1003E153C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v84 + 1) = a2;
  v85 = a4;
  v80 = a3;
  *&v84 = a1;
  v81 = a6;
  v83 = sub_100004CB8(&qword_100645088, &qword_1005336E8);
  __chkstk_darwin();
  v8 = &v71[-v7];
  v78 = sub_100004CB8(&qword_100645090, &qword_1005336F0);
  __chkstk_darwin();
  v76 = &v71[-v9];
  sub_100004CB8(&qword_100645098, &qword_1005336F8);
  __chkstk_darwin();
  v11 = &v71[-v10];
  v77 = sub_100004CB8(&qword_100645060, &qword_1005336D0);
  __chkstk_darwin();
  v74 = &v71[-v12];
  v82 = sub_100004CB8(&qword_100645020, &qword_1005336B0);
  __chkstk_darwin();
  v79 = &v71[-v13];
  v14 = sub_100004CB8(&qword_100645070, &qword_1005336D8);
  __chkstk_darwin();
  v16 = &v71[-v15];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v75 = v8;
        if (a5 == 8)
        {
          v17 = sub_1004DB87C();
          KeyPath = swift_getKeyPath();
          v19 = swift_getKeyPath();
          LOBYTE(v111) = v80 & 1;
          LOBYTE(v105) = 0;
          v119 = v84;
          LOBYTE(v120) = v80 & 1;
          *(&v120 + 1) = v85;
          *&v121 = KeyPath;
          *(&v121 + 1) = v17;
          *&v122 = v19;
          *(&v122 + 1) = 1;
          LOBYTE(v123) = 0;
          v125 = v84;
          LOBYTE(v126) = v80 & 1;
          *(&v126 + 1) = v85;
          *&v127 = KeyPath;
          *(&v127 + 1) = v17;
          *&v128 = v19;
          *(&v128 + 1) = 1;
          LOBYTE(v129) = 0;
          sub_100051E00(v84, *(&v84 + 1), v80 & 1);

          sub_1000108DC(&v119, &v86, &qword_100645040, &qword_1005336C0);
          sub_10001074C(&v125, &qword_100645040, &qword_1005336C0);
          v20 = v122;
          v21 = v75;
          *(v75 + 2) = v121;
          *(v21 + 48) = v20;
          *(v21 + 64) = v123;
          v22 = v120;
          *v21 = v119;
          *(v21 + 16) = v22;
          swift_storeEnumTagMultiPayload();
          sub_100004CB8(&qword_100645040, &qword_1005336C0);
          sub_1003E42C8();
          sub_1003E43E0();
          return sub_1004DAADC();
        }

        goto LABEL_11;
      }

      v56 = sub_1004DB87C();
      v75 = v56;
      v57 = swift_getKeyPath();
      v58 = v84;
      *v11 = v84;
      v59 = v80 & 1;
      v11[16] = v59;
      v80 = v59;
      *(v11 + 3) = v85;
      *(v11 + 4) = v57;
      v73 = v57;
      *(v11 + 5) = v56;
      swift_storeEnumTagMultiPayload();
      sub_100051E00(v58, *(&v58 + 1), v59);

      sub_100051E00(v58, *(&v58 + 1), v59);

      sub_100004CB8(&qword_100642060, &qword_10052EF98);
      sub_1003E45B4();
      sub_1003709CC();
      v60 = v74;
      sub_1004DAADC();
      sub_1000108DC(v60, v76, &qword_100645060, &qword_1005336D0);
      swift_storeEnumTagMultiPayload();
      sub_100004CB8(&qword_100645030, &qword_1005336B8);
      sub_1003E4354();
      sub_1003E4528();
      v61 = v79;
      sub_1004DAADC();
      sub_10001074C(v60, &qword_100645060, &qword_1005336D0);
      sub_1000108DC(v61, v8, &qword_100645020, &qword_1005336B0);
      swift_storeEnumTagMultiPayload();
      sub_100004CB8(&qword_100645040, &qword_1005336C0);
      sub_1003E42C8();
      sub_1003E43E0();
      sub_1004DAADC();
      sub_100051E10(v84, *(&v84 + 1), v80);

      v35 = v61;
      v36 = &qword_100645020;
      v37 = &qword_1005336B0;
      return sub_10001074C(v35, v36, v37);
    }

LABEL_9:
    v38 = sub_1004DB8AC();
    v75 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v80 & 1;
    LOBYTE(v86) = v80 & 1;
    LOBYTE(v111) = 0;
    v43 = v84;
    v92 = v84;
    LOBYTE(v93) = v80 & 1;
    v44 = v85;
    *(&v93 + 1) = v85;
    *&v94 = v40;
    *(&v94 + 1) = v39;
    *&v95 = v41;
    *(&v95 + 1) = 2;
    v96 = 0;
    v45 = swift_getKeyPath();
    v121 = v94;
    v122 = v95;
    LOBYTE(v123) = v96;
    v119 = v92;
    v120 = v93;
    v97 = v43;
    v98 = v42;
    v99 = v44;
    v100 = v40;
    v101 = v39;
    v102 = v41;
    v103 = 2;
    v104 = 0;
    sub_100051E00(v43, *(&v43 + 1), v42);

    sub_1000108DC(&v92, &v125, &qword_100645040, &qword_1005336C0);
    sub_10001074C(&v97, &qword_100645040, &qword_1005336C0);
    v107 = v121;
    v108 = v122;
    v105 = v119;
    v106 = v120;
    *&v109 = v123;
    *(&v109 + 1) = v45;
    v110 = 1;
    v113 = v121;
    v114 = v122;
    v111 = v119;
    v112 = v120;
    v115 = v123;
    v116 = v45;
    v117 = 1;
    sub_1000108DC(&v105, &v125, &qword_100645050, &qword_1005336C8);
    sub_10001074C(&v111, &qword_100645050, &qword_1005336C8);
    v127 = v107;
    v128 = v108;
    v129 = v109;
    LOBYTE(v130) = v110;
    v125 = v105;
    v126 = v106;
    v118 = 1;
    HIBYTE(v130) = 1;
    sub_1000108DC(&v105, &v119, &qword_100645050, &qword_1005336C8);
    sub_1000108DC(&v105, &v119, &qword_100645050, &qword_1005336C8);
    sub_100004CB8(&qword_100645040, &qword_1005336C0);
    sub_100004CB8(&qword_100645050, &qword_1005336C8);
    sub_1003E43E0();
    sub_1003E4484();
    sub_1004DAADC();
    v46 = v89;
    v121 = v88;
    v122 = v89;
    v47 = v90;
    v123 = v90;
    v48 = v91;
    v124 = v91;
    v49 = v86;
    v50 = v87;
    v119 = v86;
    v120 = v87;
    v51 = v76;
    *(v76 + 2) = v88;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v119, &v125, &qword_100645030, &qword_1005336B8);
    sub_100004CB8(&qword_100645030, &qword_1005336B8);
    sub_1003E4354();
    sub_1003E4528();
    v52 = v79;
    sub_1004DAADC();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_10001074C(&v125, &qword_100645030, &qword_1005336B8);
    sub_1000108DC(v52, v75, &qword_100645020, &qword_1005336B0);
    swift_storeEnumTagMultiPayload();
    sub_1003E42C8();
    sub_1004DAADC();
    v53 = &qword_100645050;
    v54 = &qword_100645050;
    v55 = &qword_1005336C8;
LABEL_12:
    sub_10001074C(&v105, v54, v55);
    sub_10001074C(&v105, v53, v55);
    v35 = v52;
    v36 = &qword_100645020;
    v37 = &qword_1005336B0;
    return sub_10001074C(v35, v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v75 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v62 = sub_1004DB89C();
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    LOBYTE(v119) = v80 & 1;
    LOBYTE(v86) = 0;
    v105 = v84;
    LOBYTE(v106) = v80 & 1;
    *(&v106 + 1) = v85;
    *&v107 = v63;
    *(&v107 + 1) = v62;
    *&v108 = v64;
    *(&v108 + 1) = 1;
    LOBYTE(v109) = 0;
    v111 = v84;
    LOBYTE(v112) = v80 & 1;
    *(&v112 + 1) = v85;
    *&v113 = v63;
    *(&v113 + 1) = v62;
    *&v114 = v64;
    *(&v114 + 1) = 1;
    LOBYTE(v115) = 0;
    sub_100051E00(v84, *(&v84 + 1), v80 & 1);

    sub_1000108DC(&v105, &v125, &qword_100645040, &qword_1005336C0);
    sub_10001074C(&v111, &qword_100645040, &qword_1005336C0);
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v125 = v105;
    v126 = v106;
    LOBYTE(v97) = 0;
    HIBYTE(v130) = 0;
    sub_1000108DC(&v105, &v119, &qword_100645040, &qword_1005336C0);
    sub_1000108DC(&v105, &v119, &qword_100645040, &qword_1005336C0);
    sub_100004CB8(&qword_100645040, &qword_1005336C0);
    sub_100004CB8(&qword_100645050, &qword_1005336C8);
    sub_1003E43E0();
    sub_1003E4484();
    sub_1004DAADC();
    v65 = v89;
    v121 = v88;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v91;
    v124 = v91;
    v68 = v86;
    v69 = v87;
    v119 = v86;
    v120 = v87;
    v70 = v76;
    *(v76 + 2) = v88;
    *(v70 + 3) = v65;
    *(v70 + 4) = v66;
    *(v70 + 40) = v67;
    *v70 = v68;
    *(v70 + 1) = v69;
    swift_storeEnumTagMultiPayload();
    sub_1000108DC(&v119, &v125, &qword_100645030, &qword_1005336B8);
    sub_100004CB8(&qword_100645030, &qword_1005336B8);
    sub_1003E4354();
    sub_1003E4528();
    v52 = v79;
    sub_1004DAADC();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_10001074C(&v125, &qword_100645030, &qword_1005336B8);
    sub_1000108DC(v52, v75, &qword_100645020, &qword_1005336B0);
    swift_storeEnumTagMultiPayload();
    sub_1003E42C8();
    sub_1004DAADC();
    v53 = &qword_100645040;
    v54 = &qword_100645040;
    v55 = &qword_1005336C0;
    goto LABEL_12;
  }

  v24 = sub_1004DB8AC();
  v73 = swift_getKeyPath();
  v25 = &v16[*(sub_100004CB8(&qword_100645080, &qword_1005336E0) + 36)];
  v26 = *(sub_100004CB8(&qword_100642760, &qword_10052F7A8) + 28);
  v72 = enum case for Text.Case.uppercase(_:);
  v27 = sub_1004DB28C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25 + v26, v72, v27);
  (*(v28 + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v29 = v84;
  *v16 = v84;
  LOBYTE(v27) = v80 & 1;
  v16[16] = v80 & 1;
  v30 = v73;
  *(v16 + 3) = v85;
  *(v16 + 4) = v30;
  *(v16 + 5) = v24;
  v31 = swift_getKeyPath();
  v32 = &v16[*(v14 + 36)];
  *v32 = v31;
  *(v32 + 1) = 1;
  v32[16] = 0;
  sub_1000108DC(v16, v11, &qword_100645070, &qword_1005336D8);
  swift_storeEnumTagMultiPayload();
  sub_100051E00(v29, *(&v29 + 1), v27);

  sub_100004CB8(&qword_100642060, &qword_10052EF98);
  sub_1003E45B4();
  sub_1003709CC();
  v33 = v74;
  sub_1004DAADC();
  sub_1000108DC(v33, v76, &qword_100645060, &qword_1005336D0);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100645030, &qword_1005336B8);
  sub_1003E4354();
  sub_1003E4528();
  v34 = v79;
  sub_1004DAADC();
  sub_10001074C(v33, &qword_100645060, &qword_1005336D0);
  sub_1000108DC(v34, v75, &qword_100645020, &qword_1005336B0);
  swift_storeEnumTagMultiPayload();
  sub_100004CB8(&qword_100645040, &qword_1005336C0);
  sub_1003E42C8();
  sub_1003E43E0();
  sub_1004DAADC();
  sub_10001074C(v34, &qword_100645020, &qword_1005336B0);
  v35 = v16;
  v36 = &qword_100645070;
  v37 = &qword_1005336D8;
  return sub_10001074C(v35, v36, v37);
}

uint64_t sub_1003E23F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v200 = a4;
  LODWORD(v190) = a2;
  v186 = a1;
  v193 = a5;
  sub_100008DE4(&unk_100641A20, &unk_10052E7D0);
  v185 = a3;
  v6 = sub_1004DA32C();
  sub_100008DE4(&qword_100642760, &qword_10052F7A8);
  v7 = sub_1004DA32C();
  sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
  v8 = sub_1004DA32C();
  v9 = sub_1004DAAEC();
  v175 = *(v9 - 8);
  __chkstk_darwin();
  v174 = &v171 - v10;
  sub_100004CB8(&qword_100642EF8, &qword_100530120);
  __chkstk_darwin();
  v12 = &v171 - v11;
  v199 = v7;
  v173 = *(v7 - 8);
  __chkstk_darwin();
  v14 = &v171 - v13;
  v198 = v8;
  v177 = *(v8 - 8);
  __chkstk_darwin();
  v16 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v171 - v17;
  v19 = sub_1004DA32C();
  sub_100008DE4(&qword_100643CC8, &qword_100530FE8);
  v176 = *(sub_1004DA32C() - 8);
  __chkstk_darwin();
  v181 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v171 - v21;
  v195 = v22;
  v179 = *(sub_1004DAAEC() - 8);
  __chkstk_darwin();
  v178 = &v171 - v23;
  v197 = v24;
  v194 = v9;
  v183 = *(sub_1004DAAEC() - 8);
  __chkstk_darwin();
  v182 = &v171 - v25;
  v201 = v6;
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v28 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v171 - v29;
  v184 = *(v19 - 8);
  __chkstk_darwin();
  v32 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v171 - v33;
  v189 = v34;
  v196 = v19;
  sub_1004DAAEC();
  __chkstk_darwin();
  v188 = &v171 - v35;
  v191 = v37;
  v192 = v36;
  if (v190 > 5u)
  {
    if (v190 != 6)
    {
      v38 = v26;
      if (v190 == 7)
      {
        sub_1004DB87C();
        v110 = v200;
        sub_1004DB4BC();

        v111 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
        v264 = v110;
        v265 = v111;
        v112 = v201;
        WitnessTable = swift_getWitnessTable();
        sub_100339DC8();
        v114 = v198;
        v115 = *(v38 + 8);
        v187 = v38 + 8;
        v190 = v115;
        v115(v28, v112);
        sub_100339DC8();
        v116 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
        v262 = WitnessTable;
        v263 = v116;
        v117 = swift_getWitnessTable();
        v118 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
        v260 = v117;
        v261 = v118;
        v119 = swift_getWitnessTable();
        v120 = v174;
        sub_1003E12FC(v28, v114, v112, v119, WitnessTable);
        v258 = WitnessTable;
        v259 = v118;
        v121 = swift_getWitnessTable();
        v186 = v121;
        v122 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
        v256 = v121;
        v257 = v122;
        v123 = swift_getWitnessTable();
        v254 = v121;
        v255 = v123;
        v124 = v197;
        v125 = swift_getWitnessTable();
        v252 = v119;
        v253 = WitnessTable;
        v126 = v194;
        v127 = swift_getWitnessTable();
        v128 = v182;
        sub_1003E12FC(v120, v124, v126, v125, v127);
        (*(v175 + 8))(v120, v126);
        v250 = v125;
        v251 = v127;
        v129 = v189;
        v130 = swift_getWitnessTable();
        v56 = v188;
        sub_1003E1204(v128, v129, v196, v130, v186);
        v131 = v128;
        v84 = v200;
        (*(v183 + 8))(v131, v129);
        v132 = v30;
        v133 = v201;
        v134 = v190;
        v190(v28, v201);
        v134(v132, v133);
        goto LABEL_14;
      }

      v39 = v200;
      if (v190 == 8)
      {
        sub_1004DB87C();
        sub_1004DB4BC();

        v40 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
        v298 = v39;
        v299 = v40;
        v41 = v201;
        v42 = swift_getWitnessTable();
        v43 = v32;
        sub_1004DB75C();
        (*(v38 + 8))(v30, v41);
        v186 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
        v296 = v42;
        v297 = v186;
        v44 = v184;
        v45 = v196;
        v46 = swift_getWitnessTable();
        sub_100339DC8();
        v190 = *(v44 + 8);
        v190(v43, v45);
        sub_100339DC8();
        v47 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
        v294 = v46;
        v295 = v47;
        v48 = swift_getWitnessTable();
        v292 = v46;
        v293 = v48;
        v49 = swift_getWitnessTable();
        v50 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
        v290 = v42;
        v291 = v50;
        v288 = swift_getWitnessTable();
        v289 = v186;
        v286 = swift_getWitnessTable();
        v287 = v42;
        v51 = swift_getWitnessTable();
        v284 = v49;
        v285 = v51;
        v52 = v189;
        v53 = swift_getWitnessTable();
        v54 = v188;
        sub_1003E12FC(v43, v52, v45, v53, v46);
        v55 = v43;
        v56 = v54;
        v57 = v190;
        v190(v55, v45);
        v57(v187, v45);
LABEL_9:
        v84 = v200;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    sub_1004DB8AC();
    v85 = v200;
    sub_1004DB4BC();

    v86 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
    v232 = v85;
    v233 = v86;
    v87 = v201;
    v88 = swift_getWitnessTable();
    v89 = v187;
    v90 = v88;
    v185 = v88;
    sub_1004DB75C();
    (*(v26 + 8))(v30, v87);
    v186 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
    v230 = v90;
    v231 = v186;
    v91 = v196;
    v92 = swift_getWitnessTable();
    v93 = v181;
    sub_1004DB5EC();
    (*(v184 + 8))(v89, v91);
    v94 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
    v228 = v92;
    v229 = v94;
    v95 = v195;
    v96 = swift_getWitnessTable();
    sub_100339DC8();
    v190 = *(v176 + 8);
    v190(v93, v95);
    sub_100339DC8();
    v97 = v178;
    v177 = v92;
    sub_1003E12FC(v93, v91, v95, v92, v96);
    v226 = v92;
    v227 = v96;
    v98 = v197;
    v99 = swift_getWitnessTable();
    v100 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
    v101 = v185;
    v224 = v185;
    v225 = v100;
    v222 = swift_getWitnessTable();
    v223 = v186;
    v220 = swift_getWitnessTable();
    v221 = v101;
    v102 = v194;
    v103 = swift_getWitnessTable();
    v104 = v182;
    sub_1003E1204(v97, v98, v102, v99, v103);
    (*(v179 + 8))(v97, v98);
    v218 = v99;
    v219 = v103;
    v105 = v95;
    v106 = v196;
    v107 = v189;
    v108 = swift_getWitnessTable();
    v56 = v188;
    sub_1003E1204(v104, v107, v106, v108, v177);
    (*(v183 + 8))(v104, v107);
    v84 = v200;
    v109 = v190;
    v190(v181, v105);
    v109(v180, v105);
    goto LABEL_14;
  }

  v172 = v18;
  if (v190 == 4)
  {
    goto LABEL_10;
  }

  v38 = v26;
  v39 = v200;
  if (v190 == 5)
  {
    sub_1004DB8AC();
    sub_1004DB4BC();

    v58 = enum case for Text.Case.uppercase(_:);
    v59 = sub_1004DB28C();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v12, v58, v59);
    (*(v60 + 56))(v12, 0, 1, v59);
    v61 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
    v248 = v39;
    v249 = v61;
    v62 = v201;
    v63 = swift_getWitnessTable();
    v64 = v14;
    sub_1004DB71C();
    sub_10001074C(v12, &qword_100642EF8, &qword_100530120);
    (*(v38 + 8))(v30, v62);
    v65 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
    v246 = v63;
    v247 = v65;
    v66 = v199;
    v67 = swift_getWitnessTable();
    sub_1004DB75C();
    (*(v173 + 8))(v64, v66);
    v68 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
    v244 = v67;
    v245 = v68;
    v69 = v198;
    v70 = swift_getWitnessTable();
    v171 = v16;
    sub_100339DC8();
    v190 = *(v177 + 8);
    v177 += 8;
    v190(v16, v69);
    sub_100339DC8();
    v71 = v174;
    sub_1003E1204(v16, v69, v201, v70, v63);
    v242 = v63;
    v243 = v68;
    v72 = swift_getWitnessTable();
    v73 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
    v240 = v72;
    v187 = v72;
    v241 = v73;
    v74 = swift_getWitnessTable();
    v238 = v72;
    v239 = v74;
    v75 = v197;
    v76 = swift_getWitnessTable();
    v236 = v70;
    v237 = v63;
    v77 = v194;
    v78 = swift_getWitnessTable();
    v79 = v182;
    sub_1003E12FC(v71, v75, v77, v76, v78);
    (*(v175 + 8))(v71, v77);
    v234 = v76;
    v235 = v78;
    v80 = v196;
    v81 = v189;
    v82 = swift_getWitnessTable();
    v56 = v188;
    sub_1003E1204(v79, v81, v80, v82, v187);
    (*(v183 + 8))(v79, v81);
    v83 = v190;
    v190(v171, v69);
    v83(v172, v69);
    goto LABEL_9;
  }

LABEL_12:
  sub_1004DB89C();
  sub_1004DB4BC();

  v135 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
  v216 = v39;
  v217 = v135;
  v136 = v201;
  v137 = swift_getWitnessTable();
  v138 = v184;
  v139 = v137;
  v140 = v32;
  sub_1004DB75C();
  (*(v38 + 8))(v30, v136);
  v141 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
  v214 = v139;
  v215 = v141;
  v142 = v196;
  v143 = swift_getWitnessTable();
  sub_100339DC8();
  v190 = *(v138 + 8);
  v184 = v138 + 8;
  v190(v32, v142);
  sub_100339DC8();
  v144 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
  v212 = v143;
  v213 = v144;
  v186 = v143;
  v145 = v195;
  v146 = swift_getWitnessTable();
  v147 = v178;
  sub_1003E1204(v140, v142, v145, v143, v146);
  v210 = v143;
  v211 = v146;
  v148 = v197;
  v185 = swift_getWitnessTable();
  v149 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
  v208 = v139;
  v209 = v149;
  v206 = swift_getWitnessTable();
  v207 = v141;
  v204 = swift_getWitnessTable();
  v205 = v139;
  v150 = v194;
  v151 = swift_getWitnessTable();
  v152 = v182;
  v153 = v185;
  sub_1003E1204(v147, v148, v150, v185, v151);
  (*(v179 + 8))(v147, v148);
  v202 = v153;
  v203 = v151;
  v154 = v200;
  v155 = v189;
  v156 = swift_getWitnessTable();
  v157 = v188;
  sub_1003E1204(v152, v155, v142, v156, v186);
  (*(v183 + 8))(v152, v155);
  v158 = v140;
  v84 = v154;
  v56 = v157;
  v159 = v190;
  v190(v158, v142);
  v159(v187, v142);
LABEL_14:
  v160 = sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
  v282 = v84;
  v283 = v160;
  v161 = swift_getWitnessTable();
  v162 = sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
  v280 = v161;
  v281 = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
  v278 = v163;
  v279 = v164;
  v165 = swift_getWitnessTable();
  v276 = v163;
  v277 = v165;
  v166 = swift_getWitnessTable();
  v167 = sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
  v274 = v161;
  v275 = v167;
  v272 = swift_getWitnessTable();
  v273 = v162;
  v270 = swift_getWitnessTable();
  v271 = v161;
  v168 = swift_getWitnessTable();
  v268 = v166;
  v269 = v168;
  v266 = swift_getWitnessTable();
  v267 = v163;
  v169 = v192;
  swift_getWitnessTable();
  sub_100339DC8();
  return (*(v191 + 8))(v56, v169);
}

double Text.with(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v9 = sub_1003E3BE8(a2, a3, a4 & 1, a5, a1);
  v11 = v10;
  v13 = v12;
  sub_1003E153C(v9, v10, v12 & 1, v14, v7, a6);
  sub_100051E10(v9, v11, v13 & 1);

  return result;
}

uint64_t sub_1003E3BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      sub_1004DB09C();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      sub_1004DB06C();
      v7 = sub_1004DB23C();
      v9 = v8;
      v11 = v10;
      sub_1004DB0EC();
      v5 = sub_1004DB2AC();

      sub_100051E10(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    sub_1004DB00C();
    goto LABEL_9;
  }

  sub_1004DB0AC();
LABEL_9:
  v5 = sub_1004DB2AC();

  return v5;
}

unint64_t sub_1003E3D48()
{
  result = qword_100645000;
  if (!qword_100645000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645000);
  }

  return result;
}

uint64_t _s5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1003E3EF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003E3F08(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1003E3F38(uint64_t *a1)
{
  sub_100008DE4(&unk_100641A20, &unk_10052E7D0);
  sub_1004DA32C();
  sub_100008DE4(&qword_100642D40, &qword_10052FEE0);
  sub_1004DA32C();
  sub_100008DE4(&qword_100643CC8, &qword_100530FE8);
  sub_1004DA32C();
  sub_1004DAAEC();
  sub_100008DE4(&qword_100642760, &qword_10052F7A8);
  sub_1004DA32C();
  sub_1004DA32C();
  sub_1004DAAEC();
  sub_1004DAAEC();
  sub_1004DAAEC();
  sub_1003E41E4(&unk_100642D10, &unk_100641A20, &unk_10052E7D0);
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1003E41E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003E423C()
{
  result = qword_100645008;
  if (!qword_100645008)
  {
    sub_100008DE4(&qword_100645010, &qword_1005336A8);
    sub_1003E42C8();
    sub_1003E43E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645008);
  }

  return result;
}

unint64_t sub_1003E42C8()
{
  result = qword_100645018;
  if (!qword_100645018)
  {
    sub_100008DE4(&qword_100645020, &qword_1005336B0);
    sub_1003E4354();
    sub_1003E4528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645018);
  }

  return result;
}

unint64_t sub_1003E4354()
{
  result = qword_100645028;
  if (!qword_100645028)
  {
    sub_100008DE4(&qword_100645030, &qword_1005336B8);
    sub_1003E43E0();
    sub_1003E4484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645028);
  }

  return result;
}

unint64_t sub_1003E43E0()
{
  result = qword_100645038;
  if (!qword_100645038)
  {
    sub_100008DE4(&qword_100645040, &qword_1005336C0);
    sub_1003709CC();
    sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645038);
  }

  return result;
}

unint64_t sub_1003E4484()
{
  result = qword_100645048;
  if (!qword_100645048)
  {
    sub_100008DE4(&qword_100645050, &qword_1005336C8);
    sub_1003E43E0();
    sub_1003E41E4(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645048);
  }

  return result;
}

unint64_t sub_1003E4528()
{
  result = qword_100645058;
  if (!qword_100645058)
  {
    sub_100008DE4(&qword_100645060, &qword_1005336D0);
    sub_1003E45B4();
    sub_1003709CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645058);
  }

  return result;
}

unint64_t sub_1003E45B4()
{
  result = qword_100645068;
  if (!qword_100645068)
  {
    sub_100008DE4(&qword_100645070, &qword_1005336D8);
    sub_1003E4658();
    sub_1003E41E4(&qword_100642DD8, &qword_100642D40, &qword_10052FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645068);
  }

  return result;
}

unint64_t sub_1003E4658()
{
  result = qword_100645078;
  if (!qword_100645078)
  {
    sub_100008DE4(&qword_100645080, &qword_1005336E0);
    sub_1003709CC();
    sub_1003E41E4(&qword_100642DF0, &qword_100642760, &qword_10052F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645078);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_10030E2D4(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_10030E2D4(v12, v11);
  sub_10030E2D4(a1, v11);
  sub_10001074C(v18, &qword_10063F148, &qword_10052A890);
  sub_1003E80D8(v12);
  sub_10001074C(v12, &qword_10063F148, &qword_10052A890);
  return sub_10001074C(a1, &qword_10063F148, &qword_10052A890);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_10030E2D4(v4, v4 + 416);
  return sub_1003E49AC;
}

void sub_1003E49AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_10030E2D4(v2 + 624, v2 + 728);
    sub_10030E2D4(v2 + 624, v2 + 728);
    sub_10030E2D4(v2 + 104, v2 + 728);
    sub_10001074C(v4, &qword_10063F148, &qword_10052A890);
    sub_1003E80D8((v2 + 104));
    sub_10001074C(v2 + 104, &qword_10063F148, &qword_10052A890);
    sub_10001074C(v2 + 624, &qword_10063F148, &qword_10052A890);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_10030E2D4(v2 + 208, v2 + 624);
    sub_10030E2D4(v4, v2 + 624);
    sub_10001074C(v2 + 416, &qword_10063F148, &qword_10052A890);
    sub_1003E80D8((v2 + 208));
    sub_10001074C(v2 + 208, &qword_10063F148, &qword_10052A890);
    v28 = v4;
  }

  sub_10001074C(v28, &qword_10063F148, &qword_10052A890);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_1003E91E4(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_1003E4C9C;
}

void sub_1003E4C9C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_1003E91E4(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_1003E65E0(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

uint64_t (*VerticalToggleSlider.value.modify(uint64_t (**a1)()))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_1003E4E14;
  }

  return result;
}

void sub_1003E4E14(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_1003E65E0(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004DEAAC(145);
    v9._object = 0x80000001004F87F0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v9);
    sub_1004DDC0C();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001004F8840;
    sub_1004DD5FC(v11);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, qword_1006736C0);

    v3 = sub_1004D964C();
    v4 = sub_1004DDF8C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002E5CC4(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100008D24(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_1003E511C;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1004DEAAC(145);
    v9._object = 0x80000001004F87F0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v9);
    sub_1004DDC0C();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x80000001004F8840;
    sub_1004DD5FC(v11);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, qword_1006736C0);

    v3 = sub_1004D964C();
    v4 = sub_1004DDF8C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_1002E5CC4(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
      sub_100008D24(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_1003E53B4;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_1004DEAAC(164);
    v10._object = 0x80000001004F87F0;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_1004DD5FC(v10);
    sub_1004DDC0C();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_1004DD5FC(v11);
    sub_1004DDC0C();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x80000001004F8890;
    sub_1004DD5FC(v12);
    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v3 = sub_1004D966C();
    sub_100035430(v3, qword_1006736C0);

    v4 = sub_1004D964C();
    v5 = sub_1004DDF8C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_1002E5CC4(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100008D24(v7);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

uint64_t (*VerticalToggleSlider.valueRange.modify(uint64_t (*result)()))()
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_1003E5690;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_1003E6FF4(0x100000000);
    v5 = sub_1003E6BDC();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_1003E58A0;
}

void sub_1003E58A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_1003E6FF4(0x100000000);
      v8 = sub_1003E6BDC();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_1003E6B58();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1003E5D60;
}

void sub_1003E5D60(id **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (((v6 ^ v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [v3[3] isEnabled] ^ 1;
LABEL_8:
  v9 = *(v3[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v9)
  {
    v10 = 0.4;
    if (!v8)
    {
      v10 = 1.0;
    }

    [v9 setAlpha:v10];
  }

  v11 = sub_1003E6B58();
  v12 = v11;
  v13 = 1.0;
  if (v8)
  {
    v13 = 0.5;
  }

  [v11 setAlpha:v13];

LABEL_15:

  free(v3);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_1003E79CC();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1003E6160;
}

void sub_1003E6160(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_1003E79CC();
  }

  free(v2);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_1003E6524();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_1003E83A4(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

uint64_t (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003E6380;
}

void sub_1003E6380(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1003E6524();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_1003E83A4(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_1003E6470()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1003E6524()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_1003E6470();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_1003E65E0(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_1003E6FF4(0x100000000);
      v10 = sub_1003E6BDC();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_1003E66EC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1003E6764()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_1003E6B58();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_1003E6BDC();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_1003E7754();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_1003E9134;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1003BB590;
    v20[3] = &unk_1005F4210;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_1003E6BDC();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1003E6A98()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_1003E6B58();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_1003E6B58()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003E6BDC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_1003E6B58();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_1003E6C98()
{
  v1 = sub_1003E6524();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_1003E83A4(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_1003E6470();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_1003E6E58()
{
  v1 = sub_1003E6BDC();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_1004DD3FC();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_1003E6B58();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_1003E6FF4(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_1003E6FF4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_1003E6BDC();
    v2 = sub_1003E6B58();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_1003E6B58();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_1003E6BDC();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_1003E71D0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_10030E2D4(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_1002DBB8C(v48, v47);
      sub_1002DBB8C(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = sub_1004DE5FC();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_1003E6B58();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      sub_100004CB8(&qword_100642970, &qword_100529AD0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100512860;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100527330;
      sub_1002DDE4C(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100527320;
      v43 = v11;
      sub_1002DDE4C(v41, v42);

      sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
      v44 = sub_1004DE14C();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED19C, v45, 1.0);
    }

    sub_1003E7754();
    sub_10001074C(&v52, &qword_10063F148, &qword_10052A890);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_1003E7754()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_1002DEE7C();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_1002DEE7C();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_1003E79CC()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_1003E7AAC(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = sub_1003E6524();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_1003E7E4C(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_1003E91E4(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_1003E7D48();
    }
  }
}

void sub_1003E7BE8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_1003E6524();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_1003E7E4C(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_1003E91E4(v5);
        v6 = sub_1003E6524();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_1003E7D48();
    }
  }
}

id sub_1003E7D48()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_1003E91E4(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_1003E7E4C(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_1003E6524();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_1003E65E0(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100527340, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_1006450A0;
      v29 = *&qword_1006450B0;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_1003EBD0C(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_1003E6FF4(0x100000000);
    v31 = sub_1003E6BDC();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_1003E80D8(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = a1[1];
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 4);
      v29 = *(a1 + 3);
      v30 = v12;
      v31 = *(a1 + 5);
      v32 = *(a1 + 96);
      v13 = *(a1 + 2);
      v27 = *(a1 + 1);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_10030E2D4(v58, v33);
      sub_10030E2D4(v58, v33);
      sub_10030E2D4(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_10001074C(v58, &qword_10063F148, &qword_10052A890);
      sub_10001074C(&v26, &qword_10063F148, &qword_10052A890);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_10001074C(v33, &qword_10063F148, &qword_10052A890);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_10030E2D4(v58, v56);
    sub_10030E2D4(a1, v56);
    sub_10001074C(&v35, &qword_10063F148, &qword_10052A890);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v19;
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = *(a1 + 5);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_10030E2D4(v58, v56);
  sub_10030E2D4(a1, v56);
  sub_10001074C(&v35, &qword_100645228, &qword_1005339A8);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_1003E71D0();
}

__n128 sub_1003E83A4(id a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || a1 + 1 < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || a1 + 1 < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  result.n128_u64[0] = sub_1003E83A4(0, a2).n128_u64[0];
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v11[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v13] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v14 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v16 = *&qword_1006450B0;
  *v15 = xmmword_1006450A0;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v19 = type metadata accessor for VerticalToggleSlider();
  v18[4] = 0;
  v18[5] = 0;
  v43.receiver = v4;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  [v20 setDeliversTouchesForGesturesToSuperview:0];
  sub_100006F10(0, &qword_10063E980, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1004DE62C();
  [v20 addAction:v21 forControlEvents:64];

  v22 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v20 action:"dragged:"];
  [v20 addGestureRecognizer:v22];

  sub_1003E79CC();
  [v20 setClipsToBounds:0];
  sub_1003E6C98();
  v23 = sub_1003E6B58();
  [v23 setUserInteractionEnabled:0];

  v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v20[v24] setAutoresizingMask:18];
  v25 = *&v20[v24];
  v26 = sub_1003E6470();
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame:{v28, v30, v32, v34}];
  v35 = [*&v20[v24] contentView];
  v36 = [v35 layer];

  [v36 setCompositingFilter:kCAFilterPlusL];
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v20[v24]];
  sub_1003E6E58();
  sub_1003E6764();
  sub_1003E71D0();
  v37 = sub_1003E6470();
  sub_1004DE52C();
  v38 = sub_1004DE53C();
  (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
  sub_1004DE54C();

  sub_100004CB8(qword_100640A00, &unk_100532090);
  v39 = swift_allocObject();
  v42 = xmmword_100511DA0;
  *(v39 + 16) = xmmword_100511DA0;
  *(v39 + 32) = sub_1004D998C();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004DE57C();
  swift_unknownObjectRelease();

  v40 = swift_allocObject();
  *(v40 + 16) = v42;
  *(v40 + 32) = sub_1004D980C();
  *(v40 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_1004DE57C();

  swift_unknownObjectRelease();

  return v20;
}

void VerticalToggleSlider.isEnabled.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider();
  v14.receiver = v2;
  v14.super_class = v4;
  v5 = objc_msgSendSuper2(&v14, "isEnabled");
  v13.receiver = v2;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, "setEnabled:", v3 & 1);
  if (v5 != [v2 isEnabled])
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v2[v6])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v2 isEnabled] ^ 1;
    }

    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v8)
    {
      v9 = 0.4;
      if (!v7)
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
    }

    v10 = sub_1003E6B58();
    v11 = v10;
    v12 = 1.0;
    if (v7)
    {
      v12 = 0.5;
    }

    [v10 setAlpha:v12];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v4 = sub_1003E6470();
  sub_1004DE52C();
  v5 = sub_1004DE53C();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_1004DE54C();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_1003E6764();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_1003E9134(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_100527350[v2]];
  return v5;
}

void sub_1003E91E4(int a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v5 = &v159[-v4];
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v7 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v7 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v7)
    {
      sub_1003E65E0(1.0);
    }
  }

  else if (((v7 ^ a1) & 1) == 0)
  {
    return;
  }

  v8 = sub_1003E66EC();
  [v8 userInteractionStarted];

  v9 = objc_opt_self();
  if ([v9 areAnimationsEnabled])
  {
    v10 = v1[v6];
    if (a1 == 2)
    {
      if (v10 == 2)
      {
        return;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v10 & 1;
      if (v10)
      {
        v12 = qword_10063DB80;
        v13 = v1;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_1006450F0;
        [qword_1006450F0 settlingDuration];
        v16 = v15;
        [v14 mass];
        v18 = v17;
        [v14 stiffness];
        v20 = v19;
        [v14 damping];
        v22 = v21;
        *&aBlock.tx = sub_1003ED2A8;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F45A8;
        v23 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v23 options:0 mass:v16 stiffness:0.0 damping:v18 initialVelocity:v20 animations:v22 completion:0.0];
        _Block_release(v23);
        if (qword_10063DB88 != -1)
        {
          swift_once();
        }

        v24 = qword_1006450F8;
        v25 = swift_allocObject();
        *(v25 + 16) = v13;
        v26 = v13;
        [v24 settlingDuration];
        v28 = v27;
        [v24 mass];
        v30 = v29;
        [v24 stiffness];
        v32 = v31;
        [v24 damping];
        v34 = v33;
        *&aBlock.tx = sub_1003ED2C4;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F45F8;
        v35 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v35 options:0 mass:v28 stiffness:0.0 damping:v30 initialVelocity:v32 animations:v34 completion:0.0];
        _Block_release(v35);
      }

      else
      {
        v97 = qword_10063DB60;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_1006450D0;
        [qword_1006450D0 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_1003ED2A8;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4508;
        v108 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_10063DB58 != -1)
        {
          swift_once();
        }

        v109 = qword_1006450C8;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_1003ED2B4;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4558;
        v120 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
        v121 = sub_1004DE14C();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED2BC, v122, 0.3);
      }

LABEL_65:

      return;
    }

    if (v10 != 2)
    {
      if (((a1 ^ v10) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v10 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v10 & 1;
      if (v10)
      {
        v75 = qword_10063DB80;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_1006450F0;
        [qword_1006450F0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_1003ED1DC;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F4328;
        v86 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_10063DB88 != -1)
        {
          swift_once();
        }

        v87 = qword_1006450F8;
        [qword_1006450F8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_1003ED1E8;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005F4350;
      }

      else
      {
        v138 = qword_10063DB90;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_100645100;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_1003ED1DC;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100012680;
        *&aBlock.d = &unk_1005F42B0;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = CFRange.init(_:);
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_100016298;
        *&aBlock.d = &unk_1005F42D8;
        v152 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_10063DB98 != -1)
        {
          swift_once();
        }

        v153 = qword_100645108;
        [qword_100645108 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_1003ED1E8;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1005F4300;
      }

      *&aBlock.c = sub_100012680;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_65;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_10063DB70 != -1)
      {
        swift_once();
      }

      v44 = qword_1006450E0;
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = v2;
      [v44 settlingDuration];
      v48 = v47;
      [v44 mass];
      v50 = v49;
      [v44 stiffness];
      v52 = v51;
      [v44 damping];
      v54 = v53;
      *&aBlock.tx = sub_1003ED22C;
      *&aBlock.ty = v45;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100012680;
      *&aBlock.d = &unk_1005F43A0;
      v55 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v55 options:0 mass:v48 stiffness:0.0 damping:v50 initialVelocity:v52 animations:v54 completion:0.0];
      _Block_release(v55);
    }

    if (qword_10063DB78 != -1)
    {
      swift_once();
    }

    v56 = qword_1006450E8;
    *&v57 = COERCE_DOUBLE(swift_allocObject());
    v58 = *&v57;
    v59 = a1 & 1;
    if (a1)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = 0.1;
    }

    *(v57 + 16) = v59;
    *(v57 + 24) = v2;
    if (a1)
    {
      v61 = 0.6;
    }

    else
    {
      v61 = 0.7;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v56];
    *&aBlock.tx = sub_1003ED26C;
    aBlock.ty = v58;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100012680;
    *&aBlock.d = &unk_1005F4418;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = CFRange.init(_:);
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100016298;
    *&aBlock.d = &unk_1005F4440;
    v66 = _Block_copy(&aBlock);

    [v9 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v60];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
    v67 = sub_1004DE14C();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_1003ED278, v68, v61);

    if (!v59)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_1003ED2A0;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100012680;
      *&aBlock.d = &unk_1005F44B8;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v9 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v36 = [v1 superview];
    [v36 setNeedsLayout];

    v37 = [v1 superview];
    [v37 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v38 = v1[v6];
    v39 = 1.0;
    v40 = 1.0;
    if (v38 != 2 && (v38 & 1) != 0)
    {
      v41 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v42 = 2.0;
      if ((v41[1] & 1) == 0)
      {
        v42 = *v41;
      }

      v43 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v43[1])
      {
        v39 = 2.0;
      }

      else
      {
        v39 = *v43;
      }

      v40 = v42;
    }

    CGAffineTransformMakeScale(&aBlock, v40, v39);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_1003E6524();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_1003E71D0();
    LOBYTE(aBlock.a) = 1;
    sub_1003E6FF4(0x100000000);
    v129 = sub_1003E6BDC();
    v130 = v1[v6];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_1003E6470();
    sub_1004DE52C();
    v136 = sub_1004DE53C();
    (*(*(v136 - 8) + 56))(v5, 0, 1, v136);
    sub_1004DE54C();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_1003EA5B4(unsigned __int8 *a1, char a2)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v29[-v5];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v7 = [a1 superview];
  [v7 setNeedsLayout];

  v8 = [a1 superview];
  [v8 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v10 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v11 = 1.0;
  v12 = 1.0;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v14 = 2.0;
    if ((v13[8] & 1) == 0)
    {
      v14 = *v13;
    }

    v15 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v15[8])
    {
      v11 = 2.0;
    }

    else
    {
      v11 = *v15;
    }

    v12 = v14;
  }

  CGAffineTransformMakeScale(&v30, v12, v11);
  v16 = *&v30.c;
  v17 = *&v30.tx;
  v18 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = *&v30.a;
  *(v18 + 1) = v16;
  *(v18 + 2) = v17;
  v19 = sub_1003E6524();
  v20 = *(v18 + 1);
  *&v30.a = *v18;
  *&v30.c = v20;
  *&v30.tx = *(v18 + 2);
  [v19 setTransform:&v30];

  v21 = sub_1003E6470();
  sub_1004DE52C();
  v22 = sub_1004DE53C();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  sub_1004DE54C();

  if (a2)
  {
    LOBYTE(v30.a) = 1;
    sub_1003E6FF4(0x100000000);
    v23 = sub_1003E6BDC();
    v24 = a1[v9];
    v25 = [a1 traitCollection];
    if (v24 == 2)
    {

      v26 = 0.0;
    }

    else if (v24)
    {

      v26 = 1.0;
    }

    else
    {
      v27 = v25;
      v28 = [v25 accessibilityContrast];

      v26 = 0.5;
      if (v28 == 1)
      {
        v26 = 1.0;
      }
    }

    [v23 setAlpha:v26];

    sub_1003E71D0();
  }

  else
  {
    LOBYTE(v30.a) = 0;
    sub_1003E6FF4(1065353216);
  }

  sub_1003E6764();
}

uint64_t sub_1003EA8CC()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_1003EA93C(unsigned __int8 *a1)
{
  v2 = sub_1003E6BDC();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_1003E71D0();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

double sub_1003EAA3C(void *a1)
{
  if (qword_10063DB68 != -1)
  {
    swift_once();
  }

  v2 = qword_1006450D8;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_1003ED2CC;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100012680;
  v9[3] = &unk_1005F4648;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];

  return result;
}

void sub_1003EABD4(uint64_t a1)
{
  v2 = sub_1003E6BDC();
  v3 = sub_1003E6B58();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_1006450B0;
  *v12 = xmmword_1006450A0;
  v12[1] = v17;
  sub_1003EBD0C(v13, v14, v15, v16);
}

uint64_t sub_1003EAC88(char a1, char *a2)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  v4 = __chkstk_darwin();
  v9 = v27 - v8;
  if (a1)
  {
    v10 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v4.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v11 = *&qword_1006450B0;
    *v10 = xmmword_1006450A0;
    *(v10 + 1) = v11;
    sub_1003EBD0C(v4, v5, v6, v7);
    LOBYTE(v27[0]) = 1;
    sub_1003E6FF4(0x100000000);
    v12 = sub_1003E6BDC();
    v13 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v14 = [a2 traitCollection];
    if (v13 == 2)
    {

      v15 = 0.0;
    }

    else if (v13)
    {

      v15 = 1.0;
    }

    else
    {
      v16 = v14;
      v17 = [v14 accessibilityContrast];

      v15 = 0.5;
      if (v17 == 1)
      {
        v15 = 1.0;
      }
    }

    [v12 setAlpha:v15];
  }

  v18 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x3FF0000000000000;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  v19 = sub_1003E6524();
  v20 = *(v18 + 1);
  v27[0] = *v18;
  v27[1] = v20;
  v27[2] = *(v18 + 2);
  [v19 setTransform:v27];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v21 = [a2 superview];
  [v21 setNeedsLayout];

  v22 = [a2 superview];
  [v22 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v23 = sub_1003E6470();
  sub_1004DE52C();
  v24 = sub_1004DE53C();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_1004DE54C();

  v25 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v25, v27, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v27);
}

void sub_1003EAF54(unsigned __int8 *a1)
{
  v7 = sub_1003E6BDC();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_1003EB018(uint64_t a1, char a2)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v5 = &v25[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v7 = 1.0;
  v8 = 1.0;
  if (v6 != 2 && (v6 & 1) != 0)
  {
    v9 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v10 = 2.0;
    if ((*(v9 + 8) & 1) == 0)
    {
      v10 = *v9;
    }

    v11 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v7 = 2.0;
    }

    else
    {
      v7 = *v11;
    }

    v8 = v10;
  }

  CGAffineTransformMakeScale(&v26, v8, v7);
  v12 = *&v26.c;
  v13 = *&v26.tx;
  v14 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v14 = *&v26.a;
  v14[1] = v12;
  v14[2] = v13;
  v15 = sub_1003E6524();
  v16 = v14[1];
  *&v26.a = *v14;
  *&v26.c = v16;
  *&v26.tx = v14[2];
  [v15 setTransform:&v26];

  v17 = sub_1003E6470();
  sub_1004DE52C();
  v18 = sub_1004DE53C();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_1004DE54C();

  if ((a2 & 1) == 0)
  {
    v23 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v19.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v24 = *&qword_1006450B0;
    *v23 = xmmword_1006450A0;
    v23[1] = v24;
    sub_1003EBD0C(v19, v20, v21, v22);
  }
}

uint64_t sub_1003EB210(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_1003E6FF4(0x100000000);
  v4 = sub_1003E6BDC();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

double sub_1003EB380(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_100527360;
    sub_1002DDE4C(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_1003ECE90, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_1003EB534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003E71D0();
  }
}

id sub_1003EB5DC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1003EB628(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

void VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isHighlighted");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setHighlighted:", a1 & 1);
  sub_1003EB758(v4);
}

void sub_1003EB758(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v5 = v2;
    if ([v4 areAnimationsEnabled])
    {
      if (qword_10063DB50 != -1)
      {
        swift_once();
      }

      v6 = qword_1006450C0;
      [qword_1006450C0 settlingDuration];
      v8 = v7;
      [v6 mass];
      v10 = v9;
      [v6 stiffness];
      v12 = v11;
      [v6 damping];
      v14 = v13;
      *&v24.tx = sub_1003ED154;
      *&v24.ty = v3;
      *&v24.a = _NSConcreteStackBlock;
      *&v24.b = 1107296256;
      *&v24.c = sub_100012680;
      *&v24.d = &unk_1005F41C0;
      v15 = _Block_copy(&v24);

      [v4 _animateUsingSpringWithDuration:6 delay:v15 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:0.0];
      _Block_release(v15);
    }

    else
    {
      if ([v5 isHighlighted])
      {
        CGAffineTransformMakeScale(&v24, 0.95, 0.95);
        v17 = *&v24.a;
        v16 = *&v24.c;
        v18 = *&v24.tx;
      }

      else
      {
        v16 = xmmword_100527370;
        v17 = xmmword_1005271C0;
        v18 = 0uLL;
      }

      *&v24.a = v17;
      *&v24.c = v16;
      *&v24.tx = v18;
      [v5 setTransform:&v24];
      v19 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v19)
      {
        v20 = v19;
        if ([v5 isHighlighted])
        {
          CGAffineTransformMakeScale(&v24, 0.9, 0.9);
          v22 = *&v24.a;
          v21 = *&v24.c;
          v23 = *&v24.tx;
        }

        else
        {
          v21 = xmmword_100527370;
          v22 = xmmword_1005271C0;
          v23 = 0uLL;
        }

        *&v24.a = v22;
        *&v24.c = v21;
        *&v24.tx = v23;
        [v20 setTransform:&v24];
      }
    }
  }
}

void sub_1003EBA28(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_100527370;
    v3 = xmmword_1005271C0;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_100527370;
      v8 = xmmword_1005271C0;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}