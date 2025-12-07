void *sub_10017A1E0(uint64_t a1)
{
  v2 = sub_10076FB6C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B0C8, &qword_100790F78);
    v9 = sub_10077144C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10017AD08(&qword_10094B0D0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = sub_10076FEAC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_10094B0D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_10017A500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094B0B8, &qword_100790F68);
    v3 = sub_10077144C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_10077175C();
      sub_10077176C(v10);
      result = sub_1007717AC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *sub_10017A63C(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000A5D4(&qword_10094B0F0, &qword_100790F90);
    v9 = sub_10077144C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10017AD08(&qword_10094B0F8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v16 = sub_10076FEAC();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_10017AD08(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v23 = sub_10076FF1C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_10017A95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094B0E0, &qword_100790F80);
    v3 = sub_10077144C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_10077174C();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_10017AA74(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10077158C())
    {
LABEL_3:
      sub_10000A5D4(&qword_10094B100, &qword_100790F98);
      v3 = sub_10077144C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10077158C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = sub_10077149C();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_10076E91C();
    sub_10017AD08(&qword_10094B108, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = sub_10076FEAC();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10017AD08(&qword_10094B110, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((sub_10076FF1C() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = v7[v12 >> 6];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10017AD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10017AD94(uint64_t a1, char a2, uint64_t a3)
{
  v72 = a3;
  v70 = a1;
  v5 = sub_10000A5D4(&qword_100945140, &unk_100787540);
  __chkstk_darwin(v5 - 8);
  v71 = &v70 - v6;
  v7 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v7 - 8);
  v9 = &v70 - v8;
  v73 = sub_10075F37C();
  v10 = *(v73 - 8);
  __chkstk_darwin(v73);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v13 - 8);
  v15 = &v70 - v14;
  v16 = type metadata accessor for FlowDestination(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  sub_1006FB794(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_10005DAD8(v15, v19, v21);
    if (a2)
    {
      v26 = v3;
      v27 = v73;
      (*(v10 + 16))(v12, v3, v73);
      v28 = objc_allocWithZone(type metadata accessor for TabPlaceholderViewController(0));
      v25 = sub_100320BB0(v12);
    }

    else
    {
      v30 = sub_10076096C();
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v31 = sub_10048B0C0(v19, v70, 0, 0, v9, &v74, v72, 1);
      sub_10000CFBC(&v74, &unk_10094A8A0, &unk_10078DB90);
      sub_10000CFBC(v9, &unk_100958150, &unk_100786630);
      if (!v31)
      {
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v66 = sub_10076FD4C();
        sub_10000A61C(v66, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60, &unk_100784760);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v67 = v73;
        *(&v75 + 1) = v73;
        v68 = sub_10000DB7C(&v74);
        (*(v10 + 16))(v68, v20, v67);
        sub_10076F30C();
        sub_10000CFBC(&v74, &unk_1009434C0, &qword_100783F60);
        sub_10076FBEC();

        sub_10005C6E8(v19, v69);
        return 0;
      }

      v25 = v31;
      v26 = v20;
      v27 = v73;
    }

    v32 = sub_1006FC188(v29);
    if (v32)
    {
      v33 = v32;
      v34 = [v32 title];
      [v25 setTitle:v34];

      [v25 setTabBarItem:v33];
    }

    type metadata accessor for StoreCollectionViewController();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = v35;
      *(v35 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 1;
      v37 = (*((swift_isaMask & *v35) + 0x198))();
      v38 = v25;
      v39 = [v36 navigationItem];
      v40 = v39;
      if (v37)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      [v39 setLargeTitleDisplayMode:{v41, v70}];

      v42 = sub_10075F34C();
      v43 = (v36 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_automationSemanticPageId);
      *v43 = v42;
      v43[1] = v44;

      ObjectType = swift_getObjectType();
      v46 = v71;
      (*(v10 + 16))(v71, v26, v27);
      (*(v10 + 56))(v46, 0, 1, v27);
      v47 = (*(ObjectType + 480))(v72, v46);
      sub_10000CFBC(v46, &qword_100945140, &unk_100787540);
      v48 = *(v36 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories);
      *(v36 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationAccessories) = v47;

      v49 = [v36 traitCollection];
      v50 = sub_100527924(v48, v49, v47);

      if ((v50 & 1) == 0)
      {
        (*((swift_isaMask & *v36) + 0x1F0))(v51);
      }
    }

    else
    {
      type metadata accessor for SearchViewController(0);
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
LABEL_25:

        sub_10005C6E8(v19, v64);
        return v25;
      }

      v53 = v52;
      v54 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle;
      *(v52 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle) = 1;
      v55 = v25;
      v56 = [v53 navigationItem];
      v57 = v56;
      if (v53[v54])
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      [v56 setLargeTitleDisplayMode:{v58, v70}];

      v59 = v71;
      (*(v10 + 16))(v71, v26, v27);
      (*(v10 + 56))(v59, 0, 1, v27);
      v60 = sub_100274B00(v72, v59);
      sub_10000CFBC(v59, &qword_100945140, &unk_100787540);
      v61 = *&v53[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories];
      *&v53[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories] = v60;

      v62 = [v53 traitCollection];
      v63 = sub_100527924(v61, v62, v60);

      if ((v63 & 1) == 0)
      {
        sub_100272E1C();
      }
    }

    goto LABEL_25;
  }

  sub_10000CFBC(v15, &unk_10094A890, &unk_100786A70);
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v22 = sub_10076FD4C();
  sub_10000A61C(v22, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  v23 = v73;
  *(&v75 + 1) = v73;
  v24 = sub_10000DB7C(&v74);
  (*(v10 + 16))(v24, v3, v23);
  sub_10076F30C();
  sub_10000CFBC(&v74, &unk_1009434C0, &qword_100783F60);
  sub_10076FBEC();

  return 0;
}

id sub_10017B7C8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_tabChangeDelegate] = 0;
  if (a2)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a3);

  v9 = v8;
  [v9 _uip_setTabBarHidden:1];

  return v9;
}

void sub_10017BA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F2EC();
  v5 = [v1 viewControllers];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  sub_10003F040();
  v7 = sub_1007701BC();

  if (v7 >> 62)
  {
    if (sub_10077158C() > a1)
    {
      goto LABEL_4;
    }

LABEL_19:

    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v15._object = 0x80000001007D6950;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10076F2CC(v15);
    v13[3] = &type metadata for Int;
    v13[0] = a1;
    sub_10076F29C();
    sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_10076F2CC(v16);
    sub_10076F2FC();
    sub_10076FBCC();

    return;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v8 = [v1 delegate];
  if (v8)
  {
    v9 = v8;
    if (([v8 respondsToSelector:"tabBarController:didSelectViewController:"] & 1) == 0)
    {

      goto LABEL_15;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v7 + 8 * a1 + 32);
LABEL_10:
        v11 = v10;

        [v9 tabBarController:v2 didSelectViewController:v11];

LABEL_15:

        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
      return;
    }

    v10 = sub_10077149C();
    goto LABEL_10;
  }
}

uint64_t sub_10017BDD4(unsigned int *a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100760EFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v29 - v19;
  (*(v8 + 104))(&v29 - v19, *a1, v7, v18);
  (*(v8 + 56))(v20, 0, 1, v7);
  v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v21)
  {
    sub_10017E160(v20, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_10000CFBC(v20, &qword_10094B168, &qword_100791000);
      v22 = v16;
      v23 = &qword_10094B168;
      v24 = &qword_100791000;
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);

      sub_10076F4DC();
      sub_10076225C();
      swift_allocObject();
      v25 = sub_10076221C();
      v26 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v5, 1, v26) != 1)
      {
        sub_100263BF0(v25, 1, v21, v5);

        (*(v8 + 8))(v13, v7);
        sub_10000CFBC(v20, &qword_10094B168, &qword_100791000);
        return (*(v27 + 8))(v5, v26);
      }

      (*(v8 + 8))(v13, v7);
      sub_10000CFBC(v20, &qword_10094B168, &qword_100791000);
      v23 = &unk_100943200;
      v24 = &unk_100785840;
      v22 = v5;
    }
  }

  else
  {
    v23 = &qword_10094B168;
    v24 = &qword_100791000;
    v22 = v20;
  }

  return sub_10000CFBC(v22, v23, v24);
}

void sub_10017C35C()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_100760EFC();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v7 - 8);
  v63 = &v45 - v8;
  v9 = sub_100760A6C();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10075F65C();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100765F6C();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766EDC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F4FC();
  __chkstk_darwin(v17 - 8);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_10076C15C();
  __chkstk_darwin(v25);
  v28 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v28)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
    v29 = sub_10075DB7C();
    v52 = v3;
    v51 = v6;
    v30 = v29;
    v31 = *(v29 - 8);
    v46 = *(v31 + 56);
    v47 = v31 + 56;
    v46(v24, 1, 1, v29);
    v32 = sub_10076096C();
    v66 = v28;
    v49 = v32;
    v33 = *(v32 - 8);
    v48 = *(v33 + 56);
    v50 = v33 + 56;
    v48(v21, 1, 1, v32);
    v67 = 0u;
    v68 = 0u;

    sub_10076F4DC();
    (*(v15 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v14);
    (*(v12 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v54);
    (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v34 = sub_10075F5EC();
    v35 = v30;
    v36 = v52;
    v46(v24, 1, 1, v35);
    (*(v60 + 104))(v62, enum case for SearchOrigin.keyboardShortcut(_:), v61);
    v37 = sub_100760A5C();
    (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
    sub_10076F4DC();
    v38 = v66;
    v48(v21, 1, 1, v49);
    v39 = sub_100760A4C();
    swift_allocObject();
    v40 = sub_100760A0C();
    *(&v70 + 1) = v39;
    *&v69 = v40;
    sub_10075F58C();
    sub_10000CFBC(&v69, &unk_1009434C0, &qword_100783F60);
    (*(v64 + 104))(v51, enum case for NavigationTab.search(_:), v65);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007841E0;
    *(v41 + 32) = v34;

    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v42 = sub_10076221C();
    v43 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v36, 1, v43) == 1)
    {

      sub_10000CFBC(v36, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v42, 1, v38, v36);

      (*(v44 + 8))(v36, v43);
    }
  }
}

void sub_10017CD5C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v4 = sub_10075F65C();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100765F6C();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100766EDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_10076C15C();
  __chkstk_darwin(v22);
  v25 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v25)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    (*(v24 + 104))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.account(_:));
    v26 = sub_10075DB7C();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_10076096C();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v50 = 0u;
    v51 = 0u;

    sub_10076F4DC();
    v28 = *(v10 + 104);
    v42 = v10 + 104;
    v43 = v9;
    v41 = v28;
    v28(v14, enum case for FlowPresentationContext.infer(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v44);
    (*(v45 + 104))(v47, enum case for FlowOrigin.inapp(_:), v46);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v29 = sub_10075F5EC();
    v30 = ASKDeviceTypeGetCurrent();
    v31 = sub_10076FF9C();
    v33 = v32;
    if (v31 == sub_10076FF9C() && v33 == v34)
    {

      v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }

    else
    {
      v36 = sub_10077167C();

      v35 = &enum case for FlowPresentationContext.presentModal(_:);
      if (v36)
      {
        v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }
    }

    v37 = v49;
    v41(v48, *v35, v43);
    sub_10075F5CC();
    v38 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {

      sub_10000CFBC(v37, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263C24(v29, 1, v25, v37);

      (*(v39 + 8))(v37, v38);
    }
  }
}

void sub_10017D568(uint64_t (*a1)(void, __n128), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
  if (v9)
  {
    a1(0, v6);
    swift_allocObject();

    v11 = a2(v10);
    v12 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_10000CFBC(v8, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v11, 1, v9, v8);

      (*(v13 + 8))(v8, v12);
    }
  }
}

void sub_10017D840()
{
  v0 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = sub_10075F65C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100765F6C();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100766EDC();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = sub_10076FF9C();
  v21 = v20;
  if (v19 == sub_10076FF9C() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = sub_10076FF9C();
  v33 = v32;
  if (v31 == sub_10076FF9C() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = sub_10077167C();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension21StoreTabBarController_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = sub_10075DB7C();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = sub_10076096C();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      sub_10076F4DC();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      sub_10076FA2C();
      sub_10075F63C();
      swift_allocObject();
      v27 = sub_10075F5EC();
      v28 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v29 = v52;
      sub_10076F5AC();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10000CFBC(v29, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263C24(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = sub_10076FF9C();
  v38 = v37;
  if (v36 == sub_10076FF9C() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_10077167C();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_1009414D0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000A61C(v41, qword_1009A3248);
  sub_10076F41C();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10017E160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10017E360()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = sub_1007703CC().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 56) = sub_10017E880();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = sub_1007701AC().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  sub_1007714EC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  *&v20[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C05B8();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_1001C0414(&off_100882DF0);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_10017E880()
{
  result = qword_100948AC8;
  if (!qword_100948AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948AC8);
  }

  return result;
}

uint64_t type metadata accessor for ScrollablePillView(uint64_t a1)
{
  result = qword_10094B1C0;
  if (!qword_10094B1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10017E968()
{
  if (qword_100941378 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2728;
  qword_10099D3D8 = qword_1009A2728;

  return v1;
}

uint64_t sub_10017E9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_1007708CC();
  sub_10011E080(a1, &v22);
  sub_10000A570(a2, v21);
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v7 = qword_10099D3D8;
  v21[8] = &type metadata for SearchLinkLayout;
  v21[9] = sub_10017FCFC();
  v8 = swift_allocObject();
  v21[5] = v8;
  v9 = sub_10017FDA0();
  v10 = swift_allocObject();
  sub_10000A570(v21, v10 + 16);
  sub_10011E080(&v22, &v19);
  if (v20)
  {
    sub_100012498(&v19, v18);
    v11 = swift_allocObject();
    sub_100012498(v18, v11 + 16);
    v12 = v7;
    sub_10000CD74(v21);
    sub_10017FE2C(&v22);
    v13 = &type metadata for AutoAdjustingPlaceable;
    v14 = v9;
  }

  else
  {
    v15 = v7;
    sub_10000CD74(v21);
    sub_10017FE2C(&v22);
    v13 = 0;
    v14 = 0;
    v11 = 0;
  }

  v8[2] = v11;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = v13;
  v8[6] = v14;
  v8[7] = v10;
  v8[10] = &type metadata for AutoAdjustingPlaceable;
  v8[11] = v9;
  v8[12] = v7;
  v8[13] = 0x4014000000000000;
  v23 = sub_10076E04C();
  v24 = &protocol witness table for Margins;
  sub_10000DB7C(&v22);
  sub_10076E03C();
  a4[3] = &type metadata for AutoAdjustingPlaceable;
  a4[4] = v9;
  v16 = swift_allocObject();
  *a4 = v16;
  return sub_100012498(&v22, v16 + 16);
}

char *sub_10017EC04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v54 = sub_10076DD3C();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  __chkstk_darwin(v15);
  v17 = v53 - v16;
  __chkstk_darwin(v18);
  v53[1] = v53 - v19;
  v20 = qword_10094B1B0;
  *&v4[v20] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_10094B1B8;
  sub_10076D4BC();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = type metadata accessor for ScrollablePillView(0);
  v56.receiver = v4;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = [v27 layer];
  [v28 setCornerCurve:kCACornerCurveContinuous];

  v29 = [v27 layer];
  [v27 bounds];
  [v29 setCornerRadius:CGRectGetHeight(v57) * 0.5];

  v30 = [v27 layer];
  [v30 setBorderWidth:1.0];

  [v27 setNeedsDisplay];
  v31 = [v27 layer];
  if (qword_100941360 != -1)
  {
    swift_once();
  }

  v32 = [qword_1009A2710 CGColor];
  [v31 setBorderColor:v32];

  [v27 setNeedsDisplay];
  v33 = qword_10094B1B0;
  v34 = qword_100941368;
  v35 = *&v27[qword_10094B1B0];
  if (v34 != -1)
  {
    swift_once();
  }

  [v35 setTintColor:qword_1009A2718];

  v36 = *&v27[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_10075FB8C();

  v40 = *&v27[v33];
  sub_10075FC0C();

  v41 = qword_10093F868;
  v42 = *&v27[v33];
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = [objc_opt_self() configurationWithTextStyle:qword_10099D3D8 scale:2];
  sub_10075FC3C();

  [v27 addSubview:*&v27[v33]];
  v44 = qword_10094B1B8;
  v45 = qword_100941350;
  v46 = *&v27[qword_10094B1B8];
  if (v45 != -1)
  {
    swift_once();
  }

  [v46 setTextColor:qword_1009A2700];

  v47 = *&v27[v44];
  v48 = [v27 traitCollection];

  sub_10076DD2C();
  sub_10076DC9C();
  v49 = *(v9 + 8);
  v50 = v11;
  v51 = v54;
  v49(v50, v54);
  sub_10076DD1C();
  v49(v14, v51);
  sub_10076DD0C();
  v49(v17, v51);
  sub_10076D49C();

  [v27 addSubview:*&v27[v44]];
  sub_10017FF5C();
  sub_10077075C();
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v27;
}

void sub_10017F240(uint64_t a1)
{
  v2 = qword_10094B1B0;
  *(a1 + v2) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10094B1B8;
  sub_10076D4BC();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10017F300@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + qword_10094B1B0);
  v5 = sub_10075FC9C();
  if (v5)
  {

    v6 = sub_10075FD2C();
    v7 = sub_10017FFA8(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v29[1] = 0;
    v29[2] = 0;
  }

  v29[0] = v5;
  v29[3] = v6;
  v29[4] = v7;
  v8 = *(v2 + qword_10094B1B8);
  v28[3] = sub_10076D4BC();
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v8;
  v9 = v8;
  sub_1007708CC();
  sub_10011E080(v29, &v25);
  sub_10000A570(v28, v24);
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v10 = qword_10099D3D8;
  v24[8] = &type metadata for SearchLinkLayout;
  v24[9] = sub_10017FCFC();
  v11 = swift_allocObject();
  v24[5] = v11;
  v12 = sub_10017FDA0();
  v13 = swift_allocObject();
  sub_10000A570(v24, v13 + 16);
  sub_10011E080(&v25, &v22);
  if (v23)
  {
    sub_100012498(&v22, v21);
    v14 = swift_allocObject();
    sub_100012498(v21, v14 + 16);
    v15 = v10;
    sub_10000CD74(v24);
    sub_10017FE2C(&v25);
    v16 = &type metadata for AutoAdjustingPlaceable;
    v17 = v12;
  }

  else
  {
    v18 = v10;
    sub_10000CD74(v24);
    sub_10017FE2C(&v25);
    v16 = 0;
    v17 = 0;
    v14 = 0;
  }

  v11[2] = v14;
  v11[3] = 0;
  v11[4] = 0;
  v11[5] = v16;
  v11[6] = v17;
  v11[7] = v13;
  v11[10] = &type metadata for AutoAdjustingPlaceable;
  v11[11] = v12;
  v11[12] = v10;
  v11[13] = 0x4014000000000000;
  v26 = sub_10076E04C();
  v27 = &protocol witness table for Margins;
  sub_10000DB7C(&v25);
  sub_10076E03C();
  a1[3] = &type metadata for AutoAdjustingPlaceable;
  a1[4] = v12;
  v19 = swift_allocObject();
  *a1 = v19;
  sub_100012498(&v25, v19 + 16);
  sub_10000CD74(v28);
  return sub_10017FE2C(v29);
}

id sub_10017F5E4()
{
  sub_10076D9FC();
  v1 = sub_10076DA0C();
  v1();
  v2 = [v0 layer];
  [v0 bounds];
  [v2 setCornerRadius:CGRectGetHeight(v6) * 0.5];

  v3 = [v0 layer];
  [v3 setBorderWidth:1.0];

  return [v0 setNeedsDisplay];
}

void sub_10017F6C4()
{
  v1 = *(v0 + qword_10094B1B8);
}

id sub_10017F704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollablePillView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017F73C(uint64_t a1)
{
  v2 = *(a1 + qword_10094B1B8);
}

id sub_10017F7C8()
{
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithTextStyle:qword_10099D3D8 scale:2];

  return v0;
}

uint64_t sub_10017F850()
{
  v0 = sub_10076DD3C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  sub_10076DD2C();
  if (qword_10093F868 != -1)
  {
    swift_once();
  }

  sub_10076DC9C();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_10076DD1C();
  v10(v6, v0);
  sub_10076DD0C();
  return (v10)(v9, v0);
}

double sub_10017F9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037C48C(a1, a3, WitnessTable);
}

void sub_10017FA50(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037A640(a1, a2, a3, WitnessTable);
}

void sub_10017FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037CBE4(a1, a3, WitnessTable);
}

uint64_t sub_10017FB20@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037A9B8(a3, WitnessTable, x8_0);
}

double sub_10017FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037CA40(a1, a2, a4, WitnessTable);
}

uint64_t sub_10017FC50(void *a1)
{
  a1[1] = sub_10017FFA8(&qword_10094B218, type metadata accessor for ScrollablePillView, &unk_1007910A0);
  a1[2] = sub_10017FFA8(&qword_10094B220, type metadata accessor for ScrollablePillView, &unk_1007910D0);
  result = sub_10017FFA8(&qword_10094B228, type metadata accessor for ScrollablePillView, &unk_100791100);
  a1[3] = result;
  return result;
}

unint64_t sub_10017FCFC()
{
  result = qword_10095DD80;
  if (!qword_10095DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095DD80);
  }

  return result;
}

uint64_t sub_10017FD50()
{
  if (*(v0 + 40))
  {
    sub_10000CD74((v0 + 16));
  }

  sub_10000CD74((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10017FDA0()
{
  result = qword_10094B240;
  if (!qword_10094B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B240);
  }

  return result;
}

uint64_t sub_10017FDF4()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10017FE2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094B230, &qword_100791150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10017FE94(void *a1)
{
  v2 = [a1 layer];
  if (qword_100941360 != -1)
  {
    swift_once();
  }

  v3 = [qword_1009A2710 CGColor];
  [v2 setBorderColor:v3];

  return [a1 setNeedsDisplay];
}

unint64_t sub_10017FF5C()
{
  result = qword_100944E30;
  if (!qword_100944E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100944E30);
  }

  return result;
}

uint64_t sub_10017FFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001800B0(Swift::Float a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_10076BCFC();
  sub_10000DB18(v7, a5);
  sub_10000A61C(v7, a5);
  sub_1000325F0();
  sub_100770E4C(0.0, 0.0, 0.0, a1);
  return sub_10076BCCC();
}

uint64_t sub_100180144()
{
  v0 = sub_10076BCFC();
  sub_10000DB18(v0, qword_10099D480);
  sub_10000A61C(v0, qword_10099D480);
  sub_1000325F0();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6.super.isa = v3;
  v7.super.isa = v5;
  sub_100770DEC(v6, v7);
  return sub_10076BCCC();
}

uint64_t sub_100180424(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_10076BCFC();
  sub_10000DB18(v7, a5);
  sub_10000A61C(v7, a5);
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  return sub_10076BCCC();
}

uint64_t sub_1001804E8()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style(0);
  sub_10000DB18(v3, qword_10099D618);
  v4 = sub_10000A61C(v3, qword_10099D618);
  if (qword_100940958 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A0A50);
  sub_100181D74(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_100182730(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_100180634()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10094B260 = result;
  return result;
}

char *sub_10018066C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_10076F97C();
  sub_10000CFBC(v28, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v29, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_1001809C4(__n128 a1, double a2)
{
  v3 = sub_10076D65C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100181E98(&v2[v7], &v26);
  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  v24 = type metadata accessor for ShelfFooterTitleButton(0);
  v25 = &protocol witness table for UIButton;
  *&v23 = v8;
  v21 = type metadata accessor for ShelfFooterSeparator();
  v22 = sub_100181EF4();
  *&v20 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v27[0];
  v10[1] = v26;
  v10[2] = v11;
  *(v10 + 41) = *(v27 + 9);
  sub_100012498(&v23, (v10 + 4));
  sub_100012498(&v20, v10 + 104);
  v12 = v8;
  v13 = v9;
  v14 = [v2 traitCollection];
  sub_100252388(v15);
  sub_10076E0FC();
  v17 = v16;

  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_100180C14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D65C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_100181E98(&v0[v7], &v24);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  v22 = type metadata accessor for ShelfFooterTitleButton(0);
  v23 = &protocol witness table for UIButton;
  *&v21 = v8;
  v19 = type metadata accessor for ShelfFooterSeparator();
  v20 = sub_100181EF4();
  *&v18 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v25[0];
  v10[1] = v24;
  v10[2] = v11;
  *(v10 + 41) = *(v25 + 9);
  sub_100012498(&v21, (v10 + 4));
  sub_100012498(&v18, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_10076422C();
  v14 = [v0 traitCollection];
  sub_100252388(v15);
  sub_10076E0EC();

  return (*(v3 + 8))(v6, v2);
}

void *sub_100180F70(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction + 8);
    v6[3] = sub_100016F40(0, &unk_10094BB70, UIControl_ptr);
    v6[0] = v3;
    sub_10001CE50(v2, v4);
    v5 = v3;
    v2(v6);
    sub_1000167E0(v2, v4);
    return sub_10000CFBC(v6, &unk_1009434C0, &qword_100783F60);
  }

  return result;
}

double sub_100181114(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, __n128 a5, double a6)
{
  v106 = a3;
  v107 = 0x6C6F686563616C50;
  v95 = sub_10076D65C();
  v105 = *(v95 - 8);
  __chkstk_darwin(v95);
  v104 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076DFEC();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = v89 - v12;
  __chkstk_darwin(v13);
  v94 = v89 - v14;
  __chkstk_darwin(v15);
  v93 = v89 - v16;
  v17 = sub_10076D7FC();
  __chkstk_darwin(v17 - 8);
  v89[1] = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10076DFFC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076E3AC();
  __chkstk_darwin(v92);
  v91 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&qword_100944530, &qword_10079E160);
  __chkstk_darwin(v21 - 8);
  v23 = (v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v89 - v25;
  __chkstk_darwin(v27);
  v29 = v89 - v28;
  __chkstk_darwin(v30);
  v32 = v89 - v31;
  v89[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v89[0]);
  v90 = v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v108 = v89 - v35;
  if (!a2)
  {
    goto LABEL_6;
  }

  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    v107 = a1;
    v96 = a2;
  }

  else
  {
LABEL_6:
    v96 = 0xEB00000000726564;
  }

  sub_100181D04(a4, v32);
  v37 = sub_100762DCC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v32, 1, v37) == 1)
  {
    v40 = 0;
    v41 = 24.0;
  }

  else
  {
    sub_100181D04(v32, v29);
    v42 = (*(v38 + 88))(v29, v37);
    v43 = v29;
    v44 = a4;
    v45 = v26;
    v46 = v42;
    v47 = enum case for ShelfFooterStyle.games(_:);
    (*(v38 + 8))(v43, v37);
    v48 = v46 == v47;
    v26 = v45;
    a4 = v44;
    v40 = v48;
    v41 = 24.0;
    if (v48)
    {
      v41 = 16.0;
    }
  }

  v117[3] = &type metadata for Double;
  v117[4] = &protocol witness table for Double;
  *v117 = v41;
  v118 = v40;
  sub_10000CFBC(v32, &qword_100944530, &qword_10079E160);
  sub_100181D04(a4, v26);
  v49 = v39(v26, 1, v37);
  v50 = v108;
  if (v49 != 1)
  {
    sub_100181D04(v26, v23);
    if ((*(v38 + 88))(v23, v37) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v38 + 96))(v23, v37);
      v51 = *v23;
      if (qword_100940960 != -1)
      {
        swift_once();
      }

      v52 = sub_10000A61C(v89[0], qword_1009A0A68);
      sub_100181D74(v52, v50);
      v53 = v106;
      if ([v106 horizontalSizeClass] == 1 && (v54 = objc_msgSend(v53, "preferredContentSizeCategory"), v55 = sub_10077084C(), v54, (v55 & 1) != 0))
      {

        v56 = 0;
        v57 = 0;
      }

      else
      {
        [v51 size];
        v57 = v88;

        v56 = 1;
      }

      goto LABEL_25;
    }

    (*(v38 + 8))(v23, v37);
  }

  if (qword_100940958 != -1)
  {
    swift_once();
  }

  v58 = sub_10000A61C(v89[0], qword_1009A0A50);
  sub_100181D74(v58, v50);
  v56 = 0;
  v57 = 0;
  v53 = v106;
LABEL_25:
  v59 = v101;
  sub_10000CFBC(v26, &qword_100944530, &qword_10079E160);
  if (qword_100940968 != -1)
  {
    swift_once();
  }

  v60 = qword_10095E720;
  *(qword_10095E720 + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon) = v56;
  *&v60[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = v57;
  v61 = sub_10076FF6C();
  [v60 setTitle:v61 forState:0];

  v62 = v90;
  sub_100181D74(v50, v90);
  v63 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_100181DD8(v62, &v60[v63]);
  swift_endAccess();
  sub_1005AE860();
  sub_100181E3C(v62);
  v64 = [v53 preferredContentSizeCategory];
  sub_100770C0C();
  sub_10076E37C();
  sub_100770C1C();
  [v60 updateTraitsIfNeeded];
  sub_100770F2C();
  v66 = v65;
  v68 = v67;
  sub_10076D7EC();
  sub_10076DA5C();
  *&v116[8] = sub_10076DA7C();
  *&v116[16] = &protocol witness table for LabelPlaceholder;
  sub_10000DB7C(&v115);
  sub_10076DA8C();
  v69 = v93;
  *(v93 + 3) = &type metadata for CGFloat;
  *(v69 + 4) = &protocol witness table for CGFloat;
  *v69 = v66;
  v70 = enum case for Resize.Rule.replaced(_:);
  v71 = *(v99 + 104);
  v72 = v100;
  v71(v69, enum case for Resize.Rule.replaced(_:), v100);
  v73 = v94;
  *(v94 + 3) = &type metadata for CGFloat;
  *(v73 + 4) = &protocol witness table for CGFloat;
  *v73 = v68;
  v71(v73, v70, v72);
  v74 = enum case for Resize.Rule.unchanged(_:);
  v71(v97, enum case for Resize.Rule.unchanged(_:), v72);
  v71(v98, v74, v72);
  sub_10076E00C();
  sub_100181E98(v117, &v115);
  if (qword_10093F930 != -1)
  {
    swift_once();
  }

  v75 = qword_10094B260;
  v76 = v103;
  v113 = v103;
  v114 = &protocol witness table for Resize;
  v77 = sub_10000DB7C(&v112);
  v78 = v102;
  (*(v102 + 16))(v77, v59, v76);
  v110 = type metadata accessor for ShelfFooterSeparator();
  v111 = sub_100181EF4();
  *&v109 = v75;
  type metadata accessor for ShelfFooterViewLayout();
  v79 = swift_allocObject();
  v80 = *v116;
  v79[1] = v115;
  v79[2] = v80;
  *(v79 + 41) = *&v116[9];
  sub_100012498(&v112, (v79 + 4));
  sub_100012498(&v109, v79 + 104);
  v81 = v75;
  v82 = v104;
  sub_100252388(v83);
  v84 = v95;
  sub_10076E0FC();
  v86 = v85;

  (*(v105 + 8))(v82, v84);
  (*(v78 + 8))(v59, v76);
  sub_100181F4C(v117);
  sub_100181E3C(v108);
  return v86;
}

uint64_t sub_100181D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100944530, &qword_10079E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100181E3C(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100181EF4()
{
  result = qword_10094B2B0;
  if (!qword_10094B2B0)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B2B0);
  }

  return result;
}

void sub_100181FA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100944530, &qword_10079E160);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_100181D04(a4, &v56 - v18);
  v20 = sub_100762DCC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_100181D04(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10000CFBC(v19, &qword_100944530, &qword_10079E160);
  v28 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_100182688(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style(0) + 20))];
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_10076FF6C();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_100181D04(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_100181D04(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_100181D74(v63, v9);
    v47 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_100181DD8(v9, &v30[v47]);
    swift_endAccess();
    sub_1005AE860();
    sub_100181E3C(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_100940960 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v56, qword_1009A0A68);
  sub_100181D74(v42, v39);
  v43 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_100181DD8(v39, &v30[v43]);
  swift_endAccess();
  sub_1005AE860();
  sub_100181E3C(v39);
  v44 = sub_10076461C();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_10077084C();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10000CFBC(v64, &qword_100944530, &qword_10079E160);
    v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10000CFBC(v64, &qword_100944530, &qword_10079E160);
  v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

uint64_t type metadata accessor for ShelfFooterView.Style(uint64_t a1)
{
  result = qword_10094B310;
  if (!qword_10094B310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100182730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100182794()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001828A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100182970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100182A28(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v2 <= 0x3F)
  {
    result = sub_100016F40(319, &qword_100942F10, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100182B08()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C02C();
  sub_100182C8C(&qword_10094B350, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_10076332C();
  if (v4[1])
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v1 + 8))(v3, v0);
    sub_10076BEFC();
    sub_10076BEFC();
  }
}

uint64_t sub_100182C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100182D48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100182DFC()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.17 controlPoint2:{0.0, 0.83, 0.83}];
  qword_10094B3A0 = result;
  return result;
}

uint64_t sub_100182E48()
{
  v0 = sub_1007604DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
  sub_10000DB18(v4, qword_10094B3A8);
  sub_10000A61C(v4, qword_10094B3A8);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  *v3 = xmmword_100791270;
  (*(v1 + 104))(v3, enum case for TimingCurve.controlPoints(_:), v0);
  return sub_1007607FC();
}

uint64_t sub_100182FB4(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, a3);
  sub_10000A61C(v4, a3);
  v5 = sub_10076D1AC();
  v10[3] = v5;
  v10[4] = &protocol witness table for FontSource;
  v6 = sub_10000DB7C(v10);
  if (qword_100941138 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A21A0);
  (*(*(v7 - 8) + 16))(v6, v8, v7);
  (*(*(v5 - 8) + 104))(v6, enum case for FontSource.useCase(_:), v5);
  return sub_10076D9BC();
}

char *sub_100183100(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] = 0;
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress];
  *v9 = 0;
  *(v9 + 4) = 514;
  v9[10] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView] = 0;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HeroCarouselItemView();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v17 setClipsToBounds:1];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView]];
  v18 = sub_100183344();
  [v17 addSubview:v18];

  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v19)
  {
    v20 = v19;
    [v17 addSubview:v20];
  }

  return v17;
}

char *sub_100183344()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = objc_allocWithZone(type metadata accessor for ModuleOverlayGradientBlurView(0));
    v7 = v0;
    v8 = sub_1003915B0(v5 == 1);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1001833F8()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    if (qword_10093F950 != -1)
    {
      swift_once();
    }

    v8 = sub_10076D9AC();
    sub_10000A61C(v8, qword_10094B3D8);
    sub_10076D17C();
    sub_10076D40C();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_10093F948 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D9AC();
    sub_10000A61C(v9, qword_10094B3C0);
    sub_10076D17C();
    sub_10076D40C();
    (*(v2 + 8))(v5, v1);
    sub_100183610();
  }
}

double sub_100183610()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  v2 = 0.0;
  if (v1)
  {
    type metadata accessor for CarouselItemSingleModuleOverlay(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v1;
      sub_1005888C0();
      v7 = v6;
      [v4 frame];
      sub_10010E7A0(v8, v9);
LABEL_6:
      v17 = v10;

      return v7 + v17 + *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset);
    }

    type metadata accessor for CarouselItemCollectionModuleOverlay(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      sub_1005888C0();
      v7 = v14;
      [v12 frame];
      sub_10023F2A8(v15, v16);
      goto LABEL_6;
    }
  }

  return v2;
}

void sub_1001837FC()
{
  v1 = v0;
  v2 = sub_100766EFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemView();
  v48.receiver = v0;
  v48.super_class = v6;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView];
  [v1 bounds];
  [v7 setFrame:?];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView];
  [v1 bounds];
  [v8 setBounds:{0.0, 0.0}];
  [v1 bounds];
  MidX = CGRectGetMidX(v49);
  [v1 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v50)}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100183EDC();
    [v12 setBounds:{0.0, 0.0, v13, v14}];

    v15 = *&v1[v10];
    if (v15)
    {
      v16 = v15;
      [v16 setCenter:sub_1001841DC(v17)];
    }
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    v18 = sub_10076279C();

    if (v18)
    {
      sub_100766F1C();

      v19 = sub_100766EEC();
      (*(v3 + 8))(v5, v2);
      if (v19)
      {
        [v1 bounds];
        CGRectGetHeight(v51);
        sub_1001833F8();
        v20 = sub_100183344();
        [v1 bounds];
        sub_100770A3C();
        [v20 setFrame:?];

        v21 = sub_100183610();
        sub_1001833F8();
        v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
        v24 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold;
        *&v23[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = v21 / v22;
        if ((v23[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] & 1) == 0)
        {
          v47 = _swiftEmptyArrayStorage;
          v25 = v23;
          sub_1004BBAA4(0, 5, 0);
          v26 = v47;
          v27 = *&v23[v24];
          v28 = 0.0;
          v30 = v47[2];
          v29 = v47[3];
          v31 = v29 >> 1;
          v32 = v30 + 1;
          if (v29 >> 1 <= v30)
          {
            *&v46 = 0.0;
            sub_1004BBAA4((v29 > 1), v30 + 1, 1);
            v28 = *&v46;
            v26 = v47;
            v29 = v47[3];
            v31 = v29 >> 1;
          }

          *(v26 + 16) = v32;
          *(v26 + 8 * v30 + 32) = v28 * v27;
          v33 = *&v23[v24];
          v47 = v26;
          v34 = v30 + 2;
          if (v31 <= v32)
          {
            *&v46 = v33;
            sub_1004BBAA4((v29 > 1), v34, 1);
            v33 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v34;
          *(v26 + 8 * v32 + 32) = 0.25 * v33;
          v35 = *&v23[v24];
          v47 = v26;
          v37 = *(v26 + 16);
          v36 = *(v26 + 24);
          v38 = v36 >> 1;
          v39 = v37 + 1;
          if (v36 >> 1 <= v37)
          {
            *&v46 = v35;
            sub_1004BBAA4((v36 > 1), v37 + 1, 1);
            v35 = *&v46;
            v26 = v47;
            v36 = v47[3];
            v38 = v36 >> 1;
          }

          *(v26 + 16) = v39;
          *(v26 + 8 * v37 + 32) = 0.5 * v35;
          v40 = *&v23[v24];
          v47 = v26;
          v41 = v37 + 2;
          if (v38 <= v39)
          {
            *&v46 = v40;
            sub_1004BBAA4((v36 > 1), v41, 1);
            v40 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v41;
          *(v26 + 8 * v39 + 32) = 0.75 * v40;
          v42 = *&v23[v24];
          v43 = 1.0;
          v47 = v26;
          v45 = *(v26 + 16);
          v44 = *(v26 + 24);
          if (v45 >= v44 >> 1)
          {
            *&v46 = 1.0;
            sub_1004BBAA4((v44 > 1), v45 + 1, 1);
            v43 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v45 + 1;
          *(v26 + 8 * v45 + 32) = v43 * v42;
          sub_1001C0414(v26);
        }
      }
    }
  }
}

double sub_100183D30(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HeroCarouselItemView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return result;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    [v1 setNeedsLayout];
  }

  return result;
}

double sub_100183EDC()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v23[2] = v15;
  v23[3] = v14;
  v23[1] = v16;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  [v1 bounds];
  (*(v3 + 16))(v5, v8, v2);
  v17 = 0.0;
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  sub_10076C2EC();
  (*(v10 + 8))(v13, v9);
  sub_100770A3C();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v20)
  {
    [v20 sizeThatFits:{v18, v19}];
    return v21;
  }

  return v17;
}

double sub_1001841DC(__n128 a1)
{
  v2 = v1;
  v3 = sub_10076702C();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076703C();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094B458, &unk_1007912D0);
  __chkstk_darwin(v7 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_10076C36C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = sub_10076C38C();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 bounds];
  v52 = v25;
  v53 = v24;
  (*(v13 + 104))(v18, enum case for PageGrid.Direction.vertical(_:), v12);
  [v2 bounds];
  (*(v13 + 16))(v15, v18, v12);
  v56 = 0.0;
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v13 + 8))(v18, v12);
  sub_10076C2EC();
  (*(v20 + 8))(v23, v19);
  sub_100770A3C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v34)
  {
    [v34 bounds];
    v56 = v35 * 0.5;
  }

  if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] || (, v36 = sub_10076279C(), , !v36))
  {
    (*(v54 + 56))(v11, 1, 1, v55);
    sub_10000CFBC(v11, &qword_10094B458, &unk_1007912D0);
    goto LABEL_9;
  }

  v37 = v47;
  sub_10076704C();

  v38 = v50;
  sub_100766FEC();
  (*(v48 + 8))(v37, v49);
  v39 = [v2 traitCollection];
  sub_10076701C();

  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 8);
  v42(v38, v55);
  (*(v41 + 56))(v11, 0, 1, v40);
  v43 = v51;
  sub_100185F2C(v11, v51);
  v44 = (*(v41 + 88))(v43, v40);
  if (v44 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
LABEL_9:
    v58.origin.x = v27;
    v58.origin.y = v29;
    v58.size.width = v31;
    v58.size.height = v33;
    MidX = v56 + CGRectGetMinX(v58);
    goto LABEL_10;
  }

  if (v44 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
  {
    if (v44 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
    {
      v60.origin.x = v27;
      v60.origin.y = v29;
      v60.size.width = v31;
      v60.size.height = v33;
      MidX = CGRectGetMaxX(v60) - v56;
      goto LABEL_10;
    }

    v42(v43, v40);
    goto LABEL_9;
  }

  v57.origin.x = v27;
  v57.origin.y = v29;
  v57.size.width = v31;
  v57.size.height = v33;
  MidX = CGRectGetMidX(v57);
LABEL_10:
  v59.origin.x = v27;
  v59.origin.y = v29;
  v59.size.width = v31;
  v59.size.height = v33;
  CGRectGetMaxY(v59);
  return MidX;
}

id sub_10018484C()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

    return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  v2 = sub_10077167C();

  if (v2)
  {
    return [*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  if (*(v1 + 8) && *(v1 + 8) == 1)
  {
  }

  else
  {
    v4 = sub_10077167C();

    if ((v4 & 1) == 0)
    {
      if (*(v1 + 9))
      {
        v11 = sub_10077167C();

        if ((v11 & 1) == 0)
        {
          v6 = *v1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v10 = 1.0 - *v1;
      goto LABEL_22;
    }
  }

  if (*(v1 + 9))
  {
    v5 = sub_10077167C();

    if (v5)
    {
      goto LABEL_16;
    }

    v10 = *v1;
LABEL_22:
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView);
    [v7 center];
    v9 = v10 * (v12 * 0.3);
    goto LABEL_23;
  }

LABEL_16:
  v6 = 1.0 - *v1;
LABEL_17:
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView);
  [v7 center];
  v9 = v8 * -0.3 * v6;
LABEL_23:
  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  return [v7 setTransform:{&v13, *&v13.a, *&v13.c, *&v13.tx}];
}

void sub_100184B50()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

LABEL_9:
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
    if (v6)
    {
      *&v28.a = 0x3FF0000000000000uLL;
      v28.c = 0.0;
      v28.d = 1.0;
      *&v28.tx = 0uLL;
      [v6 setTransform:&v28];
    }

    return;
  }

  v2 = sub_10077167C();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v4)
  {
    if (*(v1 + 8) && *(v1 + 8) == 1)
    {
      v5 = v4;

      goto LABEL_12;
    }

    v7 = sub_10077167C();
    v8 = v4;

    if (v7)
    {
LABEL_12:
      if (*(v1 + 9))
      {
        v13 = sub_10077167C();

        if ((v13 & 1) == 0)
        {
          v17 = *v1;
          [v4 center];
          v16 = v18 * -0.3 * v17;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v14 = 1.0 - *v1;
      [v4 center];
      v16 = v14 * (v15 * 0.3);
LABEL_21:
      CGAffineTransformMakeTranslation(&v28, v16, 0.0);
      [v4 setTransform:&v28];
LABEL_25:

      goto LABEL_26;
    }

    if (*(v1 + 9))
    {
      v9 = sub_10077167C();

      if ((v9 & 1) == 0)
      {
        v10 = *v1;
        [v8 center];
        v12 = v10 * (v11 * 0.3);
LABEL_24:
        CGAffineTransformMakeTranslation(&v28, v12, 0.0);
        [v8 setTransform:&v28];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v19 = 1.0 - *v1;
    [v8 center];
    v12 = v20 * -0.3 * v19;
    goto LABEL_24;
  }

LABEL_26:
  if (*(v1 + 10) == 1)
  {
    v21 = *(v0 + v3);
    if (v21)
    {
      if (*(v1 + 9))
      {
        v22 = sub_10077167C();
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          if (qword_10093F940 != -1)
          {
            swift_once();
          }

          v24 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
          sub_10000A61C(v24, qword_10094B3A8);
          sub_1007607DC();
          a = v28.a;
          v21 = v23;
LABEL_37:
          [v21 setAlpha:a];

          return;
        }
      }

      else
      {
        v26 = v21;
      }

      if (qword_10093F940 != -1)
      {
        swift_once();
      }

      v27 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
      sub_10000A61C(v27, qword_10094B3A8);
      sub_1007607DC();
      a = v28.a;
      goto LABEL_37;
    }
  }
}

void sub_100185070(int a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  v6 = BYTE1(a1);
  if (v5)
  {
    if (BYTE1(a1))
    {
      v7 = sub_10077167C();
      v8 = v5;

      v9 = 1.0;
      if (v7)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v8 = v5;

      v9 = 0.0;
    }

    [v8 setAlpha:v9];
  }

  if (qword_10093F938 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10094B3A0 timingParameters:0.33];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 34) = BYTE2(a1) & 1;
  v16[4] = sub_100185EF0;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10009AEDC;
  v16[3] = &unk_10088AAB0;
  v12 = _Block_copy(v16);
  v13 = v2;

  [v10 addAnimations:v12];
  _Block_release(v12);
  if (v6)
  {
    v14 = sub_10077167C();

    v15 = 0.166;
    if ((v14 & 1) == 0)
    {
      v15 = 0.0;
    }
  }

  else
  {

    v15 = 0.166;
  }

  [v10 startAnimationAfterDelay:v15];
}

void sub_10018532C(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    if (HIBYTE(a2))
    {
      v3 = sub_10077167C();
      v5 = v2;

      v4 = 0.0;
      if (v3)
      {
        v4 = 1.0;
      }
    }

    else
    {
      v5 = v2;

      v4 = 1.0;
    }

    [v5 setAlpha:v4];
  }
}

double sub_100185440(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10076703C();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076702C();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  __chkstk_darwin(v14);
  v63 = &v58 - v15;
  v16 = sub_100766EFC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem] = a1;

  v64 = a2;
  sub_1001316DC(a1, a2);
  if (*&v2[v20] && (, v21 = sub_10076279C(), , v21) && (sub_100766F1C(), , v22 = sub_100766EEC(), (*(v17 + 8))(v19, v16), (v22 & 1) != 0))
  {
    v23 = sub_100183344();
    [v23 setHidden:0];

    if (sub_10076279C())
    {
      sub_10076704C();

      sub_100766FEC();
      (*(v58 + 8))(v8, v59);
      v25 = v61;
      v24 = v62;
      v26 = v63;
      (*(v61 + 32))(v63, v13, v62);
      v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
      v28 = v60;
      (*(v25 + 16))(v60, v26, v24);
      v29 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
      swift_beginAccess();
      v30 = *(v25 + 24);
      v31 = v27;
      v30(&v27[v29], v28, v24);
      swift_endAccess();
      sub_100391D1C();

      v32 = *(v25 + 8);
      v32(v28, v24);
      v32(v63, v24);
    }
  }

  else
  {
    v33 = sub_100183344();
    [v33 setHidden:1];
  }

  v34 = v64;
  v35 = sub_100185C20();
  v37 = v35;
  v38 = v36;
  v39 = &v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (v35)
  {
    if (v35 == v40 || !v40)
    {
      *v39 = v35;
      *(v39 + 1) = v36;
      v41 = (v39 + 8);
      v42 = v35;

LABEL_13:
      [v3 addSubview:{v42, v58, v59}];

      goto LABEL_14;
    }
  }

  else if (!v40)
  {
    *v39 = 0;
    *(v39 + 1) = v36;
    v41 = (v39 + 8);
    v57 = 0;
    goto LABEL_14;
  }

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView] removeFromSuperview];
  v43 = *v39;
  *v39 = v37;
  *(v39 + 1) = v38;
  v41 = (v39 + 8);
  v42 = v37;

  if (v37)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (sub_10076279C() && (v45 = sub_100766F0C(), , v45))
  {
    v46 = *v39;
    if (*v39)
    {
      v47 = *v41;
      ObjectType = swift_getObjectType();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v34;
      *(v49 + 24) = v45;
      v50 = *(v47 + 16);
      v51 = v46;

      v50(sub_100185EB0, v49, ObjectType, v47);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
    }
  }

  else
  {
    v52 = *v39;
    if (*v39)
    {
      v53 = *v41;
      v54 = swift_getObjectType();
      v55 = *(v53 + 16);
      v56 = v52;
      v55(0, 0, v54, v53);
    }
  }

  return result;
}

uint64_t sub_100185A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_100185B4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroCarouselItemView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100185C20()
{
  v0 = sub_100766EFC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076279C())
  {
    sub_100766F1C();
    v4 = (*(v1 + 88))(v3, v0);
    if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.materialText(_:))
    {
      type metadata accessor for CarouselItemMaterialTextOverlay(0);
      v5 = &off_100894260;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.text(_:))
    {
      type metadata accessor for CarouselItemTextOverlay(0);
      v5 = &off_1008893F8;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.lockup(_:))
    {
      type metadata accessor for CarouselItemLockupOverlay();
      v5 = &off_10088F380;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.collectionLockup(_:))
    {
      type metadata accessor for CarouselItemCollectionLockupOverlay(0);
      v5 = &off_1008935A0;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.singleModule(_:))
    {
      type metadata accessor for CarouselItemSingleModuleOverlay(0);
      v5 = &off_1008A2650;
    }

    else
    {
      if (v4 != enum case for HeroCarouselItemOverlay.OverlayType.collectionModule(_:))
      {
        (*(v1 + 8))(v3, v0);
        v6 = 0;
        goto LABEL_16;
      }

      type metadata accessor for CarouselItemCollectionModuleOverlay(0);
      v5 = &off_100893E58;
    }

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    swift_getObjectType();
    (v5[4])();
LABEL_16:

    return v6;
  }

  return 0;
}

uint64_t sub_100185E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100185EB8()
{

  return _swift_deallocObject(v0, 35, 7);
}

double sub_100185F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100185F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B458, &unk_1007912D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100185F9C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
  *v1 = 0;
  *(v1 + 8) = 514;
  *(v1 + 10) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_1001860E8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_10076D39C();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C36C();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  sub_10075FFAC();
  sub_100186DB4(&qword_10094B480, &type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  sub_10076332C();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = sub_10075FF4C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    sub_10076C2FC();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10076C24C();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v25 + 8))(v11, v7);
    sub_10076C2FC();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_10075FF9C();
  v29 = v70;
  if (v28)
  {
    sub_10076BEFC();
    v30 = v73;
    sub_10076D3AC();
    sub_10076D36C();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = sub_10075FF4C();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_10075FF6C();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  sub_100770ACC();
  sub_10075FF7C();
  if (v37)
  {
    if (qword_100940F68 != -1)
    {
      swift_once();
    }

    v38 = sub_10076D3DC();
    sub_10000A61C(v38, qword_1009A1C30);
    swift_getKeyPath();
    sub_10076338C();

    v39 = sub_10076C04C();
    v77 = v39;
    v78 = sub_100186DB4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v40 = sub_10000DB7C(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    sub_10076C90C();
    sub_10000CD74(aBlock);
    sub_10076991C();
    swift_unknownObjectRelease();
  }

  v41 = sub_10075FF6C();

  swift_getKeyPath();
  sub_10076338C();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_1000275EC;
  v46[3] = v45;
  v78 = sub_1000ACB04;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v77 = &unk_10088AB28;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_100940F60;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = sub_10076D3DC();
  v52 = sub_10000A61C(v51, qword_1009A1C18);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  sub_10076338C();

  v55 = sub_10076C04C();
  v77 = v55;
  v78 = sub_100186DB4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56 = sub_10000DB7C(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_1000276DC(v54);
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  v59 = sub_10076D9AC();
  sub_10000A61C(v59, qword_10099D738);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_10093F998 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v59, qword_10099D750);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D3FC();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_100186D40()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100186D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100186DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100186E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  v11[1] = sub_100760F2C();
  sub_10076083C();
  sub_10076F64C();
  sub_100187734(&qword_1009467D0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_10076F56C();

  v8 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_10018718C(v7, v4 + v9);
  swift_endAccess();
  sub_1006DB580();
  return sub_1001871FC(v7);
}

uint64_t sub_100186FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  sub_10000A61C(v7, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_10018718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001871FC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100187264(void *a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2.n128_f64[0];
  v34[0] = a1;
  v8 = sub_100764FDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100764FFC();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076997C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005312C();
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A1720);
  v20 = [a6 traitCollection];
  v34[1] = a6;
  v21 = v20;
  v22 = sub_100770B3C();

  sub_100760F2C();
  sub_10076081C();

  v23 = sub_10075F9DC();

  v24 = sub_10076C04C();
  v39 = v24;
  v40 = sub_100187734(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_10000DB7C(v38);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v34[0] = v23;
  v26 = v22;
  sub_10076C90C();
  sub_10000CD74(v38);
  sub_10076993C();
  sub_10076994C();
  (*(v16 + 8))(v18, v15);
  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v8, qword_1009A32C0);
  (*(v9 + 16))(v11, v27, v8);
  v28 = v39;
  v29 = v40;
  v30 = sub_10000CF78(v38, v39);
  v37[3] = v28;
  v37[4] = *(v29 + 8);
  v31 = sub_10000DB7C(v37);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  sub_100764FEC();
  sub_100187734(&unk_100944440, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v32 = v36;
  sub_10076D2AC();

  (*(v35 + 8))(v14, v32);
  sub_10000CD74(v38);
  return v7;
}

uint64_t sub_100187734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001879B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100187A20(uint64_t a1)
{
  v3 = sub_10076A05C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100785D70;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v21;
    v22 = v16;

    sub_1001C05B8();

    v23 = sub_1007659CC();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    sub_10076A04C();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    sub_10076A04C();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v25;

    sub_1001C05B8();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = sub_1007659CC();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100785D70;
    sub_1000325F0();
    *(v46 + 32) = sub_100770D2C();
    *(v46 + 40) = sub_100770D2C();
    *&v43[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v46;

    sub_1001C05B8();
    return (*(v11 + 8))(v14, v10);
  }
}

char *sub_100188078(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075FEEC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = sub_10076341C();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_10093F920;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = sub_10076BCFC();
  v30 = sub_10000A61C(v29, qword_10099D600);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  sub_10075F97C();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  sub_10075F98C();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

double sub_1001885F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A7DC();
  sub_100189144(&qword_10094B558, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  sub_10076332C();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_1005CAE80(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_100188784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076A7DC();
      if (swift_dynamicCast())
      {
        sub_10076A7CC();

        sub_10076BACC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
        }
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

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_10094B540;
  if (!qword_10094B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188AFC(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100188BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100189144(&qword_10094B550, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_100791580);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100188C48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100188CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100188D60()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_10075FCAC();
  v2 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;

  return result;
}

double sub_100188DF4()
{
  swift_beginAccess();

  return result;
}

double sub_100188E3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100188EF4()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_100188F50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_100189010(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_100189248;
}

uint64_t sub_100189144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100189190()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001891C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100189200()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100189254()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_100189368()
{
  sub_10000A5D4(&qword_10094B630, &qword_1007916B0);
  sub_100071820(&qword_10094B638, &qword_10094B630, &qword_1007916B0, &unk_100799ED0);
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690, &qword_1007916B8);
  sub_10000A5D4(&qword_10094B640, &qword_1007916C0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v2, *(&v3 + 1));
    sub_10076208C();
    sub_10000CD74(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10000CFBC(&v2, &unk_1009506A0, qword_1007916C8);
  }

  type metadata accessor for TodayCardGridTracker();
  sub_10076F5AC();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1001894EC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1001896D8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1001898C4()
{
  v1 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10000A5D4(&qword_10094B620, &unk_1007916A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_10076E3AC();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_100770C0C();
        sub_10076E35C();
        sub_100770C1C();

        sub_10076F73C();
        sub_10076F70C();
        if (qword_1009406B8 != -1)
        {
          swift_once();
        }

        v25 = sub_10000A61C(v4, qword_1009A0298);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_10076F42C();
      }

      else
      {
        sub_10076E59C();
        v28 = v11;
        sub_100770C0C();
        sub_10076E39C();
        sub_100770C1C();

        sub_10076F73C();
        sub_10076F70C();
        if (qword_1009406B8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000A61C(v4, qword_1009A0298);
        v35[3] = v4;
        v35[4] = sub_100071820(&qword_10094B628, &qword_10094B620, &unk_1007916A0, &protocol conformance descriptor for PreferenceKey<A>);
        v30 = sub_10000DB7C(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_10076F71C();

        sub_10000CD74(v35);
      }

      sub_100189368();
      v31 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_1006DF898(v3);
      sub_10000CFBC(v3, &qword_10094B618, &qword_100791698);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

double sub_100189E74(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1001898C4();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_10077167C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  return result;
}

void sub_100189F48()
{
  v1 = sub_100770F9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10077111C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong view];

    if (v14)
    {
      if ((sub_1001E7518(v15) & 1) != 0 && !*(v0 + 24))
      {
        v75 = v2;
        v26 = [v14 window];
        v72 = v6;
        v73 = v5;
        v74 = v8;
        if (v26 && (v27 = v26, v28 = [v26 windowScene], v27, v28))
        {
          v29 = [v28 screen];

          [v29 bounds];
          v31 = v30;
          v33 = v32;
        }

        else
        {
          [v14 bounds];
          v31 = v34;
          v33 = v35;
        }

        v36 = 0;
        v37 = _swiftEmptyArrayStorage;
        v38 = 19;
        if (v31 <= v33)
        {
          v31 = v33;
        }

        v76 = v0;
        aBlock[0] = _swiftEmptyArrayStorage;
        v39 = v75;
        v71 = v14;
LABEL_15:
        if (v36 > 0x13)
        {
          v38 = v36;
        }

        v40 = v38 + 1;
        v41 = (&off_100882E28 + 5 * v36);
        while (v36 != 19)
        {
          if (v40 == ++v36)
          {
            __break(1u);
            return;
          }

          v42 = (v41 + 5);
          v43 = *(v41 + 6);
          v44 = *(v41 + 64);
          v45 = v43;
          if (v44)
          {
            v45 = v31;
          }

          v41 += 5;
          if (v45 <= v31)
          {
            v46 = *(v42 + 26);
            v68 = *(v42 + 25);
            v69 = v46;
            v67 = v42[2];
            v48 = *(v42 - 1);
            v47 = *v42;
            v70 = sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
            v49 = swift_allocObject();
            swift_weakInit();
            v50 = swift_allocObject();
            *(v50 + 16) = v49;
            *(v50 + 24) = v48;
            *(v50 + 32) = v47;
            *(v50 + 40) = v43;
            *(v50 + 48) = v67;
            *(v50 + 56) = v44;
            v51 = v69;
            *(v50 + 57) = v68;
            *(v50 + 58) = v51;
            swift_bridgeObjectRetain_n();
            sub_100770F1C();
            sub_10077019C();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            v37 = aBlock[0];
            v39 = v75;
            v38 = 19;
            goto LABEL_15;
          }
        }

        sub_100016F40(0, &qword_100946818, UIMenu_ptr);
        v79._object = 0x80000001007D6F80;
        v79._countAndFlagsBits = 0xD000000000000011;
        v80.value._countAndFlagsBits = 0;
        v80.value._object = 0;
        v78.value.super.isa = 0;
        v78.is_nil = 0;
        v52.value = 32;
        isa = sub_100770B5C(v79, v80, v78, v52, 0xFFFFFFFFFFFFFFFFLL, v37, v65).super.super.isa;
        v70 = isa;
        sub_10077110C();
        sub_1007710EC();
        v54 = sub_10076FF6C();
        v55 = [objc_opt_self() systemImageNamed:v54];

        sub_1007710BC();
        sub_100770FBC();
        sub_100770FFC();
        (*(v39 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
        sub_100770FAC();
        v56 = objc_opt_self();
        v57 = [v56 systemBlueColor];
        sub_10077103C();
        v58 = [v56 whiteColor];
        sub_10077104C();
        v59 = swift_allocObject();
        swift_weakInit();
        sub_100016F40(0, &qword_100947240, UIButton_ptr);
        v6 = v72;
        v5 = v73;
        (*(v72 + 16))(v74, v11, v73);
        v60 = sub_10077112C();
        [v60 setMenu:isa];
        [v60 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_10018B320;
        aBlock[5] = v59;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100177EA0;
        aBlock[3] = &unk_10088AC90;
        v61 = _Block_copy(aBlock);

        v2 = v75;

        [v60 setConfigurationUpdateHandler:v61];
        _Block_release(v61);
        v62 = *(v76 + 24);
        *(v76 + 24) = v60;
        v63 = v60;

        v8 = v74;
        sub_1001894EC();
        v0 = v76;

        v14 = v71;

        v64.n128_f64[0] = (*(v6 + 8))(v11, v5);
        if (sub_1001E753C(v64))
        {
          goto LABEL_6;
        }
      }

      else if (sub_1001E753C(v16))
      {
LABEL_6:
        if (!*(v0 + 32))
        {
          sub_10077110C();
          v76 = v0;
          sub_1007710EC();
          v17 = sub_10076FF6C();
          v18 = [objc_opt_self() systemImageNamed:v17];

          sub_1007710BC();
          sub_100770FBC();
          sub_100770FFC();
          (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
          sub_100770FAC();
          v19 = objc_opt_self();
          v20 = [v19 systemRedColor];
          sub_10077103C();
          v21 = [v19 whiteColor];
          sub_10077104C();
          sub_100016F40(0, &qword_100947240, UIButton_ptr);
          (*(v6 + 16))(v8, v11, v5);
          sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
          sub_100770F1C();
          v22 = sub_10077112C();
          v23 = *(v76 + 32);
          *(v76 + 32) = v22;
          v24 = v6;
          v25 = v22;

          sub_1001896D8();
          (*(v24 + 8))(v11, v5);
          return;
        }
      }
    }
  }
}

double sub_10018A868(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_100189E74(v12);
  }

  return result;
}

uint64_t sub_10018A918(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10077113C();
  v8 = sub_10077111C();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_10014D2A4(v7, v4);
    sub_10077114C();
    return sub_10000CFBC(v7, &unk_10095B400, &unk_100783F80);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_1007710EC();
    return sub_10077114C();
  }
}

void sub_10018AAC0()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_10076FF6C();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

void sub_10018ABAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_initWithTabBarSystemItem_tag_;
          v8 = &selRef__setPocketInsets_;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_100941218 != -1)
            {
              swift_once();
            }

            v17 = sub_10076D9AC();
            sub_10000A61C(v17, qword_1009A23C8);
            sub_10076DEDC();
            sub_10000A5D4(&unk_100942870, &qword_100784460);
            v18 = swift_allocObject();
            v67 = xmmword_1007841E0;
            *(v18 + 16) = xmmword_1007841E0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_10076DEEC();
            sub_10076D3EC();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1007841E0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_10076DEEC();
            sub_10076D3EC();
            v31 = v30;

            v7 = &selRef_initWithTabBarSystemItem_tag_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &selRef__setPocketInsets_;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_100941208 != -1)
              {
                swift_once();
              }

              v43 = sub_10076D9AC();
              sub_10000A61C(v43, qword_1009A2398);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870, &qword_100784460);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1007841E0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_10076DEEC();
              sub_10076D3EC();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_100941218 != -1)
              {
                swift_once();
              }

              v49 = sub_10076D9AC();
              sub_10000A61C(v49, qword_1009A23C8);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870, &qword_100784460);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1007841E0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_10076DEEC();
              sub_10076D3EC();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_100941218 != -1)
              {
                swift_once();
              }

              v61 = sub_10076D9AC();
              sub_10000A61C(v61, qword_1009A23C8);
              sub_10076DEDC();
              sub_10000A5D4(&unk_100942870, &qword_100784460);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_1007841E0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_10076DEEC();
              sub_10076D3EC();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[217]];

            [v68 v8[46]];
          }
        }
      }
    }
  }
}

uint64_t sub_10018B1E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10018B258()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018B290()
{

  return _swift_deallocObject(v0, 59, 7);
}

double sub_10018B2D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_10018A868(a1, v2, v8);
}

double sub_10018B328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10018B354()
{
  result = qword_10094B648;
  if (!qword_10094B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B648);
  }

  return result;
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v0 = sub_100768F5C();

  return sub_10000A61C(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_10018B40C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100768F5C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  v20 = sub_1007668DC();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel] = sub_10076269C();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = sub_100768F4C();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v37 = sub_10076715C();
  v38 = sub_10000A61C(v37, qword_10099CE38);
  v42[3] = v37;
  v42[4] = sub_10018CD1C();
  v39 = sub_10000DB7C(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  sub_1007625FC();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_10018B854()
{
  ObjectType = swift_getObjectType();
  v18 = sub_10076D1FC();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100768F5C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100768F6C();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  v20 = sub_1007626BC();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  sub_100768F0C();
  sub_10076422C();
  sub_100768F2C();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_10018BDE8(uint64_t a1)
{
  sub_10076438C();
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_dividerLabel];
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_10018BE7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_10018BEE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_10018BFC0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10018C08C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10018C14C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10018C190(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10018C240@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_10018C2A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

uint64_t sub_10018C378()
{
  v0 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100768F5C();
  sub_10000DB18(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FECC();
  sub_100768F3C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v2 = sub_100768F5C();
  v3 = sub_10000A61C(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView(uint64_t a1)
{
  result = qword_10094B688;
  if (!qword_10094B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018C5B4(uint64_t a1)
{
  sub_100768F5C();
  if (v1 <= 0x3F)
  {
    sub_100038324(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018C6A8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_metrics;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v2 = sub_100768F5C();
  v3 = sub_10000A61C(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_itemType;
  v6 = sub_1007668DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension21MetadataRibbonBarView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_10018C828(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_100768F5C();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100768F6C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076DA7C();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076DD3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_10093F958 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10076DD2C();
  sub_10076D84C();
  v30 = v4;
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v21 = sub_10076715C();
  v22 = sub_10000A61C(v21, qword_10099CE38);
  v41[3] = v21;
  v41[4] = sub_10018CD1C();
  v23 = sub_10000DB7C(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_10076DC8C();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_10000CD74(v41);
  sub_100768F4C();
  sub_10076DD1C();
  v24(v16, v10);
  sub_10076438C();
  (*(v11 + 16))(v16, v19, v10);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v31 + 8))(v9, v32);
  sub_10000A570(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_100768F0C();
  sub_100768F1C();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_10000CD74(v41);
  v24(v19, v10);
  return v27;
}

unint64_t sub_10018CD1C()
{
  result = qword_10094B6A0;
  if (!qword_10094B6A0)
  {
    sub_10076715C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B6A0);
  }

  return result;
}

uint64_t sub_10018CD74(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_1007713EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018CE00()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_10018CE5C()
{
  v1 = *v0;
  sub_10077175C();
  (*(*v1 + 104))(v3);
  return sub_1007717AC();
}

Swift::Int sub_10018CF04(uint64_t a1)
{
  sub_10077175C();
  (*(**v1 + 104))(v3);
  return sub_1007717AC();
}

unint64_t sub_10018CFB4()
{
  result = qword_10094B760;
  if (!qword_10094B760)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B760);
  }

  return result;
}

void sub_10018D048(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_1000325F0();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_10018D0DC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_10018D130();
}

id sub_10018D130()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      if (qword_10093F968 != -1)
      {
        swift_once();
      }

      v4 = &qword_10099D690;
    }

    else
    {
      if (qword_10093F960 != -1)
      {
        swift_once();
      }

      v4 = &qword_10099D688;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_10018D308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10018D370(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_10018D438();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_10018D76C();
    swift_unknownObjectWeakAssign();
    sub_10018D438();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_10018D438()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = sub_10077158C();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = sub_10077149C();
        }

        else
        {
          if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        sub_10075FCAC();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_10018D628(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
    if ((a2 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a2 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    sub_10075FCAC();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_10018D72C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10018D76C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10076BCFC();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = sub_10077158C();
    v7 = &unk_10094B000;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &unk_10094B000;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = v2;
  v35 = v4;

  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = sub_10077149C();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v39 = v9;
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
    sub_10076E17C();
    swift_endAccess();
  }

  while (v6 != v8);

  v2 = v34;
  v4 = v35;
  v7 = &unk_10094B000;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + 24);
  if (v12 < 0)
  {
LABEL_30:
    __break(1u);
    return;
  }

  if (v12)
  {
    v13 = v7[244];
    v34 = v2 + 2;
    v35 = v13;
    v33 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v14);
        v15 = ObjectType;
        *(&v32 - 2) = v11;
        *(&v32 - 1) = v15;
        swift_beginAccess();
        sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
        sub_10076E15C();
        swift_endAccess();
        v16 = v39;
        if (*(v11 + 24) == 3)
        {
          v17 = qword_10099D540;
          if (qword_10093F8E0 != -1)
          {
            swift_once();
            v17 = qword_10099D540;
          }
        }

        else
        {
          v17 = qword_10099D528;
          if (qword_10093F8D8 != -1)
          {
            swift_once();
            v17 = qword_10099D528;
          }
        }

        v18 = v38;
        v19 = sub_10000A61C(v38, v17);
        (*v34)(v37, v19, v18);
        v20 = v16;
        v21 = [v20 layer];
        sub_10076BCEC();
        [v21 setShadowOffset:?];

        v22 = [v20 layer];
        v23 = sub_10076BCDC();
        v24 = [v23 CGColor];

        [v22 setShadowColor:v24];
        v25 = [v20 layer];
        sub_10076BCBC();
        [v25 setShadowRadius:?];

        v26 = [v20 layer];
        LODWORD(v27) = 1.0;
        [v26 setShadowOpacity:v27];

        [v20 setClipsToBounds:0];
        swift_beginAccess();
        v28 = v20;
        sub_10077019C();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        swift_endAccess();
        v29 = [v28 superview];

        if (v29)
        {
          sub_100016F40(0, &qword_1009441F0, UIView_ptr);
          v30 = v1;
          v31 = sub_100770EEC();

          if (v31)
          {
            break;
          }
        }

        [v1 addSubview:v28];

        v14 = (*v33)(v37, v38);
        if (!--v12)
        {
          goto LABEL_25;
        }
      }

      (*v33)(v37, v38);

      --v12;
    }

    while (v12);
LABEL_25:
  }
}

void sub_10018DFAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_10075FD2C();
  if (v3 == 1)
  {
    v4 = sub_10075FB1C();
  }

  else
  {
    v4 = sub_10075FB3C();
  }

  v5 = v4;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  sub_100770D5C();
  sub_10075FB8C();
  v6 = v5;
  sub_10075FB9C();
  sub_1007638DC();
  sub_10075FBAC();
  sub_1007638EC();

  *a2 = v6;
}

void sub_10018E05C()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? sub_10077158C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);

        v7 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory];
      }

      sub_10076422C();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_1002EEE70(v17, v7, v8, v10, v12, v14, v16);
    }
  }
}

void sub_10018E290(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v8 = OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = v9 >> 62 ? sub_10077158C() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 == *(v4 + 24))
    {
      v11 = *(v3 + v8);
      if (v11 >> 62)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);

        v12 = sub_10077157C();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_10077168C();
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v12 = v11;
      }

      if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v13 = 5;
      }

      else
      {
        v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension24MultiAppFallbackIconView_sizeCategory);
      }

      sub_1002EEFA0(a1, v12, v13, a2, a3);
    }
  }
}

uint64_t type metadata accessor for MultiAppFallbackIconView(uint64_t a1)
{
  result = qword_10094B7D0;
  if (!qword_10094B7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018E5B8(uint64_t a1)
{
  sub_10018E66C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10018E66C(uint64_t a1)
{
  if (!qword_10094B7E0)
  {
    sub_10000CE78(&qword_10094B7E8, &qword_100791A70);
    sub_10018E6DC();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_10094B7E0);
    }
  }
}

unint64_t sub_10018E6DC()
{
  result = qword_10094B7F0;
  if (!qword_10094B7F0)
  {
    sub_10000CE78(&qword_10094B7E8, &qword_100791A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B7F0);
  }

  return result;
}

void sub_10018E790(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&qword_10094BB58, &unk_100791CE0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100016E2C(a1, v17, &qword_10094BB50, &qword_1007851D0);
  sub_100016E2C(v2 + v18, &v17[v19], &qword_10094BB50, &qword_1007851D0);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10000CFBC(v17, &qword_10094BB50, &qword_1007851D0);
      return;
    }
  }

  else
  {
    sub_100016E2C(v17, v13, &qword_10094BB50, &qword_1007851D0);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_100199BC0(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_10052A9D0(v13, v26);
      sub_100199AA8(v26, type metadata accessor for Accessory);
      sub_100199AA8(v13, type metadata accessor for Accessory);
      sub_10000CFBC(v17, &qword_10094BB50, &qword_1007851D0);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100199AA8(v13, type metadata accessor for Accessory);
  }

  sub_10000CFBC(v17, &qword_10094BB58, &unk_100791CE0);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100016E2C(v33, v31, &qword_10094BB50, &qword_1007851D0);
  swift_beginAccess();
  sub_100199B50(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100016E2C(v21, v32, &qword_10094BB50, &qword_1007851D0);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10000CFBC(v23, &qword_10094BB50, &qword_1007851D0);
    sub_10018ED24(0);
  }

  else
  {
    sub_100527CDC(v30);
    v25 = v24;
    sub_100199AA8(v23, type metadata accessor for Accessory);
    sub_10018ED24(v25);
  }
}

void sub_10018EBE8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_10076262C();
    [v4 addSubview:v14];
  }
}

void sub_10018ED24(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

char *sub_10018EE54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_10076771C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_100763BBC();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = &v99 - v27;
  v28 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_10076F9AC();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory(0);
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_1007626BC();
  v49 = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_10076F97C();
  sub_10000CFBC(v124, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v125, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_10076034C();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_100763BAC();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100016E2C(v33, v30, &unk_10094BB80, &qword_100791CF0);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10000CFBC(v30, &unk_10094BB80, &qword_100791CF0);
    v57 = 0;
  }

  else
  {
    v57 = sub_1007602EC();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_100286F40(v57, v105);

  if (qword_10093FC50 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_10000A61C(v122, qword_10099DFA0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_100199C28(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_100199C28(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100016E2C(v61, v111, &qword_100949718, &unk_10078CE10);
  v65 = v103;
  sub_100016E2C(v103, v120, &qword_100949710, "fc\a");
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v99 = sub_100770CDC();
  sub_10000CFBC(v65, &qword_100949710, "fc\a");
  sub_10000CFBC(v61, &qword_100949718, &unk_10078CE10);
  sub_100199AA8(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v104, &unk_10094BB80, &qword_100791CF0);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_100199BC0(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100199BC0(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v64, v70 + v68[6], &qword_100949718, &unk_10078CE10);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10000CFBC(v71, &qword_100949710, "fc\a");
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_100199BC0(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_100199BC0(v74, v109 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView];
  v81 = sub_100770CDC();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_10076D3DC();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_1007625DC();

  v93 = *&v77[v82];
  sub_10076266C();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_10076FF6C();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_10076262C();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_10018FD94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_10077167C() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_10018FE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076771C();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_10077167C(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_1007626BC();

      v27 = sub_10076269C();
      [v27 setNumberOfLines:1];
      v28 = sub_10076FF6C();

      [v27 setText:v28];

      v29 = sub_10076266C();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_100199C28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_100199AA8(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_100199C28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_10076D3DC();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_100199AA8(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_1007625DC();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_100199C28(v39, v48, v46);
      sub_100199AA8(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_100199AA8(v41, v36);
      if (v42)
      {
        v43 = sub_10076FF6C();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_10076262C();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1001903C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_10076FF1C();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_10075FD2C();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10076BF7C();
    sub_10075FCCC();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_100190568(uint64_t a1, void *a2, uint64_t *a3, __n128 a4)
{
  v6 = v4;
  v7 = *(v4 + *a2);
  if (a1)
  {
    if (v7)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);

      v8 = sub_10076FF1C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v7)
  {
    return;
  }

  v9 = *a3;
  v10 = *(v6 + *a3);
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *(v6 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v6 + v9) = 0;
}

void sub_100190668(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_10076C02C();
      sub_100199B08(&unk_10094BB10, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_10076FF1C();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_10075FD2C();
    v6 = sub_10075FB3C();
    sub_10076BF7C();
    sub_10075FCCC();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1001907E8(uint64_t a1)
{
  v3 = sub_10076F9AC();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style];
  swift_beginAccess();
  sub_100199C28(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_10019954C(v16, a1);
  result = sub_100199AA8(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_10076D3DC();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_1007625DC();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_1007625DC();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_10076FF6C();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100016E2C(&v17[v14[6]], v27, &qword_100949718, &unk_10078CE10);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10000CFBC(v27, &qword_100949718, &unk_10078CE10);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_100199BC0(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_1007626BC(), v50 = sub_10076269C(), sub_10018EBD0(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_10076F97C(), sub_10000CFBC(&v91, &unk_1009434C0, &qword_100783F60), sub_10000CFBC(&v93, &unk_1009434C0, &qword_100783F60), sub_100770B9C(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_1007625DC();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_10076FF6C() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_10076266C();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_1007626BC(), v67 = sub_10076269C(), sub_10018EBDC(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_10076F97C(), sub_10000CFBC(&v91, &unk_1009434C0, &qword_100783F60), sub_10000CFBC(&v93, &unk_1009434C0, &qword_100783F60), sub_100770B9C(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_1007625DC();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_10076FF6C() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_10076266C();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_100199AA8(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100191278@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_100199C28(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1001912E4(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_100199C28(v2 + v7, v6, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_100116308(a1, v2 + v7, v8);
  swift_endAccess();
  sub_1001907E8(v6);
  sub_100199AA8(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_100199AA8(v6, type metadata accessor for TitleHeaderView.Style);
}

double sub_1001914C0(__n128 a1, double a2)
{
  v3 = v2;
  v5 = a1.n128_f64[0];
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v49 = sub_10076FF9C();
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v48 = sub_10076FF9C();
    v24 = v23;
  }

  else
  {
    v48 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v47 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v47 = sub_10076FF9C();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_10076FF9C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  sub_1002E2308(v49, v50, v19, v48, v24, v25, v47, v30, v5, a2, v12, v14, v40, v41, v42, v43, v34, v36, v38, v9, 1, v3);
  v45 = v44;

  sub_100199AA8(v9, type metadata accessor for TitleHeaderView.Style);
  return v45;
}

void sub_100191948()
{
  v1 = sub_10076D1FC();
  v425 = *(v1 - 8);
  v426 = v1;
  __chkstk_darwin(v1);
  v424 = &v400 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = sub_100763BCC();
  v421 = *(v423 - 8);
  __chkstk_darwin(v423);
  v420 = &v400 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763BBC();
  v415 = *(v4 - 8);
  v416 = v4;
  __chkstk_darwin(v4);
  v417 = &v400 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_100763BFC();
  v419 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v400 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_100763BAC();
  v436 = *(v442 - 8);
  __chkstk_darwin(v442);
  v414 = &v400 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v441 = &v400 - v9;
  v10 = sub_100763BEC();
  v455 = *(v10 - 8);
  v456 = v10;
  __chkstk_darwin(v10);
  v408 = &v400 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v454 = &v400 - v13;
  __chkstk_darwin(v14);
  v453 = &v400 - v15;
  __chkstk_darwin(v16);
  v440 = &v400 - v17;
  v18 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v18 - 8);
  v430 = &v400 - v19;
  v20 = sub_10075D78C();
  v434 = *(v20 - 1);
  v435 = v20;
  __chkstk_darwin(v20);
  v433 = &v400 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D3DC();
  v403 = *(v22 - 8);
  v404 = v22;
  __chkstk_darwin(v22);
  v402 = &v400 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v429 = *(v458 - 1);
  __chkstk_darwin(v458);
  v457 = &v400 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v438 = &v400 - v26;
  __chkstk_darwin(v27);
  v409 = &v400 - v28;
  __chkstk_darwin(v29);
  v406 = &v400 - v30;
  v427 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  v412 = *(v427 - 8);
  __chkstk_darwin(v427);
  v405 = &v400 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v407 = &v400 - v33;
  __chkstk_darwin(v34);
  v448 = &v400 - v35;
  __chkstk_darwin(v36);
  v452 = &v400 - v37;
  __chkstk_darwin(v38);
  v447 = &v400 - v39;
  __chkstk_darwin(v40);
  v451 = &v400 - v41;
  __chkstk_darwin(v42);
  v439 = &v400 - v43;
  __chkstk_darwin(v44);
  v401 = &v400 - v45;
  __chkstk_darwin(v46);
  v443 = &v400 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v413 = &v400 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v411 = &v400 - v51;
  __chkstk_darwin(v52);
  v410 = &v400 - v53;
  __chkstk_darwin(v54);
  v428 = &v400 - v55;
  __chkstk_darwin(v56);
  v400 = &v400 - v57;
  __chkstk_darwin(v58);
  v445 = &v400 - v59;
  __chkstk_darwin(v60);
  v62 = &v400 - v61;
  v432 = sub_10076E1EC();
  v63 = *(v432 - 1);
  __chkstk_darwin(v432);
  v65 = &v400 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_10076E21C();
  v66 = *(v449 - 1);
  __chkstk_darwin(v449);
  v68 = &v400 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = type metadata accessor for TitleHeaderView(0);
  v497.receiver = v0;
  v497.super_class = v437;
  v69 = objc_msgSendSuper2(&v497, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v431 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v450 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v446 = v62;
  sub_100199AA8(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v432);
  *(&v495 + 1) = sub_10076D67C();
  v496 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v494);
  sub_10076D66C();
  sub_10076E1FC();
  [v0 bounds];
  sub_10076E1CC();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v449);
  [v431 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v445;
  v85 = sub_10076422C();
  v449 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v450[5];
    if (qword_10093FC38 != -1)
    {
      swift_once();
    }

    v87 = sub_10000A61C(v458, qword_10099DF58);
    v88 = sub_10019942C(&v84[v86], v87);
    v89 = v456;
    v90 = v457;
    v91 = v448;
    if (!v88)
    {
      if (qword_10093FC40 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v456;
    v90 = v457;
    v91 = v448;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v444 = v83;
    v445 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v432 = v92;
    v93 = [v432 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_10076FF9C();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v456;
LABEL_20:
      v437 = *(v455 + 56);
      v113 = (v437)(v443, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_10076BE0C())
      {
        sub_100016F40(0, &qword_100942F00, UIFont_ptr);
        v101 = v446;
        v449();
        v102 = v406;
        sub_100199C28(v101, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_100199AA8(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v402;
        v103 = v403;
        v105 = v404;
        (*(v403 + 16))(v402, v102 + *(v458 + 6), v404);
        sub_100199AA8(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_100770B3C();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_10075FC3C();
        }

        v74 = v445;
      }

      else
      {
        v115 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v446;
          v449();
          v119 = v406;
          sub_100199C28(v118, v406, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_100199AA8(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1006BA044(v117, v119, v74);

          sub_100199AA8(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_10075FC8C();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_10075FC3C();
          }
        }
      }
    }

    v123 = v400;
    (v449)(v98);
    sub_100199C28(v123, v409, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100199AA8(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_10075FD2C();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v494 + 1) = 0;
      *&v495 = 0;
    }

    *&v494 = v127;
    *(&v495 + 1) = v125;
    v496 = v126;
    v128 = sub_1007626BC();
    v493 = &protocol witness table for UILabel;
    v492 = v128;
    v129 = v432;
    v491[0] = v432;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100016E2C(&v494, v484, &unk_10094DA00, &qword_100783FA0);
    v130 = v492;
    v131 = v493;
    v132 = sub_10000CF78(v491, v492);
    v482 = v130;
    v483 = v131[1];
    v133 = sub_10000DB7C(v481);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v458;
    v135 = v409;
    v136 = *(v409 + *(v458 + 8));
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v136;
    v137 = *(v458 + 9);
    v138 = sub_10076D9AC();
    v476 = v138;
    v477 = &protocol witness table for StaticDimension;
    v139 = sub_10000DB7C(v475);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v142 = sub_10000DB7C(v472);
    v140(v142, v135 + v141, v138);
    sub_100016E2C(&v488, &v466, &qword_10094BB30, qword_100796E40);
    v143 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v144 = v468;
      v145 = sub_10000CF78(&v466, *(&v467 + 1));
      *(&v470 + 1) = v143;
      v471 = *(v144 + 8);
      v146 = sub_10000DB7C(&v469);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_10000CD74(&v466);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10000CFBC(&v466, &qword_10094BB30, qword_100796E40);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100016E2C(&v485, v463, &qword_10094BB30, qword_100796E40);
    v151 = v464;
    v83 = v444;
    v74 = v445;
    v90 = v457;
    v91 = v448;
    if (v464)
    {
      v152 = v465;
      v153 = sub_10000CF78(v463, v464);
      *(&v467 + 1) = v151;
      v468 = *(v152 + 8);
      v154 = sub_10000DB7C(&v466);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_10000CD74(v463);
    }

    else
    {
      sub_10000CFBC(v463, &qword_10094BB30, qword_100796E40);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v155 = v458;
    v156 = v409;
    sub_10000A570(v409 + *(v458 + 12), v463);
    sub_10000A570(v156 + *(v155 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v157 = v401;
    sub_100763BDC();
    sub_10000CFBC(&v485, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(&v488, &qword_10094BB30, qword_100796E40);
    sub_100199AA8(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v491);
    sub_10000CFBC(&v494, &unk_10094DA00, &qword_100783FA0);
    v89 = v456;
    v437 = *(v455 + 56);
    (v437)(v157, 0, 1, v456);
    sub_100023AD0(v157, v443, &unk_10094BB20, &unk_10079AAD0);
    v158 = v432;
    v159 = [v432 font];
    if (!v159)
    {
      goto LABEL_185;
    }

    v160 = v159;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_10076FF9C();
      v165 = v164;

      *&v494 = v163;
      *(&v494 + 1) = v165;

      v166 = v433;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      LOBYTE(v162) = v167;
      (v434)[1](v166, v435);

      if (v162)
      {

        v168 = 0;
        v74 = v445;
        v89 = v456;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v445;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return;
        }

        v89 = v456;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v432;
    sub_1001E1328(v168);

LABEL_46:
    v173 = v428;
    (v449)(v113);
    v174 = v430;
    sub_100016E2C(v173 + v450[6], v430, &qword_100949718, &unk_10078CE10);
    sub_100199AA8(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v429 + 48))(v174, 1, v458) == 1)
    {
      sub_10000CFBC(v174, &qword_100949718, &unk_10078CE10);
      (v437)(v439, 1, 1, v89);
      goto LABEL_88;
    }

    sub_100199BC0(v174, v438, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
    if (v176)
    {
      v177 = [v176 font];
      if (!v177)
      {
        goto LABEL_183;
      }

      v178 = v177;
      v179 = *&v74[v175];
      if (!v179 || (v180 = [v179 text]) == 0)
      {

        v187 = 0;
        v188 = *&v74[v175];
        if (!v188)
        {
          goto LABEL_57;
        }

LABEL_56:
        v189 = v188;
        sub_1001E1328(v187);

        goto LABEL_57;
      }

      v181 = v180;
      v182 = sub_10076FF9C();
      v184 = v183;

      *&v494 = v182;
      *(&v494 + 1) = v184;

      v185 = v433;
      sub_10075D76C();
      sub_10002564C();
      sub_1007711EC();
      LOBYTE(v181) = v186;
      (v434)[1](v185, v435);

      if (v181)
      {

        v187 = 0;
        v74 = v445;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v178 lineHeight];
        v228 = v227;

        v229 = ceil(v228 * 1.3);
        v74 = v445;
        if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v229 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v229 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v187 = v229;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v190 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel;
    v191 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
    if (!v191)
    {
      goto LABEL_66;
    }

    v192 = [v191 font];
    if (!v192)
    {
      goto LABEL_184;
    }

    v193 = v192;
    v194 = *&v74[v190];
    if (!v194 || (v195 = [v194 text]) == 0)
    {

      v202 = 0;
      v203 = *&v74[v190];
      if (!v203)
      {
        goto LABEL_66;
      }

LABEL_65:
      v204 = v203;
      sub_1001E1328(v202);

      goto LABEL_66;
    }

    v196 = v195;
    v197 = sub_10076FF9C();
    v199 = v198;

    *&v494 = v197;
    *(&v494 + 1) = v199;

    v200 = v433;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    LOBYTE(v196) = v201;
    (v434)[1](v200, v435);

    if (v196)
    {

      v202 = 0;
      v74 = v445;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v193 lineHeight];
      v231 = v230;

      v232 = ceil(v231 * 1.3);
      v74 = v445;
      if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v232 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v232 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v202 = v232;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v205 = *&v74[v175];
    if (!v205)
    {
      sub_100199AA8(v438, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v448;
      goto LABEL_70;
    }

    v206 = v446;
    v449();
    v207 = *(v206 + v450[9]);
    v208 = v205;
    sub_100199AA8(v206, type metadata accessor for TitleHeaderView.Style);
    v91 = v448;
    if (v207 == 2)
    {
      sub_100199AA8(v438, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v437)(v439, 1, 1, v456);
      v83 = v444;
      goto LABEL_88;
    }

    v496 = 0;
    v494 = 0u;
    v495 = 0u;
    v209 = sub_1007626BC();
    v493 = &protocol witness table for UILabel;
    v492 = v209;
    v491[0] = v208;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100016E2C(&v494, v484, &unk_10094DA00, &qword_100783FA0);
    v210 = v492;
    v211 = v493;
    v212 = sub_10000CF78(v491, v492);
    v482 = v210;
    v483 = v211[1];
    v213 = sub_10000DB7C(v481);
    (*(*(v210 - 1) + 16))(v213, v212, v210);
    v214 = v458;
    v215 = v438;
    v216 = *&v438[*(v458 + 8)];
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v216;
    v217 = *(v458 + 9);
    v218 = sub_10076D9AC();
    v476 = v218;
    v477 = &protocol witness table for StaticDimension;
    v219 = sub_10000DB7C(v475);
    v220 = *(*(v218 - 8) + 16);
    v220(v219, &v215[v217], v218);
    v221 = *(v214 + 10);
    v473 = v218;
    v474 = &protocol witness table for StaticDimension;
    v222 = sub_10000DB7C(v472);
    v220(v222, &v215[v221], v218);
    sub_100016E2C(&v488, &v466, &qword_10094BB30, qword_100796E40);
    v223 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v224 = v468;
      v225 = sub_10000CF78(&v466, *(&v467 + 1));
      *(&v470 + 1) = v223;
      v471 = *(v224 + 8);
      v226 = sub_10000DB7C(&v469);
      (*(*(v223 - 8) + 16))(v226, v225, v223);
      sub_10000CD74(&v466);
    }

    else
    {
      sub_10000CFBC(&v466, &qword_10094BB30, qword_100796E40);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100016E2C(&v485, v463, &qword_10094BB30, qword_100796E40);
    v233 = v464;
    v74 = v445;
    v90 = v457;
    if (v464)
    {
      v234 = v465;
      v235 = sub_10000CF78(v463, v464);
      *(&v467 + 1) = v233;
      v468 = *(v234 + 8);
      v236 = sub_10000DB7C(&v466);
      (*(*(v233 - 8) + 16))(v236, v235, v233);
      sub_10000CD74(v463);
    }

    else
    {
      sub_10000CFBC(v463, &qword_10094BB30, qword_100796E40);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v83 = v444;
    v237 = v458;
    v238 = v438;
    sub_10000A570(&v438[*(v458 + 12)], v463);
    sub_10000A570(v238 + *(v237 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v239 = v439;
    sub_100763BDC();
    sub_10000CFBC(&v485, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(&v488, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(&v494, &unk_10094DA00, &qword_100783FA0);
    sub_100199AA8(v238, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CD74(v491);
    v437 = *(v455 + 56);
    (v437)(v239, 0, 1, v456);
LABEL_88:
    v240 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    v241 = [v240 font];
    if (!v241)
    {
      goto LABEL_182;
    }

    v89 = v241;
    v242 = [v240 text];
    v438 = v240;
    if (!v242)
    {

      v248 = 0;
      goto LABEL_98;
    }

    v243 = v242;
    v244 = sub_10076FF9C();
    v74 = v245;

    *&v494 = v244;
    *(&v494 + 1) = v74;

    v246 = v433;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v86 = v247;
    (v434)[1](v246, v435);

    if (v86)
    {

      v248 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v250 = v249;

    v251 = ceil(v250 * 1.3);
    if ((*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v251 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_10000A61C(v458, qword_10099DF70);
    sub_10019942C(&v84[v86], v114);
    sub_100199AA8(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v251 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v248 = v251;
LABEL_97:
  v74 = v445;
LABEL_98:
  sub_1001E1328(v248);
  v252 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork])
  {

    if (sub_10076BE0C())
    {
      sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      v253 = v446;
      v449();
      v254 = v406;
      sub_100199C28(v253 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100199AA8(v253, type metadata accessor for TitleHeaderView.Style);
      v255 = v402;
      v256 = v403;
      v257 = v404;
      (*(v403 + 16))(v402, v254 + *(v458 + 6), v404);
      sub_100199AA8(v254, type metadata accessor for TitleHeaderView.TextConfiguration);
      v258 = v74;
      v259 = [v74 traitCollection];
      v260 = sub_100770B3C();

      (*(v256 + 8))(v255, v257);
      v261 = *&v258[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
      if (v261)
      {
        v262 = objc_opt_self();
        v263 = v261;
        v264 = [v262 configurationWithFont:v260];
        sub_10075FC3C();
      }

      v74 = v445;
      v91 = v448;
      v90 = v457;
    }

    else
    {
      v265 = v90;
      v266 = v74;
      v267 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView;
      v268 = *(v266 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
      if (v268)
      {
        v269 = *(v266 + v252);
        v270 = v446;
        v449();
        v271 = v406;
        sub_100199C28(v270 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);

        v272 = v268;
        v265 = v457;
        sub_100199AA8(v270, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v269, v271, v266);

        sub_100199AA8(v271, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_10075FC8C();

        v273 = *(v266 + v267);
        if (v273)
        {
          v274 = v273;
          sub_10075FC3C();
        }
      }

      v74 = v266;
      v91 = v448;
      v90 = v265;
    }
  }

  v275 = v446;
  v449();
  v276 = *(v275 + v450[9]);
  v277 = sub_100199AA8(v275, type metadata accessor for TitleHeaderView.Style);
  if (v276 == 2)
  {
    v278 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel];
    v277 = v278;
  }

  else
  {
    v278 = 0;
  }

  v279 = v446;
  (v449)(v277);
  v280 = *(v279 + v450[9]);
  v281 = sub_100199AA8(v279, type metadata accessor for TitleHeaderView.Style);
  if (v280 == 2)
  {
    v282 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_shortDetailLabel];
    v281 = v282;
  }

  else
  {
    v282 = 0;
  }

  v283 = v410;
  (v449)(v281);
  sub_100199C28(v283 + v450[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100199AA8(v283, type metadata accessor for TitleHeaderView.Style);
  v284 = *&v74[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];
  if (v284)
  {
    v285 = sub_10075FD2C();
    v286 = &protocol witness table for UIView;
    v287 = v284;
  }

  else
  {
    v287 = 0;
    v285 = 0;
    v286 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  v288 = v438;
  *&v494 = v287;
  *(&v495 + 1) = v285;
  v496 = v286;
  v289 = sub_1007626BC();
  v493 = &protocol witness table for UILabel;
  v492 = v289;
  v491[0] = v288;
  if (v278)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v278;
    v292 = v289;
  }

  else
  {
    v291 = 0;
    v292 = 0;
    v290 = 0;
    *&v489 = 0;
    *(&v488 + 1) = 0;
  }

  *&v488 = v291;
  *(&v489 + 1) = v292;
  v490 = v290;
  v434 = v282;
  v435 = v278;
  if (v282)
  {
    v293 = &protocol witness table for UILabel;
    v294 = v282;
  }

  else
  {
    v294 = 0;
    v289 = 0;
    v293 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v294;
  *(&v486 + 1) = v289;
  v487 = v293;
  sub_100016E2C(&v494, v484, &unk_10094DA00, &qword_100783FA0);
  v295 = v492;
  v296 = v493;
  v297 = sub_10000CF78(v491, v492);
  v482 = v295;
  v483 = v296[1];
  v298 = sub_10000DB7C(v481);
  (*(*(v295 - 1) + 16))(v298, v297, v295);
  v300 = v457;
  v299 = v458;
  v301 = *(v457 + *(v458 + 8));
  v479 = &type metadata for Float;
  v480 = &protocol witness table for Float;
  v478 = v301;
  v302 = *(v458 + 9);
  v303 = sub_10076D9AC();
  v476 = v303;
  v477 = &protocol witness table for StaticDimension;
  v304 = sub_10000DB7C(v475);
  v305 = *(*(v303 - 8) + 16);
  v305(v304, v300 + v302, v303);
  v306 = *(v299 + 10);
  v473 = v303;
  v474 = &protocol witness table for StaticDimension;
  v307 = sub_10000DB7C(v472);
  v305(v307, v300 + v306, v303);
  sub_100016E2C(&v488, &v466, &qword_10094BB30, qword_100796E40);
  v308 = *(&v467 + 1);
  if (*(&v467 + 1))
  {
    v309 = v468;
    v310 = sub_10000CF78(&v466, *(&v467 + 1));
    *(&v470 + 1) = v308;
    v471 = *(v309 + 8);
    v311 = sub_10000DB7C(&v469);
    (*(*(v308 - 8) + 16))(v311, v310, v308);
    v312 = v434;
    v313 = v284;
    v314 = v438;
    v315 = v435;
    sub_10000CD74(&v466);
  }

  else
  {
    v316 = v434;
    v317 = v284;
    v318 = v438;
    v319 = v435;
    sub_10000CFBC(&v466, &qword_10094BB30, qword_100796E40);
    v469 = 0u;
    v470 = 0u;
    v471 = 0;
  }

  v320 = v447;
  sub_100016E2C(&v485, v463, &qword_10094BB30, qword_100796E40);
  v321 = v464;
  if (v464)
  {
    v322 = v465;
    v323 = sub_10000CF78(v463, v464);
    *(&v467 + 1) = v321;
    v468 = *(v322 + 8);
    v324 = sub_10000DB7C(&v466);
    (*(*(v321 - 8) + 16))(v324, v323, v321);
    sub_10000CD74(v463);
  }

  else
  {
    sub_10000CFBC(v463, &qword_10094BB30, qword_100796E40);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v326 = v457;
  v325 = v458;
  sub_10000A570(v457 + *(v458 + 12), v463);
  sub_10000A570(v326 + *(v325 + 13), v462);
  v461 = &protocol witness table for Double;
  v460 = &type metadata for Double;
  v459 = 0x4020000000000000;
  sub_100763BDC();
  sub_100199AA8(v326, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(&v485, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v488, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v491);
  v327 = sub_10000CFBC(&v494, &unk_10094DA00, &qword_100783FA0);
  v328 = v411;
  (v449)(v327);
  v329 = *(v328 + v450[9]);
  sub_100199AA8(v328, type metadata accessor for TitleHeaderView.Style);
  sub_10000A5D4(&qword_10094BB38, &unk_100791CD0);
  v457 = *(v412 + 72);
  v330 = (*(v412 + 80) + 32) & ~*(v412 + 80);
  if (v329)
  {
    v331 = v456;
    if (v329 == 1)
    {
      v332 = v91;
      v333 = v457;
      v438 = swift_allocObject();
      v334 = &v438[v330];
      sub_100016E2C(v443, &v438[v330], &unk_10094BB20, &unk_10079AAD0);
      v335 = v455 + 16;
      (*(v455 + 16))(&v334[v333], v440, v331);
      (v437)(&v334[v333], 0, 1, v331);
      sub_100016E2C(v439, &v334[2 * v333], &unk_10094BB20, &unk_10079AAD0);
      v336 = (v335 + 32);
      v337 = (v335 + 16);
      v458 = _swiftEmptyArrayStorage;
      v338 = 3;
      v453 = v334;
      v339 = v334;
      do
      {
        v340 = v452;
        sub_100016E2C(v339, v452, &unk_10094BB20, &unk_10079AAD0);
        sub_100023AD0(v340, v332, &unk_10094BB20, &unk_10079AAD0);
        if ((*v336)(v332, 1, v331) == 1)
        {
          sub_10000CFBC(v332, &unk_10094BB20, &unk_10079AAD0);
        }

        else
        {
          v341 = *v337;
          (*v337)(v454, v332, v331);
          v342 = v458;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v342 = sub_10049E330(0, v342[2] + 1, 1, v342);
          }

          v344 = v342[2];
          v343 = v342[3];
          if (v344 >= v343 >> 1)
          {
            v342 = sub_10049E330((v343 > 1), v344 + 1, 1, v342);
          }

          v342[2] = v344 + 1;
          v345 = (*(v455 + 80) + 32) & ~*(v455 + 80);
          v458 = v342;
          v331 = v456;
          v341(v342 + v345 + *(v455 + 72) * v344, v454, v456);
          v332 = v448;
        }

        v339 += v457;
        --v338;
      }

      while (v338);
      goto LABEL_149;
    }

    v363 = v457;
    v438 = swift_allocObject();
    v364 = &v438[v330];
    sub_100016E2C(v443, &v438[v330], &unk_10094BB20, &unk_10079AAD0);
    v365 = v455;
    (*(v455 + 16))(v364 + v363, v440, v331);
    (v437)(v364 + v363, 0, 1, v331);
    v366 = v407;
    sub_100016E2C(v364, v407, &unk_10094BB20, &unk_10079AAD0);
    v367 = v405;
    sub_100023AD0(v366, v405, &unk_10094BB20, &unk_10079AAD0);
    v368 = *(v365 + 48);
    v369 = (v365 + 32);
    v370 = v368(v367, 1, v331);
    v371 = v331;
    v454 = (v365 + 32);
    if (v370 == 1)
    {
      sub_10000CFBC(v367, &unk_10094BB20, &unk_10079AAD0);
      v458 = _swiftEmptyArrayStorage;
    }

    else
    {
      v372 = *v369;
      (*v369)(v408, v367, v371);
      v373 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v375 = v373[2];
      v374 = v373[3];
      v458 = v373;
      if (v375 >= v374 >> 1)
      {
        v458 = sub_10049E330((v374 > 1), v375 + 1, 1, v458);
      }

      v376 = v458;
      v458[2] = v375 + 1;
      v377 = v376 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v375;
      v371 = v456;
      v372(v377, v408, v456);
      v367 = v405;
    }

    v378 = v407;
    sub_100016E2C(v364 + v457, v407, &unk_10094BB20, &unk_10079AAD0);
    sub_100023AD0(v378, v367, &unk_10094BB20, &unk_10079AAD0);
    if (v368(v367, 1, v371) == 1)
    {
      sub_10000CFBC(v367, &unk_10094BB20, &unk_10079AAD0);
      v360 = v441;
      v361 = v442;
      v362 = v436;
    }

    else
    {
      v379 = *v454;
      (*v454)(v408, v367, v371);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v361 = v442;
      v362 = v436;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v458 = sub_10049E330(0, v458[2] + 1, 1, v458);
      }

      v360 = v441;
      v382 = v458[2];
      v381 = v458[3];
      if (v382 >= v381 >> 1)
      {
        v458 = sub_10049E330((v381 > 1), v382 + 1, 1, v458);
      }

      v383 = v458;
      v458[2] = v382 + 1;
      v379(&v383[((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v382], v408, v456);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v346 = v457;
    v347 = 2 * v457;
    v438 = swift_allocObject();
    v348 = &v438[v330];
    sub_100016E2C(v443, &v438[v330], &unk_10094BB20, &unk_10079AAD0);
    sub_100016E2C(v439, &v348[v346], &unk_10094BB20, &unk_10079AAD0);
    v349 = v456;
    v350 = v455 + 16;
    (*(v455 + 16))(&v348[v347], v440, v456);
    (v437)(&v348[v347], 0, 1, v349);
    v351 = (v350 + 32);
    v352 = (v350 + 16);
    v458 = _swiftEmptyArrayStorage;
    v353 = 3;
    v454 = v348;
    do
    {
      v354 = v451;
      sub_100016E2C(v348, v451, &unk_10094BB20, &unk_10079AAD0);
      sub_100023AD0(v354, v320, &unk_10094BB20, &unk_10079AAD0);
      if ((*v351)(v320, 1, v349) == 1)
      {
        sub_10000CFBC(v320, &unk_10094BB20, &unk_10079AAD0);
      }

      else
      {
        v355 = *v352;
        (*v352)(v453, v320, v349);
        v356 = v458;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v356 = sub_10049E330(0, v356[2] + 1, 1, v356);
        }

        v358 = v356[2];
        v357 = v356[3];
        if (v358 >= v357 >> 1)
        {
          v356 = sub_10049E330((v357 > 1), v358 + 1, 1, v356);
        }

        v356[2] = v358 + 1;
        v349 = v456;
        v359 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v458 = v356;
        v355(v356 + v359 + *(v455 + 72) * v358, v453, v456);
        v320 = v447;
      }

      v348 += v457;
      --v353;
    }

    while (v353);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v360 = v441;
    v361 = v442;
    v362 = v436;
  }

  v384 = swift_deallocClassInstance();
  v385 = v445;
  v386 = v446;
  (v449)(v384);
  v387 = *(v362 + 16);
  v387(v360, v386 + v450[10], v361);
  sub_100199AA8(v386, type metadata accessor for TitleHeaderView.Style);
  v388 = *&v385[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v388)
  {
    v389 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v390 = &protocol witness table for UIView;
  }

  else
  {
    v389 = 0;
    v390 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  *&v494 = v388;
  *(&v495 + 1) = v389;
  v496 = v390;
  v391 = v446;
  v392 = v449;
  v449();
  v393 = v450;
  v394 = *(v391 + v450[14]);
  v395 = v388;
  sub_100199AA8(v391, type metadata accessor for TitleHeaderView.Style);
  v492 = &type metadata for CGFloat;
  v493 = &protocol witness table for CGFloat;
  v491[0] = v394;
  v396 = (v387)(v414, v441, v442);
  v397 = v413;
  (v392)(v396);
  (*(v415 + 16))(v417, v397 + v393[11], v416);
  sub_100199AA8(v397, type metadata accessor for TitleHeaderView.Style);
  (*(v421 + 104))(v420, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v423);
  v398 = v418;
  sub_100763B7C();
  v399 = v424;
  sub_100763B8C();

  (*(v425 + 8))(v399, v426);
  (*(v419 + 8))(v398, v422);
  (*(v436 + 8))(v441, v442);
  (*(v455 + 8))(v440, v456);
  sub_10000CFBC(v439, &unk_10094BB20, &unk_10079AAD0);
  sub_10000CFBC(v443, &unk_10094BB20, &unk_10079AAD0);
}

id sub_100194D24()
{
  v1 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1000167E0(v6, v7);
  v8 = type metadata accessor for Accessory(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_100199B50(v3, &v0[v9]);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    [v11 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v12 = *&v0[v10];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v0[v10];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  *&v0[v10] = 0;

  v14 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView;
    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView];

    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v0[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v0[v16] = 0;
  }

  *&v0[v14] = 0;

  sub_100190668(v15);

  v19 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork];
  if (v20)
  {
    v21 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView;
    v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView];

    if (v22)
    {
      [v22 removeFromSuperview];
      v23 = *&v0[v21];
    }

    else
    {
      v23 = 0;
    }

    *&v0[v21] = 0;
  }

  *&v0[v19] = 0;

  sub_1001903C8(v20);

  v24 = &v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  v26 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8];
  if (v25)
  {
    v27 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel;
    v28 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel];

    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *&v0[v27];
    }

    else
    {
      v29 = 0;
    }

    *&v0[v27] = 0;
  }

  *v24 = 0;
  *(v24 + 1) = 0;

  sub_10018FE28(v26, v25);

  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] setText:0];
}

void sub_100195104()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_10076FF9C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10076FF9C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10076FF9C();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_10000A5D4(&unk_100943470, &qword_10078C740);
      swift_arrayDestroy();
      sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      sub_10003BCA8();
      sub_10076FEFC();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10049D954(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_10049D954((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100195570()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007701BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10000A5D4(&unk_1009434B0, &unk_100785550);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100783DD0;
    *(v3 + 56) = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1001956CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100195878(uint64_t a1, __n128 a2)
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v2 <= 0x3F)
  {
    sub_100195E9C(319, &qword_10094B950, type metadata accessor for Accessory);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001959F0(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
{
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_10:

    return v10(v11, a2, v9);
  }

  v12 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = a3[6];
LABEL_9:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_10;
  }

  v15 = sub_100763BAC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = a3[10];
    goto LABEL_9;
  }

  v16 = sub_100763BBC();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v13 = *(v16 - 8);
    v14 = a3[11];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[13]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100195BCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_100763BAC();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_100763BBC();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100195D70(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_100195E9C(319, &qword_10094B9C8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v2 <= 0x3F)
    {
      sub_100763BAC();
      if (v3 <= 0x3F)
      {
        sub_100763BBC();
        if (v4 <= 0x3F)
        {
          sub_100195EF0(319);
          if (v5 <= 0x3F)
          {
            sub_100016F40(319, &qword_100942F10, UIColor_ptr);
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

void sub_100195E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100195EF0(uint64_t a1)
{
  if (!qword_10094B9D0[0])
  {
    sub_100016F40(255, &qword_100942F10, UIColor_ptr);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, qword_10094B9D0);
    }
  }
}

uint64_t sub_100195F7C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10076D3DC();
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
      v13 = sub_10076D9AC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001960B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10076D3DC();
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
      v13 = sub_10076D9AC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001961D8(uint64_t a1)
{
  sub_100016F40(319, &qword_100942F10, UIColor_ptr);
  if (v1 <= 0x3F)
  {
    sub_1001962D4();
    if (v2 <= 0x3F)
    {
      sub_10076D3DC();
      if (v3 <= 0x3F)
      {
        sub_10076D9AC();
        if (v4 <= 0x3F)
        {
          sub_100196324();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001962D4()
{
  if (!qword_100950F90)
  {
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_100950F90);
    }
  }
}

unint64_t sub_100196324()
{
  result = qword_10094BAA0;
  if (!qword_10094BAA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10094BAA0);
  }

  return result;
}

unint64_t sub_10019638C()
{
  result = qword_10094BAF0;
  if (!qword_10094BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BAF0);
  }

  return result;
}

id sub_1001963E0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  v330 = a6;
  v331 = a8;
  v290 = a7;
  v327 = a1;
  v328 = a5;
  v326 = a4;
  v299 = a3;
  v336 = a2;
  v323 = a9;
  v324 = a10;
  v342 = a20;
  v24 = sub_10076D39C();
  v297 = *(v24 - 8);
  v298 = v24;
  __chkstk_darwin(v24);
  v296 = v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_10076D1AC();
  v293 = *(v295 - 8);
  __chkstk_darwin(v295);
  v292 = v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_10076D9AC();
  v352 = *(v337 - 8);
  __chkstk_darwin(v337);
  v294 = v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_100763BCC();
  v318 = *(v320 - 8);
  __chkstk_darwin(v320);
  v319 = v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100763BBC();
  v315 = *(v29 - 8);
  v316 = v29;
  __chkstk_darwin(v29);
  v317 = v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100763BAC();
  v312 = *(v31 - 8);
  v313 = v31;
  __chkstk_darwin(v31);
  v314 = v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_100763BFC();
  v325 = *(v322 - 8);
  __chkstk_darwin(v322);
  v321 = v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100763BEC();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v304 = v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v349 = v289 - v38;
  __chkstk_darwin(v39);
  v348 = v289 - v40;
  __chkstk_darwin(v41);
  v340 = v289 - v42;
  v43 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v43 - 8);
  v302 = v289 - v44;
  v45 = sub_10076997C();
  v333 = *(v45 - 8);
  v334 = v45;
  __chkstk_darwin(v45);
  v332 = v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10075D78C();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v289 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v301 = *(v51 - 1);
  __chkstk_darwin(v51);
  v341 = v289 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v305 = v289 - v54;
  __chkstk_darwin(v55);
  v57 = (v289 - v56);
  v58 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  v59 = *(v58 - 8);
  v310 = v58;
  v311 = v59;
  __chkstk_darwin(v58);
  v291 = v289 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v345 = v289 - v62;
  __chkstk_darwin(v63);
  v344 = v289 - v64;
  __chkstk_darwin(v65);
  v303 = v289 - v66;
  __chkstk_darwin(v67);
  v347 = v289 - v68;
  __chkstk_darwin(v69);
  v346 = v289 - v70;
  __chkstk_darwin(v71);
  v339 = (v289 - v72);
  __chkstk_darwin(v73);
  v300 = v289 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = (v289 - v77);
  v329 = a22;
  v79 = [a22 traitCollection];
  v350 = v34;
  v351 = v35;
  v338 = v78;
  v343 = v51;
  v335 = v79;
  v307 = v47;
  v308 = v50;
  v309 = v48;
  if (!v336)
  {
    v93 = *(v35 + 56);
    v93(v78, 1, 1, v34);
    goto LABEL_23;
  }

  v80 = v342;
  sub_100199C28(v342, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v81 = sub_100770B3C();
  *&v388 = v327;
  *(&v388 + 1) = v336;

  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v81 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v306 = v57;
  if (!v299)
  {
    goto LABEL_15;
  }

  v289[1] = v84;

  sub_10076BE2C();
  v87 = v337;
  if (v88 && (v89 = [objc_opt_self() configurationWithFont:v81], v90 = sub_10076FF6C(), , v91 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v90, v89), v90, v89, v51 = v343, v91))
  {
    [v91 size];
    sub_10076DDDC();
    swift_allocObject();
    v92 = sub_10076DDBC();
  }

  else
  {
    v94 = v51[6];
    v95 = sub_10076D3DC();
    v96 = v292;
    (*(*(v95 - 8) + 16))(v292, v80 + v94, v95);
    v97 = v293;
    v98 = v295;
    (*(v293 + 104))(v96, enum case for FontSource.useCase(_:), v295);
    *(&v389 + 1) = v98;
    v390 = &protocol witness table for FontSource;
    v99 = sub_10000DB7C(&v388);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v294;
    sub_10076D9BC();
    (*(v97 + 8))(v96, v98);
    sub_10076D99C();
    sub_10076BEFC();
    v101 = v296;
    sub_10076D3AC();
    sub_10076D31C();

    (*(v297 + 8))(v101, v298);
    (*(v352 + 8))(v100, v87);
    sub_10076DDDC();
    swift_allocObject();
    v92 = sub_10076DDBC();
  }

  if (v92)
  {
    *(&v389 + 1) = sub_10076DDDC();
    v390 = &protocol witness table for LayoutViewPlaceholder;
    v299 = v92;
    *&v388 = v92;
  }

  else
  {
LABEL_15:
    v299 = 0;
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
  }

  v387 = 0;
  v385 = 0u;
  v386 = 0u;
  v384 = 0;
  v382 = 0u;
  v383 = 0u;
  v102 = sub_10076C04C();
  v380 = v102;
  v381 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_10000DB7C(v379);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v81;

  v57 = v104;
  sub_10076C90C();
  sub_10000CD74(v379);
  v105 = v332;
  sub_10076996C();
  sub_10076994C();
  (*(v333 + 8))(v105, v334);
  sub_100016E2C(&v388, v378, &unk_10094DA00, &qword_100783FA0);
  v106 = v380;
  v107 = v381;
  v108 = sub_10000CF78(v379, v380);
  v376 = v106;
  v377 = *(v107 + 8);
  v109 = sub_10000DB7C(v375);
  (*(*(v106 - 8) + 16))(v109, v108, v106);
  v110 = v343;
  v111 = v306;
  v112 = *(v306 + v343[8]);
  v373 = &type metadata for Float;
  v374 = &protocol witness table for Float;
  v372 = v112;
  v113 = v343[9];
  v114 = v337;
  v370 = v337;
  v371 = &protocol witness table for StaticDimension;
  v115 = sub_10000DB7C(v369);
  v116 = *(v352 + 16);
  v116(v115, v111 + v113, v114);
  v117 = v110[10];
  v367 = v114;
  v368 = &protocol witness table for StaticDimension;
  v118 = sub_10000DB7C(v366);
  v116(v118, v111 + v117, v114);
  sub_100016E2C(&v385, &v360, &qword_10094BB30, qword_100796E40);
  v119 = *(&v361 + 1);
  if (*(&v361 + 1))
  {
    v120 = v362;
    v121 = sub_10000CF78(&v360, *(&v361 + 1));
    *(&v364 + 1) = v119;
    v365 = *(v120 + 8);
    v122 = sub_10000DB7C(&v363);
    (*(*(v119 - 8) + 16))(v122, v121, v119);
    sub_10000CD74(&v360);
  }

  else
  {
    sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
    v363 = 0u;
    v364 = 0u;
    v365 = 0;
  }

  v123 = v300;
  sub_100016E2C(&v382, v357, &qword_10094BB30, qword_100796E40);
  v124 = v358;
  v47 = v307;
  if (v358)
  {
    v125 = v359;
    v126 = sub_10000CF78(v357, v358);
    *(&v361 + 1) = v124;
    v362 = *(v125 + 8);
    v127 = sub_10000DB7C(&v360);
    (*(*(v124 - 8) + 16))(v127, v126, v124);
    sub_10000CD74(v357);
  }

  else
  {
    sub_10000CFBC(v357, &qword_10094BB30, qword_100796E40);
    v360 = 0u;
    v361 = 0u;
    v362 = 0;
  }

  v128 = v343;
  v129 = v306;
  sub_10000A570(v306 + v343[12], v357);
  sub_10000A570(v129 + v128[13], v356);
  v355 = &protocol witness table for Double;
  v354 = &type metadata for Double;
  v353 = 0x4020000000000000;
  sub_100763BDC();

  sub_10000CFBC(&v382, &qword_10094BB30, qword_100796E40);
  v51 = v128;
  sub_10000CFBC(&v385, &qword_10094BB30, qword_100796E40);
  sub_100199AA8(v129, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CD74(v379);

  sub_10000CFBC(&v388, &unk_10094DA00, &qword_100783FA0);
  v34 = v350;
  v93 = *(v351 + 56);
  v93(v123, 0, 1, v350);
  sub_100023AD0(v123, v338, &unk_10094BB20, &unk_10079AAD0);
LABEL_23:
  v130 = v337;
  v131 = v328;
  if (!v331)
  {
LABEL_26:
    v93(v339, 1, 1, v34);
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
    v385 = 0u;
    v386 = 0u;
    v387 = 0;
    goto LABEL_41;
  }

  v132 = v47;
  v57 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v302;
  sub_100016E2C(v342 + v57[6], v302, &qword_100949718, &unk_10078CE10);
  if ((*(v301 + 48))(v133, 1, v51) == 1)
  {
    sub_10000CFBC(v133, &qword_100949718, &unk_10078CE10);
    v47 = v132;
    goto LABEL_26;
  }

  sub_100199BC0(v133, v305, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v336 = sub_100770B3C();
  *&v388 = v290;
  *(&v388 + 1) = v331;

  v134 = v308;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v136 = v135;
  (*(v309 + 8))(v134, v132);

  if (v136)
  {
LABEL_31:
    if (*(v342 + v57[9]) == 2)
    {
      v306 = a18;
      v327 = a17;
      v140 = sub_10076C04C();
      *(&v389 + 1) = v140;
      v302 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v390 = v302;
      v141 = sub_10000DB7C(&v388);
      LODWORD(v301) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v142 = *(*(v140 - 8) + 104);
      v142(v141);
      v143 = v336;

      v144 = v143;
      sub_10076C90C();
      sub_10000CD74(&v388);
      v145 = v332;
      sub_10076996C();
      sub_10076994C();
      v336 = v93;
      v146 = v334;
      v147 = *(v333 + 8);
      v147(v145, v334);
      *(&v386 + 1) = v140;
      v387 = v302;
      v148 = sub_10000DB7C(&v385);
      (v142)(v148, v301, v140);
      v130 = v337;

      v149 = v144;
      v57 = sub_10076C90C();
      sub_10000CD74(&v385);
      sub_10076996C();
      sub_10076994C();

      v147(v145, v146);
      v131 = v328;
      sub_100199AA8(v305, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v336)(v339, 1, 1, v350);
      v51 = v343;
    }

    else
    {
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v387 = 0;
      v385 = 0u;
      v386 = 0u;
      v384 = 0;
      v382 = 0u;
      v383 = 0u;
      v150 = sub_10076C04C();
      v380 = v150;
      v381 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v151 = sub_10000DB7C(v379);
      (*(*(v150 - 8) + 104))(v151, enum case for Feature.measurement_with_labelplaceholder(_:), v150);

      v152 = v336;
      sub_10076C90C();
      sub_10000CD74(v379);
      v153 = v332;
      v336 = v152;
      sub_10076996C();
      sub_10076994C();
      (*(v333 + 8))(v153, v334);
      sub_100016E2C(&v388, v378, &unk_10094DA00, &qword_100783FA0);
      v154 = v380;
      v155 = v381;
      v156 = sub_10000CF78(v379, v380);
      v376 = v154;
      v377 = *(v155 + 8);
      v157 = sub_10000DB7C(v375);
      (*(*(v154 - 8) + 16))(v157, v156, v154);
      v158 = v343;
      v159 = v305;
      v160 = *(v305 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v160;
      v161 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v162 = sub_10000DB7C(v369);
      v163 = v130;
      v164 = *(v352 + 16);
      v164(v162, v159 + v161, v163);
      v165 = v158[10];
      v367 = v163;
      v368 = &protocol witness table for StaticDimension;
      v166 = sub_10000DB7C(v366);
      v164(v166, v159 + v165, v163);
      sub_100016E2C(&v385, &v360, &qword_10094BB30, qword_100796E40);
      v167 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v168 = v362;
        v169 = sub_10000CF78(&v360, *(&v361 + 1));
        *(&v364 + 1) = v167;
        v365 = *(v168 + 8);
        v170 = sub_10000DB7C(&v363);
        (*(*(v167 - 8) + 16))(v170, v169, v167);
        sub_10000CD74(&v360);
      }

      else
      {
        sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v171 = v351;
      sub_100016E2C(&v382, v357, &qword_10094BB30, qword_100796E40);
      v172 = v358;
      if (v358)
      {
        v173 = v359;
        v174 = sub_10000CF78(v357, v358);
        *(&v361 + 1) = v172;
        v362 = *(v173 + 8);
        v175 = sub_10000DB7C(&v360);
        (*(*(v172 - 8) + 16))(v175, v174, v172);
        sub_10000CD74(v357);
      }

      else
      {
        sub_10000CFBC(v357, &qword_10094BB30, qword_100796E40);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v51 = v343;
      v176 = v305;
      sub_10000A570(v305 + v343[12], v357);
      sub_10000A570(v176 + v51[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      v177 = v339;
      sub_100763BDC();
      sub_10000CFBC(&v382, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(&v385, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(&v388, &unk_10094DA00, &qword_100783FA0);
      sub_100199AA8(v176, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000CD74(v379);

      v178 = *(v171 + 56);
      v57 = (v171 + 56);
      v178(v177, 0, 1, v350);
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v385 = 0u;
      v386 = 0u;
      v387 = 0;
      v130 = v337;
      v131 = v328;
    }

    v47 = v307;
LABEL_41:
    v336 = type metadata accessor for TitleHeaderView.Style(0);
    v328 = (v342 + v336[5]);
    sub_100199C28(v328, v341, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v331 = sub_100770B3C();
    if (!v131)
    {
      goto LABEL_49;
    }

    v179 = v130;
    v48 = v326;
    *&v382 = v326;
    *(&v382 + 1) = v131;

    v50 = v308;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v181 = v180;
    (*(v309 + 8))(v50, v47);

    if (v181)
    {
LABEL_48:
      v130 = v179;
      if (!v330)
      {
        goto LABEL_56;
      }

LABEL_49:
      v327 = a19;

      sub_10076BE2C();
      if (v184 && (v185 = [objc_opt_self() configurationWithFont:v331], v186 = sub_10076FF6C(), , v187 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v186, v185), v186, v51 = v343, v185, v187))
      {
        [v187 size];
        sub_10076DDDC();
        swift_allocObject();
        v188 = sub_10076DDBC();
      }

      else
      {
        v189 = v130;
        v190 = v328;
        v191 = v51[6];
        v192 = sub_10076D3DC();
        v193 = v190 + v191;
        v130 = v189;
        v194 = v292;
        (*(*(v192 - 8) + 16))(v292, v193, v192);
        v195 = v293;
        v196 = v295;
        (*(v293 + 104))(v194, enum case for FontSource.useCase(_:), v295);
        *(&v383 + 1) = v196;
        v384 = &protocol witness table for FontSource;
        v197 = sub_10000DB7C(&v382);
        (*(v195 + 16))(v197, v194, v196);

        v198 = v294;
        sub_10076D9BC();
        (*(v195 + 8))(v194, v196);
        sub_10076D99C();
        sub_10076BEFC();
        v199 = v296;
        sub_10076D3AC();
        sub_10076D31C();

        (*(v297 + 8))(v199, v298);
        (*(v352 + 8))(v198, v130);
        sub_10076DDDC();
        swift_allocObject();
        v188 = sub_10076DDBC();
      }

      if (v188)
      {
        v200 = sub_10076DDDC();
        v384 = &protocol witness table for LayoutViewPlaceholder;
        *(&v383 + 1) = v200;
        v330 = v188;
        *&v382 = v188;
      }

      else
      {
LABEL_56:
        v330 = 0;
        v384 = 0;
        v382 = 0u;
        v383 = 0u;
      }

      v201 = sub_10076C04C();
      v380 = v201;
      v381 = sub_100199B08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v202 = sub_10000DB7C(v379);
      (*(*(v201 - 8) + 104))(v202, enum case for Feature.measurement_with_labelplaceholder(_:), v201);

      v203 = v331;
      sub_10076C90C();
      sub_10000CD74(v379);
      v204 = v332;
      v331 = v203;
      sub_10076996C();
      sub_10076994C();
      (*(v333 + 8))(v204, v334);
      sub_100016E2C(&v382, v378, &unk_10094DA00, &qword_100783FA0);
      v205 = v380;
      v206 = v381;
      v207 = sub_10000CF78(v379, v380);
      v376 = v205;
      v377 = *(v206 + 8);
      v208 = sub_10000DB7C(v375);
      (*(*(v205 - 8) + 16))(v208, v207, v205);
      v209 = v343;
      v210 = v341;
      v211 = *(v341 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v211;
      v212 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v213 = sub_10000DB7C(v369);
      v214 = *(v352 + 16);
      v214(v213, v210 + v212, v130);
      v215 = v209[10];
      v367 = v130;
      v368 = &protocol witness table for StaticDimension;
      v216 = sub_10000DB7C(v366);
      v214(v216, v210 + v215, v130);
      sub_100016E2C(&v388, &v360, &qword_10094BB30, qword_100796E40);
      v217 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v218 = v362;
        v219 = sub_10000CF78(&v360, *(&v361 + 1));
        *(&v364 + 1) = v217;
        v365 = *(v218 + 8);
        v220 = sub_10000DB7C(&v363);
        (*(*(v217 - 8) + 16))(v220, v219, v217);
        sub_10000CD74(&v360);
      }

      else
      {
        sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v221 = v344;
      v222 = v342;
      sub_100016E2C(&v385, v357, &qword_10094BB30, qword_100796E40);
      v223 = v358;
      if (v358)
      {
        v224 = v359;
        v225 = sub_10000CF78(v357, v358);
        *(&v361 + 1) = v223;
        v362 = *(v224 + 8);
        v226 = sub_10000DB7C(&v360);
        (*(*(v223 - 8) + 16))(v226, v225, v223);
        sub_10000CD74(v357);
      }

      else
      {
        sub_10000CFBC(v357, &qword_10094BB30, qword_100796E40);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v227 = v345;
      v228 = v343;
      v229 = v341;
      sub_10000A570(v341 + v343[12], v357);
      sub_10000A570(v229 + v228[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      sub_100763BDC();
      sub_10000CD74(v379);
      sub_10000CFBC(&v382, &unk_10094DA00, &qword_100783FA0);
      v230 = *(v222 + v336[9]);
      sub_10000A5D4(&qword_10094BB38, &unk_100791CD0);
      v352 = *(v311 + 72);
      v231 = (*(v311 + 80) + 32) & ~*(v311 + 80);
      if (v230)
      {
        if (v230 != 1)
        {
          v259 = v352;
          v337 = swift_allocObject();
          v260 = v337 + v231;
          sub_100016E2C(v338, v337 + v231, &unk_10094BB20, &unk_10079AAD0);
          v261 = v350;
          v262 = v351;
          (*(v351 + 16))(v260 + v259, v340, v350);
          (*(v262 + 56))(v260 + v259, 0, 1, v261);
          v263 = v303;
          sub_100016E2C(v260, v303, &unk_10094BB20, &unk_10079AAD0);
          v264 = v291;
          sub_100023AD0(v263, v291, &unk_10094BB20, &unk_10079AAD0);
          v265 = *(v262 + 48);
          v266 = (v262 + 32);
          v267 = v265(v264, 1, v261);
          v349 = (v262 + 32);
          if (v267 == 1)
          {
            sub_10000CFBC(v264, &unk_10094BB20, &unk_10079AAD0);
            v268 = _swiftEmptyArrayStorage;
          }

          else
          {
            v269 = *v266;
            (*v266)(v304, v264, v261);
            v268 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v268 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v271 = *(v268 + 2);
            v270 = *(v268 + 3);
            if (v271 >= v270 >> 1)
            {
              v268 = sub_10049E330((v270 > 1), v271 + 1, 1, v268);
            }

            *(v268 + 2) = v271 + 1;
            v272 = &v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v271];
            v261 = v350;
            v269(v272, v304, v350);
            v264 = v291;
          }

          v273 = v303;
          sub_100016E2C(v260 + v352, v303, &unk_10094BB20, &unk_10079AAD0);
          sub_100023AD0(v273, v264, &unk_10094BB20, &unk_10079AAD0);
          if (v265(v264, 1, v261) == 1)
          {
            sub_10000CFBC(v264, &unk_10094BB20, &unk_10079AAD0);
            v258 = v342;
            v57 = v338;
          }

          else
          {
            v274 = v261;
            v275 = *v349;
            (*v349)(v304, v264, v274);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v258 = v342;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v268 = sub_10049E330(0, *(v268 + 2) + 1, 1, v268);
            }

            v57 = v338;
            v278 = *(v268 + 2);
            v277 = *(v268 + 3);
            if (v278 >= v277 >> 1)
            {
              v268 = sub_10049E330((v277 > 1), v278 + 1, 1, v268);
            }

            *(v268 + 2) = v278 + 1;
            v275(&v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v278], v304, v350);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v47 = v321;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            *&v383 = 0;
            *(&v382 + 1) = 0;
          }

          else
          {
            v280 = sub_10076DDDC();
            swift_allocObject();
            v279 = sub_10076DDBC();
            v281 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v382 = v279;
          *(&v383 + 1) = v280;
          v384 = v281;
          sub_100016E2C(&v382, v379, &unk_10094DA00, &qword_100783FA0);
          v282 = v336;
          v283 = *(v258 + v336[14]);
          v378[3] = &type metadata for CGFloat;
          v378[4] = &protocol witness table for CGFloat;
          v378[0] = v283;
          (*(v312 + 16))(v314, v258 + v336[10], v313);
          (*(v315 + 16))(v317, v258 + v282[11], v316);
          (*(v318 + 104))(v319, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v320);
          sub_100763B7C();
          sub_100770ACC();
          sub_100199B08(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
          v48 = v322;
          sub_10076D2AC();
          v379[0] = v284;
          v379[1] = v285;
          sub_100770ADC();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v325 + 8))(v47, v48);
            (*(v351 + 8))(v340, v350);
            sub_100199AA8(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v385, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(&v388, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(v339, &unk_10094BB20, &unk_10079AAD0);
            sub_10000CFBC(v57, &unk_10094BB20, &unk_10079AAD0);
            return sub_10000CFBC(&v382, &unk_10094DA00, &qword_100783FA0);
          }

          v286 = v350;
          v51 = v351;
          v50 = v335;
          if (qword_10093FC38 != -1)
          {
            swift_once();
          }

          v287 = sub_10000A61C(v343, qword_10099DF58);
          if (sub_10019942C(v328, v287))
          {

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v286);
            sub_100199AA8(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v385, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(&v388, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(v339, &unk_10094BB20, &unk_10079AAD0);
            sub_10000CFBC(v57, &unk_10094BB20, &unk_10079AAD0);
            return sub_10000CFBC(&v382, &unk_10094DA00, &qword_100783FA0);
          }

          if (qword_10093FC40 == -1)
          {
LABEL_111:
            v288 = sub_10000A61C(v343, qword_10099DF70);
            sub_10019942C(v328, v288);

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v350);
            sub_100199AA8(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000CFBC(&v385, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(&v388, &qword_10094BB30, qword_100796E40);
            sub_10000CFBC(v339, &unk_10094BB20, &unk_10079AAD0);
            sub_10000CFBC(v57, &unk_10094BB20, &unk_10079AAD0);
            return sub_10000CFBC(&v382, &unk_10094DA00, &qword_100783FA0);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v232 = v352;
        v337 = swift_allocObject();
        v233 = v337 + v231;
        sub_100016E2C(v338, v337 + v231, &unk_10094BB20, &unk_10079AAD0);
        v235 = v350;
        v234 = v351;
        (*(v351 + 16))(v233 + v232, v340, v350);
        v236 = *(v234 + 56);
        v234 += 56;
        v236(v233 + v232, 0, 1, v235);
        sub_100016E2C(v339, v233 + 2 * v232, &unk_10094BB20, &unk_10079AAD0);
        v237 = (v234 - 8);
        v348 = (v234 - 24);
        v238 = v235;
        v239 = _swiftEmptyArrayStorage;
        v240 = 3;
        v346 = v233;
        do
        {
          v241 = v347;
          sub_100016E2C(v233, v347, &unk_10094BB20, &unk_10079AAD0);
          sub_100023AD0(v241, v227, &unk_10094BB20, &unk_10079AAD0);
          if ((*v237)(v227, 1, v238) == 1)
          {
            sub_10000CFBC(v227, &unk_10094BB20, &unk_10079AAD0);
          }

          else
          {
            v242 = *v348;
            (*v348)(v349, v227, v238);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_10049E330(0, *(v239 + 2) + 1, 1, v239);
            }

            v244 = *(v239 + 2);
            v243 = *(v239 + 3);
            if (v244 >= v243 >> 1)
            {
              v239 = sub_10049E330((v243 > 1), v244 + 1, 1, v239);
            }

            *(v239 + 2) = v244 + 1;
            v238 = v350;
            v242(&v239[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v244], v349, v350);
            v227 = v345;
          }

          v233 += v352;
          --v240;
        }

        while (v240);
      }

      else
      {
        v245 = v352;
        v246 = 2 * v352;
        v337 = swift_allocObject();
        v247 = v351;
        v248 = v337 + v231;
        sub_100016E2C(v338, v337 + v231, &unk_10094BB20, &unk_10079AAD0);
        sub_100016E2C(v339, v248 + v245, &unk_10094BB20, &unk_10079AAD0);
        v249 = v350;
        (*(v247 + 16))(v248 + v246, v340, v350);
        (*(v247 + 56))(v248 + v246, 0, 1, v249);
        v250 = (v247 + 48);
        v349 = (v247 + 32);
        v251 = v249;
        v252 = _swiftEmptyArrayStorage;
        v253 = 3;
        v347 = v248;
        do
        {
          v254 = v346;
          sub_100016E2C(v248, v346, &unk_10094BB20, &unk_10079AAD0);
          sub_100023AD0(v254, v221, &unk_10094BB20, &unk_10079AAD0);
          if ((*v250)(v221, 1, v251) == 1)
          {
            sub_10000CFBC(v221, &unk_10094BB20, &unk_10079AAD0);
          }

          else
          {
            v255 = *v349;
            (*v349)(v348, v221, v251);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_10049E330(0, *(v252 + 2) + 1, 1, v252);
            }

            v257 = *(v252 + 2);
            v256 = *(v252 + 3);
            if (v257 >= v256 >> 1)
            {
              v252 = sub_10049E330((v256 > 1), v257 + 1, 1, v252);
            }

            *(v252 + 2) = v257 + 1;
            v251 = v350;
            v255(&v252[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v257], v348, v350);
            v221 = v344;
          }

          v248 += v352;
          --v253;
        }

        while (v253);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v258 = v342;
      v57 = v338;
      goto LABEL_100;
    }

    [v331 lineHeight];
    v183 = ceil(v182 * 1.3);
    if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v183 > -9.22337204e18)
      {
        if (v183 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v336 lineHeight];
  v139 = ceil(v138 * 1.3);
  if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v139 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v139 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}