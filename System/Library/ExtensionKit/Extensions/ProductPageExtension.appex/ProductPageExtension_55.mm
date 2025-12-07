void *sub_10062A5C8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10062A620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a2;
  v26 = a6;
  v10 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_10076B5BC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_10062BC00(a4, a5, v26);
  v18 = a1;
  sub_100761A7C();
  v19 = sub_10041329C();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      sub_100761A7C();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25, v19, v21);
    sub_10000CFBC(v12, &unk_1009568A0, &qword_100784890);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10062A84C(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v70 = a2;
  v11 = sub_10000A5D4(&qword_100949728, &unk_10078C3C0);
  __chkstk_darwin(v11);
  v72 = &v63 - v12;
  v13 = sub_1007621EC();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v74 = &v63 - v19;
  v23 = __chkstk_darwin(v20);
  v73 = &v63 - v24;
  if (a1 >= 1)
  {
    v67 = v22;
    v68 = v21;
    a3(0, v23);
    sub_10062BC00(a4, a5, a6);
    if (sub_100761A9C() >= 1)
    {
      v25 = v73;
      sub_100761A6C();
      v26 = v74;
      sub_100761A6C();
      v27 = v25;
      v28 = *(v11 + 48);
      v30 = v71;
      v29 = v72;
      v31 = v71[2];
      v31(v72, v27, v13);
      v69 = v28;
      v31((v29 + v28), v26, v13);
      v32 = v30[11];
      v33 = v32(v29, v13);
      if (v33 == enum case for ShelfBackground.color(_:))
      {
        v34 = v33;
        v35 = v68;
        v31(v68, v29, v13);
        v64 = v30[12];
        v64(v35, v13);
        v65 = *v35;
        v63 = sub_10000A5D4(&unk_100950670, qword_100791450);
        v66 = *(v63 + 48);
        if (v32(v29 + v69, v13) == v34)
        {
          v36 = v67;
          v31(v67, &v72[v69], v13);
          v64(v36, v13);
          v37 = *v36;
          v64 = *(v63 + 48);
          v38 = v70;
          v39 = [v70 traitCollection];
          v40 = v65;
          v41 = [v65 resolvedColorWithTraitCollection:v39];

          v42 = [v38 traitCollection];
          v43 = [v37 resolvedColorWithTraitCollection:v42];

          sub_1000325F0();
          LOBYTE(v42) = sub_100770EEC();

          v44 = v69;
          if ((v42 & 1) == 0)
          {
            v59 = v71[1];
            v59(v74, v13);
            v59(v73, v13);
            v60 = sub_1007659CC();
            v61 = *(*(v60 - 8) + 8);
            v61(v64 + v36, v60);
            v61(v68 + v66, v60);
            v62 = v72;
            v59(&v72[v44], v13);
            v59(v62, v13);
            return 2;
          }

          v45 = sub_1007659CC();
          v46 = *(*(v45 - 8) + 8);
          v46(v64 + v36, v45);
          v46(v68 + v66, v45);
        }

        else
        {
          v47 = sub_1007659CC();
          (*(*(v47 - 8) + 8))(v35 + v66, v47);
        }

        v30 = v71;
        v29 = v72;
      }

      v48 = enum case for ShelfBackground.none(_:);
      v49 = v30[13];
      v49(v15, enum case for ShelfBackground.none(_:), v13);
      v50 = sub_10062BC00(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v51 = sub_10076FF1C();
      v52 = v30[1];
      v52(v15, v13);
      if ((v51 & 1) == 0)
      {
        v49(v15, v48, v13);
        v53 = sub_1007621DC();
        v52(v15, v13);
        if (v53)
        {
          v52(v74, v13);
          v52(v73, v13);
LABEL_14:
          v52((v29 + v69), v13);
          v52(v29, v13);
          return 2;
        }
      }

      v71 = v50;
      v49(v15, v48, v13);
      v54 = v73;
      v55 = sub_1007621DC();
      v52(v15, v13);
      if (v55)
      {
        v49(v15, v48, v13);
        v56 = v74;
        v57 = sub_10076FF1C();
        v52(v15, v13);
        v52(v56, v13);
        v52(v54, v13);
        if ((v57 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v52(v74, v13);
        v52(v54, v13);
      }

      sub_10000CFBC(v29, &qword_100949728, &unk_10078C3C0);
    }
  }

  return 0;
}

uint64_t sub_10062B020@<X0>(uint64_t a2@<X8>)
{
  v53 = sub_10075E11C();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076B5BC();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v34 - v9;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v51 = &v34 - v14;
  v15 = sub_10076573C();
  v43 = sub_10062BC00(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v44 = v15;
  result = sub_100761A9C();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v48 = v12;
      v37 = a2;
      v17 = 0;
      v47 = enum case for Shelf.ContentType.privacyType(_:);
      v46 = (v6 + 104);
      v49 = (v6 + 8);
      v40 = (v6 + 32);
      v39 = (v6 + 88);
      v38 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v35 = enum case for Shelf.ContentType.informationRibbon(_:);
      v36 = v3;
      v18 = (v3 + 8);
      v50 = result;
      v45 = v5;
      while (1)
      {
        if (sub_100763EFC())
        {
          sub_100763F0C();
          v19 = v48;
          (*v46)(v48, v47, v52);
          sub_10062BC00(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          sub_10077018C();
          sub_10077018C();
          if (v54 == v56 && v55 == v57)
          {
            v20 = 1;
          }

          else
          {
            v20 = sub_10077167C();
          }

          v21 = *v49;
          v22 = v19;
          v23 = v52;
          (*v49)(v22, v52);
          v21(v51, v23);

          v24 = v45;
          if ((v20 & 1) != 0 && v17 < sub_100761A9C() && (sub_100761A4C() & 1) == 0)
          {
            v34 = sub_100761A8C();
            v25 = v41;
            sub_100761A7C();
            v26 = v42;
            v27 = v25;
            v28 = v52;
            (*v40)(v42, v27, v52);
            v29 = (*v39)(v26, v28);
            v30 = 1;
            if (v29 == v38 || v29 == v35)
            {
              break;
            }

            result = (v21)(v42, v52);
            if (v34 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v30 = v34;
            if (v34)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v17 == v50)
        {
          v33 = 1;
          a2 = v37;
          v3 = v36;
          return (*(v3 + 56))(a2, v33, 1, v53);
        }
      }

      v31 = 0;
      while (1)
      {
        sub_10075E08C();
        sub_100763F1C();
        sub_10000A5D4(&qword_1009575A0, &unk_100784980);
        sub_10076016C();
        if (swift_dynamicCast())
        {
          v32 = sub_10076011C();

          if (v32)
          {
            break;
          }
        }

        (*v18)(v24, v53);
        if (v30 == ++v31)
        {
          goto LABEL_4;
        }
      }

      v3 = v36;
      a2 = v37;
      (*(v36 + 32))(v37, v24, v53);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    return (*(v3 + 56))(a2, v33, 1, v53);
  }

  return result;
}

void sub_10062B608(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_100763F0C();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_10062BC00(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v20 == v19)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v17 = a2;
    v13 = sub_10077167C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      sub_100628BE8(a1, v17, &type metadata accessor for GenericPagePresenter, &qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v18);
      return;
    }
  }

  if (qword_1009408A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000A61C(v15, qword_1009A0860);
  sub_10062B944(v16, v18, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDetailDataSource(uint64_t a1)
{
  result = qword_100961A78;
  if (!qword_100961A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10062B944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_10062BA3C(uint64_t a1, uint64_t (*a2)(void, __n128), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  a2(0, v14);
  sub_10062BC00(a3, a4, a5);
  sub_100761A7C();
  (*(v10 + 32))(v12, v16, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v18 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v17 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v18 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v18 = 0;
  }

  return v18 != 0;
}

uint64_t sub_10062BC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10062BC48(uint64_t a1, __int128 *a2)
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

uint64_t sub_10062BC74(uint64_t a1, int a2)
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

uint64_t sub_10062BCBC(uint64_t result, int a2, int a3)
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

uint64_t sub_10062BD28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10062BD70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10062BDE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10062BDF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10062BE40(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_10062BEA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v57 = sub_1007653CC();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007653EC();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076540C();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076541C();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10077164C();
  v12 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  sub_1007653DC();
  v63 = v3;
  v14 = *(v3 + 120);
  v49 = *(v14 + 16);
  if (v49)
  {
    v15 = 0;
    v16 = v14 + 32;
    v60 = (v12 + 8);
    v47 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v46 = (v8 + 104);
    v45 = (v6 + 104);
    v44 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v43 = v59 + 8;
    v42 = (v6 + 8);
    v41 = (v8 + 8);
    v40 = (v10 + 8);
    v39 = xmmword_100783DD0;
    v48 = v14;
    v17 = v52;
    while (v15 < *(v14 + 16))
    {
      *v68 = v15;
      sub_10062CB18(v16, &v68[8]);
      if (*&v69[8])
      {
        v27 = *v68;
        *v68 = *&v68[8];
        *&v68[16] = *v69;
        *v69 = *&v69[8];
        *&v69[16] = *&v69[24];
        *&v69[32] = *&v69[40];
        *&v69[48] = v70;
        v28 = 24;
        if (!v27)
        {
          v28 = 64;
        }

        v29 = 40;
        if (v27)
        {
          v29 = 0;
        }

        v30 = *(v63 + v28);
        sub_10000CF78((v63 + v29), v30);
        v31 = v61;
        sub_1000FF02C(v30);
        sub_10076D40C();
        v33 = v32;
        v34 = *v60;
        (*v60)(v31, v62);
        v35 = 0;
        if (v27 == *(v14 + 16) - 1)
        {
          v36 = *(v63 + 104);
          sub_10000CF78((v63 + 80), v36);
          v37 = v61;
          sub_1000FF02C(v36);
          sub_10076D40C();
          v35 = v38;
          v34(v37, v62);
        }

        ++v15;
        v18 = v53;
        (*v46)(v17, v47, v53);
        v19 = v54;
        v20 = v55;
        (*v45)(v54, v44, v55);
        v67[3] = &type metadata for CGFloat;
        v67[4] = &protocol witness table for CGFloat;
        v67[0] = v33;
        v66[3] = &type metadata for CGFloat;
        v66[4] = &protocol witness table for CGFloat;
        v66[0] = v35;
        sub_10000A5D4(&unk_100959500, qword_100798190);
        v21 = v59;
        v22 = swift_allocObject();
        *(v22 + 16) = v39;
        sub_10076539C();
        v65 = v22;
        sub_10061432C(v23);
        sub_10000A5D4(&qword_100959510, &unk_1007A6560);
        sub_1004ACA24();
        v24 = v56;
        v25 = v57;
        sub_1007712CC();
        v26 = v50;
        sub_1007653FC();
        (*(v21 + 8))(v24, v25);
        (*v42)(v19, v20);
        (*v41)(v17, v18);
        sub_1000F00E0(v66);
        sub_10000CD74(v67);
        sub_10076542C();
        (*v40)(v26, v51);
        sub_10062CBC0(v68);
        v16 += 80;
        v14 = v48;
        if (v49 != v15)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_10062C63C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10076543C();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10062BEA4(a1, v16);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v31 = v16;
  sub_10076538C();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_10062CB18(v19, v41);
      sub_10062CB50(&v43, &v37);
      if (v38)
      {
        sub_10003F19C(&v37, v39);
        sub_10000CF78(v41, v42);
        sub_10076D22C();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = v40;
        sub_10000CF78(v39, v40);
        sub_1000FF02C(v28);
        sub_10076D40C();
        (*(v12 + 8))(v14, v11);
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        CGRectGetWidth(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetHeight(v45);
        v46.origin.x = v34;
        v46.origin.y = v35;
        v46.size.width = v36;
        v46.size.height = a5;
        CGRectGetMidX(v46);
        v47.origin.x = v21;
        v47.origin.y = v23;
        v47.size.width = v25;
        v47.size.height = v27;
        CGRectGetMinY(v47);
        sub_10000CF78(v41, v42);
        sub_10076D23C();
        sub_10062CBC0(v41);
        sub_10000CD74(v39);
      }

      else
      {
        sub_10062CBC0(v41);
        sub_1000F00E0(&v37);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v32 + 8))(v31, v33);
}

void sub_10062C9E0(uint64_t a1, __n128 a2, double a3)
{
  v5 = sub_10076543C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v3 + 120) + 16))
  {
    sub_10062BEA4(a1, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_10076537C();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10062CB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943240, &qword_10078AFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10062CBF0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2738);
  sub_10000A61C(v4, qword_1009A2738);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10062D2C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a1;
  sub_10062E7B4(v14, v13, v7, v6);

  return (*(v11 + 8))(v13, v10);
}

id sub_10062D504()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = sub_1007609FC();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_100941498 != -1)
  {
    swift_once();
  }

  v10 = qword_1009A31D0;
  v11 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  sub_100760A1C();
  v13 = sub_100760A5C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10000CFBC(v4, &unk_100954460, &unk_100790FF0);
    v15 = sub_10076B8EC();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_10062DD14(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  v71 = xmmword_100784500;
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_100941358;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1009A2708;
  v22 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = sub_1007609AC();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_100941350;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1009A2700;
    *(v33 + 40) = qword_1009A2700;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_1000FC5F4(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = sub_10076FE3C().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = sub_10076FF9C();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10002564C();
    v46 = sub_10077121C();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = sub_10077121C();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10077121C();

    v52 = sub_10076FF6C();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = sub_10077121C();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = sub_10077121C();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    sub_10077121C();

    v59 = sub_10076FF6C();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_10062DD14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_100760A5C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0, &qword_10079DCC0);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_1007622DC(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_10062E000(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10062E0B4(uint64_t a1)
{
  result = sub_10076B8FC();
  if (result)
  {
    sub_10076BE2C();
    v3 = v2;

    if (v3)
    {
      v4 = qword_100941370;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = [objc_opt_self() configurationWithTextStyle:qword_1009A2720];
      v6 = sub_10076045C();

      if (qword_100941368 != -1)
      {
        swift_once();
      }

      v7 = [v6 imageWithTintColor:qword_1009A2718];
      swift_bridgeObjectRelease_n();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10062E1F8(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    sub_10075E09C();
    v14 = sub_10076597C();
    v15 = sub_10062D504();
    if (v15)
    {
      v16 = v15;
      v32 = v13;
      v17 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
      v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits);
      v19 = *&v12[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
      v33 = v8;
      v20 = v19;
      [v18 pageMarginInsets];
      [v20 setLayoutMargins:?];

      v21 = *&v12[v17];
      *(v21 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator) = 1;
      [*(v21 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView) setHidden:0];
      v22 = *&v12[v17];
      v23 = v16;
      v24 = v22;
      v25 = sub_10062E0B4(v14);
      [*&v24[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] setAttributedText:v23];
      v26 = *&v24[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
      *&v24[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = v25;
      v27 = v25;

      sub_1006911EC(v28, v29, v30);
      [v24 setNeedsLayout];

      v31 = v33;

      sub_10076B8AC();

      if ((*(v31 + 48))(v6, 1, v7) == 1)
      {

        sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        (*(v31 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_1007660EC();
        }

        else
        {
        }

        (*(v31 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10062E5A4()
{
  v1 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_10076F7FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E09C();
  result = sub_10076595C();
  if (v8 < result)
  {
    sub_10075E09C();
    sub_10076597C();
    sub_10076B8AC();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10000CFBC(v3, &qword_1009492E0, &qword_1007893A0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_10076610C();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_10062E7B4(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_10075E09C(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_10075E0AC();
    sub_10075E08C();
    isa = sub_10075E02C().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_10062E93C(void *a1)
{
  sub_10075E09C();
  sub_10076597C();
  v3 = sub_10062D504();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_100692240(v3, v6, v7);
  sub_10076DDDC();
  sub_10076D2AC();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10062EA4C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_10062EAB8(void *a1, uint64_t a2, void *a3)
{
  v19 = a1;
  sub_1000FEDC4();
  v5 = a1;
  sub_10000A5D4(&qword_100961EC0, &qword_1007B0A20);
  if (swift_dynamicCast())
  {
    sub_100012498(&v15, v20);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1004FD078;
    *(v8 + 24) = v7;
    v17 = sub_1000349FC;
    v18 = v8;
    *&v15 = _NSConcreteStackBlock;
    *(&v15 + 1) = 1107296256;
    *&v16 = sub_1001C5148;
    *(&v16 + 1) = &unk_10089DB60;
    v9 = _Block_copy(&v15);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v12 = v21;
        v13 = v22;
        sub_10000CF78(v20, v21);
        v14 = (*(v13 + 8))(v12, v13);
        sub_1004F3FD8(v14, a3);
      }

      sub_10000CD74(v20);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_10062ECF8(&v15);
  }
}

uint64_t sub_10062ECF8(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100961EC8, &unk_1007B0A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10062ED60()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10062EDA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10062EDC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000A5D4(&qword_100961ED0, &unk_1007B0A38);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_10076341C();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_10076338C();

      swift_getKeyPath();
      v29 = v46;
      sub_10076F49C();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_10022DD04();
      sub_10077018C();
      sub_10077018C();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_10077167C();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_10076336C();
    v24 = v33;
    sub_10076F87C();
    sub_1004492B8();
    v25 = v34;
    sub_10076F83C();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_10062F33C()
{
  v0 = sub_1007688CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076432C();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
    v6 = &unk_1009428B8;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
    v8 = &unk_1007A3058;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
    v6 = &unk_1009428B0;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
    v8 = &unk_1007B3278;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_1009428A8;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
    v8 = &unk_1007993A8;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView(0);
    v6 = &unk_1009428C0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
    v8 = &unk_1007B1478;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView(0);
    v6 = &unk_100942898;
    v7 = type metadata accessor for MetadataRibbonTagView;
    v8 = &unk_100795240;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView(0);
    v6 = &unk_1009428A0;
    v7 = type metadata accessor for MetadataRibbonBarView;
    v8 = &unk_100791880;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
    v6 = &unk_100942888;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
    v8 = &unk_100785290;
  }

  sub_10062F660(v6, v7, v8);
  return v5;
}

uint64_t sub_10062F660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10062F700(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - v8;
  v10 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-1] - v11;
  if (v4)
  {

    v4(v13);

    sub_1000167E0(v4, v5);
  }

  else if (v3)
  {
    v14 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

    sub_10076F5AC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {

      sub_1000527AC(v12);
    }

    else
    {
      v17[3] = sub_10076B90C();
      v17[4] = sub_100630C68(&qword_10095D660, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v17[0] = v3;
      (*(v7 + 104))(v9, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v6);

      sub_10076F6CC();

      (*(v7 + 8))(v9, v6);
      sub_10000CD74(v17);
      (*(v15 + 8))(v12, v14);
    }
  }
}

void sub_10062F9DC(void *a1, char *a2)
{
  v116 = a2;
  v111 = sub_10076048C();
  v94 = *(v111 - 1);
  __chkstk_darwin(v111);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10075F65C();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100765F6C();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100766EDC();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v105 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v9 - 8);
  v103 = &v93 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v102 = &v93 - v12;
  v96 = sub_10076C15C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076253C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v113 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v114 = &v93 - v18;
  __chkstk_darwin(v19);
  v21 = &v93 - v20;
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v110 = sub_10076FCEC();
  v115 = a1;
  sub_10075FA6C();
  v112 = *(v15 + 104);
  v112(v21, enum case for AlertActionStyle.normal(_:), v14);
  sub_100630C68(&qword_100961ED8, &type metadata accessor for AlertActionStyle, &protocol conformance descriptor for AlertActionStyle);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v122)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_10077167C();
  }

  v26 = *(v15 + 8);
  v26(v21, v14);
  v26(v24, v14);

  if ((v25 & 1) == 0)
  {
    v34 = v114;
    sub_10075FA6C();
    v35 = v113;
    v112(v113, enum case for AlertActionStyle.toast(_:), v14);
    sub_10077018C();
    sub_10077018C();
    if (aBlock == v122)
    {
      v26(v35, v14);
      v26(v34, v14);
    }

    else
    {
      v36 = sub_10077167C();
      v26(v35, v14);
      v26(v34, v14);

      if ((v36 & 1) == 0)
      {
        return;
      }
    }

    v37 = sub_10076B8FC();
    if (v37)
    {
      v38 = v37;
      if (sub_10076BDDC())
      {
        if (sub_10076BE0C())
        {
          v39 = sub_10076044C();
          goto LABEL_42;
        }

        if (sub_10076BDFC())
        {
          v39 = sub_1005A6008(v38, 0);
LABEL_42:
          v74 = v39;

          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v75 = v94;
    v76 = v93;
    v77 = v111;
    (*(v94 + 104))(v93, enum case for SystemImage.exclamationmarkCircle(_:), v111);
    v74 = sub_10076046C();
    (*(v75 + 8))(v76, v77);
LABEL_46:
    v114 = v74;
    v78 = [v74 imageWithRenderingMode:2];
    sub_10076B8EC();
    v80 = v79;
    sub_10075FA8C();
    v82 = v81;
    sub_10075FA5C();
    v84 = v83;
    if (v80)
    {
      v85 = v78;
      v86 = sub_10076FF6C();

      if (v82)
      {
LABEL_48:
        v87 = sub_10076FF6C();

LABEL_51:
        v89 = [objc_allocWithZone(ASToastViewController) initWithTitle:v86 message:v87 duration:v78 image:v84];

        v120 = 0;
        aBlock = 0u;
        v119 = 0u;
        (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
        v90 = sub_10075DB7C();
        (*(*(v90 - 8) + 56))(v102, 1, 1, v90);
        v91 = sub_10076096C();
        (*(*(v91 - 8) + 56))(v103, 1, 1, v91);
        v123 = sub_100016F40(0, &qword_100961EE0, &off_1008769B0);
        *&v122 = v89;
        v115 = v89;
        sub_10076F4DC();
        (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.never(_:), v101);
        (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
        (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
        sub_10076FA2C();
        sub_10075F63C();
        swift_allocObject();
        v92 = sub_10075F5EC();
        sub_100563FF8(v92, 1, v116);
        sub_10076FC4C();

        return;
      }
    }

    else
    {
      v88 = v78;
      v86 = 0;
      if (v82)
      {
        goto LABEL_48;
      }
    }

    v87 = 0;
    goto LABEL_51;
  }

  sub_10076B8EC();
  v28 = v27;
  sub_10075FA8C();
  v30 = v29;
  if (v28)
  {
    v31 = sub_10076FF6C();

    v32 = v116;
    if (v30)
    {
LABEL_7:
      v33 = sub_10076FF6C();

      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v32 = v116;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
LABEL_17:
  v40 = [objc_opt_self() alertControllerWithTitle:v31 message:v33 preferredStyle:1];

  v41 = sub_10075FA4C();
  if ((sub_10075FA3C() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v41 + 16))
  {
    v43._countAndFlagsBits = 0x4F2E6E6F69746341;
    v43._object = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  sub_10075FA2C();
  if (!v42)
  {
    v43._countAndFlagsBits = 0x432E6E6F69746341;
    v43._object = 0xED00006C65636E61;
LABEL_22:
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_1007622EC(v43, v124);
  }

  v44 = sub_10076FF6C();

  v45 = [objc_opt_self() actionWithTitle:v44 style:1 handler:0];

  [v40 addAction:v45];
  [v40 setPreferredAction:v45];

LABEL_24:
  v114 = *(v41 + 16);
  if (v114)
  {
    v46 = 0;
    v111 = &v119;
    v47 = (v41 + 64);
    v112 = v41;
    v113 = v40;
    while (v46 < *(v41 + 16))
    {
      v51 = *(v47 - 4);
      v52 = *(v47 - 3);
      v54 = *(v47 - 2);
      v53 = *(v47 - 1);
      v55 = *v47;
      if (v53)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = sub_100098284;
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }

      sub_10001CE50(v53, v55);
      v58 = v46 != sub_10075FA1C();
      if ((v59 | v58))
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      v61 = swift_allocObject();
      v61[2] = v51;
      v61[3] = v52;
      v61[4] = v54;
      v61[5] = v57;
      v62 = v116;
      v61[6] = v56;
      v61[7] = v62;
      if (v52)
      {

        sub_10001CE50(v57, v56);

        v48 = sub_10076FF6C();
      }

      else
      {

        sub_10001CE50(v57, v56);

        v48 = 0;
      }

      ++v46;
      v120 = sub_100630BE4;
      v121 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v119 = sub_1006C1A98;
      *(&v119 + 1) = &unk_10089DBD0;
      v49 = _Block_copy(&aBlock);

      v50 = [objc_opt_self() actionWithTitle:v48 style:v60 handler:v49];
      _Block_release(v49);

      v40 = v113;
      [v113 addAction:v50];

      sub_1000167E0(v57, v56);
      v47 += 5;
      v32 = v116;
      v41 = v112;
      if (v114 == v46)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v63 = sub_10075FA9C();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = type metadata accessor for AlertActionHeaderViewController();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView] = 0;
      v69 = &v68[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageName];
      *v69 = v65;
      *(v69 + 1) = v66;
      v117.receiver = v68;
      v117.super_class = v67;
      v70 = objc_msgSendSuper2(&v117, "initWithNibName:bundle:", 0, 0);
      [v40 _setHeaderContentViewController:v70];
    }

    v120 = 0;
    aBlock = 0u;
    v119 = 0u;
    (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
    v71 = sub_10075DB7C();
    (*(*(v71 - 8) + 56))(v102, 1, 1, v71);
    v72 = sub_10076096C();
    (*(*(v72 - 8) + 56))(v103, 1, 1, v72);
    v123 = sub_100016F40(0, &qword_100957FE0, UIAlertController_ptr);
    *&v122 = v40;
    v116 = v40;
    sub_10076F4DC();
    (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
    (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.infer(_:), v101);
    (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v73 = sub_10075F5EC();
    sub_100563FF8(v73, 1, v32);
    sub_10076FC4C();
  }
}

uint64_t sub_100630B8C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100630BE4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4[0] = *(v1 + 16);
  v4[1] = v2;
  v3 = *(v1 + 56);
  v5 = *(v1 + 48);
  sub_10062F700(a1, v4, v3);
}

double sub_100630C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100630C30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100630C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100630CB4()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076469C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_10076C24C();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  sub_1007632FC();
  v11 = sub_10076461C();
  v8(v7, v4);
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

void sub_100630EC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076C36C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v68 - v14;
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  sub_100760E0C();
  sub_100631878();
  sub_10076332C();
  if (!aBlock[0])
  {
    return;
  }

  v73 = v9;
  v74 = v5;
  v75 = v4;

  v18 = sub_10075FF6C();
  v19 = [v18 length];

  v79 = v10;
  if (v19 < 1)
  {
    [*&v2[qword_10094C5D8] setText:0];
    v2[qword_10099D798] = 0;
    v29 = *&v2[qword_10094C5C8];
    [v29 setHidden:1];
    goto LABEL_7;
  }

  v69 = v17;
  v71 = v11;
  v20 = sub_10075FF6C();
  swift_getKeyPath();
  v70 = a1;
  sub_10076338C();

  v21 = aBlock[6];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v23 = [v20 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1000275EC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_10089DC70;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = *&v2[qword_10094C5D8];
  [v24 setAttributedText:v28];
  if (qword_10093F9A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v24 setTextColor:qword_10099D780];
  v2[qword_10099D798] = 1;
  v29 = *&v2[qword_10094C5C8];
  [v29 setHidden:0];

  v10 = v79;
  v11 = v71;
  v17 = v69;
LABEL_7:
  v30 = *&v2[qword_10094C5D0];
  sub_10075FF7C();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v2[qword_10099D790] = (sub_10075FF4C() & 1) == 0;
  sub_100027A78();
  if ((sub_10075FF4C() & 1) == 0 && v2[qword_10099D798] != 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
  }

  sub_1007638EC();
  v2[qword_10099D7A8] = sub_10075FF4C() & 1;
  [v2 setNeedsLayout];
  v33 = sub_10075FF4C();
  v72 = v2;
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v34 = sub_100770D5C();
  }

  [v29 setBackgroundColor:v34];

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v71 = v35;
  v36 = *(v11 + 8);
  v36(v17, v10);
  swift_getKeyPath();
  v37 = v76;
  sub_10076338C();

  sub_10076C26C();
  v70 = v38;
  v36(v37, v10);
  v40 = v74;
  v39 = v75;
  v41 = v73;
  (*(v74 + 104))(v73, enum case for PageGrid.Direction.vertical(_:), v75);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v36(v17, v10);
  v42 = v36;
  (*(v40 + 16))(v77, v41, v39);
  sub_1005AC334(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v78;
  sub_10076C33C();
  (*(v40 + 8))(v41, v39);
  sub_10076C2EC();
  v48 = v72;
  v49 = &v72[qword_10099D7A0];
  *v49 = v50;
  *(v49 + 1) = v51;
  *(v49 + 2) = v52;
  *(v49 + 3) = v53;
  [v48 setNeedsLayout];
  v54 = [v48 contentView];
  v55 = sub_10075FF4C();

  if ((v55 & 1) == 0)
  {
    sub_10076C2EC();
    top = v56;
    left = v57;
    bottom = v58;
    right = v59;
  }

  [v54 setLayoutMargins:{top, left, bottom, right}];

  if (sub_100760DFC())
  {
    v60 = [v48 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v62 = v61;

    sub_10076BEFC();
    v64 = v63;
    sub_10076BEFC();
    v66 = v65;

    v42(v47, v79);
    v67 = &v48[qword_1009A3418];
    *v67 = v62;
    v67[1] = v62 * (v64 / v66);
  }

  else
  {
    v42(v47, v79);
  }
}

unint64_t sub_100631878()
{
  result = qword_10095BE50;
  if (!qword_10095BE50)
  {
    sub_100760E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095BE50);
  }

  return result;
}

uint64_t sub_1006318D8()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100631930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100631948()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2750);
  sub_10000A61C(v4, qword_1009A2750);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1B58);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100631B20()
{
  v1 = v0;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007706CC();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_100940F20 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_100940F20 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1B58);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v3 + 16))(v11, v6, v2);
  sub_10076D9BC();
  return (*(v3 + 8))(v6, v2);
}

char *sub_100631DF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = sub_10076F9AC();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A1B58);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  v23 = *(v22 + 56);
  v23(v19, 0, 1, v20);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(v36, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v37, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v10 + 8))(v12, v33);
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  v23(v19, 1, 1, v20);
  v30 = v27;
  v31 = v29;
  sub_1007625DC();

  [*&v27[v28] setAccessibilityIgnoresInvertColors:1];
  [v30 addSubview:*&v27[v28]];

  return v30;
}

double sub_10063229C(double a1)
{
  v3 = sub_10076D9AC();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_100941390 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v3, qword_1009A2750);
  sub_10076D17C();
  sub_10076D40C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_100631B20();
  sub_10076D17C();
  sub_10076D40C();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_10063258C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v5);
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (qword_100941390 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  sub_10000A61C(v16, qword_1009A2750);
  sub_10076D17C();
  sub_10076D40C();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  [v19 sizeThatFits:{v13, v15}];
  v21 = v20;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinY = CGRectGetMinY(v29);
  [v19 firstBaselineFromTop];
  v25 = MinY + v18 - v24;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  return [v19 setFrame:{MinX, v25, CGRectGetWidth(v30), v21}];
}

unint64_t sub_1006329B0()
{
  result = qword_100961F28;
  if (!qword_100961F28)
  {
    sub_10076852C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100961F28);
  }

  return result;
}

void sub_100632A08(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v48[1] = a3;
  v8 = a5;
  v52 = sub_10076C5FC();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10094A450, &unk_1007AB170);
  __chkstk_darwin(v10 - 8);
  v12 = v48 - v11;
  v13 = sub_10076C7EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076850C();
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v16, a4, v13);
    if (v17(v12, 1, v13) != 1)
    {
      sub_10000CFBC(v12, &qword_10094A450, &unk_1007AB170);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v18 = v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_sizeCategory] = v8;
  if (v8 == 7)
  {
    if (v18 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v5 setNeedsLayout];
    goto LABEL_10;
  }

  if (v18 == 7)
  {
    goto LABEL_9;
  }

  switch(v8)
  {
    case 6:
      if (v18 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v18 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v18 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v18 - 7) > 0xFFFFFFFC || v18 != v8)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v53 = v14;
  v54 = v13;
  v51 = v16;
  v19 = sub_10076C7BC();
  [v6 setBackgroundColor:v19];

  v20 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v20 layoutDirection];
  sub_1007708DC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v6 setLayoutMargins:{v22, v24, v26, v28}];
  sub_10076851C();
  v29 = *&v6[OBJC_IVAR____TtC20ProductPageExtension29TodayCardParagraphOverlayView_label];
  v30 = sub_10076C5AC();
  v31 = [v6 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000275EC;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_10089DD80;
  v36 = _Block_copy(aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    [v29 setAttributedText:v38];

    v39 = v49;
    sub_10076C60C();
    v40 = v50;
    v41 = v52;
    v42 = (*(v50 + 88))(v39, v52);
    if (v42 == enum case for Paragraph.Alignment.left(_:))
    {
      v43 = 0;
      v45 = v53;
      v44 = v54;
    }

    else
    {
      v45 = v53;
      v44 = v54;
      if (v42 == enum case for Paragraph.Alignment.center(_:))
      {
        v43 = 1;
      }

      else if (v42 == enum case for Paragraph.Alignment.right(_:))
      {
        v43 = 2;
      }

      else if (v42 == enum case for Paragraph.Alignment.justified(_:))
      {
        v43 = 3;
      }

      else if (v42 == enum case for Paragraph.Alignment.localized(_:))
      {
        v43 = 4;
      }

      else
      {
        (*(v40 + 8))(v39, v41);
        v43 = 0;
      }
    }

    [v29 setTextAlignment:v43];
    v46 = v51;
    v47 = sub_10076C7CC();
    [v29 setTextColor:v47];

    (*(v45 + 8))(v46, v44);
  }
}

uint64_t sub_1006330C0()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100633118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_10063317C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F26C();
  sub_100633320(&qword_100949A88, &type metadata accessor for AppShowcase, &protocol conformance descriptor for AppShowcase);
  sub_10076332C();
  v4 = v14;
  if (!v14)
  {
    return 0.0;
  }

  v5 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  sub_10044328C(v4, v5, v7, v9);
  v11 = v10;

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_100633320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10063336C(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  v4 = sub_10000A5D4(&unk_100946800, &unk_1007AAD50);
  __chkstk_darwin(v4 - 8);
  v6 = (v30 - v5);
  v7 = sub_10076B2EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_10076A2DC();
  v15 = sub_10076FF6C();

  [v14 setText:v15];

  sub_10076A2BC();
  v16.n128_f64[0] = (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_100634CBC(v16);
  v17 = sub_10076FF1C();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);
  if ((v17 & 1) != 0 || (v19 = sub_10076A28C()) == 0)
  {
    v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  else
  {
    v20 = v19;
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_10076A2AC();
    *v6 = v20;
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  v23 = *&v3[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v24 = sub_10076A27C();
  v25 = v24;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_15:

    v29 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_100545FF4(v29, v6, 0, v31);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_100634498();

    return sub_100128BA0(v6);
  }

  v26 = sub_10077158C();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_7:
  v32 = _swiftEmptyArrayStorage;
  result = sub_1007714EC();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v30[1] = v23;
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      ++v28;

      sub_10076916C();

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v26 != v28);

    v29 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100633784()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100961FD8 = result;
  return result;
}

char *sub_1006337D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_100760B4C();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10076D9AC();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10076C43C();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D3DC();
  v53 = sub_10000A61C(v26, qword_1009A1F78);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_10076D9BC();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000DB7C(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_100760B6C());
  v33 = sub_100760B3C();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_1007626BC());
  *&v34[v35] = sub_1007626AC();
  v38 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v39[1] = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_10077084C();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v49 = swift_allocObject();
  v63 = xmmword_100783DD0;
  *(v49 + 16) = xmmword_100783DD0;
  *(v49 + 32) = sub_10076E88C();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_10076E59C();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v66);
  return v50;
}

uint64_t sub_10063406C@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_10076D65C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_10076D63C();
  v25 = *&v14[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_100760B6C();
  sub_10076D2DC();
  sub_10076D64C();
  sub_10000CD74(v22);
  v15 = *(v5 + 8);
  v15(v7, v4);
  v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  v22[0] = v16;
  *(swift_allocObject() + 16) = v14;
  v17 = v14;
  v18 = v16;
  sub_10076D64C();

  v15(v10, v4);
  sub_10000CD74(v22);
  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v24 = &protocol witness table for CustomLayoutView;
  v22[0] = v19;
  a1[3] = v4;
  a1[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(a1);
  v20 = v19;
  sub_10076D64C();
  v15(v13, v4);
  return sub_10000CD74(v22);
}

uint64_t sub_100634330(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007706CC();

  return sub_10076D5CC();
}

void sub_100634498()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_100941398 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100961FD8 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_100634D4C;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_10009AEDC;
  *&v6.d = &unk_10089DDE0;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_10054B738();
}

void sub_1006346EC()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  sub_10063406C(v4);
  sub_10000CF78(v4, v4[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_100634894()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_10077084C();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

double sub_10063499C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(v6 + 3) = v4;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v7 = sub_100634E38;
  v7[1] = v6;

  v8 = *v7;

  (v8)(v9);

  return result;
}

void sub_100634AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_10054D6D8(v8, a3, v9);
    }
  }
}

double sub_100634C10(uint64_t a1, __n128 a2, double a3)
{
  sub_10063406C(v6);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

unint64_t sub_100634CBC(__n128 a1)
{
  result = qword_100962028;
  if (!qword_100962028)
  {
    sub_10076B2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962028);
  }

  return result;
}

uint64_t sub_100634D14()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100634D4C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

double sub_100634D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100634DB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100634DF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100634E44()
{
  v0 = sub_10076771C();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_100760B4C();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10076D9AC();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10076C43C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100941080 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v33 = sub_10000A61C(v18, qword_1009A1F78);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_10076D9BC();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_10000DB7C(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_100760B6C());
  v25 = sub_100760B3C();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_1007626BC());
  *(v26 + v28) = sub_1007626AC();
  v31 = OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100635488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = sub_100763F9C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = sub_100763F8C();
  v14 = v13;
  v32 = v6;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v34._countAndFlagsBits = v12;
  v34._object = v14;
  v30 = a1;
  v31 = a2;
  LOBYTE(v12) = sub_10077003C(v34);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v15 = sub_100763F8C(), v17 = v16, v29(v9, v5), v35._countAndFlagsBits = v15, v35._object = v17, LOBYTE(v15) = sub_10077003C(v35), , (v15) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v18 = sub_100763F8C(), v20 = v19, v29(v9, v5), v36._countAndFlagsBits = v18, v36._object = v20, LOBYTE(v18) = sub_10077003C(v36), , (v18) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v21 = sub_100763F8C(), v23 = v22, v29(v9, v5), v37._countAndFlagsBits = v21, v37._object = v23, v24 = sub_10077003C(v37), , v24))
  {
    v25 = v33;
    v11(v33, v10, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v33;
  }

  return (*(v32 + 56))(v25, v26, 1, v5);
}

char *sub_100635754(double a1, double a2, double a3, double a4)
{
  v9 = sub_100763F9C();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  sub_100763FAC();
  v13 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView(0);
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_1006359A8()
{
  v1 = v0;
  v2 = sub_100763FDC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = sub_100763F5C();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_100635B28(double a1)
{
  v25 = sub_100763F9C();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100763FDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  sub_100763FBC();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    sub_100763F7C();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      sub_100763F7C();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_100635FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView(uint64_t a1)
{
  result = qword_100962068;
  if (!qword_100962068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100636114(uint64_t a1)
{
  result = sub_100763FDC();
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

void sub_1006361B4()
{
  v1 = sub_100763F9C();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  sub_100763FAC();
  v5 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  sub_10077156C();
  __break(1u);
}

void sub_100636324(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

char *sub_1006363F8(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076361C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  __chkstk_darwin(v9);
  v59 = &v53 - v10;
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *&v2[v19] = sub_1000EB2A0(1);
  v21 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = sub_10076D3DC();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(sub_1007626BC());
  *&v2[v21] = sub_1007626AC();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != 2)
  {
    sub_1004228CC();
  }

  sub_100422D68();
  sub_100423840(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_1006373AC();
  v39 = v37;
  sub_10077018C();
  sub_10077018C();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (sub_10077167C())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_1000EB134(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  sub_1007635FC();
  v42(v44, v40);
  sub_10076FF9C();
  v45 = sub_10076FF6C();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100784500;
  *(v47 + 32) = sub_10076E59C();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = sub_10076E88C();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_100636B08();
  return v31;
}

id sub_100636B08()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_100422A60();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = sub_10076360C();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = sub_1007635FC();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

id sub_100636D50()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = sub_1007706EC();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  sub_100770ACC();
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  sub_1007709CC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_1006370B0()
{
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_100784500;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView(uint64_t a1)
{
  result = qword_1009620C0;
  if (!qword_1009620C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100637268(uint64_t a1)
{
  result = sub_10076361C();
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

uint64_t sub_100637334()
{
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100784500;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_1006373AC()
{
  result = qword_1009620D0;
  if (!qword_1009620D0)
  {
    sub_10076361C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009620D0);
  }

  return result;
}

id sub_100637408(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_100940628 != -1)
  {
    swift_once();
  }

  v3 = qword_10099FD40;
  v4 = *algn_10099FD48;
  v5 = qword_10099FD50;
  v6 = [a1 traitCollection];
  if (sub_10077071C())
  {
  }

  else
  {
    v7 = sub_1007706EC();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_1006374F4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *(v1 + v10) = sub_1000EB2A0(1);
  v12 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = sub_10076D3DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_10076361C();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  sub_10077156C();
  __break(1u);
}

id sub_100637778()
{
  v1 = sub_100761DDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v18[-v6];
  v8 = sub_100761D8C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_10063AA94(v4, v15);
  v16 = *(v2 + 8);
  v16(v4, v1);
  v16(v7, v1);
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_100637A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_100016E2C(a1, v12, &unk_10094C040, &qword_1007890D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CFBC(v12, &unk_10094C040, &qword_1007890D0);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_1006398D8();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_100761D8C();
  (*(*(v23 - 8) + 24))(v3 + v22, v32, v23);
  swift_endAccess();
  v24 = sub_100761DAC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v33, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v34;
  sub_100016E2C(v3 + v26, v34, &qword_10094E398, &unk_100796440);
  swift_beginAccess();
  sub_10063E5AC(v9, v3 + v26);
  swift_endAccess();
  sub_10063C830(v27, v28);
  sub_10000CFBC(v27, &qword_10094E398, &unk_100796440);
  sub_10000CFBC(v9, &qword_10094E398, &unk_100796440);
  sub_1006398D8();
  return sub_10063B688(v29);
}

uint64_t sub_100637E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v7 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v7 - 8);
  v76 = &v62 - v8;
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v62 - v13;
  __chkstk_darwin(v14);
  v69 = &v62 - v15;
  v16 = sub_100765D1C();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v62 - v19;
  v20 = sub_10076D1AC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BreakoutDetailsView.Config(0);
  v84 = v9;
  v85 = v24;
  v25 = *(a1 + *(v24 + 92));
  v72 = v10;
  v26 = v24;
  v27 = *(v24 + 40);
  if (v25)
  {
    v28 = *(v10 + 16);
    v83 = v10 + 16;
    v74 = v28;
    v28(v23, a1 + v27, v9);
    LODWORD(v73) = enum case for FontSource.useCase(_:);
    v68 = v21[13];
    v66 = v20;
    v68(v23);
    v67 = sub_100767EAC();
    v100 = v67;
    v75 = sub_10063EBB8(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
    v101 = v75;
    sub_10000DB7C(v99);
    v82 = v21 + 13;
    v65 = v25;
    sub_100767E9C();
    v29 = v74;
    v74(v23, a1 + v26[13], v84);
    v30 = v26;
    v31 = v73;
    v32 = v68;
    (v68)(v23, v73, v20);
    v33 = v67;
    v97 = v67;
    v98 = v75;
    sub_10000DB7C(v96);
    v34 = v65;
    sub_100767E9C();
    v29(v23, a1 + v30[9], v84);
    v35 = v66;
    v32(v23, v31, v66);
    v36 = v75;
    v94 = v33;
    v95 = v75;
    sub_10000DB7C(v93);
    v37 = v34;
    v38 = v84;
    sub_100767E9C();
    v74(v23, a1 + v30[14], v38);
    v32(v23, v73, v35);
    v91 = v33;
    v92 = v36;
    sub_10000DB7C(v90);
    sub_100767E9C();
  }

  else
  {
    v83 = a1;
    v39 = *(v10 + 16);
    v74 = (v10 + 16);
    v67 = v39;
    v39(v23, a1 + v27, v9);
    LODWORD(v75) = enum case for FontSource.useCase(_:);
    v40 = v21[13];
    v65 = v21 + 13;
    v41 = v20;
    v40(v23);
    v64 = sub_10076D9AC();
    v100 = v64;
    v101 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v99);
    v97 = v20;
    v98 = &protocol witness table for FontSource;
    v42 = sub_10000DB7C(v96);
    v43 = v21[2];
    v73 = v21 + 2;
    v43(v42, v23, v41);
    v62 = v43;
    sub_10076D9BC();
    v44 = v21[1];
    v82 = v21 + 1;
    v68 = v44;
    (v44)(v23, v41);
    v45 = v67;
    v67(v23, v83 + v26[13], v84);
    v63 = v40;
    (v40)(v23, v75, v41);
    v46 = v64;
    v97 = v64;
    v98 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v96);
    v94 = v41;
    v95 = &protocol witness table for FontSource;
    v47 = sub_10000DB7C(v93);
    v43(v47, v23, v41);
    sub_10076D9BC();
    (v68)(v23, v41);
    v45(v23, v83 + v26[9], v84);
    (v40)(v23, v75, v41);
    v94 = v46;
    v95 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v93);
    v91 = v41;
    v92 = &protocol witness table for FontSource;
    v48 = sub_10000DB7C(v90);
    v49 = v62;
    v62(v48, v23, v41);
    sub_10076D9BC();
    v50 = v68;
    (v68)(v23, v41);
    v67(v23, v83 + v26[14], v84);
    a1 = v83;
    (v63)(v23, v75, v41);
    v91 = v64;
    v92 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v90);
    v89[3] = v41;
    v89[4] = &protocol witness table for FontSource;
    v51 = sub_10000DB7C(v89);
    v49(v51, v23, v41);
    sub_10076D9BC();
    v50(v23, v41);
    v38 = v84;
  }

  v52 = v76;
  if ((*(a1 + v85[11] + 8) & 1) == 0)
  {
    sub_100016E2C(a1 + v85[12], v76, &unk_100943250, &unk_1007841D0);
    v53 = v72;
    if ((*(v72 + 48))(v52, 1, v38) != 1)
    {
      v56 = v69;
      (*(v53 + 32))(v69, v52, v38);
      v57 = *(v53 + 16);
      v57(v70, a1 + v85[10], v38);
      v57(v71, v56, v38);
      v55 = v78;
      sub_100765D0C();
      (*(v53 + 8))(v56, v38);
      v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10000CFBC(v52, &unk_100943250, &unk_1007841D0);
  }

  v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v55 = v78;
LABEL_9:
  v59 = v79;
  v58 = v80;
  (*(v79 + 104))(v55, *v54, v80);
  sub_10000A570(v99, v89);
  (*(v59 + 16))(v77, v55, v58);
  sub_10000A570(v96, &v88);
  sub_10000A570(v93, &v87);
  v60 = *(a1 + v85[15]);
  v86[8] = &type metadata for CGFloat;
  v86[9] = &protocol witness table for CGFloat;
  v86[5] = v60;
  sub_10000A570(v90, v86);
  sub_100765CFC();
  (*(v59 + 8))(v55, v58);
  sub_10000CD74(v90);
  sub_10000CD74(v93);
  sub_10000CD74(v96);
  return sub_10000CD74(v99);
}

uint64_t sub_100638958(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A5D4(&qword_100962298, &qword_1007B0EB8);
  sub_10000DB18(v5, a2);
  sub_10000A61C(v5, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_10075FDDC();
}

char *sub_1006389FC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_1007641BC();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076F9AC();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_100761DDC();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_100761D8C();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_100761DAC();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  v28 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_100941038 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v14, qword_1009A1EA0);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v110 = objc_allocWithZone(v108);
  *&v110[qword_10095A0D0] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_1007626AC();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_1007625DC();
  v45 = v43;
  sub_1007625BC();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_10076262C();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel] = v44;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v40, qword_1009A1F00);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_10095A0D0] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_1007626AC();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_1007625DC();
  sub_1007625BC();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_10076262C();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton(0);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v40, qword_1009A1F18);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] = sub_10076312C();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1006398D8();
  v74 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_10076F95C();
  sub_10000CFBC(&v132, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v134, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_10000CFBC(&v132, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v134, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_10076266C();

  v84 = *&v70[v80];
  sub_10076266C();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_1007641CC();

  v96 = *&v70[v85];
  sub_1007641FC();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_10076FF6C();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_1006398D8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v107 = &v102 - v3;
  v4 = sub_100761DAC();
  v108 = *(v4 - 8);
  __chkstk_darwin(v4);
  v105 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v102 - v7;
  __chkstk_darwin(v8);
  v104 = &v102 - v9;
  __chkstk_darwin(v10);
  v109 = &v102 - v11;
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v102 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v111 = v1;
  sub_10075FDCC();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_initWithTabBarSystemItem_tag_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v108;
      if ((*(v108 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_100666660(v30);
        (*(v29 + 8))(v14, v4);
      }
    }

    v31 = v25;
    [v26 setTintColor:v27];
  }

  v32 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
  if (v33)
  {
    v34 = *v21;
    if (*v21)
    {
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v37 = v14;
      v38 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v39 = v108;
      if ((*(v108 + 48))(v1 + v38, 1, v4))
      {
        v35 = v33;
        v36 = 0;
        v14 = v37;
      }

      else
      {
        (*(v39 + 16))(v37, v1 + v38, v4);
        v35 = v33;
        v36 = sub_100666660(v40);
        v41 = v39;
        v14 = v37;
        (*(v41 + 8))(v37, v4);
      }

      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }

    v42 = v34;
    [v35 setTextColor:v36];
  }

  v110 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel);
  v43 = v21[1];
  isa = v43;
  v106 = v32;
  if (!v43)
  {
    v45 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v45, 1, v4))
    {
      v102 = v14;
      v46 = v108;
      v47 = *(v108 + 16);
      v48 = v1 + v45;
      v49 = v109;
      v47(v109, v48, v4);
      v50 = v104;
      v47(v104, v49, v4);
      v51 = (*(v46 + 88))(v50, v4);
      v52 = (v46 + 8);
      if (v51 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v53 = v51, v51 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v52)(v109, v4);
      }

      else
      {
        v54 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_1000325F0();
        isa = sub_100770E4C(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v55 = *v52;
        (*v52)(v109, v4);
        if (v53 != v54)
        {
          v55(v104, v4);
        }
      }

      v32 = v106;
      v14 = v102;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }
  }

  v56 = v43;
  [v110 setTextColor:isa];

  v109 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel);
  v57 = v21[2];
  v58 = v57;
  if (!v57)
  {
    v59 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v59, 1, v4))
    {
      v60 = v14;
      v61 = v108;
      v62.n128_f64[0] = (*(v108 + 16))(v60, v1 + v59, v4);
      v58 = sub_100666230(v62);
      v63 = v60;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
      (*(v61 + 8))(v63, v4);
    }
  }

  v64 = v57;
  [v109 setTextColor:v58];

  v65 = v21[3];
  v66 = v65;
  if (!v65)
  {
    v67 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v67, 1, v4))
    {
      v68 = v108;
      v69 = *(v108 + 16);
      v70 = v1 + v67;
      v71 = v103;
      v69(v103, v70, v4);
      v72 = v105;
      v69(v105, v71, v4);
      v73 = (*(v68 + 88))(v72, v4);
      v74 = (v68 + 8);
      if (v73 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v75 = v73, v73 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v66 = [objc_opt_self() whiteColor];
        (*v74)(v71, v4);
      }

      else
      {
        LODWORD(v108) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_1000325F0();
        v76 = v71;
        v66 = sub_100770E4C(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v77 = *v74;
        (*v74)(v76, v4);
        if (v75 != v108)
        {
          v77(v105, v4);
        }
      }

      v32 = v106;
      v24 = &selRef_initWithTabBarSystemItem_tag_;
    }
  }

  v78 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton);
  v79 = v65;
  [v78 setTitleColor:v66 forState:0];
  [v78 setTitleColor:v66 forState:1];
  v80 = v24[254];
  v105 = v66;
  [v78 v80];
  v108 = v1;
  v81 = *(v1 + v32);
  v82 = v19;
  if (v81)
  {
    v83 = *(v19 + 36);
    v84 = sub_10076D3DC();
    v85 = *(v84 - 8);
    v86 = v107;
    (*(v85 + 16))(v107, v21 + v83, v84);
    (*(v85 + 56))(v86, 0, 1, v84);
    v19 = v82;
    v87 = v81;
    sub_1007625DC();
  }

  v88 = *(v19 + 40);
  v89 = sub_10076D3DC();
  v90 = *(v89 - 8);
  v91 = *(v90 + 16);
  v92 = v107;
  v91(v107, v21 + v88, v89);
  v93 = *(v90 + 56);
  v93(v92, 0, 1, v89);
  sub_1007625DC();
  v91(v92, v21 + v82[13], v89);
  v93(v92, 0, 1, v89);
  sub_1007625DC();
  v91(v92, v21 + v82[14], v89);
  v93(v92, 0, 1, v89);
  sub_10076311C();
  v94 = *(v108 + v106);
  if (v94)
  {
    v95 = *(v21 + v82[23]);
    v96 = v95;
    v97 = v94;
    sub_1004CF328(v95);
  }

  v98 = *(v21 + v82[23]);
  v99 = v98;
  sub_1004CF328(v98);
  sub_1004CF328(v98);
  sub_10024E618(v98);

  return sub_1000A91F8(v21, v100);
}

double sub_10063A510(__n128 a1)
{
  v2 = v1;
  v3 = sub_100761DAC();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100962290, &qword_1007B0EB0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v9 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v19;
  v23 = v34;
  (*(v15 + 16))(v17, v21, v14);
  v36 = v2;
  sub_10075FDCC();
  (*(v15 + 8))(v17, v14);
  v24 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v23 + 104))(v13, enum case for BreakoutDetails.BackgroundStyle.material(_:), v3);
  (*(v23 + 56))(v13, 0, 1, v3);
  v25 = *(v6 + 56);
  sub_100016E2C(v2 + v24, v8, &qword_10094E398, &unk_100796440);
  sub_100016E2C(v13, &v8[v25], &qword_10094E398, &unk_100796440);
  v26 = *(v23 + 48);
  if (v26(v8, 1, v3) != 1)
  {
    v28 = v33;
    sub_100016E2C(v8, v33, &qword_10094E398, &unk_100796440);
    if (v26(&v8[v25], 1, v3) != 1)
    {
      v30 = v32;
      (*(v23 + 32))(v32, &v8[v25], v3);
      sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
      sub_10076FF1C();
      v31 = *(v23 + 8);
      v31(v30, v3);
      sub_10000CFBC(v13, &qword_10094E398, &unk_100796440);
      v31(v28, v3);
      sub_10000CFBC(v8, &qword_10094E398, &unk_100796440);
      goto LABEL_7;
    }

    sub_10000CFBC(v13, &qword_10094E398, &unk_100796440);
    (*(v23 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_10000CFBC(v13, &qword_10094E398, &unk_100796440);
  if (v26(&v8[v25], 1, v3) != 1)
  {
LABEL_6:
    sub_10000CFBC(v8, &qword_100962290, &qword_1007B0EB0);
    goto LABEL_7;
  }

  sub_10000CFBC(v8, &qword_10094E398, &unk_100796440);
LABEL_7:
  sub_1000A91F8(v22, v27);
  return 0.0;
}

id sub_10063AA94(uint64_t a1, __n128 a2)
{
  v94 = sub_100760B4C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v91 = *(v92 - 1);
  __chkstk_darwin(v92);
  v89 = &v88 - v4;
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v5 - 8);
  v88 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v7 - 8);
  v90 = &v88 - v8;
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v96 = &v88 - v10;
  v99 = sub_10076771C();
  v103 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v88 - v13;
  v98 = sub_10076D3DC();
  v101 = *(v98 - 8);
  __chkstk_darwin(v98);
  v100 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100761DDC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  v22 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  v23 = *(v16 + 16);
  v24 = v2;
  v23(v21, &v2[v22], v15);
  sub_10063EBB8(&qword_1009622B8, &type metadata accessor for BreakoutDetails.Badge, &protocol conformance descriptor for BreakoutDetails.Badge);
  v25 = sub_10076FF1C();
  v26 = v21;
  v27 = *(v16 + 8);
  result = v27(v26, v15);
  if ((v25 & 1) == 0)
  {
    v23(v18, &v24[v22], v15);
    v29 = (*(v16 + 88))(v18, v15);
    v30 = v24;
    if (v29 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v95 = v24;
      (*(v16 + 96))(v18, v15);
      v31 = v18[1];
      v93 = *v18;
      v94 = v31;
      if (qword_100941030 != -1)
      {
        swift_once();
      }

      v32 = v98;
      v33 = sub_10000A61C(v98, qword_1009A1E88);
      v34 = v100;
      v35 = v101;
      v36 = *(v101 + 16);
      v36(v100, v33, v32);
      v37 = v36;
      v92 = v36;
      v38 = enum case for DirectionalTextAlignment.none(_:);
      v91 = *(v103 + 104);
      v39 = v99;
      (v91)(v102, enum case for DirectionalTextAlignment.none(_:), v99);
      v40 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
      *&v40[qword_10095A0D0] = 0;
      v41 = v96;
      v37(v96, v34, v32);
      v42 = *(v35 + 56);
      v42(v41, 0, 1, v32);
      v43 = v97;
      (v91)(v97, v38, v39);
      v44 = sub_1007626AC();
      v45 = v100;
      v92(v41, v100, v32);
      v42(v41, 0, 1, v32);
      v46 = v44;
      sub_1007625DC();
      sub_1007625BC();
      [v46 setNumberOfLines:1];
      v48 = v102;
      v47 = v103;
      (*(v103 + 16))(v43, v102, v39);
      sub_10076262C();
      (*(v47 + 8))(v48, v39);
      (*(v101 + 8))(v45, v32);
      sub_10076266C();
      v49 = sub_10076FF6C();

      [v46 setText:v49];

      v50 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v30 = v95;
      v51 = *&v95[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      v52 = v46;
      if (v51)
      {
        [v51 removeFromSuperview];
        v53 = *&v30[v50];
      }

      else
      {
        v53 = 0;
      }

      *&v30[v50] = v46;
      v76 = v46;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
      v77 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
      v78 = *&v30[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
      if (v78)
      {
        [v78 removeFromSuperview];
        v79 = *&v30[v77];
      }

      else
      {
        v79 = 0;
      }

      *&v30[v77] = 0;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else if (v29 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v54 = enum case for Wordmark.arcade(_:);
      v55 = sub_10076C43C();
      v56 = *(v55 - 8);
      v57 = v90;
      (*(v56 + 104))(v90, v54, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
      swift_beginAccess();
      v59 = v91;
      v60 = &v30[v58];
      v61 = v89;
      v62 = v92;
      (*(v91 + 16))(v89, v60, v92);
      v104 = v30;
      v63 = v88;
      sub_10075FDCC();
      v64.n128_f64[0] = (*(v59 + 8))(v61, v62);
      v65 = *(v63 + 32);
      sub_1000A91F8(v63, v64);
      (*(v93 + 104))(v95, enum case for WordmarkView.Alignment.center(_:), v94);
      v105 = &type metadata for CGFloat;
      v106 = &protocol witness table for CGFloat;
      v104 = v65;
      v66 = objc_allocWithZone(sub_100760B6C());
      v67 = sub_100760B3C();
      v68 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v69 = *&v30[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      if (v69)
      {
        [v69 removeFromSuperview];
        v70 = *&v30[v68];
      }

      else
      {
        v70 = 0;
      }

      *&v30[v68] = 0;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
      v83 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
      v84 = *&v30[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
      v85 = v67;
      if (v84)
      {
        [v84 removeFromSuperview];
        v84 = *&v30[v83];
      }

      *&v30[v83] = v67;
      v86 = v67;

      sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v71 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
      v72 = *&v24[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
      if (v29 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
        v73 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
        v74 = *&v30[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
        if (v74)
        {
          [v74 removeFromSuperview];
          v75 = *&v30[v73];
        }

        else
        {
          v75 = 0;
        }

        *&v30[v73] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel);
        v80 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
        v81 = *&v24[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
        if (v81)
        {
          [v81 removeFromSuperview];
          v82 = *&v24[v80];
        }

        else
        {
          v82 = 0;
        }

        *&v24[v80] = 0;

        sub_10063C5E8(&OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark);
        v27(v18, v15);
      }
    }

    sub_1006398D8();
    sub_10063B688(v87);
    return [v30 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10063B688(__n128 a1)
{
  v2 = v1;
  v3 = sub_100761DAC();
  v106 = *(v3 - 8);
  __chkstk_darwin(v3);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10000A5D4(&qword_100962290, &qword_1007B0EB0);
  __chkstk_darwin(v105);
  v6 = &v98 - v5;
  v7 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v7 - 8);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v98 - v10;
  v102 = sub_100760B4C();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v103 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100761D8C();
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v98 - v15;
  __chkstk_darwin(v17);
  v113 = &v98 - v18;
  v19 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v110 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v110);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v25], v19);
  v117 = v2;
  sub_10075FDCC();
  (*(v20 + 8))(v22, v19);
  v26 = [v2 traitCollection];
  LOBYTE(v19) = sub_10077071C();

  v109 = v24;
  if ((v19 & 1) != 0 && v24[*(v110 + 96)] == 1)
  {
    v27 = v112;
    (*(v114 + 104))(v113, enum case for BreakoutDetails.TextAlignment.leading(_:), v112);
  }

  else
  {
    v28 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v27 = v112;
    (*(v114 + 16))(v113, &v2[v28], v112);
  }

  v29 = sub_100761D7C();
  v30 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
  v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v31)
  {
    [v31 setTextAlignment:v29];
  }

  v107 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  [v107 setTextAlignment:v29];
  v111 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  [v111 setTextAlignment:v29];
  v104 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
  v32 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v32)
  {
    v33 = v114;
    (*(v114 + 16))(v16, v113, v27);
    v34 = (*(v33 + 88))(v16, v27);
    if (v34 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v101 + 104))(v103, enum case for WordmarkView.Alignment.leading(_:), v102);
    }

    else if (v34 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v101 + 104))(v103, enum case for WordmarkView.Alignment.trailing(_:), v102);
    }

    else
    {
      v35 = *(v101 + 104);
      if (v34 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v35(v103, enum case for WordmarkView.Alignment.leading(_:), v102);
        v97 = *(v114 + 8);
        v36 = v32;
        v97(v16, v27);
        goto LABEL_15;
      }

      v35(v103, enum case for WordmarkView.Alignment.center(_:), v102);
    }

    v36 = v32;
LABEL_15:
    sub_100760B5C();
  }

  v37 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v38 = v106;
  (*(v106 + 104))(v11, enum case for BreakoutDetails.BackgroundStyle.material(_:), v3);
  (*(v38 + 56))(v11, 0, 1, v3);
  v39 = *(v105 + 48);
  sub_100016E2C(&v2[v37], v6, &qword_10094E398, &unk_100796440);
  sub_100016E2C(v11, &v6[v39], &qword_10094E398, &unk_100796440);
  v40 = *(v38 + 48);
  v41 = &off_100911000;
  if (v40(v6, 1, v3) == 1)
  {
    sub_10000CFBC(v11, &qword_10094E398, &unk_100796440);
    v42 = &selRef_initWithTabBarSystemItem_tag_;
    if (v40(&v6[v39], 1, v3) == 1)
    {
      sub_10000CFBC(v6, &qword_10094E398, &unk_100796440);
      v43 = v108;
      v44 = v110;
LABEL_28:
      v56 = *&v2[v104];
      if (v56)
      {
        v57 = [v56 v41[274]];
        [v57 setCompositingFilter:kCAFilterPlusL];
      }

      v58 = *&v2[v30];
      if (v58)
      {
        v59 = [v58 v41[274]];
        v60 = kCAFilterPlusL;
        [v59 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v60 = kCAFilterPlusL;
      }

      v61 = [v111 v41[274]];
      [v61 setCompositingFilter:v60];

      v62 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
      v50 = [v62 v41[274]];

      [v50 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v45 = v100;
  sub_100016E2C(v6, v100, &qword_10094E398, &unk_100796440);
  if (v40(&v6[v39], 1, v3) == 1)
  {
    sub_10000CFBC(v11, &qword_10094E398, &unk_100796440);
    (*(v38 + 8))(v45, v3);
    v42 = &selRef_initWithTabBarSystemItem_tag_;
    v41 = &off_100911000;
LABEL_21:
    sub_10000CFBC(v6, &qword_100962290, &qword_1007B0EB0);
    v43 = v108;
    v44 = v110;
    goto LABEL_22;
  }

  v51 = v99;
  (*(v38 + 32))(v99, &v6[v39], v3);
  sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v105) = sub_10076FF1C();
  v52 = v30;
  v53 = v45;
  v54 = *(v38 + 8);
  v54(v51, v3);
  sub_10000CFBC(v11, &qword_10094E398, &unk_100796440);
  v55 = v53;
  v30 = v52;
  v54(v55, v3);
  sub_10000CFBC(v6, &qword_10094E398, &unk_100796440);
  v43 = v108;
  v42 = &selRef_initWithTabBarSystemItem_tag_;
  v44 = v110;
  v41 = &off_100911000;
  if (v105)
  {
    goto LABEL_28;
  }

LABEL_22:
  v46 = *&v2[v104];
  if (v46)
  {
    v47 = [v46 v41[274]];
    [v47 setCompositingFilter:0];
  }

  v48 = *&v2[v30];
  if (v48)
  {
    v49 = [v48 v41[274]];
    [v49 setCompositingFilter:0];
  }

  v50 = [v111 v41[274]];
  [v50 setCompositingFilter:0];
LABEL_34:

  v63 = v109;
  v64 = &v109[*(v44 + 84)];
  v65 = v112;
  if (v64[8])
  {
    v66 = [v2 v42[274]];
    v67 = sub_1007706EC();

    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    [v107 setNumberOfLines:v68];
  }

  else
  {
    [v107 setNumberOfLines:*v64];
  }

  v69 = v63 + *(v44 + 88);
  if (*(v69 + 8))
  {
    v70 = [v2 v42[274]];
    v71 = sub_1007706EC();

    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    [v111 setNumberOfLines:v72];
  }

  else
  {
    [v111 setNumberOfLines:*v69];
  }

  v73 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v74 = v114;
  (*(v114 + 16))(v43, &v2[v73], v65);
  v75 = (*(v74 + 88))(v43, v65);
  if (v75 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_1009413A0 != -1)
    {
      swift_once();
    }

    v76 = sub_10000A5D4(&qword_100962298, &qword_1007B0EB8);
    v77 = qword_1009620E0;
LABEL_54:
    sub_10000A61C(v76, v77);
    v115 = v2;
    v78 = v2;
    sub_10075FDCC();

    v79 = v116;
    goto LABEL_55;
  }

  if (v75 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_1009413A8 != -1)
    {
      swift_once();
    }

    v76 = sub_10000A5D4(&qword_100962298, &qword_1007B0EB8);
    v77 = qword_1009620F8;
    goto LABEL_54;
  }

  if (v75 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v79 = 0;
  }

  else
  {
    if (qword_1009413A0 != -1)
    {
      swift_once();
    }

    v94 = sub_10000A5D4(&qword_100962298, &qword_1007B0EB8);
    sub_10000A61C(v94, qword_1009620E0);
    v115 = v2;
    v95 = v2;
    sub_10075FDCC();

    v96 = v116;
    (*(v114 + 8))(v43, v65);
    v79 = v96;
  }

LABEL_55:
  v80 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  [v80 setContentHorizontalAlignment:v79];
  v81 = [v80 titleLabel];
  if (!v81)
  {
    goto LABEL_63;
  }

  v82 = v81;
  v83 = sub_100770E6C();
  v85 = v84;

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {
    v87 = [v2 v42[274]];
    v88 = sub_10077070C();

    if (v88)
    {
      v89 = 0.0;
    }

    else
    {
      v89 = 2.0;
    }

    [v80 setImageEdgeInsets:{0.0, v89}];
    v90 = sub_1005A5DB8(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v80 setImage:v90 forState:0];
  }

  else
  {
LABEL_63:
    [v80 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v80 setImage:0 forState:0];
  }

  sub_10063D624(v91);
  v92.n128_f64[0] = (*(v114 + 8))(v113, v65);
  return sub_1000A91F8(v63, v92);
}

id sub_10063C5E8(void *a1)
{
  v3 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_100016E2C(&v1[v11], v9, &qword_10094E398, &unk_100796440);
    v12 = sub_100761DAC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_100016E2C(v9, v5, &qword_10094E398, &unk_100796440);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10000CFBC(v9, &qword_10094E398, &unk_100796440);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10063C830(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_100761DAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v8 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10000A5D4(&qword_100962290, &qword_1007B0EB0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v43 = v19;
  sub_100016E2C(&v3[v19], v18, &qword_10094E398, &unk_100796440);
  sub_100016E2C(a1, &v18[v20], &qword_10094E398, &unk_100796440);
  v21 = v6;
  v22 = *(v6 + 48);
  if (v22(v18, 1, v5) == 1)
  {
    if (v22(&v18[v20], 1, v5) == 1)
    {
      return sub_10000CFBC(v18, &qword_10094E398, &unk_100796440);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v18, v14, &qword_10094E398, &unk_100796440);
  if (v22(&v18[v20], 1, v5) == 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_6:
    sub_10000CFBC(v18, &qword_100962290, &qword_1007B0EB0);
    goto LABEL_7;
  }

  v31 = v41;
  (*(v6 + 32))(v41, &v18[v20], v5);
  sub_10063EBB8(&unk_1009622A0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v40) = sub_10076FF1C();
  v32 = *(v6 + 8);
  v32(v31, v5);
  v32(v14, v5);
  result = sub_10000CFBC(v18, &qword_10094E398, &unk_100796440);
  if ((v40 & 1) == 0)
  {
LABEL_7:
    v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
    [v40 removeFromSuperview];
    v23 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark;
    v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
    if (v24)
    {
      [v24 removeFromSuperview];
    }

    v25 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel;
    v26 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
    if (v26)
    {
      [v26 removeFromSuperview];
    }

    v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
    [v27 removeFromSuperview];
    v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
    [v28 removeFromSuperview];
    v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
    [v41 removeFromSuperview];
    v18 = v44;
    sub_100016E2C(&v3[v43], v44, &qword_10094E398, &unk_100796440);
    if (v22(v18, 1, v5) != 1)
    {
      v29 = v42;
      sub_100016E2C(v18, v42, &qword_10094E398, &unk_100796440);
      if ((*(v21 + 88))(v29, v5) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v30 = v40;
        [v3 addSubview:v40];
        if (*&v3[v23])
        {
          [v3 addSubview:?];
        }

        else
        {
          v34 = *&v3[v25];
          if (v34)
          {
            v35 = v34;
            v36 = [v30 contentView];
            [v36 addSubview:v35];
          }
        }

        v37 = [v30 contentView];
        [v37 addSubview:v27];

        v38 = [v30 contentView];
        [v38 addSubview:v28];

        v39 = [v30 contentView];
        [v39 addSubview:v41];

        return sub_10000CFBC(v18, &qword_10094E398, &unk_100796440);
      }

      (*(v21 + 8))(v29, v5);
    }

    if (*&v3[v23] || *&v3[v25])
    {
      [v3 addSubview:?];
    }

    [v3 addSubview:v27];
    [v3 addSubview:v28];
    [v3 addSubview:v41];
    return sub_10000CFBC(v18, &qword_10094E398, &unk_100796440);
  }

  return result;
}

uint64_t sub_10063CF44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v55 = sub_10076D1FC();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v52 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100765D2C();
  __chkstk_darwin(v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[0] = sub_100765D4C();
  v17 = *(v52[0] - 8);
  *&v18 = __chkstk_darwin(v52[0]).n128_u64[0];
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v52[1] = ObjectType;
  objc_msgSendSuper2(&v60, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v57 = v1;
  v22 = v1;
  sub_10075FDCC();
  (*(v8 + 8))(v10, v7);

  sub_10063A510(v23);
  sub_100637E90(v13, v16);
  sub_1000A91F8(v13, v24);
  v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v26 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v58 = v26;
  v59 = &protocol witness table for UILabel;
  v56[19] = &protocol witness table for UILabel;
  v57 = v25;
  v27 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v56[18] = v26;
  v56[15] = v27;
  v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v28)
  {
    v29 = &protocol witness table for UILabel;
    v30 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v30 = 0;
    v26 = 0;
    v29 = 0;
    v56[12] = 0;
    v56[11] = 0;
  }

  v56[10] = v30;
  v56[13] = v26;
  v56[14] = v29;
  v31 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = sub_100760B6C();
    v33 = &protocol witness table for UIView;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v56[7] = 0;
    v56[6] = 0;
  }

  v56[5] = v31;
  v56[8] = v32;
  v56[9] = v33;
  v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  v35 = v28;
  v36 = v31;
  v37 = v25;
  v38 = v27;
  v39 = [v34 titleForState:0];
  if (v39)
  {

    v40 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v39 = v34;
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v56[2] = 0;
    v56[1] = 0;
  }

  v56[0] = v39;
  v56[3] = v40;
  v56[4] = v41;
  sub_100765D3C();
  v42 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016E2C(&v22[v42], v6, &qword_10094E398, &unk_100796440);
  v43 = sub_100761DAC();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v6, 1, v43) == 1)
  {
    sub_10000CFBC(v6, &qword_10094E398, &unk_100796440);
LABEL_14:
    sub_10076422C();
    v49 = v53;
    goto LABEL_15;
  }

  v45 = (*(v44 + 88))(v6, v43);
  v46 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v44 + 8))(v6, v43);
  if (v45 != v46)
  {
    goto LABEL_14;
  }

  v47 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView];
  sub_10076422C();
  [v47 setFrame:?];
  v48 = [v47 contentView];
  [v48 bounds];

  v49 = v53;
LABEL_15:
  sub_100765CDC();
  v50.n128_f64[0] = (*(v54 + 8))(v49, v55);
  sub_10063D624(v50);
  return (*(v17 + 8))(v20, v52[0]);
}

void sub_10063D624(__n128 a1)
{
  v2 = v1;
  v3 = sub_10075D78C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel);
  v9 = [v8 font];
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = v9;
  v11 = [v8 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10076FF9C();
    v15 = v14;

    v48 = v13;
    v49 = v15;

    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    LOBYTE(v12) = v16;
    (*(v4 + 8))(v7, v3);

    if (v12)
    {

      v17 = 0;
    }

    else
    {
      [v10 lineHeight];
      v19 = v18;

      v20 = ceil(v19 * 1.3);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v20 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v17 = v20;
    }
  }

  else
  {

    v17 = 0;
  }

  sub_1001E1328(v17);
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel);
  v22 = [v21 font];
  if (!v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v22;
  v24 = [v21 text];
  if (!v24)
  {

    v30 = 0;
    goto LABEL_19;
  }

  v25 = v24;
  v26 = sub_10076FF9C();
  v28 = v27;

  v48 = v26;
  v49 = v28;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  LOBYTE(v25) = v29;
  (*(v4 + 8))(v7, v3);

  if (v25)
  {

    v30 = 0;
    goto LABEL_19;
  }

  [v23 lineHeight];
  v32 = v31;

  v33 = ceil(v32 * 1.3);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = v33;
LABEL_19:
  sub_1001E1328(v30);
  v34 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v36 = [v34 font];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = [v35 text];
  if (!v38)
  {

    goto LABEL_25;
  }

  v39 = v38;
  v40 = sub_10076FF9C();
  v42 = v41;

  v48 = v40;
  v49 = v42;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  LOBYTE(v39) = v43;
  (*(v4 + 8))(v7, v3);

  if ((v39 & 1) == 0)
  {
    [v37 lineHeight];
    v46 = v45;

    v47 = ceil(v46 * 1.3);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v47 > -9.22337204e18)
      {
        if (v47 < 9.22337204e18)
        {
          v44 = v47;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v44 = 0;
LABEL_30:
  sub_1001E1328(v44);
}

void sub_10063DEF0(uint64_t a1)
{
  sub_100761DDC();
  if (v1 <= 0x3F)
  {
    sub_10063E074(319);
    if (v2 <= 0x3F)
    {
      sub_100761D8C();
      if (v3 <= 0x3F)
      {
        sub_10063E558(319, &unk_100962180, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10063E074(uint64_t a1)
{
  if (!qword_100962170)
  {
    sub_10000CE78(&unk_100943120, &unk_100784C10);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v1 = sub_10075FEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100962170);
    }
  }
}

uint64_t sub_10063E11C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_10076D3DC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10063E26C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_10076D3DC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10063E39C(uint64_t a1)
{
  sub_10063E558(319, qword_10094B9D0, sub_1000325F0);
  if (v1 <= 0x3F)
  {
    sub_10076D3DC();
    if (v2 <= 0x3F)
    {
      sub_10063E508();
      if (v3 <= 0x3F)
      {
        sub_10063E558(319, &qword_100962200, &type metadata accessor for FontUseCase);
        if (v4 <= 0x3F)
        {
          sub_10063E558(319, &unk_100962208, type metadata accessor for UIContentSizeCategory);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10063E508()
{
  if (!qword_1009621F8)
  {
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009621F8);
    }
  }
}

void sub_10063E558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10063E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10063E61C(uint64_t a1, char *a2, double a3, double a4)
{
  v50 = a1;
  v5 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100765D2C();
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100765D4C();
  v18 = *(v49 - 8);
  __chkstk_darwin(v49);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v21], v8);
  v52 = a2;
  v22 = a2;
  sub_10075FDCC();
  (*(v9 + 8))(v11, v8);

  sub_10063A510(v23);
  sub_100637E90(v14, v17);
  sub_1000A91F8(v14, v24);
  v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  v26 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v53 = v26;
  v54 = &protocol witness table for UILabel;
  v51[19] = &protocol witness table for UILabel;
  v52 = v25;
  v27 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  v51[18] = v26;
  v51[15] = v27;
  v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  if (v28)
  {
    v29 = &protocol witness table for UILabel;
    v30 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v30 = 0;
    v26 = 0;
    v29 = 0;
    v51[11] = 0;
    v51[12] = 0;
  }

  v51[10] = v30;
  v51[13] = v26;
  v51[14] = v29;
  v31 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = sub_100760B6C();
    v33 = &protocol witness table for UIView;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v51[7] = 0;
    v51[6] = 0;
  }

  v51[5] = v31;
  v51[8] = v32;
  v51[9] = v33;
  v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
  v35 = v28;
  v36 = v31;
  v37 = v25;
  v38 = v27;
  v39 = [v34 titleForState:0];
  if (v39)
  {

    v40 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v39 = v34;
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v51[2] = 0;
    v51[1] = 0;
  }

  v51[0] = v39;
  v51[3] = v40;
  v51[4] = v41;
  sub_100765D3C();
  sub_100765CCC();
  v43 = v42;
  (*(v18 + 8))(v20, v49);
  v44 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016E2C(&v22[v44], v7, &qword_10094E398, &unk_100796440);
  v45 = sub_100761DAC();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v7, 1, v45) == 1)
  {
    sub_10000CFBC(v7, &qword_10094E398, &unk_100796440);
  }

  else
  {
    (*(v46 + 88))(v7, v45);
    (*(v46 + 8))(v7, v45);
  }

  return v43;
}

uint64_t sub_10063EBB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10063EC00()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_100761DDC();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_100761D8C();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_100761DAC();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_10077156C();
  __break(1u);
}

void sub_10063ED74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v6 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10076BD9C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  sub_100016E2C(a3, v8, &qword_100943190, qword_100798490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &qword_100943190, qword_100798490);
    v19 = v31;
    if (!v31)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *(v10 + 32);
    v20(v18, v8, v9);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if (*&Strong[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork])
      {

        sub_10076C01C();

        v20(v15, v12, v9);
        sub_100640884(&qword_100943198, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v23 = sub_10076FF1C();
        v24 = *(v10 + 8);
        v24(v15, v9);
        v24(v18, v9);
        if ((v23 & 1) == 0)
        {
          return;
        }

        v19 = v31;
        if (!v31)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    (*(v10 + 8))(v18, v9);
    v19 = v31;
    if (!v31)
    {
LABEL_11:
      v25 = 0;
      goto LABEL_12;
    }
  }

LABEL_8:
  v25 = [v19 imageWithRenderingMode:2];
LABEL_12:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView);

    v32.value.super.isa = v25;
    v32.is_nil = 0;
    sub_10075FCEC(v32, v29);
  }
}

double sub_10063F1C4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_1007637CC();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v84 = *(v11 - 8);
  v85 = v11;
  __chkstk_darwin(v11);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076D3DC();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100762A3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = sub_1007637AC();
  v87 = *(v21 - 8);
  v88 = v21;
  __chkstk_darwin(v21);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v71 - v24;
  v26 = sub_10076015C();
  sub_10076012C();
  ObjectType = swift_getObjectType();
  v95 = a6;
  sub_100495254(v26, v20, a6, v25);

  v27 = *(v15 + 8);
  v77 = v20;
  v96 = v27;
  v27(v20, v14);
  v28 = sub_10076DDDC();
  swift_allocObject();
  v29 = sub_10076DDBC();
  swift_allocObject();
  v74 = sub_10076DDBC();
  swift_allocObject();
  v73 = sub_10076DDBC();
  v86 = v25;
  sub_10076378C();
  v94 = v28;
  swift_allocObject();
  v30 = sub_10076DDBC();
  v91 = a1;
  sub_10076012C();
  v31 = (*(v15 + 88))(v17, v14);
  v75 = v29;
  v72 = v30;
  if (v31 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v31 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v31 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v34 = v95;
      v35 = v84;
      if (qword_100940DD0 != -1)
      {
        swift_once();
      }

      v39 = v92;
      v40 = sub_10000A61C(v92, qword_1009A1768);
      (*(v90 + 16))(v89, v40, v39);
      v38 = 4;
    }

    else
    {
      v34 = v95;
      v35 = v84;
      if (qword_100940DC8 != -1)
      {
        swift_once();
      }

      v36 = v92;
      v37 = sub_10000A61C(v92, qword_1009A1750);
      (*(v90 + 16))(v89, v37, v36);
      (v96)(v17, v14);
      v38 = 1;
    }

    v96 = v38;
    goto LABEL_13;
  }

  if (qword_100940DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v32 = v92;
    v33 = sub_10000A61C(v92, qword_1009A1750);
    (*(v90 + 16))(v89, v33, v32);
    v96 = 1;
    v34 = v95;
    v35 = v84;
LABEL_13:
    v41 = v83;
    sub_10005312C();
    v42 = [v34 traitCollection];
    v43 = sub_100770B3C();

    sub_10076013C();
    v44 = sub_10076C04C();
    v103[3] = v44;
    v84 = sub_100640884(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v103[4] = v84;
    v45 = sub_10000DB7C(v103);
    v46 = *(v44 - 8);
    v47 = *(v46 + 104);
    LODWORD(v83) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v81 = v46 + 104;
    v82 = v47;
    v47(v45);
    v48 = v43;
    sub_10076C90C();
    sub_10000CD74(v103);
    v71 = v48;
    sub_10076996C();
    sub_10076994C();
    v49 = v34;
    v50 = v35[1];
    v51 = v85;
    v50(v41, v85);
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v92, qword_1009A1780);
    v52 = [v49 traitCollection];
    v53 = sub_100770B3C();

    sub_10076014C();
    v102[3] = v44;
    v102[4] = v84;
    v54 = sub_10000DB7C(v102);
    v82(v54, v83, v44);
    v55 = v53;
    sub_10076C90C();
    sub_10000CD74(v102);
    sub_10076996C();
    sub_10076994C();
    v50(v41, v51);
    v96 = sub_10076010C();
    if (v96 >> 62)
    {
      v56 = sub_10077158C();
      v84 = v55;
      if (!v56)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v56 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v84 = v55;
      if (!v56)
      {
        goto LABEL_29;
      }
    }

    type metadata accessor for PrivacyCategoryView();
    if (v56 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v57 = 0;
  v58 = v96 & 0xC000000000000001;
  v59 = _swiftEmptyArrayStorage;
  do
  {
    if (v58)
    {
      v60 = sub_10077149C();
    }

    else
    {
      v60 = *(v96 + 8 * v57 + 32);
    }

    v62 = sub_1001052B0(v60, v95, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_10049D2D0(0, v59[2] + 1, 1, v59);
    }

    v64 = v59[2];
    v63 = v59[3];
    if (v64 >= v63 >> 1)
    {
      v59 = sub_10049D2D0((v63 > 1), v64 + 1, 1, v59);
    }

    ++v57;

    v100 = v94;
    v101 = &protocol witness table for LayoutViewPlaceholder;
    *&v99 = v62;
    v59[2] = v64 + 1;
    sub_100012498(&v99, &v59[5 * v64 + 4]);
  }

  while (v56 != v57);
LABEL_29:

  v65 = [v95 traitCollection];
  sub_10076E20C();

  v66 = v94;
  swift_allocObject();
  v67 = sub_10076DDBC();
  (*(v87 + 16))(v76, v86, v88);
  v100 = v66;
  v101 = &protocol witness table for LayoutViewPlaceholder;
  *&v99 = v75;
  v98[23] = v66;
  v98[24] = &protocol witness table for LayoutViewPlaceholder;
  v98[19] = &protocol witness table for LayoutViewPlaceholder;
  v98[20] = v74;
  v98[18] = v66;
  v98[14] = &protocol witness table for LayoutViewPlaceholder;
  v98[15] = v73;
  v98[13] = v66;
  v98[9] = &protocol witness table for LayoutViewPlaceholder;
  v98[10] = v67;
  v96 = v67;
  v98[8] = v66;
  v98[5] = v72;
  sub_10000A570(v103, v98);
  sub_10000A570(v102, &v97);

  sub_10076012C();
  v68 = v78;
  sub_1007637BC();
  sub_100640884(&qword_10094F870, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v69 = v80;
  sub_10076D2AC();

  (*(v79 + 8))(v68, v69);
  sub_10000CD74(v102);
  sub_10000CD74(v103);
  (*(v90 + 8))(v89, v92);
  (*(v87 + 8))(v86, v88);
  return a2;
}

void sub_10063FDF0()
{
  v1 = v0;
  v2 = sub_100762A3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076012C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v6, v5, v2);
  swift_endAccess();
  sub_100496EE4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_10076013C();
  sub_100496C50(v7, v8);
  v9 = sub_10076014C();
  sub_100496C5C(v9, v10);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_10076015C();

  v11 = sub_10076010C();
  sub_100499334();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = v11;

  sub_100496C68();
}

void sub_10063FF88()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork))
  {

    sub_10076BFBC();
    sub_100760C4C();
    sub_10075FD2C();
    sub_100760BCC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v9, &qword_100943310, &unk_100784150);
  }

  v1 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (*&v5[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category])
      {

        sub_10076217C();

        sub_10076BFBC();
        v7 = *&v6[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView];
        sub_10075FD2C();
        sub_100640884(&qword_100951F78, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
        v8 = v7;
        sub_10077140C();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100760B7C();

        sub_10000CFBC(v9, &qword_100943310, &unk_100784150);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1006402C4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_10077164C();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100016E2C(a1, v8, &unk_1009568A0, &qword_100784890);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyFooter(_:), v9);
    sub_100640884(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v27 == v25 && v28 == v26)
    {
      v20 = *(v10 + 8);
      v20(v12, v9);
      v20(v15, v9);
    }

    else
    {
      v21 = sub_10077167C();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);

      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  sub_10000CFBC(v8, &unk_1009568A0, &qword_100784890);
LABEL_3:
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  sub_10000A61C(v16, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v18 = v17;
  (*(v3 + 8))(v5, v24);
  return v18;
}

void sub_1006406C0(uint64_t a1, uint64_t a2)
{
  sub_10075FD2C();
  sub_100640884(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_10077158C();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      sub_100760BFC();
    }
  }
}

uint64_t sub_100640844()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100640884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10064091C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760DAC();
  sub_100640B5C(&qword_10094C4B8, &type metadata accessor for EditorialLink, &protocol conformance descriptor for EditorialLink);
  sub_10076332C();
  v6 = v16;
  if (!v16)
  {
    return 0.0;
  }

  sub_10000A5D4(&unk_1009467A0, &qword_1007890C8);
  sub_10076F64C();
  sub_10076FC1C();
  v15[1] = v6;
  sub_10075F74C();

  v7 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v8 = v17;
  }

  else
  {

    v8 = 0;
    v7 = v6;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = sub_100630CB4();
  sub_1001B7EC0(v7, v8, v12, v11);
  v9 = v13;
  swift_unknownObjectRelease();

  sub_1000A9094(v7, v8);
  return v9;
}

uint64_t sub_100640B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100640BBC()
{
  result = qword_100962328;
  if (!qword_100962328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962328);
  }

  return result;
}

uint64_t sub_100640C10()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_100962310);
  sub_10000A61C(v4, qword_100962310);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_100640D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_1007627AC();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_10076B96C();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100640F04, 0, 0);
}

uint64_t sub_100640F04()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_10000A5D4(&qword_10094D7B8, qword_1007948F8);
  sub_10076FC1C();
  sub_10075EC6C();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10000CFBC(v0[18], &qword_100942A80, &unk_1007B5CE0);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    sub_10075EE0C();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_10064112C;

  return sub_100641BF4();
}

uint64_t sub_10064112C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1006413B0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_10064129C;

    return sub_10064229C(v2 + 16);
  }
}

uint64_t sub_10064129C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100641730;
  }

  else
  {
    v2 = sub_100641550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006413B0(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[17];
  sub_10075EC6C();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[17];
    swift_unknownObjectRelease();
    sub_10000CD74(v1 + 2);
    sub_10000CFBC(v5, &qword_100942A80, &unk_1007B5CE0);
  }

  else
  {
    v6 = v1[23];
    v7 = v1[19];
    v8 = v1[20];
    (*(v8 + 32))(v6, v1[17], v7);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    sub_10000CD74(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_100641550()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_10076F50C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_10075EC6C();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_10000CD74(v0 + 2);
    sub_10000CFBC(v7, &qword_100942A80, &unk_1007B5CE0);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_10000CD74(v0 + 2);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100641730(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[15];
  sub_10075EC6C();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[15];
    swift_unknownObjectRelease();
    sub_10000CD74(v1 + 2);
    sub_10000CFBC(v5, &qword_100942A80, &unk_1007B5CE0);
  }

  else
  {
    v7 = v1[20];
    v6 = v1[21];
    v8 = v1[19];
    (*(v7 + 32))(v6, v1[15], v8);
    sub_10075EE1C();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    sub_10000CD74(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_1006418D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10075DDBC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_10000CF78((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000A5D4(&qword_10095E8E0, &unk_1007AAD40);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_10075DD9C();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100641A40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000257CC;

  return sub_100640D64(a1, v6, a3);
}

unint64_t sub_100641AF4()
{
  result = qword_100962330;
  if (!qword_100962330)
  {
    sub_10075EC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962330);
  }

  return result;
}

uint64_t sub_100641B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100641BA0();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100641BA0()
{
  result = qword_100962338;
  if (!qword_100962338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962338);
  }

  return result;
}

uint64_t sub_100641BF4()
{
  sub_10076F2EC();
  v0[22] = swift_task_alloc();
  v1 = sub_10075DDBC();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_100641CE8, 0, 0);
}

uint64_t sub_100641CE8()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = sub_10076FF6C();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100641E84;
  v6 = swift_continuation_init();
  v0[17] = sub_10000A5D4(&unk_100962360, qword_1007B1090);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1006418D0;
  v0[13] = &unk_10089DFF8;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100641E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100642200;
  }

  else
  {
    v2 = sub_100641F94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100641F94()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_1009413B0 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v9 = v0[27];
  v4 = v0[23];
  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_100962310);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v11._object = 0x80000001007F3800;
  v11._countAndFlagsBits = 0xD000000000000036;
  sub_10076F2CC(v11);
  v0[21] = v4;
  v6 = sub_10000DB7C(v0 + 18);
  (*(v3 + 16))(v6, v2, v4);
  sub_10076F29C();
  sub_10000CFBC((v0 + 18), &unk_1009434C0, &qword_100783F60);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10076F2CC(v12);
  sub_10076F2FC();
  sub_10076FBCC();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100642200(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10064229C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10000A5D4(&qword_100962340, &qword_1007B1080);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10000A5D4(&qword_100962348, &qword_1007B1088);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1006423DC, 0, 0);
}

uint64_t sub_1006423DC()
{
  v1 = *(v0 + 16);
  sub_10000CF78(v1, v1[3]);
  if (sub_10075F41C())
  {
    if (qword_1009413B0 != -1)
    {
      swift_once();
    }

    v2 = sub_10076FD4C();
    sub_10000A61C(v2, qword_100962310);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1009413B0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = sub_10076FD4C();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_10000A61C(v9, qword_100962310);
    *(v0 + 96) = sub_10000A5D4(&unk_100942A60, &unk_100784760);
    v10 = *(sub_10076F33C() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_10000CF78(v8, v1[3]);
    sub_10075F40C();
    sub_10000A5D4(&qword_10094FD60, &qword_100789390);
    sub_100071820(&qword_10094FD68, &qword_10094FD60, &qword_100789390, &protocol conformance descriptor for AsyncEvent<A>);
    sub_10076F48C();

    (*(v7 + 16))(v14, v5, v6);
    sub_100071820(&qword_100962350, &qword_100962348, &qword_1007B1088, &protocol conformance descriptor for AsyncStream<A>);
    sub_10077032C();
    v11 = sub_100071820(&qword_100962358, &qword_100962340, &qword_1007B1080, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_100642894;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_100642894()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_1006429D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006429D4(__n128 a1)
{
  v2 = *(v1 + 124);
  if (v2 == 2)
  {
LABEL_4:
    v3 = *(v1 + 72);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    (*(v5 + 8))(v3, v4);

    v6 = *(v1 + 8);

    return v6();
  }

  if (v2)
  {
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    goto LABEL_4;
  }

  v8 = sub_100071820(&qword_100962358, &qword_100962340, &qword_1007B1080, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_100642894;
  v10 = *(v1 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 124, v10, v8);
}

void sub_100642BFC(uint64_t *a1@<X8>)
{
  v18[0] = sub_10076B5BC();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v18[1] && (v13 = sub_1007603BC(), , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v12(v8, v5);
    v14 = v18[0];
    if (*(v2 + 88))(v4, v18[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (sub_1007645FC())
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D9AC();
      v16 = sub_10000A61C(v15, qword_1009A23B0);
      a1[3] = v15;
      a1[4] = &protocol witness table for StaticDimension;
      v17 = sub_10000DB7C(a1);
      (*(*(v15 - 8) + 16))(v17, v16, v15);
    }

    else
    {
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = 0;
    }

    (*(v2 + 8))(v4, v14);
  }
}

uint64_t sub_100642F38@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v133 = a2;
  v122 = sub_10076D1AC();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = (&v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v127);
  v131 = &v117 - v4;
  v5 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v5 - 8);
  v128 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v132 = &v117 - v8;
  v9 = sub_10076B5BC();
  v129 = *(v9 - 8);
  v130 = v9;
  __chkstk_darwin(v9);
  v135 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = &v117 - v14;
  __chkstk_darwin(v15);
  v126 = &v117 - v16;
  __chkstk_darwin(v17);
  v19 = &v117 - v18;
  __chkstk_darwin(v20);
  v22 = &v117 - v21;
  __chkstk_darwin(v23);
  v25 = &v117 - v24;
  v119 = sub_10077164C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v123 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v117 - v31;
  __chkstk_darwin(v33);
  v35 = &v117 - v34;
  v136 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v134 = v36;
  if (v137)
  {
    v37 = sub_1007603BC();

    if (v37)
    {
      sub_10076468C();
      swift_getKeyPath();
      sub_10076F49C();

      v134(v32, v27);
      v38 = v138;
      if (v138)
      {
      }

      v39 = v119;
      v40 = v118;
      v41 = v117;
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v42 = sub_10076D9AC();
      sub_10000A61C(v42, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_1009411F8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v42, qword_1009A2368);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();
      v47 = v46;
      swift_unknownObjectRelease();
      result = (v45)(v41, v39);
      v49 = v44 + v47;
      if (v38)
      {
        v49 = v44;
      }

      v50 = v133;
      *(v133 + 3) = &type metadata for CGFloat;
      *(v50 + 4) = &protocol witness table for CGFloat;
      *v50 = v49;
      return result;
    }
  }

  sub_10076463C();
  sub_10000CFBC(v22, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10000CFBC(v25, &qword_1009499A0, &qword_1007848B0);
    v52 = v131;
LABEL_19:
    v59 = v123;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v60 = v59;
    v61 = v134;
    v134(v60, v27);
    v63 = v124;
    v62 = v125;
    sub_10076463C();
    sub_10000CFBC(v63, &qword_1009499A0, &qword_1007848B0);
    v64 = v126;
    sub_10002AB4C(v62, v126);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10000CFBC(v64, &qword_1009499A0, &qword_1007848B0);
      v65 = 1;
      v66 = v132;
    }

    else
    {
      swift_getKeyPath();
      v66 = v132;
      sub_10076F49C();

      v61(v64, v27);
      v65 = 0;
    }

    v68 = v128;
    v67 = v129;
    v69 = v52;
    v70 = v130;
    (*(v129 + 56))(v66, v65, 1, v130);
    v71 = *(v127 + 48);
    (*(v67 + 16))(v69, v135, v70);
    sub_10002ABBC(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_10002ABBC(v69 + v71, v68);
      v74 = *(v67 + 88);
      v75 = v74(v68, v70);
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v121;
        *v121 = UIFontTextStyleBody;
        v77 = v120;
        v78 = v122;
        (*(v120 + 104))(v76, enum case for FontSource.textStyle(_:), v122);
        v79 = sub_10076D9AC();
        v80 = v133;
        *(v133 + 3) = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_10000DB7C(v80);
        v139 = v78;
        v140 = &protocol witness table for FontSource;
        v81 = sub_10000DB7C(&v137);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        sub_10076D9BC();
        (*(v77 + 8))(v76, v78);
        sub_10000CFBC(v66, &unk_1009568A0, &qword_100784890);
        v83 = *(v67 + 8);
        v83(v135, v70);
        sub_10000CFBC(v69 + v71, &unk_1009568A0, &qword_100784890);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((sub_1007645FC() & 1) == 0)
      {
        v93 = sub_10076461C();
        [v93 userInterfaceIdiom];

        v94 = v121;
        *v121 = UIFontTextStyleBody;
        v95 = v120 + 104;
        v96 = v122;
        (*(v120 + 104))(v94, enum case for FontSource.textStyle(_:), v122);
        v97 = sub_10076D9AC();
        v98 = v133;
        *(v133 + 3) = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v136 = sub_10000DB7C(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v139 = v96;
        v140 = &protocol witness table for FontSource;
        v103 = sub_10000DB7C(&v137);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        sub_10076D9BC();
        (*v101)(v94, v96);
        sub_10000CFBC(v132, &unk_1009568A0, &qword_100784890);
        (*v102)(v135, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &unk_1009568A0;
        v112 = &qword_100784890;
        return sub_10000CFBC(v110, v111, v112);
      }

      v84 = v121;
      *v121 = UIFontTextStyleBody;
      v85 = v120;
      v86 = v122;
      (*(v120 + 104))(v84, enum case for FontSource.textStyle(_:), v122);
      v87 = sub_10076D9AC();
      v88 = v133;
      *(v133 + 3) = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v88);
      v139 = v86;
      v140 = &protocol witness table for FontSource;
      v89 = sub_10000DB7C(&v137);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      if (v73 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v91 = v133;
        *(v133 + 3) = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4038000000000000;
      }

      else
      {
        if (v73 == enum case for Shelf.ContentType.productRatings(_:))
        {
          v105 = sub_10076461C();
          v106 = sub_1007706EC();

          v107 = 52.0;
          if (v106)
          {
            v107 = 36.0;
          }

          v108 = v133;
          *(v133 + 3) = &type metadata for Double;
          *(v108 + 4) = &protocol witness table for Double;
          *v108 = v107;
          goto LABEL_43;
        }

        if (v73 != enum case for Shelf.ContentType.productReviewAction(_:))
        {
          if (v73 != enum case for Shelf.ContentType.arcadeFooter(_:) && v73 != enum case for Shelf.ContentType.uber(_:))
          {
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v113 = sub_10076D9AC();
            v114 = sub_10000A61C(v113, qword_1009A23E0);
            v115 = v133;
            *(v133 + 3) = v113;
            v115[4] = &protocol witness table for StaticDimension;
            v116 = sub_10000DB7C(v115);
            (*(*(v113 - 8) + 16))(v116, v114, v113);
            sub_10000CFBC(v66, &unk_1009568A0, &qword_100784890);
            (*(v67 + 8))(v135, v70);
            v111 = &qword_100942F28;
            v112 = &unk_10079ACB0;
            v110 = v69;
            return sub_10000CFBC(v110, v111, v112);
          }

          v109 = v133;
          *(v133 + 3) = &type metadata for Double;
          *(v109 + 4) = &protocol witness table for Double;
          *v109 = 0.0;
          goto LABEL_43;
        }

        v91 = v133;
        *(v133 + 3) = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4042000000000000;
      }

      *v91 = v92;
    }

LABEL_43:
    sub_10000CFBC(v66, &unk_1009568A0, &qword_100784890);
    (*(v67 + 8))(v135, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  sub_10076F49C();

  v53 = v137;
  v134(v25, v27);
  v52 = v131;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = sub_1007603BC();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v55 = sub_10076D9AC();
  v56 = sub_10000A61C(v55, qword_1009A2350);
  v57 = v133;
  *(v133 + 3) = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_10000DB7C(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_100643F38@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v54 = a2;
  v3 = sub_10076C38C();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0) - 8;
  __chkstk_darwin(v53);
  v52 = &v46 - v5;
  v6 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_10076B5BC();
  v51 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v50 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v19 = v14;
  v20 = v17;
  v21 = v52;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v51;
  v25 = *(v53 + 56);
  (*(v51 + 16))(v21, v20, v23);
  sub_10002ABBC(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10000CFBC(&v21[v25], &unk_1009568A0, &qword_100784890);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v46;
      sub_10076460C();
      sub_10076C23C();
      v40 = v39;
      (*(v47 + 8))(v38, v48);
      v41 = v54;
      *(v54 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10000CFBC(v22, &unk_1009568A0, &qword_100784890);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &unk_1009568A0;
      v44 = &qword_100784890;
    }

    else
    {
      v45 = v54;
      *(v54 + 3) = &type metadata for Double;
      *(v45 + 4) = &protocol witness table for Double;
      *v45 = 0.0;
      sub_10000CFBC(v22, &unk_1009568A0, &qword_100784890);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_100942F28;
      v44 = &unk_10079ACB0;
      v42 = v21;
    }

    return sub_10000CFBC(v42, v43, v44);
  }

  v35 = v49;
  sub_10002ABBC(&v21[v25], v49);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10000CFBC(&v21[v25], &unk_1009568A0, &qword_100784890);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = sub_10076C04C();
  v55[3] = v29;
  v55[4] = sub_10004C7BC();
  v30 = sub_10000DB7C(v55);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = sub_10076C90C();
  sub_10000CD74(v55);
  if ((v29 & 1) != 0 && (sub_1007645FC() & 1) == 0)
  {
    v36 = v54;
    *(v54 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_100941230 != -1)
    {
      swift_once();
    }

    v31 = sub_10076D9AC();
    v32 = sub_10000A61C(v31, qword_1009A2410);
    v33 = v54;
    *(v54 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_10000DB7C(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10000CFBC(v22, &unk_1009568A0, &qword_100784890);
  return (*(v24 + 8))(v20, v23);
}

void sub_100644650()
{
  v0 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A27C8);
  v16 = sub_10000A61C(v15, qword_1009A27C8);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1E88);
  v18 = v4[2];
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941040 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1EB8);
  v40 = v11;
  v18(v11, v19, v3);
  if (qword_100941048 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v3, qword_1009A1ED0);
  v18(v2, v20, v3);
  v21 = v4[7];
  v21(v2, 0, 1, v3);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000A61C(v3, qword_1009A1F00);
  v38 = v8;
  v18(v8, v22, v3);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v42, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v24 = v15[12];
  v25 = v16 + v15[11];
  v21((v16 + v24), 1, 1, v3);
  v26 = v16 + v15[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v16 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v15[23];
  *(v16 + v28) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v16 + v15[9], v39, v3);
  v29(v16 + v15[10], v40, v3);
  *v25 = 3;
  *(v25 + 8) = 0;
  v30 = v37;
  v31 = v37;
  sub_100644B80(v41, v16 + v24);
  v29(v16 + v15[13], v38, v3);
  v29(v16 + v15[14], v42, v3);
  *(v16 + v15[15]) = 0x4044000000000000;
  *(v16 + v15[16]) = 0x4024000000000000;
  *(v16 + v15[17]) = 0x4042000000000000;
  *(v16 + v15[18]) = 0x403E000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v32 = *v16;
  *v16 = 0;

  v33 = *(v16 + 8);
  *(v16 + 8) = 0;

  v34 = *(v16 + 16);
  *(v16 + 16) = 0;

  v35 = *(v16 + 24);
  *(v16 + 24) = 0;

  *(v16 + v15[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v16 + v28);
  *(v16 + v28) = v30;

  *(v16 + v15[24]) = 0;
}

uint64_t sub_100644B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100644BF0()
{
  v0 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v16, qword_1009A27E0);
  v17 = sub_10000A61C(v16, qword_1009A27E0);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v42 = v9;
  v18 = sub_10000A61C(v3, qword_1009A1E88);
  v19 = v4[2];
  v39 = v15;
  v19(v15, v18, v3);
  if (qword_100941050 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v3, qword_1009A1EE8);
  v40 = v12;
  v19(v12, v20, v3);
  v21 = v4[7];
  v21(v2, 1, 1, v3);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000A61C(v3, qword_1009A1F00);
  v19(v42, v22, v3);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v3, qword_1009A1F18);
  v19(v6, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v6;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = v16[12];
  v25 = v17 + v16[11];
  v21((v17 + v24), 1, 1, v3);
  v26 = v17 + v16[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v17 + v16[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v16[23];
  *(v17 + v28) = 0;
  *(v17 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v17 + v16[9], v39, v3);
  v29(v17 + v16[10], v40, v3);
  *v25 = 0;
  *(v25 + 8) = 1;
  v30 = v37;
  v31 = v37;
  sub_100644B80(v41, v17 + v24);
  v29(v17 + v16[13], v42, v3);
  v29(v17 + v16[14], v38, v3);
  *(v17 + v16[15]) = 0x4044000000000000;
  *(v17 + v16[16]) = 0x4024000000000000;
  *(v17 + v16[17]) = 0x4045000000000000;
  *(v17 + v16[18]) = 0x403E000000000000;
  *(v17 + v16[19]) = 0x4038000000000000;
  v32 = *v17;
  *v17 = 0;

  v33 = *(v17 + 8);
  *(v17 + 8) = 0;

  v34 = *(v17 + 16);
  *(v17 + 16) = 0;

  v35 = *(v17 + 24);
  *(v17 + 24) = 0;

  *(v17 + v16[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v17 + v28);
  *(v17 + v28) = v30;

  *(v17 + v16[24]) = 0;
}

void sub_1006450D4(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v21, a3);
  v22 = sub_10000A61C(v21, a3);
  if (qword_100941030 != -1)
  {
    swift_once();
  }

  v47 = v14;
  v23 = sub_10000A61C(v8, qword_1009A1E88);
  v24 = v9[2];
  v44 = v20;
  v24(v20, v23, v8);
  if (qword_100941038 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v8, qword_1009A1EA0);
  v45 = v17;
  v24(v17, v25, v8);
  v26 = v9[7];
  v26(v7, 1, 1, v8);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v27 = sub_10000A61C(v8, qword_1009A1F00);
  v24(v47, v27, v8);
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v8, qword_1009A1F18);
  v24(v11, v28, v8);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = v11;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v29 = v21[12];
  v30 = v22 + v21[11];
  v26((v22 + v29), 1, 1, v8);
  v31 = v22 + v21[21];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v22 + v21[22];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21[23];
  *(v22 + v33) = 0;
  *(v22 + 32) = 0x4030000000000000;
  v34 = v9[4];
  v34(v22 + v21[9], v44, v8);
  v34(v22 + v21[10], v45, v8);
  *v30 = 0;
  *(v30 + 8) = 1;
  v35 = v42;
  v36 = v42;
  sub_100644B80(v46, v22 + v29);
  v34(v22 + v21[13], v47, v8);
  v34(v22 + v21[14], v43, v8);
  *(v22 + v21[15]) = a1;
  *(v22 + v21[16]) = 0x403C000000000000;
  *(v22 + v21[17]) = 0x403A000000000000;
  *(v22 + v21[18]) = 0x4038000000000000;
  *(v22 + v21[19]) = 0x4038000000000000;
  v37 = *v22;
  *v22 = 0;

  v38 = *(v22 + 8);
  *(v22 + 8) = 0;

  v39 = *(v22 + 16);
  *(v22 + 16) = 0;

  v40 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(v22 + v21[20]) = 0x4034000000000000;
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v32 + 8) = 1;
  v41 = *(v22 + v33);
  *(v22 + v33) = v35;

  *(v22 + v21[24]) = 0;
}

void sub_1006455A8()
{
  v0 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A2810);
  v16 = sub_10000A61C(v15, qword_1009A2810);
  if (qword_100941068 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1F30);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941090 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1FA8);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_1009410A0 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000A61C(v3, qword_1009A1FD8);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v43, v22, v3);
  sub_1000325F0();
  v34 = sub_100770CFC();
  v35 = sub_100770CFC();
  v36 = sub_100770D1C();
  v37 = sub_100770D1C();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100644B80(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x4042000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x4043800000000000;
  *(v16 + v15[18]) = 0x4041000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

void sub_100645AA8()
{
  v0 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10000DB18(v15, qword_1009A2828);
  v16 = sub_10000A61C(v15, qword_1009A2828);
  if (qword_100941068 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v3, qword_1009A1F30);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100941098 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v3, qword_1009A1FC0);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_1009410A8 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000A61C(v3, qword_1009A1FF0);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_100941060 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_1009A1F18);
  v18(v43, v22, v3);
  sub_1000325F0();
  v34 = sub_100770CFC();
  v35 = sub_100770CFC();
  v36 = sub_100770D1C();
  v37 = sub_100770D1C();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x402A000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100644B80(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x402A000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x403F000000000000;
  *(v16 + v15[18]) = 0x403A000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

double sub_100645FA4()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_1009A2840);
  sub_10000A61C(v0, qword_1009A2840);
  sub_10076D3AC();
  return result;
}

char *sub_100645FF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100940708 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_1009A04A0;
  v17[3] = unk_1009A04B0;
  v18 = qword_1009A04C0;
  v17[0] = xmmword_1009A0480;
  v17[1] = *algn_1009A0490;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *&v1[v4] = sub_1004F0D74(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_10076361C();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_10064628C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_1009A2560] = 1;
    *&v5[qword_1009602B8 + 8] = &off_10089E040;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007706FC();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1006463B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10064640C;
}

void sub_10064640C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1006483F0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v10 = v4;
        v11 = sub_100770EEC();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v23;
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1006483F0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v17 = v4;
        v18 = sub_100770EEC();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();
    v22 = v23;
  }
}

void sub_1006467B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v4;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "frame", v8);
  v11 = enum case for FloatingPointRoundingRule.up(_:);
  v12 = *(v7 + 104);
  v12(v10, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_100770A2C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v10, v6);
  v12(v10, v11, v6);
  sub_100770A2C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v21(v10, v6);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  v39.origin.x = v23;
  v39.origin.y = v25;
  v39.size.width = v27;
  v39.size.height = v29;
  if (!CGRectEqualToRect(v38, v39) && (v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v30 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v30)
    {
      v31 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock + 8];

      [v4 bounds];
      v12(v10, v11, v6);
      sub_100770AAC();
      v33 = v32;
      v35 = v34;
      v21(v10, v6);
      v36 = [v4 traitCollection];
      v30(v33, v35);
      sub_1000167E0(v30, v31);
    }
  }
}

id sub_100646A80()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1 == 1)
  {
    if (Strong)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8 && (v9 = v8, v10 = *(v8 + qword_1009602D0), v9, v11 = [v10 image], v10, v11))
      {
        [v11 size];
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
      }

      else
      {
        [v0 bounds];
      }

      [v3 setFrame:{v5, v7, v17, v16}];
    }

    v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    v22 = v21;
    v24 = v23;
    v25 = [v20 image];
    if (v25)
    {
      v26 = v25;
      [v25 size];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [v0 bounds];
      v28 = v31;
      v30 = v32;
    }

    [v20 setFrame:{v22, v24, v28, v30}];
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}

void sub_100646D28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_1009602F8];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10032E034;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089E170;
      v3 = _Block_copy(aBlock);
      v4 = v1;

      [v4 enterFullScreenAnimated:1 completionHandler:v3];

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_100646EB4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100505C94(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1009602F8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_100646F78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = sub_1007706FC();

    if (v2)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0x3FF0000000000000;
      v5 = objc_opt_self();
      v7[4] = sub_1005076E8;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_10009AEDC;
      v7[3] = &unk_10089E120;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_100647128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v8 - 8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v69 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v75 = &v69 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v16 - 8);
  v18 = &v69 - v17;
  v19 = sub_10076121C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076481C();
  v26 = __chkstk_darwin(v23);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
  if (a1)
  {
    v71 = v25;
    v72 = v24;
    v73 = a2;
    v30 = *(v20 + 104);
    v69 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v32 = sub_10076D39C();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    v33 = a3;
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v34 = v75;
    sub_10076B85C();
    v35 = sub_10075DB7C();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v76;
    sub_10076B81C();
    v37 = v77;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_1006483F0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v38 = v31;
    v4 = v69;
    v70 = v38;
    v74 = v33;
    v39 = sub_100762EEC();
    sub_10000CFBC(v37, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v36, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v34, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v78, &qword_100943310, &unk_100784150);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v44 = v4;
        v45 = sub_100770EEC();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_10064628C();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_10076B84C();
      v53 = sub_10076BE1C();

      [v52 setBackgroundColor:v53];
    }

    sub_10076B84C();
    v54 = sub_10076BE1C();

    a2 = v73;
    if (!v54)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v54 = sub_100770D5C();
    }

    [v4 setBackgroundColor:v54];

    (*(v71 + 8))(v70, v72);
    v48 = &selRef_initWithTabBarSystemItem_tag_;
    v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
  }

  else
  {
    v48 = &selRef_initWithTabBarSystemItem_tag_;
    if (a2)
    {

      v49 = sub_10076BE1C();
      if (!v49)
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v49 = sub_100770D5C();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = &OBJC_METACLASS____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView;
    }
  }

  [*&v4[v29[22].cache] v48[222]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[222]];
  }

  [*&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView] v48[222]];
  v57 = sub_100647974(a2, a1);
  v58 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v60 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock + 8];
  *v58 = v57;
  v58[1] = v61;
  sub_1000167E0(v59, v60);
  v62 = *v58;
  if (*v58)
  {
    v63 = v58[1];

    [v4 bounds];
    v65 = v64;
    v67 = v66;
    v68 = [v4 traitCollection];
    v62(v65, v67);
    sub_1000167E0(v62, v63);
  }
}

void (*sub_100647974(uint64_t a1, uint64_t a2))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = sub_10076B84C();
LABEL_5:
    v5 = a2 != 0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7;
    *(v8 + 40) = a1;
    *(v8 + 48) = ObjectType;
    return sub_1006486B0;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

double sub_100647A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100760C4C();
  sub_10076F5AC();
  if (v10)
  {
    if (!sub_100764E0C())
    {
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView];
      sub_100764D7C();
      sub_1004F16F4();

      v8 = sub_100764D7C();
      [v3 bounds];
      sub_1006486C0(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = sub_100764DFC();
  v6 = sub_100764E0C();
  sub_100647128(v5, v6, a2);
LABEL_6:

  return result;
}

void sub_100647BA0(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10076BEDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_unknownObjectWeakLoadStrong();

      if (v15)
      {
        v16 = &qword_1009602D0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v15 = v17;
      v16 = &OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
LABEL_7:
      v18 = *&v15[*v16];

      if (a1 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v18 = 0;
  if (a1 != 0.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v18)
  {
    return;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:

    return;
  }

  sub_100760C4C();
  v18 = v18;
  sub_10076F5AC();

  if (!v21[4])
  {

    goto LABEL_11;
  }

  if (qword_1009413E8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D39C();
  sub_10000A61C(v19, qword_1009A2840);
  sub_10076D36C();
  sub_10076BEEC();
  v20 = sub_10076BE9C();
  (*(v10 + 8))(v12, v9);
  sub_10076BFCC();
  [v18 setContentMode:v20];
  sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  sub_10032E104();
  sub_100760B8C();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView(uint64_t a1)
{
  result = qword_1009623C8;
  if (!qword_1009623C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100647FCC(uint64_t a1)
{
  result = sub_10076361C();
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

void sub_1006480A4(void *a1)
{
  sub_100648480();
  swift_unknownObjectWeakAssign();
  sub_10064628C();
}

uint64_t (*sub_1006480F4(uint64_t **a1))()
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
  v2[4] = sub_1006463B8(v2);
  return sub_100019A4C;
}

uint64_t sub_10064816C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView, &unk_1007B1350);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006481E0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView, &unk_1007B1350);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10064826C(uint64_t *a1))()
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
  sub_1006483F0(&unk_1009623F0, type metadata accessor for AppPromotionMediaContainerView, &unk_1007B1350);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

id sub_100648328()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1006483F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100648480()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1006483F0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v3 = v0;
      v4 = sub_100770EEC();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1006485F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100648630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100648668()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006486C0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10076BEDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_10076C52C();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_10000A570(v34, v33);

  sub_10000A5D4(&unk_100942830, &qword_100782680);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_10076C49C();
    sub_10076C4BC();
    sub_10075E67C();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      sub_10075E66C();
      v14 = sub_10076BB5C();
    }

    else
    {

      sub_10076C4BC();
      v14 = sub_10076BB5C();
    }

    v30 = a2;
    if (v14)
    {

      sub_10076BEEC();
      sub_10076BE9C();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      sub_10076BFCC();
      v28 = a3;
      v16 = *&a3[qword_10095AD68];
      sub_10076BF7C();
      sub_10075FCCC();
      [v16 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10076BEEC();
      v17 = sub_10076BE9C();
      v15(v10, v7);
      [v16 setContentMode:v17];
      sub_10075FD2C();
      sub_1006483F0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      sub_10076BEEC();
      sub_10076BE9C();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      sub_10076BFCC();
      v19 = *&a3[qword_10095AD60];
      v20 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v21 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v22 = *(v19 + v20);
      sub_10076BEEC();
      v23 = sub_10076BE9C();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      sub_10075FD2C();
      sub_1006483F0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v25 = v24;
      sub_100760B8C();
    }

    else
    {
    }
  }

  return sub_10000CD74(v34);
}