unint64_t sub_9B350(uint64_t a1)
{
  *(a1 + 8) = sub_9B380();
  result = sub_9B3D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_9B380()
{
  result = qword_19E718;
  if (!qword_19E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E718);
  }

  return result;
}

unint64_t sub_9B3D4()
{
  result = qword_19E720;
  if (!qword_19E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E720);
  }

  return result;
}

uint64_t sub_9B454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9B494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double FullSheetOverlayFooterLayoutPortrait.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_13A514();
  v6 = sub_5A838(v5, &v50);
  __chkstk_darwin(v6);
  sub_9EC0();
  sub_2159C(v8 - v7);
  v9 = sub_13A4C4();
  v10 = sub_5A838(v9, &v51);
  v45 = v11;
  __chkstk_darwin(v10);
  sub_9EC0();
  v14 = v13 - v12;
  v15 = sub_13A454();
  v16 = sub_5A838(v15, v48);
  v44 = v17;
  __chkstk_darwin(v16);
  sub_9EC0();
  v20 = v19 - v18;
  v21 = sub_13A4B4();
  sub_9C88C();
  __chkstk_darwin(v22);
  sub_9EC0();
  v25 = v24 - v23;
  sub_4948(&qword_19AFE8, &unk_140260);
  sub_9C88C();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v49[0] = v26;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  sub_6627C(v4, v4[3]);
  sub_13A3F4();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(sub_9C868() + 16) = xmmword_13E660;
  sub_4B14((v4 + 10), v49);
  (*(v44 + 104))(v20);
  sub_9C898(v45 + 104);
  v27();
  sub_13A4E4();
  v43 = *(v45 + 8);
  v43(v14);
  v42 = *(v44 + 8);
  v42(v20);
  sub_1D2CC(v49);
  sub_4B14((v4 + 34), v49);
  sub_6627C(v4 + 24, v4[27]);
  if (sub_13A324())
  {
    v28 = (v4 + 10);
  }

  else
  {
    v28 = (v4 + 15);
  }

  sub_4B14(v28, v47);
  sub_6627C(v4 + 39, v4[42]);
  if (sub_13A324())
  {
    sub_4B14((v4 + 5), v46);
  }

  else
  {
    sub_1398D4();
    v46[3] = &type metadata for CGFloat;
    v46[4] = &protocol witness table for CGFloat;
    v46[0] = v29;
  }

  v30 = sub_9C810();
  v31(v30);
  sub_9C7FC();
  v32();
  sub_13A4E4();
  v43(v14);
  v42(v20);
  sub_3C04(v47);
  sub_3C04(v49);
  sub_1D2CC(v46);
  v49[3] = &type metadata for Double;
  v49[4] = &protocol witness table for Double;
  v49[0] = 0;
  sub_1398D4();
  v48[0] = &type metadata for CGFloat;
  v48[1] = &protocol witness table for CGFloat;
  v47[0] = v33;
  v34 = sub_9C810();
  v35(v34);
  sub_9C7FC();
  v36();
  sub_13A4E4();
  v43(v14);
  v42(v20);
  sub_1D2CC(v47);
  sub_3C04(v49);
  sub_13A4D4();
  sub_13A464();
  v38 = v37;
  sub_40750();
  v39();
  sub_40750();
  v40(v25, v21);
  return v38;
}

uint64_t FullSheetOverlayFooterLayoutPortrait.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_13A314();
  v6 = sub_5A838(v5, &v54);
  __chkstk_darwin(v6);
  sub_9EC0();
  sub_2159C(v8 - v7);
  v9 = sub_13A514();
  v10 = sub_5A838(v9, &v52);
  __chkstk_darwin(v10);
  sub_9EC0();
  sub_2159C(v12 - v11);
  v13 = sub_13A4C4();
  v14 = sub_5A838(v13, &v55);
  v16 = v15;
  __chkstk_darwin(v14);
  sub_9EC0();
  sub_2159C(v18 - v17);
  v19 = sub_13A454();
  v20 = sub_5A838(v19, v50);
  v48 = v21;
  __chkstk_darwin(v20);
  sub_9EC0();
  v24 = v23 - v22;
  v25 = sub_13A4B4();
  sub_9C88C();
  __chkstk_darwin(v26);
  sub_9EC0();
  v29 = v28 - v27;
  sub_4948(&qword_19AFE8, &unk_140260);
  sub_9C88C();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v51 = v30;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  sub_6627C(v4, v4[3]);
  sub_13A3F4();
  v56.origin.x = sub_3001C();
  CGRectGetWidth(v56);
  sub_1398D4();
  sub_1398D4();
  v57.origin.x = sub_3001C();
  CGRectGetHeight(v57);
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(sub_9C868() + 16) = xmmword_13E660;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_9C898((v48 + 13));
  v31();
  (*(v16 + 104))();
  sub_13A4E4();
  (*(v16 + 8))();
  v47 = *++v48;
  (*v48)(v24);
  sub_1D2CC(&v51);
  sub_4B14((v4 + 34), &v51);
  sub_6627C(v4 + 24, v4[27]);
  if (sub_13A324())
  {
    v32 = (v4 + 10);
  }

  else
  {
    v32 = (v4 + 15);
  }

  sub_4B14(v32, v50);
  sub_6627C(v4 + 39, v4[42]);
  if (sub_13A324())
  {
    sub_4B14((v4 + 5), v49);
  }

  else
  {
    sub_1398D4();
    v49[3] = &type metadata for CGFloat;
    v49[4] = &protocol witness table for CGFloat;
    v49[0] = v33;
  }

  sub_9C7FC();
  v34();
  sub_9C850();
  v35();
  sub_13A4E4();
  v36 = sub_9C834();
  v37(v36);
  v47(v24);
  sub_3C04(v50);
  sub_3C04(&v51);
  sub_1D2CC(v49);
  *(&v52 + 1) = &type metadata for Double;
  v53 = &protocol witness table for Double;
  *&v51 = 0;
  sub_1398D4();
  v50[3] = &type metadata for CGFloat;
  v50[4] = &protocol witness table for CGFloat;
  v50[0] = v38;
  sub_9C7FC();
  v39();
  sub_9C850();
  v40();
  sub_13A4E4();
  v41 = sub_9C834();
  v42(v41);
  v47(v24);
  sub_1D2CC(v50);
  sub_3C04(&v51);
  sub_13A4D4();
  sub_13A474();
  v58.origin.x = sub_3001C();
  CGRectGetMaxY(v58);
  sub_13A2D4();
  sub_162F0(v4 + 29, v4[32]);
  v59.origin.x = sub_3001C();
  CGRectGetMidX(v59);
  sub_13A2D4();
  sub_13A2D4();
  sub_13A2D4();
  sub_13A354();
  sub_6627C(v4 + 29, v4[32]);
  sub_13A344();
  sub_13A2B4();
  sub_40750();
  v43();
  sub_40750();
  v44();
  sub_40750();
  return v45(v29, v25);
}

unint64_t sub_9C70C(uint64_t a1)
{
  *(a1 + 8) = sub_9C73C();
  result = sub_9C790();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_9C73C()
{
  result = qword_19E728;
  if (!qword_19E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E728);
  }

  return result;
}

unint64_t sub_9C790()
{
  result = qword_19E730;
  if (!qword_19E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E730);
  }

  return result;
}

uint64_t sub_9C868()
{
  *(v1 - 256) = v2;

  return swift_allocObject();
}

uint64_t FullSheetOverlayLockupLayout.init(metrics:badgeView:contentView:headlineView:subtitleView:textView:titleView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(a8, __src, 0xC8uLL);
  sub_9414(a2, a8 + 240);
  v15 = *(a3 + 16);
  *(a8 + 200) = *a3;
  *(a8 + 216) = v15;
  *(a8 + 232) = *(a3 + 32);
  sub_9414(a6, a8 + 360);
  sub_9414(a4, a8 + 280);
  sub_9414(a5, a8 + 320);

  return sub_9414(a7, a8 + 400);
}

void FullSheetOverlayLockupLayout.Metrics.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t FullSheetOverlayLockupLayout.Metrics.headlineBottomSpace.setter(__int128 *a1)
{
  sub_3C04((v1 + 72));

  return sub_9414(a1, v1 + 72);
}

uint64_t FullSheetOverlayLockupLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_13A314();
  v13 = sub_5A838(v12, &v77);
  v60 = v14;
  __chkstk_darwin(v13);
  sub_9EC0();
  sub_2159C(v16 - v15);
  v17 = sub_13A514();
  v18 = sub_5A838(v17, &v75 + 8);
  v59 = v19;
  __chkstk_darwin(v18);
  sub_9EC0();
  sub_2159C(v21 - v20);
  v22 = sub_13A4C4();
  v23 = sub_5A838(v22, &v78);
  v65 = v24;
  __chkstk_darwin(v23);
  sub_9EC0();
  sub_2159C(v26 - v25);
  v27 = sub_13A454();
  v28 = sub_5A838(v27, v71);
  v67 = v29;
  __chkstk_darwin(v28);
  sub_9EC0();
  v32 = v31 - v30;
  v33 = sub_13A4B4();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  sub_9EC0();
  v66 = v36 - v35;
  v79.origin.x = a2;
  v79.origin.y = a3;
  v79.size.width = a4;
  v79.size.height = a5;
  CGRectGetWidth(v79);
  sub_1398D4();
  sub_1398D4();
  v80.origin.x = sub_9D798();
  CGRectGetHeight(v80);
  sub_1398D4();
  sub_1398D4();
  sub_4948(&qword_19AFE8, &unk_140260);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v74 = v37;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v58 = v33;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_140290;
  sub_4B14(v6, &v74);
  v64 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v63 = *(v67 + 104);
  v63(v32);
  v62 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v61 = *(v65 + 104);
  v61();
  sub_13A4E4();
  v38 = *(v65 + 8);
  v38();
  v39 = *(v67 + 8);
  v39(v32);
  sub_1D2CC(&v74);
  sub_4B14(v6 + 72, &v74);
  (v63)(v32, v64);
  (v61)(v56, v62);
  sub_13A4E4();
  v38();
  v39(v32);
  sub_1D2CC(&v74);
  sub_4B14(v6 + 400, &v74);
  sub_162F0((v6 + 240), *(v6 + 264));
  v57 = v6;
  if (sub_13A324() & 1) != 0 || (sub_162F0((v6 + 280), *(v6 + 304)), (sub_13A324()))
  {
    v72 = &type metadata for Double;
    v73 = &protocol witness table for Double;
    v70 = 0;
  }

  else
  {
    sub_4B14(v6 + 160, &v70);
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v40 = sub_9D7AC();
  v41(v40);
  (v61)(v56, v62);
  sub_13A4E4();
  v38();
  v39(v32);
  sub_1D2CC(v68);
  sub_3C04(&v74);
  sub_3C04(&v70);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v42 = sub_9D7AC();
  v43(v42);
  (v61)(v56, v62);
  sub_13A4E4();
  v38();
  v39(v32);
  sub_1D2CC(&v74);
  sub_13A4D4();
  sub_9D7D0();
  sub_13A474();
  v44 = [a1 traitCollection];
  v45 = sub_127E5C();

  if (v45)
  {
    v46 = [a1 traitCollection];
    v47 = sub_13BDD4();

    v48 = sub_9D798();
    if (v47)
    {
      CGRectGetMaxX(*&v48);
      sub_13A2D4();
    }

    else
    {
      CGRectGetMinX(*&v48);
    }

    sub_1398D4();
    v53 = (v6 + 360);
    v54 = (v6 + 384);
    sub_162F0((v57 + 360), *(v57 + 384));
    v82.origin.x = sub_9D798();
    CGRectGetMinY(v82);
    sub_1398D4();
    sub_13A2D4();
    sub_13A2D4();
  }

  else
  {
    v52 = *(v6 + 112);
    v53 = (v6 + 360);
    v54 = (v6 + 384);
    sub_162F0((v57 + 360), *(v57 + 384));
    v81.origin.x = sub_9D798();
    CGRectGetMidX(v81);
    sub_13A2D4();
    if (v52 == 1)
    {
      sub_13A304();
      sub_1398D4();
    }

    else
    {
      v83.origin.x = sub_9D7D0();
      CGRectGetMaxY(v83);
      sub_13A2D4();
    }

    sub_13A2D4();
    sub_13A2D4();
  }

  sub_13A354();
  sub_162F0(v53, *v54);
  sub_13A344();
  sub_13A2B4();
  (*(v60 + 8))();
  (*(v59 + 8))();
  return (*(v34 + 8))(v66, v58);
}

uint64_t sub_9D5D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 440))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9D610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9D6D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9D718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9D7F0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1845C8;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_9D844(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184618;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9D890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9D7F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_9D8C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9D844(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_9D8F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v64 = a3;
  v4 = sub_13B584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = v63 - v8;
  __chkstk_darwin(v9);
  v67 = (v63 - v10);
  __chkstk_darwin(v11);
  v13 = v63 - v12;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v69 = swift_initStackObject();
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_4;
  }

  v70 = a1;
  v68 = v4;
  v15 = v71;
  sub_139BC4();
  if (v15)
  {

    sub_9E588();
    sub_184DC(&v72, &unk_19E320, &unk_140950);
    v4 = v68;
    a1 = v70;
LABEL_4:
    sub_13BAB4();
    v16 = sub_677B8();
    sub_9F18(v16);
    *v17 = 0x6E6F69746361;
    v17[1] = 0xE600000000000000;
    v17[2] = &unk_189E68;
    sub_9EF8();
    (*(v18 + 104))();
    swift_willThrow();
    v19 = *(v5 + 8);
    v19(a1, v4);
    v19(v13, v4);
    sub_13B5A4();
    sub_5224();
    (*(v20 + 8))(v85);
    return;
  }

  v63[1] = inited;
  v71 = *(v5 + 8);
  v71(v13, v68);
  sub_9E5AC();
  v21 = sub_9414(&v73, v76);
  __chkstk_darwin(v21);
  sub_5BD04();
  v23 = sub_9DB8(0x726F6C6F63, 0xE500000000000000, &unk_189E68, sub_51298, v22);
  v24 = v67;
  v67 = v23;
  v76[5] = v23;
  sub_13B594();
  v25 = sub_13B564();
  v26 = v24;
  v27 = v68;
  if (v25)
  {
    sub_13BAB4();
    v28 = sub_677B8();
    sub_9F18(v28);
    *v29 = 0x6D69616C63736964;
    v29[1] = 0xEA00000000007265;
    v29[2] = &unk_189E68;
    sub_9EF8();
    (*(v30 + 104))();
    swift_willThrow();
    v31 = sub_9E598();
    v26(v31);

    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    sub_139DB4();
    v41 = sub_9E598();
    v26(v41);
    sub_9E5AC();
  }

  v77[0] = v73;
  v77[1] = v74;
  v78 = v75;
  sub_7118(1684957547, 0xE400000000000000, &unk_189E68, v42, v43, v44, v45, v46);
  v79 = v32 & 1;
  __chkstk_darwin(v32);
  sub_5BD04();
  v63[0] = 0;
  v34 = sub_9DB8(0x70616373646E616CLL, 0xEE00726F6C6F4365, &unk_189E68, sub_519C4, v33);
  v35 = v66;
  v80 = v34;
  sub_714C(0x656C797473, 0xE500000000000000, &unk_189E68, v36, v37, v38, v39, v40);
  v81 = v47;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v48 = sub_677B8();
    sub_9F18(v48);
    *v49 = 0x656C746974627573;
    v49[1] = 0xE800000000000000;
    v49[2] = &unk_189E68;
    sub_9EF8();
    (*(v50 + 104))();
    swift_willThrow();
    v71(v35, v27);

    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    sub_139DB4();
    v71(v35, v27);
    sub_9E5AC();
  }

  v82[0] = v73;
  v82[1] = v74;
  v83 = v75;
  v51 = v65;
  v52 = v70;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v54 = sub_677B8();
    sub_9F18(v54);
    *v55 = 0x656C746974;
    v55[1] = 0xE500000000000000;
    v55[2] = &unk_189E68;
    sub_9EF8();
    (*(v56 + 104))();
    swift_willThrow();

    v57 = v71;
    v71(v52, v27);
    v57(v51, v27);
    v58 = v63[0];
    sub_13B5A4();
    sub_5224();
    (*(v59 + 8))(v85);
    sub_3C04(v76);

    sub_184DC(v77, &qword_19E960, &qword_13FD30);
    if (!v58)
    {
    }

    sub_184DC(v82, &qword_19E960, &qword_13FD30);
  }

  else
  {
    v53 = v85;
    sub_139DB4();
    v60 = v71;
    v61 = v68;
    v71(v70, v68);
    v60(v51, v61);
    sub_9E5AC();
    sub_9414(&v73, &v84);
    sub_9E270(v76, v64);
    sub_13B5A4();
    sub_5224();
    (*(v62 + 8))(v53);
    sub_9E2A8(v76);
  }
}

_BYTE *sub_9E2D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9E3A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_9E3D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9E4A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_9E4DC()
{
  result = qword_19E738;
  if (!qword_19E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E738);
  }

  return result;
}

unint64_t sub_9E534()
{
  result = qword_19E740;
  if (!qword_19E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E740);
  }

  return result;
}

double sub_9E588()
{
  *(v0 + 112) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

uint64_t sub_9E5AC()
{

  return sub_9414((v0 + 80), v0 + 128);
}

__n128 sub_9E5C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_9E5D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 28))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9E62C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_9E694(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184680;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_9E6E0(char a1)
{
  if (!a1)
  {
    return 1802658148;
  }

  if (a1 == 1)
  {
    return 0x746867696CLL;
  }

  return 0x65766974616ELL;
}

unint64_t sub_9E74C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_9E694(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_9E77C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_9E6E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_9E7A8(uint64_t a1, uint64_t a2)
{
  sub_139B64();
  swift_allocObject();
  sub_7180(0x6E61726165707061, 0xEA00000000006563, &_s11descr183531C7OptionsVN, v5, v6, v7, v8, v9);
  if (v2)
  {

    v11 = 2;
  }

  else
  {
    v11 = v10;
  }

  __chkstk_darwin(v10);
  sub_9EE30();
  v13 = sub_9DB8(0x756F72676B636162, 0xEF726F6C6F43646ELL, &_s11descr183531C7OptionsVN, sub_9EE2C, v12);
  __chkstk_darwin(v13);
  sub_9EE30();
  v21 = sub_9DB8(0x746E656964617267, 0xED0000726F6C6F43, &_s11descr183531C7OptionsVN, sub_9ECB4, v14);
  sub_BB458();
  sub_BB458();
  sub_BB458();
  sub_BB458();
  sub_13B584();
  sub_5224();
  (*(v16 + 8))(a1);

  v17 = sub_13B5A4();
  v18 = *(*(v17 - 8) + 8);
  v20 = v13;
  v19 = v21;
  v18(a2, v17);

  return v11;
}

uint64_t sub_9EBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(*a2 + 88))(a1, a3);
  *a4 = result;
  return result;
}

uint64_t sub_9EC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_9E7A8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8 & 1;
    *(a3 + 25) = BYTE1(v8) & 1;
    *(a3 + 26) = BYTE2(v8) & 1;
    *(a3 + 27) = HIBYTE(v8) & 1;
  }

  return result;
}

_BYTE *_s11descr183531C7OptionsV10AppearanceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9ED9CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_9EDD8()
{
  result = qword_19E748;
  if (!qword_19E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E748);
  }

  return result;
}

uint64_t sub_9EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 240);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_9EEF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 240) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FullSheetOverlayPageDestination(uint64_t a1)
{
  result = qword_19E7A8;
  if (!qword_19E7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_9EFC0(uint64_t a1)
{
  sub_9F154(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_248F4(319, &qword_19E7B8, &unk_19E7C0, qword_1471B0);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_248F4(319, &qword_19B250, &unk_19B258, &unk_14C220);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            v2 = sub_18A28();
            if (v12 <= 0x3F)
            {
              v2 = sub_13B5D4();
              if (v13 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_9F154(uint64_t a1)
{
  if (!qword_19B6F8)
  {
    sub_139C94();
    v1 = sub_13BF44();
    if (!v2)
    {
      atomic_store(v1, &qword_19B6F8);
    }
  }
}

uint64_t sub_9F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v149 = a3;
  v6 = sub_4948(&qword_19A498, &unk_147A80);
  __chkstk_darwin(v6 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v7);
  sub_2159C(&v142 - v8);
  v148 = sub_13B5D4();
  sub_9E94();
  v147 = v9;
  __chkstk_darwin(v10);
  sub_9EC0();
  sub_2159C(v12 - v11);
  v13 = sub_13B5A4();
  sub_9E94();
  v161 = v14;
  __chkstk_darwin(v15);
  sub_9EC0();
  v153 = v17 - v16;
  v18 = sub_4948(&qword_19B2B0, &qword_147230);
  __chkstk_darwin(v18 - 8);
  sub_2159C(&v142 - v19);
  v168 = sub_13B584();
  sub_9E94();
  v167 = v20;
  __chkstk_darwin(v21);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v22);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v24);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v25);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v26);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v27);
  v29 = &v142 - v28;
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v32 = type metadata accessor for FullSheetOverlayPageDestination(0);
  sub_2B538();
  __chkstk_darwin(v33);
  sub_9EC0();
  v36 = v35 - v34;
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v164 = swift_initStackObject();
  v166 = a2;
  v170 = a2;
  v175 = v32;
  v169 = a1;
  v37 = sub_9DD0();
  v38 = v3;
  v162 = v13;
  if (v3)
  {

    v37 = 0;
    v38 = 0;
  }

  v155 = v37;
  *v36 = v37;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_A06A4();
  sub_139DB4();
  if (v38)
  {

    sub_18BAC();
    sub_6BDB4(&v171, &qword_19E960, &qword_13FD30);
LABEL_6:
    sub_13BAB4();
    v39 = sub_677B8();
    v38 = sub_9F18(v39);
    *v40 = 0x6567646162;
    v40[1] = 0xE500000000000000;
    v41 = v175;
    v40[2] = v175;
    sub_9EF8();
    (*(v42 + 104))();
    swift_willThrow();
    v43 = sub_A06DC();
    v44(v43);

    sub_A06C8();
    goto LABEL_7;
  }

  v93 = sub_A06DC();
  v94(v93);
  v45 = sub_249B4();
  v41 = v175;
LABEL_7:
  v46 = v173;
  *(v36 + 56) = v172;
  *(v36 + 72) = v46;
  *(v36 + 88) = v174;
  __chkstk_darwin(v45);
  *(&v142 - 2) = v166;
  v47 = sub_9DB8(0x736E6F74747562, 0xE700000000000000, v41, sub_A05B8, (&v142 - 4));
  v156 = v29;
  if (v38)
  {

    v47 = 0;
    v38 = 0;
  }

  v154 = v47;
  *(v36 + 8) = v47;
  sub_13B594();
  v48 = sub_13B564();
  v49 = v175;
  v50 = v158;
  if (v48)
  {
    sub_13BAB4();
    v51 = sub_677B8();
    v38 = sub_9F18(v51);
    strcpy(v52, "dismissAction");
    *(v52 + 7) = -4864;
    *(v52 + 2) = v49;
    sub_9EF8();
    (*(v53 + 104))();
    swift_willThrow();
    v54 = sub_A0700();
    v55(v54);

    sub_A06C8();
  }

  else
  {
    sub_139BC4();
    v95 = sub_A0700();
    v96(v95);
    sub_249B4();
  }

  v56 = v173;
  *(v36 + 16) = v172;
  *(v36 + 32) = v56;
  *(v36 + 48) = v174;
  v57 = v169;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_15;
  }

  sub_A06A4();
  sub_139DB4();
  if (v38)
  {

    sub_18BAC();
    sub_6BDB4(&v171, &qword_19E960, &qword_13FD30);
LABEL_15:
    sub_13BAB4();
    v58 = sub_677B8();
    sub_9F18(v58);
    *v59 = 0x656E696C64616568;
    v59[1] = 0xE800000000000000;
    sub_A0718(v59, v59);
    sub_9EF8();
    (*(v60 + 104))();
    swift_willThrow();
    sub_A06B8();
    v61 = sub_A073C();
    v38(v61);

    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    goto LABEL_16;
  }

  sub_A06B8();
  v97 = sub_A073C();
  (dword_0)(v97);
  sub_249B4();
LABEL_16:
  v62 = v173;
  *(v36 + 96) = v172;
  *(v36 + 112) = v62;
  *(v36 + 128) = v174;
  sub_13B594();
  v63 = sub_13B564();
  v64 = v157;
  v163 = v36;
  if ((v63 & 1) == 0)
  {
    sub_13B514();
    v65 = sub_13B694();
    if (sub_52E0(v64, 1, v65) == 1)
    {
      sub_6BDB4(v64, &qword_19B2B0, &qword_147230);
      v38 = v165;
    }

    else
    {
      v66 = sub_13B684();
      sub_2B538();
      (*(v67 + 8))(v64, v65);
      v38 = v165;
      if (v66)
      {
        sub_A06B8();
        v68 = v168;
        (v38)(v50, v168);
        goto LABEL_22;
      }
    }
  }

  sub_13BAB4();
  v69 = sub_677B8();
  sub_9F18(v69);
  strcpy(v70, "marketingItem");
  *(v70 + 7) = -4864;
  sub_A0718(v70, v70);
  sub_9EF8();
  (*(v71 + 104))();
  swift_willThrow();
  sub_A06B8();
  v68 = v168;
  (v38)(v50, v168);

  v66 = 0;
LABEL_22:
  v158 = v66;
  *(v163 + 136) = v66;
  v72 = v159;
  sub_13B594();
  v73 = sub_13B564();
  v74 = v175;
  if (v73)
  {
    sub_13BAB4();
    v82 = sub_677B8();
    sub_9F18(v82);
    *v83 = 0x736E6F6974706FLL;
    v83[1] = 0xE700000000000000;
    v83[2] = v74;
    sub_9EF8();
    (*(v84 + 104))();
    swift_willThrow();
    sub_A0750();
    v85 = sub_A0768();
    v86 = v165;
    (v165)(v57, v68, v85);
    v86(v72, v68);
    v87 = 0;
    v88 = v163;
    goto LABEL_25;
  }

  v75 = v167;
  v76 = v152;
  (*(v167 + 16))(v152, v72, v68);
  v77 = v153;
  (*(v161 + 16))(v153, v166, v162);
  v78 = sub_9E7A8(v76, v77);
  v98 = v78;
  v99 = v79;
  v100 = v80;
  v101 = v81;
  sub_2A334();
  v102();
  v88 = v163;
  *(v163 + 144) = v98;
  *(v88 + 152) = v99;
  *(v88 + 160) = v100;
  *(v88 + 168) = v101 & 1;
  *(v88 + 169) = BYTE1(v101) & 1;
  *(v88 + 170) = BYTE2(v101) & 1;
  *(v88 + 171) = HIBYTE(v101) & 1;
  v103 = v150;
  v104 = v169;
  sub_13B594();
  v105 = sub_13B564();
  v167 = v75 + 8;
  if (v105)
  {
    sub_13BAB4();
    v106 = sub_677B8();
    sub_18B70(v106);
    *v107 = 0x656C746974627573;
    v107[1] = 0xE800000000000000;
    sub_A0718(v107, v107);
    sub_2B538();
    v104 = v169;
    (*(v108 + 104))();
    swift_willThrow();
    sub_2A334();
    v109();

    sub_A06C8();
  }

  else
  {
    sub_A06A4();
    sub_139DB4();
    v103 = 0;
    sub_2A334();
    v119();
    sub_249B4();
  }

  v110 = v173;
  *(v88 + 176) = v172;
  *(v88 + 192) = v110;
  *(v88 + 208) = v174;
  v111 = v151;
  sub_13B594();
  v112 = v104;
  if ((sub_13B564() & 1) == 0)
  {
    sub_A06A4();
    sub_139DB4();
    if (v103)
    {

      sub_18BAC();
      sub_6BDB4(&v171, &qword_19E960, &qword_13FD30);
      v112 = v169;
      goto LABEL_36;
    }

    sub_2A334();
    v120();
    sub_249B4();
    sub_9414(&v172, v88 + 216);
    v121 = v144;
    sub_13B594();
    v122 = sub_13B564();
    v123 = v148;
    if ((v122 & 1) == 0)
    {
      v124 = v143;
      sub_A0398(v121, v166, v143);
      if (sub_52E0(v124, 1, v123) != 1)
      {
        sub_A0750();
        v135 = sub_A0768();
        v136 = v168;
        v137 = v165;
        (v165)(v169, v168, v135);
        v137(v121, v136);
        v134 = v147;
        v138 = *(v147 + 32);
        v139 = v146;
        v138(v146, v124, v123);
        sub_53A8(v139, 0, 1, v123);
        v131 = v145;
        v138(v145, v139, v123);
        v133 = v162;
LABEL_44:
        (*(v134 + 32))(v88 + *(v175 + 52), v131, v123);
        sub_A05E4(v88, v149);
        v140 = sub_A0724();
        v141(v140, v133);
        return sub_A0648(v88);
      }

      sub_6BDB4(v124, &qword_19A498, &unk_147A80);
    }

    sub_13BAB4();
    v125 = sub_677B8();
    sub_18B70(v125);
    *v126 = 0x7274654D65676170;
    v126[1] = 0xEB00000000736369;
    sub_A0718(v126, v126);
    sub_2B538();
    (*(v127 + 104))();
    swift_willThrow();
    v128 = v168;
    v129 = v165;
    (v165)(v121, v168);

    v130 = v146;
    sub_53A8(v146, 1, 1, v123);
    v131 = v145;
    sub_13B5C4();
    sub_A0750();
    v132 = sub_A0768();
    v129(v169, v128, v132);
    if (sub_52E0(v130, 1, v123) != 1)
    {
      sub_6BDB4(v130, &qword_19A498, &unk_147A80);
    }

    v133 = v162;
    v134 = v147;
    goto LABEL_44;
  }

LABEL_36:
  sub_13BAB4();
  v113 = sub_677B8();
  sub_9F18(v113);
  *v114 = 0x656C746974;
  v114[1] = 0xE500000000000000;
  sub_A0718(v114, v114);
  sub_9EF8();
  (*(v115 + 104))();
  swift_willThrow();
  sub_A0750();
  v116 = sub_A0768();
  v117 = v168;
  v118 = v165;
  (v165)(v112, v168, v116);
  v118(v111, v117);
  v87 = 1;
LABEL_25:
  v89 = sub_A0724();
  v90(v89, v162);

  sub_6BDB4(v88 + 16, &unk_19E320, &unk_140950);
  sub_6BDB4(v88 + 56, &qword_19E960, &qword_13FD30);
  sub_6BDB4(v88 + 96, &qword_19E960, &qword_13FD30);

  if (v87)
  {
    v92 = *(v88 + 160);

    return sub_6BDB4(v88 + 176, &qword_19E960, &qword_13FD30);
  }

  return result;
}

uint64_t sub_A0398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B5B4();
  v14 = sub_13B5D4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_A05B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_39CB8();
  *a1 = result;
  return result;
}

uint64_t sub_A05E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullSheetOverlayPageDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A0648(uint64_t a1)
{
  v2 = type metadata accessor for FullSheetOverlayPageDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_A06C8()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_A06DC()
{
  result = v0;
  *(v1 - 280) = *(*(v1 - 264) + 8);
  return result;
}

double sub_A0750()
{

  return result;
}

double sub_A0768()
{

  return result;
}

uint64_t sub_A0780()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 55.0;
  if (byte_1B2AF8)
  {
    v0 = 38.0;
  }

  qword_1B2AC0 = *&v0;
  return result;
}

uint64_t sub_A07EC()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_1B2AF8)
  {
    v0 = 14.0;
  }

  qword_1B2AC8 = *&v0;
  return result;
}

uint64_t sub_A0854()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 5.0;
  if (byte_1B2AF8)
  {
    v0 = 14.0;
  }

  qword_1B2AD0 = *&v0;
  return result;
}

uint64_t sub_A08BC()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_1B2AF8)
  {
    v0 = 0.0;
  }

  qword_1B2AD8 = *&v0;
  return result;
}

uint64_t sub_A0924()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 15.0;
  if (byte_1B2AF8)
  {
    v0 = 6.0;
  }

  qword_1B2AE0 = *&v0;
  return result;
}

uint64_t sub_A098C()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 29.0;
  if (byte_1B2AF8)
  {
    v0 = 20.0;
  }

  qword_1B2AE8 = *&v0;
  return result;
}

uint64_t sub_A09F4()
{
  if (qword_19A000 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_1B2AF8)
  {
    v0 = 60.0;
  }

  qword_1B2AF0 = *&v0;
  return result;
}

char *sub_A0A64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___sizeClass] = 8;
  v10 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] = 1;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor] = 0;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_wantsBackgroundArtwork] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur;
  *&v4[v11] = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView;
  *&v4[v12] = [objc_allocWithZone(AMSUICommonView) init];
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer;
  *&v4[v13] = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollPocketInteraction] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___badgeLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___headlineLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel] = 0;
  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButton;
  v15 = type metadata accessor for DynamicButton(0);
  *&v4[v14] = [objc_allocWithZone(v15) init];
  v16 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButtonHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton;
  *&v4[v17] = [objc_allocWithZone(v15) init];
  v18 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonHandler];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColor] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColorLandscape] = 0;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonStyle] = 3;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] = sub_A6988(objc_allocWithZone(UIScrollView));
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_textView] = sub_A6988(objc_allocWithZone(AMSUICommonView));
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView] = sub_A6988(objc_allocWithZone(AMSUICommonView));
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView;
  [*&v21[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] setContentInsetAdjustmentBehavior:2];
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur;
  [*&v21[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v23]];
  [v21 addSubview:*&v21[v24]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView]];
  sub_A0D94();
  sub_A0E38();

  return v21;
}

id sub_A0D94()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView);
  v2 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel, &selRef_ams_secondaryText, &UIFontTextStyleCaption1);
  [v1 addSubview:v2];

  [v1 addSubview:*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButton)];
  v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton);

  return [v1 addSubview:v3];
}

id sub_A0E38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
  v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_textView];
  [v2 addSubview:v3];
  v4 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___badgeLabel, &selRef_ams_primaryText, &UIFontTextStyleFootnote);
  [v3 addSubview:v4];

  v5 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___headlineLabel, sub_A1908);
  [v3 addSubview:v5];

  v6 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
  [v3 addSubview:v6];

  v7 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
  [v3 addSubview:v7];

  v8 = [v1 traitCollection];
  LOBYTE(v3) = sub_13BDE4();

  if (v3)
  {
    [v2 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView]];
  }

  return [v2 setDelegate:v1];
}

void sub_A1000()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___sizeClass) = 8;
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered) = 1;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_wantsBackgroundArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView) = 0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur;
  *(v0 + v2) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView;
  *(v0 + v3) = [objc_allocWithZone(AMSUICommonView) init];
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer;
  *(v0 + v4) = [objc_allocWithZone(CAGradientLayer) init];
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollPocketInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___headlineLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel) = 0;
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButton;
  v6 = type metadata accessor for DynamicButton(0);
  *(v0 + v5) = [objc_allocWithZone(v6) init];
  v7 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton;
  *(v0 + v8) = [objc_allocWithZone(v6) init];
  v9 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColor) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColorLandscape) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonStyle) = 3;
  sub_13C094();
  __break(1u);
}

uint64_t sub_A1208()
{
  result = sub_A122C();
  byte_1B2AF8 = result & 1;
  return result;
}

uint64_t sub_A122C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return _UISolariumFeatureFlagEnabled();
  }
}

uint64_t sub_A132C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___sizeClass;
  v3 = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___sizeClass];
  if (v3 == 8)
  {
    [v1 bounds];
    CGRectGetWidth(v6);
    sub_139D84();
    swift_allocObject();
    v4 = sub_139D74();
    v3 = (*(*v4 + 192))();

    *(v1 + v2) = v3;
  }

  return v3;
}

double sub_A13F0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_127E5C();

  v4 = 0.0;
  if (v3)
  {
    v5 = sub_A132C();
    if ((v5 - 2) >= 3)
    {
      if (v5 != 1)
      {
        return v4;
      }

      v6 = v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] == 0;
      v7 = 90.0;
      v8 = 140.0;
    }

    else
    {
      v6 = v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] == 0;
      v7 = 110.0;
      v8 = 150.0;
    }

    if (v6)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

double sub_A14BC(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_127E5C();

  if (v5 && (![objc_opt_self() deviceIsiPhone] || objc_msgSend(objc_opt_self(), "type") == &dword_0 + 3))
  {
    [v2 safeAreaInsets];
    if (a1 == 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    [v2 bounds];
    CGRectGetWidth(v10);

    sub_B84DC();
  }

  return result;
}

double sub_A159C()
{
  v1 = v0;
  if (qword_19A000 != -1)
  {
    swift_once();
  }

  if (byte_1B2AF8 == 1)
  {
    v2 = [v0 traitCollection];
    v3 = sub_127E5C();

    if (v3)
    {
      v4 = [v1 superview];
      if (v4)
      {
        v5 = v4;
        [v4 directionalLayoutMargins];
        v7 = v6;

        return v7 + 12.0;
      }

      else
      {
        return 17.0;
      }
    }

    else if (![objc_opt_self() deviceIsiPhone] || (v8 = 5.0, objc_msgSend(objc_opt_self(), "type") == &dword_0 + 3))
    {
      if (qword_199FC8 != -1)
      {
        swift_once();
      }

      return *&qword_1B2AC0;
    }
  }

  else
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = 5.0;
    if (v10 != &dword_0 + 1)
    {
      sub_CACC(0, &qword_19E9A0, UIApplication_ptr);
      if (static UIApplication.hasNotch()())
      {
        v11 = [v1 superview];
        if (v11)
        {
          v12 = v11;
          [v11 directionalLayoutMargins];
          v8 = v13;
        }
      }
    }
  }

  return v8;
}

id sub_A179C()
{
  result = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView);
  if (result)
  {
    return [result setAccessibilityElementsHidden:1];
  }

  return result;
}

void sub_A17C0(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_A179C();
}

id sub_A1844(uint64_t *a1, SEL *a2, void **a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_A1A08(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_A18A8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_A1908()
{
  sub_139BB4();
  v0 = [objc_opt_self() ams_primaryText];
  v1 = [v0 colorWithAlphaComponent:0.6];

  v2 = sub_13A2A4();
  v5[3] = v2;
  v5[4] = &protocol witness table for FontSource;
  *sub_CC08(v5) = UIFontTextStyleFootnote;
  (*(*(v2 - 8) + 104))();
  v3 = UIFontTextStyleFootnote;
  return sub_139BA4();
}

uint64_t sub_A1A08(SEL *a1, void **a2)
{
  sub_139BB4();
  v4 = [objc_opt_self() *a1];
  v5 = sub_13A2A4();
  v10[3] = v5;
  v10[4] = &protocol witness table for FontSource;
  v6 = sub_CC08(v10);
  v7 = *a2;
  *v6 = v7;
  (*(*(v5 - 8) + 104))();
  v8 = v7;
  return sub_139BA4();
}

uint64_t sub_A1AE0()
{
  v0 = [objc_opt_self() ams_primaryText];
  v1 = sub_13A2A4();
  v7[3] = v1;
  v7[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v7);
  sub_CACC(0, &qword_19E9A0, UIApplication_ptr);
  v3 = static UIApplication.isCompact()();
  v4 = &UIFontTextStyleTitle1;
  if ((v3 & 1) == 0)
  {
    v4 = &UIFontTextStyleLargeTitle;
  }

  v5 = *v4;
  sub_139BB4();
  *v2 = v5;
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.textStyle(_:), v1);
  return sub_139BA4();
}

uint64_t sub_A1C04()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_13A314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v56 - v10;
  v61.receiver = v2;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  [v2 bounds];
  sub_1D3D0();
  result = CGRectIsEmpty(v62);
  if ((result & 1) == 0)
  {
    v56 = v5;
    v58 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
    v13 = sub_5AA7C();
    [v14 v15];
    sub_A21D8(v60);
    sub_162F0(v60, v60[3]);
    sub_5AA7C();
    sub_13A544();
    v16 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur];
    if (qword_19A000 != -1)
    {
      sub_A69AC(&qword_19A000);
    }

    v57 = v4;
    if (byte_1B2AF8)
    {
      v17 = 1;
    }

    else
    {
      v18 = [v2 traitCollection];
      v17 = sub_13BDE4();
    }

    [v16 setHidden:v17 & 1];
    v63.origin.x = sub_5AA7C();
    v63.size.height = v1;
    MinX = CGRectGetMinX(v63);
    v20 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
    sub_A69DC();
    MinY = CGRectGetMinY(v64);
    v65.origin.x = sub_5AA7C();
    v65.size.height = v1;
    Width = CGRectGetWidth(v65);
    sub_A69DC();
    [v16 setFrame:{MinX, MinY, Width, CGRectGetHeight(v66)}];
    sub_13A2D4();
    sub_13BE34();
    sub_1D3D0();
    sub_A2400(v59);
    v23 = sub_5AA7C();
    FullSheetOverlayLockupLayout.placeChildren(relativeTo:in:)(v2, v23, v24, v25, v1);
    v26 = [v2 traitCollection];
    v27 = sub_127E5C();

    if (v27)
    {
      if (byte_1B2AF8)
      {
        v28 = 40.0;
      }

      else
      {
        [v2 safeAreaInsets];
        v28 = v29 + 16.0;
      }
    }

    else
    {
      [v2 bounds];
      v28 = CGRectGetHeight(v67) * 0.44;
    }

    v30 = v58;
    sub_13A2D4();
    v32 = v28 + v31;
    v68.origin.x = sub_5AA7C();
    v68.size.height = v1;
    Height = CGRectGetHeight(v68);
    sub_13A2D4();
    v35 = v34;
    if (Height >= v32)
    {
      [v30 setContentSize:{v34, v32}];
      v38 = v57;
    }

    else
    {
      [v20 frame];
      [v30 setContentSize:{v35, v32 + CGRectGetHeight(v69)}];
      v36 = [v2 traitCollection];
      v37 = sub_13BDE4();

      if (v37)
      {
        if (v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] == 1)
        {
          sub_A69DC();
          CGRectGetMinX(v70);
          [v30 contentSize];
          sub_A69DC();
          CGRectGetHeight(v71);
        }

        else
        {
          v41 = sub_A69F4();
          [v41 v42];
          CGRectGetMinX(v74);
          [v30 frame];
          CGRectGetMinY(v75);
          v43 = sub_A69F4();
          [v43 v44];
          CGRectGetWidth(v76);
          v45 = sub_A69F4();
          [v45 v46];
          CGRectGetHeight(v77);
          v47 = sub_5AA7C();
          [v48 v49];
          [v20 frame];
          CGRectGetMinX(v78);
          v50 = sub_A69F4();
          [v50 v51];
          CGRectGetMaxY(v79);
        }

        v38 = v57;
      }

      else
      {
        v39 = [v2 traitCollection];
        v40 = sub_127E5C();

        v38 = v57;
        if (v40 || (v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] & 1) != 0)
        {
          goto LABEL_23;
        }

        sub_A69DC();
        CGRectGetMinX(v72);
        [v30 frame];
        CGRectGetMinY(v73);
      }

      sub_A69DC();
      CGRectGetWidth(v80);
      sub_A69DC();
      CGRectGetHeight(v81);
      v52 = sub_5AA7C();
      [v53 v54];
    }

LABEL_23:
    sub_A2900(1);
    sub_A2BA0();
    sub_A2CF4();
    sub_A2DC4();
    v55 = *(v56 + 8);
    v55(v7, v38);
    sub_A6750(v59);
    v55(v11, v38);
    return sub_3C04(v60);
  }

  return result;
}

uint64_t sub_A21D8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_A5EE8();
  v5 = sub_A159C();
  v6 = sub_A14BC(2);
  v7 = sub_A14BC(8);
  v21[3] = &type metadata for CGFloat;
  v21[4] = &protocol witness table for CGFloat;
  v21[0] = 0x4076800000000000;
  v21[8] = &type metadata for CGFloat;
  v21[9] = &protocol witness table for CGFloat;
  *&v21[5] = v4;
  v21[13] = &type metadata for CGFloat;
  v21[14] = &protocol witness table for CGFloat;
  v21[10] = 0x4020000000000000;
  if (qword_199FE0 != -1)
  {
    swift_once();
  }

  v21[18] = &type metadata for CGFloat;
  v21[19] = &protocol witness table for CGFloat;
  v21[15] = qword_1B2AD8;
  v21[20] = 0;
  *&v21[21] = v6;
  *&v21[22] = v5;
  *&v21[23] = v7;
  v8 = [v1 traitCollection];
  v9 = sub_127E5C();

  if (v9)
  {
    a1[3] = &type metadata for FullSheetOverlayFooterLayoutLandscape;
    v10 = sub_A68A4();
  }

  else
  {
    a1[3] = &type metadata for FullSheetOverlayFooterLayoutPortrait;
    v10 = sub_A67F8();
  }

  a1[4] = v10;
  v11 = swift_allocObject();
  *a1 = v11;
  sub_9AB04(v21, (v11 + 2));
  v12 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel, &selRef_ams_secondaryText, &UIFontTextStyleCaption1);
  v11[29] = sub_139BB4();
  v11[30] = protocol witness table for UIView;
  v11[26] = v12;
  v13 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
  v11[34] = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v11[35] = protocol witness table for UIView;
  v11[31] = v13;
  v14 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButton];
  v15 = type metadata accessor for DynamicButton(0);
  v11[39] = v15;
  v11[40] = protocol witness table for UIView;
  v11[36] = v14;
  v16 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton];
  v11[44] = v15;
  v11[45] = protocol witness table for UIView;
  v11[41] = v16;
  v17 = v13;
  v18 = v14;
  v19 = v16;
  return sub_A6850(v21);
}

uint64_t sub_A2400@<X0>(void *a1@<X8>)
{
  v2 = v1;
  MinX = sub_A14BC(2);
  v5 = sub_A14BC(8);
  v6 = [v1 traitCollection];
  v7 = sub_127E5C();

  if (v7)
  {
    if (qword_19A000 != -1)
    {
      swift_once();
    }

    v8 = 24.0;
    if ((byte_1B2AF8 & 1) == 0)
    {
      [v2 safeAreaInsets];
      v8 = v9;
    }

    v10 = [v2 traitCollection];
    v11 = sub_13BDE4();

    v12 = [*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton] isHidden];
    if (v11)
    {
      if ((v12 & 1) == 0)
      {
        v13 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
        [v13 frame];
        MinX = CGRectGetMinX(v52);
        [v2 bounds];
        Width = CGRectGetWidth(v53);
        [v13 frame];
        v5 = Width - CGRectGetMaxX(v54);
      }
    }

    else if (v12)
    {
      v55.origin.x = sub_A4A30();
      v5 = CGRectGetWidth(v55);
    }

    else
    {
      v15 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
      [v15 frame];
      MinX = CGRectGetMinX(v56);
      [v2 bounds];
      v16 = CGRectGetWidth(v57);
      [v15 frame];
      v17 = v16 - CGRectGetMaxX(v58);
      [v15 frame];
      v18 = CGRectGetWidth(v59);
      v5 = v17 + (v18 + sub_A5EE8()) * 0.5;
    }
  }

  else
  {
    v8 = 0.0;
    if (v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] == 1)
    {
      if (qword_199FF8 != -1)
      {
        swift_once();
      }

      v8 = *&qword_1B2AF0;
    }
  }

  *&__src[24] = &type metadata for CGFloat;
  *&__src[32] = &protocol witness table for CGFloat;
  *__src = 0x4008000000000000;
  v42 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  *&v41 = 0x4000000000000000;
  v19 = v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered];
  if (qword_199FE8 != -1)
  {
    swift_once();
  }

  v39 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  *&v38 = qword_1B2AE0;
  sub_CACC(0, &qword_19E9A0, UIApplication_ptr);
  v20 = static UIApplication.hasNotch()();
  v21 = 20.0;
  if (v20)
  {
    if (qword_199FF0 != -1)
    {
      swift_once();
    }

    v21 = *&qword_1B2AE8;
  }

  v36 = &type metadata for CGFloat;
  v37 = &protocol witness table for CGFloat;
  *&v35 = v21;
  sub_9414(__src, v44);
  v45 = v8;
  v46 = MinX;
  v47 = 0x4030000000000000;
  v48 = v5;
  sub_9414(&v41, v49);
  v49[40] = v19;
  sub_9414(&v38, &v50);
  sub_9414(&v35, &v51);
  sub_9CA1C(v44, __src);
  v22 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___badgeLabel, &selRef_ams_primaryText, &UIFontTextStyleFootnote);
  v23 = sub_139BB4();
  v42 = v23;
  v43 = protocol witness table for UIView;
  *&v41 = v22;
  v24 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView];
  if (v24)
  {
    v25 = sub_CACC(0, &qword_19E9A8, UIView_ptr);
    v26 = protocol witness table for UIView;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = v24;
  v28 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___headlineLabel, sub_A1908);
  a1[38] = v23;
  a1[39] = protocol witness table for UIView;
  a1[35] = v28;
  v29 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
  a1[43] = v23;
  a1[44] = protocol witness table for UIView;
  a1[40] = v29;
  v30 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_textView];
  a1[48] = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  a1[49] = protocol witness table for UIView;
  a1[45] = v30;
  v31 = v30;
  v32 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
  a1[53] = v23;
  a1[54] = protocol witness table for UIView;
  a1[50] = v32;
  sub_A67A4(v44);
  memcpy(a1, __src, 0xC8uLL);
  result = sub_9414(&v41, (a1 + 30));
  a1[25] = v24;
  a1[26] = 0;
  a1[27] = 0;
  a1[28] = v25;
  a1[29] = v26;
  return result;
}

double sub_A2900(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_13BDE4();

  if ((v5 & 1) == 0)
  {
    v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
    [v7 contentSize];
    v9 = v8;
    [v2 bounds];
    v11 = v10;
    [*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView] frame];
    v12 = v11 - CGRectGetHeight(v25);
    [v7 contentOffset];
    v14 = v13 + 1.0;
    [v7 contentSize];
    v16 = v15;
    [v2 bounds];
    v17 = v16 - CGRectGetHeight(v26);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v14 < v17;
    if (v12 < v9 && (a1 & 1) != 0)
    {
      v20 = objc_opt_self();
      v23[4] = sub_A672C;
      v23[5] = v19;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_E2448;
      v23[3] = &unk_18A278;
      v21 = _Block_copy(v23);

      [v20 animateWithDuration:4 delay:v21 options:0 animations:0.3 completion:0.0];

      _Block_release(v21);
    }

    else
    {

      sub_A60F4(v22, v14 < v17);
    }
  }

  return result;
}

void sub_A2BA0()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView];
  if (v1)
  {
    v2 = v0;
    v10 = v1;
    [v10 setFrame:sub_A4A30()];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_139CF4();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v10;
        [v4 frame];
        sub_A45BC(v4, v6, v7);
      }
    }

    v8 = [v2 traitCollection];
    v9 = sub_127E5C();

    if (!v9)
    {
      v2 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
    }

    [v2 addSubview:v10];
    [v2 sendSubviewToBack:v10];
  }
}

void sub_A2CF4()
{
  if (([*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView) isHidden] & 1) == 0)
  {
    sub_A4F6C();
    v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered;
    sub_A5098(*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered));
    v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor);
    }

    else
    {
      v3 = [objc_opt_self() clearColor];
      v2 = 0;
    }

    v4 = v2;
    sub_A5194(v3);

    sub_A53D0(*(v0 + v1));
    v5 = *(v0 + v1);

    sub_A5750(v5);
  }
}

void sub_A2DC4()
{
  v1 = v0;
  if (qword_19A000 != -1)
  {
    swift_once();
  }

  if (byte_1B2AF8 != 1 || (v2 = [v0 traitCollection], v3 = sub_13BDE4(), v2, (v3 & 1) != 0))
  {
    if (!*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollPocketInteraction])
    {
      return;
    }

    v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
    v5 = "removeInteraction:";
    goto LABEL_10;
  }

  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollPocketInteraction;
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollPocketInteraction])
  {
    v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
    v5 = "addInteraction:";
LABEL_10:

    [v4 v5];
    return;
  }

  v7 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] edge:4 style:0];
  [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView] addInteraction:v7];
  v8 = *&v1[v6];
  *&v1[v6] = v7;
}

uint64_t sub_A2F90(uint64_t result, void *a2)
{
  v3 = v2 + *a2;
  v4 = *v3;
  if (*v3)
  {
    v5 = result;
    v6 = *(v3 + 8);

    v4(v5);

    return sub_C9FC(v4, v6);
  }

  return result;
}

uint64_t sub_A3014(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_13BF54();
  swift_unknownObjectRelease();
  sub_A2F90(v8, a4);

  return sub_3C04(v8);
}

void sub_A308C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] = *(a1 + 170);
  v11 = *(a1 + 171);
  v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_wantsBackgroundArtwork] = v11;
  v12 = 0.0;
  v13 = 0.0;
  if (v11 == 1)
  {
    [v6 bounds];
    v12 = v14;
    v13 = v15;
  }

  v16 = *a1;
  if (*a1)
  {
    v17 = qword_19A018;

    if (v17 != -1)
    {
      sub_CCD4(&qword_19A018);
    }

    v18 = sub_139A14();
    sub_4910(v18, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    __dst[3] = ObjectType;
    __dst[0] = v6;
    v6;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(__dst);
    sub_139974();
    __dst[3] = sub_139C94();
    __dst[0] = v16;

    sub_139984();
    sub_CC68(__dst, &unk_1A06F0, &unk_13EF80);
    sub_1399F4();

    v25 = objc_allocWithZone(sub_139CF4());
    v26 = sub_139CE4();
    sub_A17C0(v26);
    sub_A398C(v16, a4, v12, v13);
  }

  else
  {
    v21 = a1[17];
    if (v21)
    {
      if (qword_19A018 != -1)
      {
        sub_CCD4(&qword_19A018);
      }

      v22 = sub_139A14();
      sub_4910(v22, qword_1B2B00);
      sub_4948(&unk_19E010, qword_13F520);
      sub_1399C4();
      *(swift_allocObject() + 16) = xmmword_13E650;
      __dst[3] = ObjectType;
      __dst[0] = v6;
      v40 = v6;
      v23 = AMSLogKey();
      if (v23)
      {
        v24 = v23;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(__dst);
      sub_139974();
      sub_1399F4();

      sub_A3B04(v21, a5, a4, v12, v13);
    }
  }

  v27 = a1[1];
  if (v27)
  {
    sub_A3E78(a1[1], __src);
    if (*(&__src[1] + 1))
    {
      memcpy(__dst, __src, 0xC0uLL);

      sub_A3F6C(1, v27);
      sub_A3E98(v28, v29, v30, __src);
      swift_unknownObjectRelease();
      sub_A4004(__dst, __src, a2, a3, a4);
      sub_62468(&__dst[6], &v43, &qword_19E960, &qword_13FD30);
      if (v44)
      {
        sub_9414(&v43, v45);
        sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel, &selRef_ams_secondaryText, &UIFontTextStyleCaption1);
        sub_A69CC();
        (*(&stru_158.size + (swift_isaMask & v31)))(v45, a4);

        sub_3C04(v45);
      }

      else
      {
        sub_CC68(&v43, &qword_19E960, &qword_13FD30);
        v32 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___disclaimerLabel, &selRef_ams_secondaryText, &UIFontTextStyleCaption1);
        [v32 setHidden:1];
      }

      sub_CC68(__src, &qword_19E968, &qword_1472D8);
      sub_9E2A8(__dst);
    }

    else
    {
      sub_CC68(__src, &qword_19E968, &qword_1472D8);
    }
  }

  sub_62468((a1 + 7), __src, &qword_19E960, &qword_13FD30);
  if (*(&__src[1] + 1))
  {
    sub_9414(__src, __dst);
    v33 = v6;
    sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___badgeLabel, &selRef_ams_primaryText, &UIFontTextStyleFootnote);
LABEL_26:
    sub_A69CC();
    (*(&stru_158.size + (swift_isaMask & v34)))(__dst, a4);

    sub_3C04(__dst);
    goto LABEL_27;
  }

  sub_CC68(__src, &qword_19E960, &qword_13FD30);
  sub_62468((a1 + 12), __src, &qword_19E960, &qword_13FD30);
  if (*(&__src[1] + 1))
  {
    sub_9414(__src, __dst);
    v33 = v6;
    sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___headlineLabel, sub_A1908);
    goto LABEL_26;
  }

  sub_CC68(__src, &qword_19E960, &qword_13FD30);
LABEL_27:
  sub_62468((a1 + 22), __src, &qword_19E960, &qword_13FD30);
  if (*(&__src[1] + 1))
  {
    sub_9414(__src, __dst);
    sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
    sub_A69CC();
    (*(&stru_158.size + (swift_isaMask & v35)))(__dst, a4);

    sub_3C04(__dst);
  }

  else
  {
    sub_CC68(__src, &qword_19E960, &qword_13FD30);
  }

  sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
  sub_A69CC();
  (*(&stru_158.size + (swift_isaMask & v36)))(a1 + 27, a4);

  v37 = a1[20];
  if (v37 && (a1[21] & 1) == 0)
  {
    v38 = *&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor];
    *&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor] = v37;
    v39 = v37;

    sub_A2CF4();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView] setHidden:{1, v40}];
  }

  if (qword_19A000 != -1)
  {
    sub_A69AC(&qword_19A000);
  }

  if (byte_1B2AF8 == 1 && *(a1 + 169) == 1)
  {
    [*&v6[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] _setHiddenPocketEdges:1];
  }
}

void sub_A398C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(sub_139CF4());
  v10 = sub_139CE4();
  v17 = v10;
  sub_A17C0(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = v12;
  *(v13 + 4) = a1;
  v14 = (v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher);
  v15 = *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher);
  v16 = *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher + 8);
  *v14 = sub_A6400;
  v14[1] = v13;

  sub_C9FC(v15, v16);

  sub_A45BC(v17, a3, a4);
}

void sub_A3B04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_4948(&unk_19E970, &unk_1472E0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = sub_13B994();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v18 = v30;
  sub_13B9A4();
  v19 = (*(*v18 + 248))(a1, 0.0, 0.0, a4, a5);
  if (v19)
  {
    v20 = v19;
    sub_A46EC(v19, a2);
    v27[2] = v18[2];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v27[1] = v6;
    v24 = v23;
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v24;
    v25[4] = v21;
    sub_4948(&qword_19B350, &unk_1472F0);
    sub_2D65C();
    sub_13B614();
    sub_13B624();

    sub_3C04(&v30);
    (*(v28 + 8))(v13, v29);
    v26 = v20;
    sub_A17C0(v20);

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
  }
}

void sub_A3E78(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_9E270(a1 + 32, a2);
  }

  else
  {
    bzero(a2, 0xC0uLL);
  }
}

void sub_A3E98(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    bzero(a4, 0xC0uLL);
  }

  else if ((a3 >> 1) <= a2)
  {
    __break(1u);
  }

  else
  {
    sub_9E270(a1 + 192 * a2, a4);
  }
}

uint64_t sub_A3EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CarouselCell(0);
  v6 = v5;
  if (v4)
  {
    sub_F680(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_53A8(a2, v7, 1, v6);
}

uint64_t sub_A3F6C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_A65B4(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_A6548(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_A4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButton);
  v11 = *(a1 + 40);
  v12 = v11;
  sub_8E8AC(v11);
  if (*(a1 + 104))
  {
    v13 = a3;
    v14 = sub_13C144();

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v13 = a3;

    v15 = 0;
  }

  v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = v15;
  sub_8F358(v15);
  v16 = *&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  v18 = *(a1 + 176);
  v17 = *(a1 + 184);
  v19 = sub_162F0((a1 + 152), v18);
  sub_91BF0(v19, a5, v16, v18, v17);
  sub_62468(a1 + 112, v48, &qword_19E960, &qword_13FD30);
  if (*(&v48[1] + 1))
  {
    sub_9414(v48, __src);
    sub_90588();
    sub_3C04(__src);
  }

  else
  {
    sub_CC68(v48, &qword_19E960, &qword_13FD30);
  }

  v20 = a5;
  sub_9E270(a1, __src);
  v21 = swift_allocObject();
  v22 = v13;
  v21[2] = v13;
  v21[3] = a4;
  memcpy(v21 + 4, __src, 0xC0uLL);
  v23 = (v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButtonHandler);
  v24 = *(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButtonHandler);
  v25 = *(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_primaryButtonHandler + 8);
  *v23 = sub_A6984;
  v23[1] = v21;

  sub_C9FC(v24, v25);
  v26 = &selRef_clearColor;
  [v10 addTarget:v45 action:"didTapPrimaryButton:" forControlEvents:64];
  sub_62468(a2, v48, &qword_19E968, &qword_1472D8);
  if (*(&v48[1] + 1))
  {
    memcpy(__src, v48, 0xC0uLL);
    v27 = __src[5];
    v28 = __src[12];
    if (LOBYTE(__src[13]))
    {
      v29 = v20;
      v30 = sub_13C144();
      v31 = v28;
      v32 = v27;

      if (v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = 2;
      }

      v20 = v29;
      v26 = &selRef_clearColor;
    }

    else
    {
      v31 = __src[12];
      v32 = v27;

      v33 = 0;
    }

    sub_A4E2C(v27, v28, v33);

    sub_9E270(__src, v48);
    v35 = swift_allocObject();
    v35[2] = v22;
    v35[3] = a4;
    memcpy(v35 + 4, v48, 0xC0uLL);
    v36 = (v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonHandler);
    v37 = *(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonHandler);
    v38 = *(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonHandler + 8);
    *v36 = sub_A667C;
    v36[1] = v35;

    sub_C9FC(v37, v38);
    v39 = *(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton);
    v40 = *&v39[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
    v41 = __src[22];
    v42 = __src[23];
    v43 = sub_162F0(&__src[19], __src[22]);
    sub_91BF0(v43, v20, v40, v41, v42);
    sub_62468(&__src[14], &v46, &qword_19E960, &qword_13FD30);
    if (v47)
    {
      sub_9414(&v46, v48);
      sub_90588();
      sub_3C04(v48);
    }

    else
    {
      sub_CC68(&v46, &qword_19E960, &qword_13FD30);
    }

    [v39 v26[25]];
    return sub_9E2A8(__src);
  }

  else
  {
    sub_CC68(v48, &qword_19E968, &qword_1472D8);
    return [*(v45 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton) setHidden:1];
  }
}

double sub_A44E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      (*(&stru_108.offset + (swift_isaMask & *v7)))(a3, v6);
    }

    else
    {
    }
  }

  return result;
}

void sub_A45BC(void *a1, double a2, double a3)
{
  v4 = v3;
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || (*(&stru_68.offset + (swift_isaMask & *a1)))() != a2)
  {
    (*(&stru_68.reloff + (swift_isaMask & *a1)))(a2, a3);
    v8 = v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher;
    v9 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_assetFetcher);
    if (v9)
    {
      v10 = *(v8 + 8);

      v9(v11);

      sub_C9FC(v9, v10);
    }
  }
}

void sub_A46EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = sub_13B7A4();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 respondsToSelector:{"impressionItems", v7}])
  {
    v10 = [a1 impressionItems];
    sub_139E24();
    v11 = sub_13BC24();

    sub_13B8D4();
    v12 = v11;
    v13 = sub_127E54();
    if (v13)
    {
      v14 = v13;
      if (v13 < 1)
      {
        __break(1u);
      }

      else
      {
        v23[1] = a2;
        v24 = a1;
        v15 = 0;
        v16 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView);
        v17 = v11 & 0xC000000000000001;
        v18 = (v6 + 8);
        v19 = v12;
        do
        {
          if (v17)
          {
            v20 = sub_13C004();
          }

          else
          {
            v20 = *(v12 + 8 * v15 + 32);
          }

          v21 = v20;
          ++v15;
          v22 = (*&stru_68.segname[(swift_isaMask & *v20) + 8])();
          sub_92E64();

          (*&stru_68.sectname[swift_isaMask & *v21])();
          [v24 convertRect:v16 toCoordinateSpace:?];
          sub_13B894();

          (*v18)(v9, v25);
          v12 = v19;
        }

        while (v14 != v15);
      }
    }

    else
    {
    }
  }
}

void sub_A4970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_A46EC(v5, v7);
      }
    }
  }
}

double sub_A4A30()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_127E5C();

  if (v3)
  {
    v4 = [v1 traitCollection];
    v5 = sub_13BDD4();

    [v1 bounds];
    if (v5)
    {
      MinX = CGRectGetMinX(*&v6);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v6);
      [v1 bounds];
      MinX = MaxX - CGRectGetHeight(v43);
    }

    [v1 bounds];
    CGRectGetMinY(v44);
    sub_A13F0();
    [v1 bounds];
    CGRectGetHeight(v45);
    [v1 bounds];
    CGRectGetWidth(v46);
  }

  else if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_wantsBackgroundArtwork] == 1)
  {
    [v1 bounds];
    return v11;
  }

  else if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_isTopRegistered] == 1)
  {
    v14 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v47.origin.x = v16;
    v47.origin.y = v18;
    v47.size.width = v20;
    v47.size.height = v22;
    CGRectGetHeight(v47);
    if (qword_199FE8 != -1)
    {
      swift_once();
    }

    v23 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
    [v23 frame];
    CGRectGetMinY(v48);
    [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel] frame];
    CGRectGetMaxY(v49);
    [v1 bounds];
    CGRectGetHeight(v50);
    [v1 bounds];
    MinX = CGRectGetMinX(v51);
    if (qword_199FF8 != -1)
    {
      swift_once();
    }

    v24 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
    [v24 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v52.origin.x = v26;
    v52.origin.y = v28;
    v52.size.width = v30;
    v52.size.height = v32;
    CGRectGetMaxY(v52);
    [v1 bounds];
    CGRectGetWidth(v53);
    [v23 frame];
    CGRectGetHeight(v54);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_textView] frame];
    CGRectGetMaxY(v55);
    v33 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
    [v33 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v56.origin.x = v35;
    v56.origin.y = v37;
    v56.size.width = v39;
    v56.size.height = v41;
    CGRectGetHeight(v56);
    [v1 bounds];
    MinX = v42;
    [v1 bounds];
    CGRectGetWidth(v57);
  }

  return MinX;
}

void sub_A4E2C(char *a1, void *a2, char a3)
{
  v4 = v3;
  if (a1 != &dword_0 + 1)
  {
    v7 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColor];
    *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColor] = a1;
    sub_A66B0(a1, a2);

    v8 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColorLandscape];
    *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColorLandscape] = a2;
  }

  if (a3 != 3)
  {
    v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonStyle] = a3;
  }

  v9 = [v4 traitCollection];
  v10 = sub_127E5C();

  v11 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton];
  if (v10)
  {
    v12 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColorLandscape];
    v13 = v12;
    if (!v12)
    {
      v13 = [objc_opt_self() systemGray5Color];
    }

    v14 = v12;
    sub_8E8AC(v13);
    v15 = 0;
  }

  else
  {
    v16 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonColor];
    v17 = v16;
    sub_8E8AC(v16);
    if (v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonStyle] == 3)
    {
      v15 = 2;
    }

    else
    {
      v15 = v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButtonStyle];
    }
  }

  *(v11 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style) = v15;
  sub_8F358(v15);
}

void sub_A4F6C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_contentView];
  if (v2)
  {
    v7 = v2;
    v3 = [v0 traitCollection];
    v4 = sub_127E5C();

    if (v4)
    {
      [v1 insertSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView] aboveSubview:v7];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] insertSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView] aboveSubview:v7];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
    v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView];
    [v5 addSubview:v6];

    [v5 sendSubviewToBack:v6];
  }
}

id sub_A5098(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView] layer];
  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer];
  [v3 addSublayer:v4];

  v5 = [v1 traitCollection];
  v6 = sub_127E5C();

  v7 = 0.0;
  if (a1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (a1)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v6)
  {
    v8 = 0.5;
  }

  else
  {
    v7 = 0.5;
  }

  if (v6)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = v9;
  }

  if (v6)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.5;
  }

  [v4 setStartPoint:{v7, v8}];

  return [v4 setEndPoint:{v11, v10}];
}

void sub_A5194(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_127E5C();

  v6 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer];
  sub_4948(&qword_19E998, &unk_147300);
  v7 = swift_allocObject();
  if (v5)
  {
    *(v7 + 16) = xmmword_13E650;
    v8 = [a1 CGColor];
    type metadata accessor for CGColor(0);
    v10 = v9;
    *(v7 + 56) = v9;
    *(v7 + 32) = v8;
    v11 = [a1 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(v7 + 88) = v10;
    *(v7 + 64) = v12;
  }

  else
  {
    *(v7 + 16) = xmmword_140290;
    v13 = [a1 CGColor];
    type metadata accessor for CGColor(0);
    v15 = v14;
    *(v7 + 56) = v14;
    *(v7 + 32) = v13;
    v16 = [a1 colorWithAlphaComponent:0.6];
    v17 = [v16 CGColor];

    *(v7 + 88) = v15;
    *(v7 + 64) = v17;
    v18 = [a1 colorWithAlphaComponent:0.2];
    v19 = [v18 CGColor];

    *(v7 + 120) = v15;
    *(v7 + 96) = v19;
    v20 = [a1 colorWithAlphaComponent:0.0];
    v21 = [v20 CGColor];

    *(v7 + 152) = v15;
    *(v7 + 128) = v21;
  }

  sub_A6454(v7, v6);
}

void sub_A53D0(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_127E5C();

  if (v5)
  {
    [v2 bounds];
    Width = CGRectGetWidth(v42);
    v43.origin.x = sub_A4A30();
    v7 = Width + CGRectGetWidth(v43) * -0.5;
    [v2 bounds];
    MinX = v8;
    v11 = v10;
    [v2 bounds];
    Height = CGRectGetHeight(v44);
  }

  else
  {
    if (a1)
    {
      if (qword_199FF8 != -1)
      {
        swift_once();
      }

      v13 = *&qword_1B2AF0;
      v14 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v45.origin.x = v16;
      v45.origin.y = v18;
      v45.size.width = v20;
      v45.size.height = v22;
      Height = v13 + CGRectGetMaxY(v45) + 180.0;
      [v2 bounds];
      MinX = v23;
      v11 = v24;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
      [v25 frame];
      v26 = CGRectGetHeight(v46);
      [*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_textView] frame];
      Height = v26 + CGRectGetHeight(v47) + 262.0;
      [v2 bounds];
      MinX = CGRectGetMinX(v48);
      [*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView] contentSize];
      v28 = v27;
      [v25 frame];
      MaxY = CGRectGetMaxY(v49);
      if (v28 > MaxY)
      {
        MaxY = v28;
      }

      v11 = MaxY - Height;
    }

    [v2 bounds];
    v7 = CGRectGetWidth(v50);
  }

  v30 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView];
  [v30 setFrame:{MinX, v11, v7, Height}];
  v31 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer];
  [v30 bounds];
  [v31 setFrame:?];
  v32 = [v2 traitCollection];
  v33 = sub_127E5C();

  if (v33)
  {
    v34 = [v2 traitCollection];
    v35 = sub_13BDD4();

    if (v35)
    {
      [v2 bounds];
      v37 = v36;
      [v2 bounds];
      v38 = v37 + CGRectGetHeight(v51) * 0.5;
      [v2 bounds];
      v40 = v39;
      [v30 frame];
      [v30 setFrame:{v38, v40}];
      CGAffineTransformMakeScale(&v41, -1.0, 1.0);
      [v31 setAffineTransform:&v41];
    }
  }
}

void sub_A5750(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_127E5C();

  v6 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView];
  [v6 frame];
  if (v5)
  {
    [v6 frame];
    [v6 frame];
    CGRectGetWidth(v46);
    v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer];
    sub_4948(&qword_1A0B00, &unk_147390);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_147280;
    *(v8 + 32) = sub_1398C4();
    sub_CACC(0, &qword_19E990, NSNumber_ptr);
    *(v8 + 40) = sub_13BEE4(1.0);
  }

  else
  {
    if (a1)
    {
      if (qword_199FF8 != -1)
      {
        swift_once();
      }

      v9 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v47.origin.x = v11;
      v47.origin.y = v13;
      v47.size.width = v15;
      v47.size.height = v17;
      CGRectGetMaxY(v47);
      if (qword_199FE8 != -1)
      {
        swift_once();
      }

      v18 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
      [v18 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v48.origin.x = v20;
      v48.origin.y = v22;
      v48.size.width = v24;
      v48.size.height = v26;
      CGRectGetHeight(v48);
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView] frame];
      CGRectGetHeight(v49);
      v27 = sub_A1844(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___subtitleLabel, &selRef_ams_primaryText, &UIFontTextStyleBody);
      [v27 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v50.origin.x = v29;
      v50.origin.y = v31;
      v50.size.width = v33;
      v50.size.height = v35;
      CGRectGetHeight(v50);
      v36 = sub_A18A8(&OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView____lazy_storage___titleLabel, sub_A1AE0);
      [v36 frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v51.origin.x = v38;
      v51.origin.y = v40;
      v51.size.width = v42;
      v51.size.height = v44;
      CGRectGetHeight(v51);
      if (qword_199FE8 != -1)
      {
        swift_once();
      }
    }

    v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientLayer];
    sub_4948(&qword_1A0B00, &unk_147390);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_147270;
    *(v8 + 32) = sub_1398C4();
    *(v8 + 40) = sub_1398C4();
    *(v8 + 48) = sub_1398C4();
    sub_CACC(0, &qword_19E990, NSNumber_ptr);
    *(v8 + 56) = sub_13BEE4(1.0);
  }

  sub_A64C4(v8, v7);
}

id sub_A5BA0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientBaseColor];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_gradientView];
      v7 = a1;
      v8 = v5;
      if (([v6 isHidden] & 1) == 0)
      {
        v9 = sub_A6A00();
        v10 = [v9 hasDifferentColorAppearanceComparedToTraitCollection:v7];

        if (v10)
        {
          sub_A5194(v8);
        }
      }
    }

    else
    {
      v11 = a1;
    }

    v12 = sub_A6A00();
    v13 = [v12 preferredContentSizeCategory];

    v14 = [a1 preferredContentSizeCategory];
    v15 = sub_13BB84();
    v17 = v16;

    v18 = sub_13BB84();
    v20 = v19;

    if (v15 == v18 && v17 == v20)
    {
    }

    else
    {
      v22 = sub_13C144();

      if ((v22 & 1) == 0)
      {
        v23 = sub_A6A00();
        v24 = sub_13BDE4();

        if (v24)
        {
          v25 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_scrollView];
          v26 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView];
          v27 = [v25 subviews];
          sub_CACC(0, &qword_19E9A8, UIView_ptr);
          sub_13BC24();

          v28 = sub_624D0();

          [v25 insertSubview:v26 atIndex:v28];
        }

        else
        {
          [v2 addSubview:*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerView]];
        }

        [v2 setNeedsLayout];
      }
    }

    v29 = sub_A6A00();
    v30 = sub_127E5C();

    if (v30 != sub_127E5C())
    {
      sub_A4E2C(&dword_0 + 1, 0, 3);
    }
  }

  v32.receiver = v2;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, "traitCollectionDidChange:", a1);
}

double sub_A5EE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_secondaryButton);
  if (![v1 isHidden])
  {
    if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style])
    {
      v6 = sub_13C144();

      if ((v6 & 1) == 0)
      {
        if (qword_199FD8 != -1)
        {
          swift_once();
        }

        v5 = &qword_1B2AD0;
        return *v5;
      }
    }

    else
    {
    }

    if (qword_199FD0 != -1)
    {
      swift_once();
    }

    v5 = &qword_1B2AC8;
    return *v5;
  }

  if (qword_19A000 != -1)
  {
    swift_once();
  }

  v2 = 0.0;
  if ((byte_1B2AF8 & 1) == 0)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == &dword_0 + 1)
    {
      if (qword_199FC8 != -1)
      {
        swift_once();
      }

      v5 = &qword_1B2AC0;
      return *v5;
    }
  }

  return v2;
}

void sub_A60F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin24FullSheetOverlayPageView_footerBlur);

    if (a2)
    {
      v6 = [objc_opt_self() effectWithStyle:7];
    }

    else
    {
      v6 = 0;
    }

    [v5 setEffect:v6];
  }
}

uint64_t sub_A63C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A640C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_A6454(uint64_t a1, void *a2)
{
  isa = sub_13BC14().super.isa;

  [a2 setColors:isa];
}

void sub_A64C4(uint64_t a1, void *a2)
{
  sub_CACC(0, &qword_19E990, NSNumber_ptr);
  isa = sub_13BC14().super.isa;

  [a2 setLocations:isa];
}

unint64_t sub_A6548(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_A65B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_A6604()
{

  sub_3C04((v0 + 32));

  if (*(v0 + 104))
  {
    sub_3C04((v0 + 80));
  }

  if (*(v0 + 168))
  {
    sub_3C04((v0 + 144));
  }

  sub_3C04((v0 + 184));

  return _swift_deallocObject(v0, 224, 7);
}

char *sub_A66B0(char *result, void *a2)
{
  if (result != &dword_0 + 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_A66F4()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_A6738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_A67F8()
{
  result = qword_19E9B8;
  if (!qword_19E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E9B8);
  }

  return result;
}

unint64_t sub_A68A4()
{
  result = qword_19E9C0;
  if (!qword_19E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E9C0);
  }

  return result;
}

uint64_t sub_A68F8()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);
  sub_3C04(v0 + 17);
  sub_3C04(v0 + 26);
  sub_3C04(v0 + 31);
  sub_3C04(v0 + 36);
  sub_3C04(v0 + 41);

  return _swift_deallocObject(v0, 368, 7);
}

id sub_A6988(void *a1)
{
  v3 = *(v1 + 3536);

  return [a1 v3];
}

uint64_t sub_A69AC(uint64_t a1)
{

  return swift_once();
}

id sub_A69DC()
{
  v3 = *(v0 + 3520);

  return [v1 v3];
}

id sub_A6A00()
{
  v3 = *(v1 + 3552);

  return [v0 v3];
}

char *sub_A6A18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_13B974();
  sub_9E94();
  v59 = v7;
  v60 = v6;
  __chkstk_darwin(v6);
  sub_9EC0();
  v58 = (v9 - v8);
  v10 = sub_4948(&qword_19A498, &unk_147A80);
  v11 = sub_8AD98(v10);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = sub_13B834();
  v14 = sub_8AD98(v13);
  __chkstk_darwin(v14);
  sub_9EC0();
  v63 = v16 - v15;
  v17 = sub_13B8B4();
  v18 = sub_8AD98(v17);
  __chkstk_darwin(v18);
  sub_9EC0();
  v68 = (v20 - v19);
  v21 = sub_13B6E4();
  sub_9E94();
  v71 = v22;
  __chkstk_darwin(v23);
  v61 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v58 - v26;
  v28 = sub_13B994();
  sub_9E94();
  v67 = v29;
  __chkstk_darwin(v30);
  sub_9EC0();
  v72 = v32 - v31;
  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_didApply] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController] = 0;
  v33 = objc_allocWithZone(type metadata accessor for FullSheetOverlayPageView());
  v34 = sub_A8FE8();
  v37 = [v35 v36];
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageView] = v37;
  v70 = a1;
  sub_A05E4(a1, &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination]);
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_13B6B4();

  sub_13B9A4();
  v38 = v74;
  v69 = v28;
  sub_13B9A4();
  sub_13B9A4();
  sub_4948(&unk_1A16C0, &unk_147380);
  sub_13B9A4();
  v39 = v74;
  sub_13B8F4();
  sub_13B8A4();
  swift_unknownObjectRetain();
  sub_9A0A8();
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_impressionsCalculator] = sub_13B8C4();
  v40 = *(v71 + 16);
  v68 = v27;
  v66 = v21;
  v40(v61, v27, v21);
  swift_unknownObjectRetain();

  sub_13B814();
  v62 = v39;
  swift_unknownObjectRelease();
  v41 = sub_13B5D4();
  sub_53A8(v64, 1, 1, v41);
  sub_13B884();
  swift_allocObject();
  v65 = v38;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_metricsPresenter] = sub_13B844();
  sub_139E44();

  v42 = sub_139E34();

  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter] = v42;
  if (v42)
  {
    v43 = v58;
    *v58 = 1;
    v45 = v59;
    v44 = v60;
    (*(v59 + 104))(v43, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v60);
    sub_A8FC0();
    v47 = *(v46 + 152);

    v47(v43);

    (*(v45 + 8))(v43, v44);
  }

  v48 = type metadata accessor for FullSheetOverlayPageViewController(0);
  v73.receiver = v3;
  v73.super_class = v48;
  v49 = objc_msgSendSuper2(&v73, "init");
  v50 = v70;
  v51 = *(v70 + 144);
  if (!*(v70 + 144))
  {
    v52 = 2;
    v53 = &qword_19E000;
LABEL_12:

    goto LABEL_13;
  }

  v53 = &qword_19E000;
  v54 = sub_13C144();

  if (v54)
  {
    v52 = 2;
LABEL_13:
    [v49 setOverrideUserInterfaceStyle:{v52, v58}];
    goto LABEL_14;
  }

  if (v51 != 2)
  {
    v52 = 1;
    goto LABEL_12;
  }

  v55 = sub_13C144();

  if (v55)
  {
    v52 = 1;
    goto LABEL_13;
  }

LABEL_14:
  [*&v49[v53[321]] setHidden:{1, v58}];

  swift_unknownObjectRelease();

  sub_A8FA8();
  sub_A8F04(v50, v56);
  (*(v71 + 8))(v68, v66);
  (*(v67 + 8))(v72, v69);
  return v49;
}

void sub_A70B4()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_A7140()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_A7164()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_A7220(void *a1)
{
  sub_A7140();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_A7164();
}

id sub_A72CC()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_A7394(__n128 a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v5, "loadView");
  v2 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination + 152];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    [v4 setBackgroundColor:v3];
  }
}

void sub_A746C()
{
  v1 = v0;
  v2 = sub_13B964();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v9 = [v0 view];
  [v9 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageView]];

  sub_13B884();
  sub_13B904();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v10 + 168))();
    v11 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination];
    v12 = *(type metadata accessor for FullSheetOverlayPageDestination(0) + 52);
    sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v8, &v11[v12]);
    (*(v4 + 104))(v8, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v2);
    sub_A8FC0();
    (*(v14 + 160))(v8);
    (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_A76A4()
{
  v4.receiver = v0;
  v4.super_class = sub_A8FCC();
  objc_msgSendSuper2(&v4, "viewDidAppear:", v1 & 1);
  sub_13B854();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 184))();
  }

  return sub_13B8E4();
}

uint64_t sub_A778C()
{
  v4.receiver = v0;
  v4.super_class = sub_A8FCC();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", v1 & 1);
  sub_13B884();
  sub_13B924();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 192))();
  }

  return sub_13B8E4();
}

void sub_A7884()
{
  v3.receiver = v0;
  v3.super_class = sub_A8FCC();
  objc_msgSendSuper2(&v3, "viewWillAppear:", v1 & 1);
  sub_13B884();
  sub_13B914();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 176))();
  }
}

uint64_t sub_A7968(char a1)
{
  v2 = v1;
  sub_13B954();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v15, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  v10 = *(v5 + 8);
  v11 = sub_9A0A8();
  result = v10(v11);
  if (*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_13B944();
    sub_A8FC0();
    (*(v13 + 200))(v9);
    v14 = sub_9A0A8();
    return v10(v14);
  }

  return result;
}

id sub_A7B00(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v3, "viewWillLayoutSubviews");
  return [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageView] setFrame:sub_A7C2C()];
}

void sub_A7BA8(__n128 a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_A7EA4();
}

double sub_A7C2C()
{
  v1 = [v0 view];
  [v1 bounds];

  sub_A8FE8();

  sub_13BE34();
  return result;
}

void sub_A7CB8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v3, "didReceiveMemoryWarning");
  sub_13B884();
  sub_13B934();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 208))();
  }
}

void sub_A7D94(void *a1, __n128 a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v5 != [a1 userInterfaceStyle])
  {
    sub_A80F0();
  }
}

void sub_A7EA4()
{
  v1 = v0;
  v2 = sub_4948(&qword_19A498, &unk_147A80);
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  if ((*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_didApply) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_didApply) = 1;
    sub_A80F0();
    v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_pageView);
    v7 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_objectGraph);
    v10 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_impressionsCalculator);

    sub_A308C(v7, sub_A8F9C, v8, v9, v10);

    [v6 setHidden:0];
    v11 = *(type metadata accessor for FullSheetOverlayPageDestination(0) + 52);
    v12 = sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v5, v7 + v11, v12);
    sub_53A8(v5, 0, 1, v12);
    sub_13B874();
  }
}

void *sub_A8058(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_7D228(a1, v10);
    sub_A8740(v9, a2, a3 & 1);

    return sub_928C(v10, &unk_1A06F0, &unk_13EF80);
  }

  return result;
}

void sub_A80F0()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  sub_64264(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination + 16, v47);
  v9 = v48;
  sub_928C(v47, &unk_19E320, &unk_140950);
  if (v9)
  {
    v10 = sub_A8FFC();
    [v10 ams_configureWithTransparentBackground];

    v11 = sub_A8FFC();
    [v11 setLargeTitleDisplayMode:2];

    v12 = sub_A8FFC();
    [v12 setTitle:0];

    if (_UISolariumEnabled() && ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v13 = sub_139A24(), (*(v4 + 8))(v8, v2), (v13 & 1) != 0) || _UISolariumFeatureFlagEnabled())
    {
      v48 = type metadata accessor for FullSheetOverlayPageViewController(0);
      v47[0] = v1;
      objc_allocWithZone(UIBarButtonItem);
      v14 = v1;
      v15 = sub_1139B4(24, v47, "dismissButtonPressed:");
      v16 = [v14 navigationController];
      if (v16 && (v17 = v16, v18 = [v16 navigationBar], v17, v19 = objc_msgSend(v18, "backItem"), v18, v19) && (v19, v20 = objc_msgSend(v14, "traitCollection"), v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, v21 != &dword_4 + 1))
      {
        v22 = [v14 navigationItem];
        sub_4948(&qword_1A0B00, &unk_147390);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_147310;
        *(v46 + 32) = v15;
        sub_113C78(v46, v22);
      }

      else
      {
        v22 = [v14 navigationItem];
        sub_4948(&qword_1A0B00, &unk_147390);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_147310;
        *(v23 + 32) = v15;
        sub_113C6C(v23, v22);
      }
    }

    else
    {
      sub_CACC(0, &unk_1A0710, UIImage_ptr);
      if (qword_199E88 != -1)
      {
        swift_once();
      }

      v24 = qword_1B2960;
      v25 = qword_1B2960;
      v26 = sub_111044(0xD000000000000017, 0x8000000000150810, v24, 0);
      v27 = [v26 imageAsset];

      if (v27)
      {
        v28 = v27;
        v29 = [v1 traitCollection];
        v30 = [v28 imageWithTraitCollection:v29];

        v31 = [v30 imageWithRenderingMode:1];
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_opt_self() buttonWithType:1];
      [v32 setImage:v31 forState:0];
      [v32 addTarget:v1 action:"dismissButtonPressed:" forControlEvents:64];
      v33 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v32];
      v34 = [v33 customView];
      if (v34)
      {
        v35 = v34;
        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v36 = [v33 customView];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 widthAnchor];

        v39 = [v38 constraintEqualToConstant:30.0];
        [v39 setActive:1];
      }

      v40 = [v33 customView];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 heightAnchor];

        v43 = [v42 constraintEqualToConstant:30.0];
        [v43 setActive:1];
      }

      v22 = sub_A8FFC();
      sub_4948(&qword_1A0B00, &unk_147390);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_147310;
      *(v44 + 32) = v33;
      v45 = v33;
      sub_113C6C(v44, v22);
    }
  }
}

void sub_A8740(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_A8988(a2);
  }

  else
  {
    sub_A8BA4();
    sub_A8988(a2);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[3] = sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
    v4[4] = &protocol witness table for OS_dispatch_queue;
    v4[0] = sub_13BD84();
    sub_13B9F4();

    sub_3C04(v4);
  }
}

void sub_A8840(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_A8C1C();
  }
}

uint64_t sub_A8894()
{
  sub_64264(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_destination + 16, &v2);
  if (!v3)
  {
    return sub_928C(&v2, &unk_19E320, &unk_140950);
  }

  sub_9414(&v2, v4);
  sub_A8988(v4);

  return sub_3C04(v4);
}

uint64_t sub_A8988(uint64_t a1)
{
  v3 = sub_139E74();
  v4 = sub_8AD98(v3);
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = sub_13B834();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  sub_139E84();
  v15 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin34FullSheetOverlayPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v16 = *&v22[0];
  sub_13B9A4();
  (*(v10 + 16))(v7, v14, v8);
  v17 = sub_4948(&unk_19B7E0, &unk_141F10);
  sub_53A8(v7, 0, 1, v17);
  memset(v22, 0, sizeof(v22));
  v23 = -1;
  v18 = (*(*v16 + 216))(a1, v7, v15, v22);

  sub_928C(v22, &unk_19E330, &qword_144CD0);
  sub_A8F04(v7, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  v19 = sub_9A0A8();
  v20(v19);
  return v18;
}

void sub_A8BA4()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:0];

  v2 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v3 = sub_BBD88(2);

  sub_A7220(v3);
}

void sub_A8C1C()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:1];

  sub_A7220(0);
}

id sub_A8D14(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullSheetOverlayPageViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FullSheetOverlayPageViewController(uint64_t a1)
{
  result = qword_19EA38;
  if (!qword_19EA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A8E40(uint64_t a1)
{
  result = type metadata accessor for FullSheetOverlayPageDestination(319);
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

uint64_t sub_A8F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_A8F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A8FCC()
{

  return type metadata accessor for FullSheetOverlayPageViewController(0);
}

id sub_A8FFC()
{
  v3 = *(v1 + 776);

  return [v0 v3];
}

void *GridLayout.init(metrics:items:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = memcpy(a3 + 1, __src, 0xB9uLL);
  *a3 = a2;
  return result;
}

Swift::Int sub_A9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_13C214();
  a4(v8, v6);
  return sub_13C234();
}

__n128 GridLayout.Metrics.init(columnInterItemSpacing:distribution:dynamicDimension:rowHeight:rowInterItemSpacing:rowItemAlignment:rowOccupancy:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_9414(a1, a9);
  *(a9 + 40) = a2 & 1;
  v17 = *(a3 + 16);
  *(a9 + 48) = *a3;
  *(a9 + 64) = v17;
  *(a9 + 80) = *(a3 + 32);
  sub_9414(a5, a9 + 128);
  *(a9 + 168) = a6 & 1;
  result = *a4;
  v19 = *(a4 + 16);
  *(a9 + 88) = *a4;
  *(a9 + 104) = v19;
  *(a9 + 120) = *(a4 + 32);
  *(a9 + 176) = a7;
  *(a9 + 184) = a8 & 1;
  return result;
}

uint64_t GridLayout.Metrics.rowInterItemSpacing.setter(__int128 *a1)
{
  sub_3C04((v1 + 128));

  return sub_9414(a1, v1 + 128);
}

uint64_t GridLayout.Metrics.rowOccupancy.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

double GridLayout.Metrics.maxColumnWidth.getter@<D0>(uint64_t a1@<X8>)
{
  sub_4F14C(v1 + 48, &v4);
  if (v5)
  {
    sub_9414(&v4, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void GridLayout.measurements(fitting:in:)(uint64_t a1, double a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();

  sub_A958C(0, a1, v3, ObjectType, 0.0, 0.0, a2, a3);
}

uint64_t GridLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, CGFloat a5)
{
  swift_getObjectType();
  v8 = sub_AA804();
  sub_A958C(v9, a1, v5, v10, v8, v11, v12, a5);

  return sub_13A2E4();
}

void sub_A958C(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5, double a6, double a7, CGFloat a8)
{
  *&v118 = a4;
  v115 = a6;
  v116 = a8;
  v114 = a5;
  v119 = a1;
  v12 = sub_13C114();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(a3 + 1, a3[4]);
  sub_AA918();
  sub_AA8A8();
  v16 = *(v13 + 8);
  v16(v15, v12);
  sub_162F0(a3 + 17, a3[20]);
  sub_AA918();
  v100 = sub_AA8A8();
  v16(v15, v12);
  v112 = a2;
  v103 = sub_AA4A0(a3, a2);
  if (a3[24])
  {
    v17 = -1;
LABEL_9:
    v20 = _swiftEmptyArrayStorage;
    v133 = _swiftEmptyArrayStorage;
    v134.origin.x = sub_AA804();
    v21 = v116;
    v134.size.height = v116;
    MinX = CGRectGetMinX(v134);
    v135.origin.x = sub_AA804();
    v135.size.height = v21;
    MinY = CGRectGetMinY(v135);
    v24 = *a3;
    v102 = a3 + 7;
    v104 = *(v24 + 16);
    swift_beginAccess();
    v105 = v24;
    v99 = v24 + 32;
    v25 = 0.0;
    v26 = 0.0;
    v117 = a7;
    v113 = v17;
    while (1)
    {
      v27 = v104;
      *&v29 = sub_AA854();
      if (v28 != v32)
      {
        if (v28 >= *(v105 + 16))
        {
LABEL_113:
          __break(1u);
          return;
        }

        v27 = v28 + 1;
        *&v126 = v28;
        sub_4B14(v99 + 40 * v28, &v126 + 8);
        v31 = v126;
        v30 = v127;
        v29 = v128;
      }

      v132[0] = v31;
      v132[1] = v30;
      v132[2] = v29;
      if (!v29)
      {
        v139.origin.x = sub_AA7F8();
        CGRectGetMinY(v139);

        return;
      }

      v118 = v31;
      sub_9414((v132 + 8), v131);
      sub_162F0(v131, v131[3]);
      sub_13A394();
      v34 = v33;
      v36 = v35;
      v110 = *(v105 + 16) - 1;
      v37 = v118;
      sub_4F14C(v102, &v126);
      v38 = *(&v127 + 1);
      sub_4F258(&v126);
      v108 = v27;
      v109 = v37;
      if (v38)
      {
        break;
      }

      v101 = v34;
      if (MinX + v34 > v117)
      {
        v111 = *(a3 + 176);
        v51 = v20[2];
        v107 = v26;
        if (v51)
        {
          v52 = (v20 + 4);
          v34 = 0.0;
          v53 = v51;
          do
          {
            sub_AA5F4(v52, &v126);
            sub_AA6B8();
            v52 += 56;
            --v53;
          }

          while (v53);
        }

        else
        {
          v34 = 0.0;
        }

        v54 = 0;
        v106 = MinX;
        v98 = v36;
        while (1)
        {
          if (v54 == v51)
          {
            sub_AA7D8();
            v54 = v51;
            v55.n128_f64[0] = sub_AA854();
          }

          else
          {
            if (v54 >= v20[2])
            {
              goto LABEL_110;
            }

            *&v120 = v54;
            sub_AA5F4(&v20[7 * v54 + 4], &v120 + 8);
            v55 = sub_AA8CC();
            ++v54;
            v26 = v124;
            v36 = v125;
          }

          sub_AA7E8(v55, v56, v57);
          v129 = v26;
          v130 = v36;
          if (!v61)
          {
            break;
          }

          sub_AA74C(v58, v59, v60);
          v123 = v26;
          v124 = v36;
          if (v119)
          {
            v25 = MinY;
            if ((v111 & 1) == 0)
            {
              sub_AA83C();
              sub_AA6F0();
            }

            v8 = v121;
            v17 = v122;
            sub_162F0(&v120, v121);
            sub_AA71C();
            sub_13A354();
            sub_AA8EC();
          }

          sub_AA694();
          if ((v62 & 1) == 0)
          {
            sub_AA83C();
            sub_AA938();
          }

          v63 = sub_AA7C8();
          sub_CC68(v63, &qword_19C5A0, &unk_147720);
        }

        v26 = v107;
        v64 = v100 + 0.0;
        if (v107 <= MinX - v106)
        {
          v26 = MinX - v106;
        }

        v136.origin.x = sub_AA7F8();
        MinX = CGRectGetMinX(v136);
        MinY = MinY + v64;
        v133 = _swiftEmptyArrayStorage;

        v20 = _swiftEmptyArrayStorage;
        LOBYTE(v27) = v108;
        v36 = v98;
      }

      sub_4B14(v131, &v126);
      *(&v128 + 1) = v101;
      v129 = v36;
      sub_AA8F8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_AA860();
        v20 = v96;
      }

      v65 = v20[2];
      v66 = v65 + 1;
      if (v65 >= v20[3] >> 1)
      {
        sub_AA884();
        v20 = v97;
      }

      sub_AA788();
      if (v66 != v17)
      {
        goto LABEL_79;
      }

      sub_AA8D8();
      do
      {
        sub_AA5F4(v8, &v126);
        sub_AA6B8();
        v8 += 56;
        --v66;
      }

      while (v66);
      v67 = 0;
      v106 = MinX;
      while (1)
      {
        if (v67 == v17)
        {
          sub_AA7D8();
          v67 = v17;
          v68.n128_f64[0] = sub_AA854();
        }

        else
        {
          if ((v67 & 0x8000000000000000) != 0)
          {
            goto LABEL_111;
          }

          if (v67 >= v20[2])
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          sub_AA814();
          v68 = sub_AA8CC();
          v67 = 0;
          v26 = v124;
          v36 = v125;
        }

        sub_AA7E8(v68, v69, v70);
        v129 = v26;
        v130 = v36;
        if (!v74)
        {
          break;
        }

        sub_AA74C(v71, v72, v73);
        v123 = v26;
        v124 = v36;
        if (v119)
        {
          v25 = MinY;
          if ((v27 & 1) == 0)
          {
            sub_AA83C();
            sub_AA6F0();
          }

          v17 = v121;
          v8 = v122;
          sub_162F0(&v120, v121);
          sub_AA71C();
          sub_13A354();
          sub_AA8EC();
        }

        sub_AA694();
        if ((v75 & 1) == 0)
        {
          sub_AA83C();
          sub_AA938();
        }

        v76 = sub_AA7C8();
        sub_CC68(v76, &qword_19C5A0, &unk_147720);
      }

LABEL_80:
      v26 = v107;
      if (v107 <= MinX - v106)
      {
        v26 = MinX - v106;
      }

      v78 = v109;
      v77 = v110;
      v79 = v100;
      if (v110 == v109)
      {
        v79 = v25;
      }

      v36 = v34 + v79;
      v137.origin.x = sub_AA7F8();
      MinX = CGRectGetMinX(v137);
      MinY = MinY + v36;
      v133 = _swiftEmptyArrayStorage;

      v20 = _swiftEmptyArrayStorage;
LABEL_85:
      if (v77 == v78)
      {
        v80 = v20[2];
        if (v80)
        {
          v107 = v26;
          v81 = *(a3 + 176);
          v82 = (v20 + 4);
          v83 = v80;
          do
          {
            sub_AA5F4(v82, &v126);
            sub_AA6B8();
            v82 += 56;
            --v83;
          }

          while (v83);
          v84 = 0;
          v106 = MinX;
          v17 = v113;
          while (1)
          {
            if (v84 == v80)
            {
              sub_AA7D8();
              v84 = v80;
              v85.n128_f64[0] = sub_AA854();
            }

            else
            {
              if (v84 >= v20[2])
              {
                goto LABEL_109;
              }

              *&v120 = v84;
              sub_AA5F4(&v20[7 * v84 + 4], &v120 + 8);
              v85 = sub_AA8CC();
              ++v84;
              v36 = v124;
              v26 = v125;
            }

            sub_AA7E8(v85, v86, v87);
            v129 = v36;
            v130 = v26;
            if (!v91)
            {
              break;
            }

            sub_AA74C(v88, v89, v90);
            v123 = v36;
            v124 = v26;
            if (v119)
            {
              v25 = MinY;
              if ((v81 & 1) == 0)
              {
                sub_AA83C();
                sub_AA6F0();
              }

              v17 = v121;
              v8 = v122;
              sub_162F0(&v120, v121);
              sub_AA7F8();
              sub_13BE44();
              sub_13A354();
              sub_AA8EC();
            }

            sub_AA694();
            if ((v92 & 1) == 0)
            {
              sub_AA83C();
              sub_AA938();
            }

            v93 = sub_AA7C8();
            sub_CC68(v93, &qword_19C5A0, &unk_147720);
          }

          v26 = v107;
          if (v107 <= MinX - v106)
          {
            v26 = MinX - v106;
          }

          v138.origin.x = sub_AA7F8();
          MinX = CGRectGetMinX(v138);
          MinY = MinY + v25 + 0.0;
          v133 = _swiftEmptyArrayStorage;

          v20 = _swiftEmptyArrayStorage;
        }
      }

      sub_3C04(v131);
    }

    sub_4B14(v131, &v126);
    *(&v128 + 1) = v34;
    v129 = v36;
    sub_AA8F8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_AA860();
      v20 = v94;
    }

    v39 = v20[2];
    v40 = v39 + 1;
    if (v39 >= v20[3] >> 1)
    {
      sub_AA884();
      v20 = v95;
    }

    sub_AA788();
    if (v40 == v17)
    {
      sub_AA8D8();
      do
      {
        sub_AA5F4(v8, &v126);
        sub_AA6B8();
        v8 += 56;
        --v40;
      }

      while (v40);
      v41 = 0;
      v106 = MinX;
      while (1)
      {
        if (v41 == v17)
        {
          sub_AA7D8();
          v41 = v17;
          v42.n128_f64[0] = sub_AA854();
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (v41 >= v20[2])
          {
            goto LABEL_108;
          }

          sub_AA814();
          v42 = sub_AA8CC();
          v41 = 0;
          v26 = v124;
          v36 = v125;
        }

        sub_AA7E8(v42, v43, v44);
        v129 = v26;
        v130 = v36;
        if (!v48)
        {
          goto LABEL_80;
        }

        sub_AA74C(v45, v46, v47);
        v123 = v26;
        v124 = v36;
        if (v119)
        {
          v25 = MinY;
          if ((v27 & 1) == 0)
          {
            sub_AA83C();
            sub_AA6F0();
          }

          v17 = v121;
          v8 = v122;
          sub_162F0(&v120, v121);
          sub_AA71C();
          sub_13A354();
          sub_AA8EC();
        }

        sub_AA694();
        if ((v49 & 1) == 0)
        {
          sub_AA83C();
          sub_AA938();
        }

        v50 = sub_AA7C8();
        sub_CC68(v50, &qword_19C5A0, &unk_147720);
      }
    }

LABEL_79:
    v78 = v109;
    v77 = v110;
    goto LABEL_85;
  }

  if (a3[23])
  {
    v8 = a3[23];
    GridLayout.Metrics.maxColumnWidth.getter(&v120);
    if (v121)
    {
      sub_9414(&v120, &v126);
      v18 = *(&v127 + 1);
      v19 = v128;
      sub_162F0(&v126, *(&v127 + 1));
      sub_20038(v18, v19);
      sub_13A404();
      v16(v15, v12);
      sub_3C04(&v126);
    }

    else
    {
      sub_CC68(&v120, &qword_19AFF8, &unk_140270);
    }

    v17 = v8;
    goto LABEL_9;
  }
}

unint64_t sub_A9F5C()
{
  result = qword_19EA48;
  if (!qword_19EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19EA48);
  }

  return result;
}

unint64_t sub_A9FB4()
{
  result = qword_19EA50;
  if (!qword_19EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19EA50);
  }

  return result;
}

unint64_t sub_AA00C()
{
  result = qword_19EA58;
  if (!qword_19EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19EA58);
  }

  return result;
}

uint64_t sub_AA068(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AA0A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AA130(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AA170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GridLayout.Metrics.RowOccupancy(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GridLayout.Metrics.RowOccupancy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GridLayout.Metrics.RowOccupancy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_AA25C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AA278(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_AA2A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xAA374);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

double sub_AA3B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_AA3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AA438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_AA4A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4F1A8(a1 + 96, &v15);
  if (!v16)
  {
    return 1.79769313e308;
  }

  sub_9414(&v15, v12);
  v7 = v13;
  v8 = v14;
  sub_162F0(v12, v13);
  sub_20038(v7, v8);
  sub_13A404();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  sub_3C04(v12);
  return v10;
}

uint64_t sub_AA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19C5A0, &unk_147720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AA6B8()
{
  *(v0 + 352) = *(v0 + 416);
  v2 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 368);
  *(v0 + 320) = v2;
  *(v0 + 336) = *(v0 + 400);

  return sub_3C04((v0 + 304));
}

double sub_AA6F0()
{
  v2 = v1 - *(v0 + 240);
  sub_3C04((v0 + 192));
  return v2 * 0.5;
}

double sub_AA71C()
{

  sub_13BE44();
  return result;
}

uint64_t sub_AA74C(double a1, double a2, __n128 a3)
{
  *(v3 + 160) = a3;
  sub_9414(((v3 + 368) | 8), v3 + 248);

  return sub_9414((v3 + 248), v3 + 304);
}

uint64_t sub_AA788()
{
  *(v3 + 16) = v1;
  v6 = v3 + 32 + 56 * v2;
  v7 = *(v0 + 368);
  v8 = *(v0 + 384);
  v9 = *(v0 + 400);
  *(v6 + 48) = *(v0 + 416);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  *(v4 - 160) = v3;

  return swift_endAccess();
}

void sub_AA7E8(__n128 a1, __n128 a2, __n128 a3)
{
  v3[23] = a3;
  v3[24] = a2;
  v3[25] = a1;
}

uint64_t sub_AA814()
{
  *(v0 + 304) = v1;

  return sub_AA5F4(v2 + 56 * v1, (v0 + 304) | 8);
}

uint64_t sub_AA83C()
{

  return sub_AA5F4(v0 + 304, v0 + 192);
}

void sub_AA860()
{

  sub_58AFC();
}

void sub_AA884()
{

  sub_58AFC();
}

double sub_AA8A8()
{

  sub_13A404();
  return result;
}

uint64_t sub_AA8F8()
{

  return swift_beginAccess();
}

uint64_t sub_AA918()
{

  return sub_20038(v0, v1);
}

uint64_t sub_AA938()
{

  return sub_3C04((v0 + 192));
}

uint64_t sub_AA964(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 44);

    return sub_52E0(v9, a2, v8);
  }
}

void *sub_AAA00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 44);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for HalfSheetPageDestination(uint64_t a1)
{
  result = qword_19EAB8;
  if (!qword_19EAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_AAACC(uint64_t a1)
{
  sub_139FA4();
  if (v1 <= 0x3F)
  {
    sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
    if (v2 <= 0x3F)
    {
      sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
      if (v3 <= 0x3F)
      {
        sub_AAC00(319, &unk_19EAC8, &protocol descriptor for ActionModel);
        if (v4 <= 0x3F)
        {
          sub_AAC00(319, &qword_19AE50, &protocol descriptor for DynamicText);
          if (v5 <= 0x3F)
          {
            sub_13B5D4();
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

uint64_t sub_AAC00(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_AAC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_AACC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a3;
  v5 = sub_4948(&qword_19A498, &unk_147A80);
  __chkstk_darwin(v5 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v6);
  v122 = &v112 - v7;
  v130 = sub_13B5D4();
  sub_9E94();
  v127 = v8;
  __chkstk_darwin(v9);
  v124 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_13B584();
  sub_9E94();
  v132 = v11;
  __chkstk_darwin(v12);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18B60();
  __chkstk_darwin(v15);
  v17 = &v112 - v16;
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  __chkstk_darwin(v21);
  sub_18B60();
  __chkstk_darwin(v22);
  v24 = &v112 - v23;
  v25 = type metadata accessor for HalfSheetPageDestination(0);
  sub_2B538();
  __chkstk_darwin(v26);
  v28 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v29 = swift_initStackObject();
  v135 = a2;
  v30 = v133;
  v31 = sub_9DB8(0x6F6974616D696E61, 0xE90000000000006ELL, v25, sub_ABE74, v134);
  if (v30)
  {
    v132[1](a1, v140);
    sub_13B5A4();
    sub_5224();
    return (*(v32 + 8))(a2);
  }

  v133 = 0;
  v114 = v20;
  v113 = v17;
  v116 = v29;
  v125 = v25;
  v126 = a2;
  v115 = v31;
  *v28 = v31;
  v117 = a1;
  sub_13B594();
  v34 = sub_13B564();
  v128 = v28;
  v35 = v132;
  v36 = v129;
  if (v34)
  {
    goto LABEL_6;
  }

  v37 = v132;
  sub_ABF3C();
  v38 = v133;
  sub_139BC4();
  if (v38)
  {

    sub_18BAC();
    sub_184DC(v136, &unk_19E320, &unk_140950);
LABEL_6:
    sub_13BAB4();
    v39 = sub_677B8();
    sub_9F18(v39);
    strcpy(v40, "dismissAction");
    *(v40 + 7) = -4864;
    *(v40 + 2) = v125;
    sub_2B538();
    (*(v41 + 104))();
    swift_willThrow();
    v37 = v35;
    v42 = v35[1];
    (v42)(v24, v140);

    sub_18B90();
    goto LABEL_7;
  }

  v42 = v35[1];
  (v42)(v24, v140);
  sub_249B4();
LABEL_7:
  v43 = v138;
  v44 = v128;
  *(v128 + 1) = v137;
  *(v44 + 3) = v43;
  v44[5] = v139;
  v45 = v117;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v46 = v36;
    v47 = sub_677B8();
    v48 = sub_18B70(v47);
    *v49 = 0xD000000000000013;
    v49[1] = 0x80000000001508D0;
    v50 = v125;
    v49[2] = v125;
    sub_2B538();
    (*(v51 + 104))();
    v133 = v48;
    swift_willThrow();

    v52 = v140;
    (v42)(v45, v140);
    (v42)(v46, v52);
    v53 = 0;
    v54 = 0;
    v55 = v126;
LABEL_10:
    v56 = v128;
    goto LABEL_11;
  }

  sub_139BC4();
  v59 = v36;
  v60 = v140;
  (v42)(v59, v140);
  sub_249B4();
  sub_9414(&v137, (v128 + 16));
  v61 = v114;
  sub_13B594();
  v62 = sub_13B564();
  v55 = v126;
  if (v62)
  {
    sub_13BAB4();
    v63 = sub_677B8();
    v64 = v45;
    v65 = sub_9F18(v63);
    *v66 = 0xD000000000000012;
    v66[1] = 0x80000000001508F0;
    v50 = v125;
    v66[2] = v125;
    sub_2B538();
    (*(v67 + 104))();
    v133 = v65;
    swift_willThrow();

    (v42)(v64, v60);
    (v42)(v61, v60);
    v53 = 0;
    v54 = 1;
    goto LABEL_10;
  }

  v132 = v42;
  v133 = (v37 + 1);
  sub_139DB4();
  v68 = v61;
  v69 = v140;
  v70 = v132;
  (v132)(v68, v140);
  sub_249B4();
  sub_9414(&v137, (v128 + 21));
  v71 = v113;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v72 = sub_677B8();
    sub_9F18(v72);
    *v73 = 0xD000000000000015;
    v73[1] = 0x8000000000150910;
    v73[2] = v125;
    sub_2B538();
    (*(v74 + 104))();
    swift_willThrow();
    (v70)(v71, v69);

    sub_18B90();
    v107 = v70;
  }

  else
  {
    sub_139BC4();
    v107 = v132;
    (v132)(v71, v140);
    sub_249B4();
  }

  v75 = v138;
  v56 = v128;
  *(v128 + 3) = v137;
  *(v56 + 64) = v75;
  *(v56 + 80) = v139;
  v76 = v120;
  sub_ABF64();
  v77 = sub_13B564();
  v78 = v125;
  if (v77)
  {
    sub_13BAB4();
    v79 = sub_677B8();
    v80 = sub_18B70(v79);
    sub_ABF50(v80, v81);
    sub_2B538();
    (*(v82 + 104))();
    swift_willThrow();
    v108 = v140;
    (v107)(v76, v140);

    sub_18B90();
  }

  else
  {
    sub_ABF3C();
    sub_139DB4();
    v108 = v140;
    (v107)(v76, v140);
    sub_249B4();
  }

  v83 = v138;
  *(v56 + 88) = v137;
  *(v56 + 104) = v83;
  *(v56 + 120) = v139;
  v84 = v121;
  sub_ABF64();
  if (sub_13B564())
  {
LABEL_32:
    sub_13BAB4();
    v87 = sub_677B8();
    v88 = sub_18B70(v87);
    sub_ABF50(v88, v89);
    sub_2B538();
    (*(v90 + 104))();
    swift_willThrow();
    (v107)(v84, v108);

    v91 = v122;
    v92 = v130;
    sub_53A8(v122, 1, 1, v130);
    sub_13B5C4();
    if (sub_52E0(v91, 1, v92) != 1)
    {
      sub_184DC(v91, &qword_19A498, &unk_147A80);
    }

    v93 = v127;
    goto LABEL_36;
  }

  v85 = v119;
  sub_ABCA8(v84, v126, v119);
  v86 = v130;
  if (sub_52E0(v85, 1, v130) == 1)
  {
    sub_184DC(v85, &qword_19A498, &unk_147A80);
    v108 = v140;
    goto LABEL_32;
  }

  (v132)(v84, v140);
  v93 = v127;
  v94 = *(v127 + 32);
  v95 = v122;
  v94(v122, v85, v86);
  sub_53A8(v95, 0, 1, v86);
  v94(v124, v95, v86);
LABEL_36:
  (*(v93 + 32))(v56 + *(v78 + 44), v124, v130);
  v96 = v123;
  v97 = v78;
  v98 = v117;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    v99 = v56;
    v100 = v126;
    sub_139DB4();
    v109 = v140;
    v110 = v132;
    (v132)(v117, v140);
    (v110)(v96, v109);
    sub_249B4();
    sub_9414(&v137, v99 + 208);
    sub_ABE7C(v99, v118);
    sub_13B5A4();
    sub_5224();
    (*(v111 + 8))(v100);
    return sub_ABEE0(v99);
  }

  sub_13BAB4();
  v101 = sub_677B8();
  v102 = sub_18B70(v101);
  *v103 = 0x656C746974;
  v103[1] = 0xE500000000000000;
  v103[2] = v97;
  sub_2B538();
  (*(v104 + 104))();
  v133 = v102;
  swift_willThrow();

  v105 = v140;
  v106 = v132;
  (v132)(v98, v140);
  (v106)(v96, v105);
  v53 = 1;
  v54 = 1;
  v55 = v126;
  v50 = v97;
LABEL_11:
  sub_13B5A4();
  sub_5224();
  (*(v57 + 8))(v55);

  result = sub_184DC(v56 + 8, &unk_19E320, &unk_140950);
  v58 = v130;
  if (v53)
  {
    sub_184DC(v56 + 48, &unk_19E320, &unk_140950);
    result = sub_184DC(v56 + 88, &qword_19E960, &qword_13FD30);
    if (!v54)
    {
LABEL_13:
      if (!v53)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  else if (!v54)
  {
    goto LABEL_13;
  }

  result = sub_3C04((v56 + 128));
  if (v53)
  {
LABEL_14:
    sub_3C04((v56 + 168));
    return (*(v127 + 8))(v56 + *(v50 + 44), v58);
  }

  return result;
}

uint64_t sub_ABCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B5B4();
  v14 = sub_13B5D4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_ABE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HalfSheetPageDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ABEE0(uint64_t a1)
{
  v2 = type metadata accessor for HalfSheetPageDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_ABF50(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
  return result;
}

uint64_t sub_ABF64()
{

  return sub_13B594();
}

uint64_t HalfSheetPageLayout.init(metrics:contentView:footerView:titleView:primaryButton:secondaryButton:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_3C04(a6);
  sub_3C04(a5);
  sub_3C04(a3);
  memcpy(a7, a1, 0x48uLL);
  v13 = *(a2 + 16);
  *(a7 + 72) = *a2;
  *(a7 + 88) = v13;
  *(a7 + 104) = *(a2 + 32);

  return sub_9414(a4, a7 + 112);
}

uint64_t HalfSheetPageFooterLayout.FooterMetrics.buttonMaximumWidth.setter(__int128 *a1)
{
  sub_3C04((v1 + 32));

  return sub_9414(a1, v1 + 32);
}

void HalfSheetPageLayout.placeChildren(relativeTo:in:)(uint64_t a1)
{
  sub_AD97C();
  v2 = v1;
  v3 = sub_13C114();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v26.origin.x = sub_AD914();
  CGRectGetWidth(v26);
  v27.origin.x = sub_AD914();
  CGRectGetHeight(v27);
  sub_162F0((v1 + 112), *(v1 + 136));
  sub_13A394();
  v28.origin.x = sub_AD914();
  CGRectGetMinX(v28);
  v29.origin.x = sub_AD914();
  CGRectGetMinY(v29);
  sub_162F0((v2 + 112), *(v2 + 136));
  sub_AD914();
  sub_13BE44();
  sub_13A354();
  sub_2DAFC(v1 + 72, &v20);
  if (v21)
  {
    sub_9414(&v20, v25);
    sub_AC0B0(v1, &v20);
    v10 = v23;
    v11 = v24;
    sub_162F0(v22, v23);
    sub_20038(v10, v11);
    sub_13A404();
    v13 = v12;
    (*(v5 + 8))(v9, v3);
    sub_3C04(v22);
    v30.origin.x = sub_AD914();
    MaxY = CGRectGetMaxY(v30);
    v31.origin.x = sub_AD940();
    v15 = MaxY - CGRectGetMaxY(v31);
    if (v13 > v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v32.origin.x = sub_AD914();
    MinX = CGRectGetMinX(v32);
    v33.origin.x = sub_AD940();
    v18 = CGRectGetMaxY(v33);
    v34.origin.x = sub_AD914();
    Width = CGRectGetWidth(v34);
    sub_162F0(v25, v25[3]);
    sub_AD914();
    sub_13BE44();
    sub_13A354();
    v35.origin.x = sub_AD914();
    CGRectGetWidth(v35);
    v36.origin.x = MinX;
    v36.origin.y = v18;
    v36.size.width = Width;
    v36.size.height = v16;
    CGRectGetHeight(v36);
    sub_162F0((v2 + 112), *(v2 + 136));
    sub_13A344();
    sub_13BE54();
    CGRectGetHeight(v37);
    sub_3C04(v25);
  }

  else
  {
    sub_CC68(&v20, &unk_1A0730, &qword_140F10);
  }

  sub_13A2B4();
  sub_AD9A4();
}

uint64_t HalfSheetPageFooterLayout.init(metrics:footerView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  memcpy(a5, __src, 0x71uLL);
  sub_9414(a2, a5 + 120);
  sub_9414(a3, a5 + 160);

  return sub_9414(a4, a5 + 200);
}

double HalfSheetPageFooterLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = sub_13A514();
  v5 = sub_5A838(v4, &v42);
  __chkstk_darwin(v5);
  sub_21548();
  sub_2159C(v6);
  v7 = sub_13A4C4();
  v8 = sub_5A838(v7, &v41);
  v35 = v9;
  __chkstk_darwin(v8);
  sub_21548();
  v33 = v10;
  v30 = sub_13A4B4();
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  sub_21548();
  sub_2159C(v12);
  v31 = sub_13A454();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  sub_9EC0();
  v15 = v14 - v13;
  v24 = v14 - v13;
  v16 = *v3;
  sub_162F0(v3 + 4, v3[7]);
  sub_13A3F4();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  *(&v39 + 1) = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  *&v38 = v16;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v29 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v28 = *(v34 + 104);
  v28(v15);
  sub_4948(&qword_19AFE8, &unk_140260);
  *(swift_allocObject() + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  v27 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v26 = v35[13];
  v26(v33);
  sub_13A4E4();
  v25 = *++v35;
  (*v35)(v33);
  v23 = *(v11 + 8);
  v23(v32, v30);
  v17 = *(v34 + 8);
  v17(v24, v31);
  sub_CC68(v36, &qword_19AFF8, &unk_140270);
  sub_3C04(&v38);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (v28)(v24, v29, v31);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  *&v36[0] = v18;
  sub_13BF64();
  (v26)(v33, v27);
  sub_13A4E4();
  v25(v33);
  v23(v32, v30);
  v17(v24, v31);
  sub_CC68(&v38, &qword_19AFF8, &unk_140270);
  sub_13A4D4();
  sub_13A464();
  v20 = v19;
  sub_40750();
  v21();
  return v20;
}

void HalfSheetPageFooterLayout.placeChildren(relativeTo:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_AD97C();
  a27 = v29;
  a28 = v30;
  v31 = sub_13A314();
  v32 = sub_5A838(v31, &a18);
  __chkstk_darwin(v32);
  sub_21548();
  sub_2159C(v33);
  v34 = sub_13A514();
  v35 = sub_5A838(v34, &a15);
  __chkstk_darwin(v35);
  sub_21548();
  sub_2159C(v36);
  v37 = sub_13A4C4();
  v38 = sub_5A838(v37, &a23);
  v74 = v39;
  __chkstk_darwin(v38);
  sub_21548();
  sub_2159C(v40);
  v73 = sub_13A4B4();
  __chkstk_darwin(v73);
  sub_21548();
  sub_2159C(v41);
  v42 = sub_13A454();
  v43 = sub_5A838(v42, &a24);
  v75 = v44;
  __chkstk_darwin(v43);
  sub_21548();
  sub_2159C(v45);
  v46 = sub_13C114();
  sub_9E94();
  v48 = v47;
  __chkstk_darwin(v49);
  sub_9EC0();
  v52 = v51 - v50;
  v53 = v28;
  v54 = *v28;
  v55 = v28[12];
  v56 = v53[13];
  v57 = v53;
  sub_162F0(v53 + 9, v55);
  sub_20038(v55, v56);
  sub_13A404();
  v59 = v58;
  (*(v48 + 8))(v52, v46);
  v82.origin.x = sub_3001C();
  CGRectGetWidth(v82);
  sub_162F0(v57 + 4, v57[7]);
  sub_13A3F4();
  v83.origin.x = sub_3001C();
  CGRectGetMinX(v83);
  v84.origin.x = sub_3001C();
  CGRectGetMinY(v84);
  v85.origin.x = sub_3001C();
  CGRectGetHeight(v85);
  sub_4948(&qword_19AFE0, &unk_1402A0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v80 = &type metadata for CGFloat;
  v81 = &protocol witness table for CGFloat;
  v79[0] = v54;
  *(&v77 + 1) = &type metadata for CGFloat;
  v78 = &protocol witness table for CGFloat;
  *&v76 = v59;
  v68 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v69 = *(v75 + 104);
  v69();
  sub_4948(&qword_19AFE8, &unk_140260);
  *(swift_allocObject() + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  v67 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v66 = *(v74 + 104);
  v66();
  sub_13A4E4();
  v65 = *(v74 + 8);
  v65();
  sub_40750();
  v64 = v60;
  v60(v70, v73);
  v63 = *(v75 + 8);
  v63();
  sub_CC68(&v76, &qword_19AFF8, &unk_140270);
  sub_3C04(v79);
  v80 = &type metadata for Double;
  v81 = &protocol witness table for Double;
  v79[0] = 0;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  (v69)(v72, v68);
  *(swift_allocObject() + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  sub_13BF64();
  (v66)(v71, v67);
  sub_13A4E4();
  v65();
  v64(v70, v73);
  v63();
  sub_CC68(&v76, &qword_19AFF8, &unk_140270);
  sub_3C04(v79);
  sub_13A4D4();
  sub_13A474();
  LOBYTE(v48) = *(v57 + 112);
  v86.origin.x = sub_3001C();
  CGRectGetMaxY(v86);
  if ((v48 & 1) == 0)
  {
    sub_13A2D4();
  }

  sub_162F0(v57 + 15, v57[18]);
  v87.origin.x = sub_3001C();
  CGRectGetMidX(v87);
  sub_13A2D4();
  sub_13A2D4();
  sub_13A2D4();
  sub_13A354();
  v88.origin.x = sub_3001C();
  CGRectGetMidX(v88);
  sub_13A2D4();
  sub_13A2D4();
  sub_13A2D4();
  sub_13A2C4();
  sub_40750();
  v61();
  sub_40750();
  v62();
  sub_AD9A4();
}

uint64_t sub_AD644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AD684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AD6F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AD734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AD798(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AD7D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AD868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AD8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _s20StoreDynamicUIPlugin25HalfSheetPageFooterLayoutV0G7MetricsV13buttonMarginsSo23NSDirectionalEdgeInsetsVvs_0(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

double sub_AD940()
{
  sub_162F0((v0 + 112), *(v0 + 136));

  sub_13A344();
  return result;
}

char *sub_AD9CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_showInlineFooter) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubject;
  sub_4948(&unk_19EBD0, &unk_1479E0);
  swift_allocObject();
  *(v0 + v4) = sub_13A644();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubscription) = 0;
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView) = 0;
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur;
  *(v1 + v6) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButton;
  v8 = type metadata accessor for DynamicButton(0);
  v9 = [objc_allocWithZone(v8) init];
  v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  *(v1 + v7) = v9;
  v10 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButtonHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton;
  v12 = [objc_allocWithZone(v8) init];
  v12[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 2;
  sub_8F358(2);
  *(v1 + v11) = v12;
  v13 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButtonHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView) = sub_B1108(objc_allocWithZone(UIScrollView));
  v14 = sub_B1108(objc_allocWithZone(UIView));
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView) = v14;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 ams_primaryBackground];
  [v16 setBackgroundColor:v17];

  v18 = objc_allocWithZone(sub_139C04());
  v19 = sub_B1108(v18);
  v20 = *(v1 + v5);
  *(v1 + v5) = v19;

  v21 = sub_3001C();
  v24 = objc_msgSendSuper2(v22, v23, v21, v1, ObjectType);
  v25 = [v15 clearColor];
  [v24 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView;
  [*&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v24 addSubview:*&v24[v26]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView]];
  v27 = *&v24[v26];
  v28 = sub_ADD34();
  [v27 addSubview:v28];

  if (*&v24[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView])
  {
    [*&v24[v26] addSubview:?];
  }

  sub_ADD98();
  [*&v24[v26] setDelegate:v24];
  sub_ADE40();

  return v24;
}

id sub_ADD34()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_AE6B0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_ADD98()
{
  v1 = sub_ADD34();
  v0 = **(&off_18AA88 + sub_AE618());
  sub_CACC(0, &unk_19EC20, UIFont_ptr);
  sub_BB1E0(v0, *&UIFontWeightSemibold, 0);

  sub_139B94();
}

double sub_ADE40()
{
  v1 = sub_4948(&unk_19EBE0, &unk_13F500);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_13BF24();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4948(&qword_19A5F0, &qword_1479F0);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_4948(&unk_19EBF0, &unk_13F510);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v22 - v13;
  v33 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubject);

  sub_13BF14();
  v23 = objc_opt_self();
  v14 = [v23 mainRunLoop];
  v32 = v14;
  v22 = sub_13BF04();
  sub_53A8(v3, 1, 1, v22);
  sub_4948(&unk_19EBD0, &unk_1479E0);
  sub_CACC(0, &qword_19A5F8, NSRunLoop_ptr);
  sub_CBC0(&unk_19EC00, &unk_19EBD0, &unk_1479E0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_C944();
  sub_13A684();
  sub_CC68(v3, &unk_19EBE0, &unk_13F500);

  (*(v25 + 8))(v6, v26);

  v15 = [v23 mainRunLoop];
  v33 = v15;
  sub_53A8(v3, 1, 1, v22);
  sub_CBC0(&unk_19EC10, &qword_19A5F0, &qword_1479F0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v16 = v24;
  v17 = v28;
  sub_13A674();
  sub_CC68(v3, &unk_19EBE0, &unk_13F500);

  (*(v29 + 8))(v10, v17);
  swift_allocObject();
  v18 = v27;
  swift_unknownObjectWeakInit();
  sub_CBC0(&qword_19A608, &unk_19EBF0, &unk_13F510, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v19 = v30;
  v20 = sub_13A6B4();

  (*(v31 + 8))(v16, v19);
  *(v18 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubscription) = v20;

  return result;
}

void sub_AE334()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_showInlineFooter) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubject;
  sub_4948(&unk_19EBD0, &unk_1479E0);
  swift_allocObject();
  *(v0 + v3) = sub_13A644();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetchSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView) = 0;
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur;
  *(v1 + v4) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButton;
  v6 = type metadata accessor for DynamicButton(0);
  v7 = [objc_allocWithZone(v6) init];
  v7[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  sub_8F358(0);
  *(v1 + v5) = v7;
  v8 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButtonHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton;
  v10 = [objc_allocWithZone(v6) init];
  v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 2;
  sub_8F358(2);
  *(v1 + v9) = v10;
  v11 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButtonHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel) = 0;
  sub_13C094();
  __break(1u);
}

void sub_AE4E8()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView];
    v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView];
    v4 = v1;
    [v2 insertSubview:v4 belowSubview:v3];
    [v0 setNeedsLayout];
  }
}

void sub_AE594(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_AE4E8();
}

unint64_t sub_AE618()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  sub_CACC(0, &qword_19E9A0, UIApplication_ptr);
  if (v1 == &dword_0 + 1)
  {
    return static UIApplication.isCompact()() & 1;
  }

  if (static UIApplication.hasNotch()())
  {
    return 1;
  }

  return 2;
}

uint64_t sub_AE6B0()
{
  v0 = [objc_opt_self() ams_primaryText];
  v1 = sub_13A2A4();
  v7[3] = v1;
  v7[4] = &protocol witness table for FontSource;
  v2 = sub_CC08(v7);
  v3 = **(&off_18AA88 + sub_AE618());
  sub_139BB4();
  *v2 = v3;
  v2[1] = *&UIFontWeightSemibold;
  v4 = enum case for FontUseCase.preferredFontDerivative(_:);
  v5 = sub_13A3E4();
  (*(*(v5 - 8) + 104))(v2, v4, v5);
  (*(*(v1 - 8) + 104))(v2, enum case for FontSource.useCase(_:), v1);
  return sub_139BA4();
}

uint64_t sub_AE80C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_13A314();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v89 - v8;
  __chkstk_darwin(v10);
  v12 = &v89 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v89 - v15;
  v110.receiver = v1;
  v110.super_class = ObjectType;
  objc_msgSendSuper2(&v110, "layoutSubviews", v14);
  [v1 bounds];
  result = CGRectIsEmpty(v111);
  if ((result & 1) == 0)
  {
    v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView];
    v19 = sub_3001C();
    [v20 v21];
    v22 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView];
    if (v22)
    {
      v23 = v1;
      v24 = v16;
      v25 = v12;
      v26 = v6;
      v27 = v9;
      v28 = v3;
      v29 = v4;
      v30 = v18;
      v31 = v22;
      sub_AEDF8(v31);

      v18 = v30;
      v4 = v29;
      v3 = v28;
      v9 = v27;
      v6 = v26;
      v12 = v25;
      v16 = v24;
      v1 = v23;
    }

    sub_AEEC8(v109);
    if (v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_showInlineFooter] == 1)
    {
      [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur] setHidden:1];
      v32 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView];
      v33 = [v18 subviews];
      sub_CACC(0, &qword_19E9A8, UIView_ptr);
      sub_13BC24();

      v34 = sub_624D0();

      [v18 insertSubview:v32 atIndex:v34];
      sub_AF0B4(&v93);
      v35 = sub_B112C();
      HalfSheetPageLayout.placeChildren(relativeTo:in:)(v35);
      sub_13A304();
      sub_13A2D4();
      HalfSheetPageFooterLayout.placeChildren(relativeTo:in:)(v1, v36, v37, v38, v39, v40, v41, v42, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
      sub_13A2D4();
      v44 = v43;
      sub_13A2D4();
      v46 = v44 + v45;
      v112.origin.x = sub_3001C();
      Height = CGRectGetHeight(v112);
      sub_13A2D4();
      v50 = v49;
      if (Height < v46)
      {
        sub_13A2D4();
        v52 = v51;
        [v32 frame];
        v48 = v52 + CGRectGetHeight(v113);
      }

      [v18 setContentSize:{v50, v48}];
      v53 = *(v4 + 8);
      v53(v12, v3);
      v53(v16, v3);
      sub_B1044(&v93);
    }

    else
    {
      v92 = v18;
      v54 = sub_B112C();
      HalfSheetPageFooterLayout.placeChildren(relativeTo:in:)(v54, v55, v56, v57, v58, v59, v60, v61, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
      v62 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur];
      [v62 setHidden:0];
      v63 = [v1 superview];
      if (v63)
      {
        v64 = v63;
        [v63 layoutMargins];
        v90 = v66;
        v91 = v65;

        v114.origin.x = sub_3001C();
        MinX = CGRectGetMinX(v114);
        v68 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView];
        [v68 frame];
        MinY = CGRectGetMinY(v115);
        v116.origin.x = sub_3001C();
        Width = CGRectGetWidth(v116);
        [v68 frame];
        [v62 setFrame:{MinX, MinY, Width, CGRectGetHeight(v117)}];
        [v62 frame];
        sub_13BE54();
        [v62 setFrame:?];
      }

      sub_13A2D4();
      sub_13BE34();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      sub_AF0B4(&v93);
      HalfSheetPageLayout.placeChildren(relativeTo:in:)(v1);
      sub_13A2D4();
      v80 = v79;
      v118.origin.x = v72;
      v118.origin.y = v74;
      v118.size.width = v76;
      v118.size.height = v78;
      v81 = CGRectGetHeight(v118);
      sub_13A2D4();
      v84 = v83;
      if (v81 < v80)
      {
        sub_13A2D4();
        v86 = v85;
        [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView] frame];
        v82 = v86 + CGRectGetHeight(v119);
      }

      [v92 setContentSize:{v84, v82}];
      v87 = sub_AF298(1);
      v88 = *(v4 + 8);
      v88(v6, v3, v87);
      sub_B1044(&v93);
      (v88)(v9, v3);
    }

    return sub_B1098(v109);
  }

  return result;
}

id sub_AEDF8(char *a1)
{
  v2 = direct field offset for AnimationView.animation;
  result = swift_beginAccess();
  if (!*&a1[v2])
  {
    result = [a1 frame];
    if (v4 > 0.0)
    {
      sub_4948(&unk_19EBD0, &unk_1479E0);
      sub_CBC0(&qword_19A610, &unk_19EBD0, &unk_1479E0, &protocol conformance descriptor for PassthroughSubject<A, B>);
      return sub_13A654();
    }
  }

  return result;
}

id sub_AEEC8@<X0>(uint64_t a1@<X8>)
{
  v13 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton);
  if (![v13 isHidden])
  {
    goto LABEL_4;
  }

  if (sub_AE618())
  {
    v3 = sub_13C144();

    if ((v3 & 1) == 0)
    {
LABEL_4:
      v4 = 5.0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v4 = 50.0;
LABEL_7:
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_13BE04();
  sub_AE618();
  v7 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView);
  *(a1 + 144) = sub_CACC(0, &qword_19E9A8, UIView_ptr);
  *(a1 + 152) = protocol witness table for UIView;
  *(a1 + 120) = v7;
  v8 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButton);
  v9 = type metadata accessor for DynamicButton(0);
  *(a1 + 184) = v9;
  *(a1 + 192) = protocol witness table for UIView;
  *(a1 + 160) = v8;
  *(a1 + 224) = v9;
  *(a1 + 232) = protocol witness table for UIView;
  *(a1 + 200) = v13;
  *a1 = 0x4038000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4076800000000000;
  *(a1 + 56) = &type metadata for CGFloat;
  *(a1 + 64) = &protocol witness table for CGFloat;
  *(a1 + 72) = v4;
  *(a1 + 96) = &type metadata for CGFloat;
  *(a1 + 104) = &protocol witness table for CGFloat;
  *(a1 + 112) = v5 & 1;
  v10 = v7;
  v11 = v8;

  return v13;
}

uint64_t sub_AF0B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AE618();
  v4 = qword_1479F8[v3];
  v5 = dbl_147A10[v3];
  v6 = v5;
  if ([*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton] isHidden])
  {
    if (sub_AE618())
    {
      v7 = sub_13C144();

      if (v7)
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 + 40.0;
      }
    }

    else
    {

      v6 = v5;
    }
  }

  v8 = [v1 superview];
  if (v8)
  {
    v9 = v8;
    [v8 directionalLayoutMargins];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v13 = 16.0;
    v11 = 16.0;
  }

  v14 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_contentView];
  if (v14)
  {
    v15 = sub_139C04();
    v16 = protocol witness table for UIView;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = v14;
  v18 = sub_ADD34();
  result = sub_139BB4();
  *(a1 + 136) = result;
  *(a1 + 144) = protocol witness table for UIView;
  *a1 = v4;
  *(a1 + 8) = v5 + v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6 + v13;
  *(a1 + 32) = 0x4059000000000000;
  *(a1 + 56) = &type metadata for Double;
  *(a1 + 64) = &protocol witness table for Double;
  *(a1 + 72) = v14;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v18;
  return result;
}

double sub_AF298(char a1)
{
  if ((v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_showInlineFooter] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_scrollView];
    [v3 contentSize];
    v5 = v4;
    [v1 bounds];
    v7 = v6;
    [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView] frame];
    v8 = v7 - CGRectGetHeight(v22);
    [v3 contentOffset];
    v10 = v9 + 1.0;
    [v3 contentSize];
    v12 = v11;
    [v1 bounds];
    v13 = v12 - CGRectGetHeight(v23);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v10 < v13;
    if (v8 < v5 && (a1 & 1) != 0)
    {
      v16 = objc_opt_self();
      v20[4] = sub_B1038;
      v20[5] = v15;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_E2448;
      v20[3] = &unk_18AA60;
      v17 = _Block_copy(v20);

      [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

      _Block_release(v17);
    }

    else
    {

      sub_B0A00(v19, v10 < v13);
    }
  }

  return result;
}

void sub_AF560(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_AF8A8(a1 + 21, a2, a3, (a1 + 11), a4, a5, a6);
  v15 = sub_ADD34();
  (*(&stru_158.size + (swift_isaMask & *v15)))(a1 + 26, a6);

  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel;
  [*&v7[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView____lazy_storage___titleLabel] setNeedsLayout];
  v17 = *&v7[v16];
  v18 = a1[29];
  v19 = a1[30];
  sub_162F0(a1 + 26, v18);
  v20 = *(v19 + 16);
  v21 = v17;
  v22 = v20(v18, v19);
  if (!v23)
  {
    v24 = a1[29];
    v25 = a1[30];
    sub_162F0(a1 + 26, v24);
    v22 = (*(v25 + 72))(v24, v25);
  }

  sub_118D5C(v22, v23, v21);

  sub_AFA98();
  v26 = *a1;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v27 = sub_139A14();
  sub_4910(v27, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v31 = ObjectType;
  v30[0] = v7;
  v7;
  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v30);
  sub_139974();
  v31 = sub_139FA4();
  v30[0] = v26;

  sub_139984();
  sub_CC68(v30, &unk_1A06F0, &unk_13EF80);
  sub_1399F4();

  sub_AFB08(v26);
}

id sub_AF8A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButtonHandler);
  v13 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButtonHandler);
  v14 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButtonHandler + 8);
  *v12 = a2;
  v12[1] = a3;
  sub_C9FC(v13, v14);
  v15 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButton);
  v16 = *&v15[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  v18 = a1[3];
  v17 = a1[4];
  v19 = sub_162F0(a1, v18);

  sub_91BF0(v19, a7, v16, v18, v17);
  [v15 addTarget:v7 action:"didTapPrimaryButton:" forControlEvents:64];
  sub_B0F90(a4, &v30);
  if (v31)
  {
    sub_9414(&v30, v32);
    if (a5)
    {
      v20 = (v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButtonHandler);
      v21 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButtonHandler);
      v22 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButtonHandler + 8);
      *v20 = a5;
      v20[1] = a6;
      sub_C9EC(a5, a6);

      sub_C9FC(v21, v22);
      v23 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton);
      v24 = *&v23[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
      v25 = v33;
      v26 = v34;
      v27 = sub_162F0(v32, v33);
      sub_91BF0(v27, a7, v24, v25, v26);
      [v23 addTarget:v7 action:"didTapSecondaryButton:" forControlEvents:64];
      sub_C9FC(a5, a6);
      return sub_3C04(v32);
    }

    sub_3C04(v32);
  }

  else
  {
    sub_CC68(&v30, &qword_19E960, &qword_13FD30);
  }

  return [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton) setHidden:1];
}

id sub_AFA98()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView);
  [v1 addSubview:*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_primaryButton)];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_secondaryButton);

  return [v1 addSubview:v2];
}

void sub_AFB08(uint64_t a1)
{
  v3 = [objc_allocWithZone(sub_139C04()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = v3;
  sub_AE594(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = v1;
  *(v5 + 4) = a1;
  v6 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher];
  v7 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher];
  v8 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher + 8];
  *v6 = sub_B0E50;
  v6[1] = v5;

  v9 = v1;

  sub_C9FC(v7, v8);

  v10 = *v6;
  if (*v6)
  {
    v11 = v6[1];

    (v10)(v12);

    sub_C9FC(v10, v11);
  }

  else
  {
  }
}

double sub_AFC78(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_139A64();
    v7 = sub_139A54();
    v8 = sub_139A44();

    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v6;
    v20 = sub_B0EA4;
    v21 = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_875D0;
    v19 = &unk_18A998;
    v10 = _Block_copy(aBlock);
    v11 = a2;

    v12 = v6;

    [v8 addFinishBlock:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v14 = sub_139A14();
    sub_4910(v14, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = type metadata accessor for HalfSheetPageView();
    aBlock[0] = a2;
    v15 = a2;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(aBlock);
    sub_139974();
    sub_1399E4();
  }

  return result;
}

void sub_AFF4C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = sub_13B4A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13B4E4();
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v18 = sub_139A14();
    sub_4910(v18, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13F4C0;
    v42 = type metadata accessor for HalfSheetPageView();
    aBlock[0] = a3;
    v19 = a3;
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(aBlock);
    sub_139974();
    v29 = direct field offset for Animation.animationUrl;
    v30 = sub_1397E4();
    v42 = v30;
    v31 = sub_CC08(aBlock);
    (*(*(v30 - 8) + 16))(v31, a4 + v29, v30);
    sub_139984();
    sub_CC68(aBlock, &unk_1A06F0, &unk_13EF80);
    sub_139974();
    swift_getErrorValue();
    v32 = v39;
    v33 = v40;
    v42 = v40;
    v34 = sub_CC08(aBlock);
    (*(*(v33 - 1) + 16))(v34, v32, v33);
    sub_139984();
    sub_CC68(aBlock, &unk_1A06F0, &unk_13EF80);
    sub_1399E4();
  }

  else if (a1)
  {
    v38 = v15;
    sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
    v37 = v11;
    v22 = a1;
    v36 = sub_13BD84();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = v22;
    v43 = sub_B0F18;
    v44 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    v42 = &unk_18A9E8;
    v24 = _Block_copy(aBlock);
    v25 = a3;
    v26 = v22;

    v27 = a5;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_CB68();
    sub_4948(&unk_19EBB0, &qword_145B40);
    sub_CBC0(&qword_19E070, &unk_19EBB0, &qword_145B40, &protocol conformance descriptor for [A]);
    sub_13BF64();
    v28 = v36;
    sub_13BD94();
    _Block_release(v24);

    (*(v37 + 8))(v13, v10);
    (*(v38 + 8))(v17, v14);
  }
}

uint64_t sub_B04F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = sub_4948(&unk_19EBC0, &unk_1479D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v9 = sub_139A14();
  sub_4910(v9, qword_1B2B00);
  sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E660;
  v26 = type metadata accessor for HalfSheetPageView();
  v25[0] = a1;
  v10 = a1;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v25);
  sub_139974();
  v26 = sub_139FA4();
  v25[0] = a2;

  sub_139984();
  sub_CC68(v25, &unk_1A06F0, &unk_13EF80);
  sub_1399D4();

  v13 = sub_139804();
  v15 = v14;
  v16 = direct field offset for Animation.animationUrl;
  v17 = sub_1397E4();
  (*(*(v17 - 8) + 16))(v8, a2 + v16, v17);
  sub_53A8(v8, 0, 1, v17);
  v18 = [v10 traitCollection];
  [v18 displayScale];
  v20 = v19;

  v21 = objc_allocWithZone(MicaPlayer);
  sub_B0CD4(v13, v15, v8, v20);
  sub_139BE4();
  return sub_139BF4();
}

void sub_B0824(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher + 8];
      sub_C9EC(*&Strong[OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_animationFetcher], v5);

      v4();
      sub_C9FC(v4, v5);
    }

    else
    {
    }
  }
}

id sub_B08D4(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_13BE04();
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_showInlineFooter) = v3 & 1;
  return [v1 setNeedsLayout];
}

void sub_B0A00(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerBlur);

    if (a2)
    {
      v6 = [objc_opt_self() effectWithStyle:7];
    }

    else
    {
      v6 = 0;
    }

    [v5 setEffect:v6];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17HalfSheetPageView_footerView);

    v10 = objc_opt_self();
    v11 = &selRef_clearColor;
    if ((a2 & 1) == 0)
    {
      v11 = &selRef_ams_primaryBackground;
    }

    v12 = [v10 *v11];
    [v9 setBackgroundColor:v12];
  }
}

id sub_B0CD4(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1397F4().super.isa;
    sub_B0F24(a1, a2);
  }

  v11 = sub_1397E4();
  v13 = 0;
  if (sub_52E0(a3, 1, v11) != 1)
  {
    sub_1397B4(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(a3, v11);
  }

  v15 = [v5 initWithData:isa url:v13 retinaScale:a4];

  return v15;
}

uint64_t sub_B0DD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B0E08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B0E5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_B0EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_B0EC8()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_B0F24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_B0F38(a1, a2);
  }

  return result;
}

double sub_B0F38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_B0F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19E960, &qword_13FD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B1000()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_B1108(void *a1)
{
  v3 = *(v1 + 3536);

  return [a1 v3];
}

char *sub_B1144(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  sub_9A0C4();
  sub_13B974();
  sub_9E94();
  v44 = v7;
  v45 = v6;
  __chkstk_darwin(v6);
  sub_9EC0();
  v43 = (v9 - v8);
  v50 = sub_13B994();
  sub_9E94();
  v54 = v10;
  __chkstk_darwin(v11);
  sub_9EC0();
  v49 = v13 - v12;
  v14 = sub_4948(&qword_19A498, &unk_147A80);
  v15 = sub_8AD98(v14);
  __chkstk_darwin(v15);
  v53 = &v43 - v16;
  v17 = sub_13B834();
  v18 = sub_8AD98(v17);
  __chkstk_darwin(v18);
  sub_9EC0();
  v47 = v20 - v19;
  v21 = sub_13B6E4();
  sub_9E94();
  v56 = v22;
  __chkstk_darwin(v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v43 - v27;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_didApply] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageView] = [objc_allocWithZone(type metadata accessor for HalfSheetPageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v55 = v2;
  sub_ABE7C(v2, &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination]);
  v46 = OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_objectGraph;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_9A0C4();
  sub_13B6B4();

  sub_13B9A4();
  v29 = v58;
  sub_13B9A4();
  sub_4948(&unk_1A16C0, &unk_147380);
  sub_13B9A4();
  v30 = *(v56 + 16);
  v51 = v28;
  v52 = v21;
  v30(v25, v28, v21);

  swift_unknownObjectRetain();
  sub_13B814();
  swift_unknownObjectRelease();
  v31 = sub_13B5D4();
  sub_53A8(v53, 1, 1, v31);
  sub_13B884();
  swift_allocObject();
  v48 = v29;
  v32 = v50;
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_metricsPresenter] = sub_13B844();
  v33 = v49;
  v53 = a2;
  sub_13B9A4();
  sub_139E44();

  v34 = sub_139E34();

  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter] = v34;
  if (v34)
  {
    v36 = v43;
    v35 = v44;
    *v43 = 1;
    v37 = v45;
    (*(v35 + 104))(v36, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v45);
    sub_A8FC0();
    v39 = *(v38 + 152);

    v39(v36);

    (*(v35 + 8))(v36, v37);
  }

  v40 = type metadata accessor for HalfSheetPageViewController(0);
  v57.receiver = v4;
  v57.super_class = v40;
  v41 = objc_msgSendSuper2(&v57, "init");
  [*&v41[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageView] setHidden:1];

  swift_unknownObjectRelease();
  sub_B34C8();
  sub_B33D8();
  (*(v54 + 8))(v33, v32);
  (*(v56 + 8))(v51, v52);
  return v41;
}

void sub_B168C()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_B1718()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_B173C()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_B17F8(void *a1)
{
  sub_B1718();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_B173C();
}

id sub_B18A4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for HalfSheetPageViewController(0);
  v3 = objc_msgSendSuper2(&v6, "navigationItem");

  return v3;
}

void sub_B196C(__n128 a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v4, "loadView");
  v2 = [v1 view];
  v3 = [objc_opt_self() ams_primaryBackground];
  [v2 setBackgroundColor:v3];
}

void sub_B1A50()
{
  v1 = v0;
  v2 = sub_13B964();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v9 = [v0 view];
  [v9 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageView]];

  sub_13B884();
  sub_13B904();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v10 + 168))();
    v11 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination];
    v12 = *(type metadata accessor for HalfSheetPageDestination(0) + 44);
    sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v8, &v11[v12]);
    (*(v4 + 104))(v8, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v2);
    sub_A8FC0();
    (*(v14 + 160))(v8);
    (*(v4 + 8))(v8, v2);
  }
}

void sub_B1C88()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 ams_configureWithTransparentBackground];

  v3 = [v1 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v1 navigationItem];
  [v4 setTitle:0];

  sub_64264(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination + 48, v29);
  v5 = v30;
  sub_928C(v29, &unk_19E320, &unk_140950);
  if (!v5)
  {
    sub_CACC(0, &unk_1A0710, UIImage_ptr);
    if (qword_199E88 != -1)
    {
      swift_once();
    }

    v6 = qword_1B2960;
    v7 = qword_1B2960;
    v8 = sub_111044(0xD000000000000017, 0x8000000000150810, v6, 0);
    v9 = [v8 imageAsset];

    if (v9)
    {
      v10 = v9;
      v11 = [v1 traitCollection];
      v12 = [v10 imageWithTraitCollection:v11];

      v13 = [v12 imageWithRenderingMode:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_opt_self() buttonWithType:1];
    [v14 setImage:v13 forState:0];
    [v14 addTarget:v1 action:"dismissAction:" forControlEvents:64];
    v15 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v14];
    v16 = [v15 customView];
    if (v16)
    {
      v17 = v16;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v18 = [v15 customView];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 widthAnchor];

      v21 = [v20 constraintEqualToConstant:24.0];
      [v21 setActive:1];
    }

    v22 = [v15 customView];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 heightAnchor];

      v25 = [v24 constraintEqualToConstant:24.0];
      [v25 setActive:1];
    }

    v26 = [v1 navigationItem];
    sub_4948(&qword_1A0B00, &unk_147390);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_147310;
    *(v27 + 32) = v15;
    v28 = v15;
    sub_113C6C(v27, v26);
  }
}

void sub_B20AC()
{
  v3.receiver = v0;
  v3.super_class = sub_B34E0();
  objc_msgSendSuper2(&v3, "viewDidAppear:", v1 & 1);
  sub_13B854();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 184))();
  }
}

void sub_B2180()
{
  v3.receiver = v0;
  v3.super_class = sub_B34E0();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", v1 & 1);
  sub_13B884();
  sub_13B924();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 192))();
  }
}

void sub_B2264()
{
  v3.receiver = v0;
  v3.super_class = sub_B34E0();
  objc_msgSendSuper2(&v3, "viewWillAppear:", v1 & 1);
  sub_13B884();
  sub_13B914();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 176))();
  }
}

uint64_t sub_B2348(char a1)
{
  v2 = v1;
  v4 = sub_13B954();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  v11 = *(v6 + 8);
  result = v11(v10, v4);
  if (*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_13B944();
    sub_A8FC0();
    (*(v13 + 200))(v10);
    return v11(v10, v4);
  }

  return result;
}

id sub_B24E8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v3, "viewWillLayoutSubviews");
  return [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageView] setFrame:sub_B2614()];
}

void sub_B2590(__n128 a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_B2BEC();
}

double sub_B2614()
{
  v1 = [v0 view];
  [v1 layoutMargins];

  v2 = [v0 view];
  [v2 bounds];

  sub_13BE34();
  return result;
}

void sub_B26E8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HalfSheetPageViewController(0);
  objc_msgSendSuper2(&v3, "didReceiveMemoryWarning");
  sub_13B884();
  sub_13B934();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 208))();
  }
}

void sub_B27C4()
{
  v2 = sub_9A0C4();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HalfSheetPageViewController(v2);
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", v0);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!v0 || v4 != [v0 userInterfaceStyle])
  {
    sub_B1C88();
  }
}

id sub_B28D0()
{
  sub_64264(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination + 8, &v2);
  if (v3)
  {
    sub_9414(&v2, v4);
    sub_B2E68(v4);

    return sub_3C04(v4);
  }

  else
  {
    sub_928C(&v2, &unk_19E320, &unk_140950);
    return [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_B2978()
{
  sub_64264(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination + 48, &v2);
  if (v3)
  {
    sub_9414(&v2, v4);
    sub_B2E68(v4);

    return sub_3C04(v4);
  }

  else
  {
    sub_928C(&v2, &unk_19E320, &unk_140950);
    return [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_B2A20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_928C(v9, &unk_1A06F0, &unk_13EF80);
}

uint64_t sub_B2AAC()
{
  sub_B3088();
  sub_B2E68(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination + 128);
  sub_1D450();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2[3] = sub_CACC(0, &qword_19EBA0, OS_dispatch_queue_ptr);
  v2[4] = &protocol witness table for OS_dispatch_queue;
  v2[0] = sub_13BD84();
  sub_13B9F4();

  return sub_3C04(v2);
}

void sub_B2B80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_B3100();
  }
}

void sub_B2BEC()
{
  v1 = v0;
  v2 = sub_4948(&qword_19A498, &unk_147A80);
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  if ((*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_didApply) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_didApply) = 1;
    sub_B1C88();
    v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_pageView);
    v7 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_destination);
    sub_1D450();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_objectGraph);

    sub_AF560(v7, sub_B3460, v8, sub_B3490, v9, v10);

    [v6 setHidden:0];
    v11 = *(type metadata accessor for HalfSheetPageDestination(0) + 44);
    v12 = sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v5, v7 + v11, v12);
    sub_53A8(v5, 0, 1, v12);
    sub_13B874();
  }
}

void *sub_B2DD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_7D228(a1, v8);
    a3(v7);

    return sub_928C(v8, &unk_1A06F0, &unk_13EF80);
  }

  return result;
}

uint64_t sub_B2E68(uint64_t a1)
{
  v3 = sub_139E74();
  v4 = sub_8AD98(v3);
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = sub_13B834();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  sub_139E84();
  v15 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin27HalfSheetPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v16 = *&v20[0];
  sub_13B9A4();
  (*(v10 + 16))(v7, v14, v8);
  v17 = sub_4948(&unk_19B7E0, &unk_141F10);
  sub_53A8(v7, 0, 1, v17);
  memset(v20, 0, sizeof(v20));
  v21 = -1;
  v18 = (*(*v16 + 216))(a1, v7, v15, v20);

  sub_928C(v20, &unk_19E330, &qword_144CD0);
  sub_B33D8();
  (*(v10 + 8))(v14, v8);
  return v18;
}