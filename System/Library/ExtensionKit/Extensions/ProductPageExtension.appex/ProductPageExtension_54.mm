double sub_10060F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v49 = a7;
  v12 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v12 - 8);
  v53 = v43 - v13;
  v14 = sub_10075F53C();
  __chkstk_darwin(v14 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076300C();
  __chkstk_darwin(v16 - 8);
  v51 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&qword_100961020, &qword_1007AFDC0);
  __chkstk_darwin(v18 - 8);
  v54 = v43 - v19;
  v20 = sub_10076C45C();
  __chkstk_darwin(v20 - 8);
  v21 = sub_10076A32C();
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v25 = sub_10075F9AC();
    v55 = a3;
    v56 = a4;

    sub_10077140C();
    if (*(v25 + 16) && (sub_10060FEFC(v57), (v26 & 1) != 0))
    {

      sub_100016C74(v57);

      v27 = sub_10076B75C();

      v28 = sub_100541668(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = sub_10077158C();
          if (v30 >= 1)
          {
LABEL_7:
            v44 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            sub_10076A31C();
            v46 = type metadata accessor for AvatarShowcaseView(0);
            v31 = objc_allocWithZone(v46);
            v45 = sub_10005615C(a6, v23);
            v57[0] = _swiftEmptyArrayStorage;
            v47 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_10077158C();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v48 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                sub_10077149C();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_10076271C();

              ++v32;
              if (v23)
              {
                sub_10077019C();
                if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                v48 = v57[0];
                v32 = v33;
              }
            }

            v34 = v45;
            sub_1000564CC(v48, v49);

            v35 = v50;
            if (v44 <= v50)
            {
              v36._object = 0x80000001007F2560;
              v36._countAndFlagsBits = 0xD00000000000001DLL;
              v35 = v44;
            }

            else
            {
              v36._countAndFlagsBits = 0xD000000000000021;
              v36._object = 0x80000001007F2580;
            }

            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v50 = sub_100767D6C(v36, v35, v58);
            v49 = v37;
            sub_10076B46C();
            sub_10076B48C();
            sub_10076B47C();
            v48 = sub_10076B4DC();
            v44 = v38;
            v43[3] = sub_10076B3DC();
            v43[2] = v39;
            sub_10000A5D4(&qword_100952410, qword_10079B5B0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100783DD0;
            *(inited + 32) = sub_10075E51C();
            *(inited + 72) = v46;
            *(inited + 40) = v41;
            *(inited + 48) = v34;
            v46 = v34;
            v45 = sub_1000FD3F0(inited);
            swift_setDeallocating();
            sub_10000CFBC(inited + 32, &qword_100948BD0, &unk_10078B5B0);
            sub_10076B3FC();
            sub_10076B49C();
            v43[1] = sub_10076B42C();
            v43[0] = v42;
            sub_10076B43C();
            sub_10076B3CC();
            sub_10076B4AC();
            sub_10076B41C();
            sub_10076B4EC();
            swift_allocObject();
            v57[0] = sub_10076B45C();

            sub_10076FCBC();

            goto LABEL_13;
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_100016C74(v57);
    }

    v57[0] = 0;
    sub_10076FCBC();
LABEL_13:
  }

  return result;
}

double sub_10060FE2C(uint64_t a1)
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  swift_getErrorValue();
  *(v1 + 56) = v4;
  v2 = sub_10000DB7C((v1 + 32));
  (*(*(v4 - 8) + 16))(v2);
  sub_10077173C();

  return result;
}

unint64_t sub_10060FEFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007713DC(*(v2 + 40));

  return sub_100610B30(a1, v4);
}

unint64_t sub_10060FF40(uint64_t a1)
{
  v2 = sub_10077174C();

  return sub_100610BF8(a1, v2);
}

unint64_t sub_10060FF84(uint64_t a1)
{
  v1 = a1;
  sub_10077175C();
  if ((v1 - 4) >= 3u)
  {
    sub_10077176C(2uLL);
    v2 = v1;
  }

  else
  {
    v2 = qword_1007AFDC8[(v1 - 4)];
  }

  sub_10077176C(v2);
  v3 = sub_1007717AC();

  return sub_100610C64(v1, v3);
}

unint64_t sub_100610020(double *a1)
{
  sub_10077175C();
  sub_100529668(v4);
  v2 = sub_1007717AC();

  return sub_100610D1C(a1, v2);
}

unint64_t sub_100610090(uint64_t a1)
{
  sub_10076FF9C();
  sub_10077175C();
  sub_10077008C();
  v2 = sub_1007717AC();

  return sub_1006111F4(a1, v2);
}

unint64_t sub_100610120(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_10077175C();
  sub_10077176C(a1);
  sub_10077176C(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_10077178C(*&v6);
  v7 = sub_1007717AC();

  return sub_100610E54(a1, a2, v7, a3);
}

unint64_t sub_1006101C8(uint64_t a1)
{
  sub_10076B96C();
  sub_100611394(&unk_10094E820, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for AdamId, &qword_100947768, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_10061029C(double a1, double a2)
{
  sub_10077175C();
  sub_10013B47C(a1, a2);
  v4 = sub_1007717AC();

  return sub_100610EE0(v4, a1, a2);
}

unint64_t sub_100610310(uint64_t a1)
{
  sub_1007626DC();
  sub_100611394(&qword_100946550, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100946558, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1006103E4(uint64_t a1, __n128 a2)
{
  sub_10076C02C();
  sub_100611394(&qword_10094E848, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_10076FEAC();
  return sub_1006110F8(a1, v3, v4);
}

unint64_t sub_100610490(uint64_t a1)
{
  sub_10076FB1C();
  sub_100611394(&qword_100961010, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100961018, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_100610564(uint64_t a1)
{
  sub_10076FB6C();
  sub_100611394(&qword_10094B0D0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_10094B0D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_100610638(uint64_t a1)
{
  sub_10075F8DC();
  sub_100611394(&qword_100961000, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100961008, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_10061070C(uint64_t a1)
{
  sub_10076186C();
  sub_100611394(&qword_100960FE0, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for OfferTitleType, &qword_100960FE8, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1006107E0(uint64_t a1, __n128 a2)
{
  sub_1007651BC();
  sub_100611394(&qword_100960FD0, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
  v3 = sub_10076FEAC();
  return sub_100610F58(a1, v3, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100960FD8, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_1006108B4(uint64_t a1)
{
  sub_10076C45C();
  sub_100611394(&qword_10094D268, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for BadgeType, &qword_100960FF0, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_100610988(uint64_t a1)
{
  sub_100761D3C();
  sub_100611394(&qword_10094D270, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for AdPlacementType, &qword_100960FF8, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_100610A5C(uint64_t a1, uint64_t a2)
{
  sub_10075E11C();
  sub_100611394(&qword_10094E860, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v3 = sub_10076FEAC();
  return sub_100610F58(a1, v3, &type metadata accessor for IndexPath, &qword_100947F00, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_100610B30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10008C3EC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1007713EC();
      sub_100016C74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100610BF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610C64(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610D1C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_10024DFF0(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_10052A9D0(v8, a1);
      sub_100036758(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100610E54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610EE0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100611394(v24, v25, v26);
      v20 = sub_10076FF1C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1006110F8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_10076C02C();
    sub_100611394(&unk_10094BB10, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    do
    {
      if (sub_10076FF1C())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1006111F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10076FF9C();
      v8 = v7;
      if (v6 == sub_10076FF9C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10077167C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_1006112F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100611330()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100611394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1006113E0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_10075FD2C();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

double sub_1006115B8(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a4;
  v23 = a3;
  v8 = sub_1007621EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v11, v8);
    v12 = *(sub_10000A5D4(&qword_10094E098, qword_100795D80) + 48);
    [v6 frame];
    sub_10076BFCC();
    sub_10076BE1C();
    sub_10075FB8C();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v13 = sub_1007659CC();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760BFC();
    (*(v9 + 8))(v11, v8);
  }

  v14 = &v6[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v16 = *&v6[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets + 16];
  v18 = v22.n128_f64[0];
  *&v17.f64[0] = v23.n128_u64[0];
  *v14 = v23.n128_f64[0];
  v14[1] = v18;
  *&v20.f64[0] = v24.n128_u64[0];
  v19 = v25.n128_f64[0];
  v14[2] = v24.n128_f64[0];
  v14[3] = v19;
  v17.f64[1] = v18;
  v20.f64[1] = v19;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v17), vceqq_f64(v16, v20)))) & 1) == 0)
  {
    [v6 setNeedsLayout];
  }

  return result;
}

id sub_1006118FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006119A4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_10075FD2C();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  sub_10077156C();
  __break(1u);
}

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_100012498(a4, a7 + 480);
  sub_100012498(a5, a7 + 520);

  return sub_100012498(a6, a7 + 560);
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v87 = a2;
  v88 = sub_10076D1FC();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6[13];
  sub_10000CF78(v7 + 10, v18);
  sub_1000FF02C(v18);
  sub_10076D40C();
  v80 = v19;
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = v7[3];
  sub_10000CF78(v7, v21);
  sub_1000FF02C(v21);
  sub_10076D40C();
  v23 = v22;
  v20(v17, v14);
  v24 = v7[8];
  sub_10000CF78(v7 + 5, v24);
  sub_1000FF02C(v24);
  sub_10076D40C();
  v26 = v25;
  *&v85[0] = v20;
  v20(v17, v14);
  ObjectType = swift_getObjectType();
  v27 = sub_100613810(a1, v7, ObjectType, a5, a6);
  if (v23 > v27)
  {
    v27 = v23;
  }

  if (v27 >= v26)
  {
    v27 = v26;
  }

  v78 = v27;
  sub_100102958((v7 + 50), &v94);
  v28 = v96;
  if (v96)
  {
    sub_100012498(&v94, v89);
    sub_10000CF78(v89, v90);
    sub_10076D2BC();
    v30 = v29;
    v32 = v31;
    v102.origin.x = a3;
    v102.origin.y = a4;
    v102.size.width = a5;
    v102.size.height = a6;
    v33 = CGRectGetMidX(v102) + v30 * -0.5;
    v103.origin.x = a3;
    v103.origin.y = a4;
    v103.size.width = a5;
    v103.size.height = a6;
    MinY = CGRectGetMinY(v103);
    sub_10000CF78(v89, v90);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v89);
  }

  else
  {
    sub_10000CFBC(&v94, &unk_10094DA00, &qword_100783FA0);
    v33 = 0.0;
    MinY = 0.0;
    v30 = 0.0;
    v32 = 0.0;
  }

  *&v82 = v7 + 35;
  sub_100102958((v7 + 55), &v94);
  v81 = a6;
  if (v96)
  {
    sub_100012498(&v94, v89);
    if (v28)
    {
      v104.origin.x = v33;
      v104.origin.y = MinY;
      v104.size.width = v30;
      v104.size.height = v32;
      MaxY = CGRectGetMaxY(v104);
    }

    else
    {
      v105.origin.x = a3;
      v105.origin.y = a4;
      v105.size.width = a5;
      v105.size.height = a6;
      MaxY = CGRectGetMinY(v105);
    }

    v43 = v80 + MaxY;
    v106.origin.x = a3;
    v106.origin.y = a4;
    v106.size.width = a5;
    v106.size.height = a6;
    MinX = CGRectGetMinX(v106);
    v107.origin.x = a3;
    v107.origin.y = a4;
    v107.size.width = a5;
    v107.size.height = a6;
    Width = CGRectGetWidth(v107);
    sub_10000CF78(v89, v90);
    v37 = a5;
    v38 = a4;
    v79 = Width;
    v80 = v43;
    v41 = v78;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v89);
  }

  else
  {
    sub_10000CFBC(&v94, &unk_10094DA00, &qword_100783FA0);
    if (v28)
    {
      v36 = v33;
    }

    else
    {
      v36 = a3;
    }

    v37 = a5;
    v38 = a4;
    if (v28)
    {
      v39 = MinY;
    }

    else
    {
      v39 = a4;
    }

    if (v28)
    {
      v40 = v30;
    }

    else
    {
      v40 = 0.0;
    }

    v79 = v40;
    v80 = v39;
    if (v28)
    {
      v41 = v32;
    }

    else
    {
      v41 = 0.0;
    }

    MinX = v36;
  }

  v78 = MinX;
  v45 = v7[23];
  sub_10000CF78(v7 + 20, v45);
  sub_1000FF02C(v45);
  sub_10076D40C();
  v47 = v46;
  v48 = v85[0];
  (*&v85[0])(v17, v14);
  v49 = v7[18];
  sub_10000CF78(v7 + 15, v49);
  sub_1000FF02C(v49);
  sub_10076D40C();
  v51 = v50;
  (*&v48)(v17, v14);
  v52 = v7[28];
  sub_10000CF78(v7 + 25, v52);
  sub_1000FF02C(v52);
  sub_10076D40C();
  v54 = v53;
  (*&v48)(v17, v14);
  sub_10000A570((v7 + 30), v97);
  v55 = *(v82 + 32);
  v56 = *(v82 + 16);
  *v85 = *v82;
  v82 = v56;
  sub_10000A570((v7 + 40), &v100);
  sub_10000A570((v7 + 45), &v101);
  *&v94 = v51;
  *(&v94 + 1) = v47;
  v95 = v54;
  v96 = v47;
  v98 = v82;
  *&v97[40] = *v85;
  v99 = v55;
  sub_100202CC0(&v94, v89);
  sub_10000A570((v7 + 60), &v91);
  sub_10000A570((v7 + 65), &v92);
  sub_10000A570((v7 + 70), &v93);
  v108.origin.x = a3;
  v108.origin.y = v38;
  v108.size.width = v37;
  v57 = v37;
  v58 = v81;
  v108.size.height = v81;
  v59 = CGRectGetMinX(v108);
  v109.origin.x = MinX;
  v61 = v79;
  v60 = v80;
  v109.origin.y = v80;
  v109.size.width = v79;
  v109.size.height = v41;
  v77 = CGRectGetMaxY(v109);
  v110.origin.x = a3;
  v110.origin.y = v38;
  v110.size.width = v57;
  v110.size.height = v58;
  v62 = CGRectGetWidth(v110);
  v85[0] = a3;
  v111.origin.x = a3;
  v63 = v59;
  v64 = v62;
  *&v82 = v38;
  v111.origin.y = v38;
  v111.size.width = v57;
  v111.size.height = v58;
  v65 = CGRectGetMaxY(v111);
  v112.size.height = v41;
  v66 = v65;
  v112.origin.y = v60;
  v112.size.width = v61;
  v67 = v77;
  v112.origin.x = v78;
  v68 = v66 - CGRectGetMaxY(v112);
  sub_100613BBC(a1, v89, v64, v68);
  v70 = v69;
  v113.origin.x = v63;
  v113.origin.y = v67;
  v113.size.width = v64;
  v113.size.height = v68;
  if (v70 <= CGRectGetHeight(v113))
  {
    v72 = v84;
    sub_10061259C(v84, v63, v67, v64, v68);
  }

  else
  {
    v72 = v84;
    v71.n128_f64[0] = v63;
    sub_100612AA8(a1, v84, v71, v67, v64, v68);
  }

  sub_10076D1EC();
  sub_10076D1DC();
  v73 = v85[0];
  v114.origin.x = v85[0];
  v74 = *&v82;
  *&v114.origin.y = v82;
  v114.size.width = v57;
  v114.size.height = v58;
  CGRectGetHeight(v114);
  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v57;
  v115.size.height = v58;
  CGRectGetMinX(v115);
  v116.origin.x = v73;
  v116.origin.y = v74;
  v116.size.width = v57;
  v116.size.height = v58;
  CGRectGetMinY(v116);
  v117.origin.x = v73;
  v117.origin.y = v74;
  v117.size.width = v57;
  v117.size.height = v58;
  CGRectGetWidth(v117);
  sub_10076D1BC();
  (*(v86 + 8))(v72, v88);
  sub_10020332C(v89);
  return sub_100203380(&v94);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[3];
  sub_10000CF78(v4, v12);
  sub_1000FF02C(v12);
  sub_10076D40C();
  v13 = *(v9 + 8);
  v13(v11, v8);
  ObjectType = swift_getObjectType();
  sub_100613810(a1, v4, ObjectType, a2, a3);
  v15 = v4[8];
  sub_10000CF78(v4 + 5, v15);
  sub_1000FF02C(v15);
  sub_10076D40C();
  v13(v11, v8);
  return a2;
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t sub_10061259C@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v26[3] = a2;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 8);
  v17 = *(v6 + 24);
  v18 = *(v6 + 136);
  sub_10000CF78(v7 + 14, v18);
  sub_1000FF02C(v18);
  sub_10076D40C();
  v26[1] = v19;
  v20 = *(v13 + 8);
  v20(v15, v12);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v21 = CGRectGetWidth(v27) - v16 - v17;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  CGRectGetHeight(v28);
  sub_10000CF78(v7 + 24, v7[27]);
  *&v26[2] = v21;
  sub_10076D2BC();
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGRectGetMidX(v29);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetMinY(v30);
  sub_10000CF78(v7 + 24, v7[27]);
  sub_100770A4C();
  sub_10076D23C();
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMaxY(v31);
  v22 = v7[22];
  sub_10000CF78(v7 + 19, v22);
  sub_1000FF02C(v22);
  sub_10076D40C();
  v20(v15, v12);
  sub_10000CF78(v7 + 34, v7[37]);
  v23 = sub_10076D24C();
  sub_10000CF78(v7 + 34, v7[37]);
  if ((v23 & 1) == 0)
  {
    sub_10076D2BC();
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    CGRectGetMidX(v32);
    sub_10000CF78(v7 + 34, v7[37]);
    sub_100770A4C();
  }

  sub_10076D23C();
  sub_10000CF78(v7 + 29, v7[32]);
  if (sub_10076D24C())
  {
    sub_10000CF78(v7 + 29, v7[32]);
  }

  else
  {
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetWidth(v33);
    v24 = v7[7];
    sub_10000CF78(v7 + 4, v24);
    sub_1000FF02C(v24);
    sub_10076D40C();
    v20(v15, v12);
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMidX(v34);
    sub_10000CF78(v7 + 29, v7[32]);
    sub_100770A4C();
  }

  sub_10076D23C();
  return sub_10076D1BC();
}

uint64_t sub_100612AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v62 = a1;
  v11 = a3.n128_f64[0];
  v68 = a2;
  v85 = sub_1007653CC();
  v77 = *(v85 - 8);
  v90 = v77;
  __chkstk_darwin(v85);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1007653EC();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10076540C();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  v67 = sub_10076543C();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10077164C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v63 = *(v6 + 8);
  v21 = v63;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v100.origin.x = v11;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  v64 = CGRectGetWidth(v100) - v21 - v24;
  v101.origin.x = v11;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetWidth(v101);
  v25 = *(v6 + 56);
  sub_10000CF78(v7 + 4, v25);
  sub_1000FF02C(v25);
  sub_10076D40C();
  (*(v18 + 8))(v20, v17);
  sub_10000A5D4(&qword_10094F2A8, " \a");
  v26 = *(sub_10076541C() - 8);
  v58 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v60 = 2 * v58;
  v28 = swift_allocObject();
  v86 = xmmword_100783C60;
  v61 = v28;
  *(v28 + 16) = xmmword_100783C60;
  v70 = v28 + v27;
  v82 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v29 = *(v91 + 104);
  v83 = v91 + 104;
  v84 = v29;
  v29(v15);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v30 = v89;
  v31 = *(v89 + 104);
  v79 = v89 + 104;
  v80 = v31;
  v32 = v57;
  v33 = v87;
  v31(v57);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97 = v22;
  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  v94 = v23;
  v78 = sub_10000A5D4(&unk_100959500, qword_100798190);
  v69 = *(v77 + 72);
  v34 = v90;
  v77 = *(v90 + 80);
  v56 = (v77 + 32) & ~v77;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v93 = v35;
  v75 = sub_10061432C(v36);
  v74 = sub_10000A5D4(&qword_100959510, &unk_1007A6560);
  v76 = sub_1004ACA24();
  v37 = v59;
  v38 = v85;
  sub_1007712CC();
  v39 = v54;
  sub_1007653FC();
  v40 = *(v34 + 8);
  v90 = v34 + 8;
  v71 = v40;
  v41 = v37;
  v40(v37, v38);
  v42 = *(v30 + 8);
  v89 = v30 + 8;
  v73 = v42;
  v42(v32, v33);
  v43 = *(v91 + 8);
  v91 += 8;
  v72 = v43;
  v44 = v88;
  v43(v39, v88);
  sub_10000CFBC(&v94, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(&v97);
  sub_10000CF78(v7 + 29, v7[32]);
  sub_10076D28C();
  v84(v39, v82, v44);
  v80(v32, v81, v33);
  v55 = sub_10076D67C();
  v95 = v55;
  v96 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v94);
  sub_10076D66C();
  sub_10000A570((v7 + 14), &v93);
  v45 = swift_allocObject();
  *(v45 + 16) = v86;
  sub_1007653BC();
  sub_10076539C();
  sub_1007653AC();
  v92 = v45;
  v46 = v41;
  v47 = v85;
  sub_1007712CC();
  sub_1007653FC();
  v71(v46, v47);
  sub_10000CFBC(&v93, &unk_100943240, &qword_10078AFB0);
  v48 = v87;
  v73(v32, v87);
  v49 = v88;
  v72(v39, v88);
  sub_10000CD74(&v97);
  sub_10000CD74(&v94);
  v84(v39, v82, v49);
  v80(v32, v81, v48);
  v98 = v55;
  v99 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v97);
  sub_10076D66C();
  sub_10000A570((v7 + 19), &v94);
  v50 = swift_allocObject();
  *(v50 + 16) = v86;
  sub_1007653BC();
  sub_10076539C();
  sub_1007653AC();
  v93 = v50;
  sub_1007712CC();
  sub_1007653FC();
  v71(v46, v47);
  sub_10000CFBC(&v94, &unk_100943240, &qword_10078AFB0);
  v73(v32, v87);
  v72(v39, v88);
  sub_10000CD74(&v97);
  v51 = v65;
  sub_1007653DC();
  v102.origin.x = v11;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetMinX(v102);
  v103.origin.x = v11;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  CGRectGetMinY(v103);
  v104.origin.x = v11;
  v104.origin.y = a4;
  v104.size.width = a5;
  v104.size.height = a6;
  CGRectGetHeight(v104);
  sub_10076538C();
  return (*(v66 + 8))(v51, v67);
}

uint64_t sub_1006136BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  swift_getObjectType();
  sub_100613BBC(a1, v6, a5, a6);
  v14 = v13;
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  if (v14 <= CGRectGetHeight(v18))
  {

    return sub_10061259C(a2, a3, a4, a5, a6);
  }

  else
  {
    v15.n128_f64[0] = a3;

    return sub_100612AA8(a1, a2, v15, a4, a5, a6);
  }
}

double sub_1006137B4(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_100613BBC(a1, v3, a2, a3);
}

double sub_100613810(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v37 = a3;
  *&v36 = a2 + 35;
  v9 = sub_10077164C();
  v35 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[23];
  sub_10000CF78(a2 + 20, v13);
  sub_1000FF02C(v13);
  sub_10076D40C();
  v15 = v14;
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = a2[18];
  sub_10000CF78(a2 + 15, v17);
  sub_1000FF02C(v17);
  v18 = a1;
  sub_10076D40C();
  v20 = v19;
  v21 = v35;
  v16(v12, v35);
  v22 = a2[28];
  sub_10000CF78(a2 + 25, v22);
  sub_1000FF02C(v22);
  sub_10076D40C();
  v24 = v23;
  v16(v12, v21);
  sub_10000A570((a2 + 30), v46);
  LOBYTE(v22) = *(v36 + 32);
  v25 = *(v36 + 16);
  v34 = *v36;
  v36 = v25;
  sub_10000A570((a2 + 40), &v49);
  sub_10000A570((a2 + 45), &v50);
  v45[0] = v20;
  v45[1] = v15;
  v45[2] = v24;
  v45[3] = v15;
  v47 = v36;
  *&v46[40] = v34;
  v48 = v22;
  sub_100202CC0(v45, v41);
  sub_10000A570((a2 + 60), &v42);
  sub_10000A570((a2 + 65), &v43);
  sub_10000A570((a2 + 70), &v44);
  v26 = a2[13];
  sub_10000CF78(a2 + 10, v26);
  sub_1000FF02C(v26);
  sub_10076D40C();
  v28 = v27;
  v16(v12, v21);
  sub_100613BBC(v18, v41, a4, a5);
  v30 = a5 - v28 - v29;
  sub_100102958((a2 + 50), &v38);
  if (v39)
  {
    sub_100012498(&v38, v40);
    sub_10000CF78(v40, v40[3]);
    sub_10076D2BC();
    v32 = v31;
    sub_10020332C(v41);
    sub_100203380(v45);
    v30 = v30 - v32;
    sub_10000CD74(v40);
  }

  else
  {
    sub_10020332C(v41);
    sub_100203380(v45);
    sub_10000CFBC(&v38, &unk_10094DA00, &qword_100783FA0);
  }

  return v30;
}

double sub_100613BBC(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 24, a2[27]);
  sub_10076D2BC();
  v10 = a2[22];
  sub_10000CF78(a2 + 19, v10);
  sub_1000FF02C(v10);
  sub_10076D40C();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000CF78(a2 + 29, a2[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    v12 = a2[7];
    sub_10000CF78(a2 + 4, v12);
    sub_1000FF02C(v12);
    sub_10076D40C();
    v11(v9, v6);
  }

  sub_10000CF78(a2 + 34, a2[37]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 34, a2[37]);
    sub_10076D2BC();
  }

  sub_10000CF78(a2 + 29, a2[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a2 + 34, a2[37]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v13 = a2[17];
      sub_10000CF78(a2 + 14, v13);
      sub_1000FF02C(v13);
      sub_10076D40C();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_100613F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_100613F4C(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
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
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100614040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_100614088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100614148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100614190(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100614230(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100614264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006142AC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10061432C(__n128 a1)
{
  result = qword_10094F2B0;
  if (!qword_10094F2B0)
  {
    sub_1007653CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F2B0);
  }

  return result;
}

char *sub_100614384(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v13 = sub_1005B6018(a1, v11, a2, v2, v12);
  sub_100615764(&qword_1009610E0, v14, type metadata accessor for ArcadeDownloadPackSuggestionsViewController, &unk_1007B014C);
  v15 = v13;

  sub_10076AE5C();

  [*&v15[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v15 action:"didTapDoneButton" forControlEvents:64];
  [*&v15[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v15 action:"didTapDoneButton" forControlEvents:64];
  [*&v15[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v15 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v16 = *(*&v15[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v21[3] = ObjectType;
  v21[4] = &off_10089D280;
  v17 = v16;

  v21[0] = v15;
  v18 = qword_1009A07B8;
  swift_beginAccess();
  sub_1006156A4(v21, v17 + v18);
  swift_endAccess();

  return v15;
}

void sub_10061463C()
{
  v0 = sub_10076C03C();
  v7[3] = v0;
  v7[4] = sub_100615764(&qword_100947230, 255, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v1 = sub_10000DB7C(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = sub_10076C90C();
  sub_10000CD74(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_10076A79C();
    sub_10000A5D4(&unk_100947120, &unk_100789380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v7[0] = sub_10076A7AC();
    v7[1] = v5;
    sub_10077140C();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x80000001007F27B0;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20, &qword_10078B500);
    isa = sub_10076FE3C().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_1006148F4(void *a1)
{
  v25 = a1;
  v2 = sub_10076F08C();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F0EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  sub_10076AE3C();
  sub_10076148C();
  sub_10076F5CC();
  sub_10076142C();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = sub_10076AE0C();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_100085204();
  v25 = sub_10077068C();
  sub_10076F0DC();
  sub_10076F15C();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_1001D1F90;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089D2B8;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100615764(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  v24 = v25;
  sub_10077064C();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_100614DA8(uint64_t a1)
{
  v2 = v1;
  sub_10063336C(a1, *(v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = sub_10076A28C();
  if (v5)
  {
    sub_10076B8EC();
    v7 = v6;

    if (v7)
    {
      v5 = sub_10076FF6C();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = sub_10076FF6C();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = sub_10076FF6C();
  [v10 setAccessibilityIdentifier:v11];

  v12 = sub_10076FF6C();
  [v4 setAccessibilityIdentifier:v12];

  sub_10076A2CC();
  if (!v13)
  {
    sub_10076A29C();
    v14 = sub_10076B8EC();
    v16 = v15;

    sub_100614F88(a1, v14, v16);
  }

  sub_10073042C();
}

void sub_100614F88(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_10000A5D4(&qword_1009610D8, qword_1007B0188);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_10076B2EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v13 setTitle:a3 forState:0];

  sub_10076A2BC();
  v14 = sub_10076A28C();
  if (v14)
  {
  }

  v15 = *(v5 + 48);
  (*(v9 + 32))(v7, v11, v8);
  v7[v15] = v14 != 0;
  v16 = (*(v9 + 88))(v7, v8);
  if (v16 == enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.done(_:))
  {
    goto LABEL_9;
  }

  if (v16 != enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:))
  {
    sub_10000CFBC(v7, &qword_1009610D8, qword_1007B0188);
    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_9:
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v9 + 8))(v7, v8);
    v17 = v21;
    v18 = [v21 buttonTray];
    [v18 addButton:*&v17[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

double sub_100615278(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_10076AE4C();
  if (!v4)
  {
    return result;
  }

  v6 = v4;
  v7 = sub_10076A2CC();
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v10 != 3 && v10 == a1)
  {
  }

  else
  {
    v12 = v7;
    v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v13 = [v1 buttonTray];
    [v13 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_100614F88(v6, v12, v9);
        }
      }

      else if (v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v18 = [v2 buttonTray];
        [v18 addButton:*&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v19 = *&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v20 = sub_10076FF6C();

        [v19 setTitle:v20 forState:0];

        v21 = [v2 buttonTray];
        [v21 addButton:v19];
      }

LABEL_21:

      return result;
    }

    sub_10076A29C();
    v14 = sub_10076B8EC();
    v16 = v15;

    sub_100614F88(v6, v14, v16);
  }

  return result;
}

void sub_100615500()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

uint64_t sub_1006156A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095D0E0, &qword_1007AAD70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100615714()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10061574C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100615764(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1006157B4(void *a1)
{
  sub_1006191A0(a1);
}

void sub_100615824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B27C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = sub_1007706EC();

    if (v14)
    {
      v15 = sub_10076B20C();
      if (!v15)
      {
        return;
      }

LABEL_27:

      sub_10076B23C();
      sub_100615D64(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = sub_10076B26C();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v18 = &qword_100957000;
      v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView(0);
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
          v21 = v19;
          v22 = [v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = sub_100770EEC();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &qword_100957000;
            if (v35)
            {
              [v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      v28 = v18[334];
      v29 = *&v17[v28];
      *&v17[v28] = v20;
      v30 = v20;
      sub_100453A30(v29);

      if (v20)
      {
        *&v30[qword_1009602C8 + 8] = &off_10088D2D8;
        swift_unknownObjectWeakAssign();
      }

      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v31 = v40;
      v32 = *(*(v38 + v37) + v27[334]);
      if (v32)
      {
        type metadata accessor for VideoView(0);
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_1006192AC(&qword_10094DC08, type metadata accessor for UberHeaderView, &unk_1007954E4);
      sub_100767D3C();

      if (!sub_10076B25C())
      {

        return;
      }

      v15 = sub_10076B84C();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = sub_10076B1FC();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

void sub_100615D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10076D39C();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076B21C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v68.origin.x = v20;
    v68.origin.y = v22;
    v68.size.width = v24;
    v68.size.height = v26;
    Height = CGRectGetHeight(v68);
  }

  else
  {
    Height = 0.0;
  }

  v62 = a1;
  v28 = sub_10076BE1C();
  v29 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v67.receiver = v29;
  v67.super_class = v30;
  objc_msgSendSuper2(&v67, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  v33 = [v4 view];
  if (v33)
  {
    v34 = v33;
    [v33 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    v69.size.height = v42;
    v43 = CGRectGetHeight(v69);
    v44 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset);
    v45 = [v4 view];
    if (v45)
    {
      v46 = v45;
      *&v47 = v43 - Height - v44;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v70.origin.x = v49;
      v70.origin.y = v51;
      v70.size.width = v53;
      v70.size.height = v55;
      Width = CGRectGetWidth(v70);
      v57 = [v4 traitCollection];
      sub_10020B56C(v57, a3, 1, Width, v47, 0);
      if (sub_1007706EC())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_1006192AC(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
        sub_10077018C();
        sub_10077018C();
        if (v65 == v63 && v66 == v64)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_10076BFCC();

          type metadata accessor for UberHeaderView();
          sub_1006192AC(&unk_1009624C0, type metadata accessor for UberHeaderView, &unk_10079F020);
          sub_100760B8C();

          return;
        }

        v58 = sub_10077167C();
        (*(v12 + 8))(v15, v11);

        if (v58)
        {
          goto LABEL_14;
        }
      }

      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D35C();
      (*(v60 + 8))(v10, v61);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1006162B8(double a1, double a2)
{
  v3 = v2;
  v5 = sub_1007604DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - v11;
  v13 = a1 < 0.5;
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle] != v13)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v6 + 104))(v8, enum case for TimingCurve.linear(_:), v5);
    sub_1007607FC();
    sub_1007607EC();
    (*(v10 + 8))(v12, v9);
    v14 = *aBlock;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v13;
    aBlock[4] = sub_10061932C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10089D4A8;
    v17 = _Block_copy(aBlock);
    v18 = v3;

    [v15 animateWithDuration:v17 animations:v14];
    _Block_release(v17);
  }
}

void sub_100616584()
{
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1001A3A30();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_1001A37AC(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_1006167B4()
{
  v1 = sub_10076B21C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
  {

    sub_10076B23C();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_1006192AC(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
    sub_10077018C();
    sub_10077018C();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_10077167C();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_10020B938(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_1000739B4();
}

char *sub_100616AF8()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v66 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_1002088B0(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
    if (v12 != v20 || v14 != v21 || v16 != v22 || v18 != v23)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
      if (v27)
      {
        v28 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

        v27(v29);
        v20 = sub_1000167E0(v27, v28);
      }
    }

    v30 = [v1 navigationItem];
    v31 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem;
    v32 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
    if (v32)
    {
      v33 = v32;
      v34 = sub_10076FF6C();
      [v33 removeObserver:v10 forKeyPath:v34 context:&unk_10094DB60];

      v35 = *&v10[v31];
    }

    else
    {
      v35 = 0;
    }

    *&v10[v31] = v30;
    v36 = v30;

    v37 = *&v10[v31];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10076FF6C();
      [v38 addObserver:v10 forKeyPath:v39 options:0 context:&unk_10094DB60];

      v40 = *&v10[v31];
      if (v40)
      {
        v40 = [v40 title];
        if (v40)
        {
          v41 = v40;
          v42 = sub_10076FF9C();
          v44 = v43;

          v45 = v44;
          v40 = v42;
LABEL_28:
          sub_100209360(v40, v45);

          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v47 = &v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
          v48 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
          v49 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];
          *v47 = sub_10061929C;
          v47[1] = v46;

          sub_1000167E0(v48, v49);

          type metadata accessor for UberScrollObserver();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50[5] = 0;
          v50[6] = 0;
          v50[3] = v10;
          v50[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v51 = v3;
          sub_1001A36B0();
          v52 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v53 = v50[5];
          v54 = v50[6];
          v50[5] = sub_1006192A4;
          v50[6] = v52;

          sub_1000167E0(v53, v54);

          v55 = [v1 navigationItem];
          v56 = [v55 _largeTitleAccessoryView];

          if (v56)
          {
            v57 = [v1 navigationItem];
            [v57 _setLargeTitleAccessoryView:0];

            v58 = v56;
            sub_10018ED24(v56);
          }

          v59 = *&v1[v5];
          v60 = v6;
          if (v59)
          {
            [v59 removeFromSuperview];
            v59 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v61 = [v1 viewIfLoaded];
          if (v61)
          {
            v62 = v61;
            [v61 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver] = v50;

          v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v63 = [v1 viewIfLoaded];
          [v63 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v67])
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:3];
          }

          else
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v45 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_1006170F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_1006192AC(&unk_1009624C0, type metadata accessor for UberHeaderView, &unk_10079F020);
    v4 = v3;
    sub_100760BFC();
    v5 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = *(v10 + 48);

      v13 = sub_10001CE50(v11, v12);
      v11(v13, 1.0, 0.0);

      sub_1000167E0(v11, v12);
    }
  }

  v14 = *&v1[v2];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v1[v2];
  }

  else
  {
    v15 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v16 = [v1 viewIfLoaded];
  [v16 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = [v1 navigationItem];
  [v18 setLargeTitleDisplayMode:v17];
}

id sub_100617358(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_10007689C(v5, a2);

  sub_100767D5C();
  v7 = v6;
  sub_10076FC1C();
  sub_100767D2C();

  sub_100764FAC();
  sub_10076FC1C();
  sub_100764F6C();

  return v7;
}

void sub_1006174E0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v4 = sub_100770D2C();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_1006167B4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100617694()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v2)
  {
    v1 = v2;
    sub_100764F8C();
  }

  sub_100760BDC();
}

void sub_1006177B8(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  sub_100760BDC();
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v4 && !*&v2[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
  {

    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {

        v8 = [v2 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v18 = sub_100619194;
          v19 = v4;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1006F5994;
          v17 = &unk_10089D408;
          v10 = _Block_copy(&v14);

          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          *(v12 + 24) = v4;
          v18 = sub_100619198;
          v19 = v12;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1006F5994;
          v17 = &unk_10089D458;
          v13 = _Block_copy(&v14);

          [v9 animateAlongsideTransition:v10 completion:v13];

          _Block_release(v13);
          _Block_release(v10);
          swift_unknownObjectRelease();
          return;
        }

        sub_1001A36B0();
      }
    }
  }
}

void sub_100617A28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v9 = v6;
      v10 = sub_100770EEC();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {
        v12 = *(a3 + 48);

        v11(v13, 1.0, 0.0);

        sub_1000167E0(v11, v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100617BA8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = v6;
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v6)
  {
    v5 = v6;
    sub_100764F8C();

    v4 = v5;
  }
}

void sub_100617D08(char a1)
{
  v2 = v1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1 & 1);
  sub_100764FAC();
  sub_10076F63C();
  v4 = v18;
  if (v18)
  {
    v5 = v18;
    sub_100764F7C();
  }

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v16 = *(v6 + 48);

    v15(v17, 1.0, 0.0);

    sub_1000167E0(v15, v16);
  }

  else
  {
    v10 = v9;
    v22 = sub_100619148;
    v23 = v6;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1006F5994;
    v21 = &unk_10089D368;
    v11 = _Block_copy(&v18);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v22 = sub_10061918C;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1006F5994;
    v21 = &unk_10089D3E0;
    v14 = _Block_copy(&v18);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

double sub_100617FD0(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for StoreCollectionViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      (*((swift_isaMask & *v6) + 0x158))();
    }
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);

    v7(v9, 1.0, 0.0);

    return sub_1000167E0(v7, v8);
  }

  return result;
}

void sub_1006180C8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_100770EEC();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
        {
          v9 = [v7 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_1001A36B0();
            }
          }
        }
      }
    }
  }
}

void sub_100618268()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_100760BDC();
  sub_100764FAC();
  sub_10076F63C();
  if (v2)
  {
    v1 = v2;
    sub_100764F7C();
  }
}

void sub_1006183B8(void *a1, uint64_t a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a3, a4);
  v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_100619360;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006F5994;
    v10[3] = &unk_10089D340;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }
}

void sub_100618550(uint64_t a1, uint64_t a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    v4 = v3;
    [v2 pageMarginInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
    v20 = v6 == v17 && v8 == v14 && v10 == v15 && v12 == v16;
    if (v20 || ([*&v4[v13] setLayoutMargins:{v6, v8, v10, v12}], objc_msgSend(v4, "invalidateIntrinsicContentSize"), (v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {
      v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

      v21(v23);

      sub_1000167E0(v21, v22);
    }
  }

  if (v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_100616584();
  }
}

void sub_100618758(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_10076B29C();
    sub_1006192AC(&qword_100961168, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);

    v5 = sub_10076FF1C();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (sub_10076B25C())
    {

      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v8 = *(*(*&v7[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_1006192AC(&qword_10094DC08, type metadata accessor for UberHeaderView, &unk_1007954E4);
      v11 = v7;
      sub_100767CFC();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100616AF8();
  if (!v12)
  {
LABEL_20:
    sub_1006170F8();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);

  if (v14)
  {
    sub_100615824(v13);
  }

  sub_1006167B4();
}

double sub_100618A1C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *(v1 + 48);

        v4 = sub_10001CE50(v2, v3);
        v2(v4, 1.0, 0.0);

        return sub_1000167E0(v2, v3);
      }
    }

    else
    {

      v6 = [v0 navigationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 navigationBar];

        if (v8)
        {

          sub_1001A36B0();
        }
      }
    }
  }

  return result;
}

void sub_100618B4C(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100618BE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    [v3 setNeedsLayout];
  }
}

void sub_100618C70(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1006162B8(a2, a3);
  }
}

void sub_100618E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_1007706EC();

  if (!a1 || (sub_1007706EC() & 1) != (v6 & 1))
  {
    v7 = sub_100616AF8();
    if (v7)
    {
      v8 = v7;
      if (*&v3[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
      {

        sub_100615824(v8);

        return;
      }
    }

    sub_1006170F8();
  }
}

double sub_100618FD8()
{

  return result;
}

id sub_100619038(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1006190FC(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

double sub_100619130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100619150()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006191A0(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_10076856C();

    sub_100618A1C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006192AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006192F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100619364@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0, &unk_100783DC0);
}

uint64_t sub_1006193D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100619498()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10073CEFC(0, 0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_hasMoreButton) = 0;
  sub_10073D75C();
  v2 = (v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  return [*(v1 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton) setUserInteractionEnabled:{0, sub_1000167E0(v3, v4)}];
}

void sub_100619544(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076C5FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v113 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v108 - v8;
  __chkstk_darwin(v9);
  v11 = &v108 - v10;
  __chkstk_darwin(v12);
  v14 = &v108 - v13;
  v15 = sub_10000A5D4(&unk_100959F50, &qword_1007A21C8);
  __chkstk_darwin(v15 - 8);
  v117 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v108 - v18;
  __chkstk_darwin(v19);
  v116 = &v108 - v20;
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  v24 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v24 - 8);
  v122 = &v108 - v25;
  v126 = sub_10000A5D4(&unk_1009566C0, &qword_10078BEC0);
  v26 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v108 - v27;
  v120 = sub_10076C5DC();
  v128 = *(v120 - 8);
  __chkstk_darwin(v120);
  v123 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v127 = &v108 - v30;
  sub_10076C61C();
  sub_100414750(v31);
  v129 = a1;
  sub_10076332C();
  v32 = aBlock;
  if (aBlock)
  {
    v109 = v11;
    v110 = v23;
    v111 = v14;
    v114 = v26;
    v119 = v5;
    v115 = v4;
    v33 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v37 = sub_10076C5AC();
    swift_getKeyPath();
    sub_10076338C();

    v38 = v136;
    v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
    v40 = [v37 length];
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = v39;
    *(v41 + 40) = 1;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1000275EC;
    *(v42 + 24) = v41;
    v134 = sub_1000ACB04;
    v135 = v42;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100026610;
    v133 = &unk_10089D520;
    v43 = _Block_copy(&aBlock);
    v44 = v38;
    v45 = v39;

    [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = [v2 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v48 = v47;
    v50 = v49;

    v51 = sub_100630CB4();
    v52 = swift_getObjectType();
    v118 = v45;
    v53 = sub_10041485C(v45, v51, UIEdgeInsetsZero.top, left, bottom, right, v48, v50, ObjectType, v52);
    swift_unknownObjectRelease();
    v54 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
    v55 = v127;
    sub_10076C5EC();
    v56 = v128;
    v57 = v123;
    v58 = v55;
    v59 = v120;
    (*(v128 + 16))(v123, v58, v120);
    v60 = (*(v56 + 88))(v57, v59);
    v61 = v2;
    v62 = v119;
    v63 = v32;
    if (v60 != enum case for Paragraph.Style.standard(_:))
    {
      if (v60 == enum case for Paragraph.Style.article(_:))
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v64 = sub_100770D1C();
        goto LABEL_7;
      }

      if (v60 != enum case for Paragraph.Style.caption(_:) && v60 != enum case for Paragraph.Style.todayCardOverlay(_:) && v60 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v65 = sub_100770CFC();
        v99 = v59;
        v100 = *(v128 + 8);
        v100(v127, v99);
        v100(v123, v99);
        goto LABEL_8;
      }
    }

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v64 = sub_100770CFC();
LABEL_7:
    v65 = v64;
    (*(v128 + 8))(v127, v59);
LABEL_8:
    v128 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
    [*&v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setTextColor:v65];

    sub_1007633DC();
    sub_10076FDBC();
    sub_100111DA4();
    sub_10076FD8C();
    v66 = aBlock;
    if (aBlock == 2)
    {
      v66 = sub_10076C56C();
    }

    if ((v66 & v53 & 1) == 0)
    {
      v91 = v118;
      v92 = v124;
      sub_10076C60C();
      v93 = v115;
      (*(v62 + 56))(v92, 0, 1, v115);
      v94 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
      v95 = v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
      v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 0;
      v96 = *&v54[v128];
      v97 = v91;
      [v96 setNumberOfLines:0];
      if (v95 != v54[v94])
      {
        sub_10073D75C();
      }

      v86 = v97;
      sub_10073D114(v97);
      v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v98 = v117;
      sub_100016E2C(v124, v117, &unk_100959F50, &qword_1007A21C8);
      if ((*(v62 + 48))(v98, 1, v93) == 1)
      {
        sub_100415FB8(v98);
        v90 = v118;
      }

      else
      {
        v101 = v112;
        (*(v62 + 32))(v112, v98, v93);
        v102 = v113;
        (*(v62 + 16))(v113, v101, v93);
        v103 = (*(v62 + 88))(v102, v93);
        if (v103 == enum case for Paragraph.Alignment.left(_:))
        {
          v104 = 0;
          v90 = v118;
        }

        else
        {
          v90 = v118;
          if (v103 == enum case for Paragraph.Alignment.center(_:))
          {
            v104 = 1;
          }

          else if (v103 == enum case for Paragraph.Alignment.right(_:))
          {
            v104 = 2;
          }

          else if (v103 == enum case for Paragraph.Alignment.justified(_:))
          {
            v104 = 3;
          }

          else if (v103 == enum case for Paragraph.Alignment.localized(_:))
          {
            v104 = 4;
          }

          else
          {
            (*(v62 + 8))(v113, v93);
            v104 = 0;
          }
        }

        [*&v54[v128] setTextAlignment:v104];
        (*(v62 + 8))(v101, v93);
      }

      [v54 setNeedsLayout];
      v78 = v124;
      goto LABEL_50;
    }

    v127 = v2;
    v67 = sub_10076C57C();
    swift_getKeyPath();
    sub_10076338C();

    v68 = v136;
    v69 = v63;
    v70 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v67];
    v71 = [v67 length];
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = v68;
    *(v72 + 32) = v70;
    *(v72 + 40) = 1;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_100027A88;
    *(v73 + 24) = v72;
    v134 = sub_1003BE1CC;
    v135 = v73;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100026610;
    v133 = &unk_10089D598;
    v74 = _Block_copy(&aBlock);
    v75 = v68;
    v76 = v70;

    [v67 enumerateAttributesInRange:0 options:v71 usingBlock:{0x100000, v74}];

    _Block_release(v74);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if ((v67 & 1) == 0)
    {
      v77 = v76;
      v129 = v69;
      v78 = v110;
      sub_10076C60C();
      v79 = v119;
      v80 = v115;
      (*(v119 + 56))(v78, 0, 1, v115);
      v81 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
      v82 = v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
      v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
      v83 = *&v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
      v84 = *&v54[v128];
      v85 = v77;
      [v84 setNumberOfLines:v83];
      if (v82 != v54[v81])
      {
        sub_10073D75C();
      }

      v86 = v85;
      sub_10073D114(v85);
      v54[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v87 = v116;
      sub_100016E2C(v78, v116, &unk_100959F50, &qword_1007A21C8);
      v88 = (*(v79 + 48))(v87, 1, v80);
      v61 = v127;
      v89 = v111;
      v90 = v118;
      if (v88 == 1)
      {
        sub_100415FB8(v87);
      }

      else
      {
        (*(v79 + 32))(v111, v87, v80);
        v105 = v109;
        (*(v79 + 16))(v109, v89, v80);
        v106 = (*(v79 + 88))(v105, v80);
        if (v106 == enum case for Paragraph.Alignment.left(_:))
        {
          v107 = 0;
        }

        else if (v106 == enum case for Paragraph.Alignment.center(_:))
        {
          v107 = 1;
        }

        else if (v106 == enum case for Paragraph.Alignment.right(_:))
        {
          v107 = 2;
        }

        else if (v106 == enum case for Paragraph.Alignment.justified(_:))
        {
          v107 = 3;
        }

        else if (v106 == enum case for Paragraph.Alignment.localized(_:))
        {
          v107 = 4;
        }

        else
        {
          (*(v79 + 8))(v109, v80);
          v107 = 0;
        }

        [v84 setTextAlignment:v107];
        (*(v79 + 8))(v89, v80);
      }

      [v54 setNeedsLayout];

LABEL_50:
      sub_100415FB8(v78);
      [v61 setNeedsLayout];

      (*(v114 + 8))(v125, v126);
      return;
    }

LABEL_53:
    __break(1u);
  }
}

double sub_10061A548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10061A570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton];
  sub_10076553C();
  sub_10076B8EC();
  v8 = v7;

  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_1009A0758];
  v12 = *&v6[qword_1009A0758];
  v13 = *&v6[qword_1009A0758 + 8];
  *v11 = sub_10061B2F8;
  v11[1] = v10;

  sub_1000167E0(v12, v13);

  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView];
  sub_100719298(v6, 0x4072C00000000000, 0);
  v15 = &off_100911000;
  [v3 setNeedsLayout];
  v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton];
  v17 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v18 = *&v14[v17];

  v19 = sub_10071969C(v16, v18);

  if (v19)
  {
    v20 = swift_beginAccess();
    __chkstk_darwin(v20);
    result = sub_10061B750(&v14[v17], sub_10061C060);
    v22 = *(*&v14[v17] + 16);
    if (v22 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_10061BA34(result, v22, sub_10049DFD0, sub_10061B91C);
    swift_endAccess();
    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      v25 = a2;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v26 = v14;
      v27 = sub_100770EEC();

      if (v27)
      {
        [v16 removeFromSuperview];
      }

      a2 = v25;
      v15 = &off_100911000;
    }
  }

  [v3 v15[194]];
  if (sub_10076552C())
  {
    sub_10076B8EC();
    v28 = a2;
    if (v29)
    {
      v30 = sub_10076FF6C();
    }

    else
    {
      v30 = 0;
    }

    [v16 setTitle:v30 forState:0];

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = &v16[qword_1009A0758];
    v41 = *&v16[qword_1009A0758];
    v42 = *&v16[qword_1009A0758 + 8];
    *v40 = sub_10061BB0C;
    v40[1] = v39;

    sub_1000167E0(v41, v42);

    sub_100719298(v16, 0x4072C00000000000, 0);
    [v3 v15[194]];

    a2 = v28;
    goto LABEL_21;
  }

  v31 = *&v14[v17];

  v32 = sub_10071969C(v16, v31);

  if (!v32)
  {
LABEL_18:
    [v3 v15[194]];
LABEL_21:
    sub_10013FA60(a1, a2);
    return [v3 v15[194]];
  }

  v33 = swift_beginAccess();
  __chkstk_darwin(v33);
  result = sub_10061B750(&v14[v17], sub_10061B328);
  v34 = *(*&v14[v17] + 16);
  if (v34 >= result)
  {
    sub_10061BA34(result, v34, sub_10049DFD0, sub_10061B91C);
    swift_endAccess();
    v35 = [v16 superview];
    if (v35)
    {
      v36 = v35;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v37 = v14;
      v38 = sub_100770EEC();

      if (v38)
      {
        [v16 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10061AABC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A26C8);
  sub_10000A61C(v4, qword_1009A26C8);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10061AC94(uint64_t a1)
{
  v36 = a1;
  v2 = sub_10076D9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton(0);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v6, qword_1009A1900);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_100941340 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_10000A61C(v2, qword_1009A26C8);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton) = sub_1005267B4(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton) = sub_1005267B4(v9, v5);
  v15 = v36;
  sub_1000AE584(v36, v37);
  v16 = sub_100564840(v37);
  v17 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v24 = v23;
  v25 = sub_100770E1C();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_continueButton];
  v31 = sub_100770E1C();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_1000AE628(v15);
  return v20;
}

double sub_10061B140(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10061B1D0()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_delegate;

  return sub_10000CC8C(v1);
}

uint64_t sub_10061B2C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10075FD2C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10077158C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_10077158C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B430(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10077158C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_10077158C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000FEA30();

  return sub_10061B330(v5, v3, 0);
}

unint64_t sub_10061B508(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_10000A5D4(&qword_1009425C8, &qword_100783F70);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100016F40(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10077158C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_10077158C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061B750(void **a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = *a1 + 2;
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_10061BB3C(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_10061BBAC(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_10061BB3C(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_10061BB3C(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1004BDAFC(v4);
          }

          result = sub_10061BC14(v16, &v4[11 * v3 + 4]);
          if (v11 >= v4[2])
          {
            goto LABEL_29;
          }

          result = sub_10061BC14(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = v4 + 2;
      v12 = v4[2];
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10061B91C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_10000A5D4(&qword_100959180, &unk_1007A5DB0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10061BA34(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10061BB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959180, &unk_1007A5DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10061BBAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100959180, &unk_1007A5DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10061BC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959180, &unk_1007A5DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_10061BC84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_10077158C();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_10077158C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10061BDB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10077158C();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1000FEA30();

  return sub_10061BC84(v7, v6, 1, v4);
}

uint64_t sub_10061BEC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_10077158C();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = sub_10077158C();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return sub_10061B620(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10061BFB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

id sub_10061C064()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_1000527AC(v4);
    }

    else
    {

      sub_100263BF0(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_10061C2F8(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10061C40C(uint64_t a1)
{
  v105 = a1;
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _swiftEmptyArrayStorage;
  sub_10061E62C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v6 = swift_allocObject();
  v104 = v1;
  swift_unknownObjectWeakInit();
  v103[2] = type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000014;
  *(v7 + 64) = 0x80000001007F2A00;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_10061F100;
  *(v7 + 112) = v6;
  swift_retain_n();
  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v3 + 8);
  v103[1] = v3 + 8;
  v11(v5, v2);
  v108 = v8;
  v109 = v10;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v106 = v2;
  v107 = v11;
  sub_10077025C();
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v12 = sub_1005BF804(0x302E32206F726548, 0xEF74686769654820, sub_10061D874, 0, sub_10061D9A0, 0);

  sub_10077019C();
  v13 = v105;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  v103[3] = v12;
  sub_10077025C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  v17[7] = 0xD000000000000026;
  v17[8] = 0x80000001007F2A20;
  v17[10] = 0;
  v17[11] = 0;
  v17[9] = 0;
  v17[12] = sub_10061F508;
  v17[13] = v15;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v107(v5, v106);
  v108 = v18;
  v109 = v20;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  v23 = swift_allocObject();
  v23[7] = 0xD000000000000029;
  v23[8] = 0x80000001007F2A50;
  v23[10] = 0;
  v23[11] = 0;
  v23[9] = 0;
  v23[12] = sub_10061F534;
  v23[13] = v22;

  sub_10075DDAC();
  v24 = sub_10075DD8C();
  v26 = v25;
  v107(v5, v106);
  v108 = v24;
  v109 = v26;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v13;
  v103[4] = v16;
  v29 = swift_allocObject();
  v29[7] = 0xD000000000000023;
  v29[8] = 0x80000001007F2A80;
  v29[10] = 0;
  v29[11] = 0;
  v29[9] = 0;
  v29[12] = sub_10061F560;
  v29[13] = v28;

  sub_10075DDAC();
  v30 = sub_10075DD8C();
  v32 = v31;
  v107(v5, v106);
  v108 = v30;
  v109 = v32;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v105;
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong snapshotPageTraitEnvironment];

    v37 = [v36 traitCollection];
    swift_unknownObjectRelease();
    v38 = [v37 userInterfaceIdiom];

    if (!v38)
    {
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v34;
      v41 = swift_allocObject();
      v41[7] = 0xD00000000000002CLL;
      v41[8] = 0x80000001007F2BB0;
      v41[10] = 0;
      v41[11] = 0;
      v41[9] = 0;
      v41[12] = sub_10061F66C;
      v41[13] = v40;

      sub_10075DDAC();
      v42 = sub_10075DD8C();
      v44 = v43;
      v45 = v107;
      v107(v5, v106);
      v108 = v42;
      v109 = v44;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v34;
      v48 = swift_allocObject();
      v48[7] = 0xD00000000000002FLL;
      v48[8] = 0x80000001007F2BE0;
      v48[10] = 0;
      v48[11] = 0;
      v48[9] = 0;
      v48[12] = sub_10061F698;
      v48[13] = v47;

      sub_10075DDAC();
      v49 = sub_10075DD8C();
      v51 = v50;
      v45(v5, v106);
      v108 = v49;
      v109 = v51;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v34;
      v54 = swift_allocObject();
      v54[7] = 0xD000000000000029;
      v54[8] = 0x80000001007F2C10;
      v54[10] = 0;
      v54[11] = 0;
      v54[9] = 0;
      v54[12] = sub_10061F6C4;
      v54[13] = v53;

      sub_10075DDAC();
      v55 = sub_10075DD8C();
      v57 = v56;
      v45(v5, v106);
      v108 = v55;
      v109 = v57;
      sub_10077140C();

      sub_10077019C();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  v58 = swift_allocObject();
  v58[7] = 0xD00000000000001FLL;
  v58[8] = 0x80000001007F2AB0;
  v58[10] = 0;
  v58[11] = 0;
  v58[9] = 0;
  v58[12] = sub_10061DC9C;
  v58[13] = 0;
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v62 = v106;
  v63 = v107;
  v107(v5, v106);
  v108 = v59;
  v109 = v61;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v64 = swift_allocObject();
  v64[7] = 0xD000000000000024;
  v64[8] = 0x80000001007F2AD0;
  v64[10] = 0;
  v64[11] = 0;
  v64[9] = 0;
  v64[12] = sub_10061DE5C;
  v64[13] = 0;
  sub_10075DDAC();
  v65 = sub_10075DD8C();
  v67 = v66;
  v63(v5, v62);
  v108 = v65;
  v109 = v67;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v68 = swift_allocObject();
  v68[7] = 0xD00000000000001FLL;
  v68[8] = 0x80000001007F2B00;
  v68[10] = 0;
  v68[11] = 0;
  v68[9] = 0;
  v68[12] = sub_10061E01C;
  v68[13] = 0;
  sub_10075DDAC();
  v69 = sub_10075DD8C();
  v71 = v70;
  v63(v5, v62);
  v108 = v69;
  v109 = v71;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v72 = swift_allocObject();
  v72[7] = 0xD000000000000043;
  v72[8] = 0x80000001007F2B20;
  v72[10] = 0;
  v72[11] = 0;
  v72[9] = 0;
  v72[12] = sub_10061E1DC;
  v72[13] = 0;
  sub_10075DDAC();
  v73 = sub_10075DD8C();
  v75 = v74;
  v63(v5, v62);
  v108 = v73;
  v109 = v75;
  sub_10077140C();
  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  sub_10075F3FC();
  sub_10076F64C();
  sub_10076FC1C();
  v76 = v108;
  v77 = swift_allocObject();
  v77[7] = 0x4820656461637241;
  v77[8] = 0xE90000000000004FLL;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = sub_10061F58C;
  v77[12] = v76;
  v77[13] = sub_10061F5FC;
  v77[14] = v76;
  swift_retain_n();
  sub_10075DDAC();
  v78 = sub_10075DD8C();
  v80 = v79;
  v63(v5, v62);
  v108 = v78;
  v109 = v80;
  sub_10077140C();

  sub_10077019C();
  v81 = v62;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v82 = swift_allocObject();
  v83 = v104;
  *(v82 + 16) = v76;
  *(v82 + 24) = v83;
  v84 = swift_allocObject();
  *(v84 + 56) = 0xD000000000000011;
  *(v84 + 64) = 0x80000001007F2B70;
  *(v84 + 72) = 0u;
  *(v84 + 88) = 0u;
  *(v84 + 104) = sub_10061F65C;
  *(v84 + 112) = v82;

  v85 = v83;

  sub_10075DDAC();
  v86 = sub_10075DD8C();
  v88 = v87;
  v107(v5, v62);
  v108 = v86;
  v109 = v88;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v89 = swift_allocObject();
  *(v89 + 16) = v76;
  *(v89 + 24) = v85;
  v90 = swift_allocObject();
  *(v90 + 56) = 0xD00000000000001ALL;
  *(v90 + 64) = 0x80000001007F2B90;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0u;
  *(v90 + 104) = sub_10061F664;
  *(v90 + 112) = v89;

  v91 = v85;

  sub_10075DDAC();
  v92 = sub_10075DD8C();
  v94 = v93;
  v95 = v107;
  v107(v5, v81);
  v108 = v92;
  v109 = v94;
  sub_10077140C();

  sub_10077019C();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v96 = v110;
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v98 = swift_allocObject();
  sub_10075DDAC();
  v99 = sub_10075DD8C();
  v101 = v100;
  v95(v5, v81);
  v98[2] = v99;
  v98[3] = v101;
  v98[4] = 0;
  v98[5] = 0xE000000000000000;
  v98[6] = v96;
  *(v97 + 32) = v98;

  return v97;
}

void sub_10061D734(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076880C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      (*(v3 + 104))(v5, enum case for EntitlementRefeshCondition.always(_:), v2);
      sub_100767E7C();

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_10061D874()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10076FF6C();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_10077034C();
    }
  }

  else
  {
    sub_10000CFBC(v6, &unk_1009434C0, &qword_100783F60);
  }

  return 0x746C7561666544;
}

void sub_10061D9A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  v6 = sub_10076FF6C();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = v7;
    v11 = sub_10076FF6C();
    [v8 setValue:v9 forKey:?];

LABEL_5:

    return;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_4:
    v9 = [objc_opt_self() standardUserDefaults];
    v11 = sub_10076FF6C();
    [v9 setValue:0 forKey:?];
    goto LABEL_5;
  }
}

void *sub_10061DB68(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v9 = sub_100762FAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v10 + 104))(v12, *a5, v9);
    sub_10061F7C0(v12, a4, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_10061DC9C()
{
  v0 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0, &qword_100785850);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061DE5C()
{
  v0 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0, &qword_100785850);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061E01C()
{
  v0 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000CFBC(v2, &unk_1009435D0, &qword_100785850);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_10075DB1C(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10061E1DC()
{
  v0 = sub_100767D9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767D8C();
  sub_100767D7C();
  return (*(v1 + 8))(v3, v0);
}

void sub_10061E2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10075F3AC();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_10049EE7C(*(v3 + 16), 0);
    v7 = sub_10061F3AC(&v15, v6 + 4, v5, v4);
    sub_100178640(v15);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v15 = v6;
  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_10003BCA8();
  sub_10076FEFC();

  v8 = sub_10076FF6C();
  v9 = sub_10076FF6C();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_10076FF6C();
  v12 = [objc_opt_self() actionWithTitle:v11 style:1 handler:0];

  [v10 addAction:v12];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

void sub_10061E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10075F3EC();
  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_10003BCA8();
  sub_10076FEFC();

  v3 = sub_10076FF6C();
  v4 = sub_10076FF6C();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_10061E62C()
{
  v1 = v0;
  v2 = sub_10075FAEC();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_10076915C();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v11;
  v12 = sub_10075DDBC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076914C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v15;
    v53 = v13;
    v54 = v12;
    v75 = _swiftEmptyArrayStorage;
    v61 = v9;
    v62 = v4;
    v18 = v16;
    sub_1007714EC();
    v60 = *(v65 + 16);
    v19 = *(v65 + 80);
    v51 = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v58 = *(v65 + 72);
    v57 = (v69 + 8);
    v65 += 16;
    v56 = (v65 + 16);
    v59 = v19;
    v55 = (v19 + 24) & ~v19;
    v68 = v7;
    v70 = v8;
    do
    {
      v69 = v20;
      v21 = v63;
      v60(v63, v20, v8);
      sub_10076913C();
      v22 = sub_10075FACC();
      v24 = v23;
      v25 = *v57;
      (*v57)(v68, v2);
      v71 = v22;
      v72 = v24;
      sub_10077140C();
      v26 = v62;
      sub_10076913C();
      v27 = sub_10075FACC();
      v66 = v28;
      v67 = v27;
      v25(v26, v2);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v2;
      v31 = v1;
      v32 = *v56;
      v33 = v17;
      v34 = v64;
      (*v56)(v64, v21, v70);
      v35 = v55;
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      v37 = v34;
      v38 = v33;
      v32((v36 + v35), v37, v70);
      v1 = v31;
      v2 = v30;
      type metadata accessor for MenuItemDebugSetting();
      v39 = swift_allocObject();
      *(v39 + 72) = 0;
      v40 = v66;
      *(v39 + 56) = v67;
      *(v39 + 64) = v40;
      *(v39 + 80) = sub_1006200C0;
      *(v39 + 88) = v36;
      v41 = v73[1];
      *(v39 + 16) = v73[0];
      *(v39 + 32) = v41;
      *(v39 + 48) = v74;
      sub_1007714CC();
      sub_1007714FC();
      v8 = v70;
      sub_10077150C();
      sub_1007714DC();
      v20 = v69 + v58;
      v17 = v38 - 1;
    }

    while (v17);

    v42 = v75;
    v12 = v54;
    v13 = v53;
    v15 = v52;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MenuDebugSetting();
  v44 = swift_allocObject();
  strcpy((v44 + 56), "Toggle State");
  *(v44 + 69) = 0;
  *(v44 + 70) = -5120;
  *(v44 + 72) = v42;
  *(v44 + 80) = sub_100620124;
  *(v44 + 88) = v43;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v48 = *(v13 + 8);

  v48(v15, v12);
  *&v73[0] = v45;
  *(&v73[0] + 1) = v47;
  sub_10077140C();
  sub_10061EEF8(v73);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v73;

  sub_10061C2F8(sub_10002CB98, (&v51 - 4), v42);

  sub_10000CFBC(v73, &qword_100943310, &unk_100784150);
  return v44;
}

uint64_t sub_10061EC68(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_100961220, &qword_1007B0330);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10075FAEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100961228, &qword_1007B0338);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
  {
    sub_10076913C();
    sub_100767E0C();

    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v7 + 56))(v12, v16, 1, v6);
  sub_10000CFBC(v12, &qword_100961228, &qword_1007B0338);
  v17 = sub_10076915C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5, a2, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return sub_10076A78C();
}

double sub_10061EEF8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10075FAEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
  {
    sub_100767E6C();

    v10 = sub_10075FACC();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    v14[1] = v10;
    v14[2] = v12;
    sub_10077140C();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_10061F060(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArcadeSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10061F0C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10061F108(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10075E11C();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_10061F3AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10061F58C()
{
  v1._object = 0x80000001007F2C70;
  v1._countAndFlagsBits = 0xD000000000000020;
  if (sub_10075F3DC(v1))
  {
    return 0x6C62616C69617641;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

void sub_10061F5FC()
{
  v4._object = 0x80000001007F2C70;
  v4._countAndFlagsBits = 0xD000000000000020;
  v0 = sub_10075F3DC(v4);
  v2._object = 0x80000001007F2C70;
  v1 = !v0;
  v2._countAndFlagsBits = 0xD000000000000020;

  sub_10075F3CC(v2, v1);
}

id sub_10061F6F0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10061F7C0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v51 = a3;
  v59 = a2;
  v55 = a1;
  v3 = sub_10075F65C();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765F6C();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v50 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100766EDC();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v58 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v57 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v11 - 8);
  v56 = v43 - v12;
  v13 = sub_10076C15C();
  v45 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v15 - 8);
  v17 = v43 - v16;
  v18 = sub_10000A5D4(&qword_1009499B8, &unk_10078C7B0);
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  v21 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v43 - v25;
  v27 = sub_10075DB7C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DB6C();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &unk_1009435D0;
    v32 = &qword_100785850;
    v33 = v26;
    return sub_10000CFBC(v33, v31, v32);
  }

  v44 = v5;
  (*(v28 + 32))(v30, v26, v27);
  v34 = *(v18 + 48);
  v35 = *(v18 + 64);
  *v20 = 0;
  v36 = sub_100762FAC();
  (*(*(v36 - 8) + 16))(&v20[v34], v55, v36);
  (*(v28 + 16))(&v20[v35], v30, v27);
  v37 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v17, 1, v37) == 1)
  {
    sub_10000CFBC(v20, &qword_1009499B8, &unk_10078C7B0);
    (*(v28 + 8))(v30, v27);
    v31 = &unk_100943200;
    v32 = &unk_100785840;
    v33 = v17;
    return sub_10000CFBC(v33, v31, v32);
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  (*(v45 + 104))(v54, enum case for FlowPage.arcadeWelcome(_:), v13);
  v40 = *(v28 + 56);
  v43[1] = v23;
  v40(v23, 1, 1, v27);
  v41 = sub_10076096C();
  (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
  v60 = 0u;
  v61 = 0u;
  sub_10076F4DC();
  (*(v46 + 104))(v58, *v51, v47);
  (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
  (*(v52 + 104))(v44, enum case for FlowOrigin.inapp(_:), v53);
  sub_10076FA2C();
  v55 = v38;
  sub_10075F63C();
  swift_allocObject();
  v42 = sub_10075F5EC();
  sub_100263C24(v42, 1, v59, v17);

  sub_10000CFBC(v20, &qword_1009499B8, &unk_10078C7B0);
  (*(v28 + 8))(v30, v27);
  return (*(v55 + 8))(v17, v37);
}

uint64_t sub_10061FFFC(__n128 a1)
{
  v2 = sub_10076915C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1006200C0(__n128 a1)
{
  v2 = *(sub_10076915C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_10061EC68(v3, v4);
}

double sub_100620190(uint64_t a1)
{
  v57 = sub_1007656EC();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076570C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10076997C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007616DC();
  sub_100620A40(&qword_10094A3B8, &type metadata accessor for EditorialQuote, &protocol conformance descriptor for EditorialQuote);
  sub_10076332C();
  v14 = v64[0];
  if (!v64[0])
  {
    return 0.0;
  }

  v50 = v3;
  v51 = v7;
  v52 = v5;
  v53 = v4;
  swift_getKeyPath();
  v15 = v14;
  sub_10076338C();

  sub_10076C2FC();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  sub_10076338C();

  v16 = v64[0];
  v17 = sub_1007706EC();

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  v47 = sub_1007616CC();
  v46 = v19;
  v20 = sub_10005312C();
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  sub_10000A61C(v21, qword_10099FCC0);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v22 = sub_10076C04C();
  v65 = v22;
  v49 = sub_100620A40(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v66 = v49;
  v23 = sub_10000DB7C(v64);
  v24 = *(v22 - 8);
  v45[1] = v20;
  v25 = *(v24 + 104);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25(v23);
  sub_10076C90C();
  v58 = a1;
  sub_10000CD74(v64);
  sub_10076996C();
  sub_10076994C();
  v47 = v18;
  v26 = *(v54 + 8);
  v27 = v55;
  v26(v9, v55);
  v54 = v15;
  v46 = sub_1007616BC();
  v45[0] = v28;
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v21, qword_10099FCD8);
  swift_getKeyPath();
  sub_10076338C();

  sub_100770B2C();
  swift_unknownObjectRelease();
  v62 = v22;
  v63 = v49;
  v29 = sub_10000DB7C(v61);
  (v25)(v29, v48, v22);
  sub_10076C90C();
  sub_10000CD74(v61);
  sub_10076996C();
  sub_10076994C();
  v26(v9, v27);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = sub_10000A61C(v57, qword_10099FCA8);
  (*(v56 + 16))(v50, v31, v30);
  v32 = v65;
  v33 = v66;
  v34 = sub_10000CF78(v64, v65);
  v60[3] = v32;
  v60[4] = *(v33 + 8);
  v35 = sub_10000DB7C(v60);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v62;
  v37 = v63;
  v38 = sub_10000CF78(v61, v62);
  v59[3] = v36;
  v59[4] = *(v37 + 8);
  v39 = sub_10000DB7C(v59);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v51;
  sub_1007656FC();
  swift_getKeyPath();
  sub_10076338C();

  sub_100620A40(&unk_100961240, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v41 = v53;
  sub_10076D2AC();
  v43 = v42;
  swift_unknownObjectRelease();

  (*(v52 + 8))(v40, v41);
  sub_10000CD74(v61);
  sub_10000CD74(v64);
  return v43;
}

uint64_t sub_100620A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100620A88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_1006217A0(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView) layer];
  sub_10003F0D4(v1 + v3, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000CF78(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setCompositingFilter:v11];

  swift_unknownObjectRelease();
  return sub_1000258C0(a1);
}

uint64_t sub_100620C30()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076E1EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076E21C();
  sub_10000DB18(v8, qword_1009A26E0);
  sub_10000A61C(v8, qword_1009A26E0);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = sub_10076D9AC();
  v13[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  return sub_10076E1FC();
}

char *sub_100620E78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076E1EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor;
  sub_1000325F0();
  *&v4[v14] = sub_100770CDC();
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_10076D67C();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v22);
  sub_10076D66C();
  sub_10076E1FC();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

id sub_100621380()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v5);
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  sub_10076E20C();
  v18 = v17;

  swift_beginAccess();
  sub_10076E1AC();
  swift_endAccess();
  v19 = v27;
  sub_10000CF78(v26, v27);
  sub_1000FF02C(v19);
  sub_10076D40C();
  v21 = v20;
  (*(v4 + 8))(v7, v3);
  sub_10000CD74(v26);
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView];
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  v24 = v21 + CGRectGetMinY(v30);
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  return [v22 setFrame:{MinX, v24, CGRectGetWidth(v31), v18}];
}

uint64_t type metadata accessor for SeparatorView(uint64_t a1)
{
  result = qword_100961290;
  if (!qword_100961290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006216F4(uint64_t a1)
{
  result = sub_10076E21C();
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

uint64_t sub_1006217A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434C0, &qword_100783F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100621810()
{
  v1 = sub_10076E1EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor;
  sub_1000325F0();
  *(v0 + v5) = sub_100770CDC();
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = sub_10076D67C();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v8);
  sub_10076D66C();
  sub_10076E1FC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100621994()
{
  v1 = sub_10075DE9C();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075DDBC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v69 = swift_allocObject();
  v65 = xmmword_100785D70;
  *(v69 + 16) = xmmword_100785D70;
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  type metadata accessor for NavigationActionDebugSetting();
  v8 = swift_allocObject();
  v8[7] = 0xD000000000000011;
  v8[8] = 0x80000001007F2E00;
  v8[10] = 0;
  v8[11] = 0;
  v8[9] = sub_10062216C;
  v8[12] = sub_10062285C;
  v8[13] = v7;
  v9 = v0;

  sub_10075DDAC();
  v10 = sub_10075DD8C();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v68 = v13;
  v73 = v10;
  v74 = v12;
  sub_10077140C();

  v14 = v69;
  *(v69 + 32) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  v16[7] = 0xD00000000000001ALL;
  v16[8] = 0x80000001007F2E20;
  v16[10] = 0;
  v16[11] = 0;
  v16[9] = 0;
  v16[12] = sub_100622864;
  v16[13] = v15;
  v17 = v9;

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v13(v6, v3);
  v73 = v18;
  v74 = v20;
  sub_10077140C();

  *(v14 + 40) = v16;
  sub_10075DE6C();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10079B610;
  v21 = sub_10075DDCC();
  v23 = v22;
  v71 = type metadata accessor for InfoDebugSetting();
  v24 = swift_allocObject();
  v24[7] = 0x696669746E656449;
  v24[8] = 0xEA00000000007265;
  v24[9] = v21;
  v24[10] = v23;

  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  v28 = v68;
  v68(v6, v3);
  v73 = v25;
  v74 = v27;
  sub_10077140C();

  v29 = v64;
  *(v64 + 32) = v24;
  v30 = swift_allocObject();
  *(v30 + 56) = 0xD000000000000013;
  *(v30 + 64) = 0x80000001007F2E40;
  *(v30 + 72) = xmmword_1007B0490;
  sub_10075DDAC();
  v31 = sub_10075DD8C();
  v33 = v32;
  v28(v6, v3);
  v73 = v31;
  v74 = v33;
  sub_10077140C();
  v29[5] = v30;
  sub_10075DE1C();
  v34 = sub_10077034C();
  v36 = v35;
  v37 = swift_allocObject();
  v37[7] = 0xD000000000000014;
  v37[8] = 0x80000001007F2E60;
  v37[9] = v34;
  v37[10] = v36;

  sub_10075DDAC();
  v38 = sub_10075DD8C();
  v40 = v39;
  v28(v6, v3);
  v73 = v38;
  v74 = v40;
  sub_10077140C();

  v29[6] = v37;
  v41 = sub_10075DDFC();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = swift_allocObject();
  v44[7] = 0xD000000000000014;
  v44[8] = 0x80000001007F2E80;
  v44[9] = v42;
  v44[10] = v43;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v48 = v68;
  v68(v6, v3);
  v73 = v45;
  v74 = v47;
  sub_10077140C();

  v29[7] = v44;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 56) = 0xD000000000000012;
  *(v49 + 64) = 0x80000001007F2EA0;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xD00000000000001DLL;
  *(v49 + 88) = 0x80000001007F2EC0;
  *(v49 + 96) = 0;
  sub_10075DDAC();
  v50 = sub_10075DD8C();
  v52 = v51;
  v48(v6, v3);
  v73 = v50;
  v74 = v52;
  sub_10077140C();
  v29[8] = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  type metadata accessor for DebugSection();
  v54 = swift_allocObject();
  sub_10075DDAC();
  v55 = sub_10075DD8C();
  v57 = v56;
  v48(v6, v3);
  v54[2] = v55;
  v54[3] = v57;
  v54[4] = 0x6F726665726F7453;
  v54[5] = 0xEA0000000000746ELL;
  v54[6] = v69;
  *(v53 + 32) = v54;
  v58 = swift_allocObject();
  sub_10075DDAC();
  v59 = sub_10075DD8C();
  v61 = v60;
  v48(v6, v3);
  v58[2] = v59;
  v58[3] = v61;
  v58[4] = 0x656C61636F4CLL;
  v58[5] = 0xE600000000000000;
  v58[6] = v29;
  *(v53 + 40) = v58;
  (*(v66 + 8))(v72, v67);
  return v53;
}

uint64_t sub_100622198(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugStorefrontPicker(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_10062276C()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_1006227CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100622824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100622870()
{
  sub_1000325F0();
  result = sub_100770CFC();
  qword_1009A2700 = result;
  return result;
}

uint64_t sub_1006228A4()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_1009A2708 = result;
  return result;
}

id sub_1006228D8()
{
  result = [objc_opt_self() systemGray5Color];
  qword_1009A2710 = result;
  return result;
}

uint64_t sub_100622914()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_1009A2718 = result;
  return result;
}

void sub_100622978()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A2720;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_1009A2730 = v3;
}

void sub_100622A7C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    sub_100770CAC();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness]);
      v24 = v18;
      sub_10077046C();

      v25 = v24;
      sub_10077048C();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    sub_100770CAC();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness]);
      v26 = v18;
      sub_10077046C();

      v27 = v26;
      sub_10077048C();

      CGContextStrokePath(v27);
    }
  }
}

id sub_100622F20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100622F88(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_10076F50C();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10000A570(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_10000CF78(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_100012498(&v23, v26);
        sub_100012498(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_10000CF78(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_10000CD74(v27);
        return;
      }

      ++v7;
      sub_10000CD74(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    sub_10076FC8C();
  }
}

uint64_t sub_1006231BC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100623224()
{
  result = qword_1009435E0;
  if (!qword_1009435E0)
  {
    sub_10075F63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009435E0);
  }

  return result;
}

unint64_t sub_1006232B8()
{
  result = qword_1009613B0;
  if (!qword_1009613B0)
  {
    sub_100767F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009613B0);
  }

  return result;
}

uint64_t sub_100623310(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v4 = sub_10076FCEC();
  type metadata accessor for EventStoreManager();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = v10[0];
  sub_10051E3D0();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_100085204();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_10077068C();
  sub_10076FC6C();

  sub_10000CD74(v10);
  return v4;
}

double sub_100623478(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10076F50C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_1009407E0 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095BFA8, qword_10095BFC0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    (*(v7 + 104))(v9, enum case for ActionOutcome.unsupported(_:), v6);
    sub_10076FCBC();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = sub_100767F8C();
    if (v11)
    {
      sub_100563DC4(v11, 1, a3);
      sub_10076FC4C();
    }
  }

  return result;
}

uint64_t sub_10062370C(uint64_t a1)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F32C();
  sub_1000258C0(v5);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1006238EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100623950(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_10076B5CC();
  v20 = sub_10041329C();
  if (!v20)
  {
LABEL_67:
    (*(v8 + 8))(v19, v7);
    return;
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  sub_10076573C();
  sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (sub_100761A5C())
  {
    v62 = v8;
    if (sub_100761A9C() <= a2 || (sub_100761A4C() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = sub_100761A8C();
      if (sub_10062B9F4(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = sub_10076B5FC();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_10094E0D0];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  sub_100770ACC();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_10041329C()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_artworkLoader], v31, v34);
    goto LABEL_67;
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_1006253D0(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  v52 = v59(v51, v7);
  if (v52 == enum case for Shelf.ContentType.annotation(_:) || v52 == enum case for Shelf.ContentType.productCapability(_:) || v52 == enum case for Shelf.ContentType.productPageLink(_:) || v52 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    v31.n128_f64[0] = sub_10010F994(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
}

double sub_10062415C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094E1D0, qword_100796000);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = *&v0[qword_10094E0D0];
  sub_10076573C();
  sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  sub_100761A9C();
  sub_10076F9CC();
  if (*(v5 + 112))
  {

    sub_10076611C();
  }

  v6 = &off_100911000;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_100625C30(&qword_100958F50, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
  if (sub_10076579C())
  {
    sub_10076366C();
  }

  v8 = [v1 collectionView];
  v9 = &off_100911000;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v17 = v15[1];
        *v15 = sub_100625CB0;
        v15[1] = v14;

        v18 = v17;
        v9 = &off_100911000;
        sub_1000167E0(v16, v18);

        v6 = &off_100911000;
      }

      else
      {
      }
    }
  }

  v19 = [v1 v6[200]];
  if (v19 && (v20 = v19, v21 = [v19 v9[297]], v20, v21))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_10075DFDC();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_1001C9A44(v4);

  sub_10000CFBC(v4, &unk_10094E1D0, qword_100796000);
  sub_10076578C();

  return result;
}

void sub_1006244B8(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        sub_10076573C();
        sub_100625C30(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
        v11 = sub_100761B4C();
        sub_100623950(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_100624670(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1003B5688(Strong, v3);
    sub_1006244B8(v5);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;

    sub_10076573C();
    sub_100625C30(&qword_100958F50, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
    v9 = sub_10076579C();

    if (v9)
    {
      sub_10076366C();
    }
  }

  return result;
}

void sub_100624794(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_100625CB8;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1006F5994;
      v11[3] = &unk_10089D860;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

void sub_1006248E8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100625CD8;
  *(v4 + 24) = a2;
  v6[4] = sub_1000349FC;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1001C5148;
  v6[3] = &unk_10089D8B0;
  v5 = _Block_copy(v6);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_100624A34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100624A88(Strong, v2);
  }
}

id sub_100624A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v17.n128_f64[0] = sub_10062415C();
  if (**&v2[qword_10094E0D0] == &off_100961AA0)
  {
    sub_10062B020(v16);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4, v17);
  }

  v18 = qword_1009613C0;
  swift_beginAccess();
  sub_10021560C(v16, &v2[v18]);
  result = swift_endAccess();
  if (v2[qword_1009613B8] == 1)
  {
    sub_1000DE51C(&v2[v18], v13);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      return sub_10000CFBC(v13, &unk_10094DE60, "ܱ\b");
    }

    else
    {
      (*(v5 + 32))(v7, v13, v4);
      result = [v2 collectionView];
      if (result)
      {
        v20 = result;
        isa = sub_10075E02C().super.isa;
        [v20 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v5 + 8))(v7, v4);
        (*(v5 + 56))(v10, 1, 1, v4);
        swift_beginAccess();
        sub_10021560C(v10, &v3[v18]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100624DC0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100624794(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100624E40(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = sub_10075E11C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_1009613B8) & 1) == 0)
  {
    *(v2 + qword_1009613B8) = 1;
  }

  v16 = qword_1009613C0;
  swift_beginAccess();
  sub_1000DE51C(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CFBC(v10, &unk_10094DE60, "ܱ\b");
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = sub_10075E02C().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_10021560C(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006250E8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100624E40(a3);
}

double sub_10062513C(void *a1)
{
  v1 = a1;
  sub_10034CE50();
  v3 = v2;

  return v3;
}

uint64_t type metadata accessor for PrivacyDetailViewController(uint64_t a1)
{
  result = qword_1009613F0;
  if (!qword_1009613F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10062524C(uint64_t a1, uint64_t a2)
{
  sub_1002153E0(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1006253D0(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_100625914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076F9AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009613B8) = 0;
  v10 = qword_1009613C0;
  v11 = sub_10075E11C();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v12 = sub_10049303C();

  v13 = sub_1004895EC(a1, v12, a2);
  sub_100625C30(&qword_1009619E8, type metadata accessor for PrivacyDetailViewController, &unk_1007B06B0);
  v14 = v13;

  v15 = v14;
  sub_1007676FC();
  v15[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
  v17 = [v15 navigationItem];
  v18 = v17;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v17 setLargeTitleDisplayMode:v19];

  v20 = v15;
  sub_10076770C();
  v22 = v21;

  if (v22)
  {
    v23 = sub_10076FF6C();
  }

  else
  {
    v23 = 0;
  }

  [v20 setTitle:v23];

  v24 = [v20 view];
  if (v24)
  {
    memset(v25, 0, sizeof(v25));
    sub_10076F96C();
    sub_10000CFBC(v25, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100625C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100625C78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100625CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_100625CFC(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_10077154C();

    if (v4)
    {
      sub_100016F40(0, &qword_10094F610, UIImage_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1006103E4(a1, a3);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_100625DC4(char a1, uint64_t a2)
{
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScreenshotsGalleryViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  result = objc_msgSendSuper2(&v16, "viewWillAppear:", a1 & 1);
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex];
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
    if (v11 >> 62)
    {
      result = sub_10077158C();
      if (v10 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= result)
      {
        return result;
      }
    }

    result = [v2 view];
    if (result)
    {
      v12 = result;
      [result layoutIfNeeded];

      sub_10075E08C();
      v13 = [v2 collectionView];
      if (v13)
      {
        v14 = v13;
        isa = sub_10075E02C().super.isa;
        [v14 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100625FE0(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v3 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v3 setDirection:8];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 addGestureRecognizer:v3];

    v6 = [v1 collectionView];
    if (v6)
    {
      v7 = v6;
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v8 = sub_100770D2C();
      [v7 setBackgroundColor:v8];
    }

    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setAlwaysBounceHorizontal:1];
    }

    v11 = [v2 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setShowsHorizontalScrollIndicator:0];
    }

    v13 = [v2 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v15 = [v2 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setRemembersLastFocusedIndexPath:1];
    }

    v17 = [v2 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setContentInsetAdjustmentBehavior:2];
    }

    v19 = [v2 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v22 = sub_10076FF6C();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }

    v23 = [v2 collectionView];
    if (!v23)
    {

      return;
    }

    v38 = v23;
    [v23 bounds];
    sub_100627538(v24, v25);
    v27 = v26;
    v42 = sub_100760E4C() & 1;
    v28 = sub_10060889C(v27, v42);
    v29 = v28;
    v41 = *(v27 + 16);
    if (!v41)
    {
LABEL_30:

      return;
    }

    v30 = 0;
    v31 = (v27 + 48);
    v39 = v28 & 0xC000000000000001;
    v40 = v28 >> 62;
    while (v30 < *(v27 + 16))
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      if (v40)
      {
        v35 = sub_10077158C();
      }

      else
      {
        v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30 == v35)
      {
        goto LABEL_30;
      }

      if (v39)
      {

        sub_10077149C();
      }

      else
      {
        if (v30 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

      v44 = 0;
      memset(v43, 0, sizeof(v43));
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v42;
      *(v37 + 24) = v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 48) = v34;
      *(v37 + 56) = v30;

      sub_100760B7C();

      sub_10000CFBC(v43, &qword_100943310, &unk_100784150);

      v31 += 3;
      if (v41 == ++v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_100626510(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

void sub_100626644(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100628AB8;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006F5994;
  v14[3] = &unk_10089D910;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_1006267DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 collectionView];

      if (v10)
      {
        sub_10000A5D4(&qword_100952110, qword_100790770);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100784500;
        *(v11 + 32) = 0;
        *(v11 + 40) = v7;
        sub_10075E01C();
        isa = sub_10075E02C().super.isa;
        (*(v3 + 8))(v5, v2);
        [v10 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_100626AC0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  sub_1007708FC();
  v4 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_100124EE0();

  return v7;
}

double sub_100627134(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = sub_1007706FC();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_1006271FC(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10000CFBC(v9, &unk_10094DE60, "ܱ\b");
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    sub_10075E06C();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_10021559C(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000CFBC(v9, &unk_10094DE60, "ܱ\b");
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_10075E09C();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_100627538(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = sub_10077158C();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = sub_10076BDCC();
      sub_10076BEFC();
      v11 = v10;
      v13 = v12;
      sub_10076BEFC();
      v15 = v14;
      v17 = v16;
      sub_10076BEFC();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10049D474(0, v7[2] + 1, 1, v7);
      }

      v27 = v7[2];
      v26 = v7[3];
      if (v27 >= v26 >> 1)
      {
        v7 = sub_10049D474((v26 > 1), v27 + 1, 1, v7);
      }

      v7[2] = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_1006276FC()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_10062777C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10062786C(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_10000A5D4(&qword_100952110, qword_100790770);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100784500;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    sub_10075E01C();
    isa = sub_10075E02C().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_10075FCEC(v20, v18);

        v15 = v17;
      }
    }
  }
}

void sub_100627A20(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10075F21C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  v11 = swift_dynamicCastClassUnconditional();
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  v13 = sub_10075E09C();
  v56 = v3;
  v57 = v7;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = sub_10077149C();
LABEL_5:
    v55 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
    v15 = *&v11[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v16 = *(v15 + 64);
    v17 = *(v15 + 80);
    type metadata accessor for BorderedScreenshotView(0);
    sub_10076422C();
    Width = CGRectGetWidth(v58);
    v19 = v16 + v17;
    sub_10076422C();
    CGRectGetHeight(v59);
    v20 = [v1 traitCollection];
    v21 = sub_1007706FC();

    if (sub_100760E4C())
    {
      sub_10076BDCC();
    }

    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    v22 = Width - v19;

    sub_100760E3C();

    v23 = v56;
    if ((*(v4 + 88))(v6, v56) != enum case for AppPlatform.watch(_:))
    {
      (*(v4 + 8))(v6, v23, 0.0);
    }

    sub_10076D35C();
    v25 = v24;
    v26 = (v22 - v24) * 0.5;
    if (v21)
    {
      v27 = v55;
      v28 = v57;
      if (v26 >= 60.0)
      {
        goto LABEL_15;
      }

      v29 = 120.0;
    }

    else
    {
      v27 = v55;
      v28 = v57;
      if (v26 >= 30.0)
      {
        goto LABEL_15;
      }

      v29 = 60.0;
    }

    v25 = v22 - v29;
LABEL_15:
    sub_10076BEFC();
    if (v30 < v25)
    {
      v25 = v30;
    }

    sub_10076D36C();
    v32 = v31;
    (*(v8 + 8))(v10, v28);
    v33 = &v11[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v33 = v25;
    *(v33 + 1) = v32;
    v33[16] = 0;
    [v11 setNeedsLayout];
    v34 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v35 = *(v34 + 16);

    v37 = sub_100625CFC(v14, v35, v36);

    if (v37)
    {
      v39 = *(*&v11[v27] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v40 = v37;
      v41 = v39;
      v42 = sub_10075FC9C();

      if (v42)
      {
        sub_100016F40(0, &qword_10094F610, UIImage_ptr);
        v44 = v40;
        v45 = sub_100770EEC();

        v46 = v45 ^ 1;
      }

      else
      {
        v46 = 1;
      }

      v52.is_nil = v46 & 1;
      v52.value.super.isa = v37;
    }

    else
    {
      v47 = sub_100625CFC(v14, *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_placeholderImages], v38);
      if (!v47)
      {
LABEL_30:

        return;
      }

      v40 = v47;
      v48 = *(*&v11[v27] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v49 = sub_10075FC9C();

      if (v49)
      {
        sub_100016F40(0, &qword_10094F610, UIImage_ptr);
        v50 = v40;
        v51 = sub_100770EEC();

        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = v40;
      }

      v41 = *(*&v11[v27] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v52.value.super.isa = v40;
      v52.is_nil = 1;
    }

    sub_10075FCEC(v52, v43);

    v50 = v40;
LABEL_29:

    goto LABEL_30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 8 * v13 + 32);

    goto LABEL_5;
  }

  __break(1u);
}

void sub_100627FDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10075F21C();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v71[-v10];
  v76 = sub_10076D39C();
  __chkstk_darwin(v76);
  v13 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v71[-v16];
  v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v78 = v15;
    v70 = sub_10077158C();
    v15 = v78;
    if (!v70)
    {
      return;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v75 = a2;
  v78 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v79 = sub_10077149C();
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v79 = *(v18 + 32);

    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v21 = *(v20 + 16);
      if (v21)
      {
        goto LABEL_7;
      }

LABEL_64:

      return;
    }
  }

  v21 = sub_10077158C();
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_7:
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v74 = sub_10077149C();
    goto LABEL_13;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    __break(1u);
    return;
  }

  v74 = *(v18 + 8 * v23 + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  sub_100760E3C();

  v73 = *(v77 + 88);
  v31 = v73(v11, v6);
  v72 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v77 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  sub_10076D35C();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_initWithTabBarSystemItem_tag_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_initWithTabBarSystemItem_tag_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  sub_10076BEFC();
  if (v38 < v34)
  {
    v34 = v38;
  }

  sub_10076D36C();
  v40 = v39;
  v41 = *(v78 + 8);
  v42 = v17;
  v43 = v76;
  v78 += 8;
  v41(v42, v76);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[274]];
  v48 = sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  sub_100760E3C();

  v50 = v73(v8, v6);
  if (v50 != v72)
  {
    (*(v77 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  sub_10076D35C();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v75;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v75;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  sub_10076BEFC();
  if (v59 < v54)
  {
    v54 = v59;
  }

  sub_10076D36C();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_1006286C8(void *a1)
{
  v2 = v1;
  v4 = sub_10075F21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ScreenshotsGalleryViewController_artworks];
  v14 = sub_10075E09C();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  sub_1007706FC();

  if (sub_100760E4C())
  {
    sub_10076BDCC();
  }

  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076D3AC();

  sub_100760E3C();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  sub_10076D35C();
  v16 = v19;
  sub_10076BEFC();
  sub_10076D36C();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  sub_1007706FC();
}

uint64_t sub_100628A80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100628AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100628AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100628B10()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100628BE8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v229 = a7;
  v225 = a6;
  v226 = a2;
  v231 = a8;
  v219 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v219);
  v209 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v202 = &v186 - v15;
  v16 = sub_100763BBC();
  v217 = *(v16 - 8);
  v218 = v16;
  __chkstk_darwin(v16);
  v224 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v214 = &v186 - v19;
  v20 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v20 - 8);
  v223 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v222 = &v186 - v23;
  __chkstk_darwin(v24);
  v213 = &v186 - v25;
  __chkstk_darwin(v26);
  v212 = &v186 - v27;
  v28 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v28 - 8);
  v208 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v207 = &v186 - v31;
  __chkstk_darwin(v32);
  v201 = &v186 - v33;
  __chkstk_darwin(v34);
  v200 = &v186 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v215 = *(v36 - 8);
  __chkstk_darwin(v36);
  v206 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v205 = &v186 - v39;
  __chkstk_darwin(v40);
  v204 = &v186 - v41;
  __chkstk_darwin(v42);
  v221 = &v186 - v43;
  __chkstk_darwin(v44);
  v199 = &v186 - v45;
  __chkstk_darwin(v46);
  v198 = &v186 - v47;
  __chkstk_darwin(v48);
  v197 = &v186 - v49;
  __chkstk_darwin(v50);
  v211 = &v186 - v51;
  v52 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v52 - 8);
  v188 = &v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v190 = &v186 - v55;
  __chkstk_darwin(v56);
  v193 = &v186 - v57;
  __chkstk_darwin(v58);
  v196 = &v186 - v59;
  __chkstk_darwin(v60);
  v195 = &v186 - v61;
  __chkstk_darwin(v62);
  v189 = &v186 - v63;
  __chkstk_darwin(v64);
  v192 = &v186 - v65;
  __chkstk_darwin(v66);
  v191 = &v186 - v67;
  __chkstk_darwin(v68);
  v194 = &v186 - v69;
  __chkstk_darwin(v70);
  v220 = &v186 - v71;
  __chkstk_darwin(v72);
  v210 = &v186 - v73;
  v74 = sub_1007621EC();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v186 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v186 - v80;
  v227 = v8;
  a3(0, v79);
  v228 = a4;
  v230 = a5;
  v82 = a5;
  v83 = v225;
  sub_10062BC00(a4, v82, v225);
  v84 = sub_100761A5C();
  v85 = 0;
  if (v84)
  {
    v85 = sub_100761B4C();
  }

  v232 = v85;
  v216 = v36;
  sub_100761B6C();
  v87 = v86;
  if (v86)
  {
  }

  v203 = v87;
  sub_100761B7C();
  v89 = v88;
  if (v88)
  {
  }

  sub_100761A6C();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = sub_1007621DC();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v226;
  v94 = v228;
  v93 = v229;
  v95 = v230;
  v96 = v83;
  v97 = sub_10062A84C(a1, v226, v229, v228, v230, v83);
  v98 = sub_10062A620(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_1005706B8(v89 != 0, v231);

    return;
  }

  v99 = v89;
  v187 = v89;
  if (v97)
  {
    if (v232)
    {

      v100 = sub_10076B77C();

      v101 = v204;
      v102 = v220;
      if (v100)
      {
        sub_10076035C();

        v103 = 0;
      }

      else
      {
        v103 = 1;
      }
    }

    else
    {
      v103 = 1;
      v101 = v204;
      v102 = v220;
    }

    v108 = sub_10076034C();
    v109 = *(v108 - 8);
    (*(v109 + 56))(v102, v103, 1, v108);
    v110 = sub_100763BAC();
    v229 = *(v110 - 1);
    (*(v229 + 7))(v222, 1, 1, v110);
    v230 = v110;
    if (v99)
    {
      v111 = (v109 + 48);
      if (v97 == 1)
      {
        v112 = v195;
        sub_100016E2C(v102, v195, &unk_10094BB80, &qword_100791CF0);
        if ((*v111)(v112, 1, v108) == 1)
        {
          sub_10000CFBC(v112, &unk_10094BB80, &qword_100791CF0);
          v113 = 0;
        }

        else
        {
          v113 = sub_1007602EC();
          (*(v109 + 8))(v112, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_100286F40(v113, v221);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v123 = qword_10099E078;
      }

      else
      {
        v116 = v196;
        sub_100016E2C(v102, v196, &unk_10094BB80, &qword_100791CF0);
        if ((*v111)(v116, 1, v108) == 1)
        {
          sub_10000CFBC(v116, &unk_10094BB80, &qword_100791CF0);
          v117 = 0;
        }

        else
        {
          v117 = sub_1007602EC();
          (*(v109 + 8))(v116, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_100286F40(v117, v221);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v123 = qword_10099E048;
      }

      v124 = sub_10000A61C(v121, v123);
      sub_10062B944(v124, v101, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v125 = 0;
      v126 = qword_10099DF88;
      v127 = v122;
    }

    else
    {
      if (v97 == 1)
      {
        v114 = v193;
        sub_100016E2C(v102, v193, &unk_10094BB80, &qword_100791CF0);
        if ((*(v109 + 48))(v114, 1, v108) == 1)
        {
          sub_10000CFBC(v114, &unk_10094BB80, &qword_100791CF0);
          v115 = 0;
        }

        else
        {
          v115 = sub_1007602EC();
          (*(v109 + 8))(v114, v108);
        }

        v121 = v216;
        v122 = v207;
        sub_100286F40(v115, v221);

        if (qword_10093FC90 != -1)
        {
          swift_once();
        }

        v125 = 1;
        v126 = qword_10099E060;
      }

      else
      {
        v118 = (v109 + 48);
        if (v203)
        {
          v119 = v190;
          sub_100016E2C(v102, v190, &unk_10094BB80, &qword_100791CF0);
          if ((*v118)(v119, 1, v108) == 1)
          {
            sub_10000CFBC(v119, &unk_10094BB80, &qword_100791CF0);
            v120 = 0;
          }

          else
          {
            v120 = sub_1007602EC();
            (*(v109 + 8))(v119, v108);
          }

          v121 = v216;
          v122 = v207;
          sub_100286F48(v120, v221);

          if (qword_10093FC80 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_10099E030;
        }

        else
        {
          v143 = v188;
          sub_100016E2C(v102, v188, &unk_10094BB80, &qword_100791CF0);
          if ((*v118)(v143, 1, v108) == 1)
          {
            sub_10000CFBC(v143, &unk_10094BB80, &qword_100791CF0);
            v144 = 0;
          }

          else
          {
            v144 = sub_1007602EC();
            (*(v109 + 8))(v143, v108);
          }

          v121 = v216;
          v122 = v207;
          sub_100286F40(v144, v221);

          if (qword_10093FC78 != -1)
          {
            swift_once();
          }

          v125 = 1;
          v126 = qword_10099E018;
        }
      }

      v127 = v101;
    }

    LODWORD(v228) = v99 != 0;
    v167 = sub_10000A61C(v121, v126);
    sub_10062B944(v167, v127, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v215 + 56))(v122, v125, 1, v121);
    v168 = v221;
    v169 = v205;
    sub_10062B944(v221, v205, type metadata accessor for TitleHeaderView.TextConfiguration);
    v170 = v206;
    sub_10062B944(v101, v206, type metadata accessor for TitleHeaderView.TextConfiguration);
    v171 = v101;
    v172 = v208;
    sub_100016E2C(v122, v208, &qword_100949718, &unk_10078CE10);
    v173 = v222;
    sub_100016E2C(v222, v223, &qword_100949710, "fc\a");
    v175 = v217;
    v174 = v218;
    (*(v217 + 104))(v224, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v218);
    sub_1000325F0();
    v176 = sub_100770CDC();

    sub_10000CFBC(v173, &qword_100949710, "fc\a");
    sub_10000CFBC(v122, &qword_100949718, &unk_10078CE10);
    sub_10011BAB4(v171, v177);
    sub_10011BAB4(v168, v178);
    sub_10000CFBC(v220, &unk_10094BB80, &qword_100791CF0);
    v179 = v219;
    v180 = *(v219 + 32);
    v181 = v169;
    v162 = v209;
    sub_10011BB10(v181, v209, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v170, v162 + v179[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B0E8(v172, v162 + v179[6]);
    *(v162 + v179[7]) = 0;
    *(v162 + v180) = 0;
    *(v162 + v179[9]) = v228;
    *(v162 + v179[14]) = 0x4030000000000000;
    *(v162 + v179[12]) = 0;
    *(v162 + v179[13]) = v176;
    v182 = v223;
    (*(v175 + 32))(v162 + v179[11], v224, v174);
    v184 = v229;
    v183 = v230;
    if ((*(v229 + 6))(v182, 1, v230) == 1)
    {
      sub_10000CFBC(v182, &qword_100949710, "fc\a");
      if (v187)
      {
        v185 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v185 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v184 + 13))(v162 + v179[10], *v185, v183);
    }

    else
    {
      (*(v184 + 4))(v162 + v179[10], v182, v183);
    }

    goto LABEL_101;
  }

  LODWORD(v230) = v98;
  if (v232)
  {

    v104 = sub_10076B77C();

    v105 = v197;
    v106 = v210;
    if (v104)
    {
      sub_10076035C();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }
  }

  else
  {
    v107 = 1;
    v105 = v197;
    v106 = v210;
  }

  v128 = sub_10076034C();
  v129 = *(v128 - 8);
  (*(v129 + 56))(v106, v107, 1, v128);
  v130 = sub_100763BAC();
  v228 = *(v130 - 1);
  v229 = v130;
  (v228[7])(v212, 1, 1);
  v131 = (v129 + 48);
  if (v203)
  {
    if (v99)
    {
      v132 = v194;
      sub_100016E2C(v106, v194, &unk_10094BB80, &qword_100791CF0);
      if ((*v131)(v132, 1, v128) == 1)
      {
        sub_10000CFBC(v132, &unk_10094BB80, &qword_100791CF0);
        v133 = 0;
      }

      else
      {
        v133 = sub_1007602EC();
        (*(v129 + 8))(v132, v128);
      }

      v138 = v216;
      v139 = v200;
      sub_100286F40(v133, v211);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v140 = qword_10099E000;
LABEL_68:
      v145 = sub_10000A61C(v138, v140);
      sub_10062B944(v145, v105, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v146 = 0;
      v147 = qword_10099DF88;
      v148 = v139;
      goto LABEL_84;
    }

    v136 = v191;
    sub_100016E2C(v106, v191, &unk_10094BB80, &qword_100791CF0);
    if ((*v131)(v136, 1, v128) == 1)
    {
      sub_10000CFBC(v136, &unk_10094BB80, &qword_100791CF0);
      v137 = 0;
    }

    else
    {
      v137 = sub_1007602EC();
      (*(v129 + 8))(v136, v128);
    }

    v138 = v216;
    v139 = v200;
    sub_100286F40(v137, v211);

    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_10099DFB8;
  }

  else
  {
    if (v99)
    {
      v134 = v192;
      sub_100016E2C(v106, v192, &unk_10094BB80, &qword_100791CF0);
      if ((*v131)(v134, 1, v128) == 1)
      {
        sub_10000CFBC(v134, &unk_10094BB80, &qword_100791CF0);
        v135 = 0;
      }

      else
      {
        v135 = sub_1007602EC();
        (*(v129 + 8))(v134, v128);
      }

      v138 = v216;
      v139 = v200;
      sub_100286F40(v135, v211);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v140 = qword_10099DFE8;
      goto LABEL_68;
    }

    v141 = v189;
    sub_100016E2C(v106, v189, &unk_10094BB80, &qword_100791CF0);
    if ((*v131)(v141, 1, v128) == 1)
    {
      sub_10000CFBC(v141, &unk_10094BB80, &qword_100791CF0);
      v142 = 0;
    }

    else
    {
      v142 = sub_1007602EC();
      (*(v129 + 8))(v141, v128);
    }

    v138 = v216;
    v139 = v200;
    sub_100286F40(v142, v211);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v146 = 1;
    v147 = qword_10099DFA0;
  }

  v148 = v105;
LABEL_84:
  LODWORD(v227) = v99 != 0;
  v149 = sub_10000A61C(v138, v147);
  sub_10062B944(v149, v148, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v215 + 56))(v139, v146, 1, v138);
  v150 = v211;
  v151 = v198;
  sub_10062B944(v211, v198, type metadata accessor for TitleHeaderView.TextConfiguration);
  v152 = v199;
  sub_10062B944(v105, v199, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v201;
  sub_100016E2C(v139, v201, &qword_100949718, &unk_10078CE10);
  v154 = v212;
  sub_100016E2C(v212, v213, &qword_100949710, "fc\a");
  v155 = v217;
  v156 = v218;
  (*(v217 + 104))(v214, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v218);
  sub_1000325F0();
  v226 = sub_100770CDC();

  sub_10000CFBC(v154, &qword_100949710, "fc\a");
  sub_10000CFBC(v139, &qword_100949718, &unk_10078CE10);
  sub_10011BAB4(v105, v157);
  sub_10011BAB4(v150, v158);
  sub_10000CFBC(v210, &unk_10094BB80, &qword_100791CF0);
  v159 = v219;
  v160 = *(v219 + 32);
  v161 = v151;
  v162 = v202;
  sub_10011BB10(v161, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v152, v162 + v159[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v153, v162 + v159[6]);
  *(v162 + v159[7]) = v230 & 1;
  *(v162 + v160) = 0;
  *(v162 + v159[9]) = v227;
  *(v162 + v159[14]) = 0x4030000000000000;
  *(v162 + v159[12]) = 0;
  *(v162 + v159[13]) = v226;
  v163 = v213;
  (*(v155 + 32))(v162 + v159[11], v214, v156);
  v165 = v228;
  v164 = v229;
  if ((v228[6])(v163, 1, v229) == 1)
  {
    sub_10000CFBC(v163, &qword_100949710, "fc\a");
    if (v187)
    {
      v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v165[13])(v162 + v159[10], *v166, v164);
  }

  else
  {
    (v165[4])(v162 + v159[10], v163, v164);
  }

LABEL_101:
  sub_10011BB10(v162, v231, type metadata accessor for TitleHeaderView.Style);
}