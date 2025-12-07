void sub_1EF770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3C00D8, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3C0150, &unk_3C0178, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3C00D8, &unk_3C0100, sub_219B84, &block_descriptor_600, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ShowListPresenter, &qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
    sub_308FB8();
    sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F03D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BFBD8, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BFC50, &unk_3BFC78, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BFBD8, &unk_3BFC00, sub_219B84, &block_descriptor_424, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
    sub_309AA8();
    sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F1040()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BFD18, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BFD90, &unk_3BFDB8, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BFD18, &unk_3BFD40, sub_219B84, &block_descriptor_468, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for StorePagePresenter, &qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
    sub_309358();
    sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F1CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BFA20, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BFA98, &unk_3BFAC0, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BFA20, &unk_3BFA48, sub_219B84, &block_descriptor_371, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LongDescriptionPresenter, &qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
    sub_30A738();
    sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F2910()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF8E0, sub_219194);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF958, &unk_3BF980, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF8E0, &unk_3BF908, sub_219170, &block_descriptor_327, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for HomePagePresenter, &qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
    sub_308E08();
    sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F3578()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF7A0, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF818, &unk_3BF840, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF7A0, &unk_3BF7C8, sub_219B84, &block_descriptor_283, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LibraryPresenter, &qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
    sub_308BE8();
    sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F41E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF660, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF6D8, &unk_3BF700, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF660, &unk_3BF688, sub_219B84, &block_descriptor_239, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for HighlightsPresenter, &qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
    sub_309408();
    sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F4E48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3C0358, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3C03D0, &unk_3C03F8, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3C0358, &unk_3C0380, sub_219B84, &block_descriptor_688, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
    sub_30A558();
    sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F5AB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF520, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF598, &unk_3BF5C0, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF520, &unk_3BF548, sub_219B84, &block_descriptor_195, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for CategoryListPresenter, &qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
    sub_309CB8();
    sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F6718()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF3E0, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF458, &unk_3BF480, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF3E0, &unk_3BF408, sub_219B84, &block_descriptor_151, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ChannelListPresenter, &qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter);
    sub_3099E8();
    sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F7380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF2A0, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF318, &unk_3BF340, sub_B4A60, sub_B4A5C, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF2A0, &unk_3BF2C8, sub_219B84, &block_descriptor_107, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ChannelPresenter, &qword_409050, &type metadata accessor for ChannelPresenter, &protocol conformance descriptor for ChannelPresenter);
    sub_308B68();
    sub_218910(&qword_409050, &type metadata accessor for ChannelPresenter, &protocol conformance descriptor for ChannelPresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void sub_1F7FE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058, &unk_32C5D0);
  __chkstk_darwin(v2 - 8);
  v4 = v88 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = _UISolariumEnabled();
  v95 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v95;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v95[qword_400ED0];
    if (v22)
    {
      v94 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058, &unk_32C5D0);
        v21 = v95;
        v59 = [v95 traitCollection];
        v60 = sub_30C968();

        if ((v60 & 1) == 0)
        {
          v61 = [v21 navigationItem];
          [v61 setRightBarButtonItems:0];

          v62 = *&v94[v21];
          if (!v62 || !*(v62 + 16))
          {
LABEL_20:
            v29 = [v21 navigationItem];
            v30 = [v21 navigationController];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 navigationBar];

              v33 = [v32 _backdropViewLayerGroupName];
              if (v33)
              {
                v34 = sub_30C0D8();
                v36 = v35;

                v30 = v34;
                goto LABEL_25;
              }

              v30 = 0;
            }

            v36 = 0;
LABEL_25:
            sub_B42D4(v30, v36);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v63 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v62, v63);
          v28.super.isa = [v21 navigationItem];
          [(objc_class *)v28.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26, v27);

        sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
        v28.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v28.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v95;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058, &unk_32C5D0);
    goto LABEL_18;
  }

  v88[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v95;
  }

  else
  {
    v16 = 0;
  }

  v40 = qword_400ED8;
  v1[qword_400ED8] = v16;
  v41 = sub_1FA488(&unk_3BF138, sub_219B80);
  v42 = *&v1[qword_400EE0];
  if (v42)
  {
    *(v42 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v40];
  }

  v43 = [v1 navigationItem];
  v44 = [v43 trailingItemGroups];

  v88[0] = sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v45 = sub_30C368();

  v89 = v45;
  if (v45 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v47 = 0;
    v48 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = i;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v49 = sub_30D578();
      }

      else
      {
        if (v47 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v49 = *(v91 + 8 * v47);
      }

      v50 = v49;
      v51 = __OFADD__(v47++, 1);
      if (v51)
      {
        break;
      }

      v52 = [v49 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v53 = sub_30C368();

      v94 = v50;
      if (v53 >> 62)
      {
        v54 = sub_30D668();
        if (v54)
        {
LABEL_41:
          v55 = 0;
          while (1)
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v56 = sub_30D578();
            }

            else
            {
              if (v55 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v56 = *(v53 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            [v56 setHidden:v95[v48]];

            ++v55;
            if (v58 == v54)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (v54)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v47 == v90)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v64 = v95;
  v65 = [v95 navigationItem];

  sub_1F913C(v66, &unk_3BF1D8, &unk_3BF200, sub_B46AC, sub_B46B4, v67);

  isa = sub_30C358().super.isa;

  [v65 setTrailingItemGroups:isa];

  v69 = [v64 navigationItem];
  v70 = [v69 trailingItemGroups];

  v71 = sub_30C368();
  v89 = v71;
  if (v71 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v73 = 0;
    v74 = qword_400EE8;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v93 = v89 & 0xC000000000000001;
    v90 = j;
    v91 = v89 + 32;
    while (1)
    {
      if (v93)
      {
        v75 = sub_30D578();
      }

      else
      {
        if (v73 >= *(v92 + 16))
        {
          goto LABEL_87;
        }

        v75 = *(v91 + 8 * v73);
      }

      v76 = v75;
      v51 = __OFADD__(v73++, 1);
      if (v51)
      {
        break;
      }

      v77 = [v75 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v78 = sub_30C368();

      v94 = v76;
      if (v78 >> 62)
      {
        v79 = sub_30D668();
        if (v79)
        {
LABEL_73:
          v80 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v81 = sub_30D578();
            }

            else
            {
              if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v81 = *(v78 + 8 * v80 + 32);
            }

            v82 = v81;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            [v81 setHidden:v95[v74]];

            ++v80;
            if (v83 == v79)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v79 = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
        if (v79)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v73 == v90)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v84 = [v95 navigationItem];

  v87 = sub_1F9AA4(v85, &unk_3BF138, &unk_3BF160, sub_219B84, &block_descriptor_59, v86);

  [v84 setAdditionalOverflowItems:v87];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for CategoryPagePresenter, &unk_408F70, &type metadata accessor for CategoryPagePresenter, &protocol conformance descriptor for CategoryPagePresenter);
    sub_309CE8();
    sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter, &protocol conformance descriptor for CategoryPagePresenter);
    sub_309568();
    sub_304D58();

    v37 = v96;
    v38 = v97;
    v39 = v98 | (v99 << 32);
    sub_1EC9C0(v96, v97, v39);
    sub_BA7E8(v37, v38, v39);
  }
}

void *sub_1F8C50(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    v10 = *(a1 + 16);
    v42 = _swiftEmptyArrayStorage;
    v43 = _swiftEmptyArrayStorage;
    v11 = qword_400D90;
    v12 = v10;
    while (1)
    {
      if (!v12)
      {
        if ((_UISolariumEnabled() & 1) == 0)
        {
          goto LABEL_12;
        }

        return v42;
      }

      v12 = (v12 - 1);
      if (v12 >= v10)
      {
        break;
      }

      sub_218AB0(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8, &type metadata accessor for HeaderButtonItem);
      v13 = *&v3[v11];

      v14 = [v3 traitCollection];
      v15 = [v14 horizontalSizeClass];

      v16 = sub_B1360(v13, v3, v15);

      sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
      if (v16)
      {
        sub_30C348();
        if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        v42 = v43;
      }
    }

    __break(1u);
LABEL_12:
    v43 = _swiftEmptyArrayStorage;
    v17 = v42;
    if (v42 >> 62)
    {
      goto LABEL_30;
    }

    v18 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
LABEL_14:
      v19 = 0;
      v20 = v17 & 0xC000000000000001;
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
      v22 = v10 - 1;
      v38 = xmmword_317F20;
      v40 = v17 & 0xFFFFFFFFFFFFFF8;
      v41 = v18;
      v39 = v10 - 1;
      v37 = v17 & 0xC000000000000001;
      while (1)
      {
        if (v20)
        {
          v23 = sub_30D578();
          v24 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_29;
          }

          v23 = *(v17 + 8 * v19 + 32);
          v24 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            v18 = sub_30D668();
            if (!v18)
            {
              break;
            }

            goto LABEL_14;
          }
        }

        v25 = v23;
        sub_30C348();
        if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        if (v19 >= v22)
        {
          v10 = v43;
        }

        else
        {
          v26 = [objc_allocWithZone(UIView) init];
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          v27 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
          v28 = swift_allocObject();
          *(v28 + 16) = v38;
          v29 = [v26 widthAnchor];
          v30 = [v29 constraintEqualToConstant:0.0];

          *(v28 + 32) = v30;
          v31 = [v26 heightAnchor];
          v32 = [v31 constraintEqualToConstant:1.0];

          *(v28 + 40) = v32;
          sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
          isa = sub_30C358().super.isa;

          [v27 activateConstraints:isa];

          v34 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v26];
          v35 = v34;
          sub_30C348();
          if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_30C378();
          }

          sub_30C3C8();

          v17 = v42;
          v10 = v43;
          v20 = v37;
          v21 = v40;
          v18 = v41;
          v22 = v39;
        }

        ++v19;
        if (v24 == v18)
        {
          goto LABEL_32;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_32:

    return v10;
  }

  return result;
}

void sub_1F913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v82 = a4;
  v83 = a5;
  v81[2] = a3;
  v81[1] = a2;
  v7 = v6;
  v9 = sub_309D48();
  __chkstk_darwin(v9 - 8);
  v88 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = v81 - v12;
  v91 = sub_308BD8();
  v13 = *(v91 - 8);
  __chkstk_darwin(v91);
  v98 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v81 - v16;
  if (!a1)
  {
    return;
  }

  v100 = _swiftEmptyArrayStorage;
  v18 = objc_allocWithZone(UIBarButtonItemGroup);
  v19 = sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
  isa = sub_30C358().super.isa;
  v21 = [v18 initWithBarButtonItems:isa representativeItem:0];

  v96 = *(a1 + 16);
  if (!v96)
  {

    return;
  }

  v22 = 0;
  v23 = qword_400D90;
  v95 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v94 = *(v13 + 72);
  v97 = _swiftEmptyArrayStorage;
  v24 = &selRef_registerImage_withTraitCollection_;
  v25 = &PlayControlsStackView;
  v89 = xmmword_31BF90;
  v92 = v19;
  v93 = qword_400D90;
  while (1)
  {
    sub_218AB0(v95 + v94 * v22, v17, &type metadata accessor for HeaderButtonItem);
    v31 = *&v7[v23];

    v32 = [v7 v24[241]];
    v33 = [v32 *&v25[328]];

    v34 = sub_B1360(v31, v7, v33);
    if (!v34)
    {

      goto LABEL_21;
    }

    v35 = v34;
    sub_218AB0(v17, v98, &type metadata accessor for HeaderButtonItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
        v37 = swift_allocObject();
        *(v37 + 16) = v89;
        *(v37 + 32) = v35;
        v38 = objc_allocWithZone(UIBarButtonItemGroup);
        v39 = v35;
        v40 = sub_30C358().super.isa;

        v41 = [v38 initWithBarButtonItems:v40 representativeItem:0];

        goto LABEL_28;
      }

      sub_218C60(v98, &type metadata accessor for HeaderButtonItem);
LABEL_21:
      v24 = &selRef_registerImage_withTraitCollection_;
      goto LABEL_32;
    }

    v42 = v90;
    sub_218BF8(v98, v90, &type metadata accessor for FollowButtonPresenter.Data);
    v43 = v88;
    sub_218AB0(v42, v88, &type metadata accessor for FollowButtonPresenter.Data);
    v44 = objc_allocWithZone(type metadata accessor for FollowHeaderButton(0));

    v46 = sub_B0774(v45, v43, v33, 0);

    v47 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v46];
    v48 = sub_30C098();
    [v47 setIdentifier:v48];

    if (_UISolariumEnabled())
    {
      v86 = v47;
      v84 = swift_allocObject();
      v85 = v46;
      *(v84 + 16) = v46;
      v87 = v46;
      v49 = [v87 traitCollection];
      v50 = [v49 horizontalSizeClass];

      if (v50 == &dword_0 + 1)
      {
        v51 = 1;
      }

      else
      {
        v52 = [v87 traitCollection];
        v53 = [v52 horizontalSizeClass];

        if (v53 == &dword_0 + 2)
        {
          v47 = v86;
          v54 = v87;
          v51 = v87[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
          v55 = v84;
          v46 = v85;
LABEL_26:
          [v47 setSharesBackground:v51];
          v56 = swift_allocObject();
          v57 = v82;
          v58 = v83;
          v56[2] = v47;
          v56[3] = v57;
          v56[4] = v55;
          v59 = &v54[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
          v60 = *&v54[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
          v61 = *&v54[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate + 8];
          *v59 = v58;
          *(v59 + 1) = v56;
          v62 = v47;
          sub_1EBD0(v60, v61);
          goto LABEL_27;
        }

        v51 = 0;
      }

      v46 = v85;
      v47 = v86;
      v55 = v84;
      v54 = v87;
      goto LABEL_26;
    }

LABEL_27:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
    v63 = swift_allocObject();
    *(v63 + 16) = v89;
    *(v63 + 32) = v35;
    v64 = objc_allocWithZone(UIBarButtonItemGroup);
    v65 = v35;
    v66 = sub_30C358().super.isa;

    v41 = [v64 initWithBarButtonItems:v66 representativeItem:v47];

    sub_218C60(v90, &type metadata accessor for FollowButtonPresenter.Data);
LABEL_28:
    v23 = v93;
    v24 = &selRef_registerImage_withTraitCollection_;
    if (v41)
    {
      v67 = v41;
      sub_30C348();
      if (*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v100 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();

      sub_218C60(v17, &type metadata accessor for HeaderButtonItem);
      v97 = v100;
      goto LABEL_11;
    }

LABEL_32:
    v68 = *&v7[v23];

    v69 = [v7 v24[241]];
    v70 = [v69 horizontalSizeClass];

    v71 = sub_B1360(v68, v7, v70);

    if (v71)
    {
      break;
    }

LABEL_10:
    sub_218C60(v17, &type metadata accessor for HeaderButtonItem);
LABEL_11:
    ++v22;
    v25 = &PlayControlsStackView;
    if (v22 == v96)
    {

      return;
    }
  }

  v72 = v97;
  if (!(v97 >> 62))
  {
    v73 = *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8));
    if (v73)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  v80 = sub_30D668();
  v72 = v97;
  v73 = v80;
  if (!v80)
  {
LABEL_4:
    v26 = v21;
    sub_30C348();
    if (*(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v100 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v97 = v100;
LABEL_7:
    v23 = v93;
    v27 = v71;
    v28 = [v21 barButtonItems];
    v29 = sub_30C368();

    v99 = v29;
    sub_30C348();
    v24 = &selRef_registerImage_withTraitCollection_;
    if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v30 = sub_30C358().super.isa;

    [v21 setBarButtonItems:v30];

    goto LABEL_10;
  }

LABEL_35:
  v74 = 0;
  v75 = v72 & 0xC000000000000001;
  v76 = v72 & 0xFFFFFFFFFFFFFF8;
  v77 = v72 + 32;
  while (1)
  {
    while (v75)
    {
      v78 = sub_30D578();
      if (__OFADD__(v74++, 1))
      {
        goto LABEL_53;
      }

      v87 = v78;
      swift_unknownObjectRelease();
      if (v87 == v21)
      {
        goto LABEL_7;
      }

      if (v74 == v73)
      {
        goto LABEL_4;
      }
    }

    if ((v74 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v74 >= *(v76 + 16))
    {
      goto LABEL_52;
    }

    if (*(v77 + 8 * v74) == v21)
    {
      goto LABEL_7;
    }

    if (++v74 == v73)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

id sub_1F9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v9 = v6;
  v11 = sub_308BD8();
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v33 - v16);
  if (a1)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      v34 = v9;
      v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v20 = *(v15 + 72);
      while (1)
      {
        sub_218AB0(v19, v13, &type metadata accessor for HeaderButtonItem);
        if (sub_308B98())
        {
          break;
        }

        sub_218C60(v13, &type metadata accessor for HeaderButtonItem);
        v19 += v20;
        if (!--v18)
        {
          return 0;
        }
      }

      sub_218BF8(v13, v17, &type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_12658(v17, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640, &qword_317B30);

        sub_30B8E8();

        __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
        v33 = v42;
        v21 = v42;
        v22 = __swift_project_boxed_opaque_existential_1Tm(v41, v42);
        v36 = v33;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);

        v24 = sub_30A8C8();

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        if (v24)
        {
          v25 = objc_opt_self();
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_12670(v40, v39);
          sub_12670(v41, v38);
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          sub_12658(v39, v27 + 24);
          sub_12658(v38, v27 + 64);
          *(&v36 + 1) = a4;
          v37 = v27;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1FA234;
          *&v36 = a5;
          v28 = _Block_copy(aBlock);

          v29 = [v25 elementWithUncachedProvider:v28];
          _Block_release(v28);
          v30 = v29;
          v31 = sub_30C098();
          [v30 setAccessibilityIdentifier:v31];

          __swift_destroy_boxed_opaque_existential_1(v40);
          __swift_destroy_boxed_opaque_existential_1(v41);
          return v30;
        }

        __swift_destroy_boxed_opaque_existential_1(v40);
        __swift_destroy_boxed_opaque_existential_1(v41);
      }

      else
      {
        sub_218C60(v17, &type metadata accessor for HeaderButtonItem);
      }
    }
  }

  return 0;
}

void sub_1F9EF4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v34 = a2;
  v8 = sub_302268();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0, qword_31E160);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_3022E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = a4[3];
    v29[2] = a4[4];
    v30 = a1;
    v29[1] = __swift_project_boxed_opaque_existential_1Tm(a4, v20);
    v31 = *(a5 + 24);
    v21 = v31;
    v22 = __swift_project_boxed_opaque_existential_1Tm(a5, v31);
    v36 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);
    v24 = sub_3022D8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

    v25 = v19;
    sub_3022A8();
    v26 = [v25 view];
    if (v26)
    {
      v27 = v26;
      sub_30CE78();

      v28 = sub_30A878();

      (*(v32 + 8))(v10, v33);
      (*(v15 + 8))(v17, v14);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v30(v28);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1FA234(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_218AA8, v4);

  return result;
}

void sub_1FA2C8(uint64_t a1, uint64_t a2)
{
  sub_124C4(0, &qword_408010, UIMenuElement_ptr);
  isa = sub_30C358().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1FA344(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = v4;
  a1(0);
  sub_218910(a2, a3, a4);
  sub_309568();
  sub_304D58();

  sub_BA7E8(v14, v15, v16 | (v17 << 32));
  if (v17 >> 5 == 3)
  {
    v9 = *&v4[qword_400E20];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 collectionView];
      if (v11)
      {
        v12 = v11;

        v13 = [v8 navigationItem];
        sub_14C6EC(v12, v13);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_1FA488(uint64_t a1, uint64_t a2)
{
  v3 = qword_400ED8;
  if (v2[qword_400ED8] != 1)
  {
    return result;
  }

  v4 = qword_400EE0;
  if (*&v2[qword_400EE0])
  {
    return result;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ConfigurableScrollCoordinator()) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
  v9 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
  v10 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll + 8];
  *v8 = a2;
  *(v8 + 1) = v7;

  sub_1EBD0(v9, v10);

  v11 = *&v2[qword_400DA8];
  v37 = v6;
  sub_17F304(v37, v11);
  v12 = *&v2[v4];
  *&v2[v4] = v37;

  if (v2[v3] == 1)
  {
    v13 = [v2 navigationItem];
    [v13 _manualScrollEdgeAppearanceProgress];
    v15 = v14;

    if (v15 >= 1.0)
    {
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      v16 = &v2[qword_400EE8];
      v34 = v2[qword_400EE8];
      v2[qword_400EE8] = !IsVoiceOverRunning;
      if (v34 != !IsVoiceOverRunning)
      {
        goto LABEL_7;
      }

LABEL_29:

      return result;
    }
  }

  v16 = &v2[qword_400EE8];
  v17 = v2[qword_400EE8];
  v2[qword_400EE8] = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  v18 = [v2 navigationItem];
  v19 = [v18 trailingItemGroups];

  sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v20 = sub_30C368();

  v36 = v20;
  if (v20 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v22 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v23 = sub_30D578();
      }

      else
      {
        if (v22 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v23 = *(v36 + 32 + 8 * v22);
      }

      v24 = v23;
      if (__OFADD__(v22++, 1))
      {
        break;
      }

      v26 = [v23 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v27 = sub_30C368();

      if (v27 >> 62)
      {
        v28 = sub_30D668();
        if (v28)
        {
LABEL_17:
          v29 = 0;
          while (1)
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = sub_30D578();
            }

            else
            {
              if (v29 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_33;
              }

              v30 = *(v27 + 8 * v29 + 32);
            }

            v31 = v30;
            v32 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            [v30 setHidden:*v16];

            ++v29;
            if (v32 == v28)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }
      }

      else
      {
        v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
        if (v28)
        {
          goto LABEL_17;
        }
      }

LABEL_10:

      if (v22 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return result;
}

void sub_1FA8A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if (Strong[qword_400ED8] == 1)
  {
    v4 = [Strong navigationItem];
    [v4 _manualScrollEdgeAppearanceProgress];
    v6 = v5;

    if (v6 >= 1.0)
    {
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      v7 = &v3[qword_400EE8];
      v25 = v3[qword_400EE8];
      v3[qword_400EE8] = !IsVoiceOverRunning;
      if (v25 != !IsVoiceOverRunning)
      {
        goto LABEL_5;
      }

LABEL_27:

      return;
    }
  }

  v7 = &v3[qword_400EE8];
  v8 = v3[qword_400EE8];
  v3[qword_400EE8] = 0;
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_5:
  v9 = [v3 navigationItem];
  v10 = [v9 trailingItemGroups];

  sub_124C4(0, &unk_4019D0, UIBarButtonItemGroup_ptr);
  v11 = sub_30C368();

  v26 = v3;
  v27 = v11;
  if (v11 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v13 = 0;
    v28 = i;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v14 = sub_30D578();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v14 = *(v27 + 32 + 8 * v13);
      }

      v15 = v14;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v17 = [v14 barButtonItems];
      sub_124C4(0, &unk_409000, UIBarButtonItem_ptr);
      v18 = sub_30C368();

      if (v18 >> 62)
      {
        v19 = sub_30D668();
        if (v19)
        {
LABEL_15:
          v20 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = sub_30D578();
            }

            else
            {
              if (v20 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_29;
              }

              v21 = *(v18 + 8 * v20 + 32);
            }

            v22 = v21;
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            [v21 setHidden:*v7];

            ++v20;
            if (v23 == v19)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          break;
        }
      }

      else
      {
        v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        if (v19)
        {
          goto LABEL_15;
        }
      }

LABEL_8:

      if (v13 == v28)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
}

void sub_1FABC0(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30AD18();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409148, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209A58();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_1FB430(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_30AD18();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409148, &type metadata accessor for ModernStationDetailPresenter, &protocol conformance descriptor for ModernStationDetailPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209A58();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_1FBBA8(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A5D8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409128, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209FDC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_1FC418(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_30A5D8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409128, &type metadata accessor for SeeAllEpisodesPresenter, &protocol conformance descriptor for SeeAllEpisodesPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209FDC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_1FCB90(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_3089B8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409118, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20A560();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_1FD400(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_3089B8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409110, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409118, &type metadata accessor for SearchPresenter, &protocol conformance descriptor for SearchPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20A560();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_1FDB78(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308FB8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409138, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20AAE4();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_1FE3E8(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_308FB8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409138, &type metadata accessor for ShowListPresenter, &protocol conformance descriptor for ShowListPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20AAE4();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_1FEB60(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309AA8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090F8, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B068();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_1FF3D0(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_309AA8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090F8, &type metadata accessor for LibraryShowPresenter, &protocol conformance descriptor for LibraryShowPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B068();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_1FFB48(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309358();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409108, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B5EC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_2003B8(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_309358();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409108, &type metadata accessor for StorePagePresenter, &protocol conformance descriptor for StorePagePresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B5EC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_200B30(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A738();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090B8, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20BB70();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_2013A0(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_30A738();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090B8, &type metadata accessor for LongDescriptionPresenter, &protocol conformance descriptor for LongDescriptionPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20BB70();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_201B18(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308E08();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090A8, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C0F4();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_202388(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_308E08();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090A8, &type metadata accessor for HomePagePresenter, &protocol conformance descriptor for HomePagePresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C0F4();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_202B00(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308BE8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409098, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C678();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_203370(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_308BE8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409098, &type metadata accessor for LibraryPresenter, &protocol conformance descriptor for LibraryPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C678();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_203AE8(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309408();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409088, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20CBFC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_204358(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_309408();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409088, &type metadata accessor for HighlightsPresenter, &protocol conformance descriptor for HighlightsPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20CBFC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_204AD0(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A558();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409158, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D180();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_205340(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_30A558();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409158, &type metadata accessor for ModernEpisodesPresenter, &protocol conformance descriptor for ModernEpisodesPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D180();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_205AB8(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309CB8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409078, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D704();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}

void sub_206328(uint64_t a1, double a2)
{
  v3 = v2;
  v44 = a1;
  v4 = sub_30BCF8();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v19, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    v20 = v44;
    (*(v16 + 16))(v11, v44, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v19);
    swift_endAccess();
    v21 = *(sub_307788() + 20);
    v22 = sub_30B858();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v8, v20 + v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);

    sub_308E98();
  }

  else
  {
    v39 = v8;
    v40 = v3;
    (*(v16 + 32))(v18, v14, v15);
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v38 = v18;
      __chkstk_darwin(v25);
      v26 = sub_309CB8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v16 + 16))(v11, v24, v15);
        (*(v16 + 56))(v11, 0, 1, v15);
        swift_beginAccess();
        sub_218B18(v11, v29 + v19);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409078, &type metadata accessor for CategoryListPresenter, &protocol conformance descriptor for CategoryListPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D704();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      (*(v16 + 8))(v38, v15);
    }
  }
}

void sub_206AA0(uint64_t a1, double a2)
{
  v3 = v2;
  v52 = a1;
  v4 = sub_30BCF8();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120, &qword_32B350);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020, &qword_31E920);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = sub_30BE68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v41 - v20;
  v22 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v3 + v22, v14, &qword_401020, &qword_31E920);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_EB68(v14, &qword_401020, &qword_31E920);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    (*(v16 + 56))(v11, 0, 1, v15);
    swift_beginAccess();
    sub_218B18(v11, v3 + v22);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

    sub_30BF68();
    v23 = sub_30B858();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    sub_308E98();
  }

  else
  {
    v46 = v22;
    v47 = v11;
    v48 = v8;
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
    v25 = sub_30C018();
    v26 = v15;
    v27 = *(v16 + 8);
    v28 = v27(v18, v26);
    if (v25)
    {
      v27(v21, v26);
    }

    else
    {
      v42 = v21;
      v43 = v27;
      v44 = v16 + 8;
      __chkstk_darwin(v28);
      v29 = sub_3099E8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v3;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v16 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409068, &type metadata accessor for ChannelListPresenter, &protocol conformance descriptor for ChannelListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20DC88();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage, &protocol conformance descriptor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      v43(v39, v40);
    }
  }
}