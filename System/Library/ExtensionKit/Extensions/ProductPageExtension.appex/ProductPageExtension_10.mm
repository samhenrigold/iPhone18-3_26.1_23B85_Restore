double sub_1001288D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10076651C();
  if (v10)
  {
    v11 = sub_10076652C();
    if (v11 >> 62)
    {
      v12 = sub_10077158C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_10054D204(v12, v13);

  return a2;
}

void sub_100128994(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10000A5D4(&unk_100946800, &unk_1007AAD50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_10076651C();
  if (v9)
  {
    v10 = sub_10076652C();
    v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_100545FF4(v10, v7, 1, a3);

    sub_100128BA0(v7);
    [v3 layoutIfNeeded];
  }

  else
  {
    sub_100545CF8(v8);
  }
}

uint64_t sub_100128B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100128BA0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100946800, &unk_1007AAD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FlowDestination(uint64_t a1)
{
  result = qword_100949BA0;
  if (!qword_100949BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100128CA4(uint64_t a1)
{
  sub_100129298(319);
  if (v1 <= 0x3F)
  {
    sub_100129408(319, &qword_100949BD8, &type metadata accessor for FlowOrigin, "url origin ");
    if (v2 <= 0x3F)
    {
      sub_10075DB7C();
      if (v3 <= 0x3F)
      {
        sub_100129408(319, &qword_100949BE0, &type metadata accessor for DynamicUIRequestInfo, "url requestInfo ");
        if (v4 <= 0x3F)
        {
          sub_100129A48(319, &qword_100949BE8, &qword_100949BF0, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100129888(319, &qword_100949BF8, &qword_100949C00, &unk_10078C708);
            if (v6 <= 0x3F)
            {
              sub_100129A48(319, &qword_100949C08, &qword_100949C10, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_100129974(319, &qword_100949C18, &qword_100949C20, &qword_10078C718, "url preview ");
                if (v8 <= 0x3F)
                {
                  sub_100129888(319, &qword_100949C28, &qword_100949C30, &qword_10078C720);
                  if (v9 <= 0x3F)
                  {
                    sub_100129888(319, &qword_100949C38, &qword_100949C40, &qword_10078C728);
                    if (v10 <= 0x3F)
                    {
                      sub_1001294F0(319);
                      if (v11 <= 0x3F)
                      {
                        sub_100129588(319);
                        if (v12 <= 0x3F)
                        {
                          sub_10012962C(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1001296AC(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1001299FC(319, &qword_100949C88, &type metadata accessor for MarketingItemRequestInfo);
                              if (v15 <= 0x3F)
                              {
                                sub_100129740(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_1001297C0(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_100129858();
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100016F40(319, &qword_1009453B0, UIViewController_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1001299FC(319, &qword_100949CB8, &type metadata accessor for URL);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_100129888(319, &qword_100949CC0, &qword_100949CC8, &qword_10078C768);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_10012990C(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_100129BB8(319, &qword_100949CD8, &type metadata for DebugMenuPage);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_100129974(319, &qword_100949CE0, &qword_100949CE8, &unk_10078C770, "pageUrl sidepack ");
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_100129408(319, &qword_100949CF0, &type metadata accessor for AdamId, "url adamId ");
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1001299FC(319, &qword_100949CF8, &type metadata accessor for ReviewsPage);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_10012948C(319, &qword_100949D00, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_100129A48(319, &qword_100949D08, &qword_100949D00, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_100129974(319, &qword_100949D10, &qword_1009499B0, &qword_10078C590, "url context ");
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_10075FFEC();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_100129A9C();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_10076BCAC();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_100760DEC();
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_100129ACC(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_100129B60();
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_100129C04(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_100129C94(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            sub_100129D14(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              sub_100129D94(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                sub_100129E14(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
        }
      }
    }
  }
}

void sub_100129298(uint64_t a1)
{
  if (!qword_100949BB0)
  {
    __chkstk_darwin(a1);
    sub_10075DB7C();
    sub_10000CE78(&qword_100949BB8, &qword_10078C6E8);
    sub_10000CE78(&qword_100949BC0, &qword_10078C6F0);
    sub_10000CE78(&qword_100949BC8, &qword_10078C6F8);
    sub_10000CE78(&qword_100949BD0, &qword_10078C700);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100949BB0);
    }
  }
}

void sub_100129408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    sub_10075DB7C();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10012948C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001294F0(uint64_t a1)
{
  if (!qword_100949C48)
  {
    sub_100761A1C();
    sub_10000CE78(&qword_100949C50, &qword_10078C730);
    sub_100762D3C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C48);
    }
  }
}

void sub_100129588(uint64_t a1)
{
  if (!qword_100949C58)
  {
    sub_10000CE78(&qword_100949C60, &qword_10078C738);
    sub_10000CE78(&unk_100943470, &qword_10078C740);
    sub_1007641AC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C58);
    }
  }
}

void sub_10012962C(uint64_t a1)
{
  if (!qword_100949C68)
  {
    sub_10000CE78(&qword_100949C70, &qword_10078C748);
    sub_1007615AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949C68);
    }
  }
}

void sub_1001296AC(uint64_t a1)
{
  if (!qword_100949C78)
  {
    sub_10000CE78(&unk_1009435D0, &qword_100785850);
    sub_10000CE78(&qword_100949C80, &qword_10078C750);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949C78);
    }
  }
}

void sub_100129740(uint64_t a1)
{
  if (!qword_100949C90)
  {
    sub_10000CE78(&qword_100949C98, &qword_10078C758);
    sub_10075DB7C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949C90);
    }
  }
}

void sub_1001297C0(uint64_t a1)
{
  if (!qword_100949CA0)
  {
    sub_10000CE78(&qword_100949CA8, &qword_10078C760);
    sub_100762FAC();
    sub_10075DB7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100949CA0);
    }
  }
}

void *sub_100129858()
{
  result = qword_100949CB0;
  if (!qword_100949CB0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100949CB0);
  }

  return result;
}

void sub_100129888(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000CE78(a3, a4);
    sub_10000CE78(&unk_1009435D0, &qword_100785850);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10012990C(uint64_t a1)
{
  if (!qword_100949CD0)
  {
    sub_100016F40(255, &qword_1009499E0, AMSFamilyMember_ptr);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100949CD0);
    }
  }
}

void sub_100129974(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_10075DB7C();
    sub_10000CE78(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1001299FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100129A48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10012948C(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_100129A9C()
{
  result = qword_100949D18;
  if (!qword_100949D18)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_100949D18);
  }

  return result;
}

void sub_100129ACC(uint64_t a1)
{
  if (!qword_100949D20)
  {
    sub_100016F40(255, &qword_100944FF8, GKLeaderboard_ptr);
    sub_100016F40(255, &qword_100949D28, GKGameRecord_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D20);
    }
  }
}

void sub_100129B60()
{
  if (!qword_100949D30)
  {
    sub_100129BB8(0, &qword_100950F90, &type metadata for String);
    if (!v1)
    {
      atomic_store(v0, &qword_100949D30);
    }
  }
}

void sub_100129BB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100129C04(uint64_t a1)
{
  if (!qword_100949D38)
  {
    sub_100016F40(255, &qword_100949D28, GKGameRecord_ptr);
    sub_10000CE78(&unk_10094BB60, &unk_100785530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D38);
    }
  }
}

void sub_100129C94(uint64_t a1)
{
  if (!qword_100949D40)
  {
    sub_10075EDEC();
    sub_10000CE78(&qword_100949D48, &qword_10078D670);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D40);
    }
  }
}

void sub_100129D14(uint64_t a1)
{
  if (!qword_100949D50)
  {
    sub_100767F7C();
    sub_10000CE78(&qword_100949D48, &qword_10078D670);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D50);
    }
  }
}

void sub_100129D94(uint64_t a1)
{
  if (!qword_100949D58)
  {
    sub_100764E1C();
    sub_10000CE78(&qword_100949D48, &qword_10078D670);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D58);
    }
  }
}

void sub_100129E14(uint64_t a1)
{
  if (!qword_100949D60)
  {
    sub_100016F40(255, &qword_1009453B0, UIViewController_ptr);
    sub_10075E11C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100949D60);
    }
  }
}

uint64_t sub_100129E98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100766EDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for FlowDestination(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(v2, v14, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_10005C6E8(v14, v15);
      goto LABEL_14;
    case 3u:
      sub_10000A5D4(&unk_100958DB0, &qword_10078C5A0);

      v25 = sub_10075DB7C();
      (*(*(v25 - 8) + 8))(v14, v25);
      goto LABEL_14;
    case 4u:
      sub_10005C6E8(v14, v15);
      v16 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_10005C6E8(v14, v15);
      goto LABEL_11;
    case 7u:
      sub_10000A5D4(&qword_1009499F0, &qword_10078C5A8);

      v24 = sub_10075DB7C();
      (*(*(v24 - 8) + 8))(v14, v24);
      goto LABEL_11;
    case 0xAu:

      v44 = *(sub_10000A5D4(&qword_100958CB0, &qword_100786A88) + 64);
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v4);
      v45 = sub_100762D3C();
      return (*(*(v45 - 8) + 8))(&v14[v44], v45);
    case 0xEu:
      sub_10000A5D4(&qword_1009499C8, qword_10078C800);

      v35 = ASKDeviceTypeGetCurrent();
      v36 = sub_10076FF9C();
      v38 = v37;
      if (v36 == sub_10076FF9C() && v38 == v39)
      {

        v42 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v41 = sub_10077167C();

        v42 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v41)
        {
          v42 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v7, *v42, v4);
      (*(v5 + 32))(a1, v7, v4);
      return sub_10000CFBC(v14, &unk_1009435D0, &qword_100785850);
    case 0x11u:

      v17 = sub_10000A5D4(&qword_1009499B8, &unk_10078C7B0);
      v18 = *(v17 + 48);
      v19 = *(v17 + 64);
      v20 = sub_10075DB7C();
      (*(*(v20 - 8) + 8))(&v14[v19], v20);
      v21 = sub_100762FAC();
      (*(*(v21 - 8) + 8))(&v14[v18], v21);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_10005C6E8(v14, v15);
      goto LABEL_3;
    case 0x15u:

      v23 = sub_10000A5D4(&qword_100958CE0, &unk_100786A90);
      sub_10000CFBC(&v14[*(v23 + 48)], &unk_1009435D0, &qword_100785850);
      goto LABEL_3;
    case 0x18u:
      sub_10000A5D4(&qword_100958CD0, &unk_10078C7A0);

      v22 = sub_10075DB7C();
      (*(*(v22 - 8) + 8))(v14, v22);
LABEL_3:
      v16 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10000CFBC(v14, &unk_1009435D0, &qword_100785850);
LABEL_14:
      v26 = ASKDeviceTypeGetCurrent();
      v27 = sub_10076FF9C();
      v29 = v28;
      if (v27 == sub_10076FF9C() && v29 == v30)
      {

        v33 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v32 = sub_10077167C();

        v33 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v32)
        {
          v33 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v10, *v33, v4);
      return (*(v5 + 32))(a1, v10, v4);
    case 0x1Fu:
      v16 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v16 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v5 + 104))(a1, *v16, v4);
      break;
    default:
      v43.n128_f64[0] = (*(v5 + 104))(a1, enum case for FlowPresentationContext.push(_:), v4);
      result = sub_10005C6E8(v14, v43);
      break;
  }

  return result;
}

uint64_t sub_10012A5D8()
{
  v1 = type metadata accessor for FlowDestination(0);
  v2 = __chkstk_darwin(v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005C684(v0, v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v19 = *(sub_10000A5D4(&qword_1009499F8, &unk_10078C7F0) + 48);
      v20 = sub_10075F65C();
      (*(*(v20 - 8) + 8))(v4 + v19, v20);
      v21 = sub_10075DB7C();
      (*(*(v21 - 8) + 8))(v4, v21);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_10005C6E8(v4, v6);
      return 0x65746973626577;
    case 3:
      sub_10000A5D4(&unk_100958DB0, &qword_10078C5A0);

      v15 = sub_10075DB7C();
      (*(*(v15 - 8) + 8))(v4, v15);
      return 0x5563696D616E7964;
    case 4:
      sub_10005C6E8(v4, v6);
      return 0x686372616573;
    case 5:

      v23 = sub_10000A5D4(&qword_100958DA0, &unk_10078C7E0);
      sub_10000CFBC(v4 + *(v23 + 48), &unk_1009435D0, &qword_100785850);
      return 0xD000000000000019;
    case 6:
      sub_10005C6E8(v4, v6);
      return 0x7972656C6C6167;
    case 7:
      sub_10000A5D4(&qword_1009499F0, &qword_10078C5A8);

      v30 = sub_10075DB7C();
      (*(*(v30 - 8) + 8))(v4, v30);
      return 0x6F65646976;
    case 8:

      v17 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      sub_10000CFBC(v4 + *(v17 + 48), &unk_1009435D0, &qword_100785850);
      return 1701273968;
    case 9:

      v29 = sub_10000A5D4(&qword_1009499E8, &unk_10078C7D0);
      sub_10000CFBC(v4 + *(v29 + 48), &unk_1009435D0, &qword_100785850);
      return 0x7472616843706F74;
    case 10:

      v13 = *(sub_10000A5D4(&qword_100958CB0, &qword_100786A88) + 64);
      v14 = sub_100762D3C();
      (*(*(v14 - 8) + 8))(v4 + v13, v14);
      return 0x6568536572616873;
    case 11:
      sub_10005C6E8(v4, v6);
      return 0x6F4374726F706572;
    case 12:
      sub_10005C6E8(v4, v6);
      return 0xD00000000000001ALL;
    case 13:

      v11 = *(sub_10000A5D4(&qword_1009499D0, &unk_10078C7C0) + 48);
      v12 = sub_1007615AC();
      (*(*(v12 - 8) + 8))(v4 + v11, v12);
      return 0x656461637261;
    case 14:
      sub_10000A5D4(&qword_1009499C8, qword_10078C800);

      sub_10000CFBC(v4, &unk_1009435D0, &qword_100785850);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_10005C6E8(v4, v6);
      return 0xD000000000000013;
    case 16:

      v9 = *(sub_10000A5D4(&qword_1009499C0, &qword_10078C598) + 48);
      v10 = sub_10075DB7C();
      goto LABEL_29;
    case 17:

      v24 = sub_10000A5D4(&qword_1009499B8, &unk_10078C7B0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      v27 = sub_10075DB7C();
      (*(*(v27 - 8) + 8))(v4 + v26, v27);
      v28 = sub_100762FAC();
      (*(*(v28 - 8) + 8))(v4 + v25, v28);
      return 0x6557656461637261;
    case 18:
      sub_10005C6E8(v4, v6);
      return 0xD00000000000001CLL;
    case 19:
      sub_10005C6E8(v4, v6);
      return 0x746E6F4377656976;
    case 20:
      v22 = sub_10075DB7C();
      (*(*(v22 - 8) + 8))(v4, v22);
      return 0x7961646F74;
    case 21:

      v33 = sub_10000A5D4(&qword_100958CE0, &unk_100786A90);
      sub_10000CFBC(v4 + *(v33 + 48), &unk_1009435D0, &qword_100785850);
      return 0x656C6369747261;
    case 22:
      sub_10005C6E8(v4, v6);
      return 0x6573616863727570;
    case 23:
      sub_10005C6E8(v4, v6);
      return 0x6775626564;
    case 24:
      sub_10000A5D4(&qword_100958CD0, &unk_10078C7A0);

      v18 = sub_10075DB7C();
      (*(*(v18 - 8) + 8))(v4, v18);
      goto LABEL_21;
    case 25:
      v36 = *(sub_10000A5D4(&unk_100958CC0, &unk_10078DBB0) + 48);
      v37 = sub_10076B96C();
      (*(*(v37 - 8) + 8))(v4 + v36, v37);
      v38 = sub_10075DB7C();
      (*(*(v38 - 8) + 8))(v4, v38);
      return 0x7665526574697277;
    case 26:
      sub_10005C6E8(v4, v6);
      return 0x73776569766572;
    case 27:
      sub_10005C6E8(v4, v6);
      return 0x746E756F636361;
    case 28:
      sub_10000CFBC(v4, &unk_1009435D0, &qword_100785850);
      return 0x65636E616E6966;
    case 29:
      v31 = sub_10000A5D4(&qword_1009499D8, &unk_10078C790);
      sub_10000CFBC(v4 + *(v31 + 48), &qword_1009499B0, &qword_10078C590);
      v32 = sub_10075DB7C();
      (*(*(v32 - 8) + 8))(v4, v32);
      return 7304045;
    case 30:
      sub_10005C6E8(v4, v6);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_10005C6E8(v4, v6);
      return 0x6544776569766572;
    case 34:
      sub_10005C6E8(v4, v6);
      goto LABEL_7;
    case 35:
      sub_10005C6E8(v4, v6);
      return 0xD000000000000017;
    case 36:
      sub_10005C6E8(v4, v6);
      return 0x6D65766569686361;
    case 37:

      v35 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      sub_10000CFBC(v4 + *(v35 + 48), &unk_1009435D0, &qword_100785850);
      return 0x4479636176697270;
    case 38:

      v34 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      sub_10000CFBC(v4 + *(v34 + 48), &unk_1009435D0, &qword_100785850);
      return 0xD000000000000012;
    case 39:

      v16 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      sub_10000CFBC(v4 + *(v16 + 48), &unk_1009435D0, &qword_100785850);
      goto LABEL_21;
    case 40:
      sub_10005C6E8(v4, v6);
      return 0x746E657645707061;
    case 41:
      sub_10005C6E8(v4, v6);
      goto LABEL_46;
    case 42:
      sub_10005C6E8(v4, v6);
      return 0x657449726566666FLL;
    case 43:

      v9 = *(sub_10000A5D4(&unk_100958C90, &unk_10078C780) + 48);
      v10 = sub_10075E11C();
LABEL_29:
      (*(*(v10 - 8) + 8))(v4 + v9, v10);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_10000A5D4(&qword_100949A00, qword_10078C5B0);

      v8 = sub_10075DB7C();
      (*(*(v8 - 8) + 8))(v4, v8);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_10012B484()
{
  v1 = type metadata accessor for FlowDestination(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005C684(v0, v4, v2);
  v5 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v5)
  {
    case 0:
      sub_10000A5D4(&qword_1009499F0, &qword_10078C5A8);

      goto LABEL_9;
    case 3:

      v11 = *(sub_10000A5D4(&qword_100958CB0, &qword_100786A88) + 64);
      v12 = sub_100762D3C();
      (*(*(v12 - 8) + 8))(&v4[v11], v12);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_10005C6E8(v4, v6);
      return 0;
    case 14:

      v8 = &v4[*(sub_10000A5D4(&qword_100958CE0, &unk_100786A90) + 48)];
      goto LABEL_6;
    case 18:
      v9 = *(sub_10000A5D4(&unk_100958CC0, &unk_10078DBB0) + 48);
      v10 = sub_10076B96C();
      (*(*(v10 - 8) + 8))(&v4[v9], v10);
LABEL_9:
      v13 = sub_10075DB7C();
      (*(*(v13 - 8) + 8))(v4, v13);
LABEL_10:
      result = 0;
      break;
    case 21:
      v8 = v4;
LABEL_6:
      sub_10000CFBC(v8, &unk_1009435D0, &qword_100785850);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_10005C6E8(v4, v6);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_10012B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v28 = a4;
  v29 = a2;
  v30 = sub_1007621EC();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v16 = *(v10 + 8);
  v16(v15, v9);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v16(v12, v9);
  v17 = v28;
  sub_10012B9F4(v31);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  (*(v17 + 8))(v8, v29, a3, v17, v19, v21, v23, v25);
  return (*(v6 + 8))(v8, v30);
}

void sub_10012B9F4(uint64_t a1)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (sub_1007603BC() & 1) != 0)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v6 = sub_10076D9AC();
    sub_10000A61C(v6, qword_1009A2350);
    sub_10076462C();
    sub_10076D17C();
    sub_10076D40C();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t type metadata accessor for ProductPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_100949D90;
  if (!qword_100949D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10012BC14(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v142 = a8;
  v134 = a7;
  v136 = a6;
  v137 = a5;
  v135 = a4;
  v139 = a3;
  v143 = a10;
  v144 = a2;
  v141 = a9;
  v11 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v11 - 8);
  v123 = &v122 - v12;
  v131 = sub_10076C38C();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1007632CC();
  v129 = *(v132 - 1);
  __chkstk_darwin(v132);
  v128 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076341C();
  v140 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076B5BC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v125 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v122 - v22;
  v24 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v124 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v122 - v28;
  v138 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v127 = v19;
  v31 = *(v19 + 88);
  v126 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v140 = &v122;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    sub_10076980C();
    v42 = sub_10076981C();
    v133 = v42(v138, sub_1000F79F4, &v122 - 4, v135, v137, v136, v134, v142, v141, v143);
    v43 = v124;
    sub_10076468C();
    swift_getKeyPath();
    v44 = v125;
    sub_10076F49C();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v144();
      v47 = sub_10075203C(v138, v46, v135, v137, v136, v134, v142, v141, v143);
    }

    else
    {
      v48 = v44;
      v47 = v133;
      v49 = v138;
      v50 = v143;
      v51 = v142;
      v52 = v136;
      v53 = v134;
      v54 = v137;
      v55 = v135;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v144();
        v57 = sub_100753380(v49, v56, v55, v54, v52, v53, v51, v141, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v101 = v127;
          (*(v127 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v133 setOrthogonalScrollingBehavior:2];
      }
    }

    v101 = v127;
LABEL_30:
    (*(v101 + 8))(v126, v33);
    return v47;
  }

  v35 = v144();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v127 = v35;
  v126 = v36;
  if (v36)
  {
    v37 = v35;
    sub_10076B4EC();
    v144 = v140[2];
    v38 = v37 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    v39 = v140[9];
    v40 = (v140 + 1);
    v139 = _swiftEmptyArrayStorage;
    (v144)(v17, v38, v15);
    while (1)
    {
      sub_100130950(&qword_100949DE0, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
      sub_10076332C();
      (*v40)(v17, v15);
      if (v147)
      {
        sub_10077019C();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v139 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10077021C();
        }

        sub_10077025C();
        v139 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v144)(v17, v38, v15);
    }
  }

  else
  {
    v139 = _swiftEmptyArrayStorage;
  }

  v58 = v129;
  v59 = v128;
  (*(v129 + 104))(v128, enum case for InformationRibbon.Alignment.justified(_:), v132);
  v60 = v130;
  v61 = v138;
  sub_10076460C();
  sub_10076C2FC();
  v63 = v62;
  v65 = v64;
  v66 = v133 + 8;
  v67 = *(v133 + 1);
  v68 = v131;
  v67(v60, v131);
  sub_10076460C();
  sub_10076C24C();
  v70 = v69;
  v67(v60, v68);
  v71 = sub_10076461C();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v146.receiver = v73;
  v146.super_class = v72;
  v75 = objc_msgSendSuper2(&v146, "init");
  v76.n128_u64[0] = v63;
  sub_10012E9D8(v139, v59, v75, v76, v65);
  v78 = v77;

  (*(v58 + 8))(v59, v132);
  if (!*(v78 + 16))
  {

    sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
    v98 = sub_10076469C();
    v99 = *(v98 - 8);
    v100 = v123;
    (*(v99 + 16))(v123, v61, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v47 = sub_10077096C();
    sub_10000CFBC(v100, &unk_10095DCF0, &unk_10078C910);

    return v47;
  }

  sub_10076460C();
  sub_10076C2FC();
  v132 = v67;
  v67(v60, v68);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v79 = sub_100765C9C();
  sub_10000A61C(v79, qword_1009A04D8);
  v80 = sub_10076461C();
  sub_100765BDC();
  v82 = v81;

  v147 = _swiftEmptyArrayStorage;
  v83 = v137;
  v144 = *(v78 + 16);
  v133 = v66;
  if (!v144)
  {
    v89 = 0.0;
LABEL_32:

    v102 = objc_opt_self();
    v103 = objc_opt_self();
    v104 = [v103 absoluteDimension:v89];
    v105 = [v103 absoluteDimension:v82];
    v106 = [objc_opt_self() sizeWithWidthDimension:v104 heightDimension:v105];

    sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
    isa = sub_1007701AC().super.isa;

    v108 = [v102 horizontalGroupWithLayoutSize:v106 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v108];
    swift_getObjectType();
    sub_100768A7C();
    sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v109 = sub_1007701AC().super.isa;

    [v47 setBoundarySupplementaryItems:v109];

    sub_100768A6C();
    sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
    v110 = sub_1007701AC().super.isa;

    [v47 setDecorationItems:v110];

    v111 = v130;
    sub_10076460C();
    sub_10076C31C();
    v113 = v112;
    v115 = v114;
    v132(v111, v131);
    sub_10000CF78(v83, v83[3]);
    sub_100768A3C();
    v117 = v116;
    sub_10000CF78(v83, v83[3]);
    sub_100768A5C();
    [v47 setContentInsets:{v117, v113, v118, v115}];
    [v47 setOrthogonalScrollingBehavior:1];
    sub_1007697FC();
    v119 = sub_1007701DC();
    v121 = v120;

    if (v119)
    {
      aBlock[4] = v119;
      aBlock[5] = v121;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100751F08;
      aBlock[3] = &unk_100889728;
      v119 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v119];
    _Block_release(v119);

    return v47;
  }

  v84 = objc_opt_self();
  v139 = objc_opt_self();
  result = objc_opt_self();
  if (v126)
  {
    v86 = result;
    result = v142;
    if (v144 <= v126)
    {
      swift_getObjectType();
      v87 = 0;
      v129 = v78;
      v88 = v78 + 32;
      v89 = 0.0;
      do
      {
        v90 = *(v88 + 8 * v87);
        v91 = [v84 absoluteDimension:v90];
        v92 = [v84 absoluteDimension:v82];
        v93 = [v139 sizeWithWidthDimension:v91 heightDimension:v92];

        sub_10076815C();
        sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
        v94 = v93;
        v95 = sub_1007701AC().super.isa;

        v96 = [v86 itemWithLayoutSize:v94 supplementaryItems:v95];

        v97 = v96;
        sub_10077019C();
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        v87 = (v87 + 1);
        sub_10077025C();

        v89 = v89 + v90;
      }

      while (v144 != v87);
      v83 = v137;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10012CDBC(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, double a7)
{
  LODWORD(v111) = a3;
  v118 = a2;
  v117 = a4;
  v10 = a4;
  v11 = sub_10075DE9C();
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin(v11);
  v112 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v109 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v106 - v16;
  v18 = sub_10076D3DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v115 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v110 = v106 - v22;
  __chkstk_darwin(v23);
  v116 = v106 - v24;
  __chkstk_darwin(v25);
  v27 = v106 - v26;
  __chkstk_darwin(v28);
  v30 = v106 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v108 = v106 - v33;
  v119 = a5;
  v34 = [a5 traitCollection];
  v107 = v27;
  if (v10 == 1)
  {
    v35 = v34;
    v36 = [v34 preferredContentSizeCategory];
    v37 = sub_10077084C();

    if (v37)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v38 = v118;
  v39 = sub_1000400FC(v118);
  v40 = sub_1000403C8(v38);
  [v39 size];
  [v40 size];

LABEL_6:
  v41 = v115;
  if (a1)
  {
    goto LABEL_44;
  }

  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000001007CEC10;
  if (v111)
  {
    v43 = sub_100769B9C(v42);
  }

  else
  {
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v43 = sub_1007622EC(v42, v123);
  }

  v106[1] = v43;
  v45 = v44;
  v46 = [v119 traitCollection];
  v106[2] = v45;
  if (v118 <= 1u)
  {
    if (v118)
    {
      if (qword_100940D10 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1528;
    }

    else
    {
      if (qword_100940D08 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1510;
    }
  }

  else if (v118 == 2)
  {
    if (v117)
    {
      if (qword_100940D30 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1588;
    }

    else
    {
      if (qword_100940D38 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A15A0;
    }
  }

  else if (v118 == 3)
  {
    if (qword_100940D60 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1618;
  }

  else
  {
    if (qword_100940D68 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1630;
  }

  v48 = sub_10000A61C(v18, v47);
  (*(v19 + 16))(v30, v48, v18);
  v49 = v112;
  sub_10075DE6C();
  sub_1000408BC(v118, v17);
  (*(v113 + 8))(v49, v114);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_10000CFBC(v17, &unk_100943250, &unk_1007841D0);
    v50 = v108;
    (*(v19 + 32))(v108, v30, v18);
    v41 = v115;
  }

  else
  {
    v106[0] = a6;
    v51 = *(v19 + 32);
    v52 = v107;
    v51(v107, v17, v18);
    v53.super.isa = v46;
    isa = sub_10076D3BC(v53).super.isa;
    [(objc_class *)isa pointSize];
    v56 = v55;
    v57.super.isa = v46;
    v58 = sub_10076D3BC(v57).super.isa;
    [(objc_class *)v58 pointSize];
    v60 = v59;

    v61 = *(v19 + 8);
    if (v60 >= v56)
    {
      v61(v52, v18);
      v50 = v108;
      v62 = v108;
      v63 = v30;
    }

    else
    {
      v61(v30, v18);
      v50 = v108;
      v62 = v108;
      v63 = v52;
    }

    v51(v62, v63, v18);
    v41 = v115;
  }

  v64 = v117;
  v65 = [v119 traitCollection];
  if (v64 == 1)
  {
    v66 = v65;
    v67 = [v65 preferredContentSizeCategory];
    sub_10077084C();
  }

  else
  {
  }

  v68 = sub_10076C04C();
  v121 = v68;
  v122 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_10000DB7C(v120);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_10076C90C();
  sub_10000CD74(v120);
  sub_10076991C();
  v71 = v70;

  (*(v19 + 8))(v50, v18);
  v72 = sub_10076C8CC();
  if (v117)
  {
    if ((v72 & 1) == 0)
    {
LABEL_44:
      v73._object = 0x80000001007CEB90;
      if (v111)
      {
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_100769B9C(v73);
      }

      else
      {
        v124._countAndFlagsBits = 0xD000000000000050;
        v124._object = 0x80000001007CEBB0;
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_1007622EC(v73, v124);
      }

      v76 = v74;
      v77 = v75;
      v78 = v110;
      v79 = [v119 traitCollection];
      v110 = v76;
      v111 = v77;
      if (v118 <= 1u)
      {
        if (v118)
        {
          if (qword_100940D10 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1528;
        }

        else
        {
          if (qword_100940D08 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1510;
        }
      }

      else if (v118 == 2)
      {
        if (v117)
        {
          if (qword_100940D30 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A1588;
        }

        else
        {
          if (qword_100940D38 != -1)
          {
            swift_once();
          }

          v80 = qword_1009A15A0;
        }
      }

      else if (v118 == 3)
      {
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v80 = qword_1009A1618;
      }

      else
      {
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v80 = qword_1009A1630;
      }

      v81 = sub_10000A61C(v18, v80);
      (*(v19 + 16))(v78, v81, v18);
      v82 = v112;
      sub_10075DE6C();
      v83 = v109;
      sub_1000408BC(v118, v109);
      (*(v113 + 8))(v82, v114);
      if ((*(v19 + 48))(v83, 1, v18) == 1)
      {

        sub_10000CFBC(v83, &unk_100943250, &unk_1007841D0);
        (*(v19 + 32))(v116, v78, v18);
      }

      else
      {
        v84 = v78;
        v85 = *(v19 + 32);
        v85(v41, v83, v18);
        v86.super.isa = v79;
        v87 = sub_10076D3BC(v86).super.isa;
        [(objc_class *)v87 pointSize];
        v89 = v88;
        v90.super.isa = v79;
        v91 = sub_10076D3BC(v90).super.isa;
        [(objc_class *)v91 pointSize];
        v93 = v92;

        v94 = *(v19 + 8);
        if (v93 >= v89)
        {
          v94(v41, v18);
          v95 = v116;
          v96 = v84;
        }

        else
        {
          v94(v84, v18);
          v95 = v116;
          v96 = v41;
        }

        v85(v95, v96, v18);
      }

      v97 = v117;
      v98 = [v119 traitCollection];
      if (v97 == 1)
      {
        v99 = v98;
        v100 = [v98 preferredContentSizeCategory];
        sub_10077084C();
      }

      else
      {
      }

      v101 = sub_10076C04C();
      v121 = v101;
      v122 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102 = sub_10000DB7C(v120);
      (*(*(v101 - 8) + 104))(v102, enum case for Feature.measurement_with_labelplaceholder(_:), v101);
      sub_10076C90C();
      sub_10000CD74(v120);
      v103 = v116;
      sub_10076991C();
      v71 = v104;

      (*(v19 + 8))(v103, v18);
    }
  }

  return v71;
}

double sub_10012DBC0(char a1, uint64_t a2, int a3, int a4, id a5, double a6)
{
  LODWORD(v112) = a3;
  v120 = a2;
  v119 = a4;
  v8 = a4;
  v9 = sub_10075DE9C();
  v115 = *(v9 - 8);
  v116 = v9;
  __chkstk_darwin(v9);
  v114 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v110 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v107 - v14;
  v16 = sub_10076D3DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v111 = v107 - v21;
  __chkstk_darwin(v22);
  v118 = v107 - v23;
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  __chkstk_darwin(v30);
  v109 = v107 - v31;
  v113 = type metadata accessor for EditorsChoiceView();
  v32 = [a5 traitCollection];
  v108 = v26;
  if (v8 == 1)
  {
    v33 = a5;
    v34 = v32;
    v35 = [v32 preferredContentSizeCategory];
    v36 = sub_10077084C();

    a5 = v33;
    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v37 = v120;
  v38 = sub_1000400FC(v120);
  v39 = sub_1000403C8(v37);
  [v38 size];
  [v39 size];

LABEL_6:
  v40 = v19;
  v117 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v41._object = 0x80000001007CEC10;
  if (v112)
  {
    v42 = sub_100769B9C(v41);
  }

  else
  {
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    v42 = sub_1007622EC(v41, v124);
  }

  v44 = v42;
  v45 = v43;
  v46 = [a5 traitCollection];
  v107[2] = v45;
  v107[1] = v44;
  if (v120 <= 1u)
  {
    if (v120)
    {
      if (qword_100940D10 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1528;
    }

    else
    {
      if (qword_100940D08 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1510;
    }
  }

  else if (v120 == 2)
  {
    if (v119)
    {
      if (qword_100940D30 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A1588;
    }

    else
    {
      if (qword_100940D38 != -1)
      {
        swift_once();
      }

      v47 = qword_1009A15A0;
    }
  }

  else if (v120 == 3)
  {
    if (qword_100940D60 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1618;
  }

  else
  {
    if (qword_100940D68 != -1)
    {
      swift_once();
    }

    v47 = qword_1009A1630;
  }

  v48 = sub_10000A61C(v16, v47);
  (*(v17 + 16))(v29, v48, v16);
  v49 = v114;
  sub_10075DE6C();
  sub_1000408BC(v120, v15);
  (*(v115 + 8))(v49, v116);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10000CFBC(v15, &unk_100943250, &unk_1007841D0);
    v50 = v109;
    (*(v17 + 32))(v109, v29, v16);
    a5 = v117;
  }

  else
  {
    v107[0] = v19;
    v51 = *(v17 + 32);
    v52 = v108;
    v51(v108, v15, v16);
    v53.super.isa = v46;
    isa = sub_10076D3BC(v53).super.isa;
    [(objc_class *)isa pointSize];
    v56 = v55;
    v57.super.isa = v46;
    v58 = sub_10076D3BC(v57).super.isa;
    [(objc_class *)v58 pointSize];
    v60 = v59;

    v61 = *(v17 + 8);
    if (v60 >= v56)
    {
      v61(v52, v16);
      v50 = v109;
      v62 = v109;
      v63 = v29;
    }

    else
    {
      v61(v29, v16);
      v50 = v109;
      v62 = v109;
      v63 = v52;
    }

    v51(v62, v63, v16);
    a5 = v117;
    v40 = v107[0];
  }

  v64 = v119;
  v65 = [a5 traitCollection];
  if (v64 == 1)
  {
    v66 = v65;
    v67 = [v65 preferredContentSizeCategory];
    sub_10077084C();
  }

  else
  {
  }

  v68 = sub_10076C04C();
  v122 = v68;
  v123 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_10000DB7C(v121);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_10076C90C();
  sub_10000CD74(v121);
  sub_10076991C();
  v71 = v70;

  (*(v17 + 8))(v50, v16);
  v72 = sub_10076C8CC();
  if (v119)
  {
    if ((v72 & 1) == 0)
    {
LABEL_44:
      v73._object = 0x80000001007CEB90;
      if (v112)
      {
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_100769B9C(v73);
      }

      else
      {
        v125._countAndFlagsBits = 0xD000000000000050;
        v125._object = 0x80000001007CEBB0;
        v73._countAndFlagsBits = 0xD000000000000017;
        v74 = sub_1007622EC(v73, v125);
      }

      v76 = v74;
      v77 = v75;
      v79 = v110;
      v78 = v111;
      v80 = [a5 traitCollection];
      v112 = v76;
      if (v120 <= 1u)
      {
        if (v120)
        {
          v81 = v80;
          if (qword_100940D10 != -1)
          {
            swift_once();
          }

          v82 = qword_1009A1528;
        }

        else
        {
          v81 = v80;
          if (qword_100940D08 != -1)
          {
            swift_once();
          }

          v82 = qword_1009A1510;
        }
      }

      else if (v120 == 2)
      {
        if (v119)
        {
          v81 = v80;
          if (qword_100940D30 != -1)
          {
            swift_once();
          }

          v82 = qword_1009A1588;
        }

        else
        {
          v81 = v80;
          if (qword_100940D38 != -1)
          {
            swift_once();
          }

          v82 = qword_1009A15A0;
        }
      }

      else if (v120 == 3)
      {
        v81 = v80;
        if (qword_100940D60 != -1)
        {
          swift_once();
        }

        v82 = qword_1009A1618;
      }

      else
      {
        v81 = v80;
        if (qword_100940D68 != -1)
        {
          swift_once();
        }

        v82 = qword_1009A1630;
      }

      v83 = sub_10000A61C(v16, v82);
      (*(v17 + 16))(v78, v83, v16);
      v84 = v114;
      sub_10075DE6C();
      sub_1000408BC(v120, v79);
      (*(v115 + 8))(v84, v116);
      if ((*(v17 + 48))(v79, 1, v16) == 1)
      {

        sub_10000CFBC(v79, &unk_100943250, &unk_1007841D0);
        (*(v17 + 32))(v118, v78, v16);
      }

      else
      {
        v120 = v77;
        v85 = v78;
        v86 = *(v17 + 32);
        v86(v40, v79, v16);
        v87.super.isa = v81;
        v88 = sub_10076D3BC(v87).super.isa;
        [(objc_class *)v88 pointSize];
        v90 = v89;
        v91.super.isa = v81;
        v92 = sub_10076D3BC(v91).super.isa;
        [(objc_class *)v92 pointSize];
        v94 = v93;

        v95 = *(v17 + 8);
        if (v94 >= v90)
        {
          v95(v40, v16);
          v96 = v118;
          v97 = v85;
        }

        else
        {
          v95(v85, v16);
          v96 = v118;
          v97 = v40;
        }

        v86(v96, v97, v16);
      }

      v98 = v119;
      v99 = [v117 traitCollection];
      if (v98 == 1)
      {
        v100 = v99;
        v101 = [v99 preferredContentSizeCategory];
        sub_10077084C();
      }

      else
      {
      }

      v102 = sub_10076C04C();
      v122 = v102;
      v123 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v103 = sub_10000DB7C(v121);
      (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
      sub_10076C90C();
      sub_10000CD74(v121);
      v104 = v118;
      sub_10076991C();
      v71 = v105;

      (*(v17 + 8))(v104, v16);
    }
  }

  return v71;
}

void sub_10012E9D8(unint64_t a1, char *a2, void *a3, __n128 a4, double a5)
{
  v7 = a4.n128_f64[0];
  v10 = sub_1007632CC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = sub_10077071C();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = sub_10077158C();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = sub_10077023C();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_10078C990, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = sub_10077158C();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(v7 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (v7 > 0.0)
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_10077149C();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_10012F018(v29, v27, 0, v21, a3, v7, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10049D1CC(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_10049D1CC((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      *&a2[8 * v15 + 32] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        v7 = v7 - v28;
        if (v7 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = a2 + 32;
        v52 = _swiftEmptyArrayStorage;
        sub_1004BBAA4(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = v52[2];
        do
        {
          v36 = *&v14[v34];
          v52 = v35;
          v37 = v35[3];
          if (a3 + v34 >= v37 >> 1)
          {
            sub_1004BBAA4((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          v35[2] = a3 + v34 + 1;
          *&v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (v35 + 6);
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = *&v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1004BDB10(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(v7 * (v46 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = sub_10077158C();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = sub_10077023C();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = sub_10077023C();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_10078C980, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

double sub_10012F000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_10012F018(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v122 = a4;
  v131 = a3;
  v133 = a2;
  v119 = sub_10076997C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076256C();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = (&v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v127 = &v116 - v14;
  v134 = sub_100765C9C();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&qword_100949DF0, &qword_10078C950);
  __chkstk_darwin(v17 - 8);
  v121 = &v116 - v18;
  v135 = sub_100766DEC();
  v141 = *(v135 - 8);
  __chkstk_darwin(v135);
  v126 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v140 = &v116 - v21;
  v137 = sub_10076D3DC();
  v120 = *(v137 - 8);
  __chkstk_darwin(v137);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076048C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10076C45C();
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v125 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v124 = &v116 - v30;
  __chkstk_darwin(v31);
  v33 = &v116 - v32;
  v143 = a1;
  sub_1004FFCD8();
  v136 = a5;
  if (v34)
  {
    if (qword_100940B98 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v137, qword_1009A10C0);
    v35 = sub_10076C04C();
    v147 = v35;
    v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v36 = sub_10000DB7C(v146);
    (*(*(v35 - 8) + 104))(v36, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
    sub_10076C90C();
    sub_10000CD74(v146);
    a5 = v136;
    sub_10076991C();
  }

  sub_10076B48C();
  v138 = *(v139 + 88);
  v37 = v138(v33, v142);
  v123 = enum case for BadgeType.rating(_:);
  if (v37 == enum case for BadgeType.rating(_:))
  {
    v38 = [a5 traitCollection];
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    (*(v25 + 104))(v27, enum case for SystemImage.star(_:), v24);
    v40 = [v39 configurationWithTraitCollection:v38];
    v41 = sub_10076046C();

    (*(v25 + 8))(v27, v24);
    [v41 contentInsets];
    [v41 contentInsets];
    [v41 size];
    [v41 contentInsets];
    [v41 contentInsets];
    [v41 size];

    v23 = v134;
    v42 = v132;
    v43 = v135;
LABEL_7:
    v44 = v142;
    goto LABEL_8;
  }

  if (v37 == enum case for BadgeType.contentRating(_:))
  {
    v48 = sub_10076B4CC();
    v49 = sub_10075E2FC();
    v42 = v132;
    v43 = v135;
    if (!*(v48 + 16))
    {

      v23 = v134;
      v44 = v142;
      goto LABEL_8;
    }

    v51 = sub_100561E0C(v49, v50);
    v53 = v52;

    v23 = v134;
    if (v53)
    {
      sub_10000CD08(*(v48 + 56) + 32 * v51, v146);

      if (swift_dynamicCast())
      {
        v54 = sub_1005A5DB8(v144, v145, 0);

        [v54 size];
      }

      goto LABEL_7;
    }

    goto LABEL_69;
  }

  if (v37 == enum case for BadgeType.chartPosition(_:))
  {
    v149._countAndFlagsBits = 0xD000000000000020;
    v149._object = 0x80000001007D52F0;
    v151._countAndFlagsBits = 0;
    v151._object = 0xE000000000000000;
    sub_1007622EC(v149, v151);
    if (qword_100940BA0 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_24;
  }

  v42 = v132;
  v44 = v142;
  if (v37 == enum case for BadgeType.editorsChoice(_:))
  {
    v150._object = 0x80000001007CEB90;
    v152._countAndFlagsBits = 0xD000000000000050;
    v152._object = 0x80000001007CEBB0;
    v150._countAndFlagsBits = 0xD000000000000017;
    sub_1007622EC(v150, v152);
    v98 = sub_1007700AC();

    v99 = v98 < 19;
    v100 = sub_1000400FC(v98 < 19);
    v101 = sub_1000403C8(v99);
    [v100 size];
    [v101 size];

    sub_10012DBC0(1, v99, 0, 2, a5, a6);
    v23 = v134;
    v43 = v135;
    goto LABEL_8;
  }

  v23 = v134;
  if (v37 != enum case for BadgeType.artwork(_:))
  {
    v43 = v135;
    if (v37 == enum case for BadgeType.paragraph(_:))
    {
      sub_1004FFE94();
      if (qword_100940B90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v137, qword_1009A10A8);
      v105 = sub_10076C04C();
      v147 = v105;
      v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v106 = sub_10000DB7C(v146);
      (*(*(v105 - 8) + 104))(v106, enum case for Feature.measurement_with_labelplaceholder(_:), v105);
      sub_10076C90C();
      sub_10000CD74(v146);
      sub_10076991C();
      v108 = v107;

      v109 = [a5 traitCollection];
      sub_1000182D0(v109, v108, a6);
    }

    else
    {
      if (v37 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v139 + 8))(v33, v142);
        goto LABEL_8;
      }

      v110 = sub_10076B4CC();
      v111 = sub_10075E51C();
      if (!*(v110 + 16))
      {

        goto LABEL_8;
      }

      v113 = sub_100561E0C(v111, v112);
      v115 = v114;

      if ((v115 & 1) == 0)
      {
LABEL_69:

        goto LABEL_7;
      }

      sub_10000CD08(*(v110 + 56) + 32 * v113, v146);

      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v109 = v144;
      [v144 sizeThatFits:{a6, a7}];
    }

    goto LABEL_7;
  }

  v43 = v135;
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v23, qword_1009A04D8);
  sub_100765C3C();
  v102 = [a5 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  while (1)
  {
LABEL_8:
    v45 = v124;
    sub_10076B48C();
    v46 = v138(v45, v44);
    if (v46 == v123)
    {
      v47 = sub_100500154();
      [v47 frame];
      CGRectGetWidth(v153);

      a5 = v136;
    }

    else
    {
      (*(v139 + 8))(v45, v44);
      if (v122 >= 4)
      {
        sub_10076B3DC();
        if (v55)
        {
          a5 = v136;
LABEL_19:
          if (qword_100940BB0 != -1)
          {
            swift_once();
          }

          sub_10000A61C(v137, qword_1009A1108);
          v57 = sub_10076C04C();
          v147 = v57;
          v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v58 = sub_10000DB7C(v146);
          (*(*(v57 - 8) + 104))(v58, enum case for Feature.measurement_with_labelplaceholder(_:), v57);
          sub_10076C90C();
          sub_10000CD74(v146);
          sub_10076991C();

          v44 = v142;
          goto LABEL_27;
        }
      }

      sub_10076B4BC();
      a5 = v136;
      if (v56)
      {
        goto LABEL_19;
      }
    }

LABEL_27:
    (*(v141 + 104))(v140, enum case for BadgeCaptionCappingType.none(_:), v43);
    v71 = sub_10076B4DC();
    if (v72)
    {
      v146[0] = v71;
      v146[1] = v72;
      v73 = v121;
      sub_10075DE6C();
      v74 = sub_10075DE9C();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      sub_10002564C();
      sub_1007711DC();
      sub_10000CFBC(v73, &qword_100949DF0, &qword_10078C950);

      if (qword_100940BB8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v137, qword_1009A1120);
      v75 = sub_10076C04C();
      v147 = v75;
      v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v76 = sub_10000DB7C(v146);
      (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
      sub_10076C90C();
      sub_10000CD74(v146);
      sub_10076991C();

      v44 = v142;
    }

    if (qword_100940728 != -1)
    {
      swift_once();
    }

    v77 = sub_10000A61C(v23, qword_1009A04D8);
    (*(v42 + 16))(v16, v77, v23);
    (*(v141 + 16))(v126, v140, v43);
    sub_100765C5C();
    v78 = v125;
    sub_10076B48C();
    if (v138(v78, v44) == enum case for BadgeType.chartPosition(_:))
    {
      v79 = v128;
      *v128 = 0;
      v80 = v129;
      v81 = v130;
      (*(v129 + 104))(v79, enum case for BadgeViewSpacing.spacing(_:), v130);
    }

    else
    {
      v80 = v129;
      v79 = v128;
      v82 = v78;
      v81 = v130;
      (*(v129 + 104))(v128, enum case for BadgeViewSpacing.standard(_:), v130);
      (*(v139 + 8))(v82, v44);
    }

    v83 = v133;
    (*(v80 + 32))(v127, v79, v81);
    sub_100765C1C();
    if (v131)
    {
      goto LABEL_48;
    }

    v84 = [a5 traitCollection];
    v85 = sub_10077070C();
    v86 = v85;
    if (!v83 && (v85 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v122, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (((v122 - 1 == v83) & v85) == 1)
    {
LABEL_41:
      v87 = sub_100765BEC();
      *(v88 + 8) = 0;
      v87(v146, 0);
      v89 = sub_100765C0C();
      *(v90 + 8) = 0;
      v89(v146, 0);
      v43 = v135;
    }

    if (!v83 && ((v86 ^ 1) & 1) == 0)
    {
      goto LABEL_46;
    }

    if (!__OFSUB__(v122, 1))
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
LABEL_24:
    v59 = v137;
    v60 = sub_10000A61C(v137, qword_1009A10D8);
    (*(v120 + 16))(v23, v60, v59);
    v61.super.isa = [a5 traitCollection];
    isa = v61.super.isa;
    v63 = sub_10076D3BC(v61).super.isa;
    v64 = [(objc_class *)v63 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    v43 = v135;
    if (v64)
    {
      v65 = [objc_opt_self() fontWithDescriptor:v64 size:0.0];

      if (v65)
      {
        v66 = sub_10076C04C();
        v147 = v66;
        v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v67 = sub_10000DB7C(v146);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
        v68 = v65;
        sub_10076C90C();
        sub_10000CD74(v146);
        v69 = v117;
        sub_10076996C();
        sub_100130950(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v70 = v119;
        sub_10076D2AC();

        (*(v118 + 8))(v69, v70);
        goto LABEL_58;
      }
    }

    else
    {
    }

    v103 = sub_10076C04C();
    v147 = v103;
    v148 = sub_100130950(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v104 = sub_10000DB7C(v146);
    (*(*(v103 - 8) + 104))(v104, enum case for Feature.measurement_with_labelplaceholder(_:), v103);
    sub_10076C90C();
    sub_10000CD74(v146);
    sub_10076991C();

LABEL_58:
    (*(v120 + 8))(v23, v137);
    v23 = v134;
    v42 = v132;
    v44 = v142;
  }

  if ((v122 - 1 != v83) | v86 & 1)
  {
    goto LABEL_47;
  }

LABEL_46:
  v91 = sub_100765BEC();
  *(v92 + 24) = 0;
  v91(v146, 0);
  v93 = sub_100765C0C();
  *(v94 + 24) = 0;
  v93(v146, 0);
LABEL_47:

LABEL_48:
  sub_100765BBC();
  v96 = v95;
  (*(v42 + 8))(v16, v23);
  (*(v141 + 8))(v140, v43);
  return v96;
}

uint64_t sub_100130950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100130998(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_10077167C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (sub_10077167C() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_100130AB0(uint64_t a1, __n128 a2)
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v2 + 80))
  {
    sub_10077177C(1u);
    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }

  sub_10077177C(*(v2 + 88));
}

uint64_t sub_100130B3C()
{

  v1 = OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100130BD0()
{
  sub_100016C74(v0 + 16);

  v1 = OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key;
  v2 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting(uint64_t a1)
{
  result = qword_100949E20;
  if (!qword_100949E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100130D0C(uint64_t a1)
{
  sub_100130DBC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100130DBC()
{
  if (!qword_100949E30)
  {
    v0 = sub_10076F53C();
    if (!v1)
    {
      atomic_store(v0, &qword_100949E30);
    }
  }
}

char *sub_100130E0C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_10075FD2C();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer]];
  return v24;
}

void sub_100131110(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v9 = v5;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v16 = a1;
  sub_100453A30(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void (*sub_1001312B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100131354;
}

void sub_100131354(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v13 = v4;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v31 = v3;
    sub_100453A30(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1001316DC(uint64_t a1, char *a2)
{
  v66 = a2;
  v3 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v3 - 8);
  v65 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = v63 - v6;
  v7 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v7 - 8);
  v9 = v63 - v8;
  v10 = sub_1007611EC();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v12 - 8);
  v14 = v63 - v13;
  v15 = sub_10076121C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076481C();
  v67 = *(v19 - 8);
  v68 = v19;
  __chkstk_darwin(v19);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076277C())
  {
    v63[2] = a1;
    (*(v16 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v15);
    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v22 = sub_10076D39C();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v23 = v71[0];
    sub_10076B7CC();
    sub_10076B85C();
    v24 = sub_10075DB7C();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    v25 = v64;
    sub_10076B81C();
    v26 = v65;
    sub_10076B80C();
    v27 = type metadata accessor for VideoView(0);
    sub_100132938(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v63[0] = v27;
    v63[1] = v23;
    v28 = sub_100762EEC();
    sub_10000CFBC(v26, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v25, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v9, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v71, &qword_100943310, &unk_100784150);
    v29 = *&v69[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer];
    v30 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v31 = *(v29 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v66 = v21;
    if (v28)
    {
      v32 = v28;
      v33 = [v32 superview];
      if (v33)
      {
        v34 = v33;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v35 = v31;
        v36 = sub_100770EEC();

        if (v36)
        {
          [v32 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v43 = *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v31[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v28;
    v44 = v28;
    sub_100453A30(v43);

    v45 = *(*(v29 + v30) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v45 && (v46 = swift_dynamicCastClass()) != 0)
    {
      v47 = v46;
      v48 = v45;
      [v47 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v67 + 8))(v66, v68);
    v38 = v69;
  }

  else
  {
    v37 = sub_10076278C();
    v38 = v69;
    if (v37)
    {

      v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView];
      v40 = *(*&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v41 = *(v40 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      *(v40 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v39;
      v42 = v39;
      sub_100453A30(v41);

      sub_1004526E4();
    }
  }

  v49 = sub_10076C03C();
  v71[3] = v49;
  v71[4] = sub_100132938(&qword_100947230, 255, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v50 = sub_10000DB7C(v71);
  (*(*(v49 - 8) + 104))(v50, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v49);
  LOBYTE(v49) = sub_10076C90C();
  sub_10000CD74(v71);
  v51 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  if (v49)
  {
    v52 = *(*(*&v38[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v52)
    {
      type metadata accessor for VideoView(0);
      if (swift_dynamicCastClass())
      {
        v53 = v52;
        sub_1005ECC94(v53, v54, v55);

        v51 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      }
    }
  }

  v56 = *&v38[v51];
  v57 = sub_10076275C();
  if (!v57)
  {
    v57 = [objc_opt_self() systemBackgroundColor];
  }

  v58 = v57;
  v59 = type metadata accessor for MediaView();
  v70.receiver = v56;
  v70.super_class = v59;
  objc_msgSendSuper2(&v70, "setBackgroundColor:", v58);
  [*(*&v56[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v58];
  v60 = *&v56[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v60)
  {
    v61 = v60;
    [v61 setBackgroundColor:v58];
  }

  [v38 setNeedsLayout];
  return [v38 layoutIfNeeded];
}

void sub_100131F7C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v6 - 8);
  v8 = v33 - v7;
  v9 = sub_10076481C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076277C();
  if (v16)
  {
    v17 = *(*(*(v35 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v17 && (v33[4] = v16, v33[3] = type metadata accessor for VideoView(0), (v18 = swift_dynamicCastClass()) != 0))
    {
      v33[0] = v15;
      v33[2] = a4;
      v19 = qword_1009A2558;
      v20 = v13;
      v21 = v18;
      swift_beginAccess();
      v22 = *(v10 + 16);
      v33[1] = v21;
      v23 = v21 + v19;
      v24 = v20;
      v22(v12, v23, v9);
      v25 = v17;
      sub_10076476C();
      (*(v10 + 8))(v12, v9);
      v26 = v34;
      if ((*(v34 + 48))(v8, 1, v24) != 1)
      {
        v32 = v33[0];
        (*(v26 + 32))(v33[0], v8, v24);
        sub_10076D30C();
        sub_10076B84C();
        sub_10076BFCC();

        sub_100132938(&unk_100942840, 255, type metadata accessor for VideoView, &unk_1007B40F8);
        sub_100760B8C();

        (*(v26 + 8))(v32, v24);
        return;
      }

      sub_10000CFBC(v8, &unk_1009467E0, qword_10078CB50);
    }

    else
    {
    }
  }

  if (sub_10076278C())
  {
    sub_10076BFCC();
    v27 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
    v28 = v35;
    v29 = *(v35 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v29 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v28 + v27) setContentMode:2];
    v30 = *(v28 + v27);
    sub_10075FD2C();
    sub_100132938(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v31 = v30;
    sub_100760B8C();
  }
}

id sub_1001324D4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100132578()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_1001325EC(uint64_t **a1))()
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
  v2[4] = sub_1001312B8(v2);
  return sub_100019A4C;
}

uint64_t sub_10013265C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001326B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10013271C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1001327B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_100132938(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100132980()
{
  v1 = type metadata accessor for MediaView();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v3 = type metadata accessor for UberContentContainer();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v5 = &v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v7 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v7 addSubview:?];
  }

  v9 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v8;
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_10075FD2C();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100132B84()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076172C();
  sub_10000DB18(v4, qword_10099D1B0);
  v19 = sub_10000A61C(v4, qword_10099D1B0);
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v17 = sub_10000A61C(v5, qword_1009A0FE8);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = sub_10076D9AC();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  sub_10076D9BC();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v20);
  v10(v12, v3, v0);
  sub_10076D9BC();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return sub_10076171C();
}

uint64_t sub_100132E74()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D1C();
  qword_100949F38 = result;
  return result;
}

uint64_t sub_100132EB8()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D0C();
  qword_100949F40 = result;
  return result;
}

uint64_t sub_100132EFC()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10099D1C8 = v8;
  return result;
}

char *sub_10013304C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = sub_10076E1EC();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E21C();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076771C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted] = 0;
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A0FE8);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel] = sub_1007626AC();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = sub_10076D67C();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v48);
  sub_10076D66C();
  sub_10076E1FC();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel;
  v37 = qword_10093F800;
  v38 = *&v35[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_100949F38];

  v39 = *&v35[v36];
  sub_10076266C();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100783DD0;
  *(v40 + 32) = sub_10076E3FC();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v35;
}

double sub_1001336D4(__n128 a1, double a2)
{
  v3 = sub_10076172C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076174C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v3, qword_10099D1B0);
  (*(v4 + 16))(v6, v11, v3);
  v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel);
  v22[8] = sub_1007626BC();
  v22[9] = &protocol witness table for UILabel;
  v22[5] = v12;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView);
  if (v13)
  {
    v14 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v13;
  v22[3] = v14;
  v22[4] = v15;
  v16 = v12;
  v17 = v13;
  sub_10076173C();
  sub_10013405C(v18);
  sub_10076D2AC();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  return v20;
}

uint64_t sub_100133990()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_10076E21C();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076D1FC();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076172C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076174C();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v9, qword_10099D1B0);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  v46 = sub_1007626BC();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  sub_10076173C();
  sub_10076422C();
  sub_10076170C();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  sub_10076E1CC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_100133E3C(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_10093F810 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_10099D1C8];
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v4 = sub_100770D4C();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_10013405C(__n128 a1)
{
  result = qword_1009566E0;
  if (!qword_1009566E0)
  {
    sub_10076174C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009566E0);
  }

  return result;
}

char *sub_1001340C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_1002091B8;
  v25[1] = 0;
  v25[2] = sub_1007333BC;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_1002091B8;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_100342B64;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_1001ED0D8(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
  sub_10077075C();
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_1003DCA00();

  return v16;
}

id sub_1001344C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_10094D6F0) = v1 & 1;
  sub_1001EE26C();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_1001345C8()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_100312548(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_10033FA50(v24, v17, v19, v21, v23);

  return sub_100138C80(&v26);
}

void sub_10013476C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v61 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = sub_10077071C(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_100134D68(v12, v37, v38);
      [v1 bounds];
      CGRectGetMidX(v68);
      [v1 bounds];
      CGRectGetMinY(v69);
      [v1 bounds];
      CGRectGetWidth(v70);
      [v1 bounds];
      CGRectGetHeight(v71);
      v39 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v1[v39], v8);
      if (v1[v11])
      {
        v40 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v40 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v41 = v1[*v40];
      v42 = [v1 traitCollection];
      sub_1003DF8CC(v8, v41, v42);

      sub_10000CFBC(v8, &unk_1009434A0, &unk_100787B90);
      sub_10003BDD4(&v1[v39], v4);
      if (v1[v11])
      {
        v43 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v43 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v44 = v1[*v43];
      v45 = [v1 traitCollection];
      sub_1003DF8CC(v4, v44, v45);

      sub_10000CFBC(v4, &unk_1009434A0, &unk_100787B90);
      sub_100770A3C();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [v9 traitCollection];
      sub_10018E290(v54, v51, v53);

      v72.origin.x = v47;
      v72.origin.y = v49;
      v72.size.width = v51;
      v72.size.height = v53;
      CGRectGetMidX(v72);
      v73.origin.x = v47;
      v73.origin.y = v49;
      v73.size.width = v51;
      v73.size.height = v53;
      CGRectGetMinY(v73);
      v55 = [v1 traitCollection];
      [v1 bounds];
      sub_1007709CC();
      v57 = v56;
      MinY = v58;
      v27 = v59;
      v29 = v60;

      v36 = v57;
    }

    else
    {
      [v1 bounds];
      sub_100134D68(v12, v16, v17);
      MinY = v18;
      [v1 bounds];
      CGRectGetMinX(v62);
      [v1 bounds];
      CGRectGetMinY(v63);
      [v1 bounds];
      CGRectGetWidth(v64);
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v65);
      sub_100770A3C();
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
      v24 = CGRectGetHeight(v66);
      v25 = [v9 traitCollection];
      sub_10018E290(v25, 1.79769313e308, v24);
      v27 = v26;
      v29 = v28;

      if (v1[v11])
      {
        v30 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v30 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v31 = x;
      v32 = y;
      v33 = width;
      v34 = height;
      if (v1[*v30] == 4)
      {
        MinY = CGRectGetMinY(*&v31);
      }

      else
      {
        v35 = CGRectGetMidY(*&v31) + v29 * -0.5;
        if (v35 > MinY)
        {
          MinY = v35;
        }
      }

      [v1 bounds];
      v36 = floor(CGRectGetMidX(v67) + v27 * -0.5);
    }

    [v9 setFrame:{v36, MinY, v27, v29}];
  }
}

uint64_t sub_100134D68(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v63 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v62 - v22;
  v24 = [v3 traitCollection];
  v64 = sub_10077071C();

  v25 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v31 = v4[v25];
    if (v4[v25])
    {
      v32 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v32 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v33 = v4[*v32];
    if (v33 != 4)
    {
      if ((v33 != 6) | v64 & 1)
      {
        goto LABEL_39;
      }

      v37 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v4[v37], v19);
      if (v31)
      {
        v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v39 = v4[*v38];
      v40 = [v4 traitCollection];
      sub_1003DF8CC(v19, v39, v40);

      v41 = v19;
      goto LABEL_57;
    }

    return sub_1007704EC();
  }

  if ((v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v26 = [v4 traitCollection], v27 = sub_1007706EC(), v26, (v27 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v34 = v4[v25];
      if (v4[v25])
      {
        v35 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v35 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v36 = v4[*v35];
      if (v36 == 4)
      {
        return sub_1007704EC();
      }

      if ((v36 != 6) | v64 & 1)
      {
LABEL_39:
        if (v4[v25] == 1)
        {
          v46 = [v4 traitCollection];
          sub_10077070C();

          v47 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_10003BDD4(&v4[v47], v13);
          v48 = [v4 traitCollection];
          sub_1003DF334(v13, v48);
          goto LABEL_50;
        }

LABEL_41:
        v49 = [v4 traitCollection];
        v50 = sub_10077070C();

        v51 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        if (v50)
        {
          swift_beginAccess();
          sub_10003BDD4(&v4[v51], v10);
          if (v4[v25])
          {
            v52 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v52 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v53 = v4[*v52];
          v54 = [v4 traitCollection];
          sub_1003DF8CC(v10, v53, v54);

          v13 = v10;
          goto LABEL_51;
        }

        swift_beginAccess();
        v13 = v63;
        sub_10003BDD4(&v4[v51], v63);
        if (v4[v25])
        {
          v55 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v55 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v56 = v4[*v55];
        v48 = [v4 traitCollection];
        sub_1003DF8CC(v13, v56, v48);
LABEL_50:

LABEL_51:
        sub_10000CFBC(v13, &unk_1009434A0, &unk_100787B90);
        return sub_1007704EC();
      }

      v58 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v4[v58], v23);
      if (v34)
      {
        v59 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v59 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v60 = v4[*v59];
      v61 = [v4 traitCollection];
      sub_1003DF8CC(v23, v60, v61);

      v41 = v23;
LABEL_57:
      sub_10000CFBC(v41, &unk_1009434A0, &unk_100787B90);
      return sub_1007704EC();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v28 = v4[v25];
  if (v4[v25])
  {
    v29 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v29 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v30 = v4[*v29];
  if (v30 != 4)
  {
    if ((v30 != 6) | v64 & 1)
    {
      goto LABEL_39;
    }

    v42 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BDD4(&v4[v42], v16);
    if (v28)
    {
      v43 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v43 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v44 = v4[*v43];
    v45 = [v4 traitCollection];
    sub_1003DF8CC(v16, v44, v45);

    v41 = v16;
    goto LABEL_57;
  }

  return sub_1007704EC();
}

double sub_100135464()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_10018D438();
  }

  *(v1 + v2) = 0;

  sub_10030D704();
  sub_10071A900(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;

  return result;
}

void sub_100135584()
{
  sub_1003DFB08();
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10094D6E8) = v0[v1];
  sub_1001EDE3C();
  *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_1003DCA00();
}

id sub_1001356D0()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_10094D6A8) = v3;
    sub_1001EDB98();
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_100135800(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_100138AF4();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_1001EFCF0(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_10018D370(v19);

      sub_10071A900(v20);
      *&v4[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

void sub_100135A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v7 = a2;
  v9 = sub_100766EBC();
  v164 = *(v9 - 8);
  __chkstk_darwin(v9);
  v177 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v165 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v174 = &v150 - v15;
  __chkstk_darwin(v16);
  v173 = &v150 - v17;
  v163 = sub_10076637C();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v172 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v19 - 8);
  v21 = &v150 - v20;
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v21, &v5[v24]);
  swift_endAccess();
  sub_1003DC6B0(v7);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10076C70C();
    if (!v27)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v27 = sub_100770D8C();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  sub_10076C7FC();
  v29 = sub_10075E50C();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    sub_10076C7FC();
    sub_1007652BC();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      sub_10076C7FC();
      sub_10075E2BC();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        sub_10076C7FC();
        sub_10076472C();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return;
        }
      }
    }
  }

  v159 = v9;
  v170 = v5;
  v34 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v35 = sub_10076C82C();
  v171 = v36;
  v176 = sub_10076C81C();
  v168 = v37;
  v152 = sub_10076C6EC();
  v169 = v38;
  sub_10076C75C();
  v39 = sub_10076C73C();
  v178 = v40;
  v161 = a3;
  v166 = v11;
  v160 = v12;
  v158 = v29;
  v153 = v39;
  if (v7 == 4)
  {
    (*(v12 + 104))(v173, enum case for TodayCard.Style.dark(_:), v11);
    v157 = sub_1000082CC;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v156 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v155 = sub_100342B64;
    v154 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    sub_10076C80C();
    v157 = sub_1000082CC;
    v154 = sub_100733020;
    v41 = sub_1007331DC;
    v156 = sub_100733208;
    v155 = sub_10073304C;
  }

  v175 = v7;
  v42 = v7;
  sub_10076C77C();
  v34[qword_10094D6D8] = 0;
  v43 = *&v34[qword_10094D6C0];
  *(v43 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v44 = *&v34[qword_10094D6B8];
  sub_1001E44C4(v35, v171);
  v45 = sub_100766EAC();
  v46 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v47 = *&v44[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v42 == 4 && (v45 & 1) == 0)
  {
    if (([v47 isHidden] & 1) != 0 || (v44[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v44[v46] setHidden:1];
      goto LABEL_27;
    }

    [*&v44[v46] setHidden:1];
    v44[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v48 = [v47 text];
  if (v48)
  {
    v49 = v48;
    sub_10076FF9C();
  }

  v50 = sub_10077002C();
  v51 = v50 & 1;

  if (v51 != [*&v44[v46] isHidden] && (v44[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v50 & 1) == 0)
    {
      [*&v44[v46] setAlpha:0.0];
      v151 = objc_opt_self();
      [v151 inheritedAnimationDuration];
      v53 = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = v44;
      v183 = sub_100138CF0;
      v184 = v54;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_10009AEDC;
      v182 = &unk_100889880;
      v150 = _Block_copy(&aBlock);
      v55 = v44;

      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      v183 = sub_100138CFC;
      v184 = v56;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000513F0;
      v182 = &unk_1008898D0;
      v57 = _Block_copy(&aBlock);
      v58 = v55;

      v59 = v150;
      [v151 animateWithDuration:0 delay:v150 options:v57 animations:v53 completion:0.0];
      _Block_release(v57);
      _Block_release(v59);
    }

    [*&v44[v46] setHidden:v50 & 1];
    v44[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v44 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v44[v46] setHidden:v51];
LABEL_27:
  v60 = &v34[qword_10094D6E0];
  *v60 = v157;
  v60[1] = 0;
  v60[2] = v154;
  v60[3] = 0;
  v60[4] = v41;
  v60[5] = 0;
  v60[6] = v156;
  v60[7] = 0;
  v60[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v60[9] = 0;
  v60[10] = v155;
  v60[11] = 0;

  sub_1001EDE3C();
  LODWORD(v61) = v175;
  v62 = v178;
  if (v168)
  {
    if (v175 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v63 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v64 = *(v43 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v65 = objc_allocWithZone(NSAttributedString);
    v66 = v64;
    v67 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_100138BF8(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    isa = sub_10076FE3C().super.isa;

    v69 = [v65 initWithString:v67 attributes:isa];

    [v66 setAttributedText:v69];
    [*(v43 + v63) setAdjustsFontSizeToFitWidth:0];
    [*(v43 + v63) setMinimumScaleFactor:0.0];
    [*(v43 + v63) setAttributedText:0];
    if (v169 && v34[qword_10094D6B0] == 4)
    {
      v62 = v178;
      if (v61 == 4)
      {
        v70 = v176;
        v73 = v169;
        v71 = v168;
        v72 = v152;
      }

      else
      {
        v70 = v152;
        v71 = v169;
        v72 = v176;
        v73 = v168;
      }

      sub_1001E45BC(v70, v71, v72, v73);
    }

    else
    {
      sub_1001E44C4(v176, v168);
      v62 = v178;
    }
  }

  v74 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v75 = *(v43 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v76 = [v75 text];
  if (v76 || (v76 = [*(v43 + v74) attributedText]) != 0)
  {
    v77 = v166;

    v78 = 0;
  }

  else
  {
    v78 = 1;
    v77 = v166;
  }

  [v75 setHidden:v78];

  [v34 setNeedsLayout];
  v79 = *&v34[qword_10094D6C8];
  [v79 setImage:0];
  [v79 setHidden:1];
  if (v61 != 4 && (sub_100766E8C() & 1) == 0 && v62)
  {
    v80 = a1;
    v81 = v61;
    v82 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v82 = v153 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v176) = v82 == 0;
    v83 = *&v34[qword_10094D6D0];
    v84 = &v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v85 = *&v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v83 = *&v34[qword_10094D6D0];
  v84 = &v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v85 = *&v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v62)
  {
    v80 = a1;
    v81 = v61;
    LODWORD(v176) = 1;
LABEL_49:
    v86 = v85;
    v62 = sub_10076FF6C();
    LODWORD(v61) = v81;
    a1 = v80;
    goto LABEL_51;
  }

  v86 = v85;
  LODWORD(v176) = 1;
LABEL_51:
  [v86 setText:v62];

  v87 = [*v84 isHidden];
  if (v176 == v87 || (v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v84 setHidden:v176];
  }

  else
  {
    if ((v176 & 1) == 0)
    {
      [*v84 setAlpha:0.0];
      v88 = objc_opt_self();
      [v88 inheritedAnimationDuration];
      v90 = v89;
      v91 = swift_allocObject();
      *(v91 + 16) = v83;
      v183 = sub_100138AA8;
      v184 = v91;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_10009AEDC;
      v182 = &unk_1008897E0;
      v92 = _Block_copy(&aBlock);
      v93 = v83;

      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      v183 = sub_100138AC8;
      v184 = v94;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000513F0;
      v182 = &unk_100889830;
      v95 = _Block_copy(&aBlock);
      v96 = v93;
      v77 = v166;
      LODWORD(v61) = v175;

      [v88 animateWithDuration:0 delay:v92 options:v95 animations:v90 completion:0.0];
      _Block_release(v95);
      _Block_release(v92);
    }

    [*v84 setHidden:v176];
    v83[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v83 setNeedsLayout];
  }

  v97 = v159;
  v98 = 1;
  v99 = v173;
  sub_1001EE35C(v173, 1);
  [v34 setNeedsLayout];

  (*(v164 + 8))(v177, v97);
  v100 = v160;
  v101 = *(v160 + 8);
  v101(v99, v77);
  (*(v162 + 8))(v172, v163);
  sub_10076C80C();
  v102 = v165;
  (*(v100 + 104))(v165, enum case for TodayCard.Style.white(_:), v77);
  sub_100138BF8(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_10077018C();
  sub_10077018C();
  if (aBlock != v185 || v180 != v186)
  {
    if (sub_10077167C())
    {
      v98 = 1;
    }

    else
    {
      v98 = 2;
    }
  }

  v101(v102, v77);
  v101(v174, v77);

  v103 = v170;
  [v170 setOverrideUserInterfaceStyle:v98];
  sub_1005D3598(a1, v161, v61, v167);
  sub_10076C7FC();
  v104 = swift_dynamicCastClass();
  if (v104)
  {
    p_aBlock = v104;
    v106 = sub_10075E4FC();
    v107 = v106;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      goto LABEL_184;
    }

    v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

  sub_1007652BC();
  v116 = swift_dynamicCastClass();
  if (v116)
  {
    p_aBlock = v116;
    v117 = sub_1007652AC();
    v107 = v117;
    aBlock = _swiftEmptyArrayStorage;
    v108 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v117 >> 62)
    {
      v118 = sub_10077158C();
    }

    else
    {
      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v119 = 0;
    v120 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v118 == v119)
      {
        goto LABEL_112;
      }

      if ((v107 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = sub_10077149C();
      v61 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v121 = sub_10076BB9C();

      ++v119;
      if (v121)
      {
        p_aBlock = &aBlock;
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v120 = aBlock;
        v119 = v61;
      }
    }

    if (v119 >= *(v108 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v107 + 8 * v119 + 32);

    v61 = v119 + 1;
    if (!__OFADD__(v119, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v109 = sub_10077158C();
LABEL_65:
    v110 = 0;
    v111 = _swiftEmptyArrayStorage;
    while (v109 != v110)
    {
      if ((v107 & 0xC000000000000001) != 0)
      {
        p_aBlock = sub_10077149C();
        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v110 >= *(v108 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v107 + 8 * v110 + 32);

        v61 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v112 = sub_10076BB9C();

      ++v110;
      if (v112)
      {
        p_aBlock = &aBlock;
        sub_10077019C();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v111 = aBlock;
        v110 = v61;
      }
    }

    v113 = v111 >> 62;
    if (!(v111 >> 62))
    {
      v114 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v114 >= 3)
      {
        v115 = 3;
      }

      else
      {
        v115 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      while (1)
      {
        LOBYTE(v61) = v175;
        if (v114 < v115)
        {
          goto LABEL_190;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v115 != 1)
          {
            sub_10077147C(1);
            if (v115 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_10077159C();
          v110 = v122;
          v113 = v123;
          v115 = v124;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v120 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v125 = swift_dynamicCastClass();
        if (!v125)
        {
          swift_unknownObjectRelease();
          v125 = _swiftEmptyArrayStorage;
        }

        v126 = v125[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v113 = v120 >> 62;
        if (v120 >> 62)
        {
          if (v120 < 0)
          {
            p_aBlock = v120;
          }

          else
          {
            p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          }

          v107 = sub_10077158C();
          if (sub_10077158C() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v131 = sub_10077158C();
LABEL_126:
            v110 = 0;
            v111 = _swiftEmptyArrayStorage;
            while (v131 != v110)
            {
              if ((v107 & 0xC000000000000001) != 0)
              {
                p_aBlock = sub_10077149C();
                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v110 >= *(v108 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v107 + 8 * v110 + 32);

                v61 = v110 + 1;
                if (__OFADD__(v110, 1))
                {
                  goto LABEL_182;
                }
              }

              v132 = sub_10076BB9C();

              ++v110;
              if (v132)
              {
                p_aBlock = &aBlock;
                sub_10077019C();
                if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                v111 = aBlock;
                v110 = v61;
              }
            }

            goto LABEL_148;
          }

          if (v107 >= 3)
          {
            v148 = 3;
          }

          else
          {
            v148 = v107;
          }

          if (v107 >= 0)
          {
            v107 = v148;
          }

          else
          {
            v107 = 3;
          }

          v128 = sub_10077158C();
        }

        else
        {
          v128 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v128 >= 3)
          {
            v107 = 3;
          }

          else
          {
            v107 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        LOBYTE(v61) = v175;
        if (v128 < v107)
        {
          goto LABEL_198;
        }

        if ((v120 & 0xC000000000000001) != 0 && v107)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v107 != 1)
          {
            sub_10077147C(1);
            if (v107 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_10077159C();
          v110 = v133;
          v113 = v134;
          v115 = v135;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v120 & 0xFFFFFFFFFFFFFF8);
          v110 = (v120 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v107) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v136 = swift_dynamicCastClass();
        if (!v136)
        {
          swift_unknownObjectRelease();
          v136 = _swiftEmptyArrayStorage;
        }

        v126 = v136[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v113 = v111 >> 62;
        if (v111 >> 62)
        {
          if (v111 < 0)
          {
            p_aBlock = v111;
          }

          else
          {
            p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          }

          v115 = sub_10077158C();
          if (sub_10077158C() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v115 >= 3)
          {
            v149 = 3;
          }

          else
          {
            v149 = v115;
          }

          if ((v115 & 0x8000000000000000) == 0)
          {
            v115 = v149;
          }

          else
          {
            v115 = 3;
          }

          v137 = sub_10077158C();
        }

        else
        {
          v137 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v137 >= 3)
          {
            v115 = 3;
          }

          else
          {
            v115 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        LOBYTE(v61) = v175;
        if (v137 < v115)
        {
          goto LABEL_205;
        }

        if ((v111 & 0xC000000000000001) != 0 && v115)
        {
          sub_10076C02C();

          sub_10077147C(0);
          if (v115 != 1)
          {
            sub_10077147C(1);
            if (v115 != 2)
            {
              sub_10077147C(2);
            }
          }
        }

        else
        {
        }

        if (v113)
        {
          p_aBlock = sub_10077159C();
          v110 = v139;
          v113 = v140;
          v115 = v141;

          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
          v110 = (v111 & 0xFFFFFFFFFFFFFF8) + 32;
          v115 = (2 * v115) | 1;
          if ((v115 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v111 = sub_10077169C();
        swift_unknownObjectRetain_n();
        v143 = swift_dynamicCastClass();
        if (!v143)
        {
          swift_unknownObjectRelease();
          v143 = _swiftEmptyArrayStorage;
        }

        v126 = v143[2];

        v127 = (v115 >> 1) - v113;
        if (!__OFSUB__(v115 >> 1, v113))
        {
LABEL_169:
          if (v126 != v127)
          {
            goto LABEL_191;
          }

          v138 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v138)
          {
            swift_unknownObjectRelease();
            v138 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v115 >= 3)
        {
          v147 = 3;
        }

        else
        {
          v147 = v115;
        }

        if ((v115 & 0x8000000000000000) == 0)
        {
          v115 = v147;
        }

        else
        {
          v115 = 3;
        }

        v114 = sub_10077158C();
      }
    }

    if (v111 < 0)
    {
      p_aBlock = v111;
    }

    else
    {
      p_aBlock = (v111 & 0xFFFFFFFFFFFFFF8);
    }

    v115 = sub_10077158C();
    if ((sub_10077158C() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_1002347C8(p_aBlock, v110, v113, v115);
    v138 = v142;
    swift_unknownObjectRelease();

LABEL_172:
    v103 = v170;
  }

  else
  {
    sub_10076472C();
    v129 = swift_dynamicCastClass();
    if (v129)
    {
      p_aBlock = v129;
      v130 = sub_10076471C();
      v107 = v130;
      aBlock = _swiftEmptyArrayStorage;
      v108 = v130 & 0xFFFFFFFFFFFFFF8;
      if (!(v130 >> 62))
      {
        v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    sub_10075E2BC();
    if (swift_dynamicCastClass())
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v138 = swift_allocObject();
      *(v138 + 1) = xmmword_1007841E0;
      v138[4] = sub_10075E2AC();
    }

    else
    {

      v138 = _swiftEmptyArrayStorage;
    }
  }

  v144 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v145 = *&v103[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

  v146 = sub_1000CCE04(v138, v145);

  if (v146)
  {
  }

  else
  {
    *&v103[v144] = v138;

    [v103 setNeedsLayout];
  }
}

double sub_100137524(uint64_t a1, char a2)
{
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v22 = v2;
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v3 >> 62)
  {
LABEL_38:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_10076135C();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 40) = sub_1000FC990(_swiftEmptyArrayStorage);
  v7 = 3;
  if (v4 < 3)
  {
    v7 = v4;
  }

  *(v6 + 24) = v7;
  *(v6 + 32) = v5 & 1;

  sub_10018D370(v8);
  v9 = *(v22 + v21);
  *&v23[0] = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    v10 = sub_10077158C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v14 = sub_10076BE1C();

    ++v11;
    if (v14)
    {
      sub_10077019C();
      if (*((*&v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v12 = *&v23[0];
      v11 = v13;
    }
  }

  sub_10071A900(v12);
  sub_100760C4C();
  sub_10076FC1C();
  v15 = *(v22 + v21);
  if (v15 >> 62)
  {
    v16 = sub_10077158C();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v22 + v21) >> 62)
      {
        sub_10077158C();
      }

      sub_10076BFCC();
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v17;

      sub_100760B7C();

      sub_10000CFBC(v23, &qword_100943310, &unk_100784150);
      ++v17;
    }

    while (v19 != v16);
  }

  return result;
}

void sub_1001379B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_10024A754(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_10018D628(a1, a6);
    }
  }
}

void sub_100137A88()
{
  sub_10076C84C();
  sub_100138BF8(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  if (v22)
  {
    sub_10076C7FC();

    sub_10075E50C();
    if (swift_dynamicCastClass())
    {

      if (sub_10075E4FC() >> 62)
      {
LABEL_73:
        sub_10077158C();
      }

      v0 = sub_10075E4FC();
      v1 = v0;
      v2 = v0 & 0xFFFFFFFFFFFFFF8;
      if (v0 >> 62)
      {
        v3 = sub_10077158C();
        if (v3)
        {
LABEL_11:
          v4 = 0;
          do
          {
            v5 = v4;
            while (1)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                sub_10077149C();
                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v5 >= *(v2 + 16))
                {
                  goto LABEL_68;
                }

                v4 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (sub_10076BB5C())
              {
                break;
              }

              ++v5;
              if (v4 == v3)
              {
                goto LABEL_79;
              }
            }

            sub_10076BFCC();

            sub_10077019C();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
          }

          while (v4 != v3);
        }
      }

      else
      {
        v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      v21._rawValue = _swiftEmptyArrayStorage;
      sub_100760BAC(v21);

LABEL_80:

      return;
    }

    sub_1007652BC();
    if (!swift_dynamicCastClass())
    {
      sub_10076472C();
      if (!swift_dynamicCastClass())
      {
        sub_10075E2BC();
        if (!swift_dynamicCastClass())
        {

          return;
        }

        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1007841E0;

        sub_10075E2AC();
        v13 = sub_10076BFCC();

        *(v12 + 32) = v13;
        v14._rawValue = v12;
        sub_100760BAC(v14);

        goto LABEL_80;
      }

      if (sub_10076471C() >> 62)
      {
        sub_10077158C();
      }

      v15 = sub_10076471C();
      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        v18 = sub_10077158C();
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_79;
        }
      }

      v19 = 0;
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_72;
            }

            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (sub_10076BB5C())
          {
            break;
          }

          ++v20;
          if (v19 == v18)
          {
            goto LABEL_79;
          }
        }

        sub_10076BFCC();

        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      while (v19 != v18);
      goto LABEL_79;
    }

    if (sub_1007652AC() >> 62)
    {
      sub_10077158C();
    }

    v6 = sub_1007652AC();
    v7 = v6;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v9 = sub_10077158C();
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_79;
      }
    }

    v10 = 0;
    do
    {
      v11 = v10;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_70;
          }

          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (sub_10076BB5C())
        {
          break;
        }

        ++v11;
        if (v10 == v9)
        {
          goto LABEL_79;
        }
      }

      sub_10076BFCC();

      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    while (v10 != v9);
    goto LABEL_79;
  }
}

void sub_1001381E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_1001383A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      sub_10076A00C();
    }
  }
}

void sub_1001384F0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      swift_getObjectType();
      sub_100769FFC();
    }
  }
}

double sub_100138798()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell(uint64_t a1)
{
  result = qword_100949FF0;
  if (!qword_100949FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001389A8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1001389F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_100138A24(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_100138A70()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100138AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100138AF4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_10094D6B0) = v4;
    *(*(v5 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_100138BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100138C40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100138D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B78C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100138D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B7AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100138D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_10076469C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (sub_10076FF9C() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_10000A5D4(&qword_10094A0F8, qword_10078CE58);
    *(a4 + 32) = sub_100120048(&qword_10094A100, &qword_10094A0F8, qword_10078CE58);
    v21[1] = sub_10000DB7C(a4);
    v21[0] = sub_10076FF9C();
    type metadata accessor for TitleHeaderView(0);
    sub_1007708FC();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_10076A3BC();
    return result;
  }

  sub_10076529C();
  if (sub_10076527C() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = sub_10077167C();

  if (v18)
  {
    goto LABEL_12;
  }

  if (sub_10076528C() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = sub_10077167C();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_10000A5D4(&qword_10094A0E8, &qword_10078CE50);
  *(a4 + 32) = sub_100120048(&qword_10094A0F0, &qword_10094A0E8, &qword_10078CE50);
  sub_10000DB7C(a4);
  sub_10076526C();
  return result;
}

uint64_t sub_100139080(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v64 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v59 - v21;
  if (((*(v2 + 24))(v20) & 1) == 0)
  {
    return 0;
  }

  v62 = v6;
  v63 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23 = *(v12 + 8);
  v23(v22, v11);
  v24 = v68;
  if (!v68)
  {
    return 0;
  }

  v25 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v25 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    return 0;
  }

  v61 = v67;
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v27 = v26;
  v29 = v28;
  (*(v8 + 8))(v10, v7);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23(v18, v11);
  v30 = v67;
  if (v67)
  {
    sub_10076B8EC();
    v32 = v31;
    v33 = sub_10076461C();
    if (qword_10093F988 != -1)
    {
      swift_once();
    }

    v34 = qword_10094C0F0;
    if (v32)
    {
      v35 = sub_10076FF6C();
    }

    else
    {
      v35 = 0;
    }

    [v34 setTitle:v35 forState:0];

    [v34 setImage:0 forState:0];
    v39 = [v34 titleLabel];
    v40 = v39;
    if (v39)
    {
      v59 = v30;
      v60 = v32;
      v41 = v39;
      v42 = [v41 font];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v33];
      }

      else
      {
        v44 = 0;
      }

      [v41 setFont:v44];
    }

    [v34 sizeThatFits:{v27, v29}];
    v46 = v45;
    v38 = v47;

    v37 = v46 + 0.0;
    [v34 setTitle:0 forState:0];
    [v34 setImage:0 forState:0];
  }

  else
  {
    v37 = 0.0;
    v38 = 0.0;
  }

  v48 = v64;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23(v48, v11);
  v63 = v67;
  v60 = type metadata accessor for TitleHeaderView(0);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23(v48, v11);
  v50 = v67;
  v49 = v68;
  v51 = v65;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23(v51, v11);
  v52 = v66;
  v53 = sub_10013ACE0();
  v54 = v62;
  sub_1001397C4(v62);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v58 = sub_10076462C();
  swift_getObjectType();
  sub_1001963E0(v50, v49, v52, v61, v24, v63, 0, 0, v27, v29, v37, v38, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v53, v54, 1, v58);

  swift_unknownObjectRelease();

  sub_10013B184(v54, type metadata accessor for TitleHeaderView.Style);
  return *&v27;
}

uint64_t sub_10013976C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B61C();
  *a1 = result;
  return result;
}

uint64_t sub_100139798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B63C();
  *a1 = result;
  return result;
}

uint64_t sub_1001397C4@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v102 = sub_100763BBC();
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v3 - 8);
  v101 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v83 - v6;
  v7 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v7 - 8);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v83 - v10;
  v86 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v90 = *(v86 - 8);
  __chkstk_darwin(v86);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v83 - v13;
  __chkstk_darwin(v14);
  v92 = &v83 - v15;
  __chkstk_darwin(v16);
  v97 = &v83 - v17;
  v18 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v84 = &v83 - v21;
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  __chkstk_darwin(v28);
  v103 = &v83 - v29;
  v30 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v83 - v35;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v37 = *(v31 + 8);
  v37(v36, v30);
  v38 = v105;
  if (v105)
  {
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v37(v33, v30);
  v39 = v105;
  if (v105)
  {
    v40 = v104;

    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v42 = v41 != 0;
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_10076034C();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v103, 1, 1, v43);
  v45 = sub_100763BAC();
  v87 = *(v45 - 8);
  v88 = v45;
  (*(v87 + 56))(v99, 1, 1);
  v46 = (v44 + 48);
  v89 = v42;
  if (!v38)
  {
    if (v42)
    {
      v48 = v84;
      sub_100016E2C(v103, v84, &unk_10094BB80, &qword_100791CF0);
      if ((*v46)(v48, 1, v43) == 1)
      {
        sub_10000CFBC(v48, &unk_10094BB80, &qword_100791CF0);
        v49 = 0;
      }

      else
      {
        v49 = sub_1007602EC();
        (*(v44 + 8))(v48, v43);
      }

      v53 = v91;
      v54 = v86;
      sub_100286F40(v49, v97);

      v55 = v92;
      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v56 = qword_10099DFE8;
      goto LABEL_31;
    }

    v51 = v85;
    sub_100016E2C(v103, v85, &unk_10094BB80, &qword_100791CF0);
    if ((*v46)(v51, 1, v43) == 1)
    {
      sub_10000CFBC(v51, &unk_10094BB80, &qword_100791CF0);
      v52 = 0;
    }

    else
    {
      v52 = sub_1007602EC();
      (*(v44 + 8))(v51, v43);
    }

    v53 = v91;
    v54 = v86;
    sub_100286F40(v52, v97);

    v55 = v92;
    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v57 = 1;
    v58 = qword_10099DFA0;
LABEL_38:
    v61 = v55;
    goto LABEL_39;
  }

  if (!v42)
  {
    sub_100016E2C(v103, v24, &unk_10094BB80, &qword_100791CF0);
    if ((*v46)(v24, 1, v43) == 1)
    {
      sub_10000CFBC(v24, &unk_10094BB80, &qword_100791CF0);
      v50 = 0;
    }

    else
    {
      v50 = sub_1007602EC();
      (*(v44 + 8))(v24, v43);
    }

    v53 = v91;
    v54 = v86;
    sub_100286F40(v50, v97);

    v55 = v92;
    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v57 = 1;
    v58 = qword_10099DFB8;
    goto LABEL_38;
  }

  sub_100016E2C(v103, v27, &unk_10094BB80, &qword_100791CF0);
  if ((*v46)(v27, 1, v43) == 1)
  {
    sub_10000CFBC(v27, &unk_10094BB80, &qword_100791CF0);
    v47 = 0;
  }

  else
  {
    v47 = sub_1007602EC();
    (*(v44 + 8))(v27, v43);
  }

  v53 = v91;
  v54 = v86;
  sub_100286F40(v47, v97);

  v55 = v92;
  if (qword_10093FC70 != -1)
  {
    swift_once();
  }

  v56 = qword_10099E000;
LABEL_31:
  v59 = sub_10000A61C(v54, v56);
  sub_10011BA50(v59, v55, v60);
  if (qword_10093FC48 != -1)
  {
    swift_once();
  }

  v57 = 0;
  v58 = qword_10099DF88;
  v61 = v53;
LABEL_39:
  v62 = sub_10000A61C(v54, v58);
  sub_10011BA50(v62, v61, v63);
  v64.n128_f64[0] = (*(v90 + 56))(v53, v57, 1, v54);
  v65 = v97;
  v66 = v93;
  sub_10011BA50(v97, v93, v64);
  v67 = v94;
  sub_10011BA50(v55, v94, v68);
  sub_100016E2C(v53, v98, &qword_100949718, &unk_10078CE10);
  v69 = v99;
  sub_100016E2C(v99, v101, &qword_100949710, "fc\a");
  v70 = v96;
  (*(v96 + 104))(v100, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v102);
  sub_1000325F0();
  v71 = sub_100770CDC();
  sub_10000CFBC(v69, &qword_100949710, "fc\a");
  sub_10000CFBC(v53, &qword_100949718, &unk_10078CE10);
  sub_10013B184(v55, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B184(v65, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v103, &unk_10094BB80, &qword_100791CF0);
  v72 = type metadata accessor for TitleHeaderView.Style(0);
  v73 = v72[8];
  v74 = v95;
  sub_10013B084(v66, v95, v75);
  sub_10013B084(v67, v74 + v72[5], v76);
  sub_10013B0E8(v98, v74 + v72[6]);
  *(v74 + v72[7]) = 0;
  *(v74 + v73) = 0;
  v77 = v89;
  *(v74 + v72[9]) = v89;
  *(v74 + v72[14]) = 0x4030000000000000;
  *(v74 + v72[12]) = 0;
  *(v74 + v72[13]) = v71;
  v78 = v101;
  (*(v70 + 32))(v74 + v72[11], v100, v102);
  v80 = v87;
  v79 = v88;
  if ((*(v87 + 48))(v78, 1, v88) != 1)
  {
    return (*(v80 + 32))(v74 + v72[10], v78, v79);
  }

  sub_10000CFBC(v78, &qword_100949710, "fc\a");
  if (v77)
  {
    v81 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v81 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v80 + 104))(v74 + v72[10], *v81, v79);
}

double sub_10013A3B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10013A42C(a1, a6, v8);
  }

  return v8.n128_f64[0];
}

uint64_t sub_10013A42C(void *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10076469C();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v9;
  __chkstk_darwin(v10);
  v53 = &v50 - v11;
  v12 = sub_10076BEDC();
  v50 = *(v12 - 8);
  v51 = v12;
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v61 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v60 = a2;
  sub_10076468C();
  sub_100760C4C();
  v57 = v4;
  sub_10076F64C();
  sub_10076FC1C();
  v62 = v64;
  swift_getKeyPath();
  sub_10076F49C();

  v18 = v64;
  v19 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v20 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

  sub_1001903B4(v18, v21);
  *(a1 + v19) = v18;

  sub_1001903C8(v20);

  swift_getKeyPath();
  v63 = v15;
  sub_10076F49C();

  v22 = v64;
  v23 = v65;
  v24 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v26 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v25 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

  sub_10018FD94(v22, v23);
  *v24 = v22;
  v24[1] = v23;

  sub_10018FE28(v26, v25);

  if (*(a1 + v19))
  {
    v27 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v27)
    {

      v28 = v27;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v50 + 8))(v14, v51);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();
    }
  }

  swift_getKeyPath();
  sub_10076F49C();

  v29 = v64;
  v30 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v31 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

  sub_100190554(v29, v32);
  *(a1 + v30) = v29;

  sub_100190668(v31);

  v33 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_10076F49C();

  if (v65)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  v52 = v33;
  [v33 setText:v34];

  if (*(a1 + v30))
  {
    v35 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
    if (v35)
    {

      v36 = v35;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v50 + 8))(v14, v51);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();
    }
  }

  v37 = v56;
  v38 = *(v56 + 16);
  v39 = v53;
  v40 = v58;
  v38(v53, v60, v58);
  v41 = v54;
  v38(v54, v39, v40);
  v42 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v57;
  (*(v37 + 32))(v43 + v42, v39, v40);
  v44 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v44 = sub_10013AFF8;
  v44[1] = v43;

  [v52 setNumberOfLines:sub_10013ACE0()];

  (*(v37 + 8))(v41, v40);
  v45 = v59;
  sub_1001397C4(v59);
  (*((swift_isaMask & *a1) + 0x1C8))(v45);
  v46 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v46)
  {
    swift_getKeyPath();
    v47 = v46;
    sub_10076F49C();

    if (v65)
    {
      v48 = sub_10076FF6C();
    }

    else
    {
      v48 = 0;
    }

    [v47 setText:v48];
  }

  [a1 setNeedsLayout];

  return (*(v61 + 8))(v17, v63);
}

uint64_t sub_10013AC74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10013ACE0()
{
  v0 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_10076461C();
  v5 = sub_10077071C();

  if (v5)
  {
    return 0;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

void *sub_10013AE20(uint64_t a1, __n128 a2)
{
  v2 = COERCE_DOUBLE(sub_100139080(a1, a2));
  if (v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v2;
  v6 = v3;
  v7 = v3 >= v2 ? v2 : v3;
  if (v7 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:v5];
  v10 = [v8 absoluteDimension:v6];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007841E0;
  *(v13 + 32) = v12;

  return v13;
}

uint64_t sub_10013AF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B63C();
  *a1 = result;
  return result;
}

uint64_t sub_10013AF98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B78C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10013AFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B61C();
  *a1 = result;
  return result;
}

uint64_t sub_10013AFF8()
{
  sub_10076469C();

  return sub_10013ACE0();
}

uint64_t sub_10013B058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B7AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10013B084(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013B0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013B158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B60C();
  *a1 = result;
  return result;
}

uint64_t sub_10013B184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013B1E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013B21C()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_10013B2E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10013A3B8(a1, a2, a3, a4, v10, v11);
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013B47C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_10077178C(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_10077178C(*&v3);
}

Swift::Int sub_10013B4CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10077175C();
  sub_10013B47C(v1, v2);
  return sub_1007717AC();
}

Swift::Int sub_10013B528(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_10077175C();
  sub_10013B47C(v2, v3);
  return sub_1007717AC();
}

id sub_10013B5A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_10013BAC8(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10013B604()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_10013BAC8(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10013B664()
{
  sub_10000A5D4(&qword_10094A1E8, &qword_10078D328);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10078CEA0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_10078CEB0;
  *(v0 + 96) = xmmword_10078CEB0;
  *(v0 + 112) = xmmword_10078CEB0;
  *(v0 + 128) = xmmword_10078CEC0;
  *(v0 + 144) = xmmword_10078CEC0;
  *(v0 + 160) = xmmword_10078CEC0;
  *(v0 + 176) = xmmword_10078CED0;
  *(v0 + 192) = xmmword_10078CED0;
  *(v0 + 208) = xmmword_10078CED0;
  *(v0 + 224) = xmmword_10078CEE0;
  *(v0 + 240) = xmmword_10078CEE0;
  *(v0 + 256) = xmmword_10078CEF0;
  *(v0 + 272) = xmmword_10078CF00;
  *(v0 + 288) = xmmword_10078CF00;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_10078CF10;
  *(v0 + 352) = xmmword_10078CF20;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_10078CF30;
  *(v0 + 400) = xmmword_10078CF40;
  *(v0 + 416) = xmmword_10078CF50;
  *(v0 + 432) = xmmword_10078CF60;
  *(v0 + 448) = xmmword_10078CF70;
  *(v0 + 464) = xmmword_10078CF80;
  *(v0 + 480) = xmmword_10078CF50;
  *(v0 + 496) = xmmword_10078CF80;
  *(v0 + 512) = xmmword_10078CF90;
  *(v0 + 528) = xmmword_10078CFA0;
  *(v0 + 544) = xmmword_10078CFB0;
  *(v0 + 560) = xmmword_10078CFC0;
  *(v0 + 576) = xmmword_10078CFC0;
  *(v0 + 592) = xmmword_10078CFC0;
  *(v0 + 608) = xmmword_10078CFD0;
  *(v0 + 624) = xmmword_10078CFE0;
  *(v0 + 640) = xmmword_10078CFF0;
  *(v0 + 656) = xmmword_10078D000;
  *(v0 + 672) = xmmword_10078D010;
  *(v0 + 688) = xmmword_10078D020;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_10078D030;
  *(v0 + 736) = xmmword_10078D040;
  *(v0 + 752) = xmmword_10078D050;
  *(v0 + 768) = xmmword_10078D050;
  *(v0 + 784) = xmmword_10078D060;
  *(v0 + 800) = xmmword_10078D070;
  *(v0 + 816) = xmmword_10078D080;
  *(v0 + 832) = xmmword_10078D090;
  *(v0 + 848) = xmmword_10078D0A0;
  *(v0 + 864) = xmmword_10078D0A0;
  *(v0 + 880) = xmmword_10078D0A0;
  *(v0 + 896) = xmmword_10078D0B0;
  *(v0 + 912) = xmmword_10078D0B0;
  *(v0 + 928) = xmmword_10078D0B0;
  *(v0 + 944) = xmmword_10078D0C0;
  *(v0 + 960) = xmmword_10078D0C0;
  *(v0 + 976) = xmmword_10078D0D0;
  *(v0 + 992) = xmmword_10078D0E0;
  *(v0 + 1008) = xmmword_10078D0F0;
  *(v0 + 1024) = xmmword_10078D0F0;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_10078D100;
  *(v0 + 1072) = xmmword_10078D110;
  *(v0 + 1088) = xmmword_10078D120;
  *(v0 + 1104) = xmmword_10078D130;
  *(v0 + 1120) = xmmword_10078D140;
  *(v0 + 1136) = xmmword_10078D150;
  *(v0 + 1152) = xmmword_10078D150;
  *(v0 + 1168) = xmmword_10078D150;
  *(v0 + 1184) = xmmword_10078D160;
  *(v0 + 1200) = xmmword_10078D170;
  *(v0 + 1216) = xmmword_10078D160;
  *(v0 + 1232) = xmmword_10078D180;
  *(v0 + 1248) = xmmword_10078D190;
  *(v0 + 1264) = xmmword_10078D1A0;
  *(v0 + 1280) = xmmword_10078D1B0;
  *(v0 + 1296) = xmmword_10078D1C0;
  *(v0 + 1312) = xmmword_10078D1D0;
  *(v0 + 1328) = xmmword_10078D1E0;
  *(v0 + 1344) = xmmword_10078D1F0;
  *(v0 + 1360) = xmmword_10078D200;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_10078D210;
  *(v0 + 1440) = xmmword_10078D210;
  *(v0 + 1456) = xmmword_10078D210;
  *(v0 + 1472) = xmmword_10078D220;
  *(v0 + 1488) = xmmword_10078D220;
  *(v0 + 1504) = xmmword_10078D220;
  *(v0 + 1520) = xmmword_10078D230;
  *(v0 + 1536) = xmmword_10078D240;
  *(v0 + 1552) = xmmword_10078D250;
  *(v0 + 1568) = xmmword_10078D260;
  *(v0 + 1584) = xmmword_10078D270;
  *(v0 + 1600) = xmmword_10078D260;
  *(v0 + 1616) = xmmword_10078D280;
  *(v0 + 1632) = xmmword_10078D290;
  *(v0 + 1648) = xmmword_10078D2A0;
  *(v0 + 1664) = xmmword_10078D290;
  *(v0 + 1680) = xmmword_10078D2B0;
  *(v0 + 1696) = xmmword_10078D2C0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_1000FC894(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_10094A138 = v7;
  return result;
}

uint64_t sub_10013BA64()
{

  return swift_deallocClassInstance();
}

id sub_10013BAC8(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_10093F818 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_10094A138;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(off_10094A138 + 2))
  {
LABEL_4:
    v15 = *(&off_100882508 + v5 + 32);
    v16 = sub_10061029C(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(v7[7] + 32 * v16), *(v7[7] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (v7[2])
    {
      v19 = sub_10061029C(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(v7[7] + 32 * v19), *(v7[7] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (v7[2])
      {
        v22 = sub_10061029C(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(v7[7] + 32 * v22), *(v7[7] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (v7[2])
        {
          v25 = sub_10061029C(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(v7[7] + 32 * v25), *(v7[7] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (v7[2])
          {
            v28 = sub_10061029C(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(v7[7] + 32 * v28), *(v7[7] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (v7[2])
            {
              v31 = sub_10061029C(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(v7[7] + 32 * v31), *(v7[7] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_10013BF4C()
{
  result = qword_10094A1F0;
  if (!qword_10094A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A1F0);
  }

  return result;
}

id sub_10013C138(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10013C1A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075DDBC();
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v116 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_10094A288, &unk_10078D460);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_10076CB4C();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = sub_10076C9CC();
  sub_10076C97C();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = sub_10076C9DC();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = sub_10076C9AC();
  v29 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView(0);
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView(0);
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_10076313C();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_10075FD2C();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v115 = sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  v36 = sub_1007701BC();

  *&v5[v34] = v36;
  v121.receiver = v5;
  v121.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v121, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v113 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v114 = v50;
  v54 = qword_1009410C0;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = sub_10076D3DC();
  sub_10000A61C(v56, qword_1009A2038);
  v57 = v37;
  v58.super.isa = [v57 traitCollection];
  isa = v58.super.isa;
  v60 = sub_10076D3BC(v58).super.isa;

  v61 = objc_opt_self();
  v62 = [v61 fontWithDescriptor:v60 size:0.0];

  [v55 setFont:v62];
  v63 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  v64 = qword_1009410C8;
  v65 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  if (v64 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v56, qword_1009A2050);
  v66.super.isa = [v57 traitCollection];
  v67 = v66.super.isa;
  v68 = sub_10076D3BC(v66).super.isa;

  v69 = [v61 fontWithDescriptor:v68 size:0.0];
  [v65 setFont:v69];

  v70 = *&v57[v63];
  v71 = [v45 labelColor];
  [v70 setTextColor:v71];

  [*&v57[v63] setAdjustsFontForContentSizeCategory:1];
  v112 = v63;
  v72 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  v73 = qword_1009410D0;
  v74 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  if (v73 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v56, qword_1009A2068);
  v75 = [v57 traitCollection];

  v76.super.isa = v75;
  v77 = sub_10076D3BC(v76).super.isa;

  v78 = [v61 fontWithDescriptor:v77 size:0.0];
  [v74 setFont:v78];

  [*&v57[v72] setNumberOfLines:2];
  [*&v57[v72] setAdjustsFontForContentSizeCategory:1];
  v79 = *&v57[v72];
  v80 = [v45 secondaryLabelColor];
  [v79 setTextColor:v80];

  v81 = [*&v57[v72] layer];
  v82 = v113;
  [v81 setCompositingFilter:v113];

  v83 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  v84 = *&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator];
  v85 = objc_allocWithZone(UIColor);
  v86 = v84;
  v87 = [v85 initWithWhite:1.0 alpha:0.12];
  [v86 setBackgroundColor:v87];

  v88 = [*&v57[v83] layer];
  [v88 setCompositingFilter:v82];

  v89 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v89] setClipsToBounds:1];
  v90 = [v57 contentView];
  [v90 addSubview:*&v57[v89]];

  v91 = [v57 contentView];
  v92 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  [v91 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect]];

  v93 = [v57 contentView];
  [v93 addSubview:*&v37[v114]];

  v94 = [v57 contentView];
  [v94 addSubview:*&v57[v112]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v72]];

  v96 = [v57 contentView];
  v97 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  [v96 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent]];

  v98 = [v57 contentView];
  [v98 addSubview:*&v57[v83]];

  v99 = [v57 contentView];
  [v99 addSubview:*&v57[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup]];

  v100 = *&v57[v92];

  v101 = sub_1007701AC().super.isa;

  [v100 setBackgroundEffects:v101];

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_10077145C(27);

  v119 = 0xD000000000000019;
  v120 = 0x80000001007D58D0;
  v102 = v116;
  sub_10075DDAC();
  v103 = sub_10075DD8C();
  v105 = v104;
  (*(v117 + 8))(v102, v118);
  v122._countAndFlagsBits = v103;
  v122._object = v105;
  sub_1007700CC(v122);

  v106 = *&v57[v92];
  v107 = sub_10076FF6C();
  [v106 _setGroupName:v107];

  v108 = *&v57[v97];
  sub_10076C99C();

  v109 = *&v57[v97];
  sub_10076C98C();

  return v57;
}

uint64_t sub_10013CEDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007693EC();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007693CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_10013D454(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_100016F40(0, &qword_100956550, UILabel_ptr);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = sub_10076C9CC();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView(0);
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView(0);
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  sub_1007693DC();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  sub_1007693AC();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  sub_10075FC8C();
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10013D454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D9AC();
  v12 = sub_10000A61C(v11, qword_1009A2380);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_10000DB7C(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v54 = sub_10000A61C(v15, qword_1009A2038);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  sub_10076D9BC();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  sub_10076D9BC();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_10000A61C(v41, qword_1009A2050);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v72);
  v53(v27, v7, v3);
  sub_10076D9BC();
  v23(v7, v3);
  v48 = v23;
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v24, qword_1009A2068);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v69);
  v53(v29, v7, v3);
  sub_10076D9BC();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_10000DB7C(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_10000DB7C(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v61);
  v35(v38, v7, v3);
  sub_10076D9BC();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return sub_1007693BC();
}

uint64_t sub_10013DC98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_10094A270, &qword_10078D458);
  v11 = sub_1007701BC();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button];
  sub_10077019C();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_10077019C();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell(uint64_t a1)
{
  result = qword_10094A258;
  if (!qword_10094A258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013E008(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10013E0D0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094A288, &unk_10078D460);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10076CB4C();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = sub_10076C9CC();
  sub_10076C97C();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = sub_10076C9DC();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = sub_10076C9AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView(0);
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView(0);
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_10076313C();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_10075FD2C();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  v25 = sub_1007701BC();

  *(v1 + v23) = v25;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10013E4AC()
{
  v0 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000A5D4(&qword_10094A330, qword_10078D568);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_10076336C();
  sub_10076F87C();
  sub_10013E624();
  sub_10076F83C();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_10013E624()
{
  result = qword_10094A338;
  if (!qword_10094A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A338);
  }

  return result;
}

unint64_t sub_10013E68C()
{
  result = qword_10094A340;
  if (!qword_10094A340)
  {
    sub_1007688BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A340);
  }

  return result;
}

uint64_t sub_10013E6E4()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007688AC();
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

uint64_t sub_10013E830(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076865C();
  sub_10000DB18(v13, a5);
  sub_10000A61C(v13, a5);
  v17[24] = &type metadata for Double;
  v17[25] = &protocol witness table for Double;
  *&v17[21] = a1;
  v17[19] = &type metadata for Double;
  v17[20] = &protocol witness table for Double;
  *&v17[16] = a2;
  if (qword_100941078 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A1F60);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v17[14] = &type metadata for Double;
  v17[15] = &protocol witness table for Double;
  *&v17[11] = a3;
  v17[9] = &type metadata for Double;
  v17[10] = &protocol witness table for Double;
  v17[6] = 0x4046800000000000;
  v17[5] = &protocol witness table for Double;
  v17[4] = &type metadata for Double;
  v17[1] = 0x4024000000000000;
  return sub_10076864C();
}

char *sub_10013EA5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  if (qword_100941070 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A1F48);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v47[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel] = sub_1007626AC();
  if (qword_100941078 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v15, qword_1009A1F60);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_1007626AC();
  v26 = v47;
  *&v47[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel] = v25;
  *&v26[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_itemViews] = _swiftEmptyArrayStorage;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_1000325F0();
  v34 = v33;
  v35 = sub_100770CFC();
  [v34 setTextColor:v35];

  v36 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel;
  v37 = *&v31[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  if (sub_10013EEE8())
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  [v37 setNumberOfLines:v38];

  v39 = *&v31[v36];
  v40 = sub_100770D1C();
  [v39 setTextColor:v40];

  sub_10013EFE8();
  [v31 addSubview:*&v31[v32]];
  [v31 addSubview:*&v31[v36]];

  return v31;
}

uint64_t sub_10013EEE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706EC();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return v9 < Width;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10013EFE8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  if (v8)
  {
    v10 = enum case for DirectionalTextAlignment.leading(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_10076262C();
    [v9 setNumberOfLines:0];
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
    v11(v6, v10, v2);
    sub_10076262C();
    return [v12 setNumberOfLines:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel] setTextAlignment:1];
    [v9 setNumberOfLines:2];
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
    [v14 setTextAlignment:1];
    if (sub_10013EEE8())
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    return [v14 setNumberOfLines:v15];
  }
}

uint64_t sub_10013F260()
{
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076865C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076867C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v22[1] = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v11);
  if (sub_10013EEE8())
  {
    if (qword_10093F828 != -1)
    {
      swift_once();
    }

    v14 = qword_10094A360;
  }

  else
  {
    if (qword_10093F820 != -1)
    {
      swift_once();
    }

    v14 = qword_10094A348;
  }

  v15 = sub_10000A61C(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UILabel;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  v26 = &protocol witness table for UILabel;
  v27 = v16;
  v25 = v28;
  v24 = v17;
  swift_beginAccess();
  v18 = v16;
  v19 = v17;

  sub_10016DF4C(v20);

  sub_10076866C();
  sub_10076422C();
  sub_10076863C();
  (*(v2 + 8))(v4, v23);
  return (*(v10 + 8))(v13, v9);
}

double sub_10013F5F0(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_10076865C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076867C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10013EEE8())
  {
    if (qword_10093F828 != -1)
    {
      swift_once();
    }

    v12 = qword_10094A360;
  }

  else
  {
    if (qword_10093F820 != -1)
    {
      swift_once();
    }

    v12 = qword_10094A348;
  }

  v13 = sub_10000A61C(v4, v12);
  (*(v5 + 16))(v7, v13, v4);
  v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel);
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  v15 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel);
  v22[8] = &protocol witness table for UILabel;
  v22[9] = v14;
  v22[7] = v23;
  v22[4] = v15;
  swift_beginAccess();
  v16 = v14;
  v17 = v15;

  sub_10016DF4C(v18);

  sub_10076866C();
  sub_10076862C();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  return v20;
}

uint64_t sub_10013F944(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || (result = sub_10077071C(), (result & 1) != (v5 & 1)))
  {
    sub_10013EFE8();
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_10013FA60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_10076555C();
  if (v5)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_subtitleLabel];
  sub_10076556C();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = OBJC_IVAR____TtC20ProductPageExtension24ArcadeWelcomeContentView_itemViews;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (v11 >> 62)
  {
    v12 = sub_10077158C();
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = sub_10077149C();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    [v14 removeFromSuperview];
  }

LABEL_16:
  *&v2[v10] = _swiftEmptyArrayStorage;

  v16 = sub_10076554C();
  v17 = v16;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_36:

    [v3 setNeedsLayout];
    return;
  }

  v18 = sub_10077158C();
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_18:
  type metadata accessor for ArcadeWelcomeItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v18 >= 1)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_headlineLabel];
      sub_100762F9C();
      if (v22)
      {
        v23 = sub_10076FF6C();
      }

      else
      {
        v23 = 0;
      }

      [v21 setText:v23];

      v24 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_bodyLabel];
      sub_100762F7C();
      if (v25)
      {
        v26 = sub_10076FF6C();
      }

      else
      {
        v26 = 0;
      }

      [v24 setText:v26];

      *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artwork] = sub_100762F8C();

      *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomeItemView_artworkLoader] = a2;

      [v20 setNeedsLayout];
      [v3 addSubview:v20];
      swift_beginAccess();
      v27 = v20;
      sub_10077019C();
      if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v19;
      sub_10077025C();
      swift_endAccess();
    }

    while (v18 != v19);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
}

double sub_10013FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_1007616CC();
  sub_1004A41D8(v10, v11);
  v12 = sub_1007616BC();

  return sub_1004A41E4(v12, v13);
}

double sub_10014000C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v48 = sub_1007656EC();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076570C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076997C();
  v56 = *(v55 - 8);
  *&v11 = __chkstk_darwin(v55).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a6 pageMarginInsets];
  sub_100770ACC();
  v14 = [a6 traitCollection];
  v15 = sub_1007706EC();

  v16 = 4;
  if ((v15 & 1) == 0)
  {
    v16 = 1;
  }

  v53 = v16;
  v46 = a1;
  sub_1007616CC();
  v45 = v17;
  v18 = sub_10005312C();
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_10099FCC0);
  v20 = [a6 traitCollection];
  sub_100770B3C();

  v21 = sub_10076C04C();
  v63 = v21;
  v22 = sub_10014073C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v64 = v22;
  v23 = sub_10000DB7C(v62);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v44 = v18;
  v26 = *(v25 + 104);
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  sub_10076C90C();
  v54 = a6;
  sub_10000CD74(v62);
  sub_10076996C();
  sub_10076994C();
  v27 = *(v56 + 8);
  v56 += 8;
  v27(v13, v55);
  v46 = sub_1007616BC();
  v45 = v28;
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v19, qword_10099FCD8);
  v29 = [v54 traitCollection];
  sub_100770B3C();

  v60 = v21;
  v61 = v22;
  v30 = sub_10000DB7C(v59);
  v26(v30, v24, v21);
  sub_10076C90C();
  sub_10000CD74(v59);
  sub_10076996C();
  sub_10076994C();
  v27(v13, v55);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_10000A61C(v48, qword_10099FCA8);
  (*(v47 + 16))(v49, v32, v31);
  v33 = v63;
  v34 = v64;
  v35 = sub_10000CF78(v62, v63);
  v58[3] = v33;
  v58[4] = *(v34 + 8);
  v36 = sub_10000DB7C(v58);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  v37 = v60;
  v38 = v61;
  v39 = sub_10000CF78(v59, v60);
  v57[3] = v37;
  v57[4] = *(v38 + 8);
  v40 = sub_10000DB7C(v57);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v50;
  sub_1007656FC();
  sub_10014073C(&unk_100961240, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v42 = v52;
  sub_10076D2AC();
  (*(v51 + 8))(v41, v42);
  sub_10000CD74(v59);
  sub_10000CD74(v62);
  return a2;
}

uint64_t sub_10014073C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100140784(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, unint64_t), double a8, double a9)
{
  v10 = v9;
  v116 = a7;
  v125 = a6;
  v97 = a5;
  v124 = a4;
  v118 = a3;
  v13 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v13 - 8);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10076D39C();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v97 - v17;
  v19 = sub_10076350C();
  v117 = *(v19 - 8);
  __chkstk_darwin(v19);
  v120 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v97 - v22;
  __chkstk_darwin(v23);
  v114 = &v97 - v24;
  __chkstk_darwin(v25);
  v121 = &v97 - v26;
  v27 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v27 - 8);
  v100 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v97 - v30;
  v104 = sub_10076357C();
  v115 = *(v104 - 8);
  __chkstk_darwin(v104);
  v109 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v113 = &v97 - v34;
  __chkstk_darwin(v35);
  v106 = &v97 - v36;
  v37 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v123 = v37;
  v38 = *(v9 + v37);
  if (v38 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v111 = v10;
    v119 = v19;
    v103 = a1;
    v112 = v31;
    v40 = v128;
    v107 = v18;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v98 = a2;

      v41 = 0;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = sub_10077149C();
        }

        else
        {
          v42 = *&v38[8 * v41 + 32];
        }

        v43 = v42;
        ++v41;
        v126[0] = v42;
        type metadata accessor for BorderedScreenshotView(0);
        sub_100142358(&qword_10094A410, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v44 = v43;
        sub_10077140C();
        sub_100760BEC();
        sub_100016C74(v127);
        v45 = *&v44[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        v129.value.super.isa = 0;
        v129.is_nil = 0;
        sub_10075FCEC(v129, v46);
      }

      while (i != v41);

      v10 = v111;
      a2 = v98;
      v19 = v119;
LABEL_11:
      v122 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        [*(Strong + qword_1009602D0) setImage:{0, v97}];
        v126[0] = v48;
        type metadata accessor for VideoView(0);
        sub_100142358(&qword_100957FA0, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
        v49 = v48;
        v10 = v111;
        v50 = v49;
        sub_10077140C();
        sub_100760BEC();

        sub_100016C74(v127);
      }

      v51 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
      swift_beginAccess();
      v52 = v10;
      v53 = v115;
      v54 = *(v115 + 16);
      v55 = v106;
      i = v104;
      v54(v106, v52 + v51, v104);
      sub_10076356C();
      v56 = *(v53 + 8);
      v56(v55, i);
      v57 = v113;
      v54(v113, v52 + v51, i);
      v58 = v114;
      sub_10076352C();
      v115 = v53 + 8;
      v99 = v56;
      v56(v57, i);
      if (v118)
      {
        v59 = sub_1007601CC();
      }

      else
      {
        v59 = 0;
      }

      a1 = a2;
      v31 = v103;
      v38 = v117;
      v60 = v121;
      v9 = v58;
      sub_10057C9CC(v59, v116, v121);

      v61 = *(v38 + 1);
      v117 = v38 + 8;
      v116 = v61;
      v61(v58, v19);
      v127[3] = &type metadata for CGFloat;
      v127[4] = &protocol witness table for CGFloat;
      v127[0] = 0x4021000000000000;
      sub_10000A570(v127, v126);
      v62 = *(v38 + 2);
      v114 = v38 + 16;
      v113 = v62;
      (v62)(v108, v60, v19);
      v10 = v111;
      if (a2 | v31)
      {
        sub_10076D3AC();
        goto LABEL_24;
      }

      v64 = sub_10057F8EC(v118, v124, 0, 1, v63);
      v37 = v120;
      if (v64 >> 62)
      {
        v94 = v64;
        v95 = sub_10077158C();
        v64 = v94;
        v37 = v120;
        if (v95)
        {
          goto LABEL_19;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        if ((v64 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      sub_10076D3AC();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v38 = sub_10049D5BC((v40 > 1), v124, 1, v38);
LABEL_27:

    v19 = v119;
LABEL_31:
    v99(v109, i);
    v116(v121, v19);
    sub_10000CFBC(v112, &unk_1009467E0, qword_10078CB50);
    *(v38 + 2) = v124;
    v67 = &v38[16 * v37];
    *(v67 + 4) = v9;
    v67[40] = 0;
    if (a1 | v31)
    {
      break;
    }

LABEL_76:
    v19 = 0;
    v31 = (v38 + 40);
    v18 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    while (v19 < *(v38 + 2))
    {
      a2 = *(v31 - 8);
      a1 = *v31;
      v127[0] = _swiftEmptyArrayStorage;
      v82 = swift_unknownObjectWeakLoadStrong();

      if (v82)
      {
        v83 = v82;
        sub_10077019C();
        if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      v84 = *(v10 + v18);
      if (v84)
      {
        v85 = v84;
        sub_10077019C();
        if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      v86 = *(v10 + v123);
      if (v86 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);

        v87 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v87 = v86;
      }

      v9 = v127;
      sub_1000F9270(v87);
      if (v127[0] >> 62)
      {
        v9 = v127[0];
        v37 = sub_10077158C();
      }

      else
      {
        v37 = *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 < v37)
      {
        v88 = sub_10057D820();
        v9 = v88;
        if ((v88 & 0xC000000000000001) != 0)
        {
          v89 = sub_10077149C();
        }

        else
        {
          if (v19 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v89 = *(v88 + 8 * v19 + 32);
        }

        v90 = v89;

        v126[0] = v90;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        sub_1001423A0();
        sub_10077140C();
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v91 = swift_allocObject();
        *(v91 + 16) = v37;
        *(v91 + 24) = a1;
        *(v91 + 32) = v19;

        v9 = v125;
        sub_100760B7C();

        sub_10000CFBC(v127, &qword_100943310, &unk_100784150);
      }

      ++v19;
      v31 += 16;
      if (v124 == v19)
      {
        goto LABEL_99;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v38 + 4);

    v68 = sub_10057D820();
    if (v68 >> 62)
    {
      v92 = v68;
      v93 = sub_10077158C();
      v68 = v92;
      if (!v93)
      {
LABEL_107:

        v70 = 0;
        goto LABEL_108;
      }
    }

    else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v69 = sub_10077149C();
      goto LABEL_37;
    }

    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 32);
LABEL_37:
      v70 = v69;

LABEL_108:
      v126[0] = v70;
      sub_10000A5D4(&qword_100949D48, &qword_10078D670);
      sub_100142488();
      sub_10077140C();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v127, &qword_100943310, &unk_100784150);

      return;
    }

    __break(1u);
LABEL_113:
    sub_10077149C();
LABEL_22:

    sub_10076BEFC();
    sub_10076D3AC();

LABEL_24:
    v37 = v120;
LABEL_25:
    a2 = v100;
    sub_100016E2C(v112, v100, &unk_1009467E0, qword_10078CB50);
    sub_10076354C();
    sub_10000CD74(v127);
    v66 = v101;
    sub_10076355C();
    sub_10076D36C();
    (*(v102 + 8))(v66, v105);
    if (a1)
    {

      sub_10076B84C();
      v9 = sub_10076BFCC();
      v38 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v40 = *(v38 + 3);
      v124 = (v37 + 1);
      if (v37 >= v40 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v31)
    {

      v9 = sub_10076BFCC();
      v38 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = *(v38 + 2);
      v65 = *(v38 + 3);
      v124 = (v37 + 1);
      if (v37 < v65 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v38 = sub_10049D5BC((v65 > 1), v124, 1, v38);
      goto LABEL_30;
    }

    v71 = sub_1007634FC();
    v9 = sub_10057F8EC(v118, v124, v71, 0, v72);
    sub_10076359C();
    v73 = v9;
    if (v9 >> 62)
    {
      v96 = sub_10077158C();
      v73 = v9;
      i = v96;
    }

    else
    {
      i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v98 = 0;
    if (i)
    {
      break;
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_74:

    v99(v109, v104);
    v116(v121, v19);
    sub_10000CFBC(v112, &unk_1009467E0, qword_10078CB50);
    v124 = *(v38 + 2);
    if (!v124)
    {
LABEL_99:

      return;
    }

    a1 = v98;
    v31 = v103;
    if (!(v98 | v103))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v108 = (v73 & 0xC000000000000001);
    v107 = (v38 + 88);
    LODWORD(v106) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v38 = _swiftEmptyArrayStorage;
    v105 = v73;
    while (1)
    {
      if (v108)
      {
        v31 = sub_10077149C();
      }

      else
      {
        v31 = *(v73 + 8 * a2 + 32);
      }

      (v113)(v37, v121, v19);
      v74 = (*v107)(v37, v19);
      if (v74 == v106)
      {
        break;
      }

      if (v74 == v102)
      {
        goto LABEL_49;
      }

      v18 = sub_10076BDCC();
      v116(v37, v19);
LABEL_51:
      if (!v124)
      {
        goto LABEL_62;
      }

      v9 = v124;
      v75 = sub_10076C41C();
      if (v75 >> 62)
      {
        v37 = v75;
        v77 = sub_10077158C();
        v75 = v37;
        if (!v77)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }
      }

      sub_10076C02C();
      a1 = sub_10076B84C();
      v76 = sub_10076BE5C();

      if ((v76 & 1) == 0)
      {

LABEL_62:
        if (v118)
        {
          v78 = sub_1007601CC();
        }

        else
        {
          v78 = 0;
        }

        sub_1007601EC();
        a1 = v110;
        sub_10007AFB4(v78, v110);

        sub_100770ACC();
        v9 = sub_10076BFCC();
        sub_100125E90(a1);
        goto LABEL_66;
      }

      v9 = sub_10076BFCC();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_10049D5BC(0, *(v38 + 2) + 1, 1, v38);
      }

      v80 = *(v38 + 2);
      v79 = *(v38 + 3);
      if (v80 >= v79 >> 1)
      {
        v38 = sub_10049D5BC((v79 > 1), v80 + 1, 1, v38);
      }

      ++a2;

      *(v38 + 2) = v80 + 1;
      v81 = &v38[16 * v80];
      *(v81 + 4) = v9;
      v81[40] = v18 & 1;
      v19 = v119;
      v37 = v120;
      v73 = v105;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v116(v37, v19);
LABEL_49:
    v18 = 0;
    goto LABEL_51;
  }

  __break(1u);
}