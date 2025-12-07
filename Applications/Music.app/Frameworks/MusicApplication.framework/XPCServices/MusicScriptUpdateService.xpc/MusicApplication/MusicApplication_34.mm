uint64_t sub_10036AB6C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_100369B0C(v7, &v6);
}

BOOL sub_10036ABAC(_OWORD *a1, _OWORD *a2)
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
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_1004D9C20;
  v13 = xmmword_1004D9AE0;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_1004D9C30;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_100369B0C(&v10, &v9);
  sub_100369B44(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_1004D9C30;
  v13 = xmmword_1004D9C40;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_1004D9C30;
  v16 = xmmword_1004D9C40;

  v5 = kCAGradientLayerAxial;

  sub_100369B0C(&v10, &v9);
  sub_100369B44(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_100369B0C(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v4 = sub_1004BBE64();
  v6 = v5;
  if (v4 == sub_1004BBE64() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004BD9C4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 1);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_10032A078(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 2);
  if (v13)
  {
    if (!v14 || (sub_10032A08C(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 3);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_10032A0E8(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == a2[4] && *(a1 + 40) == a2[5] && *(a1 + 48) == a2[6] && *(a1 + 56) == a2[7];
}

unint64_t sub_10036AF54()
{
  result = qword_10060F1C0;
  if (!qword_10060F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F1C0);
  }

  return result;
}

uint64_t sub_10036AFA8(uint64_t a1)
{
  result = sub_10036B044(&qword_10060F208, &protocol conformance descriptor for Gradient.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10036B044(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036B084(uint64_t a1)
{
  *(a1 + 8) = sub_10036B0B4();
  result = sub_10036B108();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10036B0B4()
{
  result = qword_10060F240;
  if (!qword_10060F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F240);
  }

  return result;
}

unint64_t sub_10036B108()
{
  result = qword_10060F248;
  if (!qword_10060F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F248);
  }

  return result;
}

uint64_t sub_10036B16C()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100329778(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10036B224(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_100329778(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v9 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_100025B04(a3, a5 + *(v9 + 20), &qword_10060EF20, &qword_1004D9F00);
  return sub_10036E4A0(a4, a5 + *(v9 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

void static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a3;
  v78 = a4;
  v72 = a2;
  v70 = a1;
  v76 = a8;
  v64 = *a7;
  v10 = *(a7 + 8);
  v11 = a7[2];
  v62 = a5;
  v63 = v11;
  v59 = *(a7 + 24);
  v60 = v10;
  v79 = a7[4];
  v58 = *(a7 + 40);
  v61 = *(a7 + 41);
  v67 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v12 = *(v67 + 64);
  __chkstk_darwin();
  v13 = sub_1004B7D04();
  v65 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003ABC(&unk_10060E030, &qword_1004E16D8);
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin();
  v66 = &v57 - v18;
  v19 = sub_100003ABC(&qword_10060F278, &qword_1004E2C18) - 8;
  __chkstk_darwin();
  v21 = &v57 - v20;
  v71 = sub_100003ABC(&qword_10060F280, &qword_1004E2C20);
  __chkstk_darwin();
  v75 = &v57 - v22;
  v74 = sub_100003ABC(&qword_10060F288, &qword_1004E2C28);
  v23 = __chkstk_darwin();
  v73 = &v57 - v24;
  (*(v14 + 104))(v16, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v13, v23);
  v25 = a6;
  v26 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036E438(v25, v26, type metadata accessor for ArtworkImage.Placeholder);
  v27 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_10036E4A0(v26, v29 + v27, type metadata accessor for ArtworkImage.Placeholder);
  v30 = (v29 + v28);
  v31 = *(a7 + 1);
  *v30 = *a7;
  v30[1] = v31;
  *(v30 + 26) = *(a7 + 26);
  v32 = v66;
  sub_100309EBC(v70, sub_10034C118, v29, a7, v16, v66);

  (*(v14 + 8))(v16, v65);
  v33 = v72;
  if (v72)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  (*(v68 + 32))(v21, v32, v69);
  *&v21[*(v19 + 44)] = v34;
  v35 = sub_1004BA754();
  v37 = v33;
  if (v33)
  {
    LOBYTE(v87[0]) = v60 & 1;
    LOBYTE(v81) = v59 & 1;
    v80[0] = v58 & 1;
    v38 = v60 & 1;
    v39 = v59 & 1;
    v40 = v58 & 1 | (v61 << 8);
    v41 = v63;
    v33 = v62 & 1;
    v42 = v77;
    v43 = v78;
    v44 = v64;
    v45 = v79;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v45 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  v79 = v45;
  LODWORD(v68) = v40;
  *&v81 = v37;
  *(&v81 + 1) = v42;
  *&v82 = v43;
  *(&v82 + 1) = v33;
  *&v83 = v44;
  *(&v83 + 1) = v38;
  *&v84 = v41;
  *(&v84 + 1) = v39;
  *&v85 = v45;
  WORD4(v85) = v40;
  *&v86 = v35;
  *(&v86 + 1) = v36;
  v69 = v36;
  v70 = v35;
  v46 = v21;
  v47 = v75;
  v48 = v44;
  sub_100025B04(v46, v75, &qword_10060F278, &qword_1004E2C18);
  v49 = (v47 + *(v71 + 36));
  v50 = v84;
  v49[2] = v83;
  v49[3] = v50;
  v51 = v86;
  v49[4] = v85;
  v49[5] = v51;
  v52 = v82;
  *v49 = v81;
  v49[1] = v52;
  v87[0] = v37;
  v87[1] = v42;
  v87[2] = v43;
  v87[3] = v33;
  v87[4] = v48;
  v87[5] = v38;
  v87[6] = v41;
  v87[7] = v39;
  v87[8] = v79;
  v88 = v68;
  v89 = v70;
  v90 = v69;

  sub_10000F778(&v81, v80, &qword_10060F290, &qword_1004E2C30);
  sub_100007214(v87, &qword_10060F290, &qword_1004E2C30);
  v53 = sub_1004BA7A4();
  v54 = v73;
  sub_100025B04(v47, v73, &qword_10060F280, &qword_1004E2C20);
  v55 = (v54 + *(v74 + 36));
  *v55 = v53;
  v55[1] = v37;
  v56 = v78;
  v55[2] = v77;
  v55[3] = v56;
  sub_100025B04(v54, v76, &qword_10060F288, &qword_1004E2C28);
}

void sub_10036B948(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10036BA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_1004B95E4();
  __chkstk_darwin();
  v5 = sub_1004BA704();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004BA714();
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100003ABC(&qword_10060F388, &qword_1004E2E20);
  v11 = *(v31 - 8);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = *a1;
  if (*(a1 + 8))
  {
    v14 = 0.0;
  }

  *v8 = v14;
  (*(v6 + 104))(v8, enum case for GridItem.Size.fixed(_:), v5);
  v36 = *(a2 + 24);
  if (v36)
  {
    v15 = 14;
  }

  else
  {
    v15 = 4;
  }

  Int.seconds.getter(v15);
  sub_1004BA724();
  sub_10036BE4C(v10, *(a2 + 16), v16);
  Int.seconds.getter(v15);
  v33 = a2;
  v34 = a1;
  sub_1004B9344();
  v35 = 0;
  sub_10036E2A0(&unk_10060CFC0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_1004BDC74();
  sub_100003ABC(&qword_10060F390, &qword_1004E2E28);
  sub_10036E2E8();
  sub_1004BA7F4();
  v17 = sub_1004B9964();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v17, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1004B9964();
  v28 = v32;
  (*(v11 + 32))(v32, v13, v31);
  result = sub_100003ABC(&qword_10060F3A8, &qword_1004E2E30);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_10036BE4C(char *result, uint64_t a2, __n128 a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_1004BA714();
      v6 = sub_1004BC314();
      *(v6 + 2) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(&v6[v8], v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = &v6[v11 + v8];
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v13 = sub_1004BA714();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}

void *sub_10036BFA8(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_10036E3BC(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_10036E3BC(result, v14);
      sub_10036C2E0(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_10036E3BC(v6, v14);
      sub_100003ABC(&qword_10060F3B0, &qword_1004E2E38);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_1000206D4(&qword_10060F3B8, &qword_10060F3B0, &qword_1004E2E38, &protocol conformance descriptor for [A]);
      sub_10036E2A0(&qword_10060F3A0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_1004E2E9C);
      sub_10036E2A0(&qword_10060F3C0, type metadata accessor for ArtworkImage.GridPreview.Item, &protocol conformance descriptor for ArtworkImage.GridPreview.Item);
      return sub_1004BA664();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10036C19C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10036E438(a1, v9, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v10 = 0x4014000000000000;
  }

  else
  {
    v10 = 0x4000000000000000;
  }

  sub_10036E4A0(v9, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v11 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v12 = (a4 + v11[5]);
  v13 = a2[1];
  *v12 = *a2;
  v12[1] = v13;
  *(v12 + 26) = *(a2 + 26);
  v14 = a4 + v11[6];
  *v14 = v10;
  *(v14 + 8) = -1;
  *(v14 + 16) = 0;
  v15 = v11[7];
  *(a4 + v15) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70, &unk_1004DEE80);
  return swift_storeEnumTagMultiPayload();
}

void sub_10036C2E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v25 - v7;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_24:

      return;
    }

    v10 = 0;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25[1] = a2;
    v12 = a2 + v11;
    v13 = *(v6 + 72);
    v14 = v9 - 1;
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v27 = v5;
    v28 = v11;
    v29 = v25 - v7;
    v26 = a1;
    while (1)
    {
      sub_10036E438(v12, v8, type metadata accessor for ArtworkImage.GridPreview.Item);
      v20 = v16[2];
      if (v20 < a1)
      {
        break;
      }

      if (v10 >= v20)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_10036E438(v16 + v11 + v13 * v10, v5, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1003BF828(0, v15[2] + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_1003BF828((v23 > 1), v24 + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v15[2] = v24 + 1;
      v11 = v28;
      sub_10036E4A0(v5, v15 + v28 + v24 * v13, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10036D804(v16);
      }

      v8 = v29;
      if (v10 >= v16[2])
      {
        goto LABEL_27;
      }

      sub_10036E508(v29, v16 + v11 + v13 * v10++);
      a1 = v26;
      if (v10 < v26)
      {
        goto LABEL_8;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      v10 = 0;
LABEL_9:
      --v14;
      v12 += v13;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v16;
    if ((v21 & 1) == 0)
    {
      sub_1003BF828(0, v20 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      sub_1003BF828((v17 > 1), v18 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v16[2] = v18 + 1;
    v11 = v28;
    v19 = v16 + v28 + v18 * v13;
    v8 = v29;
    sub_10036E4A0(v29, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_10036C620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1004B92F4();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin();
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin();
  v49 = &v47 - v6;
  v7 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B7D04();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v15 = *(v14 + 20);
  v16 = *(v14 + 24);
  v48 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v17 = (v2 + *(v48 + 20));
  v18 = *(v17 + 26);
  v19 = v17[1];
  v55 = *v17;
  v56[0] = v19;
  *(v56 + 10) = v18;
  (*(v11 + 104))(v13, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v10);
  sub_10036E438(v2 + v16, v9, type metadata accessor for ArtworkImage.Placeholder);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_10036E4A0(v9, v22 + v20, type metadata accessor for ArtworkImage.Placeholder);
  v23 = (v22 + v21);
  v24 = v56[0];
  *v23 = v55;
  v23[1] = v24;
  *(v23 + 26) = *(v56 + 10);
  v25 = v2 + v15;
  v26 = v50;
  sub_100309EBC(v25, sub_100350878, v22, &v55, v13, v50);

  (*(v11 + 8))(v13, v10);
  v27 = v48;
  v28 = v2;
  sub_100308E70(v5);
  v29 = v49;
  sub_10030DC6C(v49);
  (*(v51 + 8))(v5, v52);
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = (v26 + *(sub_100003ABC(&qword_10060DFF8, &qword_1004E16C0) + 36));
  v32 = v26;
  v33 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v31 + v33) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68, &qword_1004D9EC0);
  swift_storeEnumTagMultiPayload();
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_100025B04(v29, v35 + v34, &qword_10060C400, &unk_1004DEE90);
  *v31 = sub_1003155A4;
  v31[1] = v35;
  v36 = (v28 + *(v27 + 24));
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  v40 = v32 + *(sub_100003ABC(&qword_10060F498, &qword_1004E2F18) + 36);
  *v40 = v37;
  *(v40 + 8) = v38;
  *(v40 + 16) = v39;
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v41 = static Border.artwork;
  v42 = qword_100619058;
  v43 = byte_100619060;
  v44 = v32 + *(sub_100003ABC(&qword_10060F4A0, &qword_1004E2F20) + 36);
  *v44 = v41;
  *(v44 + 8) = v42;
  *(v44 + 16) = v43;
  *(v44 + 24) = v37;
  *(v44 + 32) = v38;
  *(v44 + 40) = v39;

  sub_1004B89D4();
  sub_1004BA774();
  sub_1004B89F4();

  sub_1004BA8B4();
  sub_1004B89C4();
  sub_1004BA774();
  sub_1004B89F4();

  sub_1004BA8B4();
  sub_1004B89C4();
  sub_1004BA774();
  sub_1004B89F4();

  sub_1004B89B4();

  v45 = sub_1004B89E4();

  result = sub_100003ABC(&qword_10060F4A8, &qword_1004E2F28);
  *(v32 + *(result + 36)) = v45;
  return result;
}

double sub_10036CCD8@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_10036B948(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_1004BA304();
  v7 = sub_1004BA744();
  v9 = v8;
  v10 = a1 + *(sub_100003ABC(&qword_10060F370, &qword_1004E2E08) + 36);
  sub_10036BA88(v15, v17, v10);
  v11 = &v10[*(sub_100003ABC(&qword_10060F378, &qword_1004E2E10) + 36)];
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_1004BA754();
  sub_1004B8994();
  v12 = (a1 + *(sub_100003ABC(&qword_10060F380, &qword_1004E2E18) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

void *sub_10036CE18(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_10060A218, &qword_1004DB5A8);
  v10 = *(sub_100003ABC(&qword_10060A210, &qword_1004DB5A0) - 8);
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
  v15 = *(sub_100003ABC(&qword_10060A210, &qword_1004DB5A0) - 8);
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

char *sub_10036D008(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060B7A0, &unk_1004E4A40);
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

char *sub_10036D118(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060B4A8, &unk_1004DDD90);
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

char *sub_10036D21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060F3E0, &qword_1004E2E88);
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

char *sub_10036D320(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060B498, &qword_1004DD418);
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

void *sub_10036D42C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_10060F3C8, &qword_1004E2E40);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
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
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
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

char *sub_10036D604(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060F3D8, &qword_1004E2E80);
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

char *sub_10036D6F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_10060F3D0, &qword_1004E2E78);
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

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100003ABC(&unk_10060DF20, &qword_1004E15B0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*a1 != *a2 && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = v7;
  v21 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v13 = *(v21 + 20);
  v14 = *(v10 + 48);
  sub_10000F778(a1 + v13, v12, &qword_10060EF20, &qword_1004D9F00);
  sub_10000F778(a2 + v13, &v12[v14], &qword_10060EF20, &qword_1004D9F00);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_100007214(v12, &qword_10060EF20, &qword_1004D9F00);
LABEL_11:
      v16 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v21 + 24), a2 + *(v21 + 24));
      return v16 & 1;
    }

    goto LABEL_8;
  }

  sub_10000F778(v12, v9, &qword_10060EF20, &qword_1004D9F00);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    sub_10036E570(v9);
LABEL_8:
    sub_100007214(v12, &unk_10060DF20, &qword_1004E15B0);
    goto LABEL_9;
  }

  v17 = v20;
  sub_10036E4A0(&v12[v14], v20, type metadata accessor for ArtworkImage.ViewModel);
  v18 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v17);
  sub_10036E570(v17);
  sub_10036E570(v9);
  sub_100007214(v12, &qword_10060EF20, &qword_1004D9F00);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_10036DB48()
{
  result = qword_10060F298;
  if (!qword_10060F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F298);
  }

  return result;
}

unint64_t sub_10036DBA0()
{
  result = qword_10060F2A0;
  if (!qword_10060F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F2A0);
  }

  return result;
}

uint64_t sub_10036DC28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10036DD6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060EF20, &qword_1004D9F00);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10036DE9C(uint64_t a1)
{
  sub_10036E928(319, &qword_10060C6A0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10036DF74()
{
  result = qword_10060F340;
  if (!qword_10060F340)
  {
    sub_100003B68(&qword_10060F288, &qword_1004E2C28);
    sub_10036E02C();
    sub_1000206D4(&qword_10060F360, &qword_10060F368, &qword_1004E2D80, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F340);
  }

  return result;
}

unint64_t sub_10036E02C()
{
  result = qword_10060F348;
  if (!qword_10060F348)
  {
    sub_100003B68(&qword_10060F280, &qword_1004E2C20);
    sub_10036E0E4();
    sub_1000206D4(&qword_10060F358, &qword_10060F290, &qword_1004E2C30, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F348);
  }

  return result;
}

unint64_t sub_10036E0E4()
{
  result = qword_10060F350;
  if (!qword_10060F350)
  {
    sub_100003B68(&qword_10060F278, &qword_1004E2C18);
    sub_100003B68(&qword_10060C998, &qword_1004DF240);
    sub_1003169C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F350);
  }

  return result;
}

__n128 sub_10036E1AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10036E1D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_10036E218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036E2A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10036E2E8()
{
  result = qword_10060F398;
  if (!qword_10060F398)
  {
    sub_100003B68(&qword_10060F390, &qword_1004E2E28);
    sub_10036E2A0(&qword_10060F3A0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_1004E2E9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F398);
  }

  return result;
}

uint64_t sub_10036E3F4()
{

  return swift_deallocObject();
}

uint64_t sub_10036E438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036E4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036E508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036E570(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036E5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10036E72C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10036E85C(uint64_t a1)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v1 <= 0x3F)
  {
    sub_10036E928(319, &unk_10060C818, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10036E928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10036E9D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036EA54()
{
  result = qword_10060F488;
  if (!qword_10060F488)
  {
    sub_100003B68(&qword_10060F370, &qword_1004E2E08);
    sub_1000206D4(&qword_10060F490, &qword_10060F378, &qword_1004E2E10, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F488);
  }

  return result;
}

uint64_t sub_10036EB30()
{
  v1 = *(sub_100003ABC(&qword_10060C400, &unk_1004DEE90) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      sub_100004C6C((v0 + v2));
    }

    if (*(v3 + 8))
    {
      sub_100004C6C(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_1004BA7E4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_10036ECD8()
{
  result = qword_10060F4B0;
  if (!qword_10060F4B0)
  {
    sub_100003B68(&qword_10060F4A8, &qword_1004E2F28);
    sub_10036ED90();
    sub_1000206D4(&qword_10060F4C8, &qword_10060F4D0, &unk_1004E2F30, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F4B0);
  }

  return result;
}

unint64_t sub_10036ED90()
{
  result = qword_10060F4B8;
  if (!qword_10060F4B8)
  {
    sub_100003B68(&qword_10060F4A0, &qword_1004E2F20);
    sub_10036EE1C();
    sub_1002F0A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F4B8);
  }

  return result;
}

unint64_t sub_10036EE1C()
{
  result = qword_10060F4C0;
  if (!qword_10060F4C0)
  {
    sub_100003B68(&qword_10060F498, &qword_1004E2F18);
    sub_10034D924();
    sub_1002F09B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F4C0);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()(uint64_t a1, uint64_t a2)
{
  v19.receiver = v2;
  v19.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  objc_msgSendSuper2(&v19, "hitRect");
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = &v2[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v12 = *(v11 + 32);
  if (v12 != 255)
  {
    v14 = *v11;
    v13 = v11[1];
    if ((v12 & 1) == 0)
    {
      v20.origin.x = v4;
      v20.origin.y = v6;
      v20.size.width = v8;
      v20.size.height = v10;
      Width = CGRectGetWidth(v20);
      if (Width > v14)
      {
        v14 = Width;
      }

      v21.origin.x = v4;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v10;
      v16 = v14 - CGRectGetWidth(v21);
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      Height = CGRectGetHeight(v22);
      if (Height > v13)
      {
        v13 = Height;
      }

      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      v14 = (v13 - CGRectGetHeight(v23)) * -0.5;
      v13 = v16 * -0.5;
    }

    return sub_100226A94(v4, v6, v8, v10, v14, v13);
  }

  return v4;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  v3 = objc_msgSendSuper2(&v6, "accessibilityTraits");
  v4 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v3) == 0)
  {
    v4 = 0;
  }

  return v4 | v3;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  return objc_msgSendSuper2(&v5, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = &v6[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = -1;
  v13.receiver = v6;
  v13.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  return objc_msgSendSuper2(&v13, "initWithFrame:", a3, a4, a5, a6);
}

id HitMyRectButton.init(coder:)(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = -1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id HitMyRectButton.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HitMyRectButton(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v19.x = a2;
    v19.y = a3;
    return CGRectContainsPoint(v20, v19);
  }

  else
  {
    v18.receiver = v3;
    v18.super_class = ObjectType;
    if (objc_msgSendSuper2(&v18, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_10036FBC8(0, v11);
      v12 = sub_1004BC2A4();

      if (v12 >> 62)
      {
LABEL_19:
        v13 = sub_1004BD6A4();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v13 != i; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_1004BD484();
        }

        else
        {
          if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v15 = *(v12 + 8 * i + 32);
        }

        v16 = v15;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v15 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v17 = [v16 pointInside:a1 withEvent:?];

        if (v17)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_10036FBC8(uint64_t a1, uint64_t a2)
{
  result = qword_100611200;
  if (!qword_100611200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100611200);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_100609CF0 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t sub_10036FEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_1003760E8(v1 + v3, v5);
  if (v6 != 1)
  {
    return sub_100048998(v5, a1);
  }

  sub_100007214(v5, &qword_10060F8A8, &qword_1004E3288);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_1004C5090;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  sub_100047AC4(a1, v5);
  swift_beginAccess();
  sub_100376158(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController(a1, a2));

  return [v2 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_100009130(0, &qword_10060F550, UIViewController_ptr);
  v11 = v7;
  v12 = v9;
  v13 = sub_1004BCFA4();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
  sub_1004BA594();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_1003702D0(v3, a2, a1);
    a1[v17] = 1;
    sub_10036FEF4(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_10037402C, v19);

    sub_10005BC00(v22);
  }
}

id sub_1003702D0(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a2;
  sub_1004B75D4();
  __chkstk_darwin();
  v5 = sub_1004BBB24();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060F8E8, &qword_1004E32D0);
  __chkstk_darwin();
  v9 = &v49 - v8;
  v10 = sub_1004BBB54();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v49 - v13;
  v55 = sub_1004B7F64();
  v15 = *(v55 - 8);
  __chkstk_darwin();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImagePicker(0);
  v19 = *(v18 + 24);
  v54 = a1;
  v20 = a1 + v19;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v20) = *(v20 + 16);
  v58 = v21;
  v59 = v22;
  v60 = v20;
  sub_100003ABC(&qword_10060F568, &qword_1004E2FD8);
  sub_1004BA594();
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v23 = [objc_allocWithZone(UIImagePickerController) init];
      [v23 setSourceType:1];
      sub_100003ABC(&qword_10060F8F0, &qword_1004E32D8);
      sub_1004B98F4();
      v24 = v58;
      [v23 setDelegate:v58];

      [v23 setAllowsEditing:1];
      sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1004C50A0;
      sub_1004B7F54();
      v26 = sub_1004B7F34();
      v28 = v27;
      (*(v15 + 8))(v17, v55);
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      isa = sub_1004BC284().super.isa;

      [v23 setMediaTypes:isa];

      v30._rawValue = *(v54 + *(v18 + 36));
      if (v30._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v30);
      }

      return v23;
    }

    result = [a3 view];
    if (result)
    {
      v37 = result;
      v38 = [objc_opt_self() clearColor];
      [v37 setBackgroundColor:v38];

      v39 = [objc_opt_self() sharedPhotoLibrary];
      sub_1004BBB14();
      sub_1004BBAC4();
      v40 = sub_1004BBAD4();
      (*(*(v40 - 8) + 56))(v9, 0, 1, v40);
      sub_1004BBB44();
      (*(v50 + 104))(v7, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v51);
      sub_1004BBB34();
      sub_100009130(0, &qword_10060F900, PHPickerViewController_ptr);
      v42 = v52;
      v41 = v53;
      (*(v52 + 16))(v12, v14, v53);
      v43 = sub_1004BCCF4();
      sub_100003ABC(&qword_10060F8F0, &qword_1004E32D8);
      sub_1004B98F4();
      sub_100375398(&qword_10060F908, type metadata accessor for ImagePicker.Coordinator, &protocol conformance descriptor for ImagePicker.Coordinator);
      sub_1004BCD04();
      v23 = v43;
      v44 = [v23 presentationController];
      if (v44)
      {
        v45 = v44;
        sub_1004B98F4();
        v46 = v58;
        [v45 setDelegate:v58];
      }

      (*(v42 + 8))(v14, v41);
      return v23;
    }

    goto LABEL_16;
  }

  if (v57 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v32 = result;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    sub_100003ABC(&qword_10060F8F8, &qword_1004E32E0);
    *(swift_allocObject() + 16) = xmmword_1004C50A0;
    sub_1004B7F54();
    v34 = objc_allocWithZone(UIDocumentPickerViewController);
    v35 = sub_1004BC284().super.isa;

    v23 = [v34 initForOpeningContentTypes:v35 asCopy:1];

    sub_100003ABC(&qword_10060F8F0, &qword_1004E32D8);
    sub_1004B98F4();
    v36 = v58;
    [v23 setDelegate:v58];

    [v23 _setAutomaticallyDismissesAfterCompletion:0];
    return v23;
  }

  result = [a3 view];
  if (result)
  {
    v47 = result;
    v48 = [objc_opt_self() clearColor];
    [v47 setBackgroundColor:v48];

    sub_1004B75B4();
    v23 = sub_1004B75A4();
    sub_100003ABC(&qword_10060F8F0, &qword_1004E32D8);
    sub_1004B98F4();
    sub_1004B7594();
    sub_1004B75C4();
    sub_1004B7584();
    return v23;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004BBC44();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_1004BD3A4();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_10003E13C(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_100034774(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_1004BDAA4();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_100374FC8();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_10003D034(v37, v6[6] + 40 * v20);
        sub_10003E13C(v34, (v6[7] + 32 * v28));
        sub_10003D090(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_100374790(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_100034774(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        sub_100004C6C(v12);
        sub_10003E13C(v34, v12);
        sub_10003D090(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_1004BBC24().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v53 - v9;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v11 = sub_1000349C4(UIImagePickerControllerEditedImage);
  if (v12)
  {
    sub_100004DE4(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v11, &v58);
    sub_10003E13C(&v58, &v60);
    goto LABEL_9;
  }

  v13 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v58 = 0u;
  v59 = 0u;
  if (v13 && (v14 = sub_1000349C4(UIImagePickerControllerOriginalImage), (v15 & 1) != 0))
  {
    sub_100004DE4(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v14, &v60);
    if (*(&v59 + 1))
    {
      sub_100007214(&v58, &qword_100611260, &unk_1004DBDA0);
    }
  }

  else
  {
LABEL_8:
    v60 = 0u;
    v61 = 0u;
  }

LABEL_9:
  if (!*(&v61 + 1))
  {
    sub_100007214(&v60, &qword_100611260, &unk_1004DBDA0);
LABEL_16:
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1004BD404(61);
    v63._countAndFlagsBits = 0xD00000000000002ALL;
    v63._object = 0x80000001005099C0;
    sub_1004BC024(v63);
    type metadata accessor for InfoKey(0);
    sub_100375398(&qword_10060A1A0, type metadata accessor for InfoKey, &unk_1004DB510);
    v64._countAndFlagsBits = sub_1004BBC54();
    sub_1004BC024(v64);

    v65._object = 0x80000001005099F0;
    v65._countAndFlagsBits = 0xD000000000000011;
    sub_1004BC024(v65);
    v28 = *(&v60 + 1);
    v29 = v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler;
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v60;
      v32 = *(v29 + 8);
      sub_10037516C();
      v33 = swift_allocError();
      *v34 = v31;
      v34[1] = v28;

      v30(v33, 1);
      sub_10003CC4C(v30, v32);
    }

    else
    {
    }

    return;
  }

  sub_100009130(0, &qword_10060F560, UIImage_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v58;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v35 = v58;
LABEL_20:
    v26 = 0uLL;
    v25 = 1;
    v27 = 0uLL;
    goto LABEL_21;
  }

  v17 = v58;
  v18 = sub_1000349C4(UIImagePickerControllerCropRect);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_100004DE4(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v18, &v60);
  sub_100009130(0, &qword_10060F570, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v58;
  [v58 CGRectValue];
  v54 = v21;
  v55 = v22;
  v53 = v23;
  v56 = v24;

  *&v27 = v53;
  *&v26 = v54;
  v25 = 0;
  *(&v26 + 1) = v55;
  *(&v27 + 1) = v56;
LABEL_21:
  v60 = v26;
  v61 = v27;
  v62 = v25;
  v36 = UIImage.centerCropIfNeeded(imageRect:)(&v60);

  v37 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v37)
  {
    v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);

    v37(v36, 0);
    sub_10003CC4C(v37, v38);
  }

  v39 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100366288(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v10);
  v40 = &v10[*(v6 + 24)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  *&v58 = v41;
  *(&v58 + 1) = v42;
  LOBYTE(v59) = v40;
  sub_100003ABC(&qword_10060F568, &qword_1004E2FD8);
  sub_1004BA594();
  v43 = v57;
  sub_1003751C0(v10);
  if ((v43 - 1) > 2)
  {
    sub_100366288(v3 + v39, v8);
    v50 = &v8[*(v6 + 32)];
    v51 = *v50;
    v52 = *(v50 + 1);
    LOBYTE(v50) = v50[16];
    *&v58 = v51;
    *(&v58 + 1) = v52;
    LOBYTE(v59) = v50;
    v57 = 0;
    sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
    sub_1004BA5A4();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v44 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 presentingViewController];

    if (v46)
    {
      sub_100366288(v3 + v39, v8);
      v47 = &v8[*(v6 + 32)];
      v48 = *v47;
      v49 = *(v47 + 1);
      LOBYTE(v47) = v47[16];
      *&v58 = v48;
      *(&v58 + 1) = v49;
      LOBYTE(v59) = v47;
      v57 = 0;
      sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
      sub_1004BA5A4();
      [v46 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_1003751C0(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_1004B70D4() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1004C50A0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_1004BC284().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_100366288(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  sub_100003ABC(&qword_10060F568, &qword_1004E2FD8);
  sub_1004BA594();
  v21 = HIBYTE(v25);
  sub_1003751C0(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100366288(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
    sub_1004BA5A4();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_1003751C0(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BBB04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_1004B7F64();
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v15 = *(v9 + 80);
    v16 = v2;
    isa = _.super.super.super.isa;
    v29 = v12;
    v17 = (v15 + 32) & ~v15;
    v30 = v11;
    v18 = sub_1004BBAE4();
    sub_1004B7F54();
    (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v17, v8);
    v19 = swift_allocObject();
    v20 = isa;
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    (*(v9 + 32))(v19 + v17, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v21 = v16;
    v22 = v20;
    v23 = sub_1004BC9C4();

    (*(v29 + 8))(v14, v30);
  }

  else
  {
    sub_100366288(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v24 = &v7[*(v5 + 32)];
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    v32 = v25;
    v33 = v26;
    v34 = v24;
    v31 = 0;
    sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
    sub_1004BA5A4();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_1003751C0(v7);
  }
}

double sub_100371AF4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, __n128 a7)
{
  v30 = a5;
  v12 = sub_1004BBB04();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v16 = &v27 - v15;
  v17 = sub_1004BC4B4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  sub_1004BC474();
  v18 = a1;
  v19 = a2;
  sub_10003F3CC(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = sub_1004BC464();
  v24 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v13 + 32))(&v25[v24], v29, v28);
  sub_1002E0EEC(0, 0, v16, &unk_1004E32B8, v25);

  return result;
}

uint64_t sub_100371D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_1004BC474();
  v8[9] = sub_1004BC464();
  v10 = sub_1004BC3E4();

  return _swift_task_switch(sub_100371DF0, v10, v9);
}

uint64_t sub_100371DF0()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_10003E428(v3, v2);
    sub_10003E428(v3, v2);
    isa = sub_1004B6B64().super.isa;
    v6 = [v4 initWithData:isa];

    sub_100004D7C(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_1004BBAF4();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_1004B6B74();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController(v23, v24);
        v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v26 = sub_1004B6B64().super.isa;
        v27 = [v25 _initWithSourceImageData:v26 cropRect:{v16, v18, v20, v22}];

        if (v27)
        {
          v28 = *(v0 + 48);
          [v27 setDelegate:v28];
          [v27 setModalInPresentation:1];
          v29 = v28 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v29 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v30);
          }

          v32 = *(v0 + 24);
          v31 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v27 animated:1 completion:0];
          [v27 becomeFirstResponder];
          sub_100004D7C(v32, v31);
        }

        else
        {
          sub_100004D7C(*(v0 + 24), *(v0 + 32));
        }

        sub_100004D90(v13, v15);
      }

      else
      {
        sub_100004D7C(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_100004D7C(*(v0 + 24), *(v0 + 32));
  }

  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  sub_1004BD404(49);

  *(v0 + 16) = v33;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8D8, &qword_1004E32C0);
  v51._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v51);

  v35 = *(v34 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v35)
  {
    v36 = *(v34 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_10037516C();
    v37 = swift_allocError();
    *v38 = 0xD00000000000002FLL;
    v38[1] = 0x8000000100509CF0;

    v35(v37, 1);
    sub_10003CC4C(v35, v36);
  }

  else
  {
  }

  v39 = *(v0 + 56);
  v40 = sub_100373084();
  [v39 presentViewController:v40 animated:1 completion:0];

  v41 = sub_1004BBAF4();
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v45 = *(v0 + 56);
    sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1004C50A0;
    *(v46 + 32) = v43;
    *(v46 + 40) = v44;
    v47 = sub_1004BC284().super.isa;

    [v45 deselectAssetsWithIdentifiers:v47];
  }

LABEL_17:
  v48 = *(v0 + 8);

  return v48();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_1004B6AA4();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_1004BBE24();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_1004B6B74();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController(v31, v32);
        v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v34 = sub_1004B6B64().super.isa;
        v35 = [v33 _initWithSourceImageData:v34 cropRect:{v24, v26, v28, v30}];

        if (v35)
        {
          [v35 setDelegate:v3];
          [v35 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v36);
          }

          [(objc_class *)isa presentViewController:v35 animated:1 completion:0];

          sub_100004D90(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_100004D90(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1004BD404(59);
  v52._countAndFlagsBits = 0xD000000000000025;
  v52._object = 0x8000000100509A10;
  sub_1004BC024(v52);
  v53._countAndFlagsBits = sub_1004BC2B4();
  sub_1004BC024(v53);

  v54._object = 0x8000000100509A40;
  v54._countAndFlagsBits = 0xD000000000000014;
  sub_1004BC024(v54);
  v37 = v50;
  v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v38)
  {
    v39 = v49;
    v40 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_10037516C();
    v41 = swift_allocError();
    *v42 = v39;
    v42[1] = v37;

    v38(v41, 1);
    sub_10003CC4C(v38, v40);
  }

  else
  {
  }

  sub_100366288(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v43 = &v8[*(v6 + 32)];
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v43) = v43[16];
  v49 = v44;
  v50 = v45;
  v51 = v43;
  v48 = 0;
  sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
  sub_1004BA5A4();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_1003751C0(v8);
}

void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_1004B6A44(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v35 = v11;
    v12 = sub_1004B6B74();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController(v18, v19);
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_1004B6B64().super.isa;
    v22 = [v20 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v22)
    {
      [v22 setDelegate:v2];
      [v22 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v23);
      }

      sub_100004D90(v12, v14);
      [a1 presentViewController:v22 animated:1 completion:0];
    }

    else
    {
      sub_100004D90(v12, v14);
    }

    v30 = v35;
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1004BD404(52);
    v41._object = 0x8000000100509A60;
    v41._countAndFlagsBits = 0xD000000000000031;
    sub_1004BC024(v41);
    sub_1004B6B04();
    sub_100375398(&qword_10060F588, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v42._countAndFlagsBits = sub_1004BD934();
    sub_1004BC024(v42);

    v43._countAndFlagsBits = 46;
    v43._object = 0xE100000000000000;
    sub_1004BC024(v43);
    v24 = v38;
    v25 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v25)
    {
      v26 = v37;
      v27 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
      sub_10037516C();
      v28 = swift_allocError();
      *v29 = v26;
      v29[1] = v24;

      v25(v28, 1);
      sub_10003CC4C(v25, v27);
    }

    else
    {
    }

    sub_100366288(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v31 = &v6[*(v4 + 32)];
    v32 = *v31;
    v33 = *(v31 + 1);
    LOBYTE(v31) = v31[16];
    v37 = v32;
    v38 = v33;
    v39 = v31;
    v36 = 0;
    sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
    sub_1004BA5A4();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_1003751C0(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100366288(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v5);
  v6 = &v5[*(v3 + 40)];
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v11 = v7;
  v12 = v8;
  v13 = v6;
  v10[7] = 0;
  sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
  sub_1004BA5A4();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_1003751C0(v5);
}

void sub_100372E8C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100366288(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v8 = &v7[*(v5 + 40)];
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v13[7] = 0;
  v11 = a3;
  v12 = a1;
  sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
  sub_1004BA5A4();
  [v11 dismissViewControllerAnimated:1 completion:0];
  sub_1003751C0(v7);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  sub_100003ABC(&qword_10060F540, &qword_1004DDD20);
  sub_1004BA5A4();
}

id sub_100373084()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_1003730E4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003730E4()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v18 - v4;
  sub_1004BBDA4();
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v7 = qword_100618C60;
  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = v8;
  v18[2] = v7;
  v18[0] = sub_1004BBED4();
  v10 = *(v1 + 8);
  v10(v5, v0);
  sub_1004BBDA4();
  v6(v3, v5, v0);
  sub_1004B6DF4();
  sub_1004BBED4();
  v18[1] = v1 + 16;
  v10(v5, v0);
  v11 = sub_1004BBE24();
  v18[0] = v6;
  v12 = v11;

  v13 = sub_1004BBE24();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_1004BBDA4();
  (v18[0])(v3, v5, v0);
  sub_1004B6DF4();
  sub_1004BBED4();
  v10(v5, v0);
  v15 = sub_1004BBE24();

  v16 = [objc_opt_self() actionWithTitle:v15 style:1 handler:0];

  [v14 addAction:v16];
  return v14;
}

id sub_100373528(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = *(type metadata accessor for ImagePicker(0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  sub_100366288(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ImagePicker.Coordinator(0);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_100366288(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v4;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  sub_1003751C0(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100366288(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  sub_100375590(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v11 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8];
  *v10 = sub_1003755F4;
  v10[1] = v9;
  sub_10003CC4C(v11, v12);
  return v7;
}

uint64_t sub_100373768(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_1004B80B4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v12 = Logger.playlistCovers.unsafeMutableAddressor(v8, v9);
    (*(v7 + 16))(v11, v12, v6);
    swift_errorRetain();
    v13 = sub_1004B8094();
    v14 = sub_1004BC984();
    sub_10023C250(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v30 = v16;
      *v15 = 136446210;
      v32 = a1;
      swift_errorRetain();
      sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
      v17 = sub_1004BBF04();
      v19 = sub_1002C4260(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "ImagePicker failed with error: %{public}s", v15, 0xCu);
      sub_100004C6C(v16);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v21 = type metadata accessor for ImagePicker(0);
    v22 = (a3 + v21[5]);
    v23 = *v22;
    v24 = *(v22 + 2);
    v30 = v23;
    v31 = v24;
    v32 = a1;
    v25 = a1;
    sub_100003ABC(&qword_10060F8C8, &unk_1004E32A0);
    result = sub_1004BA5A4();
    v26 = *(a3 + v21[7]);
    if (v26)
    {
      v27 = (a3 + v21[6]);
      v28 = *v27;
      v29 = v27[1];
      LOBYTE(v27) = *(v27 + 16);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      LOBYTE(v31) = v27;
      sub_100003ABC(&qword_10060F568, &qword_1004E2FD8);
      sub_1004BA594();
      return v26(v32);
    }
  }

  return result;
}

char *sub_100373A18@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_100373A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100375398(&qword_10060F8B0, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100373AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100375398(&qword_10060F8B0, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100373B68(uint64_t a1)
{
  sub_100375398(&qword_10060F8B0, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);
  sub_1004B9834();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  a1 = swift_getObjCClassFromMetadata();
  v4 = a1;
  if (v3)
  {
LABEL_3:
    a1 = swift_getObjCClassFromMetadata();
    v3 = a1;
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController(a1, a2);
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", v4, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController(a1, a2);
  v4 = objc_msgSendSuper2(&v6, "initWithRootViewController:", a1);

  return v4;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1004BBE24();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController(a1, a2);
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController(a1, a2);
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_100373F48()
{
  v0 = sub_1002CFD74(&off_1005BE3E8);
  sub_100003ABC(&qword_10060F910, &qword_1004E32E8);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_100373FEC()
{

  return swift_deallocObject();
}

void sub_10037402C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

double static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_100609CF0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1003740CC(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  sub_1004BBF84();
  v4 = sub_1004BDBF4();

  return sub_100034AC0(a1, a2, v4);
}

unint64_t sub_100374148(uint64_t a1)
{
  sub_1004BDBA4();
  PlaylistCovers.Cover.Representation.hash(into:)(v4);
  v2 = sub_1004BDBF4();

  return sub_100374274(a1, v2);
}

unint64_t sub_1003741B4(uint64_t a1)
{
  v1 = a1;
  sub_1004BDBA4();
  sub_1004BBF84();

  v2 = sub_1004BDBF4();

  return sub_100374358(v1, v2);
}

unint64_t sub_100374274(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *v6;
      v14 = *(v6 + 48);
      v13[1] = v8;
      v13[2] = v7;
      v13[0] = v9;
      sub_1002235F8(v13, v12);
      v10 = static PlaylistCovers.Cover.Representation.== infix(_:_:)();
      sub_100223654(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100374358(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1004BD9C4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1003744D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_10060AC38, &qword_1004DC5F0);
  v34 = v4;
  v6 = sub_1004BD6D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        sub_10003E428(v35, *(&v35 + 1));
      }

      sub_1004BDBA4();
      sub_1004BBF84();
      v25 = sub_1004BDBF4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100374790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_10060F8E0, &qword_1004E32C8);
  v6 = sub_1004BD6D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_10003E13C((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_10003D034(v23, &v37);
        sub_100004DE4(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1004BD384(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_10003E13C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100374A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003ABC(&qword_10060F8B8, &unk_1004E3290);
  v62 = v4;
  v6 = sub_1004BD6D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v60 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v62)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v79 = *(v32 + 64);
        v80 = v33;
        v34 = *(v32 + 112);
        v81 = *(v32 + 96);
        v82 = v34;
        v35 = *(v32 + 16);
        v75 = *v32;
        v76 = v35;
        v36 = *(v32 + 48);
        v77 = *(v32 + 32);
        v78 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v61 = *(v27 + 8);
        v63 = *(v27 + 40);
        v64 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v66 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v69 = *(v38 + 48);
        v70 = v39;
        v67 = v41;
        v68 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v74 = *(v38 + 128);
        v72 = v43;
        v73 = v42;
        v71 = v44;
        v37 = v74;
        v45 = v61;
        v46 = *(&v61 + 1);
        v47 = v64;
        v48 = *(&v64 + 1);
        v49 = v63;
        v50 = *(&v63 + 1);
        sub_100375C2C(&v66, v65);
        v30 = v63;
        v29 = v64;
        v28 = v61;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v75 = v66;
        v76 = v67;
        v77 = v68;
        v78 = v69;
      }

      v83[0] = v31;
      *&v83[8] = v28;
      *&v83[24] = v29;
      *&v83[40] = v30;
      sub_1004BDBA4();
      PlaylistCovers.Cover.Representation.hash(into:)(&v66);
      v51 = sub_1004BDBF4();
      v52 = -1 << *(v7 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v14 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v14 + 8 * v54);
          if (v58 != -1)
          {
            v15 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v53) & ~*(v14 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v83[16];
      *v16 = *v83;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v83[32];
      *(v16 + 48) = *&v83[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v80;
      *(v18 + 64) = v79;
      *(v18 + 80) = v19;
      v20 = v82;
      *(v18 + 96) = v81;
      *(v18 + 112) = v20;
      v21 = v76;
      *v18 = v75;
      *(v18 + 16) = v21;
      v22 = v78;
      *(v18 + 32) = v77;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v60;
      goto LABEL_34;
    }

    v59 = 1 << *(v5 + 32);
    v3 = v60;
    if (v59 >= 64)
    {
      bzero((v5 + 64), ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v59;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100374E44()
{
  v1 = v0;
  sub_100003ABC(&qword_10060AC38, &qword_1004DC5F0);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_10003E428(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100374FC8()
{
  v1 = v0;
  sub_100003ABC(&qword_10060F8E0, &qword_1004E32C8);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10003D034(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100004DE4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_10003E13C(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_10037516C()
{
  result = qword_10060F558;
  if (!qword_10060F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F558);
  }

  return result;
}

uint64_t sub_1003751C0(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037521C(__n128 a1)
{
  v2 = sub_1004BBB04();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double sub_1003752E8(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = *(sub_1004BBB04() - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100371AF4(a1, a2, a3, v10, v11, v12, v9);
}

uint64_t sub_100375398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100375400()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100003ABC(&unk_100609E80, &qword_1004E2FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B8A24();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100375590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003755F4(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100373768(a1, a2 & 1, v6);
}

unint64_t sub_100375678()
{
  result = qword_10060F598;
  if (!qword_10060F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F598);
  }

  return result;
}

uint64_t sub_100375728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003ABC(&unk_10060D7C0, &unk_1004E0C38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100375808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003ABC(&unk_10060D7C0, &unk_1004E0C38);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1003758D0(uint64_t a1)
{
  sub_100375A58(319);
  if (v1 <= 0x3F)
  {
    sub_100375AFC(319, &unk_10060F620, &qword_10060A770, &qword_1004DBB28, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_100375AB0(319, &unk_10060F630, &type metadata for ImagePicker.SourceType);
      if (v3 <= 0x3F)
      {
        sub_100375AFC(319, &qword_10060CE88, &qword_10060F640, &qword_1004E3170, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100375AB0(319, &qword_10060F648, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_100375AFC(319, &qword_10060F650, &unk_10060F658, &qword_1004E3178, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100375A58(uint64_t a1)
{
  if (!qword_10060D848)
  {
    sub_1004B8A24();
    v1 = sub_1004B8804();
    if (!v2)
    {
      atomic_store(v1, &qword_10060D848);
    }
  }
}

void sub_100375AB0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004BA604();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100375AFC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100375B68(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
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

void sub_100375C88()
{
  v1 = v0;
  sub_100003ABC(&qword_10060F8B8, &unk_1004E3290);
  v2 = *v0;
  v3 = sub_1004BD6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
      sub_100375C2C(&v53, v52);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_100375ECC(__n128 a1)
{
  v2 = sub_1004BBB04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v5 = *(v1 + 40);
  if (v5 >> 60 != 15)
  {
    sub_100004D90(*(v1 + 32), v5);
  }

  (*(v3 + 8))(v1 + ((v4 + 72) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_100375FC0(uint64_t a1, __n128 a2)
{
  sub_1004BBB04();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000136EC;

  return sub_100371D48(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1003760E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060F8A8, &qword_1004E3288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100376158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060F8A8, &qword_1004E3288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InteractionFeedbackLoadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  *a3 = sub_1004B9204();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100003ABC(&qword_10060F918, &qword_1004E32F0);
  sub_10037630C(v5, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v5;
  *(v9 + 32) = a2;
  v10 = (a3 + *(sub_100003ABC(&qword_10060F920, &qword_1004E32F8) + 36));
  *v10 = sub_100376A10;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_10037630C@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_1004B91C4();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v34 - v6;
  v7 = sub_1004B9714();
  v35 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003ABC(&qword_10060DDC8, &qword_1004E12E8);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v42 = sub_100003ABC(&qword_10060F940, &qword_1004E33D0);
  v14 = *(v42 - 8);
  __chkstk_darwin();
  v16 = &v34 - v15;
  sub_100003ABC(&qword_10060F948, &qword_1004E33D8);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v34 - v19;
  v44 = a1;
  v45 = v40;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  v21 = 1;
  if (v43 == 1)
  {
    sub_1004B8904();
    sub_1004B9704();
    sub_1000206D4(&qword_10060DDC0, &qword_10060DDC8, &qword_1004E12E8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100376F94(&qword_10060F958, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    sub_1004B9DD4();
    (*(v35 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    v22 = &v16[*(sub_100003ABC(&qword_10060F960, &qword_1004E33E8) + 36)];
    v23 = *(sub_100003ABC(&qword_10060F968, &qword_1004E33F0) + 28);
    v24 = enum case for ControlSize.large(_:);
    v25 = sub_1004B87E4();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    v26 = v37;
    sub_1004B91B4();
    v28 = v38;
    v27 = v39;
    (*(v38 + 16))(v36, v26, v39);
    sub_100376F94(&qword_10060F970, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v29 = sub_1004B8A04();
    (*(v28 + 8))(v26, v27);
    *&v16[*(v42 + 36)] = v29;
    sub_100376FDC(v16, v20);
    v21 = 0;
  }

  (*(v14 + 56))(v20, v21, 1, v42);
  sub_100376DCC(v20, v18);
  v30 = v41;
  *v41 = 0;
  *(v30 + 8) = 1;
  v31 = sub_100003ABC(&qword_10060F950, &qword_1004E33E0);
  sub_100376DCC(v18, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  sub_100376E3C(v20);
  return sub_100376E3C(v18);
}

uint64_t sub_1003768A0(char a1, uint64_t a2, double a3)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v7, &unk_1004E33C8, v9, (&type metadata for () + 1), a3);

  return sub_100376D64(v7);
}

uint64_t sub_1003769D8()
{

  return swift_deallocObject();
}

uint64_t sub_100376A3C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_100376A60, 0, 0);
}

uint64_t sub_100376A60()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA434();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100376AFC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  *a2 = sub_1004B9204();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_100003ABC(&qword_10060F918, &qword_1004E32F0);
  sub_10037630C(v5, v6, (a2 + *(v7 + 44)));
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = (a2 + *(sub_100003ABC(&qword_10060F920, &qword_1004E32F8) + 36));
  *v9 = sub_100377054;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
}

unint64_t sub_100376BF4()
{
  result = qword_10060F928;
  if (!qword_10060F928)
  {
    sub_100003B68(&qword_10060F920, &qword_1004E32F8);
    sub_1000206D4(&qword_10060F930, &qword_10060F938, &unk_1004E33B0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F928);
  }

  return result;
}

uint64_t sub_100376CAC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000136EC;

  return sub_100376A3C(a1, v4, v5);
}

uint64_t sub_100376D64(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100376DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060F948, &qword_1004E33D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100376E3C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F948, &qword_1004E33D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100376EC8(uint64_t a1)
{
  sub_1004B87E4();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004B8F84();
}

uint64_t sub_100376F94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100376FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060F940, &qword_1004E33D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100377058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B8894();
  v16 = __chkstk_darwin();
  (*(v13 + 16))(v15, v7, a3, v16);
  sub_1004B88A4();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_1004B8B14();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23 = a8;
  v24 = a10;
  v25 = a11;
  result = type metadata accessor for LayoutProviderStack(0, &v23);
  v20 = (a9 + result[13]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a9 + result[14];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = (a9 + result[15]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  sub_100003B68(&qword_10060F978, &qword_1004E3430);
  v4 = *(a1 + 24);
  sub_100377654(&qword_10060F980, &protocol conformance descriptor for _LayoutRoot<A>);
  v5 = sub_1004B8B04();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = v22 - v10;
  (*(*(a1 + 32) + 8))(v23, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v9);
  sub_100009178(v23, v23[3]);
  v12 = __chkstk_darwin();
  (*(v14 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v22[4] = sub_1004BA7D4();
  v15 = (v2 + *(a1 + 60));
  v16 = *v15;
  v17 = v15[1];
  v18 = sub_100377600();
  v19 = *(a1 + 40);
  sub_100377058(v16, v17, &type metadata for AnyLayout, v4, v18, v19, v8);

  sub_100004C6C(v23);
  v22[2] = sub_100377654(&qword_10060F990, &protocol conformance descriptor for _LayoutRoot<A>);
  v22[3] = v19;
  swift_getWitnessTable();
  sub_100318364();
  v20 = *(v6 + 8);
  v20(v8, v5);
  sub_100318364();
  return (v20)(v11, v5);
}

unint64_t sub_100377600()
{
  result = qword_10060F988;
  if (!qword_10060F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F988);
  }

  return result;
}

uint64_t sub_100377654(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003B68(&qword_10060F978, &qword_1004E3430);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double AxisStack.body.getter(uint64_t a1)
{
  v15[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v21, v15, &type metadata for Axis);
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  v10 = type metadata accessor for LayoutProviderStack(0, &v27);
  v11 = &v21[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v21[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v21[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v15[0] = v21[0];
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  type metadata accessor for LayoutProviderStack(0, &v27);
  swift_getWitnessTable();
  sub_100318364();

  v21[0] = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  sub_100318364();

  return result;
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003778F8();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_10037794C();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_1003778F8()
{
  result = qword_10060F998;
  if (!qword_10060F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060F998);
  }

  return result;
}

unint64_t sub_10037794C()
{
  result = qword_10060F9A0[0];
  if (!qword_10060F9A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10060F9A0);
  }

  return result;
}

unint64_t sub_100377A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003778F8();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_10037794C();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_100377AA0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100315D2C();
    if (v2 <= 0x3F)
    {
      sub_100316910();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100377B48(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100377C94(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100377E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100377EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100377EEC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100377F50(uint64_t a1)
{
  sub_100003B68(&qword_10060F978, &qword_1004E3430);
  sub_100377654(&qword_10060F980, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_1004B8B04();
  sub_100377654(&qword_10060F990, &protocol conformance descriptor for _LayoutRoot<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100378018(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4[0] = &type metadata for Axis;
  v4[1] = v1;
  v4[2] = &protocol witness table for Axis;
  v4[3] = v2;
  type metadata accessor for LayoutProviderStack(255, v4);
  return swift_getWitnessTable();
}

uint64_t sub_100378078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  v11(v8);
  sub_100318364();
  v12 = *(v5 + 8);
  v12(v7, a4);
  sub_100318364();
  return (v12)(v10, a4);
}

char *LoadingView.__allocating_init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return LoadingView.init(title:style:usesSubtitleTextColor:)(a1, a2, a3 & 0xFFFFFFFFFFLL | (((a3 >> 40) & 1) << 40), v5);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_1004BBE24();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_100609CF8;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_10060FAA8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_100378570();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_1003786E4();
  [v16 addSubview:v26];

  return v16;
}

id sub_100378570()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_1003786E4();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_1003786E4();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_1003786E4();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_1003786E4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_100378570();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_10037897C;
}

void sub_10037897C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_100378570();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 setNeedsLayout];
  }
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100378B68;
}

void sub_100378B68(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_100378CBC;
}

void sub_100378CBC(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_1004BD9C4() & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = sub_1004BBE24();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
LABEL_12:

  return result;
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100378F18;
}

void sub_100378F18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  sub_100226A94(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  sub_1004BCD94();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = sub_1003786E4();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  sub_1004BCD94();
  if (v46 == 2)
  {
    [v0 bounds];
    sub_1004BCDB4();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    sub_1004BCD94();
    [v0 bounds];
    sub_1004BCDB4();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    sub_1004BCD94();
    v53 = v50;
  }

  sub_1004BCD94();
  [v0 bounds];
  sub_1004BCDB4();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  sub_1004BCD94();
  [v0 bounds];
  sub_1004BCDB4();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1003786E4();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _s3__C6CGSizeVMa_0(0);
    if (sub_1004B70D4())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_100379870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_1003798A0(uint64_t a1, uint64_t a2)
{
  sub_100379C10(0, a2);
  v2 = UIFontTextStyleSubheadline;
  v3 = sub_1004BCE34();

  qword_10060FAA8 = v3;
}

unint64_t sub_1003799DC()
{
  result = qword_10060FAE0;
  if (!qword_10060FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060FAE0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LoadingView.Style(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100379AC4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100379AE0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_100379B10()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_100379C10(uint64_t a1, uint64_t a2)
{
  result = qword_10060FB10;
  if (!qword_10060FB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060FB10);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a3@<X8>)
{
  sub_1004B68B4();
  __chkstk_darwin();
  sub_100003ABC(&qword_10060FB18, &qword_1004E3650);
  swift_allocObject();

  sub_1004B7094();
  sub_1004B7084();

  result = sub_1004B9D74();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100379D5C@<X0>(uint64_t a1@<X8>)
{
  sub_1004B68B4();
  __chkstk_darwin();
  sub_100003ABC(&qword_10060FB18, &qword_1004E3650);
  swift_allocObject();

  sub_1004B7094();
  sub_1004B7084();

  result = sub_1004B9D74();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100379E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  sub_1004B8854();
  sub_1003800C0(a1, v15, v11, a3, a4, a5, a6, a7);
  return sub_1002F6190(v15);
}

uint64_t sub_100379EFC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1004BA854();
}

uint64_t sub_10037A0CC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v11);
  (*(v8 + 16))(v10, a1, a4);
  return sub_1004B8794();
}

uint64_t sub_10037A260@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1004BD174();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for MaterialyView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v79 = *(a1 + 16);
  v2 = v79;
  v80 = &type metadata for Color;
  v81 = v3;
  v82 = &protocol witness table for Color;
  v5 = v3;
  v66 = sub_1004B87A4();
  v62 = *(v66 - 8);
  __chkstk_darwin();
  v61 = &v43 - v6;
  sub_1004B8E84();
  v65 = sub_1004B8D64();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v60 = &v43 - v7;
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v5;
  v82 = &protocol witness table for LinearGradient;
  sub_1004B87A4();
  WitnessTable = sub_1004BD174();
  v79 = v2;
  v80 = &type metadata for Color;
  v81 = &type metadata for EmptyView;
  v82 = v5;
  v83 = &protocol witness table for Color;
  v84 = &protocol witness table for EmptyView;
  sub_1004B8DB4();
  sub_1004B8D64();
  v57 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004B8884();
  sub_1004B8D64();
  sub_1004B8D64();
  v10 = sub_100003B68(&qword_10060FB20, &qword_1004E36F0);
  v11 = sub_1000206D4(&qword_10060FB28, &qword_10060FB20, &qword_1004E36F0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v79 = v2;
  v80 = v10;
  v81 = v5;
  v82 = v11;
  v12 = v5;
  sub_1004B87A4();
  v79 = AssociatedTypeWitness;
  v80 = &type metadata for Color;
  v81 = v9;
  v82 = &protocol witness table for Color;
  sub_1004B87A4();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  sub_1004B8D64();
  swift_getTupleTypeMetadata3();
  sub_1004BA844();
  swift_getWitnessTable();
  v55 = sub_1004BA584();
  WitnessTable = swift_getWitnessTable();
  sub_1004B8EA4();
  v13 = sub_1004B8D64();
  __chkstk_darwin();
  v54 = &v43 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v47 = swift_getWitnessTable();
  v77 = v47;
  v78 = &protocol witness table for _BlendModeEffect;
  v18 = swift_getWitnessTable();
  v50 = v18;
  v19 = swift_getWitnessTable();
  v75 = v18;
  v76 = v19;
  v52 = v13;
  v49 = swift_getWitnessTable();
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v13;
  v20 = v12;
  v44 = v12;
  v82 = v12;
  v83 = &protocol witness table for LinearGradient;
  v84 = v49;
  v21 = sub_1004B8DB4();
  v53 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v43 - v24;
  v25 = v57;
  v27 = type metadata accessor for MaterialyView.Style.Specs(0, v2, v57, v26);
  v46 = v27;
  v51 = *(v27 - 8);
  __chkstk_darwin();
  v29 = (&v43 - v28);
  v30 = v59;
  sub_10037AD74(*(v59 + *(v58 + 36)), v2, v25, &v43 - v28, v31);
  (*(v15 + 16))(v17, v30, v2);
  v32 = v29 + *(v27 + 36);
  v72 = *(v32 + 1);
  v33 = *(v32 + 2);
  v73 = *(v32 + 1);
  v74 = v33;

  sub_1004B8854();
  v71 = *v29;
  v34 = v61;
  sub_10037A0CC(&v71, 256, v2, &type metadata for Color, v20, &protocol witness table for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v2, v25, v35);
  v36 = v60;
  v37 = v66;
  sub_1004BA164();
  (*(v62 + 8))(v34, v37);
  v67 = v2;
  v68 = v25;
  v69 = v29;
  v70 = v30;
  sub_1004BA754();
  v38 = v54;
  v39 = v65;
  sub_1004BA0F4();
  (*(v63 + 8))(v36, v39);
  sub_10037D368(v45, &v72, &v79, 1, v38, v2, &type metadata for LinearGradient, v52, v23, v44, &protocol witness table for LinearGradient, v49);
  swift_getWitnessTable();
  v40 = v48;
  sub_100318364();
  v41 = *(v53 + 8);
  v41(v23, v21);
  sub_100318364();
  v41(v40, v21);
  return (*(v51 + 8))(v29, v46);
}

uint64_t sub_10037AD74@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v80 = a4;
  v8 = a1;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a2, a3, a5);
  __chkstk_darwin();
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v69 - v10;
  __chkstk_darwin();
  v77 = &v69 - v11;
  __chkstk_darwin();
  v76 = &v69 - v12;
  v13 = sub_1004BA7E4();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v18, a3, v20);
  __chkstk_darwin();
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v69 - v23;
  if (v8 == 2)
  {
    sub_1004BA2B4();
    v25 = sub_1004BA2C4();

    v26 = *(v14 + 104);
    v27 = v16;
    v26(v16, enum case for BlendMode.plusLighter(_:), v13);
    v28 = v26;
    v29 = v24;
    v79 = v24;
    v30 = v17;
    v74 = v19;
    sub_10037D788(v25, v27, v17, v19, v29);
    sub_100003ABC(&qword_10060B498, &qword_1004DD418);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1004C50B0;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v31 + 32) = sub_1004BA6D4();
    *(v31 + 40) = v32;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v31 + 48) = sub_1004BA6D4();
    *(v31 + 56) = v33;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v31 + 64) = sub_1004BA6D4();
    *(v31 + 72) = v34;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v31 + 80) = sub_1004BA6D4();
    *(v31 + 88) = v35;
    sub_1004BA6E4();
    sub_1004BA864();
    sub_1004BA874();
    sub_1004B8B64();
    *&v84 = 0x3FE0000000000000;
    *(&v84 + 1) = v87;
    v85 = v88;
    v86 = v89;
    memset(v90, 0, 40);
    sub_1004BA284();
    v36 = sub_1004BA2C4();

    v37 = enum case for BlendMode.normal(_:);
    v38 = v28;
    v28(v27, enum case for BlendMode.normal(_:), v13);
    v39 = v76;
    v40 = v30;
    v41 = v30;
    v42 = v74;
    sub_10037D814(v36, v27, v76, 4.0, 0.0, 3.0, v41, v74);
    sub_1004BA2B4();
    v43 = sub_1004BA2C4();

    v38(v27, v37, v13);
    v44 = v77;
    sub_10037D814(v43, v27, v77, 3.0, 0.0, 1.0, v40, v42);
    v45 = v80;
    v46 = v79;
    v47 = v39;
    v48 = v44;
    v49 = v40;
  }

  else
  {
    sub_1004BA2B4();
    v50 = 0.23;
    if (a1)
    {
      v50 = 0.8;
    }

    v76 = *&v50;
    v51 = 3.0;
    if (a1)
    {
      v51 = 6.0;
    }

    v77 = *&v51;
    v52 = sub_1004BA2C4();

    v53 = *(v14 + 104);
    v53(v16, enum case for BlendMode.plusLighter(_:), v13);
    v75 = v17;
    sub_10037D788(v52, v16, v17, v19, v22);
    sub_100003ABC(&qword_10060B498, &qword_1004DD418);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1004C50B0;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v54 + 32) = sub_1004BA6D4();
    *(v54 + 40) = v55;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v54 + 48) = sub_1004BA6D4();
    *(v54 + 56) = v56;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v54 + 64) = sub_1004BA6D4();
    *(v54 + 72) = v57;
    sub_1004BA2B4();
    sub_1004BA2C4();

    *(v54 + 80) = sub_1004BA6D4();
    *(v54 + 88) = v58;
    sub_1004BA6E4();
    sub_1004BA864();
    sub_1004BA874();
    sub_1004B8B64();
    *&v84 = 0x3FF0000000000000;
    *(&v84 + 1) = v81;
    v85 = v82;
    v86 = v83;
    sub_100003ABC(&qword_10060B4A0, &unk_1004DD420);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1004C50C0;
    sub_1004BA2B4();
    v60 = sub_1004BA2C4();

    *(v59 + 32) = v60;
    sub_1004BA284();
    v61 = sub_1004BA2C4();

    *(v59 + 40) = v61;
    sub_1004BA6F4();
    sub_1004BA894();
    sub_1004BA8A4();
    sub_1004B8B64();
    v73 = v87;
    sub_1004BA284();
    v62 = sub_1004BA2C4();
    v63 = enum case for BlendMode.normal(_:);

    v72 = v88;
    v71 = v89;
    v53(v16, v63, v13);
    v42 = v19;
    v64 = v75;
    v70 = v22;
    v65 = v78;
    sub_10037D814(v62, v16, v78, 4.0, 0.0, 3.0, v75, v42);
    sub_1004BA2B4();
    v66 = sub_1004BA2C4();

    v53(v16, v63, v13);
    v67 = v79;
    sub_10037D814(v66, v16, v79, *&v77, 0.0, 1.0, v64, v42);
    *&v90[0] = v73;
    *(&v90[1] + 8) = v71;
    *(v90 + 8) = v72;
    v45 = v80;
    v46 = v70;
    v47 = v65;
    v48 = v67;
    v49 = v64;
  }

  return sub_10037D8A8(v46, &v84, v90, v47, v48, v49, v42, v45);
}

uint64_t sub_10037B72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v20 = a2;
  v21 = a5;
  v7 = *(a4 + 8);
  sub_1004B87A4();
  v18 = sub_1004BD174();
  v26 = a3;
  v27 = &type metadata for Color;
  v28 = &type metadata for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for Color;
  v31 = &protocol witness table for EmptyView;
  sub_1004B8DB4();
  sub_1004B8D64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004B8884();
  sub_1004B8D64();
  sub_1004B8E84();
  sub_1004B8D64();
  sub_100003B68(&qword_10060FB20, &qword_1004E36F0);
  sub_1000206D4(&qword_10060FB28, &qword_10060FB20, &qword_1004E36F0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004B87A4();
  v26 = AssociatedTypeWitness;
  v27 = &type metadata for Color;
  v28 = v9;
  v29 = &protocol witness table for Color;
  sub_1004B87A4();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  sub_1004B8D64();
  swift_getTupleTypeMetadata3();
  sub_1004BA844();
  swift_getWitnessTable();
  v10 = sub_1004BA584();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v18 - v14;
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = v20;
  sub_1004BA754();
  sub_1004BA574();
  swift_getWitnessTable();
  sub_100318364();
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_100318364();
  return (v16)(v15, v10);
}

uint64_t sub_10037BB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a2;
  v127 = a1;
  v116 = a5;
  v7 = sub_100003B68(&qword_10060FB20, &qword_1004E36F0);
  v8 = *(a4 + 8);
  v133 = a3;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  *&v135 = sub_1000206D4(&qword_10060FB28, &qword_10060FB20, &qword_1004E36F0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004B87A4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v133 = AssociatedTypeWitness;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = v10;
  *&v135 = &protocol witness table for Color;
  sub_1004B87A4();
  sub_1004B8E84();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  v107 = sub_1004BA844();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v108 = *(sub_1004BA584() - 8);
  __chkstk_darwin();
  v104 = &v84 - v12;
  v110 = v13;
  v109 = *(sub_1004B8D64() - 8);
  __chkstk_darwin();
  v106 = &v84 - v14;
  v111 = v15;
  v115 = sub_1004B8D64();
  v112 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v84 - v17;
  v100 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v99 = &v84 - v18;
  v133 = a3;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = &type metadata for EmptyView;
  *&v135 = v8;
  *(&v135 + 1) = &protocol witness table for Color;
  v136 = &protocol witness table for EmptyView;
  v89 = *(sub_1004B8DB4() - 8);
  __chkstk_darwin();
  v88 = &v84 - v19;
  v90 = v20;
  v21 = sub_1004B8D64();
  v95 = *(v21 - 8);
  __chkstk_darwin();
  v92 = &v84 - v22;
  v103 = AssociatedTypeWitness;
  v101 = v10;
  v23 = sub_1004B8884();
  v96 = v21;
  v93 = v23;
  v97 = *(sub_1004B8D64() - 8);
  __chkstk_darwin();
  v94 = &v84 - v24;
  v98 = v25;
  v26 = a3;
  v102 = sub_1004B8D64();
  v119 = *(v102 - 8);
  __chkstk_darwin();
  v126 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v84 - v28;
  v133 = a3;
  *&v134 = &type metadata for LinearGradient;
  *(&v134 + 1) = v8;
  *&v135 = &protocol witness table for LinearGradient;
  v29 = *(sub_1004B87A4() - 8);
  __chkstk_darwin();
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v84 - v32;
  v118 = v34;
  v120 = sub_1004BD174();
  v125 = *(v120 - 8);
  __chkstk_darwin();
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v84 - v37;
  v121 = a4;
  v117 = type metadata accessor for MaterialyView.Style.Specs(0, v26, a4, v38);
  v39 = v127 + *(v117 + 40);
  if (*v39)
  {
    v133 = *v39;
    v134 = *(v39 + 8);
    v135 = *(v39 + 24);
    sub_10037A0CC(&v133, 256, v26, &type metadata for LinearGradient, v8, &protocol witness table for LinearGradient);
    v40 = v118;
    swift_getWitnessTable();
    sub_100318364();
    v41 = *(v29 + 8);
    v41(v31, v40);
    v11 = v8;
    sub_100318364();
    v41(v33, v40);
    (*(v29 + 32))(v36, v31, v40);
    (*(v29 + 56))(v36, 0, 1, v40);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v118);
    swift_getWitnessTable();
  }

  v42 = v125;
  v43 = *(v125 + 16);
  v86 = v125 + 16;
  v87 = v43;
  v44 = v120;
  v43(v124, v36, v120);
  v45 = *(v42 + 8);
  v125 = v42 + 8;
  v91 = v45;
  v45(v36, v44);
  v133 = sub_1004BA2B4();
  v46 = v88;
  v84 = v26;
  sub_100379E58(&v133, 1, v26, &type metadata for Color, v11, &protocol witness table for Color, v88);

  v47 = v90;
  v48 = swift_getWitnessTable();
  v49 = v92;
  sub_1004BA0D4();
  (*(v89 + 8))(v46, v47);
  v50 = v99;
  sub_1004B8D24();
  v132[11] = v48;
  v132[12] = &protocol witness table for _ShadowEffect;
  v51 = v96;
  v52 = swift_getWitnessTable();
  v53 = v94;
  v54 = v103;
  sub_1004BA174();
  (*(v100 + 8))(v50, v54);
  (*(v95 + 8))(v49, v51);
  v55 = v84;
  v56 = v121;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v84, v121, v57);
  v58 = swift_getWitnessTable();
  v132[9] = v52;
  v132[10] = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v36;
  v62 = v126;
  sub_1004BA164();
  (*(v97 + 8))(v53, v59);
  v132[7] = v60;
  v132[8] = &protocol witness table for _BlendModeEffect;
  v63 = v102;
  v100 = swift_getWitnessTable();
  sub_100318364();
  v64 = *(v119 + 8);
  v101 = v119 + 8;
  v103 = v64;
  v64(v62, v63);
  __chkstk_darwin();
  *(&v84 - 4) = v55;
  *(&v84 - 3) = v56;
  v65 = v127;
  *(&v84 - 2) = v123;
  *(&v84 - 1) = v65;
  sub_1004BA754();
  v66 = v104;
  sub_1004BA574();
  v67 = v110;
  v68 = swift_getWitnessTable();
  v69 = v106;
  sub_1004B9F24();
  (*(v108 + 8))(v66, v67);
  v132[5] = v68;
  v132[6] = &protocol witness table for _CompositingGroupEffect;
  v70 = v111;
  v71 = swift_getWitnessTable();
  v72 = v114;
  sub_1004BA164();
  (*(v109 + 8))(v69, v70);
  v132[3] = v71;
  v132[4] = &protocol witness table for _BlendModeEffect;
  v73 = v115;
  v127 = swift_getWitnessTable();
  v74 = v113;
  sub_100318364();
  v75 = v112;
  v76 = *(v112 + 8);
  v76(v72, v73);
  v85 = v61;
  v77 = v120;
  v87(v61, v124, v120);
  v133 = v61;
  v78 = v126;
  v79 = v122;
  (*(v119 + 16))(v126, v122, v63);
  *&v134 = v78;
  (*(v75 + 16))(v72, v74, v73);
  *(&v134 + 1) = v72;
  v132[0] = v77;
  v132[1] = v63;
  v132[2] = v73;
  v128 = swift_getWitnessTable();
  v80 = v77;
  v129 = swift_getWitnessTable();
  v130 = v100;
  v131 = v127;
  sub_100379EFC(&v133, 3uLL, v132);
  v76(v74, v73);
  v81 = v103;
  v103(v79, v63);
  v82 = v91;
  v91(v124, v80);
  v76(v72, v73);
  v81(v126, v63);
  return v82(v85, v80);
}

uint64_t sub_10037CBEC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a2;
  v51 = a1;
  v67 = a5;
  v7 = sub_1004BA7E4();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin();
  v64 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v55 = v46 - v10;
  v58 = AssociatedTypeWitness;
  v57 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v72 = &type metadata for Color;
  v73 = v57;
  v74 = &protocol witness table for Color;
  v54 = sub_1004B87A4();
  v63 = *(v54 - 8);
  __chkstk_darwin();
  v52 = v46 - v11;
  sub_1004B8E84();
  v12 = sub_1004B8D64();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  __chkstk_darwin();
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v46 - v15;
  v16 = sub_100003ABC(&qword_10060FB20, &qword_1004E36F0);
  __chkstk_darwin();
  v18 = v46 - v17;
  v46[1] = a4;
  v19 = *(a4 + 8);
  v20 = sub_1000206D4(&qword_10060FB28, &qword_10060FB20, &qword_1004E36F0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v71 = a3;
  v72 = v16;
  v73 = v19;
  v74 = v20;
  v21 = sub_1004B87A4();
  v47 = *(v21 - 8);
  v22 = v47;
  __chkstk_darwin();
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = v46 - v25;
  type metadata accessor for MaterialyView.Style.Specs(0, a3, a4, v26);
  sub_1004B8824();
  sub_10037A0CC(v18, 256, a3, v16, v19, v20);
  sub_100007214(v18, &qword_10060FB20, &qword_1004E36F0);
  WitnessTable = swift_getWitnessTable();
  sub_100318364();
  v27 = *(v22 + 8);
  v50 = v22 + 8;
  v56 = v27;
  (v27)(v24, v21);
  v28 = v55;
  sub_1004B8D24();
  v71 = sub_1004BA2B4();
  v29 = v52;
  v30 = v58;
  sub_10037A0CC(&v71, 256, v58, &type metadata for Color, v57, &protocol witness table for Color);

  (*(v62 + 8))(v28, v30);
  v32 = v64;
  v31 = v65;
  v33 = v66;
  (*(v65 + 104))(v64, enum case for BlendMode.destinationOut(_:), v66);
  v34 = v54;
  v35 = swift_getWitnessTable();
  v36 = v53;
  sub_1004BA164();
  (*(v31 + 8))(v32, v33);
  (*(v63 + 8))(v29, v34);
  v70[2] = v35;
  v70[3] = &protocol witness table for _BlendModeEffect;
  v37 = v60;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_100318364();
  v40 = v61;
  v41 = *(v61 + 8);
  v42 = v36;
  v41(v36, v37);
  v43 = v48;
  (*(v47 + 16))(v24, v48, v21);
  v71 = v24;
  (*(v40 + 16))(v42, v39, v37);
  v72 = v42;
  v70[0] = v21;
  v70[1] = v37;
  v68 = WitnessTable;
  v69 = v38;
  sub_100379EFC(&v71, 2uLL, v70);
  v41(v39, v37);
  v44 = v56;
  (v56)(v43, v21);
  v41(v42, v37);
  return (v44)(v24, v21);
}

uint64_t sub_10037D368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a5;
  v40 = a4;
  v35 = a3;
  v36 = a8;
  v38 = a2;
  v45 = a9;
  v46 = a1;
  v31[1] = a10;
  v39 = *(a8 - 8);
  v43 = a12;
  __chkstk_darwin();
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1004B94F4();
  __chkstk_darwin();
  v41 = v31 - v15;
  v34 = *(a7 - 8);
  __chkstk_darwin();
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 - 8);
  v18 = v32;
  __chkstk_darwin();
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004B8AF4();
  __chkstk_darwin();
  WitnessTable = swift_getWitnessTable();
  v47 = v21;
  v48 = a7;
  v49 = WitnessTable;
  v50 = a11;
  v33 = sub_1004B87A4();
  v23 = __chkstk_darwin();
  v24 = *(v18 + 16);
  v31[0] = a6;
  v24(v20, v46, a6, v23);
  sub_1004B8AE4();
  v25 = v34;
  v26 = v38;
  (*(v34 + 16))(v17, v38, a7);
  sub_1004B8794();
  v27 = v39;
  v28 = v36;
  v29 = v42;
  (*(v39 + 16))(v37, v42, v36);
  sub_1004BA754();
  (*(v27 + 8))(v29, v28);
  (*(v25 + 8))(v26, a7);
  (*(v32 + 8))(v46, v31[0]);
  sub_1004B94E4();
  return sub_1004B8D54();
}

uint64_t sub_10037D788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a3, a4, a4) + 36);
  v8 = sub_1004BA7E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

uint64_t sub_10037D814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, uint64_t a7@<X2>, uint64_t a8@<X3>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v10 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a7, a8, a8) + 44);
  v11 = sub_1004BA7E4();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3 + v10, a2, v11);
}

uint64_t sub_10037D8A8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a6, a7, a4);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for MaterialyView.Style.Specs(0, a6, a7, v17);
  v19 = (a8 + v18[9]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  v21 = a8 + v18[10];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a3 + 32);
  v23 = v18[11];
  v25 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a6, a7, v24);
  v28 = *(*(v25 - 8) + 32);
  (v28)((v25 - 8), a8 + v23, a4, v25);
  v26 = a8 + v18[12];

  return v28(v26, a5, v25);
}

uint64_t MaterialyButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle(0);
  sub_100305B50();
  sub_1004B8914();
  return sub_1004B8914();
}

uint64_t sub_10037DAC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9114();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle(uint64_t a1)
{
  result = qword_10060FCA0;
  if (!qword_10060FCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100003ABC(&qword_10060FB30, &qword_1004E3728);
  __chkstk_darwin();
  v6 = &v11 - v5;
  *v6 = sub_1004B9344();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = sub_100003ABC(&qword_10060FB38, &qword_1004E3730);
  sub_10037DCB8(a1, v2, &v6[*(v7 + 44)]);
  if (sub_10037EA08())
  {
    v8 = sub_1004B9624();
  }

  else
  {
    v8 = sub_1004B9644();
  }

  v9 = v8;
  sub_100025B04(v6, a2, &qword_10060FB30, &qword_1004E3728);
  result = sub_100003ABC(qword_10060FB40, &qword_1004E3738);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10037DCB8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v107 = a3;
  v105 = sub_1004B93A4();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v102 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100003ABC(&qword_10060FF08, &qword_1004E38F8);
  __chkstk_darwin();
  v98 = &v81 - v5;
  v99 = sub_100003ABC(&qword_10060FF10, &qword_1004E3900);
  __chkstk_darwin();
  v101 = &v81 - v6;
  v100 = sub_100003ABC(&qword_10060FF18, &unk_1004E3908);
  __chkstk_darwin();
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v81 - v8;
  __chkstk_darwin();
  v104 = &v81 - v9;
  sub_100003ABC(&qword_10060DF60, &qword_1004DFD10);
  __chkstk_darwin();
  v89 = &v81 - v10;
  v11 = sub_1004B9224();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin();
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004B96C4();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003ABC(&qword_10060FF20, &qword_1004E3918);
  __chkstk_darwin();
  v21 = &v81 - v20;
  v22 = sub_100003ABC(&qword_10060FF28, &qword_1004E3920);
  v85 = *(v22 - 8);
  v86 = v22;
  __chkstk_darwin();
  v81 = &v81 - v23;
  v82 = sub_100003ABC(&qword_10060FF30, &qword_1004E3928) - 8;
  __chkstk_darwin();
  v25 = &v81 - v24;
  v88 = sub_100003ABC(&qword_10060FF38, &qword_1004E3930);
  __chkstk_darwin();
  v108 = &v81 - v26;
  v90 = sub_100003ABC(&qword_10060FF40, &qword_1004E3938);
  __chkstk_darwin();
  v93 = &v81 - v27;
  v92 = sub_100003ABC(&qword_10060FF48, &qword_1004E3940);
  __chkstk_darwin();
  v95 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v29;
  __chkstk_darwin();
  v94 = &v81 - v30;
  sub_1004B96D4();
  if (sub_1004B96E4())
  {
    v31 = 0.92;
  }

  else
  {
    v31 = 1.0;
  }

  sub_1004BA8B4();
  v33 = v32;
  v35 = v34;
  (*(v16 + 32))(v21, v18, v15);
  v36 = &v21[*(v19 + 36)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  sub_1004B9214();
  sub_100380004();
  sub_100380378(&qword_10060FF60, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v37 = v81;
  v38 = v83;
  sub_1004B9DF4();
  v39 = a1;
  (*(v84 + 8))(v14, v38);
  sub_100007214(v21, &qword_10060FF20, &qword_1004E3918);
  type metadata accessor for MaterialyButtonStyle(0);
  sub_100003ABC(&qword_10060C1D0, &qword_1004DEAF8);
  sub_1004B8924();
  sub_1004B9A74();
  v40 = sub_1004B9A64();
  v41 = v89;
  (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
  v42 = sub_1004B9AB4();
  sub_100007214(v41, &qword_10060DF60, &qword_1004DFD10);
  KeyPath = swift_getKeyPath();
  (*(v85 + 32))(v25, v37, v86);
  v44 = v25;
  v45 = &v25[*(v82 + 44)];
  *v45 = KeyPath;
  v45[1] = v42;
  v89 = v39;
  LOBYTE(v86) = sub_1004B96E4() & 1;
  LODWORD(v86) = v86;
  sub_1004B8924();
  sub_1004B8924();
  sub_1004BA754();
  sub_1004B8E94();
  *(&v109[3] + 7) = *(&v109[10] + 8);
  *(&v109[4] + 7) = *(&v109[11] + 8);
  *(&v109[5] + 7) = *(&v109[12] + 8);
  *(&v109[6] + 7) = *(&v109[13] + 8);
  *(v109 + 7) = *(&v109[7] + 8);
  *(&v109[1] + 7) = *(&v109[8] + 8);
  *(&v109[2] + 7) = *(&v109[9] + 8);
  v46 = sub_1004BA754();
  v48 = v47;
  v49 = v108;
  sub_100025B04(v44, v108, &qword_10060FF30, &qword_1004E3928);
  v50 = v49 + *(v88 + 36);
  v51 = v109[5];
  *(v50 + 65) = v109[4];
  *(v50 + 81) = v51;
  *(v50 + 97) = v109[6];
  v52 = v109[1];
  *(v50 + 1) = v109[0];
  *(v50 + 17) = v52;
  v53 = v109[3];
  *(v50 + 33) = v109[2];
  *v50 = v86;
  v54 = *(&v109[6] + 15);
  *(v50 + 49) = v53;
  *(v50 + 112) = v54;
  *(v50 + 120) = v46;
  *(v50 + 128) = v48;
  sub_1004B8924();
  sub_1004B8924();
  sub_1004BA754();
  sub_1004B8E94();
  v55 = v93;
  sub_100025B04(v108, v93, &qword_10060FF38, &qword_1004E3930);
  v56 = (v55 + *(v90 + 36));
  v57 = *(&v109[19] + 8);
  v56[4] = *(&v109[18] + 8);
  v56[5] = v57;
  v56[6] = *(&v109[20] + 8);
  v58 = *(&v109[15] + 8);
  *v56 = *(&v109[14] + 8);
  v56[1] = v58;
  v59 = *(&v109[17] + 8);
  v56[2] = *(&v109[16] + 8);
  v56[3] = v59;
  v60 = sub_1004BA7A4();
  LOBYTE(v46) = sub_1004B96E4();
  v61 = v91;
  sub_100025B04(v55, v91, &qword_10060FF40, &qword_1004E3938);
  v62 = v61 + *(v92 + 36);
  *v62 = v60;
  *(v62 + 8) = v46 & 1;
  v63 = v94;
  sub_100025B04(v61, v94, &qword_10060FF48, &qword_1004E3940);
  v64 = v98;
  sub_1004B96D4();
  v65 = swift_getKeyPath();
  v66 = v64 + *(v97 + 36);
  *v66 = v65;
  *(v66 + 8) = 1;
  v67 = v102;
  sub_1004B9394();
  sub_100380290();
  sub_100380378(&qword_10060FF80, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  v68 = v101;
  v69 = v105;
  sub_1004B9DF4();
  (*(v103 + 8))(v67, v69);
  sub_100007214(v64, &qword_10060FF08, &qword_1004E38F8);
  v70 = sub_1004B9B24();
  v71 = swift_getKeyPath();
  v72 = (v68 + *(v99 + 36));
  *v72 = v71;
  v72[1] = v70;
  if (sub_1004B96E4())
  {
    v73 = 0.8;
  }

  else
  {
    v73 = 1.0;
  }

  v74 = v96;
  sub_100025B04(v68, v96, &qword_10060FF10, &qword_1004E3900);
  *(v74 + *(v100 + 36)) = v73;
  v75 = v104;
  sub_100025B04(v74, v104, &qword_10060FF18, &unk_1004E3908);
  v76 = v95;
  sub_10000F778(v63, v95, &qword_10060FF48, &qword_1004E3940);
  v77 = v106;
  sub_10000F778(v75, v106, &qword_10060FF18, &unk_1004E3908);
  v78 = v107;
  sub_10000F778(v76, v107, &qword_10060FF48, &qword_1004E3940);
  v79 = sub_100003ABC(&qword_10060FF88, &unk_1004E39B0);
  sub_10000F778(v77, v78 + *(v79 + 48), &qword_10060FF18, &unk_1004E3908);
  sub_100007214(v75, &qword_10060FF18, &unk_1004E3908);
  sub_100007214(v63, &qword_10060FF48, &qword_1004E3940);
  sub_100007214(v77, &qword_10060FF18, &unk_1004E3908);
  return sub_100007214(v76, &qword_10060FF48, &qword_1004E3940);
}

uint64_t sub_10037EA08()
{
  v1 = sub_1004B9184();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = sub_1004BC994();
    v7 = sub_1004B9904();
    sub_1004B7F84(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();
    v8 = sub_10034C67C(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v5) = v10[15];
  }

  return v5 & 1;
}

uint64_t sub_10037EBB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10037EC40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_10037EDC4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_10037F01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060C1D0, &qword_1004DEAF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10037F0E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060C1D0, &qword_1004DEAF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10037F190(uint64_t a1)
{
  sub_10037FD5C(319, &qword_10060DBF0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10037F238(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10037F238(uint64_t a1)
{
  if (!qword_10060C258)
  {
    sub_100305B50();
    v1 = sub_1004B8934();
    if (!v2)
    {
      atomic_store(v1, &qword_10060C258);
    }
  }
}

uint64_t sub_10037F294(uint64_t *a1)
{
  sub_1004B87A4();
  sub_1004B8E84();
  sub_1004B8D64();
  sub_1004B87A4();
  sub_1004BD174();
  sub_1004B8DB4();
  sub_1004B8D64();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1004B8884();
  sub_1004B8D64();
  sub_1004B8D64();
  sub_100003B68(&qword_10060FB20, &qword_1004E36F0);
  sub_1000206D4(&qword_10060FB28, &qword_10060FB20, &qword_1004E36F0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004B87A4();
  sub_1004B87A4();
  sub_1004B8D64();
  swift_getTupleTypeMetadata2();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  sub_1004B8D64();
  sub_1004B8D64();
  swift_getTupleTypeMetadata3();
  sub_1004BA844();
  swift_getWitnessTable();
  sub_1004BA584();
  swift_getWitnessTable();
  sub_1004B8EA4();
  sub_1004B8D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004B8DB4();
  return swift_getWitnessTable();
}

unint64_t sub_10037F698()
{
  result = qword_10060FCE0;
  if (!qword_10060FCE0)
  {
    sub_100003B68(qword_10060FB40, &qword_1004E3738);
    sub_1000206D4(&qword_10060FCE8, &qword_10060FB30, &qword_1004E3728, &protocol conformance descriptor for VStack<A>);
    sub_1000206D4(&qword_10060FCF0, qword_10060FCF8, &qword_1004E3858, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060FCE0);
  }

  return result;
}

uint64_t sub_10037F77C(uint64_t a1)
{
  result = sub_1004BA7E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10037F80C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1004BA7E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10037F8CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004BA7E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10037F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke(319, v4, v5, v6);
    if (v8 <= 0x3F)
    {
      sub_10037FD5C(319, qword_10060FE00, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v10 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow(319, v4, v5, v9);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10037FA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 36) + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v7, v8, v10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 44);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10037FBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v8, v9, a4);
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v8, v9, v11);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_10037FD5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10037FDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10037FDF0(uint64_t a1)
{
  type metadata accessor for UIOffset(319);
  if (v1 <= 0x3F)
  {
    sub_1004BA7E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10037FEA0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1004BA7E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_10037FF60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004BA7E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100380004()
{
  result = qword_10060FF50;
  if (!qword_10060FF50)
  {
    sub_100003B68(&qword_10060FF20, &qword_1004E3918);
    sub_100380378(&qword_10060FF58, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060FF50);
  }

  return result;
}

uint64_t sub_1003800C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin();
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin();
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v15 + 16))(v17, a1, a5);

  return sub_10037D368(v20, v17, a2, v27, v24, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t sub_100380290()
{
  result = qword_10060FF68;
  if (!qword_10060FF68)
  {
    sub_100003B68(&qword_10060FF08, &qword_1004E38F8);
    sub_100380378(&qword_10060FF58, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_1000206D4(&qword_10060FF70, &qword_10060FF78, &qword_1004E39A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060FF68);
  }

  return result;
}

uint64_t sub_100380378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_100384484(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  sub_1002ABE24(&v27, v50);
  sub_1002ABE80(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  sub_1002ABE24(&v44, v26);
  sub_1002ABE80(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&sub_100383F00()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&sub_100384288()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_100384484(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  sub_1002ABE24(&v50, v85);
  sub_1002ABE80(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  sub_1002ABE24(&v67, v85);
  sub_1002ABE80(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = (v25 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v27 = v26[1];
  v84[0] = *v26;
  v84[1] = v27;
  v28 = v26[2];
  v29 = v26[3];
  v30 = v26[5];
  v84[4] = v26[4];
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  v26[4] = a1[4];
  v26[5] = v31;
  v26[2] = v33;
  v26[3] = v32;
  v34 = a1[1];
  *v26 = *a1;
  v26[1] = v34;
  v35 = v25;
  sub_1002ABE24(a1, v85);
  sub_1002ABE80(v84);
  v36 = (v35 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v37 = v36[1];
  v85[0] = *v36;
  v85[1] = v37;
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[5];
  v85[4] = v36[4];
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  v36[4] = a2[4];
  v36[5] = v41;
  v36[2] = v43;
  v36[3] = v42;
  v44 = a2[1];
  *v36 = *a2;
  v36[1] = v44;
  sub_1002ABE24(a2, &v48);
  sub_1002ABE80(v85);
  v45 = *&sub_100383F00()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&sub_100384288()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  sub_1002ABE80(a2);
  sub_1002ABE80(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_10060FFC0, &qword_1004E39C0);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0) - 8;
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100384484(a1, v10, type metadata accessor for NowPlaying.TrackMetadata);
  v11 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_100384420(v10, v2 + v11);
  swift_endAccess();
  v12 = sub_100383F00();
  sub_100384484(a1 + *(v8 + 32), v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000F778(&v12[v14], v5, &qword_10060FFC0, &qword_1004E39C0);
  swift_beginAccess();
  sub_1003844EC(v7, &v12[v14]);
  swift_endAccess();
  sub_100388CA0(v5);

  sub_100007214(v5, &qword_10060FFC0, &qword_1004E39C0);
  sub_100007214(v7, &qword_10060FFC0, &qword_1004E39C0);
  v15 = sub_100384288();
  sub_10000F778(a1 + *(v8 + 36), v7, &qword_10060FFC0, &qword_1004E39C0);
  v16 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000F778(&v15[v16], v5, &qword_10060FFC0, &qword_1004E39C0);
  swift_beginAccess();
  sub_1003844EC(v7, &v15[v16]);
  swift_endAccess();
  sub_100388CA0(v5);

  sub_100007214(v5, &qword_10060FFC0, &qword_1004E39C0);
  return sub_100007214(v7, &qword_10060FFC0, &qword_1004E39C0);
}

uint64_t sub_100380E54(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100384484(a1, v5, type metadata accessor for NowPlaying.TrackMetadata);
  v6 = *a2;
  v7 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_100384420(v5, v6 + v7);
  return swift_endAccess();
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_100384484(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  sub_1002ABE24(&v16, v14);
  sub_1002ABE80(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id sub_1003811B0()
{
  sub_100003ABC(&qword_10060FFD0, &qword_1004E39C8);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_10038C460(&qword_10060FFC8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(&v75, v2, v5, v6);

    if (v75)
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_10038B4EC(v75, v76);

      sub_10038A868(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004BD484();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004BD6A4();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002ABE24(&v69, v68);
          sub_1002ABE24(&v69, v68);
          sub_1002ABE24(v84, v68);
          sub_1002ABE80(&v78);
          sub_100387EDC(v84);
          sub_1002ABE80(v84);
          sub_1002ABE80(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_100007214(v35, &qword_10060FFD0, &qword_1004E39C8);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_100007214(v39, &qword_10060FFD0, &qword_1004E39C8);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_100383F00();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002ABE24(v68, v67);
  sub_1002ABE24(v68, v67);
  sub_1002ABE24(&v78, v67);
  sub_1002ABE80(&v69);
  sub_100387EDC(&v78);
  sub_1002ABE80(&v78);
  sub_1002ABE80(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_100386D8C(v56, v67);

  return [v40 setNeedsLayout];
}

uint64_t (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100381820;
}

id sub_100381838()
{
  sub_100003ABC(&qword_10060FFD0, &qword_1004E39C8);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_10038C460(&qword_10060FFC8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(v75, v2, v5, v6);

    if (v75[0])
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_10038B5F8(v75[1], v76, v77);

      sub_10038A868(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004BD484();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004BD6A4();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002ABE24(&v69, v68);
          sub_1002ABE24(&v69, v68);
          sub_1002ABE24(v84, v68);
          sub_1002ABE80(&v78);
          sub_100387EDC(v84);
          sub_1002ABE80(v84);
          sub_1002ABE80(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_100007214(v35, &qword_10060FFD0, &qword_1004E39C8);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_100007214(v39, &qword_10060FFD0, &qword_1004E39C8);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_100384288();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002ABE24(v68, v67);
  sub_1002ABE24(v68, v67);
  sub_1002ABE24(&v78, v67);
  sub_1002ABE80(&v69);
  sub_100387EDC(&v78);
  sub_1002ABE80(&v78);
  sub_1002ABE80(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_100386D8C(v56, v67);

  return [v40 setNeedsLayout];
}